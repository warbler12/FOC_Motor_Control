################################################################################
# Automatically-generated file. Do not edit!
################################################################################

SHELL = cmd.exe

CG_TOOL_ROOT := D:/Software/CCS/CCS12.2.0.00009_win64/c1220/ccs/tools/compiler/ti-cgt-c2000_22.6.0.LTS

GEN_OPTS__FLAG := 
GEN_CMDS__FLAG := 

ORDERED_OBJS += \
"./DSP28xx_SciUtil.obj" \
"./F2837xD_Adc.obj" \
"./F2837xD_CodeStartBranch.obj" \
"./F2837xD_CpuTimers.obj" \
"./F2837xD_DefaultISR.obj" \
"./F2837xD_Dma.obj" \
"./F2837xD_GlobalVariableDefs.obj" \
"./F2837xD_Gpio.obj" \
"./F2837xD_Ipc_Driver_Lite.obj" \
"./F2837xD_PieCtrl.obj" \
"./F2837xD_PieVect.obj" \
"./F2837xD_SysCtrl.obj" \
"./F2837xD_usDelay.obj" \
"./MW_SPI.obj" \
"./MW_c2000GPIO.obj" \
"./MW_c2000ISR.obj" \
"./MW_c28xGPIO.obj" \
"./MW_c28xGlobalInterrupts.obj" \
"./MW_c28xSPI.obj" \
"./MW_c28xx_adc.obj" \
"./MW_c28xx_board.obj" \
"./MW_c28xx_cap.obj" \
"./MW_c28xx_csl.obj" \
"./MW_c28xx_pwm.obj" \
"./MW_c28xx_xbar.obj" \
"./c2000HardwareTimerConfig.obj" \
"./c2837xDBoard_Realtime_Support.obj" \
"./c2837xDInit.obj" \
"./c2837xDSchedulerTimer0.obj" \
"./clb.obj" \
"./dma.obj" \
"./ert_main.obj" \
"./mcb_pmsm_foc_hall_f28379d.obj" \
"./mcb_pmsm_foc_hall_f28379d_data.obj" \
"./memcpy_fast.obj" \
"./mw_soc_c2000_ipc.obj" \
"./rtGetInf.obj" \
"./rtGetNaN.obj" \
"./rt_nonfinite.obj" \
"./sysctl.obj" \
$(GEN_CMDS__FLAG) \
-l"C:/TI/C2000Ware_3_04_00_00/libraries/math/IQmath/c28/lib/IQmath_fpu32.lib" \
-l"D:/Software/MATLAB/toolbox/c2b/tic2000_shared/src/c2837xDPeripherals.cmd" \
-l"D:/Software/MATLAB/toolbox/c2b/tic2000/src/c28377D.cmd" \
-lrts2800_fpu32.lib \

-include ../makefile.init

RM := DEL /F
RMDIR := RMDIR /S/Q

