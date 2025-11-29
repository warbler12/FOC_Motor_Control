#include "can.h"
#include "sysctl.h"  // for SysCtl_delay
#include "can_bus_off.h"

// 全局标志：是否处于恢复状态（避免频繁复位）
static bool g_canA_inRecovery = false;

// 自定义状态位掩码
#ifndef CAN_MCTL_TXOK
#define CAN_MCTL_TXOK   (1U << 3)
#endif

// ===================================================================
// 函数：复位并重新初始化 CANA 模块（用于 Bus Off 恢复）
// ===================================================================
void CANA_RecoverFromBusOff(void)
{
    if (g_canA_inRecovery) {
        return;
    }

    g_canA_inRecovery = true;

    // 1. 进入初始化模式
    EALLOW;
    HWREGH(CANA_BASE + CAN_O_CTL) |= CAN_CTL_INIT;
    EDIS;

    // 等待进入 INIT 模式
    SysCtl_delay(100);

    // 2. 软件复位
    EALLOW;
    HWREGH(CANA_BASE + CAN_O_CTL) |= CAN_CTL_SWR;
    EDIS;

    SysCtl_delay(100);

    // 3. 重新初始化模块
    CAN_initModule(CANA_BASE);
    CAN_setBitRate(CANA_BASE, CAN_MODULE_CLOCK_HZ, 1000000U, 10U);

    // 4. 退出 INIT 模式
    EALLOW;
    HWREGH(CANA_BASE + CAN_O_CTL) &= ~CAN_CTL_INIT;
    EDIS;

    // 等待退出 INIT 模式
    SysCtl_delay(100);

    // 5. 直接配置 Message Object 2（使用寄存器操作）
    EALLOW;

    // 等待 IF1 空闲
    while (HWREGH(CANA_BASE + CAN_O_IF1CMD) & CAN_IF1CMD_BUSY);

    // 配置 Message Object 2
    uint32_t arbValue = ((0x100 & 0x7FF) << 18) | (1U << 31); // MSGVAL = 1
    HWREG(CANA_BASE + CAN_O_IF1ARB) = arbValue;
    HWREG(CANA_BASE + CAN_O_IF1MSK) = 0;
    uint16_t mctlValue = 8 | CAN_IF1MCTL_TXIE | CAN_IF1MCTL_UMASK; // DLC=8
    HWREGH(CANA_BASE + CAN_O_IF1MCTL) = mctlValue;

    // 写入到 Message Object 2
    HWREGH(CANA_BASE + CAN_O_IF1CMD) = (2U << 0) | (1U << 7);

    EDIS;

    SysCtl_delay(50);
    g_canA_inRecovery = false;
}

