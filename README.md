# 电机控制项目说明

本仓库包含多个与电机控制相关的项目和资料，主要涉及基于不同MCU平台（如TI F28379D、STM32H7、STM32F407）的永磁同步电机（PMSM）控制程序、仿真模型及开发板资料。以下是各文件夹与文件的详细说明：

---

## 目录结构说明

### **F28379D 相关**
- **`mcb`**  
  所有与 **TI F28379D** 微控制器相关的电机控制程序均存放于此目录。该目录为当前主控平台的核心代码库。

---

### **STM32H7 达妙多电机控制程序**
以下均为基于 **STM32H7** 系列芯片的达妙多（DM）电机控制程序：
- **`DM-motor-right-arm-new-1`**  
  电机控制程序（Keil）。有效。
- **`DM-motor-right-arm1`**  
  右臂电机控制程序（旧版本，Keil）。有效。
- **`ludan_control_board-main`**（ludan_control_board-main.zip）  
  未调好（Cmake）。
- **`ludan_control_board`**  
  为 `ludan_control_board-main` 的历史版本（Cmake）。stm32_comm_debug.py测试。

> 注：以上项目均基于 STM32H7 平台实现（ DM_MC02 开发板），建议这部分联系在场技术人员。

---

### **开发板资料**
- **`dm-mc02-master`**  
  DM_MC02 开发板相关资料，包括原理图、PCB、驱动程序等，可用于参考或移植。

---

### **废弃**
- **`ludan_drive_board`**  
  此项目为早期尝试将 **TI 控制板的 CAN 通讯方案移植到 STM32 上** 的半成品。  
  **已弃用**，原因如下：
  - 硬件生态不兼容：
    - **TI 使用 ISEN 和 VSEN**（电流和电压采样）进行闭环控制；
    - **STM32 使用差分采样方式**（Differential Sampling），信号处理机制不同；
    - 无法直接复用原有代码与硬件接口逻辑。已购入电流采样放大器INA240，未测。
  > 差分采样（Differential Sampling）是一种通过测量两个引脚之间的电压差来获取电流信息的技术，常用于高精度电流检测。而 ISEN/VSEN 是单端采样方式，适用于特定传感器配置。

---

### **STM32F407 示例程序**
  MotorControl Workbench代码生成，版本用5开头的，6更新了UI，但是没有包含相关硬件（截止2025.11）。
- **`foc_pmsm_m1_encoder`**  
  基于 STM32F407 的 PMSM FOC 控制例程，采用编码器反馈。
- **`foc_pmsm_m1_hall`**  
  同上，使用霍尔传感器进行位置检测。

> 这些是学习和调试的基础例程，适合初学者理解 FOC 控制流程。

---

### **无需关注项**
- **`pmsm_f28379d_openloop`**  
  仅作测试用途的开环控制程序，无实际应用价值，可忽略。

---

### 📊 **Simulink 仿真模型**
- **`svpwm_PMSM.slx`**  
  SVPWM 控制的永磁同步电机（PMSM）仿真模型，用于验证控制算法。
- **`svpwm_induction_motor.slx`**  
  异步电机（感应电机）SVPWM 控制仿真模型，支持速度跟随控制。

> 这些模型可用于算法设计、参数调试和教学演示。

---

## 其他文件说明

- `stm32_comm_debug.py`：Python 脚本，用于调试 STM32 的 CAN 通信。
- `Torque_Angle_FOC-不借用SimpleFOC库驱动.rar`：云台电机控制例程。

---

## 总结建议
| 类别 | 推荐使用情况 |
|------|--------------|
| `mcb` | 主要开发平台，推荐优先使用 |
| `DM-motor-*`, `ludan_control_board-*` | 达妙电机控制程序 |
| `dm-mc02-master` | 参考资料，了解硬件设计 |
| `ludan_drive_board` | 已废弃，不建议使用 |
| `foc_pmsm_*_f407` | 学习用途，非生产环境 |
| `pmsm_f28379d_openloop` | 忽略 |
| `*.slx` | 仿真验证，可用于算法研究 |

---

> 如需进一步了解某模块，请查看对应目录下的文档或联系项目负责人。

---
