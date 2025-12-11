;***************************************************************
;* TMS320C2000 G3 C/C++ Codegen                               PC v22.6.0.LTS *
;* Date/Time created: Thu Nov 20 18:10:09 2025                 *
;***************************************************************
	.compiler_opts --abi=coffabi --float_support=fpu32 --hll_source=on --mem_model:code=flat --mem_model:data=large --object_format=coff --silicon_errata_fpu1_workaround=off --silicon_version=28 --symdebug:dwarf --symdebug:dwarf_version=3 --tmu_support=tmu0 
	.asg	XAR2, FP

$C$DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr $C$DW$CU, DW_AT_name("C:/Users/13571/Documents/MATLAB/Examples/R2023b/mcb/FocHallExample/mcb_pmsm_foc_hall_f28379d_ert_rtw/MW_c28xx_xbar.c")
	.dwattr $C$DW$CU, DW_AT_producer("TI TMS320C2000 G3 C/C++ Codegen PC v22.6.0.LTS Copyright (c) 1996-2018 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("C:\Users\13571\Documents\MATLAB\Examples\R2023b\mcb\FocHallExample\mcb_pmsm_foc_hall_f28379d_ert_rtw\CCS_Project\Debug")
$C$DW$1	.dwtag  DW_TAG_variable
	.dwattr $C$DW$1, DW_AT_name("InputXbarRegs")
	.dwattr $C$DW$1, DW_AT_TI_symbol_name("_InputXbarRegs")
	.dwattr $C$DW$1, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$1, DW_AT_declaration
	.dwattr $C$DW$1, DW_AT_external

;	D:\Software\CCS\CCS12.2.0.00009_win64\c1220\ccs\tools\compiler\ti-cgt-c2000_22.6.0.LTS\bin\ac2000.exe -@C:\\Users\\13571\\AppData\\Local\\Temp\\{145AD926-BE1C-4066-8A2D-2E467327387E} 
	.sect	".text"
	.clink
	.global	_configureIXbar

$C$DW$2	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$2, DW_AT_name("configureIXbar")
	.dwattr $C$DW$2, DW_AT_low_pc(_configureIXbar)
	.dwattr $C$DW$2, DW_AT_high_pc(0x00)
	.dwattr $C$DW$2, DW_AT_TI_symbol_name("_configureIXbar")
	.dwattr $C$DW$2, DW_AT_external
	.dwattr $C$DW$2, DW_AT_TI_begin_file("C:/Users/13571/Documents/MATLAB/Examples/R2023b/mcb/FocHallExample/mcb_pmsm_foc_hall_f28379d_ert_rtw/MW_c28xx_xbar.c")
	.dwattr $C$DW$2, DW_AT_TI_begin_line(0x08)
	.dwattr $C$DW$2, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$2, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "C:/Users/13571/Documents/MATLAB/Examples/R2023b/mcb/FocHallExample/mcb_pmsm_foc_hall_f28379d_ert_rtw/MW_c28xx_xbar.c",line 9,column 1,is_stmt,address _configureIXbar,isa 0

	.dwfde $C$DW$CIE, _configureIXbar
;----------------------------------------------------------------------
;   8 | void configureIXbar(void)                                              
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _configureIXbar               FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_configureIXbar:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "C:/Users/13571/Documents/MATLAB/Examples/R2023b/mcb/FocHallExample/mcb_pmsm_foc_hall_f28379d_ert_rtw/MW_c28xx_xbar.c",line 11,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
;  11 | EALLOW;                                                                
;----------------------------------------------------------------------
 EALLOW
	.dwpsn	file "C:/Users/13571/Documents/MATLAB/Examples/R2023b/mcb/FocHallExample/mcb_pmsm_foc_hall_f28379d_ert_rtw/MW_c28xx_xbar.c",line 12,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
;  12 | InputXbarRegs.INPUT7SELECT = 54;                                       
;----------------------------------------------------------------------
        MOVW      DP,#_InputXbarRegs+6  ; [CPU_ARAU] 
        MOVB      @$BLOCKED(_InputXbarRegs)+6,#54,UNC ; [CPU_ALU] |12| 
	.dwpsn	file "C:/Users/13571/Documents/MATLAB/Examples/R2023b/mcb/FocHallExample/mcb_pmsm_foc_hall_f28379d_ert_rtw/MW_c28xx_xbar.c",line 13,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
;  13 | InputXbarRegs.INPUT8SELECT = 55;                                       
;----------------------------------------------------------------------
        MOVB      @$BLOCKED(_InputXbarRegs)+7,#55,UNC ; [CPU_ALU] |13| 
	.dwpsn	file "C:/Users/13571/Documents/MATLAB/Examples/R2023b/mcb/FocHallExample/mcb_pmsm_foc_hall_f28379d_ert_rtw/MW_c28xx_xbar.c",line 14,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
;  14 | InputXbarRegs.INPUT9SELECT = 57;                                       
;----------------------------------------------------------------------
        MOVB      @$BLOCKED(_InputXbarRegs)+8,#57,UNC ; [CPU_ALU] |14| 
	.dwpsn	file "C:/Users/13571/Documents/MATLAB/Examples/R2023b/mcb/FocHallExample/mcb_pmsm_foc_hall_f28379d_ert_rtw/MW_c28xx_xbar.c",line 15,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
;  15 | EDIS;                                                                  
;----------------------------------------------------------------------
 EDIS
	.dwpsn	file "C:/Users/13571/Documents/MATLAB/Examples/R2023b/mcb/FocHallExample/mcb_pmsm_foc_hall_f28379d_ert_rtw/MW_c28xx_xbar.c",line 16,column 1,is_stmt,isa 0
        SPM       #0                    ; [CPU_ALU] 
$C$DW$3	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$3, DW_AT_low_pc(0x00)
	.dwattr $C$DW$3, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$2, DW_AT_TI_end_file("C:/Users/13571/Documents/MATLAB/Examples/R2023b/mcb/FocHallExample/mcb_pmsm_foc_hall_f28379d_ert_rtw/MW_c28xx_xbar.c")
	.dwattr $C$DW$2, DW_AT_TI_end_line(0x10)
	.dwattr $C$DW$2, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$2

;**************************************************************
;* UNDEFINED EXTERNAL REFERENCES                              *
;**************************************************************
	.global	_InputXbarRegs

;***************************************************************
;* TYPE INFORMATION                                            *
;***************************************************************

$C$DW$T$20	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$20, DW_AT_name("INPUTSELECTLOCK_BITS")
	.dwattr $C$DW$T$20, DW_AT_byte_size(0x02)
$C$DW$4	.dwtag  DW_TAG_member
	.dwattr $C$DW$4, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$4, DW_AT_name("INPUT1SELECT")
	.dwattr $C$DW$4, DW_AT_TI_symbol_name("_INPUT1SELECT")
	.dwattr $C$DW$4, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$4, DW_AT_bit_size(0x01)
	.dwattr $C$DW$4, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$4, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$5	.dwtag  DW_TAG_member
	.dwattr $C$DW$5, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$5, DW_AT_name("INPUT2SELECT")
	.dwattr $C$DW$5, DW_AT_TI_symbol_name("_INPUT2SELECT")
	.dwattr $C$DW$5, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$5, DW_AT_bit_size(0x01)
	.dwattr $C$DW$5, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$5, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$6	.dwtag  DW_TAG_member
	.dwattr $C$DW$6, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$6, DW_AT_name("INPUT3SELECT")
	.dwattr $C$DW$6, DW_AT_TI_symbol_name("_INPUT3SELECT")
	.dwattr $C$DW$6, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$6, DW_AT_bit_size(0x01)
	.dwattr $C$DW$6, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$6, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$7	.dwtag  DW_TAG_member
	.dwattr $C$DW$7, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$7, DW_AT_name("INPUT4SELECT")
	.dwattr $C$DW$7, DW_AT_TI_symbol_name("_INPUT4SELECT")
	.dwattr $C$DW$7, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$7, DW_AT_bit_size(0x01)
	.dwattr $C$DW$7, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$7, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$8	.dwtag  DW_TAG_member
	.dwattr $C$DW$8, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$8, DW_AT_name("INPUT5SELECT")
	.dwattr $C$DW$8, DW_AT_TI_symbol_name("_INPUT5SELECT")
	.dwattr $C$DW$8, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$8, DW_AT_bit_size(0x01)
	.dwattr $C$DW$8, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$8, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$9	.dwtag  DW_TAG_member
	.dwattr $C$DW$9, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$9, DW_AT_name("INPUT6SELECT")
	.dwattr $C$DW$9, DW_AT_TI_symbol_name("_INPUT6SELECT")
	.dwattr $C$DW$9, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$9, DW_AT_bit_size(0x01)
	.dwattr $C$DW$9, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$9, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$10	.dwtag  DW_TAG_member
	.dwattr $C$DW$10, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$10, DW_AT_name("INPUT7SELECT")
	.dwattr $C$DW$10, DW_AT_TI_symbol_name("_INPUT7SELECT")
	.dwattr $C$DW$10, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$10, DW_AT_bit_size(0x01)
	.dwattr $C$DW$10, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$10, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$11	.dwtag  DW_TAG_member
	.dwattr $C$DW$11, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$11, DW_AT_name("INPUT8SELECT")
	.dwattr $C$DW$11, DW_AT_TI_symbol_name("_INPUT8SELECT")
	.dwattr $C$DW$11, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$11, DW_AT_bit_size(0x01)
	.dwattr $C$DW$11, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$11, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$12	.dwtag  DW_TAG_member
	.dwattr $C$DW$12, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$12, DW_AT_name("INPUT9SELECT")
	.dwattr $C$DW$12, DW_AT_TI_symbol_name("_INPUT9SELECT")
	.dwattr $C$DW$12, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$12, DW_AT_bit_size(0x01)
	.dwattr $C$DW$12, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$12, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$13	.dwtag  DW_TAG_member
	.dwattr $C$DW$13, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$13, DW_AT_name("INPUT10SELECT")
	.dwattr $C$DW$13, DW_AT_TI_symbol_name("_INPUT10SELECT")
	.dwattr $C$DW$13, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$13, DW_AT_bit_size(0x01)
	.dwattr $C$DW$13, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$13, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$14	.dwtag  DW_TAG_member
	.dwattr $C$DW$14, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$14, DW_AT_name("INPUT11SELECT")
	.dwattr $C$DW$14, DW_AT_TI_symbol_name("_INPUT11SELECT")
	.dwattr $C$DW$14, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$14, DW_AT_bit_size(0x01)
	.dwattr $C$DW$14, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$14, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$15	.dwtag  DW_TAG_member
	.dwattr $C$DW$15, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$15, DW_AT_name("INPUT12SELECT")
	.dwattr $C$DW$15, DW_AT_TI_symbol_name("_INPUT12SELECT")
	.dwattr $C$DW$15, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$15, DW_AT_bit_size(0x01)
	.dwattr $C$DW$15, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$15, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$16	.dwtag  DW_TAG_member
	.dwattr $C$DW$16, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$16, DW_AT_name("INPUT13SELECT")
	.dwattr $C$DW$16, DW_AT_TI_symbol_name("_INPUT13SELECT")
	.dwattr $C$DW$16, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$16, DW_AT_bit_size(0x01)
	.dwattr $C$DW$16, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$16, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$17	.dwtag  DW_TAG_member
	.dwattr $C$DW$17, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$17, DW_AT_name("INPUT14SELECT")
	.dwattr $C$DW$17, DW_AT_TI_symbol_name("_INPUT14SELECT")
	.dwattr $C$DW$17, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$17, DW_AT_bit_size(0x01)
	.dwattr $C$DW$17, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$17, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$18	.dwtag  DW_TAG_member
	.dwattr $C$DW$18, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$18, DW_AT_name("INPUT15SELECT")
	.dwattr $C$DW$18, DW_AT_TI_symbol_name("_INPUT15SELECT")
	.dwattr $C$DW$18, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$18, DW_AT_bit_size(0x01)
	.dwattr $C$DW$18, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$18, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$19	.dwtag  DW_TAG_member
	.dwattr $C$DW$19, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$19, DW_AT_name("INPUT16SELECT")
	.dwattr $C$DW$19, DW_AT_TI_symbol_name("_INPUT16SELECT")
	.dwattr $C$DW$19, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$19, DW_AT_bit_size(0x01)
	.dwattr $C$DW$19, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$19, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$20	.dwtag  DW_TAG_member
	.dwattr $C$DW$20, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$20, DW_AT_name("rsvd1")
	.dwattr $C$DW$20, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$20, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$20, DW_AT_bit_size(0x10)
	.dwattr $C$DW$20, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$20, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$20


$C$DW$T$22	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$22, DW_AT_name("INPUTSELECTLOCK_REG")
	.dwattr $C$DW$T$22, DW_AT_byte_size(0x02)
$C$DW$21	.dwtag  DW_TAG_member
	.dwattr $C$DW$21, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$21, DW_AT_name("all")
	.dwattr $C$DW$21, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$21, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$21, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$22	.dwtag  DW_TAG_member
	.dwattr $C$DW$22, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$22, DW_AT_name("bit")
	.dwattr $C$DW$22, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$22, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$22, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$22


$C$DW$T$24	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$24, DW_AT_name("INPUT_XBAR_REGS")
	.dwattr $C$DW$T$24, DW_AT_byte_size(0x20)
$C$DW$23	.dwtag  DW_TAG_member
	.dwattr $C$DW$23, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$23, DW_AT_name("INPUT1SELECT")
	.dwattr $C$DW$23, DW_AT_TI_symbol_name("_INPUT1SELECT")
	.dwattr $C$DW$23, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$23, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$24	.dwtag  DW_TAG_member
	.dwattr $C$DW$24, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$24, DW_AT_name("INPUT2SELECT")
	.dwattr $C$DW$24, DW_AT_TI_symbol_name("_INPUT2SELECT")
	.dwattr $C$DW$24, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$24, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$25	.dwtag  DW_TAG_member
	.dwattr $C$DW$25, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$25, DW_AT_name("INPUT3SELECT")
	.dwattr $C$DW$25, DW_AT_TI_symbol_name("_INPUT3SELECT")
	.dwattr $C$DW$25, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$25, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$26	.dwtag  DW_TAG_member
	.dwattr $C$DW$26, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$26, DW_AT_name("INPUT4SELECT")
	.dwattr $C$DW$26, DW_AT_TI_symbol_name("_INPUT4SELECT")
	.dwattr $C$DW$26, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$26, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$27	.dwtag  DW_TAG_member
	.dwattr $C$DW$27, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$27, DW_AT_name("INPUT5SELECT")
	.dwattr $C$DW$27, DW_AT_TI_symbol_name("_INPUT5SELECT")
	.dwattr $C$DW$27, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$27, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$28	.dwtag  DW_TAG_member
	.dwattr $C$DW$28, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$28, DW_AT_name("INPUT6SELECT")
	.dwattr $C$DW$28, DW_AT_TI_symbol_name("_INPUT6SELECT")
	.dwattr $C$DW$28, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$28, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$29	.dwtag  DW_TAG_member
	.dwattr $C$DW$29, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$29, DW_AT_name("INPUT7SELECT")
	.dwattr $C$DW$29, DW_AT_TI_symbol_name("_INPUT7SELECT")
	.dwattr $C$DW$29, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$29, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$30	.dwtag  DW_TAG_member
	.dwattr $C$DW$30, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$30, DW_AT_name("INPUT8SELECT")
	.dwattr $C$DW$30, DW_AT_TI_symbol_name("_INPUT8SELECT")
	.dwattr $C$DW$30, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr $C$DW$30, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$31	.dwtag  DW_TAG_member
	.dwattr $C$DW$31, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$31, DW_AT_name("INPUT9SELECT")
	.dwattr $C$DW$31, DW_AT_TI_symbol_name("_INPUT9SELECT")
	.dwattr $C$DW$31, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$31, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$32	.dwtag  DW_TAG_member
	.dwattr $C$DW$32, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$32, DW_AT_name("INPUT10SELECT")
	.dwattr $C$DW$32, DW_AT_TI_symbol_name("_INPUT10SELECT")
	.dwattr $C$DW$32, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr $C$DW$32, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$33	.dwtag  DW_TAG_member
	.dwattr $C$DW$33, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$33, DW_AT_name("INPUT11SELECT")
	.dwattr $C$DW$33, DW_AT_TI_symbol_name("_INPUT11SELECT")
	.dwattr $C$DW$33, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$33, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$34	.dwtag  DW_TAG_member
	.dwattr $C$DW$34, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$34, DW_AT_name("INPUT12SELECT")
	.dwattr $C$DW$34, DW_AT_TI_symbol_name("_INPUT12SELECT")
	.dwattr $C$DW$34, DW_AT_data_member_location[DW_OP_plus_uconst 0xb]
	.dwattr $C$DW$34, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$35	.dwtag  DW_TAG_member
	.dwattr $C$DW$35, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$35, DW_AT_name("INPUT13SELECT")
	.dwattr $C$DW$35, DW_AT_TI_symbol_name("_INPUT13SELECT")
	.dwattr $C$DW$35, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$35, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$36	.dwtag  DW_TAG_member
	.dwattr $C$DW$36, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$36, DW_AT_name("INPUT14SELECT")
	.dwattr $C$DW$36, DW_AT_TI_symbol_name("_INPUT14SELECT")
	.dwattr $C$DW$36, DW_AT_data_member_location[DW_OP_plus_uconst 0xd]
	.dwattr $C$DW$36, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$37	.dwtag  DW_TAG_member
	.dwattr $C$DW$37, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$37, DW_AT_name("rsvd1")
	.dwattr $C$DW$37, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$37, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$37, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$38	.dwtag  DW_TAG_member
	.dwattr $C$DW$38, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$38, DW_AT_name("INPUTSELECTLOCK")
	.dwattr $C$DW$38, DW_AT_TI_symbol_name("_INPUTSELECTLOCK")
	.dwattr $C$DW$38, DW_AT_data_member_location[DW_OP_plus_uconst 0x1e]
	.dwattr $C$DW$38, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$24

$C$DW$39	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$39, DW_AT_type(*$C$DW$T$24)

$C$DW$T$25	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$25, DW_AT_type(*$C$DW$39)

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


$C$DW$T$23	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$23, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$23, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$23, DW_AT_byte_size(0x10)
$C$DW$40	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$40, DW_AT_upper_bound(0x0f)

	.dwendtag $C$DW$T$23

$C$DW$T$12	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$12, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$12, DW_AT_name("long")
	.dwattr $C$DW$T$12, DW_AT_byte_size(0x02)

$C$DW$T$13	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$13, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$13, DW_AT_name("unsigned long")
	.dwattr $C$DW$T$13, DW_AT_byte_size(0x02)

$C$DW$T$21	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$21, DW_AT_name("Uint32")
	.dwattr $C$DW$T$21, DW_AT_type(*$C$DW$T$13)
	.dwattr $C$DW$T$21, DW_AT_language(DW_LANG_C)

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

$C$DW$41	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$41, DW_AT_name("AL")
	.dwattr $C$DW$41, DW_AT_location[DW_OP_reg0]

$C$DW$42	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$42, DW_AT_name("AH")
	.dwattr $C$DW$42, DW_AT_location[DW_OP_reg1]

$C$DW$43	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$43, DW_AT_name("PL")
	.dwattr $C$DW$43, DW_AT_location[DW_OP_reg2]

$C$DW$44	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$44, DW_AT_name("PH")
	.dwattr $C$DW$44, DW_AT_location[DW_OP_reg3]

$C$DW$45	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$45, DW_AT_name("SP")
	.dwattr $C$DW$45, DW_AT_location[DW_OP_reg20]

$C$DW$46	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$46, DW_AT_name("XT")
	.dwattr $C$DW$46, DW_AT_location[DW_OP_reg21]

$C$DW$47	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$47, DW_AT_name("T")
	.dwattr $C$DW$47, DW_AT_location[DW_OP_reg22]

$C$DW$48	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$48, DW_AT_name("ST0")
	.dwattr $C$DW$48, DW_AT_location[DW_OP_reg23]

$C$DW$49	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$49, DW_AT_name("ST1")
	.dwattr $C$DW$49, DW_AT_location[DW_OP_reg24]

$C$DW$50	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$50, DW_AT_name("PC")
	.dwattr $C$DW$50, DW_AT_location[DW_OP_reg25]

$C$DW$51	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$51, DW_AT_name("RPC")
	.dwattr $C$DW$51, DW_AT_location[DW_OP_reg26]

$C$DW$52	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$52, DW_AT_name("FP")
	.dwattr $C$DW$52, DW_AT_location[DW_OP_reg28]

$C$DW$53	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$53, DW_AT_name("DP")
	.dwattr $C$DW$53, DW_AT_location[DW_OP_reg29]

$C$DW$54	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$54, DW_AT_name("SXM")
	.dwattr $C$DW$54, DW_AT_location[DW_OP_reg30]

$C$DW$55	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$55, DW_AT_name("PM")
	.dwattr $C$DW$55, DW_AT_location[DW_OP_reg31]

$C$DW$56	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$56, DW_AT_name("OVM")
	.dwattr $C$DW$56, DW_AT_location[DW_OP_regx 0x20]

$C$DW$57	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$57, DW_AT_name("PAGE0")
	.dwattr $C$DW$57, DW_AT_location[DW_OP_regx 0x21]

$C$DW$58	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$58, DW_AT_name("AMODE")
	.dwattr $C$DW$58, DW_AT_location[DW_OP_regx 0x22]

$C$DW$59	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$59, DW_AT_name("EALLOW")
	.dwattr $C$DW$59, DW_AT_location[DW_OP_regx 0x4e]

$C$DW$60	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$60, DW_AT_name("INTM")
	.dwattr $C$DW$60, DW_AT_location[DW_OP_regx 0x23]

$C$DW$61	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$61, DW_AT_name("IFR")
	.dwattr $C$DW$61, DW_AT_location[DW_OP_regx 0x24]

$C$DW$62	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$62, DW_AT_name("IER")
	.dwattr $C$DW$62, DW_AT_location[DW_OP_regx 0x25]

$C$DW$63	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$63, DW_AT_name("V")
	.dwattr $C$DW$63, DW_AT_location[DW_OP_regx 0x26]

$C$DW$64	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$64, DW_AT_name("PSEUDOH")
	.dwattr $C$DW$64, DW_AT_location[DW_OP_regx 0x4c]

$C$DW$65	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$65, DW_AT_name("VOL")
	.dwattr $C$DW$65, DW_AT_location[DW_OP_regx 0x4d]

$C$DW$66	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$66, DW_AT_name("AR0")
	.dwattr $C$DW$66, DW_AT_location[DW_OP_reg4]

$C$DW$67	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$67, DW_AT_name("XAR0")
	.dwattr $C$DW$67, DW_AT_location[DW_OP_reg5]

$C$DW$68	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$68, DW_AT_name("AR1")
	.dwattr $C$DW$68, DW_AT_location[DW_OP_reg6]

$C$DW$69	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$69, DW_AT_name("XAR1")
	.dwattr $C$DW$69, DW_AT_location[DW_OP_reg7]

$C$DW$70	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$70, DW_AT_name("AR2")
	.dwattr $C$DW$70, DW_AT_location[DW_OP_reg8]

$C$DW$71	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$71, DW_AT_name("XAR2")
	.dwattr $C$DW$71, DW_AT_location[DW_OP_reg9]

$C$DW$72	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$72, DW_AT_name("AR3")
	.dwattr $C$DW$72, DW_AT_location[DW_OP_reg10]

$C$DW$73	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$73, DW_AT_name("XAR3")
	.dwattr $C$DW$73, DW_AT_location[DW_OP_reg11]

$C$DW$74	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$74, DW_AT_name("AR4")
	.dwattr $C$DW$74, DW_AT_location[DW_OP_reg12]

$C$DW$75	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$75, DW_AT_name("XAR4")
	.dwattr $C$DW$75, DW_AT_location[DW_OP_reg13]

$C$DW$76	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$76, DW_AT_name("AR5")
	.dwattr $C$DW$76, DW_AT_location[DW_OP_reg14]

$C$DW$77	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$77, DW_AT_name("XAR5")
	.dwattr $C$DW$77, DW_AT_location[DW_OP_reg15]

$C$DW$78	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$78, DW_AT_name("AR6")
	.dwattr $C$DW$78, DW_AT_location[DW_OP_reg16]

$C$DW$79	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$79, DW_AT_name("XAR6")
	.dwattr $C$DW$79, DW_AT_location[DW_OP_reg17]

$C$DW$80	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$80, DW_AT_name("AR7")
	.dwattr $C$DW$80, DW_AT_location[DW_OP_reg18]

$C$DW$81	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$81, DW_AT_name("XAR7")
	.dwattr $C$DW$81, DW_AT_location[DW_OP_reg19]

$C$DW$82	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$82, DW_AT_name("R0H")
	.dwattr $C$DW$82, DW_AT_location[DW_OP_regx 0x2b]

$C$DW$83	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$83, DW_AT_name("R1H")
	.dwattr $C$DW$83, DW_AT_location[DW_OP_regx 0x2f]

$C$DW$84	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$84, DW_AT_name("R2H")
	.dwattr $C$DW$84, DW_AT_location[DW_OP_regx 0x33]

$C$DW$85	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$85, DW_AT_name("R3H")
	.dwattr $C$DW$85, DW_AT_location[DW_OP_regx 0x37]

$C$DW$86	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$86, DW_AT_name("R4H")
	.dwattr $C$DW$86, DW_AT_location[DW_OP_regx 0x3b]

$C$DW$87	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$87, DW_AT_name("R5H")
	.dwattr $C$DW$87, DW_AT_location[DW_OP_regx 0x3f]

$C$DW$88	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$88, DW_AT_name("R6H")
	.dwattr $C$DW$88, DW_AT_location[DW_OP_regx 0x43]

$C$DW$89	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$89, DW_AT_name("R7H")
	.dwattr $C$DW$89, DW_AT_location[DW_OP_regx 0x47]

$C$DW$90	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$90, DW_AT_name("RB")
	.dwattr $C$DW$90, DW_AT_location[DW_OP_regx 0x4a]

$C$DW$91	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$91, DW_AT_name("STF")
	.dwattr $C$DW$91, DW_AT_location[DW_OP_regx 0x28]

$C$DW$92	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$92, DW_AT_name("FPUHAZ")
	.dwattr $C$DW$92, DW_AT_location[DW_OP_reg27]

$C$DW$93	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$93, DW_AT_name("STF_HWDIV")
	.dwattr $C$DW$93, DW_AT_location[DW_OP_regx 0x4f]

	.dwendtag $C$DW$CU

