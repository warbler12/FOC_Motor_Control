# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This is the Ludan Control Board firmware - an STM32H723VGT6-based multi-motor control system for robotics applications. The firmware supports dual CAN buses controlling up to 32 motors (16 per bus), with real-time control loops, IMU integration, and USB CDC debugging interface.

## Build Commands

### Initial Setup
```bash
# Create build directory
mkdir -p build/Debug
cd build/Debug

# Configure CMake
cmake ../.. -DCMAKE_BUILD_TYPE=Debug
```

### Development Commands
```bash
# Clean and rebuild (use rebuild.bat on Windows)
cmake --build build/Debug --target clean
cmake --build build/Debug

# Generate binary file
arm-none-eabi-objcopy -O binary build/Debug/ludan_control_board.elf build/Debug/ludan_control_board.bin

# Flash to device (use loadbin.bat on Windows)
JLink.exe -CommanderScript flash.jlink

# Or use redeploy.bat for clean build + flash
```

### CMake Build (Recommended)
```bash
# From project root
mkdir build && cd build
cmake .. -DCMAKE_BUILD_TYPE=Debug
cmake --build . --config Debug

# Output files in build/Debug/:
# - ludan_control_board.elf (for debugging)
# - ludan_control_board.bin (for flashing)
# - ludan_control_board.hex (alternative format)
```

## High-Level Architecture

### System Structure
- **RTOS**: FreeRTOS with CMSIS-RTOS V2 interface
- **Main Controller**: STM32H723VGT6 (Cortex-M7, 480MHz)
- **Communication**: Dual FDCAN buses + USB CDC
- **Sensors**: BMI088 IMU (accelerometer + gyroscope)
- **Power**: Real-time voltage monitoring with protection

### Task Architecture
```
High Priority:
├── FDCAN1_TASK - Motor control bus 1 (1ms cycle)
├── FDCAN2_TASK - Motor control bus 2 (1ms cycle)
├── OBSERVE_TASK - Data collection & USB transmission (1ms cycle)
└── MOTOR_CMD_TASK - USB command processing (queue-based)

Normal Priority:
├── VBUS_CHECK_TASK - Voltage monitoring (10ms cycle)
└── defaultTask - USB initialization
```

### Module Organization
```
User/
├── App/ - Application tasks and logic
│   ├── fdcan_bus.[c|h] - CAN bus management
│   ├── fdcan1_task.[c|h] - CAN1 motor control
│   ├── fdcan2_task.[c|h] - CAN2 motor control
│   ├── observe_task.[c|h] - Data observation
│   ├── motor_cmd.[c|h] - Command processing
│   └── vbus_check.[c|h] - Voltage monitoring
├── Bsp/ - Board Support Package
│   ├── can_bsp.[c|h] - CAN communication layer
│   ├── bsp_dwt.[c|h] - High-precision timer
│   ├── bsp_PWM.[c|h] - PWM control
│   └── bsp_usart1.[c|h] - Serial communication
├── Devices/ - Device drivers
│   ├── DM_Motor/ - Motor control library
│   └── BMI088/ - IMU sensor driver
├── Algorithm/ - Control algorithms
│   ├── PID/ - PID controllers
│   ├── EKF/ - Extended Kalman Filter
│   ├── kalman/ - Kalman Filter
│   └── mahony/ - Mahony filter
└── Lib/ - Utilities
    └── user_lib.[c|h] - Common functions
```

### Key Data Flow
1. **Motor Control Loop** (1kHz):
   - FDCAN1/2 tasks send MIT control commands
   - CAN interrupts receive motor feedback
   - Motor parameters updated in real-time

2. **Data Observation** (640Hz):
   - Collect all motor data (position, velocity, torque)
   - Pack into 152-byte frames
   - Transmit via USB CDC

3. **Command Processing**:
   - USB CDC receives 16-byte command frames
   - Queue-based processing in MOTOR_CMD_TASK
   - Support single/batch motor operations

## Development Guidelines

### Coding Standards
- **Naming**: snake_case for functions and variables
- **Comments**: Doxygen style for public functions
- **Indentation**: 4 spaces
- **Braces**: K&R style
- **File Headers**: Include module description and author info

### Thread Safety Rules
- **Shared Resources**: Use taskENTER_CRITICAL/taskEXIT_CRITICAL
- **CAN Data**: Updated in interrupts, read in tasks (use volatile)
- **Global State**: Protect with mutexes when needed
- **FreeRTOS APIs**: Use FromISR versions in interrupts

