;***************************************************************
;* TMS320C2000 G3 C/C++ Codegen                               PC v22.6.0.LTS *
;* Date/Time created: Thu Nov 20 18:10:11 2025                 *
;***************************************************************
	.compiler_opts --abi=coffabi --float_support=fpu32 --hll_source=on --mem_model:code=flat --mem_model:data=large --object_format=coff --silicon_errata_fpu1_workaround=off --silicon_version=28 --symdebug:dwarf --symdebug:dwarf_version=3 --tmu_support=tmu0 
	.asg	XAR2, FP

$C$DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr $C$DW$CU, DW_AT_name("C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/clb.c")
	.dwattr $C$DW$CU, DW_AT_producer("TI TMS320C2000 G3 C/C++ Codegen PC v22.6.0.LTS Copyright (c) 1996-2018 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("C:\Users\13571\Documents\MATLAB\Examples\R2023b\mcb\FocHallExample\mcb_pmsm_foc_hall_f28379d_ert_rtw\CCS_Project\Debug")
;	D:\Software\CCS\CCS12.2.0.00009_win64\c1220\ccs\tools\compiler\ti-cgt-c2000_22.6.0.LTS\bin\ac2000.exe -@C:\\Users\\13571\\AppData\\Local\\Temp\\{FAD64D16-08F0-45D9-A0D8-52A755449066} 
	.sect	".text"
	.clink

$C$DW$1	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$1, DW_AT_name("CLB_writeInterface")
	.dwattr $C$DW$1, DW_AT_low_pc(_CLB_writeInterface)
	.dwattr $C$DW$1, DW_AT_high_pc(0x00)
	.dwattr $C$DW$1, DW_AT_TI_symbol_name("_CLB_writeInterface")
	.dwattr $C$DW$1, DW_AT_TI_begin_file("C:\TI\C2000Ware_3_04_00_00\driverlib\f2837xd\driverlib\clb.h")
	.dwattr $C$DW$1, DW_AT_TI_begin_line(0x1f8)
	.dwattr $C$DW$1, DW_AT_TI_begin_column(0x14)
	.dwattr $C$DW$1, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "C:\TI\C2000Ware_3_04_00_00\driverlib\f2837xd\driverlib\clb.h",line 506,column 1,is_stmt,address _CLB_writeInterface,isa 0

	.dwfde $C$DW$CIE, _CLB_writeInterface
$C$DW$2	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$2, DW_AT_name("base")
	.dwattr $C$DW$2, DW_AT_TI_symbol_name("_base")
	.dwattr $C$DW$2, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$2, DW_AT_location[DW_OP_reg0]

$C$DW$3	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$3, DW_AT_name("address")
	.dwattr $C$DW$3, DW_AT_TI_symbol_name("_address")
	.dwattr $C$DW$3, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$3, DW_AT_location[DW_OP_breg20 -6]

$C$DW$4	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$4, DW_AT_name("value")
	.dwattr $C$DW$4, DW_AT_TI_symbol_name("_value")
	.dwattr $C$DW$4, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$4, DW_AT_location[DW_OP_breg20 -8]

;----------------------------------------------------------------------
; 504 | static inline void CLB_writeInterface(uint32_t base, uint32_t address, 
; 505 | uint32_t value)                                                        
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _CLB_writeInterface           FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  2 Auto,  0 SOE     *
;***************************************************************

_CLB_writeInterface:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
$C$DW$5	.dwtag  DW_TAG_variable
	.dwattr $C$DW$5, DW_AT_name("base")
	.dwattr $C$DW$5, DW_AT_TI_symbol_name("_base")
	.dwattr $C$DW$5, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$5, DW_AT_location[DW_OP_breg20 -2]

;----------------------------------------------------------------------
; 507 | ASSERT(CLB_isBaseValid(base));                                         
; 508 | ASSERT(CLB_isAddressValid(address));                                   
;----------------------------------------------------------------------
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |506| 
	.dwpsn	file "C:\TI\C2000Ware_3_04_00_00\driverlib\f2837xd\driverlib\clb.h",line 510,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 510 | EALLOW;                                                                
;----------------------------------------------------------------------
        EALLOW    ; [CPU_ALU] |510| 
	.dwpsn	file "C:\TI\C2000Ware_3_04_00_00\driverlib\f2837xd\driverlib\clb.h",line 511,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 511 | HWREG(base + CLB_LOGICCTL + CLB_O_LOAD_ADDR) = address;                
;----------------------------------------------------------------------
        MOVL      XAR6,*-SP[6]          ; [CPU_ALU] |511| 
        MOV       ACC,#258              ; [CPU_ALU] |511| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |511| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |511| 
        MOVL      *+XAR4[0],XAR6        ; [CPU_ALU] |511| 
	.dwpsn	file "C:\TI\C2000Ware_3_04_00_00\driverlib\f2837xd\driverlib\clb.h",line 512,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 512 | HWREG(base + CLB_LOGICCTL + CLB_O_LOAD_DATA) =  value;                 
;----------------------------------------------------------------------
        MOVL      XAR6,*-SP[8]          ; [CPU_ALU] |512| 
        MOV       ACC,#260              ; [CPU_ALU] |512| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |512| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |512| 
        MOVL      *+XAR4[0],XAR6        ; [CPU_ALU] |512| 
	.dwpsn	file "C:\TI\C2000Ware_3_04_00_00\driverlib\f2837xd\driverlib\clb.h",line 513,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 513 | HWREG(base + CLB_LOGICCTL + CLB_O_LOAD_EN) |= CLB_LOAD_EN_LOAD_EN;     
;----------------------------------------------------------------------
        MOV       ACC,#256              ; [CPU_ALU] |513| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |513| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |513| 
        MOVB      ACC,#1                ; [CPU_ALU] |513| 
        OR        *+XAR4[0],AL          ; [CPU_ALU] |513| 
        OR        *+XAR4[1],AH          ; [CPU_ALU] |513| 
	.dwpsn	file "C:\TI\C2000Ware_3_04_00_00\driverlib\f2837xd\driverlib\clb.h",line 514,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 514 | EDIS;                                                                  
;----------------------------------------------------------------------
        EDIS      ; [CPU_ALU] |514| 
	.dwpsn	file "C:\TI\C2000Ware_3_04_00_00\driverlib\f2837xd\driverlib\clb.h",line 515,column 1,is_stmt,isa 0
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$6	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$6, DW_AT_low_pc(0x00)
	.dwattr $C$DW$6, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$1, DW_AT_TI_end_file("C:\TI\C2000Ware_3_04_00_00\driverlib\f2837xd\driverlib\clb.h")
	.dwattr $C$DW$1, DW_AT_TI_end_line(0x203)
	.dwattr $C$DW$1, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$1

	.sect	".text"
	.clink
	.global	_CLB_configCounterLoadMatch

$C$DW$7	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$7, DW_AT_name("CLB_configCounterLoadMatch")
	.dwattr $C$DW$7, DW_AT_low_pc(_CLB_configCounterLoadMatch)
	.dwattr $C$DW$7, DW_AT_high_pc(0x00)
	.dwattr $C$DW$7, DW_AT_TI_symbol_name("_CLB_configCounterLoadMatch")
	.dwattr $C$DW$7, DW_AT_external
	.dwattr $C$DW$7, DW_AT_TI_begin_file("C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/clb.c")
	.dwattr $C$DW$7, DW_AT_TI_begin_line(0x32)
	.dwattr $C$DW$7, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$7, DW_AT_TI_max_frame_size(-10)
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/clb.c",line 52,column 1,is_stmt,address _CLB_configCounterLoadMatch,isa 0

	.dwfde $C$DW$CIE, _CLB_configCounterLoadMatch
$C$DW$8	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$8, DW_AT_name("base")
	.dwattr $C$DW$8, DW_AT_TI_symbol_name("_base")
	.dwattr $C$DW$8, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$8, DW_AT_location[DW_OP_reg0]

$C$DW$9	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$9, DW_AT_name("counterID")
	.dwattr $C$DW$9, DW_AT_TI_symbol_name("_counterID")
	.dwattr $C$DW$9, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$9, DW_AT_location[DW_OP_reg12]

$C$DW$10	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$10, DW_AT_name("load")
	.dwattr $C$DW$10, DW_AT_TI_symbol_name("_load")
	.dwattr $C$DW$10, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$10, DW_AT_location[DW_OP_breg20 -12]

$C$DW$11	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$11, DW_AT_name("match1")
	.dwattr $C$DW$11, DW_AT_TI_symbol_name("_match1")
	.dwattr $C$DW$11, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$11, DW_AT_location[DW_OP_breg20 -14]

$C$DW$12	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$12, DW_AT_name("match2")
	.dwattr $C$DW$12, DW_AT_TI_symbol_name("_match2")
	.dwattr $C$DW$12, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$12, DW_AT_location[DW_OP_breg20 -16]

;----------------------------------------------------------------------
;  50 | void CLB_configCounterLoadMatch(uint32_t base, CLB_Counters counterID, 
;  51 | uint32_t load, uint32_t match1, uint32_t match2)                       
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _CLB_configCounterLoadMatch   FR SIZE:   8           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            4 Parameter,  3 Auto,  0 SOE     *
;***************************************************************

_CLB_configCounterLoadMatch:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#8                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -10
$C$DW$13	.dwtag  DW_TAG_variable
	.dwattr $C$DW$13, DW_AT_name("base")
	.dwattr $C$DW$13, DW_AT_TI_symbol_name("_base")
	.dwattr $C$DW$13, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$13, DW_AT_location[DW_OP_breg20 -6]

$C$DW$14	.dwtag  DW_TAG_variable
	.dwattr $C$DW$14, DW_AT_name("counterID")
	.dwattr $C$DW$14, DW_AT_TI_symbol_name("_counterID")
	.dwattr $C$DW$14, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$14, DW_AT_location[DW_OP_breg20 -7]

;----------------------------------------------------------------------
;  53 | ASSERT(CLB_isBaseValid(base));                                         
;----------------------------------------------------------------------
        MOV       *-SP[7],AR4           ; [CPU_ALU] |52| 
        MOVL      *-SP[6],ACC           ; [CPU_ALU] |52| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/clb.c",line 55,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
;  55 | EALLOW;                                                                
;----------------------------------------------------------------------
        EALLOW    ; [CPU_ALU] |55| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/clb.c",line 56,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
;  56 | switch(counterID)                                                      
;  58 |     case CLB_CTR0:                                                     
;----------------------------------------------------------------------
        B         $C$L4,UNC             ; [CPU_ALU] |56| 
        ; branch occurs ; [] |56| 
$C$L1:    
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/clb.c",line 59,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
;  59 | CLB_writeInterface(base, CLB_ADDR_COUNTER_0_LOAD, load);               
;----------------------------------------------------------------------
        MOVB      ACC,#0                ; [CPU_ALU] |59| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |59| 
        MOVL      ACC,*-SP[12]          ; [CPU_ALU] |59| 
        MOVL      *-SP[4],ACC           ; [CPU_ALU] |59| 
        MOVL      ACC,*-SP[6]           ; [CPU_ALU] |59| 
$C$DW$15	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$15, DW_AT_low_pc(0x00)
	.dwattr $C$DW$15, DW_AT_name("_CLB_writeInterface")
	.dwattr $C$DW$15, DW_AT_TI_call

        LCR       #_CLB_writeInterface  ; [CPU_ALU] |59| 
        ; call occurs [#_CLB_writeInterface] ; [] |59| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/clb.c",line 60,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
;  60 | CLB_writeInterface(base, CLB_ADDR_COUNTER_0_MATCH1, match1);           
;----------------------------------------------------------------------
        MOVB      ACC,#4                ; [CPU_ALU] |60| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |60| 
        MOVL      ACC,*-SP[14]          ; [CPU_ALU] |60| 
        MOVL      *-SP[4],ACC           ; [CPU_ALU] |60| 
        MOVL      ACC,*-SP[6]           ; [CPU_ALU] |60| 
$C$DW$16	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$16, DW_AT_low_pc(0x00)
	.dwattr $C$DW$16, DW_AT_name("_CLB_writeInterface")
	.dwattr $C$DW$16, DW_AT_TI_call

        LCR       #_CLB_writeInterface  ; [CPU_ALU] |60| 
        ; call occurs [#_CLB_writeInterface] ; [] |60| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/clb.c",line 61,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
;  61 | CLB_writeInterface(base, CLB_ADDR_COUNTER_0_MATCH2, match2);           
;----------------------------------------------------------------------
        MOVB      ACC,#8                ; [CPU_ALU] |61| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |61| 
        MOVL      ACC,*-SP[16]          ; [CPU_ALU] |61| 
        MOVL      *-SP[4],ACC           ; [CPU_ALU] |61| 
        MOVL      ACC,*-SP[6]           ; [CPU_ALU] |61| 
$C$DW$17	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$17, DW_AT_low_pc(0x00)
	.dwattr $C$DW$17, DW_AT_name("_CLB_writeInterface")
	.dwattr $C$DW$17, DW_AT_TI_call

        LCR       #_CLB_writeInterface  ; [CPU_ALU] |61| 
        ; call occurs [#_CLB_writeInterface] ; [] |61| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/clb.c",line 62,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
;  62 | break;                                                                 
;  64 | case CLB_CTR1:                                                         
;----------------------------------------------------------------------
        B         $C$L5,UNC             ; [CPU_ALU] |62| 
        ; branch occurs ; [] |62| 
$C$L2:    
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/clb.c",line 65,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
;  65 | CLB_writeInterface(base, CLB_ADDR_COUNTER_1_LOAD, load);               
;----------------------------------------------------------------------
        MOVB      ACC,#1                ; [CPU_ALU] |65| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |65| 
        MOVL      ACC,*-SP[12]          ; [CPU_ALU] |65| 
        MOVL      *-SP[4],ACC           ; [CPU_ALU] |65| 
        MOVL      ACC,*-SP[6]           ; [CPU_ALU] |65| 
$C$DW$18	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$18, DW_AT_low_pc(0x00)
	.dwattr $C$DW$18, DW_AT_name("_CLB_writeInterface")
	.dwattr $C$DW$18, DW_AT_TI_call

        LCR       #_CLB_writeInterface  ; [CPU_ALU] |65| 
        ; call occurs [#_CLB_writeInterface] ; [] |65| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/clb.c",line 66,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
;  66 | CLB_writeInterface(base, CLB_ADDR_COUNTER_1_MATCH1, match1);           
;----------------------------------------------------------------------
        MOVB      ACC,#5                ; [CPU_ALU] |66| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |66| 
        MOVL      ACC,*-SP[14]          ; [CPU_ALU] |66| 
        MOVL      *-SP[4],ACC           ; [CPU_ALU] |66| 
        MOVL      ACC,*-SP[6]           ; [CPU_ALU] |66| 
$C$DW$19	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$19, DW_AT_low_pc(0x00)
	.dwattr $C$DW$19, DW_AT_name("_CLB_writeInterface")
	.dwattr $C$DW$19, DW_AT_TI_call

        LCR       #_CLB_writeInterface  ; [CPU_ALU] |66| 
        ; call occurs [#_CLB_writeInterface] ; [] |66| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/clb.c",line 67,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
;  67 | CLB_writeInterface(base, CLB_ADDR_COUNTER_1_MATCH2, match2);           
;----------------------------------------------------------------------
        MOVB      ACC,#9                ; [CPU_ALU] |67| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |67| 
        MOVL      ACC,*-SP[16]          ; [CPU_ALU] |67| 
        MOVL      *-SP[4],ACC           ; [CPU_ALU] |67| 
        MOVL      ACC,*-SP[6]           ; [CPU_ALU] |67| 
$C$DW$20	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$20, DW_AT_low_pc(0x00)
	.dwattr $C$DW$20, DW_AT_name("_CLB_writeInterface")
	.dwattr $C$DW$20, DW_AT_TI_call

        LCR       #_CLB_writeInterface  ; [CPU_ALU] |67| 
        ; call occurs [#_CLB_writeInterface] ; [] |67| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/clb.c",line 68,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
;  68 | break;                                                                 
;  70 | case CLB_CTR2:                                                         
;----------------------------------------------------------------------
        B         $C$L5,UNC             ; [CPU_ALU] |68| 
        ; branch occurs ; [] |68| 
$C$L3:    
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/clb.c",line 71,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
;  71 | CLB_writeInterface(base, CLB_ADDR_COUNTER_2_LOAD, load);               
;----------------------------------------------------------------------
        MOVB      ACC,#2                ; [CPU_ALU] |71| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |71| 
        MOVL      ACC,*-SP[12]          ; [CPU_ALU] |71| 
        MOVL      *-SP[4],ACC           ; [CPU_ALU] |71| 
        MOVL      ACC,*-SP[6]           ; [CPU_ALU] |71| 
$C$DW$21	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$21, DW_AT_low_pc(0x00)
	.dwattr $C$DW$21, DW_AT_name("_CLB_writeInterface")
	.dwattr $C$DW$21, DW_AT_TI_call

        LCR       #_CLB_writeInterface  ; [CPU_ALU] |71| 
        ; call occurs [#_CLB_writeInterface] ; [] |71| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/clb.c",line 72,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
;  72 | CLB_writeInterface(base, CLB_ADDR_COUNTER_2_MATCH1, match1);           
;----------------------------------------------------------------------
        MOVB      ACC,#6                ; [CPU_ALU] |72| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |72| 
        MOVL      ACC,*-SP[14]          ; [CPU_ALU] |72| 
        MOVL      *-SP[4],ACC           ; [CPU_ALU] |72| 
        MOVL      ACC,*-SP[6]           ; [CPU_ALU] |72| 
$C$DW$22	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$22, DW_AT_low_pc(0x00)
	.dwattr $C$DW$22, DW_AT_name("_CLB_writeInterface")
	.dwattr $C$DW$22, DW_AT_TI_call

        LCR       #_CLB_writeInterface  ; [CPU_ALU] |72| 
        ; call occurs [#_CLB_writeInterface] ; [] |72| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/clb.c",line 73,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
;  73 | CLB_writeInterface(base, CLB_ADDR_COUNTER_2_MATCH2, match2);           
;----------------------------------------------------------------------
        MOVB      ACC,#10               ; [CPU_ALU] |73| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |73| 
        MOVL      ACC,*-SP[16]          ; [CPU_ALU] |73| 
        MOVL      *-SP[4],ACC           ; [CPU_ALU] |73| 
        MOVL      ACC,*-SP[6]           ; [CPU_ALU] |73| 
$C$DW$23	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$23, DW_AT_low_pc(0x00)
	.dwattr $C$DW$23, DW_AT_name("_CLB_writeInterface")
	.dwattr $C$DW$23, DW_AT_TI_call

        LCR       #_CLB_writeInterface  ; [CPU_ALU] |73| 
        ; call occurs [#_CLB_writeInterface] ; [] |73| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/clb.c",line 74,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
;  74 | break;                                                                 
;  76 | default:                                                               
;  77 | //                                                                     
;  78 | // Invalid counterID value                                             
;  79 | //                                                                     
;  80 | break;                                                                 
;----------------------------------------------------------------------
        B         $C$L5,UNC             ; [CPU_ALU] |74| 
        ; branch occurs ; [] |74| 
$C$L4:    
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/clb.c",line 56,column 5,is_stmt,isa 0
        MOV       AL,*-SP[7]            ; [CPU_ALU] |56| 
        B         $C$L1,EQ              ; [CPU_ALU] |56| 
        ; branchcc occurs ; [] |56| 
        CMPB      AL,#1                 ; [CPU_ALU] |56| 
        B         $C$L2,EQ              ; [CPU_ALU] |56| 
        ; branchcc occurs ; [] |56| 
        CMPB      AL,#2                 ; [CPU_ALU] |56| 
        B         $C$L3,EQ              ; [CPU_ALU] |56| 
        ; branchcc occurs ; [] |56| 
$C$L5:    
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/clb.c",line 82,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
;  82 | EDIS;                                                                  
;----------------------------------------------------------------------
        EDIS      ; [CPU_ALU] |82| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/clb.c",line 83,column 1,is_stmt,isa 0
        SUBB      SP,#8                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$24	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$24, DW_AT_low_pc(0x00)
	.dwattr $C$DW$24, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$7, DW_AT_TI_end_file("C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/clb.c")
	.dwattr $C$DW$7, DW_AT_TI_end_line(0x53)
	.dwattr $C$DW$7, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$7

	.sect	".text"
	.clink
	.global	_CLB_clearFIFOs

$C$DW$25	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$25, DW_AT_name("CLB_clearFIFOs")
	.dwattr $C$DW$25, DW_AT_low_pc(_CLB_clearFIFOs)
	.dwattr $C$DW$25, DW_AT_high_pc(0x00)
	.dwattr $C$DW$25, DW_AT_TI_symbol_name("_CLB_clearFIFOs")
	.dwattr $C$DW$25, DW_AT_external
	.dwattr $C$DW$25, DW_AT_TI_begin_file("C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/clb.c")
	.dwattr $C$DW$25, DW_AT_TI_begin_line(0x5a)
	.dwattr $C$DW$25, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$25, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/clb.c",line 91,column 1,is_stmt,address _CLB_clearFIFOs,isa 0

	.dwfde $C$DW$CIE, _CLB_clearFIFOs
$C$DW$26	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$26, DW_AT_name("base")
	.dwattr $C$DW$26, DW_AT_TI_symbol_name("_base")
	.dwattr $C$DW$26, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$26, DW_AT_location[DW_OP_reg0]

;----------------------------------------------------------------------
;  90 | void CLB_clearFIFOs(uint32_t base)                                     
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _CLB_clearFIFOs               FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  3 Auto,  0 SOE     *
;***************************************************************

_CLB_clearFIFOs:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
$C$DW$27	.dwtag  DW_TAG_variable
	.dwattr $C$DW$27, DW_AT_name("base")
	.dwattr $C$DW$27, DW_AT_TI_symbol_name("_base")
	.dwattr $C$DW$27, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$27, DW_AT_location[DW_OP_breg20 -2]

$C$DW$28	.dwtag  DW_TAG_variable
	.dwattr $C$DW$28, DW_AT_name("i")
	.dwattr $C$DW$28, DW_AT_TI_symbol_name("_i")
	.dwattr $C$DW$28, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$28, DW_AT_location[DW_OP_breg20 -3]

;----------------------------------------------------------------------
;  92 | uint16_t i;                                                            
;  94 | ASSERT(CLB_isBaseValid(base));                                         
;----------------------------------------------------------------------
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |91| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/clb.c",line 96,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
;  96 | for(i = 0U; i < CLB_FIFO_SIZE; i++)                                    
;----------------------------------------------------------------------
        MOV       *-SP[3],#0            ; [CPU_ALU] |96| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/clb.c",line 96,column 17,is_stmt,isa 0
        MOV       AL,*-SP[3]            ; [CPU_ALU] |96| 
        CMPB      AL,#4                 ; [CPU_ALU] |96| 
        B         $C$L7,HIS             ; [CPU_ALU] |96| 
        ; branchcc occurs ; [] |96| 
        MOVB      XAR6,#0               ; [CPU_ALU] |98| 
        MOVL      XAR0,#512             ; [CPU_ALU] |98| 
$C$L6:    
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/clb.c",line 98,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
;  98 | HWREG(base + CLB_DATAEXCH + CLB_O_PULL(i)) = 0U;                       
;----------------------------------------------------------------------
        MOV       ACC,*-SP[3] << #1     ; [CPU_ALU] |98| 
        ADD       AL,#256               ; [CPU_ALU] |98| 
        MOVZ      AR4,AL                ; [CPU_ALU] |98| 
        MOVL      ACC,XAR4              ; [CPU_ALU] |98| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |98| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |98| 
        MOVL      *+XAR4[AR0],XAR6      ; [CPU_ALU] |98| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/clb.c",line 96,column 36,is_stmt,isa 0
        INC       *-SP[3]               ; [CPU_ALU] |96| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/clb.c",line 96,column 17,is_stmt,isa 0
        MOV       AL,*-SP[3]            ; [CPU_ALU] |96| 
        CMPB      AL,#4                 ; [CPU_ALU] |96| 
        B         $C$L6,LO              ; [CPU_ALU] |96| 
        ; branchcc occurs ; [] |96| 
$C$L7:    
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/clb.c",line 101,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 101 | HWREG(base + CLB_LOGICCTL + CLB_O_BUF_PTR) = 0U;                       
;----------------------------------------------------------------------
        MOVB      XAR6,#0               ; [CPU_ALU] |101| 
        MOV       ACC,#270              ; [CPU_ALU] |101| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |101| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |101| 
        MOVL      *+XAR4[0],XAR6        ; [CPU_ALU] |101| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/clb.c",line 102,column 1,is_stmt,isa 0
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$29	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$29, DW_AT_low_pc(0x00)
	.dwattr $C$DW$29, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$25, DW_AT_TI_end_file("C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/clb.c")
	.dwattr $C$DW$25, DW_AT_TI_end_line(0x66)
	.dwattr $C$DW$25, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$25

	.sect	".text"
	.clink
	.global	_CLB_writeFIFOs

$C$DW$30	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$30, DW_AT_name("CLB_writeFIFOs")
	.dwattr $C$DW$30, DW_AT_low_pc(_CLB_writeFIFOs)
	.dwattr $C$DW$30, DW_AT_high_pc(0x00)
	.dwattr $C$DW$30, DW_AT_TI_symbol_name("_CLB_writeFIFOs")
	.dwattr $C$DW$30, DW_AT_external
	.dwattr $C$DW$30, DW_AT_TI_begin_file("C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/clb.c")
	.dwattr $C$DW$30, DW_AT_TI_begin_line(0x6d)
	.dwattr $C$DW$30, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$30, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/clb.c",line 110,column 1,is_stmt,address _CLB_writeFIFOs,isa 0

	.dwfde $C$DW$CIE, _CLB_writeFIFOs
$C$DW$31	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$31, DW_AT_name("base")
	.dwattr $C$DW$31, DW_AT_TI_symbol_name("_base")
	.dwattr $C$DW$31, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$31, DW_AT_location[DW_OP_reg0]

$C$DW$32	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$32, DW_AT_name("pullData")
	.dwattr $C$DW$32, DW_AT_TI_symbol_name("_pullData")
	.dwattr $C$DW$32, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$32, DW_AT_location[DW_OP_reg12]

;----------------------------------------------------------------------
; 109 | void CLB_writeFIFOs(uint32_t base , const uint32_t pullData[])         
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _CLB_writeFIFOs               FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  4 Auto,  0 SOE     *
;***************************************************************

_CLB_writeFIFOs:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
$C$DW$33	.dwtag  DW_TAG_variable
	.dwattr $C$DW$33, DW_AT_name("base")
	.dwattr $C$DW$33, DW_AT_TI_symbol_name("_base")
	.dwattr $C$DW$33, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$33, DW_AT_location[DW_OP_breg20 -2]

$C$DW$34	.dwtag  DW_TAG_variable
	.dwattr $C$DW$34, DW_AT_name("pullData")
	.dwattr $C$DW$34, DW_AT_TI_symbol_name("_pullData")
	.dwattr $C$DW$34, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$34, DW_AT_location[DW_OP_breg20 -4]

;----------------------------------------------------------------------
; 111 | ASSERT(CLB_isBaseValid(base));                                         
; 113 | //                                                                     
; 114 | // Clear the FIFO and pointer                                          
; 115 | //                                                                     
;----------------------------------------------------------------------
        MOVL      *-SP[4],XAR4          ; [CPU_ALU] |110| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |110| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/clb.c",line 116,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 116 | CLB_clearFIFOs(base);                                                  
; 118 | //                                                                     
; 119 | // Write data into the FIFO.                                           
; 120 | //                                                                     
;----------------------------------------------------------------------
$C$DW$35	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$35, DW_AT_low_pc(0x00)
	.dwattr $C$DW$35, DW_AT_name("_CLB_clearFIFOs")
	.dwattr $C$DW$35, DW_AT_TI_call

        LCR       #_CLB_clearFIFOs      ; [CPU_ALU] |116| 
        ; call occurs [#_CLB_clearFIFOs] ; [] |116| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/clb.c",line 121,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 121 | HWREG(base + CLB_DATAEXCH + CLB_O_PULL(0)) = pullData[0U];             
;----------------------------------------------------------------------
        MOVL      XAR4,*-SP[4]          ; [CPU_ALU] |121| 
        MOVL      XAR6,*+XAR4[0]        ; [CPU_ALU] |121| 
        MOV       ACC,#768              ; [CPU_ALU] |121| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |121| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |121| 
        MOVL      *+XAR4[0],XAR6        ; [CPU_ALU] |121| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/clb.c",line 122,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 122 | HWREG(base + CLB_DATAEXCH + CLB_O_PULL(1)) = pullData[1U];             
;----------------------------------------------------------------------
        MOVL      XAR5,*-SP[4]          ; [CPU_ALU] |122| 
        MOVL      XAR6,*+XAR5[2]        ; [CPU_ALU] |122| 
        MOV       ACC,#770              ; [CPU_ALU] |122| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |122| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |122| 
        MOVL      *+XAR4[0],XAR6        ; [CPU_ALU] |122| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/clb.c",line 123,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 123 | HWREG(base + CLB_DATAEXCH + CLB_O_PULL(2)) = pullData[2U];             
;----------------------------------------------------------------------
        MOVL      XAR5,*-SP[4]          ; [CPU_ALU] |123| 
        MOV       ACC,#772              ; [CPU_ALU] |123| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |123| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |123| 
        MOVL      XAR6,*+XAR5[4]        ; [CPU_ALU] |123| 
        MOVL      *+XAR4[0],XAR6        ; [CPU_ALU] |123| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/clb.c",line 124,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 124 | HWREG(base + CLB_DATAEXCH + CLB_O_PULL(3)) = pullData[3U];             
;----------------------------------------------------------------------
        MOVL      XAR5,*-SP[4]          ; [CPU_ALU] |124| 
        MOV       ACC,#774              ; [CPU_ALU] |124| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |124| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |124| 
        MOVL      XAR6,*+XAR5[6]        ; [CPU_ALU] |124| 
        MOVL      *+XAR4[0],XAR6        ; [CPU_ALU] |124| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/clb.c",line 125,column 1,is_stmt,isa 0
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$36	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$36, DW_AT_low_pc(0x00)
	.dwattr $C$DW$36, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$30, DW_AT_TI_end_file("C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/clb.c")
	.dwattr $C$DW$30, DW_AT_TI_end_line(0x7d)
	.dwattr $C$DW$30, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$30

	.sect	".text"
	.clink
	.global	_CLB_readFIFOs

$C$DW$37	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$37, DW_AT_name("CLB_readFIFOs")
	.dwattr $C$DW$37, DW_AT_low_pc(_CLB_readFIFOs)
	.dwattr $C$DW$37, DW_AT_high_pc(0x00)
	.dwattr $C$DW$37, DW_AT_TI_symbol_name("_CLB_readFIFOs")
	.dwattr $C$DW$37, DW_AT_external
	.dwattr $C$DW$37, DW_AT_TI_begin_file("C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/clb.c")
	.dwattr $C$DW$37, DW_AT_TI_begin_line(0x84)
	.dwattr $C$DW$37, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$37, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/clb.c",line 133,column 1,is_stmt,address _CLB_readFIFOs,isa 0

	.dwfde $C$DW$CIE, _CLB_readFIFOs
$C$DW$38	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$38, DW_AT_name("base")
	.dwattr $C$DW$38, DW_AT_TI_symbol_name("_base")
	.dwattr $C$DW$38, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$38, DW_AT_location[DW_OP_reg0]

$C$DW$39	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$39, DW_AT_name("pushData")
	.dwattr $C$DW$39, DW_AT_TI_symbol_name("_pushData")
	.dwattr $C$DW$39, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$39, DW_AT_location[DW_OP_reg12]

;----------------------------------------------------------------------
; 132 | void CLB_readFIFOs(uint32_t base , uint32_t pushData[])                
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _CLB_readFIFOs                FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  4 Auto,  0 SOE     *
;***************************************************************

_CLB_readFIFOs:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
$C$DW$40	.dwtag  DW_TAG_variable
	.dwattr $C$DW$40, DW_AT_name("base")
	.dwattr $C$DW$40, DW_AT_TI_symbol_name("_base")
	.dwattr $C$DW$40, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$40, DW_AT_location[DW_OP_breg20 -2]

$C$DW$41	.dwtag  DW_TAG_variable
	.dwattr $C$DW$41, DW_AT_name("pushData")
	.dwattr $C$DW$41, DW_AT_TI_symbol_name("_pushData")
	.dwattr $C$DW$41, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$41, DW_AT_location[DW_OP_breg20 -4]

;----------------------------------------------------------------------
; 134 | ASSERT(CLB_isBaseValid(base));                                         
; 136 | //                                                                     
; 137 | // Read data from the FIFO.                                            
; 138 | //                                                                     
;----------------------------------------------------------------------
        MOVL      *-SP[4],XAR4          ; [CPU_ALU] |133| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |133| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/clb.c",line 139,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 139 | pushData[0U] = HWREG(base + CLB_DATAEXCH + CLB_O_PUSH(0)) ;            
;----------------------------------------------------------------------
        MOV       ACC,#512              ; [CPU_ALU] |139| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |139| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |139| 
        MOVL      XAR5,*-SP[4]          ; [CPU_ALU] |139| 
        MOVL      ACC,*+XAR4[0]         ; [CPU_ALU] |139| 
        MOVL      *+XAR5[0],ACC         ; [CPU_ALU] |139| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/clb.c",line 140,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 140 | pushData[1U] = HWREG(base + CLB_DATAEXCH + CLB_O_PUSH(1)) ;            
;----------------------------------------------------------------------
        MOV       ACC,#514              ; [CPU_ALU] |140| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |140| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |140| 
        MOVL      XAR5,*-SP[4]          ; [CPU_ALU] |140| 
        MOVL      ACC,*+XAR4[0]         ; [CPU_ALU] |140| 
        MOVL      *+XAR5[2],ACC         ; [CPU_ALU] |140| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/clb.c",line 141,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 141 | pushData[2U] = HWREG(base + CLB_DATAEXCH + CLB_O_PUSH(2)) ;            
;----------------------------------------------------------------------
        MOV       ACC,#516              ; [CPU_ALU] |141| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |141| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |141| 
        MOVL      XAR5,*-SP[4]          ; [CPU_ALU] |141| 
        MOVL      ACC,*+XAR4[0]         ; [CPU_ALU] |141| 
        MOVL      *+XAR5[4],ACC         ; [CPU_ALU] |141| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/clb.c",line 142,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 142 | pushData[3U] = HWREG(base + CLB_DATAEXCH + CLB_O_PUSH(3)) ;            
;----------------------------------------------------------------------
        MOV       ACC,#518              ; [CPU_ALU] |142| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |142| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |142| 
        MOVL      XAR5,*-SP[4]          ; [CPU_ALU] |142| 
        MOVL      ACC,*+XAR4[0]         ; [CPU_ALU] |142| 
        MOVL      *+XAR5[6],ACC         ; [CPU_ALU] |142| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/clb.c",line 143,column 1,is_stmt,isa 0
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$42	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$42, DW_AT_low_pc(0x00)
	.dwattr $C$DW$42, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$37, DW_AT_TI_end_file("C:/TI/C2000Ware_3_04_00_00/driverlib/f2837xd/driverlib/clb.c")
	.dwattr $C$DW$37, DW_AT_TI_end_line(0x8f)
	.dwattr $C$DW$37, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$37


;***************************************************************
;* TYPE INFORMATION                                            *
;***************************************************************

$C$DW$T$19	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$19, DW_AT_byte_size(0x01)
$C$DW$43	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$43, DW_AT_name("CLB_CTR0")
	.dwattr $C$DW$43, DW_AT_const_value(0x00)

$C$DW$44	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$44, DW_AT_name("CLB_CTR1")
	.dwattr $C$DW$44, DW_AT_const_value(0x01)

$C$DW$45	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$45, DW_AT_name("CLB_CTR2")
	.dwattr $C$DW$45, DW_AT_const_value(0x02)

	.dwendtag $C$DW$T$19

$C$DW$T$20	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$20, DW_AT_name("CLB_Counters")
	.dwattr $C$DW$T$20, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$20, DW_AT_language(DW_LANG_C)

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

$C$DW$T$33	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$33, DW_AT_name("__uint16_t")
	.dwattr $C$DW$T$33, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$33, DW_AT_language(DW_LANG_C)

$C$DW$T$34	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$34, DW_AT_name("uint16_t")
	.dwattr $C$DW$T$34, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$T$34, DW_AT_language(DW_LANG_C)

$C$DW$T$12	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$12, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$12, DW_AT_name("long")
	.dwattr $C$DW$T$12, DW_AT_byte_size(0x02)

$C$DW$T$13	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$13, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$13, DW_AT_name("unsigned long")
	.dwattr $C$DW$T$13, DW_AT_byte_size(0x02)

$C$DW$T$21	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$21, DW_AT_name("__uint32_t")
	.dwattr $C$DW$T$21, DW_AT_type(*$C$DW$T$13)
	.dwattr $C$DW$T$21, DW_AT_language(DW_LANG_C)

$C$DW$T$22	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$22, DW_AT_name("uint32_t")
	.dwattr $C$DW$T$22, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$T$22, DW_AT_language(DW_LANG_C)

$C$DW$T$31	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$31, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$T$31, DW_AT_address_class(0x20)

$C$DW$46	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$46, DW_AT_type(*$C$DW$T$22)

$C$DW$T$28	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$28, DW_AT_type(*$C$DW$46)

$C$DW$T$29	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$29, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$T$29, DW_AT_address_class(0x20)

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

$C$DW$47	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$47, DW_AT_name("AL")
	.dwattr $C$DW$47, DW_AT_location[DW_OP_reg0]

$C$DW$48	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$48, DW_AT_name("AH")
	.dwattr $C$DW$48, DW_AT_location[DW_OP_reg1]

$C$DW$49	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$49, DW_AT_name("PL")
	.dwattr $C$DW$49, DW_AT_location[DW_OP_reg2]

$C$DW$50	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$50, DW_AT_name("PH")
	.dwattr $C$DW$50, DW_AT_location[DW_OP_reg3]

$C$DW$51	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$51, DW_AT_name("SP")
	.dwattr $C$DW$51, DW_AT_location[DW_OP_reg20]

$C$DW$52	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$52, DW_AT_name("XT")
	.dwattr $C$DW$52, DW_AT_location[DW_OP_reg21]

$C$DW$53	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$53, DW_AT_name("T")
	.dwattr $C$DW$53, DW_AT_location[DW_OP_reg22]

$C$DW$54	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$54, DW_AT_name("ST0")
	.dwattr $C$DW$54, DW_AT_location[DW_OP_reg23]

$C$DW$55	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$55, DW_AT_name("ST1")
	.dwattr $C$DW$55, DW_AT_location[DW_OP_reg24]

$C$DW$56	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$56, DW_AT_name("PC")
	.dwattr $C$DW$56, DW_AT_location[DW_OP_reg25]

$C$DW$57	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$57, DW_AT_name("RPC")
	.dwattr $C$DW$57, DW_AT_location[DW_OP_reg26]

$C$DW$58	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$58, DW_AT_name("FP")
	.dwattr $C$DW$58, DW_AT_location[DW_OP_reg28]

$C$DW$59	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$59, DW_AT_name("DP")
	.dwattr $C$DW$59, DW_AT_location[DW_OP_reg29]

$C$DW$60	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$60, DW_AT_name("SXM")
	.dwattr $C$DW$60, DW_AT_location[DW_OP_reg30]

$C$DW$61	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$61, DW_AT_name("PM")
	.dwattr $C$DW$61, DW_AT_location[DW_OP_reg31]

$C$DW$62	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$62, DW_AT_name("OVM")
	.dwattr $C$DW$62, DW_AT_location[DW_OP_regx 0x20]

$C$DW$63	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$63, DW_AT_name("PAGE0")
	.dwattr $C$DW$63, DW_AT_location[DW_OP_regx 0x21]

$C$DW$64	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$64, DW_AT_name("AMODE")
	.dwattr $C$DW$64, DW_AT_location[DW_OP_regx 0x22]

$C$DW$65	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$65, DW_AT_name("EALLOW")
	.dwattr $C$DW$65, DW_AT_location[DW_OP_regx 0x4e]

$C$DW$66	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$66, DW_AT_name("INTM")
	.dwattr $C$DW$66, DW_AT_location[DW_OP_regx 0x23]

$C$DW$67	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$67, DW_AT_name("IFR")
	.dwattr $C$DW$67, DW_AT_location[DW_OP_regx 0x24]

$C$DW$68	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$68, DW_AT_name("IER")
	.dwattr $C$DW$68, DW_AT_location[DW_OP_regx 0x25]

$C$DW$69	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$69, DW_AT_name("V")
	.dwattr $C$DW$69, DW_AT_location[DW_OP_regx 0x26]

$C$DW$70	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$70, DW_AT_name("PSEUDOH")
	.dwattr $C$DW$70, DW_AT_location[DW_OP_regx 0x4c]

$C$DW$71	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$71, DW_AT_name("VOL")
	.dwattr $C$DW$71, DW_AT_location[DW_OP_regx 0x4d]

$C$DW$72	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$72, DW_AT_name("AR0")
	.dwattr $C$DW$72, DW_AT_location[DW_OP_reg4]

$C$DW$73	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$73, DW_AT_name("XAR0")
	.dwattr $C$DW$73, DW_AT_location[DW_OP_reg5]

$C$DW$74	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$74, DW_AT_name("AR1")
	.dwattr $C$DW$74, DW_AT_location[DW_OP_reg6]

$C$DW$75	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$75, DW_AT_name("XAR1")
	.dwattr $C$DW$75, DW_AT_location[DW_OP_reg7]

$C$DW$76	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$76, DW_AT_name("AR2")
	.dwattr $C$DW$76, DW_AT_location[DW_OP_reg8]

$C$DW$77	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$77, DW_AT_name("XAR2")
	.dwattr $C$DW$77, DW_AT_location[DW_OP_reg9]

$C$DW$78	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$78, DW_AT_name("AR3")
	.dwattr $C$DW$78, DW_AT_location[DW_OP_reg10]

$C$DW$79	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$79, DW_AT_name("XAR3")
	.dwattr $C$DW$79, DW_AT_location[DW_OP_reg11]

$C$DW$80	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$80, DW_AT_name("AR4")
	.dwattr $C$DW$80, DW_AT_location[DW_OP_reg12]

$C$DW$81	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$81, DW_AT_name("XAR4")
	.dwattr $C$DW$81, DW_AT_location[DW_OP_reg13]

$C$DW$82	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$82, DW_AT_name("AR5")
	.dwattr $C$DW$82, DW_AT_location[DW_OP_reg14]

$C$DW$83	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$83, DW_AT_name("XAR5")
	.dwattr $C$DW$83, DW_AT_location[DW_OP_reg15]

$C$DW$84	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$84, DW_AT_name("AR6")
	.dwattr $C$DW$84, DW_AT_location[DW_OP_reg16]

$C$DW$85	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$85, DW_AT_name("XAR6")
	.dwattr $C$DW$85, DW_AT_location[DW_OP_reg17]

$C$DW$86	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$86, DW_AT_name("AR7")
	.dwattr $C$DW$86, DW_AT_location[DW_OP_reg18]

$C$DW$87	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$87, DW_AT_name("XAR7")
	.dwattr $C$DW$87, DW_AT_location[DW_OP_reg19]

$C$DW$88	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$88, DW_AT_name("R0H")
	.dwattr $C$DW$88, DW_AT_location[DW_OP_regx 0x2b]

$C$DW$89	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$89, DW_AT_name("R1H")
	.dwattr $C$DW$89, DW_AT_location[DW_OP_regx 0x2f]

$C$DW$90	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$90, DW_AT_name("R2H")
	.dwattr $C$DW$90, DW_AT_location[DW_OP_regx 0x33]

$C$DW$91	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$91, DW_AT_name("R3H")
	.dwattr $C$DW$91, DW_AT_location[DW_OP_regx 0x37]

$C$DW$92	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$92, DW_AT_name("R4H")
	.dwattr $C$DW$92, DW_AT_location[DW_OP_regx 0x3b]

$C$DW$93	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$93, DW_AT_name("R5H")
	.dwattr $C$DW$93, DW_AT_location[DW_OP_regx 0x3f]

$C$DW$94	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$94, DW_AT_name("R6H")
	.dwattr $C$DW$94, DW_AT_location[DW_OP_regx 0x43]

$C$DW$95	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$95, DW_AT_name("R7H")
	.dwattr $C$DW$95, DW_AT_location[DW_OP_regx 0x47]

$C$DW$96	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$96, DW_AT_name("RB")
	.dwattr $C$DW$96, DW_AT_location[DW_OP_regx 0x4a]

$C$DW$97	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$97, DW_AT_name("STF")
	.dwattr $C$DW$97, DW_AT_location[DW_OP_regx 0x28]

$C$DW$98	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$98, DW_AT_name("FPUHAZ")
	.dwattr $C$DW$98, DW_AT_location[DW_OP_reg27]

$C$DW$99	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$99, DW_AT_name("STF_HWDIV")
	.dwattr $C$DW$99, DW_AT_location[DW_OP_regx 0x4f]

	.dwendtag $C$DW$CU

