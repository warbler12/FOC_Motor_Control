;***************************************************************
;* TMS320C2000 G3 C/C++ Codegen                               PC v22.6.0.LTS *
;* Date/Time created: Thu Nov 20 18:10:03 2025                 *
;***************************************************************
	.compiler_opts --abi=coffabi --float_support=fpu32 --hll_source=on --mem_model:code=flat --mem_model:data=large --object_format=coff --silicon_errata_fpu1_workaround=off --silicon_version=28 --symdebug:dwarf --symdebug:dwarf_version=3 --tmu_support=tmu0 
	.asg	XAR2, FP

$C$DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr $C$DW$CU, DW_AT_name("C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c")
	.dwattr $C$DW$CU, DW_AT_producer("TI TMS320C2000 G3 C/C++ Codegen PC v22.6.0.LTS Copyright (c) 1996-2018 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("C:\Users\13571\Documents\MATLAB\Examples\R2023b\mcb\FocHallExample\mcb_pmsm_foc_hall_f28379d_ert_rtw\CCS_Project\Debug")

$C$DW$1	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$1, DW_AT_name("GPIO_EnableUnbondedIOPullups")
	.dwattr $C$DW$1, DW_AT_TI_symbol_name("_GPIO_EnableUnbondedIOPullups")
	.dwattr $C$DW$1, DW_AT_declaration
	.dwattr $C$DW$1, DW_AT_external
	.dwendtag $C$DW$1

$C$DW$2	.dwtag  DW_TAG_variable
	.dwattr $C$DW$2, DW_AT_name("FlashPumpSemaphoreRegs")
	.dwattr $C$DW$2, DW_AT_TI_symbol_name("_FlashPumpSemaphoreRegs")
	.dwattr $C$DW$2, DW_AT_type(*$C$DW$T$380)
	.dwattr $C$DW$2, DW_AT_declaration
	.dwattr $C$DW$2, DW_AT_external

$C$DW$3	.dwtag  DW_TAG_variable
	.dwattr $C$DW$3, DW_AT_name("CpuTimer1Regs")
	.dwattr $C$DW$3, DW_AT_TI_symbol_name("_CpuTimer1Regs")
	.dwattr $C$DW$3, DW_AT_type(*$C$DW$T$367)
	.dwattr $C$DW$3, DW_AT_declaration
	.dwattr $C$DW$3, DW_AT_external

$C$DW$4	.dwtag  DW_TAG_variable
	.dwattr $C$DW$4, DW_AT_name("CpuTimer2Regs")
	.dwattr $C$DW$4, DW_AT_TI_symbol_name("_CpuTimer2Regs")
	.dwattr $C$DW$4, DW_AT_type(*$C$DW$T$367)
	.dwattr $C$DW$4, DW_AT_declaration
	.dwattr $C$DW$4, DW_AT_external

$C$DW$5	.dwtag  DW_TAG_variable
	.dwattr $C$DW$5, DW_AT_name("DcsmZ1Regs")
	.dwattr $C$DW$5, DW_AT_TI_symbol_name("_DcsmZ1Regs")
	.dwattr $C$DW$5, DW_AT_type(*$C$DW$T$369)
	.dwattr $C$DW$5, DW_AT_declaration
	.dwattr $C$DW$5, DW_AT_external

$C$DW$6	.dwtag  DW_TAG_variable
	.dwattr $C$DW$6, DW_AT_name("DcsmZ2Regs")
	.dwattr $C$DW$6, DW_AT_TI_symbol_name("_DcsmZ2Regs")
	.dwattr $C$DW$6, DW_AT_type(*$C$DW$T$370)
	.dwattr $C$DW$6, DW_AT_declaration
	.dwattr $C$DW$6, DW_AT_external

$C$DW$7	.dwtag  DW_TAG_variable
	.dwattr $C$DW$7, DW_AT_name("Flash0EccRegs")
	.dwattr $C$DW$7, DW_AT_TI_symbol_name("_Flash0EccRegs")
	.dwattr $C$DW$7, DW_AT_type(*$C$DW$T$379)
	.dwattr $C$DW$7, DW_AT_declaration
	.dwattr $C$DW$7, DW_AT_external

$C$DW$8	.dwtag  DW_TAG_variable
	.dwattr $C$DW$8, DW_AT_name("WdRegs")
	.dwattr $C$DW$8, DW_AT_TI_symbol_name("_WdRegs")
	.dwattr $C$DW$8, DW_AT_type(*$C$DW$T$451)
	.dwattr $C$DW$8, DW_AT_declaration
	.dwattr $C$DW$8, DW_AT_external

$C$DW$9	.dwtag  DW_TAG_variable
	.dwattr $C$DW$9, DW_AT_name("ClkCfgRegs")
	.dwattr $C$DW$9, DW_AT_TI_symbol_name("_ClkCfgRegs")
	.dwattr $C$DW$9, DW_AT_type(*$C$DW$T$366)
	.dwattr $C$DW$9, DW_AT_declaration
	.dwattr $C$DW$9, DW_AT_external

$C$DW$10	.dwtag  DW_TAG_variable
	.dwattr $C$DW$10, DW_AT_name("AnalogSubsysRegs")
	.dwattr $C$DW$10, DW_AT_TI_symbol_name("_AnalogSubsysRegs")
	.dwattr $C$DW$10, DW_AT_type(*$C$DW$T$349)
	.dwattr $C$DW$10, DW_AT_declaration
	.dwattr $C$DW$10, DW_AT_external

$C$DW$11	.dwtag  DW_TAG_variable
	.dwattr $C$DW$11, DW_AT_name("CpuSysRegs")
	.dwattr $C$DW$11, DW_AT_TI_symbol_name("_CpuSysRegs")
	.dwattr $C$DW$11, DW_AT_type(*$C$DW$T$368)
	.dwattr $C$DW$11, DW_AT_declaration
	.dwattr $C$DW$11, DW_AT_external

$C$DW$12	.dwtag  DW_TAG_variable
	.dwattr $C$DW$12, DW_AT_name("DevCfgRegs")
	.dwattr $C$DW$12, DW_AT_TI_symbol_name("_DevCfgRegs")
	.dwattr $C$DW$12, DW_AT_type(*$C$DW$T$371)
	.dwattr $C$DW$12, DW_AT_declaration
	.dwattr $C$DW$12, DW_AT_external

$C$DW$13	.dwtag  DW_TAG_variable
	.dwattr $C$DW$13, DW_AT_name("Flash0CtrlRegs")
	.dwattr $C$DW$13, DW_AT_TI_symbol_name("_Flash0CtrlRegs")
	.dwattr $C$DW$13, DW_AT_type(*$C$DW$T$378)
	.dwattr $C$DW$13, DW_AT_declaration
	.dwattr $C$DW$13, DW_AT_external

;	D:\Software\CCS\CCS12.2.0.00009_win64\c1220\ccs\tools\compiler\ti-cgt-c2000_22.6.0.LTS\bin\ac2000.exe -@C:\\Users\\13571\\AppData\\Local\\Temp\\{AE94D3F2-37AB-4574-9C14-DDFA1E0BF438} 
	.sect	".text"
	.clink
	.global	_InitSysCtrl

$C$DW$14	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$14, DW_AT_name("InitSysCtrl")
	.dwattr $C$DW$14, DW_AT_low_pc(_InitSysCtrl)
	.dwattr $C$DW$14, DW_AT_high_pc(0x00)
	.dwattr $C$DW$14, DW_AT_TI_symbol_name("_InitSysCtrl")
	.dwattr $C$DW$14, DW_AT_external
	.dwattr $C$DW$14, DW_AT_TI_begin_file("C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c")
	.dwattr $C$DW$14, DW_AT_TI_begin_line(0x5e)
	.dwattr $C$DW$14, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$14, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 95,column 1,is_stmt,address _InitSysCtrl,isa 0

	.dwfde $C$DW$CIE, _InitSysCtrl
;----------------------------------------------------------------------
;  94 | void InitSysCtrl(void)                                                 
;  96 | //                                                                     
;  97 | // Disable the watchdog                                                
;  98 | //                                                                     
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _InitSysCtrl                  FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_InitSysCtrl:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 99,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
;  99 | DisableDog();                                                          
; 101 | #ifdef _FLASH                                                          
; 102 | //                                                                     
; 103 | // Copy time critical code and Flash setup code to RAM. This includes t
;     | he                                                                     
; 104 | // following functions: InitFlash()                                    
; 105 | //                                                                     
; 106 | // The  RamfuncsLoadStart, RamfuncsLoadSize, and RamfuncsRunStart      
; 107 | // symbols are created by the linker. Refer to the device .cmd file.   
; 108 | //                                                                     
; 109 | memcpy(&RamfuncsRunStart, &RamfuncsLoadStart, (size_t)&RamfuncsLoadSize
;     | );                                                                     
; 111 | //                                                                     
; 112 | // Call Flash Initialization to setup flash waitstates. This function m
;     | ust                                                                    
; 113 | // reside in RAM.                                                      
; 114 | //                                                                     
; 115 | InitFlash();                                                           
; 116 | #endif                                                                 
; 118 | //                                                                     
; 119 | //      *IMPORTANT*                                                    
; 120 | //                                                                     
; 121 | // The Device_cal function, which copies the ADC & oscillator calibrati
;     | on                                                                     
; 122 | // values from TI reserved OTP into the appropriate trim registers, occ
;     | urs                                                                    
; 123 | // automatically in the Boot ROM. If the boot ROM code is bypassed duri
;     | ng                                                                     
; 124 | // the debug process, the following function MUST be called for the ADC
;     |  and                                                                   
; 125 | // oscillators to function according to specification. The clocks to th
;     | e                                                                      
; 126 | // ADC MUST be enabled before calling this function.                   
; 127 | //                                                                     
; 128 | // See the device data manual and/or the ADC Reference Manual for more 
; 129 | // information.                                                        
; 130 | //                                                                     
; 131 | #ifdef CPU1                                                            
;----------------------------------------------------------------------
$C$DW$15	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$15, DW_AT_low_pc(0x00)
	.dwattr $C$DW$15, DW_AT_name("_DisableDog")
	.dwattr $C$DW$15, DW_AT_TI_call

        LCR       #_DisableDog          ; [CPU_ALU] |99| 
        ; call occurs [#_DisableDog] ; [] |99| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 132,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 132 | EALLOW;                                                                
; 134 | //                                                                     
; 135 | // Enable pull-ups on unbonded IOs as soon as possible to reduce power 
; 136 | // consumption.                                                        
; 137 | //                                                                     
;----------------------------------------------------------------------
 EALLOW
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 138,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 138 | GPIO_EnableUnbondedIOPullups();                                        
; 140 | //                                                                     
; 141 | // Check if the device is trimmed                                      
; 142 | //                                                                     
;----------------------------------------------------------------------
        SPM       #0                    ; [CPU_ALU] 
$C$DW$16	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$16, DW_AT_low_pc(0x00)
	.dwattr $C$DW$16, DW_AT_name("_GPIO_EnableUnbondedIOPullups")
	.dwattr $C$DW$16, DW_AT_TI_call

        LCR       #_GPIO_EnableUnbondedIOPullups ; [CPU_ALU] |138| 
        ; call occurs [#_GPIO_EnableUnbondedIOPullups] ; [] |138| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 143,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 143 | if((DevCfgRegs.PARTIDL.bit.QUAL == 0x0) &&                             
; 144 |    (AnalogSubsysRegs.ANAREFTRIMA.all == 0x0))                          
;----------------------------------------------------------------------
        MOVW      DP,#_DevCfgRegs+8     ; [CPU_ARAU] 
        AND       AL,@$BLOCKED(_DevCfgRegs)+8,#0x00c0 ; [CPU_ALU] |143| 
        LSR       AL,6                  ; [CPU_ALU] |143| 
        B         $C$L1,NEQ             ; [CPU_ALU] |143| 
        ; branchcc occurs ; [] |143| 
        MOVW      DP,#_AnalogSubsysRegs+54 ; [CPU_ARAU] 
        MOVL      ACC,@$BLOCKED(_AnalogSubsysRegs)+54 ; [CPU_ALU] |143| 
        B         $C$L1,NEQ             ; [CPU_ALU] |143| 
        ; branchcc occurs ; [] |143| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 146,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 146 | ConfigureTMXAnalogTrim();                                              
;----------------------------------------------------------------------
$C$DW$17	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$17, DW_AT_low_pc(0x00)
	.dwattr $C$DW$17, DW_AT_name("_ConfigureTMXAnalogTrim")
	.dwattr $C$DW$17, DW_AT_TI_call

        LCR       #_ConfigureTMXAnalogTrim ; [CPU_ALU] |146| 
        ; call occurs [#_ConfigureTMXAnalogTrim] ; [] |146| 
$C$L1:    
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 149,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 149 | EDIS;                                                                  
; 151 | //                                                                     
; 152 | // Initialize the PLL control: SYSPLLMULT and SYSCLKDIVSEL.            
; 153 | //                                                                     
; 154 | // Defined options to be passed as arguments to this function are defin
;     | ed                                                                     
; 155 | // in F2837xD_Examples.h.                                              
; 156 | //                                                                     
; 157 | // Note: The internal oscillator CANNOT be used as the PLL source if th
;     | e                                                                      
; 158 | // PLLSYSCLK is configured to frequencies above 194 MHz.               
; 159 | //                                                                     
; 160 | //  PLLSYSCLK = (XTAL_OSC) * (IMULT + FMULT) / (PLLSYSCLKDIV)          
; 161 | //                                                                     
; 162 | #ifdef _LAUNCHXL_F28379D                                               
; 163 | InitSysPll(XTAL_OSC,IMULT_40,FMULT_0,PLLCLK_BY_2);                     
; 164 | #else                                                                  
;----------------------------------------------------------------------
 EDIS
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 165,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 165 | InitSysPll(XTAL_OSC, IMULT_20, FMULT_0, PLLCLK_BY_2);                  
; 166 | #endif // _LAUNCHXL_F28379D                                            
; 168 | #ifndef _FLASH                                                         
; 169 | //                                                                     
; 170 | // Call Device_cal function when run using debugger                    
; 171 | // This function is called as part of the Boot code. The function is ca
;     | lled                                                                   
; 172 | // in the InitSysCtrl function since during debug time resets, the boot
;     |  code                                                                  
; 173 | // will not be executed and the gel script will reinitialize all the   
; 174 | // registers and the calibrated values will be lost.                   
; 175 | //                                                                     
;----------------------------------------------------------------------
        MOVB      AL,#1                 ; [CPU_ALU] |165| 
        MOVB      XAR4,#0               ; [CPU_ALU] |165| 
        MOVB      XAR5,#1               ; [CPU_ALU] |165| 
        MOVB      AH,#20                ; [CPU_ALU] |165| 
        SPM       #0                    ; [CPU_ALU] 
$C$DW$18	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$18, DW_AT_low_pc(0x00)
	.dwattr $C$DW$18, DW_AT_name("_InitSysPll")
	.dwattr $C$DW$18, DW_AT_TI_call

        LCR       #_InitSysPll          ; [CPU_ALU] |165| 
        ; call occurs [#_InitSysPll] ; [] |165| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 176,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 176 | Device_cal();                                                          
; 177 | #endif                                                                 
; 178 | #endif // CPU1                                                         
; 180 | //                                                                     
; 181 | // Turn on all peripherals                                             
; 182 | //                                                                     
;----------------------------------------------------------------------
        MOVL      XAR7,#CALL(459394)    ; [CPU_ARAU] |176| 
$C$DW$19	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$19, DW_AT_low_pc(0x00)
	.dwattr $C$DW$19, DW_AT_TI_call
	.dwattr $C$DW$19, DW_AT_TI_indirect

        LCR       *XAR7                 ; [CPU_ALU] |176| 
        ; call occurs [XAR7] ; [] |176| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 183,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 183 | InitPeripheralClocks();                                                
;----------------------------------------------------------------------
$C$DW$20	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$20, DW_AT_low_pc(0x00)
	.dwattr $C$DW$20, DW_AT_name("_InitPeripheralClocks")
	.dwattr $C$DW$20, DW_AT_TI_call

        LCR       #_InitPeripheralClocks ; [CPU_ALU] |183| 
        ; call occurs [#_InitPeripheralClocks] ; [] |183| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 184,column 1,is_stmt,isa 0
$C$DW$21	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$21, DW_AT_low_pc(0x00)
	.dwattr $C$DW$21, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$14, DW_AT_TI_end_file("C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c")
	.dwattr $C$DW$14, DW_AT_TI_end_line(0xb8)
	.dwattr $C$DW$14, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$14

	.sect	".text"
	.clink
	.global	_InitPeripheralClocks

$C$DW$22	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$22, DW_AT_name("InitPeripheralClocks")
	.dwattr $C$DW$22, DW_AT_low_pc(_InitPeripheralClocks)
	.dwattr $C$DW$22, DW_AT_high_pc(0x00)
	.dwattr $C$DW$22, DW_AT_TI_symbol_name("_InitPeripheralClocks")
	.dwattr $C$DW$22, DW_AT_external
	.dwattr $C$DW$22, DW_AT_TI_begin_file("C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c")
	.dwattr $C$DW$22, DW_AT_TI_begin_line(0xc1)
	.dwattr $C$DW$22, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$22, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 194,column 1,is_stmt,address _InitPeripheralClocks,isa 0

	.dwfde $C$DW$CIE, _InitPeripheralClocks
;----------------------------------------------------------------------
; 193 | void InitPeripheralClocks(void)                                        
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _InitPeripheralClocks         FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_InitPeripheralClocks:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 195,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 195 | EALLOW;                                                                
;----------------------------------------------------------------------
 EALLOW
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 197,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 197 | CpuSysRegs.PCLKCR0.bit.CLA1 = 1;                                       
;----------------------------------------------------------------------
        MOVW      DP,#_CpuSysRegs+34    ; [CPU_ARAU] 
        OR        @$BLOCKED(_CpuSysRegs)+34,#0x0001 ; [CPU_ALU] |197| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 198,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 198 | CpuSysRegs.PCLKCR0.bit.DMA = 1;                                        
;----------------------------------------------------------------------
        OR        @$BLOCKED(_CpuSysRegs)+34,#0x0004 ; [CPU_ALU] |198| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 199,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 199 | CpuSysRegs.PCLKCR0.bit.CPUTIMER0 = 1;                                  
;----------------------------------------------------------------------
        OR        @$BLOCKED(_CpuSysRegs)+34,#0x0008 ; [CPU_ALU] |199| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 200,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 200 | CpuSysRegs.PCLKCR0.bit.CPUTIMER1 = 1;                                  
;----------------------------------------------------------------------
        OR        @$BLOCKED(_CpuSysRegs)+34,#0x0010 ; [CPU_ALU] |200| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 201,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 201 | CpuSysRegs.PCLKCR0.bit.CPUTIMER2 = 1;                                  
; 203 | #ifdef CPU1                                                            
;----------------------------------------------------------------------
        OR        @$BLOCKED(_CpuSysRegs)+34,#0x0020 ; [CPU_ALU] |201| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 204,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 204 | CpuSysRegs.PCLKCR0.bit.HRPWM = 1;                                      
; 205 | #endif                                                                 
;----------------------------------------------------------------------
        OR        @$BLOCKED(_CpuSysRegs)+35,#0x0001 ; [CPU_ALU] |204| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 207,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 207 | CpuSysRegs.PCLKCR0.bit.TBCLKSYNC = 1;                                  
; 209 | #ifdef CPU1                                                            
;----------------------------------------------------------------------
        OR        @$BLOCKED(_CpuSysRegs)+35,#0x0004 ; [CPU_ALU] |207| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 210,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 210 | CpuSysRegs.PCLKCR1.bit.EMIF1 = 1;                                      
;----------------------------------------------------------------------
        OR        @$BLOCKED(_CpuSysRegs)+36,#0x0001 ; [CPU_ALU] |210| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 211,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 211 | CpuSysRegs.PCLKCR1.bit.EMIF2 = 1;                                      
; 212 | #endif                                                                 
;----------------------------------------------------------------------
        OR        @$BLOCKED(_CpuSysRegs)+36,#0x0002 ; [CPU_ALU] |211| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 214,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 214 | CpuSysRegs.PCLKCR2.bit.EPWM1 = 1;                                      
;----------------------------------------------------------------------
        OR        @$BLOCKED(_CpuSysRegs)+38,#0x0001 ; [CPU_ALU] |214| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 215,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 215 | CpuSysRegs.PCLKCR2.bit.EPWM2 = 1;                                      
;----------------------------------------------------------------------
        OR        @$BLOCKED(_CpuSysRegs)+38,#0x0002 ; [CPU_ALU] |215| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 216,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 216 | CpuSysRegs.PCLKCR2.bit.EPWM3 = 1;                                      
;----------------------------------------------------------------------
        OR        @$BLOCKED(_CpuSysRegs)+38,#0x0004 ; [CPU_ALU] |216| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 217,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 217 | CpuSysRegs.PCLKCR2.bit.EPWM4 = 1;                                      
;----------------------------------------------------------------------
        OR        @$BLOCKED(_CpuSysRegs)+38,#0x0008 ; [CPU_ALU] |217| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 218,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 218 | CpuSysRegs.PCLKCR2.bit.EPWM5 = 1;                                      
;----------------------------------------------------------------------
        OR        @$BLOCKED(_CpuSysRegs)+38,#0x0010 ; [CPU_ALU] |218| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 219,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 219 | CpuSysRegs.PCLKCR2.bit.EPWM6 = 1;                                      
;----------------------------------------------------------------------
        OR        @$BLOCKED(_CpuSysRegs)+38,#0x0020 ; [CPU_ALU] |219| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 220,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 220 | CpuSysRegs.PCLKCR2.bit.EPWM7 = 1;                                      
;----------------------------------------------------------------------
        OR        @$BLOCKED(_CpuSysRegs)+38,#0x0040 ; [CPU_ALU] |220| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 221,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 221 | CpuSysRegs.PCLKCR2.bit.EPWM8 = 1;                                      
;----------------------------------------------------------------------
        OR        @$BLOCKED(_CpuSysRegs)+38,#0x0080 ; [CPU_ALU] |221| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 222,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 222 | CpuSysRegs.PCLKCR2.bit.EPWM9 = 1;                                      
;----------------------------------------------------------------------
        OR        @$BLOCKED(_CpuSysRegs)+38,#0x0100 ; [CPU_ALU] |222| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 223,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 223 | CpuSysRegs.PCLKCR2.bit.EPWM10 = 1;                                     
;----------------------------------------------------------------------
        OR        @$BLOCKED(_CpuSysRegs)+38,#0x0200 ; [CPU_ALU] |223| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 224,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 224 | CpuSysRegs.PCLKCR2.bit.EPWM11 = 1;                                     
;----------------------------------------------------------------------
        OR        @$BLOCKED(_CpuSysRegs)+38,#0x0400 ; [CPU_ALU] |224| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 225,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 225 | CpuSysRegs.PCLKCR2.bit.EPWM12 = 1;                                     
;----------------------------------------------------------------------
        OR        @$BLOCKED(_CpuSysRegs)+38,#0x0800 ; [CPU_ALU] |225| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 227,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 227 | CpuSysRegs.PCLKCR3.bit.ECAP1 = 1;                                      
;----------------------------------------------------------------------
        OR        @$BLOCKED(_CpuSysRegs)+40,#0x0001 ; [CPU_ALU] |227| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 228,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 228 | CpuSysRegs.PCLKCR3.bit.ECAP2 = 1;                                      
;----------------------------------------------------------------------
        OR        @$BLOCKED(_CpuSysRegs)+40,#0x0002 ; [CPU_ALU] |228| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 229,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 229 | CpuSysRegs.PCLKCR3.bit.ECAP3 = 1;                                      
;----------------------------------------------------------------------
        OR        @$BLOCKED(_CpuSysRegs)+40,#0x0004 ; [CPU_ALU] |229| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 230,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 230 | CpuSysRegs.PCLKCR3.bit.ECAP4 = 1;                                      
;----------------------------------------------------------------------
        OR        @$BLOCKED(_CpuSysRegs)+40,#0x0008 ; [CPU_ALU] |230| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 231,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 231 | CpuSysRegs.PCLKCR3.bit.ECAP5 = 1;                                      
;----------------------------------------------------------------------
        OR        @$BLOCKED(_CpuSysRegs)+40,#0x0010 ; [CPU_ALU] |231| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 232,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 232 | CpuSysRegs.PCLKCR3.bit.ECAP6 = 1;                                      
;----------------------------------------------------------------------
        OR        @$BLOCKED(_CpuSysRegs)+40,#0x0020 ; [CPU_ALU] |232| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 234,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 234 | CpuSysRegs.PCLKCR4.bit.EQEP1 = 1;                                      
;----------------------------------------------------------------------
        OR        @$BLOCKED(_CpuSysRegs)+42,#0x0001 ; [CPU_ALU] |234| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 235,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 235 | CpuSysRegs.PCLKCR4.bit.EQEP2 = 1;                                      
;----------------------------------------------------------------------
        OR        @$BLOCKED(_CpuSysRegs)+42,#0x0002 ; [CPU_ALU] |235| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 236,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 236 | CpuSysRegs.PCLKCR4.bit.EQEP3 = 1;                                      
;----------------------------------------------------------------------
        OR        @$BLOCKED(_CpuSysRegs)+42,#0x0004 ; [CPU_ALU] |236| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 238,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 238 | CpuSysRegs.PCLKCR6.bit.SD1 = 1;                                        
;----------------------------------------------------------------------
        OR        @$BLOCKED(_CpuSysRegs)+46,#0x0001 ; [CPU_ALU] |238| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 239,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 239 | CpuSysRegs.PCLKCR6.bit.SD2 = 1;                                        
;----------------------------------------------------------------------
        OR        @$BLOCKED(_CpuSysRegs)+46,#0x0002 ; [CPU_ALU] |239| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 241,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 241 | CpuSysRegs.PCLKCR7.bit.SCI_A = 1;                                      
;----------------------------------------------------------------------
        OR        @$BLOCKED(_CpuSysRegs)+48,#0x0001 ; [CPU_ALU] |241| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 242,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 242 | CpuSysRegs.PCLKCR7.bit.SCI_B = 1;                                      
;----------------------------------------------------------------------
        OR        @$BLOCKED(_CpuSysRegs)+48,#0x0002 ; [CPU_ALU] |242| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 243,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 243 | CpuSysRegs.PCLKCR7.bit.SCI_C = 1;                                      
;----------------------------------------------------------------------
        OR        @$BLOCKED(_CpuSysRegs)+48,#0x0004 ; [CPU_ALU] |243| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 244,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 244 | CpuSysRegs.PCLKCR7.bit.SCI_D = 1;                                      
;----------------------------------------------------------------------
        OR        @$BLOCKED(_CpuSysRegs)+48,#0x0008 ; [CPU_ALU] |244| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 246,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 246 | CpuSysRegs.PCLKCR8.bit.SPI_A = 1;                                      
;----------------------------------------------------------------------
        OR        @$BLOCKED(_CpuSysRegs)+50,#0x0001 ; [CPU_ALU] |246| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 247,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 247 | CpuSysRegs.PCLKCR8.bit.SPI_B = 1;                                      
;----------------------------------------------------------------------
        OR        @$BLOCKED(_CpuSysRegs)+50,#0x0002 ; [CPU_ALU] |247| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 248,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 248 | CpuSysRegs.PCLKCR8.bit.SPI_C = 1;                                      
;----------------------------------------------------------------------
        OR        @$BLOCKED(_CpuSysRegs)+50,#0x0004 ; [CPU_ALU] |248| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 250,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 250 | CpuSysRegs.PCLKCR9.bit.I2C_A = 1;                                      
;----------------------------------------------------------------------
        OR        @$BLOCKED(_CpuSysRegs)+52,#0x0001 ; [CPU_ALU] |250| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 251,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 251 | CpuSysRegs.PCLKCR9.bit.I2C_B = 1;                                      
;----------------------------------------------------------------------
        OR        @$BLOCKED(_CpuSysRegs)+52,#0x0002 ; [CPU_ALU] |251| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 253,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 253 | CpuSysRegs.PCLKCR10.bit.CAN_A = 1;                                     
;----------------------------------------------------------------------
        OR        @$BLOCKED(_CpuSysRegs)+54,#0x0001 ; [CPU_ALU] |253| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 254,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 254 | CpuSysRegs.PCLKCR10.bit.CAN_B = 1;                                     
;----------------------------------------------------------------------
        OR        @$BLOCKED(_CpuSysRegs)+54,#0x0002 ; [CPU_ALU] |254| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 256,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 256 | CpuSysRegs.PCLKCR11.bit.McBSP_A = 1;                                   
;----------------------------------------------------------------------
        OR        @$BLOCKED(_CpuSysRegs)+56,#0x0001 ; [CPU_ALU] |256| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 257,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 257 | CpuSysRegs.PCLKCR11.bit.McBSP_B = 1;                                   
; 259 | #ifdef CPU1                                                            
;----------------------------------------------------------------------
        OR        @$BLOCKED(_CpuSysRegs)+56,#0x0002 ; [CPU_ALU] |257| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 260,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 260 | CpuSysRegs.PCLKCR11.bit.USB_A = 1;                                     
;----------------------------------------------------------------------
        OR        @$BLOCKED(_CpuSysRegs)+57,#0x0001 ; [CPU_ALU] |260| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 262,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 262 | CpuSysRegs.PCLKCR12.bit.uPP_A = 1;                                     
; 263 | #endif                                                                 
;----------------------------------------------------------------------
        OR        @$BLOCKED(_CpuSysRegs)+58,#0x0001 ; [CPU_ALU] |262| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 265,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 265 | CpuSysRegs.PCLKCR13.bit.ADC_A = 1;                                     
;----------------------------------------------------------------------
        OR        @$BLOCKED(_CpuSysRegs)+60,#0x0001 ; [CPU_ALU] |265| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 266,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 266 | CpuSysRegs.PCLKCR13.bit.ADC_B = 1;                                     
;----------------------------------------------------------------------
        OR        @$BLOCKED(_CpuSysRegs)+60,#0x0002 ; [CPU_ALU] |266| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 267,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 267 | CpuSysRegs.PCLKCR13.bit.ADC_C = 1;                                     
;----------------------------------------------------------------------
        OR        @$BLOCKED(_CpuSysRegs)+60,#0x0004 ; [CPU_ALU] |267| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 268,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 268 | CpuSysRegs.PCLKCR13.bit.ADC_D = 1;                                     
;----------------------------------------------------------------------
        OR        @$BLOCKED(_CpuSysRegs)+60,#0x0008 ; [CPU_ALU] |268| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 270,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 270 | CpuSysRegs.PCLKCR14.bit.CMPSS1 = 1;                                    
;----------------------------------------------------------------------
        OR        @$BLOCKED(_CpuSysRegs)+62,#0x0001 ; [CPU_ALU] |270| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 271,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 271 | CpuSysRegs.PCLKCR14.bit.CMPSS2 = 1;                                    
;----------------------------------------------------------------------
        OR        @$BLOCKED(_CpuSysRegs)+62,#0x0002 ; [CPU_ALU] |271| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 272,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 272 | CpuSysRegs.PCLKCR14.bit.CMPSS3 = 1;                                    
;----------------------------------------------------------------------
        OR        @$BLOCKED(_CpuSysRegs)+62,#0x0004 ; [CPU_ALU] |272| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 273,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 273 | CpuSysRegs.PCLKCR14.bit.CMPSS4 = 1;                                    
;----------------------------------------------------------------------
        OR        @$BLOCKED(_CpuSysRegs)+62,#0x0008 ; [CPU_ALU] |273| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 274,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 274 | CpuSysRegs.PCLKCR14.bit.CMPSS5 = 1;                                    
;----------------------------------------------------------------------
        OR        @$BLOCKED(_CpuSysRegs)+62,#0x0010 ; [CPU_ALU] |274| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 275,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 275 | CpuSysRegs.PCLKCR14.bit.CMPSS6 = 1;                                    
;----------------------------------------------------------------------
        OR        @$BLOCKED(_CpuSysRegs)+62,#0x0020 ; [CPU_ALU] |275| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 276,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 276 | CpuSysRegs.PCLKCR14.bit.CMPSS7 = 1;                                    
;----------------------------------------------------------------------
        OR        @$BLOCKED(_CpuSysRegs)+62,#0x0040 ; [CPU_ALU] |276| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 277,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 277 | CpuSysRegs.PCLKCR14.bit.CMPSS8 = 1;                                    
;----------------------------------------------------------------------
        OR        @$BLOCKED(_CpuSysRegs)+62,#0x0080 ; [CPU_ALU] |277| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 279,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 279 | CpuSysRegs.PCLKCR16.bit.DAC_A = 1;                                     
;----------------------------------------------------------------------
        MOVW      DP,#_CpuSysRegs+67    ; [CPU_ARAU] 
        OR        @$BLOCKED(_CpuSysRegs)+67,#0x0001 ; [CPU_ALU] |279| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 280,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 280 | CpuSysRegs.PCLKCR16.bit.DAC_B = 1;                                     
;----------------------------------------------------------------------
        OR        @$BLOCKED(_CpuSysRegs)+67,#0x0002 ; [CPU_ALU] |280| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 281,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 281 | CpuSysRegs.PCLKCR16.bit.DAC_C = 1;                                     
;----------------------------------------------------------------------
        OR        @$BLOCKED(_CpuSysRegs)+67,#0x0004 ; [CPU_ALU] |281| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 283,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 283 | EDIS;                                                                  
;----------------------------------------------------------------------
 EDIS
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 284,column 1,is_stmt,isa 0
        SPM       #0                    ; [CPU_ALU] 
$C$DW$23	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$23, DW_AT_low_pc(0x00)
	.dwattr $C$DW$23, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$22, DW_AT_TI_end_file("C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c")
	.dwattr $C$DW$22, DW_AT_TI_end_line(0x11c)
	.dwattr $C$DW$22, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$22

	.sect	".text"
	.clink
	.global	_DisablePeripheralClocks

$C$DW$24	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$24, DW_AT_name("DisablePeripheralClocks")
	.dwattr $C$DW$24, DW_AT_low_pc(_DisablePeripheralClocks)
	.dwattr $C$DW$24, DW_AT_high_pc(0x00)
	.dwattr $C$DW$24, DW_AT_TI_symbol_name("_DisablePeripheralClocks")
	.dwattr $C$DW$24, DW_AT_external
	.dwattr $C$DW$24, DW_AT_TI_begin_file("C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c")
	.dwattr $C$DW$24, DW_AT_TI_begin_line(0x121)
	.dwattr $C$DW$24, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$24, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 290,column 1,is_stmt,address _DisablePeripheralClocks,isa 0

	.dwfde $C$DW$CIE, _DisablePeripheralClocks
;----------------------------------------------------------------------
; 289 | void DisablePeripheralClocks(void)                                     
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _DisablePeripheralClocks      FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_DisablePeripheralClocks:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 291,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 291 | EALLOW;                                                                
;----------------------------------------------------------------------
 EALLOW
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 293,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 293 | CpuSysRegs.PCLKCR0.all = 0;                                            
;----------------------------------------------------------------------
        MOVB      ACC,#0                ; [CPU_ALU] |293| 
        MOVW      DP,#_CpuSysRegs+34    ; [CPU_ARAU] 
        MOVL      @$BLOCKED(_CpuSysRegs)+34,ACC ; [CPU_ALU] |293| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 294,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 294 | CpuSysRegs.PCLKCR1.all = 0;                                            
;----------------------------------------------------------------------
        MOVL      @$BLOCKED(_CpuSysRegs)+36,ACC ; [CPU_ALU] |294| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 295,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 295 | CpuSysRegs.PCLKCR2.all = 0;                                            
;----------------------------------------------------------------------
        MOVL      @$BLOCKED(_CpuSysRegs)+38,ACC ; [CPU_ALU] |295| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 296,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 296 | CpuSysRegs.PCLKCR3.all = 0;                                            
;----------------------------------------------------------------------
        MOVL      @$BLOCKED(_CpuSysRegs)+40,ACC ; [CPU_ALU] |296| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 297,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 297 | CpuSysRegs.PCLKCR4.all = 0;                                            
;----------------------------------------------------------------------
        MOVL      @$BLOCKED(_CpuSysRegs)+42,ACC ; [CPU_ALU] |297| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 298,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 298 | CpuSysRegs.PCLKCR6.all = 0;                                            
;----------------------------------------------------------------------
        MOVL      @$BLOCKED(_CpuSysRegs)+46,ACC ; [CPU_ALU] |298| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 299,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 299 | CpuSysRegs.PCLKCR7.all = 0;                                            
;----------------------------------------------------------------------
        MOVL      @$BLOCKED(_CpuSysRegs)+48,ACC ; [CPU_ALU] |299| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 300,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 300 | CpuSysRegs.PCLKCR8.all = 0;                                            
;----------------------------------------------------------------------
        MOVL      @$BLOCKED(_CpuSysRegs)+50,ACC ; [CPU_ALU] |300| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 301,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 301 | CpuSysRegs.PCLKCR9.all = 0;                                            
;----------------------------------------------------------------------
        MOVL      @$BLOCKED(_CpuSysRegs)+52,ACC ; [CPU_ALU] |301| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 302,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 302 | CpuSysRegs.PCLKCR10.all = 0;                                           
;----------------------------------------------------------------------
        MOVL      @$BLOCKED(_CpuSysRegs)+54,ACC ; [CPU_ALU] |302| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 303,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 303 | CpuSysRegs.PCLKCR11.all = 0;                                           
;----------------------------------------------------------------------
        MOVL      @$BLOCKED(_CpuSysRegs)+56,ACC ; [CPU_ALU] |303| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 304,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 304 | CpuSysRegs.PCLKCR12.all = 0;                                           
;----------------------------------------------------------------------
        MOVL      @$BLOCKED(_CpuSysRegs)+58,ACC ; [CPU_ALU] |304| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 305,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 305 | CpuSysRegs.PCLKCR13.all = 0;                                           
;----------------------------------------------------------------------
        MOVL      @$BLOCKED(_CpuSysRegs)+60,ACC ; [CPU_ALU] |305| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 306,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 306 | CpuSysRegs.PCLKCR14.all = 0;                                           
;----------------------------------------------------------------------
        MOVL      @$BLOCKED(_CpuSysRegs)+62,ACC ; [CPU_ALU] |306| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 307,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 307 | CpuSysRegs.PCLKCR16.all = 0;                                           
;----------------------------------------------------------------------
        MOVW      DP,#_CpuSysRegs+66    ; [CPU_ARAU] 
        MOVL      @$BLOCKED(_CpuSysRegs)+66,ACC ; [CPU_ALU] |307| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 309,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 309 | EDIS;                                                                  
;----------------------------------------------------------------------
 EDIS
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 310,column 1,is_stmt,isa 0
        SPM       #0                    ; [CPU_ALU] 
$C$DW$25	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$25, DW_AT_low_pc(0x00)
	.dwattr $C$DW$25, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$24, DW_AT_TI_end_file("C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c")
	.dwattr $C$DW$24, DW_AT_TI_end_line(0x136)
	.dwattr $C$DW$24, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$24

	.sect	".TI.ramfunc"
	.clink
	.global	_InitFlash

$C$DW$26	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$26, DW_AT_name("InitFlash")
	.dwattr $C$DW$26, DW_AT_low_pc(_InitFlash)
	.dwattr $C$DW$26, DW_AT_high_pc(0x00)
	.dwattr $C$DW$26, DW_AT_TI_symbol_name("_InitFlash")
	.dwattr $C$DW$26, DW_AT_external
	.dwattr $C$DW$26, DW_AT_TI_begin_file("C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c")
	.dwattr $C$DW$26, DW_AT_TI_begin_line(0x148)
	.dwattr $C$DW$26, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$26, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 329,column 1,is_stmt,address _InitFlash,isa 0

	.dwfde $C$DW$CIE, _InitFlash
;----------------------------------------------------------------------
; 328 | void InitFlash(void)                                                   
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _InitFlash                    FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_InitFlash:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 330,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 330 | EALLOW;                                                                
; 332 | //                                                                     
; 333 | // The default value of VREADST is good enough for the flash to power u
;     | p                                                                      
; 334 | // properly at the INTOSC frequency. Below VREADST configuration covers
;     |  up                                                                    
; 335 | // to the max frequency possible for this device. This is required for 
; 336 | // proper flash wake up at the higher frequencies if users put it to sl
;     | eep                                                                    
; 337 | // for power saving reason.                                            
; 338 | //                                                                     
;----------------------------------------------------------------------
 EALLOW
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 339,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 339 | Flash0CtrlRegs.FBAC.bit.VREADST = 0x14;                                
; 341 | //                                                                     
; 342 | // At reset bank and pump are in sleep. A Flash access will power up th
;     | e                                                                      
; 343 | // bank and pump automatically.                                        
; 344 | //                                                                     
; 345 | // Power up Flash bank and pump. This also sets the fall back mode of  
; 346 | // flash and pump as active.                                           
; 347 | //                                                                     
;----------------------------------------------------------------------
        MOVW      DP,#_Flash0CtrlRegs+30 ; [CPU_ARAU] 
        AND       AL,@$BLOCKED(_Flash0CtrlRegs)+30,#0xff00 ; [CPU_ALU] |339| 
        ORB       AL,#0x14              ; [CPU_ALU] |339| 
        MOV       @$BLOCKED(_Flash0CtrlRegs)+30,AL ; [CPU_ALU] |339| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 348,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 348 | Flash0CtrlRegs.FPAC1.bit.PMPPWR = 0x1;                                 
;----------------------------------------------------------------------
        OR        @$BLOCKED(_Flash0CtrlRegs)+36,#0x0001 ; [CPU_ALU] |348| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 349,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 349 | Flash0CtrlRegs.FBFALLBACK.bit.BNKPWR0 = 0x3;                           
; 351 | //                                                                     
; 352 | // Disable Cache and prefetch mechanism before changing wait states    
; 353 | //                                                                     
;----------------------------------------------------------------------
        OR        @$BLOCKED(_Flash0CtrlRegs)+32,#0x0003 ; [CPU_ALU] |349| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 354,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 354 | Flash0CtrlRegs.FRD_INTF_CTRL.bit.DATA_CACHE_EN = 0;                    
;----------------------------------------------------------------------
        MOVW      DP,#_Flash0CtrlRegs+384 ; [CPU_ARAU] 
        AND       @$BLOCKED(_Flash0CtrlRegs)+384,#0xfffd ; [CPU_ALU] |354| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 355,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 355 | Flash0CtrlRegs.FRD_INTF_CTRL.bit.PREFETCH_EN = 0;                      
; 357 | //                                                                     
; 358 | // Set waitstates according to frequency                               
; 359 | //                                                                     
; 360 | //      *CAUTION*                                                      
; 361 | // Minimum waitstates required for the flash operating at a given CPU r
;     | ate                                                                    
; 362 | // must be characterized by TI. Refer to the datasheet for the latest  
; 363 | // information.                                                        
; 364 | //                                                                     
; 365 | #if CPU_FRQ_200MHZ                                                     
;----------------------------------------------------------------------
        AND       @$BLOCKED(_Flash0CtrlRegs)+384,#0xfffe ; [CPU_ALU] |355| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 366,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 366 | Flash0CtrlRegs.FRDCNTL.bit.RWAIT = 0x3;                                
; 367 | #endif                                                                 
; 369 | #if CPU_FRQ_150MHZ                                                     
; 370 | Flash0CtrlRegs.FRDCNTL.bit.RWAIT = 0x2;                                
; 371 | #endif                                                                 
; 373 | #if CPU_FRQ_120MHZ                                                     
; 374 | Flash0CtrlRegs.FRDCNTL.bit.RWAIT = 0x2;                                
; 375 | #endif                                                                 
; 377 | //                                                                     
; 378 | // Enable Cache and prefetch mechanism to improve performance of code  
; 379 | // executed from Flash.                                                
; 380 | //                                                                     
;----------------------------------------------------------------------
        MOVW      DP,#_Flash0CtrlRegs   ; [CPU_ARAU] 
        AND       AL,@$BLOCKED(_Flash0CtrlRegs),#0xf0ff ; [CPU_ALU] |366| 
        OR        AL,#0x0300            ; [CPU_ALU] |366| 
        MOV       @$BLOCKED(_Flash0CtrlRegs),AL ; [CPU_ALU] |366| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 381,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 381 | Flash0CtrlRegs.FRD_INTF_CTRL.bit.DATA_CACHE_EN = 1;                    
;----------------------------------------------------------------------
        MOVW      DP,#_Flash0CtrlRegs+384 ; [CPU_ARAU] 
        OR        @$BLOCKED(_Flash0CtrlRegs)+384,#0x0002 ; [CPU_ALU] |381| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 382,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 382 | Flash0CtrlRegs.FRD_INTF_CTRL.bit.PREFETCH_EN = 1;                      
; 384 | //                                                                     
; 385 | // At reset, ECC is enabled. If it is disabled by application software
;     | and                                                                    
; 386 | // if application again wants to enable ECC.                           
; 387 | //                                                                     
;----------------------------------------------------------------------
        OR        @$BLOCKED(_Flash0CtrlRegs)+384,#0x0001 ; [CPU_ALU] |382| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 388,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 388 | Flash0EccRegs.ECC_ENABLE.bit.ENABLE = 0xA;                             
;----------------------------------------------------------------------
        MOVW      DP,#_Flash0EccRegs    ; [CPU_ARAU] 
        AND       AL,@$BLOCKED(_Flash0EccRegs),#0xfff0 ; [CPU_ALU] |388| 
        ORB       AL,#0x0a              ; [CPU_ALU] |388| 
        MOV       @$BLOCKED(_Flash0EccRegs),AL ; [CPU_ALU] |388| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 390,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 390 | EDIS;                                                                  
; 392 | //                                                                     
; 393 | // Force a pipeline flush to ensure that the write to the last register
; 394 | // configured occurs before returning.                                 
; 395 | //                                                                     
;----------------------------------------------------------------------
 EDIS
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 396,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 396 | __asm(" RPT #7 || NOP");                                               
;----------------------------------------------------------------------
 RPT #7 || NOP
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 397,column 1,is_stmt,isa 0
        SPM       #0                    ; [CPU_ALU] 
$C$DW$27	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$27, DW_AT_low_pc(0x00)
	.dwattr $C$DW$27, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$26, DW_AT_TI_end_file("C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c")
	.dwattr $C$DW$26, DW_AT_TI_end_line(0x18d)
	.dwattr $C$DW$26, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$26

	.sect	".TI.ramfunc"
	.clink
	.global	_FlashOff

$C$DW$28	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$28, DW_AT_name("FlashOff")
	.dwattr $C$DW$28, DW_AT_low_pc(_FlashOff)
	.dwattr $C$DW$28, DW_AT_high_pc(0x00)
	.dwattr $C$DW$28, DW_AT_TI_symbol_name("_FlashOff")
	.dwattr $C$DW$28, DW_AT_external
	.dwattr $C$DW$28, DW_AT_TI_begin_file("C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c")
	.dwattr $C$DW$28, DW_AT_TI_begin_line(0x1a0)
	.dwattr $C$DW$28, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$28, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 417,column 1,is_stmt,address _FlashOff,isa 0

	.dwfde $C$DW$CIE, _FlashOff
;----------------------------------------------------------------------
; 416 | void FlashOff(void)                                                    
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _FlashOff                     FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_FlashOff:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 418,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 418 | EALLOW;                                                                
; 420 | //                                                                     
; 421 | // Set VREADST to the proper value for the flash banks to power up prop
;     | erly                                                                   
; 422 | //                                                                     
;----------------------------------------------------------------------
 EALLOW
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 423,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 423 | Flash0CtrlRegs.FBAC.bit.VREADST = 0x14;                                
; 425 | //                                                                     
; 426 | // Power down bank                                                     
; 427 | //                                                                     
;----------------------------------------------------------------------
        MOVW      DP,#_Flash0CtrlRegs+30 ; [CPU_ARAU] 
        AND       AL,@$BLOCKED(_Flash0CtrlRegs)+30,#0xff00 ; [CPU_ALU] |423| 
        ORB       AL,#0x14              ; [CPU_ALU] |423| 
        MOV       @$BLOCKED(_Flash0CtrlRegs)+30,AL ; [CPU_ALU] |423| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 428,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 428 | Flash0CtrlRegs.FBFALLBACK.bit.BNKPWR0 = 0;                             
; 430 | //                                                                     
; 431 | // Power down pump                                                     
; 432 | //                                                                     
;----------------------------------------------------------------------
        AND       @$BLOCKED(_Flash0CtrlRegs)+32,#0xfffc ; [CPU_ALU] |428| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 433,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 433 | Flash0CtrlRegs.FPAC1.bit.PMPPWR = 0;                                   
;----------------------------------------------------------------------
        AND       @$BLOCKED(_Flash0CtrlRegs)+36,#0xfffe ; [CPU_ALU] |433| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 435,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 435 | EDIS;                                                                  
;----------------------------------------------------------------------
 EDIS
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 436,column 1,is_stmt,isa 0
        SPM       #0                    ; [CPU_ALU] 
$C$DW$29	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$29, DW_AT_low_pc(0x00)
	.dwattr $C$DW$29, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$28, DW_AT_TI_end_file("C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c")
	.dwattr $C$DW$28, DW_AT_TI_end_line(0x1b4)
	.dwattr $C$DW$28, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$28

	.sect	".text"
	.clink
	.global	_SeizeFlashPump

$C$DW$30	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$30, DW_AT_name("SeizeFlashPump")
	.dwattr $C$DW$30, DW_AT_low_pc(_SeizeFlashPump)
	.dwattr $C$DW$30, DW_AT_high_pc(0x00)
	.dwattr $C$DW$30, DW_AT_TI_symbol_name("_SeizeFlashPump")
	.dwattr $C$DW$30, DW_AT_external
	.dwattr $C$DW$30, DW_AT_TI_begin_file("C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c")
	.dwattr $C$DW$30, DW_AT_TI_begin_line(0x1ba)
	.dwattr $C$DW$30, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$30, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 443,column 1,is_stmt,address _SeizeFlashPump,isa 0

	.dwfde $C$DW$CIE, _SeizeFlashPump
;----------------------------------------------------------------------
; 442 | void SeizeFlashPump(void)                                              
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _SeizeFlashPump               FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_SeizeFlashPump:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 444,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 444 | EALLOW;                                                                
; 445 | #ifdef CPU1                                                            
;----------------------------------------------------------------------
 EALLOW
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 446,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 446 | while (FlashPumpSemaphoreRegs.PUMPREQUEST.bit.PUMP_OWNERSHIP != 0x2)   
;----------------------------------------------------------------------
        B         $C$L3,UNC             ; [CPU_ALU] |446| 
        ; branch occurs ; [] |446| 
$C$L2:    
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 448,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 448 | FlashPumpSemaphoreRegs.PUMPREQUEST.all = IPC_PUMP_KEY | 0x2;           
; 450 | #elif defined(CPU2)                                                    
; 451 | while (FlashPumpSemaphoreRegs.PUMPREQUEST.bit.PUMP_OWNERSHIP != 0x1)   
; 453 | FlashPumpSemaphoreRegs.PUMPREQUEST.all = IPC_PUMP_KEY | 0x1;           
; 455 | #endif                                                                 
;----------------------------------------------------------------------
        MOV       AL,#2                 ; [CPU_ALU] |448| 
        MOV       AH,#23130             ; [CPU_ALU] |448| 
        MOVL      @_FlashPumpSemaphoreRegs,ACC ; [CPU_ALU] |448| 
$C$L3:    
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 446,column 16,is_stmt,isa 0
        MOVW      DP,#_FlashPumpSemaphoreRegs ; [CPU_ARAU] 
        MOV       AL,@_FlashPumpSemaphoreRegs ; [CPU_ALU] |446| 
        ANDB      AL,#0x03              ; [CPU_ALU] |446| 
        CMPB      AL,#2                 ; [CPU_ALU] |446| 
        B         $C$L2,NEQ             ; [CPU_ALU] |446| 
        ; branchcc occurs ; [] |446| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 456,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 456 | EDIS;                                                                  
;----------------------------------------------------------------------
 EDIS
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 457,column 1,is_stmt,isa 0
        SPM       #0                    ; [CPU_ALU] 
$C$DW$31	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$31, DW_AT_low_pc(0x00)
	.dwattr $C$DW$31, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$30, DW_AT_TI_end_file("C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c")
	.dwattr $C$DW$30, DW_AT_TI_end_line(0x1c9)
	.dwattr $C$DW$30, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$30

	.sect	".text"
	.clink
	.global	_ReleaseFlashPump

$C$DW$32	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$32, DW_AT_name("ReleaseFlashPump")
	.dwattr $C$DW$32, DW_AT_low_pc(_ReleaseFlashPump)
	.dwattr $C$DW$32, DW_AT_high_pc(0x00)
	.dwattr $C$DW$32, DW_AT_TI_symbol_name("_ReleaseFlashPump")
	.dwattr $C$DW$32, DW_AT_external
	.dwattr $C$DW$32, DW_AT_TI_begin_file("C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c")
	.dwattr $C$DW$32, DW_AT_TI_begin_line(0x1cf)
	.dwattr $C$DW$32, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$32, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 464,column 1,is_stmt,address _ReleaseFlashPump,isa 0

	.dwfde $C$DW$CIE, _ReleaseFlashPump
;----------------------------------------------------------------------
; 463 | void ReleaseFlashPump(void)                                            
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _ReleaseFlashPump             FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_ReleaseFlashPump:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 465,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 465 | EALLOW;                                                                
;----------------------------------------------------------------------
 EALLOW
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 466,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 466 | FlashPumpSemaphoreRegs.PUMPREQUEST.all = IPC_PUMP_KEY | 0x0;           
;----------------------------------------------------------------------
        MOVB      AL,#0                 ; [CPU_ALU] |466| 
        MOV       AH,#23130             ; [CPU_ALU] |466| 
        MOVW      DP,#_FlashPumpSemaphoreRegs ; [CPU_ARAU] 
        MOVL      @_FlashPumpSemaphoreRegs,ACC ; [CPU_ALU] |466| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 467,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 467 | EDIS;                                                                  
;----------------------------------------------------------------------
 EDIS
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 468,column 1,is_stmt,isa 0
        SPM       #0                    ; [CPU_ALU] 
$C$DW$33	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$33, DW_AT_low_pc(0x00)
	.dwattr $C$DW$33, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$32, DW_AT_TI_end_file("C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c")
	.dwattr $C$DW$32, DW_AT_TI_end_line(0x1d4)
	.dwattr $C$DW$32, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$32

	.sect	".text"
	.clink
	.global	_ServiceDog

$C$DW$34	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$34, DW_AT_name("ServiceDog")
	.dwattr $C$DW$34, DW_AT_low_pc(_ServiceDog)
	.dwattr $C$DW$34, DW_AT_high_pc(0x00)
	.dwattr $C$DW$34, DW_AT_TI_symbol_name("_ServiceDog")
	.dwattr $C$DW$34, DW_AT_external
	.dwattr $C$DW$34, DW_AT_TI_begin_file("C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c")
	.dwattr $C$DW$34, DW_AT_TI_begin_line(0x1db)
	.dwattr $C$DW$34, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$34, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 476,column 1,is_stmt,address _ServiceDog,isa 0

	.dwfde $C$DW$CIE, _ServiceDog
;----------------------------------------------------------------------
; 475 | void ServiceDog(void)                                                  
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _ServiceDog                   FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_ServiceDog:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 477,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 477 | EALLOW;                                                                
;----------------------------------------------------------------------
 EALLOW
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 478,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 478 | WdRegs.WDKEY.bit.WDKEY = 0x0055;                                       
;----------------------------------------------------------------------
        MOVW      DP,#_WdRegs+37        ; [CPU_ARAU] 
        AND       AL,@$BLOCKED(_WdRegs)+37,#0xff00 ; [CPU_ALU] |478| 
        ORB       AL,#0x55              ; [CPU_ALU] |478| 
        MOV       @$BLOCKED(_WdRegs)+37,AL ; [CPU_ALU] |478| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 479,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 479 | WdRegs.WDKEY.bit.WDKEY = 0x00AA;                                       
;----------------------------------------------------------------------
        AND       AL,@$BLOCKED(_WdRegs)+37,#0xff00 ; [CPU_ALU] |479| 
        ORB       AL,#0xaa              ; [CPU_ALU] |479| 
        MOV       @$BLOCKED(_WdRegs)+37,AL ; [CPU_ALU] |479| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 480,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 480 | EDIS;                                                                  
;----------------------------------------------------------------------
 EDIS
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 481,column 1,is_stmt,isa 0
        SPM       #0                    ; [CPU_ALU] 
$C$DW$35	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$35, DW_AT_low_pc(0x00)
	.dwattr $C$DW$35, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$34, DW_AT_TI_end_file("C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c")
	.dwattr $C$DW$34, DW_AT_TI_end_line(0x1e1)
	.dwattr $C$DW$34, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$34

	.sect	".text"
	.clink
	.global	_DisableDog

$C$DW$36	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$36, DW_AT_name("DisableDog")
	.dwattr $C$DW$36, DW_AT_low_pc(_DisableDog)
	.dwattr $C$DW$36, DW_AT_high_pc(0x00)
	.dwattr $C$DW$36, DW_AT_TI_symbol_name("_DisableDog")
	.dwattr $C$DW$36, DW_AT_external
	.dwattr $C$DW$36, DW_AT_TI_begin_file("C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c")
	.dwattr $C$DW$36, DW_AT_TI_begin_line(0x1e6)
	.dwattr $C$DW$36, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$36, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 487,column 1,is_stmt,address _DisableDog,isa 0

	.dwfde $C$DW$CIE, _DisableDog
;----------------------------------------------------------------------
; 486 | void DisableDog(void)                                                  
; 488 | volatile Uint16 temp;                                                  
; 490 | //                                                                     
; 491 | // Grab the clock config first so we don't clobber it                  
; 492 | //                                                                     
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _DisableDog                   FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  1 Auto,  0 SOE     *
;***************************************************************

_DisableDog:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
$C$DW$37	.dwtag  DW_TAG_variable
	.dwattr $C$DW$37, DW_AT_name("temp")
	.dwattr $C$DW$37, DW_AT_TI_symbol_name("_temp")
	.dwattr $C$DW$37, DW_AT_type(*$C$DW$T$456)
	.dwattr $C$DW$37, DW_AT_location[DW_OP_breg20 -1]

	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 493,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 493 | EALLOW;                                                                
;----------------------------------------------------------------------
 EALLOW
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 494,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 494 | temp = WdRegs.WDCR.all & 0x0007;                                       
;----------------------------------------------------------------------
        MOVW      DP,#_WdRegs+41        ; [CPU_ARAU] 
        MOV       AL,@$BLOCKED(_WdRegs)+41 ; [CPU_ALU] |494| 
        ANDB      AL,#0x07              ; [CPU_ALU] |494| 
        MOV       *-SP[1],AL            ; [CPU_ALU] |494| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 495,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 495 | WdRegs.WDCR.all = 0x0068 | temp;                                       
;----------------------------------------------------------------------
        MOV       AL,*-SP[1]            ; [CPU_ALU] |495| 
        ORB       AL,#0x68              ; [CPU_ALU] |495| 
        MOV       @$BLOCKED(_WdRegs)+41,AL ; [CPU_ALU] |495| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 496,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 496 | EDIS;                                                                  
;----------------------------------------------------------------------
 EDIS
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 497,column 1,is_stmt,isa 0
        SPM       #0                    ; [CPU_ALU] 
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$38	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$38, DW_AT_low_pc(0x00)
	.dwattr $C$DW$38, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$36, DW_AT_TI_end_file("C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c")
	.dwattr $C$DW$36, DW_AT_TI_end_line(0x1f1)
	.dwattr $C$DW$36, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$36

	.sect	".text"
	.clink
	.global	_InitSysPll

$C$DW$39	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$39, DW_AT_name("InitSysPll")
	.dwattr $C$DW$39, DW_AT_low_pc(_InitSysPll)
	.dwattr $C$DW$39, DW_AT_high_pc(0x00)
	.dwattr $C$DW$39, DW_AT_TI_symbol_name("_InitSysPll")
	.dwattr $C$DW$39, DW_AT_external
	.dwattr $C$DW$39, DW_AT_TI_begin_file("C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c")
	.dwattr $C$DW$39, DW_AT_TI_begin_line(0x205)
	.dwattr $C$DW$39, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$39, DW_AT_TI_max_frame_size(-34)
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 518,column 1,is_stmt,address _InitSysPll,isa 0

	.dwfde $C$DW$CIE, _InitSysPll
$C$DW$40	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$40, DW_AT_name("clock_source")
	.dwattr $C$DW$40, DW_AT_TI_symbol_name("_clock_source")
	.dwattr $C$DW$40, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$40, DW_AT_location[DW_OP_reg0]

$C$DW$41	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$41, DW_AT_name("imult")
	.dwattr $C$DW$41, DW_AT_TI_symbol_name("_imult")
	.dwattr $C$DW$41, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$41, DW_AT_location[DW_OP_reg1]

$C$DW$42	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$42, DW_AT_name("fmult")
	.dwattr $C$DW$42, DW_AT_TI_symbol_name("_fmult")
	.dwattr $C$DW$42, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$42, DW_AT_location[DW_OP_reg12]

$C$DW$43	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$43, DW_AT_name("divsel")
	.dwattr $C$DW$43, DW_AT_TI_symbol_name("_divsel")
	.dwattr $C$DW$43, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$43, DW_AT_location[DW_OP_reg14]

;----------------------------------------------------------------------
; 517 | void InitSysPll(Uint16 clock_source, Uint16 imult, Uint16 fmult, Uint16
;     |  divsel)                                                               
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _InitSysPll                   FR SIZE:  32           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter, 30 Auto,  0 SOE     *
;***************************************************************

_InitSysPll:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#32                ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -34
$C$DW$44	.dwtag  DW_TAG_variable
	.dwattr $C$DW$44, DW_AT_name("t1PRD")
	.dwattr $C$DW$44, DW_AT_TI_symbol_name("_t1PRD")
	.dwattr $C$DW$44, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$44, DW_AT_location[DW_OP_breg20 -4]

$C$DW$45	.dwtag  DW_TAG_variable
	.dwattr $C$DW$45, DW_AT_name("t2PRD")
	.dwattr $C$DW$45, DW_AT_TI_symbol_name("_t2PRD")
	.dwattr $C$DW$45, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$45, DW_AT_location[DW_OP_breg20 -6]

$C$DW$46	.dwtag  DW_TAG_variable
	.dwattr $C$DW$46, DW_AT_name("ctr1")
	.dwattr $C$DW$46, DW_AT_TI_symbol_name("_ctr1")
	.dwattr $C$DW$46, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$46, DW_AT_location[DW_OP_breg20 -8]

$C$DW$47	.dwtag  DW_TAG_variable
	.dwattr $C$DW$47, DW_AT_name("sysclkToInClkError")
	.dwattr $C$DW$47, DW_AT_TI_symbol_name("_sysclkToInClkError")
	.dwattr $C$DW$47, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$47, DW_AT_location[DW_OP_breg20 -10]

$C$DW$48	.dwtag  DW_TAG_variable
	.dwattr $C$DW$48, DW_AT_name("mult")
	.dwattr $C$DW$48, DW_AT_TI_symbol_name("_mult")
	.dwattr $C$DW$48, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$48, DW_AT_location[DW_OP_breg20 -12]

$C$DW$49	.dwtag  DW_TAG_variable
	.dwattr $C$DW$49, DW_AT_name("div")
	.dwattr $C$DW$49, DW_AT_TI_symbol_name("_div")
	.dwattr $C$DW$49, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$49, DW_AT_location[DW_OP_breg20 -14]

$C$DW$50	.dwtag  DW_TAG_variable
	.dwattr $C$DW$50, DW_AT_name("clock_source")
	.dwattr $C$DW$50, DW_AT_TI_symbol_name("_clock_source")
	.dwattr $C$DW$50, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$50, DW_AT_location[DW_OP_breg20 -15]

$C$DW$51	.dwtag  DW_TAG_variable
	.dwattr $C$DW$51, DW_AT_name("imult")
	.dwattr $C$DW$51, DW_AT_TI_symbol_name("_imult")
	.dwattr $C$DW$51, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$51, DW_AT_location[DW_OP_breg20 -16]

$C$DW$52	.dwtag  DW_TAG_variable
	.dwattr $C$DW$52, DW_AT_name("fmult")
	.dwattr $C$DW$52, DW_AT_TI_symbol_name("_fmult")
	.dwattr $C$DW$52, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$52, DW_AT_location[DW_OP_breg20 -17]

$C$DW$53	.dwtag  DW_TAG_variable
	.dwattr $C$DW$53, DW_AT_name("divsel")
	.dwattr $C$DW$53, DW_AT_TI_symbol_name("_divsel")
	.dwattr $C$DW$53, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$53, DW_AT_location[DW_OP_breg20 -18]

$C$DW$54	.dwtag  DW_TAG_variable
	.dwattr $C$DW$54, DW_AT_name("SCSR")
	.dwattr $C$DW$54, DW_AT_TI_symbol_name("_SCSR")
	.dwattr $C$DW$54, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$54, DW_AT_location[DW_OP_breg20 -19]

$C$DW$55	.dwtag  DW_TAG_variable
	.dwattr $C$DW$55, DW_AT_name("WDCR")
	.dwattr $C$DW$55, DW_AT_TI_symbol_name("_WDCR")
	.dwattr $C$DW$55, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$55, DW_AT_location[DW_OP_breg20 -20]

$C$DW$56	.dwtag  DW_TAG_variable
	.dwattr $C$DW$56, DW_AT_name("WDWCR")
	.dwattr $C$DW$56, DW_AT_TI_symbol_name("_WDWCR")
	.dwattr $C$DW$56, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$56, DW_AT_location[DW_OP_breg20 -21]

$C$DW$57	.dwtag  DW_TAG_variable
	.dwattr $C$DW$57, DW_AT_name("intStatus")
	.dwattr $C$DW$57, DW_AT_TI_symbol_name("_intStatus")
	.dwattr $C$DW$57, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$57, DW_AT_location[DW_OP_breg20 -22]

$C$DW$58	.dwtag  DW_TAG_variable
	.dwattr $C$DW$58, DW_AT_name("t1TCR")
	.dwattr $C$DW$58, DW_AT_TI_symbol_name("_t1TCR")
	.dwattr $C$DW$58, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$58, DW_AT_location[DW_OP_breg20 -23]

$C$DW$59	.dwtag  DW_TAG_variable
	.dwattr $C$DW$59, DW_AT_name("t1TPR")
	.dwattr $C$DW$59, DW_AT_TI_symbol_name("_t1TPR")
	.dwattr $C$DW$59, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$59, DW_AT_location[DW_OP_breg20 -24]

$C$DW$60	.dwtag  DW_TAG_variable
	.dwattr $C$DW$60, DW_AT_name("t1TPRH")
	.dwattr $C$DW$60, DW_AT_TI_symbol_name("_t1TPRH")
	.dwattr $C$DW$60, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$60, DW_AT_location[DW_OP_breg20 -25]

$C$DW$61	.dwtag  DW_TAG_variable
	.dwattr $C$DW$61, DW_AT_name("t2TCR")
	.dwattr $C$DW$61, DW_AT_TI_symbol_name("_t2TCR")
	.dwattr $C$DW$61, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$61, DW_AT_location[DW_OP_breg20 -26]

$C$DW$62	.dwtag  DW_TAG_variable
	.dwattr $C$DW$62, DW_AT_name("t2TPR")
	.dwattr $C$DW$62, DW_AT_TI_symbol_name("_t2TPR")
	.dwattr $C$DW$62, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$62, DW_AT_location[DW_OP_breg20 -27]

$C$DW$63	.dwtag  DW_TAG_variable
	.dwattr $C$DW$63, DW_AT_name("t2TPRH")
	.dwattr $C$DW$63, DW_AT_TI_symbol_name("_t2TPRH")
	.dwattr $C$DW$63, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$63, DW_AT_location[DW_OP_breg20 -28]

$C$DW$64	.dwtag  DW_TAG_variable
	.dwattr $C$DW$64, DW_AT_name("t2SRC")
	.dwattr $C$DW$64, DW_AT_TI_symbol_name("_t2SRC")
	.dwattr $C$DW$64, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$64, DW_AT_location[DW_OP_breg20 -29]

$C$DW$65	.dwtag  DW_TAG_variable
	.dwattr $C$DW$65, DW_AT_name("t2Prescale")
	.dwattr $C$DW$65, DW_AT_TI_symbol_name("_t2Prescale")
	.dwattr $C$DW$65, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$65, DW_AT_location[DW_OP_breg20 -30]

$C$DW$66	.dwtag  DW_TAG_variable
	.dwattr $C$DW$66, DW_AT_name("sysclkInvalidFreq")
	.dwattr $C$DW$66, DW_AT_TI_symbol_name("_sysclkInvalidFreq")
	.dwattr $C$DW$66, DW_AT_type(*$C$DW$T$460)
	.dwattr $C$DW$66, DW_AT_location[DW_OP_breg20 -31]

;----------------------------------------------------------------------
; 519 | Uint16 SCSR, WDCR, WDWCR, intStatus,  t1TCR, t1TPR, t1TPRH;            
; 520 | Uint16 t2TCR, t2TPR, t2TPRH, t2SRC, t2Prescale;                        
; 521 | Uint32 t1PRD, t2PRD, ctr1;                                             
; 522 | float sysclkToInClkError, mult, div;                                   
;----------------------------------------------------------------------
        MOV       *-SP[18],AR5          ; [CPU_ALU] |518| 
        MOV       *-SP[17],AR4          ; [CPU_ALU] |518| 
        MOV       *-SP[16],AH           ; [CPU_ALU] |518| 
        MOV       *-SP[15],AL           ; [CPU_ALU] |518| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 523,column 27,is_stmt,isa 0
;----------------------------------------------------------------------
; 523 | bool sysclkInvalidFreq=true;                                           
;----------------------------------------------------------------------
        MOVB      *-SP[31],#1,UNC       ; [CPU_ALU] |523| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 525,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 525 | if((clock_source == ClkCfgRegs.CLKSRCCTL1.bit.OSCCLKSRCSEL)    &&      
; 526 |    (imult        == ClkCfgRegs.SYSPLLMULT.bit.IMULT)           &&      
; 527 |    (fmult        == ClkCfgRegs.SYSPLLMULT.bit.FMULT)           &&      
; 528 |    (divsel       == ClkCfgRegs.SYSCLKDIVSEL.bit.PLLSYSCLKDIV))         
; 530 |     //                                                                 
; 531 |     // Everything is set as required, so just return                   
; 532 |     //                                                                 
;----------------------------------------------------------------------
        MOVW      DP,#_ClkCfgRegs+8     ; [CPU_ARAU] 
        MOVZ      AR6,*-SP[15]          ; [CPU_ALU] |525| 
        MOV       AL,@$BLOCKED(_ClkCfgRegs)+8 ; [CPU_ALU] |525| 
        ANDB      AL,#0x03              ; [CPU_ALU] |525| 
        MOVU      ACC,AL                ; [CPU_ALU] |525| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |525| 
        B         $C$L4,NEQ             ; [CPU_ALU] |525| 
        ; branchcc occurs ; [] |525| 
        MOVZ      AR6,*-SP[16]          ; [CPU_ALU] |525| 
        MOV       AL,@$BLOCKED(_ClkCfgRegs)+20 ; [CPU_ALU] |525| 
        ANDB      AL,#0x7f              ; [CPU_ALU] |525| 
        MOVU      ACC,AL                ; [CPU_ALU] |525| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |525| 
        B         $C$L4,NEQ             ; [CPU_ALU] |525| 
        ; branchcc occurs ; [] |525| 
        MOVZ      AR6,*-SP[17]          ; [CPU_ALU] |525| 
        AND       AL,@$BLOCKED(_ClkCfgRegs)+20,#0x0300 ; [CPU_ALU] |525| 
        LSR       AL,8                  ; [CPU_ALU] |525| 
        MOVU      ACC,AL                ; [CPU_ALU] |525| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |525| 
        B         $C$L4,NEQ             ; [CPU_ALU] |525| 
        ; branchcc occurs ; [] |525| 
        MOVZ      AR6,*-SP[18]          ; [CPU_ALU] |525| 
        MOV       AL,@$BLOCKED(_ClkCfgRegs)+34 ; [CPU_ALU] |525| 
        ANDB      AL,#0x3f              ; [CPU_ALU] |525| 
        MOVU      ACC,AL                ; [CPU_ALU] |525| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |525| 
        B         $C$L34,EQ             ; [CPU_ALU] |525| 
        ; branchcc occurs ; [] |525| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 533,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 533 | return;                                                                
;----------------------------------------------------------------------
$C$L4:    
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 536,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 536 | if(clock_source != ClkCfgRegs.CLKSRCCTL1.bit.OSCCLKSRCSEL)             
;----------------------------------------------------------------------
        MOVZ      AR6,*-SP[15]          ; [CPU_ALU] |536| 
        MOV       AL,@$BLOCKED(_ClkCfgRegs)+8 ; [CPU_ALU] |536| 
        ANDB      AL,#0x03              ; [CPU_ALU] |536| 
        MOVU      ACC,AL                ; [CPU_ALU] |536| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |536| 
        B         $C$L9,EQ              ; [CPU_ALU] |536| 
        ; branchcc occurs ; [] |536| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 538,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 538 | switch (clock_source)                                                  
; 540 |     case INT_OSC1:                                                     
;----------------------------------------------------------------------
        B         $C$L8,UNC             ; [CPU_ALU] |538| 
        ; branch occurs ; [] |538| 
$C$L5:    
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 541,column 17,is_stmt,isa 0
;----------------------------------------------------------------------
; 541 | SysIntOsc1Sel();                                                       
;----------------------------------------------------------------------
$C$DW$67	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$67, DW_AT_low_pc(0x00)
	.dwattr $C$DW$67, DW_AT_name("_SysIntOsc1Sel")
	.dwattr $C$DW$67, DW_AT_TI_call

        LCR       #_SysIntOsc1Sel       ; [CPU_ALU] |541| 
        ; call occurs [#_SysIntOsc1Sel] ; [] |541| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 542,column 17,is_stmt,isa 0
;----------------------------------------------------------------------
; 542 | break;                                                                 
; 544 | case INT_OSC2:                                                         
;----------------------------------------------------------------------
        B         $C$L9,UNC             ; [CPU_ALU] |542| 
        ; branch occurs ; [] |542| 
$C$L6:    
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 545,column 17,is_stmt,isa 0
;----------------------------------------------------------------------
; 545 | SysIntOsc2Sel();                                                       
;----------------------------------------------------------------------
$C$DW$68	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$68, DW_AT_low_pc(0x00)
	.dwattr $C$DW$68, DW_AT_name("_SysIntOsc2Sel")
	.dwattr $C$DW$68, DW_AT_TI_call

        LCR       #_SysIntOsc2Sel       ; [CPU_ALU] |545| 
        ; call occurs [#_SysIntOsc2Sel] ; [] |545| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 546,column 17,is_stmt,isa 0
;----------------------------------------------------------------------
; 546 | break;                                                                 
; 548 | case XTAL_OSC:                                                         
;----------------------------------------------------------------------
        B         $C$L9,UNC             ; [CPU_ALU] |546| 
        ; branch occurs ; [] |546| 
$C$L7:    
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 549,column 17,is_stmt,isa 0
;----------------------------------------------------------------------
; 549 | SysXtalOscSel();                                                       
;----------------------------------------------------------------------
$C$DW$69	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$69, DW_AT_low_pc(0x00)
	.dwattr $C$DW$69, DW_AT_name("_SysXtalOscSel")
	.dwattr $C$DW$69, DW_AT_TI_call

        LCR       #_SysXtalOscSel       ; [CPU_ALU] |549| 
        ; call occurs [#_SysXtalOscSel] ; [] |549| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 550,column 17,is_stmt,isa 0
;----------------------------------------------------------------------
; 550 | break;                                                                 
;----------------------------------------------------------------------
        B         $C$L9,UNC             ; [CPU_ALU] |550| 
        ; branch occurs ; [] |550| 
$C$L8:    
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 538,column 9,is_stmt,isa 0
        MOV       AL,*-SP[15]           ; [CPU_ALU] |538| 
        B         $C$L6,EQ              ; [CPU_ALU] |538| 
        ; branchcc occurs ; [] |538| 
        CMPB      AL,#1                 ; [CPU_ALU] |538| 
        B         $C$L7,EQ              ; [CPU_ALU] |538| 
        ; branchcc occurs ; [] |538| 
        CMPB      AL,#2                 ; [CPU_ALU] |538| 
        B         $C$L5,EQ              ; [CPU_ALU] |538| 
        ; branchcc occurs ; [] |538| 
$C$L9:    
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 554,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 554 | EALLOW;                                                                
;----------------------------------------------------------------------
 EALLOW
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 555,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 555 | if(imult != ClkCfgRegs.SYSPLLMULT.bit.IMULT ||                         
; 556 |    fmult != ClkCfgRegs.SYSPLLMULT.bit.FMULT)                           
; 558 |     Uint16 i;                                                          
; 560 |     //                                                                 
; 561 |     // This bit is reset only by POR                                   
; 562 |     //                                                                 
;----------------------------------------------------------------------
        MOVW      DP,#_ClkCfgRegs+20    ; [CPU_ARAU] 
        MOVZ      AR6,*-SP[16]          ; [CPU_ALU] |555| 
        MOV       AL,@$BLOCKED(_ClkCfgRegs)+20 ; [CPU_ALU] |555| 
        ANDB      AL,#0x7f              ; [CPU_ALU] |555| 
        MOVU      ACC,AL                ; [CPU_ALU] |555| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |555| 
        B         $C$L10,NEQ            ; [CPU_ALU] |555| 
        ; branchcc occurs ; [] |555| 
        MOVZ      AR6,*-SP[17]          ; [CPU_ALU] |555| 
        AND       AL,@$BLOCKED(_ClkCfgRegs)+20,#0x0300 ; [CPU_ALU] |555| 
        LSR       AL,8                  ; [CPU_ALU] |555| 
        MOVU      ACC,AL                ; [CPU_ALU] |555| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |555| 
        B         $C$L14,EQ             ; [CPU_ALU] |555| 
        ; branchcc occurs ; [] |555| 
$C$L10:    

$C$DW$70	.dwtag  DW_TAG_lexical_block
	.dwattr $C$DW$70, DW_AT_low_pc(0x00)
	.dwattr $C$DW$70, DW_AT_high_pc(0x00)
$C$DW$71	.dwtag  DW_TAG_variable
	.dwattr $C$DW$71, DW_AT_name("i")
	.dwattr $C$DW$71, DW_AT_TI_symbol_name("_i")
	.dwattr $C$DW$71, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$71, DW_AT_location[DW_OP_breg20 -32]

	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 563,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 563 | if(DevCfgRegs.SYSDBGCTL.bit.BIT_0 == 1)                                
; 565 |     //                                                                 
; 566 |     // The user can optionally insert handler code here. This will only
; 567 |     // be executed if a watchdog reset occurred after a failed system  
; 568 |     // PLL initialization. See your device user's guide for more       
; 569 |     // information.                                                    
; 570 |     //                                                                 
; 571 |     // If the application has a watchdog reset handler, this bit should
; 572 |     // be checked to determine if the watchdog reset occurred because  
; 573 |     // of the PLL.                                                     
; 574 |     //                                                                 
; 575 |     // No action here will continue with retrying the PLL as normal.   
; 576 |     //                                                                 
; 577 |     // Failed PLL initialization is due to any of the following:       
; 578 |     //      - No PLL clock                                             
; 579 |     //      - SLIP condition                                           
; 580 |     //      - Wrong Frequency                                          
; 581 |     //                                                                 
; 584 | //                                                                     
; 585 | // Bypass PLL and set dividers to /1                                   
; 586 | //                                                                     
;----------------------------------------------------------------------
        MOVW      DP,#_DevCfgRegs+300   ; [CPU_ARAU] 
        MOV       AL,@$BLOCKED(_DevCfgRegs)+300 ; [CPU_ALU] |563| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 587,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 587 | ClkCfgRegs.SYSPLLCTL1.bit.PLLCLKEN = 0;                                
; 589 | //                                                                     
; 590 | // Delay of at least 120 OSCCLK cycles required post PLL bypass        
; 591 | //                                                                     
;----------------------------------------------------------------------
        MOVW      DP,#_ClkCfgRegs+14    ; [CPU_ARAU] 
        AND       @$BLOCKED(_ClkCfgRegs)+14,#0xfffd ; [CPU_ALU] |587| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 592,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 592 | asm(" RPT #120 || NOP");                                               
;----------------------------------------------------------------------
 RPT #120 || NOP
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 593,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 593 | ClkCfgRegs.SYSCLKDIVSEL.bit.PLLSYSCLKDIV = 0;                          
; 595 | //                                                                     
; 596 | // Lock the PLL five times. This helps ensure a successful start.      
; 597 | // Five is the minimum recommended number. The user can increase this  
; 598 | // number according to allotted system initialization time.            
; 599 | //                                                                     
;----------------------------------------------------------------------
        AND       @$BLOCKED(_ClkCfgRegs)+34,#0xffc0 ; [CPU_ALU] |593| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 600,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 600 | for(i = 0; i < 5; i++)                                                 
;----------------------------------------------------------------------
        MOV       *-SP[32],#0           ; [CPU_ALU] |600| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 600,column 20,is_stmt,isa 0
;----------------------------------------------------------------------
; 602 | //                                                                     
; 603 | // Turn off PLL                                                        
; 604 | //                                                                     
;----------------------------------------------------------------------
        MOV       AL,*-SP[32]           ; [CPU_ALU] |600| 
        CMPB      AL,#5                 ; [CPU_ALU] |600| 
        B         $C$L13,HIS            ; [CPU_ALU] |600| 
        ; branchcc occurs ; [] |600| 
$C$L11:    
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 605,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 605 | ClkCfgRegs.SYSPLLCTL1.bit.PLLEN = 0;                                   
;----------------------------------------------------------------------
        MOVW      DP,#_ClkCfgRegs+14    ; [CPU_ARAU] 
        AND       @$BLOCKED(_ClkCfgRegs)+14,#0xfffe ; [CPU_ALU] |605| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 606,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 606 | asm(" RPT #20 || NOP");                                                
; 608 | //                                                                     
; 609 | // Write multiplier, which automatically turns on the PLL              
; 610 | //                                                                     
;----------------------------------------------------------------------
 RPT #20 || NOP
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 611,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 611 | ClkCfgRegs.SYSPLLMULT.all = ((fmult << 8U) | imult);                   
; 613 | //                                                                     
; 614 | // Wait for the SYSPLL lock counter                                    
; 615 | //                                                                     
;----------------------------------------------------------------------
        MOV       ACC,*-SP[17] << #8    ; [CPU_ALU] |611| 
        OR        AL,*-SP[16]           ; [CPU_ALU] |611| 
        MOVU      ACC,AL                ; [CPU_ALU] |611| 
        MOVL      @$BLOCKED(_ClkCfgRegs)+20,ACC ; [CPU_ALU] |611| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 616,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 616 | while(ClkCfgRegs.SYSPLLSTS.bit.LOCKS != 1)                             
;----------------------------------------------------------------------
$C$L12:    
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 616,column 19,is_stmt,isa 0
;----------------------------------------------------------------------
; 618 | //                                                                     
; 619 | // Uncomment to service the watchdog                                   
; 620 | //                                                                     
; 621 | // ServiceDog();                                                       
; 626 | //                                                                     
; 627 | // Set divider to produce slower output frequency to limit current incr
;     | ease                                                                   
; 628 | //                                                                     
;----------------------------------------------------------------------
        MOV       AL,@$BLOCKED(_ClkCfgRegs)+22 ; [CPU_ALU] |616| 
        ANDB      AL,#0x01              ; [CPU_ALU] |616| 
        CMPB      AL,#1                 ; [CPU_ALU] |616| 
        B         $C$L12,NEQ            ; [CPU_ALU] |616| 
        ; branchcc occurs ; [] |616| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 600,column 27,is_stmt,isa 0
        INC       *-SP[32]              ; [CPU_ALU] |600| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 600,column 20,is_stmt,isa 0
        MOV       AL,*-SP[32]           ; [CPU_ALU] |600| 
        CMPB      AL,#5                 ; [CPU_ALU] |600| 
        B         $C$L11,LO             ; [CPU_ALU] |600| 
        ; branchcc occurs ; [] |600| 
$C$L13:    
	.dwendtag $C$DW$70

$C$L14:    
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 629,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 629 | if(divsel != PLLCLK_BY_126)                                            
;----------------------------------------------------------------------
        MOV       AL,*-SP[18]           ; [CPU_ALU] |629| 
        CMPB      AL,#63                ; [CPU_ALU] |629| 
        B         $C$L15,EQ             ; [CPU_ALU] |629| 
        ; branchcc occurs ; [] |629| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 631,column 10,is_stmt,isa 0
;----------------------------------------------------------------------
; 631 | ClkCfgRegs.SYSCLKDIVSEL.bit.PLLSYSCLKDIV = divsel + 1;                 
; 633 | else                                                                   
;----------------------------------------------------------------------
        ADDB      AL,#1                 ; [CPU_ALU] |631| 
        AND       AH,@$BLOCKED(_ClkCfgRegs)+34,#0xffc0 ; [CPU_FPU] |631| 
        ANDB      AL,#0x3f              ; [CPU_ALU] |631| 
        OR        AL,AH                 ; [CPU_ALU] |631| 
        MOV       @$BLOCKED(_ClkCfgRegs)+34,AL ; [CPU_ALU] |631| 
        B         $C$L16,UNC            ; [CPU_ALU] 
        ; branch occurs ; [] 
$C$L15:    
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 635,column 10,is_stmt,isa 0
;----------------------------------------------------------------------
; 635 | ClkCfgRegs.SYSCLKDIVSEL.bit.PLLSYSCLKDIV = divsel;                     
; 638 | //                                                                     
; 639 | //      *CAUTION*                                                      
; 640 | // It is recommended to use the following watchdog code to monitor the
;     | PLL                                                                    
; 641 | // startup sequence. If your application has already cleared the watchd
;     | og                                                                     
; 642 | // SCRS[WDOVERRIDE] bit this cannot be done. It is recommended not to c
;     | lear                                                                   
; 643 | // this bit until after the PLL has been initiated.                    
; 644 | //                                                                     
; 646 | //                                                                     
; 647 | // Backup User Watchdog                                                
; 648 | //                                                                     
;----------------------------------------------------------------------
        AND       AH,@$BLOCKED(_ClkCfgRegs)+34,#0xffc0 ; [CPU_ALU] |635| 
        ANDB      AL,#0x3f              ; [CPU_ALU] |635| 
        OR        AL,AH                 ; [CPU_ALU] |635| 
        MOV       @$BLOCKED(_ClkCfgRegs)+34,AL ; [CPU_ALU] |635| 
$C$L16:    
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 649,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 649 | SCSR = WdRegs.SCSR.all;                                                
;----------------------------------------------------------------------
        MOVW      DP,#_WdRegs+34        ; [CPU_ARAU] 
        MOV       AL,@$BLOCKED(_WdRegs)+34 ; [CPU_ALU] |649| 
        MOV       *-SP[19],AL           ; [CPU_ALU] |649| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 650,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 650 | WDCR = WdRegs.WDCR.all;                                                
;----------------------------------------------------------------------
        MOV       AL,@$BLOCKED(_WdRegs)+41 ; [CPU_ALU] |650| 
        MOV       *-SP[20],AL           ; [CPU_ALU] |650| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 651,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 651 | WDWCR = WdRegs.WDWCR.all;                                              
; 653 | //                                                                     
; 654 | // Disable windowed functionality, reset counter                       
; 655 | //                                                                     
;----------------------------------------------------------------------
        MOV       AL,@$BLOCKED(_WdRegs)+42 ; [CPU_ALU] |651| 
        MOV       *-SP[21],AL           ; [CPU_ALU] |651| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 656,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 656 | EALLOW;                                                                
;----------------------------------------------------------------------
 EALLOW
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 657,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 657 | WdRegs.WDWCR.all = 0x0;                                                
;----------------------------------------------------------------------
        MOV       @$BLOCKED(_WdRegs)+42,#0 ; [CPU_ALU] |657| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 658,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 658 | WdRegs.WDKEY.bit.WDKEY = 0x55;                                         
;----------------------------------------------------------------------
        AND       AL,@$BLOCKED(_WdRegs)+37,#0xff00 ; [CPU_ALU] |658| 
        ORB       AL,#0x55              ; [CPU_ALU] |658| 
        MOV       @$BLOCKED(_WdRegs)+37,AL ; [CPU_ALU] |658| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 659,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 659 | WdRegs.WDKEY.bit.WDKEY = 0xAA;                                         
; 661 | //                                                                     
; 662 | // Disable global interrupts                                           
; 663 | //                                                                     
;----------------------------------------------------------------------
        AND       AL,@$BLOCKED(_WdRegs)+37,#0xff00 ; [CPU_ALU] |659| 
        ORB       AL,#0xaa              ; [CPU_ALU] |659| 
        MOV       @$BLOCKED(_WdRegs)+37,AL ; [CPU_ALU] |659| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 664,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 664 | intStatus = __disable_interrupts();                                    
; 666 | //                                                                     
; 667 | // Configure for watchdog reset and to run at max frequency            
; 668 | //                                                                     
;----------------------------------------------------------------------
        PUSH      ST1                   ; [CPU_ALU] |664| 
        SETC      INTM, DBGM            ; [CPU_ALU] |664| 
        MOV       AL,*--SP              ; [CPU_ALU] |664| 
        MOV       *-SP[22],AL           ; [CPU_ALU] |664| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 669,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 669 | WdRegs.SCSR.all = 0x0;                                                 
;----------------------------------------------------------------------
        MOV       @$BLOCKED(_WdRegs)+34,#0 ; [CPU_ALU] |669| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 670,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 670 | WdRegs.WDCR.all = 0x28;                                                
; 672 | //                                                                     
; 673 | // This bit is reset only by power-on-reset (POR) and will not be clear
;     | ed                                                                     
; 674 | // by a WD reset                                                       
; 675 | //                                                                     
;----------------------------------------------------------------------
        MOVB      @$BLOCKED(_WdRegs)+41,#40,UNC ; [CPU_ALU] |670| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 676,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 676 | DevCfgRegs.SYSDBGCTL.bit.BIT_0 = 1;                                    
; 678 | //                                                                     
; 679 | // Enable PLLSYSCLK is fed from system PLL clock                       
; 680 | //                                                                     
;----------------------------------------------------------------------
        MOVW      DP,#_DevCfgRegs+300   ; [CPU_ARAU] 
        OR        @$BLOCKED(_DevCfgRegs)+300,#0x0001 ; [CPU_ALU] |676| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 681,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 681 | ClkCfgRegs.SYSPLLCTL1.bit.PLLCLKEN = 1;                                
; 683 | //                                                                     
; 684 | // Delay to ensure system is clocking from PLL prior to clearing status
;     |  bit                                                                   
; 685 | //                                                                     
;----------------------------------------------------------------------
        MOVW      DP,#_ClkCfgRegs+14    ; [CPU_ARAU] 
        OR        @$BLOCKED(_ClkCfgRegs)+14,#0x0002 ; [CPU_ALU] |681| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 686,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 686 | asm(" RPT #20 || NOP");                                                
; 688 | //                                                                     
; 689 | // Service watchdog                                                    
; 690 | //                                                                     
;----------------------------------------------------------------------
 RPT #20 || NOP
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 691,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 691 | ServiceDog();                                                          
; 693 | //                                                                     
; 694 | // Slip Bit Monitor and SYSCLK Frequency Check using timers            
; 695 | // Re-lock routine for SLIP condition or if SYSCLK and CLKSRC timer cou
;     | nts                                                                    
; 696 | // are off by +/- 10%.                                                 
; 697 | // At a minimum, SYSCLK check is performed.  Re lock attempt is carried
;     |  out                                                                   
; 698 | // if SLIPS bit is set. This while loop is monitored by watchdog.      
; 699 | // In the event that the PLL does not successfully lock, the loop will
;     | be                                                                     
; 700 | // aborted by watchdog reset.                                          
; 701 | //                                                                     
;----------------------------------------------------------------------
        SPM       #0                    ; [CPU_ALU] 
$C$DW$72	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$72, DW_AT_low_pc(0x00)
	.dwattr $C$DW$72, DW_AT_name("_ServiceDog")
	.dwattr $C$DW$72, DW_AT_TI_call

        LCR       #_ServiceDog          ; [CPU_ALU] |691| 
        ; call occurs [#_ServiceDog] ; [] |691| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 702,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 702 | EALLOW;                                                                
;----------------------------------------------------------------------
 EALLOW
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 703,column 11,is_stmt,isa 0
;----------------------------------------------------------------------
; 703 | while(sysclkInvalidFreq == true)                                       
;----------------------------------------------------------------------
        MOV       AL,*-SP[31]           ; [CPU_ALU] |703| 
        CMPB      AL,#1                 ; [CPU_ALU] |703| 
        B         $C$L31,NEQ            ; [CPU_ALU] |703| 
        ; branchcc occurs ; [] |703| 
        MOVL      XAR4,#2048            ; [CPU_ARAU] |791| 
$C$L17:    
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 705,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 705 | if(ClkCfgRegs.SYSPLLSTS.bit.SLIPS == 1)                                
; 707 |     //                                                                 
; 708 |     // Bypass PLL                                                      
; 709 |     //                                                                 
;----------------------------------------------------------------------
        MOVW      DP,#_ClkCfgRegs+22    ; [CPU_ARAU] 
        AND       AL,@$BLOCKED(_ClkCfgRegs)+22,#0x0002 ; [CPU_ALU] |705| 
        LSR       AL,1                  ; [CPU_ALU] |705| 
        CMPB      AL,#1                 ; [CPU_ALU] |705| 
        B         $C$L19,NEQ            ; [CPU_ALU] |705| 
        ; branchcc occurs ; [] |705| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 710,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 710 | ClkCfgRegs.SYSPLLCTL1.bit.PLLCLKEN = 0;                                
; 712 | //                                                                     
; 713 | // Delay of at least 120 OSCCLK cycles required post PLL bypass        
; 714 | //                                                                     
;----------------------------------------------------------------------
        AND       @$BLOCKED(_ClkCfgRegs)+14,#0xfffd ; [CPU_ALU] |710| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 715,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 715 | asm(" RPT #120 || NOP");                                               
; 717 | //                                                                     
; 718 | // Turn off PLL                                                        
; 719 | //                                                                     
;----------------------------------------------------------------------
 RPT #120 || NOP
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 720,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 720 | ClkCfgRegs.SYSPLLCTL1.bit.PLLEN = 0;                                   
;----------------------------------------------------------------------
        AND       @$BLOCKED(_ClkCfgRegs)+14,#0xfffe ; [CPU_ALU] |720| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 721,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 721 | asm(" RPT #20 || NOP");                                                
; 723 | //                                                                     
; 724 | // Write multipliers, which automatically turns on the PLL             
; 725 | //                                                                     
;----------------------------------------------------------------------
 RPT #20 || NOP
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 726,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 726 | ClkCfgRegs.SYSPLLMULT.all = ((fmult << 8U) | imult);                   
; 728 | //                                                                     
; 729 | // Wait for the SYSPLL lock counter to expire                          
; 730 | //                                                                     
;----------------------------------------------------------------------
        MOV       ACC,*-SP[17] << #8    ; [CPU_ALU] |726| 
        OR        AL,*-SP[16]           ; [CPU_ALU] |726| 
        MOVU      ACC,AL                ; [CPU_ALU] |726| 
        MOVL      @$BLOCKED(_ClkCfgRegs)+20,ACC ; [CPU_ALU] |726| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 731,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 731 | while(ClkCfgRegs.SYSPLLSTS.bit.LOCKS != 1);                            
;----------------------------------------------------------------------
$C$L18:    
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 731,column 19,is_stmt,isa 0
;----------------------------------------------------------------------
; 733 | //                                                                     
; 734 | // Enable PLLSYSCLK is fed from system PLL clock                       
; 735 | //                                                                     
;----------------------------------------------------------------------
        MOV       AL,@$BLOCKED(_ClkCfgRegs)+22 ; [CPU_ALU] |731| 
        ANDB      AL,#0x01              ; [CPU_ALU] |731| 
        CMPB      AL,#1                 ; [CPU_ALU] |731| 
        B         $C$L18,NEQ            ; [CPU_ALU] |731| 
        ; branchcc occurs ; [] |731| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 736,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 736 | ClkCfgRegs.SYSPLLCTL1.bit.PLLCLKEN = 1;                                
; 738 | //                                                                     
; 739 | // Delay to ensure system is clocking from PLL                         
; 740 | //                                                                     
;----------------------------------------------------------------------
        OR        @$BLOCKED(_ClkCfgRegs)+14,#0x0002 ; [CPU_ALU] |736| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 741,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 741 | asm(" RPT #20 || NOP");                                                
; 744 | //                                                                     
; 745 | // Backup timer1 and timer2 settings                                   
; 746 | //                                                                     
;----------------------------------------------------------------------
 RPT #20 || NOP
$C$L19:    
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 747,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 747 | t1TCR = CpuTimer1Regs.TCR.all;                                         
;----------------------------------------------------------------------
        MOVW      DP,#_CpuTimer1Regs+4  ; [CPU_ARAU] 
        MOV       AL,@$BLOCKED(_CpuTimer1Regs)+4 ; [CPU_ALU] |747| 
        MOV       *-SP[23],AL           ; [CPU_ALU] |747| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 748,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 748 | t1PRD = CpuTimer1Regs.PRD.all;                                         
;----------------------------------------------------------------------
        MOVL      ACC,@$BLOCKED(_CpuTimer1Regs)+2 ; [CPU_ALU] |748| 
        MOVL      *-SP[4],ACC           ; [CPU_ALU] |748| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 749,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 749 | t1TPR = CpuTimer1Regs.TPR.all;                                         
;----------------------------------------------------------------------
        MOV       AL,@$BLOCKED(_CpuTimer1Regs)+6 ; [CPU_ALU] |749| 
        MOV       *-SP[24],AL           ; [CPU_ALU] |749| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 750,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 750 | t1TPRH = CpuTimer1Regs.TPRH.all;                                       
;----------------------------------------------------------------------
        MOV       AL,@$BLOCKED(_CpuTimer1Regs)+7 ; [CPU_ALU] |750| 
        MOV       *-SP[25],AL           ; [CPU_ALU] |750| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 751,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 751 | t2SRC = CpuSysRegs.TMR2CLKCTL.bit.TMR2CLKSRCSEL;                       
;----------------------------------------------------------------------
        MOVW      DP,#_CpuSysRegs+124   ; [CPU_ARAU] 
        MOV       AL,@$BLOCKED(_CpuSysRegs)+124 ; [CPU_ALU] |751| 
        ANDB      AL,#0x07              ; [CPU_ALU] |751| 
        MOV       *-SP[29],AL           ; [CPU_ALU] |751| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 752,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 752 | t2Prescale = CpuSysRegs.TMR2CLKCTL.bit.TMR2CLKPRESCALE;                
;----------------------------------------------------------------------
        AND       AL,@$BLOCKED(_CpuSysRegs)+124,#0x0038 ; [CPU_ALU] |752| 
        LSR       AL,3                  ; [CPU_ALU] |752| 
        MOV       *-SP[30],AL           ; [CPU_ALU] |752| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 753,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 753 | t2TCR = CpuTimer2Regs.TCR.all;                                         
;----------------------------------------------------------------------
        MOVW      DP,#_CpuTimer2Regs+4  ; [CPU_ARAU] 
        MOV       AL,@$BLOCKED(_CpuTimer2Regs)+4 ; [CPU_ALU] |753| 
        MOV       *-SP[26],AL           ; [CPU_ALU] |753| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 754,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 754 | t2PRD = CpuTimer2Regs.PRD.all;                                         
;----------------------------------------------------------------------
        MOVL      ACC,@$BLOCKED(_CpuTimer2Regs)+2 ; [CPU_ALU] |754| 
        MOVL      *-SP[6],ACC           ; [CPU_ALU] |754| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 755,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 755 | t2TPR = CpuTimer2Regs.TPR.all;                                         
;----------------------------------------------------------------------
        MOV       AL,@$BLOCKED(_CpuTimer2Regs)+6 ; [CPU_ALU] |755| 
        MOV       *-SP[27],AL           ; [CPU_ALU] |755| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 756,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 756 | t2TPRH = CpuTimer2Regs.TPRH.all;                                       
; 758 | //                                                                     
; 759 | // Set up timers 1 and 2                                               
; 760 | // Configure timer1 to count SYSCLK cycles                             
; 761 | //                                                                     
;----------------------------------------------------------------------
        MOV       AL,@$BLOCKED(_CpuTimer2Regs)+7 ; [CPU_ALU] |756| 
        MOV       *-SP[28],AL           ; [CPU_ALU] |756| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 762,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 762 | CpuTimer1Regs.TCR.bit.TSS = 1;                                    // st
;     | op timer1                                                              
;----------------------------------------------------------------------
        MOVW      DP,#_CpuTimer1Regs+4  ; [CPU_ARAU] 
        OR        @$BLOCKED(_CpuTimer1Regs)+4,#0x0010 ; [CPU_ALU] |762| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 763,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 763 | CpuTimer1Regs.PRD.all = TMR1SYSCLKCTR;                            // se
;     | ed timer1 counter                                                      
;----------------------------------------------------------------------
        SETC      SXM                   ; [CPU_ALU] 
        MOV       ACC,#-8192 << 15      ; [CPU_ALU] |763| 
        MOVL      @$BLOCKED(_CpuTimer1Regs)+2,ACC ; [CPU_ALU] |763| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 764,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 764 | CpuTimer1Regs.TPR.bit.TDDR = 0x0;                                 // sy
;     | sclock divider                                                         
;----------------------------------------------------------------------
        AND       @$BLOCKED(_CpuTimer1Regs)+6,#0xff00 ; [CPU_ALU] |764| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 765,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 765 | CpuTimer1Regs.TCR.bit.TRB = 1;                                    // re
;     | load timer with value in PRD                                           
;----------------------------------------------------------------------
        OR        @$BLOCKED(_CpuTimer1Regs)+4,#0x0020 ; [CPU_ALU] |765| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 766,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 766 | CpuTimer1Regs.TCR.bit.TIF = 1;                                    // cl
;     | ear interrupt flag                                                     
;----------------------------------------------------------------------
        OR        @$BLOCKED(_CpuTimer1Regs)+4,#0x8000 ; [CPU_ALU] |766| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 767,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 767 | CpuTimer1Regs.TCR.bit.TIE = 1;                                    // en
;     | able interrupt                                                         
; 769 | //                                                                     
; 770 | // Configure timer2 to count Input clock cycles                        
; 771 | //                                                                     
;----------------------------------------------------------------------
        OR        @$BLOCKED(_CpuTimer1Regs)+4,#0x4000 ; [CPU_ALU] |767| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 772,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 772 | switch(clock_source)                                                   
; 774 |     case INT_OSC1:                                                     
; 775 |         // Clk Src = INT_OSC1                                          
;----------------------------------------------------------------------
        B         $C$L23,UNC            ; [CPU_ALU] |772| 
        ; branch occurs ; [] |772| 
$C$L20:    
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 776,column 17,is_stmt,isa 0
;----------------------------------------------------------------------
; 776 | CpuSysRegs.TMR2CLKCTL.bit.TMR2CLKSRCSEL = 0x1;                         
;----------------------------------------------------------------------
        MOVW      DP,#_CpuSysRegs+124   ; [CPU_ARAU] 
        AND       AL,@$BLOCKED(_CpuSysRegs)+124,#0xfff8 ; [CPU_ALU] |776| 
        ORB       AL,#0x01              ; [CPU_ALU] |776| 
        MOV       @$BLOCKED(_CpuSysRegs)+124,AL ; [CPU_ALU] |776| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 777,column 17,is_stmt,isa 0
;----------------------------------------------------------------------
; 777 | break;                                                                 
; 778 | case INT_OSC2:                                                         
; 779 | // Clk Src = INT_OSC2                                                  
;----------------------------------------------------------------------
        B         $C$L24,UNC            ; [CPU_ALU] |777| 
        ; branch occurs ; [] |777| 
$C$L21:    
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 780,column 17,is_stmt,isa 0
;----------------------------------------------------------------------
; 780 | CpuSysRegs.TMR2CLKCTL.bit.TMR2CLKSRCSEL = 0x2;                         
;----------------------------------------------------------------------
        MOVW      DP,#_CpuSysRegs+124   ; [CPU_ARAU] 
        AND       AL,@$BLOCKED(_CpuSysRegs)+124,#0xfff8 ; [CPU_ALU] |780| 
        ORB       AL,#0x02              ; [CPU_ALU] |780| 
        MOV       @$BLOCKED(_CpuSysRegs)+124,AL ; [CPU_ALU] |780| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 781,column 17,is_stmt,isa 0
;----------------------------------------------------------------------
; 781 | break;                                                                 
; 782 | case XTAL_OSC:                                                         
; 783 | // Clk Src = XTAL                                                      
;----------------------------------------------------------------------
        B         $C$L24,UNC            ; [CPU_ALU] |781| 
        ; branch occurs ; [] |781| 
$C$L22:    
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 784,column 17,is_stmt,isa 0
;----------------------------------------------------------------------
; 784 | CpuSysRegs.TMR2CLKCTL.bit.TMR2CLKSRCSEL = 0x3;                         
;----------------------------------------------------------------------
        MOVW      DP,#_CpuSysRegs+124   ; [CPU_ARAU] 
        AND       AL,@$BLOCKED(_CpuSysRegs)+124,#0xfff8 ; [CPU_ALU] |784| 
        ORB       AL,#0x03              ; [CPU_ALU] |784| 
        MOV       @$BLOCKED(_CpuSysRegs)+124,AL ; [CPU_ALU] |784| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 785,column 17,is_stmt,isa 0
;----------------------------------------------------------------------
; 785 | break;                                                                 
;----------------------------------------------------------------------
        B         $C$L24,UNC            ; [CPU_ALU] |785| 
        ; branch occurs ; [] |785| 
$C$L23:    
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 772,column 9,is_stmt,isa 0
        MOV       AL,*-SP[15]           ; [CPU_ALU] |772| 
        B         $C$L21,EQ             ; [CPU_ALU] |772| 
        ; branchcc occurs ; [] |772| 
        CMPB      AL,#1                 ; [CPU_ALU] |772| 
        B         $C$L22,EQ             ; [CPU_ALU] |772| 
        ; branchcc occurs ; [] |772| 
        CMPB      AL,#2                 ; [CPU_ALU] |772| 
        B         $C$L20,EQ             ; [CPU_ALU] |772| 
        ; branchcc occurs ; [] |772| 
$C$L24:    
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 788,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 788 | CpuTimer2Regs.TCR.bit.TIF = 1;                                    // cl
;     | ear interrupt flag                                                     
;----------------------------------------------------------------------
        MOVW      DP,#_CpuTimer2Regs+4  ; [CPU_ARAU] 
        OR        @$BLOCKED(_CpuTimer2Regs)+4,#0x8000 ; [CPU_ALU] |788| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 789,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 789 | CpuTimer2Regs.TCR.bit.TIE = 1;                                    // en
;     | able interrupt                                                         
;----------------------------------------------------------------------
        OR        @$BLOCKED(_CpuTimer2Regs)+4,#0x4000 ; [CPU_ALU] |789| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 790,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 790 | CpuTimer2Regs.TCR.bit.TSS = 1;                                    // st
;     | op timer2                                                              
;----------------------------------------------------------------------
        OR        @$BLOCKED(_CpuTimer2Regs)+4,#0x0010 ; [CPU_ALU] |790| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 791,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 791 | CpuTimer2Regs.PRD.all = TMR2INPCLKCTR;                            // se
;     | ed timer2 counter                                                      
;----------------------------------------------------------------------
        MOVL      @$BLOCKED(_CpuTimer2Regs)+2,XAR4 ; [CPU_ALU] |791| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 792,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 792 | CpuTimer2Regs.TPR.bit.TDDR = 0x0;                                 // sy
;     | sclock divider                                                         
;----------------------------------------------------------------------
        AND       @$BLOCKED(_CpuTimer2Regs)+6,#0xff00 ; [CPU_ALU] |792| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 793,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 793 | CpuTimer2Regs.TCR.bit.TRB = 1;                                    // re
;     | load timer with value in PRD                                           
; 795 | //                                                                     
; 796 | // Stop/Start timer counters                                           
; 797 | //                                                                     
;----------------------------------------------------------------------
        OR        @$BLOCKED(_CpuTimer2Regs)+4,#0x0020 ; [CPU_ALU] |793| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 798,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 798 | CpuTimer1Regs.TCR.bit.TSS = 1;                                    // st
;     | op timer1                                                              
;----------------------------------------------------------------------
        MOVW      DP,#_CpuTimer1Regs+4  ; [CPU_ARAU] 
        OR        @$BLOCKED(_CpuTimer1Regs)+4,#0x0010 ; [CPU_ALU] |798| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 799,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 799 | CpuTimer2Regs.TCR.bit.TSS = 1;                                    // st
;     | op timer2                                                              
;----------------------------------------------------------------------
        MOVW      DP,#_CpuTimer2Regs+4  ; [CPU_ARAU] 
        OR        @$BLOCKED(_CpuTimer2Regs)+4,#0x0010 ; [CPU_ALU] |799| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 800,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 800 | CpuTimer1Regs.TCR.bit.TRB = 1;                                    // re
;     | load timer1 with value in PRD                                          
;----------------------------------------------------------------------
        MOVW      DP,#_CpuTimer1Regs+4  ; [CPU_ARAU] 
        OR        @$BLOCKED(_CpuTimer1Regs)+4,#0x0020 ; [CPU_ALU] |800| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 801,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 801 | CpuTimer2Regs.TCR.bit.TRB = 1;                                    // re
;     | load timer2 with value in PRD                                          
;----------------------------------------------------------------------
        MOVW      DP,#_CpuTimer2Regs+4  ; [CPU_ARAU] 
        OR        @$BLOCKED(_CpuTimer2Regs)+4,#0x0020 ; [CPU_ALU] |801| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 802,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 802 | CpuTimer2Regs.TCR.bit.TIF = 1;                                    // cl
;     | ear timer2 interrupt flag                                              
;----------------------------------------------------------------------
        OR        @$BLOCKED(_CpuTimer2Regs)+4,#0x8000 ; [CPU_ALU] |802| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 803,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 803 | CpuTimer2Regs.TCR.bit.TSS = 0;                                    // st
;     | art timer2                                                             
;----------------------------------------------------------------------
        AND       @$BLOCKED(_CpuTimer2Regs)+4,#0xffef ; [CPU_ALU] |803| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 804,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 804 | CpuTimer1Regs.TCR.bit.TSS = 0;                                    // st
;     | art timer1                                                             
; 806 | //                                                                     
; 807 | // Stop timers if either timer1 or timer2 counters overflow            
; 808 | //                                                                     
;----------------------------------------------------------------------
        MOVW      DP,#_CpuTimer1Regs+4  ; [CPU_ARAU] 
        AND       @$BLOCKED(_CpuTimer1Regs)+4,#0xffef ; [CPU_ALU] |804| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 809,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 809 | while((CpuTimer2Regs.TCR.bit.TIF == 0) && (CpuTimer1Regs.TCR.bit.TIF ==
;     |  0));                                                                  
;----------------------------------------------------------------------
$C$L25:    
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 809,column 15,is_stmt,isa 0
        MOVW      DP,#_CpuTimer2Regs+4  ; [CPU_ARAU] 
        TBIT      @$BLOCKED(_CpuTimer2Regs)+4,#15 ; [CPU_ALU] |809| 
        B         $C$L26,TC             ; [CPU_ALU] |809| 
        ; branchcc occurs ; [] |809| 
        MOVW      DP,#_CpuTimer1Regs+4  ; [CPU_ARAU] 
        TBIT      @$BLOCKED(_CpuTimer1Regs)+4,#15 ; [CPU_ALU] |809| 
        B         $C$L25,NTC            ; [CPU_ALU] |809| 
        ; branchcc occurs ; [] |809| 
$C$L26:    
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 811,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 811 | CpuTimer1Regs.TCR.bit.TSS = 1;                                    // st
;     | op timer1                                                              
;----------------------------------------------------------------------
        MOVW      DP,#_CpuTimer1Regs+4  ; [CPU_ARAU] 
        OR        @$BLOCKED(_CpuTimer1Regs)+4,#0x0010 ; [CPU_ALU] |811| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 812,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 812 | CpuTimer2Regs.TCR.bit.TSS = 1;                                    // st
;     | op timer2                                                              
; 814 | //                                                                     
; 815 | // Calculate elapsed counts on timer1                                  
; 816 | //                                                                     
;----------------------------------------------------------------------
        MOVW      DP,#_CpuTimer2Regs+4  ; [CPU_ARAU] 
        OR        @$BLOCKED(_CpuTimer2Regs)+4,#0x0010 ; [CPU_ALU] |812| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 817,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 817 | ctr1 = TMR1SYSCLKCTR - CpuTimer1Regs.TIM.all;                          
; 819 | //                                                                     
; 820 | // Restore timer settings                                              
; 821 | //                                                                     
;----------------------------------------------------------------------
        SETC      SXM                   ; [CPU_ALU] 
        MOV       ACC,#-8192 << 15      ; [CPU_ALU] |817| 
        MOVW      DP,#_CpuTimer1Regs    ; [CPU_ARAU] 
        SUBL      ACC,@$BLOCKED(_CpuTimer1Regs) ; [CPU_ALU] |817| 
        MOVL      *-SP[8],ACC           ; [CPU_ALU] |817| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 822,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 822 | CpuTimer1Regs.TCR.all = t1TCR;                                         
;----------------------------------------------------------------------
        MOV       AL,*-SP[23]           ; [CPU_ALU] |822| 
        MOV       @$BLOCKED(_CpuTimer1Regs)+4,AL ; [CPU_ALU] |822| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 823,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 823 | CpuTimer1Regs.PRD.all = t1PRD;                                         
;----------------------------------------------------------------------
        MOVL      ACC,*-SP[4]           ; [CPU_ALU] |823| 
        MOVL      @$BLOCKED(_CpuTimer1Regs)+2,ACC ; [CPU_ALU] |823| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 824,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 824 | CpuTimer1Regs.TPR.all = t1TPR;                                         
;----------------------------------------------------------------------
        MOV       AL,*-SP[24]           ; [CPU_ALU] |824| 
        MOV       @$BLOCKED(_CpuTimer1Regs)+6,AL ; [CPU_ALU] |824| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 825,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 825 | CpuTimer1Regs.TPRH.all = t1TPRH;                                       
;----------------------------------------------------------------------
        MOV       AL,*-SP[25]           ; [CPU_ALU] |825| 
        MOV       @$BLOCKED(_CpuTimer1Regs)+7,AL ; [CPU_ALU] |825| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 826,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 826 | CpuSysRegs.TMR2CLKCTL.bit.TMR2CLKSRCSEL = t2SRC;                       
;----------------------------------------------------------------------
        MOV       AL,*-SP[29]           ; [CPU_ALU] |826| 
        MOVW      DP,#_CpuSysRegs+124   ; [CPU_ARAU] 
        ANDB      AL,#0x07              ; [CPU_ALU] |826| 
        AND       AH,@$BLOCKED(_CpuSysRegs)+124,#0xfff8 ; [CPU_FPU] |826| 
        OR        AL,AH                 ; [CPU_ALU] |826| 
        MOV       @$BLOCKED(_CpuSysRegs)+124,AL ; [CPU_ALU] |826| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 827,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 827 | CpuSysRegs.TMR2CLKCTL.bit.TMR2CLKPRESCALE = t2Prescale;                
;----------------------------------------------------------------------
        MOV       AL,*-SP[30]           ; [CPU_ALU] |827| 
        ANDB      AL,#0x07              ; [CPU_ALU] |827| 
        LSL       AL,3                  ; [CPU_ALU] |827| 
        AND       AH,@$BLOCKED(_CpuSysRegs)+124,#0xffc7 ; [CPU_FPU] |827| 
        OR        AL,AH                 ; [CPU_ALU] |827| 
        MOV       @$BLOCKED(_CpuSysRegs)+124,AL ; [CPU_ALU] |827| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 828,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 828 | CpuTimer2Regs.TCR.all = t2TCR;                                         
;----------------------------------------------------------------------
        MOV       AL,*-SP[26]           ; [CPU_ALU] |828| 
        MOVW      DP,#_CpuTimer2Regs+4  ; [CPU_ARAU] 
        MOV       @$BLOCKED(_CpuTimer2Regs)+4,AL ; [CPU_ALU] |828| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 829,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 829 | CpuTimer2Regs.PRD.all = t2PRD;                                         
;----------------------------------------------------------------------
        MOVL      ACC,*-SP[6]           ; [CPU_ALU] |829| 
        MOVL      @$BLOCKED(_CpuTimer2Regs)+2,ACC ; [CPU_ALU] |829| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 830,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 830 | CpuTimer2Regs.TPR.all = t2TPR;                                         
;----------------------------------------------------------------------
        MOV       AL,*-SP[27]           ; [CPU_ALU] |830| 
        MOV       @$BLOCKED(_CpuTimer2Regs)+6,AL ; [CPU_ALU] |830| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 831,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 831 | CpuTimer2Regs.TPRH.all = t2TPRH;                                       
; 833 | //                                                                     
; 834 | // Calculate Clock Error:                                              
; 835 | // Error = (mult/div) - (timer1 count/timer2 count)                    
; 836 | //                                                                     
;----------------------------------------------------------------------
        MOV       AL,*-SP[28]           ; [CPU_ALU] |831| 
        MOV       @$BLOCKED(_CpuTimer2Regs)+7,AL ; [CPU_ALU] |831| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 837,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 837 | mult = (float)(imult) + (float)(fmult)/4;                              
;----------------------------------------------------------------------
        UI16TOF32 R1H,*-SP[17]          ; [CPU_FPU] |837| 
        NOP       ; [CPU_ALU] 
        MOVIZ     R0H,#16512            ; [CPU_FPU] |837| 
        DIVF32    R1H,R1H,R0H           ; [CPU_FPU] |837| 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        UI16TOF32 R3H,*-SP[16]          ; [CPU_FPU] |837| 
        NOP       ; [CPU_ALU] 
        ADDF32    R0H,R1H,R3H           ; [CPU_FPU] |837| 
        NOP       ; [CPU_ALU] 
        MOV32     *-SP[12],R0H          ; [CPU_FPU] |837| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 838,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 838 | div = (float)((!ClkCfgRegs.SYSCLKDIVSEL.bit.PLLSYSCLKDIV) ? 1 : (ClkCfg
;     | Regs.SYSCLKDIVSEL.bit.PLLSYSCLKDIV << 1));                             
;----------------------------------------------------------------------
        MOVW      DP,#_ClkCfgRegs+34    ; [CPU_ARAU] 
        MOV       AL,@$BLOCKED(_ClkCfgRegs)+34 ; [CPU_ALU] |838| 
        ANDB      AL,#0x3f              ; [CPU_ALU] |838| 
        B         $C$L27,NEQ            ; [CPU_ALU] |838| 
        ; branchcc occurs ; [] |838| 
        MOVB      AL,#1                 ; [CPU_ALU] |838| 
        B         $C$L28,UNC            ; [CPU_ALU] |838| 
        ; branch occurs ; [] |838| 
$C$L27:    
        MOV       AL,@$BLOCKED(_ClkCfgRegs)+34 ; [CPU_ALU] |838| 
        ANDB      AL,#0x3f              ; [CPU_ALU] |838| 
        MOV       ACC,AL << #1          ; [CPU_ALU] |838| 
$C$L28:    
        MOV       ACC,AL                ; [CPU_ALU] |838| 
        MOV32     R0H,ACC               ; [CPU_FPU] |838| 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        I32TOF32  R0H,R0H               ; [CPU_FPU] |838| 
        NOP       ; [CPU_ALU] 
        MOV32     *-SP[14],R0H          ; [CPU_FPU] |838| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 840,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 840 | sysclkToInClkError = (mult/div) - ((float)ctr1/(float)TMR2INPCLKCTR);  
; 842 | //                                                                     
; 843 | // sysclkInvalidFreq will be set to true if sysclkToInClkError is off b
;     | y 10%                                                                  
; 844 | //                                                                     
;----------------------------------------------------------------------
        UI32TOF32 R1H,*-SP[8]           ; [CPU_FPU] |840| 
        MOV32     R3H,*-SP[12]          ; [CPU_FPU] |840| 
        MOV32     R2H,*-SP[14]          ; [CPU_FPU] |840| 
        MOVIZ     R0H,#17664            ; [CPU_FPU] |840| 
        DIVF32    R0H,R1H,R0H           ; [CPU_FPU] |840| 
        DIVF32    R1H,R3H,R2H           ; [CPU_FPU] |840| 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        SUBF32    R0H,R1H,R0H           ; [CPU_FPU] |840| 
        NOP       ; [CPU_ALU] 
        MOV32     *-SP[10],R0H          ; [CPU_FPU] |840| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 845,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 845 | sysclkInvalidFreq = ((sysclkToInClkError > 0.10) || (sysclkToInClkError
;     |  < -0.10));                                                            
; 848 | //                                                                     
; 849 | // Clear bit                                                           
; 850 | //                                                                     
;----------------------------------------------------------------------
        MOVB      AH,#0                 ; [CPU_ALU] |845| 
        MOVB      AL,#1                 ; [CPU_ALU] |845| 
        MOVIZ     R0H,#15820            ; [CPU_FPU] |845| 
        MOV32     R1H,*-SP[10]          ; [CPU_FPU] |845| 
        MOVXI     R0H,#52429            ; [CPU_FPU] |845| 
        CMPF32    R1H,R0H               ; [CPU_FPU] |845| 
        MOVST0    ZF, NF                ; [CPU_FPU] |845| 
        B         $C$L29,GT             ; [CPU_ALU] |845| 
        ; branchcc occurs ; [] |845| 
        MOVIZ     R0H,#48588            ; [CPU_FPU] |845| 
        MOVXI     R0H,#52429            ; [CPU_FPU] |845| 
        CMPF32    R1H,R0H               ; [CPU_FPU] |845| 
        MOVST0    ZF, NF                ; [CPU_FPU] |845| 
        B         $C$L29,LT             ; [CPU_ALU] |845| 
        ; branchcc occurs ; [] |845| 
        MOVB      AL,#0                 ; [CPU_ALU] |845| 
$C$L29:    
        CMPB      AL,#0                 ; [CPU_ALU] |845| 
        B         $C$L30,EQ             ; [CPU_ALU] |845| 
        ; branchcc occurs ; [] |845| 
        MOVB      AH,#1                 ; [CPU_ALU] |845| 
$C$L30:    
        MOV       *-SP[31],AH           ; [CPU_ALU] |845| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 703,column 11,is_stmt,isa 0
        MOV       AL,*-SP[31]           ; [CPU_ALU] |703| 
        CMPB      AL,#1                 ; [CPU_ALU] |703| 
        B         $C$L17,EQ             ; [CPU_ALU] |703| 
        ; branchcc occurs ; [] |703| 
$C$L31:    
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 851,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 851 | DevCfgRegs.SYSDBGCTL.bit.BIT_0 = 0;                                    
; 853 | //                                                                     
; 854 | // Restore user watchdog, first resetting counter                      
; 855 | //                                                                     
;----------------------------------------------------------------------
        MOVW      DP,#_DevCfgRegs+300   ; [CPU_ARAU] 
        AND       @$BLOCKED(_DevCfgRegs)+300,#0xfffe ; [CPU_ALU] |851| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 856,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 856 | WdRegs.WDKEY.bit.WDKEY = 0x55;                                         
;----------------------------------------------------------------------
        MOVW      DP,#_WdRegs+37        ; [CPU_ARAU] 
        AND       AL,@$BLOCKED(_WdRegs)+37,#0xff00 ; [CPU_ALU] |856| 
        ORB       AL,#0x55              ; [CPU_ALU] |856| 
        MOV       @$BLOCKED(_WdRegs)+37,AL ; [CPU_ALU] |856| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 857,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 857 | WdRegs.WDKEY.bit.WDKEY = 0xAA;                                         
;----------------------------------------------------------------------
        AND       AL,@$BLOCKED(_WdRegs)+37,#0xff00 ; [CPU_ALU] |857| 
        ORB       AL,#0xaa              ; [CPU_ALU] |857| 
        MOV       @$BLOCKED(_WdRegs)+37,AL ; [CPU_ALU] |857| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 859,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 859 | WDCR |= 0x28;                     // Setup WD key--KEY bits always read
;     |  0                                                                     
;----------------------------------------------------------------------
        OR        *-SP[20],#0x0028      ; [CPU_ALU] |859| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 860,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 860 | WdRegs.WDCR.all = WDCR;                                                
;----------------------------------------------------------------------
        MOV       AL,*-SP[20]           ; [CPU_ALU] |860| 
        MOV       @$BLOCKED(_WdRegs)+41,AL ; [CPU_ALU] |860| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 861,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 861 | WdRegs.WDWCR.all = WDWCR;                                              
;----------------------------------------------------------------------
        MOV       AL,*-SP[21]           ; [CPU_ALU] |861| 
        MOV       @$BLOCKED(_WdRegs)+42,AL ; [CPU_ALU] |861| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 862,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 862 | WdRegs.SCSR.all = SCSR & 0xFFFE;  // Mask write to bit 0 (W1toClr)     
; 864 | //                                                                     
; 865 | // Restore state of ST1[INTM]. This was set by the __disable_interrupts
;     | ()                                                                     
; 866 | // intrinsic previously.                                               
; 867 | //                                                                     
;----------------------------------------------------------------------
        AND       AL,*-SP[19],#0xfffe   ; [CPU_ALU] |862| 
        MOV       @$BLOCKED(_WdRegs)+34,AL ; [CPU_ALU] |862| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 868,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 868 | if(!(intStatus & 0x1))                                                 
;----------------------------------------------------------------------
        TBIT      *-SP[22],#0           ; [CPU_ALU] |868| 
        B         $C$L32,TC             ; [CPU_ALU] |868| 
        ; branchcc occurs ; [] |868| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 870,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 870 | EINT;                                                                  
; 873 | //                                                                     
; 874 | // Restore state of ST1[DBGM]. This was set by the __disable_interrupts
;     | ()                                                                     
; 875 | // intrinsic previously.                                               
; 876 | //                                                                     
;----------------------------------------------------------------------
 clrc INTM
$C$L32:    
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 877,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 877 | if(!(intStatus & 0x2))                                                 
;----------------------------------------------------------------------
        TBIT      *-SP[22],#1           ; [CPU_ALU] |877| 
        B         $C$L33,TC             ; [CPU_ALU] |877| 
        ; branchcc occurs ; [] |877| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 879,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 879 | asm(" CLRC DBGM");                                                     
; 882 | //                                                                     
; 883 | // 200 PLLSYSCLK delay to allow voltage regulator to stabilize prior   
; 884 | // to increasing entire system clock frequency.                        
; 885 | //                                                                     
;----------------------------------------------------------------------
 CLRC DBGM
$C$L33:    
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 886,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 886 | asm(" RPT #200 || NOP");                                               
; 888 | //                                                                     
; 889 | // Set the divider to user value                                       
; 890 | //                                                                     
;----------------------------------------------------------------------
 RPT #200 || NOP
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 891,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 891 | ClkCfgRegs.SYSCLKDIVSEL.bit.PLLSYSCLKDIV = divsel;                     
;----------------------------------------------------------------------
        MOVW      DP,#_ClkCfgRegs+34    ; [CPU_ARAU] 
        MOV       AL,*-SP[18]           ; [CPU_ALU] |891| 
        AND       AH,@$BLOCKED(_ClkCfgRegs)+34,#0xffc0 ; [CPU_ALU] |891| 
        ANDB      AL,#0x3f              ; [CPU_ALU] |891| 
        OR        AL,AH                 ; [CPU_ALU] |891| 
        MOV       @$BLOCKED(_ClkCfgRegs)+34,AL ; [CPU_ALU] |891| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 893,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 893 | EDIS;                                                                  
;----------------------------------------------------------------------
 EDIS
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 894,column 1,is_stmt,isa 0
$C$L34:    
        SUBB      SP,#32                ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
        SPM       #0                    ; [CPU_ALU] 
$C$DW$73	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$73, DW_AT_low_pc(0x00)
	.dwattr $C$DW$73, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$39, DW_AT_TI_end_file("C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c")
	.dwattr $C$DW$39, DW_AT_TI_end_line(0x37e)
	.dwattr $C$DW$39, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$39

	.sect	".text"
	.clink
	.global	_InitAuxPll

$C$DW$74	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$74, DW_AT_name("InitAuxPll")
	.dwattr $C$DW$74, DW_AT_low_pc(_InitAuxPll)
	.dwattr $C$DW$74, DW_AT_high_pc(0x00)
	.dwattr $C$DW$74, DW_AT_TI_symbol_name("_InitAuxPll")
	.dwattr $C$DW$74, DW_AT_external
	.dwattr $C$DW$74, DW_AT_TI_begin_file("C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c")
	.dwattr $C$DW$74, DW_AT_TI_begin_line(0x38a)
	.dwattr $C$DW$74, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$74, DW_AT_TI_max_frame_size(-18)
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 907,column 1,is_stmt,address _InitAuxPll,isa 0

	.dwfde $C$DW$CIE, _InitAuxPll
$C$DW$75	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$75, DW_AT_name("clock_source")
	.dwattr $C$DW$75, DW_AT_TI_symbol_name("_clock_source")
	.dwattr $C$DW$75, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$75, DW_AT_location[DW_OP_reg0]

$C$DW$76	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$76, DW_AT_name("imult")
	.dwattr $C$DW$76, DW_AT_TI_symbol_name("_imult")
	.dwattr $C$DW$76, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$76, DW_AT_location[DW_OP_reg1]

$C$DW$77	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$77, DW_AT_name("fmult")
	.dwattr $C$DW$77, DW_AT_TI_symbol_name("_fmult")
	.dwattr $C$DW$77, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$77, DW_AT_location[DW_OP_reg12]

$C$DW$78	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$78, DW_AT_name("divsel")
	.dwattr $C$DW$78, DW_AT_TI_symbol_name("_divsel")
	.dwattr $C$DW$78, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$78, DW_AT_location[DW_OP_reg14]

;----------------------------------------------------------------------
; 906 | void InitAuxPll(Uint16 clock_source, Uint16 imult, Uint16 fmult, Uint16
;     |  divsel)                                                               
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _InitAuxPll                   FR SIZE:  16           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter, 15 Auto,  0 SOE     *
;***************************************************************

_InitAuxPll:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#16                ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -18
$C$DW$79	.dwtag  DW_TAG_variable
	.dwattr $C$DW$79, DW_AT_name("t2PRD")
	.dwattr $C$DW$79, DW_AT_TI_symbol_name("_t2PRD")
	.dwattr $C$DW$79, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$79, DW_AT_location[DW_OP_breg20 -2]

$C$DW$80	.dwtag  DW_TAG_variable
	.dwattr $C$DW$80, DW_AT_name("clock_source")
	.dwattr $C$DW$80, DW_AT_TI_symbol_name("_clock_source")
	.dwattr $C$DW$80, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$80, DW_AT_location[DW_OP_breg20 -3]

$C$DW$81	.dwtag  DW_TAG_variable
	.dwattr $C$DW$81, DW_AT_name("imult")
	.dwattr $C$DW$81, DW_AT_TI_symbol_name("_imult")
	.dwattr $C$DW$81, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$81, DW_AT_location[DW_OP_breg20 -4]

$C$DW$82	.dwtag  DW_TAG_variable
	.dwattr $C$DW$82, DW_AT_name("fmult")
	.dwattr $C$DW$82, DW_AT_TI_symbol_name("_fmult")
	.dwattr $C$DW$82, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$82, DW_AT_location[DW_OP_breg20 -5]

$C$DW$83	.dwtag  DW_TAG_variable
	.dwattr $C$DW$83, DW_AT_name("divsel")
	.dwattr $C$DW$83, DW_AT_TI_symbol_name("_divsel")
	.dwattr $C$DW$83, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$83, DW_AT_location[DW_OP_breg20 -6]

$C$DW$84	.dwtag  DW_TAG_variable
	.dwattr $C$DW$84, DW_AT_name("i")
	.dwattr $C$DW$84, DW_AT_TI_symbol_name("_i")
	.dwattr $C$DW$84, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$84, DW_AT_location[DW_OP_breg20 -7]

$C$DW$85	.dwtag  DW_TAG_variable
	.dwattr $C$DW$85, DW_AT_name("counter")
	.dwattr $C$DW$85, DW_AT_TI_symbol_name("_counter")
	.dwattr $C$DW$85, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$85, DW_AT_location[DW_OP_breg20 -8]

$C$DW$86	.dwtag  DW_TAG_variable
	.dwattr $C$DW$86, DW_AT_name("started")
	.dwattr $C$DW$86, DW_AT_TI_symbol_name("_started")
	.dwattr $C$DW$86, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$86, DW_AT_location[DW_OP_breg20 -9]

$C$DW$87	.dwtag  DW_TAG_variable
	.dwattr $C$DW$87, DW_AT_name("t2TCR")
	.dwattr $C$DW$87, DW_AT_TI_symbol_name("_t2TCR")
	.dwattr $C$DW$87, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$87, DW_AT_location[DW_OP_breg20 -10]

$C$DW$88	.dwtag  DW_TAG_variable
	.dwattr $C$DW$88, DW_AT_name("t2TPR")
	.dwattr $C$DW$88, DW_AT_TI_symbol_name("_t2TPR")
	.dwattr $C$DW$88, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$88, DW_AT_location[DW_OP_breg20 -11]

$C$DW$89	.dwtag  DW_TAG_variable
	.dwattr $C$DW$89, DW_AT_name("t2TPRH")
	.dwattr $C$DW$89, DW_AT_TI_symbol_name("_t2TPRH")
	.dwattr $C$DW$89, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$89, DW_AT_location[DW_OP_breg20 -12]

$C$DW$90	.dwtag  DW_TAG_variable
	.dwattr $C$DW$90, DW_AT_name("t2SRC")
	.dwattr $C$DW$90, DW_AT_TI_symbol_name("_t2SRC")
	.dwattr $C$DW$90, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$90, DW_AT_location[DW_OP_breg20 -13]

$C$DW$91	.dwtag  DW_TAG_variable
	.dwattr $C$DW$91, DW_AT_name("t2Prescale")
	.dwattr $C$DW$91, DW_AT_TI_symbol_name("_t2Prescale")
	.dwattr $C$DW$91, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$91, DW_AT_location[DW_OP_breg20 -14]

$C$DW$92	.dwtag  DW_TAG_variable
	.dwattr $C$DW$92, DW_AT_name("attempts")
	.dwattr $C$DW$92, DW_AT_TI_symbol_name("_attempts")
	.dwattr $C$DW$92, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$92, DW_AT_location[DW_OP_breg20 -15]

;----------------------------------------------------------------------
; 908 | Uint16 i;                                                              
;----------------------------------------------------------------------
        MOV       *-SP[6],AR5           ; [CPU_ALU] |907| 
        MOV       *-SP[5],AR4           ; [CPU_ALU] |907| 
        MOV       *-SP[4],AH            ; [CPU_ALU] |907| 
        MOV       *-SP[3],AL            ; [CPU_ALU] |907| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 909,column 20,is_stmt,isa 0
;----------------------------------------------------------------------
; 909 | Uint16 counter = 0;                                                    
;----------------------------------------------------------------------
        MOV       *-SP[8],#0            ; [CPU_ALU] |909| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 910,column 20,is_stmt,isa 0
;----------------------------------------------------------------------
; 910 | Uint16 started = 0;                                                    
; 911 | Uint16 t2TCR, t2TPR, t2TPRH, t2SRC, t2Prescale, attempts;              
; 912 | Uint32 t2PRD;                                                          
;----------------------------------------------------------------------
        MOV       *-SP[9],#0            ; [CPU_ALU] |910| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 914,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 914 | if((clock_source == ClkCfgRegs.CLKSRCCTL2.bit.AUXOSCCLKSRCSEL) &&      
; 915 |    (imult        == ClkCfgRegs.AUXPLLMULT.bit.IMULT)           &&      
; 916 |    (fmult        == ClkCfgRegs.AUXPLLMULT.bit.FMULT)           &&      
; 917 |    (divsel       == ClkCfgRegs.AUXCLKDIVSEL.bit.AUXPLLDIV))            
; 919 |     //                                                                 
; 920 |     // Everything is set as required, so just return                   
; 921 |     //                                                                 
;----------------------------------------------------------------------
        MOVW      DP,#_ClkCfgRegs+10    ; [CPU_ARAU] 
        MOVZ      AR6,*-SP[3]           ; [CPU_ALU] |914| 
        MOV       AL,@$BLOCKED(_ClkCfgRegs)+10 ; [CPU_ALU] |914| 
        ANDB      AL,#0x03              ; [CPU_ALU] |914| 
        MOVU      ACC,AL                ; [CPU_ALU] |914| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |914| 
        B         $C$L38,NEQ            ; [CPU_ALU] |914| 
        ; branchcc occurs ; [] |914| 
        MOVZ      AR6,*-SP[4]           ; [CPU_ALU] |914| 
        MOV       AL,@$BLOCKED(_ClkCfgRegs)+30 ; [CPU_ALU] |914| 
        ANDB      AL,#0x7f              ; [CPU_ALU] |914| 
        MOVU      ACC,AL                ; [CPU_ALU] |914| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |914| 
        B         $C$L38,NEQ            ; [CPU_ALU] |914| 
        ; branchcc occurs ; [] |914| 
        MOVZ      AR6,*-SP[5]           ; [CPU_ALU] |914| 
        AND       AL,@$BLOCKED(_ClkCfgRegs)+30,#0x0300 ; [CPU_ALU] |914| 
        LSR       AL,8                  ; [CPU_ALU] |914| 
        MOVU      ACC,AL                ; [CPU_ALU] |914| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |914| 
        B         $C$L38,NEQ            ; [CPU_ALU] |914| 
        ; branchcc occurs ; [] |914| 
        MOVZ      AR6,*-SP[6]           ; [CPU_ALU] |914| 
        MOV       AL,@$BLOCKED(_ClkCfgRegs)+36 ; [CPU_ALU] |914| 
        ANDB      AL,#0x03              ; [CPU_ALU] |914| 
        MOVU      ACC,AL                ; [CPU_ALU] |914| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |914| 
        B         $C$L52,EQ             ; [CPU_ALU] |914| 
        ; branchcc occurs ; [] |914| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 922,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 922 | return;                                                                
;----------------------------------------------------------------------
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 925,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 925 | switch (clock_source)                                                  
; 927 |     case INT_OSC2:                                                     
;----------------------------------------------------------------------
        B         $C$L38,UNC            ; [CPU_ALU] |925| 
        ; branch occurs ; [] |925| 
$C$L35:    
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 928,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 928 | AuxIntOsc2Sel();                                                       
;----------------------------------------------------------------------
$C$DW$93	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$93, DW_AT_low_pc(0x00)
	.dwattr $C$DW$93, DW_AT_name("_AuxIntOsc2Sel")
	.dwattr $C$DW$93, DW_AT_TI_call

        LCR       #_AuxIntOsc2Sel       ; [CPU_ALU] |928| 
        ; call occurs [#_AuxIntOsc2Sel] ; [] |928| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 929,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 929 | break;                                                                 
; 931 | case XTAL_OSC:                                                         
;----------------------------------------------------------------------
        B         $C$L39,UNC            ; [CPU_ALU] |929| 
        ; branch occurs ; [] |929| 
$C$L36:    
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 932,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 932 | AuxXtalOscSel();                                                       
;----------------------------------------------------------------------
$C$DW$94	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$94, DW_AT_low_pc(0x00)
	.dwattr $C$DW$94, DW_AT_name("_AuxXtalOscSel")
	.dwattr $C$DW$94, DW_AT_TI_call

        LCR       #_AuxXtalOscSel       ; [CPU_ALU] |932| 
        ; call occurs [#_AuxXtalOscSel] ; [] |932| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 933,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 933 | break;                                                                 
; 935 | case AUXCLKIN:                                                         
;----------------------------------------------------------------------
        B         $C$L39,UNC            ; [CPU_ALU] |933| 
        ; branch occurs ; [] |933| 
$C$L37:    
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 936,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 936 | AuxAuxClkSel();                                                        
;----------------------------------------------------------------------
$C$DW$95	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$95, DW_AT_low_pc(0x00)
	.dwattr $C$DW$95, DW_AT_name("_AuxAuxClkSel")
	.dwattr $C$DW$95, DW_AT_TI_call

        LCR       #_AuxAuxClkSel        ; [CPU_ALU] |936| 
        ; call occurs [#_AuxAuxClkSel] ; [] |936| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 937,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 937 | break;                                                                 
;----------------------------------------------------------------------
        B         $C$L39,UNC            ; [CPU_ALU] |937| 
        ; branch occurs ; [] |937| 
$C$L38:    
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 925,column 5,is_stmt,isa 0
        MOV       AL,*-SP[3]            ; [CPU_ALU] |925| 
        B         $C$L35,EQ             ; [CPU_ALU] |925| 
        ; branchcc occurs ; [] |925| 
        CMPB      AL,#1                 ; [CPU_ALU] |925| 
        B         $C$L36,EQ             ; [CPU_ALU] |925| 
        ; branchcc occurs ; [] |925| 
        CMPB      AL,#4                 ; [CPU_ALU] |925| 
        B         $C$L37,EQ             ; [CPU_ALU] |925| 
        ; branchcc occurs ; [] |925| 
$C$L39:    
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 940,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 940 | EALLOW;                                                                
;----------------------------------------------------------------------
 EALLOW
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 941,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 941 | ClkCfgRegs.AUXPLLCTL1.bit.PLLCLKEN = 0;    // Bypass AUXPLL            
;----------------------------------------------------------------------
        MOVW      DP,#_ClkCfgRegs+24    ; [CPU_ARAU] 
        AND       @$BLOCKED(_ClkCfgRegs)+24,#0xfffd ; [CPU_ALU] |941| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 942,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 942 | EDIS;                                                                  
; 944 | //                                                                     
; 945 | // Delay of at least 120 OSCCLK cycles required post PLL bypass        
; 946 | //                                                                     
;----------------------------------------------------------------------
 EDIS
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 947,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 947 | asm(" RPT #120 || NOP");                                               
; 949 | //                                                                     
; 950 | // Backup Timer 2 settings                                             
; 951 | //                                                                     
;----------------------------------------------------------------------
 RPT #120 || NOP
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 952,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 952 | t2SRC = CpuSysRegs.TMR2CLKCTL.bit.TMR2CLKSRCSEL;                       
;----------------------------------------------------------------------
        MOVW      DP,#_CpuSysRegs+124   ; [CPU_ARAU] 
        MOV       AL,@$BLOCKED(_CpuSysRegs)+124 ; [CPU_ALU] |952| 
        ANDB      AL,#0x07              ; [CPU_ALU] |952| 
        MOV       *-SP[13],AL           ; [CPU_ALU] |952| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 953,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 953 | t2Prescale = CpuSysRegs.TMR2CLKCTL.bit.TMR2CLKPRESCALE;                
;----------------------------------------------------------------------
        AND       AL,@$BLOCKED(_CpuSysRegs)+124,#0x0038 ; [CPU_ALU] |953| 
        LSR       AL,3                  ; [CPU_ALU] |953| 
        MOV       *-SP[14],AL           ; [CPU_ALU] |953| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 954,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 954 | t2TCR = CpuTimer2Regs.TCR.all;                                         
;----------------------------------------------------------------------
        MOVW      DP,#_CpuTimer2Regs+4  ; [CPU_ARAU] 
        MOV       AL,@$BLOCKED(_CpuTimer2Regs)+4 ; [CPU_ALU] |954| 
        MOV       *-SP[10],AL           ; [CPU_ALU] |954| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 955,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 955 | t2PRD = CpuTimer2Regs.PRD.all;                                         
;----------------------------------------------------------------------
        MOVL      ACC,@$BLOCKED(_CpuTimer2Regs)+2 ; [CPU_ALU] |955| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |955| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 956,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 956 | t2TPR = CpuTimer2Regs.TPR.all;                                         
;----------------------------------------------------------------------
        MOV       AL,@$BLOCKED(_CpuTimer2Regs)+6 ; [CPU_ALU] |956| 
        MOV       *-SP[11],AL           ; [CPU_ALU] |956| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 957,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 957 | t2TPRH = CpuTimer2Regs.TPRH.all;                                       
; 959 | //                                                                     
; 960 | // Configure Timer 2 for AUXPLL as source in known configuration       
; 961 | //                                                                     
;----------------------------------------------------------------------
        MOV       AL,@$BLOCKED(_CpuTimer2Regs)+7 ; [CPU_ALU] |957| 
        MOV       *-SP[12],AL           ; [CPU_ALU] |957| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 962,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 962 | EALLOW;                                                                
;----------------------------------------------------------------------
 EALLOW
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 963,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 963 | CpuSysRegs.TMR2CLKCTL.bit.TMR2CLKSRCSEL = 0x6;                         
;----------------------------------------------------------------------
        MOVW      DP,#_CpuSysRegs+124   ; [CPU_ARAU] 
        AND       AL,@$BLOCKED(_CpuSysRegs)+124,#0xfff8 ; [CPU_ALU] |963| 
        ORB       AL,#0x06              ; [CPU_ALU] |963| 
        MOV       @$BLOCKED(_CpuSysRegs)+124,AL ; [CPU_ALU] |963| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 964,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 964 | CpuSysRegs.TMR2CLKCTL.bit.TMR2CLKPRESCALE = 0x0;    // Divide by 1     
;----------------------------------------------------------------------
        AND       @$BLOCKED(_CpuSysRegs)+124,#0xffc7 ; [CPU_ALU] |964| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 966,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 966 | CpuTimer2Regs.TCR.bit.TSS = 1;      // Stop timer                      
;----------------------------------------------------------------------
        MOVW      DP,#_CpuTimer2Regs+4  ; [CPU_ARAU] 
        OR        @$BLOCKED(_CpuTimer2Regs)+4,#0x0010 ; [CPU_ALU] |966| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 967,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 967 | CpuTimer2Regs.PRD.all = 10;         // Small PRD value to detect overfl
;     | ow                                                                     
;----------------------------------------------------------------------
        MOVB      ACC,#10               ; [CPU_ALU] |967| 
        MOVL      @$BLOCKED(_CpuTimer2Regs)+2,ACC ; [CPU_ALU] |967| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 968,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 968 | CpuTimer2Regs.TPR.all = 0;                                             
;----------------------------------------------------------------------
        MOV       @$BLOCKED(_CpuTimer2Regs)+6,#0 ; [CPU_ALU] |968| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 969,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 969 | CpuTimer2Regs.TPRH.all = 0;                                            
;----------------------------------------------------------------------
        MOV       @$BLOCKED(_CpuTimer2Regs)+7,#0 ; [CPU_ALU] |969| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 970,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 970 | CpuTimer2Regs.TCR.bit.TIE = 0;      // Disable timer interrupts        
; 972 | //                                                                     
; 973 | // Set AUX Divide by 8 to ensure that AUXPLLCLK <= SYSCLK/2 while using
; 974 | // Timer 2                                                             
; 975 | //                                                                     
;----------------------------------------------------------------------
        AND       @$BLOCKED(_CpuTimer2Regs)+4,#0xbfff ; [CPU_ALU] |970| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 976,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 976 | ClkCfgRegs.AUXCLKDIVSEL.bit.AUXPLLDIV = 0x3;                           
;----------------------------------------------------------------------
        MOVW      DP,#_ClkCfgRegs+36    ; [CPU_ARAU] 
        OR        @$BLOCKED(_ClkCfgRegs)+36,#0x0003 ; [CPU_ALU] |976| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 977,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 977 | EDIS;                                                                  
;----------------------------------------------------------------------
 EDIS
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 979,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 979 | while((counter < 5) && (started == 0))                                 
;----------------------------------------------------------------------
        B         $C$L45,UNC            ; [CPU_ALU] |979| 
        ; branch occurs ; [] |979| 
$C$L40:    
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 981,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 981 | EALLOW;                                                                
;----------------------------------------------------------------------
 EALLOW
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 982,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 982 | ClkCfgRegs.AUXPLLCTL1.bit.PLLEN = 0;    // Turn off AUXPLL             
;----------------------------------------------------------------------
        MOVW      DP,#_ClkCfgRegs+24    ; [CPU_ARAU] 
        AND       @$BLOCKED(_ClkCfgRegs)+24,#0xfffe ; [CPU_ALU] |982| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 983,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 983 | asm(" RPT #20 || NOP");                 // Small delay for power down  
; 985 | //                                                                     
; 986 | // Set integer and fractional multiplier, which automatically turns on 
; 987 | // the PLL                                                             
; 988 | //                                                                     
;----------------------------------------------------------------------
 RPT #20 || NOP
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 989,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 989 | ClkCfgRegs.AUXPLLMULT.all = ((fmult << 8U) | imult);                   
; 991 | //                                                                     
; 992 | // Enable AUXPLL                                                       
; 993 | //                                                                     
;----------------------------------------------------------------------
        MOV       ACC,*-SP[5] << #8     ; [CPU_ALU] |989| 
        OR        AL,*-SP[4]            ; [CPU_ALU] |989| 
        MOVU      ACC,AL                ; [CPU_ALU] |989| 
        MOVL      @$BLOCKED(_ClkCfgRegs)+30,ACC ; [CPU_ALU] |989| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 994,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 994 | ClkCfgRegs.AUXPLLCTL1.bit.PLLEN = 1;                                   
;----------------------------------------------------------------------
        OR        @$BLOCKED(_ClkCfgRegs)+24,#0x0001 ; [CPU_ALU] |994| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 995,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 995 | EDIS;                                                                  
; 997 | //                                                                     
; 998 | // Wait for the AUXPLL lock counter                                    
; 999 | //                                                                     
;----------------------------------------------------------------------
 EDIS
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 1000,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 1000 | while(ClkCfgRegs.AUXPLLSTS.bit.LOCKS != 1)                             
;----------------------------------------------------------------------
$C$L41:    
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 1000,column 15,is_stmt,isa 0
;----------------------------------------------------------------------
; 1002 | //                                                                     
; 1003 | // Uncomment to service the watchdog                                   
; 1004 | //                                                                     
; 1005 | // ServiceDog();                                                       
; 1008 | //                                                                     
; 1009 | // Enable AUXPLLCLK to be fed from AUX PLL                             
; 1010 | //                                                                     
;----------------------------------------------------------------------
        MOV       AL,@$BLOCKED(_ClkCfgRegs)+32 ; [CPU_ALU] |1000| 
        ANDB      AL,#0x01              ; [CPU_ALU] |1000| 
        CMPB      AL,#1                 ; [CPU_ALU] |1000| 
        B         $C$L41,NEQ            ; [CPU_ALU] |1000| 
        ; branchcc occurs ; [] |1000| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 1011,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 1011 | EALLOW;                                                                
;----------------------------------------------------------------------
 EALLOW
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 1012,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 1012 | ClkCfgRegs.AUXPLLCTL1.bit.PLLCLKEN = 1;                                
;----------------------------------------------------------------------
        OR        @$BLOCKED(_ClkCfgRegs)+24,#0x0002 ; [CPU_ALU] |1012| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 1013,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 1013 | asm(" RPT #20 || NOP");                                                
; 1015 | //                                                                     
; 1016 | // CPU Timer 2 will now be setup to be clocked from AUXPLLCLK. This is 
; 1017 | // used to test that the PLL has successfully started.                 
; 1018 | //                                                                     
;----------------------------------------------------------------------
 RPT #20 || NOP
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 1019,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 1019 | CpuTimer2Regs.TCR.bit.TRB = 1;      // Reload period value             
;----------------------------------------------------------------------
        MOVW      DP,#_CpuTimer2Regs+4  ; [CPU_ARAU] 
        OR        @$BLOCKED(_CpuTimer2Regs)+4,#0x0020 ; [CPU_ALU] |1019| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 1020,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 1020 | CpuTimer2Regs.TCR.bit.TSS = 0;      // Start Timer                     
; 1022 | //                                                                     
; 1023 | // Check to see timer is counting properly                             
; 1024 | //                                                                     
;----------------------------------------------------------------------
        AND       @$BLOCKED(_CpuTimer2Regs)+4,#0xffef ; [CPU_ALU] |1020| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 1025,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 1025 | for(i = 0; i < 1000; i++)                                              
;----------------------------------------------------------------------
        MOV       *-SP[7],#0            ; [CPU_ALU] |1025| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 1025,column 20,is_stmt,isa 0
;----------------------------------------------------------------------
; 1027 | //                                                                     
; 1028 | // Check overflow flag                                                 
; 1029 | //                                                                     
;----------------------------------------------------------------------
        CMP       *-SP[7],#1000         ; [CPU_ALU] |1025| 
        B         $C$L44,HIS            ; [CPU_ALU] |1025| 
        ; branchcc occurs ; [] |1025| 
$C$L42:    
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 1030,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 1030 | if(CpuTimer2Regs.TCR.bit.TIF)                                          
; 1032 |     //                                                                 
; 1033 |     // Clear overflow flag                                             
; 1034 |     //                                                                 
;----------------------------------------------------------------------
        MOVW      DP,#_CpuTimer2Regs+4  ; [CPU_ARAU] 
        TBIT      @$BLOCKED(_CpuTimer2Regs)+4,#15 ; [CPU_ALU] |1030| 
        B         $C$L43,NTC            ; [CPU_ALU] |1030| 
        ; branchcc occurs ; [] |1030| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 1035,column 17,is_stmt,isa 0
;----------------------------------------------------------------------
; 1035 | CpuTimer2Regs.TCR.bit.TIF = 1;                                         
; 1037 | //                                                                     
; 1038 | // Set flag to indicate PLL started and break out of for-loop          
; 1039 | //                                                                     
;----------------------------------------------------------------------
        OR        @$BLOCKED(_CpuTimer2Regs)+4,#0x8000 ; [CPU_ALU] |1035| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 1040,column 17,is_stmt,isa 0
;----------------------------------------------------------------------
; 1040 | started = 1;                                                           
;----------------------------------------------------------------------
        MOVB      *-SP[9],#1,UNC        ; [CPU_ALU] |1040| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 1041,column 17,is_stmt,isa 0
;----------------------------------------------------------------------
; 1041 | break;                                                                 
; 1045 | //                                                                     
; 1046 | // Stop timer                                                          
; 1047 | //                                                                     
;----------------------------------------------------------------------
        B         $C$L44,UNC            ; [CPU_ALU] |1041| 
        ; branch occurs ; [] |1041| 
$C$L43:    
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 1025,column 30,is_stmt,isa 0
        INC       *-SP[7]               ; [CPU_ALU] |1025| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 1025,column 20,is_stmt,isa 0
        CMP       *-SP[7],#1000         ; [CPU_ALU] |1025| 
        B         $C$L42,LO             ; [CPU_ALU] |1025| 
        ; branchcc occurs ; [] |1025| 
$C$L44:    
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 1048,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 1048 | CpuTimer2Regs.TCR.bit.TSS = 1;                                         
;----------------------------------------------------------------------
        OR        @$BLOCKED(_CpuTimer2Regs)+4,#0x0010 ; [CPU_ALU] |1048| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 1049,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 1049 | counter++;                                                             
;----------------------------------------------------------------------
        INC       *-SP[8]               ; [CPU_ALU] |1049| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 1050,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 1050 | EDIS;                                                                  
;----------------------------------------------------------------------
 EDIS
$C$L45:    
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 979,column 11,is_stmt,isa 0
        MOV       AL,*-SP[8]            ; [CPU_ALU] |979| 
        CMPB      AL,#5                 ; [CPU_ALU] |979| 
        B         $C$L46,HIS            ; [CPU_ALU] |979| 
        ; branchcc occurs ; [] |979| 
        MOV       AL,*-SP[9]            ; [CPU_ALU] |979| 
        B         $C$L40,EQ             ; [CPU_ALU] |979| 
        ; branchcc occurs ; [] |979| 
$C$L46:    
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 1053,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 1053 | if(started == 0)                                                       
; 1055 |     //                                                                 
; 1056 |     // AUX PLL may not have started. Reset multiplier to 0 (bypass PLL)
;     | .                                                                      
; 1057 |     //                                                                 
;----------------------------------------------------------------------
        MOV       AL,*-SP[9]            ; [CPU_ALU] |1053| 
        B         $C$L47,NEQ            ; [CPU_ALU] |1053| 
        ; branchcc occurs ; [] |1053| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 1058,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 1058 | EALLOW;                                                                
;----------------------------------------------------------------------
 EALLOW
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 1059,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 1059 | ClkCfgRegs.AUXPLLMULT.all = 0;                                         
;----------------------------------------------------------------------
        MOVB      ACC,#0                ; [CPU_ALU] |1059| 
        MOVW      DP,#_ClkCfgRegs+30    ; [CPU_ARAU] 
        MOVL      @$BLOCKED(_ClkCfgRegs)+30,ACC ; [CPU_ALU] |1059| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 1060,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 1060 | EDIS;                                                                  
; 1062 | //                                                                     
; 1063 | // The user should put some handler code here based on how this        
; 1064 | // condition should be handled in their application.                   
; 1065 | //                                                                     
;----------------------------------------------------------------------
 EDIS
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 1066,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 1066 | asm(" ESTOP0");                                                        
; 1069 | //                                                                     
; 1070 | // Slip Bit Monitor                                                    
; 1071 | // Re-lock routine for SLIP condition                                  
; 1072 | //                                                                     
;----------------------------------------------------------------------
 ESTOP0
$C$L47:    
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 1073,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 1073 | attempts = 0;                                                          
;----------------------------------------------------------------------
        MOV       *-SP[15],#0           ; [CPU_ALU] |1073| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 1074,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 1074 | while(ClkCfgRegs.AUXPLLSTS.bit.SLIPS && (attempts < 10))               
;----------------------------------------------------------------------
        B         $C$L50,UNC            ; [CPU_ALU] |1074| 
        ; branch occurs ; [] |1074| 
$C$L48:    
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 1076,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 1076 | EALLOW;                                                                
; 1077 | //                                                                     
; 1078 | // Bypass AUXPLL                                                       
; 1079 | //                                                                     
;----------------------------------------------------------------------
 EALLOW
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 1080,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 1080 | ClkCfgRegs.AUXPLLCTL1.bit.PLLCLKEN = 0;                                
; 1082 | //                                                                     
; 1083 | // Delay of at least 120 OSCCLK cycles required post PLL bypass        
; 1084 | //                                                                     
;----------------------------------------------------------------------
        AND       @$BLOCKED(_ClkCfgRegs)+24,#0xfffd ; [CPU_ALU] |1080| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 1085,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 1085 | asm(" RPT #120 || NOP");                                               
; 1087 | //                                                                     
; 1088 | // Turn off AUXPLL                                                     
; 1089 | //                                                                     
;----------------------------------------------------------------------
 RPT #120 || NOP
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 1090,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 1090 | ClkCfgRegs.AUXPLLCTL1.bit.PLLEN = 0;                                   
;----------------------------------------------------------------------
        AND       @$BLOCKED(_ClkCfgRegs)+24,#0xfffe ; [CPU_ALU] |1090| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 1091,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 1091 | asm(" RPT #20 || NOP");                                                
; 1093 | //                                                                     
; 1094 | // Set integer and fractional multiplier, which automatically turns    
; 1095 | // on the PLL                                                          
; 1096 | //                                                                     
;----------------------------------------------------------------------
 RPT #20 || NOP
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 1097,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 1097 | ClkCfgRegs.AUXPLLMULT.all = ((fmult << 8U) | imult);                   
; 1099 | //                                                                     
; 1100 | // Wait for the AUXPLL lock counter                                    
; 1101 | //                                                                     
;----------------------------------------------------------------------
        MOV       ACC,*-SP[5] << #8     ; [CPU_ALU] |1097| 
        OR        AL,*-SP[4]            ; [CPU_ALU] |1097| 
        MOVU      ACC,AL                ; [CPU_ALU] |1097| 
        MOVL      @$BLOCKED(_ClkCfgRegs)+30,ACC ; [CPU_ALU] |1097| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 1102,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 1102 | while(ClkCfgRegs.AUXPLLSTS.bit.LOCKS != 1);                            
;----------------------------------------------------------------------
$C$L49:    
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 1102,column 15,is_stmt,isa 0
;----------------------------------------------------------------------
; 1104 | //                                                                     
; 1105 | // Enable AUXPLLCLK to be fed from AUXPLL                              
; 1106 | //                                                                     
;----------------------------------------------------------------------
        MOV       AL,@$BLOCKED(_ClkCfgRegs)+32 ; [CPU_ALU] |1102| 
        ANDB      AL,#0x01              ; [CPU_ALU] |1102| 
        CMPB      AL,#1                 ; [CPU_ALU] |1102| 
        B         $C$L49,NEQ            ; [CPU_ALU] |1102| 
        ; branchcc occurs ; [] |1102| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 1107,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 1107 | ClkCfgRegs.AUXPLLCTL1.bit.PLLCLKEN = 1;                                
;----------------------------------------------------------------------
        OR        @$BLOCKED(_ClkCfgRegs)+24,#0x0002 ; [CPU_ALU] |1107| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 1108,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 1108 | asm(" RPT #20 || NOP");                                                
;----------------------------------------------------------------------
 RPT #20 || NOP
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 1110,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 1110 | attempts++;                                                            
;----------------------------------------------------------------------
        INC       *-SP[15]              ; [CPU_ALU] |1110| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 1111,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 1111 | EDIS;                                                                  
; 1114 | //                                                                     
; 1115 | // Set divider to desired value                                        
; 1116 | //                                                                     
;----------------------------------------------------------------------
 EDIS
$C$L50:    
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 1074,column 11,is_stmt,isa 0
        MOVW      DP,#_ClkCfgRegs+32    ; [CPU_ARAU] 
        TBIT      @$BLOCKED(_ClkCfgRegs)+32,#1 ; [CPU_ALU] |1074| 
        B         $C$L51,NTC            ; [CPU_ALU] |1074| 
        ; branchcc occurs ; [] |1074| 
        MOV       AL,*-SP[15]           ; [CPU_ALU] |1074| 
        CMPB      AL,#10                ; [CPU_ALU] |1074| 
        B         $C$L48,LO             ; [CPU_ALU] |1074| 
        ; branchcc occurs ; [] |1074| 
$C$L51:    
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 1117,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 1117 | EALLOW;                                                                
;----------------------------------------------------------------------
 EALLOW
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 1118,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 1118 | ClkCfgRegs.AUXCLKDIVSEL.bit.AUXPLLDIV = divsel;                        
; 1120 | //                                                                     
; 1121 | // Restore Timer 2 configuration                                       
; 1122 | //                                                                     
;----------------------------------------------------------------------
        MOV       AL,*-SP[6]            ; [CPU_ALU] |1118| 
        AND       AH,@$BLOCKED(_ClkCfgRegs)+36,#0xfffc ; [CPU_ALU] |1118| 
        ANDB      AL,#0x03              ; [CPU_ALU] |1118| 
        OR        AL,AH                 ; [CPU_ALU] |1118| 
        MOV       @$BLOCKED(_ClkCfgRegs)+36,AL ; [CPU_ALU] |1118| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 1123,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 1123 | CpuSysRegs.TMR2CLKCTL.bit.TMR2CLKSRCSEL = t2SRC;                       
;----------------------------------------------------------------------
        MOVW      DP,#_CpuSysRegs+124   ; [CPU_ARAU] 
        MOV       AL,*-SP[13]           ; [CPU_ALU] |1123| 
        ANDB      AL,#0x07              ; [CPU_ALU] |1123| 
        AND       AH,@$BLOCKED(_CpuSysRegs)+124,#0xfff8 ; [CPU_FPU] |1123| 
        OR        AL,AH                 ; [CPU_ALU] |1123| 
        MOV       @$BLOCKED(_CpuSysRegs)+124,AL ; [CPU_ALU] |1123| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 1124,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 1124 | CpuSysRegs.TMR2CLKCTL.bit.TMR2CLKPRESCALE = t2Prescale;                
;----------------------------------------------------------------------
        MOV       AL,*-SP[14]           ; [CPU_ALU] |1124| 
        ANDB      AL,#0x07              ; [CPU_ALU] |1124| 
        LSL       AL,3                  ; [CPU_ALU] |1124| 
        AND       AH,@$BLOCKED(_CpuSysRegs)+124,#0xffc7 ; [CPU_FPU] |1124| 
        OR        AL,AH                 ; [CPU_ALU] |1124| 
        MOV       @$BLOCKED(_CpuSysRegs)+124,AL ; [CPU_ALU] |1124| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 1125,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 1125 | CpuTimer2Regs.TCR.all = t2TCR;                                         
;----------------------------------------------------------------------
        MOV       AL,*-SP[10]           ; [CPU_ALU] |1125| 
        MOVW      DP,#_CpuTimer2Regs+4  ; [CPU_ARAU] 
        MOV       @$BLOCKED(_CpuTimer2Regs)+4,AL ; [CPU_ALU] |1125| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 1126,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 1126 | CpuTimer2Regs.PRD.all = t2PRD;                                         
;----------------------------------------------------------------------
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |1126| 
        MOVL      @$BLOCKED(_CpuTimer2Regs)+2,ACC ; [CPU_ALU] |1126| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 1127,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 1127 | CpuTimer2Regs.TPR.all = t2TPR;                                         
;----------------------------------------------------------------------
        MOV       AL,*-SP[11]           ; [CPU_ALU] |1127| 
        MOV       @$BLOCKED(_CpuTimer2Regs)+6,AL ; [CPU_ALU] |1127| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 1128,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 1128 | CpuTimer2Regs.TPRH.all = t2TPRH;                                       
; 1130 | //                                                                     
; 1131 | // Reload period value                                                 
; 1132 | //                                                                     
;----------------------------------------------------------------------
        MOV       AL,*-SP[12]           ; [CPU_ALU] |1128| 
        MOV       @$BLOCKED(_CpuTimer2Regs)+7,AL ; [CPU_ALU] |1128| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 1133,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 1133 | CpuTimer2Regs.TCR.bit.TRB = 1;                                         
;----------------------------------------------------------------------
        OR        @$BLOCKED(_CpuTimer2Regs)+4,#0x0020 ; [CPU_ALU] |1133| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 1134,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 1134 | EDIS;                                                                  
;----------------------------------------------------------------------
 EDIS
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 1135,column 1,is_stmt,isa 0
$C$L52:    
        SUBB      SP,#16                ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
        SPM       #0                    ; [CPU_ALU] 
$C$DW$96	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$96, DW_AT_low_pc(0x00)
	.dwattr $C$DW$96, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$74, DW_AT_TI_end_file("C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c")
	.dwattr $C$DW$74, DW_AT_TI_end_line(0x46f)
	.dwattr $C$DW$74, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$74

	.sect	".text"
	.clink
	.global	_CsmUnlock

$C$DW$97	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$97, DW_AT_name("CsmUnlock")
	.dwattr $C$DW$97, DW_AT_low_pc(_CsmUnlock)
	.dwattr $C$DW$97, DW_AT_high_pc(0x00)
	.dwattr $C$DW$97, DW_AT_TI_symbol_name("_CsmUnlock")
	.dwattr $C$DW$97, DW_AT_external
	.dwattr $C$DW$97, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$97, DW_AT_TI_begin_file("C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c")
	.dwattr $C$DW$97, DW_AT_TI_begin_line(0x475)
	.dwattr $C$DW$97, DW_AT_TI_begin_column(0x08)
	.dwattr $C$DW$97, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 1142,column 1,is_stmt,address _CsmUnlock,isa 0

	.dwfde $C$DW$CIE, _CsmUnlock
;----------------------------------------------------------------------
; 1141 | Uint16 CsmUnlock(void)                                                 
; 1143 | volatile Uint16 temp;                                                  
; 1145 | //                                                                     
; 1146 | // Load the key registers with the current password. The 0xFFFF's are d
;     | ummy                                                                   
; 1147 | // passwords.  User should replace them with the correct password for t
;     | he                                                                     
; 1148 | // DSP.                                                                
; 1149 | //                                                                     
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _CsmUnlock                    FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_CsmUnlock:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 1150,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 1150 | EALLOW;                                                                
;----------------------------------------------------------------------
 EALLOW
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 1151,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 1151 | DcsmZ1Regs.Z1_CSMKEY0 = 0xFFFFFFFF;                                    
;----------------------------------------------------------------------
        MOVB      ACC,#0                ; [CPU_ALU] |1151| 
        MOVW      DP,#_DcsmZ1Regs+16    ; [CPU_ARAU] 
        SUBB      ACC,#1                ; [CPU_ALU] |1151| 
        MOVL      @$BLOCKED(_DcsmZ1Regs)+16,ACC ; [CPU_ALU] |1151| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 1152,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 1152 | DcsmZ1Regs.Z1_CSMKEY1 = 0xFFFFFFFF;                                    
;----------------------------------------------------------------------
        MOVB      ACC,#0                ; [CPU_ALU] |1152| 
        SUBB      ACC,#1                ; [CPU_ALU] |1152| 
        MOVL      @$BLOCKED(_DcsmZ1Regs)+18,ACC ; [CPU_ALU] |1152| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 1153,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 1153 | DcsmZ1Regs.Z1_CSMKEY2 = 0xFFFFFFFF;                                    
;----------------------------------------------------------------------
        MOVB      ACC,#0                ; [CPU_ALU] |1153| 
        SUBB      ACC,#1                ; [CPU_ALU] |1153| 
        MOVL      @$BLOCKED(_DcsmZ1Regs)+20,ACC ; [CPU_ALU] |1153| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 1154,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 1154 | DcsmZ1Regs.Z1_CSMKEY3 = 0xFFFFFFFF;                                    
;----------------------------------------------------------------------
        MOVB      ACC,#0                ; [CPU_ALU] |1154| 
        SUBB      ACC,#1                ; [CPU_ALU] |1154| 
        MOVL      @$BLOCKED(_DcsmZ1Regs)+22,ACC ; [CPU_ALU] |1154| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 1156,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 1156 | DcsmZ2Regs.Z2_CSMKEY0 = 0xFFFFFFFF;                                    
;----------------------------------------------------------------------
        MOVB      ACC,#0                ; [CPU_ALU] |1156| 
        MOVW      DP,#_DcsmZ2Regs+16    ; [CPU_ARAU] 
        SUBB      ACC,#1                ; [CPU_ALU] |1156| 
        MOVL      @$BLOCKED(_DcsmZ2Regs)+16,ACC ; [CPU_ALU] |1156| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 1157,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 1157 | DcsmZ2Regs.Z2_CSMKEY1 = 0xFFFFFFFF;                                    
;----------------------------------------------------------------------
        MOVB      ACC,#0                ; [CPU_ALU] |1157| 
        SUBB      ACC,#1                ; [CPU_ALU] |1157| 
        MOVL      @$BLOCKED(_DcsmZ2Regs)+18,ACC ; [CPU_ALU] |1157| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 1158,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 1158 | DcsmZ2Regs.Z2_CSMKEY2 = 0xFFFFFFFF;                                    
;----------------------------------------------------------------------
        MOVB      ACC,#0                ; [CPU_ALU] |1158| 
        SUBB      ACC,#1                ; [CPU_ALU] |1158| 
        MOVL      @$BLOCKED(_DcsmZ2Regs)+20,ACC ; [CPU_ALU] |1158| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 1159,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 1159 | DcsmZ2Regs.Z2_CSMKEY3 = 0xFFFFFFFF;                                    
;----------------------------------------------------------------------
        MOVB      ACC,#0                ; [CPU_ALU] |1159| 
        SUBB      ACC,#1                ; [CPU_ALU] |1159| 
        MOVL      @$BLOCKED(_DcsmZ2Regs)+22,ACC ; [CPU_ALU] |1159| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 1160,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 1160 | EDIS;                                                                  
;----------------------------------------------------------------------
 EDIS
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 1162,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 1162 | return(0);                                                             
;----------------------------------------------------------------------
        MOVB      AL,#0                 ; [CPU_ALU] |1162| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 1163,column 1,is_stmt,isa 0
        SPM       #0                    ; [CPU_ALU] 
$C$DW$98	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$98, DW_AT_low_pc(0x00)
	.dwattr $C$DW$98, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$97, DW_AT_TI_end_file("C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c")
	.dwattr $C$DW$97, DW_AT_TI_end_line(0x48b)
	.dwattr $C$DW$97, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$97

	.sect	".text"
	.clink
	.global	_SysIntOsc1Sel

$C$DW$99	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$99, DW_AT_name("SysIntOsc1Sel")
	.dwattr $C$DW$99, DW_AT_low_pc(_SysIntOsc1Sel)
	.dwattr $C$DW$99, DW_AT_high_pc(0x00)
	.dwattr $C$DW$99, DW_AT_TI_symbol_name("_SysIntOsc1Sel")
	.dwattr $C$DW$99, DW_AT_external
	.dwattr $C$DW$99, DW_AT_TI_begin_file("C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c")
	.dwattr $C$DW$99, DW_AT_TI_begin_line(0x490)
	.dwattr $C$DW$99, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$99, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 1169,column 1,is_stmt,address _SysIntOsc1Sel,isa 0

	.dwfde $C$DW$CIE, _SysIntOsc1Sel
;----------------------------------------------------------------------
; 1168 | void SysIntOsc1Sel(void)                                               
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _SysIntOsc1Sel                FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_SysIntOsc1Sel:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 1170,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 1170 | EALLOW;                                                                
;----------------------------------------------------------------------
 EALLOW
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 1171,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 1171 | ClkCfgRegs.CLKSRCCTL1.bit.OSCCLKSRCSEL = 2;     // Clk Src = INTOSC1   
;----------------------------------------------------------------------
        MOVW      DP,#_ClkCfgRegs+8     ; [CPU_ARAU] 
        AND       AL,@$BLOCKED(_ClkCfgRegs)+8,#0xfffc ; [CPU_ALU] |1171| 
        ORB       AL,#0x02              ; [CPU_ALU] |1171| 
        MOV       @$BLOCKED(_ClkCfgRegs)+8,AL ; [CPU_ALU] |1171| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 1172,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 1172 | SYSCTRL_CLKSRCCTL1_DELAY;                                              
;----------------------------------------------------------------------
 RPT #250 || NOP 
 RPT #50 || NOP
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 1173,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 1173 | ClkCfgRegs.CLKSRCCTL1.bit.XTALOFF=1;            // Turn off XTALOSC    
;----------------------------------------------------------------------
        OR        @$BLOCKED(_ClkCfgRegs)+8,#0x0010 ; [CPU_ALU] |1173| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 1174,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 1174 | EDIS;                                                                  
;----------------------------------------------------------------------
 EDIS
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 1175,column 1,is_stmt,isa 0
        SPM       #0                    ; [CPU_ALU] 
$C$DW$100	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$100, DW_AT_low_pc(0x00)
	.dwattr $C$DW$100, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$99, DW_AT_TI_end_file("C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c")
	.dwattr $C$DW$99, DW_AT_TI_end_line(0x497)
	.dwattr $C$DW$99, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$99

	.sect	".text"
	.clink
	.global	_SysIntOsc2Sel

$C$DW$101	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$101, DW_AT_name("SysIntOsc2Sel")
	.dwattr $C$DW$101, DW_AT_low_pc(_SysIntOsc2Sel)
	.dwattr $C$DW$101, DW_AT_high_pc(0x00)
	.dwattr $C$DW$101, DW_AT_TI_symbol_name("_SysIntOsc2Sel")
	.dwattr $C$DW$101, DW_AT_external
	.dwattr $C$DW$101, DW_AT_TI_begin_file("C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c")
	.dwattr $C$DW$101, DW_AT_TI_begin_line(0x49c)
	.dwattr $C$DW$101, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$101, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 1181,column 1,is_stmt,address _SysIntOsc2Sel,isa 0

	.dwfde $C$DW$CIE, _SysIntOsc2Sel
;----------------------------------------------------------------------
; 1180 | void SysIntOsc2Sel(void)                                               
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _SysIntOsc2Sel                FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_SysIntOsc2Sel:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 1182,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 1182 | EALLOW;                                                                
;----------------------------------------------------------------------
 EALLOW
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 1183,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 1183 | ClkCfgRegs.CLKSRCCTL1.bit.INTOSC2OFF=0;         // Turn on INTOSC2     
;----------------------------------------------------------------------
        MOVW      DP,#_ClkCfgRegs+8     ; [CPU_ARAU] 
        AND       @$BLOCKED(_ClkCfgRegs)+8,#0xfff7 ; [CPU_ALU] |1183| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 1184,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 1184 | SYSCTRL_CLKSRCCTL1_DELAY;                                              
;----------------------------------------------------------------------
 RPT #250 || NOP 
 RPT #50 || NOP
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 1185,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 1185 | ClkCfgRegs.CLKSRCCTL1.bit.OSCCLKSRCSEL = 0;     // Clk Src = INTOSC2   
;----------------------------------------------------------------------
        AND       @$BLOCKED(_ClkCfgRegs)+8,#0xfffc ; [CPU_ALU] |1185| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 1186,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 1186 | SYSCTRL_CLKSRCCTL1_DELAY;                                              
;----------------------------------------------------------------------
 RPT #250 || NOP 
 RPT #50 || NOP
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 1187,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 1187 | ClkCfgRegs.CLKSRCCTL1.bit.XTALOFF=1;            // Turn off XTALOSC    
;----------------------------------------------------------------------
        OR        @$BLOCKED(_ClkCfgRegs)+8,#0x0010 ; [CPU_ALU] |1187| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 1188,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 1188 | EDIS;                                                                  
;----------------------------------------------------------------------
 EDIS
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 1189,column 1,is_stmt,isa 0
        SPM       #0                    ; [CPU_ALU] 
$C$DW$102	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$102, DW_AT_low_pc(0x00)
	.dwattr $C$DW$102, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$101, DW_AT_TI_end_file("C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c")
	.dwattr $C$DW$101, DW_AT_TI_end_line(0x4a5)
	.dwattr $C$DW$101, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$101

	.sect	".text"
	.clink
	.global	_SysXtalOscSel

$C$DW$103	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$103, DW_AT_name("SysXtalOscSel")
	.dwattr $C$DW$103, DW_AT_low_pc(_SysXtalOscSel)
	.dwattr $C$DW$103, DW_AT_high_pc(0x00)
	.dwattr $C$DW$103, DW_AT_TI_symbol_name("_SysXtalOscSel")
	.dwattr $C$DW$103, DW_AT_external
	.dwattr $C$DW$103, DW_AT_TI_begin_file("C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c")
	.dwattr $C$DW$103, DW_AT_TI_begin_line(0x4aa)
	.dwattr $C$DW$103, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$103, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 1195,column 1,is_stmt,address _SysXtalOscSel,isa 0

	.dwfde $C$DW$CIE, _SysXtalOscSel
;----------------------------------------------------------------------
; 1194 | void SysXtalOscSel(void)                                               
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _SysXtalOscSel                FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_SysXtalOscSel:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 1196,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 1196 | EALLOW;                                                                
;----------------------------------------------------------------------
 EALLOW
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 1197,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 1197 | ClkCfgRegs.CLKSRCCTL1.bit.XTALOFF=0;            // Turn on XTALOSC     
;----------------------------------------------------------------------
        MOVW      DP,#_ClkCfgRegs+8     ; [CPU_ARAU] 
        AND       @$BLOCKED(_ClkCfgRegs)+8,#0xffef ; [CPU_ALU] |1197| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 1198,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 1198 | SYSCTRL_CLKSRCCTL1_DELAY;                                              
;----------------------------------------------------------------------
 RPT #250 || NOP 
 RPT #50 || NOP
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 1199,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 1199 | ClkCfgRegs.CLKSRCCTL1.bit.OSCCLKSRCSEL = 1;     // Clk Src = XTAL      
;----------------------------------------------------------------------
        AND       AL,@$BLOCKED(_ClkCfgRegs)+8,#0xfffc ; [CPU_ALU] |1199| 
        ORB       AL,#0x01              ; [CPU_ALU] |1199| 
        MOV       @$BLOCKED(_ClkCfgRegs)+8,AL ; [CPU_ALU] |1199| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 1200,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 1200 | EDIS;                                                                  
;----------------------------------------------------------------------
 EDIS
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 1201,column 1,is_stmt,isa 0
        SPM       #0                    ; [CPU_ALU] 
$C$DW$104	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$104, DW_AT_low_pc(0x00)
	.dwattr $C$DW$104, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$103, DW_AT_TI_end_file("C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c")
	.dwattr $C$DW$103, DW_AT_TI_end_line(0x4b1)
	.dwattr $C$DW$103, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$103

	.sect	".text"
	.clink
	.global	_AuxIntOsc2Sel

$C$DW$105	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$105, DW_AT_name("AuxIntOsc2Sel")
	.dwattr $C$DW$105, DW_AT_low_pc(_AuxIntOsc2Sel)
	.dwattr $C$DW$105, DW_AT_high_pc(0x00)
	.dwattr $C$DW$105, DW_AT_TI_symbol_name("_AuxIntOsc2Sel")
	.dwattr $C$DW$105, DW_AT_external
	.dwattr $C$DW$105, DW_AT_TI_begin_file("C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c")
	.dwattr $C$DW$105, DW_AT_TI_begin_line(0x4b6)
	.dwattr $C$DW$105, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$105, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 1207,column 1,is_stmt,address _AuxIntOsc2Sel,isa 0

	.dwfde $C$DW$CIE, _AuxIntOsc2Sel
;----------------------------------------------------------------------
; 1206 | void AuxIntOsc2Sel(void)                                               
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _AuxIntOsc2Sel                FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_AuxIntOsc2Sel:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 1208,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 1208 | EALLOW;                                                                
;----------------------------------------------------------------------
 EALLOW
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 1209,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 1209 | ClkCfgRegs.CLKSRCCTL1.bit.INTOSC2OFF=0;         // Turn on INTOSC2     
;----------------------------------------------------------------------
        MOVW      DP,#_ClkCfgRegs+8     ; [CPU_ARAU] 
        AND       @$BLOCKED(_ClkCfgRegs)+8,#0xfff7 ; [CPU_ALU] |1209| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 1210,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 1210 | ClkCfgRegs.CLKSRCCTL2.bit.AUXOSCCLKSRCSEL = 0;  // Clk Src = INTOSC2   
;----------------------------------------------------------------------
        AND       @$BLOCKED(_ClkCfgRegs)+10,#0xfffc ; [CPU_ALU] |1210| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 1211,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 1211 | EDIS;                                                                  
;----------------------------------------------------------------------
 EDIS
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 1212,column 1,is_stmt,isa 0
        SPM       #0                    ; [CPU_ALU] 
$C$DW$106	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$106, DW_AT_low_pc(0x00)
	.dwattr $C$DW$106, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$105, DW_AT_TI_end_file("C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c")
	.dwattr $C$DW$105, DW_AT_TI_end_line(0x4bc)
	.dwattr $C$DW$105, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$105

	.sect	".text"
	.clink
	.global	_AuxXtalOscSel

$C$DW$107	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$107, DW_AT_name("AuxXtalOscSel")
	.dwattr $C$DW$107, DW_AT_low_pc(_AuxXtalOscSel)
	.dwattr $C$DW$107, DW_AT_high_pc(0x00)
	.dwattr $C$DW$107, DW_AT_TI_symbol_name("_AuxXtalOscSel")
	.dwattr $C$DW$107, DW_AT_external
	.dwattr $C$DW$107, DW_AT_TI_begin_file("C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c")
	.dwattr $C$DW$107, DW_AT_TI_begin_line(0x4c1)
	.dwattr $C$DW$107, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$107, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 1218,column 1,is_stmt,address _AuxXtalOscSel,isa 0

	.dwfde $C$DW$CIE, _AuxXtalOscSel
;----------------------------------------------------------------------
; 1217 | void AuxXtalOscSel(void)                                               
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _AuxXtalOscSel                FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_AuxXtalOscSel:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 1219,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 1219 | EALLOW;                                                                
;----------------------------------------------------------------------
 EALLOW
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 1220,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 1220 | ClkCfgRegs.CLKSRCCTL1.bit.XTALOFF=0;            // Turn on XTALOSC     
;----------------------------------------------------------------------
        MOVW      DP,#_ClkCfgRegs+8     ; [CPU_ARAU] 
        AND       @$BLOCKED(_ClkCfgRegs)+8,#0xffef ; [CPU_ALU] |1220| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 1221,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 1221 | ClkCfgRegs.CLKSRCCTL2.bit.AUXOSCCLKSRCSEL = 1;  // Clk Src = XTAL      
;----------------------------------------------------------------------
        AND       AL,@$BLOCKED(_ClkCfgRegs)+10,#0xfffc ; [CPU_ALU] |1221| 
        ORB       AL,#0x01              ; [CPU_ALU] |1221| 
        MOV       @$BLOCKED(_ClkCfgRegs)+10,AL ; [CPU_ALU] |1221| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 1222,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 1222 | EDIS;                                                                  
;----------------------------------------------------------------------
 EDIS
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 1223,column 1,is_stmt,isa 0
        SPM       #0                    ; [CPU_ALU] 
$C$DW$108	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$108, DW_AT_low_pc(0x00)
	.dwattr $C$DW$108, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$107, DW_AT_TI_end_file("C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c")
	.dwattr $C$DW$107, DW_AT_TI_end_line(0x4c7)
	.dwattr $C$DW$107, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$107

	.sect	".text"
	.clink
	.global	_AuxAuxClkSel

$C$DW$109	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$109, DW_AT_name("AuxAuxClkSel")
	.dwattr $C$DW$109, DW_AT_low_pc(_AuxAuxClkSel)
	.dwattr $C$DW$109, DW_AT_high_pc(0x00)
	.dwattr $C$DW$109, DW_AT_TI_symbol_name("_AuxAuxClkSel")
	.dwattr $C$DW$109, DW_AT_external
	.dwattr $C$DW$109, DW_AT_TI_begin_file("C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c")
	.dwattr $C$DW$109, DW_AT_TI_begin_line(0x4cc)
	.dwattr $C$DW$109, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$109, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 1229,column 1,is_stmt,address _AuxAuxClkSel,isa 0

	.dwfde $C$DW$CIE, _AuxAuxClkSel
;----------------------------------------------------------------------
; 1228 | void AuxAuxClkSel(void)                                                
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _AuxAuxClkSel                 FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_AuxAuxClkSel:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 1230,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 1230 | EALLOW;                                                                
;----------------------------------------------------------------------
 EALLOW
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 1231,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 1231 | ClkCfgRegs.CLKSRCCTL2.bit.AUXOSCCLKSRCSEL = 2; // Clk Src = XTAL       
;----------------------------------------------------------------------
        MOVW      DP,#_ClkCfgRegs+10    ; [CPU_ARAU] 
        AND       AL,@$BLOCKED(_ClkCfgRegs)+10,#0xfffc ; [CPU_ALU] |1231| 
        ORB       AL,#0x02              ; [CPU_ALU] |1231| 
        MOV       @$BLOCKED(_ClkCfgRegs)+10,AL ; [CPU_ALU] |1231| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 1232,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 1232 | EDIS;                                                                  
;----------------------------------------------------------------------
 EDIS
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 1233,column 1,is_stmt,isa 0
        SPM       #0                    ; [CPU_ALU] 
$C$DW$110	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$110, DW_AT_low_pc(0x00)
	.dwattr $C$DW$110, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$109, DW_AT_TI_end_file("C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c")
	.dwattr $C$DW$109, DW_AT_TI_end_line(0x4d1)
	.dwattr $C$DW$109, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$109

	.sect	".text"
	.clink
	.global	_IDLE

$C$DW$111	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$111, DW_AT_name("IDLE")
	.dwattr $C$DW$111, DW_AT_low_pc(_IDLE)
	.dwattr $C$DW$111, DW_AT_high_pc(0x00)
	.dwattr $C$DW$111, DW_AT_TI_symbol_name("_IDLE")
	.dwattr $C$DW$111, DW_AT_external
	.dwattr $C$DW$111, DW_AT_TI_begin_file("C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c")
	.dwattr $C$DW$111, DW_AT_TI_begin_line(0x4d6)
	.dwattr $C$DW$111, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$111, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 1239,column 1,is_stmt,address _IDLE,isa 0

	.dwfde $C$DW$CIE, _IDLE
;----------------------------------------------------------------------
; 1238 | void IDLE(void)                                                        
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _IDLE                         FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_IDLE:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 1240,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 1240 | EALLOW;                                                                
;----------------------------------------------------------------------
 EALLOW
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 1241,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 1241 | CpuSysRegs.LPMCR.bit.LPM = LPM_IDLE;                                   
;----------------------------------------------------------------------
        MOVW      DP,#_CpuSysRegs+118   ; [CPU_ARAU] 
        AND       @$BLOCKED(_CpuSysRegs)+118,#0xfffc ; [CPU_ALU] |1241| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 1242,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 1242 | EDIS;                                                                  
;----------------------------------------------------------------------
 EDIS
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 1243,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 1243 | asm(" IDLE");                                                          
;----------------------------------------------------------------------
 IDLE
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 1244,column 1,is_stmt,isa 0
        SPM       #0                    ; [CPU_ALU] 
$C$DW$112	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$112, DW_AT_low_pc(0x00)
	.dwattr $C$DW$112, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$111, DW_AT_TI_end_file("C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c")
	.dwattr $C$DW$111, DW_AT_TI_end_line(0x4dc)
	.dwattr $C$DW$111, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$111

	.sect	".text"
	.clink
	.global	_STANDBY

$C$DW$113	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$113, DW_AT_name("STANDBY")
	.dwattr $C$DW$113, DW_AT_low_pc(_STANDBY)
	.dwattr $C$DW$113, DW_AT_high_pc(0x00)
	.dwattr $C$DW$113, DW_AT_TI_symbol_name("_STANDBY")
	.dwattr $C$DW$113, DW_AT_external
	.dwattr $C$DW$113, DW_AT_TI_begin_file("C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c")
	.dwattr $C$DW$113, DW_AT_TI_begin_line(0x4e1)
	.dwattr $C$DW$113, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$113, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 1250,column 1,is_stmt,address _STANDBY,isa 0

	.dwfde $C$DW$CIE, _STANDBY
;----------------------------------------------------------------------
; 1249 | void STANDBY(void)                                                     
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _STANDBY                      FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_STANDBY:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 1251,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 1251 | EALLOW;                                                                
;----------------------------------------------------------------------
 EALLOW
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 1252,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 1252 | CpuSysRegs.LPMCR.bit.LPM = LPM_STANDBY;                                
;----------------------------------------------------------------------
        MOVW      DP,#_CpuSysRegs+118   ; [CPU_ARAU] 
        AND       AL,@$BLOCKED(_CpuSysRegs)+118,#0xfffc ; [CPU_ALU] |1252| 
        ORB       AL,#0x01              ; [CPU_ALU] |1252| 
        MOV       @$BLOCKED(_CpuSysRegs)+118,AL ; [CPU_ALU] |1252| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 1253,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 1253 | EDIS;                                                                  
;----------------------------------------------------------------------
 EDIS
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 1254,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 1254 | asm(" IDLE");                                                          
;----------------------------------------------------------------------
 IDLE
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 1255,column 1,is_stmt,isa 0
        SPM       #0                    ; [CPU_ALU] 
$C$DW$114	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$114, DW_AT_low_pc(0x00)
	.dwattr $C$DW$114, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$113, DW_AT_TI_end_file("C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c")
	.dwattr $C$DW$113, DW_AT_TI_end_line(0x4e7)
	.dwattr $C$DW$113, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$113

	.sect	".text"
	.clink
	.global	_HALT

$C$DW$115	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$115, DW_AT_name("HALT")
	.dwattr $C$DW$115, DW_AT_low_pc(_HALT)
	.dwattr $C$DW$115, DW_AT_high_pc(0x00)
	.dwattr $C$DW$115, DW_AT_TI_symbol_name("_HALT")
	.dwattr $C$DW$115, DW_AT_external
	.dwattr $C$DW$115, DW_AT_TI_begin_file("C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c")
	.dwattr $C$DW$115, DW_AT_TI_begin_line(0x4ec)
	.dwattr $C$DW$115, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$115, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 1261,column 1,is_stmt,address _HALT,isa 0

	.dwfde $C$DW$CIE, _HALT
;----------------------------------------------------------------------
; 1260 | void HALT(void)                                                        
; 1262 | #if defined(CPU2)                                                      
; 1263 | IDLE();                                                                
; 1264 | #elif defined(CPU1)                                                    
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _HALT                         FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_HALT:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 1265,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 1265 | EALLOW;                                                                
;----------------------------------------------------------------------
 EALLOW
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 1266,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 1266 | CpuSysRegs.LPMCR.bit.LPM = LPM_HALT;                                   
;----------------------------------------------------------------------
        MOVW      DP,#_CpuSysRegs+118   ; [CPU_ARAU] 
        AND       AL,@$BLOCKED(_CpuSysRegs)+118,#0xfffc ; [CPU_ALU] |1266| 
        ORB       AL,#0x02              ; [CPU_ALU] |1266| 
        MOV       @$BLOCKED(_CpuSysRegs)+118,AL ; [CPU_ALU] |1266| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 1267,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 1267 | EDIS;                                                                  
;----------------------------------------------------------------------
 EDIS
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 1269,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 1269 | while(DevCfgRegs.LPMSTAT.bit.CPU2LPMSTAT != 0x1);                      
;----------------------------------------------------------------------
$C$L53:    
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 1269,column 11,is_stmt,isa 0
        MOVW      DP,#_DevCfgRegs+293   ; [CPU_ARAU] 
        MOV       AL,@$BLOCKED(_DevCfgRegs)+293 ; [CPU_ALU] |1269| 
        ANDB      AL,#0x03              ; [CPU_ALU] |1269| 
        CMPB      AL,#1                 ; [CPU_ALU] |1269| 
        B         $C$L53,NEQ            ; [CPU_ALU] |1269| 
        ; branchcc occurs ; [] |1269| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 1271,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 1271 | EALLOW;                                                                
;----------------------------------------------------------------------
 EALLOW
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 1272,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 1272 | ClkCfgRegs.SYSPLLCTL1.bit.PLLCLKEN = 0;                                
;----------------------------------------------------------------------
        MOVW      DP,#_ClkCfgRegs+14    ; [CPU_ARAU] 
        AND       @$BLOCKED(_ClkCfgRegs)+14,#0xfffd ; [CPU_ALU] |1272| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 1273,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 1273 | ClkCfgRegs.SYSPLLCTL1.bit.PLLEN = 0;                                   
;----------------------------------------------------------------------
        AND       @$BLOCKED(_ClkCfgRegs)+14,#0xfffe ; [CPU_ALU] |1273| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 1274,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 1274 | EDIS;                                                                  
;----------------------------------------------------------------------
 EDIS
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 1275,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 1275 | asm(" IDLE");                                                          
; 1276 | #endif                                                                 
;----------------------------------------------------------------------
 IDLE
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 1277,column 1,is_stmt,isa 0
        SPM       #0                    ; [CPU_ALU] 
$C$DW$116	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$116, DW_AT_low_pc(0x00)
	.dwattr $C$DW$116, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$115, DW_AT_TI_end_file("C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c")
	.dwattr $C$DW$115, DW_AT_TI_end_line(0x4fd)
	.dwattr $C$DW$115, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$115

	.sect	".text"
	.clink
	.global	_HIB

$C$DW$117	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$117, DW_AT_name("HIB")
	.dwattr $C$DW$117, DW_AT_low_pc(_HIB)
	.dwattr $C$DW$117, DW_AT_high_pc(0x00)
	.dwattr $C$DW$117, DW_AT_TI_symbol_name("_HIB")
	.dwattr $C$DW$117, DW_AT_external
	.dwattr $C$DW$117, DW_AT_TI_begin_file("C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c")
	.dwattr $C$DW$117, DW_AT_TI_begin_line(0x502)
	.dwattr $C$DW$117, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$117, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 1283,column 1,is_stmt,address _HIB,isa 0

	.dwfde $C$DW$CIE, _HIB
;----------------------------------------------------------------------
; 1282 | void HIB(void)                                                         
; 1284 | #if defined(CPU2)                                                      
; 1285 | STANDBY();                                                             
; 1286 | #elif defined(CPU1)                                                    
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _HIB                          FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_HIB:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 1287,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 1287 | EALLOW;                                                                
;----------------------------------------------------------------------
 EALLOW
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 1288,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 1288 | CpuSysRegs.LPMCR.bit.LPM = LPM_HIB;                                    
;----------------------------------------------------------------------
        MOVW      DP,#_CpuSysRegs+118   ; [CPU_ARAU] 
        OR        @$BLOCKED(_CpuSysRegs)+118,#0x0003 ; [CPU_ALU] |1288| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 1289,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 1289 | EDIS;                                                                  
;----------------------------------------------------------------------
 EDIS
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 1291,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 1291 | while((DevCfgRegs.LPMSTAT.bit.CPU2LPMSTAT == 0x0) &&                   
;----------------------------------------------------------------------
$C$L54:    
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 1291,column 11,is_stmt,isa 0
;----------------------------------------------------------------------
; 1292 | (DevCfgRegs.RSTSTAT.bit.CPU2RES == 1));                                
;----------------------------------------------------------------------
        MOVW      DP,#_DevCfgRegs+293   ; [CPU_ARAU] 
        MOV       AL,@$BLOCKED(_DevCfgRegs)+293 ; [CPU_ALU] |1291| 
        ANDB      AL,#0x03              ; [CPU_ALU] |1291| 
        B         $C$L55,NEQ            ; [CPU_ALU] |1291| 
        ; branchcc occurs ; [] |1291| 
        MOV       AL,@$BLOCKED(_DevCfgRegs)+292 ; [CPU_ALU] |1291| 
        ANDB      AL,#0x01              ; [CPU_ALU] |1291| 
        CMPB      AL,#1                 ; [CPU_ALU] |1291| 
        B         $C$L54,EQ             ; [CPU_ALU] |1291| 
        ; branchcc occurs ; [] |1291| 
$C$L55:    
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 1294,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 1294 | DisablePeripheralClocks();                                             
;----------------------------------------------------------------------
        SPM       #0                    ; [CPU_ALU] 
$C$DW$118	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$118, DW_AT_low_pc(0x00)
	.dwattr $C$DW$118, DW_AT_name("_DisablePeripheralClocks")
	.dwattr $C$DW$118, DW_AT_TI_call

        LCR       #_DisablePeripheralClocks ; [CPU_ALU] |1294| 
        ; call occurs [#_DisablePeripheralClocks] ; [] |1294| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 1295,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 1295 | EALLOW;                                                                
;----------------------------------------------------------------------
 EALLOW
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 1296,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 1296 | ClkCfgRegs.SYSPLLCTL1.bit.PLLCLKEN = 0;                                
;----------------------------------------------------------------------
        MOVW      DP,#_ClkCfgRegs+14    ; [CPU_ARAU] 
        AND       @$BLOCKED(_ClkCfgRegs)+14,#0xfffd ; [CPU_ALU] |1296| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 1297,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 1297 | ClkCfgRegs.SYSPLLCTL1.bit.PLLEN = 0;                                   
;----------------------------------------------------------------------
        AND       @$BLOCKED(_ClkCfgRegs)+14,#0xfffe ; [CPU_ALU] |1297| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 1298,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 1298 | EDIS;                                                                  
;----------------------------------------------------------------------
 EDIS
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 1299,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 1299 | asm(" IDLE");                                                          
; 1300 | #endif                                                                 
;----------------------------------------------------------------------
 IDLE
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 1301,column 1,is_stmt,isa 0
        SPM       #0                    ; [CPU_ALU] 
$C$DW$119	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$119, DW_AT_low_pc(0x00)
	.dwattr $C$DW$119, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$117, DW_AT_TI_end_file("C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c")
	.dwattr $C$DW$117, DW_AT_TI_end_line(0x515)
	.dwattr $C$DW$117, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$117

	.sect	".text"
	.clink
	.global	_ConfigureTMXAnalogTrim

$C$DW$120	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$120, DW_AT_name("ConfigureTMXAnalogTrim")
	.dwattr $C$DW$120, DW_AT_low_pc(_ConfigureTMXAnalogTrim)
	.dwattr $C$DW$120, DW_AT_high_pc(0x00)
	.dwattr $C$DW$120, DW_AT_TI_symbol_name("_ConfigureTMXAnalogTrim")
	.dwattr $C$DW$120, DW_AT_external
	.dwattr $C$DW$120, DW_AT_TI_begin_file("C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c")
	.dwattr $C$DW$120, DW_AT_TI_begin_line(0x51c)
	.dwattr $C$DW$120, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$120, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 1309,column 1,is_stmt,address _ConfigureTMXAnalogTrim,isa 0

	.dwfde $C$DW$CIE, _ConfigureTMXAnalogTrim
;----------------------------------------------------------------------
; 1308 | void ConfigureTMXAnalogTrim(void)                                      
; 1310 | //                                                                     
; 1311 | // Enable ADC clock                                                    
; 1312 | //                                                                     
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _ConfigureTMXAnalogTrim       FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_ConfigureTMXAnalogTrim:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 1313,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 1313 | CpuSysRegs.PCLKCR13.bit.ADC_A = 1;                                     
;----------------------------------------------------------------------
        MOVW      DP,#_CpuSysRegs+60    ; [CPU_ARAU] 
        OR        @$BLOCKED(_CpuSysRegs)+60,#0x0001 ; [CPU_ALU] |1313| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 1314,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 1314 | CpuSysRegs.PCLKCR13.bit.ADC_B = 1;                                     
;----------------------------------------------------------------------
        OR        @$BLOCKED(_CpuSysRegs)+60,#0x0002 ; [CPU_ALU] |1314| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 1315,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 1315 | CpuSysRegs.PCLKCR13.bit.ADC_C = 1;                                     
;----------------------------------------------------------------------
        OR        @$BLOCKED(_CpuSysRegs)+60,#0x0004 ; [CPU_ALU] |1315| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 1316,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 1316 | CpuSysRegs.PCLKCR13.bit.ADC_D = 1;                                     
; 1319 | //                                                                     
; 1320 | // Device is not trimmed--apply static calibration values              
; 1321 | //                                                                     
;----------------------------------------------------------------------
        OR        @$BLOCKED(_CpuSysRegs)+60,#0x0008 ; [CPU_ALU] |1316| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 1322,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 1322 | AnalogSubsysRegs.ANAREFTRIMA.all = 0x7BDD;                             
;----------------------------------------------------------------------
        MOVL      XAR4,#31709           ; [CPU_ARAU] |1322| 
        MOVW      DP,#_AnalogSubsysRegs+54 ; [CPU_ARAU] 
        MOVL      @$BLOCKED(_AnalogSubsysRegs)+54,XAR4 ; [CPU_ALU] |1322| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 1323,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 1323 | AnalogSubsysRegs.ANAREFTRIMB.all = 0x7BDD;                             
;----------------------------------------------------------------------
        MOVL      @$BLOCKED(_AnalogSubsysRegs)+56,XAR4 ; [CPU_ALU] |1323| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 1324,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 1324 | AnalogSubsysRegs.ANAREFTRIMC.all = 0x7BDD;                             
;----------------------------------------------------------------------
        MOVL      @$BLOCKED(_AnalogSubsysRegs)+58,XAR4 ; [CPU_ALU] |1324| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 1325,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 1325 | AnalogSubsysRegs.ANAREFTRIMD.all = 0x7BDD;                             
; 1327 | //                                                                     
; 1328 | // Configure ADC offset trim. The user should generate the trim values 
; 1329 | // by following the instructions in the "ADC Zero Offset Calibration"  
; 1330 | // section in device TRM. The below lines needs to be uncommented and  
; 1331 | // updated with the correct trim values.                               
; 1332 | //                                                                     
; 1333 | //    AdcaRegs.ADCOFFTRIM.all = 0x0;                                   
; 1334 | //    AdcbRegs.ADCOFFTRIM.all = 0x0;                                   
; 1335 | //    AdccRegs.ADCOFFTRIM.all = 0x0;                                   
; 1336 | //    AdcdRegs.ADCOFFTRIM.all = 0x0;                                   
; 1338 | //                                                                     
; 1339 | // Configure internal oscillator trim. If the internal oscillator trim 
; 1340 | // contains all zeros, the user can adjust the lowest 10 bits of the   
; 1341 | // oscillator trim register between 1 (minimum) and 1023 (maximum)     
; 1342 | // while observing the system clock on the XCLOCKOUT pin. The below    
; 1343 | // lines needs to be uncommented and updated with the correct trim valu
;     | es.                                                                    
; 1344 | //                                                                     
; 1345 | //    if(AnalogSubsysRegs.INTOSC1TRIM.all == 0x0)                      
; 1346 | //    {                                                                
; 1347 | //        AnalogSubsysRegs.INTOSC1TRIM.all = 0x0;                      
; 1348 | //    }                                                                
; 1349 | //                                                                     
; 1350 | //    if(AnalogSubsysRegs.INTOSC2TRIM.all == 0x0)                      
; 1351 | //    {                                                                
; 1352 | //        AnalogSubsysRegs.INTOSC2TRIM.all = 0x0;                      
; 1353 | //    }                                                                
; 1355 | //                                                                     
; 1356 | // Disable ADC clock                                                   
; 1357 | //                                                                     
;----------------------------------------------------------------------
        MOVL      @$BLOCKED(_AnalogSubsysRegs)+60,XAR4 ; [CPU_ALU] |1325| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 1358,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 1358 | CpuSysRegs.PCLKCR13.bit.ADC_A = 0;                                     
;----------------------------------------------------------------------
        MOVW      DP,#_CpuSysRegs+60    ; [CPU_ARAU] 
        AND       @$BLOCKED(_CpuSysRegs)+60,#0xfffe ; [CPU_ALU] |1358| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 1359,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 1359 | CpuSysRegs.PCLKCR13.bit.ADC_B = 0;                                     
;----------------------------------------------------------------------
        AND       @$BLOCKED(_CpuSysRegs)+60,#0xfffd ; [CPU_ALU] |1359| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 1360,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 1360 | CpuSysRegs.PCLKCR13.bit.ADC_C = 0;                                     
;----------------------------------------------------------------------
        AND       @$BLOCKED(_CpuSysRegs)+60,#0xfffb ; [CPU_ALU] |1360| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 1361,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 1361 | CpuSysRegs.PCLKCR13.bit.ADC_D = 0;                                     
;----------------------------------------------------------------------
        AND       @$BLOCKED(_CpuSysRegs)+60,#0xfff7 ; [CPU_ALU] |1361| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c",line 1362,column 1,is_stmt,isa 0
$C$DW$121	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$121, DW_AT_low_pc(0x00)
	.dwattr $C$DW$121, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$120, DW_AT_TI_end_file("C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_SysCtrl.c")
	.dwattr $C$DW$120, DW_AT_TI_end_line(0x552)
	.dwattr $C$DW$120, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$120

;**************************************************************
;* UNDEFINED EXTERNAL REFERENCES                              *
;**************************************************************
	.global	_GPIO_EnableUnbondedIOPullups
	.global	_FlashPumpSemaphoreRegs
	.global	_CpuTimer1Regs
	.global	_CpuTimer2Regs
	.global	_DcsmZ1Regs
	.global	_DcsmZ2Regs
	.global	_Flash0EccRegs
	.global	_WdRegs
	.global	_ClkCfgRegs
	.global	_AnalogSubsysRegs
	.global	_CpuSysRegs
	.global	_DevCfgRegs
	.global	_Flash0CtrlRegs

;***************************************************************
;* TYPE INFORMATION                                            *
;***************************************************************

$C$DW$T$24	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$24, DW_AT_name("ANALOG_SUBSYS_REGS")
	.dwattr $C$DW$T$24, DW_AT_byte_size(0x3e)
$C$DW$122	.dwtag  DW_TAG_member
	.dwattr $C$DW$122, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$122, DW_AT_name("rsvd1")
	.dwattr $C$DW$122, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$122, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$122, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$123	.dwtag  DW_TAG_member
	.dwattr $C$DW$123, DW_AT_type(*$C$DW$T$187)
	.dwattr $C$DW$123, DW_AT_name("INTOSC1TRIM")
	.dwattr $C$DW$123, DW_AT_TI_symbol_name("_INTOSC1TRIM")
	.dwattr $C$DW$123, DW_AT_data_member_location[DW_OP_plus_uconst 0x20]
	.dwattr $C$DW$123, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$124	.dwtag  DW_TAG_member
	.dwattr $C$DW$124, DW_AT_type(*$C$DW$T$189)
	.dwattr $C$DW$124, DW_AT_name("INTOSC2TRIM")
	.dwattr $C$DW$124, DW_AT_TI_symbol_name("_INTOSC2TRIM")
	.dwattr $C$DW$124, DW_AT_data_member_location[DW_OP_plus_uconst 0x22]
	.dwattr $C$DW$124, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$125	.dwtag  DW_TAG_member
	.dwattr $C$DW$125, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$125, DW_AT_name("rsvd2")
	.dwattr $C$DW$125, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$125, DW_AT_data_member_location[DW_OP_plus_uconst 0x24]
	.dwattr $C$DW$125, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$126	.dwtag  DW_TAG_member
	.dwattr $C$DW$126, DW_AT_type(*$C$DW$T$301)
	.dwattr $C$DW$126, DW_AT_name("TSNSCTL")
	.dwattr $C$DW$126, DW_AT_TI_symbol_name("_TSNSCTL")
	.dwattr $C$DW$126, DW_AT_data_member_location[DW_OP_plus_uconst 0x26]
	.dwattr $C$DW$126, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$127	.dwtag  DW_TAG_member
	.dwattr $C$DW$127, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$127, DW_AT_name("rsvd3")
	.dwattr $C$DW$127, DW_AT_TI_symbol_name("_rsvd3")
	.dwattr $C$DW$127, DW_AT_data_member_location[DW_OP_plus_uconst 0x27]
	.dwattr $C$DW$127, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$128	.dwtag  DW_TAG_member
	.dwattr $C$DW$128, DW_AT_type(*$C$DW$T$193)
	.dwattr $C$DW$128, DW_AT_name("LOCK")
	.dwattr $C$DW$128, DW_AT_TI_symbol_name("_LOCK")
	.dwattr $C$DW$128, DW_AT_data_member_location[DW_OP_plus_uconst 0x2e]
	.dwattr $C$DW$128, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$129	.dwtag  DW_TAG_member
	.dwattr $C$DW$129, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$129, DW_AT_name("rsvd4")
	.dwattr $C$DW$129, DW_AT_TI_symbol_name("_rsvd4")
	.dwattr $C$DW$129, DW_AT_data_member_location[DW_OP_plus_uconst 0x30]
	.dwattr $C$DW$129, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$130	.dwtag  DW_TAG_member
	.dwattr $C$DW$130, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$130, DW_AT_name("ANAREFTRIMA")
	.dwattr $C$DW$130, DW_AT_TI_symbol_name("_ANAREFTRIMA")
	.dwattr $C$DW$130, DW_AT_data_member_location[DW_OP_plus_uconst 0x36]
	.dwattr $C$DW$130, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$131	.dwtag  DW_TAG_member
	.dwattr $C$DW$131, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$131, DW_AT_name("ANAREFTRIMB")
	.dwattr $C$DW$131, DW_AT_TI_symbol_name("_ANAREFTRIMB")
	.dwattr $C$DW$131, DW_AT_data_member_location[DW_OP_plus_uconst 0x38]
	.dwattr $C$DW$131, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$132	.dwtag  DW_TAG_member
	.dwattr $C$DW$132, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$132, DW_AT_name("ANAREFTRIMC")
	.dwattr $C$DW$132, DW_AT_TI_symbol_name("_ANAREFTRIMC")
	.dwattr $C$DW$132, DW_AT_data_member_location[DW_OP_plus_uconst 0x3a]
	.dwattr $C$DW$132, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$133	.dwtag  DW_TAG_member
	.dwattr $C$DW$133, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$133, DW_AT_name("ANAREFTRIMD")
	.dwattr $C$DW$133, DW_AT_TI_symbol_name("_ANAREFTRIMD")
	.dwattr $C$DW$133, DW_AT_data_member_location[DW_OP_plus_uconst 0x3c]
	.dwattr $C$DW$133, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$24

$C$DW$134	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$134, DW_AT_type(*$C$DW$T$24)

$C$DW$T$349	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$349, DW_AT_type(*$C$DW$134)


$C$DW$T$25	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$25, DW_AT_name("ANAREFTRIMA_BITS")
	.dwattr $C$DW$T$25, DW_AT_byte_size(0x02)
$C$DW$135	.dwtag  DW_TAG_member
	.dwattr $C$DW$135, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$135, DW_AT_name("BGVALTRIM")
	.dwattr $C$DW$135, DW_AT_TI_symbol_name("_BGVALTRIM")
	.dwattr $C$DW$135, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$135, DW_AT_bit_size(0x06)
	.dwattr $C$DW$135, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$135, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$136	.dwtag  DW_TAG_member
	.dwattr $C$DW$136, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$136, DW_AT_name("BGSLOPETRIM")
	.dwattr $C$DW$136, DW_AT_TI_symbol_name("_BGSLOPETRIM")
	.dwattr $C$DW$136, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$136, DW_AT_bit_size(0x05)
	.dwattr $C$DW$136, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$136, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$137	.dwtag  DW_TAG_member
	.dwattr $C$DW$137, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$137, DW_AT_name("IREFTRIM")
	.dwattr $C$DW$137, DW_AT_TI_symbol_name("_IREFTRIM")
	.dwattr $C$DW$137, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$137, DW_AT_bit_size(0x05)
	.dwattr $C$DW$137, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$137, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$138	.dwtag  DW_TAG_member
	.dwattr $C$DW$138, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$138, DW_AT_name("rsvd1")
	.dwattr $C$DW$138, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$138, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$138, DW_AT_bit_size(0x08)
	.dwattr $C$DW$138, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$138, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$139	.dwtag  DW_TAG_member
	.dwattr $C$DW$139, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$139, DW_AT_name("rsvd2")
	.dwattr $C$DW$139, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$139, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$139, DW_AT_bit_size(0x08)
	.dwattr $C$DW$139, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$139, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$25


$C$DW$T$27	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$27, DW_AT_name("ANAREFTRIMA_REG")
	.dwattr $C$DW$T$27, DW_AT_byte_size(0x02)
$C$DW$140	.dwtag  DW_TAG_member
	.dwattr $C$DW$140, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$140, DW_AT_name("all")
	.dwattr $C$DW$140, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$140, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$140, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$141	.dwtag  DW_TAG_member
	.dwattr $C$DW$141, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$141, DW_AT_name("bit")
	.dwattr $C$DW$141, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$141, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$141, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$27


$C$DW$T$28	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$28, DW_AT_name("ANAREFTRIMB_BITS")
	.dwattr $C$DW$T$28, DW_AT_byte_size(0x02)
$C$DW$142	.dwtag  DW_TAG_member
	.dwattr $C$DW$142, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$142, DW_AT_name("BGVALTRIM")
	.dwattr $C$DW$142, DW_AT_TI_symbol_name("_BGVALTRIM")
	.dwattr $C$DW$142, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$142, DW_AT_bit_size(0x06)
	.dwattr $C$DW$142, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$142, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$143	.dwtag  DW_TAG_member
	.dwattr $C$DW$143, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$143, DW_AT_name("BGSLOPETRIM")
	.dwattr $C$DW$143, DW_AT_TI_symbol_name("_BGSLOPETRIM")
	.dwattr $C$DW$143, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$143, DW_AT_bit_size(0x05)
	.dwattr $C$DW$143, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$143, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$144	.dwtag  DW_TAG_member
	.dwattr $C$DW$144, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$144, DW_AT_name("IREFTRIM")
	.dwattr $C$DW$144, DW_AT_TI_symbol_name("_IREFTRIM")
	.dwattr $C$DW$144, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$144, DW_AT_bit_size(0x05)
	.dwattr $C$DW$144, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$144, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$145	.dwtag  DW_TAG_member
	.dwattr $C$DW$145, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$145, DW_AT_name("rsvd1")
	.dwattr $C$DW$145, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$145, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$145, DW_AT_bit_size(0x08)
	.dwattr $C$DW$145, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$145, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$146	.dwtag  DW_TAG_member
	.dwattr $C$DW$146, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$146, DW_AT_name("rsvd2")
	.dwattr $C$DW$146, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$146, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$146, DW_AT_bit_size(0x08)
	.dwattr $C$DW$146, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$146, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$28


$C$DW$T$29	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$29, DW_AT_name("ANAREFTRIMB_REG")
	.dwattr $C$DW$T$29, DW_AT_byte_size(0x02)
$C$DW$147	.dwtag  DW_TAG_member
	.dwattr $C$DW$147, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$147, DW_AT_name("all")
	.dwattr $C$DW$147, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$147, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$147, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$148	.dwtag  DW_TAG_member
	.dwattr $C$DW$148, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$148, DW_AT_name("bit")
	.dwattr $C$DW$148, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$148, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$148, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$29


$C$DW$T$30	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$30, DW_AT_name("ANAREFTRIMC_BITS")
	.dwattr $C$DW$T$30, DW_AT_byte_size(0x02)
$C$DW$149	.dwtag  DW_TAG_member
	.dwattr $C$DW$149, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$149, DW_AT_name("BGVALTRIM")
	.dwattr $C$DW$149, DW_AT_TI_symbol_name("_BGVALTRIM")
	.dwattr $C$DW$149, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$149, DW_AT_bit_size(0x06)
	.dwattr $C$DW$149, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$149, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$150	.dwtag  DW_TAG_member
	.dwattr $C$DW$150, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$150, DW_AT_name("BGSLOPETRIM")
	.dwattr $C$DW$150, DW_AT_TI_symbol_name("_BGSLOPETRIM")
	.dwattr $C$DW$150, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$150, DW_AT_bit_size(0x05)
	.dwattr $C$DW$150, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$150, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$151	.dwtag  DW_TAG_member
	.dwattr $C$DW$151, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$151, DW_AT_name("IREFTRIM")
	.dwattr $C$DW$151, DW_AT_TI_symbol_name("_IREFTRIM")
	.dwattr $C$DW$151, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$151, DW_AT_bit_size(0x05)
	.dwattr $C$DW$151, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$151, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$152	.dwtag  DW_TAG_member
	.dwattr $C$DW$152, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$152, DW_AT_name("rsvd1")
	.dwattr $C$DW$152, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$152, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$152, DW_AT_bit_size(0x08)
	.dwattr $C$DW$152, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$152, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$153	.dwtag  DW_TAG_member
	.dwattr $C$DW$153, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$153, DW_AT_name("rsvd2")
	.dwattr $C$DW$153, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$153, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$153, DW_AT_bit_size(0x08)
	.dwattr $C$DW$153, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$153, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$30


$C$DW$T$31	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$31, DW_AT_name("ANAREFTRIMC_REG")
	.dwattr $C$DW$T$31, DW_AT_byte_size(0x02)
$C$DW$154	.dwtag  DW_TAG_member
	.dwattr $C$DW$154, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$154, DW_AT_name("all")
	.dwattr $C$DW$154, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$154, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$154, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$155	.dwtag  DW_TAG_member
	.dwattr $C$DW$155, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$155, DW_AT_name("bit")
	.dwattr $C$DW$155, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$155, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$155, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$31


$C$DW$T$32	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$32, DW_AT_name("ANAREFTRIMD_BITS")
	.dwattr $C$DW$T$32, DW_AT_byte_size(0x02)
$C$DW$156	.dwtag  DW_TAG_member
	.dwattr $C$DW$156, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$156, DW_AT_name("BGVALTRIM")
	.dwattr $C$DW$156, DW_AT_TI_symbol_name("_BGVALTRIM")
	.dwattr $C$DW$156, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$156, DW_AT_bit_size(0x06)
	.dwattr $C$DW$156, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$156, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$157	.dwtag  DW_TAG_member
	.dwattr $C$DW$157, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$157, DW_AT_name("BGSLOPETRIM")
	.dwattr $C$DW$157, DW_AT_TI_symbol_name("_BGSLOPETRIM")
	.dwattr $C$DW$157, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$157, DW_AT_bit_size(0x05)
	.dwattr $C$DW$157, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$157, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$158	.dwtag  DW_TAG_member
	.dwattr $C$DW$158, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$158, DW_AT_name("IREFTRIM")
	.dwattr $C$DW$158, DW_AT_TI_symbol_name("_IREFTRIM")
	.dwattr $C$DW$158, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$158, DW_AT_bit_size(0x05)
	.dwattr $C$DW$158, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$158, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$159	.dwtag  DW_TAG_member
	.dwattr $C$DW$159, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$159, DW_AT_name("rsvd1")
	.dwattr $C$DW$159, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$159, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$159, DW_AT_bit_size(0x08)
	.dwattr $C$DW$159, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$159, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$160	.dwtag  DW_TAG_member
	.dwattr $C$DW$160, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$160, DW_AT_name("rsvd2")
	.dwattr $C$DW$160, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$160, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$160, DW_AT_bit_size(0x08)
	.dwattr $C$DW$160, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$160, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$32


$C$DW$T$33	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$33, DW_AT_name("ANAREFTRIMD_REG")
	.dwattr $C$DW$T$33, DW_AT_byte_size(0x02)
$C$DW$161	.dwtag  DW_TAG_member
	.dwattr $C$DW$161, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$161, DW_AT_name("all")
	.dwattr $C$DW$161, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$161, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$161, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$162	.dwtag  DW_TAG_member
	.dwattr $C$DW$162, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$162, DW_AT_name("bit")
	.dwattr $C$DW$162, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$162, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$162, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$33


$C$DW$T$34	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$34, DW_AT_name("AUXCLKDIVSEL_BITS")
	.dwattr $C$DW$T$34, DW_AT_byte_size(0x02)
$C$DW$163	.dwtag  DW_TAG_member
	.dwattr $C$DW$163, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$163, DW_AT_name("AUXPLLDIV")
	.dwattr $C$DW$163, DW_AT_TI_symbol_name("_AUXPLLDIV")
	.dwattr $C$DW$163, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$163, DW_AT_bit_size(0x02)
	.dwattr $C$DW$163, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$163, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$164	.dwtag  DW_TAG_member
	.dwattr $C$DW$164, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$164, DW_AT_name("rsvd1")
	.dwattr $C$DW$164, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$164, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$164, DW_AT_bit_size(0x0e)
	.dwattr $C$DW$164, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$164, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$165	.dwtag  DW_TAG_member
	.dwattr $C$DW$165, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$165, DW_AT_name("rsvd2")
	.dwattr $C$DW$165, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$165, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$165, DW_AT_bit_size(0x10)
	.dwattr $C$DW$165, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$165, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$34


$C$DW$T$35	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$35, DW_AT_name("AUXCLKDIVSEL_REG")
	.dwattr $C$DW$T$35, DW_AT_byte_size(0x02)
$C$DW$166	.dwtag  DW_TAG_member
	.dwattr $C$DW$166, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$166, DW_AT_name("all")
	.dwattr $C$DW$166, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$166, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$166, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$167	.dwtag  DW_TAG_member
	.dwattr $C$DW$167, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$167, DW_AT_name("bit")
	.dwattr $C$DW$167, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$167, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$167, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$35


$C$DW$T$36	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$36, DW_AT_name("AUXPLLCTL1_BITS")
	.dwattr $C$DW$T$36, DW_AT_byte_size(0x02)
$C$DW$168	.dwtag  DW_TAG_member
	.dwattr $C$DW$168, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$168, DW_AT_name("PLLEN")
	.dwattr $C$DW$168, DW_AT_TI_symbol_name("_PLLEN")
	.dwattr $C$DW$168, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$168, DW_AT_bit_size(0x01)
	.dwattr $C$DW$168, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$168, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$169	.dwtag  DW_TAG_member
	.dwattr $C$DW$169, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$169, DW_AT_name("PLLCLKEN")
	.dwattr $C$DW$169, DW_AT_TI_symbol_name("_PLLCLKEN")
	.dwattr $C$DW$169, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$169, DW_AT_bit_size(0x01)
	.dwattr $C$DW$169, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$169, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$170	.dwtag  DW_TAG_member
	.dwattr $C$DW$170, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$170, DW_AT_name("rsvd1")
	.dwattr $C$DW$170, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$170, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$170, DW_AT_bit_size(0x0e)
	.dwattr $C$DW$170, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$170, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$171	.dwtag  DW_TAG_member
	.dwattr $C$DW$171, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$171, DW_AT_name("rsvd2")
	.dwattr $C$DW$171, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$171, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$171, DW_AT_bit_size(0x10)
	.dwattr $C$DW$171, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$171, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$36


$C$DW$T$37	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$37, DW_AT_name("AUXPLLCTL1_REG")
	.dwattr $C$DW$T$37, DW_AT_byte_size(0x02)
$C$DW$172	.dwtag  DW_TAG_member
	.dwattr $C$DW$172, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$172, DW_AT_name("all")
	.dwattr $C$DW$172, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$172, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$172, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$173	.dwtag  DW_TAG_member
	.dwattr $C$DW$173, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$173, DW_AT_name("bit")
	.dwattr $C$DW$173, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$173, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$173, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$37


$C$DW$T$38	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$38, DW_AT_name("AUXPLLMULT_BITS")
	.dwattr $C$DW$T$38, DW_AT_byte_size(0x02)
$C$DW$174	.dwtag  DW_TAG_member
	.dwattr $C$DW$174, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$174, DW_AT_name("IMULT")
	.dwattr $C$DW$174, DW_AT_TI_symbol_name("_IMULT")
	.dwattr $C$DW$174, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$174, DW_AT_bit_size(0x07)
	.dwattr $C$DW$174, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$174, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$175	.dwtag  DW_TAG_member
	.dwattr $C$DW$175, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$175, DW_AT_name("rsvd1")
	.dwattr $C$DW$175, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$175, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$175, DW_AT_bit_size(0x01)
	.dwattr $C$DW$175, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$175, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$176	.dwtag  DW_TAG_member
	.dwattr $C$DW$176, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$176, DW_AT_name("FMULT")
	.dwattr $C$DW$176, DW_AT_TI_symbol_name("_FMULT")
	.dwattr $C$DW$176, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$176, DW_AT_bit_size(0x02)
	.dwattr $C$DW$176, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$176, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$177	.dwtag  DW_TAG_member
	.dwattr $C$DW$177, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$177, DW_AT_name("rsvd2")
	.dwattr $C$DW$177, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$177, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$177, DW_AT_bit_size(0x06)
	.dwattr $C$DW$177, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$177, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$178	.dwtag  DW_TAG_member
	.dwattr $C$DW$178, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$178, DW_AT_name("rsvd3")
	.dwattr $C$DW$178, DW_AT_TI_symbol_name("_rsvd3")
	.dwattr $C$DW$178, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$178, DW_AT_bit_size(0x10)
	.dwattr $C$DW$178, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$178, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$38


$C$DW$T$39	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$39, DW_AT_name("AUXPLLMULT_REG")
	.dwattr $C$DW$T$39, DW_AT_byte_size(0x02)
$C$DW$179	.dwtag  DW_TAG_member
	.dwattr $C$DW$179, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$179, DW_AT_name("all")
	.dwattr $C$DW$179, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$179, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$179, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$180	.dwtag  DW_TAG_member
	.dwattr $C$DW$180, DW_AT_type(*$C$DW$T$38)
	.dwattr $C$DW$180, DW_AT_name("bit")
	.dwattr $C$DW$180, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$180, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$180, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$39


$C$DW$T$40	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$40, DW_AT_name("AUXPLLSTS_BITS")
	.dwattr $C$DW$T$40, DW_AT_byte_size(0x02)
$C$DW$181	.dwtag  DW_TAG_member
	.dwattr $C$DW$181, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$181, DW_AT_name("LOCKS")
	.dwattr $C$DW$181, DW_AT_TI_symbol_name("_LOCKS")
	.dwattr $C$DW$181, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$181, DW_AT_bit_size(0x01)
	.dwattr $C$DW$181, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$181, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$182	.dwtag  DW_TAG_member
	.dwattr $C$DW$182, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$182, DW_AT_name("SLIPS")
	.dwattr $C$DW$182, DW_AT_TI_symbol_name("_SLIPS")
	.dwattr $C$DW$182, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$182, DW_AT_bit_size(0x01)
	.dwattr $C$DW$182, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$182, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$183	.dwtag  DW_TAG_member
	.dwattr $C$DW$183, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$183, DW_AT_name("rsvd1")
	.dwattr $C$DW$183, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$183, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$183, DW_AT_bit_size(0x0e)
	.dwattr $C$DW$183, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$183, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$184	.dwtag  DW_TAG_member
	.dwattr $C$DW$184, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$184, DW_AT_name("rsvd2")
	.dwattr $C$DW$184, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$184, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$184, DW_AT_bit_size(0x10)
	.dwattr $C$DW$184, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$184, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$40


$C$DW$T$41	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$41, DW_AT_name("AUXPLLSTS_REG")
	.dwattr $C$DW$T$41, DW_AT_byte_size(0x02)
$C$DW$185	.dwtag  DW_TAG_member
	.dwattr $C$DW$185, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$185, DW_AT_name("all")
	.dwattr $C$DW$185, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$185, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$185, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$186	.dwtag  DW_TAG_member
	.dwattr $C$DW$186, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$186, DW_AT_name("bit")
	.dwattr $C$DW$186, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$186, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$186, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$41


$C$DW$T$42	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$42, DW_AT_name("CLKCFGLOCK1_BITS")
	.dwattr $C$DW$T$42, DW_AT_byte_size(0x02)
$C$DW$187	.dwtag  DW_TAG_member
	.dwattr $C$DW$187, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$187, DW_AT_name("CLKSRCCTL1")
	.dwattr $C$DW$187, DW_AT_TI_symbol_name("_CLKSRCCTL1")
	.dwattr $C$DW$187, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$187, DW_AT_bit_size(0x01)
	.dwattr $C$DW$187, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$187, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$188	.dwtag  DW_TAG_member
	.dwattr $C$DW$188, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$188, DW_AT_name("CLKSRCCTL2")
	.dwattr $C$DW$188, DW_AT_TI_symbol_name("_CLKSRCCTL2")
	.dwattr $C$DW$188, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$188, DW_AT_bit_size(0x01)
	.dwattr $C$DW$188, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$188, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$189	.dwtag  DW_TAG_member
	.dwattr $C$DW$189, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$189, DW_AT_name("CLKSRCCTL3")
	.dwattr $C$DW$189, DW_AT_TI_symbol_name("_CLKSRCCTL3")
	.dwattr $C$DW$189, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$189, DW_AT_bit_size(0x01)
	.dwattr $C$DW$189, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$189, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$190	.dwtag  DW_TAG_member
	.dwattr $C$DW$190, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$190, DW_AT_name("SYSPLLCTL1")
	.dwattr $C$DW$190, DW_AT_TI_symbol_name("_SYSPLLCTL1")
	.dwattr $C$DW$190, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$190, DW_AT_bit_size(0x01)
	.dwattr $C$DW$190, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$190, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$191	.dwtag  DW_TAG_member
	.dwattr $C$DW$191, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$191, DW_AT_name("SYSPLLCTL2")
	.dwattr $C$DW$191, DW_AT_TI_symbol_name("_SYSPLLCTL2")
	.dwattr $C$DW$191, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$191, DW_AT_bit_size(0x01)
	.dwattr $C$DW$191, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$191, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$192	.dwtag  DW_TAG_member
	.dwattr $C$DW$192, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$192, DW_AT_name("SYSPLLCTL3")
	.dwattr $C$DW$192, DW_AT_TI_symbol_name("_SYSPLLCTL3")
	.dwattr $C$DW$192, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$192, DW_AT_bit_size(0x01)
	.dwattr $C$DW$192, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$192, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$193	.dwtag  DW_TAG_member
	.dwattr $C$DW$193, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$193, DW_AT_name("SYSPLLMULT")
	.dwattr $C$DW$193, DW_AT_TI_symbol_name("_SYSPLLMULT")
	.dwattr $C$DW$193, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$193, DW_AT_bit_size(0x01)
	.dwattr $C$DW$193, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$193, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$194	.dwtag  DW_TAG_member
	.dwattr $C$DW$194, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$194, DW_AT_name("AUXPLLCTL1")
	.dwattr $C$DW$194, DW_AT_TI_symbol_name("_AUXPLLCTL1")
	.dwattr $C$DW$194, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$194, DW_AT_bit_size(0x01)
	.dwattr $C$DW$194, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$194, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$195	.dwtag  DW_TAG_member
	.dwattr $C$DW$195, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$195, DW_AT_name("rsvd1")
	.dwattr $C$DW$195, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$195, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$195, DW_AT_bit_size(0x01)
	.dwattr $C$DW$195, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$195, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$196	.dwtag  DW_TAG_member
	.dwattr $C$DW$196, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$196, DW_AT_name("rsvd2")
	.dwattr $C$DW$196, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$196, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$196, DW_AT_bit_size(0x01)
	.dwattr $C$DW$196, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$196, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$197	.dwtag  DW_TAG_member
	.dwattr $C$DW$197, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$197, DW_AT_name("AUXPLLMULT")
	.dwattr $C$DW$197, DW_AT_TI_symbol_name("_AUXPLLMULT")
	.dwattr $C$DW$197, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$197, DW_AT_bit_size(0x01)
	.dwattr $C$DW$197, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$197, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$198	.dwtag  DW_TAG_member
	.dwattr $C$DW$198, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$198, DW_AT_name("SYSCLKDIVSEL")
	.dwattr $C$DW$198, DW_AT_TI_symbol_name("_SYSCLKDIVSEL")
	.dwattr $C$DW$198, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$198, DW_AT_bit_size(0x01)
	.dwattr $C$DW$198, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$198, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$199	.dwtag  DW_TAG_member
	.dwattr $C$DW$199, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$199, DW_AT_name("AUXCLKDIVSEL")
	.dwattr $C$DW$199, DW_AT_TI_symbol_name("_AUXCLKDIVSEL")
	.dwattr $C$DW$199, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$199, DW_AT_bit_size(0x01)
	.dwattr $C$DW$199, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$199, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$200	.dwtag  DW_TAG_member
	.dwattr $C$DW$200, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$200, DW_AT_name("PERCLKDIVSEL")
	.dwattr $C$DW$200, DW_AT_TI_symbol_name("_PERCLKDIVSEL")
	.dwattr $C$DW$200, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$200, DW_AT_bit_size(0x01)
	.dwattr $C$DW$200, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$200, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$201	.dwtag  DW_TAG_member
	.dwattr $C$DW$201, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$201, DW_AT_name("rsvd3")
	.dwattr $C$DW$201, DW_AT_TI_symbol_name("_rsvd3")
	.dwattr $C$DW$201, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$201, DW_AT_bit_size(0x01)
	.dwattr $C$DW$201, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$201, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$202	.dwtag  DW_TAG_member
	.dwattr $C$DW$202, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$202, DW_AT_name("LOSPCP")
	.dwattr $C$DW$202, DW_AT_TI_symbol_name("_LOSPCP")
	.dwattr $C$DW$202, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$202, DW_AT_bit_size(0x01)
	.dwattr $C$DW$202, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$202, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$203	.dwtag  DW_TAG_member
	.dwattr $C$DW$203, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$203, DW_AT_name("rsvd4")
	.dwattr $C$DW$203, DW_AT_TI_symbol_name("_rsvd4")
	.dwattr $C$DW$203, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$203, DW_AT_bit_size(0x10)
	.dwattr $C$DW$203, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$203, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$42


$C$DW$T$43	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$43, DW_AT_name("CLKCFGLOCK1_REG")
	.dwattr $C$DW$T$43, DW_AT_byte_size(0x02)
$C$DW$204	.dwtag  DW_TAG_member
	.dwattr $C$DW$204, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$204, DW_AT_name("all")
	.dwattr $C$DW$204, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$204, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$204, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$205	.dwtag  DW_TAG_member
	.dwattr $C$DW$205, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$205, DW_AT_name("bit")
	.dwattr $C$DW$205, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$205, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$205, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$43


$C$DW$T$44	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$44, DW_AT_name("CLKSEM_BITS")
	.dwattr $C$DW$T$44, DW_AT_byte_size(0x02)
$C$DW$206	.dwtag  DW_TAG_member
	.dwattr $C$DW$206, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$206, DW_AT_name("SEM")
	.dwattr $C$DW$206, DW_AT_TI_symbol_name("_SEM")
	.dwattr $C$DW$206, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$206, DW_AT_bit_size(0x02)
	.dwattr $C$DW$206, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$206, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$207	.dwtag  DW_TAG_member
	.dwattr $C$DW$207, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$207, DW_AT_name("rsvd1")
	.dwattr $C$DW$207, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$207, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$207, DW_AT_bit_size(0x0e)
	.dwattr $C$DW$207, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$207, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$208	.dwtag  DW_TAG_member
	.dwattr $C$DW$208, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$208, DW_AT_name("KEY")
	.dwattr $C$DW$208, DW_AT_TI_symbol_name("_KEY")
	.dwattr $C$DW$208, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$208, DW_AT_bit_size(0x10)
	.dwattr $C$DW$208, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$208, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$44


$C$DW$T$45	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$45, DW_AT_name("CLKSEM_REG")
	.dwattr $C$DW$T$45, DW_AT_byte_size(0x02)
$C$DW$209	.dwtag  DW_TAG_member
	.dwattr $C$DW$209, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$209, DW_AT_name("all")
	.dwattr $C$DW$209, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$209, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$209, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$210	.dwtag  DW_TAG_member
	.dwattr $C$DW$210, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$210, DW_AT_name("bit")
	.dwattr $C$DW$210, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$210, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$210, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$45


$C$DW$T$46	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$46, DW_AT_name("CLKSRCCTL1_BITS")
	.dwattr $C$DW$T$46, DW_AT_byte_size(0x02)
$C$DW$211	.dwtag  DW_TAG_member
	.dwattr $C$DW$211, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$211, DW_AT_name("OSCCLKSRCSEL")
	.dwattr $C$DW$211, DW_AT_TI_symbol_name("_OSCCLKSRCSEL")
	.dwattr $C$DW$211, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$211, DW_AT_bit_size(0x02)
	.dwattr $C$DW$211, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$211, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$212	.dwtag  DW_TAG_member
	.dwattr $C$DW$212, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$212, DW_AT_name("rsvd1")
	.dwattr $C$DW$212, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$212, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$212, DW_AT_bit_size(0x01)
	.dwattr $C$DW$212, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$212, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$213	.dwtag  DW_TAG_member
	.dwattr $C$DW$213, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$213, DW_AT_name("INTOSC2OFF")
	.dwattr $C$DW$213, DW_AT_TI_symbol_name("_INTOSC2OFF")
	.dwattr $C$DW$213, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$213, DW_AT_bit_size(0x01)
	.dwattr $C$DW$213, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$213, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$214	.dwtag  DW_TAG_member
	.dwattr $C$DW$214, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$214, DW_AT_name("XTALOFF")
	.dwattr $C$DW$214, DW_AT_TI_symbol_name("_XTALOFF")
	.dwattr $C$DW$214, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$214, DW_AT_bit_size(0x01)
	.dwattr $C$DW$214, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$214, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$215	.dwtag  DW_TAG_member
	.dwattr $C$DW$215, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$215, DW_AT_name("WDHALTI")
	.dwattr $C$DW$215, DW_AT_TI_symbol_name("_WDHALTI")
	.dwattr $C$DW$215, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$215, DW_AT_bit_size(0x01)
	.dwattr $C$DW$215, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$215, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$216	.dwtag  DW_TAG_member
	.dwattr $C$DW$216, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$216, DW_AT_name("rsvd2")
	.dwattr $C$DW$216, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$216, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$216, DW_AT_bit_size(0x0a)
	.dwattr $C$DW$216, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$216, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$217	.dwtag  DW_TAG_member
	.dwattr $C$DW$217, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$217, DW_AT_name("rsvd3")
	.dwattr $C$DW$217, DW_AT_TI_symbol_name("_rsvd3")
	.dwattr $C$DW$217, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$217, DW_AT_bit_size(0x10)
	.dwattr $C$DW$217, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$217, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$46


$C$DW$T$47	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$47, DW_AT_name("CLKSRCCTL1_REG")
	.dwattr $C$DW$T$47, DW_AT_byte_size(0x02)
$C$DW$218	.dwtag  DW_TAG_member
	.dwattr $C$DW$218, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$218, DW_AT_name("all")
	.dwattr $C$DW$218, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$218, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$218, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$219	.dwtag  DW_TAG_member
	.dwattr $C$DW$219, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$219, DW_AT_name("bit")
	.dwattr $C$DW$219, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$219, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$219, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$47


$C$DW$T$48	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$48, DW_AT_name("CLKSRCCTL2_BITS")
	.dwattr $C$DW$T$48, DW_AT_byte_size(0x02)
$C$DW$220	.dwtag  DW_TAG_member
	.dwattr $C$DW$220, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$220, DW_AT_name("AUXOSCCLKSRCSEL")
	.dwattr $C$DW$220, DW_AT_TI_symbol_name("_AUXOSCCLKSRCSEL")
	.dwattr $C$DW$220, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$220, DW_AT_bit_size(0x02)
	.dwattr $C$DW$220, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$220, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$221	.dwtag  DW_TAG_member
	.dwattr $C$DW$221, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$221, DW_AT_name("CANABCLKSEL")
	.dwattr $C$DW$221, DW_AT_TI_symbol_name("_CANABCLKSEL")
	.dwattr $C$DW$221, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$221, DW_AT_bit_size(0x02)
	.dwattr $C$DW$221, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$221, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$222	.dwtag  DW_TAG_member
	.dwattr $C$DW$222, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$222, DW_AT_name("CANBBCLKSEL")
	.dwattr $C$DW$222, DW_AT_TI_symbol_name("_CANBBCLKSEL")
	.dwattr $C$DW$222, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$222, DW_AT_bit_size(0x02)
	.dwattr $C$DW$222, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$222, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$223	.dwtag  DW_TAG_member
	.dwattr $C$DW$223, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$223, DW_AT_name("rsvd1")
	.dwattr $C$DW$223, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$223, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$223, DW_AT_bit_size(0x02)
	.dwattr $C$DW$223, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$223, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$224	.dwtag  DW_TAG_member
	.dwattr $C$DW$224, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$224, DW_AT_name("rsvd2")
	.dwattr $C$DW$224, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$224, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$224, DW_AT_bit_size(0x02)
	.dwattr $C$DW$224, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$224, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$225	.dwtag  DW_TAG_member
	.dwattr $C$DW$225, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$225, DW_AT_name("rsvd3")
	.dwattr $C$DW$225, DW_AT_TI_symbol_name("_rsvd3")
	.dwattr $C$DW$225, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$225, DW_AT_bit_size(0x06)
	.dwattr $C$DW$225, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$225, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$226	.dwtag  DW_TAG_member
	.dwattr $C$DW$226, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$226, DW_AT_name("rsvd4")
	.dwattr $C$DW$226, DW_AT_TI_symbol_name("_rsvd4")
	.dwattr $C$DW$226, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$226, DW_AT_bit_size(0x10)
	.dwattr $C$DW$226, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$226, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$48


$C$DW$T$49	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$49, DW_AT_name("CLKSRCCTL2_REG")
	.dwattr $C$DW$T$49, DW_AT_byte_size(0x02)
$C$DW$227	.dwtag  DW_TAG_member
	.dwattr $C$DW$227, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$227, DW_AT_name("all")
	.dwattr $C$DW$227, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$227, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$227, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$228	.dwtag  DW_TAG_member
	.dwattr $C$DW$228, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$228, DW_AT_name("bit")
	.dwattr $C$DW$228, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$228, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$228, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$49


$C$DW$T$50	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$50, DW_AT_name("CLKSRCCTL3_BITS")
	.dwattr $C$DW$T$50, DW_AT_byte_size(0x02)
$C$DW$229	.dwtag  DW_TAG_member
	.dwattr $C$DW$229, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$229, DW_AT_name("XCLKOUTSEL")
	.dwattr $C$DW$229, DW_AT_TI_symbol_name("_XCLKOUTSEL")
	.dwattr $C$DW$229, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$229, DW_AT_bit_size(0x03)
	.dwattr $C$DW$229, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$229, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$230	.dwtag  DW_TAG_member
	.dwattr $C$DW$230, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$230, DW_AT_name("rsvd1")
	.dwattr $C$DW$230, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$230, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$230, DW_AT_bit_size(0x0d)
	.dwattr $C$DW$230, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$230, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$231	.dwtag  DW_TAG_member
	.dwattr $C$DW$231, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$231, DW_AT_name("rsvd2")
	.dwattr $C$DW$231, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$231, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$231, DW_AT_bit_size(0x10)
	.dwattr $C$DW$231, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$231, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$50


$C$DW$T$51	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$51, DW_AT_name("CLKSRCCTL3_REG")
	.dwattr $C$DW$T$51, DW_AT_byte_size(0x02)
$C$DW$232	.dwtag  DW_TAG_member
	.dwattr $C$DW$232, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$232, DW_AT_name("all")
	.dwattr $C$DW$232, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$232, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$232, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$233	.dwtag  DW_TAG_member
	.dwattr $C$DW$233, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$233, DW_AT_name("bit")
	.dwattr $C$DW$233, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$233, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$233, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$51


$C$DW$T$53	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$53, DW_AT_name("CLK_CFG_REGS")
	.dwattr $C$DW$T$53, DW_AT_byte_size(0x32)
$C$DW$234	.dwtag  DW_TAG_member
	.dwattr $C$DW$234, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$234, DW_AT_name("CLKSEM")
	.dwattr $C$DW$234, DW_AT_TI_symbol_name("_CLKSEM")
	.dwattr $C$DW$234, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$234, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$235	.dwtag  DW_TAG_member
	.dwattr $C$DW$235, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$235, DW_AT_name("CLKCFGLOCK1")
	.dwattr $C$DW$235, DW_AT_TI_symbol_name("_CLKCFGLOCK1")
	.dwattr $C$DW$235, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$235, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$236	.dwtag  DW_TAG_member
	.dwattr $C$DW$236, DW_AT_type(*$C$DW$T$52)
	.dwattr $C$DW$236, DW_AT_name("rsvd1")
	.dwattr $C$DW$236, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$236, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$236, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$237	.dwtag  DW_TAG_member
	.dwattr $C$DW$237, DW_AT_type(*$C$DW$T$47)
	.dwattr $C$DW$237, DW_AT_name("CLKSRCCTL1")
	.dwattr $C$DW$237, DW_AT_TI_symbol_name("_CLKSRCCTL1")
	.dwattr $C$DW$237, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$237, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$238	.dwtag  DW_TAG_member
	.dwattr $C$DW$238, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$238, DW_AT_name("CLKSRCCTL2")
	.dwattr $C$DW$238, DW_AT_TI_symbol_name("_CLKSRCCTL2")
	.dwattr $C$DW$238, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$238, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$239	.dwtag  DW_TAG_member
	.dwattr $C$DW$239, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$239, DW_AT_name("CLKSRCCTL3")
	.dwattr $C$DW$239, DW_AT_TI_symbol_name("_CLKSRCCTL3")
	.dwattr $C$DW$239, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$239, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$240	.dwtag  DW_TAG_member
	.dwattr $C$DW$240, DW_AT_type(*$C$DW$T$285)
	.dwattr $C$DW$240, DW_AT_name("SYSPLLCTL1")
	.dwattr $C$DW$240, DW_AT_TI_symbol_name("_SYSPLLCTL1")
	.dwattr $C$DW$240, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$240, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$241	.dwtag  DW_TAG_member
	.dwattr $C$DW$241, DW_AT_type(*$C$DW$T$52)
	.dwattr $C$DW$241, DW_AT_name("rsvd2")
	.dwattr $C$DW$241, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$241, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$241, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$242	.dwtag  DW_TAG_member
	.dwattr $C$DW$242, DW_AT_type(*$C$DW$T$287)
	.dwattr $C$DW$242, DW_AT_name("SYSPLLMULT")
	.dwattr $C$DW$242, DW_AT_TI_symbol_name("_SYSPLLMULT")
	.dwattr $C$DW$242, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$242, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$243	.dwtag  DW_TAG_member
	.dwattr $C$DW$243, DW_AT_type(*$C$DW$T$289)
	.dwattr $C$DW$243, DW_AT_name("SYSPLLSTS")
	.dwattr $C$DW$243, DW_AT_TI_symbol_name("_SYSPLLSTS")
	.dwattr $C$DW$243, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr $C$DW$243, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$244	.dwtag  DW_TAG_member
	.dwattr $C$DW$244, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$244, DW_AT_name("AUXPLLCTL1")
	.dwattr $C$DW$244, DW_AT_TI_symbol_name("_AUXPLLCTL1")
	.dwattr $C$DW$244, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$244, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$245	.dwtag  DW_TAG_member
	.dwattr $C$DW$245, DW_AT_type(*$C$DW$T$52)
	.dwattr $C$DW$245, DW_AT_name("rsvd3")
	.dwattr $C$DW$245, DW_AT_TI_symbol_name("_rsvd3")
	.dwattr $C$DW$245, DW_AT_data_member_location[DW_OP_plus_uconst 0x1a]
	.dwattr $C$DW$245, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$246	.dwtag  DW_TAG_member
	.dwattr $C$DW$246, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$246, DW_AT_name("AUXPLLMULT")
	.dwattr $C$DW$246, DW_AT_TI_symbol_name("_AUXPLLMULT")
	.dwattr $C$DW$246, DW_AT_data_member_location[DW_OP_plus_uconst 0x1e]
	.dwattr $C$DW$246, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$247	.dwtag  DW_TAG_member
	.dwattr $C$DW$247, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$247, DW_AT_name("AUXPLLSTS")
	.dwattr $C$DW$247, DW_AT_TI_symbol_name("_AUXPLLSTS")
	.dwattr $C$DW$247, DW_AT_data_member_location[DW_OP_plus_uconst 0x20]
	.dwattr $C$DW$247, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$248	.dwtag  DW_TAG_member
	.dwattr $C$DW$248, DW_AT_type(*$C$DW$T$281)
	.dwattr $C$DW$248, DW_AT_name("SYSCLKDIVSEL")
	.dwattr $C$DW$248, DW_AT_TI_symbol_name("_SYSCLKDIVSEL")
	.dwattr $C$DW$248, DW_AT_data_member_location[DW_OP_plus_uconst 0x22]
	.dwattr $C$DW$248, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$249	.dwtag  DW_TAG_member
	.dwattr $C$DW$249, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$249, DW_AT_name("AUXCLKDIVSEL")
	.dwattr $C$DW$249, DW_AT_TI_symbol_name("_AUXCLKDIVSEL")
	.dwattr $C$DW$249, DW_AT_data_member_location[DW_OP_plus_uconst 0x24]
	.dwattr $C$DW$249, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$250	.dwtag  DW_TAG_member
	.dwattr $C$DW$250, DW_AT_type(*$C$DW$T$237)
	.dwattr $C$DW$250, DW_AT_name("PERCLKDIVSEL")
	.dwattr $C$DW$250, DW_AT_TI_symbol_name("_PERCLKDIVSEL")
	.dwattr $C$DW$250, DW_AT_data_member_location[DW_OP_plus_uconst 0x26]
	.dwattr $C$DW$250, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$251	.dwtag  DW_TAG_member
	.dwattr $C$DW$251, DW_AT_type(*$C$DW$T$316)
	.dwattr $C$DW$251, DW_AT_name("XCLKOUTDIVSEL")
	.dwattr $C$DW$251, DW_AT_TI_symbol_name("_XCLKOUTDIVSEL")
	.dwattr $C$DW$251, DW_AT_data_member_location[DW_OP_plus_uconst 0x28]
	.dwattr $C$DW$251, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$252	.dwtag  DW_TAG_member
	.dwattr $C$DW$252, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$252, DW_AT_name("rsvd4")
	.dwattr $C$DW$252, DW_AT_TI_symbol_name("_rsvd4")
	.dwattr $C$DW$252, DW_AT_data_member_location[DW_OP_plus_uconst 0x2a]
	.dwattr $C$DW$252, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$253	.dwtag  DW_TAG_member
	.dwattr $C$DW$253, DW_AT_type(*$C$DW$T$195)
	.dwattr $C$DW$253, DW_AT_name("LOSPCP")
	.dwattr $C$DW$253, DW_AT_TI_symbol_name("_LOSPCP")
	.dwattr $C$DW$253, DW_AT_data_member_location[DW_OP_plus_uconst 0x2c]
	.dwattr $C$DW$253, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$254	.dwtag  DW_TAG_member
	.dwattr $C$DW$254, DW_AT_type(*$C$DW$T$201)
	.dwattr $C$DW$254, DW_AT_name("MCDCR")
	.dwattr $C$DW$254, DW_AT_TI_symbol_name("_MCDCR")
	.dwattr $C$DW$254, DW_AT_data_member_location[DW_OP_plus_uconst 0x2e]
	.dwattr $C$DW$254, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$255	.dwtag  DW_TAG_member
	.dwattr $C$DW$255, DW_AT_type(*$C$DW$T$314)
	.dwattr $C$DW$255, DW_AT_name("X1CNT")
	.dwattr $C$DW$255, DW_AT_TI_symbol_name("_X1CNT")
	.dwattr $C$DW$255, DW_AT_data_member_location[DW_OP_plus_uconst 0x30]
	.dwattr $C$DW$255, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$53

$C$DW$256	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$256, DW_AT_type(*$C$DW$T$53)

$C$DW$T$366	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$366, DW_AT_type(*$C$DW$256)


$C$DW$T$54	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$54, DW_AT_name("CPU2RESCTL_BITS")
	.dwattr $C$DW$T$54, DW_AT_byte_size(0x02)
$C$DW$257	.dwtag  DW_TAG_member
	.dwattr $C$DW$257, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$257, DW_AT_name("RESET")
	.dwattr $C$DW$257, DW_AT_TI_symbol_name("_RESET")
	.dwattr $C$DW$257, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$257, DW_AT_bit_size(0x01)
	.dwattr $C$DW$257, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$257, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$258	.dwtag  DW_TAG_member
	.dwattr $C$DW$258, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$258, DW_AT_name("rsvd1")
	.dwattr $C$DW$258, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$258, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$258, DW_AT_bit_size(0x0f)
	.dwattr $C$DW$258, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$258, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$259	.dwtag  DW_TAG_member
	.dwattr $C$DW$259, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$259, DW_AT_name("KEY")
	.dwattr $C$DW$259, DW_AT_TI_symbol_name("_KEY")
	.dwattr $C$DW$259, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$259, DW_AT_bit_size(0x10)
	.dwattr $C$DW$259, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$259, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$54


$C$DW$T$55	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$55, DW_AT_name("CPU2RESCTL_REG")
	.dwattr $C$DW$T$55, DW_AT_byte_size(0x02)
$C$DW$260	.dwtag  DW_TAG_member
	.dwattr $C$DW$260, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$260, DW_AT_name("all")
	.dwattr $C$DW$260, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$260, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$260, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$261	.dwtag  DW_TAG_member
	.dwattr $C$DW$261, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$261, DW_AT_name("bit")
	.dwattr $C$DW$261, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$261, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$261, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$55


$C$DW$T$56	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$56, DW_AT_name("CPUSEL0_BITS")
	.dwattr $C$DW$T$56, DW_AT_byte_size(0x02)
$C$DW$262	.dwtag  DW_TAG_member
	.dwattr $C$DW$262, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$262, DW_AT_name("EPWM1")
	.dwattr $C$DW$262, DW_AT_TI_symbol_name("_EPWM1")
	.dwattr $C$DW$262, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$262, DW_AT_bit_size(0x01)
	.dwattr $C$DW$262, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$262, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$263	.dwtag  DW_TAG_member
	.dwattr $C$DW$263, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$263, DW_AT_name("EPWM2")
	.dwattr $C$DW$263, DW_AT_TI_symbol_name("_EPWM2")
	.dwattr $C$DW$263, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$263, DW_AT_bit_size(0x01)
	.dwattr $C$DW$263, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$263, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$264	.dwtag  DW_TAG_member
	.dwattr $C$DW$264, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$264, DW_AT_name("EPWM3")
	.dwattr $C$DW$264, DW_AT_TI_symbol_name("_EPWM3")
	.dwattr $C$DW$264, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$264, DW_AT_bit_size(0x01)
	.dwattr $C$DW$264, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$264, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$265	.dwtag  DW_TAG_member
	.dwattr $C$DW$265, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$265, DW_AT_name("EPWM4")
	.dwattr $C$DW$265, DW_AT_TI_symbol_name("_EPWM4")
	.dwattr $C$DW$265, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$265, DW_AT_bit_size(0x01)
	.dwattr $C$DW$265, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$265, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$266	.dwtag  DW_TAG_member
	.dwattr $C$DW$266, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$266, DW_AT_name("EPWM5")
	.dwattr $C$DW$266, DW_AT_TI_symbol_name("_EPWM5")
	.dwattr $C$DW$266, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$266, DW_AT_bit_size(0x01)
	.dwattr $C$DW$266, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$266, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$267	.dwtag  DW_TAG_member
	.dwattr $C$DW$267, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$267, DW_AT_name("EPWM6")
	.dwattr $C$DW$267, DW_AT_TI_symbol_name("_EPWM6")
	.dwattr $C$DW$267, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$267, DW_AT_bit_size(0x01)
	.dwattr $C$DW$267, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$267, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$268	.dwtag  DW_TAG_member
	.dwattr $C$DW$268, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$268, DW_AT_name("EPWM7")
	.dwattr $C$DW$268, DW_AT_TI_symbol_name("_EPWM7")
	.dwattr $C$DW$268, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$268, DW_AT_bit_size(0x01)
	.dwattr $C$DW$268, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$268, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$269	.dwtag  DW_TAG_member
	.dwattr $C$DW$269, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$269, DW_AT_name("EPWM8")
	.dwattr $C$DW$269, DW_AT_TI_symbol_name("_EPWM8")
	.dwattr $C$DW$269, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$269, DW_AT_bit_size(0x01)
	.dwattr $C$DW$269, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$269, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$270	.dwtag  DW_TAG_member
	.dwattr $C$DW$270, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$270, DW_AT_name("EPWM9")
	.dwattr $C$DW$270, DW_AT_TI_symbol_name("_EPWM9")
	.dwattr $C$DW$270, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$270, DW_AT_bit_size(0x01)
	.dwattr $C$DW$270, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$270, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$271	.dwtag  DW_TAG_member
	.dwattr $C$DW$271, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$271, DW_AT_name("EPWM10")
	.dwattr $C$DW$271, DW_AT_TI_symbol_name("_EPWM10")
	.dwattr $C$DW$271, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$271, DW_AT_bit_size(0x01)
	.dwattr $C$DW$271, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$271, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$272	.dwtag  DW_TAG_member
	.dwattr $C$DW$272, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$272, DW_AT_name("EPWM11")
	.dwattr $C$DW$272, DW_AT_TI_symbol_name("_EPWM11")
	.dwattr $C$DW$272, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$272, DW_AT_bit_size(0x01)
	.dwattr $C$DW$272, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$272, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$273	.dwtag  DW_TAG_member
	.dwattr $C$DW$273, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$273, DW_AT_name("EPWM12")
	.dwattr $C$DW$273, DW_AT_TI_symbol_name("_EPWM12")
	.dwattr $C$DW$273, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$273, DW_AT_bit_size(0x01)
	.dwattr $C$DW$273, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$273, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$274	.dwtag  DW_TAG_member
	.dwattr $C$DW$274, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$274, DW_AT_name("rsvd1")
	.dwattr $C$DW$274, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$274, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$274, DW_AT_bit_size(0x01)
	.dwattr $C$DW$274, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$274, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$275	.dwtag  DW_TAG_member
	.dwattr $C$DW$275, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$275, DW_AT_name("rsvd2")
	.dwattr $C$DW$275, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$275, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$275, DW_AT_bit_size(0x01)
	.dwattr $C$DW$275, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$275, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$276	.dwtag  DW_TAG_member
	.dwattr $C$DW$276, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$276, DW_AT_name("rsvd3")
	.dwattr $C$DW$276, DW_AT_TI_symbol_name("_rsvd3")
	.dwattr $C$DW$276, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$276, DW_AT_bit_size(0x01)
	.dwattr $C$DW$276, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$276, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$277	.dwtag  DW_TAG_member
	.dwattr $C$DW$277, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$277, DW_AT_name("rsvd4")
	.dwattr $C$DW$277, DW_AT_TI_symbol_name("_rsvd4")
	.dwattr $C$DW$277, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$277, DW_AT_bit_size(0x01)
	.dwattr $C$DW$277, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$277, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$278	.dwtag  DW_TAG_member
	.dwattr $C$DW$278, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$278, DW_AT_name("rsvd5")
	.dwattr $C$DW$278, DW_AT_TI_symbol_name("_rsvd5")
	.dwattr $C$DW$278, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$278, DW_AT_bit_size(0x10)
	.dwattr $C$DW$278, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$278, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$56


$C$DW$T$57	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$57, DW_AT_name("CPUSEL0_REG")
	.dwattr $C$DW$T$57, DW_AT_byte_size(0x02)
$C$DW$279	.dwtag  DW_TAG_member
	.dwattr $C$DW$279, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$279, DW_AT_name("all")
	.dwattr $C$DW$279, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$279, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$279, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$280	.dwtag  DW_TAG_member
	.dwattr $C$DW$280, DW_AT_type(*$C$DW$T$56)
	.dwattr $C$DW$280, DW_AT_name("bit")
	.dwattr $C$DW$280, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$280, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$280, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$57


$C$DW$T$58	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$58, DW_AT_name("CPUSEL11_BITS")
	.dwattr $C$DW$T$58, DW_AT_byte_size(0x02)
$C$DW$281	.dwtag  DW_TAG_member
	.dwattr $C$DW$281, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$281, DW_AT_name("ADC_A")
	.dwattr $C$DW$281, DW_AT_TI_symbol_name("_ADC_A")
	.dwattr $C$DW$281, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$281, DW_AT_bit_size(0x01)
	.dwattr $C$DW$281, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$281, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$282	.dwtag  DW_TAG_member
	.dwattr $C$DW$282, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$282, DW_AT_name("ADC_B")
	.dwattr $C$DW$282, DW_AT_TI_symbol_name("_ADC_B")
	.dwattr $C$DW$282, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$282, DW_AT_bit_size(0x01)
	.dwattr $C$DW$282, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$282, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$283	.dwtag  DW_TAG_member
	.dwattr $C$DW$283, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$283, DW_AT_name("ADC_C")
	.dwattr $C$DW$283, DW_AT_TI_symbol_name("_ADC_C")
	.dwattr $C$DW$283, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$283, DW_AT_bit_size(0x01)
	.dwattr $C$DW$283, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$283, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$284	.dwtag  DW_TAG_member
	.dwattr $C$DW$284, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$284, DW_AT_name("ADC_D")
	.dwattr $C$DW$284, DW_AT_TI_symbol_name("_ADC_D")
	.dwattr $C$DW$284, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$284, DW_AT_bit_size(0x01)
	.dwattr $C$DW$284, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$284, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$285	.dwtag  DW_TAG_member
	.dwattr $C$DW$285, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$285, DW_AT_name("rsvd1")
	.dwattr $C$DW$285, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$285, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$285, DW_AT_bit_size(0x0c)
	.dwattr $C$DW$285, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$285, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$286	.dwtag  DW_TAG_member
	.dwattr $C$DW$286, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$286, DW_AT_name("rsvd2")
	.dwattr $C$DW$286, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$286, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$286, DW_AT_bit_size(0x10)
	.dwattr $C$DW$286, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$286, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$58


$C$DW$T$59	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$59, DW_AT_name("CPUSEL11_REG")
	.dwattr $C$DW$T$59, DW_AT_byte_size(0x02)
$C$DW$287	.dwtag  DW_TAG_member
	.dwattr $C$DW$287, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$287, DW_AT_name("all")
	.dwattr $C$DW$287, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$287, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$287, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$288	.dwtag  DW_TAG_member
	.dwattr $C$DW$288, DW_AT_type(*$C$DW$T$58)
	.dwattr $C$DW$288, DW_AT_name("bit")
	.dwattr $C$DW$288, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$288, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$288, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$59


$C$DW$T$60	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$60, DW_AT_name("CPUSEL12_BITS")
	.dwattr $C$DW$T$60, DW_AT_byte_size(0x02)
$C$DW$289	.dwtag  DW_TAG_member
	.dwattr $C$DW$289, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$289, DW_AT_name("CMPSS1")
	.dwattr $C$DW$289, DW_AT_TI_symbol_name("_CMPSS1")
	.dwattr $C$DW$289, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$289, DW_AT_bit_size(0x01)
	.dwattr $C$DW$289, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$289, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$290	.dwtag  DW_TAG_member
	.dwattr $C$DW$290, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$290, DW_AT_name("CMPSS2")
	.dwattr $C$DW$290, DW_AT_TI_symbol_name("_CMPSS2")
	.dwattr $C$DW$290, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$290, DW_AT_bit_size(0x01)
	.dwattr $C$DW$290, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$290, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$291	.dwtag  DW_TAG_member
	.dwattr $C$DW$291, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$291, DW_AT_name("CMPSS3")
	.dwattr $C$DW$291, DW_AT_TI_symbol_name("_CMPSS3")
	.dwattr $C$DW$291, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$291, DW_AT_bit_size(0x01)
	.dwattr $C$DW$291, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$291, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$292	.dwtag  DW_TAG_member
	.dwattr $C$DW$292, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$292, DW_AT_name("CMPSS4")
	.dwattr $C$DW$292, DW_AT_TI_symbol_name("_CMPSS4")
	.dwattr $C$DW$292, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$292, DW_AT_bit_size(0x01)
	.dwattr $C$DW$292, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$292, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$293	.dwtag  DW_TAG_member
	.dwattr $C$DW$293, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$293, DW_AT_name("CMPSS5")
	.dwattr $C$DW$293, DW_AT_TI_symbol_name("_CMPSS5")
	.dwattr $C$DW$293, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$293, DW_AT_bit_size(0x01)
	.dwattr $C$DW$293, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$293, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$294	.dwtag  DW_TAG_member
	.dwattr $C$DW$294, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$294, DW_AT_name("CMPSS6")
	.dwattr $C$DW$294, DW_AT_TI_symbol_name("_CMPSS6")
	.dwattr $C$DW$294, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$294, DW_AT_bit_size(0x01)
	.dwattr $C$DW$294, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$294, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$295	.dwtag  DW_TAG_member
	.dwattr $C$DW$295, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$295, DW_AT_name("CMPSS7")
	.dwattr $C$DW$295, DW_AT_TI_symbol_name("_CMPSS7")
	.dwattr $C$DW$295, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$295, DW_AT_bit_size(0x01)
	.dwattr $C$DW$295, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$295, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$296	.dwtag  DW_TAG_member
	.dwattr $C$DW$296, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$296, DW_AT_name("CMPSS8")
	.dwattr $C$DW$296, DW_AT_TI_symbol_name("_CMPSS8")
	.dwattr $C$DW$296, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$296, DW_AT_bit_size(0x01)
	.dwattr $C$DW$296, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$296, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$297	.dwtag  DW_TAG_member
	.dwattr $C$DW$297, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$297, DW_AT_name("rsvd1")
	.dwattr $C$DW$297, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$297, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$297, DW_AT_bit_size(0x08)
	.dwattr $C$DW$297, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$297, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$298	.dwtag  DW_TAG_member
	.dwattr $C$DW$298, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$298, DW_AT_name("rsvd2")
	.dwattr $C$DW$298, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$298, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$298, DW_AT_bit_size(0x10)
	.dwattr $C$DW$298, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$298, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$60


$C$DW$T$61	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$61, DW_AT_name("CPUSEL12_REG")
	.dwattr $C$DW$T$61, DW_AT_byte_size(0x02)
$C$DW$299	.dwtag  DW_TAG_member
	.dwattr $C$DW$299, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$299, DW_AT_name("all")
	.dwattr $C$DW$299, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$299, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$299, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$300	.dwtag  DW_TAG_member
	.dwattr $C$DW$300, DW_AT_type(*$C$DW$T$60)
	.dwattr $C$DW$300, DW_AT_name("bit")
	.dwattr $C$DW$300, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$300, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$300, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$61


$C$DW$T$62	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$62, DW_AT_name("CPUSEL14_BITS")
	.dwattr $C$DW$T$62, DW_AT_byte_size(0x02)
$C$DW$301	.dwtag  DW_TAG_member
	.dwattr $C$DW$301, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$301, DW_AT_name("rsvd1")
	.dwattr $C$DW$301, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$301, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$301, DW_AT_bit_size(0x01)
	.dwattr $C$DW$301, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$301, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$302	.dwtag  DW_TAG_member
	.dwattr $C$DW$302, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$302, DW_AT_name("rsvd2")
	.dwattr $C$DW$302, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$302, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$302, DW_AT_bit_size(0x01)
	.dwattr $C$DW$302, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$302, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$303	.dwtag  DW_TAG_member
	.dwattr $C$DW$303, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$303, DW_AT_name("rsvd3")
	.dwattr $C$DW$303, DW_AT_TI_symbol_name("_rsvd3")
	.dwattr $C$DW$303, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$303, DW_AT_bit_size(0x01)
	.dwattr $C$DW$303, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$303, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$304	.dwtag  DW_TAG_member
	.dwattr $C$DW$304, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$304, DW_AT_name("rsvd4")
	.dwattr $C$DW$304, DW_AT_TI_symbol_name("_rsvd4")
	.dwattr $C$DW$304, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$304, DW_AT_bit_size(0x01)
	.dwattr $C$DW$304, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$304, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$305	.dwtag  DW_TAG_member
	.dwattr $C$DW$305, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$305, DW_AT_name("rsvd5")
	.dwattr $C$DW$305, DW_AT_TI_symbol_name("_rsvd5")
	.dwattr $C$DW$305, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$305, DW_AT_bit_size(0x0c)
	.dwattr $C$DW$305, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$305, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$306	.dwtag  DW_TAG_member
	.dwattr $C$DW$306, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$306, DW_AT_name("DAC_A")
	.dwattr $C$DW$306, DW_AT_TI_symbol_name("_DAC_A")
	.dwattr $C$DW$306, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$306, DW_AT_bit_size(0x01)
	.dwattr $C$DW$306, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$306, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$307	.dwtag  DW_TAG_member
	.dwattr $C$DW$307, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$307, DW_AT_name("DAC_B")
	.dwattr $C$DW$307, DW_AT_TI_symbol_name("_DAC_B")
	.dwattr $C$DW$307, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$307, DW_AT_bit_size(0x01)
	.dwattr $C$DW$307, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$307, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$308	.dwtag  DW_TAG_member
	.dwattr $C$DW$308, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$308, DW_AT_name("DAC_C")
	.dwattr $C$DW$308, DW_AT_TI_symbol_name("_DAC_C")
	.dwattr $C$DW$308, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$308, DW_AT_bit_size(0x01)
	.dwattr $C$DW$308, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$308, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$309	.dwtag  DW_TAG_member
	.dwattr $C$DW$309, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$309, DW_AT_name("rsvd6")
	.dwattr $C$DW$309, DW_AT_TI_symbol_name("_rsvd6")
	.dwattr $C$DW$309, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$309, DW_AT_bit_size(0x01)
	.dwattr $C$DW$309, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$309, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$310	.dwtag  DW_TAG_member
	.dwattr $C$DW$310, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$310, DW_AT_name("rsvd7")
	.dwattr $C$DW$310, DW_AT_TI_symbol_name("_rsvd7")
	.dwattr $C$DW$310, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$310, DW_AT_bit_size(0x0c)
	.dwattr $C$DW$310, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$310, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$62


$C$DW$T$63	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$63, DW_AT_name("CPUSEL14_REG")
	.dwattr $C$DW$T$63, DW_AT_byte_size(0x02)
$C$DW$311	.dwtag  DW_TAG_member
	.dwattr $C$DW$311, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$311, DW_AT_name("all")
	.dwattr $C$DW$311, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$311, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$311, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$312	.dwtag  DW_TAG_member
	.dwattr $C$DW$312, DW_AT_type(*$C$DW$T$62)
	.dwattr $C$DW$312, DW_AT_name("bit")
	.dwattr $C$DW$312, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$312, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$312, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$63


$C$DW$T$64	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$64, DW_AT_name("CPUSEL1_BITS")
	.dwattr $C$DW$T$64, DW_AT_byte_size(0x02)
$C$DW$313	.dwtag  DW_TAG_member
	.dwattr $C$DW$313, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$313, DW_AT_name("ECAP1")
	.dwattr $C$DW$313, DW_AT_TI_symbol_name("_ECAP1")
	.dwattr $C$DW$313, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$313, DW_AT_bit_size(0x01)
	.dwattr $C$DW$313, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$313, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$314	.dwtag  DW_TAG_member
	.dwattr $C$DW$314, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$314, DW_AT_name("ECAP2")
	.dwattr $C$DW$314, DW_AT_TI_symbol_name("_ECAP2")
	.dwattr $C$DW$314, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$314, DW_AT_bit_size(0x01)
	.dwattr $C$DW$314, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$314, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$315	.dwtag  DW_TAG_member
	.dwattr $C$DW$315, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$315, DW_AT_name("ECAP3")
	.dwattr $C$DW$315, DW_AT_TI_symbol_name("_ECAP3")
	.dwattr $C$DW$315, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$315, DW_AT_bit_size(0x01)
	.dwattr $C$DW$315, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$315, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$316	.dwtag  DW_TAG_member
	.dwattr $C$DW$316, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$316, DW_AT_name("ECAP4")
	.dwattr $C$DW$316, DW_AT_TI_symbol_name("_ECAP4")
	.dwattr $C$DW$316, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$316, DW_AT_bit_size(0x01)
	.dwattr $C$DW$316, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$316, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$317	.dwtag  DW_TAG_member
	.dwattr $C$DW$317, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$317, DW_AT_name("ECAP5")
	.dwattr $C$DW$317, DW_AT_TI_symbol_name("_ECAP5")
	.dwattr $C$DW$317, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$317, DW_AT_bit_size(0x01)
	.dwattr $C$DW$317, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$317, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$318	.dwtag  DW_TAG_member
	.dwattr $C$DW$318, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$318, DW_AT_name("ECAP6")
	.dwattr $C$DW$318, DW_AT_TI_symbol_name("_ECAP6")
	.dwattr $C$DW$318, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$318, DW_AT_bit_size(0x01)
	.dwattr $C$DW$318, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$318, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$319	.dwtag  DW_TAG_member
	.dwattr $C$DW$319, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$319, DW_AT_name("rsvd1")
	.dwattr $C$DW$319, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$319, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$319, DW_AT_bit_size(0x01)
	.dwattr $C$DW$319, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$319, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$320	.dwtag  DW_TAG_member
	.dwattr $C$DW$320, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$320, DW_AT_name("rsvd2")
	.dwattr $C$DW$320, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$320, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$320, DW_AT_bit_size(0x01)
	.dwattr $C$DW$320, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$320, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$321	.dwtag  DW_TAG_member
	.dwattr $C$DW$321, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$321, DW_AT_name("rsvd3")
	.dwattr $C$DW$321, DW_AT_TI_symbol_name("_rsvd3")
	.dwattr $C$DW$321, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$321, DW_AT_bit_size(0x08)
	.dwattr $C$DW$321, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$321, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$322	.dwtag  DW_TAG_member
	.dwattr $C$DW$322, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$322, DW_AT_name("rsvd4")
	.dwattr $C$DW$322, DW_AT_TI_symbol_name("_rsvd4")
	.dwattr $C$DW$322, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$322, DW_AT_bit_size(0x10)
	.dwattr $C$DW$322, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$322, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$64


$C$DW$T$65	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$65, DW_AT_name("CPUSEL1_REG")
	.dwattr $C$DW$T$65, DW_AT_byte_size(0x02)
$C$DW$323	.dwtag  DW_TAG_member
	.dwattr $C$DW$323, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$323, DW_AT_name("all")
	.dwattr $C$DW$323, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$323, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$323, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$324	.dwtag  DW_TAG_member
	.dwattr $C$DW$324, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$324, DW_AT_name("bit")
	.dwattr $C$DW$324, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$324, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$324, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$65


$C$DW$T$66	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$66, DW_AT_name("CPUSEL2_BITS")
	.dwattr $C$DW$T$66, DW_AT_byte_size(0x02)
$C$DW$325	.dwtag  DW_TAG_member
	.dwattr $C$DW$325, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$325, DW_AT_name("EQEP1")
	.dwattr $C$DW$325, DW_AT_TI_symbol_name("_EQEP1")
	.dwattr $C$DW$325, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$325, DW_AT_bit_size(0x01)
	.dwattr $C$DW$325, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$325, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$326	.dwtag  DW_TAG_member
	.dwattr $C$DW$326, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$326, DW_AT_name("EQEP2")
	.dwattr $C$DW$326, DW_AT_TI_symbol_name("_EQEP2")
	.dwattr $C$DW$326, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$326, DW_AT_bit_size(0x01)
	.dwattr $C$DW$326, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$326, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$327	.dwtag  DW_TAG_member
	.dwattr $C$DW$327, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$327, DW_AT_name("EQEP3")
	.dwattr $C$DW$327, DW_AT_TI_symbol_name("_EQEP3")
	.dwattr $C$DW$327, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$327, DW_AT_bit_size(0x01)
	.dwattr $C$DW$327, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$327, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$328	.dwtag  DW_TAG_member
	.dwattr $C$DW$328, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$328, DW_AT_name("rsvd1")
	.dwattr $C$DW$328, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$328, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$328, DW_AT_bit_size(0x01)
	.dwattr $C$DW$328, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$328, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$329	.dwtag  DW_TAG_member
	.dwattr $C$DW$329, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$329, DW_AT_name("rsvd2")
	.dwattr $C$DW$329, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$329, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$329, DW_AT_bit_size(0x0c)
	.dwattr $C$DW$329, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$329, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$330	.dwtag  DW_TAG_member
	.dwattr $C$DW$330, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$330, DW_AT_name("rsvd3")
	.dwattr $C$DW$330, DW_AT_TI_symbol_name("_rsvd3")
	.dwattr $C$DW$330, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$330, DW_AT_bit_size(0x10)
	.dwattr $C$DW$330, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$330, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$66


$C$DW$T$67	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$67, DW_AT_name("CPUSEL2_REG")
	.dwattr $C$DW$T$67, DW_AT_byte_size(0x02)
$C$DW$331	.dwtag  DW_TAG_member
	.dwattr $C$DW$331, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$331, DW_AT_name("all")
	.dwattr $C$DW$331, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$331, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$331, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$332	.dwtag  DW_TAG_member
	.dwattr $C$DW$332, DW_AT_type(*$C$DW$T$66)
	.dwattr $C$DW$332, DW_AT_name("bit")
	.dwattr $C$DW$332, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$332, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$332, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$67


$C$DW$T$68	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$68, DW_AT_name("CPUSEL4_BITS")
	.dwattr $C$DW$T$68, DW_AT_byte_size(0x02)
$C$DW$333	.dwtag  DW_TAG_member
	.dwattr $C$DW$333, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$333, DW_AT_name("SD1")
	.dwattr $C$DW$333, DW_AT_TI_symbol_name("_SD1")
	.dwattr $C$DW$333, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$333, DW_AT_bit_size(0x01)
	.dwattr $C$DW$333, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$333, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$334	.dwtag  DW_TAG_member
	.dwattr $C$DW$334, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$334, DW_AT_name("SD2")
	.dwattr $C$DW$334, DW_AT_TI_symbol_name("_SD2")
	.dwattr $C$DW$334, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$334, DW_AT_bit_size(0x01)
	.dwattr $C$DW$334, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$334, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$335	.dwtag  DW_TAG_member
	.dwattr $C$DW$335, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$335, DW_AT_name("rsvd1")
	.dwattr $C$DW$335, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$335, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$335, DW_AT_bit_size(0x01)
	.dwattr $C$DW$335, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$335, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$336	.dwtag  DW_TAG_member
	.dwattr $C$DW$336, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$336, DW_AT_name("rsvd2")
	.dwattr $C$DW$336, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$336, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$336, DW_AT_bit_size(0x01)
	.dwattr $C$DW$336, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$336, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$337	.dwtag  DW_TAG_member
	.dwattr $C$DW$337, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$337, DW_AT_name("rsvd3")
	.dwattr $C$DW$337, DW_AT_TI_symbol_name("_rsvd3")
	.dwattr $C$DW$337, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$337, DW_AT_bit_size(0x01)
	.dwattr $C$DW$337, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$337, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$338	.dwtag  DW_TAG_member
	.dwattr $C$DW$338, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$338, DW_AT_name("rsvd4")
	.dwattr $C$DW$338, DW_AT_TI_symbol_name("_rsvd4")
	.dwattr $C$DW$338, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$338, DW_AT_bit_size(0x01)
	.dwattr $C$DW$338, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$338, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$339	.dwtag  DW_TAG_member
	.dwattr $C$DW$339, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$339, DW_AT_name("rsvd5")
	.dwattr $C$DW$339, DW_AT_TI_symbol_name("_rsvd5")
	.dwattr $C$DW$339, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$339, DW_AT_bit_size(0x01)
	.dwattr $C$DW$339, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$339, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$340	.dwtag  DW_TAG_member
	.dwattr $C$DW$340, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$340, DW_AT_name("rsvd6")
	.dwattr $C$DW$340, DW_AT_TI_symbol_name("_rsvd6")
	.dwattr $C$DW$340, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$340, DW_AT_bit_size(0x01)
	.dwattr $C$DW$340, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$340, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$341	.dwtag  DW_TAG_member
	.dwattr $C$DW$341, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$341, DW_AT_name("rsvd7")
	.dwattr $C$DW$341, DW_AT_TI_symbol_name("_rsvd7")
	.dwattr $C$DW$341, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$341, DW_AT_bit_size(0x08)
	.dwattr $C$DW$341, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$341, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$342	.dwtag  DW_TAG_member
	.dwattr $C$DW$342, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$342, DW_AT_name("rsvd8")
	.dwattr $C$DW$342, DW_AT_TI_symbol_name("_rsvd8")
	.dwattr $C$DW$342, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$342, DW_AT_bit_size(0x10)
	.dwattr $C$DW$342, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$342, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$68


$C$DW$T$69	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$69, DW_AT_name("CPUSEL4_REG")
	.dwattr $C$DW$T$69, DW_AT_byte_size(0x02)
$C$DW$343	.dwtag  DW_TAG_member
	.dwattr $C$DW$343, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$343, DW_AT_name("all")
	.dwattr $C$DW$343, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$343, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$343, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$344	.dwtag  DW_TAG_member
	.dwattr $C$DW$344, DW_AT_type(*$C$DW$T$68)
	.dwattr $C$DW$344, DW_AT_name("bit")
	.dwattr $C$DW$344, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$344, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$344, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$69


$C$DW$T$70	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$70, DW_AT_name("CPUSEL5_BITS")
	.dwattr $C$DW$T$70, DW_AT_byte_size(0x02)
$C$DW$345	.dwtag  DW_TAG_member
	.dwattr $C$DW$345, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$345, DW_AT_name("SCI_A")
	.dwattr $C$DW$345, DW_AT_TI_symbol_name("_SCI_A")
	.dwattr $C$DW$345, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$345, DW_AT_bit_size(0x01)
	.dwattr $C$DW$345, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$345, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$346	.dwtag  DW_TAG_member
	.dwattr $C$DW$346, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$346, DW_AT_name("SCI_B")
	.dwattr $C$DW$346, DW_AT_TI_symbol_name("_SCI_B")
	.dwattr $C$DW$346, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$346, DW_AT_bit_size(0x01)
	.dwattr $C$DW$346, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$346, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$347	.dwtag  DW_TAG_member
	.dwattr $C$DW$347, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$347, DW_AT_name("SCI_C")
	.dwattr $C$DW$347, DW_AT_TI_symbol_name("_SCI_C")
	.dwattr $C$DW$347, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$347, DW_AT_bit_size(0x01)
	.dwattr $C$DW$347, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$347, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$348	.dwtag  DW_TAG_member
	.dwattr $C$DW$348, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$348, DW_AT_name("SCI_D")
	.dwattr $C$DW$348, DW_AT_TI_symbol_name("_SCI_D")
	.dwattr $C$DW$348, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$348, DW_AT_bit_size(0x01)
	.dwattr $C$DW$348, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$348, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$349	.dwtag  DW_TAG_member
	.dwattr $C$DW$349, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$349, DW_AT_name("rsvd1")
	.dwattr $C$DW$349, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$349, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$349, DW_AT_bit_size(0x0c)
	.dwattr $C$DW$349, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$349, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$350	.dwtag  DW_TAG_member
	.dwattr $C$DW$350, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$350, DW_AT_name("rsvd2")
	.dwattr $C$DW$350, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$350, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$350, DW_AT_bit_size(0x10)
	.dwattr $C$DW$350, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$350, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$70


$C$DW$T$71	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$71, DW_AT_name("CPUSEL5_REG")
	.dwattr $C$DW$T$71, DW_AT_byte_size(0x02)
$C$DW$351	.dwtag  DW_TAG_member
	.dwattr $C$DW$351, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$351, DW_AT_name("all")
	.dwattr $C$DW$351, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$351, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$351, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$352	.dwtag  DW_TAG_member
	.dwattr $C$DW$352, DW_AT_type(*$C$DW$T$70)
	.dwattr $C$DW$352, DW_AT_name("bit")
	.dwattr $C$DW$352, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$352, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$352, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$71


$C$DW$T$72	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$72, DW_AT_name("CPUSEL6_BITS")
	.dwattr $C$DW$T$72, DW_AT_byte_size(0x02)
$C$DW$353	.dwtag  DW_TAG_member
	.dwattr $C$DW$353, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$353, DW_AT_name("SPI_A")
	.dwattr $C$DW$353, DW_AT_TI_symbol_name("_SPI_A")
	.dwattr $C$DW$353, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$353, DW_AT_bit_size(0x01)
	.dwattr $C$DW$353, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$353, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$354	.dwtag  DW_TAG_member
	.dwattr $C$DW$354, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$354, DW_AT_name("SPI_B")
	.dwattr $C$DW$354, DW_AT_TI_symbol_name("_SPI_B")
	.dwattr $C$DW$354, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$354, DW_AT_bit_size(0x01)
	.dwattr $C$DW$354, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$354, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$355	.dwtag  DW_TAG_member
	.dwattr $C$DW$355, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$355, DW_AT_name("SPI_C")
	.dwattr $C$DW$355, DW_AT_TI_symbol_name("_SPI_C")
	.dwattr $C$DW$355, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$355, DW_AT_bit_size(0x01)
	.dwattr $C$DW$355, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$355, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$356	.dwtag  DW_TAG_member
	.dwattr $C$DW$356, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$356, DW_AT_name("rsvd1")
	.dwattr $C$DW$356, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$356, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$356, DW_AT_bit_size(0x01)
	.dwattr $C$DW$356, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$356, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$357	.dwtag  DW_TAG_member
	.dwattr $C$DW$357, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$357, DW_AT_name("rsvd2")
	.dwattr $C$DW$357, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$357, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$357, DW_AT_bit_size(0x0c)
	.dwattr $C$DW$357, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$357, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$358	.dwtag  DW_TAG_member
	.dwattr $C$DW$358, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$358, DW_AT_name("rsvd3")
	.dwattr $C$DW$358, DW_AT_TI_symbol_name("_rsvd3")
	.dwattr $C$DW$358, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$358, DW_AT_bit_size(0x01)
	.dwattr $C$DW$358, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$358, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$359	.dwtag  DW_TAG_member
	.dwattr $C$DW$359, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$359, DW_AT_name("rsvd4")
	.dwattr $C$DW$359, DW_AT_TI_symbol_name("_rsvd4")
	.dwattr $C$DW$359, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$359, DW_AT_bit_size(0x01)
	.dwattr $C$DW$359, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$359, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$360	.dwtag  DW_TAG_member
	.dwattr $C$DW$360, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$360, DW_AT_name("rsvd5")
	.dwattr $C$DW$360, DW_AT_TI_symbol_name("_rsvd5")
	.dwattr $C$DW$360, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$360, DW_AT_bit_size(0x0e)
	.dwattr $C$DW$360, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$360, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$72


$C$DW$T$73	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$73, DW_AT_name("CPUSEL6_REG")
	.dwattr $C$DW$T$73, DW_AT_byte_size(0x02)
$C$DW$361	.dwtag  DW_TAG_member
	.dwattr $C$DW$361, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$361, DW_AT_name("all")
	.dwattr $C$DW$361, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$361, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$361, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$362	.dwtag  DW_TAG_member
	.dwattr $C$DW$362, DW_AT_type(*$C$DW$T$72)
	.dwattr $C$DW$362, DW_AT_name("bit")
	.dwattr $C$DW$362, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$362, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$362, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$73


$C$DW$T$74	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$74, DW_AT_name("CPUSEL7_BITS")
	.dwattr $C$DW$T$74, DW_AT_byte_size(0x02)
$C$DW$363	.dwtag  DW_TAG_member
	.dwattr $C$DW$363, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$363, DW_AT_name("I2C_A")
	.dwattr $C$DW$363, DW_AT_TI_symbol_name("_I2C_A")
	.dwattr $C$DW$363, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$363, DW_AT_bit_size(0x01)
	.dwattr $C$DW$363, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$363, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$364	.dwtag  DW_TAG_member
	.dwattr $C$DW$364, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$364, DW_AT_name("I2C_B")
	.dwattr $C$DW$364, DW_AT_TI_symbol_name("_I2C_B")
	.dwattr $C$DW$364, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$364, DW_AT_bit_size(0x01)
	.dwattr $C$DW$364, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$364, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$365	.dwtag  DW_TAG_member
	.dwattr $C$DW$365, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$365, DW_AT_name("rsvd1")
	.dwattr $C$DW$365, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$365, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$365, DW_AT_bit_size(0x0e)
	.dwattr $C$DW$365, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$365, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$366	.dwtag  DW_TAG_member
	.dwattr $C$DW$366, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$366, DW_AT_name("rsvd2")
	.dwattr $C$DW$366, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$366, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$366, DW_AT_bit_size(0x01)
	.dwattr $C$DW$366, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$366, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$367	.dwtag  DW_TAG_member
	.dwattr $C$DW$367, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$367, DW_AT_name("rsvd3")
	.dwattr $C$DW$367, DW_AT_TI_symbol_name("_rsvd3")
	.dwattr $C$DW$367, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$367, DW_AT_bit_size(0x01)
	.dwattr $C$DW$367, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$367, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$368	.dwtag  DW_TAG_member
	.dwattr $C$DW$368, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$368, DW_AT_name("rsvd4")
	.dwattr $C$DW$368, DW_AT_TI_symbol_name("_rsvd4")
	.dwattr $C$DW$368, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$368, DW_AT_bit_size(0x0e)
	.dwattr $C$DW$368, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$368, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$74


$C$DW$T$75	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$75, DW_AT_name("CPUSEL7_REG")
	.dwattr $C$DW$T$75, DW_AT_byte_size(0x02)
$C$DW$369	.dwtag  DW_TAG_member
	.dwattr $C$DW$369, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$369, DW_AT_name("all")
	.dwattr $C$DW$369, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$369, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$369, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$370	.dwtag  DW_TAG_member
	.dwattr $C$DW$370, DW_AT_type(*$C$DW$T$74)
	.dwattr $C$DW$370, DW_AT_name("bit")
	.dwattr $C$DW$370, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$370, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$370, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$75


$C$DW$T$76	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$76, DW_AT_name("CPUSEL8_BITS")
	.dwattr $C$DW$T$76, DW_AT_byte_size(0x02)
$C$DW$371	.dwtag  DW_TAG_member
	.dwattr $C$DW$371, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$371, DW_AT_name("CAN_A")
	.dwattr $C$DW$371, DW_AT_TI_symbol_name("_CAN_A")
	.dwattr $C$DW$371, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$371, DW_AT_bit_size(0x01)
	.dwattr $C$DW$371, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$371, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$372	.dwtag  DW_TAG_member
	.dwattr $C$DW$372, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$372, DW_AT_name("CAN_B")
	.dwattr $C$DW$372, DW_AT_TI_symbol_name("_CAN_B")
	.dwattr $C$DW$372, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$372, DW_AT_bit_size(0x01)
	.dwattr $C$DW$372, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$372, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$373	.dwtag  DW_TAG_member
	.dwattr $C$DW$373, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$373, DW_AT_name("rsvd1")
	.dwattr $C$DW$373, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$373, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$373, DW_AT_bit_size(0x01)
	.dwattr $C$DW$373, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$373, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$374	.dwtag  DW_TAG_member
	.dwattr $C$DW$374, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$374, DW_AT_name("rsvd2")
	.dwattr $C$DW$374, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$374, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$374, DW_AT_bit_size(0x01)
	.dwattr $C$DW$374, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$374, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$375	.dwtag  DW_TAG_member
	.dwattr $C$DW$375, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$375, DW_AT_name("rsvd3")
	.dwattr $C$DW$375, DW_AT_TI_symbol_name("_rsvd3")
	.dwattr $C$DW$375, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$375, DW_AT_bit_size(0x0c)
	.dwattr $C$DW$375, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$375, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$376	.dwtag  DW_TAG_member
	.dwattr $C$DW$376, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$376, DW_AT_name("rsvd4")
	.dwattr $C$DW$376, DW_AT_TI_symbol_name("_rsvd4")
	.dwattr $C$DW$376, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$376, DW_AT_bit_size(0x10)
	.dwattr $C$DW$376, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$376, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$76


$C$DW$T$77	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$77, DW_AT_name("CPUSEL8_REG")
	.dwattr $C$DW$T$77, DW_AT_byte_size(0x02)
$C$DW$377	.dwtag  DW_TAG_member
	.dwattr $C$DW$377, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$377, DW_AT_name("all")
	.dwattr $C$DW$377, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$377, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$377, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$378	.dwtag  DW_TAG_member
	.dwattr $C$DW$378, DW_AT_type(*$C$DW$T$76)
	.dwattr $C$DW$378, DW_AT_name("bit")
	.dwattr $C$DW$378, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$378, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$378, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$77


$C$DW$T$78	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$78, DW_AT_name("CPUSEL9_BITS")
	.dwattr $C$DW$T$78, DW_AT_byte_size(0x02)
$C$DW$379	.dwtag  DW_TAG_member
	.dwattr $C$DW$379, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$379, DW_AT_name("McBSP_A")
	.dwattr $C$DW$379, DW_AT_TI_symbol_name("_McBSP_A")
	.dwattr $C$DW$379, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$379, DW_AT_bit_size(0x01)
	.dwattr $C$DW$379, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$379, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$380	.dwtag  DW_TAG_member
	.dwattr $C$DW$380, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$380, DW_AT_name("McBSP_B")
	.dwattr $C$DW$380, DW_AT_TI_symbol_name("_McBSP_B")
	.dwattr $C$DW$380, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$380, DW_AT_bit_size(0x01)
	.dwattr $C$DW$380, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$380, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$381	.dwtag  DW_TAG_member
	.dwattr $C$DW$381, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$381, DW_AT_name("rsvd1")
	.dwattr $C$DW$381, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$381, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$381, DW_AT_bit_size(0x0e)
	.dwattr $C$DW$381, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$381, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$382	.dwtag  DW_TAG_member
	.dwattr $C$DW$382, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$382, DW_AT_name("rsvd2")
	.dwattr $C$DW$382, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$382, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$382, DW_AT_bit_size(0x10)
	.dwattr $C$DW$382, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$382, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$78


$C$DW$T$79	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$79, DW_AT_name("CPUSEL9_REG")
	.dwattr $C$DW$T$79, DW_AT_byte_size(0x02)
$C$DW$383	.dwtag  DW_TAG_member
	.dwattr $C$DW$383, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$383, DW_AT_name("all")
	.dwattr $C$DW$383, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$383, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$383, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$384	.dwtag  DW_TAG_member
	.dwattr $C$DW$384, DW_AT_type(*$C$DW$T$78)
	.dwattr $C$DW$384, DW_AT_name("bit")
	.dwattr $C$DW$384, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$384, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$384, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$79


$C$DW$T$80	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$80, DW_AT_name("CPUSYSLOCK1_BITS")
	.dwattr $C$DW$T$80, DW_AT_byte_size(0x02)
$C$DW$385	.dwtag  DW_TAG_member
	.dwattr $C$DW$385, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$385, DW_AT_name("HIBBOOTMODE")
	.dwattr $C$DW$385, DW_AT_TI_symbol_name("_HIBBOOTMODE")
	.dwattr $C$DW$385, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$385, DW_AT_bit_size(0x01)
	.dwattr $C$DW$385, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$385, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$386	.dwtag  DW_TAG_member
	.dwattr $C$DW$386, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$386, DW_AT_name("IORESTOREADDR")
	.dwattr $C$DW$386, DW_AT_TI_symbol_name("_IORESTOREADDR")
	.dwattr $C$DW$386, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$386, DW_AT_bit_size(0x01)
	.dwattr $C$DW$386, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$386, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$387	.dwtag  DW_TAG_member
	.dwattr $C$DW$387, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$387, DW_AT_name("PIEVERRADDR")
	.dwattr $C$DW$387, DW_AT_TI_symbol_name("_PIEVERRADDR")
	.dwattr $C$DW$387, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$387, DW_AT_bit_size(0x01)
	.dwattr $C$DW$387, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$387, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$388	.dwtag  DW_TAG_member
	.dwattr $C$DW$388, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$388, DW_AT_name("PCLKCR0")
	.dwattr $C$DW$388, DW_AT_TI_symbol_name("_PCLKCR0")
	.dwattr $C$DW$388, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$388, DW_AT_bit_size(0x01)
	.dwattr $C$DW$388, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$388, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$389	.dwtag  DW_TAG_member
	.dwattr $C$DW$389, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$389, DW_AT_name("PCLKCR1")
	.dwattr $C$DW$389, DW_AT_TI_symbol_name("_PCLKCR1")
	.dwattr $C$DW$389, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$389, DW_AT_bit_size(0x01)
	.dwattr $C$DW$389, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$389, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$390	.dwtag  DW_TAG_member
	.dwattr $C$DW$390, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$390, DW_AT_name("PCLKCR2")
	.dwattr $C$DW$390, DW_AT_TI_symbol_name("_PCLKCR2")
	.dwattr $C$DW$390, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$390, DW_AT_bit_size(0x01)
	.dwattr $C$DW$390, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$390, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$391	.dwtag  DW_TAG_member
	.dwattr $C$DW$391, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$391, DW_AT_name("PCLKCR3")
	.dwattr $C$DW$391, DW_AT_TI_symbol_name("_PCLKCR3")
	.dwattr $C$DW$391, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$391, DW_AT_bit_size(0x01)
	.dwattr $C$DW$391, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$391, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$392	.dwtag  DW_TAG_member
	.dwattr $C$DW$392, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$392, DW_AT_name("PCLKCR4")
	.dwattr $C$DW$392, DW_AT_TI_symbol_name("_PCLKCR4")
	.dwattr $C$DW$392, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$392, DW_AT_bit_size(0x01)
	.dwattr $C$DW$392, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$392, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$393	.dwtag  DW_TAG_member
	.dwattr $C$DW$393, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$393, DW_AT_name("PCLKCR5")
	.dwattr $C$DW$393, DW_AT_TI_symbol_name("_PCLKCR5")
	.dwattr $C$DW$393, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$393, DW_AT_bit_size(0x01)
	.dwattr $C$DW$393, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$393, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$394	.dwtag  DW_TAG_member
	.dwattr $C$DW$394, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$394, DW_AT_name("PCLKCR6")
	.dwattr $C$DW$394, DW_AT_TI_symbol_name("_PCLKCR6")
	.dwattr $C$DW$394, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$394, DW_AT_bit_size(0x01)
	.dwattr $C$DW$394, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$394, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$395	.dwtag  DW_TAG_member
	.dwattr $C$DW$395, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$395, DW_AT_name("PCLKCR7")
	.dwattr $C$DW$395, DW_AT_TI_symbol_name("_PCLKCR7")
	.dwattr $C$DW$395, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$395, DW_AT_bit_size(0x01)
	.dwattr $C$DW$395, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$395, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$396	.dwtag  DW_TAG_member
	.dwattr $C$DW$396, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$396, DW_AT_name("PCLKCR8")
	.dwattr $C$DW$396, DW_AT_TI_symbol_name("_PCLKCR8")
	.dwattr $C$DW$396, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$396, DW_AT_bit_size(0x01)
	.dwattr $C$DW$396, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$396, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$397	.dwtag  DW_TAG_member
	.dwattr $C$DW$397, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$397, DW_AT_name("PCLKCR9")
	.dwattr $C$DW$397, DW_AT_TI_symbol_name("_PCLKCR9")
	.dwattr $C$DW$397, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$397, DW_AT_bit_size(0x01)
	.dwattr $C$DW$397, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$397, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$398	.dwtag  DW_TAG_member
	.dwattr $C$DW$398, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$398, DW_AT_name("PCLKCR10")
	.dwattr $C$DW$398, DW_AT_TI_symbol_name("_PCLKCR10")
	.dwattr $C$DW$398, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$398, DW_AT_bit_size(0x01)
	.dwattr $C$DW$398, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$398, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$399	.dwtag  DW_TAG_member
	.dwattr $C$DW$399, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$399, DW_AT_name("PCLKCR11")
	.dwattr $C$DW$399, DW_AT_TI_symbol_name("_PCLKCR11")
	.dwattr $C$DW$399, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$399, DW_AT_bit_size(0x01)
	.dwattr $C$DW$399, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$399, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$400	.dwtag  DW_TAG_member
	.dwattr $C$DW$400, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$400, DW_AT_name("PCLKCR12")
	.dwattr $C$DW$400, DW_AT_TI_symbol_name("_PCLKCR12")
	.dwattr $C$DW$400, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$400, DW_AT_bit_size(0x01)
	.dwattr $C$DW$400, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$400, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$401	.dwtag  DW_TAG_member
	.dwattr $C$DW$401, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$401, DW_AT_name("PCLKCR13")
	.dwattr $C$DW$401, DW_AT_TI_symbol_name("_PCLKCR13")
	.dwattr $C$DW$401, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$401, DW_AT_bit_size(0x01)
	.dwattr $C$DW$401, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$401, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$402	.dwtag  DW_TAG_member
	.dwattr $C$DW$402, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$402, DW_AT_name("PCLKCR14")
	.dwattr $C$DW$402, DW_AT_TI_symbol_name("_PCLKCR14")
	.dwattr $C$DW$402, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$402, DW_AT_bit_size(0x01)
	.dwattr $C$DW$402, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$402, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$403	.dwtag  DW_TAG_member
	.dwattr $C$DW$403, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$403, DW_AT_name("PCLKCR15")
	.dwattr $C$DW$403, DW_AT_TI_symbol_name("_PCLKCR15")
	.dwattr $C$DW$403, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$403, DW_AT_bit_size(0x01)
	.dwattr $C$DW$403, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$403, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$404	.dwtag  DW_TAG_member
	.dwattr $C$DW$404, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$404, DW_AT_name("PCLKCR16")
	.dwattr $C$DW$404, DW_AT_TI_symbol_name("_PCLKCR16")
	.dwattr $C$DW$404, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$404, DW_AT_bit_size(0x01)
	.dwattr $C$DW$404, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$404, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$405	.dwtag  DW_TAG_member
	.dwattr $C$DW$405, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$405, DW_AT_name("SECMSEL")
	.dwattr $C$DW$405, DW_AT_TI_symbol_name("_SECMSEL")
	.dwattr $C$DW$405, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$405, DW_AT_bit_size(0x01)
	.dwattr $C$DW$405, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$405, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$406	.dwtag  DW_TAG_member
	.dwattr $C$DW$406, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$406, DW_AT_name("LPMCR")
	.dwattr $C$DW$406, DW_AT_TI_symbol_name("_LPMCR")
	.dwattr $C$DW$406, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$406, DW_AT_bit_size(0x01)
	.dwattr $C$DW$406, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$406, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$407	.dwtag  DW_TAG_member
	.dwattr $C$DW$407, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$407, DW_AT_name("GPIOLPMSEL0")
	.dwattr $C$DW$407, DW_AT_TI_symbol_name("_GPIOLPMSEL0")
	.dwattr $C$DW$407, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$407, DW_AT_bit_size(0x01)
	.dwattr $C$DW$407, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$407, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$408	.dwtag  DW_TAG_member
	.dwattr $C$DW$408, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$408, DW_AT_name("GPIOLPMSEL1")
	.dwattr $C$DW$408, DW_AT_TI_symbol_name("_GPIOLPMSEL1")
	.dwattr $C$DW$408, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$408, DW_AT_bit_size(0x01)
	.dwattr $C$DW$408, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$408, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$409	.dwtag  DW_TAG_member
	.dwattr $C$DW$409, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$409, DW_AT_name("rsvd1")
	.dwattr $C$DW$409, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$409, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$409, DW_AT_bit_size(0x08)
	.dwattr $C$DW$409, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$409, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$80


$C$DW$T$81	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$81, DW_AT_name("CPUSYSLOCK1_REG")
	.dwattr $C$DW$T$81, DW_AT_byte_size(0x02)
$C$DW$410	.dwtag  DW_TAG_member
	.dwattr $C$DW$410, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$410, DW_AT_name("all")
	.dwattr $C$DW$410, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$410, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$410, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$411	.dwtag  DW_TAG_member
	.dwattr $C$DW$411, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$411, DW_AT_name("bit")
	.dwattr $C$DW$411, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$411, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$411, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$81


$C$DW$T$82	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$82, DW_AT_name("CPUTIMER_REGS")
	.dwattr $C$DW$T$82, DW_AT_byte_size(0x08)
$C$DW$412	.dwtag  DW_TAG_member
	.dwattr $C$DW$412, DW_AT_type(*$C$DW$T$293)
	.dwattr $C$DW$412, DW_AT_name("TIM")
	.dwattr $C$DW$412, DW_AT_TI_symbol_name("_TIM")
	.dwattr $C$DW$412, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$412, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$413	.dwtag  DW_TAG_member
	.dwattr $C$DW$413, DW_AT_type(*$C$DW$T$243)
	.dwattr $C$DW$413, DW_AT_name("PRD")
	.dwattr $C$DW$413, DW_AT_TI_symbol_name("_PRD")
	.dwattr $C$DW$413, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$413, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$414	.dwtag  DW_TAG_member
	.dwattr $C$DW$414, DW_AT_type(*$C$DW$T$291)
	.dwattr $C$DW$414, DW_AT_name("TCR")
	.dwattr $C$DW$414, DW_AT_TI_symbol_name("_TCR")
	.dwattr $C$DW$414, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$414, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$415	.dwtag  DW_TAG_member
	.dwattr $C$DW$415, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$415, DW_AT_name("rsvd1")
	.dwattr $C$DW$415, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$415, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$415, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$416	.dwtag  DW_TAG_member
	.dwattr $C$DW$416, DW_AT_type(*$C$DW$T$299)
	.dwattr $C$DW$416, DW_AT_name("TPR")
	.dwattr $C$DW$416, DW_AT_TI_symbol_name("_TPR")
	.dwattr $C$DW$416, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$416, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$417	.dwtag  DW_TAG_member
	.dwattr $C$DW$417, DW_AT_type(*$C$DW$T$297)
	.dwattr $C$DW$417, DW_AT_name("TPRH")
	.dwattr $C$DW$417, DW_AT_TI_symbol_name("_TPRH")
	.dwattr $C$DW$417, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr $C$DW$417, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$82

$C$DW$418	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$418, DW_AT_type(*$C$DW$T$82)

$C$DW$T$367	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$367, DW_AT_type(*$C$DW$418)


$C$DW$T$85	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$85, DW_AT_name("CPU_SYS_REGS")
	.dwattr $C$DW$T$85, DW_AT_byte_size(0x82)
$C$DW$419	.dwtag  DW_TAG_member
	.dwattr $C$DW$419, DW_AT_type(*$C$DW$T$81)
	.dwattr $C$DW$419, DW_AT_name("CPUSYSLOCK1")
	.dwattr $C$DW$419, DW_AT_TI_symbol_name("_CPUSYSLOCK1")
	.dwattr $C$DW$419, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$419, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$420	.dwtag  DW_TAG_member
	.dwattr $C$DW$420, DW_AT_type(*$C$DW$T$52)
	.dwattr $C$DW$420, DW_AT_name("rsvd1")
	.dwattr $C$DW$420, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$420, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$420, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$421	.dwtag  DW_TAG_member
	.dwattr $C$DW$421, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$421, DW_AT_name("HIBBOOTMODE")
	.dwattr $C$DW$421, DW_AT_TI_symbol_name("_HIBBOOTMODE")
	.dwattr $C$DW$421, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$421, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$422	.dwtag  DW_TAG_member
	.dwattr $C$DW$422, DW_AT_type(*$C$DW$T$191)
	.dwattr $C$DW$422, DW_AT_name("IORESTOREADDR")
	.dwattr $C$DW$422, DW_AT_TI_symbol_name("_IORESTOREADDR")
	.dwattr $C$DW$422, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$422, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$423	.dwtag  DW_TAG_member
	.dwattr $C$DW$423, DW_AT_type(*$C$DW$T$241)
	.dwattr $C$DW$423, DW_AT_name("PIEVERRADDR")
	.dwattr $C$DW$423, DW_AT_TI_symbol_name("_PIEVERRADDR")
	.dwattr $C$DW$423, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$423, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$424	.dwtag  DW_TAG_member
	.dwattr $C$DW$424, DW_AT_type(*$C$DW$T$83)
	.dwattr $C$DW$424, DW_AT_name("rsvd2")
	.dwattr $C$DW$424, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$424, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$424, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$425	.dwtag  DW_TAG_member
	.dwattr $C$DW$425, DW_AT_type(*$C$DW$T$207)
	.dwattr $C$DW$425, DW_AT_name("PCLKCR0")
	.dwattr $C$DW$425, DW_AT_TI_symbol_name("_PCLKCR0")
	.dwattr $C$DW$425, DW_AT_data_member_location[DW_OP_plus_uconst 0x22]
	.dwattr $C$DW$425, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$426	.dwtag  DW_TAG_member
	.dwattr $C$DW$426, DW_AT_type(*$C$DW$T$221)
	.dwattr $C$DW$426, DW_AT_name("PCLKCR1")
	.dwattr $C$DW$426, DW_AT_TI_symbol_name("_PCLKCR1")
	.dwattr $C$DW$426, DW_AT_data_member_location[DW_OP_plus_uconst 0x24]
	.dwattr $C$DW$426, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$427	.dwtag  DW_TAG_member
	.dwattr $C$DW$427, DW_AT_type(*$C$DW$T$223)
	.dwattr $C$DW$427, DW_AT_name("PCLKCR2")
	.dwattr $C$DW$427, DW_AT_TI_symbol_name("_PCLKCR2")
	.dwattr $C$DW$427, DW_AT_data_member_location[DW_OP_plus_uconst 0x26]
	.dwattr $C$DW$427, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$428	.dwtag  DW_TAG_member
	.dwattr $C$DW$428, DW_AT_type(*$C$DW$T$225)
	.dwattr $C$DW$428, DW_AT_name("PCLKCR3")
	.dwattr $C$DW$428, DW_AT_TI_symbol_name("_PCLKCR3")
	.dwattr $C$DW$428, DW_AT_data_member_location[DW_OP_plus_uconst 0x28]
	.dwattr $C$DW$428, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$429	.dwtag  DW_TAG_member
	.dwattr $C$DW$429, DW_AT_type(*$C$DW$T$227)
	.dwattr $C$DW$429, DW_AT_name("PCLKCR4")
	.dwattr $C$DW$429, DW_AT_TI_symbol_name("_PCLKCR4")
	.dwattr $C$DW$429, DW_AT_data_member_location[DW_OP_plus_uconst 0x2a]
	.dwattr $C$DW$429, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$430	.dwtag  DW_TAG_member
	.dwattr $C$DW$430, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$430, DW_AT_name("rsvd3")
	.dwattr $C$DW$430, DW_AT_TI_symbol_name("_rsvd3")
	.dwattr $C$DW$430, DW_AT_data_member_location[DW_OP_plus_uconst 0x2c]
	.dwattr $C$DW$430, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$431	.dwtag  DW_TAG_member
	.dwattr $C$DW$431, DW_AT_type(*$C$DW$T$229)
	.dwattr $C$DW$431, DW_AT_name("PCLKCR6")
	.dwattr $C$DW$431, DW_AT_TI_symbol_name("_PCLKCR6")
	.dwattr $C$DW$431, DW_AT_data_member_location[DW_OP_plus_uconst 0x2e]
	.dwattr $C$DW$431, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$432	.dwtag  DW_TAG_member
	.dwattr $C$DW$432, DW_AT_type(*$C$DW$T$231)
	.dwattr $C$DW$432, DW_AT_name("PCLKCR7")
	.dwattr $C$DW$432, DW_AT_TI_symbol_name("_PCLKCR7")
	.dwattr $C$DW$432, DW_AT_data_member_location[DW_OP_plus_uconst 0x30]
	.dwattr $C$DW$432, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$433	.dwtag  DW_TAG_member
	.dwattr $C$DW$433, DW_AT_type(*$C$DW$T$233)
	.dwattr $C$DW$433, DW_AT_name("PCLKCR8")
	.dwattr $C$DW$433, DW_AT_TI_symbol_name("_PCLKCR8")
	.dwattr $C$DW$433, DW_AT_data_member_location[DW_OP_plus_uconst 0x32]
	.dwattr $C$DW$433, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$434	.dwtag  DW_TAG_member
	.dwattr $C$DW$434, DW_AT_type(*$C$DW$T$235)
	.dwattr $C$DW$434, DW_AT_name("PCLKCR9")
	.dwattr $C$DW$434, DW_AT_TI_symbol_name("_PCLKCR9")
	.dwattr $C$DW$434, DW_AT_data_member_location[DW_OP_plus_uconst 0x34]
	.dwattr $C$DW$434, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$435	.dwtag  DW_TAG_member
	.dwattr $C$DW$435, DW_AT_type(*$C$DW$T$209)
	.dwattr $C$DW$435, DW_AT_name("PCLKCR10")
	.dwattr $C$DW$435, DW_AT_TI_symbol_name("_PCLKCR10")
	.dwattr $C$DW$435, DW_AT_data_member_location[DW_OP_plus_uconst 0x36]
	.dwattr $C$DW$435, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$436	.dwtag  DW_TAG_member
	.dwattr $C$DW$436, DW_AT_type(*$C$DW$T$211)
	.dwattr $C$DW$436, DW_AT_name("PCLKCR11")
	.dwattr $C$DW$436, DW_AT_TI_symbol_name("_PCLKCR11")
	.dwattr $C$DW$436, DW_AT_data_member_location[DW_OP_plus_uconst 0x38]
	.dwattr $C$DW$436, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$437	.dwtag  DW_TAG_member
	.dwattr $C$DW$437, DW_AT_type(*$C$DW$T$213)
	.dwattr $C$DW$437, DW_AT_name("PCLKCR12")
	.dwattr $C$DW$437, DW_AT_TI_symbol_name("_PCLKCR12")
	.dwattr $C$DW$437, DW_AT_data_member_location[DW_OP_plus_uconst 0x3a]
	.dwattr $C$DW$437, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$438	.dwtag  DW_TAG_member
	.dwattr $C$DW$438, DW_AT_type(*$C$DW$T$215)
	.dwattr $C$DW$438, DW_AT_name("PCLKCR13")
	.dwattr $C$DW$438, DW_AT_TI_symbol_name("_PCLKCR13")
	.dwattr $C$DW$438, DW_AT_data_member_location[DW_OP_plus_uconst 0x3c]
	.dwattr $C$DW$438, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$439	.dwtag  DW_TAG_member
	.dwattr $C$DW$439, DW_AT_type(*$C$DW$T$217)
	.dwattr $C$DW$439, DW_AT_name("PCLKCR14")
	.dwattr $C$DW$439, DW_AT_TI_symbol_name("_PCLKCR14")
	.dwattr $C$DW$439, DW_AT_data_member_location[DW_OP_plus_uconst 0x3e]
	.dwattr $C$DW$439, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$440	.dwtag  DW_TAG_member
	.dwattr $C$DW$440, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$440, DW_AT_name("rsvd4")
	.dwattr $C$DW$440, DW_AT_TI_symbol_name("_rsvd4")
	.dwattr $C$DW$440, DW_AT_data_member_location[DW_OP_plus_uconst 0x40]
	.dwattr $C$DW$440, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$441	.dwtag  DW_TAG_member
	.dwattr $C$DW$441, DW_AT_type(*$C$DW$T$219)
	.dwattr $C$DW$441, DW_AT_name("PCLKCR16")
	.dwattr $C$DW$441, DW_AT_TI_symbol_name("_PCLKCR16")
	.dwattr $C$DW$441, DW_AT_data_member_location[DW_OP_plus_uconst 0x42]
	.dwattr $C$DW$441, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$442	.dwtag  DW_TAG_member
	.dwattr $C$DW$442, DW_AT_type(*$C$DW$T$84)
	.dwattr $C$DW$442, DW_AT_name("rsvd5")
	.dwattr $C$DW$442, DW_AT_TI_symbol_name("_rsvd5")
	.dwattr $C$DW$442, DW_AT_data_member_location[DW_OP_plus_uconst 0x44]
	.dwattr $C$DW$442, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$443	.dwtag  DW_TAG_member
	.dwattr $C$DW$443, DW_AT_type(*$C$DW$T$253)
	.dwattr $C$DW$443, DW_AT_name("SECMSEL")
	.dwattr $C$DW$443, DW_AT_TI_symbol_name("_SECMSEL")
	.dwattr $C$DW$443, DW_AT_data_member_location[DW_OP_plus_uconst 0x74]
	.dwattr $C$DW$443, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$444	.dwtag  DW_TAG_member
	.dwattr $C$DW$444, DW_AT_type(*$C$DW$T$197)
	.dwattr $C$DW$444, DW_AT_name("LPMCR")
	.dwattr $C$DW$444, DW_AT_TI_symbol_name("_LPMCR")
	.dwattr $C$DW$444, DW_AT_data_member_location[DW_OP_plus_uconst 0x76]
	.dwattr $C$DW$444, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$445	.dwtag  DW_TAG_member
	.dwattr $C$DW$445, DW_AT_type(*$C$DW$T$183)
	.dwattr $C$DW$445, DW_AT_name("GPIOLPMSEL0")
	.dwattr $C$DW$445, DW_AT_TI_symbol_name("_GPIOLPMSEL0")
	.dwattr $C$DW$445, DW_AT_data_member_location[DW_OP_plus_uconst 0x78]
	.dwattr $C$DW$445, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$446	.dwtag  DW_TAG_member
	.dwattr $C$DW$446, DW_AT_type(*$C$DW$T$185)
	.dwattr $C$DW$446, DW_AT_name("GPIOLPMSEL1")
	.dwattr $C$DW$446, DW_AT_TI_symbol_name("_GPIOLPMSEL1")
	.dwattr $C$DW$446, DW_AT_data_member_location[DW_OP_plus_uconst 0x7a]
	.dwattr $C$DW$446, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$447	.dwtag  DW_TAG_member
	.dwattr $C$DW$447, DW_AT_type(*$C$DW$T$295)
	.dwattr $C$DW$447, DW_AT_name("TMR2CLKCTL")
	.dwattr $C$DW$447, DW_AT_TI_symbol_name("_TMR2CLKCTL")
	.dwattr $C$DW$447, DW_AT_data_member_location[DW_OP_plus_uconst 0x7c]
	.dwattr $C$DW$447, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$448	.dwtag  DW_TAG_member
	.dwattr $C$DW$448, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$448, DW_AT_name("rsvd6")
	.dwattr $C$DW$448, DW_AT_TI_symbol_name("_rsvd6")
	.dwattr $C$DW$448, DW_AT_data_member_location[DW_OP_plus_uconst 0x7e]
	.dwattr $C$DW$448, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$449	.dwtag  DW_TAG_member
	.dwattr $C$DW$449, DW_AT_type(*$C$DW$T$247)
	.dwattr $C$DW$449, DW_AT_name("RESC")
	.dwattr $C$DW$449, DW_AT_TI_symbol_name("_RESC")
	.dwattr $C$DW$449, DW_AT_data_member_location[DW_OP_plus_uconst 0x80]
	.dwattr $C$DW$449, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$85

$C$DW$450	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$450, DW_AT_type(*$C$DW$T$85)

$C$DW$T$368	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$368, DW_AT_type(*$C$DW$450)


$C$DW$T$86	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$86, DW_AT_name("DC0_BITS")
	.dwattr $C$DW$T$86, DW_AT_byte_size(0x02)
$C$DW$451	.dwtag  DW_TAG_member
	.dwattr $C$DW$451, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$451, DW_AT_name("SINGLE_CORE")
	.dwattr $C$DW$451, DW_AT_TI_symbol_name("_SINGLE_CORE")
	.dwattr $C$DW$451, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$451, DW_AT_bit_size(0x01)
	.dwattr $C$DW$451, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$451, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$452	.dwtag  DW_TAG_member
	.dwattr $C$DW$452, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$452, DW_AT_name("rsvd1")
	.dwattr $C$DW$452, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$452, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$452, DW_AT_bit_size(0x0f)
	.dwattr $C$DW$452, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$452, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$453	.dwtag  DW_TAG_member
	.dwattr $C$DW$453, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$453, DW_AT_name("rsvd2")
	.dwattr $C$DW$453, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$453, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$453, DW_AT_bit_size(0x10)
	.dwattr $C$DW$453, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$453, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$86


$C$DW$T$87	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$87, DW_AT_name("DC0_REG")
	.dwattr $C$DW$T$87, DW_AT_byte_size(0x02)
$C$DW$454	.dwtag  DW_TAG_member
	.dwattr $C$DW$454, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$454, DW_AT_name("all")
	.dwattr $C$DW$454, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$454, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$454, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$455	.dwtag  DW_TAG_member
	.dwattr $C$DW$455, DW_AT_type(*$C$DW$T$86)
	.dwattr $C$DW$455, DW_AT_name("bit")
	.dwattr $C$DW$455, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$455, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$455, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$87


$C$DW$T$88	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$88, DW_AT_name("DC10_BITS")
	.dwattr $C$DW$T$88, DW_AT_byte_size(0x02)
$C$DW$456	.dwtag  DW_TAG_member
	.dwattr $C$DW$456, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$456, DW_AT_name("I2C_A")
	.dwattr $C$DW$456, DW_AT_TI_symbol_name("_I2C_A")
	.dwattr $C$DW$456, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$456, DW_AT_bit_size(0x01)
	.dwattr $C$DW$456, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$456, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$457	.dwtag  DW_TAG_member
	.dwattr $C$DW$457, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$457, DW_AT_name("I2C_B")
	.dwattr $C$DW$457, DW_AT_TI_symbol_name("_I2C_B")
	.dwattr $C$DW$457, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$457, DW_AT_bit_size(0x01)
	.dwattr $C$DW$457, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$457, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$458	.dwtag  DW_TAG_member
	.dwattr $C$DW$458, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$458, DW_AT_name("rsvd1")
	.dwattr $C$DW$458, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$458, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$458, DW_AT_bit_size(0x0e)
	.dwattr $C$DW$458, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$458, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$459	.dwtag  DW_TAG_member
	.dwattr $C$DW$459, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$459, DW_AT_name("rsvd2")
	.dwattr $C$DW$459, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$459, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$459, DW_AT_bit_size(0x01)
	.dwattr $C$DW$459, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$459, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$460	.dwtag  DW_TAG_member
	.dwattr $C$DW$460, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$460, DW_AT_name("rsvd3")
	.dwattr $C$DW$460, DW_AT_TI_symbol_name("_rsvd3")
	.dwattr $C$DW$460, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$460, DW_AT_bit_size(0x01)
	.dwattr $C$DW$460, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$460, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$461	.dwtag  DW_TAG_member
	.dwattr $C$DW$461, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$461, DW_AT_name("rsvd4")
	.dwattr $C$DW$461, DW_AT_TI_symbol_name("_rsvd4")
	.dwattr $C$DW$461, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$461, DW_AT_bit_size(0x0e)
	.dwattr $C$DW$461, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$461, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$88


$C$DW$T$89	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$89, DW_AT_name("DC10_REG")
	.dwattr $C$DW$T$89, DW_AT_byte_size(0x02)
$C$DW$462	.dwtag  DW_TAG_member
	.dwattr $C$DW$462, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$462, DW_AT_name("all")
	.dwattr $C$DW$462, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$462, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$462, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$463	.dwtag  DW_TAG_member
	.dwattr $C$DW$463, DW_AT_type(*$C$DW$T$88)
	.dwattr $C$DW$463, DW_AT_name("bit")
	.dwattr $C$DW$463, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$463, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$463, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$89


$C$DW$T$90	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$90, DW_AT_name("DC11_BITS")
	.dwattr $C$DW$T$90, DW_AT_byte_size(0x02)
$C$DW$464	.dwtag  DW_TAG_member
	.dwattr $C$DW$464, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$464, DW_AT_name("CAN_A")
	.dwattr $C$DW$464, DW_AT_TI_symbol_name("_CAN_A")
	.dwattr $C$DW$464, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$464, DW_AT_bit_size(0x01)
	.dwattr $C$DW$464, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$464, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$465	.dwtag  DW_TAG_member
	.dwattr $C$DW$465, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$465, DW_AT_name("CAN_B")
	.dwattr $C$DW$465, DW_AT_TI_symbol_name("_CAN_B")
	.dwattr $C$DW$465, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$465, DW_AT_bit_size(0x01)
	.dwattr $C$DW$465, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$465, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$466	.dwtag  DW_TAG_member
	.dwattr $C$DW$466, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$466, DW_AT_name("rsvd1")
	.dwattr $C$DW$466, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$466, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$466, DW_AT_bit_size(0x01)
	.dwattr $C$DW$466, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$466, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$467	.dwtag  DW_TAG_member
	.dwattr $C$DW$467, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$467, DW_AT_name("rsvd2")
	.dwattr $C$DW$467, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$467, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$467, DW_AT_bit_size(0x01)
	.dwattr $C$DW$467, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$467, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$468	.dwtag  DW_TAG_member
	.dwattr $C$DW$468, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$468, DW_AT_name("rsvd3")
	.dwattr $C$DW$468, DW_AT_TI_symbol_name("_rsvd3")
	.dwattr $C$DW$468, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$468, DW_AT_bit_size(0x0c)
	.dwattr $C$DW$468, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$468, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$469	.dwtag  DW_TAG_member
	.dwattr $C$DW$469, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$469, DW_AT_name("rsvd4")
	.dwattr $C$DW$469, DW_AT_TI_symbol_name("_rsvd4")
	.dwattr $C$DW$469, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$469, DW_AT_bit_size(0x10)
	.dwattr $C$DW$469, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$469, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$90


$C$DW$T$91	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$91, DW_AT_name("DC11_REG")
	.dwattr $C$DW$T$91, DW_AT_byte_size(0x02)
$C$DW$470	.dwtag  DW_TAG_member
	.dwattr $C$DW$470, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$470, DW_AT_name("all")
	.dwattr $C$DW$470, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$470, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$470, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$471	.dwtag  DW_TAG_member
	.dwattr $C$DW$471, DW_AT_type(*$C$DW$T$90)
	.dwattr $C$DW$471, DW_AT_name("bit")
	.dwattr $C$DW$471, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$471, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$471, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$91


$C$DW$T$92	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$92, DW_AT_name("DC12_BITS")
	.dwattr $C$DW$T$92, DW_AT_byte_size(0x02)
$C$DW$472	.dwtag  DW_TAG_member
	.dwattr $C$DW$472, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$472, DW_AT_name("McBSP_A")
	.dwattr $C$DW$472, DW_AT_TI_symbol_name("_McBSP_A")
	.dwattr $C$DW$472, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$472, DW_AT_bit_size(0x01)
	.dwattr $C$DW$472, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$472, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$473	.dwtag  DW_TAG_member
	.dwattr $C$DW$473, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$473, DW_AT_name("McBSP_B")
	.dwattr $C$DW$473, DW_AT_TI_symbol_name("_McBSP_B")
	.dwattr $C$DW$473, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$473, DW_AT_bit_size(0x01)
	.dwattr $C$DW$473, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$473, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$474	.dwtag  DW_TAG_member
	.dwattr $C$DW$474, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$474, DW_AT_name("rsvd1")
	.dwattr $C$DW$474, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$474, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$474, DW_AT_bit_size(0x0e)
	.dwattr $C$DW$474, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$474, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$475	.dwtag  DW_TAG_member
	.dwattr $C$DW$475, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$475, DW_AT_name("USB_A")
	.dwattr $C$DW$475, DW_AT_TI_symbol_name("_USB_A")
	.dwattr $C$DW$475, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$475, DW_AT_bit_size(0x02)
	.dwattr $C$DW$475, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$475, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$476	.dwtag  DW_TAG_member
	.dwattr $C$DW$476, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$476, DW_AT_name("rsvd2")
	.dwattr $C$DW$476, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$476, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$476, DW_AT_bit_size(0x02)
	.dwattr $C$DW$476, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$476, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$477	.dwtag  DW_TAG_member
	.dwattr $C$DW$477, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$477, DW_AT_name("rsvd3")
	.dwattr $C$DW$477, DW_AT_TI_symbol_name("_rsvd3")
	.dwattr $C$DW$477, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$477, DW_AT_bit_size(0x0c)
	.dwattr $C$DW$477, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$477, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$92


$C$DW$T$93	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$93, DW_AT_name("DC12_REG")
	.dwattr $C$DW$T$93, DW_AT_byte_size(0x02)
$C$DW$478	.dwtag  DW_TAG_member
	.dwattr $C$DW$478, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$478, DW_AT_name("all")
	.dwattr $C$DW$478, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$478, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$478, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$479	.dwtag  DW_TAG_member
	.dwattr $C$DW$479, DW_AT_type(*$C$DW$T$92)
	.dwattr $C$DW$479, DW_AT_name("bit")
	.dwattr $C$DW$479, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$479, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$479, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$93


$C$DW$T$94	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$94, DW_AT_name("DC13_BITS")
	.dwattr $C$DW$T$94, DW_AT_byte_size(0x02)
$C$DW$480	.dwtag  DW_TAG_member
	.dwattr $C$DW$480, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$480, DW_AT_name("uPP_A")
	.dwattr $C$DW$480, DW_AT_TI_symbol_name("_uPP_A")
	.dwattr $C$DW$480, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$480, DW_AT_bit_size(0x01)
	.dwattr $C$DW$480, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$480, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$481	.dwtag  DW_TAG_member
	.dwattr $C$DW$481, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$481, DW_AT_name("rsvd1")
	.dwattr $C$DW$481, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$481, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$481, DW_AT_bit_size(0x01)
	.dwattr $C$DW$481, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$481, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$482	.dwtag  DW_TAG_member
	.dwattr $C$DW$482, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$482, DW_AT_name("rsvd2")
	.dwattr $C$DW$482, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$482, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$482, DW_AT_bit_size(0x0e)
	.dwattr $C$DW$482, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$482, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$483	.dwtag  DW_TAG_member
	.dwattr $C$DW$483, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$483, DW_AT_name("rsvd3")
	.dwattr $C$DW$483, DW_AT_TI_symbol_name("_rsvd3")
	.dwattr $C$DW$483, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$483, DW_AT_bit_size(0x10)
	.dwattr $C$DW$483, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$483, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$94


$C$DW$T$95	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$95, DW_AT_name("DC13_REG")
	.dwattr $C$DW$T$95, DW_AT_byte_size(0x02)
$C$DW$484	.dwtag  DW_TAG_member
	.dwattr $C$DW$484, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$484, DW_AT_name("all")
	.dwattr $C$DW$484, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$484, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$484, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$485	.dwtag  DW_TAG_member
	.dwattr $C$DW$485, DW_AT_type(*$C$DW$T$94)
	.dwattr $C$DW$485, DW_AT_name("bit")
	.dwattr $C$DW$485, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$485, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$485, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$95


$C$DW$T$96	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$96, DW_AT_name("DC14_BITS")
	.dwattr $C$DW$T$96, DW_AT_byte_size(0x02)
$C$DW$486	.dwtag  DW_TAG_member
	.dwattr $C$DW$486, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$486, DW_AT_name("ADC_A")
	.dwattr $C$DW$486, DW_AT_TI_symbol_name("_ADC_A")
	.dwattr $C$DW$486, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$486, DW_AT_bit_size(0x01)
	.dwattr $C$DW$486, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$486, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$487	.dwtag  DW_TAG_member
	.dwattr $C$DW$487, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$487, DW_AT_name("ADC_B")
	.dwattr $C$DW$487, DW_AT_TI_symbol_name("_ADC_B")
	.dwattr $C$DW$487, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$487, DW_AT_bit_size(0x01)
	.dwattr $C$DW$487, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$487, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$488	.dwtag  DW_TAG_member
	.dwattr $C$DW$488, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$488, DW_AT_name("ADC_C")
	.dwattr $C$DW$488, DW_AT_TI_symbol_name("_ADC_C")
	.dwattr $C$DW$488, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$488, DW_AT_bit_size(0x01)
	.dwattr $C$DW$488, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$488, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$489	.dwtag  DW_TAG_member
	.dwattr $C$DW$489, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$489, DW_AT_name("ADC_D")
	.dwattr $C$DW$489, DW_AT_TI_symbol_name("_ADC_D")
	.dwattr $C$DW$489, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$489, DW_AT_bit_size(0x01)
	.dwattr $C$DW$489, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$489, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$490	.dwtag  DW_TAG_member
	.dwattr $C$DW$490, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$490, DW_AT_name("rsvd1")
	.dwattr $C$DW$490, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$490, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$490, DW_AT_bit_size(0x0c)
	.dwattr $C$DW$490, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$490, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$491	.dwtag  DW_TAG_member
	.dwattr $C$DW$491, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$491, DW_AT_name("rsvd2")
	.dwattr $C$DW$491, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$491, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$491, DW_AT_bit_size(0x10)
	.dwattr $C$DW$491, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$491, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$96


$C$DW$T$97	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$97, DW_AT_name("DC14_REG")
	.dwattr $C$DW$T$97, DW_AT_byte_size(0x02)
$C$DW$492	.dwtag  DW_TAG_member
	.dwattr $C$DW$492, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$492, DW_AT_name("all")
	.dwattr $C$DW$492, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$492, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$492, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$493	.dwtag  DW_TAG_member
	.dwattr $C$DW$493, DW_AT_type(*$C$DW$T$96)
	.dwattr $C$DW$493, DW_AT_name("bit")
	.dwattr $C$DW$493, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$493, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$493, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$97


$C$DW$T$98	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$98, DW_AT_name("DC15_BITS")
	.dwattr $C$DW$T$98, DW_AT_byte_size(0x02)
$C$DW$494	.dwtag  DW_TAG_member
	.dwattr $C$DW$494, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$494, DW_AT_name("CMPSS1")
	.dwattr $C$DW$494, DW_AT_TI_symbol_name("_CMPSS1")
	.dwattr $C$DW$494, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$494, DW_AT_bit_size(0x01)
	.dwattr $C$DW$494, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$494, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$495	.dwtag  DW_TAG_member
	.dwattr $C$DW$495, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$495, DW_AT_name("CMPSS2")
	.dwattr $C$DW$495, DW_AT_TI_symbol_name("_CMPSS2")
	.dwattr $C$DW$495, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$495, DW_AT_bit_size(0x01)
	.dwattr $C$DW$495, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$495, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$496	.dwtag  DW_TAG_member
	.dwattr $C$DW$496, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$496, DW_AT_name("CMPSS3")
	.dwattr $C$DW$496, DW_AT_TI_symbol_name("_CMPSS3")
	.dwattr $C$DW$496, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$496, DW_AT_bit_size(0x01)
	.dwattr $C$DW$496, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$496, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$497	.dwtag  DW_TAG_member
	.dwattr $C$DW$497, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$497, DW_AT_name("CMPSS4")
	.dwattr $C$DW$497, DW_AT_TI_symbol_name("_CMPSS4")
	.dwattr $C$DW$497, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$497, DW_AT_bit_size(0x01)
	.dwattr $C$DW$497, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$497, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$498	.dwtag  DW_TAG_member
	.dwattr $C$DW$498, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$498, DW_AT_name("CMPSS5")
	.dwattr $C$DW$498, DW_AT_TI_symbol_name("_CMPSS5")
	.dwattr $C$DW$498, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$498, DW_AT_bit_size(0x01)
	.dwattr $C$DW$498, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$498, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$499	.dwtag  DW_TAG_member
	.dwattr $C$DW$499, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$499, DW_AT_name("CMPSS6")
	.dwattr $C$DW$499, DW_AT_TI_symbol_name("_CMPSS6")
	.dwattr $C$DW$499, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$499, DW_AT_bit_size(0x01)
	.dwattr $C$DW$499, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$499, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$500	.dwtag  DW_TAG_member
	.dwattr $C$DW$500, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$500, DW_AT_name("CMPSS7")
	.dwattr $C$DW$500, DW_AT_TI_symbol_name("_CMPSS7")
	.dwattr $C$DW$500, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$500, DW_AT_bit_size(0x01)
	.dwattr $C$DW$500, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$500, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$501	.dwtag  DW_TAG_member
	.dwattr $C$DW$501, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$501, DW_AT_name("CMPSS8")
	.dwattr $C$DW$501, DW_AT_TI_symbol_name("_CMPSS8")
	.dwattr $C$DW$501, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$501, DW_AT_bit_size(0x01)
	.dwattr $C$DW$501, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$501, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$502	.dwtag  DW_TAG_member
	.dwattr $C$DW$502, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$502, DW_AT_name("rsvd1")
	.dwattr $C$DW$502, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$502, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$502, DW_AT_bit_size(0x08)
	.dwattr $C$DW$502, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$502, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$503	.dwtag  DW_TAG_member
	.dwattr $C$DW$503, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$503, DW_AT_name("rsvd2")
	.dwattr $C$DW$503, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$503, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$503, DW_AT_bit_size(0x10)
	.dwattr $C$DW$503, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$503, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$98


$C$DW$T$99	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$99, DW_AT_name("DC15_REG")
	.dwattr $C$DW$T$99, DW_AT_byte_size(0x02)
$C$DW$504	.dwtag  DW_TAG_member
	.dwattr $C$DW$504, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$504, DW_AT_name("all")
	.dwattr $C$DW$504, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$504, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$504, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$505	.dwtag  DW_TAG_member
	.dwattr $C$DW$505, DW_AT_type(*$C$DW$T$98)
	.dwattr $C$DW$505, DW_AT_name("bit")
	.dwattr $C$DW$505, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$505, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$505, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$99


$C$DW$T$100	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$100, DW_AT_name("DC17_BITS")
	.dwattr $C$DW$T$100, DW_AT_byte_size(0x02)
$C$DW$506	.dwtag  DW_TAG_member
	.dwattr $C$DW$506, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$506, DW_AT_name("rsvd1")
	.dwattr $C$DW$506, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$506, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$506, DW_AT_bit_size(0x01)
	.dwattr $C$DW$506, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$506, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$507	.dwtag  DW_TAG_member
	.dwattr $C$DW$507, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$507, DW_AT_name("rsvd2")
	.dwattr $C$DW$507, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$507, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$507, DW_AT_bit_size(0x01)
	.dwattr $C$DW$507, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$507, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$508	.dwtag  DW_TAG_member
	.dwattr $C$DW$508, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$508, DW_AT_name("rsvd3")
	.dwattr $C$DW$508, DW_AT_TI_symbol_name("_rsvd3")
	.dwattr $C$DW$508, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$508, DW_AT_bit_size(0x01)
	.dwattr $C$DW$508, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$508, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$509	.dwtag  DW_TAG_member
	.dwattr $C$DW$509, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$509, DW_AT_name("rsvd4")
	.dwattr $C$DW$509, DW_AT_TI_symbol_name("_rsvd4")
	.dwattr $C$DW$509, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$509, DW_AT_bit_size(0x01)
	.dwattr $C$DW$509, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$509, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$510	.dwtag  DW_TAG_member
	.dwattr $C$DW$510, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$510, DW_AT_name("rsvd5")
	.dwattr $C$DW$510, DW_AT_TI_symbol_name("_rsvd5")
	.dwattr $C$DW$510, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$510, DW_AT_bit_size(0x0c)
	.dwattr $C$DW$510, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$510, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$511	.dwtag  DW_TAG_member
	.dwattr $C$DW$511, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$511, DW_AT_name("DAC_A")
	.dwattr $C$DW$511, DW_AT_TI_symbol_name("_DAC_A")
	.dwattr $C$DW$511, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$511, DW_AT_bit_size(0x01)
	.dwattr $C$DW$511, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$511, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$512	.dwtag  DW_TAG_member
	.dwattr $C$DW$512, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$512, DW_AT_name("DAC_B")
	.dwattr $C$DW$512, DW_AT_TI_symbol_name("_DAC_B")
	.dwattr $C$DW$512, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$512, DW_AT_bit_size(0x01)
	.dwattr $C$DW$512, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$512, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$513	.dwtag  DW_TAG_member
	.dwattr $C$DW$513, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$513, DW_AT_name("DAC_C")
	.dwattr $C$DW$513, DW_AT_TI_symbol_name("_DAC_C")
	.dwattr $C$DW$513, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$513, DW_AT_bit_size(0x01)
	.dwattr $C$DW$513, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$513, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$514	.dwtag  DW_TAG_member
	.dwattr $C$DW$514, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$514, DW_AT_name("rsvd6")
	.dwattr $C$DW$514, DW_AT_TI_symbol_name("_rsvd6")
	.dwattr $C$DW$514, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$514, DW_AT_bit_size(0x01)
	.dwattr $C$DW$514, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$514, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$515	.dwtag  DW_TAG_member
	.dwattr $C$DW$515, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$515, DW_AT_name("rsvd7")
	.dwattr $C$DW$515, DW_AT_TI_symbol_name("_rsvd7")
	.dwattr $C$DW$515, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$515, DW_AT_bit_size(0x0c)
	.dwattr $C$DW$515, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$515, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$100


$C$DW$T$101	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$101, DW_AT_name("DC17_REG")
	.dwattr $C$DW$T$101, DW_AT_byte_size(0x02)
$C$DW$516	.dwtag  DW_TAG_member
	.dwattr $C$DW$516, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$516, DW_AT_name("all")
	.dwattr $C$DW$516, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$516, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$516, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$517	.dwtag  DW_TAG_member
	.dwattr $C$DW$517, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$517, DW_AT_name("bit")
	.dwattr $C$DW$517, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$517, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$517, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$101


$C$DW$T$102	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$102, DW_AT_name("DC18_BITS")
	.dwattr $C$DW$T$102, DW_AT_byte_size(0x02)
$C$DW$518	.dwtag  DW_TAG_member
	.dwattr $C$DW$518, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$518, DW_AT_name("LS0_1")
	.dwattr $C$DW$518, DW_AT_TI_symbol_name("_LS0_1")
	.dwattr $C$DW$518, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$518, DW_AT_bit_size(0x01)
	.dwattr $C$DW$518, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$518, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$519	.dwtag  DW_TAG_member
	.dwattr $C$DW$519, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$519, DW_AT_name("LS1_1")
	.dwattr $C$DW$519, DW_AT_TI_symbol_name("_LS1_1")
	.dwattr $C$DW$519, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$519, DW_AT_bit_size(0x01)
	.dwattr $C$DW$519, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$519, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$520	.dwtag  DW_TAG_member
	.dwattr $C$DW$520, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$520, DW_AT_name("LS2_1")
	.dwattr $C$DW$520, DW_AT_TI_symbol_name("_LS2_1")
	.dwattr $C$DW$520, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$520, DW_AT_bit_size(0x01)
	.dwattr $C$DW$520, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$520, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$521	.dwtag  DW_TAG_member
	.dwattr $C$DW$521, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$521, DW_AT_name("LS3_1")
	.dwattr $C$DW$521, DW_AT_TI_symbol_name("_LS3_1")
	.dwattr $C$DW$521, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$521, DW_AT_bit_size(0x01)
	.dwattr $C$DW$521, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$521, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$522	.dwtag  DW_TAG_member
	.dwattr $C$DW$522, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$522, DW_AT_name("LS4_1")
	.dwattr $C$DW$522, DW_AT_TI_symbol_name("_LS4_1")
	.dwattr $C$DW$522, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$522, DW_AT_bit_size(0x01)
	.dwattr $C$DW$522, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$522, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$523	.dwtag  DW_TAG_member
	.dwattr $C$DW$523, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$523, DW_AT_name("LS5_1")
	.dwattr $C$DW$523, DW_AT_TI_symbol_name("_LS5_1")
	.dwattr $C$DW$523, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$523, DW_AT_bit_size(0x01)
	.dwattr $C$DW$523, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$523, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$524	.dwtag  DW_TAG_member
	.dwattr $C$DW$524, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$524, DW_AT_name("rsvd1")
	.dwattr $C$DW$524, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$524, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$524, DW_AT_bit_size(0x0a)
	.dwattr $C$DW$524, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$524, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$525	.dwtag  DW_TAG_member
	.dwattr $C$DW$525, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$525, DW_AT_name("rsvd2")
	.dwattr $C$DW$525, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$525, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$525, DW_AT_bit_size(0x10)
	.dwattr $C$DW$525, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$525, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$102


$C$DW$T$103	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$103, DW_AT_name("DC18_REG")
	.dwattr $C$DW$T$103, DW_AT_byte_size(0x02)
$C$DW$526	.dwtag  DW_TAG_member
	.dwattr $C$DW$526, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$526, DW_AT_name("all")
	.dwattr $C$DW$526, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$526, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$526, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$527	.dwtag  DW_TAG_member
	.dwattr $C$DW$527, DW_AT_type(*$C$DW$T$102)
	.dwattr $C$DW$527, DW_AT_name("bit")
	.dwattr $C$DW$527, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$527, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$527, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$103


$C$DW$T$104	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$104, DW_AT_name("DC19_BITS")
	.dwattr $C$DW$T$104, DW_AT_byte_size(0x02)
$C$DW$528	.dwtag  DW_TAG_member
	.dwattr $C$DW$528, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$528, DW_AT_name("LS0_2")
	.dwattr $C$DW$528, DW_AT_TI_symbol_name("_LS0_2")
	.dwattr $C$DW$528, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$528, DW_AT_bit_size(0x01)
	.dwattr $C$DW$528, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$528, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$529	.dwtag  DW_TAG_member
	.dwattr $C$DW$529, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$529, DW_AT_name("LS1_2")
	.dwattr $C$DW$529, DW_AT_TI_symbol_name("_LS1_2")
	.dwattr $C$DW$529, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$529, DW_AT_bit_size(0x01)
	.dwattr $C$DW$529, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$529, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$530	.dwtag  DW_TAG_member
	.dwattr $C$DW$530, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$530, DW_AT_name("LS2_2")
	.dwattr $C$DW$530, DW_AT_TI_symbol_name("_LS2_2")
	.dwattr $C$DW$530, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$530, DW_AT_bit_size(0x01)
	.dwattr $C$DW$530, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$530, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$531	.dwtag  DW_TAG_member
	.dwattr $C$DW$531, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$531, DW_AT_name("LS3_2")
	.dwattr $C$DW$531, DW_AT_TI_symbol_name("_LS3_2")
	.dwattr $C$DW$531, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$531, DW_AT_bit_size(0x01)
	.dwattr $C$DW$531, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$531, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$532	.dwtag  DW_TAG_member
	.dwattr $C$DW$532, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$532, DW_AT_name("LS4_2")
	.dwattr $C$DW$532, DW_AT_TI_symbol_name("_LS4_2")
	.dwattr $C$DW$532, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$532, DW_AT_bit_size(0x01)
	.dwattr $C$DW$532, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$532, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$533	.dwtag  DW_TAG_member
	.dwattr $C$DW$533, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$533, DW_AT_name("LS5_2")
	.dwattr $C$DW$533, DW_AT_TI_symbol_name("_LS5_2")
	.dwattr $C$DW$533, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$533, DW_AT_bit_size(0x01)
	.dwattr $C$DW$533, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$533, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$534	.dwtag  DW_TAG_member
	.dwattr $C$DW$534, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$534, DW_AT_name("rsvd1")
	.dwattr $C$DW$534, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$534, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$534, DW_AT_bit_size(0x0a)
	.dwattr $C$DW$534, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$534, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$535	.dwtag  DW_TAG_member
	.dwattr $C$DW$535, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$535, DW_AT_name("rsvd2")
	.dwattr $C$DW$535, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$535, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$535, DW_AT_bit_size(0x10)
	.dwattr $C$DW$535, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$535, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$104


$C$DW$T$105	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$105, DW_AT_name("DC19_REG")
	.dwattr $C$DW$T$105, DW_AT_byte_size(0x02)
$C$DW$536	.dwtag  DW_TAG_member
	.dwattr $C$DW$536, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$536, DW_AT_name("all")
	.dwattr $C$DW$536, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$536, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$536, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$537	.dwtag  DW_TAG_member
	.dwattr $C$DW$537, DW_AT_type(*$C$DW$T$104)
	.dwattr $C$DW$537, DW_AT_name("bit")
	.dwattr $C$DW$537, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$537, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$537, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$105


$C$DW$T$106	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$106, DW_AT_name("DC1_BITS")
	.dwattr $C$DW$T$106, DW_AT_byte_size(0x02)
$C$DW$538	.dwtag  DW_TAG_member
	.dwattr $C$DW$538, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$538, DW_AT_name("CPU1_FPU_TMU")
	.dwattr $C$DW$538, DW_AT_TI_symbol_name("_CPU1_FPU_TMU")
	.dwattr $C$DW$538, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$538, DW_AT_bit_size(0x01)
	.dwattr $C$DW$538, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$538, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$539	.dwtag  DW_TAG_member
	.dwattr $C$DW$539, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$539, DW_AT_name("CPU2_FPU_TMU")
	.dwattr $C$DW$539, DW_AT_TI_symbol_name("_CPU2_FPU_TMU")
	.dwattr $C$DW$539, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$539, DW_AT_bit_size(0x01)
	.dwattr $C$DW$539, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$539, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$540	.dwtag  DW_TAG_member
	.dwattr $C$DW$540, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$540, DW_AT_name("CPU1_VCU")
	.dwattr $C$DW$540, DW_AT_TI_symbol_name("_CPU1_VCU")
	.dwattr $C$DW$540, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$540, DW_AT_bit_size(0x01)
	.dwattr $C$DW$540, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$540, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$541	.dwtag  DW_TAG_member
	.dwattr $C$DW$541, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$541, DW_AT_name("CPU2_VCU")
	.dwattr $C$DW$541, DW_AT_TI_symbol_name("_CPU2_VCU")
	.dwattr $C$DW$541, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$541, DW_AT_bit_size(0x01)
	.dwattr $C$DW$541, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$541, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$542	.dwtag  DW_TAG_member
	.dwattr $C$DW$542, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$542, DW_AT_name("rsvd1")
	.dwattr $C$DW$542, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$542, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$542, DW_AT_bit_size(0x02)
	.dwattr $C$DW$542, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$542, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$543	.dwtag  DW_TAG_member
	.dwattr $C$DW$543, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$543, DW_AT_name("CPU1_CLA1")
	.dwattr $C$DW$543, DW_AT_TI_symbol_name("_CPU1_CLA1")
	.dwattr $C$DW$543, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$543, DW_AT_bit_size(0x01)
	.dwattr $C$DW$543, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$543, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$544	.dwtag  DW_TAG_member
	.dwattr $C$DW$544, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$544, DW_AT_name("rsvd2")
	.dwattr $C$DW$544, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$544, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$544, DW_AT_bit_size(0x01)
	.dwattr $C$DW$544, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$544, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$545	.dwtag  DW_TAG_member
	.dwattr $C$DW$545, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$545, DW_AT_name("CPU2_CLA1")
	.dwattr $C$DW$545, DW_AT_TI_symbol_name("_CPU2_CLA1")
	.dwattr $C$DW$545, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$545, DW_AT_bit_size(0x01)
	.dwattr $C$DW$545, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$545, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$546	.dwtag  DW_TAG_member
	.dwattr $C$DW$546, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$546, DW_AT_name("rsvd3")
	.dwattr $C$DW$546, DW_AT_TI_symbol_name("_rsvd3")
	.dwattr $C$DW$546, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$546, DW_AT_bit_size(0x01)
	.dwattr $C$DW$546, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$546, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$547	.dwtag  DW_TAG_member
	.dwattr $C$DW$547, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$547, DW_AT_name("rsvd4")
	.dwattr $C$DW$547, DW_AT_TI_symbol_name("_rsvd4")
	.dwattr $C$DW$547, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$547, DW_AT_bit_size(0x06)
	.dwattr $C$DW$547, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$547, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$548	.dwtag  DW_TAG_member
	.dwattr $C$DW$548, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$548, DW_AT_name("rsvd5")
	.dwattr $C$DW$548, DW_AT_TI_symbol_name("_rsvd5")
	.dwattr $C$DW$548, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$548, DW_AT_bit_size(0x10)
	.dwattr $C$DW$548, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$548, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$106


$C$DW$T$107	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$107, DW_AT_name("DC1_REG")
	.dwattr $C$DW$T$107, DW_AT_byte_size(0x02)
$C$DW$549	.dwtag  DW_TAG_member
	.dwattr $C$DW$549, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$549, DW_AT_name("all")
	.dwattr $C$DW$549, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$549, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$549, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$550	.dwtag  DW_TAG_member
	.dwattr $C$DW$550, DW_AT_type(*$C$DW$T$106)
	.dwattr $C$DW$550, DW_AT_name("bit")
	.dwattr $C$DW$550, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$550, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$550, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$107


$C$DW$T$108	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$108, DW_AT_name("DC20_BITS")
	.dwattr $C$DW$T$108, DW_AT_byte_size(0x02)
$C$DW$551	.dwtag  DW_TAG_member
	.dwattr $C$DW$551, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$551, DW_AT_name("GS0")
	.dwattr $C$DW$551, DW_AT_TI_symbol_name("_GS0")
	.dwattr $C$DW$551, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$551, DW_AT_bit_size(0x01)
	.dwattr $C$DW$551, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$551, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$552	.dwtag  DW_TAG_member
	.dwattr $C$DW$552, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$552, DW_AT_name("GS1")
	.dwattr $C$DW$552, DW_AT_TI_symbol_name("_GS1")
	.dwattr $C$DW$552, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$552, DW_AT_bit_size(0x01)
	.dwattr $C$DW$552, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$552, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$553	.dwtag  DW_TAG_member
	.dwattr $C$DW$553, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$553, DW_AT_name("GS2")
	.dwattr $C$DW$553, DW_AT_TI_symbol_name("_GS2")
	.dwattr $C$DW$553, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$553, DW_AT_bit_size(0x01)
	.dwattr $C$DW$553, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$553, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$554	.dwtag  DW_TAG_member
	.dwattr $C$DW$554, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$554, DW_AT_name("GS3")
	.dwattr $C$DW$554, DW_AT_TI_symbol_name("_GS3")
	.dwattr $C$DW$554, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$554, DW_AT_bit_size(0x01)
	.dwattr $C$DW$554, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$554, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$555	.dwtag  DW_TAG_member
	.dwattr $C$DW$555, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$555, DW_AT_name("GS4")
	.dwattr $C$DW$555, DW_AT_TI_symbol_name("_GS4")
	.dwattr $C$DW$555, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$555, DW_AT_bit_size(0x01)
	.dwattr $C$DW$555, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$555, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$556	.dwtag  DW_TAG_member
	.dwattr $C$DW$556, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$556, DW_AT_name("GS5")
	.dwattr $C$DW$556, DW_AT_TI_symbol_name("_GS5")
	.dwattr $C$DW$556, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$556, DW_AT_bit_size(0x01)
	.dwattr $C$DW$556, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$556, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$557	.dwtag  DW_TAG_member
	.dwattr $C$DW$557, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$557, DW_AT_name("GS6")
	.dwattr $C$DW$557, DW_AT_TI_symbol_name("_GS6")
	.dwattr $C$DW$557, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$557, DW_AT_bit_size(0x01)
	.dwattr $C$DW$557, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$557, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$558	.dwtag  DW_TAG_member
	.dwattr $C$DW$558, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$558, DW_AT_name("GS7")
	.dwattr $C$DW$558, DW_AT_TI_symbol_name("_GS7")
	.dwattr $C$DW$558, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$558, DW_AT_bit_size(0x01)
	.dwattr $C$DW$558, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$558, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$559	.dwtag  DW_TAG_member
	.dwattr $C$DW$559, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$559, DW_AT_name("GS8")
	.dwattr $C$DW$559, DW_AT_TI_symbol_name("_GS8")
	.dwattr $C$DW$559, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$559, DW_AT_bit_size(0x01)
	.dwattr $C$DW$559, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$559, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$560	.dwtag  DW_TAG_member
	.dwattr $C$DW$560, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$560, DW_AT_name("GS9")
	.dwattr $C$DW$560, DW_AT_TI_symbol_name("_GS9")
	.dwattr $C$DW$560, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$560, DW_AT_bit_size(0x01)
	.dwattr $C$DW$560, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$560, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$561	.dwtag  DW_TAG_member
	.dwattr $C$DW$561, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$561, DW_AT_name("GS10")
	.dwattr $C$DW$561, DW_AT_TI_symbol_name("_GS10")
	.dwattr $C$DW$561, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$561, DW_AT_bit_size(0x01)
	.dwattr $C$DW$561, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$561, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$562	.dwtag  DW_TAG_member
	.dwattr $C$DW$562, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$562, DW_AT_name("GS11")
	.dwattr $C$DW$562, DW_AT_TI_symbol_name("_GS11")
	.dwattr $C$DW$562, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$562, DW_AT_bit_size(0x01)
	.dwattr $C$DW$562, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$562, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$563	.dwtag  DW_TAG_member
	.dwattr $C$DW$563, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$563, DW_AT_name("GS12")
	.dwattr $C$DW$563, DW_AT_TI_symbol_name("_GS12")
	.dwattr $C$DW$563, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$563, DW_AT_bit_size(0x01)
	.dwattr $C$DW$563, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$563, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$564	.dwtag  DW_TAG_member
	.dwattr $C$DW$564, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$564, DW_AT_name("GS13")
	.dwattr $C$DW$564, DW_AT_TI_symbol_name("_GS13")
	.dwattr $C$DW$564, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$564, DW_AT_bit_size(0x01)
	.dwattr $C$DW$564, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$564, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$565	.dwtag  DW_TAG_member
	.dwattr $C$DW$565, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$565, DW_AT_name("GS14")
	.dwattr $C$DW$565, DW_AT_TI_symbol_name("_GS14")
	.dwattr $C$DW$565, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$565, DW_AT_bit_size(0x01)
	.dwattr $C$DW$565, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$565, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$566	.dwtag  DW_TAG_member
	.dwattr $C$DW$566, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$566, DW_AT_name("GS15")
	.dwattr $C$DW$566, DW_AT_TI_symbol_name("_GS15")
	.dwattr $C$DW$566, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$566, DW_AT_bit_size(0x01)
	.dwattr $C$DW$566, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$566, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$567	.dwtag  DW_TAG_member
	.dwattr $C$DW$567, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$567, DW_AT_name("rsvd1")
	.dwattr $C$DW$567, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$567, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$567, DW_AT_bit_size(0x10)
	.dwattr $C$DW$567, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$567, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$108


$C$DW$T$109	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$109, DW_AT_name("DC20_REG")
	.dwattr $C$DW$T$109, DW_AT_byte_size(0x02)
$C$DW$568	.dwtag  DW_TAG_member
	.dwattr $C$DW$568, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$568, DW_AT_name("all")
	.dwattr $C$DW$568, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$568, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$568, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$569	.dwtag  DW_TAG_member
	.dwattr $C$DW$569, DW_AT_type(*$C$DW$T$108)
	.dwattr $C$DW$569, DW_AT_name("bit")
	.dwattr $C$DW$569, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$569, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$569, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$109


$C$DW$T$110	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$110, DW_AT_name("DC2_BITS")
	.dwattr $C$DW$T$110, DW_AT_byte_size(0x02)
$C$DW$570	.dwtag  DW_TAG_member
	.dwattr $C$DW$570, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$570, DW_AT_name("EMIF1")
	.dwattr $C$DW$570, DW_AT_TI_symbol_name("_EMIF1")
	.dwattr $C$DW$570, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$570, DW_AT_bit_size(0x01)
	.dwattr $C$DW$570, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$570, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$571	.dwtag  DW_TAG_member
	.dwattr $C$DW$571, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$571, DW_AT_name("EMIF2")
	.dwattr $C$DW$571, DW_AT_TI_symbol_name("_EMIF2")
	.dwattr $C$DW$571, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$571, DW_AT_bit_size(0x01)
	.dwattr $C$DW$571, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$571, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$572	.dwtag  DW_TAG_member
	.dwattr $C$DW$572, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$572, DW_AT_name("rsvd1")
	.dwattr $C$DW$572, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$572, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$572, DW_AT_bit_size(0x0e)
	.dwattr $C$DW$572, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$572, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$573	.dwtag  DW_TAG_member
	.dwattr $C$DW$573, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$573, DW_AT_name("rsvd2")
	.dwattr $C$DW$573, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$573, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$573, DW_AT_bit_size(0x10)
	.dwattr $C$DW$573, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$573, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$110


$C$DW$T$111	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$111, DW_AT_name("DC2_REG")
	.dwattr $C$DW$T$111, DW_AT_byte_size(0x02)
$C$DW$574	.dwtag  DW_TAG_member
	.dwattr $C$DW$574, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$574, DW_AT_name("all")
	.dwattr $C$DW$574, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$574, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$574, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$575	.dwtag  DW_TAG_member
	.dwattr $C$DW$575, DW_AT_type(*$C$DW$T$110)
	.dwattr $C$DW$575, DW_AT_name("bit")
	.dwattr $C$DW$575, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$575, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$575, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$111


$C$DW$T$112	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$112, DW_AT_name("DC3_BITS")
	.dwattr $C$DW$T$112, DW_AT_byte_size(0x02)
$C$DW$576	.dwtag  DW_TAG_member
	.dwattr $C$DW$576, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$576, DW_AT_name("EPWM1")
	.dwattr $C$DW$576, DW_AT_TI_symbol_name("_EPWM1")
	.dwattr $C$DW$576, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$576, DW_AT_bit_size(0x01)
	.dwattr $C$DW$576, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$576, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$577	.dwtag  DW_TAG_member
	.dwattr $C$DW$577, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$577, DW_AT_name("EPWM2")
	.dwattr $C$DW$577, DW_AT_TI_symbol_name("_EPWM2")
	.dwattr $C$DW$577, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$577, DW_AT_bit_size(0x01)
	.dwattr $C$DW$577, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$577, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$578	.dwtag  DW_TAG_member
	.dwattr $C$DW$578, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$578, DW_AT_name("EPWM3")
	.dwattr $C$DW$578, DW_AT_TI_symbol_name("_EPWM3")
	.dwattr $C$DW$578, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$578, DW_AT_bit_size(0x01)
	.dwattr $C$DW$578, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$578, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$579	.dwtag  DW_TAG_member
	.dwattr $C$DW$579, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$579, DW_AT_name("EPWM4")
	.dwattr $C$DW$579, DW_AT_TI_symbol_name("_EPWM4")
	.dwattr $C$DW$579, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$579, DW_AT_bit_size(0x01)
	.dwattr $C$DW$579, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$579, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$580	.dwtag  DW_TAG_member
	.dwattr $C$DW$580, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$580, DW_AT_name("EPWM5")
	.dwattr $C$DW$580, DW_AT_TI_symbol_name("_EPWM5")
	.dwattr $C$DW$580, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$580, DW_AT_bit_size(0x01)
	.dwattr $C$DW$580, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$580, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$581	.dwtag  DW_TAG_member
	.dwattr $C$DW$581, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$581, DW_AT_name("EPWM6")
	.dwattr $C$DW$581, DW_AT_TI_symbol_name("_EPWM6")
	.dwattr $C$DW$581, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$581, DW_AT_bit_size(0x01)
	.dwattr $C$DW$581, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$581, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$582	.dwtag  DW_TAG_member
	.dwattr $C$DW$582, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$582, DW_AT_name("EPWM7")
	.dwattr $C$DW$582, DW_AT_TI_symbol_name("_EPWM7")
	.dwattr $C$DW$582, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$582, DW_AT_bit_size(0x01)
	.dwattr $C$DW$582, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$582, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$583	.dwtag  DW_TAG_member
	.dwattr $C$DW$583, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$583, DW_AT_name("EPWM8")
	.dwattr $C$DW$583, DW_AT_TI_symbol_name("_EPWM8")
	.dwattr $C$DW$583, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$583, DW_AT_bit_size(0x01)
	.dwattr $C$DW$583, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$583, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$584	.dwtag  DW_TAG_member
	.dwattr $C$DW$584, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$584, DW_AT_name("EPWM9")
	.dwattr $C$DW$584, DW_AT_TI_symbol_name("_EPWM9")
	.dwattr $C$DW$584, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$584, DW_AT_bit_size(0x01)
	.dwattr $C$DW$584, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$584, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$585	.dwtag  DW_TAG_member
	.dwattr $C$DW$585, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$585, DW_AT_name("EPWM10")
	.dwattr $C$DW$585, DW_AT_TI_symbol_name("_EPWM10")
	.dwattr $C$DW$585, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$585, DW_AT_bit_size(0x01)
	.dwattr $C$DW$585, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$585, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$586	.dwtag  DW_TAG_member
	.dwattr $C$DW$586, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$586, DW_AT_name("EPWM11")
	.dwattr $C$DW$586, DW_AT_TI_symbol_name("_EPWM11")
	.dwattr $C$DW$586, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$586, DW_AT_bit_size(0x01)
	.dwattr $C$DW$586, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$586, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$587	.dwtag  DW_TAG_member
	.dwattr $C$DW$587, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$587, DW_AT_name("EPWM12")
	.dwattr $C$DW$587, DW_AT_TI_symbol_name("_EPWM12")
	.dwattr $C$DW$587, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$587, DW_AT_bit_size(0x01)
	.dwattr $C$DW$587, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$587, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$588	.dwtag  DW_TAG_member
	.dwattr $C$DW$588, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$588, DW_AT_name("rsvd1")
	.dwattr $C$DW$588, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$588, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$588, DW_AT_bit_size(0x01)
	.dwattr $C$DW$588, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$588, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$589	.dwtag  DW_TAG_member
	.dwattr $C$DW$589, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$589, DW_AT_name("rsvd2")
	.dwattr $C$DW$589, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$589, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$589, DW_AT_bit_size(0x01)
	.dwattr $C$DW$589, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$589, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$590	.dwtag  DW_TAG_member
	.dwattr $C$DW$590, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$590, DW_AT_name("rsvd3")
	.dwattr $C$DW$590, DW_AT_TI_symbol_name("_rsvd3")
	.dwattr $C$DW$590, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$590, DW_AT_bit_size(0x01)
	.dwattr $C$DW$590, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$590, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$591	.dwtag  DW_TAG_member
	.dwattr $C$DW$591, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$591, DW_AT_name("rsvd4")
	.dwattr $C$DW$591, DW_AT_TI_symbol_name("_rsvd4")
	.dwattr $C$DW$591, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$591, DW_AT_bit_size(0x01)
	.dwattr $C$DW$591, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$591, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$592	.dwtag  DW_TAG_member
	.dwattr $C$DW$592, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$592, DW_AT_name("rsvd5")
	.dwattr $C$DW$592, DW_AT_TI_symbol_name("_rsvd5")
	.dwattr $C$DW$592, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$592, DW_AT_bit_size(0x10)
	.dwattr $C$DW$592, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$592, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$112


$C$DW$T$113	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$113, DW_AT_name("DC3_REG")
	.dwattr $C$DW$T$113, DW_AT_byte_size(0x02)
$C$DW$593	.dwtag  DW_TAG_member
	.dwattr $C$DW$593, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$593, DW_AT_name("all")
	.dwattr $C$DW$593, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$593, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$593, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$594	.dwtag  DW_TAG_member
	.dwattr $C$DW$594, DW_AT_type(*$C$DW$T$112)
	.dwattr $C$DW$594, DW_AT_name("bit")
	.dwattr $C$DW$594, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$594, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$594, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$113


$C$DW$T$114	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$114, DW_AT_name("DC4_BITS")
	.dwattr $C$DW$T$114, DW_AT_byte_size(0x02)
$C$DW$595	.dwtag  DW_TAG_member
	.dwattr $C$DW$595, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$595, DW_AT_name("ECAP1")
	.dwattr $C$DW$595, DW_AT_TI_symbol_name("_ECAP1")
	.dwattr $C$DW$595, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$595, DW_AT_bit_size(0x01)
	.dwattr $C$DW$595, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$595, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$596	.dwtag  DW_TAG_member
	.dwattr $C$DW$596, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$596, DW_AT_name("ECAP2")
	.dwattr $C$DW$596, DW_AT_TI_symbol_name("_ECAP2")
	.dwattr $C$DW$596, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$596, DW_AT_bit_size(0x01)
	.dwattr $C$DW$596, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$596, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$597	.dwtag  DW_TAG_member
	.dwattr $C$DW$597, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$597, DW_AT_name("ECAP3")
	.dwattr $C$DW$597, DW_AT_TI_symbol_name("_ECAP3")
	.dwattr $C$DW$597, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$597, DW_AT_bit_size(0x01)
	.dwattr $C$DW$597, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$597, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$598	.dwtag  DW_TAG_member
	.dwattr $C$DW$598, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$598, DW_AT_name("ECAP4")
	.dwattr $C$DW$598, DW_AT_TI_symbol_name("_ECAP4")
	.dwattr $C$DW$598, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$598, DW_AT_bit_size(0x01)
	.dwattr $C$DW$598, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$598, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$599	.dwtag  DW_TAG_member
	.dwattr $C$DW$599, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$599, DW_AT_name("ECAP5")
	.dwattr $C$DW$599, DW_AT_TI_symbol_name("_ECAP5")
	.dwattr $C$DW$599, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$599, DW_AT_bit_size(0x01)
	.dwattr $C$DW$599, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$599, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$600	.dwtag  DW_TAG_member
	.dwattr $C$DW$600, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$600, DW_AT_name("ECAP6")
	.dwattr $C$DW$600, DW_AT_TI_symbol_name("_ECAP6")
	.dwattr $C$DW$600, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$600, DW_AT_bit_size(0x01)
	.dwattr $C$DW$600, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$600, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$601	.dwtag  DW_TAG_member
	.dwattr $C$DW$601, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$601, DW_AT_name("rsvd1")
	.dwattr $C$DW$601, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$601, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$601, DW_AT_bit_size(0x01)
	.dwattr $C$DW$601, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$601, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$602	.dwtag  DW_TAG_member
	.dwattr $C$DW$602, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$602, DW_AT_name("rsvd2")
	.dwattr $C$DW$602, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$602, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$602, DW_AT_bit_size(0x01)
	.dwattr $C$DW$602, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$602, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$603	.dwtag  DW_TAG_member
	.dwattr $C$DW$603, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$603, DW_AT_name("rsvd3")
	.dwattr $C$DW$603, DW_AT_TI_symbol_name("_rsvd3")
	.dwattr $C$DW$603, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$603, DW_AT_bit_size(0x08)
	.dwattr $C$DW$603, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$603, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$604	.dwtag  DW_TAG_member
	.dwattr $C$DW$604, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$604, DW_AT_name("rsvd4")
	.dwattr $C$DW$604, DW_AT_TI_symbol_name("_rsvd4")
	.dwattr $C$DW$604, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$604, DW_AT_bit_size(0x10)
	.dwattr $C$DW$604, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$604, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$114


$C$DW$T$115	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$115, DW_AT_name("DC4_REG")
	.dwattr $C$DW$T$115, DW_AT_byte_size(0x02)
$C$DW$605	.dwtag  DW_TAG_member
	.dwattr $C$DW$605, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$605, DW_AT_name("all")
	.dwattr $C$DW$605, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$605, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$605, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$606	.dwtag  DW_TAG_member
	.dwattr $C$DW$606, DW_AT_type(*$C$DW$T$114)
	.dwattr $C$DW$606, DW_AT_name("bit")
	.dwattr $C$DW$606, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$606, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$606, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$115


$C$DW$T$116	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$116, DW_AT_name("DC5_BITS")
	.dwattr $C$DW$T$116, DW_AT_byte_size(0x02)
$C$DW$607	.dwtag  DW_TAG_member
	.dwattr $C$DW$607, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$607, DW_AT_name("EQEP1")
	.dwattr $C$DW$607, DW_AT_TI_symbol_name("_EQEP1")
	.dwattr $C$DW$607, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$607, DW_AT_bit_size(0x01)
	.dwattr $C$DW$607, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$607, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$608	.dwtag  DW_TAG_member
	.dwattr $C$DW$608, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$608, DW_AT_name("EQEP2")
	.dwattr $C$DW$608, DW_AT_TI_symbol_name("_EQEP2")
	.dwattr $C$DW$608, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$608, DW_AT_bit_size(0x01)
	.dwattr $C$DW$608, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$608, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$609	.dwtag  DW_TAG_member
	.dwattr $C$DW$609, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$609, DW_AT_name("EQEP3")
	.dwattr $C$DW$609, DW_AT_TI_symbol_name("_EQEP3")
	.dwattr $C$DW$609, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$609, DW_AT_bit_size(0x01)
	.dwattr $C$DW$609, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$609, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$610	.dwtag  DW_TAG_member
	.dwattr $C$DW$610, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$610, DW_AT_name("rsvd1")
	.dwattr $C$DW$610, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$610, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$610, DW_AT_bit_size(0x01)
	.dwattr $C$DW$610, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$610, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$611	.dwtag  DW_TAG_member
	.dwattr $C$DW$611, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$611, DW_AT_name("rsvd2")
	.dwattr $C$DW$611, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$611, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$611, DW_AT_bit_size(0x0c)
	.dwattr $C$DW$611, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$611, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$612	.dwtag  DW_TAG_member
	.dwattr $C$DW$612, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$612, DW_AT_name("rsvd3")
	.dwattr $C$DW$612, DW_AT_TI_symbol_name("_rsvd3")
	.dwattr $C$DW$612, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$612, DW_AT_bit_size(0x10)
	.dwattr $C$DW$612, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$612, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$116


$C$DW$T$117	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$117, DW_AT_name("DC5_REG")
	.dwattr $C$DW$T$117, DW_AT_byte_size(0x02)
$C$DW$613	.dwtag  DW_TAG_member
	.dwattr $C$DW$613, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$613, DW_AT_name("all")
	.dwattr $C$DW$613, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$613, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$613, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$614	.dwtag  DW_TAG_member
	.dwattr $C$DW$614, DW_AT_type(*$C$DW$T$116)
	.dwattr $C$DW$614, DW_AT_name("bit")
	.dwattr $C$DW$614, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$614, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$614, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$117


$C$DW$T$118	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$118, DW_AT_name("DC6_BITS")
	.dwattr $C$DW$T$118, DW_AT_byte_size(0x02)
$C$DW$615	.dwtag  DW_TAG_member
	.dwattr $C$DW$615, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$615, DW_AT_name("CLB1")
	.dwattr $C$DW$615, DW_AT_TI_symbol_name("_CLB1")
	.dwattr $C$DW$615, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$615, DW_AT_bit_size(0x01)
	.dwattr $C$DW$615, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$615, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$616	.dwtag  DW_TAG_member
	.dwattr $C$DW$616, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$616, DW_AT_name("CLB2")
	.dwattr $C$DW$616, DW_AT_TI_symbol_name("_CLB2")
	.dwattr $C$DW$616, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$616, DW_AT_bit_size(0x01)
	.dwattr $C$DW$616, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$616, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$617	.dwtag  DW_TAG_member
	.dwattr $C$DW$617, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$617, DW_AT_name("CLB3")
	.dwattr $C$DW$617, DW_AT_TI_symbol_name("_CLB3")
	.dwattr $C$DW$617, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$617, DW_AT_bit_size(0x01)
	.dwattr $C$DW$617, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$617, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$618	.dwtag  DW_TAG_member
	.dwattr $C$DW$618, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$618, DW_AT_name("CLB4")
	.dwattr $C$DW$618, DW_AT_TI_symbol_name("_CLB4")
	.dwattr $C$DW$618, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$618, DW_AT_bit_size(0x01)
	.dwattr $C$DW$618, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$618, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$619	.dwtag  DW_TAG_member
	.dwattr $C$DW$619, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$619, DW_AT_name("rsvd1")
	.dwattr $C$DW$619, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$619, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$619, DW_AT_bit_size(0x01)
	.dwattr $C$DW$619, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$619, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$620	.dwtag  DW_TAG_member
	.dwattr $C$DW$620, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$620, DW_AT_name("rsvd2")
	.dwattr $C$DW$620, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$620, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$620, DW_AT_bit_size(0x01)
	.dwattr $C$DW$620, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$620, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$621	.dwtag  DW_TAG_member
	.dwattr $C$DW$621, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$621, DW_AT_name("rsvd3")
	.dwattr $C$DW$621, DW_AT_TI_symbol_name("_rsvd3")
	.dwattr $C$DW$621, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$621, DW_AT_bit_size(0x01)
	.dwattr $C$DW$621, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$621, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$622	.dwtag  DW_TAG_member
	.dwattr $C$DW$622, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$622, DW_AT_name("rsvd4")
	.dwattr $C$DW$622, DW_AT_TI_symbol_name("_rsvd4")
	.dwattr $C$DW$622, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$622, DW_AT_bit_size(0x01)
	.dwattr $C$DW$622, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$622, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$623	.dwtag  DW_TAG_member
	.dwattr $C$DW$623, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$623, DW_AT_name("rsvd5")
	.dwattr $C$DW$623, DW_AT_TI_symbol_name("_rsvd5")
	.dwattr $C$DW$623, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$623, DW_AT_bit_size(0x08)
	.dwattr $C$DW$623, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$623, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$624	.dwtag  DW_TAG_member
	.dwattr $C$DW$624, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$624, DW_AT_name("rsvd6")
	.dwattr $C$DW$624, DW_AT_TI_symbol_name("_rsvd6")
	.dwattr $C$DW$624, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$624, DW_AT_bit_size(0x10)
	.dwattr $C$DW$624, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$624, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$118


$C$DW$T$119	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$119, DW_AT_name("DC6_REG")
	.dwattr $C$DW$T$119, DW_AT_byte_size(0x02)
$C$DW$625	.dwtag  DW_TAG_member
	.dwattr $C$DW$625, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$625, DW_AT_name("all")
	.dwattr $C$DW$625, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$625, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$625, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$626	.dwtag  DW_TAG_member
	.dwattr $C$DW$626, DW_AT_type(*$C$DW$T$118)
	.dwattr $C$DW$626, DW_AT_name("bit")
	.dwattr $C$DW$626, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$626, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$626, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$119


$C$DW$T$120	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$120, DW_AT_name("DC7_BITS")
	.dwattr $C$DW$T$120, DW_AT_byte_size(0x02)
$C$DW$627	.dwtag  DW_TAG_member
	.dwattr $C$DW$627, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$627, DW_AT_name("SD1")
	.dwattr $C$DW$627, DW_AT_TI_symbol_name("_SD1")
	.dwattr $C$DW$627, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$627, DW_AT_bit_size(0x01)
	.dwattr $C$DW$627, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$627, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$628	.dwtag  DW_TAG_member
	.dwattr $C$DW$628, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$628, DW_AT_name("SD2")
	.dwattr $C$DW$628, DW_AT_TI_symbol_name("_SD2")
	.dwattr $C$DW$628, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$628, DW_AT_bit_size(0x01)
	.dwattr $C$DW$628, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$628, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$629	.dwtag  DW_TAG_member
	.dwattr $C$DW$629, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$629, DW_AT_name("rsvd1")
	.dwattr $C$DW$629, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$629, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$629, DW_AT_bit_size(0x01)
	.dwattr $C$DW$629, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$629, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$630	.dwtag  DW_TAG_member
	.dwattr $C$DW$630, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$630, DW_AT_name("rsvd2")
	.dwattr $C$DW$630, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$630, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$630, DW_AT_bit_size(0x01)
	.dwattr $C$DW$630, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$630, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$631	.dwtag  DW_TAG_member
	.dwattr $C$DW$631, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$631, DW_AT_name("rsvd3")
	.dwattr $C$DW$631, DW_AT_TI_symbol_name("_rsvd3")
	.dwattr $C$DW$631, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$631, DW_AT_bit_size(0x01)
	.dwattr $C$DW$631, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$631, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$632	.dwtag  DW_TAG_member
	.dwattr $C$DW$632, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$632, DW_AT_name("rsvd4")
	.dwattr $C$DW$632, DW_AT_TI_symbol_name("_rsvd4")
	.dwattr $C$DW$632, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$632, DW_AT_bit_size(0x01)
	.dwattr $C$DW$632, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$632, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$633	.dwtag  DW_TAG_member
	.dwattr $C$DW$633, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$633, DW_AT_name("rsvd5")
	.dwattr $C$DW$633, DW_AT_TI_symbol_name("_rsvd5")
	.dwattr $C$DW$633, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$633, DW_AT_bit_size(0x01)
	.dwattr $C$DW$633, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$633, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$634	.dwtag  DW_TAG_member
	.dwattr $C$DW$634, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$634, DW_AT_name("rsvd6")
	.dwattr $C$DW$634, DW_AT_TI_symbol_name("_rsvd6")
	.dwattr $C$DW$634, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$634, DW_AT_bit_size(0x01)
	.dwattr $C$DW$634, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$634, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$635	.dwtag  DW_TAG_member
	.dwattr $C$DW$635, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$635, DW_AT_name("rsvd7")
	.dwattr $C$DW$635, DW_AT_TI_symbol_name("_rsvd7")
	.dwattr $C$DW$635, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$635, DW_AT_bit_size(0x08)
	.dwattr $C$DW$635, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$635, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$636	.dwtag  DW_TAG_member
	.dwattr $C$DW$636, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$636, DW_AT_name("rsvd8")
	.dwattr $C$DW$636, DW_AT_TI_symbol_name("_rsvd8")
	.dwattr $C$DW$636, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$636, DW_AT_bit_size(0x10)
	.dwattr $C$DW$636, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$636, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$120


$C$DW$T$121	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$121, DW_AT_name("DC7_REG")
	.dwattr $C$DW$T$121, DW_AT_byte_size(0x02)
$C$DW$637	.dwtag  DW_TAG_member
	.dwattr $C$DW$637, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$637, DW_AT_name("all")
	.dwattr $C$DW$637, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$637, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$637, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$638	.dwtag  DW_TAG_member
	.dwattr $C$DW$638, DW_AT_type(*$C$DW$T$120)
	.dwattr $C$DW$638, DW_AT_name("bit")
	.dwattr $C$DW$638, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$638, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$638, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$121


$C$DW$T$122	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$122, DW_AT_name("DC8_BITS")
	.dwattr $C$DW$T$122, DW_AT_byte_size(0x02)
$C$DW$639	.dwtag  DW_TAG_member
	.dwattr $C$DW$639, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$639, DW_AT_name("SCI_A")
	.dwattr $C$DW$639, DW_AT_TI_symbol_name("_SCI_A")
	.dwattr $C$DW$639, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$639, DW_AT_bit_size(0x01)
	.dwattr $C$DW$639, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$639, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$640	.dwtag  DW_TAG_member
	.dwattr $C$DW$640, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$640, DW_AT_name("SCI_B")
	.dwattr $C$DW$640, DW_AT_TI_symbol_name("_SCI_B")
	.dwattr $C$DW$640, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$640, DW_AT_bit_size(0x01)
	.dwattr $C$DW$640, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$640, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$641	.dwtag  DW_TAG_member
	.dwattr $C$DW$641, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$641, DW_AT_name("SCI_C")
	.dwattr $C$DW$641, DW_AT_TI_symbol_name("_SCI_C")
	.dwattr $C$DW$641, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$641, DW_AT_bit_size(0x01)
	.dwattr $C$DW$641, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$641, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$642	.dwtag  DW_TAG_member
	.dwattr $C$DW$642, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$642, DW_AT_name("SCI_D")
	.dwattr $C$DW$642, DW_AT_TI_symbol_name("_SCI_D")
	.dwattr $C$DW$642, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$642, DW_AT_bit_size(0x01)
	.dwattr $C$DW$642, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$642, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$643	.dwtag  DW_TAG_member
	.dwattr $C$DW$643, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$643, DW_AT_name("rsvd1")
	.dwattr $C$DW$643, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$643, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$643, DW_AT_bit_size(0x0c)
	.dwattr $C$DW$643, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$643, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$644	.dwtag  DW_TAG_member
	.dwattr $C$DW$644, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$644, DW_AT_name("rsvd2")
	.dwattr $C$DW$644, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$644, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$644, DW_AT_bit_size(0x10)
	.dwattr $C$DW$644, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$644, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$122


$C$DW$T$123	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$123, DW_AT_name("DC8_REG")
	.dwattr $C$DW$T$123, DW_AT_byte_size(0x02)
$C$DW$645	.dwtag  DW_TAG_member
	.dwattr $C$DW$645, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$645, DW_AT_name("all")
	.dwattr $C$DW$645, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$645, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$645, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$646	.dwtag  DW_TAG_member
	.dwattr $C$DW$646, DW_AT_type(*$C$DW$T$122)
	.dwattr $C$DW$646, DW_AT_name("bit")
	.dwattr $C$DW$646, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$646, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$646, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$123


$C$DW$T$124	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$124, DW_AT_name("DC9_BITS")
	.dwattr $C$DW$T$124, DW_AT_byte_size(0x02)
$C$DW$647	.dwtag  DW_TAG_member
	.dwattr $C$DW$647, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$647, DW_AT_name("SPI_A")
	.dwattr $C$DW$647, DW_AT_TI_symbol_name("_SPI_A")
	.dwattr $C$DW$647, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$647, DW_AT_bit_size(0x01)
	.dwattr $C$DW$647, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$647, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$648	.dwtag  DW_TAG_member
	.dwattr $C$DW$648, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$648, DW_AT_name("SPI_B")
	.dwattr $C$DW$648, DW_AT_TI_symbol_name("_SPI_B")
	.dwattr $C$DW$648, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$648, DW_AT_bit_size(0x01)
	.dwattr $C$DW$648, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$648, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$649	.dwtag  DW_TAG_member
	.dwattr $C$DW$649, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$649, DW_AT_name("SPI_C")
	.dwattr $C$DW$649, DW_AT_TI_symbol_name("_SPI_C")
	.dwattr $C$DW$649, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$649, DW_AT_bit_size(0x01)
	.dwattr $C$DW$649, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$649, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$650	.dwtag  DW_TAG_member
	.dwattr $C$DW$650, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$650, DW_AT_name("rsvd1")
	.dwattr $C$DW$650, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$650, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$650, DW_AT_bit_size(0x01)
	.dwattr $C$DW$650, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$650, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$651	.dwtag  DW_TAG_member
	.dwattr $C$DW$651, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$651, DW_AT_name("rsvd2")
	.dwattr $C$DW$651, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$651, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$651, DW_AT_bit_size(0x0c)
	.dwattr $C$DW$651, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$651, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$652	.dwtag  DW_TAG_member
	.dwattr $C$DW$652, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$652, DW_AT_name("rsvd3")
	.dwattr $C$DW$652, DW_AT_TI_symbol_name("_rsvd3")
	.dwattr $C$DW$652, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$652, DW_AT_bit_size(0x01)
	.dwattr $C$DW$652, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$652, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$653	.dwtag  DW_TAG_member
	.dwattr $C$DW$653, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$653, DW_AT_name("rsvd4")
	.dwattr $C$DW$653, DW_AT_TI_symbol_name("_rsvd4")
	.dwattr $C$DW$653, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$653, DW_AT_bit_size(0x01)
	.dwattr $C$DW$653, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$653, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$654	.dwtag  DW_TAG_member
	.dwattr $C$DW$654, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$654, DW_AT_name("rsvd5")
	.dwattr $C$DW$654, DW_AT_TI_symbol_name("_rsvd5")
	.dwattr $C$DW$654, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$654, DW_AT_bit_size(0x0e)
	.dwattr $C$DW$654, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$654, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$124


$C$DW$T$125	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$125, DW_AT_name("DC9_REG")
	.dwattr $C$DW$T$125, DW_AT_byte_size(0x02)
$C$DW$655	.dwtag  DW_TAG_member
	.dwattr $C$DW$655, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$655, DW_AT_name("all")
	.dwattr $C$DW$655, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$655, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$655, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$656	.dwtag  DW_TAG_member
	.dwattr $C$DW$656, DW_AT_type(*$C$DW$T$124)
	.dwattr $C$DW$656, DW_AT_name("bit")
	.dwattr $C$DW$656, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$656, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$656, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$125


$C$DW$T$127	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$127, DW_AT_name("DCSM_Z1_REGS")
	.dwattr $C$DW$T$127, DW_AT_byte_size(0x22)
$C$DW$657	.dwtag  DW_TAG_member
	.dwattr $C$DW$657, DW_AT_type(*$C$DW$T$330)
	.dwattr $C$DW$657, DW_AT_name("Z1_LINKPOINTER")
	.dwattr $C$DW$657, DW_AT_TI_symbol_name("_Z1_LINKPOINTER")
	.dwattr $C$DW$657, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$657, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$658	.dwtag  DW_TAG_member
	.dwattr $C$DW$658, DW_AT_type(*$C$DW$T$332)
	.dwattr $C$DW$658, DW_AT_name("Z1_OTPSECLOCK")
	.dwattr $C$DW$658, DW_AT_TI_symbol_name("_Z1_OTPSECLOCK")
	.dwattr $C$DW$658, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$658, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$659	.dwtag  DW_TAG_member
	.dwattr $C$DW$659, DW_AT_type(*$C$DW$T$318)
	.dwattr $C$DW$659, DW_AT_name("Z1_BOOTCTRL")
	.dwattr $C$DW$659, DW_AT_TI_symbol_name("_Z1_BOOTCTRL")
	.dwattr $C$DW$659, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$659, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$660	.dwtag  DW_TAG_member
	.dwattr $C$DW$660, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$660, DW_AT_name("Z1_LINKPOINTERERR")
	.dwattr $C$DW$660, DW_AT_TI_symbol_name("_Z1_LINKPOINTERERR")
	.dwattr $C$DW$660, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$660, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$661	.dwtag  DW_TAG_member
	.dwattr $C$DW$661, DW_AT_type(*$C$DW$T$126)
	.dwattr $C$DW$661, DW_AT_name("rsvd1")
	.dwattr $C$DW$661, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$661, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$661, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$662	.dwtag  DW_TAG_member
	.dwattr $C$DW$662, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$662, DW_AT_name("Z1_CSMKEY0")
	.dwattr $C$DW$662, DW_AT_TI_symbol_name("_Z1_CSMKEY0")
	.dwattr $C$DW$662, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$662, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$663	.dwtag  DW_TAG_member
	.dwattr $C$DW$663, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$663, DW_AT_name("Z1_CSMKEY1")
	.dwattr $C$DW$663, DW_AT_TI_symbol_name("_Z1_CSMKEY1")
	.dwattr $C$DW$663, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr $C$DW$663, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$664	.dwtag  DW_TAG_member
	.dwattr $C$DW$664, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$664, DW_AT_name("Z1_CSMKEY2")
	.dwattr $C$DW$664, DW_AT_TI_symbol_name("_Z1_CSMKEY2")
	.dwattr $C$DW$664, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$664, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$665	.dwtag  DW_TAG_member
	.dwattr $C$DW$665, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$665, DW_AT_name("Z1_CSMKEY3")
	.dwattr $C$DW$665, DW_AT_TI_symbol_name("_Z1_CSMKEY3")
	.dwattr $C$DW$665, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr $C$DW$665, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$666	.dwtag  DW_TAG_member
	.dwattr $C$DW$666, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$666, DW_AT_name("rsvd2")
	.dwattr $C$DW$666, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$666, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$666, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$667	.dwtag  DW_TAG_member
	.dwattr $C$DW$667, DW_AT_type(*$C$DW$T$320)
	.dwattr $C$DW$667, DW_AT_name("Z1_CR")
	.dwattr $C$DW$667, DW_AT_TI_symbol_name("_Z1_CR")
	.dwattr $C$DW$667, DW_AT_data_member_location[DW_OP_plus_uconst 0x19]
	.dwattr $C$DW$667, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$668	.dwtag  DW_TAG_member
	.dwattr $C$DW$668, DW_AT_type(*$C$DW$T$328)
	.dwattr $C$DW$668, DW_AT_name("Z1_GRABSECTR")
	.dwattr $C$DW$668, DW_AT_TI_symbol_name("_Z1_GRABSECTR")
	.dwattr $C$DW$668, DW_AT_data_member_location[DW_OP_plus_uconst 0x1a]
	.dwattr $C$DW$668, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$669	.dwtag  DW_TAG_member
	.dwattr $C$DW$669, DW_AT_type(*$C$DW$T$326)
	.dwattr $C$DW$669, DW_AT_name("Z1_GRABRAMR")
	.dwattr $C$DW$669, DW_AT_TI_symbol_name("_Z1_GRABRAMR")
	.dwattr $C$DW$669, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr $C$DW$669, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$670	.dwtag  DW_TAG_member
	.dwattr $C$DW$670, DW_AT_type(*$C$DW$T$324)
	.dwattr $C$DW$670, DW_AT_name("Z1_EXEONLYSECTR")
	.dwattr $C$DW$670, DW_AT_TI_symbol_name("_Z1_EXEONLYSECTR")
	.dwattr $C$DW$670, DW_AT_data_member_location[DW_OP_plus_uconst 0x1e]
	.dwattr $C$DW$670, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$671	.dwtag  DW_TAG_member
	.dwattr $C$DW$671, DW_AT_type(*$C$DW$T$322)
	.dwattr $C$DW$671, DW_AT_name("Z1_EXEONLYRAMR")
	.dwattr $C$DW$671, DW_AT_TI_symbol_name("_Z1_EXEONLYRAMR")
	.dwattr $C$DW$671, DW_AT_data_member_location[DW_OP_plus_uconst 0x20]
	.dwattr $C$DW$671, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$127

$C$DW$672	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$672, DW_AT_type(*$C$DW$T$127)

$C$DW$T$369	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$369, DW_AT_type(*$C$DW$672)


$C$DW$T$128	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$128, DW_AT_name("DCSM_Z2_REGS")
	.dwattr $C$DW$T$128, DW_AT_byte_size(0x22)
$C$DW$673	.dwtag  DW_TAG_member
	.dwattr $C$DW$673, DW_AT_type(*$C$DW$T$346)
	.dwattr $C$DW$673, DW_AT_name("Z2_LINKPOINTER")
	.dwattr $C$DW$673, DW_AT_TI_symbol_name("_Z2_LINKPOINTER")
	.dwattr $C$DW$673, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$673, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$674	.dwtag  DW_TAG_member
	.dwattr $C$DW$674, DW_AT_type(*$C$DW$T$348)
	.dwattr $C$DW$674, DW_AT_name("Z2_OTPSECLOCK")
	.dwattr $C$DW$674, DW_AT_TI_symbol_name("_Z2_OTPSECLOCK")
	.dwattr $C$DW$674, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$674, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$675	.dwtag  DW_TAG_member
	.dwattr $C$DW$675, DW_AT_type(*$C$DW$T$334)
	.dwattr $C$DW$675, DW_AT_name("Z2_BOOTCTRL")
	.dwattr $C$DW$675, DW_AT_TI_symbol_name("_Z2_BOOTCTRL")
	.dwattr $C$DW$675, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$675, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$676	.dwtag  DW_TAG_member
	.dwattr $C$DW$676, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$676, DW_AT_name("Z2_LINKPOINTERERR")
	.dwattr $C$DW$676, DW_AT_TI_symbol_name("_Z2_LINKPOINTERERR")
	.dwattr $C$DW$676, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$676, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$677	.dwtag  DW_TAG_member
	.dwattr $C$DW$677, DW_AT_type(*$C$DW$T$126)
	.dwattr $C$DW$677, DW_AT_name("rsvd1")
	.dwattr $C$DW$677, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$677, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$677, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$678	.dwtag  DW_TAG_member
	.dwattr $C$DW$678, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$678, DW_AT_name("Z2_CSMKEY0")
	.dwattr $C$DW$678, DW_AT_TI_symbol_name("_Z2_CSMKEY0")
	.dwattr $C$DW$678, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$678, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$679	.dwtag  DW_TAG_member
	.dwattr $C$DW$679, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$679, DW_AT_name("Z2_CSMKEY1")
	.dwattr $C$DW$679, DW_AT_TI_symbol_name("_Z2_CSMKEY1")
	.dwattr $C$DW$679, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr $C$DW$679, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$680	.dwtag  DW_TAG_member
	.dwattr $C$DW$680, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$680, DW_AT_name("Z2_CSMKEY2")
	.dwattr $C$DW$680, DW_AT_TI_symbol_name("_Z2_CSMKEY2")
	.dwattr $C$DW$680, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$680, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$681	.dwtag  DW_TAG_member
	.dwattr $C$DW$681, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$681, DW_AT_name("Z2_CSMKEY3")
	.dwattr $C$DW$681, DW_AT_TI_symbol_name("_Z2_CSMKEY3")
	.dwattr $C$DW$681, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr $C$DW$681, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$682	.dwtag  DW_TAG_member
	.dwattr $C$DW$682, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$682, DW_AT_name("rsvd2")
	.dwattr $C$DW$682, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$682, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$682, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$683	.dwtag  DW_TAG_member
	.dwattr $C$DW$683, DW_AT_type(*$C$DW$T$336)
	.dwattr $C$DW$683, DW_AT_name("Z2_CR")
	.dwattr $C$DW$683, DW_AT_TI_symbol_name("_Z2_CR")
	.dwattr $C$DW$683, DW_AT_data_member_location[DW_OP_plus_uconst 0x19]
	.dwattr $C$DW$683, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$684	.dwtag  DW_TAG_member
	.dwattr $C$DW$684, DW_AT_type(*$C$DW$T$344)
	.dwattr $C$DW$684, DW_AT_name("Z2_GRABSECTR")
	.dwattr $C$DW$684, DW_AT_TI_symbol_name("_Z2_GRABSECTR")
	.dwattr $C$DW$684, DW_AT_data_member_location[DW_OP_plus_uconst 0x1a]
	.dwattr $C$DW$684, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$685	.dwtag  DW_TAG_member
	.dwattr $C$DW$685, DW_AT_type(*$C$DW$T$342)
	.dwattr $C$DW$685, DW_AT_name("Z2_GRABRAMR")
	.dwattr $C$DW$685, DW_AT_TI_symbol_name("_Z2_GRABRAMR")
	.dwattr $C$DW$685, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr $C$DW$685, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$686	.dwtag  DW_TAG_member
	.dwattr $C$DW$686, DW_AT_type(*$C$DW$T$340)
	.dwattr $C$DW$686, DW_AT_name("Z2_EXEONLYSECTR")
	.dwattr $C$DW$686, DW_AT_TI_symbol_name("_Z2_EXEONLYSECTR")
	.dwattr $C$DW$686, DW_AT_data_member_location[DW_OP_plus_uconst 0x1e]
	.dwattr $C$DW$686, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$687	.dwtag  DW_TAG_member
	.dwattr $C$DW$687, DW_AT_type(*$C$DW$T$338)
	.dwattr $C$DW$687, DW_AT_name("Z2_EXEONLYRAMR")
	.dwattr $C$DW$687, DW_AT_TI_symbol_name("_Z2_EXEONLYRAMR")
	.dwattr $C$DW$687, DW_AT_data_member_location[DW_OP_plus_uconst 0x20]
	.dwattr $C$DW$687, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$128

$C$DW$688	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$688, DW_AT_type(*$C$DW$T$128)

$C$DW$T$370	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$370, DW_AT_type(*$C$DW$688)


$C$DW$T$129	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$129, DW_AT_name("DEVCFGLOCK1_BITS")
	.dwattr $C$DW$T$129, DW_AT_byte_size(0x02)
$C$DW$689	.dwtag  DW_TAG_member
	.dwattr $C$DW$689, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$689, DW_AT_name("CPUSEL0")
	.dwattr $C$DW$689, DW_AT_TI_symbol_name("_CPUSEL0")
	.dwattr $C$DW$689, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$689, DW_AT_bit_size(0x01)
	.dwattr $C$DW$689, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$689, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$690	.dwtag  DW_TAG_member
	.dwattr $C$DW$690, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$690, DW_AT_name("CPUSEL1")
	.dwattr $C$DW$690, DW_AT_TI_symbol_name("_CPUSEL1")
	.dwattr $C$DW$690, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$690, DW_AT_bit_size(0x01)
	.dwattr $C$DW$690, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$690, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$691	.dwtag  DW_TAG_member
	.dwattr $C$DW$691, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$691, DW_AT_name("CPUSEL2")
	.dwattr $C$DW$691, DW_AT_TI_symbol_name("_CPUSEL2")
	.dwattr $C$DW$691, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$691, DW_AT_bit_size(0x01)
	.dwattr $C$DW$691, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$691, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$692	.dwtag  DW_TAG_member
	.dwattr $C$DW$692, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$692, DW_AT_name("CPUSEL3")
	.dwattr $C$DW$692, DW_AT_TI_symbol_name("_CPUSEL3")
	.dwattr $C$DW$692, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$692, DW_AT_bit_size(0x01)
	.dwattr $C$DW$692, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$692, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$693	.dwtag  DW_TAG_member
	.dwattr $C$DW$693, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$693, DW_AT_name("CPUSEL4")
	.dwattr $C$DW$693, DW_AT_TI_symbol_name("_CPUSEL4")
	.dwattr $C$DW$693, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$693, DW_AT_bit_size(0x01)
	.dwattr $C$DW$693, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$693, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$694	.dwtag  DW_TAG_member
	.dwattr $C$DW$694, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$694, DW_AT_name("CPUSEL5")
	.dwattr $C$DW$694, DW_AT_TI_symbol_name("_CPUSEL5")
	.dwattr $C$DW$694, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$694, DW_AT_bit_size(0x01)
	.dwattr $C$DW$694, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$694, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$695	.dwtag  DW_TAG_member
	.dwattr $C$DW$695, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$695, DW_AT_name("CPUSEL6")
	.dwattr $C$DW$695, DW_AT_TI_symbol_name("_CPUSEL6")
	.dwattr $C$DW$695, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$695, DW_AT_bit_size(0x01)
	.dwattr $C$DW$695, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$695, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$696	.dwtag  DW_TAG_member
	.dwattr $C$DW$696, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$696, DW_AT_name("CPUSEL7")
	.dwattr $C$DW$696, DW_AT_TI_symbol_name("_CPUSEL7")
	.dwattr $C$DW$696, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$696, DW_AT_bit_size(0x01)
	.dwattr $C$DW$696, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$696, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$697	.dwtag  DW_TAG_member
	.dwattr $C$DW$697, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$697, DW_AT_name("CPUSEL8")
	.dwattr $C$DW$697, DW_AT_TI_symbol_name("_CPUSEL8")
	.dwattr $C$DW$697, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$697, DW_AT_bit_size(0x01)
	.dwattr $C$DW$697, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$697, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$698	.dwtag  DW_TAG_member
	.dwattr $C$DW$698, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$698, DW_AT_name("CPUSEL9")
	.dwattr $C$DW$698, DW_AT_TI_symbol_name("_CPUSEL9")
	.dwattr $C$DW$698, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$698, DW_AT_bit_size(0x01)
	.dwattr $C$DW$698, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$698, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$699	.dwtag  DW_TAG_member
	.dwattr $C$DW$699, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$699, DW_AT_name("CPUSEL10")
	.dwattr $C$DW$699, DW_AT_TI_symbol_name("_CPUSEL10")
	.dwattr $C$DW$699, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$699, DW_AT_bit_size(0x01)
	.dwattr $C$DW$699, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$699, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$700	.dwtag  DW_TAG_member
	.dwattr $C$DW$700, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$700, DW_AT_name("CPUSEL11")
	.dwattr $C$DW$700, DW_AT_TI_symbol_name("_CPUSEL11")
	.dwattr $C$DW$700, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$700, DW_AT_bit_size(0x01)
	.dwattr $C$DW$700, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$700, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$701	.dwtag  DW_TAG_member
	.dwattr $C$DW$701, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$701, DW_AT_name("CPUSEL12")
	.dwattr $C$DW$701, DW_AT_TI_symbol_name("_CPUSEL12")
	.dwattr $C$DW$701, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$701, DW_AT_bit_size(0x01)
	.dwattr $C$DW$701, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$701, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$702	.dwtag  DW_TAG_member
	.dwattr $C$DW$702, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$702, DW_AT_name("CPUSEL13")
	.dwattr $C$DW$702, DW_AT_TI_symbol_name("_CPUSEL13")
	.dwattr $C$DW$702, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$702, DW_AT_bit_size(0x01)
	.dwattr $C$DW$702, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$702, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$703	.dwtag  DW_TAG_member
	.dwattr $C$DW$703, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$703, DW_AT_name("CPUSEL14")
	.dwattr $C$DW$703, DW_AT_TI_symbol_name("_CPUSEL14")
	.dwattr $C$DW$703, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$703, DW_AT_bit_size(0x01)
	.dwattr $C$DW$703, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$703, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$704	.dwtag  DW_TAG_member
	.dwattr $C$DW$704, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$704, DW_AT_name("rsvd1")
	.dwattr $C$DW$704, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$704, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$704, DW_AT_bit_size(0x01)
	.dwattr $C$DW$704, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$704, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$705	.dwtag  DW_TAG_member
	.dwattr $C$DW$705, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$705, DW_AT_name("rsvd2")
	.dwattr $C$DW$705, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$705, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$705, DW_AT_bit_size(0x10)
	.dwattr $C$DW$705, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$705, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$129


$C$DW$T$130	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$130, DW_AT_name("DEVCFGLOCK1_REG")
	.dwattr $C$DW$T$130, DW_AT_byte_size(0x02)
$C$DW$706	.dwtag  DW_TAG_member
	.dwattr $C$DW$706, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$706, DW_AT_name("all")
	.dwattr $C$DW$706, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$706, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$706, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$707	.dwtag  DW_TAG_member
	.dwattr $C$DW$707, DW_AT_type(*$C$DW$T$129)
	.dwattr $C$DW$707, DW_AT_name("bit")
	.dwattr $C$DW$707, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$707, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$707, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$130


$C$DW$T$136	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$136, DW_AT_name("DEV_CFG_REGS")
	.dwattr $C$DW$T$136, DW_AT_byte_size(0x12e)
$C$DW$708	.dwtag  DW_TAG_member
	.dwattr $C$DW$708, DW_AT_type(*$C$DW$T$130)
	.dwattr $C$DW$708, DW_AT_name("DEVCFGLOCK1")
	.dwattr $C$DW$708, DW_AT_TI_symbol_name("_DEVCFGLOCK1")
	.dwattr $C$DW$708, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$708, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$709	.dwtag  DW_TAG_member
	.dwattr $C$DW$709, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$709, DW_AT_name("rsvd1")
	.dwattr $C$DW$709, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$709, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$709, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$710	.dwtag  DW_TAG_member
	.dwattr $C$DW$710, DW_AT_type(*$C$DW$T$205)
	.dwattr $C$DW$710, DW_AT_name("PARTIDL")
	.dwattr $C$DW$710, DW_AT_TI_symbol_name("_PARTIDL")
	.dwattr $C$DW$710, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$710, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$711	.dwtag  DW_TAG_member
	.dwattr $C$DW$711, DW_AT_type(*$C$DW$T$203)
	.dwattr $C$DW$711, DW_AT_name("PARTIDH")
	.dwattr $C$DW$711, DW_AT_TI_symbol_name("_PARTIDH")
	.dwattr $C$DW$711, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$711, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$712	.dwtag  DW_TAG_member
	.dwattr $C$DW$712, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$712, DW_AT_name("REVID")
	.dwattr $C$DW$712, DW_AT_TI_symbol_name("_REVID")
	.dwattr $C$DW$712, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$712, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$713	.dwtag  DW_TAG_member
	.dwattr $C$DW$713, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$713, DW_AT_name("rsvd2")
	.dwattr $C$DW$713, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$713, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$713, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$714	.dwtag  DW_TAG_member
	.dwattr $C$DW$714, DW_AT_type(*$C$DW$T$87)
	.dwattr $C$DW$714, DW_AT_name("DC0")
	.dwattr $C$DW$714, DW_AT_TI_symbol_name("_DC0")
	.dwattr $C$DW$714, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$714, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$715	.dwtag  DW_TAG_member
	.dwattr $C$DW$715, DW_AT_type(*$C$DW$T$107)
	.dwattr $C$DW$715, DW_AT_name("DC1")
	.dwattr $C$DW$715, DW_AT_TI_symbol_name("_DC1")
	.dwattr $C$DW$715, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr $C$DW$715, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$716	.dwtag  DW_TAG_member
	.dwattr $C$DW$716, DW_AT_type(*$C$DW$T$111)
	.dwattr $C$DW$716, DW_AT_name("DC2")
	.dwattr $C$DW$716, DW_AT_TI_symbol_name("_DC2")
	.dwattr $C$DW$716, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$716, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$717	.dwtag  DW_TAG_member
	.dwattr $C$DW$717, DW_AT_type(*$C$DW$T$113)
	.dwattr $C$DW$717, DW_AT_name("DC3")
	.dwattr $C$DW$717, DW_AT_TI_symbol_name("_DC3")
	.dwattr $C$DW$717, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr $C$DW$717, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$718	.dwtag  DW_TAG_member
	.dwattr $C$DW$718, DW_AT_type(*$C$DW$T$115)
	.dwattr $C$DW$718, DW_AT_name("DC4")
	.dwattr $C$DW$718, DW_AT_TI_symbol_name("_DC4")
	.dwattr $C$DW$718, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$718, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$719	.dwtag  DW_TAG_member
	.dwattr $C$DW$719, DW_AT_type(*$C$DW$T$117)
	.dwattr $C$DW$719, DW_AT_name("DC5")
	.dwattr $C$DW$719, DW_AT_TI_symbol_name("_DC5")
	.dwattr $C$DW$719, DW_AT_data_member_location[DW_OP_plus_uconst 0x1a]
	.dwattr $C$DW$719, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$720	.dwtag  DW_TAG_member
	.dwattr $C$DW$720, DW_AT_type(*$C$DW$T$119)
	.dwattr $C$DW$720, DW_AT_name("DC6")
	.dwattr $C$DW$720, DW_AT_TI_symbol_name("_DC6")
	.dwattr $C$DW$720, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr $C$DW$720, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$721	.dwtag  DW_TAG_member
	.dwattr $C$DW$721, DW_AT_type(*$C$DW$T$121)
	.dwattr $C$DW$721, DW_AT_name("DC7")
	.dwattr $C$DW$721, DW_AT_TI_symbol_name("_DC7")
	.dwattr $C$DW$721, DW_AT_data_member_location[DW_OP_plus_uconst 0x1e]
	.dwattr $C$DW$721, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$722	.dwtag  DW_TAG_member
	.dwattr $C$DW$722, DW_AT_type(*$C$DW$T$123)
	.dwattr $C$DW$722, DW_AT_name("DC8")
	.dwattr $C$DW$722, DW_AT_TI_symbol_name("_DC8")
	.dwattr $C$DW$722, DW_AT_data_member_location[DW_OP_plus_uconst 0x20]
	.dwattr $C$DW$722, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$723	.dwtag  DW_TAG_member
	.dwattr $C$DW$723, DW_AT_type(*$C$DW$T$125)
	.dwattr $C$DW$723, DW_AT_name("DC9")
	.dwattr $C$DW$723, DW_AT_TI_symbol_name("_DC9")
	.dwattr $C$DW$723, DW_AT_data_member_location[DW_OP_plus_uconst 0x22]
	.dwattr $C$DW$723, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$724	.dwtag  DW_TAG_member
	.dwattr $C$DW$724, DW_AT_type(*$C$DW$T$89)
	.dwattr $C$DW$724, DW_AT_name("DC10")
	.dwattr $C$DW$724, DW_AT_TI_symbol_name("_DC10")
	.dwattr $C$DW$724, DW_AT_data_member_location[DW_OP_plus_uconst 0x24]
	.dwattr $C$DW$724, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$725	.dwtag  DW_TAG_member
	.dwattr $C$DW$725, DW_AT_type(*$C$DW$T$91)
	.dwattr $C$DW$725, DW_AT_name("DC11")
	.dwattr $C$DW$725, DW_AT_TI_symbol_name("_DC11")
	.dwattr $C$DW$725, DW_AT_data_member_location[DW_OP_plus_uconst 0x26]
	.dwattr $C$DW$725, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$726	.dwtag  DW_TAG_member
	.dwattr $C$DW$726, DW_AT_type(*$C$DW$T$93)
	.dwattr $C$DW$726, DW_AT_name("DC12")
	.dwattr $C$DW$726, DW_AT_TI_symbol_name("_DC12")
	.dwattr $C$DW$726, DW_AT_data_member_location[DW_OP_plus_uconst 0x28]
	.dwattr $C$DW$726, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$727	.dwtag  DW_TAG_member
	.dwattr $C$DW$727, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$727, DW_AT_name("DC13")
	.dwattr $C$DW$727, DW_AT_TI_symbol_name("_DC13")
	.dwattr $C$DW$727, DW_AT_data_member_location[DW_OP_plus_uconst 0x2a]
	.dwattr $C$DW$727, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$728	.dwtag  DW_TAG_member
	.dwattr $C$DW$728, DW_AT_type(*$C$DW$T$97)
	.dwattr $C$DW$728, DW_AT_name("DC14")
	.dwattr $C$DW$728, DW_AT_TI_symbol_name("_DC14")
	.dwattr $C$DW$728, DW_AT_data_member_location[DW_OP_plus_uconst 0x2c]
	.dwattr $C$DW$728, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$729	.dwtag  DW_TAG_member
	.dwattr $C$DW$729, DW_AT_type(*$C$DW$T$99)
	.dwattr $C$DW$729, DW_AT_name("DC15")
	.dwattr $C$DW$729, DW_AT_TI_symbol_name("_DC15")
	.dwattr $C$DW$729, DW_AT_data_member_location[DW_OP_plus_uconst 0x2e]
	.dwattr $C$DW$729, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$730	.dwtag  DW_TAG_member
	.dwattr $C$DW$730, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$730, DW_AT_name("rsvd3")
	.dwattr $C$DW$730, DW_AT_TI_symbol_name("_rsvd3")
	.dwattr $C$DW$730, DW_AT_data_member_location[DW_OP_plus_uconst 0x30]
	.dwattr $C$DW$730, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$731	.dwtag  DW_TAG_member
	.dwattr $C$DW$731, DW_AT_type(*$C$DW$T$101)
	.dwattr $C$DW$731, DW_AT_name("DC17")
	.dwattr $C$DW$731, DW_AT_TI_symbol_name("_DC17")
	.dwattr $C$DW$731, DW_AT_data_member_location[DW_OP_plus_uconst 0x32]
	.dwattr $C$DW$731, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$732	.dwtag  DW_TAG_member
	.dwattr $C$DW$732, DW_AT_type(*$C$DW$T$103)
	.dwattr $C$DW$732, DW_AT_name("DC18")
	.dwattr $C$DW$732, DW_AT_TI_symbol_name("_DC18")
	.dwattr $C$DW$732, DW_AT_data_member_location[DW_OP_plus_uconst 0x34]
	.dwattr $C$DW$732, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$733	.dwtag  DW_TAG_member
	.dwattr $C$DW$733, DW_AT_type(*$C$DW$T$105)
	.dwattr $C$DW$733, DW_AT_name("DC19")
	.dwattr $C$DW$733, DW_AT_TI_symbol_name("_DC19")
	.dwattr $C$DW$733, DW_AT_data_member_location[DW_OP_plus_uconst 0x36]
	.dwattr $C$DW$733, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$734	.dwtag  DW_TAG_member
	.dwattr $C$DW$734, DW_AT_type(*$C$DW$T$109)
	.dwattr $C$DW$734, DW_AT_name("DC20")
	.dwattr $C$DW$734, DW_AT_TI_symbol_name("_DC20")
	.dwattr $C$DW$734, DW_AT_data_member_location[DW_OP_plus_uconst 0x38]
	.dwattr $C$DW$734, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$735	.dwtag  DW_TAG_member
	.dwattr $C$DW$735, DW_AT_type(*$C$DW$T$131)
	.dwattr $C$DW$735, DW_AT_name("rsvd4")
	.dwattr $C$DW$735, DW_AT_TI_symbol_name("_rsvd4")
	.dwattr $C$DW$735, DW_AT_data_member_location[DW_OP_plus_uconst 0x3a]
	.dwattr $C$DW$735, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$736	.dwtag  DW_TAG_member
	.dwattr $C$DW$736, DW_AT_type(*$C$DW$T$239)
	.dwattr $C$DW$736, DW_AT_name("PERCNF1")
	.dwattr $C$DW$736, DW_AT_TI_symbol_name("_PERCNF1")
	.dwattr $C$DW$736, DW_AT_data_member_location[DW_OP_plus_uconst 0x60]
	.dwattr $C$DW$736, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$737	.dwtag  DW_TAG_member
	.dwattr $C$DW$737, DW_AT_type(*$C$DW$T$132)
	.dwattr $C$DW$737, DW_AT_name("rsvd5")
	.dwattr $C$DW$737, DW_AT_TI_symbol_name("_rsvd5")
	.dwattr $C$DW$737, DW_AT_data_member_location[DW_OP_plus_uconst 0x62]
	.dwattr $C$DW$737, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$738	.dwtag  DW_TAG_member
	.dwattr $C$DW$738, DW_AT_type(*$C$DW$T$181)
	.dwattr $C$DW$738, DW_AT_name("FUSEERR")
	.dwattr $C$DW$738, DW_AT_TI_symbol_name("_FUSEERR")
	.dwattr $C$DW$738, DW_AT_data_member_location[DW_OP_plus_uconst 0x74]
	.dwattr $C$DW$738, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$739	.dwtag  DW_TAG_member
	.dwattr $C$DW$739, DW_AT_type(*$C$DW$T$133)
	.dwattr $C$DW$739, DW_AT_name("rsvd6")
	.dwattr $C$DW$739, DW_AT_TI_symbol_name("_rsvd6")
	.dwattr $C$DW$739, DW_AT_data_member_location[DW_OP_plus_uconst 0x76]
	.dwattr $C$DW$739, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$740	.dwtag  DW_TAG_member
	.dwattr $C$DW$740, DW_AT_type(*$C$DW$T$255)
	.dwattr $C$DW$740, DW_AT_name("SOFTPRES0")
	.dwattr $C$DW$740, DW_AT_TI_symbol_name("_SOFTPRES0")
	.dwattr $C$DW$740, DW_AT_data_member_location[DW_OP_plus_uconst 0x82]
	.dwattr $C$DW$740, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$741	.dwtag  DW_TAG_member
	.dwattr $C$DW$741, DW_AT_type(*$C$DW$T$265)
	.dwattr $C$DW$741, DW_AT_name("SOFTPRES1")
	.dwattr $C$DW$741, DW_AT_TI_symbol_name("_SOFTPRES1")
	.dwattr $C$DW$741, DW_AT_data_member_location[DW_OP_plus_uconst 0x84]
	.dwattr $C$DW$741, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$742	.dwtag  DW_TAG_member
	.dwattr $C$DW$742, DW_AT_type(*$C$DW$T$267)
	.dwattr $C$DW$742, DW_AT_name("SOFTPRES2")
	.dwattr $C$DW$742, DW_AT_TI_symbol_name("_SOFTPRES2")
	.dwattr $C$DW$742, DW_AT_data_member_location[DW_OP_plus_uconst 0x86]
	.dwattr $C$DW$742, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$743	.dwtag  DW_TAG_member
	.dwattr $C$DW$743, DW_AT_type(*$C$DW$T$269)
	.dwattr $C$DW$743, DW_AT_name("SOFTPRES3")
	.dwattr $C$DW$743, DW_AT_TI_symbol_name("_SOFTPRES3")
	.dwattr $C$DW$743, DW_AT_data_member_location[DW_OP_plus_uconst 0x88]
	.dwattr $C$DW$743, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$744	.dwtag  DW_TAG_member
	.dwattr $C$DW$744, DW_AT_type(*$C$DW$T$271)
	.dwattr $C$DW$744, DW_AT_name("SOFTPRES4")
	.dwattr $C$DW$744, DW_AT_TI_symbol_name("_SOFTPRES4")
	.dwattr $C$DW$744, DW_AT_data_member_location[DW_OP_plus_uconst 0x8a]
	.dwattr $C$DW$744, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$745	.dwtag  DW_TAG_member
	.dwattr $C$DW$745, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$745, DW_AT_name("rsvd7")
	.dwattr $C$DW$745, DW_AT_TI_symbol_name("_rsvd7")
	.dwattr $C$DW$745, DW_AT_data_member_location[DW_OP_plus_uconst 0x8c]
	.dwattr $C$DW$745, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$746	.dwtag  DW_TAG_member
	.dwattr $C$DW$746, DW_AT_type(*$C$DW$T$273)
	.dwattr $C$DW$746, DW_AT_name("SOFTPRES6")
	.dwattr $C$DW$746, DW_AT_TI_symbol_name("_SOFTPRES6")
	.dwattr $C$DW$746, DW_AT_data_member_location[DW_OP_plus_uconst 0x8e]
	.dwattr $C$DW$746, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$747	.dwtag  DW_TAG_member
	.dwattr $C$DW$747, DW_AT_type(*$C$DW$T$275)
	.dwattr $C$DW$747, DW_AT_name("SOFTPRES7")
	.dwattr $C$DW$747, DW_AT_TI_symbol_name("_SOFTPRES7")
	.dwattr $C$DW$747, DW_AT_data_member_location[DW_OP_plus_uconst 0x90]
	.dwattr $C$DW$747, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$748	.dwtag  DW_TAG_member
	.dwattr $C$DW$748, DW_AT_type(*$C$DW$T$277)
	.dwattr $C$DW$748, DW_AT_name("SOFTPRES8")
	.dwattr $C$DW$748, DW_AT_TI_symbol_name("_SOFTPRES8")
	.dwattr $C$DW$748, DW_AT_data_member_location[DW_OP_plus_uconst 0x92]
	.dwattr $C$DW$748, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$749	.dwtag  DW_TAG_member
	.dwattr $C$DW$749, DW_AT_type(*$C$DW$T$279)
	.dwattr $C$DW$749, DW_AT_name("SOFTPRES9")
	.dwattr $C$DW$749, DW_AT_TI_symbol_name("_SOFTPRES9")
	.dwattr $C$DW$749, DW_AT_data_member_location[DW_OP_plus_uconst 0x94]
	.dwattr $C$DW$749, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$750	.dwtag  DW_TAG_member
	.dwattr $C$DW$750, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$750, DW_AT_name("rsvd8")
	.dwattr $C$DW$750, DW_AT_TI_symbol_name("_rsvd8")
	.dwattr $C$DW$750, DW_AT_data_member_location[DW_OP_plus_uconst 0x96]
	.dwattr $C$DW$750, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$751	.dwtag  DW_TAG_member
	.dwattr $C$DW$751, DW_AT_type(*$C$DW$T$257)
	.dwattr $C$DW$751, DW_AT_name("SOFTPRES11")
	.dwattr $C$DW$751, DW_AT_TI_symbol_name("_SOFTPRES11")
	.dwattr $C$DW$751, DW_AT_data_member_location[DW_OP_plus_uconst 0x98]
	.dwattr $C$DW$751, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$752	.dwtag  DW_TAG_member
	.dwattr $C$DW$752, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$752, DW_AT_name("rsvd9")
	.dwattr $C$DW$752, DW_AT_TI_symbol_name("_rsvd9")
	.dwattr $C$DW$752, DW_AT_data_member_location[DW_OP_plus_uconst 0x9a]
	.dwattr $C$DW$752, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$753	.dwtag  DW_TAG_member
	.dwattr $C$DW$753, DW_AT_type(*$C$DW$T$259)
	.dwattr $C$DW$753, DW_AT_name("SOFTPRES13")
	.dwattr $C$DW$753, DW_AT_TI_symbol_name("_SOFTPRES13")
	.dwattr $C$DW$753, DW_AT_data_member_location[DW_OP_plus_uconst 0x9c]
	.dwattr $C$DW$753, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$754	.dwtag  DW_TAG_member
	.dwattr $C$DW$754, DW_AT_type(*$C$DW$T$261)
	.dwattr $C$DW$754, DW_AT_name("SOFTPRES14")
	.dwattr $C$DW$754, DW_AT_TI_symbol_name("_SOFTPRES14")
	.dwattr $C$DW$754, DW_AT_data_member_location[DW_OP_plus_uconst 0x9e]
	.dwattr $C$DW$754, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$755	.dwtag  DW_TAG_member
	.dwattr $C$DW$755, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$755, DW_AT_name("rsvd10")
	.dwattr $C$DW$755, DW_AT_TI_symbol_name("_rsvd10")
	.dwattr $C$DW$755, DW_AT_data_member_location[DW_OP_plus_uconst 0xa0]
	.dwattr $C$DW$755, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$756	.dwtag  DW_TAG_member
	.dwattr $C$DW$756, DW_AT_type(*$C$DW$T$263)
	.dwattr $C$DW$756, DW_AT_name("SOFTPRES16")
	.dwattr $C$DW$756, DW_AT_TI_symbol_name("_SOFTPRES16")
	.dwattr $C$DW$756, DW_AT_data_member_location[DW_OP_plus_uconst 0xa2]
	.dwattr $C$DW$756, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$757	.dwtag  DW_TAG_member
	.dwattr $C$DW$757, DW_AT_type(*$C$DW$T$134)
	.dwattr $C$DW$757, DW_AT_name("rsvd11")
	.dwattr $C$DW$757, DW_AT_TI_symbol_name("_rsvd11")
	.dwattr $C$DW$757, DW_AT_data_member_location[DW_OP_plus_uconst 0xa4]
	.dwattr $C$DW$757, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$758	.dwtag  DW_TAG_member
	.dwattr $C$DW$758, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$758, DW_AT_name("CPUSEL0")
	.dwattr $C$DW$758, DW_AT_TI_symbol_name("_CPUSEL0")
	.dwattr $C$DW$758, DW_AT_data_member_location[DW_OP_plus_uconst 0xd6]
	.dwattr $C$DW$758, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$759	.dwtag  DW_TAG_member
	.dwattr $C$DW$759, DW_AT_type(*$C$DW$T$65)
	.dwattr $C$DW$759, DW_AT_name("CPUSEL1")
	.dwattr $C$DW$759, DW_AT_TI_symbol_name("_CPUSEL1")
	.dwattr $C$DW$759, DW_AT_data_member_location[DW_OP_plus_uconst 0xd8]
	.dwattr $C$DW$759, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$760	.dwtag  DW_TAG_member
	.dwattr $C$DW$760, DW_AT_type(*$C$DW$T$67)
	.dwattr $C$DW$760, DW_AT_name("CPUSEL2")
	.dwattr $C$DW$760, DW_AT_TI_symbol_name("_CPUSEL2")
	.dwattr $C$DW$760, DW_AT_data_member_location[DW_OP_plus_uconst 0xda]
	.dwattr $C$DW$760, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$761	.dwtag  DW_TAG_member
	.dwattr $C$DW$761, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$761, DW_AT_name("rsvd12")
	.dwattr $C$DW$761, DW_AT_TI_symbol_name("_rsvd12")
	.dwattr $C$DW$761, DW_AT_data_member_location[DW_OP_plus_uconst 0xdc]
	.dwattr $C$DW$761, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$762	.dwtag  DW_TAG_member
	.dwattr $C$DW$762, DW_AT_type(*$C$DW$T$69)
	.dwattr $C$DW$762, DW_AT_name("CPUSEL4")
	.dwattr $C$DW$762, DW_AT_TI_symbol_name("_CPUSEL4")
	.dwattr $C$DW$762, DW_AT_data_member_location[DW_OP_plus_uconst 0xde]
	.dwattr $C$DW$762, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$763	.dwtag  DW_TAG_member
	.dwattr $C$DW$763, DW_AT_type(*$C$DW$T$71)
	.dwattr $C$DW$763, DW_AT_name("CPUSEL5")
	.dwattr $C$DW$763, DW_AT_TI_symbol_name("_CPUSEL5")
	.dwattr $C$DW$763, DW_AT_data_member_location[DW_OP_plus_uconst 0xe0]
	.dwattr $C$DW$763, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$764	.dwtag  DW_TAG_member
	.dwattr $C$DW$764, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$764, DW_AT_name("CPUSEL6")
	.dwattr $C$DW$764, DW_AT_TI_symbol_name("_CPUSEL6")
	.dwattr $C$DW$764, DW_AT_data_member_location[DW_OP_plus_uconst 0xe2]
	.dwattr $C$DW$764, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$765	.dwtag  DW_TAG_member
	.dwattr $C$DW$765, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$765, DW_AT_name("CPUSEL7")
	.dwattr $C$DW$765, DW_AT_TI_symbol_name("_CPUSEL7")
	.dwattr $C$DW$765, DW_AT_data_member_location[DW_OP_plus_uconst 0xe4]
	.dwattr $C$DW$765, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$766	.dwtag  DW_TAG_member
	.dwattr $C$DW$766, DW_AT_type(*$C$DW$T$77)
	.dwattr $C$DW$766, DW_AT_name("CPUSEL8")
	.dwattr $C$DW$766, DW_AT_TI_symbol_name("_CPUSEL8")
	.dwattr $C$DW$766, DW_AT_data_member_location[DW_OP_plus_uconst 0xe6]
	.dwattr $C$DW$766, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$767	.dwtag  DW_TAG_member
	.dwattr $C$DW$767, DW_AT_type(*$C$DW$T$79)
	.dwattr $C$DW$767, DW_AT_name("CPUSEL9")
	.dwattr $C$DW$767, DW_AT_TI_symbol_name("_CPUSEL9")
	.dwattr $C$DW$767, DW_AT_data_member_location[DW_OP_plus_uconst 0xe8]
	.dwattr $C$DW$767, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$768	.dwtag  DW_TAG_member
	.dwattr $C$DW$768, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$768, DW_AT_name("rsvd13")
	.dwattr $C$DW$768, DW_AT_TI_symbol_name("_rsvd13")
	.dwattr $C$DW$768, DW_AT_data_member_location[DW_OP_plus_uconst 0xea]
	.dwattr $C$DW$768, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$769	.dwtag  DW_TAG_member
	.dwattr $C$DW$769, DW_AT_type(*$C$DW$T$59)
	.dwattr $C$DW$769, DW_AT_name("CPUSEL11")
	.dwattr $C$DW$769, DW_AT_TI_symbol_name("_CPUSEL11")
	.dwattr $C$DW$769, DW_AT_data_member_location[DW_OP_plus_uconst 0xec]
	.dwattr $C$DW$769, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$770	.dwtag  DW_TAG_member
	.dwattr $C$DW$770, DW_AT_type(*$C$DW$T$61)
	.dwattr $C$DW$770, DW_AT_name("CPUSEL12")
	.dwattr $C$DW$770, DW_AT_TI_symbol_name("_CPUSEL12")
	.dwattr $C$DW$770, DW_AT_data_member_location[DW_OP_plus_uconst 0xee]
	.dwattr $C$DW$770, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$771	.dwtag  DW_TAG_member
	.dwattr $C$DW$771, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$771, DW_AT_name("rsvd14")
	.dwattr $C$DW$771, DW_AT_TI_symbol_name("_rsvd14")
	.dwattr $C$DW$771, DW_AT_data_member_location[DW_OP_plus_uconst 0xf0]
	.dwattr $C$DW$771, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$772	.dwtag  DW_TAG_member
	.dwattr $C$DW$772, DW_AT_type(*$C$DW$T$63)
	.dwattr $C$DW$772, DW_AT_name("CPUSEL14")
	.dwattr $C$DW$772, DW_AT_TI_symbol_name("_CPUSEL14")
	.dwattr $C$DW$772, DW_AT_data_member_location[DW_OP_plus_uconst 0xf2]
	.dwattr $C$DW$772, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$773	.dwtag  DW_TAG_member
	.dwattr $C$DW$773, DW_AT_type(*$C$DW$T$135)
	.dwattr $C$DW$773, DW_AT_name("rsvd15")
	.dwattr $C$DW$773, DW_AT_TI_symbol_name("_rsvd15")
	.dwattr $C$DW$773, DW_AT_data_member_location[DW_OP_plus_uconst 0xf4]
	.dwattr $C$DW$773, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$774	.dwtag  DW_TAG_member
	.dwattr $C$DW$774, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$774, DW_AT_name("CPU2RESCTL")
	.dwattr $C$DW$774, DW_AT_TI_symbol_name("_CPU2RESCTL")
	.dwattr $C$DW$774, DW_AT_data_member_location[DW_OP_plus_uconst 0x122]
	.dwattr $C$DW$774, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$775	.dwtag  DW_TAG_member
	.dwattr $C$DW$775, DW_AT_type(*$C$DW$T$249)
	.dwattr $C$DW$775, DW_AT_name("RSTSTAT")
	.dwattr $C$DW$775, DW_AT_TI_symbol_name("_RSTSTAT")
	.dwattr $C$DW$775, DW_AT_data_member_location[DW_OP_plus_uconst 0x124]
	.dwattr $C$DW$775, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$776	.dwtag  DW_TAG_member
	.dwattr $C$DW$776, DW_AT_type(*$C$DW$T$199)
	.dwattr $C$DW$776, DW_AT_name("LPMSTAT")
	.dwattr $C$DW$776, DW_AT_TI_symbol_name("_LPMSTAT")
	.dwattr $C$DW$776, DW_AT_data_member_location[DW_OP_plus_uconst 0x125]
	.dwattr $C$DW$776, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$777	.dwtag  DW_TAG_member
	.dwattr $C$DW$777, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$777, DW_AT_name("rsvd16")
	.dwattr $C$DW$777, DW_AT_TI_symbol_name("_rsvd16")
	.dwattr $C$DW$777, DW_AT_data_member_location[DW_OP_plus_uconst 0x126]
	.dwattr $C$DW$777, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$778	.dwtag  DW_TAG_member
	.dwattr $C$DW$778, DW_AT_type(*$C$DW$T$283)
	.dwattr $C$DW$778, DW_AT_name("SYSDBGCTL")
	.dwattr $C$DW$778, DW_AT_TI_symbol_name("_SYSDBGCTL")
	.dwattr $C$DW$778, DW_AT_data_member_location[DW_OP_plus_uconst 0x12c]
	.dwattr $C$DW$778, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$136

$C$DW$779	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$779, DW_AT_type(*$C$DW$T$136)

$C$DW$T$371	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$371, DW_AT_type(*$C$DW$779)


$C$DW$T$137	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$137, DW_AT_name("ECC_ENABLE_BITS")
	.dwattr $C$DW$T$137, DW_AT_byte_size(0x02)
$C$DW$780	.dwtag  DW_TAG_member
	.dwattr $C$DW$780, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$780, DW_AT_name("ENABLE")
	.dwattr $C$DW$780, DW_AT_TI_symbol_name("_ENABLE")
	.dwattr $C$DW$780, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$780, DW_AT_bit_size(0x04)
	.dwattr $C$DW$780, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$780, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$781	.dwtag  DW_TAG_member
	.dwattr $C$DW$781, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$781, DW_AT_name("rsvd1")
	.dwattr $C$DW$781, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$781, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$781, DW_AT_bit_size(0x0c)
	.dwattr $C$DW$781, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$781, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$782	.dwtag  DW_TAG_member
	.dwattr $C$DW$782, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$782, DW_AT_name("rsvd2")
	.dwattr $C$DW$782, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$782, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$782, DW_AT_bit_size(0x10)
	.dwattr $C$DW$782, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$782, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$137


$C$DW$T$138	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$138, DW_AT_name("ECC_ENABLE_REG")
	.dwattr $C$DW$T$138, DW_AT_byte_size(0x02)
$C$DW$783	.dwtag  DW_TAG_member
	.dwattr $C$DW$783, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$783, DW_AT_name("all")
	.dwattr $C$DW$783, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$783, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$783, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$784	.dwtag  DW_TAG_member
	.dwattr $C$DW$784, DW_AT_type(*$C$DW$T$137)
	.dwattr $C$DW$784, DW_AT_name("bit")
	.dwattr $C$DW$784, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$784, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$784, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$138


$C$DW$T$139	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$139, DW_AT_name("ERR_CNT_BITS")
	.dwattr $C$DW$T$139, DW_AT_byte_size(0x02)
$C$DW$785	.dwtag  DW_TAG_member
	.dwattr $C$DW$785, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$785, DW_AT_name("ERR_CNT")
	.dwattr $C$DW$785, DW_AT_TI_symbol_name("_ERR_CNT")
	.dwattr $C$DW$785, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$785, DW_AT_bit_size(0x10)
	.dwattr $C$DW$785, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$785, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$786	.dwtag  DW_TAG_member
	.dwattr $C$DW$786, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$786, DW_AT_name("rsvd1")
	.dwattr $C$DW$786, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$786, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$786, DW_AT_bit_size(0x10)
	.dwattr $C$DW$786, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$786, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$139


$C$DW$T$140	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$140, DW_AT_name("ERR_CNT_REG")
	.dwattr $C$DW$T$140, DW_AT_byte_size(0x02)
$C$DW$787	.dwtag  DW_TAG_member
	.dwattr $C$DW$787, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$787, DW_AT_name("all")
	.dwattr $C$DW$787, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$787, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$787, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$788	.dwtag  DW_TAG_member
	.dwattr $C$DW$788, DW_AT_type(*$C$DW$T$139)
	.dwattr $C$DW$788, DW_AT_name("bit")
	.dwattr $C$DW$788, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$788, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$788, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$140


$C$DW$T$141	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$141, DW_AT_name("ERR_INTCLR_BITS")
	.dwattr $C$DW$T$141, DW_AT_byte_size(0x02)
$C$DW$789	.dwtag  DW_TAG_member
	.dwattr $C$DW$789, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$789, DW_AT_name("SINGLE_ERR_INTCLR")
	.dwattr $C$DW$789, DW_AT_TI_symbol_name("_SINGLE_ERR_INTCLR")
	.dwattr $C$DW$789, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$789, DW_AT_bit_size(0x01)
	.dwattr $C$DW$789, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$789, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$790	.dwtag  DW_TAG_member
	.dwattr $C$DW$790, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$790, DW_AT_name("UNC_ERR_INTCLR")
	.dwattr $C$DW$790, DW_AT_TI_symbol_name("_UNC_ERR_INTCLR")
	.dwattr $C$DW$790, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$790, DW_AT_bit_size(0x01)
	.dwattr $C$DW$790, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$790, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$791	.dwtag  DW_TAG_member
	.dwattr $C$DW$791, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$791, DW_AT_name("rsvd1")
	.dwattr $C$DW$791, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$791, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$791, DW_AT_bit_size(0x0e)
	.dwattr $C$DW$791, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$791, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$792	.dwtag  DW_TAG_member
	.dwattr $C$DW$792, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$792, DW_AT_name("rsvd2")
	.dwattr $C$DW$792, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$792, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$792, DW_AT_bit_size(0x10)
	.dwattr $C$DW$792, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$792, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$141


$C$DW$T$142	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$142, DW_AT_name("ERR_INTCLR_REG")
	.dwattr $C$DW$T$142, DW_AT_byte_size(0x02)
$C$DW$793	.dwtag  DW_TAG_member
	.dwattr $C$DW$793, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$793, DW_AT_name("all")
	.dwattr $C$DW$793, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$793, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$793, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$794	.dwtag  DW_TAG_member
	.dwattr $C$DW$794, DW_AT_type(*$C$DW$T$141)
	.dwattr $C$DW$794, DW_AT_name("bit")
	.dwattr $C$DW$794, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$794, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$794, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$142


$C$DW$T$143	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$143, DW_AT_name("ERR_INTFLG_BITS")
	.dwattr $C$DW$T$143, DW_AT_byte_size(0x02)
$C$DW$795	.dwtag  DW_TAG_member
	.dwattr $C$DW$795, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$795, DW_AT_name("SINGLE_ERR_INTFLG")
	.dwattr $C$DW$795, DW_AT_TI_symbol_name("_SINGLE_ERR_INTFLG")
	.dwattr $C$DW$795, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$795, DW_AT_bit_size(0x01)
	.dwattr $C$DW$795, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$795, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$796	.dwtag  DW_TAG_member
	.dwattr $C$DW$796, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$796, DW_AT_name("UNC_ERR_INTFLG")
	.dwattr $C$DW$796, DW_AT_TI_symbol_name("_UNC_ERR_INTFLG")
	.dwattr $C$DW$796, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$796, DW_AT_bit_size(0x01)
	.dwattr $C$DW$796, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$796, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$797	.dwtag  DW_TAG_member
	.dwattr $C$DW$797, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$797, DW_AT_name("rsvd1")
	.dwattr $C$DW$797, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$797, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$797, DW_AT_bit_size(0x0e)
	.dwattr $C$DW$797, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$797, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$798	.dwtag  DW_TAG_member
	.dwattr $C$DW$798, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$798, DW_AT_name("rsvd2")
	.dwattr $C$DW$798, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$798, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$798, DW_AT_bit_size(0x10)
	.dwattr $C$DW$798, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$798, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$143


$C$DW$T$144	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$144, DW_AT_name("ERR_INTFLG_REG")
	.dwattr $C$DW$T$144, DW_AT_byte_size(0x02)
$C$DW$799	.dwtag  DW_TAG_member
	.dwattr $C$DW$799, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$799, DW_AT_name("all")
	.dwattr $C$DW$799, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$799, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$799, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$800	.dwtag  DW_TAG_member
	.dwattr $C$DW$800, DW_AT_type(*$C$DW$T$143)
	.dwattr $C$DW$800, DW_AT_name("bit")
	.dwattr $C$DW$800, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$800, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$800, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$144


$C$DW$T$145	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$145, DW_AT_name("ERR_POS_BITS")
	.dwattr $C$DW$T$145, DW_AT_byte_size(0x02)
$C$DW$801	.dwtag  DW_TAG_member
	.dwattr $C$DW$801, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$801, DW_AT_name("ERR_POS_L")
	.dwattr $C$DW$801, DW_AT_TI_symbol_name("_ERR_POS_L")
	.dwattr $C$DW$801, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$801, DW_AT_bit_size(0x06)
	.dwattr $C$DW$801, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$801, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$802	.dwtag  DW_TAG_member
	.dwattr $C$DW$802, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$802, DW_AT_name("rsvd1")
	.dwattr $C$DW$802, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$802, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$802, DW_AT_bit_size(0x02)
	.dwattr $C$DW$802, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$802, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$803	.dwtag  DW_TAG_member
	.dwattr $C$DW$803, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$803, DW_AT_name("ERR_TYPE_L")
	.dwattr $C$DW$803, DW_AT_TI_symbol_name("_ERR_TYPE_L")
	.dwattr $C$DW$803, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$803, DW_AT_bit_size(0x01)
	.dwattr $C$DW$803, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$803, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$804	.dwtag  DW_TAG_member
	.dwattr $C$DW$804, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$804, DW_AT_name("rsvd2")
	.dwattr $C$DW$804, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$804, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$804, DW_AT_bit_size(0x07)
	.dwattr $C$DW$804, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$804, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$805	.dwtag  DW_TAG_member
	.dwattr $C$DW$805, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$805, DW_AT_name("ERR_POS_H")
	.dwattr $C$DW$805, DW_AT_TI_symbol_name("_ERR_POS_H")
	.dwattr $C$DW$805, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$805, DW_AT_bit_size(0x06)
	.dwattr $C$DW$805, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$805, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$806	.dwtag  DW_TAG_member
	.dwattr $C$DW$806, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$806, DW_AT_name("rsvd3")
	.dwattr $C$DW$806, DW_AT_TI_symbol_name("_rsvd3")
	.dwattr $C$DW$806, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$806, DW_AT_bit_size(0x02)
	.dwattr $C$DW$806, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$806, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$807	.dwtag  DW_TAG_member
	.dwattr $C$DW$807, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$807, DW_AT_name("ERR_TYPE_H")
	.dwattr $C$DW$807, DW_AT_TI_symbol_name("_ERR_TYPE_H")
	.dwattr $C$DW$807, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$807, DW_AT_bit_size(0x01)
	.dwattr $C$DW$807, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$807, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$808	.dwtag  DW_TAG_member
	.dwattr $C$DW$808, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$808, DW_AT_name("rsvd4")
	.dwattr $C$DW$808, DW_AT_TI_symbol_name("_rsvd4")
	.dwattr $C$DW$808, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$808, DW_AT_bit_size(0x07)
	.dwattr $C$DW$808, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$808, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$145


$C$DW$T$146	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$146, DW_AT_name("ERR_POS_REG")
	.dwattr $C$DW$T$146, DW_AT_byte_size(0x02)
$C$DW$809	.dwtag  DW_TAG_member
	.dwattr $C$DW$809, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$809, DW_AT_name("all")
	.dwattr $C$DW$809, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$809, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$809, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$810	.dwtag  DW_TAG_member
	.dwattr $C$DW$810, DW_AT_type(*$C$DW$T$145)
	.dwattr $C$DW$810, DW_AT_name("bit")
	.dwattr $C$DW$810, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$810, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$810, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$146


$C$DW$T$147	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$147, DW_AT_name("ERR_STATUS_BITS")
	.dwattr $C$DW$T$147, DW_AT_byte_size(0x02)
$C$DW$811	.dwtag  DW_TAG_member
	.dwattr $C$DW$811, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$811, DW_AT_name("FAIL_0_L")
	.dwattr $C$DW$811, DW_AT_TI_symbol_name("_FAIL_0_L")
	.dwattr $C$DW$811, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$811, DW_AT_bit_size(0x01)
	.dwattr $C$DW$811, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$811, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$812	.dwtag  DW_TAG_member
	.dwattr $C$DW$812, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$812, DW_AT_name("FAIL_1_L")
	.dwattr $C$DW$812, DW_AT_TI_symbol_name("_FAIL_1_L")
	.dwattr $C$DW$812, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$812, DW_AT_bit_size(0x01)
	.dwattr $C$DW$812, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$812, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$813	.dwtag  DW_TAG_member
	.dwattr $C$DW$813, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$813, DW_AT_name("UNC_ERR_L")
	.dwattr $C$DW$813, DW_AT_TI_symbol_name("_UNC_ERR_L")
	.dwattr $C$DW$813, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$813, DW_AT_bit_size(0x01)
	.dwattr $C$DW$813, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$813, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$814	.dwtag  DW_TAG_member
	.dwattr $C$DW$814, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$814, DW_AT_name("rsvd1")
	.dwattr $C$DW$814, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$814, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$814, DW_AT_bit_size(0x0d)
	.dwattr $C$DW$814, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$814, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$815	.dwtag  DW_TAG_member
	.dwattr $C$DW$815, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$815, DW_AT_name("FAIL_0_H")
	.dwattr $C$DW$815, DW_AT_TI_symbol_name("_FAIL_0_H")
	.dwattr $C$DW$815, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$815, DW_AT_bit_size(0x01)
	.dwattr $C$DW$815, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$815, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$816	.dwtag  DW_TAG_member
	.dwattr $C$DW$816, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$816, DW_AT_name("FAIL_1_H")
	.dwattr $C$DW$816, DW_AT_TI_symbol_name("_FAIL_1_H")
	.dwattr $C$DW$816, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$816, DW_AT_bit_size(0x01)
	.dwattr $C$DW$816, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$816, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$817	.dwtag  DW_TAG_member
	.dwattr $C$DW$817, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$817, DW_AT_name("UNC_ERR_H")
	.dwattr $C$DW$817, DW_AT_TI_symbol_name("_UNC_ERR_H")
	.dwattr $C$DW$817, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$817, DW_AT_bit_size(0x01)
	.dwattr $C$DW$817, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$817, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$818	.dwtag  DW_TAG_member
	.dwattr $C$DW$818, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$818, DW_AT_name("rsvd2")
	.dwattr $C$DW$818, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$818, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$818, DW_AT_bit_size(0x0d)
	.dwattr $C$DW$818, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$818, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$147


$C$DW$T$148	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$148, DW_AT_name("ERR_STATUS_CLR_BITS")
	.dwattr $C$DW$T$148, DW_AT_byte_size(0x02)
$C$DW$819	.dwtag  DW_TAG_member
	.dwattr $C$DW$819, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$819, DW_AT_name("FAIL_0_L_CLR")
	.dwattr $C$DW$819, DW_AT_TI_symbol_name("_FAIL_0_L_CLR")
	.dwattr $C$DW$819, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$819, DW_AT_bit_size(0x01)
	.dwattr $C$DW$819, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$819, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$820	.dwtag  DW_TAG_member
	.dwattr $C$DW$820, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$820, DW_AT_name("FAIL_1_L_CLR")
	.dwattr $C$DW$820, DW_AT_TI_symbol_name("_FAIL_1_L_CLR")
	.dwattr $C$DW$820, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$820, DW_AT_bit_size(0x01)
	.dwattr $C$DW$820, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$820, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$821	.dwtag  DW_TAG_member
	.dwattr $C$DW$821, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$821, DW_AT_name("UNC_ERR_L_CLR")
	.dwattr $C$DW$821, DW_AT_TI_symbol_name("_UNC_ERR_L_CLR")
	.dwattr $C$DW$821, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$821, DW_AT_bit_size(0x01)
	.dwattr $C$DW$821, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$821, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$822	.dwtag  DW_TAG_member
	.dwattr $C$DW$822, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$822, DW_AT_name("rsvd1")
	.dwattr $C$DW$822, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$822, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$822, DW_AT_bit_size(0x0d)
	.dwattr $C$DW$822, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$822, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$823	.dwtag  DW_TAG_member
	.dwattr $C$DW$823, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$823, DW_AT_name("FAIL_0_H_CLR")
	.dwattr $C$DW$823, DW_AT_TI_symbol_name("_FAIL_0_H_CLR")
	.dwattr $C$DW$823, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$823, DW_AT_bit_size(0x01)
	.dwattr $C$DW$823, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$823, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$824	.dwtag  DW_TAG_member
	.dwattr $C$DW$824, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$824, DW_AT_name("FAIL_1_H_CLR")
	.dwattr $C$DW$824, DW_AT_TI_symbol_name("_FAIL_1_H_CLR")
	.dwattr $C$DW$824, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$824, DW_AT_bit_size(0x01)
	.dwattr $C$DW$824, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$824, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$825	.dwtag  DW_TAG_member
	.dwattr $C$DW$825, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$825, DW_AT_name("UNC_ERR_H_CLR")
	.dwattr $C$DW$825, DW_AT_TI_symbol_name("_UNC_ERR_H_CLR")
	.dwattr $C$DW$825, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$825, DW_AT_bit_size(0x01)
	.dwattr $C$DW$825, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$825, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$826	.dwtag  DW_TAG_member
	.dwattr $C$DW$826, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$826, DW_AT_name("rsvd2")
	.dwattr $C$DW$826, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$826, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$826, DW_AT_bit_size(0x0d)
	.dwattr $C$DW$826, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$826, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$148


$C$DW$T$149	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$149, DW_AT_name("ERR_STATUS_CLR_REG")
	.dwattr $C$DW$T$149, DW_AT_byte_size(0x02)
$C$DW$827	.dwtag  DW_TAG_member
	.dwattr $C$DW$827, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$827, DW_AT_name("all")
	.dwattr $C$DW$827, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$827, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$827, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$828	.dwtag  DW_TAG_member
	.dwattr $C$DW$828, DW_AT_type(*$C$DW$T$148)
	.dwattr $C$DW$828, DW_AT_name("bit")
	.dwattr $C$DW$828, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$828, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$828, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$149


$C$DW$T$150	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$150, DW_AT_name("ERR_STATUS_REG")
	.dwattr $C$DW$T$150, DW_AT_byte_size(0x02)
$C$DW$829	.dwtag  DW_TAG_member
	.dwattr $C$DW$829, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$829, DW_AT_name("all")
	.dwattr $C$DW$829, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$829, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$829, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$830	.dwtag  DW_TAG_member
	.dwattr $C$DW$830, DW_AT_type(*$C$DW$T$147)
	.dwattr $C$DW$830, DW_AT_name("bit")
	.dwattr $C$DW$830, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$830, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$830, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$150


$C$DW$T$151	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$151, DW_AT_name("ERR_THRESHOLD_BITS")
	.dwattr $C$DW$T$151, DW_AT_byte_size(0x02)
$C$DW$831	.dwtag  DW_TAG_member
	.dwattr $C$DW$831, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$831, DW_AT_name("ERR_THRESHOLD")
	.dwattr $C$DW$831, DW_AT_TI_symbol_name("_ERR_THRESHOLD")
	.dwattr $C$DW$831, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$831, DW_AT_bit_size(0x10)
	.dwattr $C$DW$831, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$831, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$832	.dwtag  DW_TAG_member
	.dwattr $C$DW$832, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$832, DW_AT_name("rsvd1")
	.dwattr $C$DW$832, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$832, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$832, DW_AT_bit_size(0x10)
	.dwattr $C$DW$832, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$832, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$151


$C$DW$T$152	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$152, DW_AT_name("ERR_THRESHOLD_REG")
	.dwattr $C$DW$T$152, DW_AT_byte_size(0x02)
$C$DW$833	.dwtag  DW_TAG_member
	.dwattr $C$DW$833, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$833, DW_AT_name("all")
	.dwattr $C$DW$833, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$833, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$833, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$834	.dwtag  DW_TAG_member
	.dwattr $C$DW$834, DW_AT_type(*$C$DW$T$151)
	.dwattr $C$DW$834, DW_AT_name("bit")
	.dwattr $C$DW$834, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$834, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$834, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$152


$C$DW$T$153	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$153, DW_AT_name("FADDR_TEST_BITS")
	.dwattr $C$DW$T$153, DW_AT_byte_size(0x02)
$C$DW$835	.dwtag  DW_TAG_member
	.dwattr $C$DW$835, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$835, DW_AT_name("rsvd1")
	.dwattr $C$DW$835, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$835, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$835, DW_AT_bit_size(0x03)
	.dwattr $C$DW$835, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$835, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$836	.dwtag  DW_TAG_member
	.dwattr $C$DW$836, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$836, DW_AT_name("ADDRL")
	.dwattr $C$DW$836, DW_AT_TI_symbol_name("_ADDRL")
	.dwattr $C$DW$836, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$836, DW_AT_bit_size(0x0d)
	.dwattr $C$DW$836, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$836, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$837	.dwtag  DW_TAG_member
	.dwattr $C$DW$837, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$837, DW_AT_name("ADDRH")
	.dwattr $C$DW$837, DW_AT_TI_symbol_name("_ADDRH")
	.dwattr $C$DW$837, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$837, DW_AT_bit_size(0x06)
	.dwattr $C$DW$837, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$837, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$838	.dwtag  DW_TAG_member
	.dwattr $C$DW$838, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$838, DW_AT_name("rsvd2")
	.dwattr $C$DW$838, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$838, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$838, DW_AT_bit_size(0x0a)
	.dwattr $C$DW$838, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$838, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$153


$C$DW$T$154	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$154, DW_AT_name("FADDR_TEST_REG")
	.dwattr $C$DW$T$154, DW_AT_byte_size(0x02)
$C$DW$839	.dwtag  DW_TAG_member
	.dwattr $C$DW$839, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$839, DW_AT_name("all")
	.dwattr $C$DW$839, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$839, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$839, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$840	.dwtag  DW_TAG_member
	.dwattr $C$DW$840, DW_AT_type(*$C$DW$T$153)
	.dwattr $C$DW$840, DW_AT_name("bit")
	.dwattr $C$DW$840, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$840, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$840, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$154


$C$DW$T$155	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$155, DW_AT_name("FBAC_BITS")
	.dwattr $C$DW$T$155, DW_AT_byte_size(0x02)
$C$DW$841	.dwtag  DW_TAG_member
	.dwattr $C$DW$841, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$841, DW_AT_name("VREADST")
	.dwattr $C$DW$841, DW_AT_TI_symbol_name("_VREADST")
	.dwattr $C$DW$841, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$841, DW_AT_bit_size(0x08)
	.dwattr $C$DW$841, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$841, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$842	.dwtag  DW_TAG_member
	.dwattr $C$DW$842, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$842, DW_AT_name("rsvd1")
	.dwattr $C$DW$842, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$842, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$842, DW_AT_bit_size(0x08)
	.dwattr $C$DW$842, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$842, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$843	.dwtag  DW_TAG_member
	.dwattr $C$DW$843, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$843, DW_AT_name("rsvd2")
	.dwattr $C$DW$843, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$843, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$843, DW_AT_bit_size(0x10)
	.dwattr $C$DW$843, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$843, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$155


$C$DW$T$156	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$156, DW_AT_name("FBAC_REG")
	.dwattr $C$DW$T$156, DW_AT_byte_size(0x02)
$C$DW$844	.dwtag  DW_TAG_member
	.dwattr $C$DW$844, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$844, DW_AT_name("all")
	.dwattr $C$DW$844, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$844, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$844, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$845	.dwtag  DW_TAG_member
	.dwattr $C$DW$845, DW_AT_type(*$C$DW$T$155)
	.dwattr $C$DW$845, DW_AT_name("bit")
	.dwattr $C$DW$845, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$845, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$845, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$156


$C$DW$T$157	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$157, DW_AT_name("FBFALLBACK_BITS")
	.dwattr $C$DW$T$157, DW_AT_byte_size(0x02)
$C$DW$846	.dwtag  DW_TAG_member
	.dwattr $C$DW$846, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$846, DW_AT_name("BNKPWR0")
	.dwattr $C$DW$846, DW_AT_TI_symbol_name("_BNKPWR0")
	.dwattr $C$DW$846, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$846, DW_AT_bit_size(0x02)
	.dwattr $C$DW$846, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$846, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$847	.dwtag  DW_TAG_member
	.dwattr $C$DW$847, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$847, DW_AT_name("rsvd1")
	.dwattr $C$DW$847, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$847, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$847, DW_AT_bit_size(0x0e)
	.dwattr $C$DW$847, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$847, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$848	.dwtag  DW_TAG_member
	.dwattr $C$DW$848, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$848, DW_AT_name("rsvd2")
	.dwattr $C$DW$848, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$848, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$848, DW_AT_bit_size(0x10)
	.dwattr $C$DW$848, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$848, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$157


$C$DW$T$158	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$158, DW_AT_name("FBFALLBACK_REG")
	.dwattr $C$DW$T$158, DW_AT_byte_size(0x02)
$C$DW$849	.dwtag  DW_TAG_member
	.dwattr $C$DW$849, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$849, DW_AT_name("all")
	.dwattr $C$DW$849, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$849, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$849, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$850	.dwtag  DW_TAG_member
	.dwattr $C$DW$850, DW_AT_type(*$C$DW$T$157)
	.dwattr $C$DW$850, DW_AT_name("bit")
	.dwattr $C$DW$850, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$850, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$850, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$158


$C$DW$T$159	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$159, DW_AT_name("FBPRDY_BITS")
	.dwattr $C$DW$T$159, DW_AT_byte_size(0x02)
$C$DW$851	.dwtag  DW_TAG_member
	.dwattr $C$DW$851, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$851, DW_AT_name("BANKRDY")
	.dwattr $C$DW$851, DW_AT_TI_symbol_name("_BANKRDY")
	.dwattr $C$DW$851, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$851, DW_AT_bit_size(0x01)
	.dwattr $C$DW$851, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$851, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$852	.dwtag  DW_TAG_member
	.dwattr $C$DW$852, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$852, DW_AT_name("rsvd1")
	.dwattr $C$DW$852, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$852, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$852, DW_AT_bit_size(0x0e)
	.dwattr $C$DW$852, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$852, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$853	.dwtag  DW_TAG_member
	.dwattr $C$DW$853, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$853, DW_AT_name("PUMPRDY")
	.dwattr $C$DW$853, DW_AT_TI_symbol_name("_PUMPRDY")
	.dwattr $C$DW$853, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$853, DW_AT_bit_size(0x01)
	.dwattr $C$DW$853, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$853, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$854	.dwtag  DW_TAG_member
	.dwattr $C$DW$854, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$854, DW_AT_name("rsvd2")
	.dwattr $C$DW$854, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$854, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$854, DW_AT_bit_size(0x10)
	.dwattr $C$DW$854, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$854, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$159


$C$DW$T$160	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$160, DW_AT_name("FBPRDY_REG")
	.dwattr $C$DW$T$160, DW_AT_byte_size(0x02)
$C$DW$855	.dwtag  DW_TAG_member
	.dwattr $C$DW$855, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$855, DW_AT_name("all")
	.dwattr $C$DW$855, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$855, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$855, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$856	.dwtag  DW_TAG_member
	.dwattr $C$DW$856, DW_AT_type(*$C$DW$T$159)
	.dwattr $C$DW$856, DW_AT_name("bit")
	.dwattr $C$DW$856, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$856, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$856, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$160


$C$DW$T$161	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$161, DW_AT_name("FECC_CTRL_BITS")
	.dwattr $C$DW$T$161, DW_AT_byte_size(0x02)
$C$DW$857	.dwtag  DW_TAG_member
	.dwattr $C$DW$857, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$857, DW_AT_name("ECC_TEST_EN")
	.dwattr $C$DW$857, DW_AT_TI_symbol_name("_ECC_TEST_EN")
	.dwattr $C$DW$857, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$857, DW_AT_bit_size(0x01)
	.dwattr $C$DW$857, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$857, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$858	.dwtag  DW_TAG_member
	.dwattr $C$DW$858, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$858, DW_AT_name("ECC_SELECT")
	.dwattr $C$DW$858, DW_AT_TI_symbol_name("_ECC_SELECT")
	.dwattr $C$DW$858, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$858, DW_AT_bit_size(0x01)
	.dwattr $C$DW$858, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$858, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$859	.dwtag  DW_TAG_member
	.dwattr $C$DW$859, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$859, DW_AT_name("DO_ECC_CALC")
	.dwattr $C$DW$859, DW_AT_TI_symbol_name("_DO_ECC_CALC")
	.dwattr $C$DW$859, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$859, DW_AT_bit_size(0x01)
	.dwattr $C$DW$859, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$859, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$860	.dwtag  DW_TAG_member
	.dwattr $C$DW$860, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$860, DW_AT_name("rsvd1")
	.dwattr $C$DW$860, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$860, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$860, DW_AT_bit_size(0x0d)
	.dwattr $C$DW$860, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$860, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$861	.dwtag  DW_TAG_member
	.dwattr $C$DW$861, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$861, DW_AT_name("rsvd2")
	.dwattr $C$DW$861, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$861, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$861, DW_AT_bit_size(0x10)
	.dwattr $C$DW$861, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$861, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$161


$C$DW$T$162	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$162, DW_AT_name("FECC_CTRL_REG")
	.dwattr $C$DW$T$162, DW_AT_byte_size(0x02)
$C$DW$862	.dwtag  DW_TAG_member
	.dwattr $C$DW$862, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$862, DW_AT_name("all")
	.dwattr $C$DW$862, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$862, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$862, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$863	.dwtag  DW_TAG_member
	.dwattr $C$DW$863, DW_AT_type(*$C$DW$T$161)
	.dwattr $C$DW$863, DW_AT_name("bit")
	.dwattr $C$DW$863, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$863, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$863, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$162


$C$DW$T$163	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$163, DW_AT_name("FECC_STATUS_BITS")
	.dwattr $C$DW$T$163, DW_AT_byte_size(0x02)
$C$DW$864	.dwtag  DW_TAG_member
	.dwattr $C$DW$864, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$864, DW_AT_name("SINGLE_ERR")
	.dwattr $C$DW$864, DW_AT_TI_symbol_name("_SINGLE_ERR")
	.dwattr $C$DW$864, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$864, DW_AT_bit_size(0x01)
	.dwattr $C$DW$864, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$864, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$865	.dwtag  DW_TAG_member
	.dwattr $C$DW$865, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$865, DW_AT_name("UNC_ERR")
	.dwattr $C$DW$865, DW_AT_TI_symbol_name("_UNC_ERR")
	.dwattr $C$DW$865, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$865, DW_AT_bit_size(0x01)
	.dwattr $C$DW$865, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$865, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$866	.dwtag  DW_TAG_member
	.dwattr $C$DW$866, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$866, DW_AT_name("DATA_ERR_POS")
	.dwattr $C$DW$866, DW_AT_TI_symbol_name("_DATA_ERR_POS")
	.dwattr $C$DW$866, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$866, DW_AT_bit_size(0x06)
	.dwattr $C$DW$866, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$866, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$867	.dwtag  DW_TAG_member
	.dwattr $C$DW$867, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$867, DW_AT_name("ERR_TYPE")
	.dwattr $C$DW$867, DW_AT_TI_symbol_name("_ERR_TYPE")
	.dwattr $C$DW$867, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$867, DW_AT_bit_size(0x01)
	.dwattr $C$DW$867, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$867, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$868	.dwtag  DW_TAG_member
	.dwattr $C$DW$868, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$868, DW_AT_name("rsvd1")
	.dwattr $C$DW$868, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$868, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$868, DW_AT_bit_size(0x07)
	.dwattr $C$DW$868, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$868, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$869	.dwtag  DW_TAG_member
	.dwattr $C$DW$869, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$869, DW_AT_name("rsvd2")
	.dwattr $C$DW$869, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$869, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$869, DW_AT_bit_size(0x10)
	.dwattr $C$DW$869, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$869, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$163


$C$DW$T$164	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$164, DW_AT_name("FECC_STATUS_REG")
	.dwattr $C$DW$T$164, DW_AT_byte_size(0x02)
$C$DW$870	.dwtag  DW_TAG_member
	.dwattr $C$DW$870, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$870, DW_AT_name("all")
	.dwattr $C$DW$870, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$870, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$870, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$871	.dwtag  DW_TAG_member
	.dwattr $C$DW$871, DW_AT_type(*$C$DW$T$163)
	.dwattr $C$DW$871, DW_AT_name("bit")
	.dwattr $C$DW$871, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$871, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$871, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$164


$C$DW$T$165	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$165, DW_AT_name("FECC_TEST_BITS")
	.dwattr $C$DW$T$165, DW_AT_byte_size(0x02)
$C$DW$872	.dwtag  DW_TAG_member
	.dwattr $C$DW$872, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$872, DW_AT_name("ECC")
	.dwattr $C$DW$872, DW_AT_TI_symbol_name("_ECC")
	.dwattr $C$DW$872, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$872, DW_AT_bit_size(0x08)
	.dwattr $C$DW$872, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$872, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$873	.dwtag  DW_TAG_member
	.dwattr $C$DW$873, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$873, DW_AT_name("rsvd1")
	.dwattr $C$DW$873, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$873, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$873, DW_AT_bit_size(0x08)
	.dwattr $C$DW$873, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$873, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$874	.dwtag  DW_TAG_member
	.dwattr $C$DW$874, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$874, DW_AT_name("rsvd2")
	.dwattr $C$DW$874, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$874, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$874, DW_AT_bit_size(0x10)
	.dwattr $C$DW$874, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$874, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$165


$C$DW$T$166	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$166, DW_AT_name("FECC_TEST_REG")
	.dwattr $C$DW$T$166, DW_AT_byte_size(0x02)
$C$DW$875	.dwtag  DW_TAG_member
	.dwattr $C$DW$875, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$875, DW_AT_name("all")
	.dwattr $C$DW$875, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$875, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$875, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$876	.dwtag  DW_TAG_member
	.dwattr $C$DW$876, DW_AT_type(*$C$DW$T$165)
	.dwattr $C$DW$876, DW_AT_name("bit")
	.dwattr $C$DW$876, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$876, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$876, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$166


$C$DW$T$169	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$169, DW_AT_name("FLASH_CTRL_REGS")
	.dwattr $C$DW$T$169, DW_AT_byte_size(0x182)
$C$DW$877	.dwtag  DW_TAG_member
	.dwattr $C$DW$877, DW_AT_type(*$C$DW$T$177)
	.dwattr $C$DW$877, DW_AT_name("FRDCNTL")
	.dwattr $C$DW$877, DW_AT_TI_symbol_name("_FRDCNTL")
	.dwattr $C$DW$877, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$877, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$878	.dwtag  DW_TAG_member
	.dwattr $C$DW$878, DW_AT_type(*$C$DW$T$167)
	.dwattr $C$DW$878, DW_AT_name("rsvd1")
	.dwattr $C$DW$878, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$878, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$878, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$879	.dwtag  DW_TAG_member
	.dwattr $C$DW$879, DW_AT_type(*$C$DW$T$156)
	.dwattr $C$DW$879, DW_AT_name("FBAC")
	.dwattr $C$DW$879, DW_AT_TI_symbol_name("_FBAC")
	.dwattr $C$DW$879, DW_AT_data_member_location[DW_OP_plus_uconst 0x1e]
	.dwattr $C$DW$879, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$880	.dwtag  DW_TAG_member
	.dwattr $C$DW$880, DW_AT_type(*$C$DW$T$158)
	.dwattr $C$DW$880, DW_AT_name("FBFALLBACK")
	.dwattr $C$DW$880, DW_AT_TI_symbol_name("_FBFALLBACK")
	.dwattr $C$DW$880, DW_AT_data_member_location[DW_OP_plus_uconst 0x20]
	.dwattr $C$DW$880, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$881	.dwtag  DW_TAG_member
	.dwattr $C$DW$881, DW_AT_type(*$C$DW$T$160)
	.dwattr $C$DW$881, DW_AT_name("FBPRDY")
	.dwattr $C$DW$881, DW_AT_TI_symbol_name("_FBPRDY")
	.dwattr $C$DW$881, DW_AT_data_member_location[DW_OP_plus_uconst 0x22]
	.dwattr $C$DW$881, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$882	.dwtag  DW_TAG_member
	.dwattr $C$DW$882, DW_AT_type(*$C$DW$T$175)
	.dwattr $C$DW$882, DW_AT_name("FPAC1")
	.dwattr $C$DW$882, DW_AT_TI_symbol_name("_FPAC1")
	.dwattr $C$DW$882, DW_AT_data_member_location[DW_OP_plus_uconst 0x24]
	.dwattr $C$DW$882, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$883	.dwtag  DW_TAG_member
	.dwattr $C$DW$883, DW_AT_type(*$C$DW$T$52)
	.dwattr $C$DW$883, DW_AT_name("rsvd2")
	.dwattr $C$DW$883, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$883, DW_AT_data_member_location[DW_OP_plus_uconst 0x26]
	.dwattr $C$DW$883, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$884	.dwtag  DW_TAG_member
	.dwattr $C$DW$884, DW_AT_type(*$C$DW$T$173)
	.dwattr $C$DW$884, DW_AT_name("FMSTAT")
	.dwattr $C$DW$884, DW_AT_TI_symbol_name("_FMSTAT")
	.dwattr $C$DW$884, DW_AT_data_member_location[DW_OP_plus_uconst 0x2a]
	.dwattr $C$DW$884, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$885	.dwtag  DW_TAG_member
	.dwattr $C$DW$885, DW_AT_type(*$C$DW$T$168)
	.dwattr $C$DW$885, DW_AT_name("rsvd3")
	.dwattr $C$DW$885, DW_AT_TI_symbol_name("_rsvd3")
	.dwattr $C$DW$885, DW_AT_data_member_location[DW_OP_plus_uconst 0x2c]
	.dwattr $C$DW$885, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$886	.dwtag  DW_TAG_member
	.dwattr $C$DW$886, DW_AT_type(*$C$DW$T$179)
	.dwattr $C$DW$886, DW_AT_name("FRD_INTF_CTRL")
	.dwattr $C$DW$886, DW_AT_TI_symbol_name("_FRD_INTF_CTRL")
	.dwattr $C$DW$886, DW_AT_data_member_location[DW_OP_plus_uconst 0x180]
	.dwattr $C$DW$886, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$169

$C$DW$887	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$887, DW_AT_type(*$C$DW$T$169)

$C$DW$T$378	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$378, DW_AT_type(*$C$DW$887)


$C$DW$T$170	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$170, DW_AT_name("FLASH_ECC_REGS")
	.dwattr $C$DW$T$170, DW_AT_byte_size(0x28)
$C$DW$888	.dwtag  DW_TAG_member
	.dwattr $C$DW$888, DW_AT_type(*$C$DW$T$138)
	.dwattr $C$DW$888, DW_AT_name("ECC_ENABLE")
	.dwattr $C$DW$888, DW_AT_TI_symbol_name("_ECC_ENABLE")
	.dwattr $C$DW$888, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$888, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$889	.dwtag  DW_TAG_member
	.dwattr $C$DW$889, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$889, DW_AT_name("SINGLE_ERR_ADDR_LOW")
	.dwattr $C$DW$889, DW_AT_TI_symbol_name("_SINGLE_ERR_ADDR_LOW")
	.dwattr $C$DW$889, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$889, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$890	.dwtag  DW_TAG_member
	.dwattr $C$DW$890, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$890, DW_AT_name("SINGLE_ERR_ADDR_HIGH")
	.dwattr $C$DW$890, DW_AT_TI_symbol_name("_SINGLE_ERR_ADDR_HIGH")
	.dwattr $C$DW$890, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$890, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$891	.dwtag  DW_TAG_member
	.dwattr $C$DW$891, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$891, DW_AT_name("UNC_ERR_ADDR_LOW")
	.dwattr $C$DW$891, DW_AT_TI_symbol_name("_UNC_ERR_ADDR_LOW")
	.dwattr $C$DW$891, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$891, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$892	.dwtag  DW_TAG_member
	.dwattr $C$DW$892, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$892, DW_AT_name("UNC_ERR_ADDR_HIGH")
	.dwattr $C$DW$892, DW_AT_TI_symbol_name("_UNC_ERR_ADDR_HIGH")
	.dwattr $C$DW$892, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$892, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$893	.dwtag  DW_TAG_member
	.dwattr $C$DW$893, DW_AT_type(*$C$DW$T$150)
	.dwattr $C$DW$893, DW_AT_name("ERR_STATUS")
	.dwattr $C$DW$893, DW_AT_TI_symbol_name("_ERR_STATUS")
	.dwattr $C$DW$893, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$893, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$894	.dwtag  DW_TAG_member
	.dwattr $C$DW$894, DW_AT_type(*$C$DW$T$146)
	.dwattr $C$DW$894, DW_AT_name("ERR_POS")
	.dwattr $C$DW$894, DW_AT_TI_symbol_name("_ERR_POS")
	.dwattr $C$DW$894, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$894, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$895	.dwtag  DW_TAG_member
	.dwattr $C$DW$895, DW_AT_type(*$C$DW$T$149)
	.dwattr $C$DW$895, DW_AT_name("ERR_STATUS_CLR")
	.dwattr $C$DW$895, DW_AT_TI_symbol_name("_ERR_STATUS_CLR")
	.dwattr $C$DW$895, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$895, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$896	.dwtag  DW_TAG_member
	.dwattr $C$DW$896, DW_AT_type(*$C$DW$T$140)
	.dwattr $C$DW$896, DW_AT_name("ERR_CNT")
	.dwattr $C$DW$896, DW_AT_TI_symbol_name("_ERR_CNT")
	.dwattr $C$DW$896, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$896, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$897	.dwtag  DW_TAG_member
	.dwattr $C$DW$897, DW_AT_type(*$C$DW$T$152)
	.dwattr $C$DW$897, DW_AT_name("ERR_THRESHOLD")
	.dwattr $C$DW$897, DW_AT_TI_symbol_name("_ERR_THRESHOLD")
	.dwattr $C$DW$897, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr $C$DW$897, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$898	.dwtag  DW_TAG_member
	.dwattr $C$DW$898, DW_AT_type(*$C$DW$T$144)
	.dwattr $C$DW$898, DW_AT_name("ERR_INTFLG")
	.dwattr $C$DW$898, DW_AT_TI_symbol_name("_ERR_INTFLG")
	.dwattr $C$DW$898, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$898, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$899	.dwtag  DW_TAG_member
	.dwattr $C$DW$899, DW_AT_type(*$C$DW$T$142)
	.dwattr $C$DW$899, DW_AT_name("ERR_INTCLR")
	.dwattr $C$DW$899, DW_AT_TI_symbol_name("_ERR_INTCLR")
	.dwattr $C$DW$899, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr $C$DW$899, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$900	.dwtag  DW_TAG_member
	.dwattr $C$DW$900, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$900, DW_AT_name("FDATAH_TEST")
	.dwattr $C$DW$900, DW_AT_TI_symbol_name("_FDATAH_TEST")
	.dwattr $C$DW$900, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$900, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$901	.dwtag  DW_TAG_member
	.dwattr $C$DW$901, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$901, DW_AT_name("FDATAL_TEST")
	.dwattr $C$DW$901, DW_AT_TI_symbol_name("_FDATAL_TEST")
	.dwattr $C$DW$901, DW_AT_data_member_location[DW_OP_plus_uconst 0x1a]
	.dwattr $C$DW$901, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$902	.dwtag  DW_TAG_member
	.dwattr $C$DW$902, DW_AT_type(*$C$DW$T$154)
	.dwattr $C$DW$902, DW_AT_name("FADDR_TEST")
	.dwattr $C$DW$902, DW_AT_TI_symbol_name("_FADDR_TEST")
	.dwattr $C$DW$902, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr $C$DW$902, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$903	.dwtag  DW_TAG_member
	.dwattr $C$DW$903, DW_AT_type(*$C$DW$T$166)
	.dwattr $C$DW$903, DW_AT_name("FECC_TEST")
	.dwattr $C$DW$903, DW_AT_TI_symbol_name("_FECC_TEST")
	.dwattr $C$DW$903, DW_AT_data_member_location[DW_OP_plus_uconst 0x1e]
	.dwattr $C$DW$903, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$904	.dwtag  DW_TAG_member
	.dwattr $C$DW$904, DW_AT_type(*$C$DW$T$162)
	.dwattr $C$DW$904, DW_AT_name("FECC_CTRL")
	.dwattr $C$DW$904, DW_AT_TI_symbol_name("_FECC_CTRL")
	.dwattr $C$DW$904, DW_AT_data_member_location[DW_OP_plus_uconst 0x20]
	.dwattr $C$DW$904, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$905	.dwtag  DW_TAG_member
	.dwattr $C$DW$905, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$905, DW_AT_name("FOUTH_TEST")
	.dwattr $C$DW$905, DW_AT_TI_symbol_name("_FOUTH_TEST")
	.dwattr $C$DW$905, DW_AT_data_member_location[DW_OP_plus_uconst 0x22]
	.dwattr $C$DW$905, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$906	.dwtag  DW_TAG_member
	.dwattr $C$DW$906, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$906, DW_AT_name("FOUTL_TEST")
	.dwattr $C$DW$906, DW_AT_TI_symbol_name("_FOUTL_TEST")
	.dwattr $C$DW$906, DW_AT_data_member_location[DW_OP_plus_uconst 0x24]
	.dwattr $C$DW$906, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$907	.dwtag  DW_TAG_member
	.dwattr $C$DW$907, DW_AT_type(*$C$DW$T$164)
	.dwattr $C$DW$907, DW_AT_name("FECC_STATUS")
	.dwattr $C$DW$907, DW_AT_TI_symbol_name("_FECC_STATUS")
	.dwattr $C$DW$907, DW_AT_data_member_location[DW_OP_plus_uconst 0x26]
	.dwattr $C$DW$907, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$170

$C$DW$908	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$908, DW_AT_type(*$C$DW$T$170)

$C$DW$T$379	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$379, DW_AT_type(*$C$DW$908)


$C$DW$T$171	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$171, DW_AT_name("FLASH_PUMP_SEMAPHORE_REGS")
	.dwattr $C$DW$T$171, DW_AT_byte_size(0x02)
$C$DW$909	.dwtag  DW_TAG_member
	.dwattr $C$DW$909, DW_AT_type(*$C$DW$T$245)
	.dwattr $C$DW$909, DW_AT_name("PUMPREQUEST")
	.dwattr $C$DW$909, DW_AT_TI_symbol_name("_PUMPREQUEST")
	.dwattr $C$DW$909, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$909, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$171

$C$DW$910	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$910, DW_AT_type(*$C$DW$T$171)

$C$DW$T$380	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$380, DW_AT_type(*$C$DW$910)


$C$DW$T$172	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$172, DW_AT_name("FMSTAT_BITS")
	.dwattr $C$DW$T$172, DW_AT_byte_size(0x02)
$C$DW$911	.dwtag  DW_TAG_member
	.dwattr $C$DW$911, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$911, DW_AT_name("rsvd1")
	.dwattr $C$DW$911, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$911, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$911, DW_AT_bit_size(0x01)
	.dwattr $C$DW$911, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$911, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$912	.dwtag  DW_TAG_member
	.dwattr $C$DW$912, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$912, DW_AT_name("PSUSP")
	.dwattr $C$DW$912, DW_AT_TI_symbol_name("_PSUSP")
	.dwattr $C$DW$912, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$912, DW_AT_bit_size(0x01)
	.dwattr $C$DW$912, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$912, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$913	.dwtag  DW_TAG_member
	.dwattr $C$DW$913, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$913, DW_AT_name("ESUSP")
	.dwattr $C$DW$913, DW_AT_TI_symbol_name("_ESUSP")
	.dwattr $C$DW$913, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$913, DW_AT_bit_size(0x01)
	.dwattr $C$DW$913, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$913, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$914	.dwtag  DW_TAG_member
	.dwattr $C$DW$914, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$914, DW_AT_name("VOLTSTAT")
	.dwattr $C$DW$914, DW_AT_TI_symbol_name("_VOLTSTAT")
	.dwattr $C$DW$914, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$914, DW_AT_bit_size(0x01)
	.dwattr $C$DW$914, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$914, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$915	.dwtag  DW_TAG_member
	.dwattr $C$DW$915, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$915, DW_AT_name("CSTAT")
	.dwattr $C$DW$915, DW_AT_TI_symbol_name("_CSTAT")
	.dwattr $C$DW$915, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$915, DW_AT_bit_size(0x01)
	.dwattr $C$DW$915, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$915, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$916	.dwtag  DW_TAG_member
	.dwattr $C$DW$916, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$916, DW_AT_name("INVDAT")
	.dwattr $C$DW$916, DW_AT_TI_symbol_name("_INVDAT")
	.dwattr $C$DW$916, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$916, DW_AT_bit_size(0x01)
	.dwattr $C$DW$916, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$916, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$917	.dwtag  DW_TAG_member
	.dwattr $C$DW$917, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$917, DW_AT_name("PGM")
	.dwattr $C$DW$917, DW_AT_TI_symbol_name("_PGM")
	.dwattr $C$DW$917, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$917, DW_AT_bit_size(0x01)
	.dwattr $C$DW$917, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$917, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$918	.dwtag  DW_TAG_member
	.dwattr $C$DW$918, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$918, DW_AT_name("ERS")
	.dwattr $C$DW$918, DW_AT_TI_symbol_name("_ERS")
	.dwattr $C$DW$918, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$918, DW_AT_bit_size(0x01)
	.dwattr $C$DW$918, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$918, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$919	.dwtag  DW_TAG_member
	.dwattr $C$DW$919, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$919, DW_AT_name("BUSY")
	.dwattr $C$DW$919, DW_AT_TI_symbol_name("_BUSY")
	.dwattr $C$DW$919, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$919, DW_AT_bit_size(0x01)
	.dwattr $C$DW$919, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$919, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$920	.dwtag  DW_TAG_member
	.dwattr $C$DW$920, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$920, DW_AT_name("rsvd2")
	.dwattr $C$DW$920, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$920, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$920, DW_AT_bit_size(0x01)
	.dwattr $C$DW$920, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$920, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$921	.dwtag  DW_TAG_member
	.dwattr $C$DW$921, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$921, DW_AT_name("EV")
	.dwattr $C$DW$921, DW_AT_TI_symbol_name("_EV")
	.dwattr $C$DW$921, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$921, DW_AT_bit_size(0x01)
	.dwattr $C$DW$921, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$921, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$922	.dwtag  DW_TAG_member
	.dwattr $C$DW$922, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$922, DW_AT_name("rsvd3")
	.dwattr $C$DW$922, DW_AT_TI_symbol_name("_rsvd3")
	.dwattr $C$DW$922, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$922, DW_AT_bit_size(0x01)
	.dwattr $C$DW$922, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$922, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$923	.dwtag  DW_TAG_member
	.dwattr $C$DW$923, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$923, DW_AT_name("PGV")
	.dwattr $C$DW$923, DW_AT_TI_symbol_name("_PGV")
	.dwattr $C$DW$923, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$923, DW_AT_bit_size(0x01)
	.dwattr $C$DW$923, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$923, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$924	.dwtag  DW_TAG_member
	.dwattr $C$DW$924, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$924, DW_AT_name("rsvd4")
	.dwattr $C$DW$924, DW_AT_TI_symbol_name("_rsvd4")
	.dwattr $C$DW$924, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$924, DW_AT_bit_size(0x01)
	.dwattr $C$DW$924, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$924, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$925	.dwtag  DW_TAG_member
	.dwattr $C$DW$925, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$925, DW_AT_name("rsvd5")
	.dwattr $C$DW$925, DW_AT_TI_symbol_name("_rsvd5")
	.dwattr $C$DW$925, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$925, DW_AT_bit_size(0x01)
	.dwattr $C$DW$925, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$925, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$926	.dwtag  DW_TAG_member
	.dwattr $C$DW$926, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$926, DW_AT_name("rsvd6")
	.dwattr $C$DW$926, DW_AT_TI_symbol_name("_rsvd6")
	.dwattr $C$DW$926, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$926, DW_AT_bit_size(0x01)
	.dwattr $C$DW$926, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$926, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$927	.dwtag  DW_TAG_member
	.dwattr $C$DW$927, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$927, DW_AT_name("rsvd7")
	.dwattr $C$DW$927, DW_AT_TI_symbol_name("_rsvd7")
	.dwattr $C$DW$927, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$927, DW_AT_bit_size(0x01)
	.dwattr $C$DW$927, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$927, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$928	.dwtag  DW_TAG_member
	.dwattr $C$DW$928, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$928, DW_AT_name("rsvd8")
	.dwattr $C$DW$928, DW_AT_TI_symbol_name("_rsvd8")
	.dwattr $C$DW$928, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$928, DW_AT_bit_size(0x01)
	.dwattr $C$DW$928, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$928, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$929	.dwtag  DW_TAG_member
	.dwattr $C$DW$929, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$929, DW_AT_name("rsvd9")
	.dwattr $C$DW$929, DW_AT_TI_symbol_name("_rsvd9")
	.dwattr $C$DW$929, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$929, DW_AT_bit_size(0x0e)
	.dwattr $C$DW$929, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$929, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$172


$C$DW$T$173	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$173, DW_AT_name("FMSTAT_REG")
	.dwattr $C$DW$T$173, DW_AT_byte_size(0x02)
$C$DW$930	.dwtag  DW_TAG_member
	.dwattr $C$DW$930, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$930, DW_AT_name("all")
	.dwattr $C$DW$930, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$930, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$930, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$931	.dwtag  DW_TAG_member
	.dwattr $C$DW$931, DW_AT_type(*$C$DW$T$172)
	.dwattr $C$DW$931, DW_AT_name("bit")
	.dwattr $C$DW$931, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$931, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$931, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$173


$C$DW$T$174	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$174, DW_AT_name("FPAC1_BITS")
	.dwattr $C$DW$T$174, DW_AT_byte_size(0x02)
$C$DW$932	.dwtag  DW_TAG_member
	.dwattr $C$DW$932, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$932, DW_AT_name("PMPPWR")
	.dwattr $C$DW$932, DW_AT_TI_symbol_name("_PMPPWR")
	.dwattr $C$DW$932, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$932, DW_AT_bit_size(0x01)
	.dwattr $C$DW$932, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$932, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$933	.dwtag  DW_TAG_member
	.dwattr $C$DW$933, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$933, DW_AT_name("rsvd1")
	.dwattr $C$DW$933, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$933, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$933, DW_AT_bit_size(0x0f)
	.dwattr $C$DW$933, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$933, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$934	.dwtag  DW_TAG_member
	.dwattr $C$DW$934, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$934, DW_AT_name("PSLEEP")
	.dwattr $C$DW$934, DW_AT_TI_symbol_name("_PSLEEP")
	.dwattr $C$DW$934, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$934, DW_AT_bit_size(0x0c)
	.dwattr $C$DW$934, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$934, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$935	.dwtag  DW_TAG_member
	.dwattr $C$DW$935, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$935, DW_AT_name("rsvd2")
	.dwattr $C$DW$935, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$935, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$935, DW_AT_bit_size(0x04)
	.dwattr $C$DW$935, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$935, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$174


$C$DW$T$175	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$175, DW_AT_name("FPAC1_REG")
	.dwattr $C$DW$T$175, DW_AT_byte_size(0x02)
$C$DW$936	.dwtag  DW_TAG_member
	.dwattr $C$DW$936, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$936, DW_AT_name("all")
	.dwattr $C$DW$936, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$936, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$936, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$937	.dwtag  DW_TAG_member
	.dwattr $C$DW$937, DW_AT_type(*$C$DW$T$174)
	.dwattr $C$DW$937, DW_AT_name("bit")
	.dwattr $C$DW$937, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$937, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$937, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$175


$C$DW$T$176	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$176, DW_AT_name("FRDCNTL_BITS")
	.dwattr $C$DW$T$176, DW_AT_byte_size(0x02)
$C$DW$938	.dwtag  DW_TAG_member
	.dwattr $C$DW$938, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$938, DW_AT_name("rsvd1")
	.dwattr $C$DW$938, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$938, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$938, DW_AT_bit_size(0x08)
	.dwattr $C$DW$938, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$938, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$939	.dwtag  DW_TAG_member
	.dwattr $C$DW$939, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$939, DW_AT_name("RWAIT")
	.dwattr $C$DW$939, DW_AT_TI_symbol_name("_RWAIT")
	.dwattr $C$DW$939, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$939, DW_AT_bit_size(0x04)
	.dwattr $C$DW$939, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$939, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$940	.dwtag  DW_TAG_member
	.dwattr $C$DW$940, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$940, DW_AT_name("rsvd2")
	.dwattr $C$DW$940, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$940, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$940, DW_AT_bit_size(0x04)
	.dwattr $C$DW$940, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$940, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$941	.dwtag  DW_TAG_member
	.dwattr $C$DW$941, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$941, DW_AT_name("rsvd3")
	.dwattr $C$DW$941, DW_AT_TI_symbol_name("_rsvd3")
	.dwattr $C$DW$941, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$941, DW_AT_bit_size(0x10)
	.dwattr $C$DW$941, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$941, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$176


$C$DW$T$177	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$177, DW_AT_name("FRDCNTL_REG")
	.dwattr $C$DW$T$177, DW_AT_byte_size(0x02)
$C$DW$942	.dwtag  DW_TAG_member
	.dwattr $C$DW$942, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$942, DW_AT_name("all")
	.dwattr $C$DW$942, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$942, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$942, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$943	.dwtag  DW_TAG_member
	.dwattr $C$DW$943, DW_AT_type(*$C$DW$T$176)
	.dwattr $C$DW$943, DW_AT_name("bit")
	.dwattr $C$DW$943, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$943, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$943, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$177


$C$DW$T$178	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$178, DW_AT_name("FRD_INTF_CTRL_BITS")
	.dwattr $C$DW$T$178, DW_AT_byte_size(0x02)
$C$DW$944	.dwtag  DW_TAG_member
	.dwattr $C$DW$944, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$944, DW_AT_name("PREFETCH_EN")
	.dwattr $C$DW$944, DW_AT_TI_symbol_name("_PREFETCH_EN")
	.dwattr $C$DW$944, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$944, DW_AT_bit_size(0x01)
	.dwattr $C$DW$944, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$944, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$945	.dwtag  DW_TAG_member
	.dwattr $C$DW$945, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$945, DW_AT_name("DATA_CACHE_EN")
	.dwattr $C$DW$945, DW_AT_TI_symbol_name("_DATA_CACHE_EN")
	.dwattr $C$DW$945, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$945, DW_AT_bit_size(0x01)
	.dwattr $C$DW$945, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$945, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$946	.dwtag  DW_TAG_member
	.dwattr $C$DW$946, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$946, DW_AT_name("rsvd1")
	.dwattr $C$DW$946, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$946, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$946, DW_AT_bit_size(0x0e)
	.dwattr $C$DW$946, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$946, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$947	.dwtag  DW_TAG_member
	.dwattr $C$DW$947, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$947, DW_AT_name("rsvd2")
	.dwattr $C$DW$947, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$947, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$947, DW_AT_bit_size(0x10)
	.dwattr $C$DW$947, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$947, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$178


$C$DW$T$179	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$179, DW_AT_name("FRD_INTF_CTRL_REG")
	.dwattr $C$DW$T$179, DW_AT_byte_size(0x02)
$C$DW$948	.dwtag  DW_TAG_member
	.dwattr $C$DW$948, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$948, DW_AT_name("all")
	.dwattr $C$DW$948, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$948, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$948, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$949	.dwtag  DW_TAG_member
	.dwattr $C$DW$949, DW_AT_type(*$C$DW$T$178)
	.dwattr $C$DW$949, DW_AT_name("bit")
	.dwattr $C$DW$949, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$949, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$949, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$179


$C$DW$T$180	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$180, DW_AT_name("FUSEERR_BITS")
	.dwattr $C$DW$T$180, DW_AT_byte_size(0x02)
$C$DW$950	.dwtag  DW_TAG_member
	.dwattr $C$DW$950, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$950, DW_AT_name("ALERR")
	.dwattr $C$DW$950, DW_AT_TI_symbol_name("_ALERR")
	.dwattr $C$DW$950, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$950, DW_AT_bit_size(0x05)
	.dwattr $C$DW$950, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$950, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$951	.dwtag  DW_TAG_member
	.dwattr $C$DW$951, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$951, DW_AT_name("ERR")
	.dwattr $C$DW$951, DW_AT_TI_symbol_name("_ERR")
	.dwattr $C$DW$951, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$951, DW_AT_bit_size(0x01)
	.dwattr $C$DW$951, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$951, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$952	.dwtag  DW_TAG_member
	.dwattr $C$DW$952, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$952, DW_AT_name("rsvd1")
	.dwattr $C$DW$952, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$952, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$952, DW_AT_bit_size(0x0a)
	.dwattr $C$DW$952, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$952, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$953	.dwtag  DW_TAG_member
	.dwattr $C$DW$953, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$953, DW_AT_name("rsvd2")
	.dwattr $C$DW$953, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$953, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$953, DW_AT_bit_size(0x10)
	.dwattr $C$DW$953, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$953, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$180


$C$DW$T$181	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$181, DW_AT_name("FUSEERR_REG")
	.dwattr $C$DW$T$181, DW_AT_byte_size(0x02)
$C$DW$954	.dwtag  DW_TAG_member
	.dwattr $C$DW$954, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$954, DW_AT_name("all")
	.dwattr $C$DW$954, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$954, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$954, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$955	.dwtag  DW_TAG_member
	.dwattr $C$DW$955, DW_AT_type(*$C$DW$T$180)
	.dwattr $C$DW$955, DW_AT_name("bit")
	.dwattr $C$DW$955, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$955, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$955, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$181


$C$DW$T$182	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$182, DW_AT_name("GPIOLPMSEL0_BITS")
	.dwattr $C$DW$T$182, DW_AT_byte_size(0x02)
$C$DW$956	.dwtag  DW_TAG_member
	.dwattr $C$DW$956, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$956, DW_AT_name("GPIO0")
	.dwattr $C$DW$956, DW_AT_TI_symbol_name("_GPIO0")
	.dwattr $C$DW$956, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$956, DW_AT_bit_size(0x01)
	.dwattr $C$DW$956, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$956, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$957	.dwtag  DW_TAG_member
	.dwattr $C$DW$957, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$957, DW_AT_name("GPIO1")
	.dwattr $C$DW$957, DW_AT_TI_symbol_name("_GPIO1")
	.dwattr $C$DW$957, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$957, DW_AT_bit_size(0x01)
	.dwattr $C$DW$957, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$957, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$958	.dwtag  DW_TAG_member
	.dwattr $C$DW$958, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$958, DW_AT_name("GPIO2")
	.dwattr $C$DW$958, DW_AT_TI_symbol_name("_GPIO2")
	.dwattr $C$DW$958, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$958, DW_AT_bit_size(0x01)
	.dwattr $C$DW$958, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$958, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$959	.dwtag  DW_TAG_member
	.dwattr $C$DW$959, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$959, DW_AT_name("GPIO3")
	.dwattr $C$DW$959, DW_AT_TI_symbol_name("_GPIO3")
	.dwattr $C$DW$959, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$959, DW_AT_bit_size(0x01)
	.dwattr $C$DW$959, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$959, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$960	.dwtag  DW_TAG_member
	.dwattr $C$DW$960, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$960, DW_AT_name("GPIO4")
	.dwattr $C$DW$960, DW_AT_TI_symbol_name("_GPIO4")
	.dwattr $C$DW$960, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$960, DW_AT_bit_size(0x01)
	.dwattr $C$DW$960, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$960, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$961	.dwtag  DW_TAG_member
	.dwattr $C$DW$961, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$961, DW_AT_name("GPIO5")
	.dwattr $C$DW$961, DW_AT_TI_symbol_name("_GPIO5")
	.dwattr $C$DW$961, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$961, DW_AT_bit_size(0x01)
	.dwattr $C$DW$961, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$961, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$962	.dwtag  DW_TAG_member
	.dwattr $C$DW$962, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$962, DW_AT_name("GPIO6")
	.dwattr $C$DW$962, DW_AT_TI_symbol_name("_GPIO6")
	.dwattr $C$DW$962, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$962, DW_AT_bit_size(0x01)
	.dwattr $C$DW$962, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$962, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$963	.dwtag  DW_TAG_member
	.dwattr $C$DW$963, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$963, DW_AT_name("GPIO7")
	.dwattr $C$DW$963, DW_AT_TI_symbol_name("_GPIO7")
	.dwattr $C$DW$963, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$963, DW_AT_bit_size(0x01)
	.dwattr $C$DW$963, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$963, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$964	.dwtag  DW_TAG_member
	.dwattr $C$DW$964, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$964, DW_AT_name("GPIO8")
	.dwattr $C$DW$964, DW_AT_TI_symbol_name("_GPIO8")
	.dwattr $C$DW$964, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$964, DW_AT_bit_size(0x01)
	.dwattr $C$DW$964, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$964, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$965	.dwtag  DW_TAG_member
	.dwattr $C$DW$965, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$965, DW_AT_name("GPIO9")
	.dwattr $C$DW$965, DW_AT_TI_symbol_name("_GPIO9")
	.dwattr $C$DW$965, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$965, DW_AT_bit_size(0x01)
	.dwattr $C$DW$965, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$965, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$966	.dwtag  DW_TAG_member
	.dwattr $C$DW$966, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$966, DW_AT_name("GPIO10")
	.dwattr $C$DW$966, DW_AT_TI_symbol_name("_GPIO10")
	.dwattr $C$DW$966, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$966, DW_AT_bit_size(0x01)
	.dwattr $C$DW$966, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$966, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$967	.dwtag  DW_TAG_member
	.dwattr $C$DW$967, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$967, DW_AT_name("GPIO11")
	.dwattr $C$DW$967, DW_AT_TI_symbol_name("_GPIO11")
	.dwattr $C$DW$967, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$967, DW_AT_bit_size(0x01)
	.dwattr $C$DW$967, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$967, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$968	.dwtag  DW_TAG_member
	.dwattr $C$DW$968, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$968, DW_AT_name("GPIO12")
	.dwattr $C$DW$968, DW_AT_TI_symbol_name("_GPIO12")
	.dwattr $C$DW$968, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$968, DW_AT_bit_size(0x01)
	.dwattr $C$DW$968, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$968, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$969	.dwtag  DW_TAG_member
	.dwattr $C$DW$969, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$969, DW_AT_name("GPIO13")
	.dwattr $C$DW$969, DW_AT_TI_symbol_name("_GPIO13")
	.dwattr $C$DW$969, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$969, DW_AT_bit_size(0x01)
	.dwattr $C$DW$969, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$969, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$970	.dwtag  DW_TAG_member
	.dwattr $C$DW$970, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$970, DW_AT_name("GPIO14")
	.dwattr $C$DW$970, DW_AT_TI_symbol_name("_GPIO14")
	.dwattr $C$DW$970, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$970, DW_AT_bit_size(0x01)
	.dwattr $C$DW$970, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$970, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$971	.dwtag  DW_TAG_member
	.dwattr $C$DW$971, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$971, DW_AT_name("GPIO15")
	.dwattr $C$DW$971, DW_AT_TI_symbol_name("_GPIO15")
	.dwattr $C$DW$971, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$971, DW_AT_bit_size(0x01)
	.dwattr $C$DW$971, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$971, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$972	.dwtag  DW_TAG_member
	.dwattr $C$DW$972, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$972, DW_AT_name("GPIO16")
	.dwattr $C$DW$972, DW_AT_TI_symbol_name("_GPIO16")
	.dwattr $C$DW$972, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$972, DW_AT_bit_size(0x01)
	.dwattr $C$DW$972, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$972, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$973	.dwtag  DW_TAG_member
	.dwattr $C$DW$973, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$973, DW_AT_name("GPIO17")
	.dwattr $C$DW$973, DW_AT_TI_symbol_name("_GPIO17")
	.dwattr $C$DW$973, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$973, DW_AT_bit_size(0x01)
	.dwattr $C$DW$973, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$973, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$974	.dwtag  DW_TAG_member
	.dwattr $C$DW$974, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$974, DW_AT_name("GPIO18")
	.dwattr $C$DW$974, DW_AT_TI_symbol_name("_GPIO18")
	.dwattr $C$DW$974, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$974, DW_AT_bit_size(0x01)
	.dwattr $C$DW$974, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$974, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$975	.dwtag  DW_TAG_member
	.dwattr $C$DW$975, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$975, DW_AT_name("GPIO19")
	.dwattr $C$DW$975, DW_AT_TI_symbol_name("_GPIO19")
	.dwattr $C$DW$975, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$975, DW_AT_bit_size(0x01)
	.dwattr $C$DW$975, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$975, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$976	.dwtag  DW_TAG_member
	.dwattr $C$DW$976, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$976, DW_AT_name("GPIO20")
	.dwattr $C$DW$976, DW_AT_TI_symbol_name("_GPIO20")
	.dwattr $C$DW$976, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$976, DW_AT_bit_size(0x01)
	.dwattr $C$DW$976, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$976, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$977	.dwtag  DW_TAG_member
	.dwattr $C$DW$977, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$977, DW_AT_name("GPIO21")
	.dwattr $C$DW$977, DW_AT_TI_symbol_name("_GPIO21")
	.dwattr $C$DW$977, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$977, DW_AT_bit_size(0x01)
	.dwattr $C$DW$977, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$977, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$978	.dwtag  DW_TAG_member
	.dwattr $C$DW$978, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$978, DW_AT_name("GPIO22")
	.dwattr $C$DW$978, DW_AT_TI_symbol_name("_GPIO22")
	.dwattr $C$DW$978, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$978, DW_AT_bit_size(0x01)
	.dwattr $C$DW$978, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$978, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$979	.dwtag  DW_TAG_member
	.dwattr $C$DW$979, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$979, DW_AT_name("GPIO23")
	.dwattr $C$DW$979, DW_AT_TI_symbol_name("_GPIO23")
	.dwattr $C$DW$979, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$979, DW_AT_bit_size(0x01)
	.dwattr $C$DW$979, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$979, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$980	.dwtag  DW_TAG_member
	.dwattr $C$DW$980, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$980, DW_AT_name("GPIO24")
	.dwattr $C$DW$980, DW_AT_TI_symbol_name("_GPIO24")
	.dwattr $C$DW$980, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$980, DW_AT_bit_size(0x01)
	.dwattr $C$DW$980, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$980, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$981	.dwtag  DW_TAG_member
	.dwattr $C$DW$981, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$981, DW_AT_name("GPIO25")
	.dwattr $C$DW$981, DW_AT_TI_symbol_name("_GPIO25")
	.dwattr $C$DW$981, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$981, DW_AT_bit_size(0x01)
	.dwattr $C$DW$981, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$981, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$982	.dwtag  DW_TAG_member
	.dwattr $C$DW$982, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$982, DW_AT_name("GPIO26")
	.dwattr $C$DW$982, DW_AT_TI_symbol_name("_GPIO26")
	.dwattr $C$DW$982, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$982, DW_AT_bit_size(0x01)
	.dwattr $C$DW$982, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$982, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$983	.dwtag  DW_TAG_member
	.dwattr $C$DW$983, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$983, DW_AT_name("GPIO27")
	.dwattr $C$DW$983, DW_AT_TI_symbol_name("_GPIO27")
	.dwattr $C$DW$983, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$983, DW_AT_bit_size(0x01)
	.dwattr $C$DW$983, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$983, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$984	.dwtag  DW_TAG_member
	.dwattr $C$DW$984, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$984, DW_AT_name("GPIO28")
	.dwattr $C$DW$984, DW_AT_TI_symbol_name("_GPIO28")
	.dwattr $C$DW$984, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$984, DW_AT_bit_size(0x01)
	.dwattr $C$DW$984, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$984, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$985	.dwtag  DW_TAG_member
	.dwattr $C$DW$985, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$985, DW_AT_name("GPIO29")
	.dwattr $C$DW$985, DW_AT_TI_symbol_name("_GPIO29")
	.dwattr $C$DW$985, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$985, DW_AT_bit_size(0x01)
	.dwattr $C$DW$985, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$985, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$986	.dwtag  DW_TAG_member
	.dwattr $C$DW$986, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$986, DW_AT_name("GPIO30")
	.dwattr $C$DW$986, DW_AT_TI_symbol_name("_GPIO30")
	.dwattr $C$DW$986, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$986, DW_AT_bit_size(0x01)
	.dwattr $C$DW$986, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$986, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$987	.dwtag  DW_TAG_member
	.dwattr $C$DW$987, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$987, DW_AT_name("GPIO31")
	.dwattr $C$DW$987, DW_AT_TI_symbol_name("_GPIO31")
	.dwattr $C$DW$987, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$987, DW_AT_bit_size(0x01)
	.dwattr $C$DW$987, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$987, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$182


$C$DW$T$183	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$183, DW_AT_name("GPIOLPMSEL0_REG")
	.dwattr $C$DW$T$183, DW_AT_byte_size(0x02)
$C$DW$988	.dwtag  DW_TAG_member
	.dwattr $C$DW$988, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$988, DW_AT_name("all")
	.dwattr $C$DW$988, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$988, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$988, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$989	.dwtag  DW_TAG_member
	.dwattr $C$DW$989, DW_AT_type(*$C$DW$T$182)
	.dwattr $C$DW$989, DW_AT_name("bit")
	.dwattr $C$DW$989, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$989, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$989, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$183


$C$DW$T$184	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$184, DW_AT_name("GPIOLPMSEL1_BITS")
	.dwattr $C$DW$T$184, DW_AT_byte_size(0x02)
$C$DW$990	.dwtag  DW_TAG_member
	.dwattr $C$DW$990, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$990, DW_AT_name("GPIO32")
	.dwattr $C$DW$990, DW_AT_TI_symbol_name("_GPIO32")
	.dwattr $C$DW$990, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$990, DW_AT_bit_size(0x01)
	.dwattr $C$DW$990, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$990, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$991	.dwtag  DW_TAG_member
	.dwattr $C$DW$991, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$991, DW_AT_name("GPIO33")
	.dwattr $C$DW$991, DW_AT_TI_symbol_name("_GPIO33")
	.dwattr $C$DW$991, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$991, DW_AT_bit_size(0x01)
	.dwattr $C$DW$991, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$991, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$992	.dwtag  DW_TAG_member
	.dwattr $C$DW$992, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$992, DW_AT_name("GPIO34")
	.dwattr $C$DW$992, DW_AT_TI_symbol_name("_GPIO34")
	.dwattr $C$DW$992, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$992, DW_AT_bit_size(0x01)
	.dwattr $C$DW$992, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$992, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$993	.dwtag  DW_TAG_member
	.dwattr $C$DW$993, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$993, DW_AT_name("GPIO35")
	.dwattr $C$DW$993, DW_AT_TI_symbol_name("_GPIO35")
	.dwattr $C$DW$993, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$993, DW_AT_bit_size(0x01)
	.dwattr $C$DW$993, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$993, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$994	.dwtag  DW_TAG_member
	.dwattr $C$DW$994, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$994, DW_AT_name("GPIO36")
	.dwattr $C$DW$994, DW_AT_TI_symbol_name("_GPIO36")
	.dwattr $C$DW$994, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$994, DW_AT_bit_size(0x01)
	.dwattr $C$DW$994, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$994, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$995	.dwtag  DW_TAG_member
	.dwattr $C$DW$995, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$995, DW_AT_name("GPIO37")
	.dwattr $C$DW$995, DW_AT_TI_symbol_name("_GPIO37")
	.dwattr $C$DW$995, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$995, DW_AT_bit_size(0x01)
	.dwattr $C$DW$995, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$995, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$996	.dwtag  DW_TAG_member
	.dwattr $C$DW$996, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$996, DW_AT_name("GPIO38")
	.dwattr $C$DW$996, DW_AT_TI_symbol_name("_GPIO38")
	.dwattr $C$DW$996, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$996, DW_AT_bit_size(0x01)
	.dwattr $C$DW$996, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$996, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$997	.dwtag  DW_TAG_member
	.dwattr $C$DW$997, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$997, DW_AT_name("GPIO39")
	.dwattr $C$DW$997, DW_AT_TI_symbol_name("_GPIO39")
	.dwattr $C$DW$997, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$997, DW_AT_bit_size(0x01)
	.dwattr $C$DW$997, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$997, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$998	.dwtag  DW_TAG_member
	.dwattr $C$DW$998, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$998, DW_AT_name("GPIO40")
	.dwattr $C$DW$998, DW_AT_TI_symbol_name("_GPIO40")
	.dwattr $C$DW$998, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$998, DW_AT_bit_size(0x01)
	.dwattr $C$DW$998, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$998, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$999	.dwtag  DW_TAG_member
	.dwattr $C$DW$999, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$999, DW_AT_name("GPIO41")
	.dwattr $C$DW$999, DW_AT_TI_symbol_name("_GPIO41")
	.dwattr $C$DW$999, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$999, DW_AT_bit_size(0x01)
	.dwattr $C$DW$999, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$999, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1000	.dwtag  DW_TAG_member
	.dwattr $C$DW$1000, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1000, DW_AT_name("GPIO42")
	.dwattr $C$DW$1000, DW_AT_TI_symbol_name("_GPIO42")
	.dwattr $C$DW$1000, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$1000, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1000, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1000, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1001	.dwtag  DW_TAG_member
	.dwattr $C$DW$1001, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1001, DW_AT_name("GPIO43")
	.dwattr $C$DW$1001, DW_AT_TI_symbol_name("_GPIO43")
	.dwattr $C$DW$1001, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$1001, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1001, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1001, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1002	.dwtag  DW_TAG_member
	.dwattr $C$DW$1002, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1002, DW_AT_name("GPIO44")
	.dwattr $C$DW$1002, DW_AT_TI_symbol_name("_GPIO44")
	.dwattr $C$DW$1002, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$1002, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1002, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1002, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1003	.dwtag  DW_TAG_member
	.dwattr $C$DW$1003, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1003, DW_AT_name("GPIO45")
	.dwattr $C$DW$1003, DW_AT_TI_symbol_name("_GPIO45")
	.dwattr $C$DW$1003, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$1003, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1003, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1003, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1004	.dwtag  DW_TAG_member
	.dwattr $C$DW$1004, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1004, DW_AT_name("GPIO46")
	.dwattr $C$DW$1004, DW_AT_TI_symbol_name("_GPIO46")
	.dwattr $C$DW$1004, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$1004, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1004, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1004, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1005	.dwtag  DW_TAG_member
	.dwattr $C$DW$1005, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1005, DW_AT_name("GPIO47")
	.dwattr $C$DW$1005, DW_AT_TI_symbol_name("_GPIO47")
	.dwattr $C$DW$1005, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$1005, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1005, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1005, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1006	.dwtag  DW_TAG_member
	.dwattr $C$DW$1006, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1006, DW_AT_name("GPIO48")
	.dwattr $C$DW$1006, DW_AT_TI_symbol_name("_GPIO48")
	.dwattr $C$DW$1006, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$1006, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1006, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$1006, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1007	.dwtag  DW_TAG_member
	.dwattr $C$DW$1007, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1007, DW_AT_name("GPIO49")
	.dwattr $C$DW$1007, DW_AT_TI_symbol_name("_GPIO49")
	.dwattr $C$DW$1007, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$1007, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1007, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$1007, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1008	.dwtag  DW_TAG_member
	.dwattr $C$DW$1008, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1008, DW_AT_name("GPIO50")
	.dwattr $C$DW$1008, DW_AT_TI_symbol_name("_GPIO50")
	.dwattr $C$DW$1008, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$1008, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1008, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$1008, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1009	.dwtag  DW_TAG_member
	.dwattr $C$DW$1009, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1009, DW_AT_name("GPIO51")
	.dwattr $C$DW$1009, DW_AT_TI_symbol_name("_GPIO51")
	.dwattr $C$DW$1009, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$1009, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1009, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$1009, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1010	.dwtag  DW_TAG_member
	.dwattr $C$DW$1010, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1010, DW_AT_name("GPIO52")
	.dwattr $C$DW$1010, DW_AT_TI_symbol_name("_GPIO52")
	.dwattr $C$DW$1010, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$1010, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1010, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$1010, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1011	.dwtag  DW_TAG_member
	.dwattr $C$DW$1011, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1011, DW_AT_name("GPIO53")
	.dwattr $C$DW$1011, DW_AT_TI_symbol_name("_GPIO53")
	.dwattr $C$DW$1011, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$1011, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1011, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$1011, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1012	.dwtag  DW_TAG_member
	.dwattr $C$DW$1012, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1012, DW_AT_name("GPIO54")
	.dwattr $C$DW$1012, DW_AT_TI_symbol_name("_GPIO54")
	.dwattr $C$DW$1012, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$1012, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1012, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$1012, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1013	.dwtag  DW_TAG_member
	.dwattr $C$DW$1013, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1013, DW_AT_name("GPIO55")
	.dwattr $C$DW$1013, DW_AT_TI_symbol_name("_GPIO55")
	.dwattr $C$DW$1013, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$1013, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1013, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$1013, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1014	.dwtag  DW_TAG_member
	.dwattr $C$DW$1014, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1014, DW_AT_name("GPIO56")
	.dwattr $C$DW$1014, DW_AT_TI_symbol_name("_GPIO56")
	.dwattr $C$DW$1014, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$1014, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1014, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$1014, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1015	.dwtag  DW_TAG_member
	.dwattr $C$DW$1015, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1015, DW_AT_name("GPIO57")
	.dwattr $C$DW$1015, DW_AT_TI_symbol_name("_GPIO57")
	.dwattr $C$DW$1015, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$1015, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1015, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$1015, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1016	.dwtag  DW_TAG_member
	.dwattr $C$DW$1016, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1016, DW_AT_name("GPIO58")
	.dwattr $C$DW$1016, DW_AT_TI_symbol_name("_GPIO58")
	.dwattr $C$DW$1016, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$1016, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1016, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$1016, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1017	.dwtag  DW_TAG_member
	.dwattr $C$DW$1017, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1017, DW_AT_name("GPIO59")
	.dwattr $C$DW$1017, DW_AT_TI_symbol_name("_GPIO59")
	.dwattr $C$DW$1017, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$1017, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1017, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$1017, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1018	.dwtag  DW_TAG_member
	.dwattr $C$DW$1018, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1018, DW_AT_name("GPIO60")
	.dwattr $C$DW$1018, DW_AT_TI_symbol_name("_GPIO60")
	.dwattr $C$DW$1018, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$1018, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1018, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$1018, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1019	.dwtag  DW_TAG_member
	.dwattr $C$DW$1019, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1019, DW_AT_name("GPIO61")
	.dwattr $C$DW$1019, DW_AT_TI_symbol_name("_GPIO61")
	.dwattr $C$DW$1019, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$1019, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1019, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$1019, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1020	.dwtag  DW_TAG_member
	.dwattr $C$DW$1020, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1020, DW_AT_name("GPIO62")
	.dwattr $C$DW$1020, DW_AT_TI_symbol_name("_GPIO62")
	.dwattr $C$DW$1020, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$1020, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1020, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$1020, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1021	.dwtag  DW_TAG_member
	.dwattr $C$DW$1021, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1021, DW_AT_name("GPIO63")
	.dwattr $C$DW$1021, DW_AT_TI_symbol_name("_GPIO63")
	.dwattr $C$DW$1021, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$1021, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1021, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$1021, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$184


$C$DW$T$185	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$185, DW_AT_name("GPIOLPMSEL1_REG")
	.dwattr $C$DW$T$185, DW_AT_byte_size(0x02)
$C$DW$1022	.dwtag  DW_TAG_member
	.dwattr $C$DW$1022, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$1022, DW_AT_name("all")
	.dwattr $C$DW$1022, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$1022, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1022, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1023	.dwtag  DW_TAG_member
	.dwattr $C$DW$1023, DW_AT_type(*$C$DW$T$184)
	.dwattr $C$DW$1023, DW_AT_name("bit")
	.dwattr $C$DW$1023, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$1023, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1023, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$185


$C$DW$T$186	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$186, DW_AT_name("INTOSC1TRIM_BITS")
	.dwattr $C$DW$T$186, DW_AT_byte_size(0x02)
$C$DW$1024	.dwtag  DW_TAG_member
	.dwattr $C$DW$1024, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1024, DW_AT_name("VALFINETRIM")
	.dwattr $C$DW$1024, DW_AT_TI_symbol_name("_VALFINETRIM")
	.dwattr $C$DW$1024, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$1024, DW_AT_bit_size(0x0c)
	.dwattr $C$DW$1024, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1024, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1025	.dwtag  DW_TAG_member
	.dwattr $C$DW$1025, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1025, DW_AT_name("rsvd1")
	.dwattr $C$DW$1025, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$1025, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$1025, DW_AT_bit_size(0x04)
	.dwattr $C$DW$1025, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1025, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1026	.dwtag  DW_TAG_member
	.dwattr $C$DW$1026, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1026, DW_AT_name("rsvd2")
	.dwattr $C$DW$1026, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$1026, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$1026, DW_AT_bit_size(0x08)
	.dwattr $C$DW$1026, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$1026, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1027	.dwtag  DW_TAG_member
	.dwattr $C$DW$1027, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1027, DW_AT_name("rsvd3")
	.dwattr $C$DW$1027, DW_AT_TI_symbol_name("_rsvd3")
	.dwattr $C$DW$1027, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$1027, DW_AT_bit_size(0x08)
	.dwattr $C$DW$1027, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$1027, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$186


$C$DW$T$187	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$187, DW_AT_name("INTOSC1TRIM_REG")
	.dwattr $C$DW$T$187, DW_AT_byte_size(0x02)
$C$DW$1028	.dwtag  DW_TAG_member
	.dwattr $C$DW$1028, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$1028, DW_AT_name("all")
	.dwattr $C$DW$1028, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$1028, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1028, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1029	.dwtag  DW_TAG_member
	.dwattr $C$DW$1029, DW_AT_type(*$C$DW$T$186)
	.dwattr $C$DW$1029, DW_AT_name("bit")
	.dwattr $C$DW$1029, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$1029, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1029, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$187


$C$DW$T$188	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$188, DW_AT_name("INTOSC2TRIM_BITS")
	.dwattr $C$DW$T$188, DW_AT_byte_size(0x02)
$C$DW$1030	.dwtag  DW_TAG_member
	.dwattr $C$DW$1030, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1030, DW_AT_name("VALFINETRIM")
	.dwattr $C$DW$1030, DW_AT_TI_symbol_name("_VALFINETRIM")
	.dwattr $C$DW$1030, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$1030, DW_AT_bit_size(0x0c)
	.dwattr $C$DW$1030, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1030, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1031	.dwtag  DW_TAG_member
	.dwattr $C$DW$1031, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1031, DW_AT_name("rsvd1")
	.dwattr $C$DW$1031, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$1031, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$1031, DW_AT_bit_size(0x04)
	.dwattr $C$DW$1031, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1031, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1032	.dwtag  DW_TAG_member
	.dwattr $C$DW$1032, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1032, DW_AT_name("rsvd2")
	.dwattr $C$DW$1032, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$1032, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$1032, DW_AT_bit_size(0x08)
	.dwattr $C$DW$1032, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$1032, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1033	.dwtag  DW_TAG_member
	.dwattr $C$DW$1033, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1033, DW_AT_name("rsvd3")
	.dwattr $C$DW$1033, DW_AT_TI_symbol_name("_rsvd3")
	.dwattr $C$DW$1033, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$1033, DW_AT_bit_size(0x08)
	.dwattr $C$DW$1033, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$1033, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$188


$C$DW$T$189	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$189, DW_AT_name("INTOSC2TRIM_REG")
	.dwattr $C$DW$T$189, DW_AT_byte_size(0x02)
$C$DW$1034	.dwtag  DW_TAG_member
	.dwattr $C$DW$1034, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$1034, DW_AT_name("all")
	.dwattr $C$DW$1034, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$1034, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1034, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1035	.dwtag  DW_TAG_member
	.dwattr $C$DW$1035, DW_AT_type(*$C$DW$T$188)
	.dwattr $C$DW$1035, DW_AT_name("bit")
	.dwattr $C$DW$1035, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$1035, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1035, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$189


$C$DW$T$190	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$190, DW_AT_name("IORESTOREADDR_BITS")
	.dwattr $C$DW$T$190, DW_AT_byte_size(0x02)
$C$DW$1036	.dwtag  DW_TAG_member
	.dwattr $C$DW$1036, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$1036, DW_AT_name("ADDR")
	.dwattr $C$DW$1036, DW_AT_TI_symbol_name("_ADDR")
	.dwattr $C$DW$1036, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$1036, DW_AT_bit_size(0x16)
	.dwattr $C$DW$1036, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1036, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1037	.dwtag  DW_TAG_member
	.dwattr $C$DW$1037, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1037, DW_AT_name("rsvd1")
	.dwattr $C$DW$1037, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$1037, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$1037, DW_AT_bit_size(0x0a)
	.dwattr $C$DW$1037, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$1037, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$190


$C$DW$T$191	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$191, DW_AT_name("IORESTOREADDR_REG")
	.dwattr $C$DW$T$191, DW_AT_byte_size(0x02)
$C$DW$1038	.dwtag  DW_TAG_member
	.dwattr $C$DW$1038, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$1038, DW_AT_name("all")
	.dwattr $C$DW$1038, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$1038, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1038, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1039	.dwtag  DW_TAG_member
	.dwattr $C$DW$1039, DW_AT_type(*$C$DW$T$190)
	.dwattr $C$DW$1039, DW_AT_name("bit")
	.dwattr $C$DW$1039, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$1039, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1039, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$191


$C$DW$T$192	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$192, DW_AT_name("LOCK_BITS")
	.dwattr $C$DW$T$192, DW_AT_byte_size(0x02)
$C$DW$1040	.dwtag  DW_TAG_member
	.dwattr $C$DW$1040, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1040, DW_AT_name("rsvd1")
	.dwattr $C$DW$1040, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$1040, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$1040, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1040, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1040, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1041	.dwtag  DW_TAG_member
	.dwattr $C$DW$1041, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1041, DW_AT_name("rsvd2")
	.dwattr $C$DW$1041, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$1041, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$1041, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1041, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1041, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1042	.dwtag  DW_TAG_member
	.dwattr $C$DW$1042, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1042, DW_AT_name("rsvd3")
	.dwattr $C$DW$1042, DW_AT_TI_symbol_name("_rsvd3")
	.dwattr $C$DW$1042, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$1042, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1042, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1042, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1043	.dwtag  DW_TAG_member
	.dwattr $C$DW$1043, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1043, DW_AT_name("TSNSCTL")
	.dwattr $C$DW$1043, DW_AT_TI_symbol_name("_TSNSCTL")
	.dwattr $C$DW$1043, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$1043, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1043, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1043, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1044	.dwtag  DW_TAG_member
	.dwattr $C$DW$1044, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1044, DW_AT_name("rsvd4")
	.dwattr $C$DW$1044, DW_AT_TI_symbol_name("_rsvd4")
	.dwattr $C$DW$1044, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$1044, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1044, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1044, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1045	.dwtag  DW_TAG_member
	.dwattr $C$DW$1045, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1045, DW_AT_name("rsvd5")
	.dwattr $C$DW$1045, DW_AT_TI_symbol_name("_rsvd5")
	.dwattr $C$DW$1045, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$1045, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1045, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1045, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1046	.dwtag  DW_TAG_member
	.dwattr $C$DW$1046, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1046, DW_AT_name("rsvd6")
	.dwattr $C$DW$1046, DW_AT_TI_symbol_name("_rsvd6")
	.dwattr $C$DW$1046, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$1046, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1046, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1046, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1047	.dwtag  DW_TAG_member
	.dwattr $C$DW$1047, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1047, DW_AT_name("rsvd7")
	.dwattr $C$DW$1047, DW_AT_TI_symbol_name("_rsvd7")
	.dwattr $C$DW$1047, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$1047, DW_AT_bit_size(0x09)
	.dwattr $C$DW$1047, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1047, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1048	.dwtag  DW_TAG_member
	.dwattr $C$DW$1048, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1048, DW_AT_name("rsvd8")
	.dwattr $C$DW$1048, DW_AT_TI_symbol_name("_rsvd8")
	.dwattr $C$DW$1048, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$1048, DW_AT_bit_size(0x03)
	.dwattr $C$DW$1048, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$1048, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1049	.dwtag  DW_TAG_member
	.dwattr $C$DW$1049, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1049, DW_AT_name("rsvd9")
	.dwattr $C$DW$1049, DW_AT_TI_symbol_name("_rsvd9")
	.dwattr $C$DW$1049, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$1049, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1049, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$1049, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1050	.dwtag  DW_TAG_member
	.dwattr $C$DW$1050, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1050, DW_AT_name("rsvd10")
	.dwattr $C$DW$1050, DW_AT_TI_symbol_name("_rsvd10")
	.dwattr $C$DW$1050, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$1050, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1050, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$1050, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1051	.dwtag  DW_TAG_member
	.dwattr $C$DW$1051, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1051, DW_AT_name("rsvd11")
	.dwattr $C$DW$1051, DW_AT_TI_symbol_name("_rsvd11")
	.dwattr $C$DW$1051, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$1051, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1051, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$1051, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1052	.dwtag  DW_TAG_member
	.dwattr $C$DW$1052, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1052, DW_AT_name("rsvd12")
	.dwattr $C$DW$1052, DW_AT_TI_symbol_name("_rsvd12")
	.dwattr $C$DW$1052, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$1052, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1052, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$1052, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1053	.dwtag  DW_TAG_member
	.dwattr $C$DW$1053, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1053, DW_AT_name("ANAREFTRIMA")
	.dwattr $C$DW$1053, DW_AT_TI_symbol_name("_ANAREFTRIMA")
	.dwattr $C$DW$1053, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$1053, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1053, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$1053, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1054	.dwtag  DW_TAG_member
	.dwattr $C$DW$1054, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1054, DW_AT_name("ANAREFTRIMB")
	.dwattr $C$DW$1054, DW_AT_TI_symbol_name("_ANAREFTRIMB")
	.dwattr $C$DW$1054, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$1054, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1054, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$1054, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1055	.dwtag  DW_TAG_member
	.dwattr $C$DW$1055, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1055, DW_AT_name("ANAREFTRIMC")
	.dwattr $C$DW$1055, DW_AT_TI_symbol_name("_ANAREFTRIMC")
	.dwattr $C$DW$1055, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$1055, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1055, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$1055, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1056	.dwtag  DW_TAG_member
	.dwattr $C$DW$1056, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1056, DW_AT_name("ANAREFTRIMD")
	.dwattr $C$DW$1056, DW_AT_TI_symbol_name("_ANAREFTRIMD")
	.dwattr $C$DW$1056, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$1056, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1056, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$1056, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1057	.dwtag  DW_TAG_member
	.dwattr $C$DW$1057, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1057, DW_AT_name("rsvd13")
	.dwattr $C$DW$1057, DW_AT_TI_symbol_name("_rsvd13")
	.dwattr $C$DW$1057, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$1057, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1057, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$1057, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1058	.dwtag  DW_TAG_member
	.dwattr $C$DW$1058, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1058, DW_AT_name("rsvd14")
	.dwattr $C$DW$1058, DW_AT_TI_symbol_name("_rsvd14")
	.dwattr $C$DW$1058, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$1058, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1058, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$1058, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1059	.dwtag  DW_TAG_member
	.dwattr $C$DW$1059, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1059, DW_AT_name("rsvd15")
	.dwattr $C$DW$1059, DW_AT_TI_symbol_name("_rsvd15")
	.dwattr $C$DW$1059, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$1059, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1059, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$1059, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1060	.dwtag  DW_TAG_member
	.dwattr $C$DW$1060, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1060, DW_AT_name("rsvd16")
	.dwattr $C$DW$1060, DW_AT_TI_symbol_name("_rsvd16")
	.dwattr $C$DW$1060, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$1060, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1060, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$1060, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1061	.dwtag  DW_TAG_member
	.dwattr $C$DW$1061, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1061, DW_AT_name("rsvd17")
	.dwattr $C$DW$1061, DW_AT_TI_symbol_name("_rsvd17")
	.dwattr $C$DW$1061, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$1061, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1061, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$1061, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$192


$C$DW$T$193	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$193, DW_AT_name("LOCK_REG")
	.dwattr $C$DW$T$193, DW_AT_byte_size(0x02)
$C$DW$1062	.dwtag  DW_TAG_member
	.dwattr $C$DW$1062, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$1062, DW_AT_name("all")
	.dwattr $C$DW$1062, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$1062, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1062, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1063	.dwtag  DW_TAG_member
	.dwattr $C$DW$1063, DW_AT_type(*$C$DW$T$192)
	.dwattr $C$DW$1063, DW_AT_name("bit")
	.dwattr $C$DW$1063, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$1063, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1063, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$193


$C$DW$T$194	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$194, DW_AT_name("LOSPCP_BITS")
	.dwattr $C$DW$T$194, DW_AT_byte_size(0x02)
$C$DW$1064	.dwtag  DW_TAG_member
	.dwattr $C$DW$1064, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1064, DW_AT_name("LSPCLKDIV")
	.dwattr $C$DW$1064, DW_AT_TI_symbol_name("_LSPCLKDIV")
	.dwattr $C$DW$1064, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$1064, DW_AT_bit_size(0x03)
	.dwattr $C$DW$1064, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1064, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1065	.dwtag  DW_TAG_member
	.dwattr $C$DW$1065, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1065, DW_AT_name("rsvd1")
	.dwattr $C$DW$1065, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$1065, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$1065, DW_AT_bit_size(0x0d)
	.dwattr $C$DW$1065, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1065, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1066	.dwtag  DW_TAG_member
	.dwattr $C$DW$1066, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1066, DW_AT_name("rsvd2")
	.dwattr $C$DW$1066, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$1066, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$1066, DW_AT_bit_size(0x10)
	.dwattr $C$DW$1066, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$1066, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$194


$C$DW$T$195	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$195, DW_AT_name("LOSPCP_REG")
	.dwattr $C$DW$T$195, DW_AT_byte_size(0x02)
$C$DW$1067	.dwtag  DW_TAG_member
	.dwattr $C$DW$1067, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$1067, DW_AT_name("all")
	.dwattr $C$DW$1067, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$1067, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1067, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1068	.dwtag  DW_TAG_member
	.dwattr $C$DW$1068, DW_AT_type(*$C$DW$T$194)
	.dwattr $C$DW$1068, DW_AT_name("bit")
	.dwattr $C$DW$1068, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$1068, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1068, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$195


$C$DW$T$196	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$196, DW_AT_name("LPMCR_BITS")
	.dwattr $C$DW$T$196, DW_AT_byte_size(0x02)
$C$DW$1069	.dwtag  DW_TAG_member
	.dwattr $C$DW$1069, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1069, DW_AT_name("LPM")
	.dwattr $C$DW$1069, DW_AT_TI_symbol_name("_LPM")
	.dwattr $C$DW$1069, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$1069, DW_AT_bit_size(0x02)
	.dwattr $C$DW$1069, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1069, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1070	.dwtag  DW_TAG_member
	.dwattr $C$DW$1070, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1070, DW_AT_name("QUALSTDBY")
	.dwattr $C$DW$1070, DW_AT_TI_symbol_name("_QUALSTDBY")
	.dwattr $C$DW$1070, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$1070, DW_AT_bit_size(0x06)
	.dwattr $C$DW$1070, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1070, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1071	.dwtag  DW_TAG_member
	.dwattr $C$DW$1071, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1071, DW_AT_name("rsvd1")
	.dwattr $C$DW$1071, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$1071, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$1071, DW_AT_bit_size(0x07)
	.dwattr $C$DW$1071, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1071, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1072	.dwtag  DW_TAG_member
	.dwattr $C$DW$1072, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1072, DW_AT_name("WDINTE")
	.dwattr $C$DW$1072, DW_AT_TI_symbol_name("_WDINTE")
	.dwattr $C$DW$1072, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$1072, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1072, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1072, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1073	.dwtag  DW_TAG_member
	.dwattr $C$DW$1073, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1073, DW_AT_name("M0M1MODE")
	.dwattr $C$DW$1073, DW_AT_TI_symbol_name("_M0M1MODE")
	.dwattr $C$DW$1073, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$1073, DW_AT_bit_size(0x02)
	.dwattr $C$DW$1073, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$1073, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1074	.dwtag  DW_TAG_member
	.dwattr $C$DW$1074, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1074, DW_AT_name("rsvd2")
	.dwattr $C$DW$1074, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$1074, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$1074, DW_AT_bit_size(0x0d)
	.dwattr $C$DW$1074, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$1074, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1075	.dwtag  DW_TAG_member
	.dwattr $C$DW$1075, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1075, DW_AT_name("IOISODIS")
	.dwattr $C$DW$1075, DW_AT_TI_symbol_name("_IOISODIS")
	.dwattr $C$DW$1075, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$1075, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1075, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$1075, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$196


$C$DW$T$197	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$197, DW_AT_name("LPMCR_REG")
	.dwattr $C$DW$T$197, DW_AT_byte_size(0x02)
$C$DW$1076	.dwtag  DW_TAG_member
	.dwattr $C$DW$1076, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$1076, DW_AT_name("all")
	.dwattr $C$DW$1076, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$1076, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1076, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1077	.dwtag  DW_TAG_member
	.dwattr $C$DW$1077, DW_AT_type(*$C$DW$T$196)
	.dwattr $C$DW$1077, DW_AT_name("bit")
	.dwattr $C$DW$1077, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$1077, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1077, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$197


$C$DW$T$198	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$198, DW_AT_name("LPMSTAT_BITS")
	.dwattr $C$DW$T$198, DW_AT_byte_size(0x01)
$C$DW$1078	.dwtag  DW_TAG_member
	.dwattr $C$DW$1078, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1078, DW_AT_name("CPU2LPMSTAT")
	.dwattr $C$DW$1078, DW_AT_TI_symbol_name("_CPU2LPMSTAT")
	.dwattr $C$DW$1078, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$1078, DW_AT_bit_size(0x02)
	.dwattr $C$DW$1078, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1078, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1079	.dwtag  DW_TAG_member
	.dwattr $C$DW$1079, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1079, DW_AT_name("rsvd1")
	.dwattr $C$DW$1079, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$1079, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$1079, DW_AT_bit_size(0x0e)
	.dwattr $C$DW$1079, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1079, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$198


$C$DW$T$199	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$199, DW_AT_name("LPMSTAT_REG")
	.dwattr $C$DW$T$199, DW_AT_byte_size(0x01)
$C$DW$1080	.dwtag  DW_TAG_member
	.dwattr $C$DW$1080, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1080, DW_AT_name("all")
	.dwattr $C$DW$1080, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$1080, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1080, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1081	.dwtag  DW_TAG_member
	.dwattr $C$DW$1081, DW_AT_type(*$C$DW$T$198)
	.dwattr $C$DW$1081, DW_AT_name("bit")
	.dwattr $C$DW$1081, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$1081, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1081, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$199


$C$DW$T$200	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$200, DW_AT_name("MCDCR_BITS")
	.dwattr $C$DW$T$200, DW_AT_byte_size(0x02)
$C$DW$1082	.dwtag  DW_TAG_member
	.dwattr $C$DW$1082, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1082, DW_AT_name("MCLKSTS")
	.dwattr $C$DW$1082, DW_AT_TI_symbol_name("_MCLKSTS")
	.dwattr $C$DW$1082, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$1082, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1082, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1082, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1083	.dwtag  DW_TAG_member
	.dwattr $C$DW$1083, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1083, DW_AT_name("MCLKCLR")
	.dwattr $C$DW$1083, DW_AT_TI_symbol_name("_MCLKCLR")
	.dwattr $C$DW$1083, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$1083, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1083, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1083, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1084	.dwtag  DW_TAG_member
	.dwattr $C$DW$1084, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1084, DW_AT_name("MCLKOFF")
	.dwattr $C$DW$1084, DW_AT_TI_symbol_name("_MCLKOFF")
	.dwattr $C$DW$1084, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$1084, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1084, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1084, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1085	.dwtag  DW_TAG_member
	.dwattr $C$DW$1085, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1085, DW_AT_name("OSCOFF")
	.dwattr $C$DW$1085, DW_AT_TI_symbol_name("_OSCOFF")
	.dwattr $C$DW$1085, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$1085, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1085, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1085, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1086	.dwtag  DW_TAG_member
	.dwattr $C$DW$1086, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1086, DW_AT_name("rsvd1")
	.dwattr $C$DW$1086, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$1086, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$1086, DW_AT_bit_size(0x0c)
	.dwattr $C$DW$1086, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1086, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1087	.dwtag  DW_TAG_member
	.dwattr $C$DW$1087, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1087, DW_AT_name("rsvd2")
	.dwattr $C$DW$1087, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$1087, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$1087, DW_AT_bit_size(0x10)
	.dwattr $C$DW$1087, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$1087, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$200


$C$DW$T$201	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$201, DW_AT_name("MCDCR_REG")
	.dwattr $C$DW$T$201, DW_AT_byte_size(0x02)
$C$DW$1088	.dwtag  DW_TAG_member
	.dwattr $C$DW$1088, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$1088, DW_AT_name("all")
	.dwattr $C$DW$1088, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$1088, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1088, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1089	.dwtag  DW_TAG_member
	.dwattr $C$DW$1089, DW_AT_type(*$C$DW$T$200)
	.dwattr $C$DW$1089, DW_AT_name("bit")
	.dwattr $C$DW$1089, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$1089, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1089, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$201


$C$DW$T$202	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$202, DW_AT_name("PARTIDH_BITS")
	.dwattr $C$DW$T$202, DW_AT_byte_size(0x02)
$C$DW$1090	.dwtag  DW_TAG_member
	.dwattr $C$DW$1090, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1090, DW_AT_name("rsvd1")
	.dwattr $C$DW$1090, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$1090, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$1090, DW_AT_bit_size(0x08)
	.dwattr $C$DW$1090, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1090, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1091	.dwtag  DW_TAG_member
	.dwattr $C$DW$1091, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1091, DW_AT_name("FAMILY")
	.dwattr $C$DW$1091, DW_AT_TI_symbol_name("_FAMILY")
	.dwattr $C$DW$1091, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$1091, DW_AT_bit_size(0x08)
	.dwattr $C$DW$1091, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1091, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1092	.dwtag  DW_TAG_member
	.dwattr $C$DW$1092, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1092, DW_AT_name("PARTNO")
	.dwattr $C$DW$1092, DW_AT_TI_symbol_name("_PARTNO")
	.dwattr $C$DW$1092, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$1092, DW_AT_bit_size(0x08)
	.dwattr $C$DW$1092, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$1092, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1093	.dwtag  DW_TAG_member
	.dwattr $C$DW$1093, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1093, DW_AT_name("DEVICE_CLASS_ID")
	.dwattr $C$DW$1093, DW_AT_TI_symbol_name("_DEVICE_CLASS_ID")
	.dwattr $C$DW$1093, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$1093, DW_AT_bit_size(0x08)
	.dwattr $C$DW$1093, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$1093, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$202


$C$DW$T$203	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$203, DW_AT_name("PARTIDH_REG")
	.dwattr $C$DW$T$203, DW_AT_byte_size(0x02)
$C$DW$1094	.dwtag  DW_TAG_member
	.dwattr $C$DW$1094, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$1094, DW_AT_name("all")
	.dwattr $C$DW$1094, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$1094, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1094, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1095	.dwtag  DW_TAG_member
	.dwattr $C$DW$1095, DW_AT_type(*$C$DW$T$202)
	.dwattr $C$DW$1095, DW_AT_name("bit")
	.dwattr $C$DW$1095, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$1095, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1095, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$203


$C$DW$T$204	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$204, DW_AT_name("PARTIDL_BITS")
	.dwattr $C$DW$T$204, DW_AT_byte_size(0x02)
$C$DW$1096	.dwtag  DW_TAG_member
	.dwattr $C$DW$1096, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1096, DW_AT_name("rsvd1")
	.dwattr $C$DW$1096, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$1096, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$1096, DW_AT_bit_size(0x03)
	.dwattr $C$DW$1096, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1096, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1097	.dwtag  DW_TAG_member
	.dwattr $C$DW$1097, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1097, DW_AT_name("rsvd2")
	.dwattr $C$DW$1097, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$1097, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$1097, DW_AT_bit_size(0x02)
	.dwattr $C$DW$1097, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1097, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1098	.dwtag  DW_TAG_member
	.dwattr $C$DW$1098, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1098, DW_AT_name("rsvd3")
	.dwattr $C$DW$1098, DW_AT_TI_symbol_name("_rsvd3")
	.dwattr $C$DW$1098, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$1098, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1098, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1098, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1099	.dwtag  DW_TAG_member
	.dwattr $C$DW$1099, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1099, DW_AT_name("QUAL")
	.dwattr $C$DW$1099, DW_AT_TI_symbol_name("_QUAL")
	.dwattr $C$DW$1099, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$1099, DW_AT_bit_size(0x02)
	.dwattr $C$DW$1099, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1099, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1100	.dwtag  DW_TAG_member
	.dwattr $C$DW$1100, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1100, DW_AT_name("PIN_COUNT")
	.dwattr $C$DW$1100, DW_AT_TI_symbol_name("_PIN_COUNT")
	.dwattr $C$DW$1100, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$1100, DW_AT_bit_size(0x03)
	.dwattr $C$DW$1100, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1100, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1101	.dwtag  DW_TAG_member
	.dwattr $C$DW$1101, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1101, DW_AT_name("rsvd4")
	.dwattr $C$DW$1101, DW_AT_TI_symbol_name("_rsvd4")
	.dwattr $C$DW$1101, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$1101, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1101, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1101, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1102	.dwtag  DW_TAG_member
	.dwattr $C$DW$1102, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1102, DW_AT_name("rsvd5")
	.dwattr $C$DW$1102, DW_AT_TI_symbol_name("_rsvd5")
	.dwattr $C$DW$1102, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$1102, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1102, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1102, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1103	.dwtag  DW_TAG_member
	.dwattr $C$DW$1103, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1103, DW_AT_name("INSTASPIN")
	.dwattr $C$DW$1103, DW_AT_TI_symbol_name("_INSTASPIN")
	.dwattr $C$DW$1103, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$1103, DW_AT_bit_size(0x02)
	.dwattr $C$DW$1103, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1103, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1104	.dwtag  DW_TAG_member
	.dwattr $C$DW$1104, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1104, DW_AT_name("rsvd6")
	.dwattr $C$DW$1104, DW_AT_TI_symbol_name("_rsvd6")
	.dwattr $C$DW$1104, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$1104, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1104, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1104, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1105	.dwtag  DW_TAG_member
	.dwattr $C$DW$1105, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1105, DW_AT_name("FLASH_SIZE")
	.dwattr $C$DW$1105, DW_AT_TI_symbol_name("_FLASH_SIZE")
	.dwattr $C$DW$1105, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$1105, DW_AT_bit_size(0x08)
	.dwattr $C$DW$1105, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$1105, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1106	.dwtag  DW_TAG_member
	.dwattr $C$DW$1106, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1106, DW_AT_name("rsvd7")
	.dwattr $C$DW$1106, DW_AT_TI_symbol_name("_rsvd7")
	.dwattr $C$DW$1106, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$1106, DW_AT_bit_size(0x04)
	.dwattr $C$DW$1106, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$1106, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1107	.dwtag  DW_TAG_member
	.dwattr $C$DW$1107, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1107, DW_AT_name("PARTID_FORMAT_REVISION")
	.dwattr $C$DW$1107, DW_AT_TI_symbol_name("_PARTID_FORMAT_REVISION")
	.dwattr $C$DW$1107, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$1107, DW_AT_bit_size(0x04)
	.dwattr $C$DW$1107, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$1107, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$204


$C$DW$T$205	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$205, DW_AT_name("PARTIDL_REG")
	.dwattr $C$DW$T$205, DW_AT_byte_size(0x02)
$C$DW$1108	.dwtag  DW_TAG_member
	.dwattr $C$DW$1108, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$1108, DW_AT_name("all")
	.dwattr $C$DW$1108, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$1108, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1108, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1109	.dwtag  DW_TAG_member
	.dwattr $C$DW$1109, DW_AT_type(*$C$DW$T$204)
	.dwattr $C$DW$1109, DW_AT_name("bit")
	.dwattr $C$DW$1109, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$1109, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1109, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$205


$C$DW$T$206	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$206, DW_AT_name("PCLKCR0_BITS")
	.dwattr $C$DW$T$206, DW_AT_byte_size(0x02)
$C$DW$1110	.dwtag  DW_TAG_member
	.dwattr $C$DW$1110, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1110, DW_AT_name("CLA1")
	.dwattr $C$DW$1110, DW_AT_TI_symbol_name("_CLA1")
	.dwattr $C$DW$1110, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$1110, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1110, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1110, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1111	.dwtag  DW_TAG_member
	.dwattr $C$DW$1111, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1111, DW_AT_name("rsvd1")
	.dwattr $C$DW$1111, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$1111, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$1111, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1111, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1111, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1112	.dwtag  DW_TAG_member
	.dwattr $C$DW$1112, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1112, DW_AT_name("DMA")
	.dwattr $C$DW$1112, DW_AT_TI_symbol_name("_DMA")
	.dwattr $C$DW$1112, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$1112, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1112, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1112, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1113	.dwtag  DW_TAG_member
	.dwattr $C$DW$1113, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1113, DW_AT_name("CPUTIMER0")
	.dwattr $C$DW$1113, DW_AT_TI_symbol_name("_CPUTIMER0")
	.dwattr $C$DW$1113, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$1113, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1113, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1113, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1114	.dwtag  DW_TAG_member
	.dwattr $C$DW$1114, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1114, DW_AT_name("CPUTIMER1")
	.dwattr $C$DW$1114, DW_AT_TI_symbol_name("_CPUTIMER1")
	.dwattr $C$DW$1114, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$1114, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1114, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1114, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1115	.dwtag  DW_TAG_member
	.dwattr $C$DW$1115, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1115, DW_AT_name("CPUTIMER2")
	.dwattr $C$DW$1115, DW_AT_TI_symbol_name("_CPUTIMER2")
	.dwattr $C$DW$1115, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$1115, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1115, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1115, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1116	.dwtag  DW_TAG_member
	.dwattr $C$DW$1116, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1116, DW_AT_name("rsvd2")
	.dwattr $C$DW$1116, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$1116, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$1116, DW_AT_bit_size(0x0a)
	.dwattr $C$DW$1116, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1116, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1117	.dwtag  DW_TAG_member
	.dwattr $C$DW$1117, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1117, DW_AT_name("HRPWM")
	.dwattr $C$DW$1117, DW_AT_TI_symbol_name("_HRPWM")
	.dwattr $C$DW$1117, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$1117, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1117, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$1117, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1118	.dwtag  DW_TAG_member
	.dwattr $C$DW$1118, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1118, DW_AT_name("rsvd3")
	.dwattr $C$DW$1118, DW_AT_TI_symbol_name("_rsvd3")
	.dwattr $C$DW$1118, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$1118, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1118, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$1118, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1119	.dwtag  DW_TAG_member
	.dwattr $C$DW$1119, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1119, DW_AT_name("TBCLKSYNC")
	.dwattr $C$DW$1119, DW_AT_TI_symbol_name("_TBCLKSYNC")
	.dwattr $C$DW$1119, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$1119, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1119, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$1119, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1120	.dwtag  DW_TAG_member
	.dwattr $C$DW$1120, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1120, DW_AT_name("GTBCLKSYNC")
	.dwattr $C$DW$1120, DW_AT_TI_symbol_name("_GTBCLKSYNC")
	.dwattr $C$DW$1120, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$1120, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1120, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$1120, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1121	.dwtag  DW_TAG_member
	.dwattr $C$DW$1121, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1121, DW_AT_name("rsvd4")
	.dwattr $C$DW$1121, DW_AT_TI_symbol_name("_rsvd4")
	.dwattr $C$DW$1121, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$1121, DW_AT_bit_size(0x0c)
	.dwattr $C$DW$1121, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$1121, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$206


$C$DW$T$207	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$207, DW_AT_name("PCLKCR0_REG")
	.dwattr $C$DW$T$207, DW_AT_byte_size(0x02)
$C$DW$1122	.dwtag  DW_TAG_member
	.dwattr $C$DW$1122, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$1122, DW_AT_name("all")
	.dwattr $C$DW$1122, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$1122, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1122, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1123	.dwtag  DW_TAG_member
	.dwattr $C$DW$1123, DW_AT_type(*$C$DW$T$206)
	.dwattr $C$DW$1123, DW_AT_name("bit")
	.dwattr $C$DW$1123, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$1123, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1123, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$207


$C$DW$T$208	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$208, DW_AT_name("PCLKCR10_BITS")
	.dwattr $C$DW$T$208, DW_AT_byte_size(0x02)
$C$DW$1124	.dwtag  DW_TAG_member
	.dwattr $C$DW$1124, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1124, DW_AT_name("CAN_A")
	.dwattr $C$DW$1124, DW_AT_TI_symbol_name("_CAN_A")
	.dwattr $C$DW$1124, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$1124, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1124, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1124, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1125	.dwtag  DW_TAG_member
	.dwattr $C$DW$1125, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1125, DW_AT_name("CAN_B")
	.dwattr $C$DW$1125, DW_AT_TI_symbol_name("_CAN_B")
	.dwattr $C$DW$1125, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$1125, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1125, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1125, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1126	.dwtag  DW_TAG_member
	.dwattr $C$DW$1126, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1126, DW_AT_name("rsvd1")
	.dwattr $C$DW$1126, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$1126, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$1126, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1126, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1126, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1127	.dwtag  DW_TAG_member
	.dwattr $C$DW$1127, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1127, DW_AT_name("rsvd2")
	.dwattr $C$DW$1127, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$1127, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$1127, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1127, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1127, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1128	.dwtag  DW_TAG_member
	.dwattr $C$DW$1128, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1128, DW_AT_name("rsvd3")
	.dwattr $C$DW$1128, DW_AT_TI_symbol_name("_rsvd3")
	.dwattr $C$DW$1128, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$1128, DW_AT_bit_size(0x0c)
	.dwattr $C$DW$1128, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1128, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1129	.dwtag  DW_TAG_member
	.dwattr $C$DW$1129, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1129, DW_AT_name("rsvd4")
	.dwattr $C$DW$1129, DW_AT_TI_symbol_name("_rsvd4")
	.dwattr $C$DW$1129, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$1129, DW_AT_bit_size(0x10)
	.dwattr $C$DW$1129, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$1129, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$208


$C$DW$T$209	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$209, DW_AT_name("PCLKCR10_REG")
	.dwattr $C$DW$T$209, DW_AT_byte_size(0x02)
$C$DW$1130	.dwtag  DW_TAG_member
	.dwattr $C$DW$1130, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$1130, DW_AT_name("all")
	.dwattr $C$DW$1130, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$1130, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1130, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1131	.dwtag  DW_TAG_member
	.dwattr $C$DW$1131, DW_AT_type(*$C$DW$T$208)
	.dwattr $C$DW$1131, DW_AT_name("bit")
	.dwattr $C$DW$1131, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$1131, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1131, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$209


$C$DW$T$210	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$210, DW_AT_name("PCLKCR11_BITS")
	.dwattr $C$DW$T$210, DW_AT_byte_size(0x02)
$C$DW$1132	.dwtag  DW_TAG_member
	.dwattr $C$DW$1132, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1132, DW_AT_name("McBSP_A")
	.dwattr $C$DW$1132, DW_AT_TI_symbol_name("_McBSP_A")
	.dwattr $C$DW$1132, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$1132, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1132, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1132, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1133	.dwtag  DW_TAG_member
	.dwattr $C$DW$1133, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1133, DW_AT_name("McBSP_B")
	.dwattr $C$DW$1133, DW_AT_TI_symbol_name("_McBSP_B")
	.dwattr $C$DW$1133, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$1133, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1133, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1133, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1134	.dwtag  DW_TAG_member
	.dwattr $C$DW$1134, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1134, DW_AT_name("rsvd1")
	.dwattr $C$DW$1134, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$1134, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$1134, DW_AT_bit_size(0x0e)
	.dwattr $C$DW$1134, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1134, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1135	.dwtag  DW_TAG_member
	.dwattr $C$DW$1135, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1135, DW_AT_name("USB_A")
	.dwattr $C$DW$1135, DW_AT_TI_symbol_name("_USB_A")
	.dwattr $C$DW$1135, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$1135, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1135, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$1135, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1136	.dwtag  DW_TAG_member
	.dwattr $C$DW$1136, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1136, DW_AT_name("rsvd2")
	.dwattr $C$DW$1136, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$1136, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$1136, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1136, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$1136, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1137	.dwtag  DW_TAG_member
	.dwattr $C$DW$1137, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1137, DW_AT_name("rsvd3")
	.dwattr $C$DW$1137, DW_AT_TI_symbol_name("_rsvd3")
	.dwattr $C$DW$1137, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$1137, DW_AT_bit_size(0x0e)
	.dwattr $C$DW$1137, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$1137, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$210


$C$DW$T$211	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$211, DW_AT_name("PCLKCR11_REG")
	.dwattr $C$DW$T$211, DW_AT_byte_size(0x02)
$C$DW$1138	.dwtag  DW_TAG_member
	.dwattr $C$DW$1138, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$1138, DW_AT_name("all")
	.dwattr $C$DW$1138, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$1138, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1138, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1139	.dwtag  DW_TAG_member
	.dwattr $C$DW$1139, DW_AT_type(*$C$DW$T$210)
	.dwattr $C$DW$1139, DW_AT_name("bit")
	.dwattr $C$DW$1139, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$1139, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1139, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$211


$C$DW$T$212	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$212, DW_AT_name("PCLKCR12_BITS")
	.dwattr $C$DW$T$212, DW_AT_byte_size(0x02)
$C$DW$1140	.dwtag  DW_TAG_member
	.dwattr $C$DW$1140, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1140, DW_AT_name("uPP_A")
	.dwattr $C$DW$1140, DW_AT_TI_symbol_name("_uPP_A")
	.dwattr $C$DW$1140, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$1140, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1140, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1140, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1141	.dwtag  DW_TAG_member
	.dwattr $C$DW$1141, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1141, DW_AT_name("rsvd1")
	.dwattr $C$DW$1141, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$1141, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$1141, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1141, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1141, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1142	.dwtag  DW_TAG_member
	.dwattr $C$DW$1142, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1142, DW_AT_name("rsvd2")
	.dwattr $C$DW$1142, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$1142, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$1142, DW_AT_bit_size(0x0e)
	.dwattr $C$DW$1142, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1142, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1143	.dwtag  DW_TAG_member
	.dwattr $C$DW$1143, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1143, DW_AT_name("rsvd3")
	.dwattr $C$DW$1143, DW_AT_TI_symbol_name("_rsvd3")
	.dwattr $C$DW$1143, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$1143, DW_AT_bit_size(0x10)
	.dwattr $C$DW$1143, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$1143, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$212


$C$DW$T$213	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$213, DW_AT_name("PCLKCR12_REG")
	.dwattr $C$DW$T$213, DW_AT_byte_size(0x02)
$C$DW$1144	.dwtag  DW_TAG_member
	.dwattr $C$DW$1144, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$1144, DW_AT_name("all")
	.dwattr $C$DW$1144, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$1144, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1144, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1145	.dwtag  DW_TAG_member
	.dwattr $C$DW$1145, DW_AT_type(*$C$DW$T$212)
	.dwattr $C$DW$1145, DW_AT_name("bit")
	.dwattr $C$DW$1145, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$1145, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1145, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$213


$C$DW$T$214	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$214, DW_AT_name("PCLKCR13_BITS")
	.dwattr $C$DW$T$214, DW_AT_byte_size(0x02)
$C$DW$1146	.dwtag  DW_TAG_member
	.dwattr $C$DW$1146, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1146, DW_AT_name("ADC_A")
	.dwattr $C$DW$1146, DW_AT_TI_symbol_name("_ADC_A")
	.dwattr $C$DW$1146, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$1146, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1146, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1146, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1147	.dwtag  DW_TAG_member
	.dwattr $C$DW$1147, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1147, DW_AT_name("ADC_B")
	.dwattr $C$DW$1147, DW_AT_TI_symbol_name("_ADC_B")
	.dwattr $C$DW$1147, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$1147, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1147, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1147, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1148	.dwtag  DW_TAG_member
	.dwattr $C$DW$1148, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1148, DW_AT_name("ADC_C")
	.dwattr $C$DW$1148, DW_AT_TI_symbol_name("_ADC_C")
	.dwattr $C$DW$1148, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$1148, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1148, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1148, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1149	.dwtag  DW_TAG_member
	.dwattr $C$DW$1149, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1149, DW_AT_name("ADC_D")
	.dwattr $C$DW$1149, DW_AT_TI_symbol_name("_ADC_D")
	.dwattr $C$DW$1149, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$1149, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1149, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1149, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1150	.dwtag  DW_TAG_member
	.dwattr $C$DW$1150, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1150, DW_AT_name("rsvd1")
	.dwattr $C$DW$1150, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$1150, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$1150, DW_AT_bit_size(0x0c)
	.dwattr $C$DW$1150, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1150, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1151	.dwtag  DW_TAG_member
	.dwattr $C$DW$1151, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1151, DW_AT_name("rsvd2")
	.dwattr $C$DW$1151, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$1151, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$1151, DW_AT_bit_size(0x10)
	.dwattr $C$DW$1151, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$1151, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$214


$C$DW$T$215	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$215, DW_AT_name("PCLKCR13_REG")
	.dwattr $C$DW$T$215, DW_AT_byte_size(0x02)
$C$DW$1152	.dwtag  DW_TAG_member
	.dwattr $C$DW$1152, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$1152, DW_AT_name("all")
	.dwattr $C$DW$1152, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$1152, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1152, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1153	.dwtag  DW_TAG_member
	.dwattr $C$DW$1153, DW_AT_type(*$C$DW$T$214)
	.dwattr $C$DW$1153, DW_AT_name("bit")
	.dwattr $C$DW$1153, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$1153, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1153, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$215


$C$DW$T$216	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$216, DW_AT_name("PCLKCR14_BITS")
	.dwattr $C$DW$T$216, DW_AT_byte_size(0x02)
$C$DW$1154	.dwtag  DW_TAG_member
	.dwattr $C$DW$1154, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1154, DW_AT_name("CMPSS1")
	.dwattr $C$DW$1154, DW_AT_TI_symbol_name("_CMPSS1")
	.dwattr $C$DW$1154, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$1154, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1154, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1154, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1155	.dwtag  DW_TAG_member
	.dwattr $C$DW$1155, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1155, DW_AT_name("CMPSS2")
	.dwattr $C$DW$1155, DW_AT_TI_symbol_name("_CMPSS2")
	.dwattr $C$DW$1155, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$1155, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1155, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1155, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1156	.dwtag  DW_TAG_member
	.dwattr $C$DW$1156, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1156, DW_AT_name("CMPSS3")
	.dwattr $C$DW$1156, DW_AT_TI_symbol_name("_CMPSS3")
	.dwattr $C$DW$1156, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$1156, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1156, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1156, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1157	.dwtag  DW_TAG_member
	.dwattr $C$DW$1157, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1157, DW_AT_name("CMPSS4")
	.dwattr $C$DW$1157, DW_AT_TI_symbol_name("_CMPSS4")
	.dwattr $C$DW$1157, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$1157, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1157, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1157, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1158	.dwtag  DW_TAG_member
	.dwattr $C$DW$1158, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1158, DW_AT_name("CMPSS5")
	.dwattr $C$DW$1158, DW_AT_TI_symbol_name("_CMPSS5")
	.dwattr $C$DW$1158, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$1158, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1158, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1158, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1159	.dwtag  DW_TAG_member
	.dwattr $C$DW$1159, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1159, DW_AT_name("CMPSS6")
	.dwattr $C$DW$1159, DW_AT_TI_symbol_name("_CMPSS6")
	.dwattr $C$DW$1159, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$1159, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1159, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1159, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1160	.dwtag  DW_TAG_member
	.dwattr $C$DW$1160, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1160, DW_AT_name("CMPSS7")
	.dwattr $C$DW$1160, DW_AT_TI_symbol_name("_CMPSS7")
	.dwattr $C$DW$1160, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$1160, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1160, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1160, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1161	.dwtag  DW_TAG_member
	.dwattr $C$DW$1161, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1161, DW_AT_name("CMPSS8")
	.dwattr $C$DW$1161, DW_AT_TI_symbol_name("_CMPSS8")
	.dwattr $C$DW$1161, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$1161, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1161, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1161, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1162	.dwtag  DW_TAG_member
	.dwattr $C$DW$1162, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1162, DW_AT_name("rsvd1")
	.dwattr $C$DW$1162, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$1162, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$1162, DW_AT_bit_size(0x08)
	.dwattr $C$DW$1162, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1162, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1163	.dwtag  DW_TAG_member
	.dwattr $C$DW$1163, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1163, DW_AT_name("rsvd2")
	.dwattr $C$DW$1163, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$1163, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$1163, DW_AT_bit_size(0x10)
	.dwattr $C$DW$1163, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$1163, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$216


$C$DW$T$217	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$217, DW_AT_name("PCLKCR14_REG")
	.dwattr $C$DW$T$217, DW_AT_byte_size(0x02)
$C$DW$1164	.dwtag  DW_TAG_member
	.dwattr $C$DW$1164, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$1164, DW_AT_name("all")
	.dwattr $C$DW$1164, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$1164, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1164, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1165	.dwtag  DW_TAG_member
	.dwattr $C$DW$1165, DW_AT_type(*$C$DW$T$216)
	.dwattr $C$DW$1165, DW_AT_name("bit")
	.dwattr $C$DW$1165, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$1165, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1165, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$217


$C$DW$T$218	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$218, DW_AT_name("PCLKCR16_BITS")
	.dwattr $C$DW$T$218, DW_AT_byte_size(0x02)
$C$DW$1166	.dwtag  DW_TAG_member
	.dwattr $C$DW$1166, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1166, DW_AT_name("rsvd1")
	.dwattr $C$DW$1166, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$1166, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$1166, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1166, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1166, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1167	.dwtag  DW_TAG_member
	.dwattr $C$DW$1167, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1167, DW_AT_name("rsvd2")
	.dwattr $C$DW$1167, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$1167, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$1167, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1167, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1167, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1168	.dwtag  DW_TAG_member
	.dwattr $C$DW$1168, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1168, DW_AT_name("rsvd3")
	.dwattr $C$DW$1168, DW_AT_TI_symbol_name("_rsvd3")
	.dwattr $C$DW$1168, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$1168, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1168, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1168, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1169	.dwtag  DW_TAG_member
	.dwattr $C$DW$1169, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1169, DW_AT_name("rsvd4")
	.dwattr $C$DW$1169, DW_AT_TI_symbol_name("_rsvd4")
	.dwattr $C$DW$1169, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$1169, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1169, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1169, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1170	.dwtag  DW_TAG_member
	.dwattr $C$DW$1170, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1170, DW_AT_name("rsvd5")
	.dwattr $C$DW$1170, DW_AT_TI_symbol_name("_rsvd5")
	.dwattr $C$DW$1170, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$1170, DW_AT_bit_size(0x0c)
	.dwattr $C$DW$1170, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1170, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1171	.dwtag  DW_TAG_member
	.dwattr $C$DW$1171, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1171, DW_AT_name("DAC_A")
	.dwattr $C$DW$1171, DW_AT_TI_symbol_name("_DAC_A")
	.dwattr $C$DW$1171, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$1171, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1171, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$1171, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1172	.dwtag  DW_TAG_member
	.dwattr $C$DW$1172, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1172, DW_AT_name("DAC_B")
	.dwattr $C$DW$1172, DW_AT_TI_symbol_name("_DAC_B")
	.dwattr $C$DW$1172, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$1172, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1172, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$1172, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1173	.dwtag  DW_TAG_member
	.dwattr $C$DW$1173, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1173, DW_AT_name("DAC_C")
	.dwattr $C$DW$1173, DW_AT_TI_symbol_name("_DAC_C")
	.dwattr $C$DW$1173, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$1173, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1173, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$1173, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1174	.dwtag  DW_TAG_member
	.dwattr $C$DW$1174, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1174, DW_AT_name("rsvd6")
	.dwattr $C$DW$1174, DW_AT_TI_symbol_name("_rsvd6")
	.dwattr $C$DW$1174, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$1174, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1174, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$1174, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1175	.dwtag  DW_TAG_member
	.dwattr $C$DW$1175, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1175, DW_AT_name("rsvd7")
	.dwattr $C$DW$1175, DW_AT_TI_symbol_name("_rsvd7")
	.dwattr $C$DW$1175, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$1175, DW_AT_bit_size(0x0c)
	.dwattr $C$DW$1175, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$1175, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$218


$C$DW$T$219	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$219, DW_AT_name("PCLKCR16_REG")
	.dwattr $C$DW$T$219, DW_AT_byte_size(0x02)
$C$DW$1176	.dwtag  DW_TAG_member
	.dwattr $C$DW$1176, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$1176, DW_AT_name("all")
	.dwattr $C$DW$1176, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$1176, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1176, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1177	.dwtag  DW_TAG_member
	.dwattr $C$DW$1177, DW_AT_type(*$C$DW$T$218)
	.dwattr $C$DW$1177, DW_AT_name("bit")
	.dwattr $C$DW$1177, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$1177, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1177, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$219


$C$DW$T$220	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$220, DW_AT_name("PCLKCR1_BITS")
	.dwattr $C$DW$T$220, DW_AT_byte_size(0x02)
$C$DW$1178	.dwtag  DW_TAG_member
	.dwattr $C$DW$1178, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1178, DW_AT_name("EMIF1")
	.dwattr $C$DW$1178, DW_AT_TI_symbol_name("_EMIF1")
	.dwattr $C$DW$1178, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$1178, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1178, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1178, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1179	.dwtag  DW_TAG_member
	.dwattr $C$DW$1179, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1179, DW_AT_name("EMIF2")
	.dwattr $C$DW$1179, DW_AT_TI_symbol_name("_EMIF2")
	.dwattr $C$DW$1179, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$1179, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1179, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1179, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1180	.dwtag  DW_TAG_member
	.dwattr $C$DW$1180, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1180, DW_AT_name("rsvd1")
	.dwattr $C$DW$1180, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$1180, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$1180, DW_AT_bit_size(0x0e)
	.dwattr $C$DW$1180, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1180, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1181	.dwtag  DW_TAG_member
	.dwattr $C$DW$1181, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1181, DW_AT_name("rsvd2")
	.dwattr $C$DW$1181, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$1181, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$1181, DW_AT_bit_size(0x10)
	.dwattr $C$DW$1181, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$1181, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$220


$C$DW$T$221	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$221, DW_AT_name("PCLKCR1_REG")
	.dwattr $C$DW$T$221, DW_AT_byte_size(0x02)
$C$DW$1182	.dwtag  DW_TAG_member
	.dwattr $C$DW$1182, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$1182, DW_AT_name("all")
	.dwattr $C$DW$1182, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$1182, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1182, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1183	.dwtag  DW_TAG_member
	.dwattr $C$DW$1183, DW_AT_type(*$C$DW$T$220)
	.dwattr $C$DW$1183, DW_AT_name("bit")
	.dwattr $C$DW$1183, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$1183, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1183, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$221


$C$DW$T$222	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$222, DW_AT_name("PCLKCR2_BITS")
	.dwattr $C$DW$T$222, DW_AT_byte_size(0x02)
$C$DW$1184	.dwtag  DW_TAG_member
	.dwattr $C$DW$1184, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1184, DW_AT_name("EPWM1")
	.dwattr $C$DW$1184, DW_AT_TI_symbol_name("_EPWM1")
	.dwattr $C$DW$1184, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$1184, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1184, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1184, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1185	.dwtag  DW_TAG_member
	.dwattr $C$DW$1185, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1185, DW_AT_name("EPWM2")
	.dwattr $C$DW$1185, DW_AT_TI_symbol_name("_EPWM2")
	.dwattr $C$DW$1185, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$1185, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1185, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1185, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1186	.dwtag  DW_TAG_member
	.dwattr $C$DW$1186, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1186, DW_AT_name("EPWM3")
	.dwattr $C$DW$1186, DW_AT_TI_symbol_name("_EPWM3")
	.dwattr $C$DW$1186, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$1186, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1186, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1186, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1187	.dwtag  DW_TAG_member
	.dwattr $C$DW$1187, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1187, DW_AT_name("EPWM4")
	.dwattr $C$DW$1187, DW_AT_TI_symbol_name("_EPWM4")
	.dwattr $C$DW$1187, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$1187, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1187, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1187, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1188	.dwtag  DW_TAG_member
	.dwattr $C$DW$1188, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1188, DW_AT_name("EPWM5")
	.dwattr $C$DW$1188, DW_AT_TI_symbol_name("_EPWM5")
	.dwattr $C$DW$1188, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$1188, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1188, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1188, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1189	.dwtag  DW_TAG_member
	.dwattr $C$DW$1189, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1189, DW_AT_name("EPWM6")
	.dwattr $C$DW$1189, DW_AT_TI_symbol_name("_EPWM6")
	.dwattr $C$DW$1189, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$1189, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1189, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1189, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1190	.dwtag  DW_TAG_member
	.dwattr $C$DW$1190, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1190, DW_AT_name("EPWM7")
	.dwattr $C$DW$1190, DW_AT_TI_symbol_name("_EPWM7")
	.dwattr $C$DW$1190, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$1190, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1190, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1190, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1191	.dwtag  DW_TAG_member
	.dwattr $C$DW$1191, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1191, DW_AT_name("EPWM8")
	.dwattr $C$DW$1191, DW_AT_TI_symbol_name("_EPWM8")
	.dwattr $C$DW$1191, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$1191, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1191, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1191, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1192	.dwtag  DW_TAG_member
	.dwattr $C$DW$1192, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1192, DW_AT_name("EPWM9")
	.dwattr $C$DW$1192, DW_AT_TI_symbol_name("_EPWM9")
	.dwattr $C$DW$1192, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$1192, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1192, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1192, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1193	.dwtag  DW_TAG_member
	.dwattr $C$DW$1193, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1193, DW_AT_name("EPWM10")
	.dwattr $C$DW$1193, DW_AT_TI_symbol_name("_EPWM10")
	.dwattr $C$DW$1193, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$1193, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1193, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1193, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1194	.dwtag  DW_TAG_member
	.dwattr $C$DW$1194, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1194, DW_AT_name("EPWM11")
	.dwattr $C$DW$1194, DW_AT_TI_symbol_name("_EPWM11")
	.dwattr $C$DW$1194, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$1194, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1194, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1194, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1195	.dwtag  DW_TAG_member
	.dwattr $C$DW$1195, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1195, DW_AT_name("EPWM12")
	.dwattr $C$DW$1195, DW_AT_TI_symbol_name("_EPWM12")
	.dwattr $C$DW$1195, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$1195, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1195, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1195, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1196	.dwtag  DW_TAG_member
	.dwattr $C$DW$1196, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1196, DW_AT_name("rsvd1")
	.dwattr $C$DW$1196, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$1196, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$1196, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1196, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1196, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1197	.dwtag  DW_TAG_member
	.dwattr $C$DW$1197, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1197, DW_AT_name("rsvd2")
	.dwattr $C$DW$1197, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$1197, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$1197, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1197, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1197, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1198	.dwtag  DW_TAG_member
	.dwattr $C$DW$1198, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1198, DW_AT_name("rsvd3")
	.dwattr $C$DW$1198, DW_AT_TI_symbol_name("_rsvd3")
	.dwattr $C$DW$1198, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$1198, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1198, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1198, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1199	.dwtag  DW_TAG_member
	.dwattr $C$DW$1199, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1199, DW_AT_name("rsvd4")
	.dwattr $C$DW$1199, DW_AT_TI_symbol_name("_rsvd4")
	.dwattr $C$DW$1199, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$1199, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1199, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1199, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1200	.dwtag  DW_TAG_member
	.dwattr $C$DW$1200, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1200, DW_AT_name("rsvd5")
	.dwattr $C$DW$1200, DW_AT_TI_symbol_name("_rsvd5")
	.dwattr $C$DW$1200, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$1200, DW_AT_bit_size(0x10)
	.dwattr $C$DW$1200, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$1200, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$222


$C$DW$T$223	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$223, DW_AT_name("PCLKCR2_REG")
	.dwattr $C$DW$T$223, DW_AT_byte_size(0x02)
$C$DW$1201	.dwtag  DW_TAG_member
	.dwattr $C$DW$1201, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$1201, DW_AT_name("all")
	.dwattr $C$DW$1201, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$1201, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1201, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1202	.dwtag  DW_TAG_member
	.dwattr $C$DW$1202, DW_AT_type(*$C$DW$T$222)
	.dwattr $C$DW$1202, DW_AT_name("bit")
	.dwattr $C$DW$1202, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$1202, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1202, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$223


$C$DW$T$224	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$224, DW_AT_name("PCLKCR3_BITS")
	.dwattr $C$DW$T$224, DW_AT_byte_size(0x02)
$C$DW$1203	.dwtag  DW_TAG_member
	.dwattr $C$DW$1203, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1203, DW_AT_name("ECAP1")
	.dwattr $C$DW$1203, DW_AT_TI_symbol_name("_ECAP1")
	.dwattr $C$DW$1203, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$1203, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1203, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1203, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1204	.dwtag  DW_TAG_member
	.dwattr $C$DW$1204, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1204, DW_AT_name("ECAP2")
	.dwattr $C$DW$1204, DW_AT_TI_symbol_name("_ECAP2")
	.dwattr $C$DW$1204, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$1204, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1204, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1204, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1205	.dwtag  DW_TAG_member
	.dwattr $C$DW$1205, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1205, DW_AT_name("ECAP3")
	.dwattr $C$DW$1205, DW_AT_TI_symbol_name("_ECAP3")
	.dwattr $C$DW$1205, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$1205, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1205, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1205, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1206	.dwtag  DW_TAG_member
	.dwattr $C$DW$1206, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1206, DW_AT_name("ECAP4")
	.dwattr $C$DW$1206, DW_AT_TI_symbol_name("_ECAP4")
	.dwattr $C$DW$1206, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$1206, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1206, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1206, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1207	.dwtag  DW_TAG_member
	.dwattr $C$DW$1207, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1207, DW_AT_name("ECAP5")
	.dwattr $C$DW$1207, DW_AT_TI_symbol_name("_ECAP5")
	.dwattr $C$DW$1207, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$1207, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1207, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1207, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1208	.dwtag  DW_TAG_member
	.dwattr $C$DW$1208, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1208, DW_AT_name("ECAP6")
	.dwattr $C$DW$1208, DW_AT_TI_symbol_name("_ECAP6")
	.dwattr $C$DW$1208, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$1208, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1208, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1208, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1209	.dwtag  DW_TAG_member
	.dwattr $C$DW$1209, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1209, DW_AT_name("rsvd1")
	.dwattr $C$DW$1209, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$1209, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$1209, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1209, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1209, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1210	.dwtag  DW_TAG_member
	.dwattr $C$DW$1210, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1210, DW_AT_name("rsvd2")
	.dwattr $C$DW$1210, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$1210, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$1210, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1210, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1210, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1211	.dwtag  DW_TAG_member
	.dwattr $C$DW$1211, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1211, DW_AT_name("rsvd3")
	.dwattr $C$DW$1211, DW_AT_TI_symbol_name("_rsvd3")
	.dwattr $C$DW$1211, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$1211, DW_AT_bit_size(0x08)
	.dwattr $C$DW$1211, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1211, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1212	.dwtag  DW_TAG_member
	.dwattr $C$DW$1212, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1212, DW_AT_name("rsvd4")
	.dwattr $C$DW$1212, DW_AT_TI_symbol_name("_rsvd4")
	.dwattr $C$DW$1212, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$1212, DW_AT_bit_size(0x10)
	.dwattr $C$DW$1212, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$1212, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$224


$C$DW$T$225	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$225, DW_AT_name("PCLKCR3_REG")
	.dwattr $C$DW$T$225, DW_AT_byte_size(0x02)
$C$DW$1213	.dwtag  DW_TAG_member
	.dwattr $C$DW$1213, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$1213, DW_AT_name("all")
	.dwattr $C$DW$1213, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$1213, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1213, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1214	.dwtag  DW_TAG_member
	.dwattr $C$DW$1214, DW_AT_type(*$C$DW$T$224)
	.dwattr $C$DW$1214, DW_AT_name("bit")
	.dwattr $C$DW$1214, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$1214, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1214, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$225


$C$DW$T$226	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$226, DW_AT_name("PCLKCR4_BITS")
	.dwattr $C$DW$T$226, DW_AT_byte_size(0x02)
$C$DW$1215	.dwtag  DW_TAG_member
	.dwattr $C$DW$1215, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1215, DW_AT_name("EQEP1")
	.dwattr $C$DW$1215, DW_AT_TI_symbol_name("_EQEP1")
	.dwattr $C$DW$1215, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$1215, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1215, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1215, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1216	.dwtag  DW_TAG_member
	.dwattr $C$DW$1216, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1216, DW_AT_name("EQEP2")
	.dwattr $C$DW$1216, DW_AT_TI_symbol_name("_EQEP2")
	.dwattr $C$DW$1216, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$1216, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1216, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1216, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1217	.dwtag  DW_TAG_member
	.dwattr $C$DW$1217, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1217, DW_AT_name("EQEP3")
	.dwattr $C$DW$1217, DW_AT_TI_symbol_name("_EQEP3")
	.dwattr $C$DW$1217, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$1217, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1217, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1217, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1218	.dwtag  DW_TAG_member
	.dwattr $C$DW$1218, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1218, DW_AT_name("rsvd1")
	.dwattr $C$DW$1218, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$1218, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$1218, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1218, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1218, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1219	.dwtag  DW_TAG_member
	.dwattr $C$DW$1219, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1219, DW_AT_name("rsvd2")
	.dwattr $C$DW$1219, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$1219, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$1219, DW_AT_bit_size(0x0c)
	.dwattr $C$DW$1219, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1219, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1220	.dwtag  DW_TAG_member
	.dwattr $C$DW$1220, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1220, DW_AT_name("rsvd3")
	.dwattr $C$DW$1220, DW_AT_TI_symbol_name("_rsvd3")
	.dwattr $C$DW$1220, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$1220, DW_AT_bit_size(0x10)
	.dwattr $C$DW$1220, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$1220, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$226


$C$DW$T$227	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$227, DW_AT_name("PCLKCR4_REG")
	.dwattr $C$DW$T$227, DW_AT_byte_size(0x02)
$C$DW$1221	.dwtag  DW_TAG_member
	.dwattr $C$DW$1221, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$1221, DW_AT_name("all")
	.dwattr $C$DW$1221, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$1221, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1221, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1222	.dwtag  DW_TAG_member
	.dwattr $C$DW$1222, DW_AT_type(*$C$DW$T$226)
	.dwattr $C$DW$1222, DW_AT_name("bit")
	.dwattr $C$DW$1222, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$1222, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1222, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$227


$C$DW$T$228	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$228, DW_AT_name("PCLKCR6_BITS")
	.dwattr $C$DW$T$228, DW_AT_byte_size(0x02)
$C$DW$1223	.dwtag  DW_TAG_member
	.dwattr $C$DW$1223, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1223, DW_AT_name("SD1")
	.dwattr $C$DW$1223, DW_AT_TI_symbol_name("_SD1")
	.dwattr $C$DW$1223, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$1223, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1223, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1223, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1224	.dwtag  DW_TAG_member
	.dwattr $C$DW$1224, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1224, DW_AT_name("SD2")
	.dwattr $C$DW$1224, DW_AT_TI_symbol_name("_SD2")
	.dwattr $C$DW$1224, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$1224, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1224, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1224, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1225	.dwtag  DW_TAG_member
	.dwattr $C$DW$1225, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1225, DW_AT_name("rsvd1")
	.dwattr $C$DW$1225, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$1225, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$1225, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1225, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1225, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1226	.dwtag  DW_TAG_member
	.dwattr $C$DW$1226, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1226, DW_AT_name("rsvd2")
	.dwattr $C$DW$1226, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$1226, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$1226, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1226, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1226, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1227	.dwtag  DW_TAG_member
	.dwattr $C$DW$1227, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1227, DW_AT_name("rsvd3")
	.dwattr $C$DW$1227, DW_AT_TI_symbol_name("_rsvd3")
	.dwattr $C$DW$1227, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$1227, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1227, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1227, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1228	.dwtag  DW_TAG_member
	.dwattr $C$DW$1228, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1228, DW_AT_name("rsvd4")
	.dwattr $C$DW$1228, DW_AT_TI_symbol_name("_rsvd4")
	.dwattr $C$DW$1228, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$1228, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1228, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1228, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1229	.dwtag  DW_TAG_member
	.dwattr $C$DW$1229, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1229, DW_AT_name("rsvd5")
	.dwattr $C$DW$1229, DW_AT_TI_symbol_name("_rsvd5")
	.dwattr $C$DW$1229, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$1229, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1229, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1229, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1230	.dwtag  DW_TAG_member
	.dwattr $C$DW$1230, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1230, DW_AT_name("rsvd6")
	.dwattr $C$DW$1230, DW_AT_TI_symbol_name("_rsvd6")
	.dwattr $C$DW$1230, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$1230, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1230, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1230, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1231	.dwtag  DW_TAG_member
	.dwattr $C$DW$1231, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1231, DW_AT_name("rsvd7")
	.dwattr $C$DW$1231, DW_AT_TI_symbol_name("_rsvd7")
	.dwattr $C$DW$1231, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$1231, DW_AT_bit_size(0x08)
	.dwattr $C$DW$1231, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1231, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1232	.dwtag  DW_TAG_member
	.dwattr $C$DW$1232, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1232, DW_AT_name("rsvd8")
	.dwattr $C$DW$1232, DW_AT_TI_symbol_name("_rsvd8")
	.dwattr $C$DW$1232, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$1232, DW_AT_bit_size(0x10)
	.dwattr $C$DW$1232, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$1232, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$228


$C$DW$T$229	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$229, DW_AT_name("PCLKCR6_REG")
	.dwattr $C$DW$T$229, DW_AT_byte_size(0x02)
$C$DW$1233	.dwtag  DW_TAG_member
	.dwattr $C$DW$1233, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$1233, DW_AT_name("all")
	.dwattr $C$DW$1233, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$1233, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1233, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1234	.dwtag  DW_TAG_member
	.dwattr $C$DW$1234, DW_AT_type(*$C$DW$T$228)
	.dwattr $C$DW$1234, DW_AT_name("bit")
	.dwattr $C$DW$1234, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$1234, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1234, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$229


$C$DW$T$230	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$230, DW_AT_name("PCLKCR7_BITS")
	.dwattr $C$DW$T$230, DW_AT_byte_size(0x02)
$C$DW$1235	.dwtag  DW_TAG_member
	.dwattr $C$DW$1235, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1235, DW_AT_name("SCI_A")
	.dwattr $C$DW$1235, DW_AT_TI_symbol_name("_SCI_A")
	.dwattr $C$DW$1235, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$1235, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1235, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1235, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1236	.dwtag  DW_TAG_member
	.dwattr $C$DW$1236, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1236, DW_AT_name("SCI_B")
	.dwattr $C$DW$1236, DW_AT_TI_symbol_name("_SCI_B")
	.dwattr $C$DW$1236, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$1236, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1236, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1236, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1237	.dwtag  DW_TAG_member
	.dwattr $C$DW$1237, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1237, DW_AT_name("SCI_C")
	.dwattr $C$DW$1237, DW_AT_TI_symbol_name("_SCI_C")
	.dwattr $C$DW$1237, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$1237, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1237, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1237, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1238	.dwtag  DW_TAG_member
	.dwattr $C$DW$1238, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1238, DW_AT_name("SCI_D")
	.dwattr $C$DW$1238, DW_AT_TI_symbol_name("_SCI_D")
	.dwattr $C$DW$1238, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$1238, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1238, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1238, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1239	.dwtag  DW_TAG_member
	.dwattr $C$DW$1239, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1239, DW_AT_name("rsvd1")
	.dwattr $C$DW$1239, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$1239, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$1239, DW_AT_bit_size(0x0c)
	.dwattr $C$DW$1239, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1239, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1240	.dwtag  DW_TAG_member
	.dwattr $C$DW$1240, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1240, DW_AT_name("rsvd2")
	.dwattr $C$DW$1240, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$1240, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$1240, DW_AT_bit_size(0x10)
	.dwattr $C$DW$1240, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$1240, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$230


$C$DW$T$231	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$231, DW_AT_name("PCLKCR7_REG")
	.dwattr $C$DW$T$231, DW_AT_byte_size(0x02)
$C$DW$1241	.dwtag  DW_TAG_member
	.dwattr $C$DW$1241, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$1241, DW_AT_name("all")
	.dwattr $C$DW$1241, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$1241, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1241, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1242	.dwtag  DW_TAG_member
	.dwattr $C$DW$1242, DW_AT_type(*$C$DW$T$230)
	.dwattr $C$DW$1242, DW_AT_name("bit")
	.dwattr $C$DW$1242, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$1242, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1242, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$231


$C$DW$T$232	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$232, DW_AT_name("PCLKCR8_BITS")
	.dwattr $C$DW$T$232, DW_AT_byte_size(0x02)
$C$DW$1243	.dwtag  DW_TAG_member
	.dwattr $C$DW$1243, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1243, DW_AT_name("SPI_A")
	.dwattr $C$DW$1243, DW_AT_TI_symbol_name("_SPI_A")
	.dwattr $C$DW$1243, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$1243, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1243, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1243, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1244	.dwtag  DW_TAG_member
	.dwattr $C$DW$1244, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1244, DW_AT_name("SPI_B")
	.dwattr $C$DW$1244, DW_AT_TI_symbol_name("_SPI_B")
	.dwattr $C$DW$1244, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$1244, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1244, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1244, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1245	.dwtag  DW_TAG_member
	.dwattr $C$DW$1245, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1245, DW_AT_name("SPI_C")
	.dwattr $C$DW$1245, DW_AT_TI_symbol_name("_SPI_C")
	.dwattr $C$DW$1245, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$1245, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1245, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1245, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1246	.dwtag  DW_TAG_member
	.dwattr $C$DW$1246, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1246, DW_AT_name("rsvd1")
	.dwattr $C$DW$1246, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$1246, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$1246, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1246, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1246, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1247	.dwtag  DW_TAG_member
	.dwattr $C$DW$1247, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1247, DW_AT_name("rsvd2")
	.dwattr $C$DW$1247, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$1247, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$1247, DW_AT_bit_size(0x0c)
	.dwattr $C$DW$1247, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1247, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1248	.dwtag  DW_TAG_member
	.dwattr $C$DW$1248, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1248, DW_AT_name("rsvd3")
	.dwattr $C$DW$1248, DW_AT_TI_symbol_name("_rsvd3")
	.dwattr $C$DW$1248, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$1248, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1248, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$1248, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1249	.dwtag  DW_TAG_member
	.dwattr $C$DW$1249, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1249, DW_AT_name("rsvd4")
	.dwattr $C$DW$1249, DW_AT_TI_symbol_name("_rsvd4")
	.dwattr $C$DW$1249, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$1249, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1249, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$1249, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1250	.dwtag  DW_TAG_member
	.dwattr $C$DW$1250, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1250, DW_AT_name("rsvd5")
	.dwattr $C$DW$1250, DW_AT_TI_symbol_name("_rsvd5")
	.dwattr $C$DW$1250, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$1250, DW_AT_bit_size(0x0e)
	.dwattr $C$DW$1250, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$1250, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$232


$C$DW$T$233	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$233, DW_AT_name("PCLKCR8_REG")
	.dwattr $C$DW$T$233, DW_AT_byte_size(0x02)
$C$DW$1251	.dwtag  DW_TAG_member
	.dwattr $C$DW$1251, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$1251, DW_AT_name("all")
	.dwattr $C$DW$1251, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$1251, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1251, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1252	.dwtag  DW_TAG_member
	.dwattr $C$DW$1252, DW_AT_type(*$C$DW$T$232)
	.dwattr $C$DW$1252, DW_AT_name("bit")
	.dwattr $C$DW$1252, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$1252, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1252, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$233


$C$DW$T$234	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$234, DW_AT_name("PCLKCR9_BITS")
	.dwattr $C$DW$T$234, DW_AT_byte_size(0x02)
$C$DW$1253	.dwtag  DW_TAG_member
	.dwattr $C$DW$1253, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1253, DW_AT_name("I2C_A")
	.dwattr $C$DW$1253, DW_AT_TI_symbol_name("_I2C_A")
	.dwattr $C$DW$1253, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$1253, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1253, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1253, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1254	.dwtag  DW_TAG_member
	.dwattr $C$DW$1254, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1254, DW_AT_name("I2C_B")
	.dwattr $C$DW$1254, DW_AT_TI_symbol_name("_I2C_B")
	.dwattr $C$DW$1254, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$1254, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1254, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1254, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1255	.dwtag  DW_TAG_member
	.dwattr $C$DW$1255, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1255, DW_AT_name("rsvd1")
	.dwattr $C$DW$1255, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$1255, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$1255, DW_AT_bit_size(0x0e)
	.dwattr $C$DW$1255, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1255, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1256	.dwtag  DW_TAG_member
	.dwattr $C$DW$1256, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1256, DW_AT_name("rsvd2")
	.dwattr $C$DW$1256, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$1256, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$1256, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1256, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$1256, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1257	.dwtag  DW_TAG_member
	.dwattr $C$DW$1257, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1257, DW_AT_name("rsvd3")
	.dwattr $C$DW$1257, DW_AT_TI_symbol_name("_rsvd3")
	.dwattr $C$DW$1257, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$1257, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1257, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$1257, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1258	.dwtag  DW_TAG_member
	.dwattr $C$DW$1258, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1258, DW_AT_name("rsvd4")
	.dwattr $C$DW$1258, DW_AT_TI_symbol_name("_rsvd4")
	.dwattr $C$DW$1258, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$1258, DW_AT_bit_size(0x0e)
	.dwattr $C$DW$1258, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$1258, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$234


$C$DW$T$235	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$235, DW_AT_name("PCLKCR9_REG")
	.dwattr $C$DW$T$235, DW_AT_byte_size(0x02)
$C$DW$1259	.dwtag  DW_TAG_member
	.dwattr $C$DW$1259, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$1259, DW_AT_name("all")
	.dwattr $C$DW$1259, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$1259, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1259, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1260	.dwtag  DW_TAG_member
	.dwattr $C$DW$1260, DW_AT_type(*$C$DW$T$234)
	.dwattr $C$DW$1260, DW_AT_name("bit")
	.dwattr $C$DW$1260, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$1260, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1260, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$235


$C$DW$T$236	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$236, DW_AT_name("PERCLKDIVSEL_BITS")
	.dwattr $C$DW$T$236, DW_AT_byte_size(0x02)
$C$DW$1261	.dwtag  DW_TAG_member
	.dwattr $C$DW$1261, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1261, DW_AT_name("EPWMCLKDIV")
	.dwattr $C$DW$1261, DW_AT_TI_symbol_name("_EPWMCLKDIV")
	.dwattr $C$DW$1261, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$1261, DW_AT_bit_size(0x02)
	.dwattr $C$DW$1261, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1261, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1262	.dwtag  DW_TAG_member
	.dwattr $C$DW$1262, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1262, DW_AT_name("rsvd1")
	.dwattr $C$DW$1262, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$1262, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$1262, DW_AT_bit_size(0x02)
	.dwattr $C$DW$1262, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1262, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1263	.dwtag  DW_TAG_member
	.dwattr $C$DW$1263, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1263, DW_AT_name("EMIF1CLKDIV")
	.dwattr $C$DW$1263, DW_AT_TI_symbol_name("_EMIF1CLKDIV")
	.dwattr $C$DW$1263, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$1263, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1263, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1263, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1264	.dwtag  DW_TAG_member
	.dwattr $C$DW$1264, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1264, DW_AT_name("rsvd2")
	.dwattr $C$DW$1264, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$1264, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$1264, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1264, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1264, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1265	.dwtag  DW_TAG_member
	.dwattr $C$DW$1265, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1265, DW_AT_name("EMIF2CLKDIV")
	.dwattr $C$DW$1265, DW_AT_TI_symbol_name("_EMIF2CLKDIV")
	.dwattr $C$DW$1265, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$1265, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1265, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1265, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1266	.dwtag  DW_TAG_member
	.dwattr $C$DW$1266, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1266, DW_AT_name("rsvd3")
	.dwattr $C$DW$1266, DW_AT_TI_symbol_name("_rsvd3")
	.dwattr $C$DW$1266, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$1266, DW_AT_bit_size(0x09)
	.dwattr $C$DW$1266, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1266, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1267	.dwtag  DW_TAG_member
	.dwattr $C$DW$1267, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1267, DW_AT_name("rsvd4")
	.dwattr $C$DW$1267, DW_AT_TI_symbol_name("_rsvd4")
	.dwattr $C$DW$1267, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$1267, DW_AT_bit_size(0x10)
	.dwattr $C$DW$1267, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$1267, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$236


$C$DW$T$237	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$237, DW_AT_name("PERCLKDIVSEL_REG")
	.dwattr $C$DW$T$237, DW_AT_byte_size(0x02)
$C$DW$1268	.dwtag  DW_TAG_member
	.dwattr $C$DW$1268, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$1268, DW_AT_name("all")
	.dwattr $C$DW$1268, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$1268, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1268, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1269	.dwtag  DW_TAG_member
	.dwattr $C$DW$1269, DW_AT_type(*$C$DW$T$236)
	.dwattr $C$DW$1269, DW_AT_name("bit")
	.dwattr $C$DW$1269, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$1269, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1269, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$237


$C$DW$T$238	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$238, DW_AT_name("PERCNF1_BITS")
	.dwattr $C$DW$T$238, DW_AT_byte_size(0x02)
$C$DW$1270	.dwtag  DW_TAG_member
	.dwattr $C$DW$1270, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1270, DW_AT_name("ADC_A_MODE")
	.dwattr $C$DW$1270, DW_AT_TI_symbol_name("_ADC_A_MODE")
	.dwattr $C$DW$1270, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$1270, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1270, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1270, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1271	.dwtag  DW_TAG_member
	.dwattr $C$DW$1271, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1271, DW_AT_name("ADC_B_MODE")
	.dwattr $C$DW$1271, DW_AT_TI_symbol_name("_ADC_B_MODE")
	.dwattr $C$DW$1271, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$1271, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1271, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1271, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1272	.dwtag  DW_TAG_member
	.dwattr $C$DW$1272, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1272, DW_AT_name("ADC_C_MODE")
	.dwattr $C$DW$1272, DW_AT_TI_symbol_name("_ADC_C_MODE")
	.dwattr $C$DW$1272, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$1272, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1272, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1272, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1273	.dwtag  DW_TAG_member
	.dwattr $C$DW$1273, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1273, DW_AT_name("ADC_D_MODE")
	.dwattr $C$DW$1273, DW_AT_TI_symbol_name("_ADC_D_MODE")
	.dwattr $C$DW$1273, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$1273, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1273, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1273, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1274	.dwtag  DW_TAG_member
	.dwattr $C$DW$1274, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1274, DW_AT_name("rsvd1")
	.dwattr $C$DW$1274, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$1274, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$1274, DW_AT_bit_size(0x0c)
	.dwattr $C$DW$1274, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1274, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1275	.dwtag  DW_TAG_member
	.dwattr $C$DW$1275, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1275, DW_AT_name("USB_A_PHY")
	.dwattr $C$DW$1275, DW_AT_TI_symbol_name("_USB_A_PHY")
	.dwattr $C$DW$1275, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$1275, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1275, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$1275, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1276	.dwtag  DW_TAG_member
	.dwattr $C$DW$1276, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1276, DW_AT_name("rsvd2")
	.dwattr $C$DW$1276, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$1276, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$1276, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1276, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$1276, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1277	.dwtag  DW_TAG_member
	.dwattr $C$DW$1277, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1277, DW_AT_name("rsvd3")
	.dwattr $C$DW$1277, DW_AT_TI_symbol_name("_rsvd3")
	.dwattr $C$DW$1277, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$1277, DW_AT_bit_size(0x0e)
	.dwattr $C$DW$1277, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$1277, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$238


$C$DW$T$239	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$239, DW_AT_name("PERCNF1_REG")
	.dwattr $C$DW$T$239, DW_AT_byte_size(0x02)
$C$DW$1278	.dwtag  DW_TAG_member
	.dwattr $C$DW$1278, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$1278, DW_AT_name("all")
	.dwattr $C$DW$1278, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$1278, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1278, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1279	.dwtag  DW_TAG_member
	.dwattr $C$DW$1279, DW_AT_type(*$C$DW$T$238)
	.dwattr $C$DW$1279, DW_AT_name("bit")
	.dwattr $C$DW$1279, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$1279, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1279, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$239


$C$DW$T$240	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$240, DW_AT_name("PIEVERRADDR_BITS")
	.dwattr $C$DW$T$240, DW_AT_byte_size(0x02)
$C$DW$1280	.dwtag  DW_TAG_member
	.dwattr $C$DW$1280, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$1280, DW_AT_name("ADDR")
	.dwattr $C$DW$1280, DW_AT_TI_symbol_name("_ADDR")
	.dwattr $C$DW$1280, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$1280, DW_AT_bit_size(0x16)
	.dwattr $C$DW$1280, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1280, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1281	.dwtag  DW_TAG_member
	.dwattr $C$DW$1281, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1281, DW_AT_name("rsvd1")
	.dwattr $C$DW$1281, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$1281, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$1281, DW_AT_bit_size(0x0a)
	.dwattr $C$DW$1281, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$1281, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$240


$C$DW$T$241	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$241, DW_AT_name("PIEVERRADDR_REG")
	.dwattr $C$DW$T$241, DW_AT_byte_size(0x02)
$C$DW$1282	.dwtag  DW_TAG_member
	.dwattr $C$DW$1282, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$1282, DW_AT_name("all")
	.dwattr $C$DW$1282, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$1282, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1282, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1283	.dwtag  DW_TAG_member
	.dwattr $C$DW$1283, DW_AT_type(*$C$DW$T$240)
	.dwattr $C$DW$1283, DW_AT_name("bit")
	.dwattr $C$DW$1283, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$1283, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1283, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$241


$C$DW$T$242	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$242, DW_AT_name("PRD_BITS")
	.dwattr $C$DW$T$242, DW_AT_byte_size(0x02)
$C$DW$1284	.dwtag  DW_TAG_member
	.dwattr $C$DW$1284, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1284, DW_AT_name("LSW")
	.dwattr $C$DW$1284, DW_AT_TI_symbol_name("_LSW")
	.dwattr $C$DW$1284, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$1284, DW_AT_bit_size(0x10)
	.dwattr $C$DW$1284, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1284, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1285	.dwtag  DW_TAG_member
	.dwattr $C$DW$1285, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1285, DW_AT_name("MSW")
	.dwattr $C$DW$1285, DW_AT_TI_symbol_name("_MSW")
	.dwattr $C$DW$1285, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$1285, DW_AT_bit_size(0x10)
	.dwattr $C$DW$1285, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$1285, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$242


$C$DW$T$243	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$243, DW_AT_name("PRD_REG")
	.dwattr $C$DW$T$243, DW_AT_byte_size(0x02)
$C$DW$1286	.dwtag  DW_TAG_member
	.dwattr $C$DW$1286, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$1286, DW_AT_name("all")
	.dwattr $C$DW$1286, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$1286, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1286, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1287	.dwtag  DW_TAG_member
	.dwattr $C$DW$1287, DW_AT_type(*$C$DW$T$242)
	.dwattr $C$DW$1287, DW_AT_name("bit")
	.dwattr $C$DW$1287, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$1287, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1287, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$243


$C$DW$T$244	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$244, DW_AT_name("PUMPREQUEST_BITS")
	.dwattr $C$DW$T$244, DW_AT_byte_size(0x02)
$C$DW$1288	.dwtag  DW_TAG_member
	.dwattr $C$DW$1288, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1288, DW_AT_name("PUMP_OWNERSHIP")
	.dwattr $C$DW$1288, DW_AT_TI_symbol_name("_PUMP_OWNERSHIP")
	.dwattr $C$DW$1288, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$1288, DW_AT_bit_size(0x02)
	.dwattr $C$DW$1288, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1288, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1289	.dwtag  DW_TAG_member
	.dwattr $C$DW$1289, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1289, DW_AT_name("rsvd1")
	.dwattr $C$DW$1289, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$1289, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$1289, DW_AT_bit_size(0x0e)
	.dwattr $C$DW$1289, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1289, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1290	.dwtag  DW_TAG_member
	.dwattr $C$DW$1290, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1290, DW_AT_name("KEY")
	.dwattr $C$DW$1290, DW_AT_TI_symbol_name("_KEY")
	.dwattr $C$DW$1290, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$1290, DW_AT_bit_size(0x10)
	.dwattr $C$DW$1290, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$1290, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$244


$C$DW$T$245	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$245, DW_AT_name("PUMPREQUEST_REG")
	.dwattr $C$DW$T$245, DW_AT_byte_size(0x02)
$C$DW$1291	.dwtag  DW_TAG_member
	.dwattr $C$DW$1291, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$1291, DW_AT_name("all")
	.dwattr $C$DW$1291, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$1291, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1291, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1292	.dwtag  DW_TAG_member
	.dwattr $C$DW$1292, DW_AT_type(*$C$DW$T$244)
	.dwattr $C$DW$1292, DW_AT_name("bit")
	.dwattr $C$DW$1292, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$1292, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1292, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$245


$C$DW$T$246	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$246, DW_AT_name("RESC_BITS")
	.dwattr $C$DW$T$246, DW_AT_byte_size(0x02)
$C$DW$1293	.dwtag  DW_TAG_member
	.dwattr $C$DW$1293, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1293, DW_AT_name("POR")
	.dwattr $C$DW$1293, DW_AT_TI_symbol_name("_POR")
	.dwattr $C$DW$1293, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$1293, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1293, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1293, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1294	.dwtag  DW_TAG_member
	.dwattr $C$DW$1294, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1294, DW_AT_name("XRSn")
	.dwattr $C$DW$1294, DW_AT_TI_symbol_name("_XRSn")
	.dwattr $C$DW$1294, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$1294, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1294, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1294, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1295	.dwtag  DW_TAG_member
	.dwattr $C$DW$1295, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1295, DW_AT_name("WDRSn")
	.dwattr $C$DW$1295, DW_AT_TI_symbol_name("_WDRSn")
	.dwattr $C$DW$1295, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$1295, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1295, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1295, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1296	.dwtag  DW_TAG_member
	.dwattr $C$DW$1296, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1296, DW_AT_name("NMIWDRSn")
	.dwattr $C$DW$1296, DW_AT_TI_symbol_name("_NMIWDRSn")
	.dwattr $C$DW$1296, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$1296, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1296, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1296, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1297	.dwtag  DW_TAG_member
	.dwattr $C$DW$1297, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1297, DW_AT_name("rsvd1")
	.dwattr $C$DW$1297, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$1297, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$1297, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1297, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1297, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1298	.dwtag  DW_TAG_member
	.dwattr $C$DW$1298, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1298, DW_AT_name("HWBISTn")
	.dwattr $C$DW$1298, DW_AT_TI_symbol_name("_HWBISTn")
	.dwattr $C$DW$1298, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$1298, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1298, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1298, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1299	.dwtag  DW_TAG_member
	.dwattr $C$DW$1299, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1299, DW_AT_name("HIBRESETn")
	.dwattr $C$DW$1299, DW_AT_TI_symbol_name("_HIBRESETn")
	.dwattr $C$DW$1299, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$1299, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1299, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1299, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1300	.dwtag  DW_TAG_member
	.dwattr $C$DW$1300, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1300, DW_AT_name("rsvd2")
	.dwattr $C$DW$1300, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$1300, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$1300, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1300, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1300, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1301	.dwtag  DW_TAG_member
	.dwattr $C$DW$1301, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1301, DW_AT_name("SCCRESETn")
	.dwattr $C$DW$1301, DW_AT_TI_symbol_name("_SCCRESETn")
	.dwattr $C$DW$1301, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$1301, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1301, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1301, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1302	.dwtag  DW_TAG_member
	.dwattr $C$DW$1302, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1302, DW_AT_name("rsvd3")
	.dwattr $C$DW$1302, DW_AT_TI_symbol_name("_rsvd3")
	.dwattr $C$DW$1302, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$1302, DW_AT_bit_size(0x07)
	.dwattr $C$DW$1302, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1302, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1303	.dwtag  DW_TAG_member
	.dwattr $C$DW$1303, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1303, DW_AT_name("rsvd4")
	.dwattr $C$DW$1303, DW_AT_TI_symbol_name("_rsvd4")
	.dwattr $C$DW$1303, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$1303, DW_AT_bit_size(0x0e)
	.dwattr $C$DW$1303, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$1303, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1304	.dwtag  DW_TAG_member
	.dwattr $C$DW$1304, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1304, DW_AT_name("XRSn_pin_status")
	.dwattr $C$DW$1304, DW_AT_TI_symbol_name("_XRSn_pin_status")
	.dwattr $C$DW$1304, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$1304, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1304, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$1304, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1305	.dwtag  DW_TAG_member
	.dwattr $C$DW$1305, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1305, DW_AT_name("TRSTn_pin_status")
	.dwattr $C$DW$1305, DW_AT_TI_symbol_name("_TRSTn_pin_status")
	.dwattr $C$DW$1305, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$1305, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1305, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$1305, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$246


$C$DW$T$247	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$247, DW_AT_name("RESC_REG")
	.dwattr $C$DW$T$247, DW_AT_byte_size(0x02)
$C$DW$1306	.dwtag  DW_TAG_member
	.dwattr $C$DW$1306, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$1306, DW_AT_name("all")
	.dwattr $C$DW$1306, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$1306, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1306, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1307	.dwtag  DW_TAG_member
	.dwattr $C$DW$1307, DW_AT_type(*$C$DW$T$246)
	.dwattr $C$DW$1307, DW_AT_name("bit")
	.dwattr $C$DW$1307, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$1307, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1307, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$247


$C$DW$T$248	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$248, DW_AT_name("RSTSTAT_BITS")
	.dwattr $C$DW$T$248, DW_AT_byte_size(0x01)
$C$DW$1308	.dwtag  DW_TAG_member
	.dwattr $C$DW$1308, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1308, DW_AT_name("CPU2RES")
	.dwattr $C$DW$1308, DW_AT_TI_symbol_name("_CPU2RES")
	.dwattr $C$DW$1308, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$1308, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1308, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1308, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1309	.dwtag  DW_TAG_member
	.dwattr $C$DW$1309, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1309, DW_AT_name("CPU2NMIWDRST")
	.dwattr $C$DW$1309, DW_AT_TI_symbol_name("_CPU2NMIWDRST")
	.dwattr $C$DW$1309, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$1309, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1309, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1309, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1310	.dwtag  DW_TAG_member
	.dwattr $C$DW$1310, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1310, DW_AT_name("CPU2HWBISTRST0")
	.dwattr $C$DW$1310, DW_AT_TI_symbol_name("_CPU2HWBISTRST0")
	.dwattr $C$DW$1310, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$1310, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1310, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1310, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1311	.dwtag  DW_TAG_member
	.dwattr $C$DW$1311, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1311, DW_AT_name("CPU2HWBISTRST1")
	.dwattr $C$DW$1311, DW_AT_TI_symbol_name("_CPU2HWBISTRST1")
	.dwattr $C$DW$1311, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$1311, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1311, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1311, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1312	.dwtag  DW_TAG_member
	.dwattr $C$DW$1312, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1312, DW_AT_name("rsvd1")
	.dwattr $C$DW$1312, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$1312, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$1312, DW_AT_bit_size(0x0c)
	.dwattr $C$DW$1312, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1312, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$248


$C$DW$T$249	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$249, DW_AT_name("RSTSTAT_REG")
	.dwattr $C$DW$T$249, DW_AT_byte_size(0x01)
$C$DW$1313	.dwtag  DW_TAG_member
	.dwattr $C$DW$1313, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1313, DW_AT_name("all")
	.dwattr $C$DW$1313, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$1313, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1313, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1314	.dwtag  DW_TAG_member
	.dwattr $C$DW$1314, DW_AT_type(*$C$DW$T$248)
	.dwattr $C$DW$1314, DW_AT_name("bit")
	.dwattr $C$DW$1314, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$1314, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1314, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$249


$C$DW$T$250	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$250, DW_AT_name("SCSR_BITS")
	.dwattr $C$DW$T$250, DW_AT_byte_size(0x01)
$C$DW$1315	.dwtag  DW_TAG_member
	.dwattr $C$DW$1315, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1315, DW_AT_name("WDOVERRIDE")
	.dwattr $C$DW$1315, DW_AT_TI_symbol_name("_WDOVERRIDE")
	.dwattr $C$DW$1315, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$1315, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1315, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1315, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1316	.dwtag  DW_TAG_member
	.dwattr $C$DW$1316, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1316, DW_AT_name("WDENINT")
	.dwattr $C$DW$1316, DW_AT_TI_symbol_name("_WDENINT")
	.dwattr $C$DW$1316, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$1316, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1316, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1316, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1317	.dwtag  DW_TAG_member
	.dwattr $C$DW$1317, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1317, DW_AT_name("WDINTS")
	.dwattr $C$DW$1317, DW_AT_TI_symbol_name("_WDINTS")
	.dwattr $C$DW$1317, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$1317, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1317, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1317, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1318	.dwtag  DW_TAG_member
	.dwattr $C$DW$1318, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1318, DW_AT_name("rsvd1")
	.dwattr $C$DW$1318, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$1318, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$1318, DW_AT_bit_size(0x0d)
	.dwattr $C$DW$1318, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1318, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$250


$C$DW$T$251	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$251, DW_AT_name("SCSR_REG")
	.dwattr $C$DW$T$251, DW_AT_byte_size(0x01)
$C$DW$1319	.dwtag  DW_TAG_member
	.dwattr $C$DW$1319, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1319, DW_AT_name("all")
	.dwattr $C$DW$1319, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$1319, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1319, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1320	.dwtag  DW_TAG_member
	.dwattr $C$DW$1320, DW_AT_type(*$C$DW$T$250)
	.dwattr $C$DW$1320, DW_AT_name("bit")
	.dwattr $C$DW$1320, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$1320, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1320, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$251


$C$DW$T$252	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$252, DW_AT_name("SECMSEL_BITS")
	.dwattr $C$DW$T$252, DW_AT_byte_size(0x02)
$C$DW$1321	.dwtag  DW_TAG_member
	.dwattr $C$DW$1321, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1321, DW_AT_name("PF1SEL")
	.dwattr $C$DW$1321, DW_AT_TI_symbol_name("_PF1SEL")
	.dwattr $C$DW$1321, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$1321, DW_AT_bit_size(0x02)
	.dwattr $C$DW$1321, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1321, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1322	.dwtag  DW_TAG_member
	.dwattr $C$DW$1322, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1322, DW_AT_name("PF2SEL")
	.dwattr $C$DW$1322, DW_AT_TI_symbol_name("_PF2SEL")
	.dwattr $C$DW$1322, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$1322, DW_AT_bit_size(0x02)
	.dwattr $C$DW$1322, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1322, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1323	.dwtag  DW_TAG_member
	.dwattr $C$DW$1323, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1323, DW_AT_name("rsvd1")
	.dwattr $C$DW$1323, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$1323, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$1323, DW_AT_bit_size(0x02)
	.dwattr $C$DW$1323, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1323, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1324	.dwtag  DW_TAG_member
	.dwattr $C$DW$1324, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1324, DW_AT_name("rsvd2")
	.dwattr $C$DW$1324, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$1324, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$1324, DW_AT_bit_size(0x02)
	.dwattr $C$DW$1324, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1324, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1325	.dwtag  DW_TAG_member
	.dwattr $C$DW$1325, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1325, DW_AT_name("rsvd3")
	.dwattr $C$DW$1325, DW_AT_TI_symbol_name("_rsvd3")
	.dwattr $C$DW$1325, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$1325, DW_AT_bit_size(0x02)
	.dwattr $C$DW$1325, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1325, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1326	.dwtag  DW_TAG_member
	.dwattr $C$DW$1326, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1326, DW_AT_name("rsvd4")
	.dwattr $C$DW$1326, DW_AT_TI_symbol_name("_rsvd4")
	.dwattr $C$DW$1326, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$1326, DW_AT_bit_size(0x02)
	.dwattr $C$DW$1326, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1326, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1327	.dwtag  DW_TAG_member
	.dwattr $C$DW$1327, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1327, DW_AT_name("rsvd5")
	.dwattr $C$DW$1327, DW_AT_TI_symbol_name("_rsvd5")
	.dwattr $C$DW$1327, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$1327, DW_AT_bit_size(0x02)
	.dwattr $C$DW$1327, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1327, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1328	.dwtag  DW_TAG_member
	.dwattr $C$DW$1328, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1328, DW_AT_name("rsvd6")
	.dwattr $C$DW$1328, DW_AT_TI_symbol_name("_rsvd6")
	.dwattr $C$DW$1328, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$1328, DW_AT_bit_size(0x02)
	.dwattr $C$DW$1328, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1328, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1329	.dwtag  DW_TAG_member
	.dwattr $C$DW$1329, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1329, DW_AT_name("rsvd7")
	.dwattr $C$DW$1329, DW_AT_TI_symbol_name("_rsvd7")
	.dwattr $C$DW$1329, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$1329, DW_AT_bit_size(0x10)
	.dwattr $C$DW$1329, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$1329, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$252


$C$DW$T$253	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$253, DW_AT_name("SECMSEL_REG")
	.dwattr $C$DW$T$253, DW_AT_byte_size(0x02)
$C$DW$1330	.dwtag  DW_TAG_member
	.dwattr $C$DW$1330, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$1330, DW_AT_name("all")
	.dwattr $C$DW$1330, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$1330, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1330, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1331	.dwtag  DW_TAG_member
	.dwattr $C$DW$1331, DW_AT_type(*$C$DW$T$252)
	.dwattr $C$DW$1331, DW_AT_name("bit")
	.dwattr $C$DW$1331, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$1331, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1331, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$253


$C$DW$T$254	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$254, DW_AT_name("SOFTPRES0_BITS")
	.dwattr $C$DW$T$254, DW_AT_byte_size(0x02)
$C$DW$1332	.dwtag  DW_TAG_member
	.dwattr $C$DW$1332, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1332, DW_AT_name("CPU1_CLA1")
	.dwattr $C$DW$1332, DW_AT_TI_symbol_name("_CPU1_CLA1")
	.dwattr $C$DW$1332, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$1332, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1332, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1332, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1333	.dwtag  DW_TAG_member
	.dwattr $C$DW$1333, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1333, DW_AT_name("rsvd1")
	.dwattr $C$DW$1333, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$1333, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$1333, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1333, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1333, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1334	.dwtag  DW_TAG_member
	.dwattr $C$DW$1334, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1334, DW_AT_name("CPU2_CLA1")
	.dwattr $C$DW$1334, DW_AT_TI_symbol_name("_CPU2_CLA1")
	.dwattr $C$DW$1334, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$1334, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1334, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1334, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1335	.dwtag  DW_TAG_member
	.dwattr $C$DW$1335, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1335, DW_AT_name("rsvd2")
	.dwattr $C$DW$1335, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$1335, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$1335, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1335, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1335, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1336	.dwtag  DW_TAG_member
	.dwattr $C$DW$1336, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1336, DW_AT_name("rsvd3")
	.dwattr $C$DW$1336, DW_AT_TI_symbol_name("_rsvd3")
	.dwattr $C$DW$1336, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$1336, DW_AT_bit_size(0x0c)
	.dwattr $C$DW$1336, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1336, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1337	.dwtag  DW_TAG_member
	.dwattr $C$DW$1337, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1337, DW_AT_name("rsvd4")
	.dwattr $C$DW$1337, DW_AT_TI_symbol_name("_rsvd4")
	.dwattr $C$DW$1337, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$1337, DW_AT_bit_size(0x10)
	.dwattr $C$DW$1337, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$1337, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$254


$C$DW$T$255	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$255, DW_AT_name("SOFTPRES0_REG")
	.dwattr $C$DW$T$255, DW_AT_byte_size(0x02)
$C$DW$1338	.dwtag  DW_TAG_member
	.dwattr $C$DW$1338, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$1338, DW_AT_name("all")
	.dwattr $C$DW$1338, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$1338, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1338, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1339	.dwtag  DW_TAG_member
	.dwattr $C$DW$1339, DW_AT_type(*$C$DW$T$254)
	.dwattr $C$DW$1339, DW_AT_name("bit")
	.dwattr $C$DW$1339, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$1339, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1339, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$255


$C$DW$T$256	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$256, DW_AT_name("SOFTPRES11_BITS")
	.dwattr $C$DW$T$256, DW_AT_byte_size(0x02)
$C$DW$1340	.dwtag  DW_TAG_member
	.dwattr $C$DW$1340, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1340, DW_AT_name("McBSP_A")
	.dwattr $C$DW$1340, DW_AT_TI_symbol_name("_McBSP_A")
	.dwattr $C$DW$1340, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$1340, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1340, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1340, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1341	.dwtag  DW_TAG_member
	.dwattr $C$DW$1341, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1341, DW_AT_name("McBSP_B")
	.dwattr $C$DW$1341, DW_AT_TI_symbol_name("_McBSP_B")
	.dwattr $C$DW$1341, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$1341, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1341, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1341, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1342	.dwtag  DW_TAG_member
	.dwattr $C$DW$1342, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1342, DW_AT_name("rsvd1")
	.dwattr $C$DW$1342, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$1342, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$1342, DW_AT_bit_size(0x0e)
	.dwattr $C$DW$1342, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1342, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1343	.dwtag  DW_TAG_member
	.dwattr $C$DW$1343, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1343, DW_AT_name("USB_A")
	.dwattr $C$DW$1343, DW_AT_TI_symbol_name("_USB_A")
	.dwattr $C$DW$1343, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$1343, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1343, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$1343, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1344	.dwtag  DW_TAG_member
	.dwattr $C$DW$1344, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1344, DW_AT_name("rsvd2")
	.dwattr $C$DW$1344, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$1344, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$1344, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1344, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$1344, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1345	.dwtag  DW_TAG_member
	.dwattr $C$DW$1345, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1345, DW_AT_name("rsvd3")
	.dwattr $C$DW$1345, DW_AT_TI_symbol_name("_rsvd3")
	.dwattr $C$DW$1345, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$1345, DW_AT_bit_size(0x0e)
	.dwattr $C$DW$1345, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$1345, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$256


$C$DW$T$257	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$257, DW_AT_name("SOFTPRES11_REG")
	.dwattr $C$DW$T$257, DW_AT_byte_size(0x02)
$C$DW$1346	.dwtag  DW_TAG_member
	.dwattr $C$DW$1346, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$1346, DW_AT_name("all")
	.dwattr $C$DW$1346, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$1346, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1346, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1347	.dwtag  DW_TAG_member
	.dwattr $C$DW$1347, DW_AT_type(*$C$DW$T$256)
	.dwattr $C$DW$1347, DW_AT_name("bit")
	.dwattr $C$DW$1347, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$1347, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1347, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$257


$C$DW$T$258	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$258, DW_AT_name("SOFTPRES13_BITS")
	.dwattr $C$DW$T$258, DW_AT_byte_size(0x02)
$C$DW$1348	.dwtag  DW_TAG_member
	.dwattr $C$DW$1348, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1348, DW_AT_name("ADC_A")
	.dwattr $C$DW$1348, DW_AT_TI_symbol_name("_ADC_A")
	.dwattr $C$DW$1348, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$1348, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1348, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1348, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1349	.dwtag  DW_TAG_member
	.dwattr $C$DW$1349, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1349, DW_AT_name("ADC_B")
	.dwattr $C$DW$1349, DW_AT_TI_symbol_name("_ADC_B")
	.dwattr $C$DW$1349, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$1349, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1349, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1349, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1350	.dwtag  DW_TAG_member
	.dwattr $C$DW$1350, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1350, DW_AT_name("ADC_C")
	.dwattr $C$DW$1350, DW_AT_TI_symbol_name("_ADC_C")
	.dwattr $C$DW$1350, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$1350, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1350, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1350, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1351	.dwtag  DW_TAG_member
	.dwattr $C$DW$1351, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1351, DW_AT_name("ADC_D")
	.dwattr $C$DW$1351, DW_AT_TI_symbol_name("_ADC_D")
	.dwattr $C$DW$1351, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$1351, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1351, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1351, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1352	.dwtag  DW_TAG_member
	.dwattr $C$DW$1352, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1352, DW_AT_name("rsvd1")
	.dwattr $C$DW$1352, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$1352, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$1352, DW_AT_bit_size(0x0c)
	.dwattr $C$DW$1352, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1352, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1353	.dwtag  DW_TAG_member
	.dwattr $C$DW$1353, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1353, DW_AT_name("rsvd2")
	.dwattr $C$DW$1353, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$1353, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$1353, DW_AT_bit_size(0x10)
	.dwattr $C$DW$1353, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$1353, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$258


$C$DW$T$259	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$259, DW_AT_name("SOFTPRES13_REG")
	.dwattr $C$DW$T$259, DW_AT_byte_size(0x02)
$C$DW$1354	.dwtag  DW_TAG_member
	.dwattr $C$DW$1354, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$1354, DW_AT_name("all")
	.dwattr $C$DW$1354, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$1354, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1354, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1355	.dwtag  DW_TAG_member
	.dwattr $C$DW$1355, DW_AT_type(*$C$DW$T$258)
	.dwattr $C$DW$1355, DW_AT_name("bit")
	.dwattr $C$DW$1355, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$1355, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1355, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$259


$C$DW$T$260	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$260, DW_AT_name("SOFTPRES14_BITS")
	.dwattr $C$DW$T$260, DW_AT_byte_size(0x02)
$C$DW$1356	.dwtag  DW_TAG_member
	.dwattr $C$DW$1356, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1356, DW_AT_name("CMPSS1")
	.dwattr $C$DW$1356, DW_AT_TI_symbol_name("_CMPSS1")
	.dwattr $C$DW$1356, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$1356, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1356, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1356, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1357	.dwtag  DW_TAG_member
	.dwattr $C$DW$1357, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1357, DW_AT_name("CMPSS2")
	.dwattr $C$DW$1357, DW_AT_TI_symbol_name("_CMPSS2")
	.dwattr $C$DW$1357, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$1357, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1357, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1357, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1358	.dwtag  DW_TAG_member
	.dwattr $C$DW$1358, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1358, DW_AT_name("CMPSS3")
	.dwattr $C$DW$1358, DW_AT_TI_symbol_name("_CMPSS3")
	.dwattr $C$DW$1358, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$1358, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1358, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1358, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1359	.dwtag  DW_TAG_member
	.dwattr $C$DW$1359, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1359, DW_AT_name("CMPSS4")
	.dwattr $C$DW$1359, DW_AT_TI_symbol_name("_CMPSS4")
	.dwattr $C$DW$1359, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$1359, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1359, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1359, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1360	.dwtag  DW_TAG_member
	.dwattr $C$DW$1360, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1360, DW_AT_name("CMPSS5")
	.dwattr $C$DW$1360, DW_AT_TI_symbol_name("_CMPSS5")
	.dwattr $C$DW$1360, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$1360, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1360, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1360, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1361	.dwtag  DW_TAG_member
	.dwattr $C$DW$1361, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1361, DW_AT_name("CMPSS6")
	.dwattr $C$DW$1361, DW_AT_TI_symbol_name("_CMPSS6")
	.dwattr $C$DW$1361, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$1361, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1361, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1361, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1362	.dwtag  DW_TAG_member
	.dwattr $C$DW$1362, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1362, DW_AT_name("CMPSS7")
	.dwattr $C$DW$1362, DW_AT_TI_symbol_name("_CMPSS7")
	.dwattr $C$DW$1362, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$1362, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1362, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1362, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1363	.dwtag  DW_TAG_member
	.dwattr $C$DW$1363, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1363, DW_AT_name("CMPSS8")
	.dwattr $C$DW$1363, DW_AT_TI_symbol_name("_CMPSS8")
	.dwattr $C$DW$1363, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$1363, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1363, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1363, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1364	.dwtag  DW_TAG_member
	.dwattr $C$DW$1364, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1364, DW_AT_name("rsvd1")
	.dwattr $C$DW$1364, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$1364, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$1364, DW_AT_bit_size(0x08)
	.dwattr $C$DW$1364, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1364, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1365	.dwtag  DW_TAG_member
	.dwattr $C$DW$1365, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1365, DW_AT_name("rsvd2")
	.dwattr $C$DW$1365, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$1365, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$1365, DW_AT_bit_size(0x10)
	.dwattr $C$DW$1365, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$1365, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$260


$C$DW$T$261	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$261, DW_AT_name("SOFTPRES14_REG")
	.dwattr $C$DW$T$261, DW_AT_byte_size(0x02)
$C$DW$1366	.dwtag  DW_TAG_member
	.dwattr $C$DW$1366, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$1366, DW_AT_name("all")
	.dwattr $C$DW$1366, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$1366, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1366, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1367	.dwtag  DW_TAG_member
	.dwattr $C$DW$1367, DW_AT_type(*$C$DW$T$260)
	.dwattr $C$DW$1367, DW_AT_name("bit")
	.dwattr $C$DW$1367, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$1367, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1367, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$261


$C$DW$T$262	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$262, DW_AT_name("SOFTPRES16_BITS")
	.dwattr $C$DW$T$262, DW_AT_byte_size(0x02)
$C$DW$1368	.dwtag  DW_TAG_member
	.dwattr $C$DW$1368, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1368, DW_AT_name("rsvd1")
	.dwattr $C$DW$1368, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$1368, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$1368, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1368, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1368, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1369	.dwtag  DW_TAG_member
	.dwattr $C$DW$1369, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1369, DW_AT_name("rsvd2")
	.dwattr $C$DW$1369, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$1369, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$1369, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1369, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1369, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1370	.dwtag  DW_TAG_member
	.dwattr $C$DW$1370, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1370, DW_AT_name("rsvd3")
	.dwattr $C$DW$1370, DW_AT_TI_symbol_name("_rsvd3")
	.dwattr $C$DW$1370, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$1370, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1370, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1370, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1371	.dwtag  DW_TAG_member
	.dwattr $C$DW$1371, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1371, DW_AT_name("rsvd4")
	.dwattr $C$DW$1371, DW_AT_TI_symbol_name("_rsvd4")
	.dwattr $C$DW$1371, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$1371, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1371, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1371, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1372	.dwtag  DW_TAG_member
	.dwattr $C$DW$1372, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1372, DW_AT_name("rsvd5")
	.dwattr $C$DW$1372, DW_AT_TI_symbol_name("_rsvd5")
	.dwattr $C$DW$1372, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$1372, DW_AT_bit_size(0x0c)
	.dwattr $C$DW$1372, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1372, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1373	.dwtag  DW_TAG_member
	.dwattr $C$DW$1373, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1373, DW_AT_name("DAC_A")
	.dwattr $C$DW$1373, DW_AT_TI_symbol_name("_DAC_A")
	.dwattr $C$DW$1373, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$1373, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1373, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$1373, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1374	.dwtag  DW_TAG_member
	.dwattr $C$DW$1374, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1374, DW_AT_name("DAC_B")
	.dwattr $C$DW$1374, DW_AT_TI_symbol_name("_DAC_B")
	.dwattr $C$DW$1374, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$1374, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1374, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$1374, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1375	.dwtag  DW_TAG_member
	.dwattr $C$DW$1375, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1375, DW_AT_name("DAC_C")
	.dwattr $C$DW$1375, DW_AT_TI_symbol_name("_DAC_C")
	.dwattr $C$DW$1375, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$1375, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1375, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$1375, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1376	.dwtag  DW_TAG_member
	.dwattr $C$DW$1376, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1376, DW_AT_name("rsvd6")
	.dwattr $C$DW$1376, DW_AT_TI_symbol_name("_rsvd6")
	.dwattr $C$DW$1376, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$1376, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1376, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$1376, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1377	.dwtag  DW_TAG_member
	.dwattr $C$DW$1377, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1377, DW_AT_name("rsvd7")
	.dwattr $C$DW$1377, DW_AT_TI_symbol_name("_rsvd7")
	.dwattr $C$DW$1377, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$1377, DW_AT_bit_size(0x0c)
	.dwattr $C$DW$1377, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$1377, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$262


$C$DW$T$263	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$263, DW_AT_name("SOFTPRES16_REG")
	.dwattr $C$DW$T$263, DW_AT_byte_size(0x02)
$C$DW$1378	.dwtag  DW_TAG_member
	.dwattr $C$DW$1378, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$1378, DW_AT_name("all")
	.dwattr $C$DW$1378, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$1378, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1378, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1379	.dwtag  DW_TAG_member
	.dwattr $C$DW$1379, DW_AT_type(*$C$DW$T$262)
	.dwattr $C$DW$1379, DW_AT_name("bit")
	.dwattr $C$DW$1379, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$1379, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1379, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$263


$C$DW$T$264	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$264, DW_AT_name("SOFTPRES1_BITS")
	.dwattr $C$DW$T$264, DW_AT_byte_size(0x02)
$C$DW$1380	.dwtag  DW_TAG_member
	.dwattr $C$DW$1380, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1380, DW_AT_name("EMIF1")
	.dwattr $C$DW$1380, DW_AT_TI_symbol_name("_EMIF1")
	.dwattr $C$DW$1380, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$1380, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1380, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1380, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1381	.dwtag  DW_TAG_member
	.dwattr $C$DW$1381, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1381, DW_AT_name("EMIF2")
	.dwattr $C$DW$1381, DW_AT_TI_symbol_name("_EMIF2")
	.dwattr $C$DW$1381, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$1381, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1381, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1381, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1382	.dwtag  DW_TAG_member
	.dwattr $C$DW$1382, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1382, DW_AT_name("rsvd1")
	.dwattr $C$DW$1382, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$1382, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$1382, DW_AT_bit_size(0x0e)
	.dwattr $C$DW$1382, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1382, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1383	.dwtag  DW_TAG_member
	.dwattr $C$DW$1383, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1383, DW_AT_name("rsvd2")
	.dwattr $C$DW$1383, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$1383, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$1383, DW_AT_bit_size(0x10)
	.dwattr $C$DW$1383, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$1383, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$264


$C$DW$T$265	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$265, DW_AT_name("SOFTPRES1_REG")
	.dwattr $C$DW$T$265, DW_AT_byte_size(0x02)
$C$DW$1384	.dwtag  DW_TAG_member
	.dwattr $C$DW$1384, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$1384, DW_AT_name("all")
	.dwattr $C$DW$1384, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$1384, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1384, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1385	.dwtag  DW_TAG_member
	.dwattr $C$DW$1385, DW_AT_type(*$C$DW$T$264)
	.dwattr $C$DW$1385, DW_AT_name("bit")
	.dwattr $C$DW$1385, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$1385, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1385, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$265


$C$DW$T$266	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$266, DW_AT_name("SOFTPRES2_BITS")
	.dwattr $C$DW$T$266, DW_AT_byte_size(0x02)
$C$DW$1386	.dwtag  DW_TAG_member
	.dwattr $C$DW$1386, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1386, DW_AT_name("EPWM1")
	.dwattr $C$DW$1386, DW_AT_TI_symbol_name("_EPWM1")
	.dwattr $C$DW$1386, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$1386, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1386, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1386, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1387	.dwtag  DW_TAG_member
	.dwattr $C$DW$1387, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1387, DW_AT_name("EPWM2")
	.dwattr $C$DW$1387, DW_AT_TI_symbol_name("_EPWM2")
	.dwattr $C$DW$1387, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$1387, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1387, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1387, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1388	.dwtag  DW_TAG_member
	.dwattr $C$DW$1388, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1388, DW_AT_name("EPWM3")
	.dwattr $C$DW$1388, DW_AT_TI_symbol_name("_EPWM3")
	.dwattr $C$DW$1388, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$1388, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1388, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1388, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1389	.dwtag  DW_TAG_member
	.dwattr $C$DW$1389, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1389, DW_AT_name("EPWM4")
	.dwattr $C$DW$1389, DW_AT_TI_symbol_name("_EPWM4")
	.dwattr $C$DW$1389, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$1389, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1389, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1389, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1390	.dwtag  DW_TAG_member
	.dwattr $C$DW$1390, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1390, DW_AT_name("EPWM5")
	.dwattr $C$DW$1390, DW_AT_TI_symbol_name("_EPWM5")
	.dwattr $C$DW$1390, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$1390, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1390, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1390, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1391	.dwtag  DW_TAG_member
	.dwattr $C$DW$1391, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1391, DW_AT_name("EPWM6")
	.dwattr $C$DW$1391, DW_AT_TI_symbol_name("_EPWM6")
	.dwattr $C$DW$1391, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$1391, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1391, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1391, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1392	.dwtag  DW_TAG_member
	.dwattr $C$DW$1392, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1392, DW_AT_name("EPWM7")
	.dwattr $C$DW$1392, DW_AT_TI_symbol_name("_EPWM7")
	.dwattr $C$DW$1392, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$1392, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1392, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1392, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1393	.dwtag  DW_TAG_member
	.dwattr $C$DW$1393, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1393, DW_AT_name("EPWM8")
	.dwattr $C$DW$1393, DW_AT_TI_symbol_name("_EPWM8")
	.dwattr $C$DW$1393, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$1393, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1393, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1393, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1394	.dwtag  DW_TAG_member
	.dwattr $C$DW$1394, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1394, DW_AT_name("EPWM9")
	.dwattr $C$DW$1394, DW_AT_TI_symbol_name("_EPWM9")
	.dwattr $C$DW$1394, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$1394, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1394, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1394, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1395	.dwtag  DW_TAG_member
	.dwattr $C$DW$1395, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1395, DW_AT_name("EPWM10")
	.dwattr $C$DW$1395, DW_AT_TI_symbol_name("_EPWM10")
	.dwattr $C$DW$1395, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$1395, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1395, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1395, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1396	.dwtag  DW_TAG_member
	.dwattr $C$DW$1396, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1396, DW_AT_name("EPWM11")
	.dwattr $C$DW$1396, DW_AT_TI_symbol_name("_EPWM11")
	.dwattr $C$DW$1396, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$1396, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1396, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1396, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1397	.dwtag  DW_TAG_member
	.dwattr $C$DW$1397, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1397, DW_AT_name("EPWM12")
	.dwattr $C$DW$1397, DW_AT_TI_symbol_name("_EPWM12")
	.dwattr $C$DW$1397, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$1397, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1397, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1397, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1398	.dwtag  DW_TAG_member
	.dwattr $C$DW$1398, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1398, DW_AT_name("rsvd1")
	.dwattr $C$DW$1398, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$1398, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$1398, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1398, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1398, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1399	.dwtag  DW_TAG_member
	.dwattr $C$DW$1399, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1399, DW_AT_name("rsvd2")
	.dwattr $C$DW$1399, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$1399, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$1399, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1399, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1399, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1400	.dwtag  DW_TAG_member
	.dwattr $C$DW$1400, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1400, DW_AT_name("rsvd3")
	.dwattr $C$DW$1400, DW_AT_TI_symbol_name("_rsvd3")
	.dwattr $C$DW$1400, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$1400, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1400, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1400, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1401	.dwtag  DW_TAG_member
	.dwattr $C$DW$1401, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1401, DW_AT_name("rsvd4")
	.dwattr $C$DW$1401, DW_AT_TI_symbol_name("_rsvd4")
	.dwattr $C$DW$1401, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$1401, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1401, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1401, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1402	.dwtag  DW_TAG_member
	.dwattr $C$DW$1402, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1402, DW_AT_name("rsvd5")
	.dwattr $C$DW$1402, DW_AT_TI_symbol_name("_rsvd5")
	.dwattr $C$DW$1402, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$1402, DW_AT_bit_size(0x10)
	.dwattr $C$DW$1402, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$1402, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$266


$C$DW$T$267	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$267, DW_AT_name("SOFTPRES2_REG")
	.dwattr $C$DW$T$267, DW_AT_byte_size(0x02)
$C$DW$1403	.dwtag  DW_TAG_member
	.dwattr $C$DW$1403, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$1403, DW_AT_name("all")
	.dwattr $C$DW$1403, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$1403, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1403, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1404	.dwtag  DW_TAG_member
	.dwattr $C$DW$1404, DW_AT_type(*$C$DW$T$266)
	.dwattr $C$DW$1404, DW_AT_name("bit")
	.dwattr $C$DW$1404, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$1404, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1404, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$267


$C$DW$T$268	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$268, DW_AT_name("SOFTPRES3_BITS")
	.dwattr $C$DW$T$268, DW_AT_byte_size(0x02)
$C$DW$1405	.dwtag  DW_TAG_member
	.dwattr $C$DW$1405, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1405, DW_AT_name("ECAP1")
	.dwattr $C$DW$1405, DW_AT_TI_symbol_name("_ECAP1")
	.dwattr $C$DW$1405, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$1405, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1405, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1405, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1406	.dwtag  DW_TAG_member
	.dwattr $C$DW$1406, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1406, DW_AT_name("ECAP2")
	.dwattr $C$DW$1406, DW_AT_TI_symbol_name("_ECAP2")
	.dwattr $C$DW$1406, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$1406, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1406, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1406, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1407	.dwtag  DW_TAG_member
	.dwattr $C$DW$1407, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1407, DW_AT_name("ECAP3")
	.dwattr $C$DW$1407, DW_AT_TI_symbol_name("_ECAP3")
	.dwattr $C$DW$1407, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$1407, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1407, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1407, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1408	.dwtag  DW_TAG_member
	.dwattr $C$DW$1408, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1408, DW_AT_name("ECAP4")
	.dwattr $C$DW$1408, DW_AT_TI_symbol_name("_ECAP4")
	.dwattr $C$DW$1408, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$1408, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1408, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1408, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1409	.dwtag  DW_TAG_member
	.dwattr $C$DW$1409, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1409, DW_AT_name("ECAP5")
	.dwattr $C$DW$1409, DW_AT_TI_symbol_name("_ECAP5")
	.dwattr $C$DW$1409, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$1409, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1409, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1409, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1410	.dwtag  DW_TAG_member
	.dwattr $C$DW$1410, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1410, DW_AT_name("ECAP6")
	.dwattr $C$DW$1410, DW_AT_TI_symbol_name("_ECAP6")
	.dwattr $C$DW$1410, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$1410, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1410, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1410, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1411	.dwtag  DW_TAG_member
	.dwattr $C$DW$1411, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1411, DW_AT_name("rsvd1")
	.dwattr $C$DW$1411, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$1411, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$1411, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1411, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1411, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1412	.dwtag  DW_TAG_member
	.dwattr $C$DW$1412, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1412, DW_AT_name("rsvd2")
	.dwattr $C$DW$1412, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$1412, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$1412, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1412, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1412, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1413	.dwtag  DW_TAG_member
	.dwattr $C$DW$1413, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1413, DW_AT_name("rsvd3")
	.dwattr $C$DW$1413, DW_AT_TI_symbol_name("_rsvd3")
	.dwattr $C$DW$1413, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$1413, DW_AT_bit_size(0x08)
	.dwattr $C$DW$1413, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1413, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1414	.dwtag  DW_TAG_member
	.dwattr $C$DW$1414, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1414, DW_AT_name("rsvd4")
	.dwattr $C$DW$1414, DW_AT_TI_symbol_name("_rsvd4")
	.dwattr $C$DW$1414, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$1414, DW_AT_bit_size(0x10)
	.dwattr $C$DW$1414, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$1414, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$268


$C$DW$T$269	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$269, DW_AT_name("SOFTPRES3_REG")
	.dwattr $C$DW$T$269, DW_AT_byte_size(0x02)
$C$DW$1415	.dwtag  DW_TAG_member
	.dwattr $C$DW$1415, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$1415, DW_AT_name("all")
	.dwattr $C$DW$1415, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$1415, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1415, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1416	.dwtag  DW_TAG_member
	.dwattr $C$DW$1416, DW_AT_type(*$C$DW$T$268)
	.dwattr $C$DW$1416, DW_AT_name("bit")
	.dwattr $C$DW$1416, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$1416, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1416, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$269


$C$DW$T$270	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$270, DW_AT_name("SOFTPRES4_BITS")
	.dwattr $C$DW$T$270, DW_AT_byte_size(0x02)
$C$DW$1417	.dwtag  DW_TAG_member
	.dwattr $C$DW$1417, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1417, DW_AT_name("EQEP1")
	.dwattr $C$DW$1417, DW_AT_TI_symbol_name("_EQEP1")
	.dwattr $C$DW$1417, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$1417, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1417, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1417, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1418	.dwtag  DW_TAG_member
	.dwattr $C$DW$1418, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1418, DW_AT_name("EQEP2")
	.dwattr $C$DW$1418, DW_AT_TI_symbol_name("_EQEP2")
	.dwattr $C$DW$1418, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$1418, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1418, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1418, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1419	.dwtag  DW_TAG_member
	.dwattr $C$DW$1419, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1419, DW_AT_name("EQEP3")
	.dwattr $C$DW$1419, DW_AT_TI_symbol_name("_EQEP3")
	.dwattr $C$DW$1419, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$1419, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1419, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1419, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1420	.dwtag  DW_TAG_member
	.dwattr $C$DW$1420, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1420, DW_AT_name("rsvd1")
	.dwattr $C$DW$1420, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$1420, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$1420, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1420, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1420, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1421	.dwtag  DW_TAG_member
	.dwattr $C$DW$1421, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1421, DW_AT_name("rsvd2")
	.dwattr $C$DW$1421, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$1421, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$1421, DW_AT_bit_size(0x0c)
	.dwattr $C$DW$1421, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1421, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1422	.dwtag  DW_TAG_member
	.dwattr $C$DW$1422, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1422, DW_AT_name("rsvd3")
	.dwattr $C$DW$1422, DW_AT_TI_symbol_name("_rsvd3")
	.dwattr $C$DW$1422, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$1422, DW_AT_bit_size(0x10)
	.dwattr $C$DW$1422, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$1422, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$270


$C$DW$T$271	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$271, DW_AT_name("SOFTPRES4_REG")
	.dwattr $C$DW$T$271, DW_AT_byte_size(0x02)
$C$DW$1423	.dwtag  DW_TAG_member
	.dwattr $C$DW$1423, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$1423, DW_AT_name("all")
	.dwattr $C$DW$1423, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$1423, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1423, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1424	.dwtag  DW_TAG_member
	.dwattr $C$DW$1424, DW_AT_type(*$C$DW$T$270)
	.dwattr $C$DW$1424, DW_AT_name("bit")
	.dwattr $C$DW$1424, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$1424, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1424, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$271


$C$DW$T$272	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$272, DW_AT_name("SOFTPRES6_BITS")
	.dwattr $C$DW$T$272, DW_AT_byte_size(0x02)
$C$DW$1425	.dwtag  DW_TAG_member
	.dwattr $C$DW$1425, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1425, DW_AT_name("SD1")
	.dwattr $C$DW$1425, DW_AT_TI_symbol_name("_SD1")
	.dwattr $C$DW$1425, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$1425, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1425, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1425, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1426	.dwtag  DW_TAG_member
	.dwattr $C$DW$1426, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1426, DW_AT_name("SD2")
	.dwattr $C$DW$1426, DW_AT_TI_symbol_name("_SD2")
	.dwattr $C$DW$1426, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$1426, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1426, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1426, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1427	.dwtag  DW_TAG_member
	.dwattr $C$DW$1427, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1427, DW_AT_name("rsvd1")
	.dwattr $C$DW$1427, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$1427, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$1427, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1427, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1427, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1428	.dwtag  DW_TAG_member
	.dwattr $C$DW$1428, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1428, DW_AT_name("rsvd2")
	.dwattr $C$DW$1428, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$1428, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$1428, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1428, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1428, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1429	.dwtag  DW_TAG_member
	.dwattr $C$DW$1429, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1429, DW_AT_name("rsvd3")
	.dwattr $C$DW$1429, DW_AT_TI_symbol_name("_rsvd3")
	.dwattr $C$DW$1429, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$1429, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1429, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1429, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1430	.dwtag  DW_TAG_member
	.dwattr $C$DW$1430, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1430, DW_AT_name("rsvd4")
	.dwattr $C$DW$1430, DW_AT_TI_symbol_name("_rsvd4")
	.dwattr $C$DW$1430, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$1430, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1430, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1430, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1431	.dwtag  DW_TAG_member
	.dwattr $C$DW$1431, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1431, DW_AT_name("rsvd5")
	.dwattr $C$DW$1431, DW_AT_TI_symbol_name("_rsvd5")
	.dwattr $C$DW$1431, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$1431, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1431, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1431, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1432	.dwtag  DW_TAG_member
	.dwattr $C$DW$1432, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1432, DW_AT_name("rsvd6")
	.dwattr $C$DW$1432, DW_AT_TI_symbol_name("_rsvd6")
	.dwattr $C$DW$1432, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$1432, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1432, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1432, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1433	.dwtag  DW_TAG_member
	.dwattr $C$DW$1433, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1433, DW_AT_name("rsvd7")
	.dwattr $C$DW$1433, DW_AT_TI_symbol_name("_rsvd7")
	.dwattr $C$DW$1433, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$1433, DW_AT_bit_size(0x08)
	.dwattr $C$DW$1433, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1433, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1434	.dwtag  DW_TAG_member
	.dwattr $C$DW$1434, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1434, DW_AT_name("rsvd8")
	.dwattr $C$DW$1434, DW_AT_TI_symbol_name("_rsvd8")
	.dwattr $C$DW$1434, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$1434, DW_AT_bit_size(0x10)
	.dwattr $C$DW$1434, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$1434, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$272


$C$DW$T$273	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$273, DW_AT_name("SOFTPRES6_REG")
	.dwattr $C$DW$T$273, DW_AT_byte_size(0x02)
$C$DW$1435	.dwtag  DW_TAG_member
	.dwattr $C$DW$1435, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$1435, DW_AT_name("all")
	.dwattr $C$DW$1435, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$1435, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1435, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1436	.dwtag  DW_TAG_member
	.dwattr $C$DW$1436, DW_AT_type(*$C$DW$T$272)
	.dwattr $C$DW$1436, DW_AT_name("bit")
	.dwattr $C$DW$1436, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$1436, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1436, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$273


$C$DW$T$274	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$274, DW_AT_name("SOFTPRES7_BITS")
	.dwattr $C$DW$T$274, DW_AT_byte_size(0x02)
$C$DW$1437	.dwtag  DW_TAG_member
	.dwattr $C$DW$1437, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1437, DW_AT_name("SCI_A")
	.dwattr $C$DW$1437, DW_AT_TI_symbol_name("_SCI_A")
	.dwattr $C$DW$1437, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$1437, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1437, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1437, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1438	.dwtag  DW_TAG_member
	.dwattr $C$DW$1438, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1438, DW_AT_name("SCI_B")
	.dwattr $C$DW$1438, DW_AT_TI_symbol_name("_SCI_B")
	.dwattr $C$DW$1438, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$1438, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1438, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1438, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1439	.dwtag  DW_TAG_member
	.dwattr $C$DW$1439, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1439, DW_AT_name("SCI_C")
	.dwattr $C$DW$1439, DW_AT_TI_symbol_name("_SCI_C")
	.dwattr $C$DW$1439, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$1439, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1439, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1439, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1440	.dwtag  DW_TAG_member
	.dwattr $C$DW$1440, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1440, DW_AT_name("SCI_D")
	.dwattr $C$DW$1440, DW_AT_TI_symbol_name("_SCI_D")
	.dwattr $C$DW$1440, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$1440, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1440, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1440, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1441	.dwtag  DW_TAG_member
	.dwattr $C$DW$1441, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1441, DW_AT_name("rsvd1")
	.dwattr $C$DW$1441, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$1441, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$1441, DW_AT_bit_size(0x0c)
	.dwattr $C$DW$1441, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1441, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1442	.dwtag  DW_TAG_member
	.dwattr $C$DW$1442, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1442, DW_AT_name("rsvd2")
	.dwattr $C$DW$1442, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$1442, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$1442, DW_AT_bit_size(0x10)
	.dwattr $C$DW$1442, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$1442, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$274


$C$DW$T$275	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$275, DW_AT_name("SOFTPRES7_REG")
	.dwattr $C$DW$T$275, DW_AT_byte_size(0x02)
$C$DW$1443	.dwtag  DW_TAG_member
	.dwattr $C$DW$1443, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$1443, DW_AT_name("all")
	.dwattr $C$DW$1443, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$1443, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1443, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1444	.dwtag  DW_TAG_member
	.dwattr $C$DW$1444, DW_AT_type(*$C$DW$T$274)
	.dwattr $C$DW$1444, DW_AT_name("bit")
	.dwattr $C$DW$1444, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$1444, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1444, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$275


$C$DW$T$276	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$276, DW_AT_name("SOFTPRES8_BITS")
	.dwattr $C$DW$T$276, DW_AT_byte_size(0x02)
$C$DW$1445	.dwtag  DW_TAG_member
	.dwattr $C$DW$1445, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1445, DW_AT_name("SPI_A")
	.dwattr $C$DW$1445, DW_AT_TI_symbol_name("_SPI_A")
	.dwattr $C$DW$1445, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$1445, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1445, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1445, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1446	.dwtag  DW_TAG_member
	.dwattr $C$DW$1446, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1446, DW_AT_name("SPI_B")
	.dwattr $C$DW$1446, DW_AT_TI_symbol_name("_SPI_B")
	.dwattr $C$DW$1446, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$1446, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1446, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1446, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1447	.dwtag  DW_TAG_member
	.dwattr $C$DW$1447, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1447, DW_AT_name("SPI_C")
	.dwattr $C$DW$1447, DW_AT_TI_symbol_name("_SPI_C")
	.dwattr $C$DW$1447, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$1447, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1447, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1447, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1448	.dwtag  DW_TAG_member
	.dwattr $C$DW$1448, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1448, DW_AT_name("rsvd1")
	.dwattr $C$DW$1448, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$1448, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$1448, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1448, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1448, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1449	.dwtag  DW_TAG_member
	.dwattr $C$DW$1449, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1449, DW_AT_name("rsvd2")
	.dwattr $C$DW$1449, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$1449, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$1449, DW_AT_bit_size(0x0c)
	.dwattr $C$DW$1449, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1449, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1450	.dwtag  DW_TAG_member
	.dwattr $C$DW$1450, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1450, DW_AT_name("rsvd3")
	.dwattr $C$DW$1450, DW_AT_TI_symbol_name("_rsvd3")
	.dwattr $C$DW$1450, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$1450, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1450, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$1450, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1451	.dwtag  DW_TAG_member
	.dwattr $C$DW$1451, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1451, DW_AT_name("rsvd4")
	.dwattr $C$DW$1451, DW_AT_TI_symbol_name("_rsvd4")
	.dwattr $C$DW$1451, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$1451, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1451, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$1451, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1452	.dwtag  DW_TAG_member
	.dwattr $C$DW$1452, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1452, DW_AT_name("rsvd5")
	.dwattr $C$DW$1452, DW_AT_TI_symbol_name("_rsvd5")
	.dwattr $C$DW$1452, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$1452, DW_AT_bit_size(0x0e)
	.dwattr $C$DW$1452, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$1452, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$276


$C$DW$T$277	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$277, DW_AT_name("SOFTPRES8_REG")
	.dwattr $C$DW$T$277, DW_AT_byte_size(0x02)
$C$DW$1453	.dwtag  DW_TAG_member
	.dwattr $C$DW$1453, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$1453, DW_AT_name("all")
	.dwattr $C$DW$1453, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$1453, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1453, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1454	.dwtag  DW_TAG_member
	.dwattr $C$DW$1454, DW_AT_type(*$C$DW$T$276)
	.dwattr $C$DW$1454, DW_AT_name("bit")
	.dwattr $C$DW$1454, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$1454, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1454, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$277


$C$DW$T$278	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$278, DW_AT_name("SOFTPRES9_BITS")
	.dwattr $C$DW$T$278, DW_AT_byte_size(0x02)
$C$DW$1455	.dwtag  DW_TAG_member
	.dwattr $C$DW$1455, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1455, DW_AT_name("I2C_A")
	.dwattr $C$DW$1455, DW_AT_TI_symbol_name("_I2C_A")
	.dwattr $C$DW$1455, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$1455, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1455, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1455, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1456	.dwtag  DW_TAG_member
	.dwattr $C$DW$1456, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1456, DW_AT_name("I2C_B")
	.dwattr $C$DW$1456, DW_AT_TI_symbol_name("_I2C_B")
	.dwattr $C$DW$1456, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$1456, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1456, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1456, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1457	.dwtag  DW_TAG_member
	.dwattr $C$DW$1457, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1457, DW_AT_name("rsvd1")
	.dwattr $C$DW$1457, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$1457, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$1457, DW_AT_bit_size(0x0e)
	.dwattr $C$DW$1457, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1457, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1458	.dwtag  DW_TAG_member
	.dwattr $C$DW$1458, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1458, DW_AT_name("rsvd2")
	.dwattr $C$DW$1458, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$1458, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$1458, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1458, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$1458, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1459	.dwtag  DW_TAG_member
	.dwattr $C$DW$1459, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1459, DW_AT_name("rsvd3")
	.dwattr $C$DW$1459, DW_AT_TI_symbol_name("_rsvd3")
	.dwattr $C$DW$1459, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$1459, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1459, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$1459, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1460	.dwtag  DW_TAG_member
	.dwattr $C$DW$1460, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1460, DW_AT_name("rsvd4")
	.dwattr $C$DW$1460, DW_AT_TI_symbol_name("_rsvd4")
	.dwattr $C$DW$1460, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$1460, DW_AT_bit_size(0x0e)
	.dwattr $C$DW$1460, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$1460, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$278


$C$DW$T$279	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$279, DW_AT_name("SOFTPRES9_REG")
	.dwattr $C$DW$T$279, DW_AT_byte_size(0x02)
$C$DW$1461	.dwtag  DW_TAG_member
	.dwattr $C$DW$1461, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$1461, DW_AT_name("all")
	.dwattr $C$DW$1461, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$1461, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1461, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1462	.dwtag  DW_TAG_member
	.dwattr $C$DW$1462, DW_AT_type(*$C$DW$T$278)
	.dwattr $C$DW$1462, DW_AT_name("bit")
	.dwattr $C$DW$1462, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$1462, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1462, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$279


$C$DW$T$280	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$280, DW_AT_name("SYSCLKDIVSEL_BITS")
	.dwattr $C$DW$T$280, DW_AT_byte_size(0x02)
$C$DW$1463	.dwtag  DW_TAG_member
	.dwattr $C$DW$1463, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1463, DW_AT_name("PLLSYSCLKDIV")
	.dwattr $C$DW$1463, DW_AT_TI_symbol_name("_PLLSYSCLKDIV")
	.dwattr $C$DW$1463, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$1463, DW_AT_bit_size(0x06)
	.dwattr $C$DW$1463, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1463, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1464	.dwtag  DW_TAG_member
	.dwattr $C$DW$1464, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1464, DW_AT_name("rsvd1")
	.dwattr $C$DW$1464, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$1464, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$1464, DW_AT_bit_size(0x0a)
	.dwattr $C$DW$1464, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1464, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1465	.dwtag  DW_TAG_member
	.dwattr $C$DW$1465, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1465, DW_AT_name("rsvd2")
	.dwattr $C$DW$1465, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$1465, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$1465, DW_AT_bit_size(0x10)
	.dwattr $C$DW$1465, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$1465, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$280


$C$DW$T$281	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$281, DW_AT_name("SYSCLKDIVSEL_REG")
	.dwattr $C$DW$T$281, DW_AT_byte_size(0x02)
$C$DW$1466	.dwtag  DW_TAG_member
	.dwattr $C$DW$1466, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$1466, DW_AT_name("all")
	.dwattr $C$DW$1466, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$1466, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1466, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1467	.dwtag  DW_TAG_member
	.dwattr $C$DW$1467, DW_AT_type(*$C$DW$T$280)
	.dwattr $C$DW$1467, DW_AT_name("bit")
	.dwattr $C$DW$1467, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$1467, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1467, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$281


$C$DW$T$282	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$282, DW_AT_name("SYSDBGCTL_BITS")
	.dwattr $C$DW$T$282, DW_AT_byte_size(0x02)
$C$DW$1468	.dwtag  DW_TAG_member
	.dwattr $C$DW$1468, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1468, DW_AT_name("BIT_0")
	.dwattr $C$DW$1468, DW_AT_TI_symbol_name("_BIT_0")
	.dwattr $C$DW$1468, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$1468, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1468, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1468, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1469	.dwtag  DW_TAG_member
	.dwattr $C$DW$1469, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1469, DW_AT_name("rsvd1")
	.dwattr $C$DW$1469, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$1469, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$1469, DW_AT_bit_size(0x0f)
	.dwattr $C$DW$1469, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1469, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1470	.dwtag  DW_TAG_member
	.dwattr $C$DW$1470, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1470, DW_AT_name("rsvd2")
	.dwattr $C$DW$1470, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$1470, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$1470, DW_AT_bit_size(0x10)
	.dwattr $C$DW$1470, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$1470, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$282


$C$DW$T$283	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$283, DW_AT_name("SYSDBGCTL_REG")
	.dwattr $C$DW$T$283, DW_AT_byte_size(0x02)
$C$DW$1471	.dwtag  DW_TAG_member
	.dwattr $C$DW$1471, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$1471, DW_AT_name("all")
	.dwattr $C$DW$1471, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$1471, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1471, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1472	.dwtag  DW_TAG_member
	.dwattr $C$DW$1472, DW_AT_type(*$C$DW$T$282)
	.dwattr $C$DW$1472, DW_AT_name("bit")
	.dwattr $C$DW$1472, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$1472, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1472, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$283


$C$DW$T$284	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$284, DW_AT_name("SYSPLLCTL1_BITS")
	.dwattr $C$DW$T$284, DW_AT_byte_size(0x02)
$C$DW$1473	.dwtag  DW_TAG_member
	.dwattr $C$DW$1473, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1473, DW_AT_name("PLLEN")
	.dwattr $C$DW$1473, DW_AT_TI_symbol_name("_PLLEN")
	.dwattr $C$DW$1473, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$1473, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1473, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1473, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1474	.dwtag  DW_TAG_member
	.dwattr $C$DW$1474, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1474, DW_AT_name("PLLCLKEN")
	.dwattr $C$DW$1474, DW_AT_TI_symbol_name("_PLLCLKEN")
	.dwattr $C$DW$1474, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$1474, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1474, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1474, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1475	.dwtag  DW_TAG_member
	.dwattr $C$DW$1475, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1475, DW_AT_name("rsvd1")
	.dwattr $C$DW$1475, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$1475, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$1475, DW_AT_bit_size(0x0e)
	.dwattr $C$DW$1475, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1475, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1476	.dwtag  DW_TAG_member
	.dwattr $C$DW$1476, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1476, DW_AT_name("rsvd2")
	.dwattr $C$DW$1476, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$1476, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$1476, DW_AT_bit_size(0x10)
	.dwattr $C$DW$1476, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$1476, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$284


$C$DW$T$285	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$285, DW_AT_name("SYSPLLCTL1_REG")
	.dwattr $C$DW$T$285, DW_AT_byte_size(0x02)
$C$DW$1477	.dwtag  DW_TAG_member
	.dwattr $C$DW$1477, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$1477, DW_AT_name("all")
	.dwattr $C$DW$1477, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$1477, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1477, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1478	.dwtag  DW_TAG_member
	.dwattr $C$DW$1478, DW_AT_type(*$C$DW$T$284)
	.dwattr $C$DW$1478, DW_AT_name("bit")
	.dwattr $C$DW$1478, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$1478, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1478, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$285


$C$DW$T$286	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$286, DW_AT_name("SYSPLLMULT_BITS")
	.dwattr $C$DW$T$286, DW_AT_byte_size(0x02)
$C$DW$1479	.dwtag  DW_TAG_member
	.dwattr $C$DW$1479, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1479, DW_AT_name("IMULT")
	.dwattr $C$DW$1479, DW_AT_TI_symbol_name("_IMULT")
	.dwattr $C$DW$1479, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$1479, DW_AT_bit_size(0x07)
	.dwattr $C$DW$1479, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1479, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1480	.dwtag  DW_TAG_member
	.dwattr $C$DW$1480, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1480, DW_AT_name("rsvd1")
	.dwattr $C$DW$1480, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$1480, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$1480, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1480, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1480, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1481	.dwtag  DW_TAG_member
	.dwattr $C$DW$1481, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1481, DW_AT_name("FMULT")
	.dwattr $C$DW$1481, DW_AT_TI_symbol_name("_FMULT")
	.dwattr $C$DW$1481, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$1481, DW_AT_bit_size(0x02)
	.dwattr $C$DW$1481, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1481, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1482	.dwtag  DW_TAG_member
	.dwattr $C$DW$1482, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1482, DW_AT_name("rsvd2")
	.dwattr $C$DW$1482, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$1482, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$1482, DW_AT_bit_size(0x06)
	.dwattr $C$DW$1482, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1482, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1483	.dwtag  DW_TAG_member
	.dwattr $C$DW$1483, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1483, DW_AT_name("rsvd3")
	.dwattr $C$DW$1483, DW_AT_TI_symbol_name("_rsvd3")
	.dwattr $C$DW$1483, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$1483, DW_AT_bit_size(0x10)
	.dwattr $C$DW$1483, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$1483, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$286


$C$DW$T$287	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$287, DW_AT_name("SYSPLLMULT_REG")
	.dwattr $C$DW$T$287, DW_AT_byte_size(0x02)
$C$DW$1484	.dwtag  DW_TAG_member
	.dwattr $C$DW$1484, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$1484, DW_AT_name("all")
	.dwattr $C$DW$1484, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$1484, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1484, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1485	.dwtag  DW_TAG_member
	.dwattr $C$DW$1485, DW_AT_type(*$C$DW$T$286)
	.dwattr $C$DW$1485, DW_AT_name("bit")
	.dwattr $C$DW$1485, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$1485, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1485, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$287


$C$DW$T$288	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$288, DW_AT_name("SYSPLLSTS_BITS")
	.dwattr $C$DW$T$288, DW_AT_byte_size(0x02)
$C$DW$1486	.dwtag  DW_TAG_member
	.dwattr $C$DW$1486, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1486, DW_AT_name("LOCKS")
	.dwattr $C$DW$1486, DW_AT_TI_symbol_name("_LOCKS")
	.dwattr $C$DW$1486, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$1486, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1486, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1486, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1487	.dwtag  DW_TAG_member
	.dwattr $C$DW$1487, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1487, DW_AT_name("SLIPS")
	.dwattr $C$DW$1487, DW_AT_TI_symbol_name("_SLIPS")
	.dwattr $C$DW$1487, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$1487, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1487, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1487, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1488	.dwtag  DW_TAG_member
	.dwattr $C$DW$1488, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1488, DW_AT_name("rsvd1")
	.dwattr $C$DW$1488, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$1488, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$1488, DW_AT_bit_size(0x0e)
	.dwattr $C$DW$1488, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1488, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1489	.dwtag  DW_TAG_member
	.dwattr $C$DW$1489, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1489, DW_AT_name("rsvd2")
	.dwattr $C$DW$1489, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$1489, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$1489, DW_AT_bit_size(0x10)
	.dwattr $C$DW$1489, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$1489, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$288


$C$DW$T$289	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$289, DW_AT_name("SYSPLLSTS_REG")
	.dwattr $C$DW$T$289, DW_AT_byte_size(0x02)
$C$DW$1490	.dwtag  DW_TAG_member
	.dwattr $C$DW$1490, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$1490, DW_AT_name("all")
	.dwattr $C$DW$1490, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$1490, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1490, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1491	.dwtag  DW_TAG_member
	.dwattr $C$DW$1491, DW_AT_type(*$C$DW$T$288)
	.dwattr $C$DW$1491, DW_AT_name("bit")
	.dwattr $C$DW$1491, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$1491, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1491, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$289


$C$DW$T$290	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$290, DW_AT_name("TCR_BITS")
	.dwattr $C$DW$T$290, DW_AT_byte_size(0x01)
$C$DW$1492	.dwtag  DW_TAG_member
	.dwattr $C$DW$1492, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1492, DW_AT_name("rsvd1")
	.dwattr $C$DW$1492, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$1492, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$1492, DW_AT_bit_size(0x04)
	.dwattr $C$DW$1492, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1492, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1493	.dwtag  DW_TAG_member
	.dwattr $C$DW$1493, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1493, DW_AT_name("TSS")
	.dwattr $C$DW$1493, DW_AT_TI_symbol_name("_TSS")
	.dwattr $C$DW$1493, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$1493, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1493, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1493, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1494	.dwtag  DW_TAG_member
	.dwattr $C$DW$1494, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1494, DW_AT_name("TRB")
	.dwattr $C$DW$1494, DW_AT_TI_symbol_name("_TRB")
	.dwattr $C$DW$1494, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$1494, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1494, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1494, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1495	.dwtag  DW_TAG_member
	.dwattr $C$DW$1495, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1495, DW_AT_name("rsvd2")
	.dwattr $C$DW$1495, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$1495, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$1495, DW_AT_bit_size(0x04)
	.dwattr $C$DW$1495, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1495, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1496	.dwtag  DW_TAG_member
	.dwattr $C$DW$1496, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1496, DW_AT_name("SOFT")
	.dwattr $C$DW$1496, DW_AT_TI_symbol_name("_SOFT")
	.dwattr $C$DW$1496, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$1496, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1496, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1496, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1497	.dwtag  DW_TAG_member
	.dwattr $C$DW$1497, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1497, DW_AT_name("FREE")
	.dwattr $C$DW$1497, DW_AT_TI_symbol_name("_FREE")
	.dwattr $C$DW$1497, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$1497, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1497, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1497, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1498	.dwtag  DW_TAG_member
	.dwattr $C$DW$1498, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1498, DW_AT_name("rsvd3")
	.dwattr $C$DW$1498, DW_AT_TI_symbol_name("_rsvd3")
	.dwattr $C$DW$1498, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$1498, DW_AT_bit_size(0x02)
	.dwattr $C$DW$1498, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1498, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1499	.dwtag  DW_TAG_member
	.dwattr $C$DW$1499, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1499, DW_AT_name("TIE")
	.dwattr $C$DW$1499, DW_AT_TI_symbol_name("_TIE")
	.dwattr $C$DW$1499, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$1499, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1499, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1499, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1500	.dwtag  DW_TAG_member
	.dwattr $C$DW$1500, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1500, DW_AT_name("TIF")
	.dwattr $C$DW$1500, DW_AT_TI_symbol_name("_TIF")
	.dwattr $C$DW$1500, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$1500, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1500, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1500, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$290


$C$DW$T$291	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$291, DW_AT_name("TCR_REG")
	.dwattr $C$DW$T$291, DW_AT_byte_size(0x01)
$C$DW$1501	.dwtag  DW_TAG_member
	.dwattr $C$DW$1501, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1501, DW_AT_name("all")
	.dwattr $C$DW$1501, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$1501, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1501, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1502	.dwtag  DW_TAG_member
	.dwattr $C$DW$1502, DW_AT_type(*$C$DW$T$290)
	.dwattr $C$DW$1502, DW_AT_name("bit")
	.dwattr $C$DW$1502, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$1502, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1502, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$291


$C$DW$T$292	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$292, DW_AT_name("TIM_BITS")
	.dwattr $C$DW$T$292, DW_AT_byte_size(0x02)
$C$DW$1503	.dwtag  DW_TAG_member
	.dwattr $C$DW$1503, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1503, DW_AT_name("LSW")
	.dwattr $C$DW$1503, DW_AT_TI_symbol_name("_LSW")
	.dwattr $C$DW$1503, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$1503, DW_AT_bit_size(0x10)
	.dwattr $C$DW$1503, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1503, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1504	.dwtag  DW_TAG_member
	.dwattr $C$DW$1504, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1504, DW_AT_name("MSW")
	.dwattr $C$DW$1504, DW_AT_TI_symbol_name("_MSW")
	.dwattr $C$DW$1504, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$1504, DW_AT_bit_size(0x10)
	.dwattr $C$DW$1504, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$1504, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$292


$C$DW$T$293	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$293, DW_AT_name("TIM_REG")
	.dwattr $C$DW$T$293, DW_AT_byte_size(0x02)
$C$DW$1505	.dwtag  DW_TAG_member
	.dwattr $C$DW$1505, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$1505, DW_AT_name("all")
	.dwattr $C$DW$1505, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$1505, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1505, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1506	.dwtag  DW_TAG_member
	.dwattr $C$DW$1506, DW_AT_type(*$C$DW$T$292)
	.dwattr $C$DW$1506, DW_AT_name("bit")
	.dwattr $C$DW$1506, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$1506, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1506, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$293


$C$DW$T$294	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$294, DW_AT_name("TMR2CLKCTL_BITS")
	.dwattr $C$DW$T$294, DW_AT_byte_size(0x02)
$C$DW$1507	.dwtag  DW_TAG_member
	.dwattr $C$DW$1507, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1507, DW_AT_name("TMR2CLKSRCSEL")
	.dwattr $C$DW$1507, DW_AT_TI_symbol_name("_TMR2CLKSRCSEL")
	.dwattr $C$DW$1507, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$1507, DW_AT_bit_size(0x03)
	.dwattr $C$DW$1507, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1507, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1508	.dwtag  DW_TAG_member
	.dwattr $C$DW$1508, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1508, DW_AT_name("TMR2CLKPRESCALE")
	.dwattr $C$DW$1508, DW_AT_TI_symbol_name("_TMR2CLKPRESCALE")
	.dwattr $C$DW$1508, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$1508, DW_AT_bit_size(0x03)
	.dwattr $C$DW$1508, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1508, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1509	.dwtag  DW_TAG_member
	.dwattr $C$DW$1509, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1509, DW_AT_name("rsvd1")
	.dwattr $C$DW$1509, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$1509, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$1509, DW_AT_bit_size(0x0a)
	.dwattr $C$DW$1509, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1509, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1510	.dwtag  DW_TAG_member
	.dwattr $C$DW$1510, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1510, DW_AT_name("rsvd2")
	.dwattr $C$DW$1510, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$1510, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$1510, DW_AT_bit_size(0x10)
	.dwattr $C$DW$1510, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$1510, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$294


$C$DW$T$295	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$295, DW_AT_name("TMR2CLKCTL_REG")
	.dwattr $C$DW$T$295, DW_AT_byte_size(0x02)
$C$DW$1511	.dwtag  DW_TAG_member
	.dwattr $C$DW$1511, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$1511, DW_AT_name("all")
	.dwattr $C$DW$1511, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$1511, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1511, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1512	.dwtag  DW_TAG_member
	.dwattr $C$DW$1512, DW_AT_type(*$C$DW$T$294)
	.dwattr $C$DW$1512, DW_AT_name("bit")
	.dwattr $C$DW$1512, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$1512, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1512, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$295


$C$DW$T$296	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$296, DW_AT_name("TPRH_BITS")
	.dwattr $C$DW$T$296, DW_AT_byte_size(0x01)
$C$DW$1513	.dwtag  DW_TAG_member
	.dwattr $C$DW$1513, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1513, DW_AT_name("TDDRH")
	.dwattr $C$DW$1513, DW_AT_TI_symbol_name("_TDDRH")
	.dwattr $C$DW$1513, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$1513, DW_AT_bit_size(0x08)
	.dwattr $C$DW$1513, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1513, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1514	.dwtag  DW_TAG_member
	.dwattr $C$DW$1514, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1514, DW_AT_name("PSCH")
	.dwattr $C$DW$1514, DW_AT_TI_symbol_name("_PSCH")
	.dwattr $C$DW$1514, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$1514, DW_AT_bit_size(0x08)
	.dwattr $C$DW$1514, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1514, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$296


$C$DW$T$297	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$297, DW_AT_name("TPRH_REG")
	.dwattr $C$DW$T$297, DW_AT_byte_size(0x01)
$C$DW$1515	.dwtag  DW_TAG_member
	.dwattr $C$DW$1515, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1515, DW_AT_name("all")
	.dwattr $C$DW$1515, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$1515, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1515, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1516	.dwtag  DW_TAG_member
	.dwattr $C$DW$1516, DW_AT_type(*$C$DW$T$296)
	.dwattr $C$DW$1516, DW_AT_name("bit")
	.dwattr $C$DW$1516, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$1516, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1516, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$297


$C$DW$T$298	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$298, DW_AT_name("TPR_BITS")
	.dwattr $C$DW$T$298, DW_AT_byte_size(0x01)
$C$DW$1517	.dwtag  DW_TAG_member
	.dwattr $C$DW$1517, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1517, DW_AT_name("TDDR")
	.dwattr $C$DW$1517, DW_AT_TI_symbol_name("_TDDR")
	.dwattr $C$DW$1517, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$1517, DW_AT_bit_size(0x08)
	.dwattr $C$DW$1517, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1517, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1518	.dwtag  DW_TAG_member
	.dwattr $C$DW$1518, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1518, DW_AT_name("PSC")
	.dwattr $C$DW$1518, DW_AT_TI_symbol_name("_PSC")
	.dwattr $C$DW$1518, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$1518, DW_AT_bit_size(0x08)
	.dwattr $C$DW$1518, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1518, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$298


$C$DW$T$299	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$299, DW_AT_name("TPR_REG")
	.dwattr $C$DW$T$299, DW_AT_byte_size(0x01)
$C$DW$1519	.dwtag  DW_TAG_member
	.dwattr $C$DW$1519, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1519, DW_AT_name("all")
	.dwattr $C$DW$1519, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$1519, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1519, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1520	.dwtag  DW_TAG_member
	.dwattr $C$DW$1520, DW_AT_type(*$C$DW$T$298)
	.dwattr $C$DW$1520, DW_AT_name("bit")
	.dwattr $C$DW$1520, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$1520, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1520, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$299


$C$DW$T$300	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$300, DW_AT_name("TSNSCTL_BITS")
	.dwattr $C$DW$T$300, DW_AT_byte_size(0x01)
$C$DW$1521	.dwtag  DW_TAG_member
	.dwattr $C$DW$1521, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1521, DW_AT_name("ENABLE")
	.dwattr $C$DW$1521, DW_AT_TI_symbol_name("_ENABLE")
	.dwattr $C$DW$1521, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$1521, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1521, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1521, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1522	.dwtag  DW_TAG_member
	.dwattr $C$DW$1522, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1522, DW_AT_name("rsvd1")
	.dwattr $C$DW$1522, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$1522, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$1522, DW_AT_bit_size(0x0f)
	.dwattr $C$DW$1522, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1522, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$300


$C$DW$T$301	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$301, DW_AT_name("TSNSCTL_REG")
	.dwattr $C$DW$T$301, DW_AT_byte_size(0x01)
$C$DW$1523	.dwtag  DW_TAG_member
	.dwattr $C$DW$1523, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1523, DW_AT_name("all")
	.dwattr $C$DW$1523, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$1523, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1523, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1524	.dwtag  DW_TAG_member
	.dwattr $C$DW$1524, DW_AT_type(*$C$DW$T$300)
	.dwattr $C$DW$1524, DW_AT_name("bit")
	.dwattr $C$DW$1524, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$1524, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1524, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$301


$C$DW$T$302	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$302, DW_AT_name("WDCNTR_BITS")
	.dwattr $C$DW$T$302, DW_AT_byte_size(0x01)
$C$DW$1525	.dwtag  DW_TAG_member
	.dwattr $C$DW$1525, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1525, DW_AT_name("WDCNTR")
	.dwattr $C$DW$1525, DW_AT_TI_symbol_name("_WDCNTR")
	.dwattr $C$DW$1525, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$1525, DW_AT_bit_size(0x08)
	.dwattr $C$DW$1525, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1525, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1526	.dwtag  DW_TAG_member
	.dwattr $C$DW$1526, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1526, DW_AT_name("rsvd1")
	.dwattr $C$DW$1526, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$1526, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$1526, DW_AT_bit_size(0x08)
	.dwattr $C$DW$1526, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1526, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$302


$C$DW$T$303	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$303, DW_AT_name("WDCNTR_REG")
	.dwattr $C$DW$T$303, DW_AT_byte_size(0x01)
$C$DW$1527	.dwtag  DW_TAG_member
	.dwattr $C$DW$1527, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1527, DW_AT_name("all")
	.dwattr $C$DW$1527, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$1527, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1527, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1528	.dwtag  DW_TAG_member
	.dwattr $C$DW$1528, DW_AT_type(*$C$DW$T$302)
	.dwattr $C$DW$1528, DW_AT_name("bit")
	.dwattr $C$DW$1528, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$1528, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1528, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$303


$C$DW$T$304	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$304, DW_AT_name("WDCR_BITS")
	.dwattr $C$DW$T$304, DW_AT_byte_size(0x01)
$C$DW$1529	.dwtag  DW_TAG_member
	.dwattr $C$DW$1529, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1529, DW_AT_name("WDPS")
	.dwattr $C$DW$1529, DW_AT_TI_symbol_name("_WDPS")
	.dwattr $C$DW$1529, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$1529, DW_AT_bit_size(0x03)
	.dwattr $C$DW$1529, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1529, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1530	.dwtag  DW_TAG_member
	.dwattr $C$DW$1530, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1530, DW_AT_name("WDCHK")
	.dwattr $C$DW$1530, DW_AT_TI_symbol_name("_WDCHK")
	.dwattr $C$DW$1530, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$1530, DW_AT_bit_size(0x03)
	.dwattr $C$DW$1530, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1530, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1531	.dwtag  DW_TAG_member
	.dwattr $C$DW$1531, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1531, DW_AT_name("WDDIS")
	.dwattr $C$DW$1531, DW_AT_TI_symbol_name("_WDDIS")
	.dwattr $C$DW$1531, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$1531, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1531, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1531, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1532	.dwtag  DW_TAG_member
	.dwattr $C$DW$1532, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1532, DW_AT_name("rsvd1")
	.dwattr $C$DW$1532, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$1532, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$1532, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1532, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1532, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1533	.dwtag  DW_TAG_member
	.dwattr $C$DW$1533, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1533, DW_AT_name("rsvd2")
	.dwattr $C$DW$1533, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$1533, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$1533, DW_AT_bit_size(0x08)
	.dwattr $C$DW$1533, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1533, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$304


$C$DW$T$305	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$305, DW_AT_name("WDCR_REG")
	.dwattr $C$DW$T$305, DW_AT_byte_size(0x01)
$C$DW$1534	.dwtag  DW_TAG_member
	.dwattr $C$DW$1534, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1534, DW_AT_name("all")
	.dwattr $C$DW$1534, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$1534, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1534, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1535	.dwtag  DW_TAG_member
	.dwattr $C$DW$1535, DW_AT_type(*$C$DW$T$304)
	.dwattr $C$DW$1535, DW_AT_name("bit")
	.dwattr $C$DW$1535, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$1535, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1535, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$305


$C$DW$T$306	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$306, DW_AT_name("WDKEY_BITS")
	.dwattr $C$DW$T$306, DW_AT_byte_size(0x01)
$C$DW$1536	.dwtag  DW_TAG_member
	.dwattr $C$DW$1536, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1536, DW_AT_name("WDKEY")
	.dwattr $C$DW$1536, DW_AT_TI_symbol_name("_WDKEY")
	.dwattr $C$DW$1536, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$1536, DW_AT_bit_size(0x08)
	.dwattr $C$DW$1536, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1536, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1537	.dwtag  DW_TAG_member
	.dwattr $C$DW$1537, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1537, DW_AT_name("rsvd1")
	.dwattr $C$DW$1537, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$1537, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$1537, DW_AT_bit_size(0x08)
	.dwattr $C$DW$1537, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1537, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$306


$C$DW$T$307	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$307, DW_AT_name("WDKEY_REG")
	.dwattr $C$DW$T$307, DW_AT_byte_size(0x01)
$C$DW$1538	.dwtag  DW_TAG_member
	.dwattr $C$DW$1538, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1538, DW_AT_name("all")
	.dwattr $C$DW$1538, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$1538, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1538, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1539	.dwtag  DW_TAG_member
	.dwattr $C$DW$1539, DW_AT_type(*$C$DW$T$306)
	.dwattr $C$DW$1539, DW_AT_name("bit")
	.dwattr $C$DW$1539, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$1539, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1539, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$307


$C$DW$T$308	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$308, DW_AT_name("WDWCR_BITS")
	.dwattr $C$DW$T$308, DW_AT_byte_size(0x01)
$C$DW$1540	.dwtag  DW_TAG_member
	.dwattr $C$DW$1540, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1540, DW_AT_name("MIN")
	.dwattr $C$DW$1540, DW_AT_TI_symbol_name("_MIN")
	.dwattr $C$DW$1540, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$1540, DW_AT_bit_size(0x08)
	.dwattr $C$DW$1540, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1540, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1541	.dwtag  DW_TAG_member
	.dwattr $C$DW$1541, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1541, DW_AT_name("FIRSTKEY")
	.dwattr $C$DW$1541, DW_AT_TI_symbol_name("_FIRSTKEY")
	.dwattr $C$DW$1541, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$1541, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1541, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1541, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1542	.dwtag  DW_TAG_member
	.dwattr $C$DW$1542, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1542, DW_AT_name("rsvd1")
	.dwattr $C$DW$1542, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$1542, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$1542, DW_AT_bit_size(0x07)
	.dwattr $C$DW$1542, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1542, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$308


$C$DW$T$309	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$309, DW_AT_name("WDWCR_REG")
	.dwattr $C$DW$T$309, DW_AT_byte_size(0x01)
$C$DW$1543	.dwtag  DW_TAG_member
	.dwattr $C$DW$1543, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1543, DW_AT_name("all")
	.dwattr $C$DW$1543, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$1543, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1543, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1544	.dwtag  DW_TAG_member
	.dwattr $C$DW$1544, DW_AT_type(*$C$DW$T$308)
	.dwattr $C$DW$1544, DW_AT_name("bit")
	.dwattr $C$DW$1544, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$1544, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1544, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$309


$C$DW$T$312	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$312, DW_AT_name("WD_REGS")
	.dwattr $C$DW$T$312, DW_AT_byte_size(0x2b)
$C$DW$1545	.dwtag  DW_TAG_member
	.dwattr $C$DW$1545, DW_AT_type(*$C$DW$T$310)
	.dwattr $C$DW$1545, DW_AT_name("rsvd1")
	.dwattr $C$DW$1545, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$1545, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1545, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1546	.dwtag  DW_TAG_member
	.dwattr $C$DW$1546, DW_AT_type(*$C$DW$T$251)
	.dwattr $C$DW$1546, DW_AT_name("SCSR")
	.dwattr $C$DW$1546, DW_AT_TI_symbol_name("_SCSR")
	.dwattr $C$DW$1546, DW_AT_data_member_location[DW_OP_plus_uconst 0x22]
	.dwattr $C$DW$1546, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1547	.dwtag  DW_TAG_member
	.dwattr $C$DW$1547, DW_AT_type(*$C$DW$T$303)
	.dwattr $C$DW$1547, DW_AT_name("WDCNTR")
	.dwattr $C$DW$1547, DW_AT_TI_symbol_name("_WDCNTR")
	.dwattr $C$DW$1547, DW_AT_data_member_location[DW_OP_plus_uconst 0x23]
	.dwattr $C$DW$1547, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1548	.dwtag  DW_TAG_member
	.dwattr $C$DW$1548, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1548, DW_AT_name("rsvd2")
	.dwattr $C$DW$1548, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$1548, DW_AT_data_member_location[DW_OP_plus_uconst 0x24]
	.dwattr $C$DW$1548, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1549	.dwtag  DW_TAG_member
	.dwattr $C$DW$1549, DW_AT_type(*$C$DW$T$307)
	.dwattr $C$DW$1549, DW_AT_name("WDKEY")
	.dwattr $C$DW$1549, DW_AT_TI_symbol_name("_WDKEY")
	.dwattr $C$DW$1549, DW_AT_data_member_location[DW_OP_plus_uconst 0x25]
	.dwattr $C$DW$1549, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1550	.dwtag  DW_TAG_member
	.dwattr $C$DW$1550, DW_AT_type(*$C$DW$T$311)
	.dwattr $C$DW$1550, DW_AT_name("rsvd3")
	.dwattr $C$DW$1550, DW_AT_TI_symbol_name("_rsvd3")
	.dwattr $C$DW$1550, DW_AT_data_member_location[DW_OP_plus_uconst 0x26]
	.dwattr $C$DW$1550, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1551	.dwtag  DW_TAG_member
	.dwattr $C$DW$1551, DW_AT_type(*$C$DW$T$305)
	.dwattr $C$DW$1551, DW_AT_name("WDCR")
	.dwattr $C$DW$1551, DW_AT_TI_symbol_name("_WDCR")
	.dwattr $C$DW$1551, DW_AT_data_member_location[DW_OP_plus_uconst 0x29]
	.dwattr $C$DW$1551, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1552	.dwtag  DW_TAG_member
	.dwattr $C$DW$1552, DW_AT_type(*$C$DW$T$309)
	.dwattr $C$DW$1552, DW_AT_name("WDWCR")
	.dwattr $C$DW$1552, DW_AT_TI_symbol_name("_WDWCR")
	.dwattr $C$DW$1552, DW_AT_data_member_location[DW_OP_plus_uconst 0x2a]
	.dwattr $C$DW$1552, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$312

$C$DW$1553	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$1553, DW_AT_type(*$C$DW$T$312)

$C$DW$T$451	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$451, DW_AT_type(*$C$DW$1553)


$C$DW$T$313	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$313, DW_AT_name("X1CNT_BITS")
	.dwattr $C$DW$T$313, DW_AT_byte_size(0x02)
$C$DW$1554	.dwtag  DW_TAG_member
	.dwattr $C$DW$1554, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1554, DW_AT_name("X1CNT")
	.dwattr $C$DW$1554, DW_AT_TI_symbol_name("_X1CNT")
	.dwattr $C$DW$1554, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$1554, DW_AT_bit_size(0x0a)
	.dwattr $C$DW$1554, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1554, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1555	.dwtag  DW_TAG_member
	.dwattr $C$DW$1555, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1555, DW_AT_name("rsvd1")
	.dwattr $C$DW$1555, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$1555, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$1555, DW_AT_bit_size(0x06)
	.dwattr $C$DW$1555, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1555, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1556	.dwtag  DW_TAG_member
	.dwattr $C$DW$1556, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1556, DW_AT_name("rsvd2")
	.dwattr $C$DW$1556, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$1556, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$1556, DW_AT_bit_size(0x10)
	.dwattr $C$DW$1556, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$1556, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$313


$C$DW$T$314	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$314, DW_AT_name("X1CNT_REG")
	.dwattr $C$DW$T$314, DW_AT_byte_size(0x02)
$C$DW$1557	.dwtag  DW_TAG_member
	.dwattr $C$DW$1557, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$1557, DW_AT_name("all")
	.dwattr $C$DW$1557, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$1557, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1557, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1558	.dwtag  DW_TAG_member
	.dwattr $C$DW$1558, DW_AT_type(*$C$DW$T$313)
	.dwattr $C$DW$1558, DW_AT_name("bit")
	.dwattr $C$DW$1558, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$1558, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1558, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$314


$C$DW$T$315	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$315, DW_AT_name("XCLKOUTDIVSEL_BITS")
	.dwattr $C$DW$T$315, DW_AT_byte_size(0x02)
$C$DW$1559	.dwtag  DW_TAG_member
	.dwattr $C$DW$1559, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1559, DW_AT_name("XCLKOUTDIV")
	.dwattr $C$DW$1559, DW_AT_TI_symbol_name("_XCLKOUTDIV")
	.dwattr $C$DW$1559, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$1559, DW_AT_bit_size(0x02)
	.dwattr $C$DW$1559, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1559, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1560	.dwtag  DW_TAG_member
	.dwattr $C$DW$1560, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1560, DW_AT_name("rsvd1")
	.dwattr $C$DW$1560, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$1560, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$1560, DW_AT_bit_size(0x0e)
	.dwattr $C$DW$1560, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1560, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1561	.dwtag  DW_TAG_member
	.dwattr $C$DW$1561, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1561, DW_AT_name("rsvd2")
	.dwattr $C$DW$1561, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$1561, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$1561, DW_AT_bit_size(0x10)
	.dwattr $C$DW$1561, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$1561, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$315


$C$DW$T$316	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$316, DW_AT_name("XCLKOUTDIVSEL_REG")
	.dwattr $C$DW$T$316, DW_AT_byte_size(0x02)
$C$DW$1562	.dwtag  DW_TAG_member
	.dwattr $C$DW$1562, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$1562, DW_AT_name("all")
	.dwattr $C$DW$1562, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$1562, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1562, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1563	.dwtag  DW_TAG_member
	.dwattr $C$DW$1563, DW_AT_type(*$C$DW$T$315)
	.dwattr $C$DW$1563, DW_AT_name("bit")
	.dwattr $C$DW$1563, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$1563, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1563, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$316


$C$DW$T$317	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$317, DW_AT_name("Z1_BOOTCTRL_BITS")
	.dwattr $C$DW$T$317, DW_AT_byte_size(0x02)
$C$DW$1564	.dwtag  DW_TAG_member
	.dwattr $C$DW$1564, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1564, DW_AT_name("KEY")
	.dwattr $C$DW$1564, DW_AT_TI_symbol_name("_KEY")
	.dwattr $C$DW$1564, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$1564, DW_AT_bit_size(0x08)
	.dwattr $C$DW$1564, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1564, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1565	.dwtag  DW_TAG_member
	.dwattr $C$DW$1565, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1565, DW_AT_name("BMODE")
	.dwattr $C$DW$1565, DW_AT_TI_symbol_name("_BMODE")
	.dwattr $C$DW$1565, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$1565, DW_AT_bit_size(0x08)
	.dwattr $C$DW$1565, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1565, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1566	.dwtag  DW_TAG_member
	.dwattr $C$DW$1566, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1566, DW_AT_name("BOOTPIN0")
	.dwattr $C$DW$1566, DW_AT_TI_symbol_name("_BOOTPIN0")
	.dwattr $C$DW$1566, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$1566, DW_AT_bit_size(0x08)
	.dwattr $C$DW$1566, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$1566, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1567	.dwtag  DW_TAG_member
	.dwattr $C$DW$1567, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1567, DW_AT_name("BOOTPIN1")
	.dwattr $C$DW$1567, DW_AT_TI_symbol_name("_BOOTPIN1")
	.dwattr $C$DW$1567, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$1567, DW_AT_bit_size(0x08)
	.dwattr $C$DW$1567, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$1567, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$317


$C$DW$T$318	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$318, DW_AT_name("Z1_BOOTCTRL_REG")
	.dwattr $C$DW$T$318, DW_AT_byte_size(0x02)
$C$DW$1568	.dwtag  DW_TAG_member
	.dwattr $C$DW$1568, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$1568, DW_AT_name("all")
	.dwattr $C$DW$1568, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$1568, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1568, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1569	.dwtag  DW_TAG_member
	.dwattr $C$DW$1569, DW_AT_type(*$C$DW$T$317)
	.dwattr $C$DW$1569, DW_AT_name("bit")
	.dwattr $C$DW$1569, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$1569, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1569, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$318


$C$DW$T$319	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$319, DW_AT_name("Z1_CR_BITS")
	.dwattr $C$DW$T$319, DW_AT_byte_size(0x01)
$C$DW$1570	.dwtag  DW_TAG_member
	.dwattr $C$DW$1570, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1570, DW_AT_name("rsvd1")
	.dwattr $C$DW$1570, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$1570, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$1570, DW_AT_bit_size(0x03)
	.dwattr $C$DW$1570, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1570, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1571	.dwtag  DW_TAG_member
	.dwattr $C$DW$1571, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1571, DW_AT_name("ALLZERO")
	.dwattr $C$DW$1571, DW_AT_TI_symbol_name("_ALLZERO")
	.dwattr $C$DW$1571, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$1571, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1571, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1571, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1572	.dwtag  DW_TAG_member
	.dwattr $C$DW$1572, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1572, DW_AT_name("ALLONE")
	.dwattr $C$DW$1572, DW_AT_TI_symbol_name("_ALLONE")
	.dwattr $C$DW$1572, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$1572, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1572, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1572, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1573	.dwtag  DW_TAG_member
	.dwattr $C$DW$1573, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1573, DW_AT_name("UNSECURE")
	.dwattr $C$DW$1573, DW_AT_TI_symbol_name("_UNSECURE")
	.dwattr $C$DW$1573, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$1573, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1573, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1573, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1574	.dwtag  DW_TAG_member
	.dwattr $C$DW$1574, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1574, DW_AT_name("ARMED")
	.dwattr $C$DW$1574, DW_AT_TI_symbol_name("_ARMED")
	.dwattr $C$DW$1574, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$1574, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1574, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1574, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1575	.dwtag  DW_TAG_member
	.dwattr $C$DW$1575, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1575, DW_AT_name("rsvd2")
	.dwattr $C$DW$1575, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$1575, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$1575, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1575, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1575, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1576	.dwtag  DW_TAG_member
	.dwattr $C$DW$1576, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1576, DW_AT_name("rsvd3")
	.dwattr $C$DW$1576, DW_AT_TI_symbol_name("_rsvd3")
	.dwattr $C$DW$1576, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$1576, DW_AT_bit_size(0x07)
	.dwattr $C$DW$1576, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1576, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1577	.dwtag  DW_TAG_member
	.dwattr $C$DW$1577, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1577, DW_AT_name("FORCESEC")
	.dwattr $C$DW$1577, DW_AT_TI_symbol_name("_FORCESEC")
	.dwattr $C$DW$1577, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$1577, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1577, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1577, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$319


$C$DW$T$320	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$320, DW_AT_name("Z1_CR_REG")
	.dwattr $C$DW$T$320, DW_AT_byte_size(0x01)
$C$DW$1578	.dwtag  DW_TAG_member
	.dwattr $C$DW$1578, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1578, DW_AT_name("all")
	.dwattr $C$DW$1578, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$1578, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1578, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1579	.dwtag  DW_TAG_member
	.dwattr $C$DW$1579, DW_AT_type(*$C$DW$T$319)
	.dwattr $C$DW$1579, DW_AT_name("bit")
	.dwattr $C$DW$1579, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$1579, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1579, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$320


$C$DW$T$321	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$321, DW_AT_name("Z1_EXEONLYRAMR_BITS")
	.dwattr $C$DW$T$321, DW_AT_byte_size(0x02)
$C$DW$1580	.dwtag  DW_TAG_member
	.dwattr $C$DW$1580, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1580, DW_AT_name("EXEONLY_RAM0")
	.dwattr $C$DW$1580, DW_AT_TI_symbol_name("_EXEONLY_RAM0")
	.dwattr $C$DW$1580, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$1580, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1580, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1580, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1581	.dwtag  DW_TAG_member
	.dwattr $C$DW$1581, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1581, DW_AT_name("EXEONLY_RAM1")
	.dwattr $C$DW$1581, DW_AT_TI_symbol_name("_EXEONLY_RAM1")
	.dwattr $C$DW$1581, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$1581, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1581, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1581, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1582	.dwtag  DW_TAG_member
	.dwattr $C$DW$1582, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1582, DW_AT_name("EXEONLY_RAM2")
	.dwattr $C$DW$1582, DW_AT_TI_symbol_name("_EXEONLY_RAM2")
	.dwattr $C$DW$1582, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$1582, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1582, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1582, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1583	.dwtag  DW_TAG_member
	.dwattr $C$DW$1583, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1583, DW_AT_name("EXEONLY_RAM3")
	.dwattr $C$DW$1583, DW_AT_TI_symbol_name("_EXEONLY_RAM3")
	.dwattr $C$DW$1583, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$1583, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1583, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1583, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1584	.dwtag  DW_TAG_member
	.dwattr $C$DW$1584, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1584, DW_AT_name("EXEONLY_RAM4")
	.dwattr $C$DW$1584, DW_AT_TI_symbol_name("_EXEONLY_RAM4")
	.dwattr $C$DW$1584, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$1584, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1584, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1584, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1585	.dwtag  DW_TAG_member
	.dwattr $C$DW$1585, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1585, DW_AT_name("EXEONLY_RAM5")
	.dwattr $C$DW$1585, DW_AT_TI_symbol_name("_EXEONLY_RAM5")
	.dwattr $C$DW$1585, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$1585, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1585, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1585, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1586	.dwtag  DW_TAG_member
	.dwattr $C$DW$1586, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1586, DW_AT_name("EXEONLY_RAM6")
	.dwattr $C$DW$1586, DW_AT_TI_symbol_name("_EXEONLY_RAM6")
	.dwattr $C$DW$1586, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$1586, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1586, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1586, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1587	.dwtag  DW_TAG_member
	.dwattr $C$DW$1587, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1587, DW_AT_name("EXEONLY_RAM7")
	.dwattr $C$DW$1587, DW_AT_TI_symbol_name("_EXEONLY_RAM7")
	.dwattr $C$DW$1587, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$1587, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1587, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1587, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1588	.dwtag  DW_TAG_member
	.dwattr $C$DW$1588, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1588, DW_AT_name("rsvd1")
	.dwattr $C$DW$1588, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$1588, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$1588, DW_AT_bit_size(0x08)
	.dwattr $C$DW$1588, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1588, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1589	.dwtag  DW_TAG_member
	.dwattr $C$DW$1589, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1589, DW_AT_name("rsvd2")
	.dwattr $C$DW$1589, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$1589, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$1589, DW_AT_bit_size(0x10)
	.dwattr $C$DW$1589, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$1589, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$321


$C$DW$T$322	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$322, DW_AT_name("Z1_EXEONLYRAMR_REG")
	.dwattr $C$DW$T$322, DW_AT_byte_size(0x02)
$C$DW$1590	.dwtag  DW_TAG_member
	.dwattr $C$DW$1590, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$1590, DW_AT_name("all")
	.dwattr $C$DW$1590, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$1590, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1590, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1591	.dwtag  DW_TAG_member
	.dwattr $C$DW$1591, DW_AT_type(*$C$DW$T$321)
	.dwattr $C$DW$1591, DW_AT_name("bit")
	.dwattr $C$DW$1591, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$1591, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1591, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$322


$C$DW$T$323	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$323, DW_AT_name("Z1_EXEONLYSECTR_BITS")
	.dwattr $C$DW$T$323, DW_AT_byte_size(0x02)
$C$DW$1592	.dwtag  DW_TAG_member
	.dwattr $C$DW$1592, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1592, DW_AT_name("EXEONLY_SECTA")
	.dwattr $C$DW$1592, DW_AT_TI_symbol_name("_EXEONLY_SECTA")
	.dwattr $C$DW$1592, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$1592, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1592, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1592, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1593	.dwtag  DW_TAG_member
	.dwattr $C$DW$1593, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1593, DW_AT_name("EXEONLY_SECTB")
	.dwattr $C$DW$1593, DW_AT_TI_symbol_name("_EXEONLY_SECTB")
	.dwattr $C$DW$1593, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$1593, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1593, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1593, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1594	.dwtag  DW_TAG_member
	.dwattr $C$DW$1594, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1594, DW_AT_name("EXEONLY_SECTC")
	.dwattr $C$DW$1594, DW_AT_TI_symbol_name("_EXEONLY_SECTC")
	.dwattr $C$DW$1594, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$1594, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1594, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1594, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1595	.dwtag  DW_TAG_member
	.dwattr $C$DW$1595, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1595, DW_AT_name("EXEONLY_SECTD")
	.dwattr $C$DW$1595, DW_AT_TI_symbol_name("_EXEONLY_SECTD")
	.dwattr $C$DW$1595, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$1595, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1595, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1595, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1596	.dwtag  DW_TAG_member
	.dwattr $C$DW$1596, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1596, DW_AT_name("EXEONLY_SECTE")
	.dwattr $C$DW$1596, DW_AT_TI_symbol_name("_EXEONLY_SECTE")
	.dwattr $C$DW$1596, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$1596, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1596, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1596, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1597	.dwtag  DW_TAG_member
	.dwattr $C$DW$1597, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1597, DW_AT_name("EXEONLY_SECTF")
	.dwattr $C$DW$1597, DW_AT_TI_symbol_name("_EXEONLY_SECTF")
	.dwattr $C$DW$1597, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$1597, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1597, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1597, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1598	.dwtag  DW_TAG_member
	.dwattr $C$DW$1598, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1598, DW_AT_name("EXEONLY_SECTG")
	.dwattr $C$DW$1598, DW_AT_TI_symbol_name("_EXEONLY_SECTG")
	.dwattr $C$DW$1598, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$1598, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1598, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1598, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1599	.dwtag  DW_TAG_member
	.dwattr $C$DW$1599, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1599, DW_AT_name("EXEONLY_SECTH")
	.dwattr $C$DW$1599, DW_AT_TI_symbol_name("_EXEONLY_SECTH")
	.dwattr $C$DW$1599, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$1599, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1599, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1599, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1600	.dwtag  DW_TAG_member
	.dwattr $C$DW$1600, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1600, DW_AT_name("EXEONLY_SECTI")
	.dwattr $C$DW$1600, DW_AT_TI_symbol_name("_EXEONLY_SECTI")
	.dwattr $C$DW$1600, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$1600, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1600, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1600, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1601	.dwtag  DW_TAG_member
	.dwattr $C$DW$1601, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1601, DW_AT_name("EXEONLY_SECTJ")
	.dwattr $C$DW$1601, DW_AT_TI_symbol_name("_EXEONLY_SECTJ")
	.dwattr $C$DW$1601, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$1601, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1601, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1601, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1602	.dwtag  DW_TAG_member
	.dwattr $C$DW$1602, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1602, DW_AT_name("EXEONLY_SECTK")
	.dwattr $C$DW$1602, DW_AT_TI_symbol_name("_EXEONLY_SECTK")
	.dwattr $C$DW$1602, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$1602, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1602, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1602, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1603	.dwtag  DW_TAG_member
	.dwattr $C$DW$1603, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1603, DW_AT_name("EXEONLY_SECTL")
	.dwattr $C$DW$1603, DW_AT_TI_symbol_name("_EXEONLY_SECTL")
	.dwattr $C$DW$1603, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$1603, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1603, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1603, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1604	.dwtag  DW_TAG_member
	.dwattr $C$DW$1604, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1604, DW_AT_name("EXEONLY_SECTM")
	.dwattr $C$DW$1604, DW_AT_TI_symbol_name("_EXEONLY_SECTM")
	.dwattr $C$DW$1604, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$1604, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1604, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1604, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1605	.dwtag  DW_TAG_member
	.dwattr $C$DW$1605, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1605, DW_AT_name("EXEONLY_SECTN")
	.dwattr $C$DW$1605, DW_AT_TI_symbol_name("_EXEONLY_SECTN")
	.dwattr $C$DW$1605, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$1605, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1605, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1605, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1606	.dwtag  DW_TAG_member
	.dwattr $C$DW$1606, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1606, DW_AT_name("rsvd1")
	.dwattr $C$DW$1606, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$1606, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$1606, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1606, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1606, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1607	.dwtag  DW_TAG_member
	.dwattr $C$DW$1607, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1607, DW_AT_name("rsvd2")
	.dwattr $C$DW$1607, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$1607, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$1607, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1607, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1607, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1608	.dwtag  DW_TAG_member
	.dwattr $C$DW$1608, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1608, DW_AT_name("rsvd3")
	.dwattr $C$DW$1608, DW_AT_TI_symbol_name("_rsvd3")
	.dwattr $C$DW$1608, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$1608, DW_AT_bit_size(0x10)
	.dwattr $C$DW$1608, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$1608, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$323


$C$DW$T$324	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$324, DW_AT_name("Z1_EXEONLYSECTR_REG")
	.dwattr $C$DW$T$324, DW_AT_byte_size(0x02)
$C$DW$1609	.dwtag  DW_TAG_member
	.dwattr $C$DW$1609, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$1609, DW_AT_name("all")
	.dwattr $C$DW$1609, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$1609, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1609, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1610	.dwtag  DW_TAG_member
	.dwattr $C$DW$1610, DW_AT_type(*$C$DW$T$323)
	.dwattr $C$DW$1610, DW_AT_name("bit")
	.dwattr $C$DW$1610, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$1610, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1610, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$324


$C$DW$T$325	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$325, DW_AT_name("Z1_GRABRAMR_BITS")
	.dwattr $C$DW$T$325, DW_AT_byte_size(0x02)
$C$DW$1611	.dwtag  DW_TAG_member
	.dwattr $C$DW$1611, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1611, DW_AT_name("GRAB_RAM0")
	.dwattr $C$DW$1611, DW_AT_TI_symbol_name("_GRAB_RAM0")
	.dwattr $C$DW$1611, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$1611, DW_AT_bit_size(0x02)
	.dwattr $C$DW$1611, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1611, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1612	.dwtag  DW_TAG_member
	.dwattr $C$DW$1612, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1612, DW_AT_name("GRAB_RAM1")
	.dwattr $C$DW$1612, DW_AT_TI_symbol_name("_GRAB_RAM1")
	.dwattr $C$DW$1612, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$1612, DW_AT_bit_size(0x02)
	.dwattr $C$DW$1612, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1612, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1613	.dwtag  DW_TAG_member
	.dwattr $C$DW$1613, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1613, DW_AT_name("GRAB_RAM2")
	.dwattr $C$DW$1613, DW_AT_TI_symbol_name("_GRAB_RAM2")
	.dwattr $C$DW$1613, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$1613, DW_AT_bit_size(0x02)
	.dwattr $C$DW$1613, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1613, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1614	.dwtag  DW_TAG_member
	.dwattr $C$DW$1614, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1614, DW_AT_name("GRAB_RAM3")
	.dwattr $C$DW$1614, DW_AT_TI_symbol_name("_GRAB_RAM3")
	.dwattr $C$DW$1614, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$1614, DW_AT_bit_size(0x02)
	.dwattr $C$DW$1614, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1614, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1615	.dwtag  DW_TAG_member
	.dwattr $C$DW$1615, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1615, DW_AT_name("GRAB_RAM4")
	.dwattr $C$DW$1615, DW_AT_TI_symbol_name("_GRAB_RAM4")
	.dwattr $C$DW$1615, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$1615, DW_AT_bit_size(0x02)
	.dwattr $C$DW$1615, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1615, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1616	.dwtag  DW_TAG_member
	.dwattr $C$DW$1616, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1616, DW_AT_name("GRAB_RAM5")
	.dwattr $C$DW$1616, DW_AT_TI_symbol_name("_GRAB_RAM5")
	.dwattr $C$DW$1616, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$1616, DW_AT_bit_size(0x02)
	.dwattr $C$DW$1616, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1616, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1617	.dwtag  DW_TAG_member
	.dwattr $C$DW$1617, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1617, DW_AT_name("GRAB_RAM6")
	.dwattr $C$DW$1617, DW_AT_TI_symbol_name("_GRAB_RAM6")
	.dwattr $C$DW$1617, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$1617, DW_AT_bit_size(0x02)
	.dwattr $C$DW$1617, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1617, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1618	.dwtag  DW_TAG_member
	.dwattr $C$DW$1618, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1618, DW_AT_name("GRAB_RAM7")
	.dwattr $C$DW$1618, DW_AT_TI_symbol_name("_GRAB_RAM7")
	.dwattr $C$DW$1618, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$1618, DW_AT_bit_size(0x02)
	.dwattr $C$DW$1618, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1618, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1619	.dwtag  DW_TAG_member
	.dwattr $C$DW$1619, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1619, DW_AT_name("rsvd1")
	.dwattr $C$DW$1619, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$1619, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$1619, DW_AT_bit_size(0x0c)
	.dwattr $C$DW$1619, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$1619, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1620	.dwtag  DW_TAG_member
	.dwattr $C$DW$1620, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1620, DW_AT_name("GRAB_CLA1")
	.dwattr $C$DW$1620, DW_AT_TI_symbol_name("_GRAB_CLA1")
	.dwattr $C$DW$1620, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$1620, DW_AT_bit_size(0x02)
	.dwattr $C$DW$1620, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$1620, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1621	.dwtag  DW_TAG_member
	.dwattr $C$DW$1621, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1621, DW_AT_name("rsvd2")
	.dwattr $C$DW$1621, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$1621, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$1621, DW_AT_bit_size(0x02)
	.dwattr $C$DW$1621, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$1621, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$325


$C$DW$T$326	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$326, DW_AT_name("Z1_GRABRAMR_REG")
	.dwattr $C$DW$T$326, DW_AT_byte_size(0x02)
$C$DW$1622	.dwtag  DW_TAG_member
	.dwattr $C$DW$1622, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$1622, DW_AT_name("all")
	.dwattr $C$DW$1622, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$1622, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1622, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1623	.dwtag  DW_TAG_member
	.dwattr $C$DW$1623, DW_AT_type(*$C$DW$T$325)
	.dwattr $C$DW$1623, DW_AT_name("bit")
	.dwattr $C$DW$1623, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$1623, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1623, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$326


$C$DW$T$327	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$327, DW_AT_name("Z1_GRABSECTR_BITS")
	.dwattr $C$DW$T$327, DW_AT_byte_size(0x02)
$C$DW$1624	.dwtag  DW_TAG_member
	.dwattr $C$DW$1624, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1624, DW_AT_name("GRAB_SECTA")
	.dwattr $C$DW$1624, DW_AT_TI_symbol_name("_GRAB_SECTA")
	.dwattr $C$DW$1624, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$1624, DW_AT_bit_size(0x02)
	.dwattr $C$DW$1624, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1624, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1625	.dwtag  DW_TAG_member
	.dwattr $C$DW$1625, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1625, DW_AT_name("GRAB_SECTB")
	.dwattr $C$DW$1625, DW_AT_TI_symbol_name("_GRAB_SECTB")
	.dwattr $C$DW$1625, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$1625, DW_AT_bit_size(0x02)
	.dwattr $C$DW$1625, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1625, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1626	.dwtag  DW_TAG_member
	.dwattr $C$DW$1626, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1626, DW_AT_name("GRAB_SECTC")
	.dwattr $C$DW$1626, DW_AT_TI_symbol_name("_GRAB_SECTC")
	.dwattr $C$DW$1626, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$1626, DW_AT_bit_size(0x02)
	.dwattr $C$DW$1626, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1626, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1627	.dwtag  DW_TAG_member
	.dwattr $C$DW$1627, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1627, DW_AT_name("GRAB_SECTD")
	.dwattr $C$DW$1627, DW_AT_TI_symbol_name("_GRAB_SECTD")
	.dwattr $C$DW$1627, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$1627, DW_AT_bit_size(0x02)
	.dwattr $C$DW$1627, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1627, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1628	.dwtag  DW_TAG_member
	.dwattr $C$DW$1628, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1628, DW_AT_name("GRAB_SECTE")
	.dwattr $C$DW$1628, DW_AT_TI_symbol_name("_GRAB_SECTE")
	.dwattr $C$DW$1628, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$1628, DW_AT_bit_size(0x02)
	.dwattr $C$DW$1628, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1628, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1629	.dwtag  DW_TAG_member
	.dwattr $C$DW$1629, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1629, DW_AT_name("GRAB_SECTF")
	.dwattr $C$DW$1629, DW_AT_TI_symbol_name("_GRAB_SECTF")
	.dwattr $C$DW$1629, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$1629, DW_AT_bit_size(0x02)
	.dwattr $C$DW$1629, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1629, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1630	.dwtag  DW_TAG_member
	.dwattr $C$DW$1630, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1630, DW_AT_name("GRAB_SECTG")
	.dwattr $C$DW$1630, DW_AT_TI_symbol_name("_GRAB_SECTG")
	.dwattr $C$DW$1630, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$1630, DW_AT_bit_size(0x02)
	.dwattr $C$DW$1630, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1630, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1631	.dwtag  DW_TAG_member
	.dwattr $C$DW$1631, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1631, DW_AT_name("GRAB_SECTH")
	.dwattr $C$DW$1631, DW_AT_TI_symbol_name("_GRAB_SECTH")
	.dwattr $C$DW$1631, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$1631, DW_AT_bit_size(0x02)
	.dwattr $C$DW$1631, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1631, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1632	.dwtag  DW_TAG_member
	.dwattr $C$DW$1632, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1632, DW_AT_name("GRAB_SECTI")
	.dwattr $C$DW$1632, DW_AT_TI_symbol_name("_GRAB_SECTI")
	.dwattr $C$DW$1632, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$1632, DW_AT_bit_size(0x02)
	.dwattr $C$DW$1632, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$1632, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1633	.dwtag  DW_TAG_member
	.dwattr $C$DW$1633, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1633, DW_AT_name("GRAB_SECTJ")
	.dwattr $C$DW$1633, DW_AT_TI_symbol_name("_GRAB_SECTJ")
	.dwattr $C$DW$1633, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$1633, DW_AT_bit_size(0x02)
	.dwattr $C$DW$1633, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$1633, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1634	.dwtag  DW_TAG_member
	.dwattr $C$DW$1634, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1634, DW_AT_name("GRAB_SECTK")
	.dwattr $C$DW$1634, DW_AT_TI_symbol_name("_GRAB_SECTK")
	.dwattr $C$DW$1634, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$1634, DW_AT_bit_size(0x02)
	.dwattr $C$DW$1634, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$1634, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1635	.dwtag  DW_TAG_member
	.dwattr $C$DW$1635, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1635, DW_AT_name("GRAB_SECTL")
	.dwattr $C$DW$1635, DW_AT_TI_symbol_name("_GRAB_SECTL")
	.dwattr $C$DW$1635, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$1635, DW_AT_bit_size(0x02)
	.dwattr $C$DW$1635, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$1635, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1636	.dwtag  DW_TAG_member
	.dwattr $C$DW$1636, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1636, DW_AT_name("GRAB_SECTM")
	.dwattr $C$DW$1636, DW_AT_TI_symbol_name("_GRAB_SECTM")
	.dwattr $C$DW$1636, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$1636, DW_AT_bit_size(0x02)
	.dwattr $C$DW$1636, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$1636, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1637	.dwtag  DW_TAG_member
	.dwattr $C$DW$1637, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1637, DW_AT_name("GRAB_SECTN")
	.dwattr $C$DW$1637, DW_AT_TI_symbol_name("_GRAB_SECTN")
	.dwattr $C$DW$1637, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$1637, DW_AT_bit_size(0x02)
	.dwattr $C$DW$1637, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$1637, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1638	.dwtag  DW_TAG_member
	.dwattr $C$DW$1638, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1638, DW_AT_name("rsvd1")
	.dwattr $C$DW$1638, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$1638, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$1638, DW_AT_bit_size(0x02)
	.dwattr $C$DW$1638, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$1638, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1639	.dwtag  DW_TAG_member
	.dwattr $C$DW$1639, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1639, DW_AT_name("rsvd2")
	.dwattr $C$DW$1639, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$1639, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$1639, DW_AT_bit_size(0x02)
	.dwattr $C$DW$1639, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$1639, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$327


$C$DW$T$328	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$328, DW_AT_name("Z1_GRABSECTR_REG")
	.dwattr $C$DW$T$328, DW_AT_byte_size(0x02)
$C$DW$1640	.dwtag  DW_TAG_member
	.dwattr $C$DW$1640, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$1640, DW_AT_name("all")
	.dwattr $C$DW$1640, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$1640, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1640, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1641	.dwtag  DW_TAG_member
	.dwattr $C$DW$1641, DW_AT_type(*$C$DW$T$327)
	.dwattr $C$DW$1641, DW_AT_name("bit")
	.dwattr $C$DW$1641, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$1641, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1641, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$328


$C$DW$T$329	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$329, DW_AT_name("Z1_LINKPOINTER_BITS")
	.dwattr $C$DW$T$329, DW_AT_byte_size(0x02)
$C$DW$1642	.dwtag  DW_TAG_member
	.dwattr $C$DW$1642, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$1642, DW_AT_name("LINKPOINTER")
	.dwattr $C$DW$1642, DW_AT_TI_symbol_name("_LINKPOINTER")
	.dwattr $C$DW$1642, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$1642, DW_AT_bit_size(0x1d)
	.dwattr $C$DW$1642, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1642, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1643	.dwtag  DW_TAG_member
	.dwattr $C$DW$1643, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1643, DW_AT_name("rsvd1")
	.dwattr $C$DW$1643, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$1643, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$1643, DW_AT_bit_size(0x03)
	.dwattr $C$DW$1643, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$1643, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$329


$C$DW$T$330	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$330, DW_AT_name("Z1_LINKPOINTER_REG")
	.dwattr $C$DW$T$330, DW_AT_byte_size(0x02)
$C$DW$1644	.dwtag  DW_TAG_member
	.dwattr $C$DW$1644, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$1644, DW_AT_name("all")
	.dwattr $C$DW$1644, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$1644, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1644, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1645	.dwtag  DW_TAG_member
	.dwattr $C$DW$1645, DW_AT_type(*$C$DW$T$329)
	.dwattr $C$DW$1645, DW_AT_name("bit")
	.dwattr $C$DW$1645, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$1645, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1645, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$330


$C$DW$T$331	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$331, DW_AT_name("Z1_OTPSECLOCK_BITS")
	.dwattr $C$DW$T$331, DW_AT_byte_size(0x02)
$C$DW$1646	.dwtag  DW_TAG_member
	.dwattr $C$DW$1646, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1646, DW_AT_name("rsvd1")
	.dwattr $C$DW$1646, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$1646, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$1646, DW_AT_bit_size(0x04)
	.dwattr $C$DW$1646, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1646, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1647	.dwtag  DW_TAG_member
	.dwattr $C$DW$1647, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1647, DW_AT_name("PSWDLOCK")
	.dwattr $C$DW$1647, DW_AT_TI_symbol_name("_PSWDLOCK")
	.dwattr $C$DW$1647, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$1647, DW_AT_bit_size(0x04)
	.dwattr $C$DW$1647, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1647, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1648	.dwtag  DW_TAG_member
	.dwattr $C$DW$1648, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1648, DW_AT_name("CRCLOCK")
	.dwattr $C$DW$1648, DW_AT_TI_symbol_name("_CRCLOCK")
	.dwattr $C$DW$1648, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$1648, DW_AT_bit_size(0x04)
	.dwattr $C$DW$1648, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1648, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1649	.dwtag  DW_TAG_member
	.dwattr $C$DW$1649, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1649, DW_AT_name("rsvd2")
	.dwattr $C$DW$1649, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$1649, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$1649, DW_AT_bit_size(0x04)
	.dwattr $C$DW$1649, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1649, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1650	.dwtag  DW_TAG_member
	.dwattr $C$DW$1650, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1650, DW_AT_name("rsvd3")
	.dwattr $C$DW$1650, DW_AT_TI_symbol_name("_rsvd3")
	.dwattr $C$DW$1650, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$1650, DW_AT_bit_size(0x10)
	.dwattr $C$DW$1650, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$1650, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$331


$C$DW$T$332	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$332, DW_AT_name("Z1_OTPSECLOCK_REG")
	.dwattr $C$DW$T$332, DW_AT_byte_size(0x02)
$C$DW$1651	.dwtag  DW_TAG_member
	.dwattr $C$DW$1651, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$1651, DW_AT_name("all")
	.dwattr $C$DW$1651, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$1651, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1651, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1652	.dwtag  DW_TAG_member
	.dwattr $C$DW$1652, DW_AT_type(*$C$DW$T$331)
	.dwattr $C$DW$1652, DW_AT_name("bit")
	.dwattr $C$DW$1652, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$1652, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1652, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$332


$C$DW$T$333	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$333, DW_AT_name("Z2_BOOTCTRL_BITS")
	.dwattr $C$DW$T$333, DW_AT_byte_size(0x02)
$C$DW$1653	.dwtag  DW_TAG_member
	.dwattr $C$DW$1653, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1653, DW_AT_name("KEY")
	.dwattr $C$DW$1653, DW_AT_TI_symbol_name("_KEY")
	.dwattr $C$DW$1653, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$1653, DW_AT_bit_size(0x08)
	.dwattr $C$DW$1653, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1653, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1654	.dwtag  DW_TAG_member
	.dwattr $C$DW$1654, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1654, DW_AT_name("BMODE")
	.dwattr $C$DW$1654, DW_AT_TI_symbol_name("_BMODE")
	.dwattr $C$DW$1654, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$1654, DW_AT_bit_size(0x08)
	.dwattr $C$DW$1654, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1654, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1655	.dwtag  DW_TAG_member
	.dwattr $C$DW$1655, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1655, DW_AT_name("BOOTPIN0")
	.dwattr $C$DW$1655, DW_AT_TI_symbol_name("_BOOTPIN0")
	.dwattr $C$DW$1655, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$1655, DW_AT_bit_size(0x08)
	.dwattr $C$DW$1655, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$1655, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1656	.dwtag  DW_TAG_member
	.dwattr $C$DW$1656, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1656, DW_AT_name("BOOTPIN1")
	.dwattr $C$DW$1656, DW_AT_TI_symbol_name("_BOOTPIN1")
	.dwattr $C$DW$1656, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$1656, DW_AT_bit_size(0x08)
	.dwattr $C$DW$1656, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$1656, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$333


$C$DW$T$334	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$334, DW_AT_name("Z2_BOOTCTRL_REG")
	.dwattr $C$DW$T$334, DW_AT_byte_size(0x02)
$C$DW$1657	.dwtag  DW_TAG_member
	.dwattr $C$DW$1657, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$1657, DW_AT_name("all")
	.dwattr $C$DW$1657, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$1657, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1657, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1658	.dwtag  DW_TAG_member
	.dwattr $C$DW$1658, DW_AT_type(*$C$DW$T$333)
	.dwattr $C$DW$1658, DW_AT_name("bit")
	.dwattr $C$DW$1658, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$1658, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1658, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$334


$C$DW$T$335	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$335, DW_AT_name("Z2_CR_BITS")
	.dwattr $C$DW$T$335, DW_AT_byte_size(0x01)
$C$DW$1659	.dwtag  DW_TAG_member
	.dwattr $C$DW$1659, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1659, DW_AT_name("rsvd1")
	.dwattr $C$DW$1659, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$1659, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$1659, DW_AT_bit_size(0x03)
	.dwattr $C$DW$1659, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1659, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1660	.dwtag  DW_TAG_member
	.dwattr $C$DW$1660, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1660, DW_AT_name("ALLZERO")
	.dwattr $C$DW$1660, DW_AT_TI_symbol_name("_ALLZERO")
	.dwattr $C$DW$1660, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$1660, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1660, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1660, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1661	.dwtag  DW_TAG_member
	.dwattr $C$DW$1661, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1661, DW_AT_name("ALLONE")
	.dwattr $C$DW$1661, DW_AT_TI_symbol_name("_ALLONE")
	.dwattr $C$DW$1661, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$1661, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1661, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1661, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1662	.dwtag  DW_TAG_member
	.dwattr $C$DW$1662, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1662, DW_AT_name("UNSECURE")
	.dwattr $C$DW$1662, DW_AT_TI_symbol_name("_UNSECURE")
	.dwattr $C$DW$1662, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$1662, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1662, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1662, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1663	.dwtag  DW_TAG_member
	.dwattr $C$DW$1663, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1663, DW_AT_name("ARMED")
	.dwattr $C$DW$1663, DW_AT_TI_symbol_name("_ARMED")
	.dwattr $C$DW$1663, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$1663, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1663, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1663, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1664	.dwtag  DW_TAG_member
	.dwattr $C$DW$1664, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1664, DW_AT_name("rsvd2")
	.dwattr $C$DW$1664, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$1664, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$1664, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1664, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1664, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1665	.dwtag  DW_TAG_member
	.dwattr $C$DW$1665, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1665, DW_AT_name("rsvd3")
	.dwattr $C$DW$1665, DW_AT_TI_symbol_name("_rsvd3")
	.dwattr $C$DW$1665, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$1665, DW_AT_bit_size(0x07)
	.dwattr $C$DW$1665, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1665, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1666	.dwtag  DW_TAG_member
	.dwattr $C$DW$1666, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1666, DW_AT_name("FORCESEC")
	.dwattr $C$DW$1666, DW_AT_TI_symbol_name("_FORCESEC")
	.dwattr $C$DW$1666, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$1666, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1666, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1666, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$335


$C$DW$T$336	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$336, DW_AT_name("Z2_CR_REG")
	.dwattr $C$DW$T$336, DW_AT_byte_size(0x01)
$C$DW$1667	.dwtag  DW_TAG_member
	.dwattr $C$DW$1667, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1667, DW_AT_name("all")
	.dwattr $C$DW$1667, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$1667, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1667, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1668	.dwtag  DW_TAG_member
	.dwattr $C$DW$1668, DW_AT_type(*$C$DW$T$335)
	.dwattr $C$DW$1668, DW_AT_name("bit")
	.dwattr $C$DW$1668, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$1668, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1668, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$336


$C$DW$T$337	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$337, DW_AT_name("Z2_EXEONLYRAMR_BITS")
	.dwattr $C$DW$T$337, DW_AT_byte_size(0x02)
$C$DW$1669	.dwtag  DW_TAG_member
	.dwattr $C$DW$1669, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1669, DW_AT_name("EXEONLY_RAM0")
	.dwattr $C$DW$1669, DW_AT_TI_symbol_name("_EXEONLY_RAM0")
	.dwattr $C$DW$1669, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$1669, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1669, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1669, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1670	.dwtag  DW_TAG_member
	.dwattr $C$DW$1670, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1670, DW_AT_name("EXEONLY_RAM1")
	.dwattr $C$DW$1670, DW_AT_TI_symbol_name("_EXEONLY_RAM1")
	.dwattr $C$DW$1670, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$1670, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1670, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1670, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1671	.dwtag  DW_TAG_member
	.dwattr $C$DW$1671, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1671, DW_AT_name("EXEONLY_RAM2")
	.dwattr $C$DW$1671, DW_AT_TI_symbol_name("_EXEONLY_RAM2")
	.dwattr $C$DW$1671, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$1671, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1671, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1671, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1672	.dwtag  DW_TAG_member
	.dwattr $C$DW$1672, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1672, DW_AT_name("EXEONLY_RAM3")
	.dwattr $C$DW$1672, DW_AT_TI_symbol_name("_EXEONLY_RAM3")
	.dwattr $C$DW$1672, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$1672, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1672, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1672, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1673	.dwtag  DW_TAG_member
	.dwattr $C$DW$1673, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1673, DW_AT_name("EXEONLY_RAM4")
	.dwattr $C$DW$1673, DW_AT_TI_symbol_name("_EXEONLY_RAM4")
	.dwattr $C$DW$1673, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$1673, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1673, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1673, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1674	.dwtag  DW_TAG_member
	.dwattr $C$DW$1674, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1674, DW_AT_name("EXEONLY_RAM5")
	.dwattr $C$DW$1674, DW_AT_TI_symbol_name("_EXEONLY_RAM5")
	.dwattr $C$DW$1674, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$1674, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1674, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1674, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1675	.dwtag  DW_TAG_member
	.dwattr $C$DW$1675, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1675, DW_AT_name("EXEONLY_RAM6")
	.dwattr $C$DW$1675, DW_AT_TI_symbol_name("_EXEONLY_RAM6")
	.dwattr $C$DW$1675, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$1675, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1675, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1675, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1676	.dwtag  DW_TAG_member
	.dwattr $C$DW$1676, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1676, DW_AT_name("EXEONLY_RAM7")
	.dwattr $C$DW$1676, DW_AT_TI_symbol_name("_EXEONLY_RAM7")
	.dwattr $C$DW$1676, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$1676, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1676, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1676, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1677	.dwtag  DW_TAG_member
	.dwattr $C$DW$1677, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1677, DW_AT_name("rsvd1")
	.dwattr $C$DW$1677, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$1677, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$1677, DW_AT_bit_size(0x08)
	.dwattr $C$DW$1677, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1677, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1678	.dwtag  DW_TAG_member
	.dwattr $C$DW$1678, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1678, DW_AT_name("rsvd2")
	.dwattr $C$DW$1678, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$1678, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$1678, DW_AT_bit_size(0x10)
	.dwattr $C$DW$1678, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$1678, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$337


$C$DW$T$338	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$338, DW_AT_name("Z2_EXEONLYRAMR_REG")
	.dwattr $C$DW$T$338, DW_AT_byte_size(0x02)
$C$DW$1679	.dwtag  DW_TAG_member
	.dwattr $C$DW$1679, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$1679, DW_AT_name("all")
	.dwattr $C$DW$1679, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$1679, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1679, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1680	.dwtag  DW_TAG_member
	.dwattr $C$DW$1680, DW_AT_type(*$C$DW$T$337)
	.dwattr $C$DW$1680, DW_AT_name("bit")
	.dwattr $C$DW$1680, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$1680, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1680, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$338


$C$DW$T$339	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$339, DW_AT_name("Z2_EXEONLYSECTR_BITS")
	.dwattr $C$DW$T$339, DW_AT_byte_size(0x02)
$C$DW$1681	.dwtag  DW_TAG_member
	.dwattr $C$DW$1681, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1681, DW_AT_name("EXEONLY_SECTA")
	.dwattr $C$DW$1681, DW_AT_TI_symbol_name("_EXEONLY_SECTA")
	.dwattr $C$DW$1681, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$1681, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1681, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1681, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1682	.dwtag  DW_TAG_member
	.dwattr $C$DW$1682, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1682, DW_AT_name("EXEONLY_SECTB")
	.dwattr $C$DW$1682, DW_AT_TI_symbol_name("_EXEONLY_SECTB")
	.dwattr $C$DW$1682, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$1682, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1682, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1682, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1683	.dwtag  DW_TAG_member
	.dwattr $C$DW$1683, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1683, DW_AT_name("EXEONLY_SECTC")
	.dwattr $C$DW$1683, DW_AT_TI_symbol_name("_EXEONLY_SECTC")
	.dwattr $C$DW$1683, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$1683, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1683, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1683, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1684	.dwtag  DW_TAG_member
	.dwattr $C$DW$1684, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1684, DW_AT_name("EXEONLY_SECTD")
	.dwattr $C$DW$1684, DW_AT_TI_symbol_name("_EXEONLY_SECTD")
	.dwattr $C$DW$1684, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$1684, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1684, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1684, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1685	.dwtag  DW_TAG_member
	.dwattr $C$DW$1685, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1685, DW_AT_name("EXEONLY_SECTE")
	.dwattr $C$DW$1685, DW_AT_TI_symbol_name("_EXEONLY_SECTE")
	.dwattr $C$DW$1685, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$1685, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1685, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1685, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1686	.dwtag  DW_TAG_member
	.dwattr $C$DW$1686, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1686, DW_AT_name("EXEONLY_SECTF")
	.dwattr $C$DW$1686, DW_AT_TI_symbol_name("_EXEONLY_SECTF")
	.dwattr $C$DW$1686, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$1686, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1686, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1686, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1687	.dwtag  DW_TAG_member
	.dwattr $C$DW$1687, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1687, DW_AT_name("EXEONLY_SECTG")
	.dwattr $C$DW$1687, DW_AT_TI_symbol_name("_EXEONLY_SECTG")
	.dwattr $C$DW$1687, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$1687, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1687, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1687, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1688	.dwtag  DW_TAG_member
	.dwattr $C$DW$1688, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1688, DW_AT_name("EXEONLY_SECTH")
	.dwattr $C$DW$1688, DW_AT_TI_symbol_name("_EXEONLY_SECTH")
	.dwattr $C$DW$1688, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$1688, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1688, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1688, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1689	.dwtag  DW_TAG_member
	.dwattr $C$DW$1689, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1689, DW_AT_name("EXEONLY_SECTI")
	.dwattr $C$DW$1689, DW_AT_TI_symbol_name("_EXEONLY_SECTI")
	.dwattr $C$DW$1689, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$1689, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1689, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1689, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1690	.dwtag  DW_TAG_member
	.dwattr $C$DW$1690, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1690, DW_AT_name("EXEONLY_SECTJ")
	.dwattr $C$DW$1690, DW_AT_TI_symbol_name("_EXEONLY_SECTJ")
	.dwattr $C$DW$1690, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$1690, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1690, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1690, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1691	.dwtag  DW_TAG_member
	.dwattr $C$DW$1691, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1691, DW_AT_name("EXEONLY_SECTK")
	.dwattr $C$DW$1691, DW_AT_TI_symbol_name("_EXEONLY_SECTK")
	.dwattr $C$DW$1691, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$1691, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1691, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1691, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1692	.dwtag  DW_TAG_member
	.dwattr $C$DW$1692, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1692, DW_AT_name("EXEONLY_SECTL")
	.dwattr $C$DW$1692, DW_AT_TI_symbol_name("_EXEONLY_SECTL")
	.dwattr $C$DW$1692, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$1692, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1692, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1692, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1693	.dwtag  DW_TAG_member
	.dwattr $C$DW$1693, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1693, DW_AT_name("EXEONLY_SECTM")
	.dwattr $C$DW$1693, DW_AT_TI_symbol_name("_EXEONLY_SECTM")
	.dwattr $C$DW$1693, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$1693, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1693, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1693, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1694	.dwtag  DW_TAG_member
	.dwattr $C$DW$1694, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1694, DW_AT_name("EXEONLY_SECTN")
	.dwattr $C$DW$1694, DW_AT_TI_symbol_name("_EXEONLY_SECTN")
	.dwattr $C$DW$1694, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$1694, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1694, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1694, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1695	.dwtag  DW_TAG_member
	.dwattr $C$DW$1695, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1695, DW_AT_name("rsvd1")
	.dwattr $C$DW$1695, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$1695, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$1695, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1695, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1695, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1696	.dwtag  DW_TAG_member
	.dwattr $C$DW$1696, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1696, DW_AT_name("rsvd2")
	.dwattr $C$DW$1696, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$1696, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$1696, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1696, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1696, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1697	.dwtag  DW_TAG_member
	.dwattr $C$DW$1697, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1697, DW_AT_name("rsvd3")
	.dwattr $C$DW$1697, DW_AT_TI_symbol_name("_rsvd3")
	.dwattr $C$DW$1697, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$1697, DW_AT_bit_size(0x10)
	.dwattr $C$DW$1697, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$1697, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$339


$C$DW$T$340	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$340, DW_AT_name("Z2_EXEONLYSECTR_REG")
	.dwattr $C$DW$T$340, DW_AT_byte_size(0x02)
$C$DW$1698	.dwtag  DW_TAG_member
	.dwattr $C$DW$1698, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$1698, DW_AT_name("all")
	.dwattr $C$DW$1698, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$1698, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1698, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1699	.dwtag  DW_TAG_member
	.dwattr $C$DW$1699, DW_AT_type(*$C$DW$T$339)
	.dwattr $C$DW$1699, DW_AT_name("bit")
	.dwattr $C$DW$1699, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$1699, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1699, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$340


$C$DW$T$341	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$341, DW_AT_name("Z2_GRABRAMR_BITS")
	.dwattr $C$DW$T$341, DW_AT_byte_size(0x02)
$C$DW$1700	.dwtag  DW_TAG_member
	.dwattr $C$DW$1700, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1700, DW_AT_name("GRAB_RAM0")
	.dwattr $C$DW$1700, DW_AT_TI_symbol_name("_GRAB_RAM0")
	.dwattr $C$DW$1700, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$1700, DW_AT_bit_size(0x02)
	.dwattr $C$DW$1700, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1700, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1701	.dwtag  DW_TAG_member
	.dwattr $C$DW$1701, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1701, DW_AT_name("GRAB_RAM1")
	.dwattr $C$DW$1701, DW_AT_TI_symbol_name("_GRAB_RAM1")
	.dwattr $C$DW$1701, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$1701, DW_AT_bit_size(0x02)
	.dwattr $C$DW$1701, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1701, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1702	.dwtag  DW_TAG_member
	.dwattr $C$DW$1702, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1702, DW_AT_name("GRAB_RAM2")
	.dwattr $C$DW$1702, DW_AT_TI_symbol_name("_GRAB_RAM2")
	.dwattr $C$DW$1702, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$1702, DW_AT_bit_size(0x02)
	.dwattr $C$DW$1702, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1702, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1703	.dwtag  DW_TAG_member
	.dwattr $C$DW$1703, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1703, DW_AT_name("GRAB_RAM3")
	.dwattr $C$DW$1703, DW_AT_TI_symbol_name("_GRAB_RAM3")
	.dwattr $C$DW$1703, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$1703, DW_AT_bit_size(0x02)
	.dwattr $C$DW$1703, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1703, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1704	.dwtag  DW_TAG_member
	.dwattr $C$DW$1704, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1704, DW_AT_name("GRAB_RAM4")
	.dwattr $C$DW$1704, DW_AT_TI_symbol_name("_GRAB_RAM4")
	.dwattr $C$DW$1704, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$1704, DW_AT_bit_size(0x02)
	.dwattr $C$DW$1704, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1704, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1705	.dwtag  DW_TAG_member
	.dwattr $C$DW$1705, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1705, DW_AT_name("GRAB_RAM5")
	.dwattr $C$DW$1705, DW_AT_TI_symbol_name("_GRAB_RAM5")
	.dwattr $C$DW$1705, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$1705, DW_AT_bit_size(0x02)
	.dwattr $C$DW$1705, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1705, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1706	.dwtag  DW_TAG_member
	.dwattr $C$DW$1706, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1706, DW_AT_name("GRAB_RAM6")
	.dwattr $C$DW$1706, DW_AT_TI_symbol_name("_GRAB_RAM6")
	.dwattr $C$DW$1706, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$1706, DW_AT_bit_size(0x02)
	.dwattr $C$DW$1706, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1706, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1707	.dwtag  DW_TAG_member
	.dwattr $C$DW$1707, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1707, DW_AT_name("GRAB_RAM7")
	.dwattr $C$DW$1707, DW_AT_TI_symbol_name("_GRAB_RAM7")
	.dwattr $C$DW$1707, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$1707, DW_AT_bit_size(0x02)
	.dwattr $C$DW$1707, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1707, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1708	.dwtag  DW_TAG_member
	.dwattr $C$DW$1708, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1708, DW_AT_name("rsvd1")
	.dwattr $C$DW$1708, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$1708, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$1708, DW_AT_bit_size(0x0c)
	.dwattr $C$DW$1708, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$1708, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1709	.dwtag  DW_TAG_member
	.dwattr $C$DW$1709, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1709, DW_AT_name("GRAB_CLA1")
	.dwattr $C$DW$1709, DW_AT_TI_symbol_name("_GRAB_CLA1")
	.dwattr $C$DW$1709, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$1709, DW_AT_bit_size(0x02)
	.dwattr $C$DW$1709, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$1709, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1710	.dwtag  DW_TAG_member
	.dwattr $C$DW$1710, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1710, DW_AT_name("rsvd2")
	.dwattr $C$DW$1710, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$1710, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$1710, DW_AT_bit_size(0x02)
	.dwattr $C$DW$1710, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$1710, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$341


$C$DW$T$342	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$342, DW_AT_name("Z2_GRABRAMR_REG")
	.dwattr $C$DW$T$342, DW_AT_byte_size(0x02)
$C$DW$1711	.dwtag  DW_TAG_member
	.dwattr $C$DW$1711, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$1711, DW_AT_name("all")
	.dwattr $C$DW$1711, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$1711, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1711, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1712	.dwtag  DW_TAG_member
	.dwattr $C$DW$1712, DW_AT_type(*$C$DW$T$341)
	.dwattr $C$DW$1712, DW_AT_name("bit")
	.dwattr $C$DW$1712, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$1712, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1712, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$342


$C$DW$T$343	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$343, DW_AT_name("Z2_GRABSECTR_BITS")
	.dwattr $C$DW$T$343, DW_AT_byte_size(0x02)
$C$DW$1713	.dwtag  DW_TAG_member
	.dwattr $C$DW$1713, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1713, DW_AT_name("GRAB_SECTA")
	.dwattr $C$DW$1713, DW_AT_TI_symbol_name("_GRAB_SECTA")
	.dwattr $C$DW$1713, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$1713, DW_AT_bit_size(0x02)
	.dwattr $C$DW$1713, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1713, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1714	.dwtag  DW_TAG_member
	.dwattr $C$DW$1714, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1714, DW_AT_name("GRAB_SECTB")
	.dwattr $C$DW$1714, DW_AT_TI_symbol_name("_GRAB_SECTB")
	.dwattr $C$DW$1714, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$1714, DW_AT_bit_size(0x02)
	.dwattr $C$DW$1714, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1714, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1715	.dwtag  DW_TAG_member
	.dwattr $C$DW$1715, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1715, DW_AT_name("GRAB_SECTC")
	.dwattr $C$DW$1715, DW_AT_TI_symbol_name("_GRAB_SECTC")
	.dwattr $C$DW$1715, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$1715, DW_AT_bit_size(0x02)
	.dwattr $C$DW$1715, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1715, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1716	.dwtag  DW_TAG_member
	.dwattr $C$DW$1716, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1716, DW_AT_name("GRAB_SECTD")
	.dwattr $C$DW$1716, DW_AT_TI_symbol_name("_GRAB_SECTD")
	.dwattr $C$DW$1716, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$1716, DW_AT_bit_size(0x02)
	.dwattr $C$DW$1716, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1716, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1717	.dwtag  DW_TAG_member
	.dwattr $C$DW$1717, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1717, DW_AT_name("GRAB_SECTE")
	.dwattr $C$DW$1717, DW_AT_TI_symbol_name("_GRAB_SECTE")
	.dwattr $C$DW$1717, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$1717, DW_AT_bit_size(0x02)
	.dwattr $C$DW$1717, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1717, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1718	.dwtag  DW_TAG_member
	.dwattr $C$DW$1718, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1718, DW_AT_name("GRAB_SECTF")
	.dwattr $C$DW$1718, DW_AT_TI_symbol_name("_GRAB_SECTF")
	.dwattr $C$DW$1718, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$1718, DW_AT_bit_size(0x02)
	.dwattr $C$DW$1718, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1718, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1719	.dwtag  DW_TAG_member
	.dwattr $C$DW$1719, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1719, DW_AT_name("GRAB_SECTG")
	.dwattr $C$DW$1719, DW_AT_TI_symbol_name("_GRAB_SECTG")
	.dwattr $C$DW$1719, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$1719, DW_AT_bit_size(0x02)
	.dwattr $C$DW$1719, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1719, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1720	.dwtag  DW_TAG_member
	.dwattr $C$DW$1720, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1720, DW_AT_name("GRAB_SECTH")
	.dwattr $C$DW$1720, DW_AT_TI_symbol_name("_GRAB_SECTH")
	.dwattr $C$DW$1720, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$1720, DW_AT_bit_size(0x02)
	.dwattr $C$DW$1720, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1720, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1721	.dwtag  DW_TAG_member
	.dwattr $C$DW$1721, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1721, DW_AT_name("GRAB_SECTI")
	.dwattr $C$DW$1721, DW_AT_TI_symbol_name("_GRAB_SECTI")
	.dwattr $C$DW$1721, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$1721, DW_AT_bit_size(0x02)
	.dwattr $C$DW$1721, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$1721, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1722	.dwtag  DW_TAG_member
	.dwattr $C$DW$1722, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1722, DW_AT_name("GRAB_SECTJ")
	.dwattr $C$DW$1722, DW_AT_TI_symbol_name("_GRAB_SECTJ")
	.dwattr $C$DW$1722, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$1722, DW_AT_bit_size(0x02)
	.dwattr $C$DW$1722, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$1722, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1723	.dwtag  DW_TAG_member
	.dwattr $C$DW$1723, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1723, DW_AT_name("GRAB_SECTK")
	.dwattr $C$DW$1723, DW_AT_TI_symbol_name("_GRAB_SECTK")
	.dwattr $C$DW$1723, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$1723, DW_AT_bit_size(0x02)
	.dwattr $C$DW$1723, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$1723, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1724	.dwtag  DW_TAG_member
	.dwattr $C$DW$1724, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1724, DW_AT_name("GRAB_SECTL")
	.dwattr $C$DW$1724, DW_AT_TI_symbol_name("_GRAB_SECTL")
	.dwattr $C$DW$1724, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$1724, DW_AT_bit_size(0x02)
	.dwattr $C$DW$1724, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$1724, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1725	.dwtag  DW_TAG_member
	.dwattr $C$DW$1725, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1725, DW_AT_name("GRAB_SECTM")
	.dwattr $C$DW$1725, DW_AT_TI_symbol_name("_GRAB_SECTM")
	.dwattr $C$DW$1725, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$1725, DW_AT_bit_size(0x02)
	.dwattr $C$DW$1725, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$1725, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1726	.dwtag  DW_TAG_member
	.dwattr $C$DW$1726, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1726, DW_AT_name("GRAB_SECTN")
	.dwattr $C$DW$1726, DW_AT_TI_symbol_name("_GRAB_SECTN")
	.dwattr $C$DW$1726, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$1726, DW_AT_bit_size(0x02)
	.dwattr $C$DW$1726, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$1726, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1727	.dwtag  DW_TAG_member
	.dwattr $C$DW$1727, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1727, DW_AT_name("rsvd1")
	.dwattr $C$DW$1727, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$1727, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$1727, DW_AT_bit_size(0x02)
	.dwattr $C$DW$1727, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$1727, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1728	.dwtag  DW_TAG_member
	.dwattr $C$DW$1728, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1728, DW_AT_name("rsvd2")
	.dwattr $C$DW$1728, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$1728, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$1728, DW_AT_bit_size(0x02)
	.dwattr $C$DW$1728, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$1728, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$343


$C$DW$T$344	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$344, DW_AT_name("Z2_GRABSECTR_REG")
	.dwattr $C$DW$T$344, DW_AT_byte_size(0x02)
$C$DW$1729	.dwtag  DW_TAG_member
	.dwattr $C$DW$1729, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$1729, DW_AT_name("all")
	.dwattr $C$DW$1729, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$1729, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1729, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1730	.dwtag  DW_TAG_member
	.dwattr $C$DW$1730, DW_AT_type(*$C$DW$T$343)
	.dwattr $C$DW$1730, DW_AT_name("bit")
	.dwattr $C$DW$1730, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$1730, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1730, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$344


$C$DW$T$345	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$345, DW_AT_name("Z2_LINKPOINTER_BITS")
	.dwattr $C$DW$T$345, DW_AT_byte_size(0x02)
$C$DW$1731	.dwtag  DW_TAG_member
	.dwattr $C$DW$1731, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$1731, DW_AT_name("LINKPOINTER")
	.dwattr $C$DW$1731, DW_AT_TI_symbol_name("_LINKPOINTER")
	.dwattr $C$DW$1731, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$1731, DW_AT_bit_size(0x1d)
	.dwattr $C$DW$1731, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1731, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1732	.dwtag  DW_TAG_member
	.dwattr $C$DW$1732, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1732, DW_AT_name("rsvd1")
	.dwattr $C$DW$1732, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$1732, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$1732, DW_AT_bit_size(0x03)
	.dwattr $C$DW$1732, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$1732, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$345


$C$DW$T$346	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$346, DW_AT_name("Z2_LINKPOINTER_REG")
	.dwattr $C$DW$T$346, DW_AT_byte_size(0x02)
$C$DW$1733	.dwtag  DW_TAG_member
	.dwattr $C$DW$1733, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$1733, DW_AT_name("all")
	.dwattr $C$DW$1733, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$1733, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1733, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1734	.dwtag  DW_TAG_member
	.dwattr $C$DW$1734, DW_AT_type(*$C$DW$T$345)
	.dwattr $C$DW$1734, DW_AT_name("bit")
	.dwattr $C$DW$1734, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$1734, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1734, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$346


$C$DW$T$347	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$347, DW_AT_name("Z2_OTPSECLOCK_BITS")
	.dwattr $C$DW$T$347, DW_AT_byte_size(0x02)
$C$DW$1735	.dwtag  DW_TAG_member
	.dwattr $C$DW$1735, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1735, DW_AT_name("rsvd1")
	.dwattr $C$DW$1735, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$1735, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$1735, DW_AT_bit_size(0x04)
	.dwattr $C$DW$1735, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1735, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1736	.dwtag  DW_TAG_member
	.dwattr $C$DW$1736, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1736, DW_AT_name("PSWDLOCK")
	.dwattr $C$DW$1736, DW_AT_TI_symbol_name("_PSWDLOCK")
	.dwattr $C$DW$1736, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$1736, DW_AT_bit_size(0x04)
	.dwattr $C$DW$1736, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1736, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1737	.dwtag  DW_TAG_member
	.dwattr $C$DW$1737, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1737, DW_AT_name("CRCLOCK")
	.dwattr $C$DW$1737, DW_AT_TI_symbol_name("_CRCLOCK")
	.dwattr $C$DW$1737, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$1737, DW_AT_bit_size(0x04)
	.dwattr $C$DW$1737, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1737, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1738	.dwtag  DW_TAG_member
	.dwattr $C$DW$1738, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1738, DW_AT_name("rsvd2")
	.dwattr $C$DW$1738, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$1738, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$1738, DW_AT_bit_size(0x04)
	.dwattr $C$DW$1738, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1738, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1739	.dwtag  DW_TAG_member
	.dwattr $C$DW$1739, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1739, DW_AT_name("rsvd3")
	.dwattr $C$DW$1739, DW_AT_TI_symbol_name("_rsvd3")
	.dwattr $C$DW$1739, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$1739, DW_AT_bit_size(0x10)
	.dwattr $C$DW$1739, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$1739, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$347


$C$DW$T$348	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$348, DW_AT_name("Z2_OTPSECLOCK_REG")
	.dwattr $C$DW$T$348, DW_AT_byte_size(0x02)
$C$DW$1740	.dwtag  DW_TAG_member
	.dwattr $C$DW$1740, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$1740, DW_AT_name("all")
	.dwattr $C$DW$1740, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$1740, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1740, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1741	.dwtag  DW_TAG_member
	.dwattr $C$DW$1741, DW_AT_type(*$C$DW$T$347)
	.dwattr $C$DW$1741, DW_AT_name("bit")
	.dwattr $C$DW$1741, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$1741, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1741, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$348

$C$DW$T$2	.dwtag  DW_TAG_unspecified_type
	.dwattr $C$DW$T$2, DW_AT_name("void")

$C$DW$T$4	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$4, DW_AT_encoding(DW_ATE_boolean)
	.dwattr $C$DW$T$4, DW_AT_name("bool")
	.dwattr $C$DW$T$4, DW_AT_byte_size(0x01)

$C$DW$T$5	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$5, DW_AT_encoding(DW_ATE_signed_char)
	.dwattr $C$DW$T$5, DW_AT_name("signed char")
	.dwattr $C$DW$T$5, DW_AT_byte_size(0x01)

$C$DW$T$6	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$6, DW_AT_encoding(DW_ATE_unsigned_char)
	.dwattr $C$DW$T$6, DW_AT_name("unsigned char")
	.dwattr $C$DW$T$6, DW_AT_byte_size(0x01)

$C$DW$T$7	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$7, DW_AT_encoding(DW_ATE_signed_char)
	.dwattr $C$DW$T$7, DW_AT_name("wchar_t")
	.dwattr $C$DW$T$7, DW_AT_byte_size(0x01)

$C$DW$T$8	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$8, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$8, DW_AT_name("short")
	.dwattr $C$DW$T$8, DW_AT_byte_size(0x01)

$C$DW$T$9	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$9, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$9, DW_AT_name("unsigned short")
	.dwattr $C$DW$T$9, DW_AT_byte_size(0x01)

$C$DW$T$10	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$10, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$10, DW_AT_name("int")
	.dwattr $C$DW$T$10, DW_AT_byte_size(0x01)

$C$DW$T$11	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$11, DW_AT_name("unsigned int")
	.dwattr $C$DW$T$11, DW_AT_byte_size(0x01)

$C$DW$T$19	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$19, DW_AT_name("Uint16")
	.dwattr $C$DW$T$19, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$19, DW_AT_language(DW_LANG_C)

$C$DW$1742	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$1742, DW_AT_type(*$C$DW$T$19)

$C$DW$T$456	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$456, DW_AT_type(*$C$DW$1742)


$C$DW$T$20	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$20, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$20, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$20, DW_AT_byte_size(0x20)
$C$DW$1743	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$1743, DW_AT_upper_bound(0x1f)

	.dwendtag $C$DW$T$20


$C$DW$T$21	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$21, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$21, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$21, DW_AT_byte_size(0x02)
$C$DW$1744	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$1744, DW_AT_upper_bound(0x01)

	.dwendtag $C$DW$T$21


$C$DW$T$22	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$22, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$22, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$22, DW_AT_byte_size(0x07)
$C$DW$1745	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$1745, DW_AT_upper_bound(0x06)

	.dwendtag $C$DW$T$22


$C$DW$T$23	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$23, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$23, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$23, DW_AT_byte_size(0x06)
$C$DW$1746	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$1746, DW_AT_upper_bound(0x05)

	.dwendtag $C$DW$T$23


$C$DW$T$52	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$52, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$52, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$52, DW_AT_byte_size(0x04)
$C$DW$1747	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$1747, DW_AT_upper_bound(0x03)

	.dwendtag $C$DW$T$52


$C$DW$T$83	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$83, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$83, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$83, DW_AT_byte_size(0x16)
$C$DW$1748	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$1748, DW_AT_upper_bound(0x15)

	.dwendtag $C$DW$T$83


$C$DW$T$84	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$84, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$84, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$84, DW_AT_byte_size(0x30)
$C$DW$1749	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$1749, DW_AT_upper_bound(0x2f)

	.dwendtag $C$DW$T$84


$C$DW$T$126	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$126, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$126, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$126, DW_AT_byte_size(0x08)
$C$DW$1750	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$1750, DW_AT_upper_bound(0x07)

	.dwendtag $C$DW$T$126


$C$DW$T$131	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$131, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$131, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$131, DW_AT_byte_size(0x26)
$C$DW$1751	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$1751, DW_AT_upper_bound(0x25)

	.dwendtag $C$DW$T$131


$C$DW$T$132	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$132, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$132, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$132, DW_AT_byte_size(0x12)
$C$DW$1752	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$1752, DW_AT_upper_bound(0x11)

	.dwendtag $C$DW$T$132


$C$DW$T$133	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$133, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$133, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$133, DW_AT_byte_size(0x0c)
$C$DW$1753	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$1753, DW_AT_upper_bound(0x0b)

	.dwendtag $C$DW$T$133


$C$DW$T$134	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$134, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$134, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$134, DW_AT_byte_size(0x32)
$C$DW$1754	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$1754, DW_AT_upper_bound(0x31)

	.dwendtag $C$DW$T$134


$C$DW$T$135	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$135, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$135, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$135, DW_AT_byte_size(0x2e)
$C$DW$1755	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$1755, DW_AT_upper_bound(0x2d)

	.dwendtag $C$DW$T$135


$C$DW$T$167	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$167, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$167, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$167, DW_AT_byte_size(0x1c)
$C$DW$1756	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$1756, DW_AT_upper_bound(0x1b)

	.dwendtag $C$DW$T$167


$C$DW$T$168	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$168, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$168, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$168, DW_AT_byte_size(0x154)
$C$DW$1757	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$1757, DW_AT_upper_bound(0x153)

	.dwendtag $C$DW$T$168


$C$DW$T$310	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$310, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$310, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$310, DW_AT_byte_size(0x22)
$C$DW$1758	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$1758, DW_AT_upper_bound(0x21)

	.dwendtag $C$DW$T$310


$C$DW$T$311	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$311, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$311, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$311, DW_AT_byte_size(0x03)
$C$DW$1759	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$1759, DW_AT_upper_bound(0x02)

	.dwendtag $C$DW$T$311

$C$DW$T$12	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$12, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$12, DW_AT_name("long")
	.dwattr $C$DW$T$12, DW_AT_byte_size(0x02)

$C$DW$T$13	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$13, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$13, DW_AT_name("unsigned long")
	.dwattr $C$DW$T$13, DW_AT_byte_size(0x02)

$C$DW$T$26	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$26, DW_AT_name("Uint32")
	.dwattr $C$DW$T$26, DW_AT_type(*$C$DW$T$13)
	.dwattr $C$DW$T$26, DW_AT_language(DW_LANG_C)

$C$DW$T$14	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$14, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$14, DW_AT_name("long long")
	.dwattr $C$DW$T$14, DW_AT_byte_size(0x04)

$C$DW$T$15	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$15, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$15, DW_AT_name("unsigned long long")
	.dwattr $C$DW$T$15, DW_AT_byte_size(0x04)

$C$DW$T$16	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$16, DW_AT_encoding(DW_ATE_float)
	.dwattr $C$DW$T$16, DW_AT_name("float")
	.dwattr $C$DW$T$16, DW_AT_byte_size(0x02)

$C$DW$T$17	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$17, DW_AT_encoding(DW_ATE_float)
	.dwattr $C$DW$T$17, DW_AT_name("double")
	.dwattr $C$DW$T$17, DW_AT_byte_size(0x02)

$C$DW$T$18	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$18, DW_AT_encoding(DW_ATE_float)
	.dwattr $C$DW$T$18, DW_AT_name("long double")
	.dwattr $C$DW$T$18, DW_AT_byte_size(0x04)

$C$DW$T$460	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$460, DW_AT_encoding(DW_ATE_unsigned_char)
	.dwattr $C$DW$T$460, DW_AT_name("unsigned char")
	.dwattr $C$DW$T$460, DW_AT_byte_size(0x01)

	.dwattr $C$DW$CU, DW_AT_language(DW_LANG_C)

;***************************************************************
;* DWARF CIE ENTRIES                                           *
;***************************************************************

$C$DW$CIE	.dwcie 26
	.dwcfi	cfa_register, 20
	.dwcfi	cfa_offset, 0
	.dwcfi	same_value, 28
	.dwcfi	same_value, 6
	.dwcfi	same_value, 7
	.dwcfi	same_value, 8
	.dwcfi	same_value, 9
	.dwcfi	same_value, 10
	.dwcfi	same_value, 11
	.dwcfi	same_value, 59
	.dwcfi	same_value, 63
	.dwcfi	same_value, 67
	.dwcfi	same_value, 71
	.dwendentry

;***************************************************************
;* DWARF REGISTER MAP                                          *
;***************************************************************

$C$DW$1760	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1760, DW_AT_name("AL")
	.dwattr $C$DW$1760, DW_AT_location[DW_OP_reg0]

$C$DW$1761	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1761, DW_AT_name("AH")
	.dwattr $C$DW$1761, DW_AT_location[DW_OP_reg1]

$C$DW$1762	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1762, DW_AT_name("PL")
	.dwattr $C$DW$1762, DW_AT_location[DW_OP_reg2]

$C$DW$1763	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1763, DW_AT_name("PH")
	.dwattr $C$DW$1763, DW_AT_location[DW_OP_reg3]

$C$DW$1764	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1764, DW_AT_name("SP")
	.dwattr $C$DW$1764, DW_AT_location[DW_OP_reg20]

$C$DW$1765	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1765, DW_AT_name("XT")
	.dwattr $C$DW$1765, DW_AT_location[DW_OP_reg21]

$C$DW$1766	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1766, DW_AT_name("T")
	.dwattr $C$DW$1766, DW_AT_location[DW_OP_reg22]

$C$DW$1767	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1767, DW_AT_name("ST0")
	.dwattr $C$DW$1767, DW_AT_location[DW_OP_reg23]

$C$DW$1768	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1768, DW_AT_name("ST1")
	.dwattr $C$DW$1768, DW_AT_location[DW_OP_reg24]

$C$DW$1769	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1769, DW_AT_name("PC")
	.dwattr $C$DW$1769, DW_AT_location[DW_OP_reg25]

$C$DW$1770	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1770, DW_AT_name("RPC")
	.dwattr $C$DW$1770, DW_AT_location[DW_OP_reg26]

$C$DW$1771	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1771, DW_AT_name("FP")
	.dwattr $C$DW$1771, DW_AT_location[DW_OP_reg28]

$C$DW$1772	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1772, DW_AT_name("DP")
	.dwattr $C$DW$1772, DW_AT_location[DW_OP_reg29]

$C$DW$1773	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1773, DW_AT_name("SXM")
	.dwattr $C$DW$1773, DW_AT_location[DW_OP_reg30]

$C$DW$1774	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1774, DW_AT_name("PM")
	.dwattr $C$DW$1774, DW_AT_location[DW_OP_reg31]

$C$DW$1775	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1775, DW_AT_name("OVM")
	.dwattr $C$DW$1775, DW_AT_location[DW_OP_regx 0x20]

$C$DW$1776	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1776, DW_AT_name("PAGE0")
	.dwattr $C$DW$1776, DW_AT_location[DW_OP_regx 0x21]

$C$DW$1777	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1777, DW_AT_name("AMODE")
	.dwattr $C$DW$1777, DW_AT_location[DW_OP_regx 0x22]

$C$DW$1778	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1778, DW_AT_name("EALLOW")
	.dwattr $C$DW$1778, DW_AT_location[DW_OP_regx 0x4e]

$C$DW$1779	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1779, DW_AT_name("INTM")
	.dwattr $C$DW$1779, DW_AT_location[DW_OP_regx 0x23]

$C$DW$1780	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1780, DW_AT_name("IFR")
	.dwattr $C$DW$1780, DW_AT_location[DW_OP_regx 0x24]

$C$DW$1781	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1781, DW_AT_name("IER")
	.dwattr $C$DW$1781, DW_AT_location[DW_OP_regx 0x25]

$C$DW$1782	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1782, DW_AT_name("V")
	.dwattr $C$DW$1782, DW_AT_location[DW_OP_regx 0x26]

$C$DW$1783	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1783, DW_AT_name("PSEUDOH")
	.dwattr $C$DW$1783, DW_AT_location[DW_OP_regx 0x4c]

$C$DW$1784	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1784, DW_AT_name("VOL")
	.dwattr $C$DW$1784, DW_AT_location[DW_OP_regx 0x4d]

$C$DW$1785	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1785, DW_AT_name("AR0")
	.dwattr $C$DW$1785, DW_AT_location[DW_OP_reg4]

$C$DW$1786	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1786, DW_AT_name("XAR0")
	.dwattr $C$DW$1786, DW_AT_location[DW_OP_reg5]

$C$DW$1787	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1787, DW_AT_name("AR1")
	.dwattr $C$DW$1787, DW_AT_location[DW_OP_reg6]

$C$DW$1788	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1788, DW_AT_name("XAR1")
	.dwattr $C$DW$1788, DW_AT_location[DW_OP_reg7]

$C$DW$1789	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1789, DW_AT_name("AR2")
	.dwattr $C$DW$1789, DW_AT_location[DW_OP_reg8]

$C$DW$1790	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1790, DW_AT_name("XAR2")
	.dwattr $C$DW$1790, DW_AT_location[DW_OP_reg9]

$C$DW$1791	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1791, DW_AT_name("AR3")
	.dwattr $C$DW$1791, DW_AT_location[DW_OP_reg10]

$C$DW$1792	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1792, DW_AT_name("XAR3")
	.dwattr $C$DW$1792, DW_AT_location[DW_OP_reg11]

$C$DW$1793	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1793, DW_AT_name("AR4")
	.dwattr $C$DW$1793, DW_AT_location[DW_OP_reg12]

$C$DW$1794	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1794, DW_AT_name("XAR4")
	.dwattr $C$DW$1794, DW_AT_location[DW_OP_reg13]

$C$DW$1795	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1795, DW_AT_name("AR5")
	.dwattr $C$DW$1795, DW_AT_location[DW_OP_reg14]

$C$DW$1796	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1796, DW_AT_name("XAR5")
	.dwattr $C$DW$1796, DW_AT_location[DW_OP_reg15]

$C$DW$1797	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1797, DW_AT_name("AR6")
	.dwattr $C$DW$1797, DW_AT_location[DW_OP_reg16]

$C$DW$1798	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1798, DW_AT_name("XAR6")
	.dwattr $C$DW$1798, DW_AT_location[DW_OP_reg17]

$C$DW$1799	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1799, DW_AT_name("AR7")
	.dwattr $C$DW$1799, DW_AT_location[DW_OP_reg18]

$C$DW$1800	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1800, DW_AT_name("XAR7")
	.dwattr $C$DW$1800, DW_AT_location[DW_OP_reg19]

$C$DW$1801	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1801, DW_AT_name("R0H")
	.dwattr $C$DW$1801, DW_AT_location[DW_OP_regx 0x2b]

$C$DW$1802	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1802, DW_AT_name("R1H")
	.dwattr $C$DW$1802, DW_AT_location[DW_OP_regx 0x2f]

$C$DW$1803	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1803, DW_AT_name("R2H")
	.dwattr $C$DW$1803, DW_AT_location[DW_OP_regx 0x33]

$C$DW$1804	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1804, DW_AT_name("R3H")
	.dwattr $C$DW$1804, DW_AT_location[DW_OP_regx 0x37]

$C$DW$1805	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1805, DW_AT_name("R4H")
	.dwattr $C$DW$1805, DW_AT_location[DW_OP_regx 0x3b]

$C$DW$1806	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1806, DW_AT_name("R5H")
	.dwattr $C$DW$1806, DW_AT_location[DW_OP_regx 0x3f]

$C$DW$1807	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1807, DW_AT_name("R6H")
	.dwattr $C$DW$1807, DW_AT_location[DW_OP_regx 0x43]

$C$DW$1808	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1808, DW_AT_name("R7H")
	.dwattr $C$DW$1808, DW_AT_location[DW_OP_regx 0x47]

$C$DW$1809	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1809, DW_AT_name("RB")
	.dwattr $C$DW$1809, DW_AT_location[DW_OP_regx 0x4a]

$C$DW$1810	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1810, DW_AT_name("STF")
	.dwattr $C$DW$1810, DW_AT_location[DW_OP_regx 0x28]

$C$DW$1811	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1811, DW_AT_name("FPUHAZ")
	.dwattr $C$DW$1811, DW_AT_location[DW_OP_reg27]

$C$DW$1812	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1812, DW_AT_name("STF_HWDIV")
	.dwattr $C$DW$1812, DW_AT_location[DW_OP_regx 0x4f]

	.dwendtag $C$DW$CU

