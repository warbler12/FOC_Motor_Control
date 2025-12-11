################################################################################
# Automatically-generated file. Do not edit!
################################################################################

SHELL = cmd.exe

# Add inputs and outputs from these tool invocations to the build variables 
ASM_SRCS += \
C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_CodeStartBranch.asm \
C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_usDelay.asm \
C:/TI/C2000Ware_3_04_00_00/libraries/dsp/FPU/c28/source/fpu32/utility/memcpy_fast.asm 

C_SRCS += \
C:/Users/13571/Documents/MATLAB/Examples/R2023b/mcb/FocHallExample/mcb_pmsm_foc_hall_f28379d_ert_rtw/DSP28xx_SciUtil.c \
C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Adc.c \
C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_CpuTimers.c \
C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_DefaultISR.c \
C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c \
C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/headers/source/F2837xD_GlobalVariableDefs.c \
C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Gpio.c \
C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c \
C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_PieCtrl.c \
C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_PieVect.c \
C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c \
D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_SPI.c \
D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c2000GPIO.c \
D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c2000ISR.c \
D:/Software/MATLAB/toolbox/c2b/tic2000_shared/src/MW_c28xGPIO.c \
D:/Software/MATLAB/toolbox/c2b/tic2000_shared/src/MW_c28xGlobalInterrupts.c \
D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c28xSPI.c \
C:/Users/13571/Documents/MATLAB/Examples/R2023b/mcb/FocHallExample/mcb_pmsm_foc_hall_f28379d_ert_rtw/MW_c28xx_adc.c \
C:/Users/13571/Documents/MATLAB/Examples/R2023b/mcb/FocHallExample/mcb_pmsm_foc_hall_f28379d_ert_rtw/MW_c28xx_board.c \
C:/Users/13571/Documents/MATLAB/Examples/R2023b/mcb/FocHallExample/mcb_pmsm_foc_hall_f28379d_ert_rtw/MW_c28xx_cap.c \
C:/Users/13571/Documents/MATLAB/Examples/R2023b/mcb/FocHallExample/mcb_pmsm_foc_hall_f28379d_ert_rtw/MW_c28xx_csl.c \
C:/Users/13571/Documents/MATLAB/Examples/R2023b/mcb/FocHallExample/mcb_pmsm_foc_hall_f28379d_ert_rtw/MW_c28xx_pwm.c \
C:/Users/13571/Documents/MATLAB/Examples/R2023b/mcb/FocHallExample/mcb_pmsm_foc_hall_f28379d_ert_rtw/MW_c28xx_xbar.c \
D:/Software/MATLAB/toolbox/c2b/tic2000/src/c2000HardwareTimerConfig.c \
D:/Software/MATLAB/toolbox/c2b/tic2000_shared/src/c2837xDBoard_Realtime_Support.c \
D:/Software/MATLAB/toolbox/c2b/tic2000/src/c2837xDInit.c \
D:/Software/MATLAB/toolbox/c2b/tic2000_shared/src/c2837xDSchedulerTimer0.c \
C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/clb.c \
C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/dma.c \
C:/Users/13571/Documents/MATLAB/Examples/R2023b/mcb/FocHallExample/mcb_pmsm_foc_hall_f28379d_ert_rtw/ert_main.c \
C:/Users/13571/Documents/MATLAB/Examples/R2023b/mcb/FocHallExample/mcb_pmsm_foc_hall_f28379d_ert_rtw/mcb_pmsm_foc_hall_f28379d.c \
C:/Users/13571/Documents/MATLAB/Examples/R2023b/mcb/FocHallExample/mcb_pmsm_foc_hall_f28379d_ert_rtw/mcb_pmsm_foc_hall_f28379d_data.c \
D:/Software/MATLAB/toolbox/c2b/tic2000_soc/src/mw_soc_c2000_ipc.c \
C:/Users/13571/Documents/MATLAB/Examples/R2023b/mcb/FocHallExample/mcb_pmsm_foc_hall_f28379d_ert_rtw/rtGetInf.c \
C:/Users/13571/Documents/MATLAB/Examples/R2023b/mcb/FocHallExample/mcb_pmsm_foc_hall_f28379d_ert_rtw/rtGetNaN.c \
C:/Users/13571/Documents/MATLAB/Examples/R2023b/mcb/FocHallExample/mcb_pmsm_foc_hall_f28379d_ert_rtw/rt_nonfinite.c \
C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c 