# All of the sources participating in the build are defined here
-include sources.mk
-include subdir_vars.mk
-include subdir_rules.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(C55_DEPS)),)
-include $(C55_DEPS)
endif
ifneq ($(strip $(C_UPPER_DEPS)),)
-include $(C_UPPER_DEPS)
endif
ifneq ($(strip $(S67_DEPS)),)
-include $(S67_DEPS)
endif
ifneq ($(strip $(S62_DEPS)),)
-include $(S62_DEPS)
endif
ifneq ($(strip $(S_DEPS)),)
-include $(S_DEPS)
endif
ifneq ($(strip $(OPT_DEPS)),)
-include $(OPT_DEPS)
endif
ifneq ($(strip $(C??_DEPS)),)
-include $(C??_DEPS)
endif
ifneq ($(strip $(ASM_UPPER_DEPS)),)
-include $(ASM_UPPER_DEPS)
endif
ifneq ($(strip $(S??_DEPS)),)
-include $(S??_DEPS)
endif
ifneq ($(strip $(C64_DEPS)),)
-include $(C64_DEPS)
endif
ifneq ($(strip $(CXX_DEPS)),)
-include $(CXX_DEPS)
endif
ifneq ($(strip $(S64_DEPS)),)
-include $(S64_DEPS)
endif
ifneq ($(strip $(INO_DEPS)),)
-include $(INO_DEPS)
endif
ifneq ($(strip $(CLA_DEPS)),)
-include $(CLA_DEPS)
endif
ifneq ($(strip $(S55_DEPS)),)
-include $(S55_DEPS)
endif
ifneq ($(strip $(SV7A_DEPS)),)
-include $(SV7A_DEPS)
endif
ifneq ($(strip $(C62_DEPS)),)
-include $(C62_DEPS)
endif
ifneq ($(strip $(C67_DEPS)),)
-include $(C67_DEPS)
endif
ifneq ($(strip $(PDE_DEPS)),)
-include $(PDE_DEPS)
endif
ifneq ($(strip $(K_DEPS)),)
-include $(K_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
ifneq ($(strip $(CC_DEPS)),)
-include $(CC_DEPS)
endif
ifneq ($(strip $(C++_DEPS)),)
-include $(C++_DEPS)
endif
ifneq ($(strip $(C43_DEPS)),)
-include $(C43_DEPS)
endif
ifneq ($(strip $(S43_DEPS)),)
-include $(S43_DEPS)
endif
ifneq ($(strip $(ASM_DEPS)),)
-include $(ASM_DEPS)
endif
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
ifneq ($(strip $(CPP_DEPS)),)
-include $(CPP_DEPS)
endif
ifneq ($(strip $(SA_DEPS)),)
-include $(SA_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 
EXE_OUTPUTS += \
mcb_pmsm_foc_hall_f28379d.out \

EXE_OUTPUTS__QUOTED += \
"mcb_pmsm_foc_hall_f28379d.out" \


# All Target
all: mcb_pmsm_foc_hall_f28379d.out

# Tool invocations
mcb_pmsm_foc_hall_f28379d.out: $(OBJS) $(GEN_CMDS)
	@echo 'Building target: "$@"'
	@echo 'Invoking: C2000 Linker'
	"D:/Software/CCS/CCS12.2.0.00009_win64/c1220/ccs/tools/compiler/ti-cgt-c2000_22.6.0.LTS/bin/cl2000" --define=MW_SPI_A --define=MW_SPISTE_SELECT_SPI_A --define=MW_SCHEDULER_PRIORITY=2 --define=MODEL=mcb_pmsm_foc_hall_f28379d --define=NUMST=2 --define=NCSTATES=0 --define=HAVESTDIO --define=MODEL_HAS_DYNAMICALLY_LOADED_SFCNS=0 --define=CLASSIC_INTERFACE=0 --define=ALLOCATIONFCN=0 --define=TID01EQ=0 --define=TERMFCN=1 --define=ONESTEPFCN=1 --define=MAT_FILE=0 --define=MULTI_INSTANCE_CODE=0 --define=INTEGER_CODE=0 --define=MT=1 --define=XCP_CUSTOM_PLATFORM --define=EXTMODE_DISABLE_ARGS_PROCESSING=1 --define=MW_PIL_SCIFIFOLEN=16 --define=F2837X_REG_FORMAT --define=MW_F2837XD --define=STACK_SIZE=512 --define=__MW_TARGET_USE_HARDWARE_RESOURCES_H__ --define=RT --define=F28379D --define=CPU1 --define=BOOT_FROM_FLASH=1 --define=CPU_RAMLS_PROG_START=0x8000 --define=CPU_RAMLS_PROG_LENGTH=0x1800 --define=CLA_RAMLS_PROG_START=0xA800 --define=CLA_RAMLS_PROG_LENGTH=0x800 --define=CLA_RAMLS_DATA_START=0x9800 --define=CLA_RAMLS_DATA_LENGTH=0x1000 --abi=coffabi -s -v28 -ml --abi=coffabi  --preproc_dependency=$(@:%.obj=%.dep) --preproc_with_compile  --large_memory_model -I$(F28_HEADERS)/include -I$(TI_INCLUDE) -v28 --float_support=fpu32 -ml -DF28379D -DCPU1 -DBOOT_FROM_FLASH=1 --tmu_support=tmu0 --fp_mode=relaxed -DCPU_RAMLS_PROG_START=0x8000 -DCPU_RAMLS_PROG_LENGTH=0x1800 -DCLA_RAMLS_PROG_START=0xA800 -DCLA_RAMLS_PROG_LENGTH=0x800 -DCLA_RAMLS_DATA_START=0x9800 -DCLA_RAMLS_DATA_LENGTH=0x1000 -z --warn_sections -i"D:/Software/CCS/CCS12.2.0.00009_win64/c1220/ccs/tools/compiler/ti-cgt-c2000_22.6.0.LTS/lib" -i"D:/Software/CCS/CCS12.2.0.00009_win64/c1220/ccs/tools/compiler/ti-cgt-c2000_22.6.0.LTS/include" --reread_libs --define=F28379D --define=CPU1 --define=BOOT_FROM_FLASH=1 --define=BOOT_USING_BL=0 --define=CPU_RAMLS_PROG_START=0x8000 --define=CPU_RAMLS_PROG_LENGTH=0x1800 --define=CLA_RAMLS_PROG_START=0xA800 --define=CLA_RAMLS_PROG_LENGTH=0x800 --define=CLA_RAMLS_DATA_START=0x9800 --define=CLA_RAMLS_DATA_LENGTH=0x1000 --rom_model --stack_size=512 --warn_sections --heap_size=1024 --reread_libs --rom_model --priority -mmcb_pmsm_foc_hall_f28379d.map -o "mcb_pmsm_foc_hall_f28379d.out" $(ORDERED_OBJS)
	@echo 'Finished building target: "$@"'
	@echo ' '

# Other Targets
clean:
	-$(RM) $(EXE_OUTPUTS__QUOTED)
	-$(RM) "DSP28xx_SciUtil.obj" "F2837xD_Adc.obj" "F2837xD_CodeStartBranch.obj" "F2837xD_CpuTimers.obj" "F2837xD_DefaultISR.obj" "F2837xD_Dma.obj" "F2837xD_GlobalVariableDefs.obj" "F2837xD_Gpio.obj" "F2837xD_Ipc_Driver_Lite.obj" "F2837xD_PieCtrl.obj" "F2837xD_PieVect.obj" "F2837xD_SysCtrl.obj" "F2837xD_usDelay.obj" "MW_SPI.obj" "MW_c2000GPIO.obj" "MW_c2000ISR.obj" "MW_c28xGPIO.obj" "MW_c28xGlobalInterrupts.obj" "MW_c28xSPI.obj" "MW_c28xx_adc.obj" "MW_c28xx_board.obj" "MW_c28xx_cap.obj" "MW_c28xx_csl.obj" "MW_c28xx_pwm.obj" "MW_c28xx_xbar.obj" "c2000HardwareTimerConfig.obj" "c2837xDBoard_Realtime_Support.obj" "c2837xDInit.obj" "c2837xDSchedulerTimer0.obj" "clb.obj" "dma.obj" "ert_main.obj" "mcb_pmsm_foc_hall_f28379d.obj" "mcb_pmsm_foc_hall_f28379d_data.obj" "memcpy_fast.obj" "mw_soc_c2000_ipc.obj" "rtGetInf.obj" "rtGetNaN.obj" "rt_nonfinite.obj" "sysctl.obj" 
	-$(RM) "DSP28xx_SciUtil.d" "F2837xD_Adc.d" "F2837xD_CpuTimers.d" "F2837xD_DefaultISR.d" "F2837xD_Dma.d" "F2837xD_GlobalVariableDefs.d" "F2837xD_Gpio.d" "F2837xD_Ipc_Driver_Lite.d" "F2837xD_PieCtrl.d" "F2837xD_PieVect.d" "F2837xD_SysCtrl.d" "MW_SPI.d" "MW_c2000GPIO.d" "MW_c2000ISR.d" "MW_c28xGPIO.d" "MW_c28xGlobalInterrupts.d" "MW_c28xSPI.d" "MW_c28xx_adc.d" "MW_c28xx_board.d" "MW_c28xx_cap.d" "MW_c28xx_csl.d" "MW_c28xx_pwm.d" "MW_c28xx_xbar.d" "c2000HardwareTimerConfig.d" "c2837xDBoard_Realtime_Support.d" "c2837xDInit.d" "c2837xDSchedulerTimer0.d" "clb.d" "dma.d" "ert_main.d" "mcb_pmsm_foc_hall_f28379d.d" "mcb_pmsm_foc_hall_f28379d_data.d" "mw_soc_c2000_ipc.d" "rtGetInf.d" "rtGetNaN.d" "rt_nonfinite.d" "sysctl.d" 
	-$(RM) "F2837xD_CodeStartBranch.d" "F2837xD_usDelay.d" "memcpy_fast.d" 
	-@echo 'Finished clean'
	-@echo ' '

.PHONY: all clean dependents
.SECONDARY:

-include ../makefile.targets

