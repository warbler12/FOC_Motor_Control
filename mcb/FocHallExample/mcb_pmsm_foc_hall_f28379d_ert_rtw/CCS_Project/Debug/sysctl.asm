;***************************************************************
;* TMS320C2000 G3 C/C++ Codegen                               PC v22.6.0.LTS *
;* Date/Time created: Thu Nov 20 18:10:15 2025                 *
;***************************************************************
	.compiler_opts --abi=coffabi --float_support=fpu32 --hll_source=on --mem_model:code=flat --mem_model:data=large --object_format=coff --silicon_errata_fpu1_workaround=off --silicon_version=28 --symdebug:dwarf --symdebug:dwarf_version=3 --tmu_support=tmu0 
	.asg	XAR2, FP

$C$DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr $C$DW$CU, DW_AT_name("C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c")
	.dwattr $C$DW$CU, DW_AT_producer("TI TMS320C2000 G3 C/C++ Codegen PC v22.6.0.LTS Copyright (c) 1996-2018 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("C:\Users\13571\Documents\MATLAB\Examples\R2023b\mcb\FocHallExample\mcb_pmsm_foc_hall_f28379d_ert_rtw\CCS_Project\Debug")

$C$DW$1	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$1, DW_AT_name("SysCtl_delay")
	.dwattr $C$DW$1, DW_AT_TI_symbol_name("_SysCtl_delay")
	.dwattr $C$DW$1, DW_AT_declaration
	.dwattr $C$DW$1, DW_AT_external
$C$DW$2	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$2, DW_AT_type(*$C$DW$T$28)

	.dwendtag $C$DW$1

;	D:\Software\CCS\CCS12.2.0.00009_win64\c1220\ccs\tools\compiler\ti-cgt-c2000_22.6.0.LTS\bin\ac2000.exe -@C:\\Users\\13571\\AppData\\Local\\Temp\\{3F96F894-A148-403A-92F7-344A11DF6ACD} 
	.sect	".text"
 .if __TI_EABI__
 .asg    SysCtl_delay    , _SysCtl_delay
 .endif
 .def _SysCtl_delay
 .sect ".TI.ramfunc"
 .global  _SysCtl_delay
_SysCtl_delay:
 SUB    ACC,#1
 BF     _SysCtl_delay, GEQ
 LRETR
	.sect	".text"
	.clink

$C$DW$3	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$3, DW_AT_name("SysCtl_serviceWatchdog")
	.dwattr $C$DW$3, DW_AT_low_pc(_SysCtl_serviceWatchdog)
	.dwattr $C$DW$3, DW_AT_high_pc(0x00)
	.dwattr $C$DW$3, DW_AT_TI_symbol_name("_SysCtl_serviceWatchdog")
	.dwattr $C$DW$3, DW_AT_TI_begin_file("C:\TI\C2000Ware_3_04_00_00\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$3, DW_AT_TI_begin_line(0x759)
	.dwattr $C$DW$3, DW_AT_TI_begin_column(0x01)
	.dwattr $C$DW$3, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "C:\TI\C2000Ware_3_04_00_00\driverlib\f2837xd\driverlib\sysctl.h",line 1882,column 1,is_stmt,address _SysCtl_serviceWatchdog,isa 0

	.dwfde $C$DW$CIE, _SysCtl_serviceWatchdog
;----------------------------------------------------------------------
; 1881 | SysCtl_serviceWatchdog(void)                                           
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _SysCtl_serviceWatchdog       FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_SysCtl_serviceWatchdog:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "C:\TI\C2000Ware_3_04_00_00\driverlib\f2837xd\driverlib\sysctl.h",line 1883,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 1883 | EALLOW;                                                                
; 1885 | //                                                                     
; 1886 | // Enable the counter to be reset and then reset it.                   
; 1887 | //                                                                     
;----------------------------------------------------------------------
        EALLOW    ; [CPU_ALU] |1883| 
	.dwpsn	file "C:\TI\C2000Ware_3_04_00_00\driverlib\f2837xd\driverlib\sysctl.h",line 1888,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 1888 | HWREGH(WD_BASE + SYSCTL_O_WDKEY) = SYSCTL_WD_ENRSTKEY;                 
;----------------------------------------------------------------------
        MOVB      AL,#85                ; [CPU_ALU] |1888| 
        MOV       *(0:0x7025),AL        ; [CPU_ALU] |1888| 
	.dwpsn	file "C:\TI\C2000Ware_3_04_00_00\driverlib\f2837xd\driverlib\sysctl.h",line 1889,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 1889 | HWREGH(WD_BASE + SYSCTL_O_WDKEY) = SYSCTL_WD_RSTKEY;                   
;----------------------------------------------------------------------
        MOVB      AL,#170               ; [CPU_ALU] |1889| 
        MOV       *(0:0x7025),AL        ; [CPU_ALU] |1889| 
	.dwpsn	file "C:\TI\C2000Ware_3_04_00_00\driverlib\f2837xd\driverlib\sysctl.h",line 1891,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 1891 | EDIS;                                                                  
;----------------------------------------------------------------------
        EDIS      ; [CPU_ALU] |1891| 
	.dwpsn	file "C:\TI\C2000Ware_3_04_00_00\driverlib\f2837xd\driverlib\sysctl.h",line 1892,column 1,is_stmt,isa 0
$C$DW$4	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$4, DW_AT_low_pc(0x00)
	.dwattr $C$DW$4, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$3, DW_AT_TI_end_file("C:\TI\C2000Ware_3_04_00_00\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$3, DW_AT_TI_end_line(0x764)
	.dwattr $C$DW$3, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$3

	.sect	".text"
	.clink

$C$DW$5	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$5, DW_AT_name("SysCtl_isMCDClockFailureDetected")
	.dwattr $C$DW$5, DW_AT_low_pc(_SysCtl_isMCDClockFailureDetected)
	.dwattr $C$DW$5, DW_AT_high_pc(0x00)
	.dwattr $C$DW$5, DW_AT_TI_symbol_name("_SysCtl_isMCDClockFailureDetected")
	.dwattr $C$DW$5, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$5, DW_AT_TI_begin_file("C:\TI\C2000Ware_3_04_00_00\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$5, DW_AT_TI_begin_line(0x9db)
	.dwattr $C$DW$5, DW_AT_TI_begin_column(0x01)
	.dwattr $C$DW$5, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "C:\TI\C2000Ware_3_04_00_00\driverlib\f2837xd\driverlib\sysctl.h",line 2524,column 1,is_stmt,address _SysCtl_isMCDClockFailureDetected,isa 0

	.dwfde $C$DW$CIE, _SysCtl_isMCDClockFailureDetected
;----------------------------------------------------------------------
; 2523 | SysCtl_isMCDClockFailureDetected(void)                                 
; 2525 | //                                                                     
; 2526 | //  Check the status bit to determine failure                          
; 2527 | //                                                                     
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _SysCtl_isMCDClockFailureDetected FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_SysCtl_isMCDClockFailureDetected:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "C:\TI\C2000Ware_3_04_00_00\driverlib\f2837xd\driverlib\sysctl.h",line 2528,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 2528 | return((HWREGH(CLKCFG_BASE + SYSCTL_O_MCDCR) & SYSCTL_MCDCR_MCLKSTS) !=
;     |  0U);                                                                  
;----------------------------------------------------------------------
        MOV       ACC,#0                ; [CPU_ALU] |2528| 
        MOVL      XAR4,#381486          ; [CPU_ARAU] |2528| 
        TBIT      *+XAR4[0],#0          ; [CPU_ALU] |2528| 
        B         $C$L1,NTC             ; [CPU_ALU] |2528| 
        ; branchcc occurs ; [] |2528| 
        MOVB      AH,#1                 ; [CPU_ALU] |2528| 
$C$L1:    
        CMPB      AH,#0                 ; [CPU_ALU] |2528| 
        B         $C$L2,EQ              ; [CPU_ALU] |2528| 
        ; branchcc occurs ; [] |2528| 
        MOVB      AL,#1                 ; [CPU_ALU] |2528| 
$C$L2:    
	.dwpsn	file "C:\TI\C2000Ware_3_04_00_00\driverlib\f2837xd\driverlib\sysctl.h",line 2529,column 1,is_stmt,isa 0
$C$DW$6	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$6, DW_AT_low_pc(0x00)
	.dwattr $C$DW$6, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$5, DW_AT_TI_end_file("C:\TI\C2000Ware_3_04_00_00\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$5, DW_AT_TI_end_line(0x9e1)
	.dwattr $C$DW$5, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$5

	.sect	".text"
	.clink

$C$DW$7	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$7, DW_AT_name("SysCtl_resetMCD")
	.dwattr $C$DW$7, DW_AT_low_pc(_SysCtl_resetMCD)
	.dwattr $C$DW$7, DW_AT_high_pc(0x00)
	.dwattr $C$DW$7, DW_AT_TI_symbol_name("_SysCtl_resetMCD")
	.dwattr $C$DW$7, DW_AT_TI_begin_file("C:\TI\C2000Ware_3_04_00_00\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$7, DW_AT_TI_begin_line(0x9eb)
	.dwattr $C$DW$7, DW_AT_TI_begin_column(0x01)
	.dwattr $C$DW$7, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "C:\TI\C2000Ware_3_04_00_00\driverlib\f2837xd\driverlib\sysctl.h",line 2540,column 1,is_stmt,address _SysCtl_resetMCD,isa 0

	.dwfde $C$DW$CIE, _SysCtl_resetMCD
;----------------------------------------------------------------------
; 2539 | SysCtl_resetMCD(void)                                                  
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _SysCtl_resetMCD              FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_SysCtl_resetMCD:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "C:\TI\C2000Ware_3_04_00_00\driverlib\f2837xd\driverlib\sysctl.h",line 2541,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 2541 | EALLOW;                                                                
;----------------------------------------------------------------------
        EALLOW    ; [CPU_ALU] |2541| 
	.dwpsn	file "C:\TI\C2000Ware_3_04_00_00\driverlib\f2837xd\driverlib\sysctl.h",line 2543,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 2543 | HWREGH(CLKCFG_BASE + SYSCTL_O_MCDCR) |= SYSCTL_MCDCR_MCLKCLR;          
;----------------------------------------------------------------------
        MOVL      XAR4,#381486          ; [CPU_ARAU] |2543| 
        OR        *+XAR4[0],#0x0002     ; [CPU_ALU] |2543| 
	.dwpsn	file "C:\TI\C2000Ware_3_04_00_00\driverlib\f2837xd\driverlib\sysctl.h",line 2545,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 2545 | EDIS;                                                                  
;----------------------------------------------------------------------
        EDIS      ; [CPU_ALU] |2545| 
	.dwpsn	file "C:\TI\C2000Ware_3_04_00_00\driverlib\f2837xd\driverlib\sysctl.h",line 2546,column 1,is_stmt,isa 0
$C$DW$8	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$8, DW_AT_low_pc(0x00)
	.dwattr $C$DW$8, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$7, DW_AT_TI_end_file("C:\TI\C2000Ware_3_04_00_00\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$7, DW_AT_TI_end_line(0x9f2)
	.dwattr $C$DW$7, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$7

	.sect	".text"
	.clink

$C$DW$9	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$9, DW_AT_name("CPUTimer_clearOverflowFlag")
	.dwattr $C$DW$9, DW_AT_low_pc(_CPUTimer_clearOverflowFlag)
	.dwattr $C$DW$9, DW_AT_high_pc(0x00)
	.dwattr $C$DW$9, DW_AT_TI_symbol_name("_CPUTimer_clearOverflowFlag")
	.dwattr $C$DW$9, DW_AT_TI_begin_file("C:\TI\C2000Ware_3_04_00_00\driverlib\f2837xd\driverlib\cputimer.h")
	.dwattr $C$DW$9, DW_AT_TI_begin_line(0xa2)
	.dwattr $C$DW$9, DW_AT_TI_begin_column(0x14)
	.dwattr $C$DW$9, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "C:\TI\C2000Ware_3_04_00_00\driverlib\f2837xd\driverlib\cputimer.h",line 163,column 1,is_stmt,address _CPUTimer_clearOverflowFlag,isa 0

	.dwfde $C$DW$CIE, _CPUTimer_clearOverflowFlag
$C$DW$10	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$10, DW_AT_name("base")
	.dwattr $C$DW$10, DW_AT_TI_symbol_name("_base")
	.dwattr $C$DW$10, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$10, DW_AT_location[DW_OP_reg0]

;----------------------------------------------------------------------
; 162 | static inline void CPUTimer_clearOverflowFlag(uint32_t base)           
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _CPUTimer_clearOverflowFlag   FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  2 Auto,  0 SOE     *
;***************************************************************

_CPUTimer_clearOverflowFlag:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
$C$DW$11	.dwtag  DW_TAG_variable
	.dwattr $C$DW$11, DW_AT_name("base")
	.dwattr $C$DW$11, DW_AT_TI_symbol_name("_base")
	.dwattr $C$DW$11, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$11, DW_AT_location[DW_OP_breg20 -2]

;----------------------------------------------------------------------
; 164 | ASSERT(CPUTimer_isBaseValid(base));                                    
; 166 | //                                                                     
; 167 | // Set TIF bit of TCR register                                         
; 168 | //                                                                     
;----------------------------------------------------------------------
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |163| 
	.dwpsn	file "C:\TI\C2000Ware_3_04_00_00\driverlib\f2837xd\driverlib\cputimer.h",line 169,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 169 | HWREGH(base + CPUTIMER_O_TCR) |= CPUTIMER_TCR_TIF;                     
;----------------------------------------------------------------------
        MOVB      ACC,#4                ; [CPU_ALU] |169| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |169| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |169| 
        OR        *+XAR4[0],#0x8000     ; [CPU_ALU] |169| 
	.dwpsn	file "C:\TI\C2000Ware_3_04_00_00\driverlib\f2837xd\driverlib\cputimer.h",line 170,column 1,is_stmt,isa 0
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$12	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$12, DW_AT_low_pc(0x00)
	.dwattr $C$DW$12, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$9, DW_AT_TI_end_file("C:\TI\C2000Ware_3_04_00_00\driverlib\f2837xd\driverlib\cputimer.h")
	.dwattr $C$DW$9, DW_AT_TI_end_line(0xaa)
	.dwattr $C$DW$9, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$9

	.sect	".text"
	.clink

$C$DW$13	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$13, DW_AT_name("CPUTimer_disableInterrupt")
	.dwattr $C$DW$13, DW_AT_low_pc(_CPUTimer_disableInterrupt)
	.dwattr $C$DW$13, DW_AT_high_pc(0x00)
	.dwattr $C$DW$13, DW_AT_TI_symbol_name("_CPUTimer_disableInterrupt")
	.dwattr $C$DW$13, DW_AT_TI_begin_file("C:\TI\C2000Ware_3_04_00_00\driverlib\f2837xd\driverlib\cputimer.h")
	.dwattr $C$DW$13, DW_AT_TI_begin_line(0xb7)
	.dwattr $C$DW$13, DW_AT_TI_begin_column(0x14)
	.dwattr $C$DW$13, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "C:\TI\C2000Ware_3_04_00_00\driverlib\f2837xd\driverlib\cputimer.h",line 184,column 1,is_stmt,address _CPUTimer_disableInterrupt,isa 0

	.dwfde $C$DW$CIE, _CPUTimer_disableInterrupt
$C$DW$14	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$14, DW_AT_name("base")
	.dwattr $C$DW$14, DW_AT_TI_symbol_name("_base")
	.dwattr $C$DW$14, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$14, DW_AT_location[DW_OP_reg0]

;----------------------------------------------------------------------
; 183 | static inline void CPUTimer_disableInterrupt(uint32_t base)            
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _CPUTimer_disableInterrupt    FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  2 Auto,  0 SOE     *
;***************************************************************

_CPUTimer_disableInterrupt:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
$C$DW$15	.dwtag  DW_TAG_variable
	.dwattr $C$DW$15, DW_AT_name("base")
	.dwattr $C$DW$15, DW_AT_TI_symbol_name("_base")
	.dwattr $C$DW$15, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$15, DW_AT_location[DW_OP_breg20 -2]

;----------------------------------------------------------------------
; 185 | ASSERT(CPUTimer_isBaseValid(base));                                    
; 187 | //                                                                     
; 188 | // Clear TIE bit of TCR register                                       
; 189 | //                                                                     
;----------------------------------------------------------------------
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |184| 
	.dwpsn	file "C:\TI\C2000Ware_3_04_00_00\driverlib\f2837xd\driverlib\cputimer.h",line 190,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 190 | HWREGH(base + CPUTIMER_O_TCR) &= ~CPUTIMER_TCR_TIE;                    
;----------------------------------------------------------------------
        MOVB      ACC,#4                ; [CPU_ALU] |190| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |190| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |190| 
        AND       *+XAR4[0],#0xbfff     ; [CPU_ALU] |190| 
	.dwpsn	file "C:\TI\C2000Ware_3_04_00_00\driverlib\f2837xd\driverlib\cputimer.h",line 191,column 1,is_stmt,isa 0
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$16	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$16, DW_AT_low_pc(0x00)
	.dwattr $C$DW$16, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$13, DW_AT_TI_end_file("C:\TI\C2000Ware_3_04_00_00\driverlib\f2837xd\driverlib\cputimer.h")
	.dwattr $C$DW$13, DW_AT_TI_end_line(0xbf)
	.dwattr $C$DW$13, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$13

	.sect	".text"
	.clink

$C$DW$17	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$17, DW_AT_name("CPUTimer_stopTimer")
	.dwattr $C$DW$17, DW_AT_low_pc(_CPUTimer_stopTimer)
	.dwattr $C$DW$17, DW_AT_high_pc(0x00)
	.dwattr $C$DW$17, DW_AT_TI_symbol_name("_CPUTimer_stopTimer")
	.dwattr $C$DW$17, DW_AT_TI_begin_file("C:\TI\C2000Ware_3_04_00_00\driverlib\f2837xd\driverlib\cputimer.h")
	.dwattr $C$DW$17, DW_AT_TI_begin_line(0xf7)
	.dwattr $C$DW$17, DW_AT_TI_begin_column(0x14)
	.dwattr $C$DW$17, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "C:\TI\C2000Ware_3_04_00_00\driverlib\f2837xd\driverlib\cputimer.h",line 248,column 1,is_stmt,address _CPUTimer_stopTimer,isa 0

	.dwfde $C$DW$CIE, _CPUTimer_stopTimer
$C$DW$18	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$18, DW_AT_name("base")
	.dwattr $C$DW$18, DW_AT_TI_symbol_name("_base")
	.dwattr $C$DW$18, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$18, DW_AT_location[DW_OP_reg0]

;----------------------------------------------------------------------
; 247 | static inline void CPUTimer_stopTimer(uint32_t base)                   
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _CPUTimer_stopTimer           FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  2 Auto,  0 SOE     *
;***************************************************************

_CPUTimer_stopTimer:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
$C$DW$19	.dwtag  DW_TAG_variable
	.dwattr $C$DW$19, DW_AT_name("base")
	.dwattr $C$DW$19, DW_AT_TI_symbol_name("_base")
	.dwattr $C$DW$19, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$19, DW_AT_location[DW_OP_breg20 -2]

;----------------------------------------------------------------------
; 249 | ASSERT(CPUTimer_isBaseValid(base));                                    
; 251 | //                                                                     
; 252 | // Set TSS bit of register TCR                                         
; 253 | //                                                                     
;----------------------------------------------------------------------
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |248| 
	.dwpsn	file "C:\TI\C2000Ware_3_04_00_00\driverlib\f2837xd\driverlib\cputimer.h",line 254,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 254 | HWREGH(base + CPUTIMER_O_TCR) |= CPUTIMER_TCR_TSS;                     
;----------------------------------------------------------------------
        MOVB      ACC,#4                ; [CPU_ALU] |254| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |254| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |254| 
        OR        *+XAR4[0],#0x0010     ; [CPU_ALU] |254| 
	.dwpsn	file "C:\TI\C2000Ware_3_04_00_00\driverlib\f2837xd\driverlib\cputimer.h",line 255,column 1,is_stmt,isa 0
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$20	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$20, DW_AT_low_pc(0x00)
	.dwattr $C$DW$20, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$17, DW_AT_TI_end_file("C:\TI\C2000Ware_3_04_00_00\driverlib\f2837xd\driverlib\cputimer.h")
	.dwattr $C$DW$17, DW_AT_TI_end_line(0xff)
	.dwattr $C$DW$17, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$17

	.sect	".text"
	.clink

$C$DW$21	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$21, DW_AT_name("CPUTimer_startTimer")
	.dwattr $C$DW$21, DW_AT_low_pc(_CPUTimer_startTimer)
	.dwattr $C$DW$21, DW_AT_high_pc(0x00)
	.dwattr $C$DW$21, DW_AT_TI_symbol_name("_CPUTimer_startTimer")
	.dwattr $C$DW$21, DW_AT_TI_begin_file("C:\TI\C2000Ware_3_04_00_00\driverlib\f2837xd\driverlib\cputimer.h")
	.dwattr $C$DW$21, DW_AT_TI_begin_line(0x125)
	.dwattr $C$DW$21, DW_AT_TI_begin_column(0x14)
	.dwattr $C$DW$21, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "C:\TI\C2000Ware_3_04_00_00\driverlib\f2837xd\driverlib\cputimer.h",line 294,column 1,is_stmt,address _CPUTimer_startTimer,isa 0

	.dwfde $C$DW$CIE, _CPUTimer_startTimer
$C$DW$22	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$22, DW_AT_name("base")
	.dwattr $C$DW$22, DW_AT_TI_symbol_name("_base")
	.dwattr $C$DW$22, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$22, DW_AT_location[DW_OP_reg0]

;----------------------------------------------------------------------
; 293 | static inline void CPUTimer_startTimer(uint32_t base)                  
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _CPUTimer_startTimer          FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  2 Auto,  0 SOE     *
;***************************************************************

_CPUTimer_startTimer:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
$C$DW$23	.dwtag  DW_TAG_variable
	.dwattr $C$DW$23, DW_AT_name("base")
	.dwattr $C$DW$23, DW_AT_TI_symbol_name("_base")
	.dwattr $C$DW$23, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$23, DW_AT_location[DW_OP_breg20 -2]

;----------------------------------------------------------------------
; 295 | ASSERT(CPUTimer_isBaseValid(base));                                    
; 297 | //                                                                     
; 298 | // Reload the timer counter                                            
; 299 | //                                                                     
;----------------------------------------------------------------------
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |294| 
	.dwpsn	file "C:\TI\C2000Ware_3_04_00_00\driverlib\f2837xd\driverlib\cputimer.h",line 300,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 300 | HWREGH(base + CPUTIMER_O_TCR) |= CPUTIMER_TCR_TRB;                     
; 302 | //                                                                     
; 303 | // Clear TSS bit of register TCR                                       
; 304 | //                                                                     
;----------------------------------------------------------------------
        MOVB      ACC,#4                ; [CPU_ALU] |300| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |300| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |300| 
        OR        *+XAR4[0],#0x0020     ; [CPU_ALU] |300| 
	.dwpsn	file "C:\TI\C2000Ware_3_04_00_00\driverlib\f2837xd\driverlib\cputimer.h",line 305,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 305 | HWREGH(base + CPUTIMER_O_TCR) &= ~CPUTIMER_TCR_TSS;                    
;----------------------------------------------------------------------
        MOVB      ACC,#4                ; [CPU_ALU] |305| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |305| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |305| 
        AND       *+XAR4[0],#0xffef     ; [CPU_ALU] |305| 
	.dwpsn	file "C:\TI\C2000Ware_3_04_00_00\driverlib\f2837xd\driverlib\cputimer.h",line 306,column 1,is_stmt,isa 0
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$24	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$24, DW_AT_low_pc(0x00)
	.dwattr $C$DW$24, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$21, DW_AT_TI_end_file("C:\TI\C2000Ware_3_04_00_00\driverlib\f2837xd\driverlib\cputimer.h")
	.dwattr $C$DW$21, DW_AT_TI_end_line(0x132)
	.dwattr $C$DW$21, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$21

	.sect	".text"
	.clink

$C$DW$25	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$25, DW_AT_name("CPUTimer_setPeriod")
	.dwattr $C$DW$25, DW_AT_low_pc(_CPUTimer_setPeriod)
	.dwattr $C$DW$25, DW_AT_high_pc(0x00)
	.dwattr $C$DW$25, DW_AT_TI_symbol_name("_CPUTimer_setPeriod")
	.dwattr $C$DW$25, DW_AT_TI_begin_file("C:\TI\C2000Ware_3_04_00_00\driverlib\f2837xd\driverlib\cputimer.h")
	.dwattr $C$DW$25, DW_AT_TI_begin_line(0x140)
	.dwattr $C$DW$25, DW_AT_TI_begin_column(0x14)
	.dwattr $C$DW$25, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "C:\TI\C2000Ware_3_04_00_00\driverlib\f2837xd\driverlib\cputimer.h",line 321,column 1,is_stmt,address _CPUTimer_setPeriod,isa 0

	.dwfde $C$DW$CIE, _CPUTimer_setPeriod
$C$DW$26	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$26, DW_AT_name("base")
	.dwattr $C$DW$26, DW_AT_TI_symbol_name("_base")
	.dwattr $C$DW$26, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$26, DW_AT_location[DW_OP_reg0]

$C$DW$27	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$27, DW_AT_name("periodCount")
	.dwattr $C$DW$27, DW_AT_TI_symbol_name("_periodCount")
	.dwattr $C$DW$27, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$27, DW_AT_location[DW_OP_breg20 -6]

;----------------------------------------------------------------------
; 320 | static inline void CPUTimer_setPeriod(uint32_t base, uint32_t periodCou
;     | nt)                                                                    
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _CPUTimer_setPeriod           FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  2 Auto,  0 SOE     *
;***************************************************************

_CPUTimer_setPeriod:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
$C$DW$28	.dwtag  DW_TAG_variable
	.dwattr $C$DW$28, DW_AT_name("base")
	.dwattr $C$DW$28, DW_AT_TI_symbol_name("_base")
	.dwattr $C$DW$28, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$28, DW_AT_location[DW_OP_breg20 -2]

;----------------------------------------------------------------------
; 322 | ASSERT(CPUTimer_isBaseValid(base));                                    
; 324 | //                                                                     
; 325 | // Load the MSB period Count                                           
; 326 | //                                                                     
;----------------------------------------------------------------------
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |321| 
	.dwpsn	file "C:\TI\C2000Ware_3_04_00_00\driverlib\f2837xd\driverlib\cputimer.h",line 327,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 327 | HWREG(base + CPUTIMER_O_PRD) = periodCount;                            
;----------------------------------------------------------------------
        MOVL      XAR4,*-SP[2]          ; [CPU_ALU] |327| 
        MOVL      ACC,*-SP[6]           ; [CPU_ALU] |327| 
        MOVL      *+XAR4[2],ACC         ; [CPU_ALU] |327| 
	.dwpsn	file "C:\TI\C2000Ware_3_04_00_00\driverlib\f2837xd\driverlib\cputimer.h",line 328,column 1,is_stmt,isa 0
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$29	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$29, DW_AT_low_pc(0x00)
	.dwattr $C$DW$29, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$25, DW_AT_TI_end_file("C:\TI\C2000Ware_3_04_00_00\driverlib\f2837xd\driverlib\cputimer.h")
	.dwattr $C$DW$25, DW_AT_TI_end_line(0x148)
	.dwattr $C$DW$25, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$25

	.sect	".text"
	.clink

$C$DW$30	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$30, DW_AT_name("CPUTimer_getTimerOverflowStatus")
	.dwattr $C$DW$30, DW_AT_low_pc(_CPUTimer_getTimerOverflowStatus)
	.dwattr $C$DW$30, DW_AT_high_pc(0x00)
	.dwattr $C$DW$30, DW_AT_TI_symbol_name("_CPUTimer_getTimerOverflowStatus")
	.dwattr $C$DW$30, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$30, DW_AT_TI_begin_file("C:\TI\C2000Ware_3_04_00_00\driverlib\f2837xd\driverlib\cputimer.h")
	.dwattr $C$DW$30, DW_AT_TI_begin_line(0x182)
	.dwattr $C$DW$30, DW_AT_TI_begin_column(0x14)
	.dwattr $C$DW$30, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "C:\TI\C2000Ware_3_04_00_00\driverlib\f2837xd\driverlib\cputimer.h",line 387,column 1,is_stmt,address _CPUTimer_getTimerOverflowStatus,isa 0

	.dwfde $C$DW$CIE, _CPUTimer_getTimerOverflowStatus
$C$DW$31	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$31, DW_AT_name("base")
	.dwattr $C$DW$31, DW_AT_TI_symbol_name("_base")
	.dwattr $C$DW$31, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$31, DW_AT_location[DW_OP_reg0]

;----------------------------------------------------------------------
; 386 | static inline bool CPUTimer_getTimerOverflowStatus(uint32_t base)      
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _CPUTimer_getTimerOverflowStatus FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  2 Auto,  0 SOE     *
;***************************************************************

_CPUTimer_getTimerOverflowStatus:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
$C$DW$32	.dwtag  DW_TAG_variable
	.dwattr $C$DW$32, DW_AT_name("base")
	.dwattr $C$DW$32, DW_AT_TI_symbol_name("_base")
	.dwattr $C$DW$32, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$32, DW_AT_location[DW_OP_breg20 -2]

;----------------------------------------------------------------------
; 388 | ASSERT(CPUTimer_isBaseValid(base));                                    
; 390 | //                                                                     
; 391 | // Check if TIF bits of register TCR are set                           
; 392 | //                                                                     
;----------------------------------------------------------------------
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |387| 
	.dwpsn	file "C:\TI\C2000Ware_3_04_00_00\driverlib\f2837xd\driverlib\cputimer.h",line 393,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 393 | return(((HWREGH(base + CPUTIMER_O_TCR) & CPUTIMER_TCR_TIF) ==          
; 394 |         CPUTIMER_TCR_TIF) ? true : false);                             
;----------------------------------------------------------------------
        MOVL      XAR5,*-SP[2]          ; [CPU_ALU] |393| 
        AND       AL,*+XAR5[4],#0x8000  ; [CPU_ALU] |393| 
        MOVZ      AR7,AL                ; [CPU_ALU] |393| 
        MOVB      XAR6,#0               ; [CPU_ALU] |393| 
        CLRC      SXM                   ; [CPU_ALU] 
        MOV       ACC,#32768            ; [CPU_ALU] |393| 
        CMPL      ACC,XAR7              ; [CPU_ALU] |393| 
        B         $C$L3,NEQ             ; [CPU_ALU] |393| 
        ; branchcc occurs ; [] |393| 
        MOVB      AH,#1                 ; [CPU_ALU] |393| 
        B         $C$L4,UNC             ; [CPU_ALU] |393| 
        ; branch occurs ; [] |393| 
$C$L3:    
        MOVB      AH,#0                 ; [CPU_ALU] |393| 
$C$L4:    
        CMPB      AH,#0                 ; [CPU_ALU] |393| 
        B         $C$L5,EQ              ; [CPU_ALU] |393| 
        ; branchcc occurs ; [] |393| 
        MOVB      XAR6,#1               ; [CPU_ALU] |393| 
$C$L5:    
        MOV       AL,AR6                ; [CPU_ALU] |393| 
	.dwpsn	file "C:\TI\C2000Ware_3_04_00_00\driverlib\f2837xd\driverlib\cputimer.h",line 395,column 1,is_stmt,isa 0
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$33	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$33, DW_AT_low_pc(0x00)
	.dwattr $C$DW$33, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$30, DW_AT_TI_end_file("C:\TI\C2000Ware_3_04_00_00\driverlib\f2837xd\driverlib\cputimer.h")
	.dwattr $C$DW$30, DW_AT_TI_end_line(0x18b)
	.dwattr $C$DW$30, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$30

	.sect	".text"
	.clink

$C$DW$34	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$34, DW_AT_name("CPUTimer_selectClockSource")
	.dwattr $C$DW$34, DW_AT_low_pc(_CPUTimer_selectClockSource)
	.dwattr $C$DW$34, DW_AT_high_pc(0x00)
	.dwattr $C$DW$34, DW_AT_TI_symbol_name("_CPUTimer_selectClockSource")
	.dwattr $C$DW$34, DW_AT_TI_begin_file("C:\TI\C2000Ware_3_04_00_00\driverlib\f2837xd\driverlib\cputimer.h")
	.dwattr $C$DW$34, DW_AT_TI_begin_line(0x1aa)
	.dwattr $C$DW$34, DW_AT_TI_begin_column(0x14)
	.dwattr $C$DW$34, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "C:\TI\C2000Ware_3_04_00_00\driverlib\f2837xd\driverlib\cputimer.h",line 429,column 1,is_stmt,address _CPUTimer_selectClockSource,isa 0

	.dwfde $C$DW$CIE, _CPUTimer_selectClockSource
$C$DW$35	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$35, DW_AT_name("base")
	.dwattr $C$DW$35, DW_AT_TI_symbol_name("_base")
	.dwattr $C$DW$35, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$35, DW_AT_location[DW_OP_reg0]

$C$DW$36	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$36, DW_AT_name("source")
	.dwattr $C$DW$36, DW_AT_TI_symbol_name("_source")
	.dwattr $C$DW$36, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$36, DW_AT_location[DW_OP_reg12]

$C$DW$37	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$37, DW_AT_name("prescaler")
	.dwattr $C$DW$37, DW_AT_TI_symbol_name("_prescaler")
	.dwattr $C$DW$37, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$37, DW_AT_location[DW_OP_reg14]

;----------------------------------------------------------------------
; 426 | static inline void CPUTimer_selectClockSource(uint32_t base,           
; 427 | CPUTimer_ClockSource source,                                           
; 428 | CPUTimer_Prescaler prescaler)                                          
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _CPUTimer_selectClockSource   FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  4 Auto,  0 SOE     *
;***************************************************************

_CPUTimer_selectClockSource:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
$C$DW$38	.dwtag  DW_TAG_variable
	.dwattr $C$DW$38, DW_AT_name("base")
	.dwattr $C$DW$38, DW_AT_TI_symbol_name("_base")
	.dwattr $C$DW$38, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$38, DW_AT_location[DW_OP_breg20 -2]

$C$DW$39	.dwtag  DW_TAG_variable
	.dwattr $C$DW$39, DW_AT_name("source")
	.dwattr $C$DW$39, DW_AT_TI_symbol_name("_source")
	.dwattr $C$DW$39, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$39, DW_AT_location[DW_OP_breg20 -3]

$C$DW$40	.dwtag  DW_TAG_variable
	.dwattr $C$DW$40, DW_AT_name("prescaler")
	.dwattr $C$DW$40, DW_AT_TI_symbol_name("_prescaler")
	.dwattr $C$DW$40, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$40, DW_AT_location[DW_OP_breg20 -4]

;----------------------------------------------------------------------
; 430 | ASSERT(base == CPUTIMER2_BASE);                                        
; 432 | //                                                                     
; 433 | // Set source and prescaler for CPU Timer 2                            
; 434 | //                                                                     
;----------------------------------------------------------------------
        MOV       *-SP[4],AR5           ; [CPU_ALU] |429| 
        MOV       *-SP[3],AR4           ; [CPU_ALU] |429| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |429| 
	.dwpsn	file "C:\TI\C2000Ware_3_04_00_00\driverlib\f2837xd\driverlib\cputimer.h",line 435,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 435 | if(base == CPUTIMER2_BASE)                                             
;----------------------------------------------------------------------
        MOV       ACC,#3088             ; [CPU_ALU] |435| 
        CMPL      ACC,*-SP[2]           ; [CPU_ALU] |435| 
        B         $C$L6,NEQ             ; [CPU_ALU] |435| 
        ; branchcc occurs ; [] |435| 
	.dwpsn	file "C:\TI\C2000Ware_3_04_00_00\driverlib\f2837xd\driverlib\cputimer.h",line 437,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 437 | EALLOW;                                                                
; 439 | //                                                                     
; 440 | // Set Clock Source                                                    
; 441 | //                                                                     
;----------------------------------------------------------------------
        EALLOW    ; [CPU_ALU] |437| 
	.dwpsn	file "C:\TI\C2000Ware_3_04_00_00\driverlib\f2837xd\driverlib\cputimer.h",line 442,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 442 | HWREGH(CPUSYS_BASE + SYSCTL_O_TMR2CLKCTL) &=                           
; 443 |     ~SYSCTL_TMR2CLKCTL_TMR2CLKSRCSEL_M;                                
;----------------------------------------------------------------------
        MOVL      XAR4,#381820          ; [CPU_ARAU] |442| 
        AND       *+XAR4[0],#0xfff8     ; [CPU_ALU] |442| 
	.dwpsn	file "C:\TI\C2000Ware_3_04_00_00\driverlib\f2837xd\driverlib\cputimer.h",line 445,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 445 | HWREGH(CPUSYS_BASE + SYSCTL_O_TMR2CLKCTL) |= (uint16_t)source;         
; 447 | //                                                                     
; 448 | // Set Clock Prescaler                                                 
; 449 | //                                                                     
;----------------------------------------------------------------------
        MOV       AL,*-SP[3]            ; [CPU_ALU] |445| 
        OR        *+XAR4[0],AL          ; [CPU_ALU] |445| 
	.dwpsn	file "C:\TI\C2000Ware_3_04_00_00\driverlib\f2837xd\driverlib\cputimer.h",line 450,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 450 | HWREGH(CPUSYS_BASE + SYSCTL_O_TMR2CLKCTL) &=                           
; 451 |     ~SYSCTL_TMR2CLKCTL_TMR2CLKPRESCALE_M;                              
;----------------------------------------------------------------------
        AND       *+XAR4[0],#0xffc7     ; [CPU_ALU] |450| 
	.dwpsn	file "C:\TI\C2000Ware_3_04_00_00\driverlib\f2837xd\driverlib\cputimer.h",line 453,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 453 | HWREGH(CPUSYS_BASE + SYSCTL_O_TMR2CLKCTL) |= ((uint16_t)prescaler <<   
; 454 |         SYSCTL_TMR2CLKCTL_TMR2CLKPRESCALE_S);                          
;----------------------------------------------------------------------
        MOV       ACC,*-SP[4] << #3     ; [CPU_ALU] |453| 
        OR        *+XAR4[0],AL          ; [CPU_ALU] |453| 
	.dwpsn	file "C:\TI\C2000Ware_3_04_00_00\driverlib\f2837xd\driverlib\cputimer.h",line 456,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 456 | EDIS;                                                                  
;----------------------------------------------------------------------
        EDIS      ; [CPU_ALU] |456| 
	.dwpsn	file "C:\TI\C2000Ware_3_04_00_00\driverlib\f2837xd\driverlib\cputimer.h",line 458,column 1,is_stmt,isa 0
$C$L6:    
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$41	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$41, DW_AT_low_pc(0x00)
	.dwattr $C$DW$41, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$34, DW_AT_TI_end_file("C:\TI\C2000Ware_3_04_00_00\driverlib\f2837xd\driverlib\cputimer.h")
	.dwattr $C$DW$34, DW_AT_TI_end_line(0x1ca)
	.dwattr $C$DW$34, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$34

	.sect	".text"
	.clink

$C$DW$42	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$42, DW_AT_name("SysCtl_pollCpuTimer")
	.dwattr $C$DW$42, DW_AT_low_pc(_SysCtl_pollCpuTimer)
	.dwattr $C$DW$42, DW_AT_high_pc(0x00)
	.dwattr $C$DW$42, DW_AT_TI_symbol_name("_SysCtl_pollCpuTimer")
	.dwattr $C$DW$42, DW_AT_TI_begin_file("C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c")
	.dwattr $C$DW$42, DW_AT_TI_begin_line(0x56)
	.dwattr $C$DW$42, DW_AT_TI_begin_column(0x01)
	.dwattr $C$DW$42, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 87,column 1,is_stmt,address _SysCtl_pollCpuTimer,isa 0

	.dwfde $C$DW$CIE, _SysCtl_pollCpuTimer
;----------------------------------------------------------------------
;  86 | SysCtl_pollCpuTimer(void)                                              
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _SysCtl_pollCpuTimer          FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  1 Auto,  0 SOE     *
;***************************************************************

_SysCtl_pollCpuTimer:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
$C$DW$43	.dwtag  DW_TAG_variable
	.dwattr $C$DW$43, DW_AT_name("loopCount")
	.dwattr $C$DW$43, DW_AT_TI_symbol_name("_loopCount")
	.dwattr $C$DW$43, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$43, DW_AT_location[DW_OP_breg20 -1]

	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 88,column 24,is_stmt,isa 0
;----------------------------------------------------------------------
;  88 | uint16_t loopCount = 0U;                                               
;  90 | //                                                                     
;  91 | // Delay for 1 ms while the XTAL powers up                             
;  92 | //                                                                     
;  93 | // 2000 loops, 5 cycles per loop + 9 cycles overhead = 10009 cycles    
;  94 | //                                                                     
;----------------------------------------------------------------------
        MOV       *-SP[1],#0            ; [CPU_ALU] |88| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 95,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
;  95 | SysCtl_delay(2000);                                                    
;  97 | //                                                                     
;  98 | // Clear and overflow cpu timer 2 4x to guarantee operation            
;  99 | //                                                                     
; 100 | do                                                                     
; 102 |     //                                                                 
; 103 |     // Wait for cpu timer 2 to overflow                                
; 104 |     //                                                                 
;----------------------------------------------------------------------
        MOV       ACC,#2000             ; [CPU_ALU] |95| 
$C$DW$44	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$44, DW_AT_low_pc(0x00)
	.dwattr $C$DW$44, DW_AT_name("_SysCtl_delay")
	.dwattr $C$DW$44, DW_AT_TI_call

        LCR       #_SysCtl_delay        ; [CPU_ALU] |95| 
        ; call occurs [#_SysCtl_delay] ; [] |95| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 105,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 105 | while(CPUTimer_getTimerOverflowStatus(CPUTIMER2_BASE)==false);         
;----------------------------------------------------------------------
$C$L7:    
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 105,column 15,is_stmt,isa 0
;----------------------------------------------------------------------
; 107 | //                                                                     
; 108 | // If your application is stuck in this loop, please check if the      
; 109 | // input clock source is valid.                                        
; 110 | //                                                                     
; 113 | //                                                                     
; 114 | // Clear cpu timer 2 overflow flag                                     
; 115 | //                                                                     
;----------------------------------------------------------------------
        MOVL      XAR4,#3088            ; [CPU_ARAU] |105| 
        MOVL      ACC,XAR4              ; [CPU_ALU] |105| 
$C$DW$45	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$45, DW_AT_low_pc(0x00)
	.dwattr $C$DW$45, DW_AT_name("_CPUTimer_getTimerOverflowStatus")
	.dwattr $C$DW$45, DW_AT_TI_call

        LCR       #_CPUTimer_getTimerOverflowStatus ; [CPU_ALU] |105| 
        ; call occurs [#_CPUTimer_getTimerOverflowStatus] ; [] |105| 
        CMPB      AL,#0                 ; [CPU_ALU] |105| 
        B         $C$L7,EQ              ; [CPU_ALU] |105| 
        ; branchcc occurs ; [] |105| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 116,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 116 | CPUTimer_clearOverflowFlag(CPUTIMER2_BASE);                            
; 118 | //                                                                     
; 119 | // Increment the counter                                               
; 120 | //                                                                     
;----------------------------------------------------------------------
        MOVL      ACC,XAR4              ; [CPU_ALU] |116| 
$C$DW$46	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$46, DW_AT_low_pc(0x00)
	.dwattr $C$DW$46, DW_AT_name("_CPUTimer_clearOverflowFlag")
	.dwattr $C$DW$46, DW_AT_TI_call

        LCR       #_CPUTimer_clearOverflowFlag ; [CPU_ALU] |116| 
        ; call occurs [#_CPUTimer_clearOverflowFlag] ; [] |116| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 121,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 121 | loopCount++;                                                           
;----------------------------------------------------------------------
        INC       *-SP[1]               ; [CPU_ALU] |121| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 123,column 12,is_stmt,isa 0
;----------------------------------------------------------------------
; 123 | }while(loopCount < 4U);                                                
;----------------------------------------------------------------------
        MOV       AL,*-SP[1]            ; [CPU_ALU] |123| 
        CMPB      AL,#4                 ; [CPU_ALU] |123| 
        B         $C$L7,LO              ; [CPU_ALU] |123| 
        ; branchcc occurs ; [] |123| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 124,column 1,is_stmt,isa 0
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$47	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$47, DW_AT_low_pc(0x00)
	.dwattr $C$DW$47, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$42, DW_AT_TI_end_file("C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c")
	.dwattr $C$DW$42, DW_AT_TI_end_line(0x7c)
	.dwattr $C$DW$42, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$42

	.sect	".text"
	.clink
	.global	_SysCtl_getClock

$C$DW$48	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$48, DW_AT_name("SysCtl_getClock")
	.dwattr $C$DW$48, DW_AT_low_pc(_SysCtl_getClock)
	.dwattr $C$DW$48, DW_AT_high_pc(0x00)
	.dwattr $C$DW$48, DW_AT_TI_symbol_name("_SysCtl_getClock")
	.dwattr $C$DW$48, DW_AT_external
	.dwattr $C$DW$48, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$48, DW_AT_TI_begin_file("C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c")
	.dwattr $C$DW$48, DW_AT_TI_begin_line(0x84)
	.dwattr $C$DW$48, DW_AT_TI_begin_column(0x01)
	.dwattr $C$DW$48, DW_AT_TI_max_frame_size(-10)
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 133,column 1,is_stmt,address _SysCtl_getClock,isa 0

	.dwfde $C$DW$CIE, _SysCtl_getClock
$C$DW$49	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$49, DW_AT_name("clockInHz")
	.dwattr $C$DW$49, DW_AT_TI_symbol_name("_clockInHz")
	.dwattr $C$DW$49, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$49, DW_AT_location[DW_OP_reg0]

;----------------------------------------------------------------------
; 132 | SysCtl_getClock(uint32_t clockInHz)                                    
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _SysCtl_getClock              FR SIZE:   8           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  8 Auto,  0 SOE     *
;***************************************************************

_SysCtl_getClock:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#8                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -10
$C$DW$50	.dwtag  DW_TAG_variable
	.dwattr $C$DW$50, DW_AT_name("clockInHz")
	.dwattr $C$DW$50, DW_AT_TI_symbol_name("_clockInHz")
	.dwattr $C$DW$50, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$50, DW_AT_location[DW_OP_breg20 -2]

$C$DW$51	.dwtag  DW_TAG_variable
	.dwattr $C$DW$51, DW_AT_name("temp")
	.dwattr $C$DW$51, DW_AT_TI_symbol_name("_temp")
	.dwattr $C$DW$51, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$51, DW_AT_location[DW_OP_breg20 -4]

$C$DW$52	.dwtag  DW_TAG_variable
	.dwattr $C$DW$52, DW_AT_name("oscSource")
	.dwattr $C$DW$52, DW_AT_TI_symbol_name("_oscSource")
	.dwattr $C$DW$52, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$52, DW_AT_location[DW_OP_breg20 -6]

$C$DW$53	.dwtag  DW_TAG_variable
	.dwattr $C$DW$53, DW_AT_name("clockOut")
	.dwattr $C$DW$53, DW_AT_TI_symbol_name("_clockOut")
	.dwattr $C$DW$53, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$53, DW_AT_location[DW_OP_breg20 -8]

;----------------------------------------------------------------------
; 134 | uint32_t temp;                                                         
; 135 | uint32_t oscSource;                                                    
; 136 | uint32_t clockOut;                                                     
; 138 | //                                                                     
; 139 | // Don't proceed if an MCD failure is detected.                        
; 140 | //                                                                     
;----------------------------------------------------------------------
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |133| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 141,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 141 | if(SysCtl_isMCDClockFailureDetected())                                 
; 143 |     //                                                                 
; 144 |     // OSCCLKSRC2 failure detected. Returning the INTOSC1 rate. You nee
;     | d                                                                      
; 145 |     // to handle the MCD and clear the failure.                        
; 146 |     //                                                                 
;----------------------------------------------------------------------
$C$DW$54	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$54, DW_AT_low_pc(0x00)
	.dwattr $C$DW$54, DW_AT_name("_SysCtl_isMCDClockFailureDetected")
	.dwattr $C$DW$54, DW_AT_TI_call

        LCR       #_SysCtl_isMCDClockFailureDetected ; [CPU_ALU] |141| 
        ; call occurs [#_SysCtl_isMCDClockFailureDetected] ; [] |141| 
        CMPB      AL,#0                 ; [CPU_ALU] |141| 
        B         $C$L8,EQ              ; [CPU_ALU] |141| 
        ; branchcc occurs ; [] |141| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 147,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 147 | clockOut = SYSCTL_DEFAULT_OSC_FREQ;                                    
; 149 | else                                                                   
; 151 | //                                                                     
; 152 | // If one of the internal oscillators is being used, start from the    
; 153 | // known default frequency.  Otherwise, use clockInHz parameter.       
; 154 | //                                                                     
;----------------------------------------------------------------------
        MOV       AL,#38528             ; [CPU_ALU] |147| 
        MOV       AH,#152               ; [CPU_ALU] |147| 
        MOVL      *-SP[8],ACC           ; [CPU_ALU] |147| 
        B         $C$L13,UNC            ; [CPU_ALU] 
        ; branch occurs ; [] 
$C$L8:    
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 155,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 155 | oscSource = HWREG(CLKCFG_BASE + SYSCTL_O_CLKSRCCTL1) &                 
; 156 |             (uint32_t)SYSCTL_CLKSRCCTL1_OSCCLKSRCSEL_M;                
;----------------------------------------------------------------------
        MOVL      XAR4,#381448          ; [CPU_ARAU] |155| 
        MOVL      ACC,*+XAR4[0]         ; [CPU_ALU] |155| 
        MOVB      AH,#0                 ; [CPU_ALU] |155| 
        ANDB      AL,#0x03              ; [CPU_ALU] |155| 
        MOVL      *-SP[6],ACC           ; [CPU_ALU] |155| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 158,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 158 | if((oscSource == ((uint32_t)SYSCTL_OSCSRC_OSC2 >> SYSCTL_OSCSRC_S)) || 
; 159 |    (oscSource == ((uint32_t)SYSCTL_OSCSRC_OSC1 >> SYSCTL_OSCSRC_S)))   
;----------------------------------------------------------------------
        MOVL      ACC,*-SP[6]           ; [CPU_ALU] |158| 
        B         $C$L9,EQ              ; [CPU_ALU] |158| 
        ; branchcc occurs ; [] |158| 
        MOVB      ACC,#2                ; [CPU_ALU] |158| 
        CMPL      ACC,*-SP[6]           ; [CPU_ALU] |158| 
        B         $C$L10,NEQ            ; [CPU_ALU] |158| 
        ; branchcc occurs ; [] |158| 
$C$L9:    
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 161,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 161 | clockOut = SYSCTL_DEFAULT_OSC_FREQ;                                    
; 163 | else                                                                   
;----------------------------------------------------------------------
        MOV       AL,#38528             ; [CPU_ALU] |161| 
        MOV       AH,#152               ; [CPU_ALU] |161| 
        MOVL      *-SP[8],ACC           ; [CPU_ALU] |161| 
        B         $C$L11,UNC            ; [CPU_ALU] 
        ; branch occurs ; [] 
$C$L10:    
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 165,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 165 | clockOut = clockInHz;                                                  
; 168 | //                                                                     
; 169 | // If the PLL is enabled calculate its effect on the clock             
; 170 | //                                                                     
;----------------------------------------------------------------------
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |165| 
        MOVL      *-SP[8],ACC           ; [CPU_ALU] |165| 
$C$L11:    
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 171,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 171 | if((HWREG(CLKCFG_BASE + SYSCTL_O_SYSPLLCTL1) &                         
; 172 |     (SYSCTL_SYSPLLCTL1_PLLEN | SYSCTL_SYSPLLCTL1_PLLCLKEN)) == 3U)     
; 174 |     //                                                                 
; 175 |     // Calculate portion from fractional multiplier                    
; 176 |     //                                                                 
;----------------------------------------------------------------------
        MOVL      XAR4,#381454          ; [CPU_ARAU] |171| 
        MOVB      XAR6,#3               ; [CPU_ALU] |171| 
        MOVL      ACC,*+XAR4[0]         ; [CPU_ALU] |171| 
        MOVB      AH,#0                 ; [CPU_ALU] |171| 
        ANDB      AL,#0x03              ; [CPU_ALU] |171| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |171| 
        B         $C$L12,NEQ            ; [CPU_ALU] |171| 
        ; branchcc occurs ; [] |171| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 177,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 177 | temp = (clockInHz * ((HWREG(CLKCFG_BASE + SYSCTL_O_SYSPLLMULT) &       
; 178 |                       SYSCTL_SYSPLLMULT_FMULT_M) >>                    
; 179 |                      SYSCTL_SYSPLLMULT_FMULT_S)) / 4U;                 
; 181 | //                                                                     
; 182 | // Calculate integer multiplier and fixed divide by 2                  
; 183 | //                                                                     
;----------------------------------------------------------------------
        MOVL      XAR4,#381460          ; [CPU_ARAU] |177| 
        CLRC      SXM                   ; [CPU_ALU] 
        MOVL      ACC,*+XAR4[0]         ; [CPU_ALU] |177| 
        AND       AL,#768               ; [CPU_ALU] |177| 
        ANDB      AH,#0                 ; [CPU_ALU] |177| 
        SFR       ACC,8                 ; [CPU_ALU] |177| 
        MOVL      XT,ACC                ; [CPU_ALU] |177| 
        IMPYL     ACC,XT,*-SP[2]        ; [CPU_ALU] |177| 
        SFR       ACC,2                 ; [CPU_ALU] |177| 
        MOVL      *-SP[4],ACC           ; [CPU_ALU] |177| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 184,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 184 | clockOut = clockOut * ((HWREG(CLKCFG_BASE + SYSCTL_O_SYSPLLMULT) &     
; 185 |                         SYSCTL_SYSPLLMULT_IMULT_M) >>                  
; 186 |                        SYSCTL_SYSPLLMULT_IMULT_S);                     
; 188 | //                                                                     
; 189 | // Add in fractional portion                                           
; 190 | //                                                                     
;----------------------------------------------------------------------
        MOVL      ACC,*+XAR4[0]         ; [CPU_ALU] |184| 
        MOVB      AH,#0                 ; [CPU_ALU] |184| 
        ANDB      AL,#0x7f              ; [CPU_ALU] |184| 
        MOVL      XT,ACC                ; [CPU_ALU] |184| 
        IMPYXUL   P,XT,*-SP[8]          ; [CPU_ALU] |184| 
        MOVL      *-SP[8],P             ; [CPU_ALU] |184| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 191,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 191 | clockOut += temp;                                                      
;----------------------------------------------------------------------
        MOVL      ACC,*-SP[4]           ; [CPU_ALU] |191| 
        ADDL      ACC,*-SP[8]           ; [CPU_ALU] |191| 
        MOVL      *-SP[8],ACC           ; [CPU_ALU] |191| 
$C$L12:    
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 194,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 194 | if((HWREG(CLKCFG_BASE + SYSCTL_O_SYSCLKDIVSEL) &                       
; 195 |     SYSCTL_SYSCLKDIVSEL_PLLSYSCLKDIV_M) != 0U)                         
;----------------------------------------------------------------------
        MOVL      XAR4,#381474          ; [CPU_ARAU] |194| 
        MOVL      ACC,*+XAR4[0]         ; [CPU_ALU] |194| 
        MOVB      AH,#0                 ; [CPU_ALU] |194| 
        ANDB      AL,#0x3f              ; [CPU_ALU] |194| 
        TEST      ACC                   ; [CPU_ALU] |194| 
        B         $C$L13,EQ             ; [CPU_ALU] |194| 
        ; branchcc occurs ; [] |194| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 197,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 197 | clockOut /= (2U * (HWREG(CLKCFG_BASE + SYSCTL_O_SYSCLKDIVSEL) &        
; 198 |                    SYSCTL_SYSCLKDIVSEL_PLLSYSCLKDIV_M));               
;----------------------------------------------------------------------
        MOVL      ACC,*+XAR4[0]         ; [CPU_ALU] |197| 
        MOVB      AH,#0                 ; [CPU_ALU] |197| 
        ANDB      AL,#0x3f              ; [CPU_ALU] |197| 
        LSL       ACC,1                 ; [CPU_ALU] |197| 
        MOVL      XAR6,ACC              ; [CPU_ALU] |197| 
        MOVL      P,*-SP[8]             ; [CPU_ALU] |197| 
        MOVB      ACC,#0                ; [CPU_ALU] |197| 
        RPT       #31
||     SUBCUL    ACC,XAR6              ; [CPU_ALU] |197| 
        MOVL      *-SP[8],P             ; [CPU_ALU] |197| 
$C$L13:    
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 202,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 202 | return(clockOut);                                                      
;----------------------------------------------------------------------
        MOVL      ACC,*-SP[8]           ; [CPU_ALU] |202| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 203,column 1,is_stmt,isa 0
        SUBB      SP,#8                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$55	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$55, DW_AT_low_pc(0x00)
	.dwattr $C$DW$55, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$48, DW_AT_TI_end_file("C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c")
	.dwattr $C$DW$48, DW_AT_TI_end_line(0xcb)
	.dwattr $C$DW$48, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$48

	.sect	".text"
	.clink
	.global	_SysCtl_getAuxClock

$C$DW$56	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$56, DW_AT_name("SysCtl_getAuxClock")
	.dwattr $C$DW$56, DW_AT_low_pc(_SysCtl_getAuxClock)
	.dwattr $C$DW$56, DW_AT_high_pc(0x00)
	.dwattr $C$DW$56, DW_AT_TI_symbol_name("_SysCtl_getAuxClock")
	.dwattr $C$DW$56, DW_AT_external
	.dwattr $C$DW$56, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$56, DW_AT_TI_begin_file("C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c")
	.dwattr $C$DW$56, DW_AT_TI_begin_line(0xd2)
	.dwattr $C$DW$56, DW_AT_TI_begin_column(0x0a)
	.dwattr $C$DW$56, DW_AT_TI_max_frame_size(-10)
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 211,column 1,is_stmt,address _SysCtl_getAuxClock,isa 0

	.dwfde $C$DW$CIE, _SysCtl_getAuxClock
$C$DW$57	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$57, DW_AT_name("clockInHz")
	.dwattr $C$DW$57, DW_AT_TI_symbol_name("_clockInHz")
	.dwattr $C$DW$57, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$57, DW_AT_location[DW_OP_reg0]

;----------------------------------------------------------------------
; 210 | uint32_t SysCtl_getAuxClock(uint32_t clockInHz)                        
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _SysCtl_getAuxClock           FR SIZE:   8           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  8 Auto,  0 SOE     *
;***************************************************************

_SysCtl_getAuxClock:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#8                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -10
$C$DW$58	.dwtag  DW_TAG_variable
	.dwattr $C$DW$58, DW_AT_name("clockInHz")
	.dwattr $C$DW$58, DW_AT_TI_symbol_name("_clockInHz")
	.dwattr $C$DW$58, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$58, DW_AT_location[DW_OP_breg20 -2]

$C$DW$59	.dwtag  DW_TAG_variable
	.dwattr $C$DW$59, DW_AT_name("temp")
	.dwattr $C$DW$59, DW_AT_TI_symbol_name("_temp")
	.dwattr $C$DW$59, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$59, DW_AT_location[DW_OP_breg20 -4]

$C$DW$60	.dwtag  DW_TAG_variable
	.dwattr $C$DW$60, DW_AT_name("oscSource")
	.dwattr $C$DW$60, DW_AT_TI_symbol_name("_oscSource")
	.dwattr $C$DW$60, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$60, DW_AT_location[DW_OP_breg20 -6]

$C$DW$61	.dwtag  DW_TAG_variable
	.dwattr $C$DW$61, DW_AT_name("clockOut")
	.dwattr $C$DW$61, DW_AT_TI_symbol_name("_clockOut")
	.dwattr $C$DW$61, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$61, DW_AT_location[DW_OP_breg20 -8]

;----------------------------------------------------------------------
; 212 | uint32_t temp;                                                         
; 213 | uint32_t oscSource;                                                    
; 214 | uint32_t clockOut;                                                     
;----------------------------------------------------------------------
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |211| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 216,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 216 | oscSource = HWREG(CLKCFG_BASE + SYSCTL_O_CLKSRCCTL2) &                 
; 217 |             (uint32_t)SYSCTL_CLKSRCCTL2_AUXOSCCLKSRCSEL_M;             
; 219 | //                                                                     
; 220 | // If one of the internal oscillators is being used, start from the    
; 221 | // known default frequency.  Otherwise, use clockInHz parameter.       
; 222 | //                                                                     
;----------------------------------------------------------------------
        MOVL      XAR4,#381450          ; [CPU_ARAU] |216| 
        MOVL      ACC,*+XAR4[0]         ; [CPU_ALU] |216| 
        MOVB      AH,#0                 ; [CPU_ALU] |216| 
        ANDB      AL,#0x03              ; [CPU_ALU] |216| 
        MOVL      *-SP[6],ACC           ; [CPU_ALU] |216| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 223,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 223 | if(oscSource == ((uint32_t)SYSCTL_AUXPLL_OSCSRC_OSC2 >> SYSCTL_OSCSRC_S
;     | ))                                                                     
; 225 |     //                                                                 
; 226 |     // 10MHz Internal Clock                                            
; 227 |     //                                                                 
;----------------------------------------------------------------------
        MOVL      ACC,*-SP[6]           ; [CPU_ALU] |223| 
        B         $C$L14,NEQ            ; [CPU_ALU] |223| 
        ; branchcc occurs ; [] |223| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 228,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 228 | clockOut = SYSCTL_DEFAULT_OSC_FREQ;                                    
; 230 | else                                                                   
;----------------------------------------------------------------------
        MOV       AL,#38528             ; [CPU_ALU] |228| 
        MOV       AH,#152               ; [CPU_ALU] |228| 
        MOVL      *-SP[8],ACC           ; [CPU_ALU] |228| 
        B         $C$L15,UNC            ; [CPU_ALU] 
        ; branch occurs ; [] 
$C$L14:    
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 232,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 232 | clockOut = clockInHz;                                                  
; 235 | //                                                                     
; 236 | // If the PLL is enabled calculate its effect on the clock             
; 237 | //                                                                     
;----------------------------------------------------------------------
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |232| 
        MOVL      *-SP[8],ACC           ; [CPU_ALU] |232| 
$C$L15:    
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 238,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 238 | if((HWREG(CLKCFG_BASE + SYSCTL_O_AUXPLLCTL1) &                         
; 239 |     (SYSCTL_AUXPLLCTL1_PLLEN | SYSCTL_AUXPLLCTL1_PLLCLKEN)) == 3U)     
; 241 |     //                                                                 
; 242 |     // Calculate portion from fractional multiplier                    
; 243 |     //                                                                 
;----------------------------------------------------------------------
        MOVL      XAR4,#381464          ; [CPU_ARAU] |238| 
        MOVB      XAR6,#3               ; [CPU_ALU] |238| 
        MOVL      ACC,*+XAR4[0]         ; [CPU_ALU] |238| 
        MOVB      AH,#0                 ; [CPU_ALU] |238| 
        ANDB      AL,#0x03              ; [CPU_ALU] |238| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |238| 
        B         $C$L16,NEQ            ; [CPU_ALU] |238| 
        ; branchcc occurs ; [] |238| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 244,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 244 | temp = (clockInHz * ((HWREG(CLKCFG_BASE + SYSCTL_O_AUXPLLMULT) &       
; 245 |                       SYSCTL_AUXPLLMULT_FMULT_M) >>                    
; 246 |                      SYSCTL_AUXPLLMULT_FMULT_S)) / 4U;                 
; 248 | //                                                                     
; 249 | // Calculate integer multiplier                                        
; 250 | //                                                                     
;----------------------------------------------------------------------
        MOVL      XAR4,#381470          ; [CPU_ARAU] |244| 
        CLRC      SXM                   ; [CPU_ALU] 
        MOVL      ACC,*+XAR4[0]         ; [CPU_ALU] |244| 
        AND       AL,#768               ; [CPU_ALU] |244| 
        ANDB      AH,#0                 ; [CPU_ALU] |244| 
        SFR       ACC,8                 ; [CPU_ALU] |244| 
        MOVL      XT,ACC                ; [CPU_ALU] |244| 
        IMPYL     ACC,XT,*-SP[2]        ; [CPU_ALU] |244| 
        SFR       ACC,2                 ; [CPU_ALU] |244| 
        MOVL      *-SP[4],ACC           ; [CPU_ALU] |244| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 251,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 251 | clockOut = clockOut * ((HWREG(CLKCFG_BASE + SYSCTL_O_AUXPLLMULT) &     
; 252 |                         SYSCTL_AUXPLLMULT_IMULT_M) >>                  
; 253 |                        SYSCTL_AUXPLLMULT_IMULT_S);                     
; 255 | //                                                                     
; 256 | // Add in fractional portion                                           
; 257 | //                                                                     
;----------------------------------------------------------------------
        MOVL      ACC,*+XAR4[0]         ; [CPU_ALU] |251| 
        MOVB      AH,#0                 ; [CPU_ALU] |251| 
        ANDB      AL,#0x7f              ; [CPU_ALU] |251| 
        MOVL      XT,ACC                ; [CPU_ALU] |251| 
        IMPYXUL   P,XT,*-SP[8]          ; [CPU_ALU] |251| 
        MOVL      *-SP[8],P             ; [CPU_ALU] |251| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 258,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 258 | clockOut += temp;                                                      
;----------------------------------------------------------------------
        MOVL      ACC,*-SP[4]           ; [CPU_ALU] |258| 
        ADDL      ACC,*-SP[8]           ; [CPU_ALU] |258| 
        MOVL      *-SP[8],ACC           ; [CPU_ALU] |258| 
$C$L16:    
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 261,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 261 | clockOut /= (1U << (HWREG(CLKCFG_BASE + SYSCTL_O_AUXCLKDIVSEL) &       
; 262 |                     SYSCTL_AUXCLKDIVSEL_AUXPLLDIV_M));                 
;----------------------------------------------------------------------
        MOVL      XAR4,#381476          ; [CPU_ARAU] |261| 
        MOVL      ACC,*+XAR4[0]         ; [CPU_ALU] |261| 
        ANDB      AL,#0x03              ; [CPU_ALU] |261| 
        MOV       T,AL                  ; [CPU_ALU] |261| 
        MOVB      AL,#1                 ; [CPU_ALU] |261| 
        LSL       AL,T                  ; [CPU_ALU] |261| 
        MOVZ      AR6,AL                ; [CPU_ALU] |261| 
        MOVL      P,*-SP[8]             ; [CPU_ALU] |261| 
        MOVB      ACC,#0                ; [CPU_ALU] |261| 
        RPT       #31
||     SUBCUL    ACC,XAR6              ; [CPU_ALU] |261| 
        MOVL      *-SP[8],P             ; [CPU_ALU] |261| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 264,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 264 | return(clockOut);                                                      
;----------------------------------------------------------------------
        MOVL      ACC,*-SP[8]           ; [CPU_ALU] |264| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 265,column 1,is_stmt,isa 0
        SUBB      SP,#8                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$62	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$62, DW_AT_low_pc(0x00)
	.dwattr $C$DW$62, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$56, DW_AT_TI_end_file("C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c")
	.dwattr $C$DW$56, DW_AT_TI_end_line(0x109)
	.dwattr $C$DW$56, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$56

	.sect	".text"
	.clink
	.global	_SysCtl_setClock

$C$DW$63	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$63, DW_AT_name("SysCtl_setClock")
	.dwattr $C$DW$63, DW_AT_low_pc(_SysCtl_setClock)
	.dwattr $C$DW$63, DW_AT_high_pc(0x00)
	.dwattr $C$DW$63, DW_AT_TI_symbol_name("_SysCtl_setClock")
	.dwattr $C$DW$63, DW_AT_external
	.dwattr $C$DW$63, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$63, DW_AT_TI_begin_file("C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c")
	.dwattr $C$DW$63, DW_AT_TI_begin_line(0x111)
	.dwattr $C$DW$63, DW_AT_TI_begin_column(0x01)
	.dwattr $C$DW$63, DW_AT_TI_max_frame_size(-36)
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 274,column 1,is_stmt,address _SysCtl_setClock,isa 0

	.dwfde $C$DW$CIE, _SysCtl_setClock
$C$DW$64	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$64, DW_AT_name("config")
	.dwattr $C$DW$64, DW_AT_TI_symbol_name("_config")
	.dwattr $C$DW$64, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$64, DW_AT_location[DW_OP_reg0]

;----------------------------------------------------------------------
; 273 | SysCtl_setClock(uint32_t config)                                       
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _SysCtl_setClock              FR SIZE:  34           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter, 31 Auto,  0 SOE     *
;***************************************************************

_SysCtl_setClock:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#34                ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -36
$C$DW$65	.dwtag  DW_TAG_variable
	.dwattr $C$DW$65, DW_AT_name("config")
	.dwattr $C$DW$65, DW_AT_TI_symbol_name("_config")
	.dwattr $C$DW$65, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$65, DW_AT_location[DW_OP_breg20 -4]

$C$DW$66	.dwtag  DW_TAG_variable
	.dwattr $C$DW$66, DW_AT_name("t1PRD")
	.dwattr $C$DW$66, DW_AT_TI_symbol_name("_t1PRD")
	.dwattr $C$DW$66, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$66, DW_AT_location[DW_OP_breg20 -6]

$C$DW$67	.dwtag  DW_TAG_variable
	.dwattr $C$DW$67, DW_AT_name("t2PRD")
	.dwattr $C$DW$67, DW_AT_TI_symbol_name("_t2PRD")
	.dwattr $C$DW$67, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$67, DW_AT_location[DW_OP_breg20 -8]

$C$DW$68	.dwtag  DW_TAG_variable
	.dwattr $C$DW$68, DW_AT_name("ctr1")
	.dwattr $C$DW$68, DW_AT_TI_symbol_name("_ctr1")
	.dwattr $C$DW$68, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$68, DW_AT_location[DW_OP_breg20 -10]

$C$DW$69	.dwtag  DW_TAG_variable
	.dwattr $C$DW$69, DW_AT_name("sysclkToInClkError")
	.dwattr $C$DW$69, DW_AT_TI_symbol_name("_sysclkToInClkError")
	.dwattr $C$DW$69, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$69, DW_AT_location[DW_OP_breg20 -12]

$C$DW$70	.dwtag  DW_TAG_variable
	.dwattr $C$DW$70, DW_AT_name("mult")
	.dwattr $C$DW$70, DW_AT_TI_symbol_name("_mult")
	.dwattr $C$DW$70, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$70, DW_AT_location[DW_OP_breg20 -14]

$C$DW$71	.dwtag  DW_TAG_variable
	.dwattr $C$DW$71, DW_AT_name("divSel")
	.dwattr $C$DW$71, DW_AT_TI_symbol_name("_divSel")
	.dwattr $C$DW$71, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$71, DW_AT_location[DW_OP_breg20 -15]

$C$DW$72	.dwtag  DW_TAG_variable
	.dwattr $C$DW$72, DW_AT_name("iMult")
	.dwattr $C$DW$72, DW_AT_TI_symbol_name("_iMult")
	.dwattr $C$DW$72, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$72, DW_AT_location[DW_OP_breg20 -16]

$C$DW$73	.dwtag  DW_TAG_variable
	.dwattr $C$DW$73, DW_AT_name("fMult")
	.dwattr $C$DW$73, DW_AT_TI_symbol_name("_fMult")
	.dwattr $C$DW$73, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$73, DW_AT_location[DW_OP_breg20 -17]

$C$DW$74	.dwtag  DW_TAG_variable
	.dwattr $C$DW$74, DW_AT_name("pllMult")
	.dwattr $C$DW$74, DW_AT_TI_symbol_name("_pllMult")
	.dwattr $C$DW$74, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$74, DW_AT_location[DW_OP_breg20 -18]

$C$DW$75	.dwtag  DW_TAG_variable
	.dwattr $C$DW$75, DW_AT_name("div")
	.dwattr $C$DW$75, DW_AT_TI_symbol_name("_div")
	.dwattr $C$DW$75, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$75, DW_AT_location[DW_OP_breg20 -19]

$C$DW$76	.dwtag  DW_TAG_variable
	.dwattr $C$DW$76, DW_AT_name("status")
	.dwattr $C$DW$76, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$76, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$76, DW_AT_location[DW_OP_breg20 -20]

$C$DW$77	.dwtag  DW_TAG_variable
	.dwattr $C$DW$77, DW_AT_name("sysclkInvalidFreq")
	.dwattr $C$DW$77, DW_AT_TI_symbol_name("_sysclkInvalidFreq")
	.dwattr $C$DW$77, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$77, DW_AT_location[DW_OP_breg20 -21]

$C$DW$78	.dwtag  DW_TAG_variable
	.dwattr $C$DW$78, DW_AT_name("i")
	.dwattr $C$DW$78, DW_AT_TI_symbol_name("_i")
	.dwattr $C$DW$78, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$78, DW_AT_location[DW_OP_breg20 -22]

$C$DW$79	.dwtag  DW_TAG_variable
	.dwattr $C$DW$79, DW_AT_name("tempSCSR")
	.dwattr $C$DW$79, DW_AT_TI_symbol_name("_tempSCSR")
	.dwattr $C$DW$79, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$79, DW_AT_location[DW_OP_breg20 -23]

$C$DW$80	.dwtag  DW_TAG_variable
	.dwattr $C$DW$80, DW_AT_name("tempWDCR")
	.dwattr $C$DW$80, DW_AT_TI_symbol_name("_tempWDCR")
	.dwattr $C$DW$80, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$80, DW_AT_location[DW_OP_breg20 -24]

$C$DW$81	.dwtag  DW_TAG_variable
	.dwattr $C$DW$81, DW_AT_name("tempWDWCR")
	.dwattr $C$DW$81, DW_AT_TI_symbol_name("_tempWDWCR")
	.dwattr $C$DW$81, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$81, DW_AT_location[DW_OP_breg20 -25]

$C$DW$82	.dwtag  DW_TAG_variable
	.dwattr $C$DW$82, DW_AT_name("intStatus")
	.dwattr $C$DW$82, DW_AT_TI_symbol_name("_intStatus")
	.dwattr $C$DW$82, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$82, DW_AT_location[DW_OP_breg20 -26]

$C$DW$83	.dwtag  DW_TAG_variable
	.dwattr $C$DW$83, DW_AT_name("t1TCR")
	.dwattr $C$DW$83, DW_AT_TI_symbol_name("_t1TCR")
	.dwattr $C$DW$83, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$83, DW_AT_location[DW_OP_breg20 -27]

$C$DW$84	.dwtag  DW_TAG_variable
	.dwattr $C$DW$84, DW_AT_name("t1TPR")
	.dwattr $C$DW$84, DW_AT_TI_symbol_name("_t1TPR")
	.dwattr $C$DW$84, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$84, DW_AT_location[DW_OP_breg20 -28]

$C$DW$85	.dwtag  DW_TAG_variable
	.dwattr $C$DW$85, DW_AT_name("t1TPRH")
	.dwattr $C$DW$85, DW_AT_TI_symbol_name("_t1TPRH")
	.dwattr $C$DW$85, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$85, DW_AT_location[DW_OP_breg20 -29]

$C$DW$86	.dwtag  DW_TAG_variable
	.dwattr $C$DW$86, DW_AT_name("t2TCR")
	.dwattr $C$DW$86, DW_AT_TI_symbol_name("_t2TCR")
	.dwattr $C$DW$86, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$86, DW_AT_location[DW_OP_breg20 -30]

$C$DW$87	.dwtag  DW_TAG_variable
	.dwattr $C$DW$87, DW_AT_name("t2TPR")
	.dwattr $C$DW$87, DW_AT_TI_symbol_name("_t2TPR")
	.dwattr $C$DW$87, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$87, DW_AT_location[DW_OP_breg20 -31]

$C$DW$88	.dwtag  DW_TAG_variable
	.dwattr $C$DW$88, DW_AT_name("t2TPRH")
	.dwattr $C$DW$88, DW_AT_TI_symbol_name("_t2TPRH")
	.dwattr $C$DW$88, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$88, DW_AT_location[DW_OP_breg20 -32]

$C$DW$89	.dwtag  DW_TAG_variable
	.dwattr $C$DW$89, DW_AT_name("t2CLKCTL")
	.dwattr $C$DW$89, DW_AT_TI_symbol_name("_t2CLKCTL")
	.dwattr $C$DW$89, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$89, DW_AT_location[DW_OP_breg20 -33]

;----------------------------------------------------------------------
; 275 | uint16_t divSel;                                                       
;----------------------------------------------------------------------
        MOVL      *-SP[4],ACC           ; [CPU_ALU] |274| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 276,column 20,is_stmt,isa 0
;----------------------------------------------------------------------
; 276 | uint16_t iMult = 0U, fMult = 0U, pllMult = 0U, div;                    
;----------------------------------------------------------------------
        MOV       *-SP[16],#0           ; [CPU_ALU] |276| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 276,column 32,is_stmt,isa 0
        MOV       *-SP[17],#0           ; [CPU_ALU] |276| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 276,column 46,is_stmt,isa 0
        MOV       *-SP[18],#0           ; [CPU_ALU] |276| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 277,column 36,is_stmt,isa 0
;----------------------------------------------------------------------
; 277 | bool status, sysclkInvalidFreq = true;                                 
; 278 | uint16_t i, tempSCSR, tempWDCR, tempWDWCR, intStatus;                  
; 279 | uint16_t t1TCR, t1TPR, t1TPRH, t2TCR, t2TPR, t2TPRH, t2CLKCTL;         
; 280 | uint32_t t1PRD, t2PRD, ctr1;                                           
; 281 | float32_t sysclkToInClkError, mult;                                    
; 283 | //                                                                     
; 284 | // Check the arguments.                                                
; 285 | //                                                                     
; 286 | ASSERT((config & SYSCTL_OSCSRC_M) != SYSCTL_OSCSRC_M); // 3 is not vali
;     | d                                                                      
; 288 | //                                                                     
; 289 | // Don't proceed to the PLL initialization if an MCD failure is detecte
;     | d.                                                                     
; 290 | //                                                                     
;----------------------------------------------------------------------
        MOVB      *-SP[21],#1,UNC       ; [CPU_ALU] |277| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 291,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 291 | if(SysCtl_isMCDClockFailureDetected())                                 
; 293 |     //                                                                 
; 294 |     // OSCCLKSRC2 failure detected. Returning false. You'll need to cle
;     | ar                                                                     
; 295 |     // the MCD error.                                                  
; 296 |     //                                                                 
;----------------------------------------------------------------------
$C$DW$90	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$90, DW_AT_low_pc(0x00)
	.dwattr $C$DW$90, DW_AT_name("_SysCtl_isMCDClockFailureDetected")
	.dwattr $C$DW$90, DW_AT_TI_call

        LCR       #_SysCtl_isMCDClockFailureDetected ; [CPU_ALU] |291| 
        ; call occurs [#_SysCtl_isMCDClockFailureDetected] ; [] |291| 
        CMPB      AL,#0                 ; [CPU_ALU] |291| 
        B         $C$L17,EQ             ; [CPU_ALU] |291| 
        ; branchcc occurs ; [] |291| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 297,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 297 | status = false;                                                        
; 299 | else                                                                   
; 301 | //                                                                     
; 302 | // Configure oscillator source                                         
; 303 | //                                                                     
;----------------------------------------------------------------------
        MOV       *-SP[20],#0           ; [CPU_ALU] |297| 
        B         $C$L41,UNC            ; [CPU_ALU] 
        ; branch occurs ; [] 
$C$L17:    
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 304,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 304 | SysCtl_selectOscSource(config & SYSCTL_OSCSRC_M);                      
; 306 | //                                                                     
; 307 | // Bypass PLL                                                          
; 308 | //                                                                     
;----------------------------------------------------------------------
        MOVL      ACC,*-SP[4]           ; [CPU_ALU] |304| 
        ANDB      AL,#0                 ; [CPU_ALU] |304| 
        ANDB      AH,#3                 ; [CPU_ALU] |304| 
$C$DW$91	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$91, DW_AT_low_pc(0x00)
	.dwattr $C$DW$91, DW_AT_name("_SysCtl_selectOscSource")
	.dwattr $C$DW$91, DW_AT_TI_call

        LCR       #_SysCtl_selectOscSource ; [CPU_ALU] |304| 
        ; call occurs [#_SysCtl_selectOscSource] ; [] |304| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 309,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 309 | EALLOW;                                                                
;----------------------------------------------------------------------
        EALLOW    ; [CPU_ALU] |309| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 310,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 310 | HWREGH(CLKCFG_BASE + SYSCTL_O_SYSPLLCTL1) &=                           
; 311 |     ~SYSCTL_SYSPLLCTL1_PLLCLKEN;                                       
;----------------------------------------------------------------------
        MOVL      XAR4,#381454          ; [CPU_ARAU] |310| 
        AND       *+XAR4[0],#0xfffd     ; [CPU_ALU] |310| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 312,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 312 | EDIS;                                                                  
; 314 | //                                                                     
; 315 | // Delay of at least 120 OSCCLK cycles required post PLL bypass        
; 316 | //                                                                     
;----------------------------------------------------------------------
        EDIS      ; [CPU_ALU] |312| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 317,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 317 | SysCtl_delay(23U);                                                     
; 319 | //                                                                     
; 320 | // Configure PLL if enabled                                            
; 321 | //                                                                     
;----------------------------------------------------------------------
        MOVB      ACC,#23               ; [CPU_ALU] |317| 
$C$DW$92	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$92, DW_AT_low_pc(0x00)
	.dwattr $C$DW$92, DW_AT_name("_SysCtl_delay")
	.dwattr $C$DW$92, DW_AT_TI_call

        LCR       #_SysCtl_delay        ; [CPU_ALU] |317| 
        ; call occurs [#_SysCtl_delay] ; [] |317| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 322,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 322 | EALLOW;                                                                
;----------------------------------------------------------------------
        EALLOW    ; [CPU_ALU] |322| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 323,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 323 | if((config & SYSCTL_PLL_ENABLE) == SYSCTL_PLL_ENABLE)                  
;----------------------------------------------------------------------
        MOV       PL,#0                 ; [CPU_ALU] |323| 
        MOV       PH,#32768             ; [CPU_ALU] |323| 
        MOVL      ACC,*-SP[4]           ; [CPU_ALU] |323| 
        ANDB      AL,#0                 ; [CPU_ALU] |323| 
        AND       AH,#32768             ; [CPU_ALU] |323| 
        CMPL      ACC,P                 ; [CPU_ALU] |323| 
        B         $C$L20,NEQ            ; [CPU_ALU] |323| 
        ; branchcc occurs ; [] |323| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 325,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 325 | if((HWREGH(DEVCFG_BASE + SYSCTL_O_SYSDBGCTL) &                         
; 326 |     SYSCTL_SYSDBGCTL_BIT_0) != 0U)                                     
; 328 |     //                                                                 
; 329 |     // The user can optionally insert handler code here. This will     
; 330 |     // only be executed if a watchdog reset occurred after a failed    
; 331 |     // system PLL initialization. See your device user's guide for     
; 332 |     // more information.                                               
; 333 |     //                                                                 
; 334 |     // If the application has a watchdog reset handler, this bit       
; 335 |     // should be checked to determine if the watchdog reset            
; 336 |     // occurred because of the PLL.                                    
; 337 |     //                                                                 
; 338 |     // No action here will continue with retrying the PLL as           
; 339 |     // normal.                                                         
; 340 |     //                                                                 
; 343 | //                                                                     
; 344 | // Set dividers to /1                                                  
; 345 | //                                                                     
;----------------------------------------------------------------------
        MOVL      XAR4,#381228          ; [CPU_ARAU] |325| 
        TBIT      *+XAR4[0],#0          ; [CPU_ALU] |325| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 346,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 346 | HWREGH(CLKCFG_BASE + SYSCTL_O_SYSCLKDIVSEL) = 0U;                      
; 348 | //                                                                     
; 349 | // Get the PLL multiplier settings from config                         
; 350 | //                                                                     
;----------------------------------------------------------------------
        MOVL      XAR4,#381474          ; [CPU_ARAU] |346| 
        MOV       *+XAR4[0],#0          ; [CPU_ALU] |346| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 351,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 351 | iMult |= (uint16_t)(config & SYSCTL_IMULT_M);                          
;----------------------------------------------------------------------
        MOV       AL,*-SP[4]            ; [CPU_ALU] |351| 
        ANDB      AL,#0x7f              ; [CPU_ALU] |351| 
        OR        *-SP[16],AL           ; [CPU_ALU] |351| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 352,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 352 | fMult |= (uint16_t)((config & SYSCTL_FMULT_M) >> SYSCTL_FMULT_S);      
;----------------------------------------------------------------------
        CLRC      SXM                   ; [CPU_ALU] 
        MOVL      ACC,*-SP[4]           ; [CPU_ALU] |352| 
        AND       AL,#24576             ; [CPU_ALU] |352| 
        ANDB      AH,#0                 ; [CPU_ALU] |352| 
        SFR       ACC,13                ; [CPU_ALU] |352| 
        OR        *-SP[17],AL           ; [CPU_ALU] |352| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 353,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 353 | pllMult |= (iMult << SYSCTL_SYSPLLMULT_IMULT_S) |                      
; 354 |            (fMult << SYSCTL_SYSPLLMULT_FMULT_S);                       
; 356 | //                                                                     
; 357 | // Lock the PLL five times. This helps ensure a successful start.      
; 358 | // Five is the minimum recommended number. The user can increase       
; 359 | // this number according to allotted system initialization time.       
; 360 | //                                                                     
;----------------------------------------------------------------------
        MOV       AL,*-SP[16]           ; [CPU_ALU] |353| 
        OR        AL,*-SP[18]           ; [CPU_ALU] |353| 
        MOVZ      AR6,AL                ; [CPU_ALU] |353| 
        MOV       ACC,*-SP[17] << #8    ; [CPU_ALU] |353| 
        OR        AL,AR6                ; [CPU_ALU] |353| 
        MOV       *-SP[18],AL           ; [CPU_ALU] |353| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 361,column 17,is_stmt,isa 0
;----------------------------------------------------------------------
; 361 | for(i = 0U; i < 5U; i++)                                               
;----------------------------------------------------------------------
        MOV       *-SP[22],#0           ; [CPU_ALU] |361| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 361,column 25,is_stmt,isa 0
;----------------------------------------------------------------------
; 363 | //                                                                     
; 364 | // Turn off PLL                                                        
; 365 | //                                                                     
;----------------------------------------------------------------------
        MOV       AL,*-SP[22]           ; [CPU_ALU] |361| 
        CMPB      AL,#5                 ; [CPU_ALU] |361| 
        B         $C$L20,HIS            ; [CPU_ALU] |361| 
        ; branchcc occurs ; [] |361| 
$C$L18:    
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 366,column 17,is_stmt,isa 0
;----------------------------------------------------------------------
; 366 | HWREGH(CLKCFG_BASE + SYSCTL_O_SYSPLLCTL1) &=                           
; 367 |     ~SYSCTL_SYSPLLCTL1_PLLEN;                                          
;----------------------------------------------------------------------
        MOVL      XAR4,#381454          ; [CPU_ARAU] |366| 
        AND       *+XAR4[0],#0xfffe     ; [CPU_ALU] |366| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 369,column 17,is_stmt,isa 0
;----------------------------------------------------------------------
; 369 | asm(" RPT #60 || NOP");                                                
; 371 | //                                                                     
; 372 | // Write multiplier, which automatically turns on the PLL              
; 373 | //                                                                     
;----------------------------------------------------------------------
 RPT #60 || NOP
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 374,column 17,is_stmt,isa 0
;----------------------------------------------------------------------
; 374 | HWREGH(CLKCFG_BASE + SYSCTL_O_SYSPLLMULT) = pllMult;                   
; 376 | //                                                                     
; 377 | // Wait for the SYSPLL lock counter                                    
; 378 | //                                                                     
;----------------------------------------------------------------------
        MOV       AL,*-SP[18]           ; [CPU_ALU] |374| 
        MOVL      XAR4,#381460          ; [CPU_ARAU] |374| 
        MOV       *+XAR4[0],AL          ; [CPU_ALU] |374| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 379,column 17,is_stmt,isa 0
;----------------------------------------------------------------------
; 379 | while((HWREGH(CLKCFG_BASE + SYSCTL_O_SYSPLLSTS) &                      
;----------------------------------------------------------------------
        MOVL      XAR4,#381462          ; [CPU_ARAU] |379| 
$C$L19:    
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 379,column 23,is_stmt,isa 0
;----------------------------------------------------------------------
; 380 | SYSCTL_SYSPLLSTS_LOCKS) == 0U)                                         
; 382 | //                                                                     
; 383 | // Consider to servicing the watchdog using                            
; 384 | // SysCtl_serviceWatchdog()                                            
; 385 | //                                                                     
; 390 | //                                                                     
; 391 | // Configure Dividers. Set divider to produce slower output frequency  
; 392 | // to limit current increase.                                          
; 393 | //                                                                     
;----------------------------------------------------------------------
        TBIT      *+XAR4[0],#0          ; [CPU_ALU] |379| 
        B         $C$L19,NTC            ; [CPU_ALU] |379| 
        ; branchcc occurs ; [] |379| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 361,column 33,is_stmt,isa 0
        INC       *-SP[22]              ; [CPU_ALU] |361| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 361,column 25,is_stmt,isa 0
        MOV       AL,*-SP[22]           ; [CPU_ALU] |361| 
        CMPB      AL,#5                 ; [CPU_ALU] |361| 
        B         $C$L18,LO             ; [CPU_ALU] |361| 
        ; branchcc occurs ; [] |361| 
$C$L20:    
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 394,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 394 | divSel = (uint16_t)(config & SYSCTL_SYSDIV_M) >> SYSCTL_SYSDIV_S;      
;----------------------------------------------------------------------
        AND       AL,*-SP[4],#0x1f80    ; [CPU_ALU] |394| 
        LSR       AL,7                  ; [CPU_ALU] |394| 
        MOV       *-SP[15],AL           ; [CPU_ALU] |394| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 396,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 396 | if(divSel != (126U / 2U))                                              
;----------------------------------------------------------------------
        CMPB      AL,#63                ; [CPU_ALU] |396| 
        B         $C$L21,EQ             ; [CPU_ALU] |396| 
        ; branchcc occurs ; [] |396| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 398,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 398 | HWREGH(CLKCFG_BASE + SYSCTL_O_SYSCLKDIVSEL) =                          
; 399 |     (HWREGH(CLKCFG_BASE + SYSCTL_O_SYSCLKDIVSEL) &                     
; 400 |     ~(uint16_t)SYSCTL_SYSCLKDIVSEL_PLLSYSCLKDIV_M) | (divSel + 1U);    
; 402 | else                                                                   
;----------------------------------------------------------------------
        MOVL      XAR4,#381474          ; [CPU_ARAU] |398| 
        MOV       AH,*-SP[15]           ; [CPU_ALU] |398| 
        AND       AL,*+XAR4[0],#0xffc0  ; [CPU_ALU] |398| 
        ADDB      AH,#1                 ; [CPU_ALU] |398| 
        OR        AH,AL                 ; [CPU_ALU] |398| 
        MOV       *+XAR4[0],AH          ; [CPU_ALU] |398| 
        B         $C$L22,UNC            ; [CPU_ALU] 
        ; branch occurs ; [] 
$C$L21:    
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 404,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 404 | HWREGH(CLKCFG_BASE + SYSCTL_O_SYSCLKDIVSEL) =                          
; 405 |     (HWREGH(CLKCFG_BASE + SYSCTL_O_SYSCLKDIVSEL) &                     
; 406 |      ~(uint16_t)SYSCTL_SYSCLKDIVSEL_PLLSYSCLKDIV_M) | divSel;          
; 409 | //                                                                     
; 410 | //      *CAUTION*                                                      
; 411 | // It is recommended to use the following watchdog code to monitor the 
; 412 | // PLLstartup sequence. If your application has already cleared the    
; 413 | // watchdog SCRS[WDOVERRIDE] bit this cannot be done. It is recommended
; 414 | // not to clear this bit until after the PLL has been initiated.       
; 415 | //                                                                     
; 417 | //                                                                     
; 418 | // Backup User Watchdog                                                
; 419 | //                                                                     
;----------------------------------------------------------------------
        MOVL      XAR4,#381474          ; [CPU_ARAU] |404| 
        AND       AL,*+XAR4[0],#0xffc0  ; [CPU_ALU] |404| 
        OR        AL,*-SP[15]           ; [CPU_ALU] |404| 
        MOV       *+XAR4[0],AL          ; [CPU_ALU] |404| 
$C$L22:    
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 420,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 420 | tempSCSR = HWREGH(WD_BASE + SYSCTL_O_SCSR);                            
;----------------------------------------------------------------------
        MOV       *-SP[23],*(0:0x7022)  ; [CPU_ALU] |420| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 421,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 421 | tempWDCR = HWREGH(WD_BASE + SYSCTL_O_WDCR);                            
;----------------------------------------------------------------------
        MOV       *-SP[24],*(0:0x7029)  ; [CPU_ALU] |421| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 422,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 422 | tempWDWCR = HWREGH(WD_BASE + SYSCTL_O_WDWCR);                          
; 424 | //                                                                     
; 425 | // Disable windowed functionality, reset counter                       
; 426 | //                                                                     
;----------------------------------------------------------------------
        MOV       *-SP[25],*(0:0x702a)  ; [CPU_ALU] |422| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 427,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 427 | HWREGH(WD_BASE + SYSCTL_O_WDWCR) = 0x0U;                               
;----------------------------------------------------------------------
        MOVB      AL,#0                 ; [CPU_ALU] |427| 
        MOV       *(0:0x702a),AL        ; [CPU_ALU] |427| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 428,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 428 | SysCtl_serviceWatchdog();                                              
; 430 | //                                                                     
; 431 | // Disable global interrupts                                           
; 432 | //                                                                     
;----------------------------------------------------------------------
        SPM       #0                    ; [CPU_ALU] 
$C$DW$93	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$93, DW_AT_low_pc(0x00)
	.dwattr $C$DW$93, DW_AT_name("_SysCtl_serviceWatchdog")
	.dwattr $C$DW$93, DW_AT_TI_call

        LCR       #_SysCtl_serviceWatchdog ; [CPU_ALU] |428| 
        ; call occurs [#_SysCtl_serviceWatchdog] ; [] |428| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 433,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 433 | intStatus = __disable_interrupts();                                    
; 435 | //                                                                     
; 436 | // Configure for watchdog reset and to run at max frequency            
; 437 | //                                                                     
;----------------------------------------------------------------------
        PUSH      ST1                   ; [CPU_ALU] |433| 
        SETC      INTM, DBGM            ; [CPU_ALU] |433| 
        MOV       AL,*--SP              ; [CPU_ALU] |433| 
        MOV       *-SP[26],AL           ; [CPU_ALU] |433| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 438,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 438 | EALLOW;                                                                
;----------------------------------------------------------------------
        EALLOW    ; [CPU_ALU] |438| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 439,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 439 | HWREGH(WD_BASE + SYSCTL_O_SCSR) = 0x0U;                                
;----------------------------------------------------------------------
        MOVB      AL,#0                 ; [CPU_ALU] |439| 
        MOV       *(0:0x7022),AL        ; [CPU_ALU] |439| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 440,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 440 | HWREGH(WD_BASE + SYSCTL_O_WDCR) = SYSCTL_WD_CHKBITS;                   
; 442 | //                                                                     
; 443 | // This bit is reset only by power-on-reset (POR) and will not be      
; 444 | // cleared by a WD reset                                               
; 445 | //                                                                     
;----------------------------------------------------------------------
        MOVB      AL,#40                ; [CPU_ALU] |440| 
        MOV       *(0:0x7029),AL        ; [CPU_ALU] |440| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 446,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 446 | HWREGH(DEVCFG_BASE + SYSCTL_O_SYSDBGCTL) |= SYSCTL_SYSDBGCTL_BIT_0;    
; 448 | //                                                                     
; 449 | // Enable PLLSYSCLK is fed from system PLL clock                       
; 450 | //                                                                     
;----------------------------------------------------------------------
        MOVL      XAR4,#381228          ; [CPU_ARAU] |446| 
        OR        *+XAR4[0],#0x0001     ; [CPU_ALU] |446| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 451,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 451 | HWREGH(CLKCFG_BASE +                                                   
; 452 |        SYSCTL_O_SYSPLLCTL1) |= SYSCTL_SYSPLLCTL1_PLLCLKEN;             
;----------------------------------------------------------------------
        MOVL      XAR4,#381454          ; [CPU_ARAU] |451| 
        OR        *+XAR4[0],#0x0002     ; [CPU_ALU] |451| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 454,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 454 | EDIS;                                                                  
; 456 | //                                                                     
; 457 | // Delay to ensure system is clocking from PLL prior to clearing       
; 458 | // status bit                                                          
; 459 | //                                                                     
;----------------------------------------------------------------------
        EDIS      ; [CPU_ALU] |454| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 460,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 460 | SysCtl_delay(3U);                                                      
; 462 | //                                                                     
; 463 | // Slip Bit Monitor and SYSCLK Frequency Check using timers            
; 464 | // Re-lock routine for SLIP condition or if SYSCLK and CLKSRC timer    
; 465 | // counts are off by +/- 10%. At a minimum, SYSCLK check is performed. 
; 466 | // Re-lock attempt is carried out if SLIPS bit is set.                 
; 467 | // This while loop is monitored by watchdog.                           
; 468 | // In the event that the PLL does not successfully lock, the loop will 
; 469 | // be aborted by watchdog reset.                                       
; 470 | //                                                                     
;----------------------------------------------------------------------
        MOVB      ACC,#3                ; [CPU_ALU] |460| 
$C$DW$94	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$94, DW_AT_low_pc(0x00)
	.dwattr $C$DW$94, DW_AT_name("_SysCtl_delay")
	.dwattr $C$DW$94, DW_AT_TI_call

        LCR       #_SysCtl_delay        ; [CPU_ALU] |460| 
        ; call occurs [#_SysCtl_delay] ; [] |460| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 471,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 471 | while(((config & SYSCTL_PLL_ENABLE) == SYSCTL_PLL_ENABLE) &&           
; 472 |       (sysclkInvalidFreq == true))                                     
;----------------------------------------------------------------------
        B         $C$L37,UNC            ; [CPU_ALU] |471| 
        ; branch occurs ; [] |471| 
$C$L23:    
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 474,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 474 | EALLOW;                                                                
; 476 | //                                                                     
; 477 | // Perform PLL re-lock only if SLIPS bit is set, otherwise monitor     
; 478 | // SYSCLK frequency with timers                                        
; 479 | //                                                                     
;----------------------------------------------------------------------
        EALLOW    ; [CPU_ALU] |474| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 480,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 480 | if((HWREGH(CLKCFG_BASE + SYSCTL_O_SYSPLLSTS) &                         
; 481 |     SYSCTL_SYSPLLSTS_SLIPS) == 1U)                                     
; 483 |     //                                                                 
; 484 |     // Bypass PLL                                                      
; 485 |     //                                                                 
;----------------------------------------------------------------------
        MOVL      XAR4,#381462          ; [CPU_ARAU] |480| 
        MOV       AL,*+XAR4[0]          ; [CPU_ALU] |480| 
        ANDB      AL,#0x02              ; [CPU_ALU] |480| 
        CMPB      AL,#1                 ; [CPU_ALU] |480| 
        B         $C$L25,NEQ            ; [CPU_ALU] |480| 
        ; branchcc occurs ; [] |480| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 486,column 17,is_stmt,isa 0
;----------------------------------------------------------------------
; 486 | HWREGH(CLKCFG_BASE + SYSCTL_O_SYSPLLCTL1) &=                           
; 487 |     ~SYSCTL_SYSPLLCTL1_PLLCLKEN;                                       
; 489 | //                                                                     
; 490 | // Delay of at least 120 OSCCLK cycles required post PLL bypass        
; 491 | //                                                                     
;----------------------------------------------------------------------
        MOVL      XAR4,#381454          ; [CPU_ARAU] |486| 
        AND       *+XAR4[0],#0xfffd     ; [CPU_ALU] |486| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 492,column 17,is_stmt,isa 0
;----------------------------------------------------------------------
; 492 | SysCtl_delay(23U);                                                     
; 494 | //                                                                     
; 495 | // Turn off PLL                                                        
; 496 | //                                                                     
;----------------------------------------------------------------------
        MOVB      ACC,#23               ; [CPU_ALU] |492| 
$C$DW$95	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$95, DW_AT_low_pc(0x00)
	.dwattr $C$DW$95, DW_AT_name("_SysCtl_delay")
	.dwattr $C$DW$95, DW_AT_TI_call

        LCR       #_SysCtl_delay        ; [CPU_ALU] |492| 
        ; call occurs [#_SysCtl_delay] ; [] |492| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 497,column 17,is_stmt,isa 0
;----------------------------------------------------------------------
; 497 | HWREGH(CLKCFG_BASE + SYSCTL_O_SYSPLLCTL1) &=                           
; 498 |     ~SYSCTL_SYSPLLCTL1_PLLEN;                                          
;----------------------------------------------------------------------
        MOVL      XAR4,#381454          ; [CPU_ARAU] |497| 
        AND       *+XAR4[0],#0xfffe     ; [CPU_ALU] |497| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 500,column 17,is_stmt,isa 0
;----------------------------------------------------------------------
; 500 | SysCtl_delay(3U);                                                      
; 502 | //                                                                     
; 503 | // Write multiplier, which automatically turns on the PLL              
; 504 | //                                                                     
;----------------------------------------------------------------------
        MOVB      ACC,#3                ; [CPU_ALU] |500| 
$C$DW$96	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$96, DW_AT_low_pc(0x00)
	.dwattr $C$DW$96, DW_AT_name("_SysCtl_delay")
	.dwattr $C$DW$96, DW_AT_TI_call

        LCR       #_SysCtl_delay        ; [CPU_ALU] |500| 
        ; call occurs [#_SysCtl_delay] ; [] |500| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 505,column 17,is_stmt,isa 0
;----------------------------------------------------------------------
; 505 | HWREGH(CLKCFG_BASE + SYSCTL_O_SYSPLLMULT) |= pllMult;                  
; 507 | //                                                                     
; 508 | // Wait for the SYSPLL lock counter                                    
; 509 | //                                                                     
;----------------------------------------------------------------------
        MOV       AL,*-SP[18]           ; [CPU_ALU] |505| 
        MOVL      XAR4,#381460          ; [CPU_ARAU] |505| 
        OR        *+XAR4[0],AL          ; [CPU_ALU] |505| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 510,column 17,is_stmt,isa 0
;----------------------------------------------------------------------
; 510 | while((HWREGH(CLKCFG_BASE + SYSCTL_O_SYSPLLSTS) &                      
;----------------------------------------------------------------------
        MOVL      XAR4,#381462          ; [CPU_ARAU] |510| 
$C$L24:    
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 510,column 23,is_stmt,isa 0
;----------------------------------------------------------------------
; 511 | SYSCTL_SYSPLLSTS_LOCKS) == 0U)                                         
; 513 | ;                                                                      
; 516 | //                                                                     
; 517 | // Enable PLLSYSCLK is fed from system PLL clock                       
; 518 | //                                                                     
;----------------------------------------------------------------------
        TBIT      *+XAR4[0],#0          ; [CPU_ALU] |510| 
        B         $C$L24,NTC            ; [CPU_ALU] |510| 
        ; branchcc occurs ; [] |510| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 519,column 17,is_stmt,isa 0
;----------------------------------------------------------------------
; 519 | HWREGH(CLKCFG_BASE + SYSCTL_O_SYSPLLCTL1) |=                           
; 520 |     SYSCTL_SYSPLLCTL1_PLLCLKEN;                                        
; 522 | //                                                                     
; 523 | // Delay to ensure system is clocking from PLL prior to                
; 524 | // clearing status bit                                                 
; 525 | //                                                                     
;----------------------------------------------------------------------
        MOVL      XAR4,#381454          ; [CPU_ARAU] |519| 
        OR        *+XAR4[0],#0x0002     ; [CPU_ALU] |519| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 526,column 17,is_stmt,isa 0
;----------------------------------------------------------------------
; 526 | SysCtl_delay(3U);                                                      
; 529 | //                                                                     
; 530 | // Backup timer1 and timer2 settings                                   
; 531 | //                                                                     
;----------------------------------------------------------------------
        MOVB      ACC,#3                ; [CPU_ALU] |526| 
$C$DW$97	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$97, DW_AT_low_pc(0x00)
	.dwattr $C$DW$97, DW_AT_name("_SysCtl_delay")
	.dwattr $C$DW$97, DW_AT_TI_call

        LCR       #_SysCtl_delay        ; [CPU_ALU] |526| 
        ; call occurs [#_SysCtl_delay] ; [] |526| 
$C$L25:    
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 532,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 532 | t1TCR = HWREGH(CPUTIMER1_BASE + CPUTIMER_O_TCR);                       
;----------------------------------------------------------------------
        MOV       *-SP[27],*(0:0x0c0c)  ; [CPU_ALU] |532| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 533,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 533 | t1PRD = HWREG(CPUTIMER1_BASE + CPUTIMER_O_PRD);                        
;----------------------------------------------------------------------
        MOV32     *-SP[6],*(0:0x0c0a)   ; [CPU_FPU] |533| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 534,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 534 | t1TPR = HWREGH(CPUTIMER1_BASE + CPUTIMER_O_TPR);                       
;----------------------------------------------------------------------
        MOV       *-SP[28],*(0:0x0c0e)  ; [CPU_ALU] |534| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 535,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 535 | t1TPRH = HWREGH(CPUTIMER1_BASE + CPUTIMER_O_TPRH);                     
;----------------------------------------------------------------------
        MOV       *-SP[29],*(0:0x0c0f)  ; [CPU_ALU] |535| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 536,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 536 | t2CLKCTL = HWREGH(CPUSYS_BASE + SYSCTL_O_TMR2CLKCTL);                  
;----------------------------------------------------------------------
        MOVL      XAR4,#381820          ; [CPU_ARAU] |536| 
        MOV       AL,*+XAR4[0]          ; [CPU_ALU] |536| 
        MOV       *-SP[33],AL           ; [CPU_ALU] |536| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 537,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 537 | t2TCR = HWREGH(CPUTIMER2_BASE + CPUTIMER_O_TCR);                       
;----------------------------------------------------------------------
        MOV       *-SP[30],*(0:0x0c14)  ; [CPU_ALU] |537| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 538,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 538 | t2PRD = HWREG(CPUTIMER2_BASE + CPUTIMER_O_PRD);                        
;----------------------------------------------------------------------
        MOV32     *-SP[8],*(0:0x0c12)   ; [CPU_FPU] |538| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 539,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 539 | t2TPR = HWREGH(CPUTIMER2_BASE + CPUTIMER_O_TPR);                       
;----------------------------------------------------------------------
        MOV       *-SP[31],*(0:0x0c16)  ; [CPU_ALU] |539| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 540,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 540 | t2TPRH = HWREGH(CPUTIMER2_BASE + CPUTIMER_O_TPRH);                     
; 542 | //                                                                     
; 543 | // Set up timers 1 and 2                                               
; 544 | // Configure timer1 to count SYSCLK cycles                             
; 545 | //                                                                     
; 547 | //                                                                     
; 548 | // Stop timer 1                                                        
; 549 | // Seed timer1 counter                                                 
; 550 | // Set sysclock divider                                                
; 551 | // Reload timer with value in PRD                                      
; 552 | // Clear interrupt flag                                                
; 553 | // Enable interrupt                                                    
; 554 | //                                                                     
;----------------------------------------------------------------------
        MOV       *-SP[32],*(0:0x0c17)  ; [CPU_ALU] |540| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 555,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 555 | HWREGH(CPUTIMER1_BASE + CPUTIMER_O_TCR) |= CPUTIMER_TCR_TSS;           
;----------------------------------------------------------------------
        MOV       AL,*(0:0x0c0c)        ; [CPU_ALU] |555| 
        ORB       AL,#0x10              ; [CPU_ALU] |555| 
        MOV       *(0:0x0c0c),AL        ; [CPU_ALU] |555| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 556,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 556 | HWREG(CPUTIMER1_BASE + CPUTIMER_O_PRD) = (uint32_t)TMR1SYSCLKCTR;      
;----------------------------------------------------------------------
        SETC      SXM                   ; [CPU_ALU] 
        MOV       ACC,#-8192 << 15      ; [CPU_ALU] |556| 
        MOV32     *(0:0x0c0a),ACC       ; [CPU_FPU] |556| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 557,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 557 | HWREG(CPUTIMER1_BASE + CPUTIMER_O_TPR) = 0U;                           
;----------------------------------------------------------------------
        MOVB      ACC,#0                ; [CPU_ALU] |557| 
        MOV32     *(0:0x0c0e),ACC       ; [CPU_FPU] |557| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 558,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 558 | HWREGH(CPUTIMER1_BASE + CPUTIMER_O_TCR) |= CPUTIMER_TCR_TRB;           
;----------------------------------------------------------------------
        MOV       AL,*(0:0x0c0c)        ; [CPU_ALU] |558| 
        ORB       AL,#0x20              ; [CPU_ALU] |558| 
        MOV       *(0:0x0c0c),AL        ; [CPU_ALU] |558| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 559,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 559 | HWREGH(CPUTIMER1_BASE + CPUTIMER_O_TCR) |= CPUTIMER_TCR_TIF;           
;----------------------------------------------------------------------
        MOV       AL,*(0:0x0c0c)        ; [CPU_ALU] |559| 
        OR        AL,#0x8000            ; [CPU_ALU] |559| 
        MOV       *(0:0x0c0c),AL        ; [CPU_ALU] |559| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 560,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 560 | HWREGH(CPUTIMER1_BASE + CPUTIMER_O_TCR) |= CPUTIMER_TCR_TIE;           
; 562 | //                                                                     
; 563 | // Configure timer2 to count Input clock cycles                        
; 564 | //                                                                     
;----------------------------------------------------------------------
        MOV       AL,*(0:0x0c0c)        ; [CPU_ALU] |560| 
        OR        AL,#0x4000            ; [CPU_ALU] |560| 
        MOV       *(0:0x0c0c),AL        ; [CPU_ALU] |560| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 565,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 565 | switch (config & SYSCTL_OSCSRC_M)                                      
; 567 |     case SYSCTL_OSCSRC_OSC1:                                           
; 568 |         //                                                             
; 569 |         // Clk Src = INT_OSC1                                          
; 570 |         //                                                             
;----------------------------------------------------------------------
        B         $C$L29,UNC            ; [CPU_ALU] |565| 
        ; branch occurs ; [] |565| 
$C$L26:    
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 571,column 21,is_stmt,isa 0
;----------------------------------------------------------------------
; 571 | HWREGH(CPUSYS_BASE + SYSCTL_O_TMR2CLKCTL) &=                           
; 572 |     ~SYSCTL_TMR2CLKCTL_TMR2CLKSRCSEL_M;                                
;----------------------------------------------------------------------
        MOVL      XAR4,#381820          ; [CPU_ARAU] |571| 
        AND       *+XAR4[0],#0xfff8     ; [CPU_ALU] |571| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 573,column 21,is_stmt,isa 0
;----------------------------------------------------------------------
; 573 | HWREGH(CPUSYS_BASE + SYSCTL_O_TMR2CLKCTL) |= 1U;                       
;----------------------------------------------------------------------
        OR        *+XAR4[0],#0x0001     ; [CPU_ALU] |573| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 574,column 21,is_stmt,isa 0
;----------------------------------------------------------------------
; 574 | break;                                                                 
; 576 | case SYSCTL_OSCSRC_OSC2:                                               
; 577 | //                                                                     
; 578 | // Clk Src = INT_OSC2                                                  
; 579 | //                                                                     
;----------------------------------------------------------------------
        B         $C$L30,UNC            ; [CPU_ALU] |574| 
        ; branch occurs ; [] |574| 
$C$L27:    
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 580,column 21,is_stmt,isa 0
;----------------------------------------------------------------------
; 580 | HWREGH(CPUSYS_BASE + SYSCTL_O_TMR2CLKCTL) &=                           
; 581 |     ~SYSCTL_TMR2CLKCTL_TMR2CLKSRCSEL_M;                                
;----------------------------------------------------------------------
        AND       *+XAR4[0],#0xfff8     ; [CPU_ALU] |580| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 582,column 21,is_stmt,isa 0
;----------------------------------------------------------------------
; 582 | HWREGH(CPUSYS_BASE + SYSCTL_O_TMR2CLKCTL) |= 2U;                       
;----------------------------------------------------------------------
        OR        *+XAR4[0],#0x0002     ; [CPU_ALU] |582| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 583,column 21,is_stmt,isa 0
;----------------------------------------------------------------------
; 583 | break;                                                                 
; 585 | case SYSCTL_OSCSRC_XTAL:                                               
; 586 | //                                                                     
; 587 | // Clk Src = XTAL                                                      
; 588 | //                                                                     
;----------------------------------------------------------------------
        B         $C$L30,UNC            ; [CPU_ALU] |583| 
        ; branch occurs ; [] |583| 
$C$L28:    
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 589,column 21,is_stmt,isa 0
;----------------------------------------------------------------------
; 589 | HWREGH(CPUSYS_BASE + SYSCTL_O_TMR2CLKCTL) &=                           
; 590 |     ~SYSCTL_TMR2CLKCTL_TMR2CLKSRCSEL_M;                                
;----------------------------------------------------------------------
        MOVL      XAR4,#381820          ; [CPU_ARAU] |589| 
        AND       *+XAR4[0],#0xfff8     ; [CPU_ALU] |589| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 591,column 21,is_stmt,isa 0
;----------------------------------------------------------------------
; 591 | HWREGH(CPUSYS_BASE + SYSCTL_O_TMR2CLKCTL) |= 3U;                       
;----------------------------------------------------------------------
        OR        *+XAR4[0],#0x0003     ; [CPU_ALU] |591| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 592,column 21,is_stmt,isa 0
;----------------------------------------------------------------------
; 592 | break;                                                                 
; 594 | default:                                                               
; 595 | //                                                                     
; 596 | // Do nothing. Not a valid clock source value.                         
; 597 | //                                                                     
; 598 | break;                                                                 
; 601 | //                                                                     
; 602 | // Clear interrupt flag                                                
; 603 | // Enable interrupt                                                    
; 604 | // Stop timer 2                                                        
; 605 | // Seed timer2 counter                                                 
; 606 | // Set sysclock divider                                                
; 607 | // Reload timer with value in PRD                                      
; 608 | //                                                                     
;----------------------------------------------------------------------
        B         $C$L30,UNC            ; [CPU_ALU] |592| 
        ; branch occurs ; [] |592| 
$C$L29:    
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 565,column 13,is_stmt,isa 0
        MOVL      ACC,*-SP[4]           ; [CPU_ALU] |565| 
        ANDB      AL,#0                 ; [CPU_ALU] |565| 
        ANDB      AH,#3                 ; [CPU_ALU] |565| 
        MOVL      XAR6,ACC              ; [CPU_ALU] |565| 
        TEST      ACC                   ; [CPU_ALU] |565| 
        B         $C$L27,EQ             ; [CPU_ALU] |565| 
        ; branchcc occurs ; [] |565| 
        MOVL      XAR4,#65536           ; [CPU_ARAU] |565| 
        MOVL      ACC,XAR4              ; [CPU_ALU] |565| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |565| 
        B         $C$L28,EQ             ; [CPU_ALU] |565| 
        ; branchcc occurs ; [] |565| 
        MOVL      XAR4,#131072          ; [CPU_ARAU] |565| 
        MOVL      ACC,XAR4              ; [CPU_ALU] |565| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |565| 
        B         $C$L26,EQ             ; [CPU_ALU] |565| 
        ; branchcc occurs ; [] |565| 
$C$L30:    
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 609,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 609 | HWREGH(CPUTIMER2_BASE + CPUTIMER_O_TCR) |= CPUTIMER_TCR_TIF;           
;----------------------------------------------------------------------
        MOV       AL,*(0:0x0c14)        ; [CPU_ALU] |609| 
        OR        AL,#0x8000            ; [CPU_ALU] |609| 
        MOV       *(0:0x0c14),AL        ; [CPU_ALU] |609| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 610,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 610 | HWREGH(CPUTIMER2_BASE + CPUTIMER_O_TCR) |= CPUTIMER_TCR_TIE;           
;----------------------------------------------------------------------
        MOV       AL,*(0:0x0c14)        ; [CPU_ALU] |610| 
        OR        AL,#0x4000            ; [CPU_ALU] |610| 
        MOV       *(0:0x0c14),AL        ; [CPU_ALU] |610| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 611,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 611 | HWREGH(CPUTIMER2_BASE + CPUTIMER_O_TCR) |= CPUTIMER_TCR_TSS;           
;----------------------------------------------------------------------
        MOV       AL,*(0:0x0c14)        ; [CPU_ALU] |611| 
        ORB       AL,#0x10              ; [CPU_ALU] |611| 
        MOV       *(0:0x0c14),AL        ; [CPU_ALU] |611| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 612,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 612 | HWREG(CPUTIMER2_BASE + CPUTIMER_O_PRD) = (uint32_t)TMR2INPCLKCTR;      
;----------------------------------------------------------------------
        MOVL      XAR4,#2048            ; [CPU_ARAU] |612| 
        MOV32     *(0:0x0c12),XAR4      ; [CPU_FPU] |612| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 613,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 613 | HWREG(CPUTIMER2_BASE + CPUTIMER_O_TPR) = 0U;                           
;----------------------------------------------------------------------
        MOVB      ACC,#0                ; [CPU_ALU] |613| 
        MOV32     *(0:0x0c16),ACC       ; [CPU_FPU] |613| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 614,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 614 | HWREGH(CPUTIMER2_BASE + CPUTIMER_O_TCR) |= CPUTIMER_TCR_TRB;           
; 616 | //                                                                     
; 617 | // Stop/Start timer counters                                           
; 618 | //                                                                     
; 620 | //                                                                     
; 621 | // Stop timer 1                                                        
; 622 | // Stop timer 2                                                        
; 623 | // Reload timer1 with value in PRD                                     
; 624 | // Reload timer2 with value in PRD                                     
; 625 | // Clear timer2 interrupt flag                                         
; 626 | // Start timer2                                                        
; 627 | // Start timer1                                                        
; 628 | //                                                                     
;----------------------------------------------------------------------
        MOV       AL,*(0:0x0c14)        ; [CPU_ALU] |614| 
        ORB       AL,#0x20              ; [CPU_ALU] |614| 
        MOV       *(0:0x0c14),AL        ; [CPU_ALU] |614| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 629,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 629 | HWREGH(CPUTIMER1_BASE + CPUTIMER_O_TCR) |= CPUTIMER_TCR_TSS;           
;----------------------------------------------------------------------
        MOV       AL,*(0:0x0c0c)        ; [CPU_ALU] |629| 
        ORB       AL,#0x10              ; [CPU_ALU] |629| 
        MOV       *(0:0x0c0c),AL        ; [CPU_ALU] |629| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 630,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 630 | HWREGH(CPUTIMER2_BASE + CPUTIMER_O_TCR) |= CPUTIMER_TCR_TSS;           
;----------------------------------------------------------------------
        MOV       AL,*(0:0x0c14)        ; [CPU_ALU] |630| 
        ORB       AL,#0x10              ; [CPU_ALU] |630| 
        MOV       *(0:0x0c14),AL        ; [CPU_ALU] |630| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 631,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 631 | HWREGH(CPUTIMER1_BASE + CPUTIMER_O_TCR) |= CPUTIMER_TCR_TRB;           
;----------------------------------------------------------------------
        MOV       AL,*(0:0x0c0c)        ; [CPU_ALU] |631| 
        ORB       AL,#0x20              ; [CPU_ALU] |631| 
        MOV       *(0:0x0c0c),AL        ; [CPU_ALU] |631| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 632,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 632 | HWREGH(CPUTIMER2_BASE + CPUTIMER_O_TCR) |= CPUTIMER_TCR_TRB;           
;----------------------------------------------------------------------
        MOV       AL,*(0:0x0c14)        ; [CPU_ALU] |632| 
        ORB       AL,#0x20              ; [CPU_ALU] |632| 
        MOV       *(0:0x0c14),AL        ; [CPU_ALU] |632| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 633,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 633 | HWREGH(CPUTIMER2_BASE + CPUTIMER_O_TCR) |= CPUTIMER_TCR_TIF;           
;----------------------------------------------------------------------
        MOV       AL,*(0:0x0c14)        ; [CPU_ALU] |633| 
        OR        AL,#0x8000            ; [CPU_ALU] |633| 
        MOV       *(0:0x0c14),AL        ; [CPU_ALU] |633| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 634,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 634 | HWREGH(CPUTIMER2_BASE + CPUTIMER_O_TCR) &= ~CPUTIMER_TCR_TSS;          
;----------------------------------------------------------------------
        MOV       AL,*(0:0x0c14)        ; [CPU_ALU] |634| 
        AND       AL,#0xffef            ; [CPU_ALU] |634| 
        MOV       *(0:0x0c14),AL        ; [CPU_ALU] |634| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 635,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 635 | HWREGH(CPUTIMER1_BASE + CPUTIMER_O_TCR) &= ~CPUTIMER_TCR_TSS;          
; 637 | //                                                                     
; 638 | // Wait for Timers - Stop if either timer overflows                    
; 639 | //                                                                     
;----------------------------------------------------------------------
        MOV       AL,*(0:0x0c0c)        ; [CPU_ALU] |635| 
        AND       AL,#0xffef            ; [CPU_ALU] |635| 
        MOV       *(0:0x0c0c),AL        ; [CPU_ALU] |635| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 640,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 640 | while(((HWREGH(CPUTIMER2_BASE + CPUTIMER_O_TCR) &                      
;----------------------------------------------------------------------
$C$L31:    
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 640,column 19,is_stmt,isa 0
;----------------------------------------------------------------------
; 641 | CPUTIMER_TCR_TIF) == 0U)  &&                                           
; 642 | ((HWREGH(CPUTIMER1_BASE + CPUTIMER_O_TCR) &                            
; 643 | CPUTIMER_TCR_TIF) == 0U))                                              
; 645 | ;                                                                      
; 648 | //                                                                     
; 649 | // Stop timer 1 and 2                                                  
; 650 | //                                                                     
;----------------------------------------------------------------------
        MOV       AL,*(0:0x0c14)        ; [CPU_ALU] |640| 
        TBIT      AL,#15                ; [CPU_ALU] |640| 
        B         $C$L32,TC             ; [CPU_ALU] |640| 
        ; branchcc occurs ; [] |640| 
        MOV       AL,*(0:0x0c0c)        ; [CPU_ALU] |640| 
        TBIT      AL,#15                ; [CPU_ALU] |640| 
        B         $C$L31,NTC            ; [CPU_ALU] |640| 
        ; branchcc occurs ; [] |640| 
$C$L32:    
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 651,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 651 | HWREGH(CPUTIMER1_BASE + CPUTIMER_O_TCR) |= CPUTIMER_TCR_TSS;           
;----------------------------------------------------------------------
        MOV       AL,*(0:0x0c0c)        ; [CPU_ALU] |651| 
        ORB       AL,#0x10              ; [CPU_ALU] |651| 
        MOV       *(0:0x0c0c),AL        ; [CPU_ALU] |651| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 652,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 652 | HWREGH(CPUTIMER2_BASE + CPUTIMER_O_TCR) |= CPUTIMER_TCR_TSS;           
; 654 | //                                                                     
; 655 | // Calculate elapsed counts on timer1                                  
; 656 | //                                                                     
;----------------------------------------------------------------------
        MOV       AL,*(0:0x0c14)        ; [CPU_ALU] |652| 
        ORB       AL,#0x10              ; [CPU_ALU] |652| 
        MOV       *(0:0x0c14),AL        ; [CPU_ALU] |652| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 657,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 657 | ctr1 = (uint32_t)TMR1SYSCLKCTR - HWREG(CPUTIMER1_BASE +                
; 658 |                                        CPUTIMER_O_TIM);                
; 660 | //                                                                     
; 661 | // Restore timer settings                                              
; 662 | //                                                                     
;----------------------------------------------------------------------
        SETC      SXM                   ; [CPU_ALU] 
        MOV       ACC,#-8192 << 15      ; [CPU_ALU] |657| 
        MOV32     P,*(0:0x0c08)         ; [CPU_FPU] |657| 
        SUBL      ACC,P                 ; [CPU_ALU] |657| 
        MOVL      *-SP[10],ACC          ; [CPU_ALU] |657| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 663,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 663 | HWREGH(CPUTIMER1_BASE + CPUTIMER_O_TCR) = t1TCR;                       
;----------------------------------------------------------------------
        MOV       *(0:0x0c0c),*-SP[27]  ; [CPU_ALU] |663| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 664,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 664 | HWREG(CPUTIMER1_BASE + CPUTIMER_O_PRD) = t1PRD;                        
;----------------------------------------------------------------------
        MOV32     *(0:0x0c0a),*-SP[6]   ; [CPU_FPU] |664| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 665,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 665 | HWREGH(CPUTIMER1_BASE + CPUTIMER_O_TPR) = t1TPR;                       
;----------------------------------------------------------------------
        MOV       *(0:0x0c0e),*-SP[28]  ; [CPU_ALU] |665| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 666,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 666 | HWREGH(CPUTIMER1_BASE + CPUTIMER_O_TPRH) = t1TPRH;                     
;----------------------------------------------------------------------
        MOV       *(0:0x0c0f),*-SP[29]  ; [CPU_ALU] |666| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 667,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 667 | HWREGH(CPUSYS_BASE + SYSCTL_O_TMR2CLKCTL) = t2CLKCTL;                  
;----------------------------------------------------------------------
        MOVL      XAR4,#381820          ; [CPU_ARAU] |667| 
        MOV       AL,*-SP[33]           ; [CPU_ALU] |667| 
        MOV       *+XAR4[0],AL          ; [CPU_ALU] |667| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 668,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 668 | HWREGH(CPUTIMER2_BASE + CPUTIMER_O_TCR) = t2TCR;                       
;----------------------------------------------------------------------
        MOV       *(0:0x0c14),*-SP[30]  ; [CPU_ALU] |668| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 669,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 669 | HWREG(CPUTIMER2_BASE + CPUTIMER_O_PRD) = t2PRD;                        
;----------------------------------------------------------------------
        MOV32     *(0:0x0c12),*-SP[8]   ; [CPU_FPU] |669| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 670,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 670 | HWREGH(CPUTIMER2_BASE + CPUTIMER_O_TPR) = t2TPR;                       
;----------------------------------------------------------------------
        MOV       *(0:0x0c16),*-SP[31]  ; [CPU_ALU] |670| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 671,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 671 | HWREGH(CPUTIMER2_BASE + CPUTIMER_O_TPRH) = t2TPRH;                     
; 673 | //                                                                     
; 674 | // Calculate Clock Error:                                              
; 675 | // Error = (mult/div) - (timer1 count/timer2 count)                    
; 676 | //                                                                     
;----------------------------------------------------------------------
        MOV       *(0:0x0c17),*-SP[32]  ; [CPU_ALU] |671| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 677,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 677 | mult = (float32_t)iMult + ((float32_t)fMult / 4.0F);                   
;----------------------------------------------------------------------
        UI16TOF32 R1H,*-SP[17]          ; [CPU_FPU] |677| 
        NOP       ; [CPU_ALU] 
        MOVIZ     R0H,#16512            ; [CPU_FPU] |677| 
        DIVF32    R1H,R1H,R0H           ; [CPU_FPU] |677| 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        UI16TOF32 R3H,*-SP[16]          ; [CPU_FPU] |677| 
        NOP       ; [CPU_ALU] 
        ADDF32    R0H,R1H,R3H           ; [CPU_FPU] |677| 
        NOP       ; [CPU_ALU] 
        MOV32     *-SP[14],R0H          ; [CPU_FPU] |677| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 679,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 679 | if((HWREGH(CLKCFG_BASE + SYSCTL_O_SYSCLKDIVSEL) & 0x3FU) == 0U)        
;----------------------------------------------------------------------
        MOVL      XAR4,#381474          ; [CPU_ARAU] |679| 
        MOV       AL,*+XAR4[0]          ; [CPU_ALU] |679| 
        ANDB      AL,#0x3f              ; [CPU_ALU] |679| 
        B         $C$L33,NEQ            ; [CPU_ALU] |679| 
        ; branchcc occurs ; [] |679| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 681,column 17,is_stmt,isa 0
;----------------------------------------------------------------------
; 681 | div = 1U;                                                              
; 683 | else                                                                   
;----------------------------------------------------------------------
        MOVB      *-SP[19],#1,UNC       ; [CPU_ALU] |681| 
        B         $C$L34,UNC            ; [CPU_ALU] 
        ; branch occurs ; [] 
$C$L33:    
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 685,column 17,is_stmt,isa 0
;----------------------------------------------------------------------
; 685 | div = (HWREGH(CLKCFG_BASE + SYSCTL_O_SYSCLKDIVSEL) &                   
; 686 |        0x3FU) << 1;                                                    
;----------------------------------------------------------------------
        MOV       AL,*+XAR4[0]          ; [CPU_ALU] |685| 
        ANDB      AL,#0x3f              ; [CPU_ALU] |685| 
        LSL       AL,1                  ; [CPU_ALU] |685| 
        MOV       *-SP[19],AL           ; [CPU_ALU] |685| 
$C$L34:    
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 689,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 689 | sysclkToInClkError = (mult / (float32_t)div) -                         
; 690 |                      ((float32_t)ctr1 / (float32_t)TMR2INPCLKCTR);     
; 692 | //                                                                     
; 693 | // sysclkInvalidFreq will be set to true if sysclkToInClkError is      
; 694 | // off by 10%                                                          
; 695 | //                                                                     
;----------------------------------------------------------------------
        MOVIZ     R0H,#17664            ; [CPU_FPU] |689| 
        UI32TOF32 R1H,*-SP[10]          ; [CPU_FPU] |689| 
        UI16TOF32 R2H,*-SP[19]          ; [CPU_FPU] |689| 
        MOV32     R3H,*-SP[14]          ; [CPU_FPU] |689| 
        DIVF32    R0H,R1H,R0H           ; [CPU_FPU] |689| 
        DIVF32    R1H,R3H,R2H           ; [CPU_FPU] |689| 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        SUBF32    R0H,R1H,R0H           ; [CPU_FPU] |689| 
        NOP       ; [CPU_ALU] 
        MOV32     *-SP[12],R0H          ; [CPU_FPU] |689| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 696,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 696 | sysclkInvalidFreq = ((sysclkToInClkError > 0.10F) ||                   
; 697 |                      (sysclkToInClkError < -0.10F));                   
;----------------------------------------------------------------------
        MOVB      AH,#0                 ; [CPU_ALU] |696| 
        MOVB      AL,#1                 ; [CPU_ALU] |696| 
        MOVIZ     R0H,#15820            ; [CPU_FPU] |696| 
        MOV32     R1H,*-SP[12]          ; [CPU_FPU] |696| 
        MOVXI     R0H,#52429            ; [CPU_FPU] |696| 
        CMPF32    R1H,R0H               ; [CPU_FPU] |696| 
        MOVST0    ZF, NF                ; [CPU_FPU] |696| 
        B         $C$L35,GT             ; [CPU_ALU] |696| 
        ; branchcc occurs ; [] |696| 
        MOVIZ     R0H,#48588            ; [CPU_FPU] |696| 
        MOVXI     R0H,#52429            ; [CPU_FPU] |696| 
        CMPF32    R1H,R0H               ; [CPU_FPU] |696| 
        MOVST0    ZF, NF                ; [CPU_FPU] |696| 
        B         $C$L35,LT             ; [CPU_ALU] |696| 
        ; branchcc occurs ; [] |696| 
        MOVB      AL,#0                 ; [CPU_ALU] |696| 
$C$L35:    
        CMPB      AL,#0                 ; [CPU_ALU] |696| 
        B         $C$L36,EQ             ; [CPU_ALU] |696| 
        ; branchcc occurs ; [] |696| 
        MOVB      AH,#1                 ; [CPU_ALU] |696| 
$C$L36:    
        MOV       *-SP[21],AH           ; [CPU_ALU] |696| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 699,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 699 | EDIS;                                                                  
; 702 | //                                                                     
; 703 | // Clear bit                                                           
; 704 | //                                                                     
;----------------------------------------------------------------------
        EDIS      ; [CPU_ALU] |699| 
$C$L37:    
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 471,column 15,is_stmt,isa 0
        MOVL      ACC,*-SP[4]           ; [CPU_ALU] |471| 
        MOV       PL,#0                 ; [CPU_ALU] |471| 
        MOV       PH,#32768             ; [CPU_ALU] |471| 
        ANDB      AL,#0                 ; [CPU_ALU] |471| 
        AND       AH,#32768             ; [CPU_ALU] |471| 
        CMPL      ACC,P                 ; [CPU_ALU] |471| 
        B         $C$L38,NEQ            ; [CPU_ALU] |471| 
        ; branchcc occurs ; [] |471| 
        MOV       AL,*-SP[21]           ; [CPU_ALU] |471| 
        CMPB      AL,#1                 ; [CPU_ALU] |471| 
        B         $C$L23,EQ             ; [CPU_ALU] |471| 
        ; branchcc occurs ; [] |471| 
$C$L38:    
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 705,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 705 | EALLOW;                                                                
;----------------------------------------------------------------------
        EALLOW    ; [CPU_ALU] |705| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 706,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 706 | HWREGH(DEVCFG_BASE + SYSCTL_O_SYSDBGCTL) &= ~SYSCTL_SYSDBGCTL_BIT_0;   
;----------------------------------------------------------------------
        MOVL      XAR4,#381228          ; [CPU_ARAU] |706| 
        AND       *+XAR4[0],#0xfffe     ; [CPU_ALU] |706| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 707,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 707 | EDIS;                                                                  
; 709 | //                                                                     
; 710 | // Restore user watchdog, first resetting counter                      
; 711 | //                                                                     
;----------------------------------------------------------------------
        EDIS      ; [CPU_ALU] |707| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 712,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 712 | SysCtl_serviceWatchdog();                                              
; 714 | //                                                                     
; 715 | // Set the KEY bits and make sure not to set the WDOVERRIDE bit        
; 716 | //                                                                     
;----------------------------------------------------------------------
$C$DW$98	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$98, DW_AT_low_pc(0x00)
	.dwattr $C$DW$98, DW_AT_name("_SysCtl_serviceWatchdog")
	.dwattr $C$DW$98, DW_AT_TI_call

        LCR       #_SysCtl_serviceWatchdog ; [CPU_ALU] |712| 
        ; call occurs [#_SysCtl_serviceWatchdog] ; [] |712| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 717,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 717 | EALLOW;                                                                
;----------------------------------------------------------------------
        EALLOW    ; [CPU_ALU] |717| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 718,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 718 | HWREGH(WD_BASE + SYSCTL_O_WDCR) = tempWDCR | SYSCTL_WD_CHKBITS;        
;----------------------------------------------------------------------
        MOV       AL,*-SP[24]           ; [CPU_ALU] |718| 
        ORB       AL,#0x28              ; [CPU_ALU] |718| 
        MOV       *(0:0x7029),AL        ; [CPU_ALU] |718| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 719,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 719 | HWREGH(WD_BASE + SYSCTL_O_WDWCR) = tempWDWCR;                          
;----------------------------------------------------------------------
        MOV       *(0:0x702a),*-SP[25]  ; [CPU_ALU] |719| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 720,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 720 | HWREGH(WD_BASE + SYSCTL_O_SCSR) = tempSCSR & ~SYSCTL_SCSR_WDOVERRIDE;  
;----------------------------------------------------------------------
        AND       AL,*-SP[23],#0xfffe   ; [CPU_ALU] |720| 
        MOV       *(0:0x7022),AL        ; [CPU_ALU] |720| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 721,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 721 | EDIS;                                                                  
; 723 | //                                                                     
; 724 | // Restore state of ST1[INTM]. This was set by the                     
; 725 | // __disable_interrupts() intrinsic previously.                        
; 726 | //                                                                     
;----------------------------------------------------------------------
        EDIS      ; [CPU_ALU] |721| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 727,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 727 | if((intStatus & 0x1U) == 0U)                                           
;----------------------------------------------------------------------
        TBIT      *-SP[26],#0           ; [CPU_ALU] |727| 
        B         $C$L39,TC             ; [CPU_ALU] |727| 
        ; branchcc occurs ; [] |727| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 729,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 729 | EINT;                                                                  
; 732 | //                                                                     
; 733 | // Restore state of ST1[DBGM]. This was set by the                     
; 734 | // __disable_interrupts() intrinsic previously.                        
; 735 | //                                                                     
;----------------------------------------------------------------------
 clrc INTM
$C$L39:    
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 736,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 736 | if((intStatus & 0x2U) == 0U)                                           
;----------------------------------------------------------------------
        TBIT      *-SP[26],#1           ; [CPU_ALU] |736| 
        B         $C$L40,TC             ; [CPU_ALU] |736| 
        ; branchcc occurs ; [] |736| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 738,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 738 | SYSCTL_CLRC_DBGM;                                                      
; 741 | //                                                                     
; 742 | // ~200 PLLSYSCLK delay to allow voltage regulator to stabilize prior  
; 743 | // to increasing entire system clock frequency.                        
; 744 | //                                                                     
;----------------------------------------------------------------------
 CLRC DBGM
$C$L40:    
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 745,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 745 | SysCtl_delay(40U);                                                     
; 747 | //                                                                     
; 748 | // Set the divider to user value                                       
; 749 | //                                                                     
;----------------------------------------------------------------------
        MOVB      ACC,#40               ; [CPU_ALU] |745| 
        SPM       #0                    ; [CPU_ALU] 
$C$DW$99	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$99, DW_AT_low_pc(0x00)
	.dwattr $C$DW$99, DW_AT_name("_SysCtl_delay")
	.dwattr $C$DW$99, DW_AT_TI_call

        LCR       #_SysCtl_delay        ; [CPU_ALU] |745| 
        ; call occurs [#_SysCtl_delay] ; [] |745| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 750,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 750 | EALLOW;                                                                
;----------------------------------------------------------------------
        EALLOW    ; [CPU_ALU] |750| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 751,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 751 | HWREGH(CLKCFG_BASE + SYSCTL_O_SYSCLKDIVSEL) =                          
; 752 |     (HWREGH(CLKCFG_BASE + SYSCTL_O_SYSCLKDIVSEL) &                     
; 753 |      ~SYSCTL_SYSCLKDIVSEL_PLLSYSCLKDIV_M) | divSel;                    
;----------------------------------------------------------------------
        MOVL      XAR4,#381474          ; [CPU_ARAU] |751| 
        AND       AL,*+XAR4[0],#0xffc0  ; [CPU_ALU] |751| 
        OR        AL,*-SP[15]           ; [CPU_ALU] |751| 
        MOV       *+XAR4[0],AL          ; [CPU_ALU] |751| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 754,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 754 | EDIS;                                                                  
;----------------------------------------------------------------------
        EDIS      ; [CPU_ALU] |754| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 756,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 756 | status = true;                                                         
;----------------------------------------------------------------------
        MOVB      *-SP[20],#1,UNC       ; [CPU_ALU] |756| 
$C$L41:    
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 759,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 759 | return(status);                                                        
;----------------------------------------------------------------------
        MOV       AL,*-SP[20]           ; [CPU_ALU] |759| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 760,column 1,is_stmt,isa 0
        SUBB      SP,#34                ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$100	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$100, DW_AT_low_pc(0x00)
	.dwattr $C$DW$100, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$63, DW_AT_TI_end_file("C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c")
	.dwattr $C$DW$63, DW_AT_TI_end_line(0x2f8)
	.dwattr $C$DW$63, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$63

	.sect	".text"
	.clink
	.global	_SysCtl_setAuxClock

$C$DW$101	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$101, DW_AT_name("SysCtl_setAuxClock")
	.dwattr $C$DW$101, DW_AT_low_pc(_SysCtl_setAuxClock)
	.dwattr $C$DW$101, DW_AT_high_pc(0x00)
	.dwattr $C$DW$101, DW_AT_TI_symbol_name("_SysCtl_setAuxClock")
	.dwattr $C$DW$101, DW_AT_external
	.dwattr $C$DW$101, DW_AT_TI_begin_file("C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c")
	.dwattr $C$DW$101, DW_AT_TI_begin_line(0x2fe)
	.dwattr $C$DW$101, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$101, DW_AT_TI_max_frame_size(-16)
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 767,column 1,is_stmt,address _SysCtl_setAuxClock,isa 0

	.dwfde $C$DW$CIE, _SysCtl_setAuxClock
$C$DW$102	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$102, DW_AT_name("config")
	.dwattr $C$DW$102, DW_AT_TI_symbol_name("_config")
	.dwattr $C$DW$102, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$102, DW_AT_location[DW_OP_reg0]

;----------------------------------------------------------------------
; 766 | void SysCtl_setAuxClock(uint32_t config)                               
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _SysCtl_setAuxClock           FR SIZE:  14           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter, 14 Auto,  0 SOE     *
;***************************************************************

_SysCtl_setAuxClock:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#14                ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -16
$C$DW$103	.dwtag  DW_TAG_variable
	.dwattr $C$DW$103, DW_AT_name("config")
	.dwattr $C$DW$103, DW_AT_TI_symbol_name("_config")
	.dwattr $C$DW$103, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$103, DW_AT_location[DW_OP_breg20 -2]

$C$DW$104	.dwtag  DW_TAG_variable
	.dwattr $C$DW$104, DW_AT_name("t2PRD")
	.dwattr $C$DW$104, DW_AT_TI_symbol_name("_t2PRD")
	.dwattr $C$DW$104, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$104, DW_AT_location[DW_OP_breg20 -4]

$C$DW$105	.dwtag  DW_TAG_variable
	.dwattr $C$DW$105, DW_AT_name("pllMult")
	.dwattr $C$DW$105, DW_AT_TI_symbol_name("_pllMult")
	.dwattr $C$DW$105, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$105, DW_AT_location[DW_OP_breg20 -5]

$C$DW$106	.dwtag  DW_TAG_variable
	.dwattr $C$DW$106, DW_AT_name("counter")
	.dwattr $C$DW$106, DW_AT_TI_symbol_name("_counter")
	.dwattr $C$DW$106, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$106, DW_AT_location[DW_OP_breg20 -6]

$C$DW$107	.dwtag  DW_TAG_variable
	.dwattr $C$DW$107, DW_AT_name("started")
	.dwattr $C$DW$107, DW_AT_TI_symbol_name("_started")
	.dwattr $C$DW$107, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$107, DW_AT_location[DW_OP_breg20 -7]

$C$DW$108	.dwtag  DW_TAG_variable
	.dwattr $C$DW$108, DW_AT_name("attempts")
	.dwattr $C$DW$108, DW_AT_TI_symbol_name("_attempts")
	.dwattr $C$DW$108, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$108, DW_AT_location[DW_OP_breg20 -8]

$C$DW$109	.dwtag  DW_TAG_variable
	.dwattr $C$DW$109, DW_AT_name("mult")
	.dwattr $C$DW$109, DW_AT_TI_symbol_name("_mult")
	.dwattr $C$DW$109, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$109, DW_AT_location[DW_OP_breg20 -9]

$C$DW$110	.dwtag  DW_TAG_variable
	.dwattr $C$DW$110, DW_AT_name("i")
	.dwattr $C$DW$110, DW_AT_TI_symbol_name("_i")
	.dwattr $C$DW$110, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$110, DW_AT_location[DW_OP_breg20 -10]

$C$DW$111	.dwtag  DW_TAG_variable
	.dwattr $C$DW$111, DW_AT_name("t2TCR")
	.dwattr $C$DW$111, DW_AT_TI_symbol_name("_t2TCR")
	.dwattr $C$DW$111, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$111, DW_AT_location[DW_OP_breg20 -11]

$C$DW$112	.dwtag  DW_TAG_variable
	.dwattr $C$DW$112, DW_AT_name("t2TPR")
	.dwattr $C$DW$112, DW_AT_TI_symbol_name("_t2TPR")
	.dwattr $C$DW$112, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$112, DW_AT_location[DW_OP_breg20 -12]

$C$DW$113	.dwtag  DW_TAG_variable
	.dwattr $C$DW$113, DW_AT_name("t2TPRH")
	.dwattr $C$DW$113, DW_AT_TI_symbol_name("_t2TPRH")
	.dwattr $C$DW$113, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$113, DW_AT_location[DW_OP_breg20 -13]

$C$DW$114	.dwtag  DW_TAG_variable
	.dwattr $C$DW$114, DW_AT_name("t2CLKCTL")
	.dwattr $C$DW$114, DW_AT_TI_symbol_name("_t2CLKCTL")
	.dwattr $C$DW$114, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$114, DW_AT_location[DW_OP_breg20 -14]

        MOVL      *-SP[2],ACC           ; [CPU_ALU] |767| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 768,column 22,is_stmt,isa 0
;----------------------------------------------------------------------
; 768 | uint16_t pllMult = 0U;                                                 
;----------------------------------------------------------------------
        MOV       *-SP[5],#0            ; [CPU_ALU] |768| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 769,column 22,is_stmt,isa 0
;----------------------------------------------------------------------
; 769 | uint16_t counter = 0U, started = 0U, attempts = 0U;                    
;----------------------------------------------------------------------
        MOV       *-SP[6],#0            ; [CPU_ALU] |769| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 769,column 36,is_stmt,isa 0
;----------------------------------------------------------------------
; 770 | uint16_t mult;                                                         
; 771 | uint16_t i, t2TCR, t2TPR, t2TPRH, t2CLKCTL;                            
; 772 | uint32_t t2PRD;                                                        
; 774 | //                                                                     
; 775 | // Check the arguments                                                 
; 776 | //                                                                     
; 777 | ASSERT((config & SYSCTL_OSCSRC_M) != SYSCTL_OSCSRC_M); // 3 is not vali
;     | d                                                                      
; 779 | //                                                                     
; 780 | // Bypass PLL                                                          
; 781 | //                                                                     
;----------------------------------------------------------------------
        MOV       *-SP[7],#0            ; [CPU_ALU] |769| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 769,column 51,is_stmt,isa 0
        MOV       *-SP[8],#0            ; [CPU_ALU] |769| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 782,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 782 | EALLOW;                                                                
;----------------------------------------------------------------------
        EALLOW    ; [CPU_ALU] |782| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 783,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 783 | HWREGH(CLKCFG_BASE + SYSCTL_O_AUXPLLCTL1) &= ~SYSCTL_AUXPLLCTL1_PLLCLKE
;     | N;                                                                     
;----------------------------------------------------------------------
        MOVL      XAR4,#381464          ; [CPU_ARAU] |783| 
        AND       *+XAR4[0],#0xfffd     ; [CPU_ALU] |783| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 784,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 784 | EDIS;                                                                  
; 786 | //                                                                     
; 787 | // Delay of at least 120 OSCCLK cycles required post PLL bypass        
; 788 | //                                                                     
;----------------------------------------------------------------------
        EDIS      ; [CPU_ALU] |784| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 789,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 789 | SysCtl_delay(23U);                                                     
; 791 | //                                                                     
; 792 | // Configure oscillator source                                         
; 793 | //                                                                     
;----------------------------------------------------------------------
        MOVB      ACC,#23               ; [CPU_ALU] |789| 
$C$DW$115	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$115, DW_AT_low_pc(0x00)
	.dwattr $C$DW$115, DW_AT_name("_SysCtl_delay")
	.dwattr $C$DW$115, DW_AT_TI_call

        LCR       #_SysCtl_delay        ; [CPU_ALU] |789| 
        ; call occurs [#_SysCtl_delay] ; [] |789| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 794,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 794 | SysCtl_selectOscSourceAuxPLL(config & SYSCTL_OSCSRC_M);                
; 796 | //                                                                     
; 797 | // Get the PLL multiplier settings from config                         
; 798 | //                                                                     
;----------------------------------------------------------------------
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |794| 
        ANDB      AL,#0                 ; [CPU_ALU] |794| 
        ANDB      AH,#3                 ; [CPU_ALU] |794| 
$C$DW$116	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$116, DW_AT_low_pc(0x00)
	.dwattr $C$DW$116, DW_AT_name("_SysCtl_selectOscSourceAuxPLL")
	.dwattr $C$DW$116, DW_AT_TI_call

        LCR       #_SysCtl_selectOscSourceAuxPLL ; [CPU_ALU] |794| 
        ; call occurs [#_SysCtl_selectOscSourceAuxPLL] ; [] |794| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 799,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 799 | pllMult |= (uint16_t)((config & SYSCTL_IMULT_M) <<                     
; 800 |                       SYSCTL_AUXPLLMULT_IMULT_S);                      
;----------------------------------------------------------------------
        MOV       AL,*-SP[2]            ; [CPU_ALU] |799| 
        ANDB      AL,#0x7f              ; [CPU_ALU] |799| 
        OR        *-SP[5],AL            ; [CPU_ALU] |799| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 801,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 801 | pllMult |= (uint16_t)(((config & SYSCTL_FMULT_M) >> SYSCTL_FMULT_S) << 
; 802 |                       SYSCTL_AUXPLLMULT_FMULT_S);                      
; 804 | //                                                                     
; 805 | // Get the PLL multipliers currently programmed                        
; 806 | //                                                                     
;----------------------------------------------------------------------
        CLRC      SXM                   ; [CPU_ALU] 
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |801| 
        AND       AL,#24576             ; [CPU_ALU] |801| 
        ANDB      AH,#0                 ; [CPU_ALU] |801| 
        SFR       ACC,13                ; [CPU_ALU] |801| 
        MOV       ACC,AL << #8          ; [CPU_ALU] |801| 
        OR        *-SP[5],AL            ; [CPU_ALU] |801| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 807,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 807 | mult  = (uint16_t)((HWREG(CLKCFG_BASE + SYSCTL_O_AUXPLLMULT) &         
; 808 |                     (uint32_t)SYSCTL_AUXPLLMULT_IMULT_M) >>            
; 809 |                    (uint32_t)SYSCTL_AUXPLLMULT_IMULT_S);               
;----------------------------------------------------------------------
        MOVL      XAR4,#381470          ; [CPU_ARAU] |807| 
        MOVL      ACC,*+XAR4[0]         ; [CPU_ALU] |807| 
        ANDB      AL,#0x7f              ; [CPU_ALU] |807| 
        MOV       *-SP[9],AL            ; [CPU_ALU] |807| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 810,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 810 | mult |= (uint16_t)(HWREG(CLKCFG_BASE + SYSCTL_O_AUXPLLMULT) &          
; 811 |                          SYSCTL_AUXPLLMULT_FMULT_M);                   
; 813 | //                                                                     
; 814 | // Lock PLL only if the multipliers need update                        
; 815 | //                                                                     
;----------------------------------------------------------------------
        MOVL      ACC,*+XAR4[0]         ; [CPU_ALU] |810| 
        AND       AL,AL,#0x0300         ; [CPU_ALU] |810| 
        OR        *-SP[9],AL            ; [CPU_ALU] |810| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 816,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 816 | if(mult !=  pllMult)                                                   
; 819 |     //                                                                 
; 820 |     // Configure PLL if enabled                                        
; 821 |     //                                                                 
;----------------------------------------------------------------------
        MOVZ      AR6,*-SP[9]           ; [CPU_ALU] |816| 
        MOVU      ACC,*-SP[5]           ; [CPU_ALU] |816| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |816| 
        B         $C$L50,EQ             ; [CPU_ALU] |816| 
        ; branchcc occurs ; [] |816| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 822,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 822 | if((config & SYSCTL_AUXPLL_ENABLE) == SYSCTL_AUXPLL_ENABLE)            
; 824 |     //                                                                 
; 825 |     // Backup Timer 2 settings                                         
; 826 |     //                                                                 
;----------------------------------------------------------------------
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |822| 
        MOV       PL,#0                 ; [CPU_ALU] |822| 
        MOV       PH,#32768             ; [CPU_ALU] |822| 
        ANDB      AL,#0                 ; [CPU_ALU] |822| 
        AND       AH,#32768             ; [CPU_ALU] |822| 
        CMPL      ACC,P                 ; [CPU_ALU] |822| 
        B         $C$L53,NEQ            ; [CPU_ALU] |822| 
        ; branchcc occurs ; [] |822| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 827,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 827 | t2CLKCTL = HWREGH(CPUSYS_BASE + SYSCTL_O_TMR2CLKCTL);                  
;----------------------------------------------------------------------
        MOVL      XAR4,#381820          ; [CPU_ARAU] |827| 
        MOV       AL,*+XAR4[0]          ; [CPU_ALU] |827| 
        MOV       *-SP[14],AL           ; [CPU_ALU] |827| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 828,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 828 | t2TCR = HWREGH(CPUTIMER2_BASE + CPUTIMER_O_TCR);                       
;----------------------------------------------------------------------
        MOV       *-SP[11],*(0:0x0c14)  ; [CPU_ALU] |828| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 829,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 829 | t2PRD = HWREG(CPUTIMER2_BASE + CPUTIMER_O_PRD);                        
;----------------------------------------------------------------------
        MOV32     *-SP[4],*(0:0x0c12)   ; [CPU_FPU] |829| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 830,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 830 | t2TPR = HWREGH(CPUTIMER2_BASE + CPUTIMER_O_TPR);                       
;----------------------------------------------------------------------
        MOV       *-SP[12],*(0:0x0c16)  ; [CPU_ALU] |830| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 831,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 831 | t2TPRH = HWREGH(CPUTIMER2_BASE + CPUTIMER_O_TPRH);                     
; 833 | //                                                                     
; 834 | // Configure Timer 2 for AUXPLL as source in known configuration       
; 835 | // - Clock source to AUXPLL                                            
; 836 | // - Clock divider to divide by 1                                      
; 837 | // - Small period to detect overflow                                   
; 838 | // - Interrupt disabled                                                
; 839 | //                                                                     
;----------------------------------------------------------------------
        MOV       *-SP[13],*(0:0x0c17)  ; [CPU_ALU] |831| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 840,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 840 | EALLOW;                                                                
;----------------------------------------------------------------------
        EALLOW    ; [CPU_ALU] |840| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 841,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 841 | HWREGH(CPUSYS_BASE + SYSCTL_O_TMR2CLKCTL) = 6U;                        
;----------------------------------------------------------------------
        MOVB      *+XAR4[0],#6,UNC      ; [CPU_ALU] |841| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 843,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 843 | HWREGH(CPUTIMER2_BASE + CPUTIMER_O_TCR) |= CPUTIMER_TCR_TSS;           
;----------------------------------------------------------------------
        MOV       AL,*(0:0x0c14)        ; [CPU_ALU] |843| 
        ORB       AL,#0x10              ; [CPU_ALU] |843| 
        MOV       *(0:0x0c14),AL        ; [CPU_ALU] |843| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 845,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 845 | HWREG(CPUTIMER2_BASE + CPUTIMER_O_PRD) = 10U;                          
;----------------------------------------------------------------------
        MOVB      ACC,#10               ; [CPU_ALU] |845| 
        MOV32     *(0:0x0c12),ACC       ; [CPU_FPU] |845| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 846,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 846 | HWREGH(CPUTIMER2_BASE + CPUTIMER_O_TPR) = 0U;                          
;----------------------------------------------------------------------
        MOVB      AL,#0                 ; [CPU_ALU] |846| 
        MOV       *(0:0x0c16),AL        ; [CPU_ALU] |846| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 847,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 847 | HWREGH(CPUTIMER2_BASE + CPUTIMER_O_TPRH) = 0U;                         
;----------------------------------------------------------------------
        MOV       *(0:0x0c17),AL        ; [CPU_ALU] |847| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 848,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 848 | HWREGH(CPUTIMER2_BASE + CPUTIMER_O_TCR) &= ~CPUTIMER_TCR_TIE;          
; 850 | //                                                                     
; 851 | // Set AUX Divide by 8 to ensure that AUXPLLCLK <= SYSCLK / 2          
; 852 | // while using Timer 2                                                 
; 853 | //                                                                     
;----------------------------------------------------------------------
        MOV       AL,*(0:0x0c14)        ; [CPU_ALU] |848| 
        AND       AL,#0xbfff            ; [CPU_ALU] |848| 
        MOV       *(0:0x0c14),AL        ; [CPU_ALU] |848| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 854,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 854 | HWREGH(CLKCFG_BASE + SYSCTL_O_AUXCLKDIVSEL) = 0x3U;                    
;----------------------------------------------------------------------
        MOVL      XAR4,#381476          ; [CPU_ARAU] |854| 
        MOVB      *+XAR4[0],#3,UNC      ; [CPU_ALU] |854| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 855,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 855 | EDIS;                                                                  
; 857 | //                                                                     
; 858 | // Lock the PLL up to five times.                                      
; 859 | //CPU Timer 2 will monitor a successful                                
; 860 | // lock and break out of the loop earlier if detected.                 
; 861 | //                                                                     
;----------------------------------------------------------------------
        EDIS      ; [CPU_ALU] |855| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 862,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 862 | while((counter < 5U) && (started == 0U))                               
;----------------------------------------------------------------------
        B         $C$L47,UNC            ; [CPU_ALU] |862| 
        ; branch occurs ; [] |862| 
$C$L42:    
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 864,column 17,is_stmt,isa 0
;----------------------------------------------------------------------
; 864 | EALLOW;                                                                
; 866 | //                                                                     
; 867 | // Turn off AUXPLL and delay for it to power down.                     
; 868 | //                                                                     
;----------------------------------------------------------------------
        EALLOW    ; [CPU_ALU] |864| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 869,column 17,is_stmt,isa 0
;----------------------------------------------------------------------
; 869 | HWREGH(CLKCFG_BASE + SYSCTL_O_AUXPLLCTL1) &=                           
; 870 |     ~SYSCTL_AUXPLLCTL1_PLLEN;                                          
;----------------------------------------------------------------------
        MOVL      XAR4,#381464          ; [CPU_ARAU] |869| 
        AND       *+XAR4[0],#0xfffe     ; [CPU_ALU] |869| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 871,column 17,is_stmt,isa 0
;----------------------------------------------------------------------
; 871 | SysCtl_delay(3U);                                                      
; 873 | //                                                                     
; 874 | // Set integer and fractional multiplier, which automatically          
; 875 | // turns on the PLL                                                    
; 876 | //                                                                     
;----------------------------------------------------------------------
        MOVB      ACC,#3                ; [CPU_ALU] |871| 
$C$DW$117	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$117, DW_AT_low_pc(0x00)
	.dwattr $C$DW$117, DW_AT_name("_SysCtl_delay")
	.dwattr $C$DW$117, DW_AT_TI_call

        LCR       #_SysCtl_delay        ; [CPU_ALU] |871| 
        ; call occurs [#_SysCtl_delay] ; [] |871| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 877,column 17,is_stmt,isa 0
;----------------------------------------------------------------------
; 877 | HWREGH(CLKCFG_BASE + SYSCTL_O_AUXPLLMULT) |= pllMult;                  
; 879 | //                                                                     
; 880 | // Enable AUXPLL                                                       
; 881 | //                                                                     
;----------------------------------------------------------------------
        MOV       AL,*-SP[5]            ; [CPU_ALU] |877| 
        MOVL      XAR4,#381470          ; [CPU_ARAU] |877| 
        OR        *+XAR4[0],AL          ; [CPU_ALU] |877| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 882,column 17,is_stmt,isa 0
;----------------------------------------------------------------------
; 882 | HWREGH(CLKCFG_BASE + SYSCTL_O_AUXPLLCTL1) |=                           
; 883 |     SYSCTL_AUXPLLCTL1_PLLEN;                                           
;----------------------------------------------------------------------
        MOVL      XAR4,#381464          ; [CPU_ARAU] |882| 
        OR        *+XAR4[0],#0x0001     ; [CPU_ALU] |882| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 884,column 17,is_stmt,isa 0
;----------------------------------------------------------------------
; 884 | EDIS;                                                                  
; 886 | //                                                                     
; 887 | // Wait for the AUXPLL lock counter                                    
; 888 | //                                                                     
;----------------------------------------------------------------------
        EDIS      ; [CPU_ALU] |884| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 890,column 17,is_stmt,isa 0
;----------------------------------------------------------------------
; 890 | while((HWREGH(CLKCFG_BASE + SYSCTL_O_AUXPLLSTS) &                      
;----------------------------------------------------------------------
        MOVL      XAR4,#381472          ; [CPU_ARAU] |890| 
$C$L43:    
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 890,column 23,is_stmt,isa 0
;----------------------------------------------------------------------
; 891 | SYSCTL_AUXPLLSTS_LOCKS) != 1U)                                         
; 893 | //                                                                     
; 894 | // Consider to servicing the watchdog using                            
; 895 | // SysCtl_serviceWatchdog()                                            
; 896 | //                                                                     
; 900 | //                                                                     
; 901 | // Enable AUXPLLCLK to be fed from AUXPLL                              
; 902 | //                                                                     
;----------------------------------------------------------------------
        MOV       AL,*+XAR4[0]          ; [CPU_ALU] |890| 
        ANDB      AL,#0x01              ; [CPU_ALU] |890| 
        CMPB      AL,#1                 ; [CPU_ALU] |890| 
        B         $C$L43,NEQ            ; [CPU_ALU] |890| 
        ; branchcc occurs ; [] |890| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 903,column 17,is_stmt,isa 0
;----------------------------------------------------------------------
; 903 | EALLOW;                                                                
;----------------------------------------------------------------------
        EALLOW    ; [CPU_ALU] |903| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 904,column 17,is_stmt,isa 0
;----------------------------------------------------------------------
; 904 | HWREGH(CLKCFG_BASE + SYSCTL_O_AUXPLLCTL1) |=                           
; 905 |     SYSCTL_AUXPLLCTL1_PLLCLKEN;                                        
;----------------------------------------------------------------------
        MOVL      XAR4,#381464          ; [CPU_ARAU] |904| 
        OR        *+XAR4[0],#0x0002     ; [CPU_ALU] |904| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 906,column 17,is_stmt,isa 0
;----------------------------------------------------------------------
; 906 | SysCtl_delay(3U);                                                      
; 908 | //                                                                     
; 909 | // CPU Timer 2 will now be setup to be clocked from AUXPLLCLK.         
; 910 | // This is used to test that the PLL has successfully started.         
; 911 | //                                                                     
; 912 | // Reload and start the timer                                          
; 913 | //                                                                     
;----------------------------------------------------------------------
        MOVB      ACC,#3                ; [CPU_ALU] |906| 
$C$DW$118	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$118, DW_AT_low_pc(0x00)
	.dwattr $C$DW$118, DW_AT_name("_SysCtl_delay")
	.dwattr $C$DW$118, DW_AT_TI_call

        LCR       #_SysCtl_delay        ; [CPU_ALU] |906| 
        ; call occurs [#_SysCtl_delay] ; [] |906| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 914,column 17,is_stmt,isa 0
;----------------------------------------------------------------------
; 914 | HWREGH(CPUTIMER2_BASE + CPUTIMER_O_TCR) |= CPUTIMER_TCR_TRB;           
;----------------------------------------------------------------------
        MOV       AL,*(0:0x0c14)        ; [CPU_ALU] |914| 
        ORB       AL,#0x20              ; [CPU_ALU] |914| 
        MOV       *(0:0x0c14),AL        ; [CPU_ALU] |914| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 915,column 17,is_stmt,isa 0
;----------------------------------------------------------------------
; 915 | HWREGH(CPUTIMER2_BASE + CPUTIMER_O_TCR) &= ~CPUTIMER_TCR_TSS;          
; 917 | //                                                                     
; 918 | // Check to see timer is counting properly                             
; 919 | //                                                                     
;----------------------------------------------------------------------
        MOV       AL,*(0:0x0c14)        ; [CPU_ALU] |915| 
        AND       AL,#0xffef            ; [CPU_ALU] |915| 
        MOV       *(0:0x0c14),AL        ; [CPU_ALU] |915| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 920,column 21,is_stmt,isa 0
;----------------------------------------------------------------------
; 920 | for(i = 0U; i < 1000U; i++)                                            
;----------------------------------------------------------------------
        MOV       *-SP[10],#0           ; [CPU_ALU] |920| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 920,column 29,is_stmt,isa 0
;----------------------------------------------------------------------
; 922 | //                                                                     
; 923 | // Check overflow flag                                                 
; 924 | //                                                                     
;----------------------------------------------------------------------
        CMP       *-SP[10],#1000        ; [CPU_ALU] |920| 
        B         $C$L46,HIS            ; [CPU_ALU] |920| 
        ; branchcc occurs ; [] |920| 
$C$L44:    
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 925,column 21,is_stmt,isa 0
;----------------------------------------------------------------------
; 925 | if((HWREGH(CPUTIMER2_BASE + CPUTIMER_O_TCR) &                          
; 926 |     CPUTIMER_TCR_TIF) != 0U)                                           
; 928 |     //                                                                 
; 929 |     // Clear overflow flag                                             
; 930 |     //                                                                 
;----------------------------------------------------------------------
        MOV       AL,*(0:0x0c14)        ; [CPU_ALU] |925| 
        TBIT      AL,#15                ; [CPU_ALU] |925| 
        B         $C$L45,NTC            ; [CPU_ALU] |925| 
        ; branchcc occurs ; [] |925| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 931,column 25,is_stmt,isa 0
;----------------------------------------------------------------------
; 931 | HWREGH(CPUTIMER2_BASE +                                                
; 932 |        CPUTIMER_O_TCR) |= CPUTIMER_TCR_TIF;                            
; 934 | //                                                                     
; 935 | // Set flag to indicate PLL started and break out of                   
; 936 | // for-loop                                                            
; 937 | //                                                                     
;----------------------------------------------------------------------
        MOV       AL,*(0:0x0c14)        ; [CPU_ALU] |931| 
        OR        AL,#0x8000            ; [CPU_ALU] |931| 
        MOV       *(0:0x0c14),AL        ; [CPU_ALU] |931| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 938,column 25,is_stmt,isa 0
;----------------------------------------------------------------------
; 938 | started = 1U;                                                          
;----------------------------------------------------------------------
        MOVB      *-SP[7],#1,UNC        ; [CPU_ALU] |938| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 939,column 25,is_stmt,isa 0
;----------------------------------------------------------------------
; 939 | break;                                                                 
; 943 | //                                                                     
; 944 | // Stop timer                                                          
; 945 | //                                                                     
;----------------------------------------------------------------------
        B         $C$L46,UNC            ; [CPU_ALU] |939| 
        ; branch occurs ; [] |939| 
$C$L45:    
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 920,column 40,is_stmt,isa 0
        INC       *-SP[10]              ; [CPU_ALU] |920| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 920,column 29,is_stmt,isa 0
        CMP       *-SP[10],#1000        ; [CPU_ALU] |920| 
        B         $C$L44,LO             ; [CPU_ALU] |920| 
        ; branchcc occurs ; [] |920| 
$C$L46:    
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 946,column 17,is_stmt,isa 0
;----------------------------------------------------------------------
; 946 | HWREGH(CPUTIMER2_BASE + CPUTIMER_O_TCR) |= CPUTIMER_TCR_TSS;           
;----------------------------------------------------------------------
        MOV       AL,*(0:0x0c14)        ; [CPU_ALU] |946| 
        ORB       AL,#0x10              ; [CPU_ALU] |946| 
        MOV       *(0:0x0c14),AL        ; [CPU_ALU] |946| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 947,column 17,is_stmt,isa 0
;----------------------------------------------------------------------
; 947 | counter++;                                                             
;----------------------------------------------------------------------
        INC       *-SP[6]               ; [CPU_ALU] |947| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 948,column 17,is_stmt,isa 0
;----------------------------------------------------------------------
; 948 | EDIS;                                                                  
;----------------------------------------------------------------------
        EDIS      ; [CPU_ALU] |948| 
$C$L47:    
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 862,column 19,is_stmt,isa 0
        MOV       AL,*-SP[6]            ; [CPU_ALU] |862| 
        CMPB      AL,#5                 ; [CPU_ALU] |862| 
        B         $C$L48,HIS            ; [CPU_ALU] |862| 
        ; branchcc occurs ; [] |862| 
        MOV       AL,*-SP[7]            ; [CPU_ALU] |862| 
        B         $C$L42,EQ             ; [CPU_ALU] |862| 
        ; branchcc occurs ; [] |862| 
$C$L48:    
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 951,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 951 | if(started == 0U)                                                      
; 953 |     //                                                                 
; 954 |     // AUX PLL may not have started. Reset multiplier to 0 (bypass     
; 955 |     // PLL).                                                           
; 956 |     //                                                                 
;----------------------------------------------------------------------
        MOV       AL,*-SP[7]            ; [CPU_ALU] |951| 
        B         $C$L49,NEQ            ; [CPU_ALU] |951| 
        ; branchcc occurs ; [] |951| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 957,column 17,is_stmt,isa 0
;----------------------------------------------------------------------
; 957 | EALLOW;                                                                
;----------------------------------------------------------------------
        EALLOW    ; [CPU_ALU] |957| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 958,column 17,is_stmt,isa 0
;----------------------------------------------------------------------
; 958 | HWREGH(CLKCFG_BASE + SYSCTL_O_AUXPLLMULT) = 0U;                        
;----------------------------------------------------------------------
        MOVL      XAR4,#381470          ; [CPU_ARAU] |958| 
        MOV       *+XAR4[0],#0          ; [CPU_ALU] |958| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 959,column 17,is_stmt,isa 0
;----------------------------------------------------------------------
; 959 | EDIS;                                                                  
; 961 | //                                                                     
; 962 | // The user should put some handler code here based on how             
; 963 | // this condition should be handled in their application.              
; 964 | //                                                                     
;----------------------------------------------------------------------
        EDIS      ; [CPU_ALU] |959| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 965,column 17,is_stmt,isa 0
;----------------------------------------------------------------------
; 965 | ESTOP0;                                                                
; 968 | //                                                                     
; 969 | // Restore Timer 2 configuration                                       
; 970 | //                                                                     
;----------------------------------------------------------------------
 ESTOP0
$C$L49:    
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 971,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 971 | EALLOW;                                                                
;----------------------------------------------------------------------
        EALLOW    ; [CPU_ALU] |971| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 972,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 972 | HWREGH(CPUSYS_BASE + SYSCTL_O_TMR2CLKCTL) = t2CLKCTL;                  
;----------------------------------------------------------------------
        MOV       AL,*-SP[14]           ; [CPU_ALU] |972| 
        MOVL      XAR4,#381820          ; [CPU_ARAU] |972| 
        MOV       *+XAR4[0],AL          ; [CPU_ALU] |972| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 973,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 973 | HWREGH(CPUTIMER2_BASE + CPUTIMER_O_TCR) = t2TCR;                       
;----------------------------------------------------------------------
        MOV       *(0:0x0c14),*-SP[11]  ; [CPU_ALU] |973| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 974,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 974 | HWREG(CPUTIMER2_BASE + CPUTIMER_O_PRD) = t2PRD;                        
;----------------------------------------------------------------------
        MOV32     *(0:0x0c12),*-SP[4]   ; [CPU_FPU] |974| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 975,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 975 | HWREGH(CPUTIMER2_BASE + CPUTIMER_O_TPR) = t2TPR;                       
;----------------------------------------------------------------------
        MOV       *(0:0x0c16),*-SP[12]  ; [CPU_ALU] |975| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 976,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 976 | HWREGH(CPUTIMER2_BASE + CPUTIMER_O_TPRH) = t2TPRH;                     
; 978 | //                                                                     
; 979 | // Reload period value                                                 
; 980 | //                                                                     
;----------------------------------------------------------------------
        MOV       *(0:0x0c17),*-SP[13]  ; [CPU_ALU] |976| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 981,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 981 | HWREGH(CPUTIMER2_BASE + CPUTIMER_O_TCR) |= CPUTIMER_TCR_TRB;           
;----------------------------------------------------------------------
        MOV       AL,*(0:0x0c14)        ; [CPU_ALU] |981| 
        ORB       AL,#0x20              ; [CPU_ALU] |981| 
        MOV       *(0:0x0c14),AL        ; [CPU_ALU] |981| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 982,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 982 | EDIS;                                                                  
; 985 | else                                                                   
; 987 | //                                                                     
; 988 | // Enable AUXPLLCLK to be fed from AUXPLL                              
; 989 | //                                                                     
;----------------------------------------------------------------------
        EDIS      ; [CPU_ALU] |982| 
        B         $C$L53,UNC            ; [CPU_ALU] 
        ; branch occurs ; [] 
$C$L50:    
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 990,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 990 | EALLOW;                                                                
;----------------------------------------------------------------------
        EALLOW    ; [CPU_ALU] |990| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 991,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 991 | HWREGH(CLKCFG_BASE + SYSCTL_O_AUXPLLCTL1) |= SYSCTL_AUXPLLCTL1_PLLCLKEN
;     | ;                                                                      
;----------------------------------------------------------------------
        MOVL      XAR4,#381464          ; [CPU_ARAU] |991| 
        OR        *+XAR4[0],#0x0002     ; [CPU_ALU] |991| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 992,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 992 | SysCtl_delay(3U);                                                      
;----------------------------------------------------------------------
        MOVB      ACC,#3                ; [CPU_ALU] |992| 
$C$DW$119	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$119, DW_AT_low_pc(0x00)
	.dwattr $C$DW$119, DW_AT_name("_SysCtl_delay")
	.dwattr $C$DW$119, DW_AT_TI_call

        LCR       #_SysCtl_delay        ; [CPU_ALU] |992| 
        ; call occurs [#_SysCtl_delay] ; [] |992| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 993,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 993 | EDIS;                                                                  
; 996 | //                                                                     
; 997 | // Slip Bit Monitor                                                    
; 998 | // Re-lock routine for SLIP condition                                  
; 999 | //                                                                     
;----------------------------------------------------------------------
        EDIS      ; [CPU_ALU] |993| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 1000,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 1000 | while(((HWREGH(CLKCFG_BASE + SYSCTL_O_AUXPLLSTS) &                     
; 1001 |         SYSCTL_AUXPLLSTS_SLIPS) != 0U) && (attempts < 10U) &&          
; 1002 |       ((config & SYSCTL_AUXPLL_ENABLE) == SYSCTL_AUXPLL_ENABLE))       
;----------------------------------------------------------------------
        B         $C$L53,UNC            ; [CPU_ALU] |1000| 
        ; branch occurs ; [] |1000| 
$C$L51:    
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 1004,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 1004 | EALLOW;                                                                
; 1006 | //                                                                     
; 1007 | // Bypass AUXPLL                                                       
; 1008 | //                                                                     
;----------------------------------------------------------------------
        EALLOW    ; [CPU_ALU] |1004| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 1009,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 1009 | HWREGH(CLKCFG_BASE +                                                   
; 1010 |        SYSCTL_O_AUXPLLCTL1) &= ~SYSCTL_AUXPLLCTL1_PLLCLKEN;            
; 1012 | //                                                                     
; 1013 | // Delay of at least 120 OSCCLK cycles required post PLL bypass        
; 1014 | //                                                                     
;----------------------------------------------------------------------
        MOVL      XAR4,#381464          ; [CPU_ARAU] |1009| 
        AND       *+XAR4[0],#0xfffd     ; [CPU_ALU] |1009| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 1015,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 1015 | SysCtl_delay(23U);                                                     
; 1017 | //                                                                     
; 1018 | // Turn off AUXPLL                                                     
; 1019 | //                                                                     
;----------------------------------------------------------------------
        MOVB      ACC,#23               ; [CPU_ALU] |1015| 
        SPM       #0                    ; [CPU_ALU] 
$C$DW$120	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$120, DW_AT_low_pc(0x00)
	.dwattr $C$DW$120, DW_AT_name("_SysCtl_delay")
	.dwattr $C$DW$120, DW_AT_TI_call

        LCR       #_SysCtl_delay        ; [CPU_ALU] |1015| 
        ; call occurs [#_SysCtl_delay] ; [] |1015| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 1020,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 1020 | HWREGH(CLKCFG_BASE + SYSCTL_O_AUXPLLCTL1) &= ~SYSCTL_AUXPLLCTL1_PLLEN; 
;----------------------------------------------------------------------
        MOVL      XAR4,#381464          ; [CPU_ARAU] |1020| 
        AND       *+XAR4[0],#0xfffe     ; [CPU_ALU] |1020| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 1021,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 1021 | SysCtl_delay(3U);                                                      
; 1023 | //                                                                     
; 1024 | // Set integer and fractional multiplier, which automatically turns    
; 1025 | // on the PLL                                                          
; 1026 | //                                                                     
;----------------------------------------------------------------------
        MOVB      ACC,#3                ; [CPU_ALU] |1021| 
$C$DW$121	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$121, DW_AT_low_pc(0x00)
	.dwattr $C$DW$121, DW_AT_name("_SysCtl_delay")
	.dwattr $C$DW$121, DW_AT_TI_call

        LCR       #_SysCtl_delay        ; [CPU_ALU] |1021| 
        ; call occurs [#_SysCtl_delay] ; [] |1021| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 1027,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 1027 | HWREGH(CLKCFG_BASE + SYSCTL_O_AUXPLLMULT) |= pllMult;                  
; 1029 | //                                                                     
; 1030 | // Enable AUXPLL                                                       
; 1031 | //                                                                     
;----------------------------------------------------------------------
        MOV       AL,*-SP[5]            ; [CPU_ALU] |1027| 
        MOVL      XAR4,#381470          ; [CPU_ARAU] |1027| 
        OR        *+XAR4[0],AL          ; [CPU_ALU] |1027| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 1032,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 1032 | HWREGH(CLKCFG_BASE + SYSCTL_O_AUXPLLCTL1) |= SYSCTL_AUXPLLCTL1_PLLEN;  
; 1034 | //                                                                     
; 1035 | // Wait for the AUXPLL lock counter                                    
; 1036 | //                                                                     
;----------------------------------------------------------------------
        MOVL      XAR4,#381464          ; [CPU_ARAU] |1032| 
        OR        *+XAR4[0],#0x0001     ; [CPU_ALU] |1032| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 1037,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 1037 | while((HWREGH(CLKCFG_BASE + SYSCTL_O_AUXPLLSTS) &                      
;----------------------------------------------------------------------
        MOVL      XAR4,#381472          ; [CPU_ARAU] |1037| 
$C$L52:    
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 1037,column 15,is_stmt,isa 0
;----------------------------------------------------------------------
; 1038 | SYSCTL_AUXPLLSTS_LOCKS) != 1U)                                         
; 1040 | //                                                                     
; 1041 | // Consider to servicing the watchdog using                            
; 1042 | // SysCtl_serviceWatchdog()                                            
; 1043 | //                                                                     
; 1046 | //                                                                     
; 1047 | // Enable AUXPLLCLK to be fed from AUXPLL                              
; 1048 | //                                                                     
;----------------------------------------------------------------------
        MOV       AL,*+XAR4[0]          ; [CPU_ALU] |1037| 
        ANDB      AL,#0x01              ; [CPU_ALU] |1037| 
        CMPB      AL,#1                 ; [CPU_ALU] |1037| 
        B         $C$L52,NEQ            ; [CPU_ALU] |1037| 
        ; branchcc occurs ; [] |1037| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 1049,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 1049 | HWREGH(CLKCFG_BASE + SYSCTL_O_AUXPLLCTL1) |= SYSCTL_AUXPLLCTL1_PLLCLKEN
;     | ;                                                                      
;----------------------------------------------------------------------
        MOVL      XAR4,#381464          ; [CPU_ARAU] |1049| 
        OR        *+XAR4[0],#0x0002     ; [CPU_ALU] |1049| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 1051,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 1051 | SysCtl_delay(3U);                                                      
;----------------------------------------------------------------------
        MOVB      ACC,#3                ; [CPU_ALU] |1051| 
$C$DW$122	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$122, DW_AT_low_pc(0x00)
	.dwattr $C$DW$122, DW_AT_name("_SysCtl_delay")
	.dwattr $C$DW$122, DW_AT_TI_call

        LCR       #_SysCtl_delay        ; [CPU_ALU] |1051| 
        ; call occurs [#_SysCtl_delay] ; [] |1051| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 1053,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 1053 | attempts++;                                                            
;----------------------------------------------------------------------
        INC       *-SP[8]               ; [CPU_ALU] |1053| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 1055,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 1055 | EDIS;                                                                  
; 1058 | //                                                                     
; 1059 | // Set divider to desired value                                        
; 1060 | //                                                                     
;----------------------------------------------------------------------
        EDIS      ; [CPU_ALU] |1055| 
$C$L53:    
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 1000,column 11,is_stmt,isa 0
        MOVL      XAR4,#381472          ; [CPU_ARAU] |1000| 
        TBIT      *+XAR4[0],#1          ; [CPU_ALU] |1000| 
        B         $C$L54,NTC            ; [CPU_ALU] |1000| 
        ; branchcc occurs ; [] |1000| 
        MOV       AL,*-SP[8]            ; [CPU_ALU] |1000| 
        CMPB      AL,#10                ; [CPU_ALU] |1000| 
        B         $C$L54,HIS            ; [CPU_ALU] |1000| 
        ; branchcc occurs ; [] |1000| 
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |1000| 
        MOV       PL,#0                 ; [CPU_ALU] |1000| 
        MOV       PH,#32768             ; [CPU_ALU] |1000| 
        ANDB      AL,#0                 ; [CPU_ALU] |1000| 
        AND       AH,#32768             ; [CPU_ALU] |1000| 
        CMPL      ACC,P                 ; [CPU_ALU] |1000| 
        B         $C$L51,EQ             ; [CPU_ALU] |1000| 
        ; branchcc occurs ; [] |1000| 
$C$L54:    
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 1061,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 1061 | EALLOW;                                                                
;----------------------------------------------------------------------
        EALLOW    ; [CPU_ALU] |1061| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 1062,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 1062 | HWREGH(CLKCFG_BASE + SYSCTL_O_AUXCLKDIVSEL) =                          
; 1063 |     (uint16_t)(config & SYSCTL_SYSDIV_M) >> SYSCTL_SYSDIV_S;           
;----------------------------------------------------------------------
        AND       AL,*-SP[2],#0x1f80    ; [CPU_ALU] |1062| 
        MOVL      XAR4,#381476          ; [CPU_ARAU] |1062| 
        LSR       AL,7                  ; [CPU_ALU] |1062| 
        MOV       *+XAR4[0],AL          ; [CPU_ALU] |1062| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 1064,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 1064 | EDIS;                                                                  
;----------------------------------------------------------------------
        EDIS      ; [CPU_ALU] |1064| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 1066,column 1,is_stmt,isa 0
        SPM       #0                    ; [CPU_ALU] 
        SUBB      SP,#14                ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$123	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$123, DW_AT_low_pc(0x00)
	.dwattr $C$DW$123, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$101, DW_AT_TI_end_file("C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c")
	.dwattr $C$DW$101, DW_AT_TI_end_line(0x42a)
	.dwattr $C$DW$101, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$101

	.sect	".text"
	.clink
	.global	_SysCtl_selectXTAL

$C$DW$124	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$124, DW_AT_name("SysCtl_selectXTAL")
	.dwattr $C$DW$124, DW_AT_low_pc(_SysCtl_selectXTAL)
	.dwattr $C$DW$124, DW_AT_high_pc(0x00)
	.dwattr $C$DW$124, DW_AT_TI_symbol_name("_SysCtl_selectXTAL")
	.dwattr $C$DW$124, DW_AT_external
	.dwattr $C$DW$124, DW_AT_TI_begin_file("C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c")
	.dwattr $C$DW$124, DW_AT_TI_begin_line(0x433)
	.dwattr $C$DW$124, DW_AT_TI_begin_column(0x01)
	.dwattr $C$DW$124, DW_AT_TI_max_frame_size(-10)
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 1076,column 1,is_stmt,address _SysCtl_selectXTAL,isa 0

	.dwfde $C$DW$CIE, _SysCtl_selectXTAL
;----------------------------------------------------------------------
; 1075 | SysCtl_selectXTAL(void)                                                
; 1077 | uint16_t t2TCR, t2TPR, t2TPRH, t2CLKCTL;                               
; 1078 | uint32_t t2PRD;                                                        
; 1080 |     //                                                                 
; 1081 | // Backup CPU timer2 settings                                          
; 1082 | //                                                                     
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _SysCtl_selectXTAL            FR SIZE:   8           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter,  6 Auto,  0 SOE     *
;***************************************************************

_SysCtl_selectXTAL:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#8                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -10
$C$DW$125	.dwtag  DW_TAG_variable
	.dwattr $C$DW$125, DW_AT_name("t2PRD")
	.dwattr $C$DW$125, DW_AT_TI_symbol_name("_t2PRD")
	.dwattr $C$DW$125, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$125, DW_AT_location[DW_OP_breg20 -4]

$C$DW$126	.dwtag  DW_TAG_variable
	.dwattr $C$DW$126, DW_AT_name("t2TCR")
	.dwattr $C$DW$126, DW_AT_TI_symbol_name("_t2TCR")
	.dwattr $C$DW$126, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$126, DW_AT_location[DW_OP_breg20 -5]

$C$DW$127	.dwtag  DW_TAG_variable
	.dwattr $C$DW$127, DW_AT_name("t2TPR")
	.dwattr $C$DW$127, DW_AT_TI_symbol_name("_t2TPR")
	.dwattr $C$DW$127, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$127, DW_AT_location[DW_OP_breg20 -6]

$C$DW$128	.dwtag  DW_TAG_variable
	.dwattr $C$DW$128, DW_AT_name("t2TPRH")
	.dwattr $C$DW$128, DW_AT_TI_symbol_name("_t2TPRH")
	.dwattr $C$DW$128, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$128, DW_AT_location[DW_OP_breg20 -7]

$C$DW$129	.dwtag  DW_TAG_variable
	.dwattr $C$DW$129, DW_AT_name("t2CLKCTL")
	.dwattr $C$DW$129, DW_AT_TI_symbol_name("_t2CLKCTL")
	.dwattr $C$DW$129, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$129, DW_AT_location[DW_OP_breg20 -8]

	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 1083,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 1083 | t2CLKCTL = HWREGH(CPUSYS_BASE + SYSCTL_O_TMR2CLKCTL);                  
;----------------------------------------------------------------------
        MOVL      XAR4,#381820          ; [CPU_ARAU] |1083| 
        MOV       AL,*+XAR4[0]          ; [CPU_ALU] |1083| 
        MOV       *-SP[8],AL            ; [CPU_ALU] |1083| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 1084,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 1084 | t2TCR = HWREGH(CPUTIMER2_BASE + CPUTIMER_O_TCR);                       
;----------------------------------------------------------------------
        MOV       *-SP[5],*(0:0x0c14)   ; [CPU_ALU] |1084| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 1085,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 1085 | t2PRD = HWREG(CPUTIMER2_BASE + CPUTIMER_O_PRD);                        
;----------------------------------------------------------------------
        MOV32     *-SP[4],*(0:0x0c12)   ; [CPU_FPU] |1085| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 1086,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 1086 | t2TPR = HWREGH(CPUTIMER2_BASE + CPUTIMER_O_TPR);                       
;----------------------------------------------------------------------
        MOV       *-SP[6],*(0:0x0c16)   ; [CPU_ALU] |1086| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 1087,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 1087 | t2TPRH = HWREGH(CPUTIMER2_BASE + CPUTIMER_O_TPRH);                     
; 1090 |     //                                                                 
; 1091 |     // Disable cpu timer 2 interrupt                                   
; 1092 |     //                                                                 
;----------------------------------------------------------------------
        MOV       *-SP[7],*(0:0x0c17)   ; [CPU_ALU] |1087| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 1093,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 1093 | CPUTimer_disableInterrupt(CPUTIMER2_BASE);                             
; 1095 | //                                                                     
; 1096 | // Stop cpu timer 2 if running                                         
; 1097 | //                                                                     
;----------------------------------------------------------------------
        MOV       ACC,#3088             ; [CPU_ALU] |1093| 
$C$DW$130	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$130, DW_AT_low_pc(0x00)
	.dwattr $C$DW$130, DW_AT_name("_CPUTimer_disableInterrupt")
	.dwattr $C$DW$130, DW_AT_TI_call

        LCR       #_CPUTimer_disableInterrupt ; [CPU_ALU] |1093| 
        ; call occurs [#_CPUTimer_disableInterrupt] ; [] |1093| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 1098,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 1098 | CPUTimer_stopTimer(CPUTIMER2_BASE);                                    
; 1100 | //                                                                     
; 1101 | // Initialize cpu timer 2 period                                       
; 1102 | //                                                                     
;----------------------------------------------------------------------
        MOV       ACC,#3088             ; [CPU_ALU] |1098| 
$C$DW$131	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$131, DW_AT_low_pc(0x00)
	.dwattr $C$DW$131, DW_AT_name("_CPUTimer_stopTimer")
	.dwattr $C$DW$131, DW_AT_TI_call

        LCR       #_CPUTimer_stopTimer  ; [CPU_ALU] |1098| 
        ; call occurs [#_CPUTimer_stopTimer] ; [] |1098| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 1103,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 1103 | CPUTimer_setPeriod(CPUTIMER2_BASE, XTAL_CPUTIMER_PERIOD);              
; 1105 | //                                                                     
; 1106 | // Set cpu timer 2 clock source to XTAL                                
; 1107 | //                                                                     
;----------------------------------------------------------------------
        MOVL      XAR5,#3088            ; [CPU_ARAU] |1103| 
        MOVL      XAR4,#1023            ; [CPU_ARAU] |1103| 
        MOVL      ACC,XAR5              ; [CPU_ALU] |1103| 
        MOVL      *-SP[2],XAR4          ; [CPU_ALU] |1103| 
$C$DW$132	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$132, DW_AT_low_pc(0x00)
	.dwattr $C$DW$132, DW_AT_name("_CPUTimer_setPeriod")
	.dwattr $C$DW$132, DW_AT_TI_call

        LCR       #_CPUTimer_setPeriod  ; [CPU_ALU] |1103| 
        ; call occurs [#_CPUTimer_setPeriod] ; [] |1103| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 1108,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 1108 | CPUTimer_selectClockSource(CPUTIMER2_BASE, CPUTIMER_CLOCK_SOURCE_XTAL, 
; 1109 |                            CPUTIMER_CLOCK_PRESCALER_1);                
; 1111 | //                                                                     
; 1112 | // Clear cpu timer 2 overflow flag                                     
; 1113 | //                                                                     
;----------------------------------------------------------------------
        MOVB      XAR4,#3               ; [CPU_ALU] |1108| 
        MOVL      ACC,XAR5              ; [CPU_ALU] |1108| 
        MOVB      XAR5,#0               ; [CPU_ALU] |1108| 
$C$DW$133	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$133, DW_AT_low_pc(0x00)
	.dwattr $C$DW$133, DW_AT_name("_CPUTimer_selectClockSource")
	.dwattr $C$DW$133, DW_AT_TI_call

        LCR       #_CPUTimer_selectClockSource ; [CPU_ALU] |1108| 
        ; call occurs [#_CPUTimer_selectClockSource] ; [] |1108| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 1114,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 1114 | CPUTimer_clearOverflowFlag(CPUTIMER2_BASE);                            
; 1116 | //                                                                     
; 1117 | // Start cpu timer 2                                                   
; 1118 | //                                                                     
;----------------------------------------------------------------------
        MOV       ACC,#3088             ; [CPU_ALU] |1114| 
$C$DW$134	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$134, DW_AT_low_pc(0x00)
	.dwattr $C$DW$134, DW_AT_name("_CPUTimer_clearOverflowFlag")
	.dwattr $C$DW$134, DW_AT_TI_call

        LCR       #_CPUTimer_clearOverflowFlag ; [CPU_ALU] |1114| 
        ; call occurs [#_CPUTimer_clearOverflowFlag] ; [] |1114| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 1119,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 1119 | CPUTimer_startTimer(CPUTIMER2_BASE);                                   
;----------------------------------------------------------------------
        MOV       ACC,#3088             ; [CPU_ALU] |1119| 
$C$DW$135	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$135, DW_AT_low_pc(0x00)
	.dwattr $C$DW$135, DW_AT_name("_CPUTimer_startTimer")
	.dwattr $C$DW$135, DW_AT_TI_call

        LCR       #_CPUTimer_startTimer ; [CPU_ALU] |1119| 
        ; call occurs [#_CPUTimer_startTimer] ; [] |1119| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 1121,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 1121 | EALLOW;                                                                
; 1122 | //                                                                     
; 1123 | // Turn on XTAL                                                        
; 1124 | //                                                                     
;----------------------------------------------------------------------
        EALLOW    ; [CPU_ALU] |1121| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 1125,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 1125 | HWREGH(CLKCFG_BASE + SYSCTL_O_CLKSRCCTL1) &= ~SYSCTL_CLKSRCCTL1_XTALOFF
;     | ;                                                                      
;----------------------------------------------------------------------
        MOVL      XAR4,#381448          ; [CPU_ARAU] |1125| 
        AND       *+XAR4[0],#0xffef     ; [CPU_ALU] |1125| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 1126,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 1126 | EDIS;                                                                  
; 1128 | //                                                                     
; 1129 | // Wait for the X1 clock to overflow cpu timer 2                       
; 1130 | //                                                                     
;----------------------------------------------------------------------
        EDIS      ; [CPU_ALU] |1126| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 1131,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 1131 | SysCtl_pollCpuTimer();                                                 
; 1133 | //                                                                     
; 1134 | // Select XTAL as the oscillator source                                
; 1135 | //                                                                     
;----------------------------------------------------------------------
$C$DW$136	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$136, DW_AT_low_pc(0x00)
	.dwattr $C$DW$136, DW_AT_name("_SysCtl_pollCpuTimer")
	.dwattr $C$DW$136, DW_AT_TI_call

        LCR       #_SysCtl_pollCpuTimer ; [CPU_ALU] |1131| 
        ; call occurs [#_SysCtl_pollCpuTimer] ; [] |1131| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 1136,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 1136 | EALLOW;                                                                
;----------------------------------------------------------------------
        EALLOW    ; [CPU_ALU] |1136| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 1137,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 1137 | HWREGH(CLKCFG_BASE + SYSCTL_O_CLKSRCCTL1) =                            
; 1138 | ((HWREGH(CLKCFG_BASE + SYSCTL_O_CLKSRCCTL1) &                          
; 1139 |   (~SYSCTL_CLKSRCCTL1_OSCCLKSRCSEL_M)) |                               
; 1140 |  ((uint32_t)SYSCTL_OSCSRC_XTAL >> SYSCTL_OSCSRC_S));                   
;----------------------------------------------------------------------
        MOVL      XAR4,#381448          ; [CPU_ARAU] |1137| 
        AND       AL,*+XAR4[0],#0xfffc  ; [CPU_ALU] |1137| 
        ORB       AL,#0x01              ; [CPU_ALU] |1137| 
        MOV       *+XAR4[0],AL          ; [CPU_ALU] |1137| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 1141,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 1141 | EDIS;                                                                  
; 1143 | //                                                                     
; 1144 | // If a missing clock failure was detected, try waiting for the cpu tim
;     | er 2                                                                   
; 1145 | // to overflow again.                                                  
; 1146 | //                                                                     
;----------------------------------------------------------------------
        EDIS      ; [CPU_ALU] |1141| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 1147,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 1147 | while(SysCtl_isMCDClockFailureDetected())                              
; 1149 |     //                                                                 
; 1150 |     // Clear the MCD failure                                           
; 1151 |     //                                                                 
;----------------------------------------------------------------------
        B         $C$L56,UNC            ; [CPU_ALU] |1147| 
        ; branch occurs ; [] |1147| 
$C$L55:    
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 1152,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 1152 | SysCtl_resetMCD();                                                     
; 1154 | //                                                                     
; 1155 | // Wait for the X1 clock to overflow cpu timer 2                       
; 1156 | //                                                                     
;----------------------------------------------------------------------
$C$DW$137	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$137, DW_AT_low_pc(0x00)
	.dwattr $C$DW$137, DW_AT_name("_SysCtl_resetMCD")
	.dwattr $C$DW$137, DW_AT_TI_call

        LCR       #_SysCtl_resetMCD     ; [CPU_ALU] |1152| 
        ; call occurs [#_SysCtl_resetMCD] ; [] |1152| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 1157,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 1157 | SysCtl_pollCpuTimer();                                                 
; 1159 | //                                                                     
; 1160 | // Select XTAL as the oscillator source                                
; 1161 | //                                                                     
;----------------------------------------------------------------------
$C$DW$138	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$138, DW_AT_low_pc(0x00)
	.dwattr $C$DW$138, DW_AT_name("_SysCtl_pollCpuTimer")
	.dwattr $C$DW$138, DW_AT_TI_call

        LCR       #_SysCtl_pollCpuTimer ; [CPU_ALU] |1157| 
        ; call occurs [#_SysCtl_pollCpuTimer] ; [] |1157| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 1162,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 1162 | EALLOW;                                                                
;----------------------------------------------------------------------
        EALLOW    ; [CPU_ALU] |1162| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 1163,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 1163 | HWREGH(CLKCFG_BASE + SYSCTL_O_CLKSRCCTL1) =                            
; 1164 | ((HWREGH(CLKCFG_BASE + SYSCTL_O_CLKSRCCTL1) &                          
; 1165 |   (~SYSCTL_CLKSRCCTL1_OSCCLKSRCSEL_M)) |                               
; 1166 |  ((uint32_t)SYSCTL_OSCSRC_XTAL >> SYSCTL_OSCSRC_S));                   
;----------------------------------------------------------------------
        MOVL      XAR4,#381448          ; [CPU_ARAU] |1163| 
        AND       AL,*+XAR4[0],#0xfffc  ; [CPU_ALU] |1163| 
        ORB       AL,#0x01              ; [CPU_ALU] |1163| 
        MOV       *+XAR4[0],AL          ; [CPU_ALU] |1163| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 1167,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 1167 | EDIS;                                                                  
;----------------------------------------------------------------------
        EDIS      ; [CPU_ALU] |1167| 
$C$L56:    
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 1168,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 1170 | //                                                                     
; 1171 | // Stop cpu timer 2                                                    
; 1172 | //                                                                     
;----------------------------------------------------------------------
$C$DW$139	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$139, DW_AT_low_pc(0x00)
	.dwattr $C$DW$139, DW_AT_name("_SysCtl_isMCDClockFailureDetected")
	.dwattr $C$DW$139, DW_AT_TI_call

        LCR       #_SysCtl_isMCDClockFailureDetected ; [CPU_ALU] |1168| 
        ; call occurs [#_SysCtl_isMCDClockFailureDetected] ; [] |1168| 
        CMPB      AL,#0                 ; [CPU_ALU] |1168| 
        B         $C$L55,NEQ            ; [CPU_ALU] |1168| 
        ; branchcc occurs ; [] |1168| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 1173,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 1173 | CPUTimer_stopTimer(CPUTIMER2_BASE);                                    
; 1175 | //                                                                     
; 1176 | // Restore Timer 2 configuration                                       
; 1177 | //                                                                     
;----------------------------------------------------------------------
        MOV       ACC,#3088             ; [CPU_ALU] |1173| 
$C$DW$140	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$140, DW_AT_low_pc(0x00)
	.dwattr $C$DW$140, DW_AT_name("_CPUTimer_stopTimer")
	.dwattr $C$DW$140, DW_AT_TI_call

        LCR       #_CPUTimer_stopTimer  ; [CPU_ALU] |1173| 
        ; call occurs [#_CPUTimer_stopTimer] ; [] |1173| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 1178,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 1178 | EALLOW;                                                                
;----------------------------------------------------------------------
        EALLOW    ; [CPU_ALU] |1178| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 1179,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 1179 | HWREGH(CPUSYS_BASE + SYSCTL_O_TMR2CLKCTL) = t2CLKCTL;                  
;----------------------------------------------------------------------
        MOV       AL,*-SP[8]            ; [CPU_ALU] |1179| 
        MOVL      XAR4,#381820          ; [CPU_ARAU] |1179| 
        MOV       *+XAR4[0],AL          ; [CPU_ALU] |1179| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 1180,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 1180 | HWREGH(CPUTIMER2_BASE + CPUTIMER_O_TCR) = t2TCR;                       
;----------------------------------------------------------------------
        MOV       *(0:0x0c14),*-SP[5]   ; [CPU_ALU] |1180| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 1181,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 1181 | HWREG(CPUTIMER2_BASE + CPUTIMER_O_PRD) = t2PRD;                        
;----------------------------------------------------------------------
        MOV32     *(0:0x0c12),*-SP[4]   ; [CPU_FPU] |1181| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 1182,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 1182 | HWREGH(CPUTIMER2_BASE + CPUTIMER_O_TPR) = t2TPR;                       
;----------------------------------------------------------------------
        MOV       *(0:0x0c16),*-SP[6]   ; [CPU_ALU] |1182| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 1183,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 1183 | HWREGH(CPUTIMER2_BASE + CPUTIMER_O_TPRH) = t2TPRH;                     
;----------------------------------------------------------------------
        MOV       *(0:0x0c17),*-SP[7]   ; [CPU_ALU] |1183| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 1184,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 1184 | HWREGH(CPUTIMER2_BASE + CPUTIMER_O_TCR) |= CPUTIMER_TCR_TRB;           
;----------------------------------------------------------------------
        MOV       AL,*(0:0x0c14)        ; [CPU_ALU] |1184| 
        ORB       AL,#0x20              ; [CPU_ALU] |1184| 
        MOV       *(0:0x0c14),AL        ; [CPU_ALU] |1184| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 1185,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 1185 | EDIS;                                                                  
;----------------------------------------------------------------------
        EDIS      ; [CPU_ALU] |1185| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 1186,column 1,is_stmt,isa 0
        SUBB      SP,#8                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$141	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$141, DW_AT_low_pc(0x00)
	.dwattr $C$DW$141, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$124, DW_AT_TI_end_file("C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c")
	.dwattr $C$DW$124, DW_AT_TI_end_line(0x4a2)
	.dwattr $C$DW$124, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$124

	.sect	".text"
	.clink
	.global	_SysCtl_selectOscSource

$C$DW$142	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$142, DW_AT_name("SysCtl_selectOscSource")
	.dwattr $C$DW$142, DW_AT_low_pc(_SysCtl_selectOscSource)
	.dwattr $C$DW$142, DW_AT_high_pc(0x00)
	.dwattr $C$DW$142, DW_AT_TI_symbol_name("_SysCtl_selectOscSource")
	.dwattr $C$DW$142, DW_AT_external
	.dwattr $C$DW$142, DW_AT_TI_begin_file("C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c")
	.dwattr $C$DW$142, DW_AT_TI_begin_line(0x4aa)
	.dwattr $C$DW$142, DW_AT_TI_begin_column(0x01)
	.dwattr $C$DW$142, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 1195,column 1,is_stmt,address _SysCtl_selectOscSource,isa 0

	.dwfde $C$DW$CIE, _SysCtl_selectOscSource
$C$DW$143	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$143, DW_AT_name("oscSource")
	.dwattr $C$DW$143, DW_AT_TI_symbol_name("_oscSource")
	.dwattr $C$DW$143, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$143, DW_AT_location[DW_OP_reg0]

;----------------------------------------------------------------------
; 1194 | SysCtl_selectOscSource(uint32_t oscSource)                             
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _SysCtl_selectOscSource       FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  2 Auto,  0 SOE     *
;***************************************************************

_SysCtl_selectOscSource:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
$C$DW$144	.dwtag  DW_TAG_variable
	.dwattr $C$DW$144, DW_AT_name("oscSource")
	.dwattr $C$DW$144, DW_AT_TI_symbol_name("_oscSource")
	.dwattr $C$DW$144, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$144, DW_AT_location[DW_OP_breg20 -2]

;----------------------------------------------------------------------
; 1196 | ASSERT((oscSource == SYSCTL_OSCSRC_OSC1) |                             
; 1197 |        (oscSource == SYSCTL_OSCSRC_OSC2) |                             
; 1198 |        (oscSource == SYSCTL_OSCSRC_XTAL));                             
; 1200 | //                                                                     
; 1201 | // Select the specified source.                                        
; 1202 | //                                                                     
;----------------------------------------------------------------------
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |1195| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 1203,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 1203 | EALLOW;                                                                
;----------------------------------------------------------------------
        EALLOW    ; [CPU_ALU] |1203| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 1204,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 1204 | switch(oscSource)                                                      
; 1206 |     case SYSCTL_OSCSRC_OSC2:                                           
; 1207 |         //                                                             
; 1208 |         // Turn on INTOSC2                                             
; 1209 |         //                                                             
;----------------------------------------------------------------------
        B         $C$L60,UNC            ; [CPU_ALU] |1204| 
        ; branch occurs ; [] |1204| 
$C$L57:    
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 1210,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 1210 | HWREGH(CLKCFG_BASE + SYSCTL_O_CLKSRCCTL1) &=                           
; 1211 |     ~SYSCTL_CLKSRCCTL1_INTOSC2OFF;                                     
;----------------------------------------------------------------------
        MOVL      XAR4,#381448          ; [CPU_ARAU] |1210| 
        AND       *+XAR4[0],#0xfff7     ; [CPU_ALU] |1210| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 1213,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 1213 | SYSCTL_CLKSRCCTL1_DELAY;                                               
; 1215 | //                                                                     
; 1216 | // Clk Src = INTOSC2                                                   
; 1217 | //                                                                     
;----------------------------------------------------------------------
 RPT #250 || NOP 
 RPT #50 || NOP
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 1218,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 1218 | HWREGH(CLKCFG_BASE + SYSCTL_O_CLKSRCCTL1) &=                           
; 1219 |     ~SYSCTL_CLKSRCCTL1_OSCCLKSRCSEL_M;                                 
;----------------------------------------------------------------------
        AND       *+XAR4[0],#0xfffc     ; [CPU_ALU] |1218| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 1221,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 1221 | SYSCTL_CLKSRCCTL1_DELAY;                                               
; 1223 | //                                                                     
; 1224 | // Turn off XTALOSC                                                    
; 1225 | //                                                                     
;----------------------------------------------------------------------
 RPT #250 || NOP 
 RPT #50 || NOP
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 1226,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 1226 | HWREGH(CLKCFG_BASE + SYSCTL_O_CLKSRCCTL1) |=                           
; 1227 |     SYSCTL_CLKSRCCTL1_XTALOFF;                                         
;----------------------------------------------------------------------
        OR        *+XAR4[0],#0x0010     ; [CPU_ALU] |1226| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 1229,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 1229 | break;                                                                 
; 1231 | case SYSCTL_OSCSRC_XTAL:                                               
; 1232 | //                                                                     
; 1233 | // Select XTAL in crystal mode and wait for it to power up             
; 1234 | //                                                                     
;----------------------------------------------------------------------
        B         $C$L61,UNC            ; [CPU_ALU] |1229| 
        ; branch occurs ; [] |1229| 
$C$L58:    
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 1235,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 1235 | SysCtl_selectXTAL();                                                   
;----------------------------------------------------------------------
$C$DW$145	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$145, DW_AT_low_pc(0x00)
	.dwattr $C$DW$145, DW_AT_name("_SysCtl_selectXTAL")
	.dwattr $C$DW$145, DW_AT_TI_call

        LCR       #_SysCtl_selectXTAL   ; [CPU_ALU] |1235| 
        ; call occurs [#_SysCtl_selectXTAL] ; [] |1235| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 1236,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 1236 | break;                                                                 
; 1238 | case SYSCTL_OSCSRC_OSC1:                                               
; 1239 | //                                                                     
; 1240 | // Clk Src = INTOSC1                                                   
; 1241 | //                                                                     
;----------------------------------------------------------------------
        B         $C$L61,UNC            ; [CPU_ALU] |1236| 
        ; branch occurs ; [] |1236| 
$C$L59:    
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 1242,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 1242 | HWREGH(CLKCFG_BASE + SYSCTL_O_CLKSRCCTL1) =                            
; 1243 |        (HWREGH(CLKCFG_BASE + SYSCTL_O_CLKSRCCTL1) &                    
; 1244 |         ~SYSCTL_CLKSRCCTL1_OSCCLKSRCSEL_M) |                           
; 1245 |        ((uint32_t)SYSCTL_OSCSRC_OSC1 >> SYSCTL_OSCSRC_S);              
;----------------------------------------------------------------------
        MOVL      XAR4,#381448          ; [CPU_ARAU] |1242| 
        AND       AL,*+XAR4[0],#0xfffc  ; [CPU_ALU] |1242| 
        ORB       AL,#0x02              ; [CPU_ALU] |1242| 
        MOV       *+XAR4[0],AL          ; [CPU_ALU] |1242| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 1247,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 1247 | SYSCTL_CLKSRCCTL1_DELAY;                                               
; 1249 | //                                                                     
; 1250 | //Turn off XTALOSC                                                     
; 1251 | //                                                                     
;----------------------------------------------------------------------
 RPT #250 || NOP 
 RPT #50 || NOP
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 1252,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 1252 | HWREGH(CLKCFG_BASE + SYSCTL_O_CLKSRCCTL1) |=                           
; 1253 |     SYSCTL_CLKSRCCTL1_XTALOFF;                                         
;----------------------------------------------------------------------
        OR        *+XAR4[0],#0x0010     ; [CPU_ALU] |1252| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 1255,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 1255 | break;                                                                 
; 1257 | default:                                                               
; 1258 | //                                                                     
; 1259 | // Do nothing. Not a valid oscSource value.                            
; 1260 | //                                                                     
; 1261 | break;                                                                 
;----------------------------------------------------------------------
        B         $C$L61,UNC            ; [CPU_ALU] |1255| 
        ; branch occurs ; [] |1255| 
$C$L60:    
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 1204,column 5,is_stmt,isa 0
        TEST      ACC                   ; [CPU_ALU] |1204| 
        MOVL      XAR6,*-SP[2]          ; [CPU_FPU] |1204| 
        B         $C$L57,EQ             ; [CPU_ALU] |1204| 
        ; branchcc occurs ; [] |1204| 
        MOVL      XAR4,#65536           ; [CPU_ARAU] |1204| 
        MOVL      ACC,XAR4              ; [CPU_ALU] |1204| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |1204| 
        B         $C$L58,EQ             ; [CPU_ALU] |1204| 
        ; branchcc occurs ; [] |1204| 
        MOVL      XAR4,#131072          ; [CPU_ARAU] |1204| 
        MOVL      ACC,XAR4              ; [CPU_ALU] |1204| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |1204| 
        B         $C$L59,EQ             ; [CPU_ALU] |1204| 
        ; branchcc occurs ; [] |1204| 
$C$L61:    
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 1263,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 1263 | EDIS;                                                                  
;----------------------------------------------------------------------
        EDIS      ; [CPU_ALU] |1263| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 1264,column 1,is_stmt,isa 0
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
        SPM       #0                    ; [CPU_ALU] 
$C$DW$146	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$146, DW_AT_low_pc(0x00)
	.dwattr $C$DW$146, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$142, DW_AT_TI_end_file("C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c")
	.dwattr $C$DW$142, DW_AT_TI_end_line(0x4f0)
	.dwattr $C$DW$142, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$142

	.sect	".text"
	.clink
	.global	_SysCtl_selectOscSourceAuxPLL

$C$DW$147	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$147, DW_AT_name("SysCtl_selectOscSourceAuxPLL")
	.dwattr $C$DW$147, DW_AT_low_pc(_SysCtl_selectOscSourceAuxPLL)
	.dwattr $C$DW$147, DW_AT_high_pc(0x00)
	.dwattr $C$DW$147, DW_AT_TI_symbol_name("_SysCtl_selectOscSourceAuxPLL")
	.dwattr $C$DW$147, DW_AT_external
	.dwattr $C$DW$147, DW_AT_TI_begin_file("C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c")
	.dwattr $C$DW$147, DW_AT_TI_begin_line(0x4f8)
	.dwattr $C$DW$147, DW_AT_TI_begin_column(0x01)
	.dwattr $C$DW$147, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 1273,column 1,is_stmt,address _SysCtl_selectOscSourceAuxPLL,isa 0

	.dwfde $C$DW$CIE, _SysCtl_selectOscSourceAuxPLL
$C$DW$148	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$148, DW_AT_name("oscSource")
	.dwattr $C$DW$148, DW_AT_TI_symbol_name("_oscSource")
	.dwattr $C$DW$148, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$148, DW_AT_location[DW_OP_reg0]

;----------------------------------------------------------------------
; 1272 | SysCtl_selectOscSourceAuxPLL(uint32_t oscSource)                       
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _SysCtl_selectOscSourceAuxPLL FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  2 Auto,  0 SOE     *
;***************************************************************

_SysCtl_selectOscSourceAuxPLL:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
$C$DW$149	.dwtag  DW_TAG_variable
	.dwattr $C$DW$149, DW_AT_name("oscSource")
	.dwattr $C$DW$149, DW_AT_TI_symbol_name("_oscSource")
	.dwattr $C$DW$149, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$149, DW_AT_location[DW_OP_breg20 -2]

        MOVL      *-SP[2],ACC           ; [CPU_ALU] |1273| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 1274,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 1274 | EALLOW;                                                                
;----------------------------------------------------------------------
        EALLOW    ; [CPU_ALU] |1274| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 1276,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 1276 | switch(oscSource)                                                      
; 1278 |     case SYSCTL_AUXPLL_OSCSRC_OSC2:                                    
; 1279 |         //                                                             
; 1280 |         // Turn on INTOSC2                                             
; 1281 |         //                                                             
;----------------------------------------------------------------------
        B         $C$L65,UNC            ; [CPU_ALU] |1276| 
        ; branch occurs ; [] |1276| 
$C$L62:    
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 1282,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 1282 | HWREGH(CLKCFG_BASE + SYSCTL_O_CLKSRCCTL1) &=                           
; 1283 |         ~(SYSCTL_CLKSRCCTL1_INTOSC2OFF);                               
; 1285 | //                                                                     
; 1286 | // Clk Src = INTOSC2                                                   
; 1287 | //                                                                     
;----------------------------------------------------------------------
        MOVL      XAR4,#381448          ; [CPU_ARAU] |1282| 
        AND       *+XAR4[0],#0xfff7     ; [CPU_ALU] |1282| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 1288,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 1288 | HWREGH(CLKCFG_BASE + SYSCTL_O_CLKSRCCTL2) &=                           
; 1289 |         ~(SYSCTL_CLKSRCCTL2_AUXOSCCLKSRCSEL_M);                        
;----------------------------------------------------------------------
        MOVL      XAR4,#381450          ; [CPU_ARAU] |1288| 
        AND       *+XAR4[0],#0xfffc     ; [CPU_ALU] |1288| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 1290,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 1290 | break;                                                                 
; 1292 | case SYSCTL_AUXPLL_OSCSRC_XTAL:                                        
; 1293 | //                                                                     
; 1294 | // Turn on XTALOSC                                                     
; 1295 | //                                                                     
;----------------------------------------------------------------------
        B         $C$L66,UNC            ; [CPU_ALU] |1290| 
        ; branch occurs ; [] |1290| 
$C$L63:    
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 1296,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 1296 | HWREGH(CLKCFG_BASE + SYSCTL_O_CLKSRCCTL1) &=                           
; 1297 |        ~(SYSCTL_CLKSRCCTL1_XTALOFF);                                   
; 1299 | //                                                                     
; 1300 | // Clk Src = XTAL                                                      
; 1301 | //                                                                     
;----------------------------------------------------------------------
        MOVL      XAR4,#381448          ; [CPU_ARAU] |1296| 
        AND       *+XAR4[0],#0xffef     ; [CPU_ALU] |1296| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 1302,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 1302 | HWREGH(CLKCFG_BASE + SYSCTL_O_CLKSRCCTL2) =                            
; 1303 |         (HWREGH(CLKCFG_BASE + SYSCTL_O_CLKSRCCTL2) &                   
; 1304 |          ~(SYSCTL_CLKSRCCTL2_AUXOSCCLKSRCSEL_M)) |                     
; 1305 |         (1U << SYSCTL_CLKSRCCTL2_AUXOSCCLKSRCSEL_S);                   
;----------------------------------------------------------------------
        MOVL      XAR4,#381450          ; [CPU_ARAU] |1302| 
        AND       AL,*+XAR4[0],#0xfffc  ; [CPU_ALU] |1302| 
        ORB       AL,#0x01              ; [CPU_ALU] |1302| 
        MOV       *+XAR4[0],AL          ; [CPU_ALU] |1302| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 1306,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 1306 | break;                                                                 
; 1308 | case SYSCTL_AUXPLL_OSCSRC_AUXCLKIN:                                    
; 1309 | //                                                                     
; 1310 | // Clk Src = AUXCLKIN                                                  
; 1311 | //                                                                     
;----------------------------------------------------------------------
        B         $C$L66,UNC            ; [CPU_ALU] |1306| 
        ; branch occurs ; [] |1306| 
$C$L64:    
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 1312,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 1312 | HWREGH(CLKCFG_BASE + SYSCTL_O_CLKSRCCTL2) =                            
; 1313 |         (HWREGH(CLKCFG_BASE + SYSCTL_O_CLKSRCCTL2) &                   
; 1314 |          ~(SYSCTL_CLKSRCCTL2_AUXOSCCLKSRCSEL_M)) |                     
; 1315 |         (2U << SYSCTL_CLKSRCCTL2_AUXOSCCLKSRCSEL_S);                   
;----------------------------------------------------------------------
        MOVL      XAR4,#381450          ; [CPU_ARAU] |1312| 
        AND       AL,*+XAR4[0],#0xfffc  ; [CPU_ALU] |1312| 
        ORB       AL,#0x02              ; [CPU_ALU] |1312| 
        MOV       *+XAR4[0],AL          ; [CPU_ALU] |1312| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 1316,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 1316 | break;                                                                 
; 1318 | default:                                                               
; 1319 | //                                                                     
; 1320 | // Do nothing. Not a valid clock source value.                         
; 1321 | //                                                                     
; 1322 | break;                                                                 
;----------------------------------------------------------------------
        B         $C$L66,UNC            ; [CPU_ALU] |1316| 
        ; branch occurs ; [] |1316| 
$C$L65:    
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 1276,column 5,is_stmt,isa 0
        TEST      ACC                   ; [CPU_ALU] |1276| 
        MOVL      XAR6,*-SP[2]          ; [CPU_FPU] |1276| 
        B         $C$L62,EQ             ; [CPU_ALU] |1276| 
        ; branchcc occurs ; [] |1276| 
        MOVL      XAR4,#65536           ; [CPU_ARAU] |1276| 
        MOVL      ACC,XAR4              ; [CPU_ALU] |1276| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |1276| 
        B         $C$L63,EQ             ; [CPU_ALU] |1276| 
        ; branchcc occurs ; [] |1276| 
        MOVL      XAR4,#131072          ; [CPU_ARAU] |1276| 
        MOVL      ACC,XAR4              ; [CPU_ALU] |1276| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |1276| 
        B         $C$L64,EQ             ; [CPU_ALU] |1276| 
        ; branchcc occurs ; [] |1276| 
$C$L66:    
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 1324,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 1324 | EDIS;                                                                  
;----------------------------------------------------------------------
        EDIS      ; [CPU_ALU] |1324| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 1325,column 1,is_stmt,isa 0
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$150	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$150, DW_AT_low_pc(0x00)
	.dwattr $C$DW$150, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$147, DW_AT_TI_end_file("C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c")
	.dwattr $C$DW$147, DW_AT_TI_end_line(0x52d)
	.dwattr $C$DW$147, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$147

	.sect	".text"
	.clink
	.global	_SysCtl_getLowSpeedClock

$C$DW$151	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$151, DW_AT_name("SysCtl_getLowSpeedClock")
	.dwattr $C$DW$151, DW_AT_low_pc(_SysCtl_getLowSpeedClock)
	.dwattr $C$DW$151, DW_AT_high_pc(0x00)
	.dwattr $C$DW$151, DW_AT_TI_symbol_name("_SysCtl_getLowSpeedClock")
	.dwattr $C$DW$151, DW_AT_external
	.dwattr $C$DW$151, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$151, DW_AT_TI_begin_file("C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c")
	.dwattr $C$DW$151, DW_AT_TI_begin_line(0x535)
	.dwattr $C$DW$151, DW_AT_TI_begin_column(0x01)
	.dwattr $C$DW$151, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 1334,column 1,is_stmt,address _SysCtl_getLowSpeedClock,isa 0

	.dwfde $C$DW$CIE, _SysCtl_getLowSpeedClock
$C$DW$152	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$152, DW_AT_name("clockInHz")
	.dwattr $C$DW$152, DW_AT_TI_symbol_name("_clockInHz")
	.dwattr $C$DW$152, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$152, DW_AT_location[DW_OP_reg0]

;----------------------------------------------------------------------
; 1333 | SysCtl_getLowSpeedClock(uint32_t clockInHz)                            
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _SysCtl_getLowSpeedClock      FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  4 Auto,  0 SOE     *
;***************************************************************

_SysCtl_getLowSpeedClock:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
$C$DW$153	.dwtag  DW_TAG_variable
	.dwattr $C$DW$153, DW_AT_name("clockInHz")
	.dwattr $C$DW$153, DW_AT_TI_symbol_name("_clockInHz")
	.dwattr $C$DW$153, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$153, DW_AT_location[DW_OP_breg20 -2]

$C$DW$154	.dwtag  DW_TAG_variable
	.dwattr $C$DW$154, DW_AT_name("clockOut")
	.dwattr $C$DW$154, DW_AT_TI_symbol_name("_clockOut")
	.dwattr $C$DW$154, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$154, DW_AT_location[DW_OP_breg20 -4]

;----------------------------------------------------------------------
; 1335 | uint32_t clockOut;                                                     
; 1337 | //                                                                     
; 1338 | // Get the main system clock                                           
; 1339 | //                                                                     
;----------------------------------------------------------------------
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |1334| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 1340,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 1340 | clockOut = SysCtl_getClock(clockInHz);                                 
; 1342 | //                                                                     
; 1343 | // Apply the divider to the main clock                                 
; 1344 | //                                                                     
;----------------------------------------------------------------------
$C$DW$155	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$155, DW_AT_low_pc(0x00)
	.dwattr $C$DW$155, DW_AT_name("_SysCtl_getClock")
	.dwattr $C$DW$155, DW_AT_TI_call

        LCR       #_SysCtl_getClock     ; [CPU_ALU] |1340| 
        ; call occurs [#_SysCtl_getClock] ; [] |1340| 
        MOVL      *-SP[4],ACC           ; [CPU_ALU] |1340| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 1345,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 1345 | if((HWREG(CLKCFG_BASE + SYSCTL_O_LOSPCP) &                             
; 1346 |     SYSCTL_LOSPCP_LSPCLKDIV_M) != 0U)                                  
;----------------------------------------------------------------------
        MOVL      XAR4,#381484          ; [CPU_ARAU] |1345| 
        MOVL      ACC,*+XAR4[0]         ; [CPU_ALU] |1345| 
        MOVB      AH,#0                 ; [CPU_ALU] |1345| 
        ANDB      AL,#0x07              ; [CPU_ALU] |1345| 
        TEST      ACC                   ; [CPU_ALU] |1345| 
        B         $C$L67,EQ             ; [CPU_ALU] |1345| 
        ; branchcc occurs ; [] |1345| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 1348,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 1348 | clockOut /= (2U * (HWREG(CLKCFG_BASE + SYSCTL_O_LOSPCP) &              
; 1349 |                     SYSCTL_LOSPCP_LSPCLKDIV_M));                       
;----------------------------------------------------------------------
        MOVL      ACC,*+XAR4[0]         ; [CPU_ALU] |1348| 
        MOVB      AH,#0                 ; [CPU_ALU] |1348| 
        ANDB      AL,#0x07              ; [CPU_ALU] |1348| 
        LSL       ACC,1                 ; [CPU_ALU] |1348| 
        MOVL      XAR6,ACC              ; [CPU_ALU] |1348| 
        MOVL      P,*-SP[4]             ; [CPU_ALU] |1348| 
        MOVB      ACC,#0                ; [CPU_ALU] |1348| 
        RPT       #31
||     SUBCUL    ACC,XAR6              ; [CPU_ALU] |1348| 
        MOVL      *-SP[4],P             ; [CPU_ALU] |1348| 
$C$L67:    
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 1352,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 1352 | return(clockOut);                                                      
;----------------------------------------------------------------------
        MOVL      ACC,*-SP[4]           ; [CPU_ALU] |1352| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 1353,column 1,is_stmt,isa 0
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$156	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$156, DW_AT_low_pc(0x00)
	.dwattr $C$DW$156, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$151, DW_AT_TI_end_file("C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c")
	.dwattr $C$DW$151, DW_AT_TI_end_line(0x549)
	.dwattr $C$DW$151, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$151

	.sect	".text"
	.clink
	.global	_SysCtl_getDeviceParametric

$C$DW$157	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$157, DW_AT_name("SysCtl_getDeviceParametric")
	.dwattr $C$DW$157, DW_AT_low_pc(_SysCtl_getDeviceParametric)
	.dwattr $C$DW$157, DW_AT_high_pc(0x00)
	.dwattr $C$DW$157, DW_AT_TI_symbol_name("_SysCtl_getDeviceParametric")
	.dwattr $C$DW$157, DW_AT_external
	.dwattr $C$DW$157, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$157, DW_AT_TI_begin_file("C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c")
	.dwattr $C$DW$157, DW_AT_TI_begin_line(0x551)
	.dwattr $C$DW$157, DW_AT_TI_begin_column(0x01)
	.dwattr $C$DW$157, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 1362,column 1,is_stmt,address _SysCtl_getDeviceParametric,isa 0

	.dwfde $C$DW$CIE, _SysCtl_getDeviceParametric
$C$DW$158	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$158, DW_AT_name("parametric")
	.dwattr $C$DW$158, DW_AT_TI_symbol_name("_parametric")
	.dwattr $C$DW$158, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$158, DW_AT_location[DW_OP_reg0]

;----------------------------------------------------------------------
; 1361 | SysCtl_getDeviceParametric(SysCtl_DeviceParametric parametric)         
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _SysCtl_getDeviceParametric   FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  3 Auto,  0 SOE     *
;***************************************************************

_SysCtl_getDeviceParametric:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
$C$DW$159	.dwtag  DW_TAG_variable
	.dwattr $C$DW$159, DW_AT_name("value")
	.dwattr $C$DW$159, DW_AT_TI_symbol_name("_value")
	.dwattr $C$DW$159, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$159, DW_AT_location[DW_OP_breg20 -2]

$C$DW$160	.dwtag  DW_TAG_variable
	.dwattr $C$DW$160, DW_AT_name("parametric")
	.dwattr $C$DW$160, DW_AT_TI_symbol_name("_parametric")
	.dwattr $C$DW$160, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$160, DW_AT_location[DW_OP_breg20 -3]

;----------------------------------------------------------------------
; 1363 | uint32_t value;                                                        
; 1365 | //                                                                     
; 1366 | // Get requested parametric value                                      
; 1367 | //                                                                     
;----------------------------------------------------------------------
        MOV       *-SP[3],AL            ; [CPU_ALU] |1362| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 1368,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 1368 | switch(parametric)                                                     
; 1370 |     case SYSCTL_DEVICE_QUAL:                                           
; 1371 |         //                                                             
; 1372 |         // Qualification Status                                        
; 1373 |         //                                                             
;----------------------------------------------------------------------
        B         $C$L77,UNC            ; [CPU_ALU] |1368| 
        ; branch occurs ; [] |1368| 
$C$L68:    
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 1374,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 1374 | value = ((HWREG(DEVCFG_BASE + SYSCTL_O_PARTIDL) &                      
; 1375 |           SYSCTL_PARTIDL_QUAL_M) >> SYSCTL_PARTIDL_QUAL_S);            
;----------------------------------------------------------------------
        MOVL      XAR4,#380936          ; [CPU_ARAU] |1374| 
        CLRC      SXM                   ; [CPU_ALU] 
        MOVL      ACC,*+XAR4[0]         ; [CPU_ALU] |1374| 
        MOVB      AH,#0                 ; [CPU_ALU] |1374| 
        ANDB      AL,#0xc0              ; [CPU_ALU] |1374| 
        SFR       ACC,6                 ; [CPU_ALU] |1374| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |1374| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 1376,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 1376 | break;                                                                 
; 1378 | case SYSCTL_DEVICE_PINCOUNT:                                           
; 1379 | //                                                                     
; 1380 | // Pin Count                                                           
; 1381 | //                                                                     
;----------------------------------------------------------------------
        B         $C$L79,UNC            ; [CPU_ALU] |1376| 
        ; branch occurs ; [] |1376| 
$C$L69:    
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 1382,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 1382 | value = ((HWREG(DEVCFG_BASE + SYSCTL_O_PARTIDL) &                      
; 1383 |           SYSCTL_PARTIDL_PIN_COUNT_M) >>                               
; 1384 |          SYSCTL_PARTIDL_PIN_COUNT_S);                                  
;----------------------------------------------------------------------
        MOVL      XAR4,#380936          ; [CPU_ARAU] |1382| 
        CLRC      SXM                   ; [CPU_ALU] 
        MOVL      ACC,*+XAR4[0]         ; [CPU_ALU] |1382| 
        AND       AL,#1792              ; [CPU_ALU] |1382| 
        ANDB      AH,#0                 ; [CPU_ALU] |1382| 
        SFR       ACC,8                 ; [CPU_ALU] |1382| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |1382| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 1385,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 1385 | break;                                                                 
; 1387 | case SYSCTL_DEVICE_INSTASPIN:                                          
; 1388 | //                                                                     
; 1389 | // InstaSPIN Feature Set                                               
; 1390 | //                                                                     
;----------------------------------------------------------------------
        B         $C$L79,UNC            ; [CPU_ALU] |1385| 
        ; branch occurs ; [] |1385| 
$C$L70:    
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 1391,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 1391 | value = ((HWREG(DEVCFG_BASE + SYSCTL_O_PARTIDL) &                      
; 1392 |           SYSCTL_PARTIDL_INSTASPIN_M) >>                               
; 1393 |          SYSCTL_PARTIDL_INSTASPIN_S);                                  
;----------------------------------------------------------------------
        MOVL      XAR4,#380936          ; [CPU_ARAU] |1391| 
        CLRC      SXM                   ; [CPU_ALU] 
        MOVL      ACC,*+XAR4[0]         ; [CPU_ALU] |1391| 
        AND       AL,#24576             ; [CPU_ALU] |1391| 
        ANDB      AH,#0                 ; [CPU_ALU] |1391| 
        SFR       ACC,13                ; [CPU_ALU] |1391| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |1391| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 1394,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 1394 | break;                                                                 
; 1396 | case SYSCTL_DEVICE_FLASH:                                              
; 1397 | //                                                                     
; 1398 | // Flash Size (KB)                                                     
; 1399 | //                                                                     
;----------------------------------------------------------------------
        B         $C$L79,UNC            ; [CPU_ALU] |1394| 
        ; branch occurs ; [] |1394| 
$C$L71:    
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 1400,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 1400 | value = ((HWREG(DEVCFG_BASE + SYSCTL_O_PARTIDL) &                      
; 1401 |           SYSCTL_PARTIDL_FLASH_SIZE_M) >>                              
; 1402 |          SYSCTL_PARTIDL_FLASH_SIZE_S);                                 
;----------------------------------------------------------------------
        MOVL      XAR4,#380936          ; [CPU_ARAU] |1400| 
        MOVL      ACC,*+XAR4[0]         ; [CPU_ALU] |1400| 
        ANDB      AH,#255               ; [CPU_ALU] |1400| 
        MOVU      ACC,AH                ; [CPU_ALU] |1400| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |1400| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 1403,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 1403 | break;                                                                 
; 1405 | case SYSCTL_DEVICE_PARTID:                                             
; 1406 | //                                                                     
; 1407 | // PARTID Format Revision                                              
; 1408 | //                                                                     
;----------------------------------------------------------------------
        B         $C$L79,UNC            ; [CPU_ALU] |1403| 
        ; branch occurs ; [] |1403| 
$C$L72:    
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 1409,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 1409 | value = ((HWREG(DEVCFG_BASE + SYSCTL_O_PARTIDL) &                      
; 1410 |           SYSCTL_PARTIDL_PARTID_FORMAT_REVISION_M) >>                  
; 1411 |          SYSCTL_PARTIDL_PARTID_FORMAT_REVISION_S);                     
;----------------------------------------------------------------------
        MOVL      XAR4,#380936          ; [CPU_ARAU] |1409| 
        MOV       T,#28                 ; [CPU_ALU] |1409| 
        MOVL      ACC,*+XAR4[0]         ; [CPU_ALU] |1409| 
        ANDB      AL,#0                 ; [CPU_ALU] |1409| 
        AND       AH,#61440             ; [CPU_ALU] |1409| 
        LSRL      ACC,T                 ; [CPU_ALU] |1409| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |1409| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 1412,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 1412 | break;                                                                 
; 1414 | case SYSCTL_DEVICE_FAMILY:                                             
; 1415 | //                                                                     
; 1416 | // Device Family                                                       
; 1417 | //                                                                     
;----------------------------------------------------------------------
        B         $C$L79,UNC            ; [CPU_ALU] |1412| 
        ; branch occurs ; [] |1412| 
$C$L73:    
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 1418,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 1418 | value = ((HWREG(DEVCFG_BASE + SYSCTL_O_PARTIDH) &                      
; 1419 |           SYSCTL_PARTIDH_FAMILY_M) >> SYSCTL_PARTIDH_FAMILY_S);        
;----------------------------------------------------------------------
        MOVL      XAR4,#380938          ; [CPU_ARAU] |1418| 
        CLRC      SXM                   ; [CPU_ALU] 
        MOVL      ACC,*+XAR4[0]         ; [CPU_ALU] |1418| 
        AND       AL,#65280             ; [CPU_ALU] |1418| 
        ANDB      AH,#0                 ; [CPU_ALU] |1418| 
        SFR       ACC,8                 ; [CPU_ALU] |1418| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |1418| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 1420,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 1420 | break;                                                                 
; 1422 | case SYSCTL_DEVICE_PARTNO:                                             
; 1423 | //                                                                     
; 1424 | // Part Number                                                         
; 1425 | //                                                                     
;----------------------------------------------------------------------
        B         $C$L79,UNC            ; [CPU_ALU] |1420| 
        ; branch occurs ; [] |1420| 
$C$L74:    
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 1426,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 1426 | value = ((HWREG(DEVCFG_BASE + SYSCTL_O_PARTIDH) &                      
; 1427 |           SYSCTL_PARTIDH_PARTNO_M) >> SYSCTL_PARTIDH_PARTNO_S);        
;----------------------------------------------------------------------
        MOVL      XAR4,#380938          ; [CPU_ARAU] |1426| 
        MOVL      ACC,*+XAR4[0]         ; [CPU_ALU] |1426| 
        ANDB      AH,#255               ; [CPU_ALU] |1426| 
        MOVU      ACC,AH                ; [CPU_ALU] |1426| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |1426| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 1428,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 1428 | break;                                                                 
; 1430 | case SYSCTL_DEVICE_CLASSID:                                            
; 1431 | //                                                                     
; 1432 | // Class ID                                                            
; 1433 | //                                                                     
;----------------------------------------------------------------------
        B         $C$L79,UNC            ; [CPU_ALU] |1428| 
        ; branch occurs ; [] |1428| 
$C$L75:    
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 1434,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 1434 | value = ((HWREG(DEVCFG_BASE + SYSCTL_O_PARTIDH) &                      
; 1435 |           SYSCTL_PARTIDH_DEVICE_CLASS_ID_M) >>                         
; 1436 |          SYSCTL_PARTIDH_DEVICE_CLASS_ID_S);                            
;----------------------------------------------------------------------
        MOVL      XAR4,#380938          ; [CPU_ARAU] |1434| 
        MOV       T,#24                 ; [CPU_ALU] |1434| 
        MOVL      ACC,*+XAR4[0]         ; [CPU_ALU] |1434| 
        ANDB      AL,#0                 ; [CPU_ALU] |1434| 
        AND       AH,#65280             ; [CPU_ALU] |1434| 
        LSRL      ACC,T                 ; [CPU_ALU] |1434| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |1434| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 1437,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 1437 | break;                                                                 
; 1439 | default:                                                               
; 1440 | //                                                                     
; 1441 | // Not a valid value for PARTID register                               
; 1442 | //                                                                     
;----------------------------------------------------------------------
        B         $C$L79,UNC            ; [CPU_ALU] |1437| 
        ; branch occurs ; [] |1437| 
$C$L76:    
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 1443,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 1443 | value = 0U;                                                            
;----------------------------------------------------------------------
        MOVB      ACC,#0                ; [CPU_ALU] |1443| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |1443| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 1444,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 1444 | break;                                                                 
;----------------------------------------------------------------------
        B         $C$L79,UNC            ; [CPU_ALU] |1444| 
        ; branch occurs ; [] |1444| 
$C$L77:    
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 1368,column 5,is_stmt,isa 0
        CMPB      AL,#4                 ; [CPU_ALU] |1368| 
        B         $C$L78,GT             ; [CPU_ALU] |1368| 
        ; branchcc occurs ; [] |1368| 
        CMPB      AL,#4                 ; [CPU_ALU] |1368| 
        B         $C$L72,EQ             ; [CPU_ALU] |1368| 
        ; branchcc occurs ; [] |1368| 
        CMPB      AL,#0                 ; [CPU_ALU] |1368| 
        B         $C$L68,EQ             ; [CPU_ALU] |1368| 
        ; branchcc occurs ; [] |1368| 
        CMPB      AL,#1                 ; [CPU_ALU] |1368| 
        B         $C$L69,EQ             ; [CPU_ALU] |1368| 
        ; branchcc occurs ; [] |1368| 
        CMPB      AL,#2                 ; [CPU_ALU] |1368| 
        B         $C$L70,EQ             ; [CPU_ALU] |1368| 
        ; branchcc occurs ; [] |1368| 
        CMPB      AL,#3                 ; [CPU_ALU] |1368| 
        B         $C$L71,EQ             ; [CPU_ALU] |1368| 
        ; branchcc occurs ; [] |1368| 
        B         $C$L76,UNC            ; [CPU_ALU] |1368| 
        ; branch occurs ; [] |1368| 
$C$L78:    
        CMPB      AL,#5                 ; [CPU_ALU] |1368| 
        B         $C$L73,EQ             ; [CPU_ALU] |1368| 
        ; branchcc occurs ; [] |1368| 
        CMPB      AL,#6                 ; [CPU_ALU] |1368| 
        B         $C$L74,EQ             ; [CPU_ALU] |1368| 
        ; branchcc occurs ; [] |1368| 
        CMPB      AL,#7                 ; [CPU_ALU] |1368| 
        B         $C$L75,EQ             ; [CPU_ALU] |1368| 
        ; branchcc occurs ; [] |1368| 
        B         $C$L76,UNC            ; [CPU_ALU] |1368| 
        ; branch occurs ; [] |1368| 
$C$L79:    
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 1447,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 1447 | return((uint16_t)value);                                               
;----------------------------------------------------------------------
        MOV       AL,*-SP[2]            ; [CPU_ALU] |1447| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c",line 1448,column 1,is_stmt,isa 0
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$161	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$161, DW_AT_low_pc(0x00)
	.dwattr $C$DW$161, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$157, DW_AT_TI_end_file("C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/sysctl.c")
	.dwattr $C$DW$157, DW_AT_TI_end_line(0x5a8)
	.dwattr $C$DW$157, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$157

;**************************************************************
;* UNDEFINED EXTERNAL REFERENCES                              *
;**************************************************************
	.global	_SysCtl_delay

;***************************************************************
;* TYPE INFORMATION                                            *
;***************************************************************

$C$DW$T$19	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$19, DW_AT_byte_size(0x01)
$C$DW$162	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$162, DW_AT_name("CPUTIMER_CLOCK_SOURCE_SYS")
	.dwattr $C$DW$162, DW_AT_const_value(0x00)

$C$DW$163	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$163, DW_AT_name("CPUTIMER_CLOCK_SOURCE_INTOSC1")
	.dwattr $C$DW$163, DW_AT_const_value(0x01)

$C$DW$164	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$164, DW_AT_name("CPUTIMER_CLOCK_SOURCE_INTOSC2")
	.dwattr $C$DW$164, DW_AT_const_value(0x02)

$C$DW$165	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$165, DW_AT_name("CPUTIMER_CLOCK_SOURCE_XTAL")
	.dwattr $C$DW$165, DW_AT_const_value(0x03)

$C$DW$166	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$166, DW_AT_name("CPUTIMER_CLOCK_SOURCE_AUX")
	.dwattr $C$DW$166, DW_AT_const_value(0x06)

	.dwendtag $C$DW$T$19

$C$DW$T$20	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$20, DW_AT_name("CPUTimer_ClockSource")
	.dwattr $C$DW$T$20, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$20, DW_AT_language(DW_LANG_C)


$C$DW$T$21	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$21, DW_AT_byte_size(0x01)
$C$DW$167	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$167, DW_AT_name("CPUTIMER_CLOCK_PRESCALER_1")
	.dwattr $C$DW$167, DW_AT_const_value(0x00)

$C$DW$168	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$168, DW_AT_name("CPUTIMER_CLOCK_PRESCALER_2")
	.dwattr $C$DW$168, DW_AT_const_value(0x01)

$C$DW$169	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$169, DW_AT_name("CPUTIMER_CLOCK_PRESCALER_4")
	.dwattr $C$DW$169, DW_AT_const_value(0x02)

$C$DW$170	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$170, DW_AT_name("CPUTIMER_CLOCK_PRESCALER_8")
	.dwattr $C$DW$170, DW_AT_const_value(0x03)

$C$DW$171	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$171, DW_AT_name("CPUTIMER_CLOCK_PRESCALER_16")
	.dwattr $C$DW$171, DW_AT_const_value(0x04)

	.dwendtag $C$DW$T$21

$C$DW$T$22	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$22, DW_AT_name("CPUTimer_Prescaler")
	.dwattr $C$DW$T$22, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$T$22, DW_AT_language(DW_LANG_C)


$C$DW$T$23	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$23, DW_AT_byte_size(0x01)
$C$DW$172	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$172, DW_AT_name("SYSCTL_DEVICE_QUAL")
	.dwattr $C$DW$172, DW_AT_const_value(0x00)

$C$DW$173	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$173, DW_AT_name("SYSCTL_DEVICE_PINCOUNT")
	.dwattr $C$DW$173, DW_AT_const_value(0x01)

$C$DW$174	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$174, DW_AT_name("SYSCTL_DEVICE_INSTASPIN")
	.dwattr $C$DW$174, DW_AT_const_value(0x02)

$C$DW$175	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$175, DW_AT_name("SYSCTL_DEVICE_FLASH")
	.dwattr $C$DW$175, DW_AT_const_value(0x03)

$C$DW$176	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$176, DW_AT_name("SYSCTL_DEVICE_PARTID")
	.dwattr $C$DW$176, DW_AT_const_value(0x04)

$C$DW$177	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$177, DW_AT_name("SYSCTL_DEVICE_FAMILY")
	.dwattr $C$DW$177, DW_AT_const_value(0x05)

$C$DW$178	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$178, DW_AT_name("SYSCTL_DEVICE_PARTNO")
	.dwattr $C$DW$178, DW_AT_const_value(0x06)

$C$DW$179	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$179, DW_AT_name("SYSCTL_DEVICE_CLASSID")
	.dwattr $C$DW$179, DW_AT_const_value(0x07)

	.dwendtag $C$DW$T$23

$C$DW$T$24	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$24, DW_AT_name("SysCtl_DeviceParametric")
	.dwattr $C$DW$T$24, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$T$24, DW_AT_language(DW_LANG_C)

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

$C$DW$T$35	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$35, DW_AT_name("__uint16_t")
	.dwattr $C$DW$T$35, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$35, DW_AT_language(DW_LANG_C)

$C$DW$T$36	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$36, DW_AT_name("uint16_t")
	.dwattr $C$DW$T$36, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$T$36, DW_AT_language(DW_LANG_C)

$C$DW$T$12	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$12, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$12, DW_AT_name("long")
	.dwattr $C$DW$T$12, DW_AT_byte_size(0x02)

$C$DW$T$13	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$13, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$13, DW_AT_name("unsigned long")
	.dwattr $C$DW$T$13, DW_AT_byte_size(0x02)

$C$DW$T$27	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$27, DW_AT_name("__uint32_t")
	.dwattr $C$DW$T$27, DW_AT_type(*$C$DW$T$13)
	.dwattr $C$DW$T$27, DW_AT_language(DW_LANG_C)

$C$DW$T$28	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$28, DW_AT_name("uint32_t")
	.dwattr $C$DW$T$28, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$T$28, DW_AT_language(DW_LANG_C)

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

$C$DW$T$44	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$44, DW_AT_name("float32_t")
	.dwattr $C$DW$T$44, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$T$44, DW_AT_language(DW_LANG_C)

$C$DW$T$17	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$17, DW_AT_encoding(DW_ATE_float)
	.dwattr $C$DW$T$17, DW_AT_name("double")
	.dwattr $C$DW$T$17, DW_AT_byte_size(0x02)

$C$DW$T$18	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$18, DW_AT_encoding(DW_ATE_float)
	.dwattr $C$DW$T$18, DW_AT_name("long double")
	.dwattr $C$DW$T$18, DW_AT_byte_size(0x04)

$C$DW$T$45	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$45, DW_AT_encoding(DW_ATE_unsigned_char)
	.dwattr $C$DW$T$45, DW_AT_name("unsigned char")
	.dwattr $C$DW$T$45, DW_AT_byte_size(0x01)

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

$C$DW$180	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$180, DW_AT_name("AL")
	.dwattr $C$DW$180, DW_AT_location[DW_OP_reg0]

$C$DW$181	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$181, DW_AT_name("AH")
	.dwattr $C$DW$181, DW_AT_location[DW_OP_reg1]

$C$DW$182	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$182, DW_AT_name("PL")
	.dwattr $C$DW$182, DW_AT_location[DW_OP_reg2]

$C$DW$183	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$183, DW_AT_name("PH")
	.dwattr $C$DW$183, DW_AT_location[DW_OP_reg3]

$C$DW$184	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$184, DW_AT_name("SP")
	.dwattr $C$DW$184, DW_AT_location[DW_OP_reg20]

$C$DW$185	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$185, DW_AT_name("XT")
	.dwattr $C$DW$185, DW_AT_location[DW_OP_reg21]

$C$DW$186	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$186, DW_AT_name("T")
	.dwattr $C$DW$186, DW_AT_location[DW_OP_reg22]

$C$DW$187	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$187, DW_AT_name("ST0")
	.dwattr $C$DW$187, DW_AT_location[DW_OP_reg23]

$C$DW$188	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$188, DW_AT_name("ST1")
	.dwattr $C$DW$188, DW_AT_location[DW_OP_reg24]

$C$DW$189	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$189, DW_AT_name("PC")
	.dwattr $C$DW$189, DW_AT_location[DW_OP_reg25]

$C$DW$190	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$190, DW_AT_name("RPC")
	.dwattr $C$DW$190, DW_AT_location[DW_OP_reg26]

$C$DW$191	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$191, DW_AT_name("FP")
	.dwattr $C$DW$191, DW_AT_location[DW_OP_reg28]

$C$DW$192	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$192, DW_AT_name("DP")
	.dwattr $C$DW$192, DW_AT_location[DW_OP_reg29]

$C$DW$193	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$193, DW_AT_name("SXM")
	.dwattr $C$DW$193, DW_AT_location[DW_OP_reg30]

$C$DW$194	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$194, DW_AT_name("PM")
	.dwattr $C$DW$194, DW_AT_location[DW_OP_reg31]

$C$DW$195	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$195, DW_AT_name("OVM")
	.dwattr $C$DW$195, DW_AT_location[DW_OP_regx 0x20]

$C$DW$196	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$196, DW_AT_name("PAGE0")
	.dwattr $C$DW$196, DW_AT_location[DW_OP_regx 0x21]

$C$DW$197	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$197, DW_AT_name("AMODE")
	.dwattr $C$DW$197, DW_AT_location[DW_OP_regx 0x22]

$C$DW$198	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$198, DW_AT_name("EALLOW")
	.dwattr $C$DW$198, DW_AT_location[DW_OP_regx 0x4e]

$C$DW$199	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$199, DW_AT_name("INTM")
	.dwattr $C$DW$199, DW_AT_location[DW_OP_regx 0x23]

$C$DW$200	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$200, DW_AT_name("IFR")
	.dwattr $C$DW$200, DW_AT_location[DW_OP_regx 0x24]

$C$DW$201	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$201, DW_AT_name("IER")
	.dwattr $C$DW$201, DW_AT_location[DW_OP_regx 0x25]

$C$DW$202	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$202, DW_AT_name("V")
	.dwattr $C$DW$202, DW_AT_location[DW_OP_regx 0x26]

$C$DW$203	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$203, DW_AT_name("PSEUDOH")
	.dwattr $C$DW$203, DW_AT_location[DW_OP_regx 0x4c]

$C$DW$204	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$204, DW_AT_name("VOL")
	.dwattr $C$DW$204, DW_AT_location[DW_OP_regx 0x4d]

$C$DW$205	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$205, DW_AT_name("AR0")
	.dwattr $C$DW$205, DW_AT_location[DW_OP_reg4]

$C$DW$206	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$206, DW_AT_name("XAR0")
	.dwattr $C$DW$206, DW_AT_location[DW_OP_reg5]

$C$DW$207	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$207, DW_AT_name("AR1")
	.dwattr $C$DW$207, DW_AT_location[DW_OP_reg6]

$C$DW$208	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$208, DW_AT_name("XAR1")
	.dwattr $C$DW$208, DW_AT_location[DW_OP_reg7]

$C$DW$209	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$209, DW_AT_name("AR2")
	.dwattr $C$DW$209, DW_AT_location[DW_OP_reg8]

$C$DW$210	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$210, DW_AT_name("XAR2")
	.dwattr $C$DW$210, DW_AT_location[DW_OP_reg9]

$C$DW$211	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$211, DW_AT_name("AR3")
	.dwattr $C$DW$211, DW_AT_location[DW_OP_reg10]

$C$DW$212	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$212, DW_AT_name("XAR3")
	.dwattr $C$DW$212, DW_AT_location[DW_OP_reg11]

$C$DW$213	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$213, DW_AT_name("AR4")
	.dwattr $C$DW$213, DW_AT_location[DW_OP_reg12]

$C$DW$214	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$214, DW_AT_name("XAR4")
	.dwattr $C$DW$214, DW_AT_location[DW_OP_reg13]

$C$DW$215	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$215, DW_AT_name("AR5")
	.dwattr $C$DW$215, DW_AT_location[DW_OP_reg14]

$C$DW$216	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$216, DW_AT_name("XAR5")
	.dwattr $C$DW$216, DW_AT_location[DW_OP_reg15]

$C$DW$217	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$217, DW_AT_name("AR6")
	.dwattr $C$DW$217, DW_AT_location[DW_OP_reg16]

$C$DW$218	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$218, DW_AT_name("XAR6")
	.dwattr $C$DW$218, DW_AT_location[DW_OP_reg17]

$C$DW$219	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$219, DW_AT_name("AR7")
	.dwattr $C$DW$219, DW_AT_location[DW_OP_reg18]

$C$DW$220	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$220, DW_AT_name("XAR7")
	.dwattr $C$DW$220, DW_AT_location[DW_OP_reg19]

$C$DW$221	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$221, DW_AT_name("R0H")
	.dwattr $C$DW$221, DW_AT_location[DW_OP_regx 0x2b]

$C$DW$222	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$222, DW_AT_name("R1H")
	.dwattr $C$DW$222, DW_AT_location[DW_OP_regx 0x2f]

$C$DW$223	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$223, DW_AT_name("R2H")
	.dwattr $C$DW$223, DW_AT_location[DW_OP_regx 0x33]

$C$DW$224	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$224, DW_AT_name("R3H")
	.dwattr $C$DW$224, DW_AT_location[DW_OP_regx 0x37]

$C$DW$225	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$225, DW_AT_name("R4H")
	.dwattr $C$DW$225, DW_AT_location[DW_OP_regx 0x3b]

$C$DW$226	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$226, DW_AT_name("R5H")
	.dwattr $C$DW$226, DW_AT_location[DW_OP_regx 0x3f]

$C$DW$227	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$227, DW_AT_name("R6H")
	.dwattr $C$DW$227, DW_AT_location[DW_OP_regx 0x43]

$C$DW$228	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$228, DW_AT_name("R7H")
	.dwattr $C$DW$228, DW_AT_location[DW_OP_regx 0x47]

$C$DW$229	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$229, DW_AT_name("RB")
	.dwattr $C$DW$229, DW_AT_location[DW_OP_regx 0x4a]

$C$DW$230	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$230, DW_AT_name("STF")
	.dwattr $C$DW$230, DW_AT_location[DW_OP_regx 0x28]

$C$DW$231	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$231, DW_AT_name("FPUHAZ")
	.dwattr $C$DW$231, DW_AT_location[DW_OP_reg27]

$C$DW$232	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$232, DW_AT_name("STF_HWDIV")
	.dwattr $C$DW$232, DW_AT_location[DW_OP_regx 0x4f]

	.dwendtag $C$DW$CU