C_DEPS += \
./DSP28xx_SciUtil.d \
./F2837xD_Adc.d \
./F2837xD_CpuTimers.d \
./F2837xD_DefaultISR.d \
./F2837xD_Dma.d \
./F2837xD_GlobalVariableDefs.d \
./F2837xD_Gpio.d \
./F2837xD_Ipc_Driver_Lite.d \
./F2837xD_PieCtrl.d \
./F2837xD_PieVect.d \
./F2837xD_SysCtrl.d \
./MW_SPI.d \
./MW_c2000GPIO.d \
./MW_c2000ISR.d \
./MW_c28xGPIO.d \
./MW_c28xGlobalInterrupts.d \
./MW_c28xSPI.d \
./MW_c28xx_adc.d \
./MW_c28xx_board.d \
./MW_c28xx_cap.d \
./MW_c28xx_csl.d \
./MW_c28xx_pwm.d \
./MW_c28xx_xbar.d \
./c2000HardwareTimerConfig.d \
./c2837xDBoard_Realtime_Support.d \
./c2837xDInit.d \
./c2837xDSchedulerTimer0.d \
./clb.d \
./dma.d \
./ert_main.d \
./mcb_pmsm_foc_hall_f28379d.d \
./mcb_pmsm_foc_hall_f28379d_data.d \
./mw_soc_c2000_ipc.d \
./rtGetInf.d \
./rtGetNaN.d \
./rt_nonfinite.d \
./sysctl.d 

OBJS += \
./DSP28xx_SciUtil.obj \
./F2837xD_Adc.obj \
./F2837xD_CodeStartBranch.obj \
./F2837xD_CpuTimers.obj \
./F2837xD_DefaultISR.obj \
./F2837xD_Dma.obj \
./F2837xD_GlobalVariableDefs.obj \
./F2837xD_Gpio.obj \
./F2837xD_Ipc_Driver_Lite.obj \
./F2837xD_PieCtrl.obj \
./F2837xD_PieVect.obj \
./F2837xD_SysCtrl.obj \
./F2837xD_usDelay.obj \
./MW_SPI.obj \
./MW_c2000GPIO.obj \
./MW_c2000ISR.obj \
./MW_c28xGPIO.obj \
./MW_c28xGlobalInterrupts.obj \
./MW_c28xSPI.obj \
./MW_c28xx_adc.obj \
./MW_c28xx_board.obj \
./MW_c28xx_cap.obj \
./MW_c28xx_csl.obj \
./MW_c28xx_pwm.obj \
./MW_c28xx_xbar.obj \
./c2000HardwareTimerConfig.obj \
./c2837xDBoard_Realtime_Support.obj \
./c2837xDInit.obj \
./c2837xDSchedulerTimer0.obj \
./clb.obj \
./dma.obj \
./ert_main.obj \
./mcb_pmsm_foc_hall_f28379d.obj \
./mcb_pmsm_foc_hall_f28379d_data.obj \
./memcpy_fast.obj \
./mw_soc_c2000_ipc.obj \
./rtGetInf.obj \
./rtGetNaN.obj \
./rt_nonfinite.obj \
./sysctl.obj 

ASM_DEPS += \
./F2837xD_CodeStartBranch.d \
./F2837xD_usDelay.d \
./memcpy_fast.d 

