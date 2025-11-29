#ifndef CAN_BUS_OFF_H
#define CAN_BUS_OFF_H

#include <stdbool.h>
#include <stdint.h>

#ifdef __cplusplus
extern "C" {

#endif
// 手动定义错误状态位（v3.12 缺失）
#define CAN_ES_BOFF   (0x1000U)   // Bit 12
#define CAN_ES_EPASS  (0x0800U)   // Bit 11
#define CAN_ES_EWARN  (0x0400U)   // Bit 10

// 自定义 CAN 模块时钟频率（LSPCLK = 50 MHz）
#ifndef CAN_MODULE_CLOCK_HZ
#define CAN_MODULE_CLOCK_HZ    (50000000U)
#endif

/**
 * @brief 从 CAN Bus Off 状态中恢复 CANA 模块
 *
 * 此函数会执行软件复位、重新初始化波特率、
 * 重新配置发送邮箱（Message Object 2），并使能控制器。
 * 内部有防抖机制，避免频繁复位。
 */
void CANA_RecoverFromBusOff(void);

/**
 * @brief 安全发送 CAN 帧（自动检测并处理 Bus Off）
 *
 * @param msgID   要发送的标准帧 ID（仅在 Message Object 配置为动态 ID 时有效；
 *                当前实现使用固定 ID 的 MO，此参数暂未使用，保留扩展性）
 * @param data    指向 1~8 字节数据的指针（uint8_t 数组）
 * @param len     数据长度（1~8）
 * @return        true  表示已尝试发送（不一定成功发出），
 *                false 表示因 Bus Off 正在恢复或参数非法，未发送
 *
 * @note 实际发送的 Message Object ID 固定为 2，ID 在 CANA_RecoverFromBusOff 中配置。
 *       如需动态 ID，请修改内部实现。
 */
bool CANA_SendSafe(uint32_t msgID, const uint8_t* data, uint16_t len);


void CAN_InitComplete(void);

#ifdef __cplusplus
}
#endif

#endif // CAN_BUS_OFF_H
