cmake_minimum_required(VERSION 3.22)

# === 交叉编译配置 ===
set(CMAKE_SYSTEM_NAME Generic)
set(CMAKE_SYSTEM_PROCESSOR ARM)
set(CMAKE_TRY_COMPILE_TARGET_TYPE STATIC_LIBRARY)

# 设置编译器
set(CMAKE_C_COMPILER "C:/Program Files (x86)/Arm GNU Toolchain arm-none-eabi/14.3 rel1/bin/arm-none-eabi-gcc.exe")
set(CMAKE_CXX_COMPILER "C:/Program Files (x86)/Arm GNU Toolchain arm-none-eabi/14.3 rel1/bin/arm-none-eabi-g++.exe")
set(CMAKE_ASM_COMPILER "C:/Program Files (x86)/Arm GNU Toolchain arm-none-eabi/14.3 rel1/bin/arm-none-eabi-gcc.exe")

# 绕过编译器检查
set(CMAKE_C_COMPILER_WORKS 1)
set(CMAKE_CXX_COMPILER_WORKS 1)
set(CMAKE_ASM_COMPILER_WORKS 1)

# Setup compiler settings
set(CMAKE_C_STANDARD 11)
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_C_STANDARD_REQUIRED ON)
set(CMAKE_C_EXTENSIONS ON)

# MCU 特定标志
set(MCU_FLAGS
  -mcpu=cortex-m7
  -mthumb
  -mfpu=fpv5-d16
  -mfloat-abi=hard
)

# 通用编译标志
set(COMMON_FLAGS
  -ffunction-sections
  -fdata-sections
  -fno-builtin
  -g3
  -O0
  -Wall
  -Wextra
  -Wno-unused-parameter
)

# 编译选项
add_compile_options(
    ${MCU_FLAGS}
    ${COMMON_FLAGS}
)

# 宏定义
add_compile_definitions(
  STM32H723xx
  USE_HAL_DRIVER
  HSE_VALUE=25000000U
  LSE_VALUE=32768U
)

# Define the build type
if(NOT CMAKE_BUILD_TYPE)
    set(CMAKE_BUILD_TYPE "Debug")
endif()

# Set the project name
set(CMAKE_PROJECT_NAME ludan_control_board)

# Enable compile command to ease indexing with e.g. clangd
set(CMAKE_EXPORT_COMPILE_COMMANDS TRUE)

# Core project settings
project(${CMAKE_PROJECT_NAME} LANGUAGES C CXX ASM)
message("Build type: " ${CMAKE_BUILD_TYPE})
message("Project name: " ${CMAKE_PROJECT_NAME})

# Create an executable object type
add_executable(${CMAKE_PROJECT_NAME})

# === 关键修复：在 project() 和 add_executable() 之后设置链接器标志 ===
# 创建一个完整的链接器标志字符串
set(LINKER_FLAGS_STRING "-mcpu=cortex-m7 -mthumb -mfpu=fpv5-d16 -mfloat-abi=hard -Wl,--gc-sections -Wl,-Map=${CMAKE_PROJECT_NAME}.map -specs=nosys.specs -specs=nano.specs -u _printf_float -u _scanf_float")

# 检查并添加链接脚本
if(EXISTS "${CMAKE_SOURCE_DIR}/STM32H723XG_FLASH.ld")
    message(STATUS "Found linker script: STM32H723XG_FLASH.ld")
    set(LINKER_FLAGS_STRING "${LINKER_FLAGS_STRING} -T${CMAKE_SOURCE_DIR}/STM32H723XG_FLASH.ld")
else()
    message(WARNING "Linker script STM32H723XG_FLASH.ld not found! Using default memory layout.")
endif()

# 设置目标属性
set_target_properties(${CMAKE_PROJECT_NAME} PROPERTIES
    SUFFIX ".elf"
    OUTPUT_NAME "${CMAKE_PROJECT_NAME}"
    LINK_FLAGS "${LINKER_FLAGS_STRING}"
)