OBJS__QUOTED += \
"DSP28xx_SciUtil.obj" \
"F2837xD_Adc.obj" \
"F2837xD_CodeStartBranch.obj" \
"F2837xD_CpuTimers.obj" \
"F2837xD_DefaultISR.obj" \
"F2837xD_Dma.obj" \
"F2837xD_GlobalVariableDefs.obj" \
"F2837xD_Gpio.obj" \
"F2837xD_Ipc_Driver_Lite.obj" \
"F2837xD_PieCtrl.obj" \
"F2837xD_PieVect.obj" \
"F2837xD_SysCtrl.obj" \
"F2837xD_usDelay.obj" \
"MW_SPI.obj" \
"MW_c2000GPIO.obj" \
"MW_c2000ISR.obj" \
"MW_c28xGPIO.obj" \
"MW_c28xGlobalInterrupts.obj" \
"MW_c28xSPI.obj" \
"MW_c28xx_adc.obj" \
"MW_c28xx_board.obj" \
"MW_c28xx_cap.obj" \
"MW_c28xx_csl.obj" \
"MW_c28xx_pwm.obj" \
"MW_c28xx_xbar.obj" \
"c2000HardwareTimerConfig.obj" \
"c2837xDBoard_Realtime_Support.obj" \
"c2837xDInit.obj" \
"c2837xDSchedulerTimer0.obj" \
"clb.obj" \
"dma.obj" \
"ert_main.obj" \
"mcb_pmsm_foc_hall_f28379d.obj" \
"mcb_pmsm_foc_hall_f28379d_data.obj" \
"memcpy_fast.obj" \
"mw_soc_c2000_ipc.obj" \
"rtGetInf.obj" \
"rtGetNaN.obj" \
"rt_nonfinite.obj" \
"sysctl.obj" 

C_DEPS__QUOTED += \
"DSP28xx_SciUtil.d" \
"F2837xD_Adc.d" \
"F2837xD_CpuTimers.d" \
"F2837xD_DefaultISR.d" \
"F2837xD_Dma.d" \
"F2837xD_GlobalVariableDefs.d" \
"F2837xD_Gpio.d" \
"F2837xD_Ipc_Driver_Lite.d" \
"F2837xD_PieCtrl.d" \
"F2837xD_PieVect.d" \
"F2837xD_SysCtrl.d" \
"MW_SPI.d" \
"MW_c2000GPIO.d" \
"MW_c2000ISR.d" \
"MW_c28xGPIO.d" \
"MW_c28xGlobalInterrupts.d" \
"MW_c28xSPI.d" \
"MW_c28xx_adc.d" \
"MW_c28xx_board.d" \
"MW_c28xx_cap.d" \
"MW_c28xx_csl.d" \
"MW_c28xx_pwm.d" \
"MW_c28xx_xbar.d" \
"c2000HardwareTimerConfig.d" \
"c2837xDBoard_Realtime_Support.d" \
"c2837xDInit.d" \
"c2837xDSchedulerTimer0.d" \
"clb.d" \
"dma.d" \
"ert_main.d" \
"mcb_pmsm_foc_hall_f28379d.d" \
"mcb_pmsm_foc_hall_f28379d_data.d" \
"mw_soc_c2000_ipc.d" \
"rtGetInf.d" \
"rtGetNaN.d" \
"rt_nonfinite.d" \
"sysctl.d" 

ASM_DEPS__QUOTED += \
"F2837xD_CodeStartBranch.d" \
"F2837xD_usDelay.d" \
"memcpy_fast.d" 