// ===================================================================
// 函数：安全发送 CAN 帧（自动检测并恢复 Bus Off）
// 输入：uint8_t data[8] —— 标准字节数组（LSB first）
// ===================================================================
bool CANA_SendSafe(uint32_t msgID, const uint8_t* data, uint16_t len)
{
    if (!data || len == 0 || len > 8) {
        return false;
    }

    // 检查 CAN 控制器是否在 INIT 模式
    uint16_t ctl_reg = HWREGH(CANA_BASE + CAN_O_CTL);
    if (ctl_reg & CAN_CTL_INIT) {
        // CAN 控制器仍在初始化模式，需要退出
        CAN_disableController(CANA_BASE);
        SysCtl_delay(10);
        CAN_enableController(CANA_BASE);
        SysCtl_delay(10);

        // 重新配置 Message Object
        CAN_setupMessageObject(CANA_BASE, 2, msgID, false,
            CAN_MSG_OBJ_TYPE_TX, 0, CAN_MSG_OBJ_TX_INT_ENABLE, len);
        return false;
    }

    // 检查错误状态
    uint16_t es = HWREGH(CANA_BASE + CAN_O_ES);
    if (es & CAN_ES_EPASS) {
        // 处于错误被动状态，需要恢复
        CANA_RecoverFromBusOff();
        return false;
    }

    // 在发送前验证 Message Object 2 的状态
    // 检查 Message Object 2 状态，如果为 0 则重新配置
    uint16_t mo2_mctl = HWREGH(CANA_BASE + 0x24U);
    if (mo2_mctl == 0) {
        // 直接使用寄存器操作配置 Message Object 2
        EALLOW;

        // 等待 IF1 空闲
        uint32_t timeout = 1000;
        while (HWREGH(CANA_BASE + CAN_O_IF1CMD) & CAN_IF1CMD_BUSY) {
            if (--timeout == 0) break;
            SysCtl_delay(1);
        }

        // 配置 IF1 控制寄存器
        // ARB: 标准帧 ID + MSGVAL
        uint32_t arbValue = ((msgID & 0x7FF) << 18) | (1U << 31); // MSGVAL = 1
        HWREG(CANA_BASE + CAN_O_IF1ARB) = arbValue;

        // MASK: 不使用掩码
        HWREG(CANA_BASE + CAN_O_IF1MSK) = 0;

        // MSGCTRL: DLC + TX 中断使能
        uint16_t mctlValue = (len & 0xF) | CAN_IF1MCTL_TXIE | CAN_IF1MCTL_UMASK;
        HWREGH(CANA_BASE + CAN_O_IF1MCTL) = mctlValue;

        // 将 IF1 配置写入 Message Object 2
        // 使用 IF1 接口，方向=写入，Message Object=2
        // 写入 MO2，传输 ARB + CONTROL，方向=写入
        HWREGH(CANA_BASE + CAN_O_IF1CMD) =
            (2U << 8) |          // Message Number = 2
            (1U << 7) |          // DIR = 1 (write to MO)
            (1U << 6) |          // WRRD = 1 (start transfer)
            (1U << 5) |          // CONTROL = 1
            (1U << 2);           // ARB = 1
        // DIR=1 (write), ARB=1, CONTROL=1

        EDIS;

        // 验证配置是否成功
        SysCtl_delay(10);
        mo2_mctl = HWREGH(CANA_BASE + 0x24U);
        if (mo2_mctl == 0) {
            // 如果仍然失败，彻底重置 CAN 模块
            CANA_RecoverFromBusOff();
            return false;
        }
    }


    // 等待 IF1 空闲（避免冲突）
    uint32_t timeout_if1 = 1000;
    while (HWREGH(CANA_BASE + CAN_O_IF1CMD) & CAN_IF1CMD_BUSY) {
        if (--timeout_if1 == 0) {
            // IF1 总线忙超时 - 诊断信息
            uint16_t if1cmd = HWREGH(CANA_BASE + CAN_O_IF1CMD);
            uint16_t es_now = HWREGH(CANA_BASE + CAN_O_ES);
            // 这里可以设置断点查看 if1cmd 和 es_now 的值
            break;
        }
        SysCtl_delay(1);
    }

    // === Step 1: 准备 IF1 数据寄存器 ===
    uint16_t txData[4] = {0};
    int i = 0;
    for (i = 0; i < 4; i++) {
        txData[i] = ((uint16_t)data[2*i+1] << 8) | (uint16_t)data[2*i];
    }

    // 写入 IF1 数据 A/B
    HWREGH(CANA_BASE + CAN_O_IF1DATA)       = txData[0]; // DATA_A
    HWREGH(CANA_BASE + CAN_O_IF1DATA + 2U)  = txData[1]; // DATA_B
    HWREGH(CANA_BASE + CAN_O_IF1DATA + 4U)  = txData[2]; // DATA_C
    HWREGH(CANA_BASE + CAN_O_IF1DATA + 6U)  = txData[3]; // DATA_D

    // === Step 2: 配置 IF1 控制寄存器 ===
    uint32_t arbReg = 0;
    arbReg |= ((uint32_t)(msgID & 0x7FFU)) << 18U;  // 11-bit ID
    arbReg |= 1U << 31U;  // MSGVAL = 1
    HWREG(CANA_BASE + CAN_O_IF1ARB) = arbReg;

    HWREG(CANA_BASE + CAN_O_IF1MSK) = 0;

    uint16_t msgCtrl = (len & 0xF) | CAN_IF1MCTL_TXIE | CAN_IF1MCTL_UMASK;
    HWREGH(CANA_BASE + CAN_O_IF1MCTL) = msgCtrl;

    // === Step 3: 将 IF1 内容写入 Message Object 2 ===
    CAN_transferMessage(CANA_BASE, 1U, 2U, true);

    // === Step 4: 手动置位 TXRQST 触发发送 ===
    HWREGH(CANA_BASE + 0x24U) |= 0x0001U;  // Set TXRQST (bit 0)

    // 等待发送完成并检查 TXOK
    uint32_t timeout = 1000;
    while (timeout--) {
        uint16_t es_now = HWREGH(CANA_BASE + CAN_O_ES);
        if (es_now & CAN_ES_BOFF) {
            // 发送过程中进入 Bus Off
            // 诊断：读取错误状态
            uint32_t errc_now = HWREG(CANA_BASE + CAN_O_ERRC);
            uint8_t rxErr_now = (errc_now >> 8) & 0xFF;
            uint8_t txErr_now = (errc_now >> 0) & 0xFF;
            // 设置断点查看这些值
            break;
        }

        uint16_t mctl = HWREGH(CANA_BASE + 0x24U);
        if (!(mctl & 0x0001U)) {  // TXRQST cleared
            if (mctl & CAN_MCTL_TXOK) {
                g_canA_inRecovery = false;
                return true;
            } else {
                // TXRQST 清除了但没有 TXOK - 诊断状态
                uint16_t es_final = HWREGH(CANA_BASE + CAN_O_ES);
                uint16_t if1mctl = HWREGH(CANA_BASE + CAN_O_IF1MCTL);
                uint32_t if1arb = HWREG(CANA_BASE + CAN_O_IF1ARB);
                // 设置断点查看这些寄存器状态
                break;
            }
        }
        SysCtl_delay(1);
    }

    // 超时诊断
    uint16_t mctl_final = HWREGH(CANA_BASE + 0x24U);
    uint16_t es_final = HWREGH(CANA_BASE + CAN_O_ES);
    uint32_t errc_final = HWREG(CANA_BASE + CAN_O_ERRC);
    uint16_t if1cmd_final = HWREGH(CANA_BASE + CAN_O_IF1CMD);

    // 这里可以设置断点查看所有诊断信息：
    // mctl_final, es_final, errc_final, if1cmd_final

    // 到这里说明失败或超时
    CANA_RecoverFromBusOff();
    g_canA_inRecovery = false;
    return false;
}

void CAN_InitComplete(void)
{
    // 1. 初始化 CAN 模块
    CAN_initModule(CANA_BASE);

    // 2. 设置波特率
    CAN_setBitRate(CANA_BASE, CAN_MODULE_CLOCK_HZ, 1000000U, 10U);

    // 3. 退出 INIT 模式
    EALLOW;
    HWREGH(CANA_BASE + CAN_O_CTL) &= ~CAN_CTL_INIT;
    EDIS;

    // 4. 等待退出 INIT 模式
    while (HWREGH(CANA_BASE + CAN_O_CTL) & CAN_CTL_INIT);

    // 5. 配置 Message Object
    CAN_setupMessageObject(CANA_BASE, 2, 0x100, false,
        CAN_MSG_OBJ_TYPE_TX, 0, CAN_MSG_OBJ_TX_INT_ENABLE, 8);
}