# Add STM32CubeMX generated sources
add_subdirectory(cmake/stm32cubemx)

# Link directories setup
target_link_directories(${CMAKE_PROJECT_NAME} PRIVATE
    # Add user defined library search paths
)

# Add sources to executable
target_sources(${CMAKE_PROJECT_NAME} PRIVATE
    # Add user sources here
    User/App/fdcan_bus.c
    User/App/fdcan1_task.c
    User/App/fdcan2_task.c
    User/App/observe_task.c
    User/App/vbus_check.c
    
    User/Devices/DM_Motor/motor_config.c
    
    User/Bsp/bsp_dwt.c
    User/Bsp/bsp_PWM.c
    User/Bsp/bsp_usart1.c
    User/Bsp/can_bsp.c
)

# 添加启动文件（如果不在 stm32cubemx 中）
if(EXISTS "${CMAKE_SOURCE_DIR}/Core/Startup/startup_stm32h723zgtx.s")
    target_sources(${CMAKE_PROJECT_NAME} PRIVATE
        Core/Startup/startup_stm32h723zgtx.s
    )
endif()

# Add include paths
target_include_directories(${CMAKE_PROJECT_NAME} PRIVATE
    # Add user defined include paths
    User/App
    User/Bsp
    User/Controller
    User/Devices/BMI088
    User/Devices/DM_Motor
    User/Lib
    ${CMAKE_SOURCE_DIR}/Drivers/CMSIS/DSP/Include
    ${CMAKE_SOURCE_DIR}/Core/Inc
    ${CMAKE_SOURCE_DIR}/Drivers/STM32H7xx_HAL_Driver/Inc
    ${CMAKE_SOURCE_DIR}/Drivers/CMSIS/Device/ST/STM32H7xx/Include
    ${CMAKE_SOURCE_DIR}/Drivers/CMSIS/Include
)

# Add project symbols (macros)
target_compile_definitions(${CMAKE_PROJECT_NAME} PRIVATE
    # Add user defined symbols
    $<$<CONFIG:Debug>:DEBUG=1>
)

# Remove wrong libob.a library dependency when using cpp files
list(REMOVE_ITEM CMAKE_C_IMPLICIT_LINK_LIBRARIES ob)

# 设置 objcopy 和 size 工具路径
set(CMAKE_OBJCOPY "C:/Program Files (x86)/Arm GNU Toolchain arm-none-eabi/14.3 rel1/bin/arm-none-eabi-objcopy.exe")
set(CMAKE_SIZE_UTIL "C:/Program Files (x86)/Arm GNU Toolchain arm-none-eabi/14.3 rel1/bin/arm-none-eabi-size.exe")

# Add linked libraries
target_link_libraries(${CMAKE_PROJECT_NAME}
    stm32cubemx
    m
    c
    gcc
)

# 后处理：生成 hex 和 bin 文件
add_custom_command(TARGET ${CMAKE_PROJECT_NAME} POST_BUILD
    COMMAND ${CMAKE_OBJCOPY} -O ihex $<TARGET_FILE:${CMAKE_PROJECT_NAME}> ${CMAKE_PROJECT_NAME}.hex
    COMMAND ${CMAKE_OBJCOPY} -O binary $<TARGET_FILE:${CMAKE_PROJECT_NAME}> ${CMAKE_PROJECT_NAME}.bin
    COMMAND ${CMAKE_SIZE_UTIL} $<TARGET_FILE:${CMAKE_PROJECT_NAME}>
    COMMENT "Generating HEX, BIN files and showing size..."
)

# 显示配置摘要
message(STATUS "==========================================")
message(STATUS "Project: ${CMAKE_PROJECT_NAME}")
message(STATUS "Target: STM32H723 Cortex-M7")
message(STATUS "Compiler: ${CMAKE_C_COMPILER}")
message(STATUS "Build type: ${CMAKE_BUILD_TYPE}")
message(STATUS "Linker flags: ${LINKER_FLAGS_STRING}")
message(STATUS "==========================================")