C_SRCS__QUOTED += \
"C:/Users/13571/Documents/MATLAB/Examples/R2023b/mcb/FocHallExample/mcb_pmsm_foc_hall_f28379d_ert_rtw/DSP28xx_SciUtil.c" \
"C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Adc.c" \
"C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_CpuTimers.c" \
"C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_DefaultISR.c" \
"C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c" \
"C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/headers/source/F2837xD_GlobalVariableDefs.c" \
"C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Gpio.c" \
"C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c" \
"C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_PieCtrl.c" \
"C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_PieVect.c" \
"C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c" \
"D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_SPI.c" \
"D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c2000GPIO.c" \
"D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c2000ISR.c" \
"D:/Software/MATLAB/toolbox/c2b/tic2000_shared/src/MW_c28xGPIO.c" \
"D:/Software/MATLAB/toolbox/c2b/tic2000_shared/src/MW_c28xGlobalInterrupts.c" \
"D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c28xSPI.c" \
"C:/Users/13571/Documents/MATLAB/Examples/R2023b/mcb/FocHallExample/mcb_pmsm_foc_hall_f28379d_ert_rtw/MW_c28xx_adc.c" \
"C:/Users/13571/Documents/MATLAB/Examples/R2023b/mcb/FocHallExample/mcb_pmsm_foc_hall_f28379d_ert_rtw/MW_c28xx_board.c" \
"C:/Users/13571/Documents/MATLAB/Examples/R2023b/mcb/FocHallExample/mcb_pmsm_foc_hall_f28379d_ert_rtw/MW_c28xx_cap.c" \
"C:/Users/13571/Documents/MATLAB/Examples/R2023b/mcb/FocHallExample/mcb_pmsm_foc_hall_f28379d_ert_rtw/MW_c28xx_csl.c" \
"C:/Users/13571/Documents/MATLAB/Examples/R2023b/mcb/FocHallExample/mcb_pmsm_foc_hall_f28379d_ert_rtw/MW_c28xx_pwm.c" \
"C:/Users/13571/Documents/MATLAB/Examples/R2023b/mcb/FocHallExample/mcb_pmsm_foc_hall_f28379d_ert_rtw/MW_c28xx_xbar.c" \
"D:/Software/MATLAB/toolbox/c2b/tic2000/src/c2000HardwareTimerConfig.c" \
"D:/Software/MATLAB/toolbox/c2b/tic2000_shared/src/c2837xDBoard_Realtime_Support.c" \
"D:/Software/MATLAB/toolbox/c2b/tic2000/src/c2837xDInit.c" \
"D:/Software/MATLAB/toolbox/c2b/tic2000_shared/src/c2837xDSchedulerTimer0.c" \
"C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/clb.c" \
"C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/dma.c" \
"C:/Users/13571/Documents/MATLAB/Examples/R2023b/mcb/FocHallExample/mcb_pmsm_foc_hall_f28379d_ert_rtw/ert_main.c" \
"C:/Users/13571/Documents/MATLAB/Examples/R2023b/mcb/FocHallExample/mcb_pmsm_foc_hall_f28379d_ert_rtw/mcb_pmsm_foc_hall_f28379d.c" \
"C:/Users/13571/Documents/MATLAB/Examples/R2023b/mcb/FocHallExample/mcb_pmsm_foc_hall_f28379d_ert_rtw/mcb_pmsm_foc_hall_f28379d_data.c" \
"D:/Software/MATLAB/toolbox/c2b/tic2000_soc/src/mw_soc_c2000_ipc.c" \
"C:/Users/13571/Documents/MATLAB/Examples/R2023b/mcb/FocHallExample/mcb_pmsm_foc_hall_f28379d_ert_rtw/rtGetInf.c" \
"C:/Users/13571/Documents/MATLAB/Examples/R2023b/mcb/FocHallExample/mcb_pmsm_foc_hall_f28379d_ert_rtw/rtGetNaN.c" \
"C:/Users/13571/Documents/MATLAB/Examples/R2023b/mcb/FocHallExample/mcb_pmsm_foc_hall_f28379d_ert_rtw/rt_nonfinite.c" \
"C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c" 

ASM_SRCS__QUOTED += \
"C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_CodeStartBranch.asm" \
"C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_usDelay.asm" \
"C:/TI/C2000Ware_3_04_00_00/libraries/dsp/FPU/c28/source/fpu32/utility/memcpy_fast.asm" 


