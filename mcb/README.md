# mbd电机控制

本项目包含多个基于 **TI C2000 系列 MCU（F28379D）** 的电机控制示例，适用于多种电机类型和传感器配置。所有示例均使用 **MATLAB/Simulink + Motor Control Blockset + Embedded Coder** 开发，并可通过 **TI Code Composer Studio (CCS) v12.2** 进行单步调试。

---

## 调试说明

- 所有生成的代码均可在 **TI CCS 12.2** 中加载并进行单步运行调试。
- 推荐在部署前先进行 Simulink 仿真验证。

---

## 示例说明

### 1. **霍尔传感器电机控制（昊极 8110 盘式无刷直流电机）**

- **`HallOffsetExample`**  
  - 用于标定 **机械角度与电角度之间的偏移量**。
  - **已为昊极 8110 电机完成标定**；若使用同一电机，**无需重复运行**。
  
- **`FocHallExample`**  
  - 实现基于霍尔传感器的 **磁场定向控制（FOC）**。
  - **I/F（流频比）起动控制已测试有效**。
  - **电机报错发声功能已测试有效**（用于故障提示）。

---

### 2. **增量式编码器电机控制（杰美康 42JSF630AS-1000 伺服电机）**

- **`QuadratureEncoderOffsetExample`**  
  - 用于标定 **增量式编码器零点偏移**。

- **`FOCQepExample`**  
  - 基于 QEP（正交编码器）的 FOC 控制。
  - 电机插口转接板与 **正点原子 ATK-PD6010B 的 CN2 端口兼容**，可直接参照接线。

---

### 3. **绝对式编码器 （云台电机）**

- **`FOCI2CExample`**  
  - 支持通过 **I²C 接口读取磁编码器**（AS5600）。
  - **CAN 通讯已测试有效**。
  - **位置环控制已验证**，取消对应注释即可直接使用。
  - 包含辅助调试模型：`c28x_i2c_sensor`（用于单独测试磁编码器通信）。

---

### 4. **轴向磁通电机 & 无感控制实验**

- **`FOCAxialExample`**  
  - 为 **轴向磁通电机** 设计。
  - 初始 **V/F 控制** 参考了 ADC Offset 计算的官方示例（需自行搜索 TI 官方文档）。
  -  **FOC控制** 用 **扩展反电势法（Extended EMF Observer）** 实现无感控制。
  - **硬件已实现，但稳定性一般**：
    - 建议 **速度指令变化步长 ≤ 20 rpm**。
    - 最高稳定运行速度约 **250 rpm**。
  - **I/F 起动已验证**，起动时参考速度建议设置在 **10–60 rpm**，70 rpm 启动较困难。
  - 包含过渡用模型 `mcb_pmsm_foc_test_f28379d.slx`：**软件模拟电机返回角度**，已在云台电机上测试，非必需可忽略。

- **`SensorlessFocFOSMOExample`**
  - 来源：[PMSM 的无传感器磁场定向控制](https://ww2.mathworks.cn/help/mcb/gs/sensorless-foc-pmsm-smo-fo.html)
  - 算法已迁移至 `FOCAxialExample/` 文件夹，文件名为 `mcb_pmsm_foc_sensorless_f28379d.slx`。

- **`EKF/` 和 `SquareWaveInjection/`**  
  - 包含开源的 **无感驱动仿真模型**（包含扩展卡尔曼滤波 EKF ，方波注入法，龙贝格观测器，滑膜观测器，以及I/F控制方法），供研究参考。

---

### 5. **初始转子位置估计（高频注入法）**

- **`IPMSMInitPosEstExample_HFI`**  
  - 来源：[Estimate Initial Rotor Position Using Pulsating High-Frequency and Dual-Pulse Methods](https://ww2.mathworks.cn/help/mcb/gs/estimate-initial-rotor-position-using-pulsating-high-frequency-dual-pulse-injection.html)
  - **基本未修改**，已在 **昊极 8110 电机** 上验证。
  - 实验现象：**在 d 轴注入 2 kHz 高频信号时，电机会发出可听声音**，可用于判断注入有效性。

---

### 6. **多核 CPU 分区控制（未硬件验证）**

- **`PartitionMotorControlForMultiprocessorMCUsExample`**  
  - 来源：[Partition Motor Control for Multiprocessor MCUs](https://ww2.mathworks.cn/help/ti-c2000/ug/partition-motor-control-example.html)
  - 目标：将 FOC 算法分区到 **F28379D 的双核 CPU** 以提升控制带宽。
  - 基本未修改，当前仅完成仿真，尚未进行硬件部署验证。

---

## 注意事项

- 所有 `.slx` 模型均依赖 **Motor Control Blockset** 和 **Embedded Coder**。
- 部署前请确认硬件连接与电源匹配。
- 无感控制对电机参数敏感，建议先在低速下测试稳定性。
- 如更换电机，需重新标定 Hall 或 Encoder 偏移。

---