### Memory Constraints
- **Task Stack**: 512×4 bytes per task
- **FreeRTOS Heap**: 30KB total
- **Critical Path**: Keep ISR execution <10μs
- **Real-time Guarantee**: Motor control must complete in <1ms

### Error Handling
- **HAL Functions**: Always check return values
- **CAN Communication**: Retry up to 100 times with 1ms delay
- **Motor Operations**: 20 retry attempts with 25ms delay
- **System Errors**: Call Error_Handler() for critical failures

## Important Implementation Details

### CAN Protocol
- **Frame Format**: CAN FD with BRS enabled
- **Control IDs**: 0x200 + motor_id (MIT mode commands)
- **Feedback IDs**: 0x11-0x1F (motor feedback)
- **Data Encoding**: 16-bit position, 12-bit velocity/torque (compressed)

### Motor Support
- **DM4310**: Small joint motor (±10 N·m)
- **DM4340**: Medium joint motor (±28 N·m)
- **DM6006**: High-speed motor (±12 N·m)
- **DM8006**: High-power motor (±20 N·m)
- **DM3507**: Wheel motor (±10 N·m)
- **DM10010L**: High-torque motor (±200 N·m)
- **DM6248P**: Precision motor (±120 N·m)

### USB CDC Communication
- **Uplink**: 152-byte observation frames (640Hz)
- **Downlink**: 16-byte command frames
- **Baud Rate**: 921600 (configurable)
- **Protocol**: Custom frame format with checksum

### Voltage Protection
- **Operating Range**: 22.2V - 30V
- **Warning Threshold**: 22.6V (buzzer on)
- **Shutdown Threshold**: 22.2V (power cut)
- **Monitoring**: 100Hz sampling rate

## Common Development Tasks

### Adding New Motor Types
1. Update `motor_config.h` with new motor parameters
2. Add feedback parsing function `dm<model>_fbdata()`
3. Add initialization function `dm<model>_fbdata_init()`
4. Update motor type mapping in CAN tasks

### Modifying Control Algorithms
1. Algorithm implementations in `User/Algorithm/`
2. Update controller calls in motor tasks
3. Adjust control parameters in config headers
4. Test with real hardware for stability

### Debugging CAN Issues
1. Check physical connections and termination resistors
2. Verify CAN bus configuration (1Mbps, FD mode)
3. Use CAN analyzer for frame monitoring
4. Check error counters in HAL status

### Performance Optimization
- **Critical Path**: Minimize work in 1kHz motor tasks
- **Memory Usage**: Monitor stack usage and heap fragmentation
- **CAN Load**: Keep bus utilization <60%
- **Interrupt Latency**: Keep ISRs short and efficient

## Testing and Validation

### Unit Testing
- Use Unity framework for C code testing
- Mock HAL interfaces for isolated testing
- Target 80%+ coverage for critical functions

### Integration Testing
- Hardware-in-loop with real motors
- CAN bus communication validation
- Voltage protection circuit testing
- USB CDC command/response verification

### Performance Testing
- Continuous 24-hour operation
- Maximum motor load testing
- CAN bus stress testing
- Real-time deadline analysis

## Configuration Files

### Important Constants
- `MAX_MOTORS_PER_BUS`: 16 motors per CAN bus
- `MOTOR_ENABLE_MAX_RETRY`: 20 retry attempts
- `CHASSR_TIME/CHASSL_TIME`: 1ms control periods
- `OBSERVE_TIME`: 1ms observation period (640Hz)

### Build Configuration
- **Compiler**: arm-none-eabi-gcc
- **C Standard**: C11
- **C++ Standard**: C++17
- **FPU**: fpv5-d16 hard float
- **CPU**: cortex-m7 @ 480MHz

### Hardware Configuration
- **HSE**: 25MHz external crystal
- **LSE**: 32.768kHz RTC crystal
- **CAN Clock**: 80MHz from PLL2
- **USB**: OTG HS in Device mode

## Debugging Tools

### J-Link Commands
```bash
# Connect and debug
JLinkGDBServer -device STM32H723VG -if SWD -speed 4000

# Flash programming
JLinkExe -CommanderScript flash.jlink
```

### Serial Monitoring
- USB CDC appears as COM port on Windows
- Default baud rate: 921600
- Use serial monitor for real-time data

### Performance Analysis
- Use DWT timer for microsecond timing
- Monitor task stack usage
- Check CAN bus load with analyzer
- Profile interrupt execution times