;***************************************************************
;* TMS320C2000 G3 C/C++ Codegen                               PC v22.6.0.LTS *
;* Date/Time created: Thu Nov 20 18:09:58 2025                 *
;***************************************************************
	.compiler_opts --abi=coffabi --float_support=fpu32 --hll_source=on --mem_model:code=flat --mem_model:data=large --object_format=coff --silicon_errata_fpu1_workaround=off --silicon_version=28 --symdebug:dwarf --symdebug:dwarf_version=3 --tmu_support=tmu0 
	.asg	XAR2, FP

$C$DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr $C$DW$CU, DW_AT_name("C:/Users/13571/Documents/MATLAB/Examples/R2023b/mcb/FocHallExample/mcb_pmsm_foc_hall_f28379d_ert_rtw/DSP28xx_SciUtil.c")
	.dwattr $C$DW$CU, DW_AT_producer("TI TMS320C2000 G3 C/C++ Codegen PC v22.6.0.LTS Copyright (c) 1996-2018 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("C:\Users\13571\Documents\MATLAB\Examples\R2023b\mcb\FocHallExample\mcb_pmsm_foc_hall_f28379d_ert_rtw\CCS_Project\Debug")
	.global	_checkSCITransmitInProgressA
_checkSCITransmitInProgressA:	.usect	".ebss",1,1,0
$C$DW$1	.dwtag  DW_TAG_variable
	.dwattr $C$DW$1, DW_AT_name("checkSCITransmitInProgressA")
	.dwattr $C$DW$1, DW_AT_TI_symbol_name("_checkSCITransmitInProgressA")
	.dwattr $C$DW$1, DW_AT_location[DW_OP_addr _checkSCITransmitInProgressA]
	.dwattr $C$DW$1, DW_AT_type(*$C$DW$T$78)
	.dwattr $C$DW$1, DW_AT_external

	.global	_frameA1Transmitted
_frameA1Transmitted:	.usect	".ebss",1,1,0
$C$DW$2	.dwtag  DW_TAG_variable
	.dwattr $C$DW$2, DW_AT_name("frameA1Transmitted")
	.dwattr $C$DW$2, DW_AT_TI_symbol_name("_frameA1Transmitted")
	.dwattr $C$DW$2, DW_AT_location[DW_OP_addr _frameA1Transmitted]
	.dwattr $C$DW$2, DW_AT_type(*$C$DW$T$78)
	.dwattr $C$DW$2, DW_AT_external

	.global	_frameA1Count
_frameA1Count:	.usect	".ebss",2,1,1
$C$DW$3	.dwtag  DW_TAG_variable
	.dwattr $C$DW$3, DW_AT_name("frameA1Count")
	.dwattr $C$DW$3, DW_AT_TI_symbol_name("_frameA1Count")
	.dwattr $C$DW$3, DW_AT_location[DW_OP_addr _frameA1Count]
	.dwattr $C$DW$3, DW_AT_type(*$C$DW$T$86)
	.dwattr $C$DW$3, DW_AT_external

$C$DW$4	.dwtag  DW_TAG_variable
	.dwattr $C$DW$4, DW_AT_name("CpuTimer2Regs")
	.dwattr $C$DW$4, DW_AT_TI_symbol_name("_CpuTimer2Regs")
	.dwattr $C$DW$4, DW_AT_type(*$C$DW$T$60)
	.dwattr $C$DW$4, DW_AT_declaration
	.dwattr $C$DW$4, DW_AT_external

$C$DW$5	.dwtag  DW_TAG_variable
	.dwattr $C$DW$5, DW_AT_name("SciaRegs")
	.dwattr $C$DW$5, DW_AT_TI_symbol_name("_SciaRegs")
	.dwattr $C$DW$5, DW_AT_type(*$C$DW$T$72)
	.dwattr $C$DW$5, DW_AT_declaration
	.dwattr $C$DW$5, DW_AT_external

	.sblock	".ebss"
;	D:\Software\CCS\CCS12.2.0.00009_win64\c1220\ccs\tools\compiler\ti-cgt-c2000_22.6.0.LTS\bin\ac2000.exe -@C:\\Users\\13571\\AppData\\Local\\Temp\\{93067776-B17A-4472-B0B7-B0BACF1285EE} 
	.sect	".text"
	.clink
	.global	_scia_xmit

$C$DW$6	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$6, DW_AT_name("scia_xmit")
	.dwattr $C$DW$6, DW_AT_low_pc(_scia_xmit)
	.dwattr $C$DW$6, DW_AT_high_pc(0x00)
	.dwattr $C$DW$6, DW_AT_TI_symbol_name("_scia_xmit")
	.dwattr $C$DW$6, DW_AT_external
	.dwattr $C$DW$6, DW_AT_type(*$C$DW$T$76)
	.dwattr $C$DW$6, DW_AT_TI_begin_file("C:/Users/13571/Documents/MATLAB/Examples/R2023b/mcb/FocHallExample/mcb_pmsm_foc_hall_f28379d_ert_rtw/DSP28xx_SciUtil.c")
	.dwattr $C$DW$6, DW_AT_TI_begin_line(0x1c)
	.dwattr $C$DW$6, DW_AT_TI_begin_column(0x09)
	.dwattr $C$DW$6, DW_AT_TI_max_frame_size(-8)
	.dwpsn	file "C:/Users/13571/Documents/MATLAB/Examples/R2023b/mcb/FocHallExample/mcb_pmsm_foc_hall_f28379d_ert_rtw/DSP28xx_SciUtil.c",line 30,column 1,is_stmt,address _scia_xmit,isa 0

	.dwfde $C$DW$CIE, _scia_xmit
$C$DW$7	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$7, DW_AT_name("pmsg")
	.dwattr $C$DW$7, DW_AT_TI_symbol_name("_pmsg")
	.dwattr $C$DW$7, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$7, DW_AT_location[DW_OP_reg12]

$C$DW$8	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$8, DW_AT_name("msglen")
	.dwattr $C$DW$8, DW_AT_TI_symbol_name("_msglen")
	.dwattr $C$DW$8, DW_AT_type(*$C$DW$T$76)
	.dwattr $C$DW$8, DW_AT_location[DW_OP_reg0]

$C$DW$9	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$9, DW_AT_name("typeLen")
	.dwattr $C$DW$9, DW_AT_TI_symbol_name("_typeLen")
	.dwattr $C$DW$9, DW_AT_type(*$C$DW$T$76)
	.dwattr $C$DW$9, DW_AT_location[DW_OP_reg1]

;----------------------------------------------------------------------
;  28 | int16_T scia_xmit(unsigned char* pmsg, int16_T msglen, int16_T typeLen)
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _scia_xmit                    FR SIZE:   6           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  6 Auto,  0 SOE     *
;***************************************************************

_scia_xmit:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#6                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -8
$C$DW$10	.dwtag  DW_TAG_variable
	.dwattr $C$DW$10, DW_AT_name("pmsg")
	.dwattr $C$DW$10, DW_AT_TI_symbol_name("_pmsg")
	.dwattr $C$DW$10, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$10, DW_AT_location[DW_OP_breg20 -2]

$C$DW$11	.dwtag  DW_TAG_variable
	.dwattr $C$DW$11, DW_AT_name("msglen")
	.dwattr $C$DW$11, DW_AT_TI_symbol_name("_msglen")
	.dwattr $C$DW$11, DW_AT_type(*$C$DW$T$76)
	.dwattr $C$DW$11, DW_AT_location[DW_OP_breg20 -3]

$C$DW$12	.dwtag  DW_TAG_variable
	.dwattr $C$DW$12, DW_AT_name("typeLen")
	.dwattr $C$DW$12, DW_AT_TI_symbol_name("_typeLen")
	.dwattr $C$DW$12, DW_AT_type(*$C$DW$T$76)
	.dwattr $C$DW$12, DW_AT_location[DW_OP_breg20 -4]

$C$DW$13	.dwtag  DW_TAG_variable
	.dwattr $C$DW$13, DW_AT_name("i")
	.dwattr $C$DW$13, DW_AT_TI_symbol_name("_i")
	.dwattr $C$DW$13, DW_AT_type(*$C$DW$T$76)
	.dwattr $C$DW$13, DW_AT_location[DW_OP_breg20 -5]

$C$DW$14	.dwtag  DW_TAG_variable
	.dwattr $C$DW$14, DW_AT_name("j")
	.dwattr $C$DW$14, DW_AT_TI_symbol_name("_j")
	.dwattr $C$DW$14, DW_AT_type(*$C$DW$T$76)
	.dwattr $C$DW$14, DW_AT_location[DW_OP_breg20 -6]

;----------------------------------------------------------------------
;  31 | int16_T i,j;                                                           
;----------------------------------------------------------------------
        MOV       *-SP[4],AH            ; [CPU_ALU] |30| 
        MOV       *-SP[3],AL            ; [CPU_ALU] |30| 
        MOVL      *-SP[2],XAR4          ; [CPU_ALU] |30| 
	.dwpsn	file "C:/Users/13571/Documents/MATLAB/Examples/R2023b/mcb/FocHallExample/mcb_pmsm_foc_hall_f28379d_ert_rtw/DSP28xx_SciUtil.c",line 32,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
;  32 | if (typeLen==1) {                                                      
;----------------------------------------------------------------------
        MOV       AL,*-SP[4]            ; [CPU_ALU] |32| 
        CMPB      AL,#1                 ; [CPU_ALU] |32| 
        B         $C$L2,NEQ             ; [CPU_ALU] |32| 
        ; branchcc occurs ; [] |32| 
	.dwpsn	file "C:/Users/13571/Documents/MATLAB/Examples/R2023b/mcb/FocHallExample/mcb_pmsm_foc_hall_f28379d_ert_rtw/DSP28xx_SciUtil.c",line 33,column 10,is_stmt,isa 0
;----------------------------------------------------------------------
;  33 | for (i = 0; i < msglen; i++) {                                         
;----------------------------------------------------------------------
        MOV       *-SP[5],#0            ; [CPU_ALU] |33| 
	.dwpsn	file "C:/Users/13571/Documents/MATLAB/Examples/R2023b/mcb/FocHallExample/mcb_pmsm_foc_hall_f28379d_ert_rtw/DSP28xx_SciUtil.c",line 33,column 17,is_stmt,isa 0
        MOV       AL,*-SP[3]            ; [CPU_ALU] |33| 
        CMP       AL,*-SP[5]            ; [CPU_ALU] |33| 
        B         $C$L7,LEQ             ; [CPU_ALU] |33| 
        ; branchcc occurs ; [] |33| 
	.dwpsn	file "C:/Users/13571/Documents/MATLAB/Examples/R2023b/mcb/FocHallExample/mcb_pmsm_foc_hall_f28379d_ert_rtw/DSP28xx_SciUtil.c",line 34,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
;  34 | while (SciaRegs.SCIFFTX.bit.TXFFST == 16U) {                           
;----------------------------------------------------------------------
        SETC      SXM                   ; [CPU_ALU] 
$C$L1:    
	.dwpsn	file "C:/Users/13571/Documents/MATLAB/Examples/R2023b/mcb/FocHallExample/mcb_pmsm_foc_hall_f28379d_ert_rtw/DSP28xx_SciUtil.c",line 34,column 14,is_stmt,isa 0
        MOVW      DP,#_SciaRegs+10      ; [CPU_ARAU] 
        AND       AL,@$BLOCKED(_SciaRegs)+10,#0x1f00 ; [CPU_ALU] |34| 
        LSR       AL,8                  ; [CPU_ALU] |34| 
        CMPB      AL,#16                ; [CPU_ALU] |34| 
        B         $C$L1,EQ              ; [CPU_ALU] |34| 
        ; branchcc occurs ; [] |34| 
	.dwpsn	file "C:/Users/13571/Documents/MATLAB/Examples/R2023b/mcb/FocHallExample/mcb_pmsm_foc_hall_f28379d_ert_rtw/DSP28xx_SciUtil.c",line 37,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
;  37 | SciaRegs.SCITXBUF.bit.TXDT = pmsg[i];                                  
;  39 | } else {                                                               
;----------------------------------------------------------------------
        MOV       ACC,*-SP[5]           ; [CPU_ALU] |37| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |37| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |37| 
        MOVZ      AR6,@$BLOCKED(_SciaRegs)+9 ; [CPU_ALU] |37| 
        MOV       AL,*+XAR4[0]          ; [CPU_ALU] |37| 
        MOVB      AR6,AL.LSB            ; [CPU_ALU] |37| 
        MOV       @$BLOCKED(_SciaRegs)+9,AR6 ; [CPU_ALU] |37| 
	.dwpsn	file "C:/Users/13571/Documents/MATLAB/Examples/R2023b/mcb/FocHallExample/mcb_pmsm_foc_hall_f28379d_ert_rtw/DSP28xx_SciUtil.c",line 33,column 29,is_stmt,isa 0
        INC       *-SP[5]               ; [CPU_ALU] |33| 
	.dwpsn	file "C:/Users/13571/Documents/MATLAB/Examples/R2023b/mcb/FocHallExample/mcb_pmsm_foc_hall_f28379d_ert_rtw/DSP28xx_SciUtil.c",line 33,column 17,is_stmt,isa 0
        MOV       AL,*-SP[3]            ; [CPU_ALU] |33| 
        CMP       AL,*-SP[5]            ; [CPU_ALU] |33| 
        B         $C$L1,GT              ; [CPU_ALU] |33| 
        ; branchcc occurs ; [] |33| 
        B         $C$L7,UNC             ; [CPU_ALU] 
        ; branch occurs ; [] 
$C$L2:    
	.dwpsn	file "C:/Users/13571/Documents/MATLAB/Examples/R2023b/mcb/FocHallExample/mcb_pmsm_foc_hall_f28379d_ert_rtw/DSP28xx_SciUtil.c",line 40,column 10,is_stmt,isa 0
;----------------------------------------------------------------------
;  40 | for (i = 0; i < (msglen/2); i++) {                                     
;----------------------------------------------------------------------
        MOV       *-SP[5],#0            ; [CPU_ALU] |40| 
        SETC      SXM                   ; [CPU_ALU] 
        B         $C$L6,UNC             ; [CPU_ALU] |40| 
        ; branch occurs ; [] |40| 
$C$L3:    
	.dwpsn	file "C:/Users/13571/Documents/MATLAB/Examples/R2023b/mcb/FocHallExample/mcb_pmsm_foc_hall_f28379d_ert_rtw/DSP28xx_SciUtil.c",line 41,column 12,is_stmt,isa 0
;----------------------------------------------------------------------
;  41 | for (j = 0; j<=1; j++) {                                               
;----------------------------------------------------------------------
        MOV       *-SP[6],#0            ; [CPU_ALU] |41| 
	.dwpsn	file "C:/Users/13571/Documents/MATLAB/Examples/R2023b/mcb/FocHallExample/mcb_pmsm_foc_hall_f28379d_ert_rtw/DSP28xx_SciUtil.c",line 41,column 19,is_stmt,isa 0
        MOV       AL,*-SP[6]            ; [CPU_ALU] |41| 
        CMPB      AL,#1                 ; [CPU_ALU] |41| 
        B         $C$L5,GT              ; [CPU_ALU] |41| 
        ; branchcc occurs ; [] |41| 
	.dwpsn	file "C:/Users/13571/Documents/MATLAB/Examples/R2023b/mcb/FocHallExample/mcb_pmsm_foc_hall_f28379d_ert_rtw/DSP28xx_SciUtil.c",line 42,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
;  42 | while (SciaRegs.SCIFFTX.bit.TXFFST == 16U) {                           
;----------------------------------------------------------------------
$C$L4:    
	.dwpsn	file "C:/Users/13571/Documents/MATLAB/Examples/R2023b/mcb/FocHallExample/mcb_pmsm_foc_hall_f28379d_ert_rtw/DSP28xx_SciUtil.c",line 42,column 16,is_stmt,isa 0
        MOVW      DP,#_SciaRegs+10      ; [CPU_ARAU] 
        AND       AL,@$BLOCKED(_SciaRegs)+10,#0x1f00 ; [CPU_ALU] |42| 
        LSR       AL,8                  ; [CPU_ALU] |42| 
        CMPB      AL,#16                ; [CPU_ALU] |42| 
        B         $C$L4,EQ              ; [CPU_ALU] |42| 
        ; branchcc occurs ; [] |42| 
	.dwpsn	file "C:/Users/13571/Documents/MATLAB/Examples/R2023b/mcb/FocHallExample/mcb_pmsm_foc_hall_f28379d_ert_rtw/DSP28xx_SciUtil.c",line 45,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
;  45 | SciaRegs.SCITXBUF.bit.TXDT = pmsg[i]>>(8*j);                           
;----------------------------------------------------------------------
        MOV       ACC,*-SP[5]           ; [CPU_ALU] |45| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |45| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |45| 
        MOVZ      AR7,@$BLOCKED(_SciaRegs)+9 ; [CPU_ALU] |45| 
        MOV       ACC,*-SP[6] << #3     ; [CPU_ALU] |45| 
        MOV       T,AL                  ; [CPU_ALU] |45| 
        MOV       AL,*+XAR4[0]          ; [CPU_ALU] |45| 
        LSR       AL,T                  ; [CPU_ALU] |45| 
        MOVB      AR7,AL.LSB            ; [CPU_ALU] |45| 
        MOV       @$BLOCKED(_SciaRegs)+9,AR7 ; [CPU_ALU] |45| 
	.dwpsn	file "C:/Users/13571/Documents/MATLAB/Examples/R2023b/mcb/FocHallExample/mcb_pmsm_foc_hall_f28379d_ert_rtw/DSP28xx_SciUtil.c",line 41,column 25,is_stmt,isa 0
        INC       *-SP[6]               ; [CPU_ALU] |41| 
	.dwpsn	file "C:/Users/13571/Documents/MATLAB/Examples/R2023b/mcb/FocHallExample/mcb_pmsm_foc_hall_f28379d_ert_rtw/DSP28xx_SciUtil.c",line 41,column 19,is_stmt,isa 0
        MOV       AL,*-SP[6]            ; [CPU_ALU] |41| 
        CMPB      AL,#1                 ; [CPU_ALU] |41| 
        B         $C$L4,LEQ             ; [CPU_ALU] |41| 
        ; branchcc occurs ; [] |41| 
$C$L5:    
	.dwpsn	file "C:/Users/13571/Documents/MATLAB/Examples/R2023b/mcb/FocHallExample/mcb_pmsm_foc_hall_f28379d_ert_rtw/DSP28xx_SciUtil.c",line 40,column 33,is_stmt,isa 0
        INC       *-SP[5]               ; [CPU_ALU] |40| 
$C$L6:    
	.dwpsn	file "C:/Users/13571/Documents/MATLAB/Examples/R2023b/mcb/FocHallExample/mcb_pmsm_foc_hall_f28379d_ert_rtw/DSP28xx_SciUtil.c",line 40,column 17,is_stmt,isa 0
        MOV       AH,*-SP[3]            ; [CPU_ALU] |40| 
        MOV       AL,AH                 ; [CPU_ALU] |40| 
        LSR       AL,15                 ; [CPU_ALU] |40| 
        ADD       AL,AH                 ; [CPU_ALU] |40| 
        ASR       AL,1                  ; [CPU_ALU] |40| 
        CMP       AL,*-SP[5]            ; [CPU_ALU] |40| 
        B         $C$L3,GT              ; [CPU_ALU] |40| 
        ; branchcc occurs ; [] |40| 
$C$L7:    
	.dwpsn	file "C:/Users/13571/Documents/MATLAB/Examples/R2023b/mcb/FocHallExample/mcb_pmsm_foc_hall_f28379d_ert_rtw/DSP28xx_SciUtil.c",line 50,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
;  50 | return 0;                                                              
;----------------------------------------------------------------------
        MOVB      AL,#0                 ; [CPU_ALU] |50| 
	.dwpsn	file "C:/Users/13571/Documents/MATLAB/Examples/R2023b/mcb/FocHallExample/mcb_pmsm_foc_hall_f28379d_ert_rtw/DSP28xx_SciUtil.c",line 51,column 1,is_stmt,isa 0
        SUBB      SP,#6                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$15	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$15, DW_AT_low_pc(0x00)
	.dwattr $C$DW$15, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$6, DW_AT_TI_end_file("C:/Users/13571/Documents/MATLAB/Examples/R2023b/mcb/FocHallExample/mcb_pmsm_foc_hall_f28379d_ert_rtw/DSP28xx_SciUtil.c")
	.dwattr $C$DW$6, DW_AT_TI_end_line(0x33)
	.dwattr $C$DW$6, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$6

	.sect	".text"
	.clink
	.global	_scia_rcv

$C$DW$16	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$16, DW_AT_name("scia_rcv")
	.dwattr $C$DW$16, DW_AT_low_pc(_scia_rcv)
	.dwattr $C$DW$16, DW_AT_high_pc(0x00)
	.dwattr $C$DW$16, DW_AT_TI_symbol_name("_scia_rcv")
	.dwattr $C$DW$16, DW_AT_external
	.dwattr $C$DW$16, DW_AT_type(*$C$DW$T$76)
	.dwattr $C$DW$16, DW_AT_TI_begin_file("C:/Users/13571/Documents/MATLAB/Examples/R2023b/mcb/FocHallExample/mcb_pmsm_foc_hall_f28379d_ert_rtw/DSP28xx_SciUtil.c")
	.dwattr $C$DW$16, DW_AT_TI_begin_line(0x3e)
	.dwattr $C$DW$16, DW_AT_TI_begin_column(0x09)
	.dwattr $C$DW$16, DW_AT_TI_max_frame_size(-18)
	.dwpsn	file "C:/Users/13571/Documents/MATLAB/Examples/R2023b/mcb/FocHallExample/mcb_pmsm_foc_hall_f28379d_ert_rtw/DSP28xx_SciUtil.c",line 63,column 1,is_stmt,address _scia_rcv,isa 0

	.dwfde $C$DW$CIE, _scia_rcv
$C$DW$17	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$17, DW_AT_name("rcvBuff")
	.dwattr $C$DW$17, DW_AT_TI_symbol_name("_rcvBuff")
	.dwattr $C$DW$17, DW_AT_type(*$C$DW$T$79)
	.dwattr $C$DW$17, DW_AT_location[DW_OP_reg12]

$C$DW$18	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$18, DW_AT_name("buffLen")
	.dwattr $C$DW$18, DW_AT_TI_symbol_name("_buffLen")
	.dwattr $C$DW$18, DW_AT_type(*$C$DW$T$76)
	.dwattr $C$DW$18, DW_AT_location[DW_OP_reg0]

$C$DW$19	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$19, DW_AT_name("typeLen")
	.dwattr $C$DW$19, DW_AT_TI_symbol_name("_typeLen")
	.dwattr $C$DW$19, DW_AT_type(*$C$DW$T$76)
	.dwattr $C$DW$19, DW_AT_location[DW_OP_reg1]

;----------------------------------------------------------------------
;  62 | int16_T scia_rcv(uint16_T *rcvBuff, int16_T buffLen, int16_T typeLen)  
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _scia_rcv                     FR SIZE:  16           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter, 15 Auto,  0 SOE     *
;***************************************************************

_scia_rcv:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#16                ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -18
$C$DW$20	.dwtag  DW_TAG_variable
	.dwattr $C$DW$20, DW_AT_name("rcvBuff")
	.dwattr $C$DW$20, DW_AT_TI_symbol_name("_rcvBuff")
	.dwattr $C$DW$20, DW_AT_type(*$C$DW$T$79)
	.dwattr $C$DW$20, DW_AT_location[DW_OP_breg20 -2]

$C$DW$21	.dwtag  DW_TAG_variable
	.dwattr $C$DW$21, DW_AT_name("elapsedTimeCnt")
	.dwattr $C$DW$21, DW_AT_TI_symbol_name("_elapsedTimeCnt")
	.dwattr $C$DW$21, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$21, DW_AT_location[DW_OP_breg20 -4]

$C$DW$22	.dwtag  DW_TAG_variable
	.dwattr $C$DW$22, DW_AT_name("startTimeCnt")
	.dwattr $C$DW$22, DW_AT_TI_symbol_name("_startTimeCnt")
	.dwattr $C$DW$22, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$22, DW_AT_location[DW_OP_breg20 -6]

$C$DW$23	.dwtag  DW_TAG_variable
	.dwattr $C$DW$23, DW_AT_name("currentTimeCnt")
	.dwattr $C$DW$23, DW_AT_TI_symbol_name("_currentTimeCnt")
	.dwattr $C$DW$23, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$23, DW_AT_location[DW_OP_breg20 -8]

$C$DW$24	.dwtag  DW_TAG_variable
	.dwattr $C$DW$24, DW_AT_name("BlockingModeTimeoutCnt")
	.dwattr $C$DW$24, DW_AT_TI_symbol_name("_BlockingModeTimeoutCnt")
	.dwattr $C$DW$24, DW_AT_type(*$C$DW$T$86)
	.dwattr $C$DW$24, DW_AT_location[DW_OP_breg20 -10]

$C$DW$25	.dwtag  DW_TAG_variable
	.dwattr $C$DW$25, DW_AT_name("buffLen")
	.dwattr $C$DW$25, DW_AT_TI_symbol_name("_buffLen")
	.dwattr $C$DW$25, DW_AT_type(*$C$DW$T$76)
	.dwattr $C$DW$25, DW_AT_location[DW_OP_breg20 -11]

$C$DW$26	.dwtag  DW_TAG_variable
	.dwattr $C$DW$26, DW_AT_name("typeLen")
	.dwattr $C$DW$26, DW_AT_TI_symbol_name("_typeLen")
	.dwattr $C$DW$26, DW_AT_type(*$C$DW$T$76)
	.dwattr $C$DW$26, DW_AT_location[DW_OP_breg20 -12]

$C$DW$27	.dwtag  DW_TAG_variable
	.dwattr $C$DW$27, DW_AT_name("i")
	.dwattr $C$DW$27, DW_AT_TI_symbol_name("_i")
	.dwattr $C$DW$27, DW_AT_type(*$C$DW$T$76)
	.dwattr $C$DW$27, DW_AT_location[DW_OP_breg20 -13]

$C$DW$28	.dwtag  DW_TAG_variable
	.dwattr $C$DW$28, DW_AT_name("errorVal")
	.dwattr $C$DW$28, DW_AT_TI_symbol_name("_errorVal")
	.dwattr $C$DW$28, DW_AT_type(*$C$DW$T$76)
	.dwattr $C$DW$28, DW_AT_location[DW_OP_breg20 -14]

$C$DW$29	.dwtag  DW_TAG_variable
	.dwattr $C$DW$29, DW_AT_name("byte_cnt")
	.dwattr $C$DW$29, DW_AT_TI_symbol_name("_byte_cnt")
	.dwattr $C$DW$29, DW_AT_type(*$C$DW$T$78)
	.dwattr $C$DW$29, DW_AT_location[DW_OP_breg20 -15]

;----------------------------------------------------------------------
;  64 | int16_T i;                                                             
;----------------------------------------------------------------------
        MOV       *-SP[12],AH           ; [CPU_ALU] |63| 
        MOV       *-SP[11],AL           ; [CPU_ALU] |63| 
        MOVL      *-SP[2],XAR4          ; [CPU_ALU] |63| 
	.dwpsn	file "C:/Users/13571/Documents/MATLAB/Examples/R2023b/mcb/FocHallExample/mcb_pmsm_foc_hall_f28379d_ert_rtw/DSP28xx_SciUtil.c",line 65,column 20,is_stmt,isa 0
;----------------------------------------------------------------------
;  65 | int16_T errorVal = NOERROR;                                            
;----------------------------------------------------------------------
        MOV       *-SP[14],#0           ; [CPU_ALU] |65| 
	.dwpsn	file "C:/Users/13571/Documents/MATLAB/Examples/R2023b/mcb/FocHallExample/mcb_pmsm_foc_hall_f28379d_ert_rtw/DSP28xx_SciUtil.c",line 66,column 21,is_stmt,isa 0
;----------------------------------------------------------------------
;  66 | uint16_T byte_cnt = 0;                                                 
;  67 | Uint32 elapsedTimeCnt, startTimeCnt, currentTimeCnt;                   
;----------------------------------------------------------------------
        MOV       *-SP[15],#0           ; [CPU_ALU] |66| 
	.dwpsn	file "C:/Users/13571/Documents/MATLAB/Examples/R2023b/mcb/FocHallExample/mcb_pmsm_foc_hall_f28379d_ert_rtw/DSP28xx_SciUtil.c",line 68,column 35,is_stmt,isa 0
;----------------------------------------------------------------------
;  68 | uint32_T BlockingModeTimeoutCnt = 1.7500000000000002E+6;               
;----------------------------------------------------------------------
        MOVL      XAR4,#1750000         ; [CPU_ARAU] |68| 
        MOVL      *-SP[10],XAR4         ; [CPU_ALU] |68| 
	.dwpsn	file "C:/Users/13571/Documents/MATLAB/Examples/R2023b/mcb/FocHallExample/mcb_pmsm_foc_hall_f28379d_ert_rtw/DSP28xx_SciUtil.c",line 69,column 8,is_stmt,isa 0
;----------------------------------------------------------------------
;  69 | for (i = 0; i<buffLen; i++) {                                          
;----------------------------------------------------------------------
        MOV       *-SP[13],#0           ; [CPU_ALU] |69| 
	.dwpsn	file "C:/Users/13571/Documents/MATLAB/Examples/R2023b/mcb/FocHallExample/mcb_pmsm_foc_hall_f28379d_ert_rtw/DSP28xx_SciUtil.c",line 69,column 15,is_stmt,isa 0
        CMP       AL,*-SP[13]           ; [CPU_ALU] |69| 
        B         $C$L22,LEQ            ; [CPU_ALU] |69| 
        ; branchcc occurs ; [] |69| 
$C$L8:    
	.dwpsn	file "C:/Users/13571/Documents/MATLAB/Examples/R2023b/mcb/FocHallExample/mcb_pmsm_foc_hall_f28379d_ert_rtw/DSP28xx_SciUtil.c",line 70,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
;  70 | startTimeCnt = ReadCpuTimer2Counter();                                 
;----------------------------------------------------------------------
        MOVW      DP,#_CpuTimer2Regs    ; [CPU_ARAU] 
        MOVL      ACC,@$BLOCKED(_CpuTimer2Regs) ; [CPU_ALU] |70| 
        MOVL      *-SP[6],ACC           ; [CPU_ALU] |70| 
	.dwpsn	file "C:/Users/13571/Documents/MATLAB/Examples/R2023b/mcb/FocHallExample/mcb_pmsm_foc_hall_f28379d_ert_rtw/DSP28xx_SciUtil.c",line 71,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
;  71 | elapsedTimeCnt = 0U;                                                   
;----------------------------------------------------------------------
        MOVB      ACC,#0                ; [CPU_ALU] |71| 
        MOVL      *-SP[4],ACC           ; [CPU_ALU] |71| 
	.dwpsn	file "C:/Users/13571/Documents/MATLAB/Examples/R2023b/mcb/FocHallExample/mcb_pmsm_foc_hall_f28379d_ert_rtw/DSP28xx_SciUtil.c",line 72,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
;  72 | while (SciaRegs.SCIFFRX.bit.RXFFST == 0U) {                            
;----------------------------------------------------------------------
        B         $C$L12,UNC            ; [CPU_ALU] |72| 
        ; branch occurs ; [] |72| 
$C$L9:    
	.dwpsn	file "C:/Users/13571/Documents/MATLAB/Examples/R2023b/mcb/FocHallExample/mcb_pmsm_foc_hall_f28379d_ert_rtw/DSP28xx_SciUtil.c",line 74,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
;  74 | currentTimeCnt = (ReadCpuTimer2Counter());                             
;----------------------------------------------------------------------
        MOVW      DP,#_CpuTimer2Regs    ; [CPU_ARAU] 
        MOVL      ACC,@$BLOCKED(_CpuTimer2Regs) ; [CPU_ALU] |74| 
        MOVL      *-SP[8],ACC           ; [CPU_ALU] |74| 
	.dwpsn	file "C:/Users/13571/Documents/MATLAB/Examples/R2023b/mcb/FocHallExample/mcb_pmsm_foc_hall_f28379d_ert_rtw/DSP28xx_SciUtil.c",line 75,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
;  75 | if (currentTimeCnt <= startTimeCnt) {                                  
;----------------------------------------------------------------------
        MOVL      ACC,*-SP[6]           ; [CPU_ALU] |75| 
        CMPL      ACC,*-SP[8]           ; [CPU_ALU] |75| 
        B         $C$L10,LO             ; [CPU_ALU] |75| 
        ; branchcc occurs ; [] |75| 
	.dwpsn	file "C:/Users/13571/Documents/MATLAB/Examples/R2023b/mcb/FocHallExample/mcb_pmsm_foc_hall_f28379d_ert_rtw/DSP28xx_SciUtil.c",line 76,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
;  76 | elapsedTimeCnt = (Uint32)(startTimeCnt - currentTimeCnt);              
;  77 | } else {                                                               
;----------------------------------------------------------------------
        SUBL      ACC,*-SP[8]           ; [CPU_ALU] |76| 
        MOVL      *-SP[4],ACC           ; [CPU_ALU] |76| 
        B         $C$L11,UNC            ; [CPU_ALU] 
        ; branch occurs ; [] 
$C$L10:    
	.dwpsn	file "C:/Users/13571/Documents/MATLAB/Examples/R2023b/mcb/FocHallExample/mcb_pmsm_foc_hall_f28379d_ert_rtw/DSP28xx_SciUtil.c",line 78,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
;  78 | elapsedTimeCnt = (Uint32)(0xFFFFFFFFU + startTimeCnt - currentTimeCnt);
;----------------------------------------------------------------------
        SUBL      ACC,*-SP[8]           ; [CPU_ALU] |78| 
        MOV       PL,#65535             ; [CPU_FPU] |78| 
        MOV       PH,#65535             ; [CPU_FPU] |78| 
        ADDL      P,ACC                 ; [CPU_ALU] |78| 
        MOVL      *-SP[4],P             ; [CPU_ALU] |78| 
$C$L11:    
	.dwpsn	file "C:/Users/13571/Documents/MATLAB/Examples/R2023b/mcb/FocHallExample/mcb_pmsm_foc_hall_f28379d_ert_rtw/DSP28xx_SciUtil.c",line 81,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
;  81 | if (elapsedTimeCnt >= BlockingModeTimeoutCnt) {                        
;----------------------------------------------------------------------
        MOVL      ACC,*-SP[10]          ; [CPU_ALU] |81| 
        CMPL      ACC,*-SP[4]           ; [CPU_ALU] |81| 
        B         $C$L12,HI             ; [CPU_ALU] |81| 
        ; branchcc occurs ; [] |81| 
	.dwpsn	file "C:/Users/13571/Documents/MATLAB/Examples/R2023b/mcb/FocHallExample/mcb_pmsm_foc_hall_f28379d_ert_rtw/DSP28xx_SciUtil.c",line 82,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
;  82 | return TIMEOUT;                                                        
;----------------------------------------------------------------------
        MOVB      AL,#1                 ; [CPU_ALU] |82| 
        B         $C$L23,UNC            ; [CPU_ALU] |82| 
        ; branch occurs ; [] |82| 
$C$L12:    
	.dwpsn	file "C:/Users/13571/Documents/MATLAB/Examples/R2023b/mcb/FocHallExample/mcb_pmsm_foc_hall_f28379d_ert_rtw/DSP28xx_SciUtil.c",line 72,column 12,is_stmt,isa 0
        MOVW      DP,#_SciaRegs+11      ; [CPU_ARAU] 
        AND       AL,@$BLOCKED(_SciaRegs)+11,#0x1f00 ; [CPU_ALU] |72| 
        LSR       AL,8                  ; [CPU_ALU] |72| 
        B         $C$L9,EQ              ; [CPU_ALU] |72| 
        ; branchcc occurs ; [] |72| 
	.dwpsn	file "C:/Users/13571/Documents/MATLAB/Examples/R2023b/mcb/FocHallExample/mcb_pmsm_foc_hall_f28379d_ert_rtw/DSP28xx_SciUtil.c",line 86,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
;  86 | if (typeLen > 1) {                                                     
;----------------------------------------------------------------------
        MOV       AL,*-SP[12]           ; [CPU_ALU] |86| 
        CMPB      AL,#1                 ; [CPU_ALU] |86| 
        B         $C$L14,LEQ            ; [CPU_ALU] |86| 
        ; branchcc occurs ; [] |86| 
	.dwpsn	file "C:/Users/13571/Documents/MATLAB/Examples/R2023b/mcb/FocHallExample/mcb_pmsm_foc_hall_f28379d_ert_rtw/DSP28xx_SciUtil.c",line 87,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
;  87 | if (byte_cnt == 0U) {                                                  
;----------------------------------------------------------------------
        MOV       AL,*-SP[15]           ; [CPU_ALU] |87| 
        B         $C$L13,NEQ            ; [CPU_ALU] |87| 
        ; branchcc occurs ; [] |87| 
	.dwpsn	file "C:/Users/13571/Documents/MATLAB/Examples/R2023b/mcb/FocHallExample/mcb_pmsm_foc_hall_f28379d_ert_rtw/DSP28xx_SciUtil.c",line 88,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
;  88 | rcvBuff[i/2] = (SciaRegs.SCIRXBUF.all & 0x00FFU);                      
;----------------------------------------------------------------------
        MOV       AH,*-SP[13]           ; [CPU_ALU] |88| 
        MOV       AL,AH                 ; [CPU_ALU] |88| 
        SETC      SXM                   ; [CPU_ALU] 
        LSR       AL,15                 ; [CPU_ALU] |88| 
        ADD       AL,AH                 ; [CPU_ALU] |88| 
        ASR       AL,1                  ; [CPU_ALU] |88| 
        MOV       ACC,AL                ; [CPU_ALU] |88| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |88| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |88| 
        MOVB      AL.LSB,@$BLOCKED(_SciaRegs)+7 ; [CPU_ALU] |88| 
        MOV       *+XAR4[0],AL          ; [CPU_ALU] |88| 
	.dwpsn	file "C:/Users/13571/Documents/MATLAB/Examples/R2023b/mcb/FocHallExample/mcb_pmsm_foc_hall_f28379d_ert_rtw/DSP28xx_SciUtil.c",line 89,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
;  89 | byte_cnt = 1U;                                                         
;  90 | } else {                                                               
;----------------------------------------------------------------------
        MOVB      *-SP[15],#1,UNC       ; [CPU_ALU] |89| 
        B         $C$L15,UNC            ; [CPU_ALU] 
        ; branch occurs ; [] 
$C$L13:    
	.dwpsn	file "C:/Users/13571/Documents/MATLAB/Examples/R2023b/mcb/FocHallExample/mcb_pmsm_foc_hall_f28379d_ert_rtw/DSP28xx_SciUtil.c",line 91,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
;  91 | rcvBuff[i/2] |= SciaRegs.SCIRXBUF.all << 8;                            
;----------------------------------------------------------------------
        MOV       AH,*-SP[13]           ; [CPU_ALU] |91| 
        MOV       AL,AH                 ; [CPU_ALU] |91| 
        SETC      SXM                   ; [CPU_ALU] 
        LSR       AL,15                 ; [CPU_ALU] |91| 
        ADD       AL,AH                 ; [CPU_ALU] |91| 
        ASR       AL,1                  ; [CPU_ALU] |91| 
        MOV       ACC,AL                ; [CPU_ALU] |91| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |91| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |91| 
        MOV       ACC,@$BLOCKED(_SciaRegs)+7 << #8 ; [CPU_ALU] |91| 
        OR        *+XAR4[0],AL          ; [CPU_ALU] |91| 
	.dwpsn	file "C:/Users/13571/Documents/MATLAB/Examples/R2023b/mcb/FocHallExample/mcb_pmsm_foc_hall_f28379d_ert_rtw/DSP28xx_SciUtil.c",line 92,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
;  92 | byte_cnt = 0U;                                                         
;  94 | } else {                                                               
;----------------------------------------------------------------------
        MOV       *-SP[15],#0           ; [CPU_ALU] |92| 
        B         $C$L15,UNC            ; [CPU_ALU] 
        ; branch occurs ; [] 
$C$L14:    
	.dwpsn	file "C:/Users/13571/Documents/MATLAB/Examples/R2023b/mcb/FocHallExample/mcb_pmsm_foc_hall_f28379d_ert_rtw/DSP28xx_SciUtil.c",line 95,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
;  95 | rcvBuff[i] = SciaRegs.SCIRXBUF.all;                                    
;  98 | //check flags                                                          
;----------------------------------------------------------------------
        SETC      SXM                   ; [CPU_ALU] 
        MOVZ      AR6,@$BLOCKED(_SciaRegs)+7 ; [CPU_ALU] |95| 
        MOV       ACC,*-SP[13]          ; [CPU_ALU] |95| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |95| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |95| 
        MOV       *+XAR4[0],AR6         ; [CPU_ALU] |95| 
$C$L15:    
	.dwpsn	file "C:/Users/13571/Documents/MATLAB/Examples/R2023b/mcb/FocHallExample/mcb_pmsm_foc_hall_f28379d_ert_rtw/DSP28xx_SciUtil.c",line 99,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
;  99 | if (SciaRegs.SCIFFRX.bit.RXFFOVF == 1U)/* detect FIFO overflow*/       
;----------------------------------------------------------------------
        AND       AL,@$BLOCKED(_SciaRegs)+11,#0x8000 ; [CPU_ALU] |99| 
        LSR       AL,15                 ; [CPU_ALU] |99| 
        CMPB      AL,#1                 ; [CPU_ALU] |99| 
        B         $C$L16,NEQ            ; [CPU_ALU] |99| 
        ; branchcc occurs ; [] |99| 
	.dwpsn	file "C:/Users/13571/Documents/MATLAB/Examples/R2023b/mcb/FocHallExample/mcb_pmsm_foc_hall_f28379d_ert_rtw/DSP28xx_SciUtil.c",line 101,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 101 | SciaRegs.SCIFFRX.bit.RXFFOVRCLR = 1U;                                  
;----------------------------------------------------------------------
        OR        @$BLOCKED(_SciaRegs)+11,#0x4000 ; [CPU_ALU] |101| 
$C$L16:    
	.dwpsn	file "C:/Users/13571/Documents/MATLAB/Examples/R2023b/mcb/FocHallExample/mcb_pmsm_foc_hall_f28379d_ert_rtw/DSP28xx_SciUtil.c",line 108,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 108 | if (SciaRegs.SCIRXST.bit.FE) {                                         
;----------------------------------------------------------------------
        TBIT      @$BLOCKED(_SciaRegs)+5,#4 ; [CPU_ALU] |108| 
        B         $C$L17,NTC            ; [CPU_ALU] |108| 
        ; branchcc occurs ; [] |108| 
	.dwpsn	file "C:/Users/13571/Documents/MATLAB/Examples/R2023b/mcb/FocHallExample/mcb_pmsm_foc_hall_f28379d_ert_rtw/DSP28xx_SciUtil.c",line 109,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 109 | errorVal = FRAMERR;                                                    
;----------------------------------------------------------------------
        MOVB      *-SP[14],#4,UNC       ; [CPU_ALU] |109| 
$C$L17:    
	.dwpsn	file "C:/Users/13571/Documents/MATLAB/Examples/R2023b/mcb/FocHallExample/mcb_pmsm_foc_hall_f28379d_ert_rtw/DSP28xx_SciUtil.c",line 112,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 112 | if (SciaRegs.SCIRXST.bit.PE) {                                         
;----------------------------------------------------------------------
        TBIT      @$BLOCKED(_SciaRegs)+5,#2 ; [CPU_ALU] |112| 
        B         $C$L18,NTC            ; [CPU_ALU] |112| 
        ; branchcc occurs ; [] |112| 
	.dwpsn	file "C:/Users/13571/Documents/MATLAB/Examples/R2023b/mcb/FocHallExample/mcb_pmsm_foc_hall_f28379d_ert_rtw/DSP28xx_SciUtil.c",line 113,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 113 | errorVal = PRTYERR;                                                    
;----------------------------------------------------------------------
        MOVB      *-SP[14],#3,UNC       ; [CPU_ALU] |113| 
$C$L18:    
	.dwpsn	file "C:/Users/13571/Documents/MATLAB/Examples/R2023b/mcb/FocHallExample/mcb_pmsm_foc_hall_f28379d_ert_rtw/DSP28xx_SciUtil.c",line 116,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 116 | if (SciaRegs.SCIRXST.bit.OE) {                                         
;----------------------------------------------------------------------
        TBIT      @$BLOCKED(_SciaRegs)+5,#3 ; [CPU_ALU] |116| 
        B         $C$L19,NTC            ; [CPU_ALU] |116| 
        ; branchcc occurs ; [] |116| 
	.dwpsn	file "C:/Users/13571/Documents/MATLAB/Examples/R2023b/mcb/FocHallExample/mcb_pmsm_foc_hall_f28379d_ert_rtw/DSP28xx_SciUtil.c",line 117,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 117 | errorVal = OVRNERR;                                                    
;----------------------------------------------------------------------
        MOVB      *-SP[14],#5,UNC       ; [CPU_ALU] |117| 
$C$L19:    
	.dwpsn	file "C:/Users/13571/Documents/MATLAB/Examples/R2023b/mcb/FocHallExample/mcb_pmsm_foc_hall_f28379d_ert_rtw/DSP28xx_SciUtil.c",line 120,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 120 | if (SciaRegs.SCIRXST.bit.BRKDT) {                                      
;----------------------------------------------------------------------
        TBIT      @$BLOCKED(_SciaRegs)+5,#5 ; [CPU_ALU] |120| 
        B         $C$L20,NTC            ; [CPU_ALU] |120| 
        ; branchcc occurs ; [] |120| 
	.dwpsn	file "C:/Users/13571/Documents/MATLAB/Examples/R2023b/mcb/FocHallExample/mcb_pmsm_foc_hall_f28379d_ert_rtw/DSP28xx_SciUtil.c",line 121,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 121 | errorVal = BRKDTERR;                                                   
;----------------------------------------------------------------------
        MOVB      *-SP[14],#6,UNC       ; [CPU_ALU] |121| 
$C$L20:    
	.dwpsn	file "C:/Users/13571/Documents/MATLAB/Examples/R2023b/mcb/FocHallExample/mcb_pmsm_foc_hall_f28379d_ert_rtw/DSP28xx_SciUtil.c",line 124,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 124 | if (SciaRegs.SCIRXST.bit.RXERROR == 1U) {                              
;----------------------------------------------------------------------
        AND       AL,@$BLOCKED(_SciaRegs)+5,#0x0080 ; [CPU_ALU] |124| 
        LSR       AL,7                  ; [CPU_ALU] |124| 
        CMPB      AL,#1                 ; [CPU_ALU] |124| 
        B         $C$L21,NEQ            ; [CPU_ALU] |124| 
        ; branchcc occurs ; [] |124| 
	.dwpsn	file "C:/Users/13571/Documents/MATLAB/Examples/R2023b/mcb/FocHallExample/mcb_pmsm_foc_hall_f28379d_ert_rtw/DSP28xx_SciUtil.c",line 125,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 125 | SciaRegs.SCICTL1.bit.SWRESET = 1U;                                     
;----------------------------------------------------------------------
        OR        @$BLOCKED(_SciaRegs)+1,#0x0020 ; [CPU_ALU] |125| 
	.dwpsn	file "C:/Users/13571/Documents/MATLAB/Examples/R2023b/mcb/FocHallExample/mcb_pmsm_foc_hall_f28379d_ert_rtw/DSP28xx_SciUtil.c",line 126,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 126 | SciaRegs.SCICTL1.bit.SWRESET = 0U;                                     
;----------------------------------------------------------------------
        AND       @$BLOCKED(_SciaRegs)+1,#0xffdf ; [CPU_ALU] |126| 
	.dwpsn	file "C:/Users/13571/Documents/MATLAB/Examples/R2023b/mcb/FocHallExample/mcb_pmsm_foc_hall_f28379d_ert_rtw/DSP28xx_SciUtil.c",line 127,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 127 | SciaRegs.SCICTL1.bit.SWRESET = 1U;                                     
;----------------------------------------------------------------------
        OR        @$BLOCKED(_SciaRegs)+1,#0x0020 ; [CPU_ALU] |127| 
$C$L21:    
	.dwpsn	file "C:/Users/13571/Documents/MATLAB/Examples/R2023b/mcb/FocHallExample/mcb_pmsm_foc_hall_f28379d_ert_rtw/DSP28xx_SciUtil.c",line 69,column 26,is_stmt,isa 0
        INC       *-SP[13]              ; [CPU_ALU] |69| 
	.dwpsn	file "C:/Users/13571/Documents/MATLAB/Examples/R2023b/mcb/FocHallExample/mcb_pmsm_foc_hall_f28379d_ert_rtw/DSP28xx_SciUtil.c",line 69,column 15,is_stmt,isa 0
        MOV       AL,*-SP[11]           ; [CPU_ALU] |69| 
        CMP       AL,*-SP[13]           ; [CPU_ALU] |69| 
        B         $C$L8,GT              ; [CPU_ALU] |69| 
        ; branchcc occurs ; [] |69| 
$C$L22:    
	.dwpsn	file "C:/Users/13571/Documents/MATLAB/Examples/R2023b/mcb/FocHallExample/mcb_pmsm_foc_hall_f28379d_ert_rtw/DSP28xx_SciUtil.c",line 131,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 131 | return errorVal;                                                       
;----------------------------------------------------------------------
        MOV       AL,*-SP[14]           ; [CPU_ALU] |131| 
$C$L23:    
	.dwpsn	file "C:/Users/13571/Documents/MATLAB/Examples/R2023b/mcb/FocHallExample/mcb_pmsm_foc_hall_f28379d_ert_rtw/DSP28xx_SciUtil.c",line 132,column 1,is_stmt,isa 0
        SUBB      SP,#16                ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$30	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$30, DW_AT_low_pc(0x00)
	.dwattr $C$DW$30, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$16, DW_AT_TI_end_file("C:/Users/13571/Documents/MATLAB/Examples/R2023b/mcb/FocHallExample/mcb_pmsm_foc_hall_f28379d_ert_rtw/DSP28xx_SciUtil.c")
	.dwattr $C$DW$16, DW_AT_TI_end_line(0x84)
	.dwattr $C$DW$16, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$16

	.sect	".text"
	.clink
	.global	_scia_rcv_varsize

$C$DW$31	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$31, DW_AT_name("scia_rcv_varsize")
	.dwattr $C$DW$31, DW_AT_low_pc(_scia_rcv_varsize)
	.dwattr $C$DW$31, DW_AT_high_pc(0x00)
	.dwattr $C$DW$31, DW_AT_TI_symbol_name("_scia_rcv_varsize")
	.dwattr $C$DW$31, DW_AT_external
	.dwattr $C$DW$31, DW_AT_type(*$C$DW$T$76)
	.dwattr $C$DW$31, DW_AT_TI_begin_file("C:/Users/13571/Documents/MATLAB/Examples/R2023b/mcb/FocHallExample/mcb_pmsm_foc_hall_f28379d_ert_rtw/DSP28xx_SciUtil.c")
	.dwattr $C$DW$31, DW_AT_TI_begin_line(0x95)
	.dwattr $C$DW$31, DW_AT_TI_begin_column(0x09)
	.dwattr $C$DW$31, DW_AT_TI_max_frame_size(-14)
	.dwpsn	file "C:/Users/13571/Documents/MATLAB/Examples/R2023b/mcb/FocHallExample/mcb_pmsm_foc_hall_f28379d_ert_rtw/DSP28xx_SciUtil.c",line 151,column 1,is_stmt,address _scia_rcv_varsize,isa 0

	.dwfde $C$DW$CIE, _scia_rcv_varsize
$C$DW$32	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$32, DW_AT_name("rcvBuff")
	.dwattr $C$DW$32, DW_AT_TI_symbol_name("_rcvBuff")
	.dwattr $C$DW$32, DW_AT_type(*$C$DW$T$79)
	.dwattr $C$DW$32, DW_AT_location[DW_OP_reg12]

$C$DW$33	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$33, DW_AT_name("buffLen")
	.dwattr $C$DW$33, DW_AT_TI_symbol_name("_buffLen")
	.dwattr $C$DW$33, DW_AT_type(*$C$DW$T$76)
	.dwattr $C$DW$33, DW_AT_location[DW_OP_reg0]

$C$DW$34	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$34, DW_AT_name("typeLen")
	.dwattr $C$DW$34, DW_AT_TI_symbol_name("_typeLen")
	.dwattr $C$DW$34, DW_AT_type(*$C$DW$T$76)
	.dwattr $C$DW$34, DW_AT_location[DW_OP_reg1]

$C$DW$35	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$35, DW_AT_name("expTail")
	.dwattr $C$DW$35, DW_AT_TI_symbol_name("_expTail")
	.dwattr $C$DW$35, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$35, DW_AT_location[DW_OP_reg14]

$C$DW$36	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$36, DW_AT_name("tailsize")
	.dwattr $C$DW$36, DW_AT_TI_symbol_name("_tailsize")
	.dwattr $C$DW$36, DW_AT_type(*$C$DW$T$76)
	.dwattr $C$DW$36, DW_AT_location[DW_OP_breg20 -15]

$C$DW$37	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$37, DW_AT_name("rcvBufferLen")
	.dwattr $C$DW$37, DW_AT_TI_symbol_name("_rcvBufferLen")
	.dwattr $C$DW$37, DW_AT_type(*$C$DW$T$81)
	.dwattr $C$DW$37, DW_AT_location[DW_OP_breg20 -18]

;----------------------------------------------------------------------
; 149 | int16_T scia_rcv_varsize(uint16_T *rcvBuff, int16_T buffLen, int16_T ty
;     | peLen,                                                                 
; 150 | unsigned char *expTail, int16_T tailsize, int16_T *rcvBufferLen)       
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _scia_rcv_varsize             FR SIZE:  12           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter, 12 Auto,  0 SOE     *
;***************************************************************

_scia_rcv_varsize:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#12                ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -14
$C$DW$38	.dwtag  DW_TAG_variable
	.dwattr $C$DW$38, DW_AT_name("rcvBuff")
	.dwattr $C$DW$38, DW_AT_TI_symbol_name("_rcvBuff")
	.dwattr $C$DW$38, DW_AT_type(*$C$DW$T$79)
	.dwattr $C$DW$38, DW_AT_location[DW_OP_breg20 -2]

$C$DW$39	.dwtag  DW_TAG_variable
	.dwattr $C$DW$39, DW_AT_name("expTail")
	.dwattr $C$DW$39, DW_AT_TI_symbol_name("_expTail")
	.dwattr $C$DW$39, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$39, DW_AT_location[DW_OP_breg20 -4]

$C$DW$40	.dwtag  DW_TAG_variable
	.dwattr $C$DW$40, DW_AT_name("buffLen")
	.dwattr $C$DW$40, DW_AT_TI_symbol_name("_buffLen")
	.dwattr $C$DW$40, DW_AT_type(*$C$DW$T$76)
	.dwattr $C$DW$40, DW_AT_location[DW_OP_breg20 -5]

$C$DW$41	.dwtag  DW_TAG_variable
	.dwattr $C$DW$41, DW_AT_name("typeLen")
	.dwattr $C$DW$41, DW_AT_TI_symbol_name("_typeLen")
	.dwattr $C$DW$41, DW_AT_type(*$C$DW$T$76)
	.dwattr $C$DW$41, DW_AT_location[DW_OP_breg20 -6]

$C$DW$42	.dwtag  DW_TAG_variable
	.dwattr $C$DW$42, DW_AT_name("i")
	.dwattr $C$DW$42, DW_AT_TI_symbol_name("_i")
	.dwattr $C$DW$42, DW_AT_type(*$C$DW$T$76)
	.dwattr $C$DW$42, DW_AT_location[DW_OP_breg20 -7]

$C$DW$43	.dwtag  DW_TAG_variable
	.dwattr $C$DW$43, DW_AT_name("errorVal")
	.dwattr $C$DW$43, DW_AT_TI_symbol_name("_errorVal")
	.dwattr $C$DW$43, DW_AT_type(*$C$DW$T$76)
	.dwattr $C$DW$43, DW_AT_location[DW_OP_breg20 -8]

$C$DW$44	.dwtag  DW_TAG_variable
	.dwattr $C$DW$44, DW_AT_name("byte_cnt")
	.dwattr $C$DW$44, DW_AT_TI_symbol_name("_byte_cnt")
	.dwattr $C$DW$44, DW_AT_type(*$C$DW$T$78)
	.dwattr $C$DW$44, DW_AT_location[DW_OP_breg20 -9]

$C$DW$45	.dwtag  DW_TAG_variable
	.dwattr $C$DW$45, DW_AT_name("tailCount")
	.dwattr $C$DW$45, DW_AT_TI_symbol_name("_tailCount")
	.dwattr $C$DW$45, DW_AT_type(*$C$DW$T$76)
	.dwattr $C$DW$45, DW_AT_location[DW_OP_breg20 -10]

$C$DW$46	.dwtag  DW_TAG_variable
	.dwattr $C$DW$46, DW_AT_name("totalLen")
	.dwattr $C$DW$46, DW_AT_TI_symbol_name("_totalLen")
	.dwattr $C$DW$46, DW_AT_type(*$C$DW$T$76)
	.dwattr $C$DW$46, DW_AT_location[DW_OP_breg20 -11]

        MOV       *-SP[6],AH            ; [CPU_ALU] |151| 
        MOV       *-SP[5],AL            ; [CPU_ALU] |151| 
        MOVL      *-SP[4],XAR5          ; [CPU_ALU] |151| 
        MOVL      *-SP[2],XAR4          ; [CPU_ALU] |151| 
	.dwpsn	file "C:/Users/13571/Documents/MATLAB/Examples/R2023b/mcb/FocHallExample/mcb_pmsm_foc_hall_f28379d_ert_rtw/DSP28xx_SciUtil.c",line 152,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 152 | int16_T i = 0;                                                         
;----------------------------------------------------------------------
        MOV       *-SP[7],#0            ; [CPU_ALU] |152| 
	.dwpsn	file "C:/Users/13571/Documents/MATLAB/Examples/R2023b/mcb/FocHallExample/mcb_pmsm_foc_hall_f28379d_ert_rtw/DSP28xx_SciUtil.c",line 153,column 20,is_stmt,isa 0
;----------------------------------------------------------------------
; 153 | int16_T errorVal = NOERROR;                                            
;----------------------------------------------------------------------
        MOV       *-SP[8],#0            ; [CPU_ALU] |153| 
	.dwpsn	file "C:/Users/13571/Documents/MATLAB/Examples/R2023b/mcb/FocHallExample/mcb_pmsm_foc_hall_f28379d_ert_rtw/DSP28xx_SciUtil.c",line 154,column 21,is_stmt,isa 0
;----------------------------------------------------------------------
; 154 | uint16_T byte_cnt = 0;                                                 
;----------------------------------------------------------------------
        MOV       *-SP[9],#0            ; [CPU_ALU] |154| 
	.dwpsn	file "C:/Users/13571/Documents/MATLAB/Examples/R2023b/mcb/FocHallExample/mcb_pmsm_foc_hall_f28379d_ert_rtw/DSP28xx_SciUtil.c",line 155,column 21,is_stmt,isa 0
;----------------------------------------------------------------------
; 155 | int16_T tailCount = 0;                                                 
;----------------------------------------------------------------------
        MOV       *-SP[10],#0           ; [CPU_ALU] |155| 
	.dwpsn	file "C:/Users/13571/Documents/MATLAB/Examples/R2023b/mcb/FocHallExample/mcb_pmsm_foc_hall_f28379d_ert_rtw/DSP28xx_SciUtil.c",line 156,column 20,is_stmt,isa 0
;----------------------------------------------------------------------
; 156 | int16_T totalLen = buffLen + tailsize;                                 
;----------------------------------------------------------------------
        MOV       AL,*-SP[15]           ; [CPU_ALU] |156| 
        ADD       AL,*-SP[5]            ; [CPU_ALU] |156| 
        MOV       *-SP[11],AL           ; [CPU_ALU] |156| 
	.dwpsn	file "C:/Users/13571/Documents/MATLAB/Examples/R2023b/mcb/FocHallExample/mcb_pmsm_foc_hall_f28379d_ert_rtw/DSP28xx_SciUtil.c",line 157,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 157 | *rcvBufferLen = 0;                                                     
;----------------------------------------------------------------------
        MOVL      XAR4,*-SP[18]         ; [CPU_ALU] |157| 
        MOV       *+XAR4[0],#0          ; [CPU_ALU] |157| 
	.dwpsn	file "C:/Users/13571/Documents/MATLAB/Examples/R2023b/mcb/FocHallExample/mcb_pmsm_foc_hall_f28379d_ert_rtw/DSP28xx_SciUtil.c",line 158,column 10,is_stmt,isa 0
;----------------------------------------------------------------------
; 158 | while (i < totalLen) {                                                 
;----------------------------------------------------------------------
        MOV       AL,*-SP[11]           ; [CPU_ALU] |158| 
        CMP       AL,*-SP[7]            ; [CPU_ALU] |158| 
        B         $C$L40,LEQ            ; [CPU_ALU] |158| 
        ; branchcc occurs ; [] |158| 
$C$L24:    

$C$DW$47	.dwtag  DW_TAG_lexical_block
	.dwattr $C$DW$47, DW_AT_low_pc(0x00)
	.dwattr $C$DW$47, DW_AT_high_pc(0x00)
	.dwpsn	file "C:/Users/13571/Documents/MATLAB/Examples/R2023b/mcb/FocHallExample/mcb_pmsm_foc_hall_f28379d_ert_rtw/DSP28xx_SciUtil.c",line 159,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 159 | if (SciaRegs.SCIFFRX.bit.RXFFST > 0U) {/*Check if receive FIFO has data
;     | */                                                                     
;----------------------------------------------------------------------
        MOVW      DP,#_SciaRegs+11      ; [CPU_ARAU] 
        AND       AL,@$BLOCKED(_SciaRegs)+11,#0x1f00 ; [CPU_ALU] |159| 
        LSR       AL,8                  ; [CPU_ALU] |159| 
        B         $C$L30,EQ             ; [CPU_ALU] |159| 
        ; branchcc occurs ; [] |159| 

$C$DW$48	.dwtag  DW_TAG_lexical_block
	.dwattr $C$DW$48, DW_AT_low_pc(0x00)
	.dwattr $C$DW$48, DW_AT_high_pc(0x00)
	.dwpsn	file "C:/Users/13571/Documents/MATLAB/Examples/R2023b/mcb/FocHallExample/mcb_pmsm_foc_hall_f28379d_ert_rtw/DSP28xx_SciUtil.c",line 160,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 160 | if (typeLen > 1) {                                                     
;----------------------------------------------------------------------
        MOV       AL,*-SP[6]            ; [CPU_ALU] |160| 
        CMPB      AL,#1                 ; [CPU_ALU] |160| 
        B         $C$L28,LEQ            ; [CPU_ALU] |160| 
        ; branchcc occurs ; [] |160| 

$C$DW$49	.dwtag  DW_TAG_lexical_block
	.dwattr $C$DW$49, DW_AT_low_pc(0x00)
	.dwattr $C$DW$49, DW_AT_high_pc(0x00)
$C$DW$50	.dwtag  DW_TAG_variable
	.dwattr $C$DW$50, DW_AT_name("tempData")
	.dwattr $C$DW$50, DW_AT_TI_symbol_name("_tempData")
	.dwattr $C$DW$50, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$50, DW_AT_location[DW_OP_breg20 -12]

	.dwpsn	file "C:/Users/13571/Documents/MATLAB/Examples/R2023b/mcb/FocHallExample/mcb_pmsm_foc_hall_f28379d_ert_rtw/DSP28xx_SciUtil.c",line 161,column 22,is_stmt,isa 0
;----------------------------------------------------------------------
; 161 | int tempData = 0;                                                      
;----------------------------------------------------------------------
        MOV       *-SP[12],#0           ; [CPU_ALU] |161| 
	.dwpsn	file "C:/Users/13571/Documents/MATLAB/Examples/R2023b/mcb/FocHallExample/mcb_pmsm_foc_hall_f28379d_ert_rtw/DSP28xx_SciUtil.c",line 162,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 162 | tempData = SciaRegs.SCIRXBUF.all;                                      
;----------------------------------------------------------------------
        MOV       AL,@$BLOCKED(_SciaRegs)+7 ; [CPU_ALU] |162| 
        MOV       *-SP[12],AL           ; [CPU_ALU] |162| 
	.dwpsn	file "C:/Users/13571/Documents/MATLAB/Examples/R2023b/mcb/FocHallExample/mcb_pmsm_foc_hall_f28379d_ert_rtw/DSP28xx_SciUtil.c",line 163,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 163 | if (byte_cnt == 0U) {                                                  
;----------------------------------------------------------------------
        MOV       AL,*-SP[9]            ; [CPU_ALU] |163| 
        B         $C$L25,NEQ            ; [CPU_ALU] |163| 
        ; branchcc occurs ; [] |163| 
	.dwpsn	file "C:/Users/13571/Documents/MATLAB/Examples/R2023b/mcb/FocHallExample/mcb_pmsm_foc_hall_f28379d_ert_rtw/DSP28xx_SciUtil.c",line 164,column 11,is_stmt,isa 0
;----------------------------------------------------------------------
; 164 | rcvBuff[i/2] = (tempData & 0x00FFU);                                   
;----------------------------------------------------------------------
        MOV       AH,*-SP[7]            ; [CPU_ALU] |164| 
        MOV       AL,AH                 ; [CPU_ALU] |164| 
        SETC      SXM                   ; [CPU_ALU] 
        LSR       AL,15                 ; [CPU_ALU] |164| 
        ADD       AL,AH                 ; [CPU_ALU] |164| 
        ASR       AL,1                  ; [CPU_ALU] |164| 
        MOV       ACC,AL                ; [CPU_ALU] |164| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |164| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |164| 
        MOV       AL,*-SP[12]           ; [CPU_ALU] |164| 
        ANDB      AL,#0xff              ; [CPU_ALU] |164| 
        MOV       *+XAR4[0],AL          ; [CPU_ALU] |164| 
	.dwpsn	file "C:/Users/13571/Documents/MATLAB/Examples/R2023b/mcb/FocHallExample/mcb_pmsm_foc_hall_f28379d_ert_rtw/DSP28xx_SciUtil.c",line 165,column 11,is_stmt,isa 0
;----------------------------------------------------------------------
; 165 | byte_cnt = 1U;                                                         
; 166 | } else {                                                               
;----------------------------------------------------------------------
        MOVB      *-SP[9],#1,UNC        ; [CPU_ALU] |165| 
        B         $C$L26,UNC            ; [CPU_ALU] 
        ; branch occurs ; [] 
$C$L25:    
	.dwpsn	file "C:/Users/13571/Documents/MATLAB/Examples/R2023b/mcb/FocHallExample/mcb_pmsm_foc_hall_f28379d_ert_rtw/DSP28xx_SciUtil.c",line 167,column 11,is_stmt,isa 0
;----------------------------------------------------------------------
; 167 | rcvBuff[i/2] |= tempData << 8;                                         
;----------------------------------------------------------------------
        MOV       AH,*-SP[7]            ; [CPU_ALU] |167| 
        MOV       AL,AH                 ; [CPU_ALU] |167| 
        SETC      SXM                   ; [CPU_ALU] 
        LSR       AL,15                 ; [CPU_ALU] |167| 
        ADD       AL,AH                 ; [CPU_ALU] |167| 
        ASR       AL,1                  ; [CPU_ALU] |167| 
        MOV       ACC,AL                ; [CPU_ALU] |167| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |167| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |167| 
        MOV       ACC,*-SP[12] << #8    ; [CPU_ALU] |167| 
        OR        *+XAR4[0],AL          ; [CPU_ALU] |167| 
	.dwpsn	file "C:/Users/13571/Documents/MATLAB/Examples/R2023b/mcb/FocHallExample/mcb_pmsm_foc_hall_f28379d_ert_rtw/DSP28xx_SciUtil.c",line 168,column 11,is_stmt,isa 0
;----------------------------------------------------------------------
; 168 | byte_cnt = 0U;                                                         
;----------------------------------------------------------------------
        MOV       *-SP[9],#0            ; [CPU_ALU] |168| 
$C$L26:    
	.dwpsn	file "C:/Users/13571/Documents/MATLAB/Examples/R2023b/mcb/FocHallExample/mcb_pmsm_foc_hall_f28379d_ert_rtw/DSP28xx_SciUtil.c",line 171,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 171 | if (tailsize != 0) {                                                   
; 172 |   // Do not check tail if tail is not provided                         
;----------------------------------------------------------------------
        MOV       AL,*-SP[15]           ; [CPU_ALU] |171| 
        B         $C$L33,EQ             ; [CPU_ALU] |171| 
        ; branchcc occurs ; [] |171| 
	.dwpsn	file "C:/Users/13571/Documents/MATLAB/Examples/R2023b/mcb/FocHallExample/mcb_pmsm_foc_hall_f28379d_ert_rtw/DSP28xx_SciUtil.c",line 173,column 11,is_stmt,isa 0
;----------------------------------------------------------------------
; 173 | if (tempData == expTail[tailCount]) {                                  
;----------------------------------------------------------------------
        MOV       ACC,*-SP[10]          ; [CPU_ALU] |173| 
        ADDL      ACC,*-SP[4]           ; [CPU_ALU] |173| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |173| 
        MOVZ      AR6,*-SP[12]          ; [CPU_ALU] |173| 
        MOVU      ACC,*+XAR4[0]         ; [CPU_ALU] |173| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |173| 
        B         $C$L27,NEQ            ; [CPU_ALU] |173| 
        ; branchcc occurs ; [] |173| 
	.dwpsn	file "C:/Users/13571/Documents/MATLAB/Examples/R2023b/mcb/FocHallExample/mcb_pmsm_foc_hall_f28379d_ert_rtw/DSP28xx_SciUtil.c",line 174,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 174 | tailCount++;                                                           
;----------------------------------------------------------------------
        INC       *-SP[10]              ; [CPU_ALU] |174| 
	.dwpsn	file "C:/Users/13571/Documents/MATLAB/Examples/R2023b/mcb/FocHallExample/mcb_pmsm_foc_hall_f28379d_ert_rtw/DSP28xx_SciUtil.c",line 175,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 175 | if (tailCount == tailsize) {                                           
;----------------------------------------------------------------------
        MOV       AL,*-SP[15]           ; [CPU_ALU] |175| 
        CMP       AL,*-SP[10]           ; [CPU_ALU] |175| 
        B         $C$L33,NEQ            ; [CPU_ALU] |175| 
        ; branchcc occurs ; [] |175| 
	.dwpsn	file "C:/Users/13571/Documents/MATLAB/Examples/R2023b/mcb/FocHallExample/mcb_pmsm_foc_hall_f28379d_ert_rtw/DSP28xx_SciUtil.c",line 176,column 15,is_stmt,isa 0
;----------------------------------------------------------------------
; 176 | *rcvBufferLen = i - tailsize + 1;                                      
;----------------------------------------------------------------------
        MOVL      XAR4,*-SP[18]         ; [CPU_ALU] |176| 
        MOV       AL,*-SP[7]            ; [CPU_ALU] |176| 
        SUB       AL,*-SP[15]           ; [CPU_ALU] |176| 
        ADDB      AL,#1                 ; [CPU_ALU] |176| 
        MOV       *+XAR4[0],AL          ; [CPU_ALU] |176| 
	.dwpsn	file "C:/Users/13571/Documents/MATLAB/Examples/R2023b/mcb/FocHallExample/mcb_pmsm_foc_hall_f28379d_ert_rtw/DSP28xx_SciUtil.c",line 177,column 15,is_stmt,isa 0
;----------------------------------------------------------------------
; 177 | break;                                                                 
; 179 | } else {                                                               
;----------------------------------------------------------------------
        B         $C$L40,UNC            ; [CPU_ALU] |177| 
        ; branch occurs ; [] |177| 
$C$L27:    
	.dwpsn	file "C:/Users/13571/Documents/MATLAB/Examples/R2023b/mcb/FocHallExample/mcb_pmsm_foc_hall_f28379d_ert_rtw/DSP28xx_SciUtil.c",line 180,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 180 | tailCount = 0;                                                         
; 183 | } else {                                                               
; 184 | // for (typeLen<=1)                                                    
;----------------------------------------------------------------------
        MOV       *-SP[10],#0           ; [CPU_ALU] |180| 
	.dwendtag $C$DW$49

        B         $C$L33,UNC            ; [CPU_ALU] 
        ; branch occurs ; [] 
$C$L28:    
	.dwpsn	file "C:/Users/13571/Documents/MATLAB/Examples/R2023b/mcb/FocHallExample/mcb_pmsm_foc_hall_f28379d_ert_rtw/DSP28xx_SciUtil.c",line 185,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 185 | rcvBuff[i] = SciaRegs.SCIRXBUF.all;                                    
;----------------------------------------------------------------------
        SETC      SXM                   ; [CPU_ALU] 
        MOVZ      AR6,@$BLOCKED(_SciaRegs)+7 ; [CPU_ALU] |185| 
        MOV       ACC,*-SP[7]           ; [CPU_ALU] |185| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |185| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |185| 
        MOV       *+XAR4[0],AR6         ; [CPU_ALU] |185| 
	.dwpsn	file "C:/Users/13571/Documents/MATLAB/Examples/R2023b/mcb/FocHallExample/mcb_pmsm_foc_hall_f28379d_ert_rtw/DSP28xx_SciUtil.c",line 186,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 186 | if (tailsize != 0) {                                                   
; 187 |   // Do not check tail if tail is not provided                         
;----------------------------------------------------------------------
        MOV       AL,*-SP[15]           ; [CPU_ALU] |186| 
        B         $C$L29,EQ             ; [CPU_ALU] |186| 
        ; branchcc occurs ; [] |186| 
	.dwpsn	file "C:/Users/13571/Documents/MATLAB/Examples/R2023b/mcb/FocHallExample/mcb_pmsm_foc_hall_f28379d_ert_rtw/DSP28xx_SciUtil.c",line 188,column 11,is_stmt,isa 0
;----------------------------------------------------------------------
; 188 | if (rcvBuff[i] == expTail[tailCount]) {                                
;----------------------------------------------------------------------
        MOV       ACC,*-SP[10]          ; [CPU_ALU] |188| 
        ADDL      ACC,*-SP[4]           ; [CPU_ALU] |188| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |188| 
        MOVZ      AR6,*+XAR4[0]         ; [CPU_ALU] |188| 
        MOV       ACC,*-SP[7]           ; [CPU_ALU] |188| 
        ADDL      ACC,*-SP[2]           ; [CPU_ALU] |188| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |188| 
        MOVZ      AR7,*+XAR4[0]         ; [CPU_ALU] |188| 
        MOVL      ACC,XAR6              ; [CPU_ALU] |188| 
        CMPL      ACC,XAR7              ; [CPU_ALU] |188| 
        B         $C$L33,NEQ            ; [CPU_ALU] |188| 
        ; branchcc occurs ; [] |188| 
	.dwpsn	file "C:/Users/13571/Documents/MATLAB/Examples/R2023b/mcb/FocHallExample/mcb_pmsm_foc_hall_f28379d_ert_rtw/DSP28xx_SciUtil.c",line 189,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 189 | tailCount++;                                                           
;----------------------------------------------------------------------
        INC       *-SP[10]              ; [CPU_ALU] |189| 
	.dwpsn	file "C:/Users/13571/Documents/MATLAB/Examples/R2023b/mcb/FocHallExample/mcb_pmsm_foc_hall_f28379d_ert_rtw/DSP28xx_SciUtil.c",line 190,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 190 | if (tailCount == tailsize) {                                           
;----------------------------------------------------------------------
        MOV       AL,*-SP[15]           ; [CPU_ALU] |190| 
        CMP       AL,*-SP[10]           ; [CPU_ALU] |190| 
        B         $C$L33,NEQ            ; [CPU_ALU] |190| 
        ; branchcc occurs ; [] |190| 
	.dwpsn	file "C:/Users/13571/Documents/MATLAB/Examples/R2023b/mcb/FocHallExample/mcb_pmsm_foc_hall_f28379d_ert_rtw/DSP28xx_SciUtil.c",line 191,column 15,is_stmt,isa 0
;----------------------------------------------------------------------
; 191 | *rcvBufferLen = i - tailsize + 1;                                      
;----------------------------------------------------------------------
        MOVL      XAR4,*-SP[18]         ; [CPU_ALU] |191| 
        MOV       AL,*-SP[7]            ; [CPU_ALU] |191| 
        SUB       AL,*-SP[15]           ; [CPU_ALU] |191| 
        ADDB      AL,#1                 ; [CPU_ALU] |191| 
        MOV       *+XAR4[0],AL          ; [CPU_ALU] |191| 
	.dwpsn	file "C:/Users/13571/Documents/MATLAB/Examples/R2023b/mcb/FocHallExample/mcb_pmsm_foc_hall_f28379d_ert_rtw/DSP28xx_SciUtil.c",line 192,column 15,is_stmt,isa 0
;----------------------------------------------------------------------
; 192 | break;                                                                 
; 195 | } else {                                                               
;----------------------------------------------------------------------
        B         $C$L40,UNC            ; [CPU_ALU] |192| 
        ; branch occurs ; [] |192| 
$C$L29:    
	.dwpsn	file "C:/Users/13571/Documents/MATLAB/Examples/R2023b/mcb/FocHallExample/mcb_pmsm_foc_hall_f28379d_ert_rtw/DSP28xx_SciUtil.c",line 196,column 11,is_stmt,isa 0
;----------------------------------------------------------------------
; 196 | tailCount = 0;                                                         
; 199 | } else {                                                               
; 200 | // If data is not available in FIFO i.e RXFFST == 0                    
;----------------------------------------------------------------------
        MOV       *-SP[10],#0           ; [CPU_ALU] |196| 
	.dwendtag $C$DW$48

        B         $C$L33,UNC            ; [CPU_ALU] 
        ; branch occurs ; [] 
$C$L30:    
	.dwpsn	file "C:/Users/13571/Documents/MATLAB/Examples/R2023b/mcb/FocHallExample/mcb_pmsm_foc_hall_f28379d_ert_rtw/DSP28xx_SciUtil.c",line 201,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 201 | if (i == 0) {                                                          
;----------------------------------------------------------------------
        MOV       AL,*-SP[7]            ; [CPU_ALU] |201| 
        B         $C$L31,NEQ            ; [CPU_ALU] |201| 
        ; branchcc occurs ; [] |201| 
	.dwpsn	file "C:/Users/13571/Documents/MATLAB/Examples/R2023b/mcb/FocHallExample/mcb_pmsm_foc_hall_f28379d_ert_rtw/DSP28xx_SciUtil.c",line 202,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 202 | return DATANOTAVAILABLE;                                               
; 203 | } else {                                                               
;----------------------------------------------------------------------
        MOVB      AL,#7                 ; [CPU_ALU] |202| 
        B         $C$L46,UNC            ; [CPU_ALU] |202| 
        ; branch occurs ; [] |202| 
$C$L31:    
	.dwpsn	file "C:/Users/13571/Documents/MATLAB/Examples/R2023b/mcb/FocHallExample/mcb_pmsm_foc_hall_f28379d_ert_rtw/DSP28xx_SciUtil.c",line 204,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 204 | *rcvBufferLen = i;                                                     
;----------------------------------------------------------------------
        MOVL      XAR4,*-SP[18]         ; [CPU_ALU] |204| 
        MOV       *+XAR4[0],AL          ; [CPU_ALU] |204| 
	.dwpsn	file "C:/Users/13571/Documents/MATLAB/Examples/R2023b/mcb/FocHallExample/mcb_pmsm_foc_hall_f28379d_ert_rtw/DSP28xx_SciUtil.c",line 205,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 205 | if (*rcvBufferLen > buffLen) {                                         
;----------------------------------------------------------------------
        MOVL      XAR4,*-SP[18]         ; [CPU_ALU] |205| 
        MOV       AL,*-SP[5]            ; [CPU_ALU] |205| 
        CMP       AL,*+XAR4[0]          ; [CPU_ALU] |205| 
        B         $C$L32,GEQ            ; [CPU_ALU] |205| 
        ; branchcc occurs ; [] |205| 
	.dwpsn	file "C:/Users/13571/Documents/MATLAB/Examples/R2023b/mcb/FocHallExample/mcb_pmsm_foc_hall_f28379d_ert_rtw/DSP28xx_SciUtil.c",line 206,column 11,is_stmt,isa 0
;----------------------------------------------------------------------
; 206 | *rcvBufferLen = buffLen;                                               
;----------------------------------------------------------------------
        MOV       *+XAR4[0],AL          ; [CPU_ALU] |206| 
$C$L32:    
	.dwpsn	file "C:/Users/13571/Documents/MATLAB/Examples/R2023b/mcb/FocHallExample/mcb_pmsm_foc_hall_f28379d_ert_rtw/DSP28xx_SciUtil.c",line 209,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 209 | errorVal = PARTIALDATA;                                                
;----------------------------------------------------------------------
        MOVB      *-SP[8],#8,UNC        ; [CPU_ALU] |209| 
	.dwpsn	file "C:/Users/13571/Documents/MATLAB/Examples/R2023b/mcb/FocHallExample/mcb_pmsm_foc_hall_f28379d_ert_rtw/DSP28xx_SciUtil.c",line 210,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 210 | break;                                                                 
;----------------------------------------------------------------------
        B         $C$L40,UNC            ; [CPU_ALU] |210| 
        ; branch occurs ; [] |210| 
$C$L33:    
	.dwpsn	file "C:/Users/13571/Documents/MATLAB/Examples/R2023b/mcb/FocHallExample/mcb_pmsm_foc_hall_f28379d_ert_rtw/DSP28xx_SciUtil.c",line 214,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 214 | i = i+1;                                                               
; 216 | //Check flags                                                          
;----------------------------------------------------------------------
        INC       *-SP[7]               ; [CPU_ALU] |214| 
	.dwpsn	file "C:/Users/13571/Documents/MATLAB/Examples/R2023b/mcb/FocHallExample/mcb_pmsm_foc_hall_f28379d_ert_rtw/DSP28xx_SciUtil.c",line 217,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 217 | if (SciaRegs.SCIFFRX.bit.RXFFOVF == 1U)/* detect FIFO overflow*/       
;----------------------------------------------------------------------
        AND       AL,@$BLOCKED(_SciaRegs)+11,#0x8000 ; [CPU_ALU] |217| 
        LSR       AL,15                 ; [CPU_ALU] |217| 
        CMPB      AL,#1                 ; [CPU_ALU] |217| 
        B         $C$L34,NEQ            ; [CPU_ALU] |217| 
        ; branchcc occurs ; [] |217| 
	.dwpsn	file "C:/Users/13571/Documents/MATLAB/Examples/R2023b/mcb/FocHallExample/mcb_pmsm_foc_hall_f28379d_ert_rtw/DSP28xx_SciUtil.c",line 219,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 219 | SciaRegs.SCIFFRX.bit.RXFFOVRCLR = 1U;                                  
;----------------------------------------------------------------------
        OR        @$BLOCKED(_SciaRegs)+11,#0x4000 ; [CPU_ALU] |219| 
$C$L34:    
	.dwpsn	file "C:/Users/13571/Documents/MATLAB/Examples/R2023b/mcb/FocHallExample/mcb_pmsm_foc_hall_f28379d_ert_rtw/DSP28xx_SciUtil.c",line 226,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 226 | if (SciaRegs.SCIRXST.bit.FE) {                                         
;----------------------------------------------------------------------
        TBIT      @$BLOCKED(_SciaRegs)+5,#4 ; [CPU_ALU] |226| 
        B         $C$L35,NTC            ; [CPU_ALU] |226| 
        ; branchcc occurs ; [] |226| 
	.dwpsn	file "C:/Users/13571/Documents/MATLAB/Examples/R2023b/mcb/FocHallExample/mcb_pmsm_foc_hall_f28379d_ert_rtw/DSP28xx_SciUtil.c",line 227,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 227 | errorVal = FRAMERR;                                                    
;----------------------------------------------------------------------
        MOVB      *-SP[8],#4,UNC        ; [CPU_ALU] |227| 
$C$L35:    
	.dwpsn	file "C:/Users/13571/Documents/MATLAB/Examples/R2023b/mcb/FocHallExample/mcb_pmsm_foc_hall_f28379d_ert_rtw/DSP28xx_SciUtil.c",line 230,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 230 | if (SciaRegs.SCIRXST.bit.PE) {                                         
;----------------------------------------------------------------------
        TBIT      @$BLOCKED(_SciaRegs)+5,#2 ; [CPU_ALU] |230| 
        B         $C$L36,NTC            ; [CPU_ALU] |230| 
        ; branchcc occurs ; [] |230| 
	.dwpsn	file "C:/Users/13571/Documents/MATLAB/Examples/R2023b/mcb/FocHallExample/mcb_pmsm_foc_hall_f28379d_ert_rtw/DSP28xx_SciUtil.c",line 231,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 231 | errorVal = PRTYERR;                                                    
;----------------------------------------------------------------------
        MOVB      *-SP[8],#3,UNC        ; [CPU_ALU] |231| 
$C$L36:    
	.dwpsn	file "C:/Users/13571/Documents/MATLAB/Examples/R2023b/mcb/FocHallExample/mcb_pmsm_foc_hall_f28379d_ert_rtw/DSP28xx_SciUtil.c",line 234,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 234 | if (SciaRegs.SCIRXST.bit.OE) {                                         
;----------------------------------------------------------------------
        TBIT      @$BLOCKED(_SciaRegs)+5,#3 ; [CPU_ALU] |234| 
        B         $C$L37,NTC            ; [CPU_ALU] |234| 
        ; branchcc occurs ; [] |234| 
	.dwpsn	file "C:/Users/13571/Documents/MATLAB/Examples/R2023b/mcb/FocHallExample/mcb_pmsm_foc_hall_f28379d_ert_rtw/DSP28xx_SciUtil.c",line 235,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 235 | errorVal = OVRNERR;                                                    
;----------------------------------------------------------------------
        MOVB      *-SP[8],#5,UNC        ; [CPU_ALU] |235| 
$C$L37:    
	.dwpsn	file "C:/Users/13571/Documents/MATLAB/Examples/R2023b/mcb/FocHallExample/mcb_pmsm_foc_hall_f28379d_ert_rtw/DSP28xx_SciUtil.c",line 238,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 238 | if (SciaRegs.SCIRXST.bit.BRKDT) {                                      
;----------------------------------------------------------------------
        TBIT      @$BLOCKED(_SciaRegs)+5,#5 ; [CPU_ALU] |238| 
        B         $C$L38,NTC            ; [CPU_ALU] |238| 
        ; branchcc occurs ; [] |238| 
	.dwpsn	file "C:/Users/13571/Documents/MATLAB/Examples/R2023b/mcb/FocHallExample/mcb_pmsm_foc_hall_f28379d_ert_rtw/DSP28xx_SciUtil.c",line 239,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 239 | errorVal = BRKDTERR;                                                   
;----------------------------------------------------------------------
        MOVB      *-SP[8],#6,UNC        ; [CPU_ALU] |239| 
$C$L38:    
	.dwpsn	file "C:/Users/13571/Documents/MATLAB/Examples/R2023b/mcb/FocHallExample/mcb_pmsm_foc_hall_f28379d_ert_rtw/DSP28xx_SciUtil.c",line 242,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 242 | if (SciaRegs.SCIRXST.bit.RXERROR == 1U) {                              
;----------------------------------------------------------------------
        AND       AL,@$BLOCKED(_SciaRegs)+5,#0x0080 ; [CPU_ALU] |242| 
        LSR       AL,7                  ; [CPU_ALU] |242| 
        CMPB      AL,#1                 ; [CPU_ALU] |242| 
        B         $C$L39,NEQ            ; [CPU_ALU] |242| 
        ; branchcc occurs ; [] |242| 
	.dwpsn	file "C:/Users/13571/Documents/MATLAB/Examples/R2023b/mcb/FocHallExample/mcb_pmsm_foc_hall_f28379d_ert_rtw/DSP28xx_SciUtil.c",line 243,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 243 | SciaRegs.SCICTL1.bit.SWRESET = 1U;                                     
;----------------------------------------------------------------------
        OR        @$BLOCKED(_SciaRegs)+1,#0x0020 ; [CPU_ALU] |243| 
	.dwpsn	file "C:/Users/13571/Documents/MATLAB/Examples/R2023b/mcb/FocHallExample/mcb_pmsm_foc_hall_f28379d_ert_rtw/DSP28xx_SciUtil.c",line 244,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 244 | SciaRegs.SCICTL1.bit.SWRESET = 0U;                                     
;----------------------------------------------------------------------
        AND       @$BLOCKED(_SciaRegs)+1,#0xffdf ; [CPU_ALU] |244| 
	.dwpsn	file "C:/Users/13571/Documents/MATLAB/Examples/R2023b/mcb/FocHallExample/mcb_pmsm_foc_hall_f28379d_ert_rtw/DSP28xx_SciUtil.c",line 245,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 245 | SciaRegs.SCICTL1.bit.SWRESET = 1U;                                     
;----------------------------------------------------------------------
        OR        @$BLOCKED(_SciaRegs)+1,#0x0020 ; [CPU_ALU] |245| 
$C$L39:    
	.dwendtag $C$DW$47

	.dwpsn	file "C:/Users/13571/Documents/MATLAB/Examples/R2023b/mcb/FocHallExample/mcb_pmsm_foc_hall_f28379d_ert_rtw/DSP28xx_SciUtil.c",line 158,column 10,is_stmt,isa 0
        MOV       AL,*-SP[11]           ; [CPU_ALU] |158| 
        CMP       AL,*-SP[7]            ; [CPU_ALU] |158| 
        B         $C$L24,GT             ; [CPU_ALU] |158| 
        ; branchcc occurs ; [] |158| 
$C$L40:    
	.dwpsn	file "C:/Users/13571/Documents/MATLAB/Examples/R2023b/mcb/FocHallExample/mcb_pmsm_foc_hall_f28379d_ert_rtw/DSP28xx_SciUtil.c",line 249,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 249 | if (0 == tailsize) {                                                   
;----------------------------------------------------------------------
        MOV       AL,*-SP[15]           ; [CPU_ALU] |249| 
        B         $C$L41,NEQ            ; [CPU_ALU] |249| 
        ; branchcc occurs ; [] |249| 
	.dwpsn	file "C:/Users/13571/Documents/MATLAB/Examples/R2023b/mcb/FocHallExample/mcb_pmsm_foc_hall_f28379d_ert_rtw/DSP28xx_SciUtil.c",line 250,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 250 | if (errorVal != PARTIALDATA) {                                         
; 251 |   //In case of tail not provided, error flag will NOERROR if data recei
;     | ved is of max length                                                   
;----------------------------------------------------------------------
        MOV       AL,*-SP[8]            ; [CPU_ALU] |250| 
        CMPB      AL,#8                 ; [CPU_ALU] |250| 
        B         $C$L45,EQ             ; [CPU_ALU] |250| 
        ; branchcc occurs ; [] |250| 
	.dwpsn	file "C:/Users/13571/Documents/MATLAB/Examples/R2023b/mcb/FocHallExample/mcb_pmsm_foc_hall_f28379d_ert_rtw/DSP28xx_SciUtil.c",line 252,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 252 | *rcvBufferLen = totalLen;                                              
; 254 | } else {                                                               
; 255 | // error out as partial data received if tail is provided and not found
;     |  till maximum length and output the length as max length               
;----------------------------------------------------------------------
        MOVL      XAR4,*-SP[18]         ; [CPU_ALU] |252| 
        MOV       AL,*-SP[11]           ; [CPU_ALU] |252| 
        MOV       *+XAR4[0],AL          ; [CPU_ALU] |252| 
        B         $C$L45,UNC            ; [CPU_ALU] 
        ; branch occurs ; [] 
$C$L41:    
	.dwpsn	file "C:/Users/13571/Documents/MATLAB/Examples/R2023b/mcb/FocHallExample/mcb_pmsm_foc_hall_f28379d_ert_rtw/DSP28xx_SciUtil.c",line 256,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 256 | if (*rcvBufferLen == 0) {                                              
;----------------------------------------------------------------------
        MOVL      XAR4,*-SP[18]         ; [CPU_ALU] |256| 
        MOV       AL,*+XAR4[0]          ; [CPU_ALU] |256| 
        B         $C$L45,NEQ            ; [CPU_ALU] |256| 
        ; branchcc occurs ; [] |256| 
	.dwpsn	file "C:/Users/13571/Documents/MATLAB/Examples/R2023b/mcb/FocHallExample/mcb_pmsm_foc_hall_f28379d_ert_rtw/DSP28xx_SciUtil.c",line 257,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 257 | if (tailCount != (i+1)) {                                              
;----------------------------------------------------------------------
        MOV       AL,*-SP[7]            ; [CPU_ALU] |257| 
        ADDB      AL,#1                 ; [CPU_ALU] |257| 
        CMP       AL,*-SP[10]           ; [CPU_ALU] |257| 
        B         $C$L42,EQ             ; [CPU_ALU] |257| 
        ; branchcc occurs ; [] |257| 
	.dwpsn	file "C:/Users/13571/Documents/MATLAB/Examples/R2023b/mcb/FocHallExample/mcb_pmsm_foc_hall_f28379d_ert_rtw/DSP28xx_SciUtil.c",line 258,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 258 | *rcvBufferLen = i-1;                                                   
;----------------------------------------------------------------------
        MOV       AL,*-SP[7]            ; [CPU_ALU] |258| 
        ADDB      AL,#-1                ; [CPU_ALU] |258| 
        MOV       *+XAR4[0],AL          ; [CPU_ALU] |258| 
	.dwpsn	file "C:/Users/13571/Documents/MATLAB/Examples/R2023b/mcb/FocHallExample/mcb_pmsm_foc_hall_f28379d_ert_rtw/DSP28xx_SciUtil.c",line 259,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 259 | errorVal = PARTIALDATA;                                                
; 260 | } else {                                                               
;----------------------------------------------------------------------
        MOVB      *-SP[8],#8,UNC        ; [CPU_ALU] |259| 
        B         $C$L43,UNC            ; [CPU_ALU] 
        ; branch occurs ; [] 
$C$L42:    
	.dwpsn	file "C:/Users/13571/Documents/MATLAB/Examples/R2023b/mcb/FocHallExample/mcb_pmsm_foc_hall_f28379d_ert_rtw/DSP28xx_SciUtil.c",line 261,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 261 | errorVal = DATANOTAVAILABLE;                                           
;----------------------------------------------------------------------
        MOVB      *-SP[8],#7,UNC        ; [CPU_ALU] |261| 
$C$L43:    
	.dwpsn	file "C:/Users/13571/Documents/MATLAB/Examples/R2023b/mcb/FocHallExample/mcb_pmsm_foc_hall_f28379d_ert_rtw/DSP28xx_SciUtil.c",line 264,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 264 | if (*rcvBufferLen > buffLen) {                                         
;----------------------------------------------------------------------
        MOVL      XAR4,*-SP[18]         ; [CPU_ALU] |264| 
        MOV       AL,*-SP[5]            ; [CPU_ALU] |264| 
        CMP       AL,*+XAR4[0]          ; [CPU_ALU] |264| 
        B         $C$L44,GEQ            ; [CPU_ALU] |264| 
        ; branchcc occurs ; [] |264| 
	.dwpsn	file "C:/Users/13571/Documents/MATLAB/Examples/R2023b/mcb/FocHallExample/mcb_pmsm_foc_hall_f28379d_ert_rtw/DSP28xx_SciUtil.c",line 265,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 265 | *rcvBufferLen = buffLen;                                               
;----------------------------------------------------------------------
        MOV       *+XAR4[0],AL          ; [CPU_ALU] |265| 
$C$L44:    
	.dwpsn	file "C:/Users/13571/Documents/MATLAB/Examples/R2023b/mcb/FocHallExample/mcb_pmsm_foc_hall_f28379d_ert_rtw/DSP28xx_SciUtil.c",line 268,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 268 | if (*rcvBufferLen < 0) {                                               
;----------------------------------------------------------------------
        MOVL      XAR4,*-SP[18]         ; [CPU_ALU] |268| 
        MOV       AL,*+XAR4[0]          ; [CPU_ALU] |268| 
        B         $C$L45,GEQ            ; [CPU_ALU] |268| 
        ; branchcc occurs ; [] |268| 
	.dwpsn	file "C:/Users/13571/Documents/MATLAB/Examples/R2023b/mcb/FocHallExample/mcb_pmsm_foc_hall_f28379d_ert_rtw/DSP28xx_SciUtil.c",line 269,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 269 | *rcvBufferLen = 0;                                                     
;----------------------------------------------------------------------
        MOV       *+XAR4[0],#0          ; [CPU_ALU] |269| 
$C$L45:    
	.dwpsn	file "C:/Users/13571/Documents/MATLAB/Examples/R2023b/mcb/FocHallExample/mcb_pmsm_foc_hall_f28379d_ert_rtw/DSP28xx_SciUtil.c",line 274,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 274 | return errorVal;                                                       
;----------------------------------------------------------------------
        MOV       AL,*-SP[8]            ; [CPU_ALU] |274| 
$C$L46:    
	.dwpsn	file "C:/Users/13571/Documents/MATLAB/Examples/R2023b/mcb/FocHallExample/mcb_pmsm_foc_hall_f28379d_ert_rtw/DSP28xx_SciUtil.c",line 275,column 1,is_stmt,isa 0
        SUBB      SP,#12                ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$51	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$51, DW_AT_low_pc(0x00)
	.dwattr $C$DW$51, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$31, DW_AT_TI_end_file("C:/Users/13571/Documents/MATLAB/Examples/R2023b/mcb/FocHallExample/mcb_pmsm_foc_hall_f28379d_ert_rtw/DSP28xx_SciUtil.c")
	.dwattr $C$DW$31, DW_AT_TI_end_line(0x113)
	.dwattr $C$DW$31, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$31

	.sect	".text"
	.clink
	.global	_init_SCIFrame

$C$DW$52	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$52, DW_AT_name("init_SCIFrame")
	.dwattr $C$DW$52, DW_AT_low_pc(_init_SCIFrame)
	.dwattr $C$DW$52, DW_AT_high_pc(0x00)
	.dwattr $C$DW$52, DW_AT_TI_symbol_name("_init_SCIFrame")
	.dwattr $C$DW$52, DW_AT_external
	.dwattr $C$DW$52, DW_AT_TI_begin_file("C:/Users/13571/Documents/MATLAB/Examples/R2023b/mcb/FocHallExample/mcb_pmsm_foc_hall_f28379d_ert_rtw/DSP28xx_SciUtil.c")
	.dwattr $C$DW$52, DW_AT_TI_begin_line(0x115)
	.dwattr $C$DW$52, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$52, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "C:/Users/13571/Documents/MATLAB/Examples/R2023b/mcb/FocHallExample/mcb_pmsm_foc_hall_f28379d_ert_rtw/DSP28xx_SciUtil.c",line 278,column 1,is_stmt,address _init_SCIFrame,isa 0

	.dwfde $C$DW$CIE, _init_SCIFrame
;----------------------------------------------------------------------
; 277 | void init_SCIFrame(void)                                               
; 279 | // to prevent re-entrancy in SCI transmit function                     
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _init_SCIFrame                FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_init_SCIFrame:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "C:/Users/13571/Documents/MATLAB/Examples/R2023b/mcb/FocHallExample/mcb_pmsm_foc_hall_f28379d_ert_rtw/DSP28xx_SciUtil.c",line 280,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 280 | checkSCITransmitInProgressA = 0;                                       
;----------------------------------------------------------------------
        MOVW      DP,#_checkSCITransmitInProgressA ; [CPU_ARAU] 
        MOV       @_checkSCITransmitInProgressA,#0 ; [CPU_ALU] |280| 
	.dwpsn	file "C:/Users/13571/Documents/MATLAB/Examples/R2023b/mcb/FocHallExample/mcb_pmsm_foc_hall_f28379d_ert_rtw/DSP28xx_SciUtil.c",line 281,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 281 | frameA1Count = 0U;                                                     
;----------------------------------------------------------------------
        MOVB      ACC,#0                ; [CPU_ALU] |281| 
        MOVL      @_frameA1Count,ACC    ; [CPU_ALU] |281| 
	.dwpsn	file "C:/Users/13571/Documents/MATLAB/Examples/R2023b/mcb/FocHallExample/mcb_pmsm_foc_hall_f28379d_ert_rtw/DSP28xx_SciUtil.c",line 282,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 282 | frameA1Transmitted = 1;                                                
;----------------------------------------------------------------------
        MOVB      @_frameA1Transmitted,#1,UNC ; [CPU_ALU] |282| 
	.dwpsn	file "C:/Users/13571/Documents/MATLAB/Examples/R2023b/mcb/FocHallExample/mcb_pmsm_foc_hall_f28379d_ert_rtw/DSP28xx_SciUtil.c",line 283,column 1,is_stmt,isa 0
$C$DW$53	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$53, DW_AT_low_pc(0x00)
	.dwattr $C$DW$53, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$52, DW_AT_TI_end_file("C:/Users/13571/Documents/MATLAB/Examples/R2023b/mcb/FocHallExample/mcb_pmsm_foc_hall_f28379d_ert_rtw/DSP28xx_SciUtil.c")
	.dwattr $C$DW$52, DW_AT_TI_end_line(0x11b)
	.dwattr $C$DW$52, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$52

;**************************************************************
;* UNDEFINED EXTERNAL REFERENCES                              *
;**************************************************************
	.global	_CpuTimer2Regs
	.global	_SciaRegs

;***************************************************************
;* TYPE INFORMATION                                            *
;***************************************************************

$C$DW$T$20	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$20, DW_AT_name("CPUTIMER_REGS")
	.dwattr $C$DW$T$20, DW_AT_byte_size(0x08)
$C$DW$54	.dwtag  DW_TAG_member
	.dwattr $C$DW$54, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$54, DW_AT_name("TIM")
	.dwattr $C$DW$54, DW_AT_TI_symbol_name("_TIM")
	.dwattr $C$DW$54, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$54, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$55	.dwtag  DW_TAG_member
	.dwattr $C$DW$55, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$55, DW_AT_name("PRD")
	.dwattr $C$DW$55, DW_AT_TI_symbol_name("_PRD")
	.dwattr $C$DW$55, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$55, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$56	.dwtag  DW_TAG_member
	.dwattr $C$DW$56, DW_AT_type(*$C$DW$T$53)
	.dwattr $C$DW$56, DW_AT_name("TCR")
	.dwattr $C$DW$56, DW_AT_TI_symbol_name("_TCR")
	.dwattr $C$DW$56, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$56, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$57	.dwtag  DW_TAG_member
	.dwattr $C$DW$57, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$57, DW_AT_name("rsvd1")
	.dwattr $C$DW$57, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$57, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$57, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$58	.dwtag  DW_TAG_member
	.dwattr $C$DW$58, DW_AT_type(*$C$DW$T$59)
	.dwattr $C$DW$58, DW_AT_name("TPR")
	.dwattr $C$DW$58, DW_AT_TI_symbol_name("_TPR")
	.dwattr $C$DW$58, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$58, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$59	.dwtag  DW_TAG_member
	.dwattr $C$DW$59, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$59, DW_AT_name("TPRH")
	.dwattr $C$DW$59, DW_AT_TI_symbol_name("_TPRH")
	.dwattr $C$DW$59, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr $C$DW$59, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$20

$C$DW$60	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$60, DW_AT_type(*$C$DW$T$20)

$C$DW$T$60	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$60, DW_AT_type(*$C$DW$60)


$C$DW$T$21	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$21, DW_AT_name("PRD_BITS")
	.dwattr $C$DW$T$21, DW_AT_byte_size(0x02)
$C$DW$61	.dwtag  DW_TAG_member
	.dwattr $C$DW$61, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$61, DW_AT_name("LSW")
	.dwattr $C$DW$61, DW_AT_TI_symbol_name("_LSW")
	.dwattr $C$DW$61, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$61, DW_AT_bit_size(0x10)
	.dwattr $C$DW$61, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$61, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$62	.dwtag  DW_TAG_member
	.dwattr $C$DW$62, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$62, DW_AT_name("MSW")
	.dwattr $C$DW$62, DW_AT_TI_symbol_name("_MSW")
	.dwattr $C$DW$62, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$62, DW_AT_bit_size(0x10)
	.dwattr $C$DW$62, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$62, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$21


$C$DW$T$23	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$23, DW_AT_name("PRD_REG")
	.dwattr $C$DW$T$23, DW_AT_byte_size(0x02)
$C$DW$63	.dwtag  DW_TAG_member
	.dwattr $C$DW$63, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$63, DW_AT_name("all")
	.dwattr $C$DW$63, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$63, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$63, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$64	.dwtag  DW_TAG_member
	.dwattr $C$DW$64, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$64, DW_AT_name("bit")
	.dwattr $C$DW$64, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$64, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$64, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$23


$C$DW$T$24	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$24, DW_AT_name("SCICCR_BITS")
	.dwattr $C$DW$T$24, DW_AT_byte_size(0x01)
$C$DW$65	.dwtag  DW_TAG_member
	.dwattr $C$DW$65, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$65, DW_AT_name("SCICHAR")
	.dwattr $C$DW$65, DW_AT_TI_symbol_name("_SCICHAR")
	.dwattr $C$DW$65, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$65, DW_AT_bit_size(0x03)
	.dwattr $C$DW$65, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$65, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$66	.dwtag  DW_TAG_member
	.dwattr $C$DW$66, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$66, DW_AT_name("ADDRIDLE_MODE")
	.dwattr $C$DW$66, DW_AT_TI_symbol_name("_ADDRIDLE_MODE")
	.dwattr $C$DW$66, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$66, DW_AT_bit_size(0x01)
	.dwattr $C$DW$66, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$66, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$67	.dwtag  DW_TAG_member
	.dwattr $C$DW$67, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$67, DW_AT_name("LOOPBKENA")
	.dwattr $C$DW$67, DW_AT_TI_symbol_name("_LOOPBKENA")
	.dwattr $C$DW$67, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$67, DW_AT_bit_size(0x01)
	.dwattr $C$DW$67, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$67, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$68	.dwtag  DW_TAG_member
	.dwattr $C$DW$68, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$68, DW_AT_name("PARITYENA")
	.dwattr $C$DW$68, DW_AT_TI_symbol_name("_PARITYENA")
	.dwattr $C$DW$68, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$68, DW_AT_bit_size(0x01)
	.dwattr $C$DW$68, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$68, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$69	.dwtag  DW_TAG_member
	.dwattr $C$DW$69, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$69, DW_AT_name("PARITY")
	.dwattr $C$DW$69, DW_AT_TI_symbol_name("_PARITY")
	.dwattr $C$DW$69, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$69, DW_AT_bit_size(0x01)
	.dwattr $C$DW$69, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$69, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$70	.dwtag  DW_TAG_member
	.dwattr $C$DW$70, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$70, DW_AT_name("STOPBITS")
	.dwattr $C$DW$70, DW_AT_TI_symbol_name("_STOPBITS")
	.dwattr $C$DW$70, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$70, DW_AT_bit_size(0x01)
	.dwattr $C$DW$70, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$70, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$71	.dwtag  DW_TAG_member
	.dwattr $C$DW$71, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$71, DW_AT_name("rsvd1")
	.dwattr $C$DW$71, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$71, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$71, DW_AT_bit_size(0x08)
	.dwattr $C$DW$71, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$71, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$24


$C$DW$T$25	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$25, DW_AT_name("SCICCR_REG")
	.dwattr $C$DW$T$25, DW_AT_byte_size(0x01)
$C$DW$72	.dwtag  DW_TAG_member
	.dwattr $C$DW$72, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$72, DW_AT_name("all")
	.dwattr $C$DW$72, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$72, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$72, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$73	.dwtag  DW_TAG_member
	.dwattr $C$DW$73, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$73, DW_AT_name("bit")
	.dwattr $C$DW$73, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$73, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$73, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$25


$C$DW$T$26	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$26, DW_AT_name("SCICTL1_BITS")
	.dwattr $C$DW$T$26, DW_AT_byte_size(0x01)
$C$DW$74	.dwtag  DW_TAG_member
	.dwattr $C$DW$74, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$74, DW_AT_name("RXENA")
	.dwattr $C$DW$74, DW_AT_TI_symbol_name("_RXENA")
	.dwattr $C$DW$74, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$74, DW_AT_bit_size(0x01)
	.dwattr $C$DW$74, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$74, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$75	.dwtag  DW_TAG_member
	.dwattr $C$DW$75, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$75, DW_AT_name("TXENA")
	.dwattr $C$DW$75, DW_AT_TI_symbol_name("_TXENA")
	.dwattr $C$DW$75, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$75, DW_AT_bit_size(0x01)
	.dwattr $C$DW$75, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$75, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$76	.dwtag  DW_TAG_member
	.dwattr $C$DW$76, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$76, DW_AT_name("SLEEP")
	.dwattr $C$DW$76, DW_AT_TI_symbol_name("_SLEEP")
	.dwattr $C$DW$76, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$76, DW_AT_bit_size(0x01)
	.dwattr $C$DW$76, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$76, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$77	.dwtag  DW_TAG_member
	.dwattr $C$DW$77, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$77, DW_AT_name("TXWAKE")
	.dwattr $C$DW$77, DW_AT_TI_symbol_name("_TXWAKE")
	.dwattr $C$DW$77, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$77, DW_AT_bit_size(0x01)
	.dwattr $C$DW$77, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$77, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$78	.dwtag  DW_TAG_member
	.dwattr $C$DW$78, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$78, DW_AT_name("rsvd1")
	.dwattr $C$DW$78, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$78, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$78, DW_AT_bit_size(0x01)
	.dwattr $C$DW$78, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$78, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$79	.dwtag  DW_TAG_member
	.dwattr $C$DW$79, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$79, DW_AT_name("SWRESET")
	.dwattr $C$DW$79, DW_AT_TI_symbol_name("_SWRESET")
	.dwattr $C$DW$79, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$79, DW_AT_bit_size(0x01)
	.dwattr $C$DW$79, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$79, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$80	.dwtag  DW_TAG_member
	.dwattr $C$DW$80, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$80, DW_AT_name("RXERRINTENA")
	.dwattr $C$DW$80, DW_AT_TI_symbol_name("_RXERRINTENA")
	.dwattr $C$DW$80, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$80, DW_AT_bit_size(0x01)
	.dwattr $C$DW$80, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$80, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$81	.dwtag  DW_TAG_member
	.dwattr $C$DW$81, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$81, DW_AT_name("rsvd2")
	.dwattr $C$DW$81, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$81, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$81, DW_AT_bit_size(0x09)
	.dwattr $C$DW$81, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$81, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$26


$C$DW$T$27	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$27, DW_AT_name("SCICTL1_REG")
	.dwattr $C$DW$T$27, DW_AT_byte_size(0x01)
$C$DW$82	.dwtag  DW_TAG_member
	.dwattr $C$DW$82, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$82, DW_AT_name("all")
	.dwattr $C$DW$82, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$82, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$82, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$83	.dwtag  DW_TAG_member
	.dwattr $C$DW$83, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$83, DW_AT_name("bit")
	.dwattr $C$DW$83, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$83, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$83, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$27


$C$DW$T$28	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$28, DW_AT_name("SCICTL2_BITS")
	.dwattr $C$DW$T$28, DW_AT_byte_size(0x01)
$C$DW$84	.dwtag  DW_TAG_member
	.dwattr $C$DW$84, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$84, DW_AT_name("TXINTENA")
	.dwattr $C$DW$84, DW_AT_TI_symbol_name("_TXINTENA")
	.dwattr $C$DW$84, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$84, DW_AT_bit_size(0x01)
	.dwattr $C$DW$84, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$84, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$85	.dwtag  DW_TAG_member
	.dwattr $C$DW$85, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$85, DW_AT_name("RXBKINTENA")
	.dwattr $C$DW$85, DW_AT_TI_symbol_name("_RXBKINTENA")
	.dwattr $C$DW$85, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$85, DW_AT_bit_size(0x01)
	.dwattr $C$DW$85, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$85, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$86	.dwtag  DW_TAG_member
	.dwattr $C$DW$86, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$86, DW_AT_name("rsvd1")
	.dwattr $C$DW$86, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$86, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$86, DW_AT_bit_size(0x04)
	.dwattr $C$DW$86, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$86, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$87	.dwtag  DW_TAG_member
	.dwattr $C$DW$87, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$87, DW_AT_name("TXEMPTY")
	.dwattr $C$DW$87, DW_AT_TI_symbol_name("_TXEMPTY")
	.dwattr $C$DW$87, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$87, DW_AT_bit_size(0x01)
	.dwattr $C$DW$87, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$87, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$88	.dwtag  DW_TAG_member
	.dwattr $C$DW$88, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$88, DW_AT_name("TXRDY")
	.dwattr $C$DW$88, DW_AT_TI_symbol_name("_TXRDY")
	.dwattr $C$DW$88, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$88, DW_AT_bit_size(0x01)
	.dwattr $C$DW$88, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$88, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$89	.dwtag  DW_TAG_member
	.dwattr $C$DW$89, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$89, DW_AT_name("rsvd2")
	.dwattr $C$DW$89, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$89, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$89, DW_AT_bit_size(0x08)
	.dwattr $C$DW$89, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$89, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$28


$C$DW$T$29	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$29, DW_AT_name("SCICTL2_REG")
	.dwattr $C$DW$T$29, DW_AT_byte_size(0x01)
$C$DW$90	.dwtag  DW_TAG_member
	.dwattr $C$DW$90, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$90, DW_AT_name("all")
	.dwattr $C$DW$90, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$90, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$90, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$91	.dwtag  DW_TAG_member
	.dwattr $C$DW$91, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$91, DW_AT_name("bit")
	.dwattr $C$DW$91, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$91, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$91, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$29


$C$DW$T$30	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$30, DW_AT_name("SCIFFCT_BITS")
	.dwattr $C$DW$T$30, DW_AT_byte_size(0x01)
$C$DW$92	.dwtag  DW_TAG_member
	.dwattr $C$DW$92, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$92, DW_AT_name("FFTXDLY")
	.dwattr $C$DW$92, DW_AT_TI_symbol_name("_FFTXDLY")
	.dwattr $C$DW$92, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$92, DW_AT_bit_size(0x08)
	.dwattr $C$DW$92, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$92, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$93	.dwtag  DW_TAG_member
	.dwattr $C$DW$93, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$93, DW_AT_name("rsvd1")
	.dwattr $C$DW$93, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$93, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$93, DW_AT_bit_size(0x05)
	.dwattr $C$DW$93, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$93, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$94	.dwtag  DW_TAG_member
	.dwattr $C$DW$94, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$94, DW_AT_name("CDC")
	.dwattr $C$DW$94, DW_AT_TI_symbol_name("_CDC")
	.dwattr $C$DW$94, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$94, DW_AT_bit_size(0x01)
	.dwattr $C$DW$94, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$94, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$95	.dwtag  DW_TAG_member
	.dwattr $C$DW$95, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$95, DW_AT_name("ABDCLR")
	.dwattr $C$DW$95, DW_AT_TI_symbol_name("_ABDCLR")
	.dwattr $C$DW$95, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$95, DW_AT_bit_size(0x01)
	.dwattr $C$DW$95, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$95, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$96	.dwtag  DW_TAG_member
	.dwattr $C$DW$96, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$96, DW_AT_name("ABD")
	.dwattr $C$DW$96, DW_AT_TI_symbol_name("_ABD")
	.dwattr $C$DW$96, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$96, DW_AT_bit_size(0x01)
	.dwattr $C$DW$96, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$96, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$30


$C$DW$T$31	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$31, DW_AT_name("SCIFFCT_REG")
	.dwattr $C$DW$T$31, DW_AT_byte_size(0x01)
$C$DW$97	.dwtag  DW_TAG_member
	.dwattr $C$DW$97, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$97, DW_AT_name("all")
	.dwattr $C$DW$97, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$97, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$97, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$98	.dwtag  DW_TAG_member
	.dwattr $C$DW$98, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$98, DW_AT_name("bit")
	.dwattr $C$DW$98, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$98, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$98, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$31


$C$DW$T$32	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$32, DW_AT_name("SCIFFRX_BITS")
	.dwattr $C$DW$T$32, DW_AT_byte_size(0x01)
$C$DW$99	.dwtag  DW_TAG_member
	.dwattr $C$DW$99, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$99, DW_AT_name("RXFFIL")
	.dwattr $C$DW$99, DW_AT_TI_symbol_name("_RXFFIL")
	.dwattr $C$DW$99, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$99, DW_AT_bit_size(0x05)
	.dwattr $C$DW$99, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$99, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$100	.dwtag  DW_TAG_member
	.dwattr $C$DW$100, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$100, DW_AT_name("RXFFIENA")
	.dwattr $C$DW$100, DW_AT_TI_symbol_name("_RXFFIENA")
	.dwattr $C$DW$100, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$100, DW_AT_bit_size(0x01)
	.dwattr $C$DW$100, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$100, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$101	.dwtag  DW_TAG_member
	.dwattr $C$DW$101, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$101, DW_AT_name("RXFFINTCLR")
	.dwattr $C$DW$101, DW_AT_TI_symbol_name("_RXFFINTCLR")
	.dwattr $C$DW$101, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$101, DW_AT_bit_size(0x01)
	.dwattr $C$DW$101, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$101, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$102	.dwtag  DW_TAG_member
	.dwattr $C$DW$102, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$102, DW_AT_name("RXFFINT")
	.dwattr $C$DW$102, DW_AT_TI_symbol_name("_RXFFINT")
	.dwattr $C$DW$102, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$102, DW_AT_bit_size(0x01)
	.dwattr $C$DW$102, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$102, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$103	.dwtag  DW_TAG_member
	.dwattr $C$DW$103, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$103, DW_AT_name("RXFFST")
	.dwattr $C$DW$103, DW_AT_TI_symbol_name("_RXFFST")
	.dwattr $C$DW$103, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$103, DW_AT_bit_size(0x05)
	.dwattr $C$DW$103, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$103, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$104	.dwtag  DW_TAG_member
	.dwattr $C$DW$104, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$104, DW_AT_name("RXFIFORESET")
	.dwattr $C$DW$104, DW_AT_TI_symbol_name("_RXFIFORESET")
	.dwattr $C$DW$104, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$104, DW_AT_bit_size(0x01)
	.dwattr $C$DW$104, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$104, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$105	.dwtag  DW_TAG_member
	.dwattr $C$DW$105, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$105, DW_AT_name("RXFFOVRCLR")
	.dwattr $C$DW$105, DW_AT_TI_symbol_name("_RXFFOVRCLR")
	.dwattr $C$DW$105, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$105, DW_AT_bit_size(0x01)
	.dwattr $C$DW$105, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$105, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$106	.dwtag  DW_TAG_member
	.dwattr $C$DW$106, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$106, DW_AT_name("RXFFOVF")
	.dwattr $C$DW$106, DW_AT_TI_symbol_name("_RXFFOVF")
	.dwattr $C$DW$106, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$106, DW_AT_bit_size(0x01)
	.dwattr $C$DW$106, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$106, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$32


$C$DW$T$33	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$33, DW_AT_name("SCIFFRX_REG")
	.dwattr $C$DW$T$33, DW_AT_byte_size(0x01)
$C$DW$107	.dwtag  DW_TAG_member
	.dwattr $C$DW$107, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$107, DW_AT_name("all")
	.dwattr $C$DW$107, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$107, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$107, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$108	.dwtag  DW_TAG_member
	.dwattr $C$DW$108, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$108, DW_AT_name("bit")
	.dwattr $C$DW$108, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$108, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$108, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$33


$C$DW$T$34	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$34, DW_AT_name("SCIFFTX_BITS")
	.dwattr $C$DW$T$34, DW_AT_byte_size(0x01)
$C$DW$109	.dwtag  DW_TAG_member
	.dwattr $C$DW$109, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$109, DW_AT_name("TXFFIL")
	.dwattr $C$DW$109, DW_AT_TI_symbol_name("_TXFFIL")
	.dwattr $C$DW$109, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$109, DW_AT_bit_size(0x05)
	.dwattr $C$DW$109, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$109, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$110	.dwtag  DW_TAG_member
	.dwattr $C$DW$110, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$110, DW_AT_name("TXFFIENA")
	.dwattr $C$DW$110, DW_AT_TI_symbol_name("_TXFFIENA")
	.dwattr $C$DW$110, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$110, DW_AT_bit_size(0x01)
	.dwattr $C$DW$110, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$110, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$111	.dwtag  DW_TAG_member
	.dwattr $C$DW$111, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$111, DW_AT_name("TXFFINTCLR")
	.dwattr $C$DW$111, DW_AT_TI_symbol_name("_TXFFINTCLR")
	.dwattr $C$DW$111, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$111, DW_AT_bit_size(0x01)
	.dwattr $C$DW$111, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$111, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$112	.dwtag  DW_TAG_member
	.dwattr $C$DW$112, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$112, DW_AT_name("TXFFINT")
	.dwattr $C$DW$112, DW_AT_TI_symbol_name("_TXFFINT")
	.dwattr $C$DW$112, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$112, DW_AT_bit_size(0x01)
	.dwattr $C$DW$112, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$112, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$113	.dwtag  DW_TAG_member
	.dwattr $C$DW$113, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$113, DW_AT_name("TXFFST")
	.dwattr $C$DW$113, DW_AT_TI_symbol_name("_TXFFST")
	.dwattr $C$DW$113, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$113, DW_AT_bit_size(0x05)
	.dwattr $C$DW$113, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$113, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$114	.dwtag  DW_TAG_member
	.dwattr $C$DW$114, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$114, DW_AT_name("TXFIFORESET")
	.dwattr $C$DW$114, DW_AT_TI_symbol_name("_TXFIFORESET")
	.dwattr $C$DW$114, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$114, DW_AT_bit_size(0x01)
	.dwattr $C$DW$114, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$114, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$115	.dwtag  DW_TAG_member
	.dwattr $C$DW$115, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$115, DW_AT_name("SCIFFENA")
	.dwattr $C$DW$115, DW_AT_TI_symbol_name("_SCIFFENA")
	.dwattr $C$DW$115, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$115, DW_AT_bit_size(0x01)
	.dwattr $C$DW$115, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$115, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$116	.dwtag  DW_TAG_member
	.dwattr $C$DW$116, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$116, DW_AT_name("SCIRST")
	.dwattr $C$DW$116, DW_AT_TI_symbol_name("_SCIRST")
	.dwattr $C$DW$116, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$116, DW_AT_bit_size(0x01)
	.dwattr $C$DW$116, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$116, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$34


$C$DW$T$35	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$35, DW_AT_name("SCIFFTX_REG")
	.dwattr $C$DW$T$35, DW_AT_byte_size(0x01)
$C$DW$117	.dwtag  DW_TAG_member
	.dwattr $C$DW$117, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$117, DW_AT_name("all")
	.dwattr $C$DW$117, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$117, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$117, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$118	.dwtag  DW_TAG_member
	.dwattr $C$DW$118, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$118, DW_AT_name("bit")
	.dwattr $C$DW$118, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$118, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$118, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$35


$C$DW$T$36	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$36, DW_AT_name("SCIHBAUD_BITS")
	.dwattr $C$DW$T$36, DW_AT_byte_size(0x01)
$C$DW$119	.dwtag  DW_TAG_member
	.dwattr $C$DW$119, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$119, DW_AT_name("BAUD")
	.dwattr $C$DW$119, DW_AT_TI_symbol_name("_BAUD")
	.dwattr $C$DW$119, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$119, DW_AT_bit_size(0x08)
	.dwattr $C$DW$119, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$119, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$120	.dwtag  DW_TAG_member
	.dwattr $C$DW$120, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$120, DW_AT_name("rsvd1")
	.dwattr $C$DW$120, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$120, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$120, DW_AT_bit_size(0x08)
	.dwattr $C$DW$120, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$120, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$36


$C$DW$T$37	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$37, DW_AT_name("SCIHBAUD_REG")
	.dwattr $C$DW$T$37, DW_AT_byte_size(0x01)
$C$DW$121	.dwtag  DW_TAG_member
	.dwattr $C$DW$121, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$121, DW_AT_name("all")
	.dwattr $C$DW$121, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$121, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$121, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$122	.dwtag  DW_TAG_member
	.dwattr $C$DW$122, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$122, DW_AT_name("bit")
	.dwattr $C$DW$122, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$122, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$122, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$37


$C$DW$T$38	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$38, DW_AT_name("SCILBAUD_BITS")
	.dwattr $C$DW$T$38, DW_AT_byte_size(0x01)
$C$DW$123	.dwtag  DW_TAG_member
	.dwattr $C$DW$123, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$123, DW_AT_name("BAUD")
	.dwattr $C$DW$123, DW_AT_TI_symbol_name("_BAUD")
	.dwattr $C$DW$123, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$123, DW_AT_bit_size(0x08)
	.dwattr $C$DW$123, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$123, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$124	.dwtag  DW_TAG_member
	.dwattr $C$DW$124, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$124, DW_AT_name("rsvd1")
	.dwattr $C$DW$124, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$124, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$124, DW_AT_bit_size(0x08)
	.dwattr $C$DW$124, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$124, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$38


$C$DW$T$39	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$39, DW_AT_name("SCILBAUD_REG")
	.dwattr $C$DW$T$39, DW_AT_byte_size(0x01)
$C$DW$125	.dwtag  DW_TAG_member
	.dwattr $C$DW$125, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$125, DW_AT_name("all")
	.dwattr $C$DW$125, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$125, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$125, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$126	.dwtag  DW_TAG_member
	.dwattr $C$DW$126, DW_AT_type(*$C$DW$T$38)
	.dwattr $C$DW$126, DW_AT_name("bit")
	.dwattr $C$DW$126, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$126, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$126, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$39


$C$DW$T$40	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$40, DW_AT_name("SCIPRI_BITS")
	.dwattr $C$DW$T$40, DW_AT_byte_size(0x01)
$C$DW$127	.dwtag  DW_TAG_member
	.dwattr $C$DW$127, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$127, DW_AT_name("rsvd1")
	.dwattr $C$DW$127, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$127, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$127, DW_AT_bit_size(0x03)
	.dwattr $C$DW$127, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$127, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$128	.dwtag  DW_TAG_member
	.dwattr $C$DW$128, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$128, DW_AT_name("FREESOFT")
	.dwattr $C$DW$128, DW_AT_TI_symbol_name("_FREESOFT")
	.dwattr $C$DW$128, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$128, DW_AT_bit_size(0x02)
	.dwattr $C$DW$128, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$128, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$129	.dwtag  DW_TAG_member
	.dwattr $C$DW$129, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$129, DW_AT_name("rsvd2")
	.dwattr $C$DW$129, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$129, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$129, DW_AT_bit_size(0x03)
	.dwattr $C$DW$129, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$129, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$130	.dwtag  DW_TAG_member
	.dwattr $C$DW$130, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$130, DW_AT_name("rsvd3")
	.dwattr $C$DW$130, DW_AT_TI_symbol_name("_rsvd3")
	.dwattr $C$DW$130, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$130, DW_AT_bit_size(0x08)
	.dwattr $C$DW$130, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$130, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$40


$C$DW$T$41	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$41, DW_AT_name("SCIPRI_REG")
	.dwattr $C$DW$T$41, DW_AT_byte_size(0x01)
$C$DW$131	.dwtag  DW_TAG_member
	.dwattr $C$DW$131, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$131, DW_AT_name("all")
	.dwattr $C$DW$131, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$131, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$131, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$132	.dwtag  DW_TAG_member
	.dwattr $C$DW$132, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$132, DW_AT_name("bit")
	.dwattr $C$DW$132, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$132, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$132, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$41


$C$DW$T$42	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$42, DW_AT_name("SCIRXBUF_BITS")
	.dwattr $C$DW$T$42, DW_AT_byte_size(0x01)
$C$DW$133	.dwtag  DW_TAG_member
	.dwattr $C$DW$133, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$133, DW_AT_name("SAR")
	.dwattr $C$DW$133, DW_AT_TI_symbol_name("_SAR")
	.dwattr $C$DW$133, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$133, DW_AT_bit_size(0x08)
	.dwattr $C$DW$133, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$133, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$134	.dwtag  DW_TAG_member
	.dwattr $C$DW$134, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$134, DW_AT_name("rsvd1")
	.dwattr $C$DW$134, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$134, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$134, DW_AT_bit_size(0x06)
	.dwattr $C$DW$134, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$134, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$135	.dwtag  DW_TAG_member
	.dwattr $C$DW$135, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$135, DW_AT_name("SCIFFPE")
	.dwattr $C$DW$135, DW_AT_TI_symbol_name("_SCIFFPE")
	.dwattr $C$DW$135, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$135, DW_AT_bit_size(0x01)
	.dwattr $C$DW$135, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$135, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$136	.dwtag  DW_TAG_member
	.dwattr $C$DW$136, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$136, DW_AT_name("SCIFFFE")
	.dwattr $C$DW$136, DW_AT_TI_symbol_name("_SCIFFFE")
	.dwattr $C$DW$136, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$136, DW_AT_bit_size(0x01)
	.dwattr $C$DW$136, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$136, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$42


$C$DW$T$43	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$43, DW_AT_name("SCIRXBUF_REG")
	.dwattr $C$DW$T$43, DW_AT_byte_size(0x01)
$C$DW$137	.dwtag  DW_TAG_member
	.dwattr $C$DW$137, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$137, DW_AT_name("all")
	.dwattr $C$DW$137, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$137, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$137, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$138	.dwtag  DW_TAG_member
	.dwattr $C$DW$138, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$138, DW_AT_name("bit")
	.dwattr $C$DW$138, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$138, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$138, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$43


$C$DW$T$44	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$44, DW_AT_name("SCIRXEMU_BITS")
	.dwattr $C$DW$T$44, DW_AT_byte_size(0x01)
$C$DW$139	.dwtag  DW_TAG_member
	.dwattr $C$DW$139, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$139, DW_AT_name("ERXDT")
	.dwattr $C$DW$139, DW_AT_TI_symbol_name("_ERXDT")
	.dwattr $C$DW$139, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$139, DW_AT_bit_size(0x08)
	.dwattr $C$DW$139, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$139, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$140	.dwtag  DW_TAG_member
	.dwattr $C$DW$140, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$140, DW_AT_name("rsvd1")
	.dwattr $C$DW$140, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$140, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$140, DW_AT_bit_size(0x08)
	.dwattr $C$DW$140, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$140, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$44


$C$DW$T$45	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$45, DW_AT_name("SCIRXEMU_REG")
	.dwattr $C$DW$T$45, DW_AT_byte_size(0x01)
$C$DW$141	.dwtag  DW_TAG_member
	.dwattr $C$DW$141, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$141, DW_AT_name("all")
	.dwattr $C$DW$141, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$141, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$141, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$142	.dwtag  DW_TAG_member
	.dwattr $C$DW$142, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$142, DW_AT_name("bit")
	.dwattr $C$DW$142, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$142, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$142, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$45


$C$DW$T$46	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$46, DW_AT_name("SCIRXST_BITS")
	.dwattr $C$DW$T$46, DW_AT_byte_size(0x01)
$C$DW$143	.dwtag  DW_TAG_member
	.dwattr $C$DW$143, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$143, DW_AT_name("rsvd1")
	.dwattr $C$DW$143, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$143, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$143, DW_AT_bit_size(0x01)
	.dwattr $C$DW$143, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$143, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$144	.dwtag  DW_TAG_member
	.dwattr $C$DW$144, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$144, DW_AT_name("RXWAKE")
	.dwattr $C$DW$144, DW_AT_TI_symbol_name("_RXWAKE")
	.dwattr $C$DW$144, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$144, DW_AT_bit_size(0x01)
	.dwattr $C$DW$144, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$144, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$145	.dwtag  DW_TAG_member
	.dwattr $C$DW$145, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$145, DW_AT_name("PE")
	.dwattr $C$DW$145, DW_AT_TI_symbol_name("_PE")
	.dwattr $C$DW$145, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$145, DW_AT_bit_size(0x01)
	.dwattr $C$DW$145, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$145, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$146	.dwtag  DW_TAG_member
	.dwattr $C$DW$146, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$146, DW_AT_name("OE")
	.dwattr $C$DW$146, DW_AT_TI_symbol_name("_OE")
	.dwattr $C$DW$146, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$146, DW_AT_bit_size(0x01)
	.dwattr $C$DW$146, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$146, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$147	.dwtag  DW_TAG_member
	.dwattr $C$DW$147, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$147, DW_AT_name("FE")
	.dwattr $C$DW$147, DW_AT_TI_symbol_name("_FE")
	.dwattr $C$DW$147, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$147, DW_AT_bit_size(0x01)
	.dwattr $C$DW$147, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$147, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$148	.dwtag  DW_TAG_member
	.dwattr $C$DW$148, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$148, DW_AT_name("BRKDT")
	.dwattr $C$DW$148, DW_AT_TI_symbol_name("_BRKDT")
	.dwattr $C$DW$148, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$148, DW_AT_bit_size(0x01)
	.dwattr $C$DW$148, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$148, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$149	.dwtag  DW_TAG_member
	.dwattr $C$DW$149, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$149, DW_AT_name("RXRDY")
	.dwattr $C$DW$149, DW_AT_TI_symbol_name("_RXRDY")
	.dwattr $C$DW$149, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$149, DW_AT_bit_size(0x01)
	.dwattr $C$DW$149, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$149, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$150	.dwtag  DW_TAG_member
	.dwattr $C$DW$150, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$150, DW_AT_name("RXERROR")
	.dwattr $C$DW$150, DW_AT_TI_symbol_name("_RXERROR")
	.dwattr $C$DW$150, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$150, DW_AT_bit_size(0x01)
	.dwattr $C$DW$150, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$150, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$151	.dwtag  DW_TAG_member
	.dwattr $C$DW$151, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$151, DW_AT_name("rsvd2")
	.dwattr $C$DW$151, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$151, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$151, DW_AT_bit_size(0x08)
	.dwattr $C$DW$151, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$151, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$46


$C$DW$T$47	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$47, DW_AT_name("SCIRXST_REG")
	.dwattr $C$DW$T$47, DW_AT_byte_size(0x01)
$C$DW$152	.dwtag  DW_TAG_member
	.dwattr $C$DW$152, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$152, DW_AT_name("all")
	.dwattr $C$DW$152, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$152, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$152, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$153	.dwtag  DW_TAG_member
	.dwattr $C$DW$153, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$153, DW_AT_name("bit")
	.dwattr $C$DW$153, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$153, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$153, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$47


$C$DW$T$48	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$48, DW_AT_name("SCITXBUF_BITS")
	.dwattr $C$DW$T$48, DW_AT_byte_size(0x01)
$C$DW$154	.dwtag  DW_TAG_member
	.dwattr $C$DW$154, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$154, DW_AT_name("TXDT")
	.dwattr $C$DW$154, DW_AT_TI_symbol_name("_TXDT")
	.dwattr $C$DW$154, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$154, DW_AT_bit_size(0x08)
	.dwattr $C$DW$154, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$154, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$155	.dwtag  DW_TAG_member
	.dwattr $C$DW$155, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$155, DW_AT_name("rsvd1")
	.dwattr $C$DW$155, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$155, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$155, DW_AT_bit_size(0x08)
	.dwattr $C$DW$155, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$155, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$48


$C$DW$T$49	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$49, DW_AT_name("SCITXBUF_REG")
	.dwattr $C$DW$T$49, DW_AT_byte_size(0x01)
$C$DW$156	.dwtag  DW_TAG_member
	.dwattr $C$DW$156, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$156, DW_AT_name("all")
	.dwattr $C$DW$156, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$156, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$156, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$157	.dwtag  DW_TAG_member
	.dwattr $C$DW$157, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$157, DW_AT_name("bit")
	.dwattr $C$DW$157, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$157, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$157, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$49


$C$DW$T$51	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$51, DW_AT_name("SCI_REGS")
	.dwattr $C$DW$T$51, DW_AT_byte_size(0x10)
$C$DW$158	.dwtag  DW_TAG_member
	.dwattr $C$DW$158, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$158, DW_AT_name("SCICCR")
	.dwattr $C$DW$158, DW_AT_TI_symbol_name("_SCICCR")
	.dwattr $C$DW$158, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$158, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$159	.dwtag  DW_TAG_member
	.dwattr $C$DW$159, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$159, DW_AT_name("SCICTL1")
	.dwattr $C$DW$159, DW_AT_TI_symbol_name("_SCICTL1")
	.dwattr $C$DW$159, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$159, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$160	.dwtag  DW_TAG_member
	.dwattr $C$DW$160, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$160, DW_AT_name("SCIHBAUD")
	.dwattr $C$DW$160, DW_AT_TI_symbol_name("_SCIHBAUD")
	.dwattr $C$DW$160, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$160, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$161	.dwtag  DW_TAG_member
	.dwattr $C$DW$161, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$161, DW_AT_name("SCILBAUD")
	.dwattr $C$DW$161, DW_AT_TI_symbol_name("_SCILBAUD")
	.dwattr $C$DW$161, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$161, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$162	.dwtag  DW_TAG_member
	.dwattr $C$DW$162, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$162, DW_AT_name("SCICTL2")
	.dwattr $C$DW$162, DW_AT_TI_symbol_name("_SCICTL2")
	.dwattr $C$DW$162, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$162, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$163	.dwtag  DW_TAG_member
	.dwattr $C$DW$163, DW_AT_type(*$C$DW$T$47)
	.dwattr $C$DW$163, DW_AT_name("SCIRXST")
	.dwattr $C$DW$163, DW_AT_TI_symbol_name("_SCIRXST")
	.dwattr $C$DW$163, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$163, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$164	.dwtag  DW_TAG_member
	.dwattr $C$DW$164, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$164, DW_AT_name("SCIRXEMU")
	.dwattr $C$DW$164, DW_AT_TI_symbol_name("_SCIRXEMU")
	.dwattr $C$DW$164, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$164, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$165	.dwtag  DW_TAG_member
	.dwattr $C$DW$165, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$165, DW_AT_name("SCIRXBUF")
	.dwattr $C$DW$165, DW_AT_TI_symbol_name("_SCIRXBUF")
	.dwattr $C$DW$165, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr $C$DW$165, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$166	.dwtag  DW_TAG_member
	.dwattr $C$DW$166, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$166, DW_AT_name("rsvd1")
	.dwattr $C$DW$166, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$166, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$166, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$167	.dwtag  DW_TAG_member
	.dwattr $C$DW$167, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$167, DW_AT_name("SCITXBUF")
	.dwattr $C$DW$167, DW_AT_TI_symbol_name("_SCITXBUF")
	.dwattr $C$DW$167, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr $C$DW$167, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$168	.dwtag  DW_TAG_member
	.dwattr $C$DW$168, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$168, DW_AT_name("SCIFFTX")
	.dwattr $C$DW$168, DW_AT_TI_symbol_name("_SCIFFTX")
	.dwattr $C$DW$168, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$168, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$169	.dwtag  DW_TAG_member
	.dwattr $C$DW$169, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$169, DW_AT_name("SCIFFRX")
	.dwattr $C$DW$169, DW_AT_TI_symbol_name("_SCIFFRX")
	.dwattr $C$DW$169, DW_AT_data_member_location[DW_OP_plus_uconst 0xb]
	.dwattr $C$DW$169, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$170	.dwtag  DW_TAG_member
	.dwattr $C$DW$170, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$170, DW_AT_name("SCIFFCT")
	.dwattr $C$DW$170, DW_AT_TI_symbol_name("_SCIFFCT")
	.dwattr $C$DW$170, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$170, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$171	.dwtag  DW_TAG_member
	.dwattr $C$DW$171, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$171, DW_AT_name("rsvd2")
	.dwattr $C$DW$171, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$171, DW_AT_data_member_location[DW_OP_plus_uconst 0xd]
	.dwattr $C$DW$171, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$172	.dwtag  DW_TAG_member
	.dwattr $C$DW$172, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$172, DW_AT_name("SCIPRI")
	.dwattr $C$DW$172, DW_AT_TI_symbol_name("_SCIPRI")
	.dwattr $C$DW$172, DW_AT_data_member_location[DW_OP_plus_uconst 0xf]
	.dwattr $C$DW$172, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$51

$C$DW$173	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$173, DW_AT_type(*$C$DW$T$51)

$C$DW$T$72	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$72, DW_AT_type(*$C$DW$173)


$C$DW$T$52	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$52, DW_AT_name("TCR_BITS")
	.dwattr $C$DW$T$52, DW_AT_byte_size(0x01)
$C$DW$174	.dwtag  DW_TAG_member
	.dwattr $C$DW$174, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$174, DW_AT_name("rsvd1")
	.dwattr $C$DW$174, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$174, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$174, DW_AT_bit_size(0x04)
	.dwattr $C$DW$174, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$174, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$175	.dwtag  DW_TAG_member
	.dwattr $C$DW$175, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$175, DW_AT_name("TSS")
	.dwattr $C$DW$175, DW_AT_TI_symbol_name("_TSS")
	.dwattr $C$DW$175, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$175, DW_AT_bit_size(0x01)
	.dwattr $C$DW$175, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$175, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$176	.dwtag  DW_TAG_member
	.dwattr $C$DW$176, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$176, DW_AT_name("TRB")
	.dwattr $C$DW$176, DW_AT_TI_symbol_name("_TRB")
	.dwattr $C$DW$176, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$176, DW_AT_bit_size(0x01)
	.dwattr $C$DW$176, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$176, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$177	.dwtag  DW_TAG_member
	.dwattr $C$DW$177, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$177, DW_AT_name("rsvd2")
	.dwattr $C$DW$177, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$177, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$177, DW_AT_bit_size(0x04)
	.dwattr $C$DW$177, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$177, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$178	.dwtag  DW_TAG_member
	.dwattr $C$DW$178, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$178, DW_AT_name("SOFT")
	.dwattr $C$DW$178, DW_AT_TI_symbol_name("_SOFT")
	.dwattr $C$DW$178, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$178, DW_AT_bit_size(0x01)
	.dwattr $C$DW$178, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$178, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$179	.dwtag  DW_TAG_member
	.dwattr $C$DW$179, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$179, DW_AT_name("FREE")
	.dwattr $C$DW$179, DW_AT_TI_symbol_name("_FREE")
	.dwattr $C$DW$179, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$179, DW_AT_bit_size(0x01)
	.dwattr $C$DW$179, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$179, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$180	.dwtag  DW_TAG_member
	.dwattr $C$DW$180, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$180, DW_AT_name("rsvd3")
	.dwattr $C$DW$180, DW_AT_TI_symbol_name("_rsvd3")
	.dwattr $C$DW$180, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$180, DW_AT_bit_size(0x02)
	.dwattr $C$DW$180, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$180, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$181	.dwtag  DW_TAG_member
	.dwattr $C$DW$181, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$181, DW_AT_name("TIE")
	.dwattr $C$DW$181, DW_AT_TI_symbol_name("_TIE")
	.dwattr $C$DW$181, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$181, DW_AT_bit_size(0x01)
	.dwattr $C$DW$181, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$181, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$182	.dwtag  DW_TAG_member
	.dwattr $C$DW$182, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$182, DW_AT_name("TIF")
	.dwattr $C$DW$182, DW_AT_TI_symbol_name("_TIF")
	.dwattr $C$DW$182, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$182, DW_AT_bit_size(0x01)
	.dwattr $C$DW$182, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$182, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$52


$C$DW$T$53	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$53, DW_AT_name("TCR_REG")
	.dwattr $C$DW$T$53, DW_AT_byte_size(0x01)
$C$DW$183	.dwtag  DW_TAG_member
	.dwattr $C$DW$183, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$183, DW_AT_name("all")
	.dwattr $C$DW$183, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$183, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$183, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$184	.dwtag  DW_TAG_member
	.dwattr $C$DW$184, DW_AT_type(*$C$DW$T$52)
	.dwattr $C$DW$184, DW_AT_name("bit")
	.dwattr $C$DW$184, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$184, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$184, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$53


$C$DW$T$54	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$54, DW_AT_name("TIM_BITS")
	.dwattr $C$DW$T$54, DW_AT_byte_size(0x02)
$C$DW$185	.dwtag  DW_TAG_member
	.dwattr $C$DW$185, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$185, DW_AT_name("LSW")
	.dwattr $C$DW$185, DW_AT_TI_symbol_name("_LSW")
	.dwattr $C$DW$185, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$185, DW_AT_bit_size(0x10)
	.dwattr $C$DW$185, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$185, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$186	.dwtag  DW_TAG_member
	.dwattr $C$DW$186, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$186, DW_AT_name("MSW")
	.dwattr $C$DW$186, DW_AT_TI_symbol_name("_MSW")
	.dwattr $C$DW$186, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$186, DW_AT_bit_size(0x10)
	.dwattr $C$DW$186, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$186, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$54


$C$DW$T$55	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$55, DW_AT_name("TIM_REG")
	.dwattr $C$DW$T$55, DW_AT_byte_size(0x02)
$C$DW$187	.dwtag  DW_TAG_member
	.dwattr $C$DW$187, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$187, DW_AT_name("all")
	.dwattr $C$DW$187, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$187, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$187, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$188	.dwtag  DW_TAG_member
	.dwattr $C$DW$188, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$188, DW_AT_name("bit")
	.dwattr $C$DW$188, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$188, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$188, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$55


$C$DW$T$56	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$56, DW_AT_name("TPRH_BITS")
	.dwattr $C$DW$T$56, DW_AT_byte_size(0x01)
$C$DW$189	.dwtag  DW_TAG_member
	.dwattr $C$DW$189, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$189, DW_AT_name("TDDRH")
	.dwattr $C$DW$189, DW_AT_TI_symbol_name("_TDDRH")
	.dwattr $C$DW$189, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$189, DW_AT_bit_size(0x08)
	.dwattr $C$DW$189, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$189, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$190	.dwtag  DW_TAG_member
	.dwattr $C$DW$190, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$190, DW_AT_name("PSCH")
	.dwattr $C$DW$190, DW_AT_TI_symbol_name("_PSCH")
	.dwattr $C$DW$190, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$190, DW_AT_bit_size(0x08)
	.dwattr $C$DW$190, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$190, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$56


$C$DW$T$57	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$57, DW_AT_name("TPRH_REG")
	.dwattr $C$DW$T$57, DW_AT_byte_size(0x01)
$C$DW$191	.dwtag  DW_TAG_member
	.dwattr $C$DW$191, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$191, DW_AT_name("all")
	.dwattr $C$DW$191, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$191, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$191, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$192	.dwtag  DW_TAG_member
	.dwattr $C$DW$192, DW_AT_type(*$C$DW$T$56)
	.dwattr $C$DW$192, DW_AT_name("bit")
	.dwattr $C$DW$192, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$192, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$192, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$57


$C$DW$T$58	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$58, DW_AT_name("TPR_BITS")
	.dwattr $C$DW$T$58, DW_AT_byte_size(0x01)
$C$DW$193	.dwtag  DW_TAG_member
	.dwattr $C$DW$193, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$193, DW_AT_name("TDDR")
	.dwattr $C$DW$193, DW_AT_TI_symbol_name("_TDDR")
	.dwattr $C$DW$193, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$193, DW_AT_bit_size(0x08)
	.dwattr $C$DW$193, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$193, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$194	.dwtag  DW_TAG_member
	.dwattr $C$DW$194, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$194, DW_AT_name("PSC")
	.dwattr $C$DW$194, DW_AT_TI_symbol_name("_PSC")
	.dwattr $C$DW$194, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$194, DW_AT_bit_size(0x08)
	.dwattr $C$DW$194, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$194, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$58


$C$DW$T$59	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$59, DW_AT_name("TPR_REG")
	.dwattr $C$DW$T$59, DW_AT_byte_size(0x01)
$C$DW$195	.dwtag  DW_TAG_member
	.dwattr $C$DW$195, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$195, DW_AT_name("all")
	.dwattr $C$DW$195, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$195, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$195, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$196	.dwtag  DW_TAG_member
	.dwattr $C$DW$196, DW_AT_type(*$C$DW$T$58)
	.dwattr $C$DW$196, DW_AT_name("bit")
	.dwattr $C$DW$196, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$196, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$196, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$59

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

$C$DW$T$75	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$75, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$T$75, DW_AT_address_class(0x20)

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

$C$DW$T$76	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$76, DW_AT_name("int16_T")
	.dwattr $C$DW$T$76, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$76, DW_AT_language(DW_LANG_C)

$C$DW$T$81	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$81, DW_AT_type(*$C$DW$T$76)
	.dwattr $C$DW$T$81, DW_AT_address_class(0x20)

$C$DW$T$11	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$11, DW_AT_name("unsigned int")
	.dwattr $C$DW$T$11, DW_AT_byte_size(0x01)

$C$DW$T$19	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$19, DW_AT_name("Uint16")
	.dwattr $C$DW$T$19, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$19, DW_AT_language(DW_LANG_C)


$C$DW$T$50	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$50, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$50, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$50, DW_AT_byte_size(0x02)
$C$DW$197	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$197, DW_AT_upper_bound(0x01)

	.dwendtag $C$DW$T$50

$C$DW$T$78	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$78, DW_AT_name("uint16_T")
	.dwattr $C$DW$T$78, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$78, DW_AT_language(DW_LANG_C)

$C$DW$T$79	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$79, DW_AT_type(*$C$DW$T$78)
	.dwattr $C$DW$T$79, DW_AT_address_class(0x20)

$C$DW$T$12	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$12, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$12, DW_AT_name("long")
	.dwattr $C$DW$T$12, DW_AT_byte_size(0x02)

$C$DW$T$13	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$13, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$13, DW_AT_name("unsigned long")
	.dwattr $C$DW$T$13, DW_AT_byte_size(0x02)

$C$DW$T$22	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$22, DW_AT_name("Uint32")
	.dwattr $C$DW$T$22, DW_AT_type(*$C$DW$T$13)
	.dwattr $C$DW$T$22, DW_AT_language(DW_LANG_C)

$C$DW$T$86	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$86, DW_AT_name("uint32_T")
	.dwattr $C$DW$T$86, DW_AT_type(*$C$DW$T$13)
	.dwattr $C$DW$T$86, DW_AT_language(DW_LANG_C)

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

$C$DW$198	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$198, DW_AT_name("AL")
	.dwattr $C$DW$198, DW_AT_location[DW_OP_reg0]

$C$DW$199	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$199, DW_AT_name("AH")
	.dwattr $C$DW$199, DW_AT_location[DW_OP_reg1]

$C$DW$200	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$200, DW_AT_name("PL")
	.dwattr $C$DW$200, DW_AT_location[DW_OP_reg2]

$C$DW$201	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$201, DW_AT_name("PH")
	.dwattr $C$DW$201, DW_AT_location[DW_OP_reg3]

$C$DW$202	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$202, DW_AT_name("SP")
	.dwattr $C$DW$202, DW_AT_location[DW_OP_reg20]

$C$DW$203	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$203, DW_AT_name("XT")
	.dwattr $C$DW$203, DW_AT_location[DW_OP_reg21]

$C$DW$204	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$204, DW_AT_name("T")
	.dwattr $C$DW$204, DW_AT_location[DW_OP_reg22]

$C$DW$205	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$205, DW_AT_name("ST0")
	.dwattr $C$DW$205, DW_AT_location[DW_OP_reg23]

$C$DW$206	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$206, DW_AT_name("ST1")
	.dwattr $C$DW$206, DW_AT_location[DW_OP_reg24]

$C$DW$207	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$207, DW_AT_name("PC")
	.dwattr $C$DW$207, DW_AT_location[DW_OP_reg25]

$C$DW$208	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$208, DW_AT_name("RPC")
	.dwattr $C$DW$208, DW_AT_location[DW_OP_reg26]

$C$DW$209	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$209, DW_AT_name("FP")
	.dwattr $C$DW$209, DW_AT_location[DW_OP_reg28]

$C$DW$210	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$210, DW_AT_name("DP")
	.dwattr $C$DW$210, DW_AT_location[DW_OP_reg29]

$C$DW$211	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$211, DW_AT_name("SXM")
	.dwattr $C$DW$211, DW_AT_location[DW_OP_reg30]

$C$DW$212	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$212, DW_AT_name("PM")
	.dwattr $C$DW$212, DW_AT_location[DW_OP_reg31]

$C$DW$213	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$213, DW_AT_name("OVM")
	.dwattr $C$DW$213, DW_AT_location[DW_OP_regx 0x20]

$C$DW$214	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$214, DW_AT_name("PAGE0")
	.dwattr $C$DW$214, DW_AT_location[DW_OP_regx 0x21]

$C$DW$215	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$215, DW_AT_name("AMODE")
	.dwattr $C$DW$215, DW_AT_location[DW_OP_regx 0x22]

$C$DW$216	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$216, DW_AT_name("EALLOW")
	.dwattr $C$DW$216, DW_AT_location[DW_OP_regx 0x4e]

$C$DW$217	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$217, DW_AT_name("INTM")
	.dwattr $C$DW$217, DW_AT_location[DW_OP_regx 0x23]

$C$DW$218	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$218, DW_AT_name("IFR")
	.dwattr $C$DW$218, DW_AT_location[DW_OP_regx 0x24]

$C$DW$219	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$219, DW_AT_name("IER")
	.dwattr $C$DW$219, DW_AT_location[DW_OP_regx 0x25]

$C$DW$220	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$220, DW_AT_name("V")
	.dwattr $C$DW$220, DW_AT_location[DW_OP_regx 0x26]

$C$DW$221	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$221, DW_AT_name("PSEUDOH")
	.dwattr $C$DW$221, DW_AT_location[DW_OP_regx 0x4c]

$C$DW$222	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$222, DW_AT_name("VOL")
	.dwattr $C$DW$222, DW_AT_location[DW_OP_regx 0x4d]

$C$DW$223	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$223, DW_AT_name("AR0")
	.dwattr $C$DW$223, DW_AT_location[DW_OP_reg4]

$C$DW$224	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$224, DW_AT_name("XAR0")
	.dwattr $C$DW$224, DW_AT_location[DW_OP_reg5]

$C$DW$225	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$225, DW_AT_name("AR1")
	.dwattr $C$DW$225, DW_AT_location[DW_OP_reg6]

$C$DW$226	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$226, DW_AT_name("XAR1")
	.dwattr $C$DW$226, DW_AT_location[DW_OP_reg7]

$C$DW$227	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$227, DW_AT_name("AR2")
	.dwattr $C$DW$227, DW_AT_location[DW_OP_reg8]

$C$DW$228	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$228, DW_AT_name("XAR2")
	.dwattr $C$DW$228, DW_AT_location[DW_OP_reg9]

$C$DW$229	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$229, DW_AT_name("AR3")
	.dwattr $C$DW$229, DW_AT_location[DW_OP_reg10]

$C$DW$230	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$230, DW_AT_name("XAR3")
	.dwattr $C$DW$230, DW_AT_location[DW_OP_reg11]

$C$DW$231	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$231, DW_AT_name("AR4")
	.dwattr $C$DW$231, DW_AT_location[DW_OP_reg12]

$C$DW$232	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$232, DW_AT_name("XAR4")
	.dwattr $C$DW$232, DW_AT_location[DW_OP_reg13]

$C$DW$233	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$233, DW_AT_name("AR5")
	.dwattr $C$DW$233, DW_AT_location[DW_OP_reg14]

$C$DW$234	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$234, DW_AT_name("XAR5")
	.dwattr $C$DW$234, DW_AT_location[DW_OP_reg15]

$C$DW$235	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$235, DW_AT_name("AR6")
	.dwattr $C$DW$235, DW_AT_location[DW_OP_reg16]

$C$DW$236	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$236, DW_AT_name("XAR6")
	.dwattr $C$DW$236, DW_AT_location[DW_OP_reg17]

$C$DW$237	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$237, DW_AT_name("AR7")
	.dwattr $C$DW$237, DW_AT_location[DW_OP_reg18]

$C$DW$238	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$238, DW_AT_name("XAR7")
	.dwattr $C$DW$238, DW_AT_location[DW_OP_reg19]

$C$DW$239	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$239, DW_AT_name("R0H")
	.dwattr $C$DW$239, DW_AT_location[DW_OP_regx 0x2b]

$C$DW$240	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$240, DW_AT_name("R1H")
	.dwattr $C$DW$240, DW_AT_location[DW_OP_regx 0x2f]

$C$DW$241	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$241, DW_AT_name("R2H")
	.dwattr $C$DW$241, DW_AT_location[DW_OP_regx 0x33]

$C$DW$242	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$242, DW_AT_name("R3H")
	.dwattr $C$DW$242, DW_AT_location[DW_OP_regx 0x37]

$C$DW$243	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$243, DW_AT_name("R4H")
	.dwattr $C$DW$243, DW_AT_location[DW_OP_regx 0x3b]

$C$DW$244	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$244, DW_AT_name("R5H")
	.dwattr $C$DW$244, DW_AT_location[DW_OP_regx 0x3f]

$C$DW$245	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$245, DW_AT_name("R6H")
	.dwattr $C$DW$245, DW_AT_location[DW_OP_regx 0x43]

$C$DW$246	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$246, DW_AT_name("R7H")
	.dwattr $C$DW$246, DW_AT_location[DW_OP_regx 0x47]

$C$DW$247	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$247, DW_AT_name("RB")
	.dwattr $C$DW$247, DW_AT_location[DW_OP_regx 0x4a]

$C$DW$248	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$248, DW_AT_name("STF")
	.dwattr $C$DW$248, DW_AT_location[DW_OP_regx 0x28]

$C$DW$249	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$249, DW_AT_name("FPUHAZ")
	.dwattr $C$DW$249, DW_AT_location[DW_OP_reg27]

$C$DW$250	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$250, DW_AT_name("STF_HWDIV")
	.dwattr $C$DW$250, DW_AT_location[DW_OP_regx 0x4f]

	.dwendtag $C$DW$CU

