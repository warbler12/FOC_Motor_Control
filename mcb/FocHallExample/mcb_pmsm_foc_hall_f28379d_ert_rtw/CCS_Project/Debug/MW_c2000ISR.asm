;***************************************************************
;* TMS320C2000 G3 C/C++ Codegen                               PC v22.6.0.LTS *
;* Date/Time created: Thu Nov 20 18:10:05 2025                 *
;***************************************************************
	.compiler_opts --abi=coffabi --float_support=fpu32 --hll_source=on --mem_model:code=flat --mem_model:data=large --object_format=coff --silicon_errata_fpu1_workaround=off --silicon_version=28 --symdebug:dwarf --symdebug:dwarf_version=3 --tmu_support=tmu0 
	.asg	XAR2, FP

$C$DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr $C$DW$CU, DW_AT_name("D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c2000ISR.c")
	.dwattr $C$DW$CU, DW_AT_producer("TI TMS320C2000 G3 C/C++ Codegen PC v22.6.0.LTS Copyright (c) 1996-2018 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("C:\Users\13571\Documents\MATLAB\Examples\R2023b\mcb\FocHallExample\mcb_pmsm_foc_hall_f28379d_ert_rtw\CCS_Project\Debug")
$C$DW$1	.dwtag  DW_TAG_variable
	.dwattr $C$DW$1, DW_AT_name("CIPC0_INT_fptr")
	.dwattr $C$DW$1, DW_AT_TI_symbol_name("_CIPC0_INT_fptr")
	.dwattr $C$DW$1, DW_AT_type(*$C$DW$T$74)
	.dwattr $C$DW$1, DW_AT_declaration
	.dwattr $C$DW$1, DW_AT_external

$C$DW$2	.dwtag  DW_TAG_variable
	.dwattr $C$DW$2, DW_AT_name("PieCtrlRegs")
	.dwattr $C$DW$2, DW_AT_TI_symbol_name("_PieCtrlRegs")
	.dwattr $C$DW$2, DW_AT_type(*$C$DW$T$102)
	.dwattr $C$DW$2, DW_AT_declaration
	.dwattr $C$DW$2, DW_AT_external

$C$DW$3	.dwtag  DW_TAG_variable
	.dwattr $C$DW$3, DW_AT_name("PieVectTable")
	.dwattr $C$DW$3, DW_AT_TI_symbol_name("_PieVectTable")
	.dwattr $C$DW$3, DW_AT_type(*$C$DW$T$103)
	.dwattr $C$DW$3, DW_AT_declaration
	.dwattr $C$DW$3, DW_AT_external

;	D:\Software\CCS\CCS12.2.0.00009_win64\c1220\ccs\tools\compiler\ti-cgt-c2000_22.6.0.LTS\bin\ac2000.exe -@C:\\Users\\13571\\AppData\\Local\\Temp\\{3AB28764-02FD-47EF-8D16-05A54A2EC958} 
	.sect	".text"
	.clink
	.global	_HWI_TIC28x_ConfigureIRQ

$C$DW$4	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$4, DW_AT_name("HWI_TIC28x_ConfigureIRQ")
	.dwattr $C$DW$4, DW_AT_low_pc(_HWI_TIC28x_ConfigureIRQ)
	.dwattr $C$DW$4, DW_AT_high_pc(0x00)
	.dwattr $C$DW$4, DW_AT_TI_symbol_name("_HWI_TIC28x_ConfigureIRQ")
	.dwattr $C$DW$4, DW_AT_external
	.dwattr $C$DW$4, DW_AT_TI_begin_file("D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c2000ISR.c")
	.dwattr $C$DW$4, DW_AT_TI_begin_line(0x0a)
	.dwattr $C$DW$4, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$4, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c2000ISR.c",line 11,column 1,is_stmt,address _HWI_TIC28x_ConfigureIRQ,isa 0

	.dwfde $C$DW$CIE, _HWI_TIC28x_ConfigureIRQ
$C$DW$5	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$5, DW_AT_name("irqnumber")
	.dwattr $C$DW$5, DW_AT_TI_symbol_name("_irqnumber")
	.dwattr $C$DW$5, DW_AT_type(*$C$DW$T$106)
	.dwattr $C$DW$5, DW_AT_location[DW_OP_reg0]

$C$DW$6	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$6, DW_AT_name("isrfcn")
	.dwattr $C$DW$6, DW_AT_TI_symbol_name("_isrfcn")
	.dwattr $C$DW$6, DW_AT_type(*$C$DW$T$74)
	.dwattr $C$DW$6, DW_AT_location[DW_OP_reg12]

$C$DW$7	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$7, DW_AT_name("priority")
	.dwattr $C$DW$7, DW_AT_TI_symbol_name("_priority")
	.dwattr $C$DW$7, DW_AT_type(*$C$DW$T$106)
	.dwattr $C$DW$7, DW_AT_location[DW_OP_reg1]

;----------------------------------------------------------------------
;  10 | void HWI_TIC28x_ConfigureIRQ(uint16_T irqnumber, void (*isrfcn)(void),
;     | uint16_T priority)                                                     
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _HWI_TIC28x_ConfigureIRQ      FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  4 Auto,  0 SOE     *
;***************************************************************

_HWI_TIC28x_ConfigureIRQ:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
$C$DW$8	.dwtag  DW_TAG_variable
	.dwattr $C$DW$8, DW_AT_name("isrfcn")
	.dwattr $C$DW$8, DW_AT_TI_symbol_name("_isrfcn")
	.dwattr $C$DW$8, DW_AT_type(*$C$DW$T$74)
	.dwattr $C$DW$8, DW_AT_location[DW_OP_breg20 -2]

$C$DW$9	.dwtag  DW_TAG_variable
	.dwattr $C$DW$9, DW_AT_name("irqnumber")
	.dwattr $C$DW$9, DW_AT_TI_symbol_name("_irqnumber")
	.dwattr $C$DW$9, DW_AT_type(*$C$DW$T$106)
	.dwattr $C$DW$9, DW_AT_location[DW_OP_breg20 -3]

$C$DW$10	.dwtag  DW_TAG_variable
	.dwattr $C$DW$10, DW_AT_name("priority")
	.dwattr $C$DW$10, DW_AT_TI_symbol_name("_priority")
	.dwattr $C$DW$10, DW_AT_type(*$C$DW$T$106)
	.dwattr $C$DW$10, DW_AT_location[DW_OP_breg20 -4]

;----------------------------------------------------------------------
;  12 | #if (defined(MW_F2838X) || defined(MW_F2837XD) || defined(MW_F28P65X))
;     | && defined(CPU1)                                                       
;----------------------------------------------------------------------
        MOV       *-SP[4],AH            ; [CPU_ALU] |11| 
        MOV       *-SP[3],AL            ; [CPU_ALU] |11| 
        MOVL      *-SP[2],XAR4          ; [CPU_ALU] |11| 
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c2000ISR.c",line 14,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
;  14 | if (irqnumber == CIPC0_IRQNUM)                                         
;----------------------------------------------------------------------
        CMPB      AL,#132               ; [CPU_ALU] |14| 
        B         $C$L1,NEQ             ; [CPU_ALU] |14| 
        ; branchcc occurs ; [] |14| 
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c2000ISR.c",line 15,column 17,is_stmt,isa 0
;----------------------------------------------------------------------
;  15 | CIPC0_INT_fptr = isrfcn;                                               
;  16 | #if defined(MW_F2838X)                                                 
;  18 | else if (irqnumber == CMTOCPUxIPCINTR0_IRQNUM)                         
;  19 | CMTOCPUXIPC0_INT_fptr = isrfcn;                                        
;  20 | #endif                                                                 
;  22 | else                                                                   
;----------------------------------------------------------------------
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |15| 
        MOVW      DP,#_CIPC0_INT_fptr   ; [CPU_ARAU] 
        MOVL      @_CIPC0_INT_fptr,ACC  ; [CPU_ALU] |15| 
        B         $C$L2,UNC             ; [CPU_ALU] 
        ; branch occurs ; [] 
$C$L1:    
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c2000ISR.c",line 24,column 17,is_stmt,isa 0
;----------------------------------------------------------------------
;  24 | EALLOW;                                                                
;----------------------------------------------------------------------
 EALLOW
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c2000ISR.c",line 25,column 17,is_stmt,isa 0
;----------------------------------------------------------------------
;  25 | ((PINT *)&PieVectTable)[irqnumber] = isrfcn; /* Map ISR to vector table
;     |  */                                                                    
;----------------------------------------------------------------------
        CLRC      SXM                   ; [CPU_ALU] 
        MOVL      XAR6,*-SP[2]          ; [CPU_ALU] |25| 
        MOVL      XAR4,#_PieVectTable   ; [CPU_ARAU] |25| 
        MOV       ACC,*-SP[3] << 1      ; [CPU_ALU] |25| 
        ADDL      XAR4,ACC              ; [CPU_ALU] |25| 
        MOVL      *+XAR4[0],XAR6        ; [CPU_ALU] |25| 
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c2000ISR.c",line 26,column 17,is_stmt,isa 0
;----------------------------------------------------------------------
;  26 | EDIS;                                                                  
;  28 | #else                                                                  
;  30 | EALLOW;                                                                
;  31 | ((PINT *)&PieVectTable)[irqnumber] = isrfcn; /* Map ISR to vector table
;     |  */                                                                    
;  32 | EDIS;                                                                  
;  33 | #endif                                                                 
;----------------------------------------------------------------------
 EDIS
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c2000ISR.c",line 35,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
;  35 | (void)priority;                                                        
;----------------------------------------------------------------------
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c2000ISR.c",line 36,column 1,is_stmt,isa 0
$C$L2:    
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
        SPM       #0                    ; [CPU_ALU] 
$C$DW$11	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$11, DW_AT_low_pc(0x00)
	.dwattr $C$DW$11, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$4, DW_AT_TI_end_file("D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c2000ISR.c")
	.dwattr $C$DW$4, DW_AT_TI_end_line(0x24)
	.dwattr $C$DW$4, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$4

	.sect	".text"
	.clink
	.global	_HWI_TIC28x_EnableIRQ

$C$DW$12	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$12, DW_AT_name("HWI_TIC28x_EnableIRQ")
	.dwattr $C$DW$12, DW_AT_low_pc(_HWI_TIC28x_EnableIRQ)
	.dwattr $C$DW$12, DW_AT_high_pc(0x00)
	.dwattr $C$DW$12, DW_AT_TI_symbol_name("_HWI_TIC28x_EnableIRQ")
	.dwattr $C$DW$12, DW_AT_external
	.dwattr $C$DW$12, DW_AT_TI_begin_file("D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c2000ISR.c")
	.dwattr $C$DW$12, DW_AT_TI_begin_line(0x26)
	.dwattr $C$DW$12, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$12, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c2000ISR.c",line 39,column 1,is_stmt,address _HWI_TIC28x_EnableIRQ,isa 0

	.dwfde $C$DW$CIE, _HWI_TIC28x_EnableIRQ
$C$DW$13	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$13, DW_AT_name("irqnumber")
	.dwattr $C$DW$13, DW_AT_TI_symbol_name("_irqnumber")
	.dwattr $C$DW$13, DW_AT_type(*$C$DW$T$106)
	.dwattr $C$DW$13, DW_AT_location[DW_OP_reg0]

;----------------------------------------------------------------------
;  38 | void HWI_TIC28x_EnableIRQ(uint16_T irqnumber)                          
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _HWI_TIC28x_EnableIRQ         FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  1 Auto,  0 SOE     *
;***************************************************************

_HWI_TIC28x_EnableIRQ:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
$C$DW$14	.dwtag  DW_TAG_variable
	.dwattr $C$DW$14, DW_AT_name("irqnumber")
	.dwattr $C$DW$14, DW_AT_TI_symbol_name("_irqnumber")
	.dwattr $C$DW$14, DW_AT_type(*$C$DW$T$106)
	.dwattr $C$DW$14, DW_AT_location[DW_OP_breg20 -1]

        MOV       *-SP[1],AL            ; [CPU_ALU] |39| 
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c2000ISR.c",line 41,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
;  41 | if ((1 == irqnumber)                                                   
;  42 | ||  (1 == GET_PIE_GROUP(irqnumber)+1))                                 
;----------------------------------------------------------------------
        CMPB      AL,#1                 ; [CPU_ALU] |41| 
        B         $C$L5,EQ              ; [CPU_ALU] |41| 
        ; branchcc occurs ; [] |41| 
        CMPB      AL,#128               ; [CPU_ALU] |41| 
        B         $C$L3,LO              ; [CPU_ALU] |41| 
        ; branchcc occurs ; [] |41| 
        SUB       AL,#128               ; [CPU_ALU] |41| 
        B         $C$L4,UNC             ; [CPU_ALU] |41| 
        ; branch occurs ; [] |41| 
$C$L3:    
        ADDB      AL,#-32               ; [CPU_ALU] |41| 
$C$L4:    
        LSR       AL,3                  ; [CPU_ALU] |41| 
        ADDB      AL,#1                 ; [CPU_ALU] |41| 
        CMPB      AL,#1                 ; [CPU_ALU] |41| 
        B         $C$L10,NEQ            ; [CPU_ALU] |41| 
        ; branchcc occurs ; [] |41| 
$C$L5:    
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c2000ISR.c",line 45,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
;  45 | PieCtrlRegs.PIEIER1.all |= 1 << GET_PIE_OFFSET_IN_GROUP(irqnumber);    
;----------------------------------------------------------------------
        MOV       AL,*-SP[1]            ; [CPU_ALU] |45| 
        CMPB      AL,#128               ; [CPU_ALU] |45| 
        B         $C$L6,LO              ; [CPU_ALU] |45| 
        ; branchcc occurs ; [] |45| 
        SUB       AL,#128               ; [CPU_ALU] |45| 
        ANDB      AL,#0x07              ; [CPU_ALU] |45| 
        ADDB      AL,#8                 ; [CPU_ALU] |45| 
        MOV       T,AL                  ; [CPU_ALU] |45| 
        B         $C$L7,UNC             ; [CPU_ALU] |45| 
        ; branch occurs ; [] |45| 
$C$L6:    
        ADDB      AL,#-32               ; [CPU_ALU] |45| 
        ANDB      AL,#0x07              ; [CPU_ALU] |45| 
        MOV       T,AL                  ; [CPU_ALU] |45| 
$C$L7:    
        MOVB      AL,#1                 ; [CPU_ALU] |45| 
        MOVW      DP,#_PieCtrlRegs+2    ; [CPU_ARAU] 
        LSL       AL,T                  ; [CPU_ALU] |45| 
        OR        @$BLOCKED(_PieCtrlRegs)+2,AL ; [CPU_ALU] |45| 
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c2000ISR.c",line 46,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
;  46 | IER |= (0x1U << GET_PIE_GROUP(irqnumber));                             
;----------------------------------------------------------------------
        MOV       AL,*-SP[1]            ; [CPU_ALU] |46| 
        CMPB      AL,#128               ; [CPU_ALU] |46| 
        B         $C$L8,LO              ; [CPU_ALU] |46| 
        ; branchcc occurs ; [] |46| 
        SUB       AL,#128               ; [CPU_ALU] |46| 
        B         $C$L9,UNC             ; [CPU_ALU] |46| 
        ; branch occurs ; [] |46| 
$C$L8:    
        ADDB      AL,#-32               ; [CPU_ALU] |46| 
$C$L9:    
        LSR       AL,3                  ; [CPU_ALU] |46| 
        MOV       T,AL                  ; [CPU_ALU] |46| 
        MOVB      AL,#1                 ; [CPU_ALU] |46| 
        LSL       AL,T                  ; [CPU_ALU] |46| 
        MOV       AH,IER                ; [CPU_FPU] |46| 
        OR        AL,AH                 ; [CPU_ALU] |46| 
        MOV       IER,AL                ; [CPU_ALU] |46| 
        B         $C$L99,UNC            ; [CPU_ALU] 
        ; branch occurs ; [] 
$C$L10:    
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c2000ISR.c",line 48,column 10,is_stmt,isa 0
;----------------------------------------------------------------------
;  48 | else if ((2 == irqnumber)                                              
;  49 | || (2 == GET_PIE_GROUP(irqnumber)+1))                                  
;----------------------------------------------------------------------
        MOV       AL,*-SP[1]            ; [CPU_ALU] |48| 
        CMPB      AL,#2                 ; [CPU_ALU] |48| 
        B         $C$L13,EQ             ; [CPU_ALU] |48| 
        ; branchcc occurs ; [] |48| 
        CMPB      AL,#128               ; [CPU_ALU] |48| 
        B         $C$L11,LO             ; [CPU_ALU] |48| 
        ; branchcc occurs ; [] |48| 
        SUB       AL,#128               ; [CPU_ALU] |48| 
        B         $C$L12,UNC            ; [CPU_ALU] |48| 
        ; branch occurs ; [] |48| 
$C$L11:    
        ADDB      AL,#-32               ; [CPU_ALU] |48| 
$C$L12:    
        LSR       AL,3                  ; [CPU_ALU] |48| 
        ADDB      AL,#1                 ; [CPU_ALU] |48| 
        CMPB      AL,#2                 ; [CPU_ALU] |48| 
        B         $C$L18,NEQ            ; [CPU_ALU] |48| 
        ; branchcc occurs ; [] |48| 
$C$L13:    
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c2000ISR.c",line 52,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
;  52 | PieCtrlRegs.PIEIER2.all |= 1 << GET_PIE_OFFSET_IN_GROUP(irqnumber);    
;----------------------------------------------------------------------
        MOV       AL,*-SP[1]            ; [CPU_ALU] |52| 
        CMPB      AL,#128               ; [CPU_ALU] |52| 
        B         $C$L14,LO             ; [CPU_ALU] |52| 
        ; branchcc occurs ; [] |52| 
        SUB       AL,#128               ; [CPU_ALU] |52| 
        ANDB      AL,#0x07              ; [CPU_ALU] |52| 
        ADDB      AL,#8                 ; [CPU_ALU] |52| 
        MOV       T,AL                  ; [CPU_ALU] |52| 
        B         $C$L15,UNC            ; [CPU_ALU] |52| 
        ; branch occurs ; [] |52| 
$C$L14:    
        ADDB      AL,#-32               ; [CPU_ALU] |52| 
        ANDB      AL,#0x07              ; [CPU_ALU] |52| 
        MOV       T,AL                  ; [CPU_ALU] |52| 
$C$L15:    
        MOVB      AL,#1                 ; [CPU_ALU] |52| 
        MOVW      DP,#_PieCtrlRegs+4    ; [CPU_ARAU] 
        LSL       AL,T                  ; [CPU_ALU] |52| 
        OR        @$BLOCKED(_PieCtrlRegs)+4,AL ; [CPU_ALU] |52| 
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c2000ISR.c",line 53,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
;  53 | IER |= (0x1U << GET_PIE_GROUP(irqnumber));                             
;----------------------------------------------------------------------
        MOV       AL,*-SP[1]            ; [CPU_ALU] |53| 
        CMPB      AL,#128               ; [CPU_ALU] |53| 
        B         $C$L16,LO             ; [CPU_ALU] |53| 
        ; branchcc occurs ; [] |53| 
        SUB       AL,#128               ; [CPU_ALU] |53| 
        B         $C$L17,UNC            ; [CPU_ALU] |53| 
        ; branch occurs ; [] |53| 
$C$L16:    
        ADDB      AL,#-32               ; [CPU_ALU] |53| 
$C$L17:    
        LSR       AL,3                  ; [CPU_ALU] |53| 
        MOV       T,AL                  ; [CPU_ALU] |53| 
        MOVB      AL,#1                 ; [CPU_ALU] |53| 
        LSL       AL,T                  ; [CPU_ALU] |53| 
        MOV       AH,IER                ; [CPU_FPU] |53| 
        OR        AL,AH                 ; [CPU_ALU] |53| 
        MOV       IER,AL                ; [CPU_ALU] |53| 
        B         $C$L99,UNC            ; [CPU_ALU] 
        ; branch occurs ; [] 
$C$L18:    
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c2000ISR.c",line 55,column 10,is_stmt,isa 0
;----------------------------------------------------------------------
;  55 | else if ((3 == irqnumber)                                              
;  56 | ||  (3 == GET_PIE_GROUP(irqnumber)+1))                                 
;----------------------------------------------------------------------
        MOV       AL,*-SP[1]            ; [CPU_ALU] |55| 
        CMPB      AL,#3                 ; [CPU_ALU] |55| 
        B         $C$L21,EQ             ; [CPU_ALU] |55| 
        ; branchcc occurs ; [] |55| 
        CMPB      AL,#128               ; [CPU_ALU] |55| 
        B         $C$L19,LO             ; [CPU_ALU] |55| 
        ; branchcc occurs ; [] |55| 
        SUB       AL,#128               ; [CPU_ALU] |55| 
        B         $C$L20,UNC            ; [CPU_ALU] |55| 
        ; branch occurs ; [] |55| 
$C$L19:    
        ADDB      AL,#-32               ; [CPU_ALU] |55| 
$C$L20:    
        LSR       AL,3                  ; [CPU_ALU] |55| 
        ADDB      AL,#1                 ; [CPU_ALU] |55| 
        CMPB      AL,#3                 ; [CPU_ALU] |55| 
        B         $C$L26,NEQ            ; [CPU_ALU] |55| 
        ; branchcc occurs ; [] |55| 
$C$L21:    
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c2000ISR.c",line 59,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
;  59 | PieCtrlRegs.PIEIER3.all |= 1 << GET_PIE_OFFSET_IN_GROUP(irqnumber);    
;----------------------------------------------------------------------
        MOV       AL,*-SP[1]            ; [CPU_ALU] |59| 
        CMPB      AL,#128               ; [CPU_ALU] |59| 
        B         $C$L22,LO             ; [CPU_ALU] |59| 
        ; branchcc occurs ; [] |59| 
        SUB       AL,#128               ; [CPU_ALU] |59| 
        ANDB      AL,#0x07              ; [CPU_ALU] |59| 
        ADDB      AL,#8                 ; [CPU_ALU] |59| 
        MOV       T,AL                  ; [CPU_ALU] |59| 
        B         $C$L23,UNC            ; [CPU_ALU] |59| 
        ; branch occurs ; [] |59| 
$C$L22:    
        ADDB      AL,#-32               ; [CPU_ALU] |59| 
        ANDB      AL,#0x07              ; [CPU_ALU] |59| 
        MOV       T,AL                  ; [CPU_ALU] |59| 
$C$L23:    
        MOVB      AL,#1                 ; [CPU_ALU] |59| 
        MOVW      DP,#_PieCtrlRegs+6    ; [CPU_ARAU] 
        LSL       AL,T                  ; [CPU_ALU] |59| 
        OR        @$BLOCKED(_PieCtrlRegs)+6,AL ; [CPU_ALU] |59| 
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c2000ISR.c",line 60,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
;  60 | IER |= (0x1U << GET_PIE_GROUP(irqnumber));                             
;----------------------------------------------------------------------
        MOV       AL,*-SP[1]            ; [CPU_ALU] |60| 
        CMPB      AL,#128               ; [CPU_ALU] |60| 
        B         $C$L24,LO             ; [CPU_ALU] |60| 
        ; branchcc occurs ; [] |60| 
        SUB       AL,#128               ; [CPU_ALU] |60| 
        B         $C$L25,UNC            ; [CPU_ALU] |60| 
        ; branch occurs ; [] |60| 
$C$L24:    
        ADDB      AL,#-32               ; [CPU_ALU] |60| 
$C$L25:    
        LSR       AL,3                  ; [CPU_ALU] |60| 
        MOV       T,AL                  ; [CPU_ALU] |60| 
        MOVB      AL,#1                 ; [CPU_ALU] |60| 
        LSL       AL,T                  ; [CPU_ALU] |60| 
        MOV       AH,IER                ; [CPU_FPU] |60| 
        OR        AL,AH                 ; [CPU_ALU] |60| 
        MOV       IER,AL                ; [CPU_ALU] |60| 
        B         $C$L99,UNC            ; [CPU_ALU] 
        ; branch occurs ; [] 
$C$L26:    
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c2000ISR.c",line 62,column 10,is_stmt,isa 0
;----------------------------------------------------------------------
;  62 | else if ((4 == irqnumber)                                              
;  63 | ||  (4 == GET_PIE_GROUP(irqnumber)+1))                                 
;----------------------------------------------------------------------
        MOV       AL,*-SP[1]            ; [CPU_ALU] |62| 
        CMPB      AL,#4                 ; [CPU_ALU] |62| 
        B         $C$L29,EQ             ; [CPU_ALU] |62| 
        ; branchcc occurs ; [] |62| 
        CMPB      AL,#128               ; [CPU_ALU] |62| 
        B         $C$L27,LO             ; [CPU_ALU] |62| 
        ; branchcc occurs ; [] |62| 
        SUB       AL,#128               ; [CPU_ALU] |62| 
        B         $C$L28,UNC            ; [CPU_ALU] |62| 
        ; branch occurs ; [] |62| 
$C$L27:    
        ADDB      AL,#-32               ; [CPU_ALU] |62| 
$C$L28:    
        LSR       AL,3                  ; [CPU_ALU] |62| 
        ADDB      AL,#1                 ; [CPU_ALU] |62| 
        CMPB      AL,#4                 ; [CPU_ALU] |62| 
        B         $C$L34,NEQ            ; [CPU_ALU] |62| 
        ; branchcc occurs ; [] |62| 
$C$L29:    
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c2000ISR.c",line 66,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
;  66 | PieCtrlRegs.PIEIER4.all |= 1 << GET_PIE_OFFSET_IN_GROUP(irqnumber);    
;----------------------------------------------------------------------
        MOV       AL,*-SP[1]            ; [CPU_ALU] |66| 
        CMPB      AL,#128               ; [CPU_ALU] |66| 
        B         $C$L30,LO             ; [CPU_ALU] |66| 
        ; branchcc occurs ; [] |66| 
        SUB       AL,#128               ; [CPU_ALU] |66| 
        ANDB      AL,#0x07              ; [CPU_ALU] |66| 
        ADDB      AL,#8                 ; [CPU_ALU] |66| 
        MOV       T,AL                  ; [CPU_ALU] |66| 
        B         $C$L31,UNC            ; [CPU_ALU] |66| 
        ; branch occurs ; [] |66| 
$C$L30:    
        ADDB      AL,#-32               ; [CPU_ALU] |66| 
        ANDB      AL,#0x07              ; [CPU_ALU] |66| 
        MOV       T,AL                  ; [CPU_ALU] |66| 
$C$L31:    
        MOVB      AL,#1                 ; [CPU_ALU] |66| 
        MOVW      DP,#_PieCtrlRegs+8    ; [CPU_ARAU] 
        LSL       AL,T                  ; [CPU_ALU] |66| 
        OR        @$BLOCKED(_PieCtrlRegs)+8,AL ; [CPU_ALU] |66| 
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c2000ISR.c",line 67,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
;  67 | IER |= (0x1U << GET_PIE_GROUP(irqnumber));                             
;----------------------------------------------------------------------
        MOV       AL,*-SP[1]            ; [CPU_ALU] |67| 
        CMPB      AL,#128               ; [CPU_ALU] |67| 
        B         $C$L32,LO             ; [CPU_ALU] |67| 
        ; branchcc occurs ; [] |67| 
        SUB       AL,#128               ; [CPU_ALU] |67| 
        B         $C$L33,UNC            ; [CPU_ALU] |67| 
        ; branch occurs ; [] |67| 
$C$L32:    
        ADDB      AL,#-32               ; [CPU_ALU] |67| 
$C$L33:    
        LSR       AL,3                  ; [CPU_ALU] |67| 
        MOV       T,AL                  ; [CPU_ALU] |67| 
        MOVB      AL,#1                 ; [CPU_ALU] |67| 
        LSL       AL,T                  ; [CPU_ALU] |67| 
        MOV       AH,IER                ; [CPU_FPU] |67| 
        OR        AL,AH                 ; [CPU_ALU] |67| 
        MOV       IER,AL                ; [CPU_ALU] |67| 
        B         $C$L99,UNC            ; [CPU_ALU] 
        ; branch occurs ; [] 
$C$L34:    
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c2000ISR.c",line 69,column 10,is_stmt,isa 0
;----------------------------------------------------------------------
;  69 | else if ((5 == irqnumber)                                              
;  70 | ||  (5 == GET_PIE_GROUP(irqnumber)+1))                                 
;----------------------------------------------------------------------
        MOV       AL,*-SP[1]            ; [CPU_ALU] |69| 
        CMPB      AL,#5                 ; [CPU_ALU] |69| 
        B         $C$L37,EQ             ; [CPU_ALU] |69| 
        ; branchcc occurs ; [] |69| 
        CMPB      AL,#128               ; [CPU_ALU] |69| 
        B         $C$L35,LO             ; [CPU_ALU] |69| 
        ; branchcc occurs ; [] |69| 
        SUB       AL,#128               ; [CPU_ALU] |69| 
        B         $C$L36,UNC            ; [CPU_ALU] |69| 
        ; branch occurs ; [] |69| 
$C$L35:    
        ADDB      AL,#-32               ; [CPU_ALU] |69| 
$C$L36:    
        LSR       AL,3                  ; [CPU_ALU] |69| 
        ADDB      AL,#1                 ; [CPU_ALU] |69| 
        CMPB      AL,#5                 ; [CPU_ALU] |69| 
        B         $C$L42,NEQ            ; [CPU_ALU] |69| 
        ; branchcc occurs ; [] |69| 
$C$L37:    
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c2000ISR.c",line 73,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
;  73 | PieCtrlRegs.PIEIER5.all |= 1 << GET_PIE_OFFSET_IN_GROUP(irqnumber);    
;----------------------------------------------------------------------
        MOV       AL,*-SP[1]            ; [CPU_ALU] |73| 
        CMPB      AL,#128               ; [CPU_ALU] |73| 
        B         $C$L38,LO             ; [CPU_ALU] |73| 
        ; branchcc occurs ; [] |73| 
        SUB       AL,#128               ; [CPU_ALU] |73| 
        ANDB      AL,#0x07              ; [CPU_ALU] |73| 
        ADDB      AL,#8                 ; [CPU_ALU] |73| 
        MOV       T,AL                  ; [CPU_ALU] |73| 
        B         $C$L39,UNC            ; [CPU_ALU] |73| 
        ; branch occurs ; [] |73| 
$C$L38:    
        ADDB      AL,#-32               ; [CPU_ALU] |73| 
        ANDB      AL,#0x07              ; [CPU_ALU] |73| 
        MOV       T,AL                  ; [CPU_ALU] |73| 
$C$L39:    
        MOVB      AL,#1                 ; [CPU_ALU] |73| 
        MOVW      DP,#_PieCtrlRegs+10   ; [CPU_ARAU] 
        LSL       AL,T                  ; [CPU_ALU] |73| 
        OR        @$BLOCKED(_PieCtrlRegs)+10,AL ; [CPU_ALU] |73| 
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c2000ISR.c",line 74,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
;  74 | IER |= (0x1U << GET_PIE_GROUP(irqnumber));                             
;----------------------------------------------------------------------
        MOV       AL,*-SP[1]            ; [CPU_ALU] |74| 
        CMPB      AL,#128               ; [CPU_ALU] |74| 
        B         $C$L40,LO             ; [CPU_ALU] |74| 
        ; branchcc occurs ; [] |74| 
        SUB       AL,#128               ; [CPU_ALU] |74| 
        B         $C$L41,UNC            ; [CPU_ALU] |74| 
        ; branch occurs ; [] |74| 
$C$L40:    
        ADDB      AL,#-32               ; [CPU_ALU] |74| 
$C$L41:    
        LSR       AL,3                  ; [CPU_ALU] |74| 
        MOV       T,AL                  ; [CPU_ALU] |74| 
        MOVB      AL,#1                 ; [CPU_ALU] |74| 
        LSL       AL,T                  ; [CPU_ALU] |74| 
        MOV       AH,IER                ; [CPU_FPU] |74| 
        OR        AL,AH                 ; [CPU_ALU] |74| 
        MOV       IER,AL                ; [CPU_ALU] |74| 
        B         $C$L99,UNC            ; [CPU_ALU] 
        ; branch occurs ; [] 
$C$L42:    
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c2000ISR.c",line 76,column 10,is_stmt,isa 0
;----------------------------------------------------------------------
;  76 | else if ((6 == irqnumber)                                              
;  77 | ||  (6 == GET_PIE_GROUP(irqnumber)+1))                                 
;----------------------------------------------------------------------
        MOV       AL,*-SP[1]            ; [CPU_ALU] |76| 
        CMPB      AL,#6                 ; [CPU_ALU] |76| 
        B         $C$L45,EQ             ; [CPU_ALU] |76| 
        ; branchcc occurs ; [] |76| 
        CMPB      AL,#128               ; [CPU_ALU] |76| 
        B         $C$L43,LO             ; [CPU_ALU] |76| 
        ; branchcc occurs ; [] |76| 
        SUB       AL,#128               ; [CPU_ALU] |76| 
        B         $C$L44,UNC            ; [CPU_ALU] |76| 
        ; branch occurs ; [] |76| 
$C$L43:    
        ADDB      AL,#-32               ; [CPU_ALU] |76| 
$C$L44:    
        LSR       AL,3                  ; [CPU_ALU] |76| 
        ADDB      AL,#1                 ; [CPU_ALU] |76| 
        CMPB      AL,#6                 ; [CPU_ALU] |76| 
        B         $C$L50,NEQ            ; [CPU_ALU] |76| 
        ; branchcc occurs ; [] |76| 
$C$L45:    
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c2000ISR.c",line 80,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
;  80 | PieCtrlRegs.PIEIER6.all |= 1 << GET_PIE_OFFSET_IN_GROUP(irqnumber);    
;----------------------------------------------------------------------
        MOV       AL,*-SP[1]            ; [CPU_ALU] |80| 
        CMPB      AL,#128               ; [CPU_ALU] |80| 
        B         $C$L46,LO             ; [CPU_ALU] |80| 
        ; branchcc occurs ; [] |80| 
        SUB       AL,#128               ; [CPU_ALU] |80| 
        ANDB      AL,#0x07              ; [CPU_ALU] |80| 
        ADDB      AL,#8                 ; [CPU_ALU] |80| 
        MOV       T,AL                  ; [CPU_ALU] |80| 
        B         $C$L47,UNC            ; [CPU_ALU] |80| 
        ; branch occurs ; [] |80| 
$C$L46:    
        ADDB      AL,#-32               ; [CPU_ALU] |80| 
        ANDB      AL,#0x07              ; [CPU_ALU] |80| 
        MOV       T,AL                  ; [CPU_ALU] |80| 
$C$L47:    
        MOVB      AL,#1                 ; [CPU_ALU] |80| 
        MOVW      DP,#_PieCtrlRegs+12   ; [CPU_ARAU] 
        LSL       AL,T                  ; [CPU_ALU] |80| 
        OR        @$BLOCKED(_PieCtrlRegs)+12,AL ; [CPU_ALU] |80| 
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c2000ISR.c",line 81,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
;  81 | IER |= (0x1U << GET_PIE_GROUP(irqnumber));                             
;----------------------------------------------------------------------
        MOV       AL,*-SP[1]            ; [CPU_ALU] |81| 
        CMPB      AL,#128               ; [CPU_ALU] |81| 
        B         $C$L48,LO             ; [CPU_ALU] |81| 
        ; branchcc occurs ; [] |81| 
        SUB       AL,#128               ; [CPU_ALU] |81| 
        B         $C$L49,UNC            ; [CPU_ALU] |81| 
        ; branch occurs ; [] |81| 
$C$L48:    
        ADDB      AL,#-32               ; [CPU_ALU] |81| 
$C$L49:    
        LSR       AL,3                  ; [CPU_ALU] |81| 
        MOV       T,AL                  ; [CPU_ALU] |81| 
        MOVB      AL,#1                 ; [CPU_ALU] |81| 
        LSL       AL,T                  ; [CPU_ALU] |81| 
        MOV       AH,IER                ; [CPU_FPU] |81| 
        OR        AL,AH                 ; [CPU_ALU] |81| 
        MOV       IER,AL                ; [CPU_ALU] |81| 
        B         $C$L99,UNC            ; [CPU_ALU] 
        ; branch occurs ; [] 
$C$L50:    
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c2000ISR.c",line 83,column 10,is_stmt,isa 0
;----------------------------------------------------------------------
;  83 | else if ((7 == irqnumber)                                              
;  84 | ||  (7 == GET_PIE_GROUP(irqnumber)+1))                                 
;----------------------------------------------------------------------
        MOV       AL,*-SP[1]            ; [CPU_ALU] |83| 
        CMPB      AL,#7                 ; [CPU_ALU] |83| 
        B         $C$L53,EQ             ; [CPU_ALU] |83| 
        ; branchcc occurs ; [] |83| 
        CMPB      AL,#128               ; [CPU_ALU] |83| 
        B         $C$L51,LO             ; [CPU_ALU] |83| 
        ; branchcc occurs ; [] |83| 
        SUB       AL,#128               ; [CPU_ALU] |83| 
        B         $C$L52,UNC            ; [CPU_ALU] |83| 
        ; branch occurs ; [] |83| 
$C$L51:    
        ADDB      AL,#-32               ; [CPU_ALU] |83| 
$C$L52:    
        LSR       AL,3                  ; [CPU_ALU] |83| 
        ADDB      AL,#1                 ; [CPU_ALU] |83| 
        CMPB      AL,#7                 ; [CPU_ALU] |83| 
        B         $C$L58,NEQ            ; [CPU_ALU] |83| 
        ; branchcc occurs ; [] |83| 
$C$L53:    
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c2000ISR.c",line 87,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
;  87 | PieCtrlRegs.PIEIER7.all |= 1 << GET_PIE_OFFSET_IN_GROUP(irqnumber);    
;----------------------------------------------------------------------
        MOV       AL,*-SP[1]            ; [CPU_ALU] |87| 
        CMPB      AL,#128               ; [CPU_ALU] |87| 
        B         $C$L54,LO             ; [CPU_ALU] |87| 
        ; branchcc occurs ; [] |87| 
        SUB       AL,#128               ; [CPU_ALU] |87| 
        ANDB      AL,#0x07              ; [CPU_ALU] |87| 
        ADDB      AL,#8                 ; [CPU_ALU] |87| 
        MOV       T,AL                  ; [CPU_ALU] |87| 
        B         $C$L55,UNC            ; [CPU_ALU] |87| 
        ; branch occurs ; [] |87| 
$C$L54:    
        ADDB      AL,#-32               ; [CPU_ALU] |87| 
        ANDB      AL,#0x07              ; [CPU_ALU] |87| 
        MOV       T,AL                  ; [CPU_ALU] |87| 
$C$L55:    
        MOVB      AL,#1                 ; [CPU_ALU] |87| 
        MOVW      DP,#_PieCtrlRegs+14   ; [CPU_ARAU] 
        LSL       AL,T                  ; [CPU_ALU] |87| 
        OR        @$BLOCKED(_PieCtrlRegs)+14,AL ; [CPU_ALU] |87| 
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c2000ISR.c",line 88,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
;  88 | IER |= (0x1U << GET_PIE_GROUP(irqnumber));                             
;----------------------------------------------------------------------
        MOV       AL,*-SP[1]            ; [CPU_ALU] |88| 
        CMPB      AL,#128               ; [CPU_ALU] |88| 
        B         $C$L56,LO             ; [CPU_ALU] |88| 
        ; branchcc occurs ; [] |88| 
        SUB       AL,#128               ; [CPU_ALU] |88| 
        B         $C$L57,UNC            ; [CPU_ALU] |88| 
        ; branch occurs ; [] |88| 
$C$L56:    
        ADDB      AL,#-32               ; [CPU_ALU] |88| 
$C$L57:    
        LSR       AL,3                  ; [CPU_ALU] |88| 
        MOV       T,AL                  ; [CPU_ALU] |88| 
        MOVB      AL,#1                 ; [CPU_ALU] |88| 
        LSL       AL,T                  ; [CPU_ALU] |88| 
        MOV       AH,IER                ; [CPU_FPU] |88| 
        OR        AL,AH                 ; [CPU_ALU] |88| 
        MOV       IER,AL                ; [CPU_ALU] |88| 
        B         $C$L99,UNC            ; [CPU_ALU] 
        ; branch occurs ; [] 
$C$L58:    
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c2000ISR.c",line 90,column 10,is_stmt,isa 0
;----------------------------------------------------------------------
;  90 | else if ((8 == irqnumber)                                              
;  91 | ||  (8 == GET_PIE_GROUP(irqnumber)+1))                                 
;----------------------------------------------------------------------
        MOV       AL,*-SP[1]            ; [CPU_ALU] |90| 
        CMPB      AL,#8                 ; [CPU_ALU] |90| 
        B         $C$L61,EQ             ; [CPU_ALU] |90| 
        ; branchcc occurs ; [] |90| 
        CMPB      AL,#128               ; [CPU_ALU] |90| 
        B         $C$L59,LO             ; [CPU_ALU] |90| 
        ; branchcc occurs ; [] |90| 
        SUB       AL,#128               ; [CPU_ALU] |90| 
        B         $C$L60,UNC            ; [CPU_ALU] |90| 
        ; branch occurs ; [] |90| 
$C$L59:    
        ADDB      AL,#-32               ; [CPU_ALU] |90| 
$C$L60:    
        LSR       AL,3                  ; [CPU_ALU] |90| 
        ADDB      AL,#1                 ; [CPU_ALU] |90| 
        CMPB      AL,#8                 ; [CPU_ALU] |90| 
        B         $C$L66,NEQ            ; [CPU_ALU] |90| 
        ; branchcc occurs ; [] |90| 
$C$L61:    
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c2000ISR.c",line 94,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
;  94 | PieCtrlRegs.PIEIER8.all |= 1 << GET_PIE_OFFSET_IN_GROUP(irqnumber);    
;----------------------------------------------------------------------
        MOV       AL,*-SP[1]            ; [CPU_ALU] |94| 
        CMPB      AL,#128               ; [CPU_ALU] |94| 
        B         $C$L62,LO             ; [CPU_ALU] |94| 
        ; branchcc occurs ; [] |94| 
        SUB       AL,#128               ; [CPU_ALU] |94| 
        ANDB      AL,#0x07              ; [CPU_ALU] |94| 
        ADDB      AL,#8                 ; [CPU_ALU] |94| 
        MOV       T,AL                  ; [CPU_ALU] |94| 
        B         $C$L63,UNC            ; [CPU_ALU] |94| 
        ; branch occurs ; [] |94| 
$C$L62:    
        ADDB      AL,#-32               ; [CPU_ALU] |94| 
        ANDB      AL,#0x07              ; [CPU_ALU] |94| 
        MOV       T,AL                  ; [CPU_ALU] |94| 
$C$L63:    
        MOVB      AL,#1                 ; [CPU_ALU] |94| 
        MOVW      DP,#_PieCtrlRegs+16   ; [CPU_ARAU] 
        LSL       AL,T                  ; [CPU_ALU] |94| 
        OR        @$BLOCKED(_PieCtrlRegs)+16,AL ; [CPU_ALU] |94| 
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c2000ISR.c",line 95,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
;  95 | IER |= (0x1U << GET_PIE_GROUP(irqnumber));                             
;----------------------------------------------------------------------
        MOV       AL,*-SP[1]            ; [CPU_ALU] |95| 
        CMPB      AL,#128               ; [CPU_ALU] |95| 
        B         $C$L64,LO             ; [CPU_ALU] |95| 
        ; branchcc occurs ; [] |95| 
        SUB       AL,#128               ; [CPU_ALU] |95| 
        B         $C$L65,UNC            ; [CPU_ALU] |95| 
        ; branch occurs ; [] |95| 
$C$L64:    
        ADDB      AL,#-32               ; [CPU_ALU] |95| 
$C$L65:    
        LSR       AL,3                  ; [CPU_ALU] |95| 
        MOV       T,AL                  ; [CPU_ALU] |95| 
        MOVB      AL,#1                 ; [CPU_ALU] |95| 
        LSL       AL,T                  ; [CPU_ALU] |95| 
        MOV       AH,IER                ; [CPU_FPU] |95| 
        OR        AL,AH                 ; [CPU_ALU] |95| 
        MOV       IER,AL                ; [CPU_ALU] |95| 
        B         $C$L99,UNC            ; [CPU_ALU] 
        ; branch occurs ; [] 
$C$L66:    
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c2000ISR.c",line 97,column 10,is_stmt,isa 0
;----------------------------------------------------------------------
;  97 | else if ((9 == irqnumber)                                              
;  98 | ||  (9 == GET_PIE_GROUP(irqnumber)+1))                                 
;----------------------------------------------------------------------
        MOV       AL,*-SP[1]            ; [CPU_ALU] |97| 
        CMPB      AL,#9                 ; [CPU_ALU] |97| 
        B         $C$L69,EQ             ; [CPU_ALU] |97| 
        ; branchcc occurs ; [] |97| 
        CMPB      AL,#128               ; [CPU_ALU] |97| 
        B         $C$L67,LO             ; [CPU_ALU] |97| 
        ; branchcc occurs ; [] |97| 
        SUB       AL,#128               ; [CPU_ALU] |97| 
        B         $C$L68,UNC            ; [CPU_ALU] |97| 
        ; branch occurs ; [] |97| 
$C$L67:    
        ADDB      AL,#-32               ; [CPU_ALU] |97| 
$C$L68:    
        LSR       AL,3                  ; [CPU_ALU] |97| 
        ADDB      AL,#1                 ; [CPU_ALU] |97| 
        CMPB      AL,#9                 ; [CPU_ALU] |97| 
        B         $C$L74,NEQ            ; [CPU_ALU] |97| 
        ; branchcc occurs ; [] |97| 
$C$L69:    
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c2000ISR.c",line 101,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 101 | PieCtrlRegs.PIEIER9.all |= 1 << GET_PIE_OFFSET_IN_GROUP(irqnumber);    
;----------------------------------------------------------------------
        MOV       AL,*-SP[1]            ; [CPU_ALU] |101| 
        CMPB      AL,#128               ; [CPU_ALU] |101| 
        B         $C$L70,LO             ; [CPU_ALU] |101| 
        ; branchcc occurs ; [] |101| 
        SUB       AL,#128               ; [CPU_ALU] |101| 
        ANDB      AL,#0x07              ; [CPU_ALU] |101| 
        ADDB      AL,#8                 ; [CPU_ALU] |101| 
        MOV       T,AL                  ; [CPU_ALU] |101| 
        B         $C$L71,UNC            ; [CPU_ALU] |101| 
        ; branch occurs ; [] |101| 
$C$L70:    
        ADDB      AL,#-32               ; [CPU_ALU] |101| 
        ANDB      AL,#0x07              ; [CPU_ALU] |101| 
        MOV       T,AL                  ; [CPU_ALU] |101| 
$C$L71:    
        MOVB      AL,#1                 ; [CPU_ALU] |101| 
        MOVW      DP,#_PieCtrlRegs+18   ; [CPU_ARAU] 
        LSL       AL,T                  ; [CPU_ALU] |101| 
        OR        @$BLOCKED(_PieCtrlRegs)+18,AL ; [CPU_ALU] |101| 
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c2000ISR.c",line 102,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 102 | IER |= (0x1U << GET_PIE_GROUP(irqnumber));                             
;----------------------------------------------------------------------
        MOV       AL,*-SP[1]            ; [CPU_ALU] |102| 
        CMPB      AL,#128               ; [CPU_ALU] |102| 
        B         $C$L72,LO             ; [CPU_ALU] |102| 
        ; branchcc occurs ; [] |102| 
        SUB       AL,#128               ; [CPU_ALU] |102| 
        B         $C$L73,UNC            ; [CPU_ALU] |102| 
        ; branch occurs ; [] |102| 
$C$L72:    
        ADDB      AL,#-32               ; [CPU_ALU] |102| 
$C$L73:    
        LSR       AL,3                  ; [CPU_ALU] |102| 
        MOV       T,AL                  ; [CPU_ALU] |102| 
        MOVB      AL,#1                 ; [CPU_ALU] |102| 
        LSL       AL,T                  ; [CPU_ALU] |102| 
        MOV       AH,IER                ; [CPU_FPU] |102| 
        OR        AL,AH                 ; [CPU_ALU] |102| 
        MOV       IER,AL                ; [CPU_ALU] |102| 
        B         $C$L99,UNC            ; [CPU_ALU] 
        ; branch occurs ; [] 
$C$L74:    
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c2000ISR.c",line 104,column 10,is_stmt,isa 0
;----------------------------------------------------------------------
; 104 | else if ((10 == irqnumber)                                             
; 105 | ||  (10 == GET_PIE_GROUP(irqnumber)+1))                                
;----------------------------------------------------------------------
        MOV       AL,*-SP[1]            ; [CPU_ALU] |104| 
        CMPB      AL,#10                ; [CPU_ALU] |104| 
        B         $C$L77,EQ             ; [CPU_ALU] |104| 
        ; branchcc occurs ; [] |104| 
        CMPB      AL,#128               ; [CPU_ALU] |104| 
        B         $C$L75,LO             ; [CPU_ALU] |104| 
        ; branchcc occurs ; [] |104| 
        SUB       AL,#128               ; [CPU_ALU] |104| 
        B         $C$L76,UNC            ; [CPU_ALU] |104| 
        ; branch occurs ; [] |104| 
$C$L75:    
        ADDB      AL,#-32               ; [CPU_ALU] |104| 
$C$L76:    
        LSR       AL,3                  ; [CPU_ALU] |104| 
        ADDB      AL,#1                 ; [CPU_ALU] |104| 
        CMPB      AL,#10                ; [CPU_ALU] |104| 
        B         $C$L82,NEQ            ; [CPU_ALU] |104| 
        ; branchcc occurs ; [] |104| 
$C$L77:    
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c2000ISR.c",line 108,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 108 | PieCtrlRegs.PIEIER10.all |= 1 << GET_PIE_OFFSET_IN_GROUP(irqnumber);   
;----------------------------------------------------------------------
        MOV       AL,*-SP[1]            ; [CPU_ALU] |108| 
        CMPB      AL,#128               ; [CPU_ALU] |108| 
        B         $C$L78,LO             ; [CPU_ALU] |108| 
        ; branchcc occurs ; [] |108| 
        SUB       AL,#128               ; [CPU_ALU] |108| 
        ANDB      AL,#0x07              ; [CPU_ALU] |108| 
        ADDB      AL,#8                 ; [CPU_ALU] |108| 
        MOV       T,AL                  ; [CPU_ALU] |108| 
        B         $C$L79,UNC            ; [CPU_ALU] |108| 
        ; branch occurs ; [] |108| 
$C$L78:    
        ADDB      AL,#-32               ; [CPU_ALU] |108| 
        ANDB      AL,#0x07              ; [CPU_ALU] |108| 
        MOV       T,AL                  ; [CPU_ALU] |108| 
$C$L79:    
        MOVB      AL,#1                 ; [CPU_ALU] |108| 
        MOVW      DP,#_PieCtrlRegs+20   ; [CPU_ARAU] 
        LSL       AL,T                  ; [CPU_ALU] |108| 
        OR        @$BLOCKED(_PieCtrlRegs)+20,AL ; [CPU_ALU] |108| 
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c2000ISR.c",line 109,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 109 | IER |= (0x1U << GET_PIE_GROUP(irqnumber));                             
;----------------------------------------------------------------------
        MOV       AL,*-SP[1]            ; [CPU_ALU] |109| 
        CMPB      AL,#128               ; [CPU_ALU] |109| 
        B         $C$L80,LO             ; [CPU_ALU] |109| 
        ; branchcc occurs ; [] |109| 
        SUB       AL,#128               ; [CPU_ALU] |109| 
        B         $C$L81,UNC            ; [CPU_ALU] |109| 
        ; branch occurs ; [] |109| 
$C$L80:    
        ADDB      AL,#-32               ; [CPU_ALU] |109| 
$C$L81:    
        LSR       AL,3                  ; [CPU_ALU] |109| 
        MOV       T,AL                  ; [CPU_ALU] |109| 
        MOVB      AL,#1                 ; [CPU_ALU] |109| 
        LSL       AL,T                  ; [CPU_ALU] |109| 
        MOV       AH,IER                ; [CPU_FPU] |109| 
        OR        AL,AH                 ; [CPU_ALU] |109| 
        MOV       IER,AL                ; [CPU_ALU] |109| 
        B         $C$L99,UNC            ; [CPU_ALU] 
        ; branch occurs ; [] 
$C$L82:    
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c2000ISR.c",line 111,column 10,is_stmt,isa 0
;----------------------------------------------------------------------
; 111 | else if ((11 == irqnumber)                                             
; 112 | ||  (11 == GET_PIE_GROUP(irqnumber)+1))                                
;----------------------------------------------------------------------
        MOV       AL,*-SP[1]            ; [CPU_ALU] |111| 
        CMPB      AL,#11                ; [CPU_ALU] |111| 
        B         $C$L85,EQ             ; [CPU_ALU] |111| 
        ; branchcc occurs ; [] |111| 
        CMPB      AL,#128               ; [CPU_ALU] |111| 
        B         $C$L83,LO             ; [CPU_ALU] |111| 
        ; branchcc occurs ; [] |111| 
        SUB       AL,#128               ; [CPU_ALU] |111| 
        B         $C$L84,UNC            ; [CPU_ALU] |111| 
        ; branch occurs ; [] |111| 
$C$L83:    
        ADDB      AL,#-32               ; [CPU_ALU] |111| 
$C$L84:    
        LSR       AL,3                  ; [CPU_ALU] |111| 
        ADDB      AL,#1                 ; [CPU_ALU] |111| 
        CMPB      AL,#11                ; [CPU_ALU] |111| 
        B         $C$L90,NEQ            ; [CPU_ALU] |111| 
        ; branchcc occurs ; [] |111| 
$C$L85:    
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c2000ISR.c",line 115,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 115 | PieCtrlRegs.PIEIER11.all |= 1 << GET_PIE_OFFSET_IN_GROUP(irqnumber);   
;----------------------------------------------------------------------
        MOV       AL,*-SP[1]            ; [CPU_ALU] |115| 
        CMPB      AL,#128               ; [CPU_ALU] |115| 
        B         $C$L86,LO             ; [CPU_ALU] |115| 
        ; branchcc occurs ; [] |115| 
        SUB       AL,#128               ; [CPU_ALU] |115| 
        ANDB      AL,#0x07              ; [CPU_ALU] |115| 
        ADDB      AL,#8                 ; [CPU_ALU] |115| 
        MOV       T,AL                  ; [CPU_ALU] |115| 
        B         $C$L87,UNC            ; [CPU_ALU] |115| 
        ; branch occurs ; [] |115| 
$C$L86:    
        ADDB      AL,#-32               ; [CPU_ALU] |115| 
        ANDB      AL,#0x07              ; [CPU_ALU] |115| 
        MOV       T,AL                  ; [CPU_ALU] |115| 
$C$L87:    
        MOVB      AL,#1                 ; [CPU_ALU] |115| 
        MOVW      DP,#_PieCtrlRegs+22   ; [CPU_ARAU] 
        LSL       AL,T                  ; [CPU_ALU] |115| 
        OR        @$BLOCKED(_PieCtrlRegs)+22,AL ; [CPU_ALU] |115| 
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c2000ISR.c",line 116,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 116 | IER |= (0x1U << GET_PIE_GROUP(irqnumber));                             
;----------------------------------------------------------------------
        MOV       AL,*-SP[1]            ; [CPU_ALU] |116| 
        CMPB      AL,#128               ; [CPU_ALU] |116| 
        B         $C$L88,LO             ; [CPU_ALU] |116| 
        ; branchcc occurs ; [] |116| 
        SUB       AL,#128               ; [CPU_ALU] |116| 
        B         $C$L89,UNC            ; [CPU_ALU] |116| 
        ; branch occurs ; [] |116| 
$C$L88:    
        ADDB      AL,#-32               ; [CPU_ALU] |116| 
$C$L89:    
        LSR       AL,3                  ; [CPU_ALU] |116| 
        MOV       T,AL                  ; [CPU_ALU] |116| 
        MOVB      AL,#1                 ; [CPU_ALU] |116| 
        LSL       AL,T                  ; [CPU_ALU] |116| 
        MOV       AH,IER                ; [CPU_FPU] |116| 
        OR        AL,AH                 ; [CPU_ALU] |116| 
        MOV       IER,AL                ; [CPU_ALU] |116| 
        B         $C$L99,UNC            ; [CPU_ALU] 
        ; branch occurs ; [] 
$C$L90:    
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c2000ISR.c",line 118,column 10,is_stmt,isa 0
;----------------------------------------------------------------------
; 118 | else if ((12 == irqnumber)                                             
; 119 | ||  (12 == GET_PIE_GROUP(irqnumber)+1))                                
;----------------------------------------------------------------------
        MOV       AL,*-SP[1]            ; [CPU_ALU] |118| 
        CMPB      AL,#12                ; [CPU_ALU] |118| 
        B         $C$L93,EQ             ; [CPU_ALU] |118| 
        ; branchcc occurs ; [] |118| 
        CMPB      AL,#128               ; [CPU_ALU] |118| 
        B         $C$L91,LO             ; [CPU_ALU] |118| 
        ; branchcc occurs ; [] |118| 
        SUB       AL,#128               ; [CPU_ALU] |118| 
        B         $C$L92,UNC            ; [CPU_ALU] |118| 
        ; branch occurs ; [] |118| 
$C$L91:    
        ADDB      AL,#-32               ; [CPU_ALU] |118| 
$C$L92:    
        LSR       AL,3                  ; [CPU_ALU] |118| 
        ADDB      AL,#1                 ; [CPU_ALU] |118| 
        CMPB      AL,#12                ; [CPU_ALU] |118| 
        B         $C$L98,NEQ            ; [CPU_ALU] |118| 
        ; branchcc occurs ; [] |118| 
$C$L93:    
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c2000ISR.c",line 122,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 122 | PieCtrlRegs.PIEIER12.all |= 1 << GET_PIE_OFFSET_IN_GROUP(irqnumber);   
;----------------------------------------------------------------------
        MOV       AL,*-SP[1]            ; [CPU_ALU] |122| 
        CMPB      AL,#128               ; [CPU_ALU] |122| 
        B         $C$L94,LO             ; [CPU_ALU] |122| 
        ; branchcc occurs ; [] |122| 
        SUB       AL,#128               ; [CPU_ALU] |122| 
        ANDB      AL,#0x07              ; [CPU_ALU] |122| 
        ADDB      AL,#8                 ; [CPU_ALU] |122| 
        MOV       T,AL                  ; [CPU_ALU] |122| 
        B         $C$L95,UNC            ; [CPU_ALU] |122| 
        ; branch occurs ; [] |122| 
$C$L94:    
        ADDB      AL,#-32               ; [CPU_ALU] |122| 
        ANDB      AL,#0x07              ; [CPU_ALU] |122| 
        MOV       T,AL                  ; [CPU_ALU] |122| 
$C$L95:    
        MOVB      AL,#1                 ; [CPU_ALU] |122| 
        MOVW      DP,#_PieCtrlRegs+24   ; [CPU_ARAU] 
        LSL       AL,T                  ; [CPU_ALU] |122| 
        OR        @$BLOCKED(_PieCtrlRegs)+24,AL ; [CPU_ALU] |122| 
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c2000ISR.c",line 123,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 123 | IER |= (0x1U << GET_PIE_GROUP(irqnumber));                             
;----------------------------------------------------------------------
        MOV       AL,*-SP[1]            ; [CPU_ALU] |123| 
        CMPB      AL,#128               ; [CPU_ALU] |123| 
        B         $C$L96,LO             ; [CPU_ALU] |123| 
        ; branchcc occurs ; [] |123| 
        SUB       AL,#128               ; [CPU_ALU] |123| 
        B         $C$L97,UNC            ; [CPU_ALU] |123| 
        ; branch occurs ; [] |123| 
$C$L96:    
        ADDB      AL,#-32               ; [CPU_ALU] |123| 
$C$L97:    
        LSR       AL,3                  ; [CPU_ALU] |123| 
        MOV       T,AL                  ; [CPU_ALU] |123| 
        MOVB      AL,#1                 ; [CPU_ALU] |123| 
        LSL       AL,T                  ; [CPU_ALU] |123| 
        MOV       AH,IER                ; [CPU_FPU] |123| 
        OR        AL,AH                 ; [CPU_ALU] |123| 
        MOV       IER,AL                ; [CPU_ALU] |123| 
        B         $C$L99,UNC            ; [CPU_ALU] 
        ; branch occurs ; [] 
$C$L98:    
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c2000ISR.c",line 126,column 10,is_stmt,isa 0
;----------------------------------------------------------------------
; 126 | else if (13 == irqnumber)                                              
;----------------------------------------------------------------------
        MOV       AL,*-SP[1]            ; [CPU_ALU] |126| 
        CMPB      AL,#13                ; [CPU_ALU] |126| 
        B         $C$L99,EQ             ; [CPU_ALU] |126| 
        ; branchcc occurs ; [] |126| 
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c2000ISR.c",line 130,column 10,is_stmt,isa 0
;----------------------------------------------------------------------
; 130 | else if (14 == irqnumber)                                              
;----------------------------------------------------------------------
        CMPB      AL,#14                ; [CPU_ALU] |130| 
        B         $C$L99,EQ             ; [CPU_ALU] |130| 
        ; branchcc occurs ; [] |130| 
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c2000ISR.c",line 134,column 10,is_stmt,isa 0
;----------------------------------------------------------------------
; 134 | else if (15 == irqnumber)                                              
;----------------------------------------------------------------------
        CMPB      AL,#15                ; [CPU_ALU] |134| 
        B         $C$L99,EQ             ; [CPU_ALU] |134| 
        ; branchcc occurs ; [] |134| 
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c2000ISR.c",line 138,column 10,is_stmt,isa 0
;----------------------------------------------------------------------
; 138 | else if (16 == irqnumber)                                              
;----------------------------------------------------------------------
        CMPB      AL,#16                ; [CPU_ALU] |138| 
        B         $C$L99,EQ             ; [CPU_ALU] |138| 
        ; branchcc occurs ; [] |138| 
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c2000ISR.c",line 142,column 10,is_stmt,isa 0
;----------------------------------------------------------------------
; 142 | else if (17 == irqnumber)                                              
;----------------------------------------------------------------------
        CMPB      AL,#17                ; [CPU_ALU] |142| 
        B         $C$L99,EQ             ; [CPU_ALU] |142| 
        ; branchcc occurs ; [] |142| 
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c2000ISR.c",line 146,column 10,is_stmt,isa 0
;----------------------------------------------------------------------
; 146 | else if (18 == irqnumber)                                              
;----------------------------------------------------------------------
        CMPB      AL,#18                ; [CPU_ALU] |146| 
        B         $C$L99,EQ             ; [CPU_ALU] |146| 
        ; branchcc occurs ; [] |146| 
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c2000ISR.c",line 150,column 10,is_stmt,isa 0
;----------------------------------------------------------------------
; 150 | else if ((irqnumber >= 19) && (irqnumber <= 31))                       
; 153 | else                                                                   
;----------------------------------------------------------------------
        CMPB      AL,#19                ; [CPU_ALU] |150| 
        B         $C$L99,LO             ; [CPU_ALU] |150| 
        ; branchcc occurs ; [] |150| 
        CMPB      AL,#31                ; [CPU_ALU] |150| 
        B         $C$L99,HI             ; [CPU_ALU] |150| 
        ; branchcc occurs ; [] |150| 
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c2000ISR.c",line 157,column 1,is_stmt,isa 0
$C$L99:    
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$15	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$15, DW_AT_low_pc(0x00)
	.dwattr $C$DW$15, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$12, DW_AT_TI_end_file("D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c2000ISR.c")
	.dwattr $C$DW$12, DW_AT_TI_end_line(0x9d)
	.dwattr $C$DW$12, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$12

	.sect	".text"
	.clink
	.global	_HWI_TIC28x_DisableIRQ

$C$DW$16	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$16, DW_AT_name("HWI_TIC28x_DisableIRQ")
	.dwattr $C$DW$16, DW_AT_low_pc(_HWI_TIC28x_DisableIRQ)
	.dwattr $C$DW$16, DW_AT_high_pc(0x00)
	.dwattr $C$DW$16, DW_AT_TI_symbol_name("_HWI_TIC28x_DisableIRQ")
	.dwattr $C$DW$16, DW_AT_external
	.dwattr $C$DW$16, DW_AT_TI_begin_file("D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c2000ISR.c")
	.dwattr $C$DW$16, DW_AT_TI_begin_line(0x9f)
	.dwattr $C$DW$16, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$16, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c2000ISR.c",line 160,column 1,is_stmt,address _HWI_TIC28x_DisableIRQ,isa 0

	.dwfde $C$DW$CIE, _HWI_TIC28x_DisableIRQ
$C$DW$17	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$17, DW_AT_name("irqnumber")
	.dwattr $C$DW$17, DW_AT_TI_symbol_name("_irqnumber")
	.dwattr $C$DW$17, DW_AT_type(*$C$DW$T$106)
	.dwattr $C$DW$17, DW_AT_location[DW_OP_reg0]

;----------------------------------------------------------------------
; 159 | void HWI_TIC28x_DisableIRQ(uint16_T irqnumber)                         
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _HWI_TIC28x_DisableIRQ        FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  1 Auto,  0 SOE     *
;***************************************************************

_HWI_TIC28x_DisableIRQ:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
$C$DW$18	.dwtag  DW_TAG_variable
	.dwattr $C$DW$18, DW_AT_name("irqnumber")
	.dwattr $C$DW$18, DW_AT_TI_symbol_name("_irqnumber")
	.dwattr $C$DW$18, DW_AT_type(*$C$DW$T$106)
	.dwattr $C$DW$18, DW_AT_location[DW_OP_breg20 -1]

        MOV       *-SP[1],AL            ; [CPU_ALU] |160| 
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c2000ISR.c",line 162,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 162 | if ((1 == irqnumber)                                                   
; 163 | ||  (1 == GET_PIE_GROUP(irqnumber)+1))                                 
;----------------------------------------------------------------------
        CMPB      AL,#1                 ; [CPU_ALU] |162| 
        B         $C$L102,EQ            ; [CPU_ALU] |162| 
        ; branchcc occurs ; [] |162| 
        CMPB      AL,#128               ; [CPU_ALU] |162| 
        B         $C$L100,LO            ; [CPU_ALU] |162| 
        ; branchcc occurs ; [] |162| 
        SUB       AL,#128               ; [CPU_ALU] |162| 
        B         $C$L101,UNC           ; [CPU_ALU] |162| 
        ; branch occurs ; [] |162| 
$C$L100:    
        ADDB      AL,#-32               ; [CPU_ALU] |162| 
$C$L101:    
        LSR       AL,3                  ; [CPU_ALU] |162| 
        ADDB      AL,#1                 ; [CPU_ALU] |162| 
        CMPB      AL,#1                 ; [CPU_ALU] |162| 
        B         $C$L107,NEQ           ; [CPU_ALU] |162| 
        ; branchcc occurs ; [] |162| 
$C$L102:    
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c2000ISR.c",line 166,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 166 | PieCtrlRegs.PIEIER1.all &= ~(1U << GET_PIE_OFFSET_IN_GROUP(irqnumber));
;----------------------------------------------------------------------
        MOV       AL,*-SP[1]            ; [CPU_ALU] |166| 
        CMPB      AL,#128               ; [CPU_ALU] |166| 
        B         $C$L103,LO            ; [CPU_ALU] |166| 
        ; branchcc occurs ; [] |166| 
        SUB       AL,#128               ; [CPU_ALU] |166| 
        ANDB      AL,#0x07              ; [CPU_ALU] |166| 
        ADDB      AL,#8                 ; [CPU_ALU] |166| 
        MOV       T,AL                  ; [CPU_ALU] |166| 
        B         $C$L104,UNC           ; [CPU_ALU] |166| 
        ; branch occurs ; [] |166| 
$C$L103:    
        ADDB      AL,#-32               ; [CPU_ALU] |166| 
        ANDB      AL,#0x07              ; [CPU_ALU] |166| 
        MOV       T,AL                  ; [CPU_ALU] |166| 
$C$L104:    
        MOVB      AL,#1                 ; [CPU_ALU] |166| 
        MOVW      DP,#_PieCtrlRegs+2    ; [CPU_ARAU] 
        LSL       AL,T                  ; [CPU_ALU] |166| 
        NOT       AL                    ; [CPU_ALU] |166| 
        AND       @$BLOCKED(_PieCtrlRegs)+2,AL ; [CPU_ALU] |166| 
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c2000ISR.c",line 167,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 167 | IER &= ~(0x1U << GET_PIE_GROUP(irqnumber));                            
;----------------------------------------------------------------------
        MOV       AL,*-SP[1]            ; [CPU_ALU] |167| 
        CMPB      AL,#128               ; [CPU_ALU] |167| 
        B         $C$L105,LO            ; [CPU_ALU] |167| 
        ; branchcc occurs ; [] |167| 
        SUB       AL,#128               ; [CPU_ALU] |167| 
        B         $C$L106,UNC           ; [CPU_ALU] |167| 
        ; branch occurs ; [] |167| 
$C$L105:    
        ADDB      AL,#-32               ; [CPU_ALU] |167| 
$C$L106:    
        LSR       AL,3                  ; [CPU_ALU] |167| 
        MOV       T,AL                  ; [CPU_ALU] |167| 
        MOVB      AL,#1                 ; [CPU_ALU] |167| 
        LSL       AL,T                  ; [CPU_ALU] |167| 
        NOT       AL                    ; [CPU_ALU] |167| 
        MOV       AH,IER                ; [CPU_FPU] |167| 
        AND       AL,AH                 ; [CPU_ALU] |167| 
        MOV       IER,AL                ; [CPU_ALU] |167| 
        B         $C$L196,UNC           ; [CPU_ALU] 
        ; branch occurs ; [] 
$C$L107:    
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c2000ISR.c",line 169,column 10,is_stmt,isa 0
;----------------------------------------------------------------------
; 169 | else if ((2 == irqnumber)                                              
; 170 | || (2 == GET_PIE_GROUP(irqnumber)+1))                                  
;----------------------------------------------------------------------
        MOV       AL,*-SP[1]            ; [CPU_ALU] |169| 
        CMPB      AL,#2                 ; [CPU_ALU] |169| 
        B         $C$L110,EQ            ; [CPU_ALU] |169| 
        ; branchcc occurs ; [] |169| 
        CMPB      AL,#128               ; [CPU_ALU] |169| 
        B         $C$L108,LO            ; [CPU_ALU] |169| 
        ; branchcc occurs ; [] |169| 
        SUB       AL,#128               ; [CPU_ALU] |169| 
        B         $C$L109,UNC           ; [CPU_ALU] |169| 
        ; branch occurs ; [] |169| 
$C$L108:    
        ADDB      AL,#-32               ; [CPU_ALU] |169| 
$C$L109:    
        LSR       AL,3                  ; [CPU_ALU] |169| 
        ADDB      AL,#1                 ; [CPU_ALU] |169| 
        CMPB      AL,#2                 ; [CPU_ALU] |169| 
        B         $C$L115,NEQ           ; [CPU_ALU] |169| 
        ; branchcc occurs ; [] |169| 
$C$L110:    
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c2000ISR.c",line 173,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 173 | PieCtrlRegs.PIEIER2.all &= ~(1U << GET_PIE_OFFSET_IN_GROUP(irqnumber));
;----------------------------------------------------------------------
        MOV       AL,*-SP[1]            ; [CPU_ALU] |173| 
        CMPB      AL,#128               ; [CPU_ALU] |173| 
        B         $C$L111,LO            ; [CPU_ALU] |173| 
        ; branchcc occurs ; [] |173| 
        SUB       AL,#128               ; [CPU_ALU] |173| 
        ANDB      AL,#0x07              ; [CPU_ALU] |173| 
        ADDB      AL,#8                 ; [CPU_ALU] |173| 
        MOV       T,AL                  ; [CPU_ALU] |173| 
        B         $C$L112,UNC           ; [CPU_ALU] |173| 
        ; branch occurs ; [] |173| 
$C$L111:    
        ADDB      AL,#-32               ; [CPU_ALU] |173| 
        ANDB      AL,#0x07              ; [CPU_ALU] |173| 
        MOV       T,AL                  ; [CPU_ALU] |173| 
$C$L112:    
        MOVB      AL,#1                 ; [CPU_ALU] |173| 
        MOVW      DP,#_PieCtrlRegs+4    ; [CPU_ARAU] 
        LSL       AL,T                  ; [CPU_ALU] |173| 
        NOT       AL                    ; [CPU_ALU] |173| 
        AND       @$BLOCKED(_PieCtrlRegs)+4,AL ; [CPU_ALU] |173| 
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c2000ISR.c",line 174,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 174 | IER &= ~(0x1U << GET_PIE_GROUP(irqnumber));                            
;----------------------------------------------------------------------
        MOV       AL,*-SP[1]            ; [CPU_ALU] |174| 
        CMPB      AL,#128               ; [CPU_ALU] |174| 
        B         $C$L113,LO            ; [CPU_ALU] |174| 
        ; branchcc occurs ; [] |174| 
        SUB       AL,#128               ; [CPU_ALU] |174| 
        B         $C$L114,UNC           ; [CPU_ALU] |174| 
        ; branch occurs ; [] |174| 
$C$L113:    
        ADDB      AL,#-32               ; [CPU_ALU] |174| 
$C$L114:    
        LSR       AL,3                  ; [CPU_ALU] |174| 
        MOV       T,AL                  ; [CPU_ALU] |174| 
        MOVB      AL,#1                 ; [CPU_ALU] |174| 
        LSL       AL,T                  ; [CPU_ALU] |174| 
        NOT       AL                    ; [CPU_ALU] |174| 
        MOV       AH,IER                ; [CPU_FPU] |174| 
        AND       AL,AH                 ; [CPU_ALU] |174| 
        MOV       IER,AL                ; [CPU_ALU] |174| 
        B         $C$L196,UNC           ; [CPU_ALU] 
        ; branch occurs ; [] 
$C$L115:    
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c2000ISR.c",line 176,column 10,is_stmt,isa 0
;----------------------------------------------------------------------
; 176 | else if ((3 == irqnumber)                                              
; 177 | ||  (3 == GET_PIE_GROUP(irqnumber)+1))                                 
;----------------------------------------------------------------------
        MOV       AL,*-SP[1]            ; [CPU_ALU] |176| 
        CMPB      AL,#3                 ; [CPU_ALU] |176| 
        B         $C$L118,EQ            ; [CPU_ALU] |176| 
        ; branchcc occurs ; [] |176| 
        CMPB      AL,#128               ; [CPU_ALU] |176| 
        B         $C$L116,LO            ; [CPU_ALU] |176| 
        ; branchcc occurs ; [] |176| 
        SUB       AL,#128               ; [CPU_ALU] |176| 
        B         $C$L117,UNC           ; [CPU_ALU] |176| 
        ; branch occurs ; [] |176| 
$C$L116:    
        ADDB      AL,#-32               ; [CPU_ALU] |176| 
$C$L117:    
        LSR       AL,3                  ; [CPU_ALU] |176| 
        ADDB      AL,#1                 ; [CPU_ALU] |176| 
        CMPB      AL,#3                 ; [CPU_ALU] |176| 
        B         $C$L123,NEQ           ; [CPU_ALU] |176| 
        ; branchcc occurs ; [] |176| 
$C$L118:    
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c2000ISR.c",line 180,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 180 | PieCtrlRegs.PIEIER3.all &= ~(1U << GET_PIE_OFFSET_IN_GROUP(irqnumber));
;----------------------------------------------------------------------
        MOV       AL,*-SP[1]            ; [CPU_ALU] |180| 
        CMPB      AL,#128               ; [CPU_ALU] |180| 
        B         $C$L119,LO            ; [CPU_ALU] |180| 
        ; branchcc occurs ; [] |180| 
        SUB       AL,#128               ; [CPU_ALU] |180| 
        ANDB      AL,#0x07              ; [CPU_ALU] |180| 
        ADDB      AL,#8                 ; [CPU_ALU] |180| 
        MOV       T,AL                  ; [CPU_ALU] |180| 
        B         $C$L120,UNC           ; [CPU_ALU] |180| 
        ; branch occurs ; [] |180| 
$C$L119:    
        ADDB      AL,#-32               ; [CPU_ALU] |180| 
        ANDB      AL,#0x07              ; [CPU_ALU] |180| 
        MOV       T,AL                  ; [CPU_ALU] |180| 
$C$L120:    
        MOVB      AL,#1                 ; [CPU_ALU] |180| 
        MOVW      DP,#_PieCtrlRegs+6    ; [CPU_ARAU] 
        LSL       AL,T                  ; [CPU_ALU] |180| 
        NOT       AL                    ; [CPU_ALU] |180| 
        AND       @$BLOCKED(_PieCtrlRegs)+6,AL ; [CPU_ALU] |180| 
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c2000ISR.c",line 181,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 181 | IER &= ~(0x1U << GET_PIE_GROUP(irqnumber));                            
;----------------------------------------------------------------------
        MOV       AL,*-SP[1]            ; [CPU_ALU] |181| 
        CMPB      AL,#128               ; [CPU_ALU] |181| 
        B         $C$L121,LO            ; [CPU_ALU] |181| 
        ; branchcc occurs ; [] |181| 
        SUB       AL,#128               ; [CPU_ALU] |181| 
        B         $C$L122,UNC           ; [CPU_ALU] |181| 
        ; branch occurs ; [] |181| 
$C$L121:    
        ADDB      AL,#-32               ; [CPU_ALU] |181| 
$C$L122:    
        LSR       AL,3                  ; [CPU_ALU] |181| 
        MOV       T,AL                  ; [CPU_ALU] |181| 
        MOVB      AL,#1                 ; [CPU_ALU] |181| 
        LSL       AL,T                  ; [CPU_ALU] |181| 
        NOT       AL                    ; [CPU_ALU] |181| 
        MOV       AH,IER                ; [CPU_FPU] |181| 
        AND       AL,AH                 ; [CPU_ALU] |181| 
        MOV       IER,AL                ; [CPU_ALU] |181| 
        B         $C$L196,UNC           ; [CPU_ALU] 
        ; branch occurs ; [] 
$C$L123:    
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c2000ISR.c",line 183,column 10,is_stmt,isa 0
;----------------------------------------------------------------------
; 183 | else if ((4 == irqnumber)                                              
; 184 | ||  (4 == GET_PIE_GROUP(irqnumber)+1))                                 
;----------------------------------------------------------------------
        MOV       AL,*-SP[1]            ; [CPU_ALU] |183| 
        CMPB      AL,#4                 ; [CPU_ALU] |183| 
        B         $C$L126,EQ            ; [CPU_ALU] |183| 
        ; branchcc occurs ; [] |183| 
        CMPB      AL,#128               ; [CPU_ALU] |183| 
        B         $C$L124,LO            ; [CPU_ALU] |183| 
        ; branchcc occurs ; [] |183| 
        SUB       AL,#128               ; [CPU_ALU] |183| 
        B         $C$L125,UNC           ; [CPU_ALU] |183| 
        ; branch occurs ; [] |183| 
$C$L124:    
        ADDB      AL,#-32               ; [CPU_ALU] |183| 
$C$L125:    
        LSR       AL,3                  ; [CPU_ALU] |183| 
        ADDB      AL,#1                 ; [CPU_ALU] |183| 
        CMPB      AL,#4                 ; [CPU_ALU] |183| 
        B         $C$L131,NEQ           ; [CPU_ALU] |183| 
        ; branchcc occurs ; [] |183| 
$C$L126:    
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c2000ISR.c",line 187,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 187 | PieCtrlRegs.PIEIER4.all &= ~(1U << GET_PIE_OFFSET_IN_GROUP(irqnumber));
;----------------------------------------------------------------------
        MOV       AL,*-SP[1]            ; [CPU_ALU] |187| 
        CMPB      AL,#128               ; [CPU_ALU] |187| 
        B         $C$L127,LO            ; [CPU_ALU] |187| 
        ; branchcc occurs ; [] |187| 
        SUB       AL,#128               ; [CPU_ALU] |187| 
        ANDB      AL,#0x07              ; [CPU_ALU] |187| 
        ADDB      AL,#8                 ; [CPU_ALU] |187| 
        MOV       T,AL                  ; [CPU_ALU] |187| 
        B         $C$L128,UNC           ; [CPU_ALU] |187| 
        ; branch occurs ; [] |187| 
$C$L127:    
        ADDB      AL,#-32               ; [CPU_ALU] |187| 
        ANDB      AL,#0x07              ; [CPU_ALU] |187| 
        MOV       T,AL                  ; [CPU_ALU] |187| 
$C$L128:    
        MOVB      AL,#1                 ; [CPU_ALU] |187| 
        MOVW      DP,#_PieCtrlRegs+8    ; [CPU_ARAU] 
        LSL       AL,T                  ; [CPU_ALU] |187| 
        NOT       AL                    ; [CPU_ALU] |187| 
        AND       @$BLOCKED(_PieCtrlRegs)+8,AL ; [CPU_ALU] |187| 
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c2000ISR.c",line 188,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 188 | IER &= ~(0x1U << GET_PIE_GROUP(irqnumber));                            
;----------------------------------------------------------------------
        MOV       AL,*-SP[1]            ; [CPU_ALU] |188| 
        CMPB      AL,#128               ; [CPU_ALU] |188| 
        B         $C$L129,LO            ; [CPU_ALU] |188| 
        ; branchcc occurs ; [] |188| 
        SUB       AL,#128               ; [CPU_ALU] |188| 
        B         $C$L130,UNC           ; [CPU_ALU] |188| 
        ; branch occurs ; [] |188| 
$C$L129:    
        ADDB      AL,#-32               ; [CPU_ALU] |188| 
$C$L130:    
        LSR       AL,3                  ; [CPU_ALU] |188| 
        MOV       T,AL                  ; [CPU_ALU] |188| 
        MOVB      AL,#1                 ; [CPU_ALU] |188| 
        LSL       AL,T                  ; [CPU_ALU] |188| 
        NOT       AL                    ; [CPU_ALU] |188| 
        MOV       AH,IER                ; [CPU_FPU] |188| 
        AND       AL,AH                 ; [CPU_ALU] |188| 
        MOV       IER,AL                ; [CPU_ALU] |188| 
        B         $C$L196,UNC           ; [CPU_ALU] 
        ; branch occurs ; [] 
$C$L131:    
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c2000ISR.c",line 190,column 10,is_stmt,isa 0
;----------------------------------------------------------------------
; 190 | else if ((5 == irqnumber)                                              
; 191 | ||  (5 == GET_PIE_GROUP(irqnumber)+1))                                 
;----------------------------------------------------------------------
        MOV       AL,*-SP[1]            ; [CPU_ALU] |190| 
        CMPB      AL,#5                 ; [CPU_ALU] |190| 
        B         $C$L134,EQ            ; [CPU_ALU] |190| 
        ; branchcc occurs ; [] |190| 
        CMPB      AL,#128               ; [CPU_ALU] |190| 
        B         $C$L132,LO            ; [CPU_ALU] |190| 
        ; branchcc occurs ; [] |190| 
        SUB       AL,#128               ; [CPU_ALU] |190| 
        B         $C$L133,UNC           ; [CPU_ALU] |190| 
        ; branch occurs ; [] |190| 
$C$L132:    
        ADDB      AL,#-32               ; [CPU_ALU] |190| 
$C$L133:    
        LSR       AL,3                  ; [CPU_ALU] |190| 
        ADDB      AL,#1                 ; [CPU_ALU] |190| 
        CMPB      AL,#5                 ; [CPU_ALU] |190| 
        B         $C$L139,NEQ           ; [CPU_ALU] |190| 
        ; branchcc occurs ; [] |190| 
$C$L134:    
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c2000ISR.c",line 194,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 194 | PieCtrlRegs.PIEIER5.all &= ~(1U << GET_PIE_OFFSET_IN_GROUP(irqnumber));
;----------------------------------------------------------------------
        MOV       AL,*-SP[1]            ; [CPU_ALU] |194| 
        CMPB      AL,#128               ; [CPU_ALU] |194| 
        B         $C$L135,LO            ; [CPU_ALU] |194| 
        ; branchcc occurs ; [] |194| 
        SUB       AL,#128               ; [CPU_ALU] |194| 
        ANDB      AL,#0x07              ; [CPU_ALU] |194| 
        ADDB      AL,#8                 ; [CPU_ALU] |194| 
        MOV       T,AL                  ; [CPU_ALU] |194| 
        B         $C$L136,UNC           ; [CPU_ALU] |194| 
        ; branch occurs ; [] |194| 
$C$L135:    
        ADDB      AL,#-32               ; [CPU_ALU] |194| 
        ANDB      AL,#0x07              ; [CPU_ALU] |194| 
        MOV       T,AL                  ; [CPU_ALU] |194| 
$C$L136:    
        MOVB      AL,#1                 ; [CPU_ALU] |194| 
        MOVW      DP,#_PieCtrlRegs+10   ; [CPU_ARAU] 
        LSL       AL,T                  ; [CPU_ALU] |194| 
        NOT       AL                    ; [CPU_ALU] |194| 
        AND       @$BLOCKED(_PieCtrlRegs)+10,AL ; [CPU_ALU] |194| 
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c2000ISR.c",line 195,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 195 | IER &= ~(0x1U << GET_PIE_GROUP(irqnumber));                            
;----------------------------------------------------------------------
        MOV       AL,*-SP[1]            ; [CPU_ALU] |195| 
        CMPB      AL,#128               ; [CPU_ALU] |195| 
        B         $C$L137,LO            ; [CPU_ALU] |195| 
        ; branchcc occurs ; [] |195| 
        SUB       AL,#128               ; [CPU_ALU] |195| 
        B         $C$L138,UNC           ; [CPU_ALU] |195| 
        ; branch occurs ; [] |195| 
$C$L137:    
        ADDB      AL,#-32               ; [CPU_ALU] |195| 
$C$L138:    
        LSR       AL,3                  ; [CPU_ALU] |195| 
        MOV       T,AL                  ; [CPU_ALU] |195| 
        MOVB      AL,#1                 ; [CPU_ALU] |195| 
        LSL       AL,T                  ; [CPU_ALU] |195| 
        NOT       AL                    ; [CPU_ALU] |195| 
        MOV       AH,IER                ; [CPU_FPU] |195| 
        AND       AL,AH                 ; [CPU_ALU] |195| 
        MOV       IER,AL                ; [CPU_ALU] |195| 
        B         $C$L196,UNC           ; [CPU_ALU] 
        ; branch occurs ; [] 
$C$L139:    
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c2000ISR.c",line 197,column 10,is_stmt,isa 0
;----------------------------------------------------------------------
; 197 | else if ((6 == irqnumber)                                              
; 198 | ||  (6 == GET_PIE_GROUP(irqnumber)+1))                                 
;----------------------------------------------------------------------
        MOV       AL,*-SP[1]            ; [CPU_ALU] |197| 
        CMPB      AL,#6                 ; [CPU_ALU] |197| 
        B         $C$L142,EQ            ; [CPU_ALU] |197| 
        ; branchcc occurs ; [] |197| 
        CMPB      AL,#128               ; [CPU_ALU] |197| 
        B         $C$L140,LO            ; [CPU_ALU] |197| 
        ; branchcc occurs ; [] |197| 
        SUB       AL,#128               ; [CPU_ALU] |197| 
        B         $C$L141,UNC           ; [CPU_ALU] |197| 
        ; branch occurs ; [] |197| 
$C$L140:    
        ADDB      AL,#-32               ; [CPU_ALU] |197| 
$C$L141:    
        LSR       AL,3                  ; [CPU_ALU] |197| 
        ADDB      AL,#1                 ; [CPU_ALU] |197| 
        CMPB      AL,#6                 ; [CPU_ALU] |197| 
        B         $C$L147,NEQ           ; [CPU_ALU] |197| 
        ; branchcc occurs ; [] |197| 
$C$L142:    
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c2000ISR.c",line 201,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 201 | PieCtrlRegs.PIEIER6.all &= ~(1U << GET_PIE_OFFSET_IN_GROUP(irqnumber));
;----------------------------------------------------------------------
        MOV       AL,*-SP[1]            ; [CPU_ALU] |201| 
        CMPB      AL,#128               ; [CPU_ALU] |201| 
        B         $C$L143,LO            ; [CPU_ALU] |201| 
        ; branchcc occurs ; [] |201| 
        SUB       AL,#128               ; [CPU_ALU] |201| 
        ANDB      AL,#0x07              ; [CPU_ALU] |201| 
        ADDB      AL,#8                 ; [CPU_ALU] |201| 
        MOV       T,AL                  ; [CPU_ALU] |201| 
        B         $C$L144,UNC           ; [CPU_ALU] |201| 
        ; branch occurs ; [] |201| 
$C$L143:    
        ADDB      AL,#-32               ; [CPU_ALU] |201| 
        ANDB      AL,#0x07              ; [CPU_ALU] |201| 
        MOV       T,AL                  ; [CPU_ALU] |201| 
$C$L144:    
        MOVB      AL,#1                 ; [CPU_ALU] |201| 
        MOVW      DP,#_PieCtrlRegs+12   ; [CPU_ARAU] 
        LSL       AL,T                  ; [CPU_ALU] |201| 
        NOT       AL                    ; [CPU_ALU] |201| 
        AND       @$BLOCKED(_PieCtrlRegs)+12,AL ; [CPU_ALU] |201| 
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c2000ISR.c",line 202,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 202 | IER |= (0x1U << GET_PIE_GROUP(irqnumber));                             
;----------------------------------------------------------------------
        MOV       AL,*-SP[1]            ; [CPU_ALU] |202| 
        CMPB      AL,#128               ; [CPU_ALU] |202| 
        B         $C$L145,LO            ; [CPU_ALU] |202| 
        ; branchcc occurs ; [] |202| 
        SUB       AL,#128               ; [CPU_ALU] |202| 
        B         $C$L146,UNC           ; [CPU_ALU] |202| 
        ; branch occurs ; [] |202| 
$C$L145:    
        ADDB      AL,#-32               ; [CPU_ALU] |202| 
$C$L146:    
        LSR       AL,3                  ; [CPU_ALU] |202| 
        MOV       T,AL                  ; [CPU_ALU] |202| 
        MOVB      AL,#1                 ; [CPU_ALU] |202| 
        LSL       AL,T                  ; [CPU_ALU] |202| 
        MOV       AH,IER                ; [CPU_FPU] |202| 
        OR        AL,AH                 ; [CPU_ALU] |202| 
        MOV       IER,AL                ; [CPU_ALU] |202| 
        B         $C$L196,UNC           ; [CPU_ALU] 
        ; branch occurs ; [] 
$C$L147:    
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c2000ISR.c",line 204,column 10,is_stmt,isa 0
;----------------------------------------------------------------------
; 204 | else if ((7 == irqnumber)                                              
; 205 | ||  (7 == GET_PIE_GROUP(irqnumber)+1))                                 
;----------------------------------------------------------------------
        MOV       AL,*-SP[1]            ; [CPU_ALU] |204| 
        CMPB      AL,#7                 ; [CPU_ALU] |204| 
        B         $C$L150,EQ            ; [CPU_ALU] |204| 
        ; branchcc occurs ; [] |204| 
        CMPB      AL,#128               ; [CPU_ALU] |204| 
        B         $C$L148,LO            ; [CPU_ALU] |204| 
        ; branchcc occurs ; [] |204| 
        SUB       AL,#128               ; [CPU_ALU] |204| 
        B         $C$L149,UNC           ; [CPU_ALU] |204| 
        ; branch occurs ; [] |204| 
$C$L148:    
        ADDB      AL,#-32               ; [CPU_ALU] |204| 
$C$L149:    
        LSR       AL,3                  ; [CPU_ALU] |204| 
        ADDB      AL,#1                 ; [CPU_ALU] |204| 
        CMPB      AL,#7                 ; [CPU_ALU] |204| 
        B         $C$L155,NEQ           ; [CPU_ALU] |204| 
        ; branchcc occurs ; [] |204| 
$C$L150:    
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c2000ISR.c",line 208,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 208 | PieCtrlRegs.PIEIER7.all &= ~(1U << GET_PIE_OFFSET_IN_GROUP(irqnumber));
;----------------------------------------------------------------------
        MOV       AL,*-SP[1]            ; [CPU_ALU] |208| 
        CMPB      AL,#128               ; [CPU_ALU] |208| 
        B         $C$L151,LO            ; [CPU_ALU] |208| 
        ; branchcc occurs ; [] |208| 
        SUB       AL,#128               ; [CPU_ALU] |208| 
        ANDB      AL,#0x07              ; [CPU_ALU] |208| 
        ADDB      AL,#8                 ; [CPU_ALU] |208| 
        MOV       T,AL                  ; [CPU_ALU] |208| 
        B         $C$L152,UNC           ; [CPU_ALU] |208| 
        ; branch occurs ; [] |208| 
$C$L151:    
        ADDB      AL,#-32               ; [CPU_ALU] |208| 
        ANDB      AL,#0x07              ; [CPU_ALU] |208| 
        MOV       T,AL                  ; [CPU_ALU] |208| 
$C$L152:    
        MOVB      AL,#1                 ; [CPU_ALU] |208| 
        MOVW      DP,#_PieCtrlRegs+14   ; [CPU_ARAU] 
        LSL       AL,T                  ; [CPU_ALU] |208| 
        NOT       AL                    ; [CPU_ALU] |208| 
        AND       @$BLOCKED(_PieCtrlRegs)+14,AL ; [CPU_ALU] |208| 
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c2000ISR.c",line 209,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 209 | IER &= ~(0x1U << GET_PIE_GROUP(irqnumber));                            
;----------------------------------------------------------------------
        MOV       AL,*-SP[1]            ; [CPU_ALU] |209| 
        CMPB      AL,#128               ; [CPU_ALU] |209| 
        B         $C$L153,LO            ; [CPU_ALU] |209| 
        ; branchcc occurs ; [] |209| 
        SUB       AL,#128               ; [CPU_ALU] |209| 
        B         $C$L154,UNC           ; [CPU_ALU] |209| 
        ; branch occurs ; [] |209| 
$C$L153:    
        ADDB      AL,#-32               ; [CPU_ALU] |209| 
$C$L154:    
        LSR       AL,3                  ; [CPU_ALU] |209| 
        MOV       T,AL                  ; [CPU_ALU] |209| 
        MOVB      AL,#1                 ; [CPU_ALU] |209| 
        LSL       AL,T                  ; [CPU_ALU] |209| 
        NOT       AL                    ; [CPU_ALU] |209| 
        MOV       AH,IER                ; [CPU_FPU] |209| 
        AND       AL,AH                 ; [CPU_ALU] |209| 
        MOV       IER,AL                ; [CPU_ALU] |209| 
        B         $C$L196,UNC           ; [CPU_ALU] 
        ; branch occurs ; [] 
$C$L155:    
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c2000ISR.c",line 211,column 10,is_stmt,isa 0
;----------------------------------------------------------------------
; 211 | else if ((8 == irqnumber)                                              
; 212 | ||  (8 == GET_PIE_GROUP(irqnumber)+1))                                 
;----------------------------------------------------------------------
        MOV       AL,*-SP[1]            ; [CPU_ALU] |211| 
        CMPB      AL,#8                 ; [CPU_ALU] |211| 
        B         $C$L158,EQ            ; [CPU_ALU] |211| 
        ; branchcc occurs ; [] |211| 
        CMPB      AL,#128               ; [CPU_ALU] |211| 
        B         $C$L156,LO            ; [CPU_ALU] |211| 
        ; branchcc occurs ; [] |211| 
        SUB       AL,#128               ; [CPU_ALU] |211| 
        B         $C$L157,UNC           ; [CPU_ALU] |211| 
        ; branch occurs ; [] |211| 
$C$L156:    
        ADDB      AL,#-32               ; [CPU_ALU] |211| 
$C$L157:    
        LSR       AL,3                  ; [CPU_ALU] |211| 
        ADDB      AL,#1                 ; [CPU_ALU] |211| 
        CMPB      AL,#8                 ; [CPU_ALU] |211| 
        B         $C$L163,NEQ           ; [CPU_ALU] |211| 
        ; branchcc occurs ; [] |211| 
$C$L158:    
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c2000ISR.c",line 215,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 215 | PieCtrlRegs.PIEIER8.all &= ~(1 << GET_PIE_OFFSET_IN_GROUP(irqnumber)); 
;----------------------------------------------------------------------
        MOV       AL,*-SP[1]            ; [CPU_ALU] |215| 
        CMPB      AL,#128               ; [CPU_ALU] |215| 
        B         $C$L159,LO            ; [CPU_ALU] |215| 
        ; branchcc occurs ; [] |215| 
        SUB       AL,#128               ; [CPU_ALU] |215| 
        ANDB      AL,#0x07              ; [CPU_ALU] |215| 
        ADDB      AL,#8                 ; [CPU_ALU] |215| 
        MOV       T,AL                  ; [CPU_ALU] |215| 
        B         $C$L160,UNC           ; [CPU_ALU] |215| 
        ; branch occurs ; [] |215| 
$C$L159:    
        ADDB      AL,#-32               ; [CPU_ALU] |215| 
        ANDB      AL,#0x07              ; [CPU_ALU] |215| 
        MOV       T,AL                  ; [CPU_ALU] |215| 
$C$L160:    
        MOVB      AL,#1                 ; [CPU_ALU] |215| 
        MOVW      DP,#_PieCtrlRegs+16   ; [CPU_ARAU] 
        LSL       AL,T                  ; [CPU_ALU] |215| 
        NOT       AL                    ; [CPU_ALU] |215| 
        AND       @$BLOCKED(_PieCtrlRegs)+16,AL ; [CPU_ALU] |215| 
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c2000ISR.c",line 216,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 216 | IER &= ~(0x1U << GET_PIE_GROUP(irqnumber));                            
;----------------------------------------------------------------------
        MOV       AL,*-SP[1]            ; [CPU_ALU] |216| 
        CMPB      AL,#128               ; [CPU_ALU] |216| 
        B         $C$L161,LO            ; [CPU_ALU] |216| 
        ; branchcc occurs ; [] |216| 
        SUB       AL,#128               ; [CPU_ALU] |216| 
        B         $C$L162,UNC           ; [CPU_ALU] |216| 
        ; branch occurs ; [] |216| 
$C$L161:    
        ADDB      AL,#-32               ; [CPU_ALU] |216| 
$C$L162:    
        LSR       AL,3                  ; [CPU_ALU] |216| 
        MOV       T,AL                  ; [CPU_ALU] |216| 
        MOVB      AL,#1                 ; [CPU_ALU] |216| 
        LSL       AL,T                  ; [CPU_ALU] |216| 
        NOT       AL                    ; [CPU_ALU] |216| 
        MOV       AH,IER                ; [CPU_FPU] |216| 
        AND       AL,AH                 ; [CPU_ALU] |216| 
        MOV       IER,AL                ; [CPU_ALU] |216| 
        B         $C$L196,UNC           ; [CPU_ALU] 
        ; branch occurs ; [] 
$C$L163:    
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c2000ISR.c",line 218,column 10,is_stmt,isa 0
;----------------------------------------------------------------------
; 218 | else if ((9 == irqnumber)                                              
; 219 | ||  (9 == GET_PIE_GROUP(irqnumber)+1))                                 
;----------------------------------------------------------------------
        MOV       AL,*-SP[1]            ; [CPU_ALU] |218| 
        CMPB      AL,#9                 ; [CPU_ALU] |218| 
        B         $C$L166,EQ            ; [CPU_ALU] |218| 
        ; branchcc occurs ; [] |218| 
        CMPB      AL,#128               ; [CPU_ALU] |218| 
        B         $C$L164,LO            ; [CPU_ALU] |218| 
        ; branchcc occurs ; [] |218| 
        SUB       AL,#128               ; [CPU_ALU] |218| 
        B         $C$L165,UNC           ; [CPU_ALU] |218| 
        ; branch occurs ; [] |218| 
$C$L164:    
        ADDB      AL,#-32               ; [CPU_ALU] |218| 
$C$L165:    
        LSR       AL,3                  ; [CPU_ALU] |218| 
        ADDB      AL,#1                 ; [CPU_ALU] |218| 
        CMPB      AL,#9                 ; [CPU_ALU] |218| 
        B         $C$L171,NEQ           ; [CPU_ALU] |218| 
        ; branchcc occurs ; [] |218| 
$C$L166:    
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c2000ISR.c",line 222,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 222 | PieCtrlRegs.PIEIER9.all &= ~(1U << GET_PIE_OFFSET_IN_GROUP(irqnumber));
;----------------------------------------------------------------------
        MOV       AL,*-SP[1]            ; [CPU_ALU] |222| 
        CMPB      AL,#128               ; [CPU_ALU] |222| 
        B         $C$L167,LO            ; [CPU_ALU] |222| 
        ; branchcc occurs ; [] |222| 
        SUB       AL,#128               ; [CPU_ALU] |222| 
        ANDB      AL,#0x07              ; [CPU_ALU] |222| 
        ADDB      AL,#8                 ; [CPU_ALU] |222| 
        MOV       T,AL                  ; [CPU_ALU] |222| 
        B         $C$L168,UNC           ; [CPU_ALU] |222| 
        ; branch occurs ; [] |222| 
$C$L167:    
        ADDB      AL,#-32               ; [CPU_ALU] |222| 
        ANDB      AL,#0x07              ; [CPU_ALU] |222| 
        MOV       T,AL                  ; [CPU_ALU] |222| 
$C$L168:    
        MOVB      AL,#1                 ; [CPU_ALU] |222| 
        MOVW      DP,#_PieCtrlRegs+18   ; [CPU_ARAU] 
        LSL       AL,T                  ; [CPU_ALU] |222| 
        NOT       AL                    ; [CPU_ALU] |222| 
        AND       @$BLOCKED(_PieCtrlRegs)+18,AL ; [CPU_ALU] |222| 
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c2000ISR.c",line 223,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 223 | IER &= ~(0x1U << GET_PIE_GROUP(irqnumber));                            
;----------------------------------------------------------------------
        MOV       AL,*-SP[1]            ; [CPU_ALU] |223| 
        CMPB      AL,#128               ; [CPU_ALU] |223| 
        B         $C$L169,LO            ; [CPU_ALU] |223| 
        ; branchcc occurs ; [] |223| 
        SUB       AL,#128               ; [CPU_ALU] |223| 
        B         $C$L170,UNC           ; [CPU_ALU] |223| 
        ; branch occurs ; [] |223| 
$C$L169:    
        ADDB      AL,#-32               ; [CPU_ALU] |223| 
$C$L170:    
        LSR       AL,3                  ; [CPU_ALU] |223| 
        MOV       T,AL                  ; [CPU_ALU] |223| 
        MOVB      AL,#1                 ; [CPU_ALU] |223| 
        LSL       AL,T                  ; [CPU_ALU] |223| 
        NOT       AL                    ; [CPU_ALU] |223| 
        MOV       AH,IER                ; [CPU_FPU] |223| 
        AND       AL,AH                 ; [CPU_ALU] |223| 
        MOV       IER,AL                ; [CPU_ALU] |223| 
        B         $C$L196,UNC           ; [CPU_ALU] 
        ; branch occurs ; [] 
$C$L171:    
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c2000ISR.c",line 225,column 10,is_stmt,isa 0
;----------------------------------------------------------------------
; 225 | else if ((10 == irqnumber)                                             
; 226 | ||  (10 == GET_PIE_GROUP(irqnumber)+1))                                
;----------------------------------------------------------------------
        MOV       AL,*-SP[1]            ; [CPU_ALU] |225| 
        CMPB      AL,#10                ; [CPU_ALU] |225| 
        B         $C$L174,EQ            ; [CPU_ALU] |225| 
        ; branchcc occurs ; [] |225| 
        CMPB      AL,#128               ; [CPU_ALU] |225| 
        B         $C$L172,LO            ; [CPU_ALU] |225| 
        ; branchcc occurs ; [] |225| 
        SUB       AL,#128               ; [CPU_ALU] |225| 
        B         $C$L173,UNC           ; [CPU_ALU] |225| 
        ; branch occurs ; [] |225| 
$C$L172:    
        ADDB      AL,#-32               ; [CPU_ALU] |225| 
$C$L173:    
        LSR       AL,3                  ; [CPU_ALU] |225| 
        ADDB      AL,#1                 ; [CPU_ALU] |225| 
        CMPB      AL,#10                ; [CPU_ALU] |225| 
        B         $C$L179,NEQ           ; [CPU_ALU] |225| 
        ; branchcc occurs ; [] |225| 
$C$L174:    
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c2000ISR.c",line 229,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 229 | PieCtrlRegs.PIEIER10.all &= ~(1U << GET_PIE_OFFSET_IN_GROUP(irqnumber))
;     | ;                                                                      
;----------------------------------------------------------------------
        MOV       AL,*-SP[1]            ; [CPU_ALU] |229| 
        CMPB      AL,#128               ; [CPU_ALU] |229| 
        B         $C$L175,LO            ; [CPU_ALU] |229| 
        ; branchcc occurs ; [] |229| 
        SUB       AL,#128               ; [CPU_ALU] |229| 
        ANDB      AL,#0x07              ; [CPU_ALU] |229| 
        ADDB      AL,#8                 ; [CPU_ALU] |229| 
        MOV       T,AL                  ; [CPU_ALU] |229| 
        B         $C$L176,UNC           ; [CPU_ALU] |229| 
        ; branch occurs ; [] |229| 
$C$L175:    
        ADDB      AL,#-32               ; [CPU_ALU] |229| 
        ANDB      AL,#0x07              ; [CPU_ALU] |229| 
        MOV       T,AL                  ; [CPU_ALU] |229| 
$C$L176:    
        MOVB      AL,#1                 ; [CPU_ALU] |229| 
        MOVW      DP,#_PieCtrlRegs+20   ; [CPU_ARAU] 
        LSL       AL,T                  ; [CPU_ALU] |229| 
        NOT       AL                    ; [CPU_ALU] |229| 
        AND       @$BLOCKED(_PieCtrlRegs)+20,AL ; [CPU_ALU] |229| 
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c2000ISR.c",line 230,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 230 | IER &= ~(0x1U << GET_PIE_GROUP(irqnumber));                            
;----------------------------------------------------------------------
        MOV       AL,*-SP[1]            ; [CPU_ALU] |230| 
        CMPB      AL,#128               ; [CPU_ALU] |230| 
        B         $C$L177,LO            ; [CPU_ALU] |230| 
        ; branchcc occurs ; [] |230| 
        SUB       AL,#128               ; [CPU_ALU] |230| 
        B         $C$L178,UNC           ; [CPU_ALU] |230| 
        ; branch occurs ; [] |230| 
$C$L177:    
        ADDB      AL,#-32               ; [CPU_ALU] |230| 
$C$L178:    
        LSR       AL,3                  ; [CPU_ALU] |230| 
        MOV       T,AL                  ; [CPU_ALU] |230| 
        MOVB      AL,#1                 ; [CPU_ALU] |230| 
        LSL       AL,T                  ; [CPU_ALU] |230| 
        NOT       AL                    ; [CPU_ALU] |230| 
        MOV       AH,IER                ; [CPU_FPU] |230| 
        AND       AL,AH                 ; [CPU_ALU] |230| 
        MOV       IER,AL                ; [CPU_ALU] |230| 
        B         $C$L196,UNC           ; [CPU_ALU] 
        ; branch occurs ; [] 
$C$L179:    
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c2000ISR.c",line 232,column 10,is_stmt,isa 0
;----------------------------------------------------------------------
; 232 | else if ((11 == irqnumber)                                             
; 233 | ||  (11 == GET_PIE_GROUP(irqnumber)+1))                                
;----------------------------------------------------------------------
        MOV       AL,*-SP[1]            ; [CPU_ALU] |232| 
        CMPB      AL,#11                ; [CPU_ALU] |232| 
        B         $C$L182,EQ            ; [CPU_ALU] |232| 
        ; branchcc occurs ; [] |232| 
        CMPB      AL,#128               ; [CPU_ALU] |232| 
        B         $C$L180,LO            ; [CPU_ALU] |232| 
        ; branchcc occurs ; [] |232| 
        SUB       AL,#128               ; [CPU_ALU] |232| 
        B         $C$L181,UNC           ; [CPU_ALU] |232| 
        ; branch occurs ; [] |232| 
$C$L180:    
        ADDB      AL,#-32               ; [CPU_ALU] |232| 
$C$L181:    
        LSR       AL,3                  ; [CPU_ALU] |232| 
        ADDB      AL,#1                 ; [CPU_ALU] |232| 
        CMPB      AL,#11                ; [CPU_ALU] |232| 
        B         $C$L187,NEQ           ; [CPU_ALU] |232| 
        ; branchcc occurs ; [] |232| 
$C$L182:    
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c2000ISR.c",line 236,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 236 | PieCtrlRegs.PIEIER11.all &= ~(1U << GET_PIE_OFFSET_IN_GROUP(irqnumber))
;     | ;                                                                      
;----------------------------------------------------------------------
        MOV       AL,*-SP[1]            ; [CPU_ALU] |236| 
        CMPB      AL,#128               ; [CPU_ALU] |236| 
        B         $C$L183,LO            ; [CPU_ALU] |236| 
        ; branchcc occurs ; [] |236| 
        SUB       AL,#128               ; [CPU_ALU] |236| 
        ANDB      AL,#0x07              ; [CPU_ALU] |236| 
        ADDB      AL,#8                 ; [CPU_ALU] |236| 
        MOV       T,AL                  ; [CPU_ALU] |236| 
        B         $C$L184,UNC           ; [CPU_ALU] |236| 
        ; branch occurs ; [] |236| 
$C$L183:    
        ADDB      AL,#-32               ; [CPU_ALU] |236| 
        ANDB      AL,#0x07              ; [CPU_ALU] |236| 
        MOV       T,AL                  ; [CPU_ALU] |236| 
$C$L184:    
        MOVB      AL,#1                 ; [CPU_ALU] |236| 
        MOVW      DP,#_PieCtrlRegs+22   ; [CPU_ARAU] 
        LSL       AL,T                  ; [CPU_ALU] |236| 
        NOT       AL                    ; [CPU_ALU] |236| 
        AND       @$BLOCKED(_PieCtrlRegs)+22,AL ; [CPU_ALU] |236| 
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c2000ISR.c",line 237,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 237 | IER &= ~(0x1U << GET_PIE_GROUP(irqnumber));                            
;----------------------------------------------------------------------
        MOV       AL,*-SP[1]            ; [CPU_ALU] |237| 
        CMPB      AL,#128               ; [CPU_ALU] |237| 
        B         $C$L185,LO            ; [CPU_ALU] |237| 
        ; branchcc occurs ; [] |237| 
        SUB       AL,#128               ; [CPU_ALU] |237| 
        B         $C$L186,UNC           ; [CPU_ALU] |237| 
        ; branch occurs ; [] |237| 
$C$L185:    
        ADDB      AL,#-32               ; [CPU_ALU] |237| 
$C$L186:    
        LSR       AL,3                  ; [CPU_ALU] |237| 
        MOV       T,AL                  ; [CPU_ALU] |237| 
        MOVB      AL,#1                 ; [CPU_ALU] |237| 
        LSL       AL,T                  ; [CPU_ALU] |237| 
        NOT       AL                    ; [CPU_ALU] |237| 
        MOV       AH,IER                ; [CPU_FPU] |237| 
        AND       AL,AH                 ; [CPU_ALU] |237| 
        MOV       IER,AL                ; [CPU_ALU] |237| 
        B         $C$L196,UNC           ; [CPU_ALU] 
        ; branch occurs ; [] 
$C$L187:    
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c2000ISR.c",line 239,column 10,is_stmt,isa 0
;----------------------------------------------------------------------
; 239 | else if ((12 == irqnumber)                                             
; 240 | ||  (12 == GET_PIE_GROUP(irqnumber)+1))                                
;----------------------------------------------------------------------
        MOV       AL,*-SP[1]            ; [CPU_ALU] |239| 
        CMPB      AL,#12                ; [CPU_ALU] |239| 
        B         $C$L190,EQ            ; [CPU_ALU] |239| 
        ; branchcc occurs ; [] |239| 
        CMPB      AL,#128               ; [CPU_ALU] |239| 
        B         $C$L188,LO            ; [CPU_ALU] |239| 
        ; branchcc occurs ; [] |239| 
        SUB       AL,#128               ; [CPU_ALU] |239| 
        B         $C$L189,UNC           ; [CPU_ALU] |239| 
        ; branch occurs ; [] |239| 
$C$L188:    
        ADDB      AL,#-32               ; [CPU_ALU] |239| 
$C$L189:    
        LSR       AL,3                  ; [CPU_ALU] |239| 
        ADDB      AL,#1                 ; [CPU_ALU] |239| 
        CMPB      AL,#12                ; [CPU_ALU] |239| 
        B         $C$L195,NEQ           ; [CPU_ALU] |239| 
        ; branchcc occurs ; [] |239| 
$C$L190:    
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c2000ISR.c",line 243,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 243 | PieCtrlRegs.PIEIER12.all &= ~(1 << GET_PIE_OFFSET_IN_GROUP(irqnumber));
;----------------------------------------------------------------------
        MOV       AL,*-SP[1]            ; [CPU_ALU] |243| 
        CMPB      AL,#128               ; [CPU_ALU] |243| 
        B         $C$L191,LO            ; [CPU_ALU] |243| 
        ; branchcc occurs ; [] |243| 
        SUB       AL,#128               ; [CPU_ALU] |243| 
        ANDB      AL,#0x07              ; [CPU_ALU] |243| 
        ADDB      AL,#8                 ; [CPU_ALU] |243| 
        MOV       T,AL                  ; [CPU_ALU] |243| 
        B         $C$L192,UNC           ; [CPU_ALU] |243| 
        ; branch occurs ; [] |243| 
$C$L191:    
        ADDB      AL,#-32               ; [CPU_ALU] |243| 
        ANDB      AL,#0x07              ; [CPU_ALU] |243| 
        MOV       T,AL                  ; [CPU_ALU] |243| 
$C$L192:    
        MOVB      AL,#1                 ; [CPU_ALU] |243| 
        MOVW      DP,#_PieCtrlRegs+24   ; [CPU_ARAU] 
        LSL       AL,T                  ; [CPU_ALU] |243| 
        NOT       AL                    ; [CPU_ALU] |243| 
        AND       @$BLOCKED(_PieCtrlRegs)+24,AL ; [CPU_ALU] |243| 
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c2000ISR.c",line 244,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 244 | IER &= ~(0x1U << GET_PIE_GROUP(irqnumber));                            
;----------------------------------------------------------------------
        MOV       AL,*-SP[1]            ; [CPU_ALU] |244| 
        CMPB      AL,#128               ; [CPU_ALU] |244| 
        B         $C$L193,LO            ; [CPU_ALU] |244| 
        ; branchcc occurs ; [] |244| 
        SUB       AL,#128               ; [CPU_ALU] |244| 
        B         $C$L194,UNC           ; [CPU_ALU] |244| 
        ; branch occurs ; [] |244| 
$C$L193:    
        ADDB      AL,#-32               ; [CPU_ALU] |244| 
$C$L194:    
        LSR       AL,3                  ; [CPU_ALU] |244| 
        MOV       T,AL                  ; [CPU_ALU] |244| 
        MOVB      AL,#1                 ; [CPU_ALU] |244| 
        LSL       AL,T                  ; [CPU_ALU] |244| 
        NOT       AL                    ; [CPU_ALU] |244| 
        MOV       AH,IER                ; [CPU_FPU] |244| 
        AND       AL,AH                 ; [CPU_ALU] |244| 
        MOV       IER,AL                ; [CPU_ALU] |244| 
        B         $C$L196,UNC           ; [CPU_ALU] 
        ; branch occurs ; [] 
$C$L195:    
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c2000ISR.c",line 247,column 10,is_stmt,isa 0
;----------------------------------------------------------------------
; 247 | else if (13 == irqnumber)                                              
;----------------------------------------------------------------------
        MOV       AL,*-SP[1]            ; [CPU_ALU] |247| 
        CMPB      AL,#13                ; [CPU_ALU] |247| 
        B         $C$L196,EQ            ; [CPU_ALU] |247| 
        ; branchcc occurs ; [] |247| 
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c2000ISR.c",line 251,column 10,is_stmt,isa 0
;----------------------------------------------------------------------
; 251 | else if (14 == irqnumber)                                              
;----------------------------------------------------------------------
        CMPB      AL,#14                ; [CPU_ALU] |251| 
        B         $C$L196,EQ            ; [CPU_ALU] |251| 
        ; branchcc occurs ; [] |251| 
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c2000ISR.c",line 255,column 10,is_stmt,isa 0
;----------------------------------------------------------------------
; 255 | else if (15 == irqnumber)                                              
;----------------------------------------------------------------------
        CMPB      AL,#15                ; [CPU_ALU] |255| 
        B         $C$L196,EQ            ; [CPU_ALU] |255| 
        ; branchcc occurs ; [] |255| 
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c2000ISR.c",line 259,column 10,is_stmt,isa 0
;----------------------------------------------------------------------
; 259 | else if (16 == irqnumber)                                              
;----------------------------------------------------------------------
        CMPB      AL,#16                ; [CPU_ALU] |259| 
        B         $C$L196,EQ            ; [CPU_ALU] |259| 
        ; branchcc occurs ; [] |259| 
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c2000ISR.c",line 263,column 10,is_stmt,isa 0
;----------------------------------------------------------------------
; 263 | else if (17 == irqnumber)                                              
;----------------------------------------------------------------------
        CMPB      AL,#17                ; [CPU_ALU] |263| 
        B         $C$L196,EQ            ; [CPU_ALU] |263| 
        ; branchcc occurs ; [] |263| 
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c2000ISR.c",line 267,column 10,is_stmt,isa 0
;----------------------------------------------------------------------
; 267 | else if (18 == irqnumber)                                              
;----------------------------------------------------------------------
        CMPB      AL,#18                ; [CPU_ALU] |267| 
        B         $C$L196,EQ            ; [CPU_ALU] |267| 
        ; branchcc occurs ; [] |267| 
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c2000ISR.c",line 271,column 10,is_stmt,isa 0
;----------------------------------------------------------------------
; 271 | else if ((irqnumber >= 19) && (irqnumber <= 31))                       
; 274 | else                                                                   
;----------------------------------------------------------------------
        CMPB      AL,#19                ; [CPU_ALU] |271| 
        B         $C$L196,LO            ; [CPU_ALU] |271| 
        ; branchcc occurs ; [] |271| 
        CMPB      AL,#31                ; [CPU_ALU] |271| 
        B         $C$L196,HI            ; [CPU_ALU] |271| 
        ; branchcc occurs ; [] |271| 
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c2000ISR.c",line 278,column 1,is_stmt,isa 0
$C$L196:    
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$19	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$19, DW_AT_low_pc(0x00)
	.dwattr $C$DW$19, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$16, DW_AT_TI_end_file("D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c2000ISR.c")
	.dwattr $C$DW$16, DW_AT_TI_end_line(0x116)
	.dwattr $C$DW$16, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$16

	.sect	".text"
	.clink
	.global	_HWI_TIC28x_EnablePendingIRQ

$C$DW$20	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$20, DW_AT_name("HWI_TIC28x_EnablePendingIRQ")
	.dwattr $C$DW$20, DW_AT_low_pc(_HWI_TIC28x_EnablePendingIRQ)
	.dwattr $C$DW$20, DW_AT_high_pc(0x00)
	.dwattr $C$DW$20, DW_AT_TI_symbol_name("_HWI_TIC28x_EnablePendingIRQ")
	.dwattr $C$DW$20, DW_AT_external
	.dwattr $C$DW$20, DW_AT_TI_begin_file("D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c2000ISR.c")
	.dwattr $C$DW$20, DW_AT_TI_begin_line(0x117)
	.dwattr $C$DW$20, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$20, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c2000ISR.c",line 280,column 1,is_stmt,address _HWI_TIC28x_EnablePendingIRQ,isa 0

	.dwfde $C$DW$CIE, _HWI_TIC28x_EnablePendingIRQ
$C$DW$21	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$21, DW_AT_name("irqnumber")
	.dwattr $C$DW$21, DW_AT_TI_symbol_name("_irqnumber")
	.dwattr $C$DW$21, DW_AT_type(*$C$DW$T$106)
	.dwattr $C$DW$21, DW_AT_location[DW_OP_reg0]

;----------------------------------------------------------------------
; 279 | void HWI_TIC28x_EnablePendingIRQ(uint16_T irqnumber)                   
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _HWI_TIC28x_EnablePendingIRQ  FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  1 Auto,  0 SOE     *
;***************************************************************

_HWI_TIC28x_EnablePendingIRQ:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
$C$DW$22	.dwtag  DW_TAG_variable
	.dwattr $C$DW$22, DW_AT_name("irqnumber")
	.dwattr $C$DW$22, DW_AT_TI_symbol_name("_irqnumber")
	.dwattr $C$DW$22, DW_AT_type(*$C$DW$T$106)
	.dwattr $C$DW$22, DW_AT_location[DW_OP_breg20 -1]

        MOV       *-SP[1],AL            ; [CPU_ALU] |280| 
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c2000ISR.c",line 282,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 282 | if ((1 == irqnumber)                                                   
; 283 | ||  (1 == GET_PIE_GROUP(irqnumber)+1))                                 
;----------------------------------------------------------------------
        CMPB      AL,#1                 ; [CPU_ALU] |282| 
        B         $C$L199,EQ            ; [CPU_ALU] |282| 
        ; branchcc occurs ; [] |282| 
        CMPB      AL,#128               ; [CPU_ALU] |282| 
        B         $C$L197,LO            ; [CPU_ALU] |282| 
        ; branchcc occurs ; [] |282| 
        SUB       AL,#128               ; [CPU_ALU] |282| 
        B         $C$L198,UNC           ; [CPU_ALU] |282| 
        ; branch occurs ; [] |282| 
$C$L197:    
        ADDB      AL,#-32               ; [CPU_ALU] |282| 
$C$L198:    
        LSR       AL,3                  ; [CPU_ALU] |282| 
        ADDB      AL,#1                 ; [CPU_ALU] |282| 
        CMPB      AL,#1                 ; [CPU_ALU] |282| 
        B         $C$L202,NEQ           ; [CPU_ALU] |282| 
        ; branchcc occurs ; [] |282| 
$C$L199:    
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c2000ISR.c",line 286,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 286 | PieCtrlRegs.PIEIFR1.all |= 1 << GET_PIE_OFFSET_IN_GROUP(irqnumber);    
;----------------------------------------------------------------------
        MOV       AL,*-SP[1]            ; [CPU_ALU] |286| 
        CMPB      AL,#128               ; [CPU_ALU] |286| 
        B         $C$L200,LO            ; [CPU_ALU] |286| 
        ; branchcc occurs ; [] |286| 
        SUB       AL,#128               ; [CPU_ALU] |286| 
        ANDB      AL,#0x07              ; [CPU_ALU] |286| 
        ADDB      AL,#8                 ; [CPU_ALU] |286| 
        MOV       T,AL                  ; [CPU_ALU] |286| 
        B         $C$L201,UNC           ; [CPU_ALU] |286| 
        ; branch occurs ; [] |286| 
$C$L200:    
        ADDB      AL,#-32               ; [CPU_ALU] |286| 
        ANDB      AL,#0x07              ; [CPU_ALU] |286| 
        MOV       T,AL                  ; [CPU_ALU] |286| 
$C$L201:    
        MOVB      AL,#1                 ; [CPU_ALU] |286| 
        MOVW      DP,#_PieCtrlRegs+3    ; [CPU_ARAU] 
        LSL       AL,T                  ; [CPU_ALU] |286| 
        OR        @$BLOCKED(_PieCtrlRegs)+3,AL ; [CPU_ALU] |286| 
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c2000ISR.c",line 287,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 287 | asm(" RPT #1 || NOP");               /*wait 1 cycles        */         
;----------------------------------------------------------------------
 RPT #1 || NOP
        B         $C$L269,UNC           ; [CPU_ALU] 
        ; branch occurs ; [] 
$C$L202:    
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c2000ISR.c",line 289,column 10,is_stmt,isa 0
;----------------------------------------------------------------------
; 289 | else if ((2 == irqnumber)                                              
; 290 | || (2 == GET_PIE_GROUP(irqnumber)+1))                                  
;----------------------------------------------------------------------
        MOV       AL,*-SP[1]            ; [CPU_ALU] |289| 
        CMPB      AL,#2                 ; [CPU_ALU] |289| 
        B         $C$L205,EQ            ; [CPU_ALU] |289| 
        ; branchcc occurs ; [] |289| 
        CMPB      AL,#128               ; [CPU_ALU] |289| 
        B         $C$L203,LO            ; [CPU_ALU] |289| 
        ; branchcc occurs ; [] |289| 
        SUB       AL,#128               ; [CPU_ALU] |289| 
        B         $C$L204,UNC           ; [CPU_ALU] |289| 
        ; branch occurs ; [] |289| 
$C$L203:    
        ADDB      AL,#-32               ; [CPU_ALU] |289| 
$C$L204:    
        LSR       AL,3                  ; [CPU_ALU] |289| 
        ADDB      AL,#1                 ; [CPU_ALU] |289| 
        CMPB      AL,#2                 ; [CPU_ALU] |289| 
        B         $C$L208,NEQ           ; [CPU_ALU] |289| 
        ; branchcc occurs ; [] |289| 
$C$L205:    
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c2000ISR.c",line 293,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 293 | PieCtrlRegs.PIEIFR2.all |= 1 << GET_PIE_OFFSET_IN_GROUP(irqnumber);    
;----------------------------------------------------------------------
        MOV       AL,*-SP[1]            ; [CPU_ALU] |293| 
        CMPB      AL,#128               ; [CPU_ALU] |293| 
        B         $C$L206,LO            ; [CPU_ALU] |293| 
        ; branchcc occurs ; [] |293| 
        SUB       AL,#128               ; [CPU_ALU] |293| 
        ANDB      AL,#0x07              ; [CPU_ALU] |293| 
        ADDB      AL,#8                 ; [CPU_ALU] |293| 
        MOV       T,AL                  ; [CPU_ALU] |293| 
        B         $C$L207,UNC           ; [CPU_ALU] |293| 
        ; branch occurs ; [] |293| 
$C$L206:    
        ADDB      AL,#-32               ; [CPU_ALU] |293| 
        ANDB      AL,#0x07              ; [CPU_ALU] |293| 
        MOV       T,AL                  ; [CPU_ALU] |293| 
$C$L207:    
        MOVB      AL,#1                 ; [CPU_ALU] |293| 
        MOVW      DP,#_PieCtrlRegs+5    ; [CPU_ARAU] 
        LSL       AL,T                  ; [CPU_ALU] |293| 
        OR        @$BLOCKED(_PieCtrlRegs)+5,AL ; [CPU_ALU] |293| 
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c2000ISR.c",line 294,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 294 | asm(" RPT #1 || NOP");               /*wait 1 cycles        */         
;----------------------------------------------------------------------
 RPT #1 || NOP
        B         $C$L269,UNC           ; [CPU_ALU] 
        ; branch occurs ; [] 
$C$L208:    
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c2000ISR.c",line 296,column 10,is_stmt,isa 0
;----------------------------------------------------------------------
; 296 | else if ((3 == irqnumber)                                              
; 297 | ||  (3 == GET_PIE_GROUP(irqnumber)+1))                                 
;----------------------------------------------------------------------
        MOV       AL,*-SP[1]            ; [CPU_ALU] |296| 
        CMPB      AL,#3                 ; [CPU_ALU] |296| 
        B         $C$L211,EQ            ; [CPU_ALU] |296| 
        ; branchcc occurs ; [] |296| 
        CMPB      AL,#128               ; [CPU_ALU] |296| 
        B         $C$L209,LO            ; [CPU_ALU] |296| 
        ; branchcc occurs ; [] |296| 
        SUB       AL,#128               ; [CPU_ALU] |296| 
        B         $C$L210,UNC           ; [CPU_ALU] |296| 
        ; branch occurs ; [] |296| 
$C$L209:    
        ADDB      AL,#-32               ; [CPU_ALU] |296| 
$C$L210:    
        LSR       AL,3                  ; [CPU_ALU] |296| 
        ADDB      AL,#1                 ; [CPU_ALU] |296| 
        CMPB      AL,#3                 ; [CPU_ALU] |296| 
        B         $C$L214,NEQ           ; [CPU_ALU] |296| 
        ; branchcc occurs ; [] |296| 
$C$L211:    
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c2000ISR.c",line 300,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 300 | PieCtrlRegs.PIEIFR3.all |= 1 << GET_PIE_OFFSET_IN_GROUP(irqnumber);    
;----------------------------------------------------------------------
        MOV       AL,*-SP[1]            ; [CPU_ALU] |300| 
        CMPB      AL,#128               ; [CPU_ALU] |300| 
        B         $C$L212,LO            ; [CPU_ALU] |300| 
        ; branchcc occurs ; [] |300| 
        SUB       AL,#128               ; [CPU_ALU] |300| 
        ANDB      AL,#0x07              ; [CPU_ALU] |300| 
        ADDB      AL,#8                 ; [CPU_ALU] |300| 
        MOV       T,AL                  ; [CPU_ALU] |300| 
        B         $C$L213,UNC           ; [CPU_ALU] |300| 
        ; branch occurs ; [] |300| 
$C$L212:    
        ADDB      AL,#-32               ; [CPU_ALU] |300| 
        ANDB      AL,#0x07              ; [CPU_ALU] |300| 
        MOV       T,AL                  ; [CPU_ALU] |300| 
$C$L213:    
        MOVB      AL,#1                 ; [CPU_ALU] |300| 
        MOVW      DP,#_PieCtrlRegs+7    ; [CPU_ARAU] 
        LSL       AL,T                  ; [CPU_ALU] |300| 
        OR        @$BLOCKED(_PieCtrlRegs)+7,AL ; [CPU_ALU] |300| 
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c2000ISR.c",line 301,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 301 | asm(" RPT #1 || NOP");               /*wait 1 cycles        */         
;----------------------------------------------------------------------
 RPT #1 || NOP
        B         $C$L269,UNC           ; [CPU_ALU] 
        ; branch occurs ; [] 
$C$L214:    
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c2000ISR.c",line 303,column 10,is_stmt,isa 0
;----------------------------------------------------------------------
; 303 | else if ((4 == irqnumber)                                              
; 304 | ||  (4 == GET_PIE_GROUP(irqnumber)+1))                                 
;----------------------------------------------------------------------
        MOV       AL,*-SP[1]            ; [CPU_ALU] |303| 
        CMPB      AL,#4                 ; [CPU_ALU] |303| 
        B         $C$L217,EQ            ; [CPU_ALU] |303| 
        ; branchcc occurs ; [] |303| 
        CMPB      AL,#128               ; [CPU_ALU] |303| 
        B         $C$L215,LO            ; [CPU_ALU] |303| 
        ; branchcc occurs ; [] |303| 
        SUB       AL,#128               ; [CPU_ALU] |303| 
        B         $C$L216,UNC           ; [CPU_ALU] |303| 
        ; branch occurs ; [] |303| 
$C$L215:    
        ADDB      AL,#-32               ; [CPU_ALU] |303| 
$C$L216:    
        LSR       AL,3                  ; [CPU_ALU] |303| 
        ADDB      AL,#1                 ; [CPU_ALU] |303| 
        CMPB      AL,#4                 ; [CPU_ALU] |303| 
        B         $C$L220,NEQ           ; [CPU_ALU] |303| 
        ; branchcc occurs ; [] |303| 
$C$L217:    
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c2000ISR.c",line 307,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 307 | PieCtrlRegs.PIEIFR4.all |= 1 << GET_PIE_OFFSET_IN_GROUP(irqnumber);    
;----------------------------------------------------------------------
        MOV       AL,*-SP[1]            ; [CPU_ALU] |307| 
        CMPB      AL,#128               ; [CPU_ALU] |307| 
        B         $C$L218,LO            ; [CPU_ALU] |307| 
        ; branchcc occurs ; [] |307| 
        SUB       AL,#128               ; [CPU_ALU] |307| 
        ANDB      AL,#0x07              ; [CPU_ALU] |307| 
        ADDB      AL,#8                 ; [CPU_ALU] |307| 
        MOV       T,AL                  ; [CPU_ALU] |307| 
        B         $C$L219,UNC           ; [CPU_ALU] |307| 
        ; branch occurs ; [] |307| 
$C$L218:    
        ADDB      AL,#-32               ; [CPU_ALU] |307| 
        ANDB      AL,#0x07              ; [CPU_ALU] |307| 
        MOV       T,AL                  ; [CPU_ALU] |307| 
$C$L219:    
        MOVB      AL,#1                 ; [CPU_ALU] |307| 
        MOVW      DP,#_PieCtrlRegs+9    ; [CPU_ARAU] 
        LSL       AL,T                  ; [CPU_ALU] |307| 
        OR        @$BLOCKED(_PieCtrlRegs)+9,AL ; [CPU_ALU] |307| 
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c2000ISR.c",line 308,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 308 | asm(" RPT #1 || NOP");               /*wait 1 cycles        */         
;----------------------------------------------------------------------
 RPT #1 || NOP
        B         $C$L269,UNC           ; [CPU_ALU] 
        ; branch occurs ; [] 
$C$L220:    
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c2000ISR.c",line 310,column 10,is_stmt,isa 0
;----------------------------------------------------------------------
; 310 | else if ((5 == irqnumber)                                              
; 311 | ||  (5 == GET_PIE_GROUP(irqnumber)+1))                                 
;----------------------------------------------------------------------
        MOV       AL,*-SP[1]            ; [CPU_ALU] |310| 
        CMPB      AL,#5                 ; [CPU_ALU] |310| 
        B         $C$L223,EQ            ; [CPU_ALU] |310| 
        ; branchcc occurs ; [] |310| 
        CMPB      AL,#128               ; [CPU_ALU] |310| 
        B         $C$L221,LO            ; [CPU_ALU] |310| 
        ; branchcc occurs ; [] |310| 
        SUB       AL,#128               ; [CPU_ALU] |310| 
        B         $C$L222,UNC           ; [CPU_ALU] |310| 
        ; branch occurs ; [] |310| 
$C$L221:    
        ADDB      AL,#-32               ; [CPU_ALU] |310| 
$C$L222:    
        LSR       AL,3                  ; [CPU_ALU] |310| 
        ADDB      AL,#1                 ; [CPU_ALU] |310| 
        CMPB      AL,#5                 ; [CPU_ALU] |310| 
        B         $C$L226,NEQ           ; [CPU_ALU] |310| 
        ; branchcc occurs ; [] |310| 
$C$L223:    
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c2000ISR.c",line 314,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 314 | PieCtrlRegs.PIEIFR5.all |= 1 << GET_PIE_OFFSET_IN_GROUP(irqnumber);    
;----------------------------------------------------------------------
        MOV       AL,*-SP[1]            ; [CPU_ALU] |314| 
        CMPB      AL,#128               ; [CPU_ALU] |314| 
        B         $C$L224,LO            ; [CPU_ALU] |314| 
        ; branchcc occurs ; [] |314| 
        SUB       AL,#128               ; [CPU_ALU] |314| 
        ANDB      AL,#0x07              ; [CPU_ALU] |314| 
        ADDB      AL,#8                 ; [CPU_ALU] |314| 
        MOV       T,AL                  ; [CPU_ALU] |314| 
        B         $C$L225,UNC           ; [CPU_ALU] |314| 
        ; branch occurs ; [] |314| 
$C$L224:    
        ADDB      AL,#-32               ; [CPU_ALU] |314| 
        ANDB      AL,#0x07              ; [CPU_ALU] |314| 
        MOV       T,AL                  ; [CPU_ALU] |314| 
$C$L225:    
        MOVB      AL,#1                 ; [CPU_ALU] |314| 
        MOVW      DP,#_PieCtrlRegs+11   ; [CPU_ARAU] 
        LSL       AL,T                  ; [CPU_ALU] |314| 
        OR        @$BLOCKED(_PieCtrlRegs)+11,AL ; [CPU_ALU] |314| 
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c2000ISR.c",line 315,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 315 | asm(" RPT #1 || NOP");               /*wait 1 cycles        */         
;----------------------------------------------------------------------
 RPT #1 || NOP
        B         $C$L269,UNC           ; [CPU_ALU] 
        ; branch occurs ; [] 
$C$L226:    
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c2000ISR.c",line 317,column 10,is_stmt,isa 0
;----------------------------------------------------------------------
; 317 | else if ((6 == irqnumber)                                              
; 318 | ||  (6 == GET_PIE_GROUP(irqnumber)+1))                                 
;----------------------------------------------------------------------
        MOV       AL,*-SP[1]            ; [CPU_ALU] |317| 
        CMPB      AL,#6                 ; [CPU_ALU] |317| 
        B         $C$L229,EQ            ; [CPU_ALU] |317| 
        ; branchcc occurs ; [] |317| 
        CMPB      AL,#128               ; [CPU_ALU] |317| 
        B         $C$L227,LO            ; [CPU_ALU] |317| 
        ; branchcc occurs ; [] |317| 
        SUB       AL,#128               ; [CPU_ALU] |317| 
        B         $C$L228,UNC           ; [CPU_ALU] |317| 
        ; branch occurs ; [] |317| 
$C$L227:    
        ADDB      AL,#-32               ; [CPU_ALU] |317| 
$C$L228:    
        LSR       AL,3                  ; [CPU_ALU] |317| 
        ADDB      AL,#1                 ; [CPU_ALU] |317| 
        CMPB      AL,#6                 ; [CPU_ALU] |317| 
        B         $C$L232,NEQ           ; [CPU_ALU] |317| 
        ; branchcc occurs ; [] |317| 
$C$L229:    
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c2000ISR.c",line 321,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 321 | PieCtrlRegs.PIEIFR6.all |= 1 << GET_PIE_OFFSET_IN_GROUP(irqnumber);    
;----------------------------------------------------------------------
        MOV       AL,*-SP[1]            ; [CPU_ALU] |321| 
        CMPB      AL,#128               ; [CPU_ALU] |321| 
        B         $C$L230,LO            ; [CPU_ALU] |321| 
        ; branchcc occurs ; [] |321| 
        SUB       AL,#128               ; [CPU_ALU] |321| 
        ANDB      AL,#0x07              ; [CPU_ALU] |321| 
        ADDB      AL,#8                 ; [CPU_ALU] |321| 
        MOV       T,AL                  ; [CPU_ALU] |321| 
        B         $C$L231,UNC           ; [CPU_ALU] |321| 
        ; branch occurs ; [] |321| 
$C$L230:    
        ADDB      AL,#-32               ; [CPU_ALU] |321| 
        ANDB      AL,#0x07              ; [CPU_ALU] |321| 
        MOV       T,AL                  ; [CPU_ALU] |321| 
$C$L231:    
        MOVB      AL,#1                 ; [CPU_ALU] |321| 
        MOVW      DP,#_PieCtrlRegs+13   ; [CPU_ARAU] 
        LSL       AL,T                  ; [CPU_ALU] |321| 
        OR        @$BLOCKED(_PieCtrlRegs)+13,AL ; [CPU_ALU] |321| 
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c2000ISR.c",line 322,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 322 | asm(" RPT #1 || NOP");               /*wait 1 cycles        */         
;----------------------------------------------------------------------
 RPT #1 || NOP
        B         $C$L269,UNC           ; [CPU_ALU] 
        ; branch occurs ; [] 
$C$L232:    
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c2000ISR.c",line 324,column 10,is_stmt,isa 0
;----------------------------------------------------------------------
; 324 | else if ((7 == irqnumber)                                              
; 325 | ||  (7 == GET_PIE_GROUP(irqnumber)+1))                                 
;----------------------------------------------------------------------
        MOV       AL,*-SP[1]            ; [CPU_ALU] |324| 
        CMPB      AL,#7                 ; [CPU_ALU] |324| 
        B         $C$L235,EQ            ; [CPU_ALU] |324| 
        ; branchcc occurs ; [] |324| 
        CMPB      AL,#128               ; [CPU_ALU] |324| 
        B         $C$L233,LO            ; [CPU_ALU] |324| 
        ; branchcc occurs ; [] |324| 
        SUB       AL,#128               ; [CPU_ALU] |324| 
        B         $C$L234,UNC           ; [CPU_ALU] |324| 
        ; branch occurs ; [] |324| 
$C$L233:    
        ADDB      AL,#-32               ; [CPU_ALU] |324| 
$C$L234:    
        LSR       AL,3                  ; [CPU_ALU] |324| 
        ADDB      AL,#1                 ; [CPU_ALU] |324| 
        CMPB      AL,#7                 ; [CPU_ALU] |324| 
        B         $C$L238,NEQ           ; [CPU_ALU] |324| 
        ; branchcc occurs ; [] |324| 
$C$L235:    
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c2000ISR.c",line 328,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 328 | PieCtrlRegs.PIEIFR7.all |= 1 << GET_PIE_OFFSET_IN_GROUP(irqnumber);    
;----------------------------------------------------------------------
        MOV       AL,*-SP[1]            ; [CPU_ALU] |328| 
        CMPB      AL,#128               ; [CPU_ALU] |328| 
        B         $C$L236,LO            ; [CPU_ALU] |328| 
        ; branchcc occurs ; [] |328| 
        SUB       AL,#128               ; [CPU_ALU] |328| 
        ANDB      AL,#0x07              ; [CPU_ALU] |328| 
        ADDB      AL,#8                 ; [CPU_ALU] |328| 
        MOV       T,AL                  ; [CPU_ALU] |328| 
        B         $C$L237,UNC           ; [CPU_ALU] |328| 
        ; branch occurs ; [] |328| 
$C$L236:    
        ADDB      AL,#-32               ; [CPU_ALU] |328| 
        ANDB      AL,#0x07              ; [CPU_ALU] |328| 
        MOV       T,AL                  ; [CPU_ALU] |328| 
$C$L237:    
        MOVB      AL,#1                 ; [CPU_ALU] |328| 
        MOVW      DP,#_PieCtrlRegs+15   ; [CPU_ARAU] 
        LSL       AL,T                  ; [CPU_ALU] |328| 
        OR        @$BLOCKED(_PieCtrlRegs)+15,AL ; [CPU_ALU] |328| 
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c2000ISR.c",line 329,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 329 | asm(" RPT #1 || NOP");               /*wait 1 cycles        */         
;----------------------------------------------------------------------
 RPT #1 || NOP
        B         $C$L269,UNC           ; [CPU_ALU] 
        ; branch occurs ; [] 
$C$L238:    
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c2000ISR.c",line 331,column 10,is_stmt,isa 0
;----------------------------------------------------------------------
; 331 | else if ((8 == irqnumber)                                              
; 332 | ||  (8 == GET_PIE_GROUP(irqnumber)+1))                                 
;----------------------------------------------------------------------
        MOV       AL,*-SP[1]            ; [CPU_ALU] |331| 
        CMPB      AL,#8                 ; [CPU_ALU] |331| 
        B         $C$L241,EQ            ; [CPU_ALU] |331| 
        ; branchcc occurs ; [] |331| 
        CMPB      AL,#128               ; [CPU_ALU] |331| 
        B         $C$L239,LO            ; [CPU_ALU] |331| 
        ; branchcc occurs ; [] |331| 
        SUB       AL,#128               ; [CPU_ALU] |331| 
        B         $C$L240,UNC           ; [CPU_ALU] |331| 
        ; branch occurs ; [] |331| 
$C$L239:    
        ADDB      AL,#-32               ; [CPU_ALU] |331| 
$C$L240:    
        LSR       AL,3                  ; [CPU_ALU] |331| 
        ADDB      AL,#1                 ; [CPU_ALU] |331| 
        CMPB      AL,#8                 ; [CPU_ALU] |331| 
        B         $C$L244,NEQ           ; [CPU_ALU] |331| 
        ; branchcc occurs ; [] |331| 
$C$L241:    
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c2000ISR.c",line 335,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 335 | PieCtrlRegs.PIEIFR8.all |= 1 << GET_PIE_OFFSET_IN_GROUP(irqnumber);    
;----------------------------------------------------------------------
        MOV       AL,*-SP[1]            ; [CPU_ALU] |335| 
        CMPB      AL,#128               ; [CPU_ALU] |335| 
        B         $C$L242,LO            ; [CPU_ALU] |335| 
        ; branchcc occurs ; [] |335| 
        SUB       AL,#128               ; [CPU_ALU] |335| 
        ANDB      AL,#0x07              ; [CPU_ALU] |335| 
        ADDB      AL,#8                 ; [CPU_ALU] |335| 
        MOV       T,AL                  ; [CPU_ALU] |335| 
        B         $C$L243,UNC           ; [CPU_ALU] |335| 
        ; branch occurs ; [] |335| 
$C$L242:    
        ADDB      AL,#-32               ; [CPU_ALU] |335| 
        ANDB      AL,#0x07              ; [CPU_ALU] |335| 
        MOV       T,AL                  ; [CPU_ALU] |335| 
$C$L243:    
        MOVB      AL,#1                 ; [CPU_ALU] |335| 
        MOVW      DP,#_PieCtrlRegs+17   ; [CPU_ARAU] 
        LSL       AL,T                  ; [CPU_ALU] |335| 
        OR        @$BLOCKED(_PieCtrlRegs)+17,AL ; [CPU_ALU] |335| 
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c2000ISR.c",line 336,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 336 | asm(" RPT #1 || NOP");               /*wait 1 cycles        */         
;----------------------------------------------------------------------
 RPT #1 || NOP
        B         $C$L269,UNC           ; [CPU_ALU] 
        ; branch occurs ; [] 
$C$L244:    
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c2000ISR.c",line 338,column 10,is_stmt,isa 0
;----------------------------------------------------------------------
; 338 | else if ((9 == irqnumber)                                              
; 339 | ||  (9 == GET_PIE_GROUP(irqnumber)+1))                                 
;----------------------------------------------------------------------
        MOV       AL,*-SP[1]            ; [CPU_ALU] |338| 
        CMPB      AL,#9                 ; [CPU_ALU] |338| 
        B         $C$L247,EQ            ; [CPU_ALU] |338| 
        ; branchcc occurs ; [] |338| 
        CMPB      AL,#128               ; [CPU_ALU] |338| 
        B         $C$L245,LO            ; [CPU_ALU] |338| 
        ; branchcc occurs ; [] |338| 
        SUB       AL,#128               ; [CPU_ALU] |338| 
        B         $C$L246,UNC           ; [CPU_ALU] |338| 
        ; branch occurs ; [] |338| 
$C$L245:    
        ADDB      AL,#-32               ; [CPU_ALU] |338| 
$C$L246:    
        LSR       AL,3                  ; [CPU_ALU] |338| 
        ADDB      AL,#1                 ; [CPU_ALU] |338| 
        CMPB      AL,#9                 ; [CPU_ALU] |338| 
        B         $C$L250,NEQ           ; [CPU_ALU] |338| 
        ; branchcc occurs ; [] |338| 
$C$L247:    
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c2000ISR.c",line 342,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 342 | PieCtrlRegs.PIEIFR9.all |= 1 << GET_PIE_OFFSET_IN_GROUP(irqnumber);    
;----------------------------------------------------------------------
        MOV       AL,*-SP[1]            ; [CPU_ALU] |342| 
        CMPB      AL,#128               ; [CPU_ALU] |342| 
        B         $C$L248,LO            ; [CPU_ALU] |342| 
        ; branchcc occurs ; [] |342| 
        SUB       AL,#128               ; [CPU_ALU] |342| 
        ANDB      AL,#0x07              ; [CPU_ALU] |342| 
        ADDB      AL,#8                 ; [CPU_ALU] |342| 
        MOV       T,AL                  ; [CPU_ALU] |342| 
        B         $C$L249,UNC           ; [CPU_ALU] |342| 
        ; branch occurs ; [] |342| 
$C$L248:    
        ADDB      AL,#-32               ; [CPU_ALU] |342| 
        ANDB      AL,#0x07              ; [CPU_ALU] |342| 
        MOV       T,AL                  ; [CPU_ALU] |342| 
$C$L249:    
        MOVB      AL,#1                 ; [CPU_ALU] |342| 
        MOVW      DP,#_PieCtrlRegs+19   ; [CPU_ARAU] 
        LSL       AL,T                  ; [CPU_ALU] |342| 
        OR        @$BLOCKED(_PieCtrlRegs)+19,AL ; [CPU_ALU] |342| 
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c2000ISR.c",line 343,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 343 | asm(" RPT #1 || NOP");               /*wait 1 cycles        */         
;----------------------------------------------------------------------
 RPT #1 || NOP
        B         $C$L269,UNC           ; [CPU_ALU] 
        ; branch occurs ; [] 
$C$L250:    
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c2000ISR.c",line 345,column 10,is_stmt,isa 0
;----------------------------------------------------------------------
; 345 | else if ((10 == irqnumber)                                             
; 346 | ||  (10 == GET_PIE_GROUP(irqnumber)+1))                                
;----------------------------------------------------------------------
        MOV       AL,*-SP[1]            ; [CPU_ALU] |345| 
        CMPB      AL,#10                ; [CPU_ALU] |345| 
        B         $C$L253,EQ            ; [CPU_ALU] |345| 
        ; branchcc occurs ; [] |345| 
        CMPB      AL,#128               ; [CPU_ALU] |345| 
        B         $C$L251,LO            ; [CPU_ALU] |345| 
        ; branchcc occurs ; [] |345| 
        SUB       AL,#128               ; [CPU_ALU] |345| 
        B         $C$L252,UNC           ; [CPU_ALU] |345| 
        ; branch occurs ; [] |345| 
$C$L251:    
        ADDB      AL,#-32               ; [CPU_ALU] |345| 
$C$L252:    
        LSR       AL,3                  ; [CPU_ALU] |345| 
        ADDB      AL,#1                 ; [CPU_ALU] |345| 
        CMPB      AL,#10                ; [CPU_ALU] |345| 
        B         $C$L256,NEQ           ; [CPU_ALU] |345| 
        ; branchcc occurs ; [] |345| 
$C$L253:    
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c2000ISR.c",line 349,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 349 | PieCtrlRegs.PIEIFR10.all |= 1 << GET_PIE_OFFSET_IN_GROUP(irqnumber);   
;----------------------------------------------------------------------
        MOV       AL,*-SP[1]            ; [CPU_ALU] |349| 
        CMPB      AL,#128               ; [CPU_ALU] |349| 
        B         $C$L254,LO            ; [CPU_ALU] |349| 
        ; branchcc occurs ; [] |349| 
        SUB       AL,#128               ; [CPU_ALU] |349| 
        ANDB      AL,#0x07              ; [CPU_ALU] |349| 
        ADDB      AL,#8                 ; [CPU_ALU] |349| 
        MOV       T,AL                  ; [CPU_ALU] |349| 
        B         $C$L255,UNC           ; [CPU_ALU] |349| 
        ; branch occurs ; [] |349| 
$C$L254:    
        ADDB      AL,#-32               ; [CPU_ALU] |349| 
        ANDB      AL,#0x07              ; [CPU_ALU] |349| 
        MOV       T,AL                  ; [CPU_ALU] |349| 
$C$L255:    
        MOVB      AL,#1                 ; [CPU_ALU] |349| 
        MOVW      DP,#_PieCtrlRegs+21   ; [CPU_ARAU] 
        LSL       AL,T                  ; [CPU_ALU] |349| 
        OR        @$BLOCKED(_PieCtrlRegs)+21,AL ; [CPU_ALU] |349| 
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c2000ISR.c",line 350,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 350 | asm(" RPT #1 || NOP");               /*wait 1 cycles        */         
;----------------------------------------------------------------------
 RPT #1 || NOP
        B         $C$L269,UNC           ; [CPU_ALU] 
        ; branch occurs ; [] 
$C$L256:    
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c2000ISR.c",line 352,column 10,is_stmt,isa 0
;----------------------------------------------------------------------
; 352 | else if ((11 == irqnumber)                                             
; 353 | ||  (11 == GET_PIE_GROUP(irqnumber)+1))                                
;----------------------------------------------------------------------
        MOV       AL,*-SP[1]            ; [CPU_ALU] |352| 
        CMPB      AL,#11                ; [CPU_ALU] |352| 
        B         $C$L259,EQ            ; [CPU_ALU] |352| 
        ; branchcc occurs ; [] |352| 
        CMPB      AL,#128               ; [CPU_ALU] |352| 
        B         $C$L257,LO            ; [CPU_ALU] |352| 
        ; branchcc occurs ; [] |352| 
        SUB       AL,#128               ; [CPU_ALU] |352| 
        B         $C$L258,UNC           ; [CPU_ALU] |352| 
        ; branch occurs ; [] |352| 
$C$L257:    
        ADDB      AL,#-32               ; [CPU_ALU] |352| 
$C$L258:    
        LSR       AL,3                  ; [CPU_ALU] |352| 
        ADDB      AL,#1                 ; [CPU_ALU] |352| 
        CMPB      AL,#11                ; [CPU_ALU] |352| 
        B         $C$L262,NEQ           ; [CPU_ALU] |352| 
        ; branchcc occurs ; [] |352| 
$C$L259:    
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c2000ISR.c",line 356,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 356 | PieCtrlRegs.PIEIFR11.all |= 1 << GET_PIE_OFFSET_IN_GROUP(irqnumber);   
;----------------------------------------------------------------------
        MOV       AL,*-SP[1]            ; [CPU_ALU] |356| 
        CMPB      AL,#128               ; [CPU_ALU] |356| 
        B         $C$L260,LO            ; [CPU_ALU] |356| 
        ; branchcc occurs ; [] |356| 
        SUB       AL,#128               ; [CPU_ALU] |356| 
        ANDB      AL,#0x07              ; [CPU_ALU] |356| 
        ADDB      AL,#8                 ; [CPU_ALU] |356| 
        MOV       T,AL                  ; [CPU_ALU] |356| 
        B         $C$L261,UNC           ; [CPU_ALU] |356| 
        ; branch occurs ; [] |356| 
$C$L260:    
        ADDB      AL,#-32               ; [CPU_ALU] |356| 
        ANDB      AL,#0x07              ; [CPU_ALU] |356| 
        MOV       T,AL                  ; [CPU_ALU] |356| 
$C$L261:    
        MOVB      AL,#1                 ; [CPU_ALU] |356| 
        MOVW      DP,#_PieCtrlRegs+23   ; [CPU_ARAU] 
        LSL       AL,T                  ; [CPU_ALU] |356| 
        OR        @$BLOCKED(_PieCtrlRegs)+23,AL ; [CPU_ALU] |356| 
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c2000ISR.c",line 357,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 357 | asm(" RPT #1 || NOP");               /*wait 1 cycles        */         
;----------------------------------------------------------------------
 RPT #1 || NOP
        B         $C$L269,UNC           ; [CPU_ALU] 
        ; branch occurs ; [] 
$C$L262:    
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c2000ISR.c",line 359,column 10,is_stmt,isa 0
;----------------------------------------------------------------------
; 359 | else if ((12 == irqnumber)                                             
; 360 | ||  (12 == GET_PIE_GROUP(irqnumber)+1))                                
;----------------------------------------------------------------------
        MOV       AL,*-SP[1]            ; [CPU_ALU] |359| 
        CMPB      AL,#12                ; [CPU_ALU] |359| 
        B         $C$L265,EQ            ; [CPU_ALU] |359| 
        ; branchcc occurs ; [] |359| 
        CMPB      AL,#128               ; [CPU_ALU] |359| 
        B         $C$L263,LO            ; [CPU_ALU] |359| 
        ; branchcc occurs ; [] |359| 
        SUB       AL,#128               ; [CPU_ALU] |359| 
        B         $C$L264,UNC           ; [CPU_ALU] |359| 
        ; branch occurs ; [] |359| 
$C$L263:    
        ADDB      AL,#-32               ; [CPU_ALU] |359| 
$C$L264:    
        LSR       AL,3                  ; [CPU_ALU] |359| 
        ADDB      AL,#1                 ; [CPU_ALU] |359| 
        CMPB      AL,#12                ; [CPU_ALU] |359| 
        B         $C$L268,NEQ           ; [CPU_ALU] |359| 
        ; branchcc occurs ; [] |359| 
$C$L265:    
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c2000ISR.c",line 363,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 363 | PieCtrlRegs.PIEIFR12.all |= 1 << GET_PIE_OFFSET_IN_GROUP(irqnumber);   
;----------------------------------------------------------------------
        MOV       AL,*-SP[1]            ; [CPU_ALU] |363| 
        CMPB      AL,#128               ; [CPU_ALU] |363| 
        B         $C$L266,LO            ; [CPU_ALU] |363| 
        ; branchcc occurs ; [] |363| 
        SUB       AL,#128               ; [CPU_ALU] |363| 
        ANDB      AL,#0x07              ; [CPU_ALU] |363| 
        ADDB      AL,#8                 ; [CPU_ALU] |363| 
        MOV       T,AL                  ; [CPU_ALU] |363| 
        B         $C$L267,UNC           ; [CPU_ALU] |363| 
        ; branch occurs ; [] |363| 
$C$L266:    
        ADDB      AL,#-32               ; [CPU_ALU] |363| 
        ANDB      AL,#0x07              ; [CPU_ALU] |363| 
        MOV       T,AL                  ; [CPU_ALU] |363| 
$C$L267:    
        MOVB      AL,#1                 ; [CPU_ALU] |363| 
        MOVW      DP,#_PieCtrlRegs+25   ; [CPU_ARAU] 
        LSL       AL,T                  ; [CPU_ALU] |363| 
        OR        @$BLOCKED(_PieCtrlRegs)+25,AL ; [CPU_ALU] |363| 
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c2000ISR.c",line 364,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 364 | asm(" RPT #1 || NOP");               /*wait 1 cycles        */         
;----------------------------------------------------------------------
 RPT #1 || NOP
        B         $C$L269,UNC           ; [CPU_ALU] 
        ; branch occurs ; [] 
$C$L268:    
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c2000ISR.c",line 367,column 10,is_stmt,isa 0
;----------------------------------------------------------------------
; 367 | else if (13 == irqnumber)                                              
;----------------------------------------------------------------------
        MOV       AL,*-SP[1]            ; [CPU_ALU] |367| 
        CMPB      AL,#13                ; [CPU_ALU] |367| 
        B         $C$L269,EQ            ; [CPU_ALU] |367| 
        ; branchcc occurs ; [] |367| 
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c2000ISR.c",line 371,column 10,is_stmt,isa 0
;----------------------------------------------------------------------
; 371 | else if (14 == irqnumber)                                              
;----------------------------------------------------------------------
        CMPB      AL,#14                ; [CPU_ALU] |371| 
        B         $C$L269,EQ            ; [CPU_ALU] |371| 
        ; branchcc occurs ; [] |371| 
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c2000ISR.c",line 375,column 10,is_stmt,isa 0
;----------------------------------------------------------------------
; 375 | else if (15 == irqnumber)                                              
;----------------------------------------------------------------------
        CMPB      AL,#15                ; [CPU_ALU] |375| 
        B         $C$L269,EQ            ; [CPU_ALU] |375| 
        ; branchcc occurs ; [] |375| 
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c2000ISR.c",line 379,column 10,is_stmt,isa 0
;----------------------------------------------------------------------
; 379 | else if (16 == irqnumber)                                              
;----------------------------------------------------------------------
        CMPB      AL,#16                ; [CPU_ALU] |379| 
        B         $C$L269,EQ            ; [CPU_ALU] |379| 
        ; branchcc occurs ; [] |379| 
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c2000ISR.c",line 383,column 10,is_stmt,isa 0
;----------------------------------------------------------------------
; 383 | else if (17 == irqnumber)                                              
;----------------------------------------------------------------------
        CMPB      AL,#17                ; [CPU_ALU] |383| 
        B         $C$L269,EQ            ; [CPU_ALU] |383| 
        ; branchcc occurs ; [] |383| 
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c2000ISR.c",line 387,column 10,is_stmt,isa 0
;----------------------------------------------------------------------
; 387 | else if (18 == irqnumber)                                              
;----------------------------------------------------------------------
        CMPB      AL,#18                ; [CPU_ALU] |387| 
        B         $C$L269,EQ            ; [CPU_ALU] |387| 
        ; branchcc occurs ; [] |387| 
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c2000ISR.c",line 391,column 10,is_stmt,isa 0
;----------------------------------------------------------------------
; 391 | else if ((irqnumber >= 19) && (irqnumber <= 31))                       
; 394 | else                                                                   
;----------------------------------------------------------------------
        CMPB      AL,#19                ; [CPU_ALU] |391| 
        B         $C$L269,LO            ; [CPU_ALU] |391| 
        ; branchcc occurs ; [] |391| 
        CMPB      AL,#31                ; [CPU_ALU] |391| 
        B         $C$L269,HI            ; [CPU_ALU] |391| 
        ; branchcc occurs ; [] |391| 
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c2000ISR.c",line 398,column 1,is_stmt,isa 0
$C$L269:    
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
        SPM       #0                    ; [CPU_ALU] 
$C$DW$23	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$23, DW_AT_low_pc(0x00)
	.dwattr $C$DW$23, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$20, DW_AT_TI_end_file("D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c2000ISR.c")
	.dwattr $C$DW$20, DW_AT_TI_end_line(0x18e)
	.dwattr $C$DW$20, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$20

	.sect	".text"
	.clink
	.global	_HWI_TIC28x_AcknowledgeIrq

$C$DW$24	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$24, DW_AT_name("HWI_TIC28x_AcknowledgeIrq")
	.dwattr $C$DW$24, DW_AT_low_pc(_HWI_TIC28x_AcknowledgeIrq)
	.dwattr $C$DW$24, DW_AT_high_pc(0x00)
	.dwattr $C$DW$24, DW_AT_TI_symbol_name("_HWI_TIC28x_AcknowledgeIrq")
	.dwattr $C$DW$24, DW_AT_external
	.dwattr $C$DW$24, DW_AT_TI_begin_file("D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c2000ISR.c")
	.dwattr $C$DW$24, DW_AT_TI_begin_line(0x190)
	.dwattr $C$DW$24, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$24, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c2000ISR.c",line 401,column 1,is_stmt,address _HWI_TIC28x_AcknowledgeIrq,isa 0

	.dwfde $C$DW$CIE, _HWI_TIC28x_AcknowledgeIrq
$C$DW$25	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$25, DW_AT_name("irqnumber")
	.dwattr $C$DW$25, DW_AT_TI_symbol_name("_irqnumber")
	.dwattr $C$DW$25, DW_AT_type(*$C$DW$T$106)
	.dwattr $C$DW$25, DW_AT_location[DW_OP_reg0]

;----------------------------------------------------------------------
; 400 | void HWI_TIC28x_AcknowledgeIrq(uint16_T irqnumber)                     
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _HWI_TIC28x_AcknowledgeIrq    FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  2 Auto,  0 SOE     *
;***************************************************************

_HWI_TIC28x_AcknowledgeIrq:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
$C$DW$26	.dwtag  DW_TAG_variable
	.dwattr $C$DW$26, DW_AT_name("irqnumber")
	.dwattr $C$DW$26, DW_AT_TI_symbol_name("_irqnumber")
	.dwattr $C$DW$26, DW_AT_type(*$C$DW$T$106)
	.dwattr $C$DW$26, DW_AT_location[DW_OP_breg20 -1]

$C$DW$27	.dwtag  DW_TAG_variable
	.dwattr $C$DW$27, DW_AT_name("intrgrp")
	.dwattr $C$DW$27, DW_AT_TI_symbol_name("_intrgrp")
	.dwattr $C$DW$27, DW_AT_type(*$C$DW$T$106)
	.dwattr $C$DW$27, DW_AT_location[DW_OP_breg20 -2]

        MOV       *-SP[1],AL            ; [CPU_ALU] |401| 
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c2000ISR.c",line 403,column 22,is_stmt,isa 0
;----------------------------------------------------------------------
; 403 | uint16_T intrgrp = GET_PIE_GROUP(irqnumber)+1;                         
;----------------------------------------------------------------------
        CMPB      AL,#128               ; [CPU_ALU] |403| 
        B         $C$L270,LO            ; [CPU_ALU] |403| 
        ; branchcc occurs ; [] |403| 
        SUB       AL,#128               ; [CPU_ALU] |403| 
        B         $C$L271,UNC           ; [CPU_ALU] |403| 
        ; branch occurs ; [] |403| 
$C$L270:    
        ADDB      AL,#-32               ; [CPU_ALU] |403| 
$C$L271:    
        LSR       AL,3                  ; [CPU_ALU] |403| 
        ADDB      AL,#1                 ; [CPU_ALU] |403| 
        MOV       *-SP[2],AL            ; [CPU_ALU] |403| 
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c2000ISR.c",line 405,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 405 | if ((irqnumber>=1 && irqnumber<=12) || (intrgrp>=1 && intrgrp <=12))   
;----------------------------------------------------------------------
        MOV       AL,*-SP[1]            ; [CPU_ALU] |405| 
        B         $C$L272,EQ            ; [CPU_ALU] |405| 
        ; branchcc occurs ; [] |405| 
        CMPB      AL,#12                ; [CPU_ALU] |405| 
        B         $C$L273,LOS           ; [CPU_ALU] |405| 
        ; branchcc occurs ; [] |405| 
$C$L272:    
        MOV       AL,*-SP[2]            ; [CPU_ALU] |405| 
        B         $C$L274,EQ            ; [CPU_ALU] |405| 
        ; branchcc occurs ; [] |405| 
        CMPB      AL,#12                ; [CPU_ALU] |405| 
        B         $C$L274,HI            ; [CPU_ALU] |405| 
        ; branchcc occurs ; [] |405| 
$C$L273:    
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c2000ISR.c",line 407,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 407 | PieCtrlRegs.PIEACK.all = 1 << (intrgrp-1);                             
;----------------------------------------------------------------------
        MOV       AL,*-SP[2]            ; [CPU_ALU] |407| 
        MOVW      DP,#_PieCtrlRegs+1    ; [CPU_ARAU] 
        ADDB      AL,#-1                ; [CPU_ALU] |407| 
        MOV       T,AL                  ; [CPU_ALU] |407| 
        MOVB      AL,#1                 ; [CPU_ALU] |407| 
        LSL       AL,T                  ; [CPU_ALU] |407| 
        MOV       @$BLOCKED(_PieCtrlRegs)+1,AL ; [CPU_ALU] |407| 
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c2000ISR.c",line 409,column 1,is_stmt,isa 0
$C$L274:    
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$28	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$28, DW_AT_low_pc(0x00)
	.dwattr $C$DW$28, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$24, DW_AT_TI_end_file("D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c2000ISR.c")
	.dwattr $C$DW$24, DW_AT_TI_end_line(0x199)
	.dwattr $C$DW$24, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$24

;**************************************************************
;* UNDEFINED EXTERNAL REFERENCES                              *
;**************************************************************
	.global	_CIPC0_INT_fptr
	.global	_PieCtrlRegs
	.global	_PieVectTable

;***************************************************************
;* TYPE INFORMATION                                            *
;***************************************************************

$C$DW$T$20	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$20, DW_AT_name("PIEACK_BITS")
	.dwattr $C$DW$T$20, DW_AT_byte_size(0x01)
$C$DW$29	.dwtag  DW_TAG_member
	.dwattr $C$DW$29, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$29, DW_AT_name("ACK1")
	.dwattr $C$DW$29, DW_AT_TI_symbol_name("_ACK1")
	.dwattr $C$DW$29, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$29, DW_AT_bit_size(0x01)
	.dwattr $C$DW$29, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$29, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$30	.dwtag  DW_TAG_member
	.dwattr $C$DW$30, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$30, DW_AT_name("ACK2")
	.dwattr $C$DW$30, DW_AT_TI_symbol_name("_ACK2")
	.dwattr $C$DW$30, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$30, DW_AT_bit_size(0x01)
	.dwattr $C$DW$30, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$30, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$31	.dwtag  DW_TAG_member
	.dwattr $C$DW$31, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$31, DW_AT_name("ACK3")
	.dwattr $C$DW$31, DW_AT_TI_symbol_name("_ACK3")
	.dwattr $C$DW$31, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$31, DW_AT_bit_size(0x01)
	.dwattr $C$DW$31, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$31, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$32	.dwtag  DW_TAG_member
	.dwattr $C$DW$32, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$32, DW_AT_name("ACK4")
	.dwattr $C$DW$32, DW_AT_TI_symbol_name("_ACK4")
	.dwattr $C$DW$32, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$32, DW_AT_bit_size(0x01)
	.dwattr $C$DW$32, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$32, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$33	.dwtag  DW_TAG_member
	.dwattr $C$DW$33, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$33, DW_AT_name("ACK5")
	.dwattr $C$DW$33, DW_AT_TI_symbol_name("_ACK5")
	.dwattr $C$DW$33, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$33, DW_AT_bit_size(0x01)
	.dwattr $C$DW$33, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$33, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$34	.dwtag  DW_TAG_member
	.dwattr $C$DW$34, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$34, DW_AT_name("ACK6")
	.dwattr $C$DW$34, DW_AT_TI_symbol_name("_ACK6")
	.dwattr $C$DW$34, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$34, DW_AT_bit_size(0x01)
	.dwattr $C$DW$34, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$34, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$35	.dwtag  DW_TAG_member
	.dwattr $C$DW$35, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$35, DW_AT_name("ACK7")
	.dwattr $C$DW$35, DW_AT_TI_symbol_name("_ACK7")
	.dwattr $C$DW$35, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$35, DW_AT_bit_size(0x01)
	.dwattr $C$DW$35, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$35, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$36	.dwtag  DW_TAG_member
	.dwattr $C$DW$36, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$36, DW_AT_name("ACK8")
	.dwattr $C$DW$36, DW_AT_TI_symbol_name("_ACK8")
	.dwattr $C$DW$36, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$36, DW_AT_bit_size(0x01)
	.dwattr $C$DW$36, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$36, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$37	.dwtag  DW_TAG_member
	.dwattr $C$DW$37, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$37, DW_AT_name("ACK9")
	.dwattr $C$DW$37, DW_AT_TI_symbol_name("_ACK9")
	.dwattr $C$DW$37, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$37, DW_AT_bit_size(0x01)
	.dwattr $C$DW$37, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$37, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$38	.dwtag  DW_TAG_member
	.dwattr $C$DW$38, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$38, DW_AT_name("ACK10")
	.dwattr $C$DW$38, DW_AT_TI_symbol_name("_ACK10")
	.dwattr $C$DW$38, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$38, DW_AT_bit_size(0x01)
	.dwattr $C$DW$38, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$38, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$39	.dwtag  DW_TAG_member
	.dwattr $C$DW$39, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$39, DW_AT_name("ACK11")
	.dwattr $C$DW$39, DW_AT_TI_symbol_name("_ACK11")
	.dwattr $C$DW$39, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$39, DW_AT_bit_size(0x01)
	.dwattr $C$DW$39, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$39, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$40	.dwtag  DW_TAG_member
	.dwattr $C$DW$40, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$40, DW_AT_name("ACK12")
	.dwattr $C$DW$40, DW_AT_TI_symbol_name("_ACK12")
	.dwattr $C$DW$40, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$40, DW_AT_bit_size(0x01)
	.dwattr $C$DW$40, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$40, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$41	.dwtag  DW_TAG_member
	.dwattr $C$DW$41, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$41, DW_AT_name("rsvd1")
	.dwattr $C$DW$41, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$41, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$41, DW_AT_bit_size(0x04)
	.dwattr $C$DW$41, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$41, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$20


$C$DW$T$21	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$21, DW_AT_name("PIEACK_REG")
	.dwattr $C$DW$T$21, DW_AT_byte_size(0x01)
$C$DW$42	.dwtag  DW_TAG_member
	.dwattr $C$DW$42, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$42, DW_AT_name("all")
	.dwattr $C$DW$42, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$42, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$42, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$43	.dwtag  DW_TAG_member
	.dwattr $C$DW$43, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$43, DW_AT_name("bit")
	.dwattr $C$DW$43, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$43, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$43, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$21


$C$DW$T$22	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$22, DW_AT_name("PIECTRL_BITS")
	.dwattr $C$DW$T$22, DW_AT_byte_size(0x01)
$C$DW$44	.dwtag  DW_TAG_member
	.dwattr $C$DW$44, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$44, DW_AT_name("ENPIE")
	.dwattr $C$DW$44, DW_AT_TI_symbol_name("_ENPIE")
	.dwattr $C$DW$44, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$44, DW_AT_bit_size(0x01)
	.dwattr $C$DW$44, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$44, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$45	.dwtag  DW_TAG_member
	.dwattr $C$DW$45, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$45, DW_AT_name("PIEVECT")
	.dwattr $C$DW$45, DW_AT_TI_symbol_name("_PIEVECT")
	.dwattr $C$DW$45, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$45, DW_AT_bit_size(0x0f)
	.dwattr $C$DW$45, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$45, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$22


$C$DW$T$23	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$23, DW_AT_name("PIECTRL_REG")
	.dwattr $C$DW$T$23, DW_AT_byte_size(0x01)
$C$DW$46	.dwtag  DW_TAG_member
	.dwattr $C$DW$46, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$46, DW_AT_name("all")
	.dwattr $C$DW$46, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$46, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$46, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$47	.dwtag  DW_TAG_member
	.dwattr $C$DW$47, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$47, DW_AT_name("bit")
	.dwattr $C$DW$47, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$47, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$47, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$23


$C$DW$T$24	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$24, DW_AT_name("PIEIER10_BITS")
	.dwattr $C$DW$T$24, DW_AT_byte_size(0x01)
$C$DW$48	.dwtag  DW_TAG_member
	.dwattr $C$DW$48, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$48, DW_AT_name("INTx1")
	.dwattr $C$DW$48, DW_AT_TI_symbol_name("_INTx1")
	.dwattr $C$DW$48, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$48, DW_AT_bit_size(0x01)
	.dwattr $C$DW$48, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$48, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$49	.dwtag  DW_TAG_member
	.dwattr $C$DW$49, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$49, DW_AT_name("INTx2")
	.dwattr $C$DW$49, DW_AT_TI_symbol_name("_INTx2")
	.dwattr $C$DW$49, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$49, DW_AT_bit_size(0x01)
	.dwattr $C$DW$49, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$49, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$50	.dwtag  DW_TAG_member
	.dwattr $C$DW$50, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$50, DW_AT_name("INTx3")
	.dwattr $C$DW$50, DW_AT_TI_symbol_name("_INTx3")
	.dwattr $C$DW$50, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$50, DW_AT_bit_size(0x01)
	.dwattr $C$DW$50, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$50, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$51	.dwtag  DW_TAG_member
	.dwattr $C$DW$51, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$51, DW_AT_name("INTx4")
	.dwattr $C$DW$51, DW_AT_TI_symbol_name("_INTx4")
	.dwattr $C$DW$51, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$51, DW_AT_bit_size(0x01)
	.dwattr $C$DW$51, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$51, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$52	.dwtag  DW_TAG_member
	.dwattr $C$DW$52, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$52, DW_AT_name("INTx5")
	.dwattr $C$DW$52, DW_AT_TI_symbol_name("_INTx5")
	.dwattr $C$DW$52, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$52, DW_AT_bit_size(0x01)
	.dwattr $C$DW$52, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$52, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$53	.dwtag  DW_TAG_member
	.dwattr $C$DW$53, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$53, DW_AT_name("INTx6")
	.dwattr $C$DW$53, DW_AT_TI_symbol_name("_INTx6")
	.dwattr $C$DW$53, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$53, DW_AT_bit_size(0x01)
	.dwattr $C$DW$53, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$53, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$54	.dwtag  DW_TAG_member
	.dwattr $C$DW$54, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$54, DW_AT_name("INTx7")
	.dwattr $C$DW$54, DW_AT_TI_symbol_name("_INTx7")
	.dwattr $C$DW$54, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$54, DW_AT_bit_size(0x01)
	.dwattr $C$DW$54, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$54, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$55	.dwtag  DW_TAG_member
	.dwattr $C$DW$55, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$55, DW_AT_name("INTx8")
	.dwattr $C$DW$55, DW_AT_TI_symbol_name("_INTx8")
	.dwattr $C$DW$55, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$55, DW_AT_bit_size(0x01)
	.dwattr $C$DW$55, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$55, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$56	.dwtag  DW_TAG_member
	.dwattr $C$DW$56, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$56, DW_AT_name("INTx9")
	.dwattr $C$DW$56, DW_AT_TI_symbol_name("_INTx9")
	.dwattr $C$DW$56, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$56, DW_AT_bit_size(0x01)
	.dwattr $C$DW$56, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$56, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$57	.dwtag  DW_TAG_member
	.dwattr $C$DW$57, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$57, DW_AT_name("INTx10")
	.dwattr $C$DW$57, DW_AT_TI_symbol_name("_INTx10")
	.dwattr $C$DW$57, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$57, DW_AT_bit_size(0x01)
	.dwattr $C$DW$57, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$57, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$58	.dwtag  DW_TAG_member
	.dwattr $C$DW$58, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$58, DW_AT_name("INTx11")
	.dwattr $C$DW$58, DW_AT_TI_symbol_name("_INTx11")
	.dwattr $C$DW$58, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$58, DW_AT_bit_size(0x01)
	.dwattr $C$DW$58, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$58, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$59	.dwtag  DW_TAG_member
	.dwattr $C$DW$59, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$59, DW_AT_name("INTx12")
	.dwattr $C$DW$59, DW_AT_TI_symbol_name("_INTx12")
	.dwattr $C$DW$59, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$59, DW_AT_bit_size(0x01)
	.dwattr $C$DW$59, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$59, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$60	.dwtag  DW_TAG_member
	.dwattr $C$DW$60, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$60, DW_AT_name("INTx13")
	.dwattr $C$DW$60, DW_AT_TI_symbol_name("_INTx13")
	.dwattr $C$DW$60, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$60, DW_AT_bit_size(0x01)
	.dwattr $C$DW$60, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$60, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$61	.dwtag  DW_TAG_member
	.dwattr $C$DW$61, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$61, DW_AT_name("INTx14")
	.dwattr $C$DW$61, DW_AT_TI_symbol_name("_INTx14")
	.dwattr $C$DW$61, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$61, DW_AT_bit_size(0x01)
	.dwattr $C$DW$61, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$61, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$62	.dwtag  DW_TAG_member
	.dwattr $C$DW$62, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$62, DW_AT_name("INTx15")
	.dwattr $C$DW$62, DW_AT_TI_symbol_name("_INTx15")
	.dwattr $C$DW$62, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$62, DW_AT_bit_size(0x01)
	.dwattr $C$DW$62, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$62, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$63	.dwtag  DW_TAG_member
	.dwattr $C$DW$63, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$63, DW_AT_name("INTx16")
	.dwattr $C$DW$63, DW_AT_TI_symbol_name("_INTx16")
	.dwattr $C$DW$63, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$63, DW_AT_bit_size(0x01)
	.dwattr $C$DW$63, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$63, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$24


$C$DW$T$25	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$25, DW_AT_name("PIEIER10_REG")
	.dwattr $C$DW$T$25, DW_AT_byte_size(0x01)
$C$DW$64	.dwtag  DW_TAG_member
	.dwattr $C$DW$64, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$64, DW_AT_name("all")
	.dwattr $C$DW$64, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$64, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$64, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$65	.dwtag  DW_TAG_member
	.dwattr $C$DW$65, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$65, DW_AT_name("bit")
	.dwattr $C$DW$65, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$65, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$65, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$25


$C$DW$T$26	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$26, DW_AT_name("PIEIER11_BITS")
	.dwattr $C$DW$T$26, DW_AT_byte_size(0x01)
$C$DW$66	.dwtag  DW_TAG_member
	.dwattr $C$DW$66, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$66, DW_AT_name("INTx1")
	.dwattr $C$DW$66, DW_AT_TI_symbol_name("_INTx1")
	.dwattr $C$DW$66, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$66, DW_AT_bit_size(0x01)
	.dwattr $C$DW$66, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$66, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$67	.dwtag  DW_TAG_member
	.dwattr $C$DW$67, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$67, DW_AT_name("INTx2")
	.dwattr $C$DW$67, DW_AT_TI_symbol_name("_INTx2")
	.dwattr $C$DW$67, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$67, DW_AT_bit_size(0x01)
	.dwattr $C$DW$67, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$67, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$68	.dwtag  DW_TAG_member
	.dwattr $C$DW$68, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$68, DW_AT_name("INTx3")
	.dwattr $C$DW$68, DW_AT_TI_symbol_name("_INTx3")
	.dwattr $C$DW$68, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$68, DW_AT_bit_size(0x01)
	.dwattr $C$DW$68, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$68, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$69	.dwtag  DW_TAG_member
	.dwattr $C$DW$69, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$69, DW_AT_name("INTx4")
	.dwattr $C$DW$69, DW_AT_TI_symbol_name("_INTx4")
	.dwattr $C$DW$69, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$69, DW_AT_bit_size(0x01)
	.dwattr $C$DW$69, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$69, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$70	.dwtag  DW_TAG_member
	.dwattr $C$DW$70, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$70, DW_AT_name("INTx5")
	.dwattr $C$DW$70, DW_AT_TI_symbol_name("_INTx5")
	.dwattr $C$DW$70, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$70, DW_AT_bit_size(0x01)
	.dwattr $C$DW$70, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$70, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$71	.dwtag  DW_TAG_member
	.dwattr $C$DW$71, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$71, DW_AT_name("INTx6")
	.dwattr $C$DW$71, DW_AT_TI_symbol_name("_INTx6")
	.dwattr $C$DW$71, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$71, DW_AT_bit_size(0x01)
	.dwattr $C$DW$71, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$71, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$72	.dwtag  DW_TAG_member
	.dwattr $C$DW$72, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$72, DW_AT_name("INTx7")
	.dwattr $C$DW$72, DW_AT_TI_symbol_name("_INTx7")
	.dwattr $C$DW$72, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$72, DW_AT_bit_size(0x01)
	.dwattr $C$DW$72, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$72, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$73	.dwtag  DW_TAG_member
	.dwattr $C$DW$73, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$73, DW_AT_name("INTx8")
	.dwattr $C$DW$73, DW_AT_TI_symbol_name("_INTx8")
	.dwattr $C$DW$73, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$73, DW_AT_bit_size(0x01)
	.dwattr $C$DW$73, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$73, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$74	.dwtag  DW_TAG_member
	.dwattr $C$DW$74, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$74, DW_AT_name("INTx9")
	.dwattr $C$DW$74, DW_AT_TI_symbol_name("_INTx9")
	.dwattr $C$DW$74, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$74, DW_AT_bit_size(0x01)
	.dwattr $C$DW$74, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$74, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$75	.dwtag  DW_TAG_member
	.dwattr $C$DW$75, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$75, DW_AT_name("INTx10")
	.dwattr $C$DW$75, DW_AT_TI_symbol_name("_INTx10")
	.dwattr $C$DW$75, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$75, DW_AT_bit_size(0x01)
	.dwattr $C$DW$75, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$75, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$76	.dwtag  DW_TAG_member
	.dwattr $C$DW$76, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$76, DW_AT_name("INTx11")
	.dwattr $C$DW$76, DW_AT_TI_symbol_name("_INTx11")
	.dwattr $C$DW$76, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$76, DW_AT_bit_size(0x01)
	.dwattr $C$DW$76, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$76, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$77	.dwtag  DW_TAG_member
	.dwattr $C$DW$77, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$77, DW_AT_name("INTx12")
	.dwattr $C$DW$77, DW_AT_TI_symbol_name("_INTx12")
	.dwattr $C$DW$77, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$77, DW_AT_bit_size(0x01)
	.dwattr $C$DW$77, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$77, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$78	.dwtag  DW_TAG_member
	.dwattr $C$DW$78, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$78, DW_AT_name("INTx13")
	.dwattr $C$DW$78, DW_AT_TI_symbol_name("_INTx13")
	.dwattr $C$DW$78, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$78, DW_AT_bit_size(0x01)
	.dwattr $C$DW$78, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$78, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$79	.dwtag  DW_TAG_member
	.dwattr $C$DW$79, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$79, DW_AT_name("INTx14")
	.dwattr $C$DW$79, DW_AT_TI_symbol_name("_INTx14")
	.dwattr $C$DW$79, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$79, DW_AT_bit_size(0x01)
	.dwattr $C$DW$79, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$79, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$80	.dwtag  DW_TAG_member
	.dwattr $C$DW$80, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$80, DW_AT_name("INTx15")
	.dwattr $C$DW$80, DW_AT_TI_symbol_name("_INTx15")
	.dwattr $C$DW$80, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$80, DW_AT_bit_size(0x01)
	.dwattr $C$DW$80, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$80, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$81	.dwtag  DW_TAG_member
	.dwattr $C$DW$81, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$81, DW_AT_name("INTx16")
	.dwattr $C$DW$81, DW_AT_TI_symbol_name("_INTx16")
	.dwattr $C$DW$81, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$81, DW_AT_bit_size(0x01)
	.dwattr $C$DW$81, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$81, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$26


$C$DW$T$27	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$27, DW_AT_name("PIEIER11_REG")
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
	.dwattr $C$DW$T$28, DW_AT_name("PIEIER12_BITS")
	.dwattr $C$DW$T$28, DW_AT_byte_size(0x01)
$C$DW$84	.dwtag  DW_TAG_member
	.dwattr $C$DW$84, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$84, DW_AT_name("INTx1")
	.dwattr $C$DW$84, DW_AT_TI_symbol_name("_INTx1")
	.dwattr $C$DW$84, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$84, DW_AT_bit_size(0x01)
	.dwattr $C$DW$84, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$84, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$85	.dwtag  DW_TAG_member
	.dwattr $C$DW$85, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$85, DW_AT_name("INTx2")
	.dwattr $C$DW$85, DW_AT_TI_symbol_name("_INTx2")
	.dwattr $C$DW$85, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$85, DW_AT_bit_size(0x01)
	.dwattr $C$DW$85, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$85, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$86	.dwtag  DW_TAG_member
	.dwattr $C$DW$86, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$86, DW_AT_name("INTx3")
	.dwattr $C$DW$86, DW_AT_TI_symbol_name("_INTx3")
	.dwattr $C$DW$86, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$86, DW_AT_bit_size(0x01)
	.dwattr $C$DW$86, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$86, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$87	.dwtag  DW_TAG_member
	.dwattr $C$DW$87, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$87, DW_AT_name("INTx4")
	.dwattr $C$DW$87, DW_AT_TI_symbol_name("_INTx4")
	.dwattr $C$DW$87, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$87, DW_AT_bit_size(0x01)
	.dwattr $C$DW$87, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$87, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$88	.dwtag  DW_TAG_member
	.dwattr $C$DW$88, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$88, DW_AT_name("INTx5")
	.dwattr $C$DW$88, DW_AT_TI_symbol_name("_INTx5")
	.dwattr $C$DW$88, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$88, DW_AT_bit_size(0x01)
	.dwattr $C$DW$88, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$88, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$89	.dwtag  DW_TAG_member
	.dwattr $C$DW$89, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$89, DW_AT_name("INTx6")
	.dwattr $C$DW$89, DW_AT_TI_symbol_name("_INTx6")
	.dwattr $C$DW$89, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$89, DW_AT_bit_size(0x01)
	.dwattr $C$DW$89, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$89, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$90	.dwtag  DW_TAG_member
	.dwattr $C$DW$90, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$90, DW_AT_name("INTx7")
	.dwattr $C$DW$90, DW_AT_TI_symbol_name("_INTx7")
	.dwattr $C$DW$90, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$90, DW_AT_bit_size(0x01)
	.dwattr $C$DW$90, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$90, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$91	.dwtag  DW_TAG_member
	.dwattr $C$DW$91, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$91, DW_AT_name("INTx8")
	.dwattr $C$DW$91, DW_AT_TI_symbol_name("_INTx8")
	.dwattr $C$DW$91, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$91, DW_AT_bit_size(0x01)
	.dwattr $C$DW$91, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$91, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$92	.dwtag  DW_TAG_member
	.dwattr $C$DW$92, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$92, DW_AT_name("INTx9")
	.dwattr $C$DW$92, DW_AT_TI_symbol_name("_INTx9")
	.dwattr $C$DW$92, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$92, DW_AT_bit_size(0x01)
	.dwattr $C$DW$92, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$92, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$93	.dwtag  DW_TAG_member
	.dwattr $C$DW$93, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$93, DW_AT_name("INTx10")
	.dwattr $C$DW$93, DW_AT_TI_symbol_name("_INTx10")
	.dwattr $C$DW$93, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$93, DW_AT_bit_size(0x01)
	.dwattr $C$DW$93, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$93, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$94	.dwtag  DW_TAG_member
	.dwattr $C$DW$94, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$94, DW_AT_name("INTx11")
	.dwattr $C$DW$94, DW_AT_TI_symbol_name("_INTx11")
	.dwattr $C$DW$94, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$94, DW_AT_bit_size(0x01)
	.dwattr $C$DW$94, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$94, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$95	.dwtag  DW_TAG_member
	.dwattr $C$DW$95, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$95, DW_AT_name("INTx12")
	.dwattr $C$DW$95, DW_AT_TI_symbol_name("_INTx12")
	.dwattr $C$DW$95, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$95, DW_AT_bit_size(0x01)
	.dwattr $C$DW$95, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$95, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$96	.dwtag  DW_TAG_member
	.dwattr $C$DW$96, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$96, DW_AT_name("INTx13")
	.dwattr $C$DW$96, DW_AT_TI_symbol_name("_INTx13")
	.dwattr $C$DW$96, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$96, DW_AT_bit_size(0x01)
	.dwattr $C$DW$96, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$96, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$97	.dwtag  DW_TAG_member
	.dwattr $C$DW$97, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$97, DW_AT_name("INTx14")
	.dwattr $C$DW$97, DW_AT_TI_symbol_name("_INTx14")
	.dwattr $C$DW$97, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$97, DW_AT_bit_size(0x01)
	.dwattr $C$DW$97, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$97, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$98	.dwtag  DW_TAG_member
	.dwattr $C$DW$98, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$98, DW_AT_name("INTx15")
	.dwattr $C$DW$98, DW_AT_TI_symbol_name("_INTx15")
	.dwattr $C$DW$98, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$98, DW_AT_bit_size(0x01)
	.dwattr $C$DW$98, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$98, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$99	.dwtag  DW_TAG_member
	.dwattr $C$DW$99, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$99, DW_AT_name("INTx16")
	.dwattr $C$DW$99, DW_AT_TI_symbol_name("_INTx16")
	.dwattr $C$DW$99, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$99, DW_AT_bit_size(0x01)
	.dwattr $C$DW$99, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$99, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$28


$C$DW$T$29	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$29, DW_AT_name("PIEIER12_REG")
	.dwattr $C$DW$T$29, DW_AT_byte_size(0x01)
$C$DW$100	.dwtag  DW_TAG_member
	.dwattr $C$DW$100, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$100, DW_AT_name("all")
	.dwattr $C$DW$100, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$100, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$100, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$101	.dwtag  DW_TAG_member
	.dwattr $C$DW$101, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$101, DW_AT_name("bit")
	.dwattr $C$DW$101, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$101, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$101, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$29


$C$DW$T$30	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$30, DW_AT_name("PIEIER1_BITS")
	.dwattr $C$DW$T$30, DW_AT_byte_size(0x01)
$C$DW$102	.dwtag  DW_TAG_member
	.dwattr $C$DW$102, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$102, DW_AT_name("INTx1")
	.dwattr $C$DW$102, DW_AT_TI_symbol_name("_INTx1")
	.dwattr $C$DW$102, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$102, DW_AT_bit_size(0x01)
	.dwattr $C$DW$102, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$102, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$103	.dwtag  DW_TAG_member
	.dwattr $C$DW$103, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$103, DW_AT_name("INTx2")
	.dwattr $C$DW$103, DW_AT_TI_symbol_name("_INTx2")
	.dwattr $C$DW$103, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$103, DW_AT_bit_size(0x01)
	.dwattr $C$DW$103, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$103, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$104	.dwtag  DW_TAG_member
	.dwattr $C$DW$104, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$104, DW_AT_name("INTx3")
	.dwattr $C$DW$104, DW_AT_TI_symbol_name("_INTx3")
	.dwattr $C$DW$104, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$104, DW_AT_bit_size(0x01)
	.dwattr $C$DW$104, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$104, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$105	.dwtag  DW_TAG_member
	.dwattr $C$DW$105, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$105, DW_AT_name("INTx4")
	.dwattr $C$DW$105, DW_AT_TI_symbol_name("_INTx4")
	.dwattr $C$DW$105, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$105, DW_AT_bit_size(0x01)
	.dwattr $C$DW$105, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$105, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$106	.dwtag  DW_TAG_member
	.dwattr $C$DW$106, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$106, DW_AT_name("INTx5")
	.dwattr $C$DW$106, DW_AT_TI_symbol_name("_INTx5")
	.dwattr $C$DW$106, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$106, DW_AT_bit_size(0x01)
	.dwattr $C$DW$106, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$106, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$107	.dwtag  DW_TAG_member
	.dwattr $C$DW$107, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$107, DW_AT_name("INTx6")
	.dwattr $C$DW$107, DW_AT_TI_symbol_name("_INTx6")
	.dwattr $C$DW$107, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$107, DW_AT_bit_size(0x01)
	.dwattr $C$DW$107, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$107, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$108	.dwtag  DW_TAG_member
	.dwattr $C$DW$108, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$108, DW_AT_name("INTx7")
	.dwattr $C$DW$108, DW_AT_TI_symbol_name("_INTx7")
	.dwattr $C$DW$108, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$108, DW_AT_bit_size(0x01)
	.dwattr $C$DW$108, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$108, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$109	.dwtag  DW_TAG_member
	.dwattr $C$DW$109, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$109, DW_AT_name("INTx8")
	.dwattr $C$DW$109, DW_AT_TI_symbol_name("_INTx8")
	.dwattr $C$DW$109, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$109, DW_AT_bit_size(0x01)
	.dwattr $C$DW$109, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$109, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$110	.dwtag  DW_TAG_member
	.dwattr $C$DW$110, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$110, DW_AT_name("INTx9")
	.dwattr $C$DW$110, DW_AT_TI_symbol_name("_INTx9")
	.dwattr $C$DW$110, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$110, DW_AT_bit_size(0x01)
	.dwattr $C$DW$110, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$110, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$111	.dwtag  DW_TAG_member
	.dwattr $C$DW$111, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$111, DW_AT_name("INTx10")
	.dwattr $C$DW$111, DW_AT_TI_symbol_name("_INTx10")
	.dwattr $C$DW$111, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$111, DW_AT_bit_size(0x01)
	.dwattr $C$DW$111, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$111, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$112	.dwtag  DW_TAG_member
	.dwattr $C$DW$112, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$112, DW_AT_name("INTx11")
	.dwattr $C$DW$112, DW_AT_TI_symbol_name("_INTx11")
	.dwattr $C$DW$112, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$112, DW_AT_bit_size(0x01)
	.dwattr $C$DW$112, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$112, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$113	.dwtag  DW_TAG_member
	.dwattr $C$DW$113, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$113, DW_AT_name("INTx12")
	.dwattr $C$DW$113, DW_AT_TI_symbol_name("_INTx12")
	.dwattr $C$DW$113, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$113, DW_AT_bit_size(0x01)
	.dwattr $C$DW$113, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$113, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$114	.dwtag  DW_TAG_member
	.dwattr $C$DW$114, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$114, DW_AT_name("INTx13")
	.dwattr $C$DW$114, DW_AT_TI_symbol_name("_INTx13")
	.dwattr $C$DW$114, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$114, DW_AT_bit_size(0x01)
	.dwattr $C$DW$114, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$114, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$115	.dwtag  DW_TAG_member
	.dwattr $C$DW$115, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$115, DW_AT_name("INTx14")
	.dwattr $C$DW$115, DW_AT_TI_symbol_name("_INTx14")
	.dwattr $C$DW$115, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$115, DW_AT_bit_size(0x01)
	.dwattr $C$DW$115, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$115, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$116	.dwtag  DW_TAG_member
	.dwattr $C$DW$116, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$116, DW_AT_name("INTx15")
	.dwattr $C$DW$116, DW_AT_TI_symbol_name("_INTx15")
	.dwattr $C$DW$116, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$116, DW_AT_bit_size(0x01)
	.dwattr $C$DW$116, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$116, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$117	.dwtag  DW_TAG_member
	.dwattr $C$DW$117, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$117, DW_AT_name("INTx16")
	.dwattr $C$DW$117, DW_AT_TI_symbol_name("_INTx16")
	.dwattr $C$DW$117, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$117, DW_AT_bit_size(0x01)
	.dwattr $C$DW$117, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$117, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$30


$C$DW$T$31	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$31, DW_AT_name("PIEIER1_REG")
	.dwattr $C$DW$T$31, DW_AT_byte_size(0x01)
$C$DW$118	.dwtag  DW_TAG_member
	.dwattr $C$DW$118, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$118, DW_AT_name("all")
	.dwattr $C$DW$118, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$118, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$118, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$119	.dwtag  DW_TAG_member
	.dwattr $C$DW$119, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$119, DW_AT_name("bit")
	.dwattr $C$DW$119, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$119, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$119, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$31


$C$DW$T$32	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$32, DW_AT_name("PIEIER2_BITS")
	.dwattr $C$DW$T$32, DW_AT_byte_size(0x01)
$C$DW$120	.dwtag  DW_TAG_member
	.dwattr $C$DW$120, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$120, DW_AT_name("INTx1")
	.dwattr $C$DW$120, DW_AT_TI_symbol_name("_INTx1")
	.dwattr $C$DW$120, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$120, DW_AT_bit_size(0x01)
	.dwattr $C$DW$120, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$120, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$121	.dwtag  DW_TAG_member
	.dwattr $C$DW$121, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$121, DW_AT_name("INTx2")
	.dwattr $C$DW$121, DW_AT_TI_symbol_name("_INTx2")
	.dwattr $C$DW$121, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$121, DW_AT_bit_size(0x01)
	.dwattr $C$DW$121, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$121, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$122	.dwtag  DW_TAG_member
	.dwattr $C$DW$122, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$122, DW_AT_name("INTx3")
	.dwattr $C$DW$122, DW_AT_TI_symbol_name("_INTx3")
	.dwattr $C$DW$122, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$122, DW_AT_bit_size(0x01)
	.dwattr $C$DW$122, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$122, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$123	.dwtag  DW_TAG_member
	.dwattr $C$DW$123, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$123, DW_AT_name("INTx4")
	.dwattr $C$DW$123, DW_AT_TI_symbol_name("_INTx4")
	.dwattr $C$DW$123, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$123, DW_AT_bit_size(0x01)
	.dwattr $C$DW$123, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$123, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$124	.dwtag  DW_TAG_member
	.dwattr $C$DW$124, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$124, DW_AT_name("INTx5")
	.dwattr $C$DW$124, DW_AT_TI_symbol_name("_INTx5")
	.dwattr $C$DW$124, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$124, DW_AT_bit_size(0x01)
	.dwattr $C$DW$124, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$124, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$125	.dwtag  DW_TAG_member
	.dwattr $C$DW$125, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$125, DW_AT_name("INTx6")
	.dwattr $C$DW$125, DW_AT_TI_symbol_name("_INTx6")
	.dwattr $C$DW$125, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$125, DW_AT_bit_size(0x01)
	.dwattr $C$DW$125, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$125, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$126	.dwtag  DW_TAG_member
	.dwattr $C$DW$126, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$126, DW_AT_name("INTx7")
	.dwattr $C$DW$126, DW_AT_TI_symbol_name("_INTx7")
	.dwattr $C$DW$126, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$126, DW_AT_bit_size(0x01)
	.dwattr $C$DW$126, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$126, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$127	.dwtag  DW_TAG_member
	.dwattr $C$DW$127, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$127, DW_AT_name("INTx8")
	.dwattr $C$DW$127, DW_AT_TI_symbol_name("_INTx8")
	.dwattr $C$DW$127, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$127, DW_AT_bit_size(0x01)
	.dwattr $C$DW$127, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$127, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$128	.dwtag  DW_TAG_member
	.dwattr $C$DW$128, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$128, DW_AT_name("INTx9")
	.dwattr $C$DW$128, DW_AT_TI_symbol_name("_INTx9")
	.dwattr $C$DW$128, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$128, DW_AT_bit_size(0x01)
	.dwattr $C$DW$128, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$128, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$129	.dwtag  DW_TAG_member
	.dwattr $C$DW$129, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$129, DW_AT_name("INTx10")
	.dwattr $C$DW$129, DW_AT_TI_symbol_name("_INTx10")
	.dwattr $C$DW$129, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$129, DW_AT_bit_size(0x01)
	.dwattr $C$DW$129, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$129, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$130	.dwtag  DW_TAG_member
	.dwattr $C$DW$130, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$130, DW_AT_name("INTx11")
	.dwattr $C$DW$130, DW_AT_TI_symbol_name("_INTx11")
	.dwattr $C$DW$130, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$130, DW_AT_bit_size(0x01)
	.dwattr $C$DW$130, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$130, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$131	.dwtag  DW_TAG_member
	.dwattr $C$DW$131, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$131, DW_AT_name("INTx12")
	.dwattr $C$DW$131, DW_AT_TI_symbol_name("_INTx12")
	.dwattr $C$DW$131, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$131, DW_AT_bit_size(0x01)
	.dwattr $C$DW$131, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$131, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$132	.dwtag  DW_TAG_member
	.dwattr $C$DW$132, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$132, DW_AT_name("INTx13")
	.dwattr $C$DW$132, DW_AT_TI_symbol_name("_INTx13")
	.dwattr $C$DW$132, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$132, DW_AT_bit_size(0x01)
	.dwattr $C$DW$132, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$132, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$133	.dwtag  DW_TAG_member
	.dwattr $C$DW$133, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$133, DW_AT_name("INTx14")
	.dwattr $C$DW$133, DW_AT_TI_symbol_name("_INTx14")
	.dwattr $C$DW$133, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$133, DW_AT_bit_size(0x01)
	.dwattr $C$DW$133, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$133, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$134	.dwtag  DW_TAG_member
	.dwattr $C$DW$134, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$134, DW_AT_name("INTx15")
	.dwattr $C$DW$134, DW_AT_TI_symbol_name("_INTx15")
	.dwattr $C$DW$134, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$134, DW_AT_bit_size(0x01)
	.dwattr $C$DW$134, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$134, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$135	.dwtag  DW_TAG_member
	.dwattr $C$DW$135, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$135, DW_AT_name("INTx16")
	.dwattr $C$DW$135, DW_AT_TI_symbol_name("_INTx16")
	.dwattr $C$DW$135, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$135, DW_AT_bit_size(0x01)
	.dwattr $C$DW$135, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$135, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$32


$C$DW$T$33	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$33, DW_AT_name("PIEIER2_REG")
	.dwattr $C$DW$T$33, DW_AT_byte_size(0x01)
$C$DW$136	.dwtag  DW_TAG_member
	.dwattr $C$DW$136, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$136, DW_AT_name("all")
	.dwattr $C$DW$136, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$136, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$136, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$137	.dwtag  DW_TAG_member
	.dwattr $C$DW$137, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$137, DW_AT_name("bit")
	.dwattr $C$DW$137, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$137, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$137, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$33


$C$DW$T$34	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$34, DW_AT_name("PIEIER3_BITS")
	.dwattr $C$DW$T$34, DW_AT_byte_size(0x01)
$C$DW$138	.dwtag  DW_TAG_member
	.dwattr $C$DW$138, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$138, DW_AT_name("INTx1")
	.dwattr $C$DW$138, DW_AT_TI_symbol_name("_INTx1")
	.dwattr $C$DW$138, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$138, DW_AT_bit_size(0x01)
	.dwattr $C$DW$138, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$138, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$139	.dwtag  DW_TAG_member
	.dwattr $C$DW$139, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$139, DW_AT_name("INTx2")
	.dwattr $C$DW$139, DW_AT_TI_symbol_name("_INTx2")
	.dwattr $C$DW$139, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$139, DW_AT_bit_size(0x01)
	.dwattr $C$DW$139, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$139, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$140	.dwtag  DW_TAG_member
	.dwattr $C$DW$140, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$140, DW_AT_name("INTx3")
	.dwattr $C$DW$140, DW_AT_TI_symbol_name("_INTx3")
	.dwattr $C$DW$140, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$140, DW_AT_bit_size(0x01)
	.dwattr $C$DW$140, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$140, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$141	.dwtag  DW_TAG_member
	.dwattr $C$DW$141, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$141, DW_AT_name("INTx4")
	.dwattr $C$DW$141, DW_AT_TI_symbol_name("_INTx4")
	.dwattr $C$DW$141, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$141, DW_AT_bit_size(0x01)
	.dwattr $C$DW$141, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$141, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$142	.dwtag  DW_TAG_member
	.dwattr $C$DW$142, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$142, DW_AT_name("INTx5")
	.dwattr $C$DW$142, DW_AT_TI_symbol_name("_INTx5")
	.dwattr $C$DW$142, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$142, DW_AT_bit_size(0x01)
	.dwattr $C$DW$142, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$142, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$143	.dwtag  DW_TAG_member
	.dwattr $C$DW$143, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$143, DW_AT_name("INTx6")
	.dwattr $C$DW$143, DW_AT_TI_symbol_name("_INTx6")
	.dwattr $C$DW$143, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$143, DW_AT_bit_size(0x01)
	.dwattr $C$DW$143, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$143, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$144	.dwtag  DW_TAG_member
	.dwattr $C$DW$144, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$144, DW_AT_name("INTx7")
	.dwattr $C$DW$144, DW_AT_TI_symbol_name("_INTx7")
	.dwattr $C$DW$144, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$144, DW_AT_bit_size(0x01)
	.dwattr $C$DW$144, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$144, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$145	.dwtag  DW_TAG_member
	.dwattr $C$DW$145, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$145, DW_AT_name("INTx8")
	.dwattr $C$DW$145, DW_AT_TI_symbol_name("_INTx8")
	.dwattr $C$DW$145, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$145, DW_AT_bit_size(0x01)
	.dwattr $C$DW$145, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$145, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$146	.dwtag  DW_TAG_member
	.dwattr $C$DW$146, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$146, DW_AT_name("INTx9")
	.dwattr $C$DW$146, DW_AT_TI_symbol_name("_INTx9")
	.dwattr $C$DW$146, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$146, DW_AT_bit_size(0x01)
	.dwattr $C$DW$146, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$146, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$147	.dwtag  DW_TAG_member
	.dwattr $C$DW$147, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$147, DW_AT_name("INTx10")
	.dwattr $C$DW$147, DW_AT_TI_symbol_name("_INTx10")
	.dwattr $C$DW$147, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$147, DW_AT_bit_size(0x01)
	.dwattr $C$DW$147, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$147, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$148	.dwtag  DW_TAG_member
	.dwattr $C$DW$148, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$148, DW_AT_name("INTx11")
	.dwattr $C$DW$148, DW_AT_TI_symbol_name("_INTx11")
	.dwattr $C$DW$148, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$148, DW_AT_bit_size(0x01)
	.dwattr $C$DW$148, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$148, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$149	.dwtag  DW_TAG_member
	.dwattr $C$DW$149, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$149, DW_AT_name("INTx12")
	.dwattr $C$DW$149, DW_AT_TI_symbol_name("_INTx12")
	.dwattr $C$DW$149, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$149, DW_AT_bit_size(0x01)
	.dwattr $C$DW$149, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$149, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$150	.dwtag  DW_TAG_member
	.dwattr $C$DW$150, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$150, DW_AT_name("INTx13")
	.dwattr $C$DW$150, DW_AT_TI_symbol_name("_INTx13")
	.dwattr $C$DW$150, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$150, DW_AT_bit_size(0x01)
	.dwattr $C$DW$150, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$150, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$151	.dwtag  DW_TAG_member
	.dwattr $C$DW$151, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$151, DW_AT_name("INTx14")
	.dwattr $C$DW$151, DW_AT_TI_symbol_name("_INTx14")
	.dwattr $C$DW$151, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$151, DW_AT_bit_size(0x01)
	.dwattr $C$DW$151, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$151, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$152	.dwtag  DW_TAG_member
	.dwattr $C$DW$152, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$152, DW_AT_name("INTx15")
	.dwattr $C$DW$152, DW_AT_TI_symbol_name("_INTx15")
	.dwattr $C$DW$152, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$152, DW_AT_bit_size(0x01)
	.dwattr $C$DW$152, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$152, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$153	.dwtag  DW_TAG_member
	.dwattr $C$DW$153, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$153, DW_AT_name("INTx16")
	.dwattr $C$DW$153, DW_AT_TI_symbol_name("_INTx16")
	.dwattr $C$DW$153, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$153, DW_AT_bit_size(0x01)
	.dwattr $C$DW$153, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$153, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$34


$C$DW$T$35	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$35, DW_AT_name("PIEIER3_REG")
	.dwattr $C$DW$T$35, DW_AT_byte_size(0x01)
$C$DW$154	.dwtag  DW_TAG_member
	.dwattr $C$DW$154, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$154, DW_AT_name("all")
	.dwattr $C$DW$154, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$154, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$154, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$155	.dwtag  DW_TAG_member
	.dwattr $C$DW$155, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$155, DW_AT_name("bit")
	.dwattr $C$DW$155, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$155, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$155, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$35


$C$DW$T$36	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$36, DW_AT_name("PIEIER4_BITS")
	.dwattr $C$DW$T$36, DW_AT_byte_size(0x01)
$C$DW$156	.dwtag  DW_TAG_member
	.dwattr $C$DW$156, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$156, DW_AT_name("INTx1")
	.dwattr $C$DW$156, DW_AT_TI_symbol_name("_INTx1")
	.dwattr $C$DW$156, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$156, DW_AT_bit_size(0x01)
	.dwattr $C$DW$156, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$156, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$157	.dwtag  DW_TAG_member
	.dwattr $C$DW$157, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$157, DW_AT_name("INTx2")
	.dwattr $C$DW$157, DW_AT_TI_symbol_name("_INTx2")
	.dwattr $C$DW$157, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$157, DW_AT_bit_size(0x01)
	.dwattr $C$DW$157, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$157, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$158	.dwtag  DW_TAG_member
	.dwattr $C$DW$158, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$158, DW_AT_name("INTx3")
	.dwattr $C$DW$158, DW_AT_TI_symbol_name("_INTx3")
	.dwattr $C$DW$158, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$158, DW_AT_bit_size(0x01)
	.dwattr $C$DW$158, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$158, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$159	.dwtag  DW_TAG_member
	.dwattr $C$DW$159, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$159, DW_AT_name("INTx4")
	.dwattr $C$DW$159, DW_AT_TI_symbol_name("_INTx4")
	.dwattr $C$DW$159, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$159, DW_AT_bit_size(0x01)
	.dwattr $C$DW$159, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$159, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$160	.dwtag  DW_TAG_member
	.dwattr $C$DW$160, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$160, DW_AT_name("INTx5")
	.dwattr $C$DW$160, DW_AT_TI_symbol_name("_INTx5")
	.dwattr $C$DW$160, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$160, DW_AT_bit_size(0x01)
	.dwattr $C$DW$160, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$160, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$161	.dwtag  DW_TAG_member
	.dwattr $C$DW$161, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$161, DW_AT_name("INTx6")
	.dwattr $C$DW$161, DW_AT_TI_symbol_name("_INTx6")
	.dwattr $C$DW$161, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$161, DW_AT_bit_size(0x01)
	.dwattr $C$DW$161, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$161, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$162	.dwtag  DW_TAG_member
	.dwattr $C$DW$162, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$162, DW_AT_name("INTx7")
	.dwattr $C$DW$162, DW_AT_TI_symbol_name("_INTx7")
	.dwattr $C$DW$162, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$162, DW_AT_bit_size(0x01)
	.dwattr $C$DW$162, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$162, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$163	.dwtag  DW_TAG_member
	.dwattr $C$DW$163, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$163, DW_AT_name("INTx8")
	.dwattr $C$DW$163, DW_AT_TI_symbol_name("_INTx8")
	.dwattr $C$DW$163, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$163, DW_AT_bit_size(0x01)
	.dwattr $C$DW$163, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$163, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$164	.dwtag  DW_TAG_member
	.dwattr $C$DW$164, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$164, DW_AT_name("INTx9")
	.dwattr $C$DW$164, DW_AT_TI_symbol_name("_INTx9")
	.dwattr $C$DW$164, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$164, DW_AT_bit_size(0x01)
	.dwattr $C$DW$164, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$164, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$165	.dwtag  DW_TAG_member
	.dwattr $C$DW$165, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$165, DW_AT_name("INTx10")
	.dwattr $C$DW$165, DW_AT_TI_symbol_name("_INTx10")
	.dwattr $C$DW$165, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$165, DW_AT_bit_size(0x01)
	.dwattr $C$DW$165, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$165, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$166	.dwtag  DW_TAG_member
	.dwattr $C$DW$166, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$166, DW_AT_name("INTx11")
	.dwattr $C$DW$166, DW_AT_TI_symbol_name("_INTx11")
	.dwattr $C$DW$166, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$166, DW_AT_bit_size(0x01)
	.dwattr $C$DW$166, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$166, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$167	.dwtag  DW_TAG_member
	.dwattr $C$DW$167, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$167, DW_AT_name("INTx12")
	.dwattr $C$DW$167, DW_AT_TI_symbol_name("_INTx12")
	.dwattr $C$DW$167, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$167, DW_AT_bit_size(0x01)
	.dwattr $C$DW$167, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$167, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$168	.dwtag  DW_TAG_member
	.dwattr $C$DW$168, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$168, DW_AT_name("INTx13")
	.dwattr $C$DW$168, DW_AT_TI_symbol_name("_INTx13")
	.dwattr $C$DW$168, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$168, DW_AT_bit_size(0x01)
	.dwattr $C$DW$168, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$168, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$169	.dwtag  DW_TAG_member
	.dwattr $C$DW$169, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$169, DW_AT_name("INTx14")
	.dwattr $C$DW$169, DW_AT_TI_symbol_name("_INTx14")
	.dwattr $C$DW$169, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$169, DW_AT_bit_size(0x01)
	.dwattr $C$DW$169, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$169, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$170	.dwtag  DW_TAG_member
	.dwattr $C$DW$170, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$170, DW_AT_name("INTx15")
	.dwattr $C$DW$170, DW_AT_TI_symbol_name("_INTx15")
	.dwattr $C$DW$170, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$170, DW_AT_bit_size(0x01)
	.dwattr $C$DW$170, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$170, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$171	.dwtag  DW_TAG_member
	.dwattr $C$DW$171, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$171, DW_AT_name("INTx16")
	.dwattr $C$DW$171, DW_AT_TI_symbol_name("_INTx16")
	.dwattr $C$DW$171, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$171, DW_AT_bit_size(0x01)
	.dwattr $C$DW$171, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$171, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$36


$C$DW$T$37	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$37, DW_AT_name("PIEIER4_REG")
	.dwattr $C$DW$T$37, DW_AT_byte_size(0x01)
$C$DW$172	.dwtag  DW_TAG_member
	.dwattr $C$DW$172, DW_AT_type(*$C$DW$T$19)
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
	.dwattr $C$DW$T$38, DW_AT_name("PIEIER5_BITS")
	.dwattr $C$DW$T$38, DW_AT_byte_size(0x01)
$C$DW$174	.dwtag  DW_TAG_member
	.dwattr $C$DW$174, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$174, DW_AT_name("INTx1")
	.dwattr $C$DW$174, DW_AT_TI_symbol_name("_INTx1")
	.dwattr $C$DW$174, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$174, DW_AT_bit_size(0x01)
	.dwattr $C$DW$174, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$174, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$175	.dwtag  DW_TAG_member
	.dwattr $C$DW$175, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$175, DW_AT_name("INTx2")
	.dwattr $C$DW$175, DW_AT_TI_symbol_name("_INTx2")
	.dwattr $C$DW$175, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$175, DW_AT_bit_size(0x01)
	.dwattr $C$DW$175, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$175, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$176	.dwtag  DW_TAG_member
	.dwattr $C$DW$176, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$176, DW_AT_name("INTx3")
	.dwattr $C$DW$176, DW_AT_TI_symbol_name("_INTx3")
	.dwattr $C$DW$176, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$176, DW_AT_bit_size(0x01)
	.dwattr $C$DW$176, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$176, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$177	.dwtag  DW_TAG_member
	.dwattr $C$DW$177, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$177, DW_AT_name("INTx4")
	.dwattr $C$DW$177, DW_AT_TI_symbol_name("_INTx4")
	.dwattr $C$DW$177, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$177, DW_AT_bit_size(0x01)
	.dwattr $C$DW$177, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$177, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$178	.dwtag  DW_TAG_member
	.dwattr $C$DW$178, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$178, DW_AT_name("INTx5")
	.dwattr $C$DW$178, DW_AT_TI_symbol_name("_INTx5")
	.dwattr $C$DW$178, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$178, DW_AT_bit_size(0x01)
	.dwattr $C$DW$178, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$178, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$179	.dwtag  DW_TAG_member
	.dwattr $C$DW$179, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$179, DW_AT_name("INTx6")
	.dwattr $C$DW$179, DW_AT_TI_symbol_name("_INTx6")
	.dwattr $C$DW$179, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$179, DW_AT_bit_size(0x01)
	.dwattr $C$DW$179, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$179, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$180	.dwtag  DW_TAG_member
	.dwattr $C$DW$180, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$180, DW_AT_name("INTx7")
	.dwattr $C$DW$180, DW_AT_TI_symbol_name("_INTx7")
	.dwattr $C$DW$180, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$180, DW_AT_bit_size(0x01)
	.dwattr $C$DW$180, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$180, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$181	.dwtag  DW_TAG_member
	.dwattr $C$DW$181, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$181, DW_AT_name("INTx8")
	.dwattr $C$DW$181, DW_AT_TI_symbol_name("_INTx8")
	.dwattr $C$DW$181, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$181, DW_AT_bit_size(0x01)
	.dwattr $C$DW$181, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$181, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$182	.dwtag  DW_TAG_member
	.dwattr $C$DW$182, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$182, DW_AT_name("INTx9")
	.dwattr $C$DW$182, DW_AT_TI_symbol_name("_INTx9")
	.dwattr $C$DW$182, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$182, DW_AT_bit_size(0x01)
	.dwattr $C$DW$182, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$182, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$183	.dwtag  DW_TAG_member
	.dwattr $C$DW$183, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$183, DW_AT_name("INTx10")
	.dwattr $C$DW$183, DW_AT_TI_symbol_name("_INTx10")
	.dwattr $C$DW$183, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$183, DW_AT_bit_size(0x01)
	.dwattr $C$DW$183, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$183, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$184	.dwtag  DW_TAG_member
	.dwattr $C$DW$184, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$184, DW_AT_name("INTx11")
	.dwattr $C$DW$184, DW_AT_TI_symbol_name("_INTx11")
	.dwattr $C$DW$184, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$184, DW_AT_bit_size(0x01)
	.dwattr $C$DW$184, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$184, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$185	.dwtag  DW_TAG_member
	.dwattr $C$DW$185, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$185, DW_AT_name("INTx12")
	.dwattr $C$DW$185, DW_AT_TI_symbol_name("_INTx12")
	.dwattr $C$DW$185, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$185, DW_AT_bit_size(0x01)
	.dwattr $C$DW$185, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$185, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$186	.dwtag  DW_TAG_member
	.dwattr $C$DW$186, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$186, DW_AT_name("INTx13")
	.dwattr $C$DW$186, DW_AT_TI_symbol_name("_INTx13")
	.dwattr $C$DW$186, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$186, DW_AT_bit_size(0x01)
	.dwattr $C$DW$186, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$186, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$187	.dwtag  DW_TAG_member
	.dwattr $C$DW$187, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$187, DW_AT_name("INTx14")
	.dwattr $C$DW$187, DW_AT_TI_symbol_name("_INTx14")
	.dwattr $C$DW$187, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$187, DW_AT_bit_size(0x01)
	.dwattr $C$DW$187, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$187, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$188	.dwtag  DW_TAG_member
	.dwattr $C$DW$188, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$188, DW_AT_name("INTx15")
	.dwattr $C$DW$188, DW_AT_TI_symbol_name("_INTx15")
	.dwattr $C$DW$188, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$188, DW_AT_bit_size(0x01)
	.dwattr $C$DW$188, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$188, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$189	.dwtag  DW_TAG_member
	.dwattr $C$DW$189, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$189, DW_AT_name("INTx16")
	.dwattr $C$DW$189, DW_AT_TI_symbol_name("_INTx16")
	.dwattr $C$DW$189, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$189, DW_AT_bit_size(0x01)
	.dwattr $C$DW$189, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$189, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$38


$C$DW$T$39	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$39, DW_AT_name("PIEIER5_REG")
	.dwattr $C$DW$T$39, DW_AT_byte_size(0x01)
$C$DW$190	.dwtag  DW_TAG_member
	.dwattr $C$DW$190, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$190, DW_AT_name("all")
	.dwattr $C$DW$190, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$190, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$190, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$191	.dwtag  DW_TAG_member
	.dwattr $C$DW$191, DW_AT_type(*$C$DW$T$38)
	.dwattr $C$DW$191, DW_AT_name("bit")
	.dwattr $C$DW$191, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$191, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$191, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$39


$C$DW$T$40	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$40, DW_AT_name("PIEIER6_BITS")
	.dwattr $C$DW$T$40, DW_AT_byte_size(0x01)
$C$DW$192	.dwtag  DW_TAG_member
	.dwattr $C$DW$192, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$192, DW_AT_name("INTx1")
	.dwattr $C$DW$192, DW_AT_TI_symbol_name("_INTx1")
	.dwattr $C$DW$192, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$192, DW_AT_bit_size(0x01)
	.dwattr $C$DW$192, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$192, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$193	.dwtag  DW_TAG_member
	.dwattr $C$DW$193, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$193, DW_AT_name("INTx2")
	.dwattr $C$DW$193, DW_AT_TI_symbol_name("_INTx2")
	.dwattr $C$DW$193, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$193, DW_AT_bit_size(0x01)
	.dwattr $C$DW$193, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$193, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$194	.dwtag  DW_TAG_member
	.dwattr $C$DW$194, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$194, DW_AT_name("INTx3")
	.dwattr $C$DW$194, DW_AT_TI_symbol_name("_INTx3")
	.dwattr $C$DW$194, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$194, DW_AT_bit_size(0x01)
	.dwattr $C$DW$194, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$194, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$195	.dwtag  DW_TAG_member
	.dwattr $C$DW$195, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$195, DW_AT_name("INTx4")
	.dwattr $C$DW$195, DW_AT_TI_symbol_name("_INTx4")
	.dwattr $C$DW$195, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$195, DW_AT_bit_size(0x01)
	.dwattr $C$DW$195, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$195, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$196	.dwtag  DW_TAG_member
	.dwattr $C$DW$196, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$196, DW_AT_name("INTx5")
	.dwattr $C$DW$196, DW_AT_TI_symbol_name("_INTx5")
	.dwattr $C$DW$196, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$196, DW_AT_bit_size(0x01)
	.dwattr $C$DW$196, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$196, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$197	.dwtag  DW_TAG_member
	.dwattr $C$DW$197, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$197, DW_AT_name("INTx6")
	.dwattr $C$DW$197, DW_AT_TI_symbol_name("_INTx6")
	.dwattr $C$DW$197, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$197, DW_AT_bit_size(0x01)
	.dwattr $C$DW$197, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$197, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$198	.dwtag  DW_TAG_member
	.dwattr $C$DW$198, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$198, DW_AT_name("INTx7")
	.dwattr $C$DW$198, DW_AT_TI_symbol_name("_INTx7")
	.dwattr $C$DW$198, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$198, DW_AT_bit_size(0x01)
	.dwattr $C$DW$198, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$198, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$199	.dwtag  DW_TAG_member
	.dwattr $C$DW$199, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$199, DW_AT_name("INTx8")
	.dwattr $C$DW$199, DW_AT_TI_symbol_name("_INTx8")
	.dwattr $C$DW$199, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$199, DW_AT_bit_size(0x01)
	.dwattr $C$DW$199, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$199, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$200	.dwtag  DW_TAG_member
	.dwattr $C$DW$200, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$200, DW_AT_name("INTx9")
	.dwattr $C$DW$200, DW_AT_TI_symbol_name("_INTx9")
	.dwattr $C$DW$200, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$200, DW_AT_bit_size(0x01)
	.dwattr $C$DW$200, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$200, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$201	.dwtag  DW_TAG_member
	.dwattr $C$DW$201, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$201, DW_AT_name("INTx10")
	.dwattr $C$DW$201, DW_AT_TI_symbol_name("_INTx10")
	.dwattr $C$DW$201, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$201, DW_AT_bit_size(0x01)
	.dwattr $C$DW$201, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$201, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$202	.dwtag  DW_TAG_member
	.dwattr $C$DW$202, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$202, DW_AT_name("INTx11")
	.dwattr $C$DW$202, DW_AT_TI_symbol_name("_INTx11")
	.dwattr $C$DW$202, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$202, DW_AT_bit_size(0x01)
	.dwattr $C$DW$202, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$202, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$203	.dwtag  DW_TAG_member
	.dwattr $C$DW$203, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$203, DW_AT_name("INTx12")
	.dwattr $C$DW$203, DW_AT_TI_symbol_name("_INTx12")
	.dwattr $C$DW$203, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$203, DW_AT_bit_size(0x01)
	.dwattr $C$DW$203, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$203, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$204	.dwtag  DW_TAG_member
	.dwattr $C$DW$204, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$204, DW_AT_name("INTx13")
	.dwattr $C$DW$204, DW_AT_TI_symbol_name("_INTx13")
	.dwattr $C$DW$204, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$204, DW_AT_bit_size(0x01)
	.dwattr $C$DW$204, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$204, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$205	.dwtag  DW_TAG_member
	.dwattr $C$DW$205, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$205, DW_AT_name("INTx14")
	.dwattr $C$DW$205, DW_AT_TI_symbol_name("_INTx14")
	.dwattr $C$DW$205, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$205, DW_AT_bit_size(0x01)
	.dwattr $C$DW$205, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$205, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$206	.dwtag  DW_TAG_member
	.dwattr $C$DW$206, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$206, DW_AT_name("INTx15")
	.dwattr $C$DW$206, DW_AT_TI_symbol_name("_INTx15")
	.dwattr $C$DW$206, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$206, DW_AT_bit_size(0x01)
	.dwattr $C$DW$206, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$206, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$207	.dwtag  DW_TAG_member
	.dwattr $C$DW$207, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$207, DW_AT_name("INTx16")
	.dwattr $C$DW$207, DW_AT_TI_symbol_name("_INTx16")
	.dwattr $C$DW$207, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$207, DW_AT_bit_size(0x01)
	.dwattr $C$DW$207, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$207, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$40


$C$DW$T$41	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$41, DW_AT_name("PIEIER6_REG")
	.dwattr $C$DW$T$41, DW_AT_byte_size(0x01)
$C$DW$208	.dwtag  DW_TAG_member
	.dwattr $C$DW$208, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$208, DW_AT_name("all")
	.dwattr $C$DW$208, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$208, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$208, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$209	.dwtag  DW_TAG_member
	.dwattr $C$DW$209, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$209, DW_AT_name("bit")
	.dwattr $C$DW$209, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$209, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$209, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$41


$C$DW$T$42	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$42, DW_AT_name("PIEIER7_BITS")
	.dwattr $C$DW$T$42, DW_AT_byte_size(0x01)
$C$DW$210	.dwtag  DW_TAG_member
	.dwattr $C$DW$210, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$210, DW_AT_name("INTx1")
	.dwattr $C$DW$210, DW_AT_TI_symbol_name("_INTx1")
	.dwattr $C$DW$210, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$210, DW_AT_bit_size(0x01)
	.dwattr $C$DW$210, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$210, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$211	.dwtag  DW_TAG_member
	.dwattr $C$DW$211, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$211, DW_AT_name("INTx2")
	.dwattr $C$DW$211, DW_AT_TI_symbol_name("_INTx2")
	.dwattr $C$DW$211, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$211, DW_AT_bit_size(0x01)
	.dwattr $C$DW$211, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$211, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$212	.dwtag  DW_TAG_member
	.dwattr $C$DW$212, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$212, DW_AT_name("INTx3")
	.dwattr $C$DW$212, DW_AT_TI_symbol_name("_INTx3")
	.dwattr $C$DW$212, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$212, DW_AT_bit_size(0x01)
	.dwattr $C$DW$212, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$212, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$213	.dwtag  DW_TAG_member
	.dwattr $C$DW$213, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$213, DW_AT_name("INTx4")
	.dwattr $C$DW$213, DW_AT_TI_symbol_name("_INTx4")
	.dwattr $C$DW$213, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$213, DW_AT_bit_size(0x01)
	.dwattr $C$DW$213, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$213, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$214	.dwtag  DW_TAG_member
	.dwattr $C$DW$214, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$214, DW_AT_name("INTx5")
	.dwattr $C$DW$214, DW_AT_TI_symbol_name("_INTx5")
	.dwattr $C$DW$214, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$214, DW_AT_bit_size(0x01)
	.dwattr $C$DW$214, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$214, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$215	.dwtag  DW_TAG_member
	.dwattr $C$DW$215, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$215, DW_AT_name("INTx6")
	.dwattr $C$DW$215, DW_AT_TI_symbol_name("_INTx6")
	.dwattr $C$DW$215, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$215, DW_AT_bit_size(0x01)
	.dwattr $C$DW$215, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$215, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$216	.dwtag  DW_TAG_member
	.dwattr $C$DW$216, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$216, DW_AT_name("INTx7")
	.dwattr $C$DW$216, DW_AT_TI_symbol_name("_INTx7")
	.dwattr $C$DW$216, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$216, DW_AT_bit_size(0x01)
	.dwattr $C$DW$216, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$216, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$217	.dwtag  DW_TAG_member
	.dwattr $C$DW$217, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$217, DW_AT_name("INTx8")
	.dwattr $C$DW$217, DW_AT_TI_symbol_name("_INTx8")
	.dwattr $C$DW$217, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$217, DW_AT_bit_size(0x01)
	.dwattr $C$DW$217, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$217, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$218	.dwtag  DW_TAG_member
	.dwattr $C$DW$218, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$218, DW_AT_name("INTx9")
	.dwattr $C$DW$218, DW_AT_TI_symbol_name("_INTx9")
	.dwattr $C$DW$218, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$218, DW_AT_bit_size(0x01)
	.dwattr $C$DW$218, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$218, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$219	.dwtag  DW_TAG_member
	.dwattr $C$DW$219, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$219, DW_AT_name("INTx10")
	.dwattr $C$DW$219, DW_AT_TI_symbol_name("_INTx10")
	.dwattr $C$DW$219, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$219, DW_AT_bit_size(0x01)
	.dwattr $C$DW$219, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$219, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$220	.dwtag  DW_TAG_member
	.dwattr $C$DW$220, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$220, DW_AT_name("INTx11")
	.dwattr $C$DW$220, DW_AT_TI_symbol_name("_INTx11")
	.dwattr $C$DW$220, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$220, DW_AT_bit_size(0x01)
	.dwattr $C$DW$220, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$220, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$221	.dwtag  DW_TAG_member
	.dwattr $C$DW$221, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$221, DW_AT_name("INTx12")
	.dwattr $C$DW$221, DW_AT_TI_symbol_name("_INTx12")
	.dwattr $C$DW$221, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$221, DW_AT_bit_size(0x01)
	.dwattr $C$DW$221, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$221, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$222	.dwtag  DW_TAG_member
	.dwattr $C$DW$222, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$222, DW_AT_name("INTx13")
	.dwattr $C$DW$222, DW_AT_TI_symbol_name("_INTx13")
	.dwattr $C$DW$222, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$222, DW_AT_bit_size(0x01)
	.dwattr $C$DW$222, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$222, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$223	.dwtag  DW_TAG_member
	.dwattr $C$DW$223, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$223, DW_AT_name("INTx14")
	.dwattr $C$DW$223, DW_AT_TI_symbol_name("_INTx14")
	.dwattr $C$DW$223, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$223, DW_AT_bit_size(0x01)
	.dwattr $C$DW$223, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$223, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$224	.dwtag  DW_TAG_member
	.dwattr $C$DW$224, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$224, DW_AT_name("INTx15")
	.dwattr $C$DW$224, DW_AT_TI_symbol_name("_INTx15")
	.dwattr $C$DW$224, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$224, DW_AT_bit_size(0x01)
	.dwattr $C$DW$224, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$224, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$225	.dwtag  DW_TAG_member
	.dwattr $C$DW$225, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$225, DW_AT_name("INTx16")
	.dwattr $C$DW$225, DW_AT_TI_symbol_name("_INTx16")
	.dwattr $C$DW$225, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$225, DW_AT_bit_size(0x01)
	.dwattr $C$DW$225, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$225, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$42


$C$DW$T$43	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$43, DW_AT_name("PIEIER7_REG")
	.dwattr $C$DW$T$43, DW_AT_byte_size(0x01)
$C$DW$226	.dwtag  DW_TAG_member
	.dwattr $C$DW$226, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$226, DW_AT_name("all")
	.dwattr $C$DW$226, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$226, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$226, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$227	.dwtag  DW_TAG_member
	.dwattr $C$DW$227, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$227, DW_AT_name("bit")
	.dwattr $C$DW$227, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$227, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$227, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$43


$C$DW$T$44	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$44, DW_AT_name("PIEIER8_BITS")
	.dwattr $C$DW$T$44, DW_AT_byte_size(0x01)
$C$DW$228	.dwtag  DW_TAG_member
	.dwattr $C$DW$228, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$228, DW_AT_name("INTx1")
	.dwattr $C$DW$228, DW_AT_TI_symbol_name("_INTx1")
	.dwattr $C$DW$228, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$228, DW_AT_bit_size(0x01)
	.dwattr $C$DW$228, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$228, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$229	.dwtag  DW_TAG_member
	.dwattr $C$DW$229, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$229, DW_AT_name("INTx2")
	.dwattr $C$DW$229, DW_AT_TI_symbol_name("_INTx2")
	.dwattr $C$DW$229, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$229, DW_AT_bit_size(0x01)
	.dwattr $C$DW$229, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$229, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$230	.dwtag  DW_TAG_member
	.dwattr $C$DW$230, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$230, DW_AT_name("INTx3")
	.dwattr $C$DW$230, DW_AT_TI_symbol_name("_INTx3")
	.dwattr $C$DW$230, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$230, DW_AT_bit_size(0x01)
	.dwattr $C$DW$230, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$230, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$231	.dwtag  DW_TAG_member
	.dwattr $C$DW$231, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$231, DW_AT_name("INTx4")
	.dwattr $C$DW$231, DW_AT_TI_symbol_name("_INTx4")
	.dwattr $C$DW$231, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$231, DW_AT_bit_size(0x01)
	.dwattr $C$DW$231, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$231, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$232	.dwtag  DW_TAG_member
	.dwattr $C$DW$232, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$232, DW_AT_name("INTx5")
	.dwattr $C$DW$232, DW_AT_TI_symbol_name("_INTx5")
	.dwattr $C$DW$232, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$232, DW_AT_bit_size(0x01)
	.dwattr $C$DW$232, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$232, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$233	.dwtag  DW_TAG_member
	.dwattr $C$DW$233, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$233, DW_AT_name("INTx6")
	.dwattr $C$DW$233, DW_AT_TI_symbol_name("_INTx6")
	.dwattr $C$DW$233, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$233, DW_AT_bit_size(0x01)
	.dwattr $C$DW$233, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$233, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$234	.dwtag  DW_TAG_member
	.dwattr $C$DW$234, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$234, DW_AT_name("INTx7")
	.dwattr $C$DW$234, DW_AT_TI_symbol_name("_INTx7")
	.dwattr $C$DW$234, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$234, DW_AT_bit_size(0x01)
	.dwattr $C$DW$234, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$234, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$235	.dwtag  DW_TAG_member
	.dwattr $C$DW$235, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$235, DW_AT_name("INTx8")
	.dwattr $C$DW$235, DW_AT_TI_symbol_name("_INTx8")
	.dwattr $C$DW$235, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$235, DW_AT_bit_size(0x01)
	.dwattr $C$DW$235, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$235, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$236	.dwtag  DW_TAG_member
	.dwattr $C$DW$236, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$236, DW_AT_name("INTx9")
	.dwattr $C$DW$236, DW_AT_TI_symbol_name("_INTx9")
	.dwattr $C$DW$236, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$236, DW_AT_bit_size(0x01)
	.dwattr $C$DW$236, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$236, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$237	.dwtag  DW_TAG_member
	.dwattr $C$DW$237, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$237, DW_AT_name("INTx10")
	.dwattr $C$DW$237, DW_AT_TI_symbol_name("_INTx10")
	.dwattr $C$DW$237, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$237, DW_AT_bit_size(0x01)
	.dwattr $C$DW$237, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$237, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$238	.dwtag  DW_TAG_member
	.dwattr $C$DW$238, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$238, DW_AT_name("INTx11")
	.dwattr $C$DW$238, DW_AT_TI_symbol_name("_INTx11")
	.dwattr $C$DW$238, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$238, DW_AT_bit_size(0x01)
	.dwattr $C$DW$238, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$238, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$239	.dwtag  DW_TAG_member
	.dwattr $C$DW$239, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$239, DW_AT_name("INTx12")
	.dwattr $C$DW$239, DW_AT_TI_symbol_name("_INTx12")
	.dwattr $C$DW$239, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$239, DW_AT_bit_size(0x01)
	.dwattr $C$DW$239, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$239, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$240	.dwtag  DW_TAG_member
	.dwattr $C$DW$240, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$240, DW_AT_name("INTx13")
	.dwattr $C$DW$240, DW_AT_TI_symbol_name("_INTx13")
	.dwattr $C$DW$240, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$240, DW_AT_bit_size(0x01)
	.dwattr $C$DW$240, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$240, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$241	.dwtag  DW_TAG_member
	.dwattr $C$DW$241, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$241, DW_AT_name("INTx14")
	.dwattr $C$DW$241, DW_AT_TI_symbol_name("_INTx14")
	.dwattr $C$DW$241, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$241, DW_AT_bit_size(0x01)
	.dwattr $C$DW$241, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$241, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$242	.dwtag  DW_TAG_member
	.dwattr $C$DW$242, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$242, DW_AT_name("INTx15")
	.dwattr $C$DW$242, DW_AT_TI_symbol_name("_INTx15")
	.dwattr $C$DW$242, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$242, DW_AT_bit_size(0x01)
	.dwattr $C$DW$242, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$242, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$243	.dwtag  DW_TAG_member
	.dwattr $C$DW$243, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$243, DW_AT_name("INTx16")
	.dwattr $C$DW$243, DW_AT_TI_symbol_name("_INTx16")
	.dwattr $C$DW$243, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$243, DW_AT_bit_size(0x01)
	.dwattr $C$DW$243, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$243, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$44


$C$DW$T$45	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$45, DW_AT_name("PIEIER8_REG")
	.dwattr $C$DW$T$45, DW_AT_byte_size(0x01)
$C$DW$244	.dwtag  DW_TAG_member
	.dwattr $C$DW$244, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$244, DW_AT_name("all")
	.dwattr $C$DW$244, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$244, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$244, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$245	.dwtag  DW_TAG_member
	.dwattr $C$DW$245, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$245, DW_AT_name("bit")
	.dwattr $C$DW$245, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$245, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$245, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$45


$C$DW$T$46	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$46, DW_AT_name("PIEIER9_BITS")
	.dwattr $C$DW$T$46, DW_AT_byte_size(0x01)
$C$DW$246	.dwtag  DW_TAG_member
	.dwattr $C$DW$246, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$246, DW_AT_name("INTx1")
	.dwattr $C$DW$246, DW_AT_TI_symbol_name("_INTx1")
	.dwattr $C$DW$246, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$246, DW_AT_bit_size(0x01)
	.dwattr $C$DW$246, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$246, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$247	.dwtag  DW_TAG_member
	.dwattr $C$DW$247, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$247, DW_AT_name("INTx2")
	.dwattr $C$DW$247, DW_AT_TI_symbol_name("_INTx2")
	.dwattr $C$DW$247, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$247, DW_AT_bit_size(0x01)
	.dwattr $C$DW$247, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$247, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$248	.dwtag  DW_TAG_member
	.dwattr $C$DW$248, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$248, DW_AT_name("INTx3")
	.dwattr $C$DW$248, DW_AT_TI_symbol_name("_INTx3")
	.dwattr $C$DW$248, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$248, DW_AT_bit_size(0x01)
	.dwattr $C$DW$248, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$248, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$249	.dwtag  DW_TAG_member
	.dwattr $C$DW$249, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$249, DW_AT_name("INTx4")
	.dwattr $C$DW$249, DW_AT_TI_symbol_name("_INTx4")
	.dwattr $C$DW$249, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$249, DW_AT_bit_size(0x01)
	.dwattr $C$DW$249, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$249, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$250	.dwtag  DW_TAG_member
	.dwattr $C$DW$250, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$250, DW_AT_name("INTx5")
	.dwattr $C$DW$250, DW_AT_TI_symbol_name("_INTx5")
	.dwattr $C$DW$250, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$250, DW_AT_bit_size(0x01)
	.dwattr $C$DW$250, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$250, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$251	.dwtag  DW_TAG_member
	.dwattr $C$DW$251, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$251, DW_AT_name("INTx6")
	.dwattr $C$DW$251, DW_AT_TI_symbol_name("_INTx6")
	.dwattr $C$DW$251, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$251, DW_AT_bit_size(0x01)
	.dwattr $C$DW$251, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$251, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$252	.dwtag  DW_TAG_member
	.dwattr $C$DW$252, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$252, DW_AT_name("INTx7")
	.dwattr $C$DW$252, DW_AT_TI_symbol_name("_INTx7")
	.dwattr $C$DW$252, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$252, DW_AT_bit_size(0x01)
	.dwattr $C$DW$252, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$252, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$253	.dwtag  DW_TAG_member
	.dwattr $C$DW$253, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$253, DW_AT_name("INTx8")
	.dwattr $C$DW$253, DW_AT_TI_symbol_name("_INTx8")
	.dwattr $C$DW$253, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$253, DW_AT_bit_size(0x01)
	.dwattr $C$DW$253, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$253, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$254	.dwtag  DW_TAG_member
	.dwattr $C$DW$254, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$254, DW_AT_name("INTx9")
	.dwattr $C$DW$254, DW_AT_TI_symbol_name("_INTx9")
	.dwattr $C$DW$254, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$254, DW_AT_bit_size(0x01)
	.dwattr $C$DW$254, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$254, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$255	.dwtag  DW_TAG_member
	.dwattr $C$DW$255, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$255, DW_AT_name("INTx10")
	.dwattr $C$DW$255, DW_AT_TI_symbol_name("_INTx10")
	.dwattr $C$DW$255, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$255, DW_AT_bit_size(0x01)
	.dwattr $C$DW$255, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$255, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$256	.dwtag  DW_TAG_member
	.dwattr $C$DW$256, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$256, DW_AT_name("INTx11")
	.dwattr $C$DW$256, DW_AT_TI_symbol_name("_INTx11")
	.dwattr $C$DW$256, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$256, DW_AT_bit_size(0x01)
	.dwattr $C$DW$256, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$256, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$257	.dwtag  DW_TAG_member
	.dwattr $C$DW$257, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$257, DW_AT_name("INTx12")
	.dwattr $C$DW$257, DW_AT_TI_symbol_name("_INTx12")
	.dwattr $C$DW$257, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$257, DW_AT_bit_size(0x01)
	.dwattr $C$DW$257, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$257, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$258	.dwtag  DW_TAG_member
	.dwattr $C$DW$258, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$258, DW_AT_name("INTx13")
	.dwattr $C$DW$258, DW_AT_TI_symbol_name("_INTx13")
	.dwattr $C$DW$258, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$258, DW_AT_bit_size(0x01)
	.dwattr $C$DW$258, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$258, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$259	.dwtag  DW_TAG_member
	.dwattr $C$DW$259, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$259, DW_AT_name("INTx14")
	.dwattr $C$DW$259, DW_AT_TI_symbol_name("_INTx14")
	.dwattr $C$DW$259, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$259, DW_AT_bit_size(0x01)
	.dwattr $C$DW$259, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$259, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$260	.dwtag  DW_TAG_member
	.dwattr $C$DW$260, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$260, DW_AT_name("INTx15")
	.dwattr $C$DW$260, DW_AT_TI_symbol_name("_INTx15")
	.dwattr $C$DW$260, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$260, DW_AT_bit_size(0x01)
	.dwattr $C$DW$260, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$260, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$261	.dwtag  DW_TAG_member
	.dwattr $C$DW$261, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$261, DW_AT_name("INTx16")
	.dwattr $C$DW$261, DW_AT_TI_symbol_name("_INTx16")
	.dwattr $C$DW$261, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$261, DW_AT_bit_size(0x01)
	.dwattr $C$DW$261, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$261, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$46


$C$DW$T$47	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$47, DW_AT_name("PIEIER9_REG")
	.dwattr $C$DW$T$47, DW_AT_byte_size(0x01)
$C$DW$262	.dwtag  DW_TAG_member
	.dwattr $C$DW$262, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$262, DW_AT_name("all")
	.dwattr $C$DW$262, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$262, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$262, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$263	.dwtag  DW_TAG_member
	.dwattr $C$DW$263, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$263, DW_AT_name("bit")
	.dwattr $C$DW$263, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$263, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$263, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$47


$C$DW$T$48	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$48, DW_AT_name("PIEIFR10_BITS")
	.dwattr $C$DW$T$48, DW_AT_byte_size(0x01)
$C$DW$264	.dwtag  DW_TAG_member
	.dwattr $C$DW$264, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$264, DW_AT_name("INTx1")
	.dwattr $C$DW$264, DW_AT_TI_symbol_name("_INTx1")
	.dwattr $C$DW$264, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$264, DW_AT_bit_size(0x01)
	.dwattr $C$DW$264, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$264, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$265	.dwtag  DW_TAG_member
	.dwattr $C$DW$265, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$265, DW_AT_name("INTx2")
	.dwattr $C$DW$265, DW_AT_TI_symbol_name("_INTx2")
	.dwattr $C$DW$265, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$265, DW_AT_bit_size(0x01)
	.dwattr $C$DW$265, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$265, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$266	.dwtag  DW_TAG_member
	.dwattr $C$DW$266, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$266, DW_AT_name("INTx3")
	.dwattr $C$DW$266, DW_AT_TI_symbol_name("_INTx3")
	.dwattr $C$DW$266, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$266, DW_AT_bit_size(0x01)
	.dwattr $C$DW$266, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$266, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$267	.dwtag  DW_TAG_member
	.dwattr $C$DW$267, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$267, DW_AT_name("INTx4")
	.dwattr $C$DW$267, DW_AT_TI_symbol_name("_INTx4")
	.dwattr $C$DW$267, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$267, DW_AT_bit_size(0x01)
	.dwattr $C$DW$267, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$267, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$268	.dwtag  DW_TAG_member
	.dwattr $C$DW$268, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$268, DW_AT_name("INTx5")
	.dwattr $C$DW$268, DW_AT_TI_symbol_name("_INTx5")
	.dwattr $C$DW$268, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$268, DW_AT_bit_size(0x01)
	.dwattr $C$DW$268, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$268, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$269	.dwtag  DW_TAG_member
	.dwattr $C$DW$269, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$269, DW_AT_name("INTx6")
	.dwattr $C$DW$269, DW_AT_TI_symbol_name("_INTx6")
	.dwattr $C$DW$269, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$269, DW_AT_bit_size(0x01)
	.dwattr $C$DW$269, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$269, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$270	.dwtag  DW_TAG_member
	.dwattr $C$DW$270, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$270, DW_AT_name("INTx7")
	.dwattr $C$DW$270, DW_AT_TI_symbol_name("_INTx7")
	.dwattr $C$DW$270, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$270, DW_AT_bit_size(0x01)
	.dwattr $C$DW$270, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$270, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$271	.dwtag  DW_TAG_member
	.dwattr $C$DW$271, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$271, DW_AT_name("INTx8")
	.dwattr $C$DW$271, DW_AT_TI_symbol_name("_INTx8")
	.dwattr $C$DW$271, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$271, DW_AT_bit_size(0x01)
	.dwattr $C$DW$271, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$271, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$272	.dwtag  DW_TAG_member
	.dwattr $C$DW$272, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$272, DW_AT_name("INTx9")
	.dwattr $C$DW$272, DW_AT_TI_symbol_name("_INTx9")
	.dwattr $C$DW$272, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$272, DW_AT_bit_size(0x01)
	.dwattr $C$DW$272, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$272, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$273	.dwtag  DW_TAG_member
	.dwattr $C$DW$273, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$273, DW_AT_name("INTx10")
	.dwattr $C$DW$273, DW_AT_TI_symbol_name("_INTx10")
	.dwattr $C$DW$273, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$273, DW_AT_bit_size(0x01)
	.dwattr $C$DW$273, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$273, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$274	.dwtag  DW_TAG_member
	.dwattr $C$DW$274, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$274, DW_AT_name("INTx11")
	.dwattr $C$DW$274, DW_AT_TI_symbol_name("_INTx11")
	.dwattr $C$DW$274, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$274, DW_AT_bit_size(0x01)
	.dwattr $C$DW$274, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$274, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$275	.dwtag  DW_TAG_member
	.dwattr $C$DW$275, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$275, DW_AT_name("INTx12")
	.dwattr $C$DW$275, DW_AT_TI_symbol_name("_INTx12")
	.dwattr $C$DW$275, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$275, DW_AT_bit_size(0x01)
	.dwattr $C$DW$275, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$275, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$276	.dwtag  DW_TAG_member
	.dwattr $C$DW$276, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$276, DW_AT_name("INTx13")
	.dwattr $C$DW$276, DW_AT_TI_symbol_name("_INTx13")
	.dwattr $C$DW$276, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$276, DW_AT_bit_size(0x01)
	.dwattr $C$DW$276, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$276, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$277	.dwtag  DW_TAG_member
	.dwattr $C$DW$277, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$277, DW_AT_name("INTx14")
	.dwattr $C$DW$277, DW_AT_TI_symbol_name("_INTx14")
	.dwattr $C$DW$277, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$277, DW_AT_bit_size(0x01)
	.dwattr $C$DW$277, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$277, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$278	.dwtag  DW_TAG_member
	.dwattr $C$DW$278, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$278, DW_AT_name("INTx15")
	.dwattr $C$DW$278, DW_AT_TI_symbol_name("_INTx15")
	.dwattr $C$DW$278, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$278, DW_AT_bit_size(0x01)
	.dwattr $C$DW$278, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$278, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$279	.dwtag  DW_TAG_member
	.dwattr $C$DW$279, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$279, DW_AT_name("INTx16")
	.dwattr $C$DW$279, DW_AT_TI_symbol_name("_INTx16")
	.dwattr $C$DW$279, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$279, DW_AT_bit_size(0x01)
	.dwattr $C$DW$279, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$279, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$48


$C$DW$T$49	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$49, DW_AT_name("PIEIFR10_REG")
	.dwattr $C$DW$T$49, DW_AT_byte_size(0x01)
$C$DW$280	.dwtag  DW_TAG_member
	.dwattr $C$DW$280, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$280, DW_AT_name("all")
	.dwattr $C$DW$280, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$280, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$280, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$281	.dwtag  DW_TAG_member
	.dwattr $C$DW$281, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$281, DW_AT_name("bit")
	.dwattr $C$DW$281, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$281, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$281, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$49


$C$DW$T$50	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$50, DW_AT_name("PIEIFR11_BITS")
	.dwattr $C$DW$T$50, DW_AT_byte_size(0x01)
$C$DW$282	.dwtag  DW_TAG_member
	.dwattr $C$DW$282, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$282, DW_AT_name("INTx1")
	.dwattr $C$DW$282, DW_AT_TI_symbol_name("_INTx1")
	.dwattr $C$DW$282, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$282, DW_AT_bit_size(0x01)
	.dwattr $C$DW$282, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$282, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$283	.dwtag  DW_TAG_member
	.dwattr $C$DW$283, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$283, DW_AT_name("INTx2")
	.dwattr $C$DW$283, DW_AT_TI_symbol_name("_INTx2")
	.dwattr $C$DW$283, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$283, DW_AT_bit_size(0x01)
	.dwattr $C$DW$283, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$283, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$284	.dwtag  DW_TAG_member
	.dwattr $C$DW$284, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$284, DW_AT_name("INTx3")
	.dwattr $C$DW$284, DW_AT_TI_symbol_name("_INTx3")
	.dwattr $C$DW$284, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$284, DW_AT_bit_size(0x01)
	.dwattr $C$DW$284, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$284, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$285	.dwtag  DW_TAG_member
	.dwattr $C$DW$285, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$285, DW_AT_name("INTx4")
	.dwattr $C$DW$285, DW_AT_TI_symbol_name("_INTx4")
	.dwattr $C$DW$285, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$285, DW_AT_bit_size(0x01)
	.dwattr $C$DW$285, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$285, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$286	.dwtag  DW_TAG_member
	.dwattr $C$DW$286, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$286, DW_AT_name("INTx5")
	.dwattr $C$DW$286, DW_AT_TI_symbol_name("_INTx5")
	.dwattr $C$DW$286, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$286, DW_AT_bit_size(0x01)
	.dwattr $C$DW$286, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$286, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$287	.dwtag  DW_TAG_member
	.dwattr $C$DW$287, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$287, DW_AT_name("INTx6")
	.dwattr $C$DW$287, DW_AT_TI_symbol_name("_INTx6")
	.dwattr $C$DW$287, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$287, DW_AT_bit_size(0x01)
	.dwattr $C$DW$287, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$287, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$288	.dwtag  DW_TAG_member
	.dwattr $C$DW$288, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$288, DW_AT_name("INTx7")
	.dwattr $C$DW$288, DW_AT_TI_symbol_name("_INTx7")
	.dwattr $C$DW$288, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$288, DW_AT_bit_size(0x01)
	.dwattr $C$DW$288, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$288, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$289	.dwtag  DW_TAG_member
	.dwattr $C$DW$289, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$289, DW_AT_name("INTx8")
	.dwattr $C$DW$289, DW_AT_TI_symbol_name("_INTx8")
	.dwattr $C$DW$289, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$289, DW_AT_bit_size(0x01)
	.dwattr $C$DW$289, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$289, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$290	.dwtag  DW_TAG_member
	.dwattr $C$DW$290, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$290, DW_AT_name("INTx9")
	.dwattr $C$DW$290, DW_AT_TI_symbol_name("_INTx9")
	.dwattr $C$DW$290, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$290, DW_AT_bit_size(0x01)
	.dwattr $C$DW$290, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$290, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$291	.dwtag  DW_TAG_member
	.dwattr $C$DW$291, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$291, DW_AT_name("INTx10")
	.dwattr $C$DW$291, DW_AT_TI_symbol_name("_INTx10")
	.dwattr $C$DW$291, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$291, DW_AT_bit_size(0x01)
	.dwattr $C$DW$291, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$291, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$292	.dwtag  DW_TAG_member
	.dwattr $C$DW$292, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$292, DW_AT_name("INTx11")
	.dwattr $C$DW$292, DW_AT_TI_symbol_name("_INTx11")
	.dwattr $C$DW$292, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$292, DW_AT_bit_size(0x01)
	.dwattr $C$DW$292, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$292, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$293	.dwtag  DW_TAG_member
	.dwattr $C$DW$293, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$293, DW_AT_name("INTx12")
	.dwattr $C$DW$293, DW_AT_TI_symbol_name("_INTx12")
	.dwattr $C$DW$293, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$293, DW_AT_bit_size(0x01)
	.dwattr $C$DW$293, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$293, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$294	.dwtag  DW_TAG_member
	.dwattr $C$DW$294, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$294, DW_AT_name("INTx13")
	.dwattr $C$DW$294, DW_AT_TI_symbol_name("_INTx13")
	.dwattr $C$DW$294, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$294, DW_AT_bit_size(0x01)
	.dwattr $C$DW$294, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$294, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$295	.dwtag  DW_TAG_member
	.dwattr $C$DW$295, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$295, DW_AT_name("INTx14")
	.dwattr $C$DW$295, DW_AT_TI_symbol_name("_INTx14")
	.dwattr $C$DW$295, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$295, DW_AT_bit_size(0x01)
	.dwattr $C$DW$295, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$295, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$296	.dwtag  DW_TAG_member
	.dwattr $C$DW$296, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$296, DW_AT_name("INTx15")
	.dwattr $C$DW$296, DW_AT_TI_symbol_name("_INTx15")
	.dwattr $C$DW$296, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$296, DW_AT_bit_size(0x01)
	.dwattr $C$DW$296, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$296, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$297	.dwtag  DW_TAG_member
	.dwattr $C$DW$297, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$297, DW_AT_name("INTx16")
	.dwattr $C$DW$297, DW_AT_TI_symbol_name("_INTx16")
	.dwattr $C$DW$297, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$297, DW_AT_bit_size(0x01)
	.dwattr $C$DW$297, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$297, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$50


$C$DW$T$51	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$51, DW_AT_name("PIEIFR11_REG")
	.dwattr $C$DW$T$51, DW_AT_byte_size(0x01)
$C$DW$298	.dwtag  DW_TAG_member
	.dwattr $C$DW$298, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$298, DW_AT_name("all")
	.dwattr $C$DW$298, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$298, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$298, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$299	.dwtag  DW_TAG_member
	.dwattr $C$DW$299, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$299, DW_AT_name("bit")
	.dwattr $C$DW$299, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$299, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$299, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$51


$C$DW$T$52	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$52, DW_AT_name("PIEIFR12_BITS")
	.dwattr $C$DW$T$52, DW_AT_byte_size(0x01)
$C$DW$300	.dwtag  DW_TAG_member
	.dwattr $C$DW$300, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$300, DW_AT_name("INTx1")
	.dwattr $C$DW$300, DW_AT_TI_symbol_name("_INTx1")
	.dwattr $C$DW$300, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$300, DW_AT_bit_size(0x01)
	.dwattr $C$DW$300, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$300, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$301	.dwtag  DW_TAG_member
	.dwattr $C$DW$301, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$301, DW_AT_name("INTx2")
	.dwattr $C$DW$301, DW_AT_TI_symbol_name("_INTx2")
	.dwattr $C$DW$301, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$301, DW_AT_bit_size(0x01)
	.dwattr $C$DW$301, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$301, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$302	.dwtag  DW_TAG_member
	.dwattr $C$DW$302, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$302, DW_AT_name("INTx3")
	.dwattr $C$DW$302, DW_AT_TI_symbol_name("_INTx3")
	.dwattr $C$DW$302, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$302, DW_AT_bit_size(0x01)
	.dwattr $C$DW$302, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$302, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$303	.dwtag  DW_TAG_member
	.dwattr $C$DW$303, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$303, DW_AT_name("INTx4")
	.dwattr $C$DW$303, DW_AT_TI_symbol_name("_INTx4")
	.dwattr $C$DW$303, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$303, DW_AT_bit_size(0x01)
	.dwattr $C$DW$303, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$303, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$304	.dwtag  DW_TAG_member
	.dwattr $C$DW$304, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$304, DW_AT_name("INTx5")
	.dwattr $C$DW$304, DW_AT_TI_symbol_name("_INTx5")
	.dwattr $C$DW$304, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$304, DW_AT_bit_size(0x01)
	.dwattr $C$DW$304, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$304, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$305	.dwtag  DW_TAG_member
	.dwattr $C$DW$305, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$305, DW_AT_name("INTx6")
	.dwattr $C$DW$305, DW_AT_TI_symbol_name("_INTx6")
	.dwattr $C$DW$305, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$305, DW_AT_bit_size(0x01)
	.dwattr $C$DW$305, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$305, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$306	.dwtag  DW_TAG_member
	.dwattr $C$DW$306, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$306, DW_AT_name("INTx7")
	.dwattr $C$DW$306, DW_AT_TI_symbol_name("_INTx7")
	.dwattr $C$DW$306, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$306, DW_AT_bit_size(0x01)
	.dwattr $C$DW$306, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$306, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$307	.dwtag  DW_TAG_member
	.dwattr $C$DW$307, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$307, DW_AT_name("INTx8")
	.dwattr $C$DW$307, DW_AT_TI_symbol_name("_INTx8")
	.dwattr $C$DW$307, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$307, DW_AT_bit_size(0x01)
	.dwattr $C$DW$307, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$307, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$308	.dwtag  DW_TAG_member
	.dwattr $C$DW$308, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$308, DW_AT_name("INTx9")
	.dwattr $C$DW$308, DW_AT_TI_symbol_name("_INTx9")
	.dwattr $C$DW$308, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$308, DW_AT_bit_size(0x01)
	.dwattr $C$DW$308, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$308, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$309	.dwtag  DW_TAG_member
	.dwattr $C$DW$309, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$309, DW_AT_name("INTx10")
	.dwattr $C$DW$309, DW_AT_TI_symbol_name("_INTx10")
	.dwattr $C$DW$309, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$309, DW_AT_bit_size(0x01)
	.dwattr $C$DW$309, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$309, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$310	.dwtag  DW_TAG_member
	.dwattr $C$DW$310, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$310, DW_AT_name("INTx11")
	.dwattr $C$DW$310, DW_AT_TI_symbol_name("_INTx11")
	.dwattr $C$DW$310, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$310, DW_AT_bit_size(0x01)
	.dwattr $C$DW$310, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$310, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$311	.dwtag  DW_TAG_member
	.dwattr $C$DW$311, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$311, DW_AT_name("INTx12")
	.dwattr $C$DW$311, DW_AT_TI_symbol_name("_INTx12")
	.dwattr $C$DW$311, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$311, DW_AT_bit_size(0x01)
	.dwattr $C$DW$311, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$311, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$312	.dwtag  DW_TAG_member
	.dwattr $C$DW$312, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$312, DW_AT_name("INTx13")
	.dwattr $C$DW$312, DW_AT_TI_symbol_name("_INTx13")
	.dwattr $C$DW$312, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$312, DW_AT_bit_size(0x01)
	.dwattr $C$DW$312, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$312, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$313	.dwtag  DW_TAG_member
	.dwattr $C$DW$313, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$313, DW_AT_name("INTx14")
	.dwattr $C$DW$313, DW_AT_TI_symbol_name("_INTx14")
	.dwattr $C$DW$313, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$313, DW_AT_bit_size(0x01)
	.dwattr $C$DW$313, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$313, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$314	.dwtag  DW_TAG_member
	.dwattr $C$DW$314, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$314, DW_AT_name("INTx15")
	.dwattr $C$DW$314, DW_AT_TI_symbol_name("_INTx15")
	.dwattr $C$DW$314, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$314, DW_AT_bit_size(0x01)
	.dwattr $C$DW$314, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$314, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$315	.dwtag  DW_TAG_member
	.dwattr $C$DW$315, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$315, DW_AT_name("INTx16")
	.dwattr $C$DW$315, DW_AT_TI_symbol_name("_INTx16")
	.dwattr $C$DW$315, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$315, DW_AT_bit_size(0x01)
	.dwattr $C$DW$315, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$315, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$52


$C$DW$T$53	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$53, DW_AT_name("PIEIFR12_REG")
	.dwattr $C$DW$T$53, DW_AT_byte_size(0x01)
$C$DW$316	.dwtag  DW_TAG_member
	.dwattr $C$DW$316, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$316, DW_AT_name("all")
	.dwattr $C$DW$316, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$316, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$316, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$317	.dwtag  DW_TAG_member
	.dwattr $C$DW$317, DW_AT_type(*$C$DW$T$52)
	.dwattr $C$DW$317, DW_AT_name("bit")
	.dwattr $C$DW$317, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$317, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$317, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$53


$C$DW$T$54	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$54, DW_AT_name("PIEIFR1_BITS")
	.dwattr $C$DW$T$54, DW_AT_byte_size(0x01)
$C$DW$318	.dwtag  DW_TAG_member
	.dwattr $C$DW$318, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$318, DW_AT_name("INTx1")
	.dwattr $C$DW$318, DW_AT_TI_symbol_name("_INTx1")
	.dwattr $C$DW$318, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$318, DW_AT_bit_size(0x01)
	.dwattr $C$DW$318, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$318, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$319	.dwtag  DW_TAG_member
	.dwattr $C$DW$319, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$319, DW_AT_name("INTx2")
	.dwattr $C$DW$319, DW_AT_TI_symbol_name("_INTx2")
	.dwattr $C$DW$319, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$319, DW_AT_bit_size(0x01)
	.dwattr $C$DW$319, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$319, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$320	.dwtag  DW_TAG_member
	.dwattr $C$DW$320, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$320, DW_AT_name("INTx3")
	.dwattr $C$DW$320, DW_AT_TI_symbol_name("_INTx3")
	.dwattr $C$DW$320, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$320, DW_AT_bit_size(0x01)
	.dwattr $C$DW$320, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$320, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$321	.dwtag  DW_TAG_member
	.dwattr $C$DW$321, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$321, DW_AT_name("INTx4")
	.dwattr $C$DW$321, DW_AT_TI_symbol_name("_INTx4")
	.dwattr $C$DW$321, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$321, DW_AT_bit_size(0x01)
	.dwattr $C$DW$321, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$321, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$322	.dwtag  DW_TAG_member
	.dwattr $C$DW$322, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$322, DW_AT_name("INTx5")
	.dwattr $C$DW$322, DW_AT_TI_symbol_name("_INTx5")
	.dwattr $C$DW$322, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$322, DW_AT_bit_size(0x01)
	.dwattr $C$DW$322, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$322, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$323	.dwtag  DW_TAG_member
	.dwattr $C$DW$323, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$323, DW_AT_name("INTx6")
	.dwattr $C$DW$323, DW_AT_TI_symbol_name("_INTx6")
	.dwattr $C$DW$323, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$323, DW_AT_bit_size(0x01)
	.dwattr $C$DW$323, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$323, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$324	.dwtag  DW_TAG_member
	.dwattr $C$DW$324, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$324, DW_AT_name("INTx7")
	.dwattr $C$DW$324, DW_AT_TI_symbol_name("_INTx7")
	.dwattr $C$DW$324, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$324, DW_AT_bit_size(0x01)
	.dwattr $C$DW$324, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$324, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$325	.dwtag  DW_TAG_member
	.dwattr $C$DW$325, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$325, DW_AT_name("INTx8")
	.dwattr $C$DW$325, DW_AT_TI_symbol_name("_INTx8")
	.dwattr $C$DW$325, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$325, DW_AT_bit_size(0x01)
	.dwattr $C$DW$325, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$325, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$326	.dwtag  DW_TAG_member
	.dwattr $C$DW$326, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$326, DW_AT_name("INTx9")
	.dwattr $C$DW$326, DW_AT_TI_symbol_name("_INTx9")
	.dwattr $C$DW$326, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$326, DW_AT_bit_size(0x01)
	.dwattr $C$DW$326, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$326, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$327	.dwtag  DW_TAG_member
	.dwattr $C$DW$327, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$327, DW_AT_name("INTx10")
	.dwattr $C$DW$327, DW_AT_TI_symbol_name("_INTx10")
	.dwattr $C$DW$327, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$327, DW_AT_bit_size(0x01)
	.dwattr $C$DW$327, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$327, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$328	.dwtag  DW_TAG_member
	.dwattr $C$DW$328, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$328, DW_AT_name("INTx11")
	.dwattr $C$DW$328, DW_AT_TI_symbol_name("_INTx11")
	.dwattr $C$DW$328, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$328, DW_AT_bit_size(0x01)
	.dwattr $C$DW$328, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$328, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$329	.dwtag  DW_TAG_member
	.dwattr $C$DW$329, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$329, DW_AT_name("INTx12")
	.dwattr $C$DW$329, DW_AT_TI_symbol_name("_INTx12")
	.dwattr $C$DW$329, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$329, DW_AT_bit_size(0x01)
	.dwattr $C$DW$329, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$329, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$330	.dwtag  DW_TAG_member
	.dwattr $C$DW$330, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$330, DW_AT_name("INTx13")
	.dwattr $C$DW$330, DW_AT_TI_symbol_name("_INTx13")
	.dwattr $C$DW$330, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$330, DW_AT_bit_size(0x01)
	.dwattr $C$DW$330, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$330, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$331	.dwtag  DW_TAG_member
	.dwattr $C$DW$331, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$331, DW_AT_name("INTx14")
	.dwattr $C$DW$331, DW_AT_TI_symbol_name("_INTx14")
	.dwattr $C$DW$331, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$331, DW_AT_bit_size(0x01)
	.dwattr $C$DW$331, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$331, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$332	.dwtag  DW_TAG_member
	.dwattr $C$DW$332, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$332, DW_AT_name("INTx15")
	.dwattr $C$DW$332, DW_AT_TI_symbol_name("_INTx15")
	.dwattr $C$DW$332, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$332, DW_AT_bit_size(0x01)
	.dwattr $C$DW$332, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$332, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$333	.dwtag  DW_TAG_member
	.dwattr $C$DW$333, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$333, DW_AT_name("INTx16")
	.dwattr $C$DW$333, DW_AT_TI_symbol_name("_INTx16")
	.dwattr $C$DW$333, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$333, DW_AT_bit_size(0x01)
	.dwattr $C$DW$333, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$333, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$54


$C$DW$T$55	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$55, DW_AT_name("PIEIFR1_REG")
	.dwattr $C$DW$T$55, DW_AT_byte_size(0x01)
$C$DW$334	.dwtag  DW_TAG_member
	.dwattr $C$DW$334, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$334, DW_AT_name("all")
	.dwattr $C$DW$334, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$334, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$334, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$335	.dwtag  DW_TAG_member
	.dwattr $C$DW$335, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$335, DW_AT_name("bit")
	.dwattr $C$DW$335, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$335, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$335, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$55


$C$DW$T$56	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$56, DW_AT_name("PIEIFR2_BITS")
	.dwattr $C$DW$T$56, DW_AT_byte_size(0x01)
$C$DW$336	.dwtag  DW_TAG_member
	.dwattr $C$DW$336, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$336, DW_AT_name("INTx1")
	.dwattr $C$DW$336, DW_AT_TI_symbol_name("_INTx1")
	.dwattr $C$DW$336, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$336, DW_AT_bit_size(0x01)
	.dwattr $C$DW$336, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$336, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$337	.dwtag  DW_TAG_member
	.dwattr $C$DW$337, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$337, DW_AT_name("INTx2")
	.dwattr $C$DW$337, DW_AT_TI_symbol_name("_INTx2")
	.dwattr $C$DW$337, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$337, DW_AT_bit_size(0x01)
	.dwattr $C$DW$337, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$337, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$338	.dwtag  DW_TAG_member
	.dwattr $C$DW$338, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$338, DW_AT_name("INTx3")
	.dwattr $C$DW$338, DW_AT_TI_symbol_name("_INTx3")
	.dwattr $C$DW$338, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$338, DW_AT_bit_size(0x01)
	.dwattr $C$DW$338, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$338, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$339	.dwtag  DW_TAG_member
	.dwattr $C$DW$339, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$339, DW_AT_name("INTx4")
	.dwattr $C$DW$339, DW_AT_TI_symbol_name("_INTx4")
	.dwattr $C$DW$339, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$339, DW_AT_bit_size(0x01)
	.dwattr $C$DW$339, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$339, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$340	.dwtag  DW_TAG_member
	.dwattr $C$DW$340, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$340, DW_AT_name("INTx5")
	.dwattr $C$DW$340, DW_AT_TI_symbol_name("_INTx5")
	.dwattr $C$DW$340, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$340, DW_AT_bit_size(0x01)
	.dwattr $C$DW$340, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$340, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$341	.dwtag  DW_TAG_member
	.dwattr $C$DW$341, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$341, DW_AT_name("INTx6")
	.dwattr $C$DW$341, DW_AT_TI_symbol_name("_INTx6")
	.dwattr $C$DW$341, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$341, DW_AT_bit_size(0x01)
	.dwattr $C$DW$341, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$341, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$342	.dwtag  DW_TAG_member
	.dwattr $C$DW$342, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$342, DW_AT_name("INTx7")
	.dwattr $C$DW$342, DW_AT_TI_symbol_name("_INTx7")
	.dwattr $C$DW$342, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$342, DW_AT_bit_size(0x01)
	.dwattr $C$DW$342, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$342, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$343	.dwtag  DW_TAG_member
	.dwattr $C$DW$343, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$343, DW_AT_name("INTx8")
	.dwattr $C$DW$343, DW_AT_TI_symbol_name("_INTx8")
	.dwattr $C$DW$343, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$343, DW_AT_bit_size(0x01)
	.dwattr $C$DW$343, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$343, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$344	.dwtag  DW_TAG_member
	.dwattr $C$DW$344, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$344, DW_AT_name("INTx9")
	.dwattr $C$DW$344, DW_AT_TI_symbol_name("_INTx9")
	.dwattr $C$DW$344, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$344, DW_AT_bit_size(0x01)
	.dwattr $C$DW$344, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$344, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$345	.dwtag  DW_TAG_member
	.dwattr $C$DW$345, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$345, DW_AT_name("INTx10")
	.dwattr $C$DW$345, DW_AT_TI_symbol_name("_INTx10")
	.dwattr $C$DW$345, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$345, DW_AT_bit_size(0x01)
	.dwattr $C$DW$345, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$345, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$346	.dwtag  DW_TAG_member
	.dwattr $C$DW$346, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$346, DW_AT_name("INTx11")
	.dwattr $C$DW$346, DW_AT_TI_symbol_name("_INTx11")
	.dwattr $C$DW$346, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$346, DW_AT_bit_size(0x01)
	.dwattr $C$DW$346, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$346, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$347	.dwtag  DW_TAG_member
	.dwattr $C$DW$347, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$347, DW_AT_name("INTx12")
	.dwattr $C$DW$347, DW_AT_TI_symbol_name("_INTx12")
	.dwattr $C$DW$347, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$347, DW_AT_bit_size(0x01)
	.dwattr $C$DW$347, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$347, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$348	.dwtag  DW_TAG_member
	.dwattr $C$DW$348, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$348, DW_AT_name("INTx13")
	.dwattr $C$DW$348, DW_AT_TI_symbol_name("_INTx13")
	.dwattr $C$DW$348, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$348, DW_AT_bit_size(0x01)
	.dwattr $C$DW$348, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$348, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$349	.dwtag  DW_TAG_member
	.dwattr $C$DW$349, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$349, DW_AT_name("INTx14")
	.dwattr $C$DW$349, DW_AT_TI_symbol_name("_INTx14")
	.dwattr $C$DW$349, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$349, DW_AT_bit_size(0x01)
	.dwattr $C$DW$349, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$349, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$350	.dwtag  DW_TAG_member
	.dwattr $C$DW$350, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$350, DW_AT_name("INTx15")
	.dwattr $C$DW$350, DW_AT_TI_symbol_name("_INTx15")
	.dwattr $C$DW$350, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$350, DW_AT_bit_size(0x01)
	.dwattr $C$DW$350, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$350, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$351	.dwtag  DW_TAG_member
	.dwattr $C$DW$351, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$351, DW_AT_name("INTx16")
	.dwattr $C$DW$351, DW_AT_TI_symbol_name("_INTx16")
	.dwattr $C$DW$351, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$351, DW_AT_bit_size(0x01)
	.dwattr $C$DW$351, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$351, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$56


$C$DW$T$57	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$57, DW_AT_name("PIEIFR2_REG")
	.dwattr $C$DW$T$57, DW_AT_byte_size(0x01)
$C$DW$352	.dwtag  DW_TAG_member
	.dwattr $C$DW$352, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$352, DW_AT_name("all")
	.dwattr $C$DW$352, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$352, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$352, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$353	.dwtag  DW_TAG_member
	.dwattr $C$DW$353, DW_AT_type(*$C$DW$T$56)
	.dwattr $C$DW$353, DW_AT_name("bit")
	.dwattr $C$DW$353, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$353, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$353, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$57


$C$DW$T$58	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$58, DW_AT_name("PIEIFR3_BITS")
	.dwattr $C$DW$T$58, DW_AT_byte_size(0x01)
$C$DW$354	.dwtag  DW_TAG_member
	.dwattr $C$DW$354, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$354, DW_AT_name("INTx1")
	.dwattr $C$DW$354, DW_AT_TI_symbol_name("_INTx1")
	.dwattr $C$DW$354, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$354, DW_AT_bit_size(0x01)
	.dwattr $C$DW$354, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$354, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$355	.dwtag  DW_TAG_member
	.dwattr $C$DW$355, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$355, DW_AT_name("INTx2")
	.dwattr $C$DW$355, DW_AT_TI_symbol_name("_INTx2")
	.dwattr $C$DW$355, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$355, DW_AT_bit_size(0x01)
	.dwattr $C$DW$355, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$355, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$356	.dwtag  DW_TAG_member
	.dwattr $C$DW$356, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$356, DW_AT_name("INTx3")
	.dwattr $C$DW$356, DW_AT_TI_symbol_name("_INTx3")
	.dwattr $C$DW$356, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$356, DW_AT_bit_size(0x01)
	.dwattr $C$DW$356, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$356, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$357	.dwtag  DW_TAG_member
	.dwattr $C$DW$357, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$357, DW_AT_name("INTx4")
	.dwattr $C$DW$357, DW_AT_TI_symbol_name("_INTx4")
	.dwattr $C$DW$357, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$357, DW_AT_bit_size(0x01)
	.dwattr $C$DW$357, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$357, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$358	.dwtag  DW_TAG_member
	.dwattr $C$DW$358, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$358, DW_AT_name("INTx5")
	.dwattr $C$DW$358, DW_AT_TI_symbol_name("_INTx5")
	.dwattr $C$DW$358, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$358, DW_AT_bit_size(0x01)
	.dwattr $C$DW$358, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$358, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$359	.dwtag  DW_TAG_member
	.dwattr $C$DW$359, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$359, DW_AT_name("INTx6")
	.dwattr $C$DW$359, DW_AT_TI_symbol_name("_INTx6")
	.dwattr $C$DW$359, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$359, DW_AT_bit_size(0x01)
	.dwattr $C$DW$359, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$359, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$360	.dwtag  DW_TAG_member
	.dwattr $C$DW$360, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$360, DW_AT_name("INTx7")
	.dwattr $C$DW$360, DW_AT_TI_symbol_name("_INTx7")
	.dwattr $C$DW$360, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$360, DW_AT_bit_size(0x01)
	.dwattr $C$DW$360, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$360, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$361	.dwtag  DW_TAG_member
	.dwattr $C$DW$361, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$361, DW_AT_name("INTx8")
	.dwattr $C$DW$361, DW_AT_TI_symbol_name("_INTx8")
	.dwattr $C$DW$361, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$361, DW_AT_bit_size(0x01)
	.dwattr $C$DW$361, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$361, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$362	.dwtag  DW_TAG_member
	.dwattr $C$DW$362, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$362, DW_AT_name("INTx9")
	.dwattr $C$DW$362, DW_AT_TI_symbol_name("_INTx9")
	.dwattr $C$DW$362, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$362, DW_AT_bit_size(0x01)
	.dwattr $C$DW$362, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$362, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$363	.dwtag  DW_TAG_member
	.dwattr $C$DW$363, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$363, DW_AT_name("INTx10")
	.dwattr $C$DW$363, DW_AT_TI_symbol_name("_INTx10")
	.dwattr $C$DW$363, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$363, DW_AT_bit_size(0x01)
	.dwattr $C$DW$363, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$363, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$364	.dwtag  DW_TAG_member
	.dwattr $C$DW$364, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$364, DW_AT_name("INTx11")
	.dwattr $C$DW$364, DW_AT_TI_symbol_name("_INTx11")
	.dwattr $C$DW$364, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$364, DW_AT_bit_size(0x01)
	.dwattr $C$DW$364, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$364, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$365	.dwtag  DW_TAG_member
	.dwattr $C$DW$365, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$365, DW_AT_name("INTx12")
	.dwattr $C$DW$365, DW_AT_TI_symbol_name("_INTx12")
	.dwattr $C$DW$365, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$365, DW_AT_bit_size(0x01)
	.dwattr $C$DW$365, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$365, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$366	.dwtag  DW_TAG_member
	.dwattr $C$DW$366, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$366, DW_AT_name("INTx13")
	.dwattr $C$DW$366, DW_AT_TI_symbol_name("_INTx13")
	.dwattr $C$DW$366, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$366, DW_AT_bit_size(0x01)
	.dwattr $C$DW$366, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$366, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$367	.dwtag  DW_TAG_member
	.dwattr $C$DW$367, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$367, DW_AT_name("INTx14")
	.dwattr $C$DW$367, DW_AT_TI_symbol_name("_INTx14")
	.dwattr $C$DW$367, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$367, DW_AT_bit_size(0x01)
	.dwattr $C$DW$367, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$367, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$368	.dwtag  DW_TAG_member
	.dwattr $C$DW$368, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$368, DW_AT_name("INTx15")
	.dwattr $C$DW$368, DW_AT_TI_symbol_name("_INTx15")
	.dwattr $C$DW$368, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$368, DW_AT_bit_size(0x01)
	.dwattr $C$DW$368, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$368, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$369	.dwtag  DW_TAG_member
	.dwattr $C$DW$369, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$369, DW_AT_name("INTx16")
	.dwattr $C$DW$369, DW_AT_TI_symbol_name("_INTx16")
	.dwattr $C$DW$369, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$369, DW_AT_bit_size(0x01)
	.dwattr $C$DW$369, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$369, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$58


$C$DW$T$59	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$59, DW_AT_name("PIEIFR3_REG")
	.dwattr $C$DW$T$59, DW_AT_byte_size(0x01)
$C$DW$370	.dwtag  DW_TAG_member
	.dwattr $C$DW$370, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$370, DW_AT_name("all")
	.dwattr $C$DW$370, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$370, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$370, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$371	.dwtag  DW_TAG_member
	.dwattr $C$DW$371, DW_AT_type(*$C$DW$T$58)
	.dwattr $C$DW$371, DW_AT_name("bit")
	.dwattr $C$DW$371, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$371, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$371, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$59


$C$DW$T$60	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$60, DW_AT_name("PIEIFR4_BITS")
	.dwattr $C$DW$T$60, DW_AT_byte_size(0x01)
$C$DW$372	.dwtag  DW_TAG_member
	.dwattr $C$DW$372, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$372, DW_AT_name("INTx1")
	.dwattr $C$DW$372, DW_AT_TI_symbol_name("_INTx1")
	.dwattr $C$DW$372, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$372, DW_AT_bit_size(0x01)
	.dwattr $C$DW$372, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$372, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$373	.dwtag  DW_TAG_member
	.dwattr $C$DW$373, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$373, DW_AT_name("INTx2")
	.dwattr $C$DW$373, DW_AT_TI_symbol_name("_INTx2")
	.dwattr $C$DW$373, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$373, DW_AT_bit_size(0x01)
	.dwattr $C$DW$373, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$373, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$374	.dwtag  DW_TAG_member
	.dwattr $C$DW$374, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$374, DW_AT_name("INTx3")
	.dwattr $C$DW$374, DW_AT_TI_symbol_name("_INTx3")
	.dwattr $C$DW$374, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$374, DW_AT_bit_size(0x01)
	.dwattr $C$DW$374, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$374, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$375	.dwtag  DW_TAG_member
	.dwattr $C$DW$375, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$375, DW_AT_name("INTx4")
	.dwattr $C$DW$375, DW_AT_TI_symbol_name("_INTx4")
	.dwattr $C$DW$375, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$375, DW_AT_bit_size(0x01)
	.dwattr $C$DW$375, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$375, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$376	.dwtag  DW_TAG_member
	.dwattr $C$DW$376, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$376, DW_AT_name("INTx5")
	.dwattr $C$DW$376, DW_AT_TI_symbol_name("_INTx5")
	.dwattr $C$DW$376, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$376, DW_AT_bit_size(0x01)
	.dwattr $C$DW$376, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$376, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$377	.dwtag  DW_TAG_member
	.dwattr $C$DW$377, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$377, DW_AT_name("INTx6")
	.dwattr $C$DW$377, DW_AT_TI_symbol_name("_INTx6")
	.dwattr $C$DW$377, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$377, DW_AT_bit_size(0x01)
	.dwattr $C$DW$377, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$377, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$378	.dwtag  DW_TAG_member
	.dwattr $C$DW$378, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$378, DW_AT_name("INTx7")
	.dwattr $C$DW$378, DW_AT_TI_symbol_name("_INTx7")
	.dwattr $C$DW$378, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$378, DW_AT_bit_size(0x01)
	.dwattr $C$DW$378, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$378, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$379	.dwtag  DW_TAG_member
	.dwattr $C$DW$379, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$379, DW_AT_name("INTx8")
	.dwattr $C$DW$379, DW_AT_TI_symbol_name("_INTx8")
	.dwattr $C$DW$379, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$379, DW_AT_bit_size(0x01)
	.dwattr $C$DW$379, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$379, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$380	.dwtag  DW_TAG_member
	.dwattr $C$DW$380, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$380, DW_AT_name("INTx9")
	.dwattr $C$DW$380, DW_AT_TI_symbol_name("_INTx9")
	.dwattr $C$DW$380, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$380, DW_AT_bit_size(0x01)
	.dwattr $C$DW$380, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$380, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$381	.dwtag  DW_TAG_member
	.dwattr $C$DW$381, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$381, DW_AT_name("INTx10")
	.dwattr $C$DW$381, DW_AT_TI_symbol_name("_INTx10")
	.dwattr $C$DW$381, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$381, DW_AT_bit_size(0x01)
	.dwattr $C$DW$381, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$381, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$382	.dwtag  DW_TAG_member
	.dwattr $C$DW$382, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$382, DW_AT_name("INTx11")
	.dwattr $C$DW$382, DW_AT_TI_symbol_name("_INTx11")
	.dwattr $C$DW$382, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$382, DW_AT_bit_size(0x01)
	.dwattr $C$DW$382, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$382, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$383	.dwtag  DW_TAG_member
	.dwattr $C$DW$383, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$383, DW_AT_name("INTx12")
	.dwattr $C$DW$383, DW_AT_TI_symbol_name("_INTx12")
	.dwattr $C$DW$383, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$383, DW_AT_bit_size(0x01)
	.dwattr $C$DW$383, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$383, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$384	.dwtag  DW_TAG_member
	.dwattr $C$DW$384, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$384, DW_AT_name("INTx13")
	.dwattr $C$DW$384, DW_AT_TI_symbol_name("_INTx13")
	.dwattr $C$DW$384, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$384, DW_AT_bit_size(0x01)
	.dwattr $C$DW$384, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$384, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$385	.dwtag  DW_TAG_member
	.dwattr $C$DW$385, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$385, DW_AT_name("INTx14")
	.dwattr $C$DW$385, DW_AT_TI_symbol_name("_INTx14")
	.dwattr $C$DW$385, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$385, DW_AT_bit_size(0x01)
	.dwattr $C$DW$385, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$385, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$386	.dwtag  DW_TAG_member
	.dwattr $C$DW$386, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$386, DW_AT_name("INTx15")
	.dwattr $C$DW$386, DW_AT_TI_symbol_name("_INTx15")
	.dwattr $C$DW$386, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$386, DW_AT_bit_size(0x01)
	.dwattr $C$DW$386, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$386, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$387	.dwtag  DW_TAG_member
	.dwattr $C$DW$387, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$387, DW_AT_name("INTx16")
	.dwattr $C$DW$387, DW_AT_TI_symbol_name("_INTx16")
	.dwattr $C$DW$387, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$387, DW_AT_bit_size(0x01)
	.dwattr $C$DW$387, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$387, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$60


$C$DW$T$61	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$61, DW_AT_name("PIEIFR4_REG")
	.dwattr $C$DW$T$61, DW_AT_byte_size(0x01)
$C$DW$388	.dwtag  DW_TAG_member
	.dwattr $C$DW$388, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$388, DW_AT_name("all")
	.dwattr $C$DW$388, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$388, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$388, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$389	.dwtag  DW_TAG_member
	.dwattr $C$DW$389, DW_AT_type(*$C$DW$T$60)
	.dwattr $C$DW$389, DW_AT_name("bit")
	.dwattr $C$DW$389, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$389, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$389, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$61


$C$DW$T$62	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$62, DW_AT_name("PIEIFR5_BITS")
	.dwattr $C$DW$T$62, DW_AT_byte_size(0x01)
$C$DW$390	.dwtag  DW_TAG_member
	.dwattr $C$DW$390, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$390, DW_AT_name("INTx1")
	.dwattr $C$DW$390, DW_AT_TI_symbol_name("_INTx1")
	.dwattr $C$DW$390, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$390, DW_AT_bit_size(0x01)
	.dwattr $C$DW$390, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$390, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$391	.dwtag  DW_TAG_member
	.dwattr $C$DW$391, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$391, DW_AT_name("INTx2")
	.dwattr $C$DW$391, DW_AT_TI_symbol_name("_INTx2")
	.dwattr $C$DW$391, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$391, DW_AT_bit_size(0x01)
	.dwattr $C$DW$391, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$391, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$392	.dwtag  DW_TAG_member
	.dwattr $C$DW$392, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$392, DW_AT_name("INTx3")
	.dwattr $C$DW$392, DW_AT_TI_symbol_name("_INTx3")
	.dwattr $C$DW$392, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$392, DW_AT_bit_size(0x01)
	.dwattr $C$DW$392, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$392, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$393	.dwtag  DW_TAG_member
	.dwattr $C$DW$393, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$393, DW_AT_name("INTx4")
	.dwattr $C$DW$393, DW_AT_TI_symbol_name("_INTx4")
	.dwattr $C$DW$393, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$393, DW_AT_bit_size(0x01)
	.dwattr $C$DW$393, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$393, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$394	.dwtag  DW_TAG_member
	.dwattr $C$DW$394, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$394, DW_AT_name("INTx5")
	.dwattr $C$DW$394, DW_AT_TI_symbol_name("_INTx5")
	.dwattr $C$DW$394, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$394, DW_AT_bit_size(0x01)
	.dwattr $C$DW$394, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$394, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$395	.dwtag  DW_TAG_member
	.dwattr $C$DW$395, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$395, DW_AT_name("INTx6")
	.dwattr $C$DW$395, DW_AT_TI_symbol_name("_INTx6")
	.dwattr $C$DW$395, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$395, DW_AT_bit_size(0x01)
	.dwattr $C$DW$395, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$395, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$396	.dwtag  DW_TAG_member
	.dwattr $C$DW$396, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$396, DW_AT_name("INTx7")
	.dwattr $C$DW$396, DW_AT_TI_symbol_name("_INTx7")
	.dwattr $C$DW$396, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$396, DW_AT_bit_size(0x01)
	.dwattr $C$DW$396, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$396, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$397	.dwtag  DW_TAG_member
	.dwattr $C$DW$397, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$397, DW_AT_name("INTx8")
	.dwattr $C$DW$397, DW_AT_TI_symbol_name("_INTx8")
	.dwattr $C$DW$397, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$397, DW_AT_bit_size(0x01)
	.dwattr $C$DW$397, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$397, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$398	.dwtag  DW_TAG_member
	.dwattr $C$DW$398, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$398, DW_AT_name("INTx9")
	.dwattr $C$DW$398, DW_AT_TI_symbol_name("_INTx9")
	.dwattr $C$DW$398, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$398, DW_AT_bit_size(0x01)
	.dwattr $C$DW$398, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$398, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$399	.dwtag  DW_TAG_member
	.dwattr $C$DW$399, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$399, DW_AT_name("INTx10")
	.dwattr $C$DW$399, DW_AT_TI_symbol_name("_INTx10")
	.dwattr $C$DW$399, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$399, DW_AT_bit_size(0x01)
	.dwattr $C$DW$399, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$399, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$400	.dwtag  DW_TAG_member
	.dwattr $C$DW$400, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$400, DW_AT_name("INTx11")
	.dwattr $C$DW$400, DW_AT_TI_symbol_name("_INTx11")
	.dwattr $C$DW$400, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$400, DW_AT_bit_size(0x01)
	.dwattr $C$DW$400, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$400, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$401	.dwtag  DW_TAG_member
	.dwattr $C$DW$401, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$401, DW_AT_name("INTx12")
	.dwattr $C$DW$401, DW_AT_TI_symbol_name("_INTx12")
	.dwattr $C$DW$401, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$401, DW_AT_bit_size(0x01)
	.dwattr $C$DW$401, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$401, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$402	.dwtag  DW_TAG_member
	.dwattr $C$DW$402, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$402, DW_AT_name("INTx13")
	.dwattr $C$DW$402, DW_AT_TI_symbol_name("_INTx13")
	.dwattr $C$DW$402, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$402, DW_AT_bit_size(0x01)
	.dwattr $C$DW$402, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$402, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$403	.dwtag  DW_TAG_member
	.dwattr $C$DW$403, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$403, DW_AT_name("INTx14")
	.dwattr $C$DW$403, DW_AT_TI_symbol_name("_INTx14")
	.dwattr $C$DW$403, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$403, DW_AT_bit_size(0x01)
	.dwattr $C$DW$403, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$403, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$404	.dwtag  DW_TAG_member
	.dwattr $C$DW$404, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$404, DW_AT_name("INTx15")
	.dwattr $C$DW$404, DW_AT_TI_symbol_name("_INTx15")
	.dwattr $C$DW$404, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$404, DW_AT_bit_size(0x01)
	.dwattr $C$DW$404, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$404, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$405	.dwtag  DW_TAG_member
	.dwattr $C$DW$405, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$405, DW_AT_name("INTx16")
	.dwattr $C$DW$405, DW_AT_TI_symbol_name("_INTx16")
	.dwattr $C$DW$405, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$405, DW_AT_bit_size(0x01)
	.dwattr $C$DW$405, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$405, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$62


$C$DW$T$63	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$63, DW_AT_name("PIEIFR5_REG")
	.dwattr $C$DW$T$63, DW_AT_byte_size(0x01)
$C$DW$406	.dwtag  DW_TAG_member
	.dwattr $C$DW$406, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$406, DW_AT_name("all")
	.dwattr $C$DW$406, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$406, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$406, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$407	.dwtag  DW_TAG_member
	.dwattr $C$DW$407, DW_AT_type(*$C$DW$T$62)
	.dwattr $C$DW$407, DW_AT_name("bit")
	.dwattr $C$DW$407, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$407, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$407, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$63


$C$DW$T$64	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$64, DW_AT_name("PIEIFR6_BITS")
	.dwattr $C$DW$T$64, DW_AT_byte_size(0x01)
$C$DW$408	.dwtag  DW_TAG_member
	.dwattr $C$DW$408, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$408, DW_AT_name("INTx1")
	.dwattr $C$DW$408, DW_AT_TI_symbol_name("_INTx1")
	.dwattr $C$DW$408, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$408, DW_AT_bit_size(0x01)
	.dwattr $C$DW$408, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$408, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$409	.dwtag  DW_TAG_member
	.dwattr $C$DW$409, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$409, DW_AT_name("INTx2")
	.dwattr $C$DW$409, DW_AT_TI_symbol_name("_INTx2")
	.dwattr $C$DW$409, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$409, DW_AT_bit_size(0x01)
	.dwattr $C$DW$409, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$409, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$410	.dwtag  DW_TAG_member
	.dwattr $C$DW$410, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$410, DW_AT_name("INTx3")
	.dwattr $C$DW$410, DW_AT_TI_symbol_name("_INTx3")
	.dwattr $C$DW$410, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$410, DW_AT_bit_size(0x01)
	.dwattr $C$DW$410, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$410, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$411	.dwtag  DW_TAG_member
	.dwattr $C$DW$411, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$411, DW_AT_name("INTx4")
	.dwattr $C$DW$411, DW_AT_TI_symbol_name("_INTx4")
	.dwattr $C$DW$411, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$411, DW_AT_bit_size(0x01)
	.dwattr $C$DW$411, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$411, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$412	.dwtag  DW_TAG_member
	.dwattr $C$DW$412, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$412, DW_AT_name("INTx5")
	.dwattr $C$DW$412, DW_AT_TI_symbol_name("_INTx5")
	.dwattr $C$DW$412, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$412, DW_AT_bit_size(0x01)
	.dwattr $C$DW$412, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$412, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$413	.dwtag  DW_TAG_member
	.dwattr $C$DW$413, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$413, DW_AT_name("INTx6")
	.dwattr $C$DW$413, DW_AT_TI_symbol_name("_INTx6")
	.dwattr $C$DW$413, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$413, DW_AT_bit_size(0x01)
	.dwattr $C$DW$413, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$413, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$414	.dwtag  DW_TAG_member
	.dwattr $C$DW$414, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$414, DW_AT_name("INTx7")
	.dwattr $C$DW$414, DW_AT_TI_symbol_name("_INTx7")
	.dwattr $C$DW$414, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$414, DW_AT_bit_size(0x01)
	.dwattr $C$DW$414, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$414, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$415	.dwtag  DW_TAG_member
	.dwattr $C$DW$415, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$415, DW_AT_name("INTx8")
	.dwattr $C$DW$415, DW_AT_TI_symbol_name("_INTx8")
	.dwattr $C$DW$415, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$415, DW_AT_bit_size(0x01)
	.dwattr $C$DW$415, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$415, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$416	.dwtag  DW_TAG_member
	.dwattr $C$DW$416, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$416, DW_AT_name("INTx9")
	.dwattr $C$DW$416, DW_AT_TI_symbol_name("_INTx9")
	.dwattr $C$DW$416, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$416, DW_AT_bit_size(0x01)
	.dwattr $C$DW$416, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$416, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$417	.dwtag  DW_TAG_member
	.dwattr $C$DW$417, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$417, DW_AT_name("INTx10")
	.dwattr $C$DW$417, DW_AT_TI_symbol_name("_INTx10")
	.dwattr $C$DW$417, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$417, DW_AT_bit_size(0x01)
	.dwattr $C$DW$417, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$417, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$418	.dwtag  DW_TAG_member
	.dwattr $C$DW$418, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$418, DW_AT_name("INTx11")
	.dwattr $C$DW$418, DW_AT_TI_symbol_name("_INTx11")
	.dwattr $C$DW$418, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$418, DW_AT_bit_size(0x01)
	.dwattr $C$DW$418, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$418, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$419	.dwtag  DW_TAG_member
	.dwattr $C$DW$419, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$419, DW_AT_name("INTx12")
	.dwattr $C$DW$419, DW_AT_TI_symbol_name("_INTx12")
	.dwattr $C$DW$419, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$419, DW_AT_bit_size(0x01)
	.dwattr $C$DW$419, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$419, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$420	.dwtag  DW_TAG_member
	.dwattr $C$DW$420, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$420, DW_AT_name("INTx13")
	.dwattr $C$DW$420, DW_AT_TI_symbol_name("_INTx13")
	.dwattr $C$DW$420, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$420, DW_AT_bit_size(0x01)
	.dwattr $C$DW$420, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$420, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$421	.dwtag  DW_TAG_member
	.dwattr $C$DW$421, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$421, DW_AT_name("INTx14")
	.dwattr $C$DW$421, DW_AT_TI_symbol_name("_INTx14")
	.dwattr $C$DW$421, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$421, DW_AT_bit_size(0x01)
	.dwattr $C$DW$421, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$421, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$422	.dwtag  DW_TAG_member
	.dwattr $C$DW$422, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$422, DW_AT_name("INTx15")
	.dwattr $C$DW$422, DW_AT_TI_symbol_name("_INTx15")
	.dwattr $C$DW$422, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$422, DW_AT_bit_size(0x01)
	.dwattr $C$DW$422, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$422, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$423	.dwtag  DW_TAG_member
	.dwattr $C$DW$423, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$423, DW_AT_name("INTx16")
	.dwattr $C$DW$423, DW_AT_TI_symbol_name("_INTx16")
	.dwattr $C$DW$423, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$423, DW_AT_bit_size(0x01)
	.dwattr $C$DW$423, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$423, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$64


$C$DW$T$65	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$65, DW_AT_name("PIEIFR6_REG")
	.dwattr $C$DW$T$65, DW_AT_byte_size(0x01)
$C$DW$424	.dwtag  DW_TAG_member
	.dwattr $C$DW$424, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$424, DW_AT_name("all")
	.dwattr $C$DW$424, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$424, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$424, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$425	.dwtag  DW_TAG_member
	.dwattr $C$DW$425, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$425, DW_AT_name("bit")
	.dwattr $C$DW$425, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$425, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$425, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$65


$C$DW$T$66	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$66, DW_AT_name("PIEIFR7_BITS")
	.dwattr $C$DW$T$66, DW_AT_byte_size(0x01)
$C$DW$426	.dwtag  DW_TAG_member
	.dwattr $C$DW$426, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$426, DW_AT_name("INTx1")
	.dwattr $C$DW$426, DW_AT_TI_symbol_name("_INTx1")
	.dwattr $C$DW$426, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$426, DW_AT_bit_size(0x01)
	.dwattr $C$DW$426, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$426, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$427	.dwtag  DW_TAG_member
	.dwattr $C$DW$427, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$427, DW_AT_name("INTx2")
	.dwattr $C$DW$427, DW_AT_TI_symbol_name("_INTx2")
	.dwattr $C$DW$427, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$427, DW_AT_bit_size(0x01)
	.dwattr $C$DW$427, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$427, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$428	.dwtag  DW_TAG_member
	.dwattr $C$DW$428, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$428, DW_AT_name("INTx3")
	.dwattr $C$DW$428, DW_AT_TI_symbol_name("_INTx3")
	.dwattr $C$DW$428, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$428, DW_AT_bit_size(0x01)
	.dwattr $C$DW$428, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$428, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$429	.dwtag  DW_TAG_member
	.dwattr $C$DW$429, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$429, DW_AT_name("INTx4")
	.dwattr $C$DW$429, DW_AT_TI_symbol_name("_INTx4")
	.dwattr $C$DW$429, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$429, DW_AT_bit_size(0x01)
	.dwattr $C$DW$429, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$429, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$430	.dwtag  DW_TAG_member
	.dwattr $C$DW$430, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$430, DW_AT_name("INTx5")
	.dwattr $C$DW$430, DW_AT_TI_symbol_name("_INTx5")
	.dwattr $C$DW$430, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$430, DW_AT_bit_size(0x01)
	.dwattr $C$DW$430, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$430, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$431	.dwtag  DW_TAG_member
	.dwattr $C$DW$431, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$431, DW_AT_name("INTx6")
	.dwattr $C$DW$431, DW_AT_TI_symbol_name("_INTx6")
	.dwattr $C$DW$431, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$431, DW_AT_bit_size(0x01)
	.dwattr $C$DW$431, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$431, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$432	.dwtag  DW_TAG_member
	.dwattr $C$DW$432, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$432, DW_AT_name("INTx7")
	.dwattr $C$DW$432, DW_AT_TI_symbol_name("_INTx7")
	.dwattr $C$DW$432, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$432, DW_AT_bit_size(0x01)
	.dwattr $C$DW$432, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$432, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$433	.dwtag  DW_TAG_member
	.dwattr $C$DW$433, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$433, DW_AT_name("INTx8")
	.dwattr $C$DW$433, DW_AT_TI_symbol_name("_INTx8")
	.dwattr $C$DW$433, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$433, DW_AT_bit_size(0x01)
	.dwattr $C$DW$433, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$433, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$434	.dwtag  DW_TAG_member
	.dwattr $C$DW$434, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$434, DW_AT_name("INTx9")
	.dwattr $C$DW$434, DW_AT_TI_symbol_name("_INTx9")
	.dwattr $C$DW$434, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$434, DW_AT_bit_size(0x01)
	.dwattr $C$DW$434, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$434, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$435	.dwtag  DW_TAG_member
	.dwattr $C$DW$435, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$435, DW_AT_name("INTx10")
	.dwattr $C$DW$435, DW_AT_TI_symbol_name("_INTx10")
	.dwattr $C$DW$435, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$435, DW_AT_bit_size(0x01)
	.dwattr $C$DW$435, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$435, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$436	.dwtag  DW_TAG_member
	.dwattr $C$DW$436, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$436, DW_AT_name("INTx11")
	.dwattr $C$DW$436, DW_AT_TI_symbol_name("_INTx11")
	.dwattr $C$DW$436, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$436, DW_AT_bit_size(0x01)
	.dwattr $C$DW$436, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$436, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$437	.dwtag  DW_TAG_member
	.dwattr $C$DW$437, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$437, DW_AT_name("INTx12")
	.dwattr $C$DW$437, DW_AT_TI_symbol_name("_INTx12")
	.dwattr $C$DW$437, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$437, DW_AT_bit_size(0x01)
	.dwattr $C$DW$437, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$437, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$438	.dwtag  DW_TAG_member
	.dwattr $C$DW$438, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$438, DW_AT_name("INTx13")
	.dwattr $C$DW$438, DW_AT_TI_symbol_name("_INTx13")
	.dwattr $C$DW$438, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$438, DW_AT_bit_size(0x01)
	.dwattr $C$DW$438, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$438, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$439	.dwtag  DW_TAG_member
	.dwattr $C$DW$439, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$439, DW_AT_name("INTx14")
	.dwattr $C$DW$439, DW_AT_TI_symbol_name("_INTx14")
	.dwattr $C$DW$439, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$439, DW_AT_bit_size(0x01)
	.dwattr $C$DW$439, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$439, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$440	.dwtag  DW_TAG_member
	.dwattr $C$DW$440, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$440, DW_AT_name("INTx15")
	.dwattr $C$DW$440, DW_AT_TI_symbol_name("_INTx15")
	.dwattr $C$DW$440, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$440, DW_AT_bit_size(0x01)
	.dwattr $C$DW$440, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$440, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$441	.dwtag  DW_TAG_member
	.dwattr $C$DW$441, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$441, DW_AT_name("INTx16")
	.dwattr $C$DW$441, DW_AT_TI_symbol_name("_INTx16")
	.dwattr $C$DW$441, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$441, DW_AT_bit_size(0x01)
	.dwattr $C$DW$441, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$441, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$66


$C$DW$T$67	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$67, DW_AT_name("PIEIFR7_REG")
	.dwattr $C$DW$T$67, DW_AT_byte_size(0x01)
$C$DW$442	.dwtag  DW_TAG_member
	.dwattr $C$DW$442, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$442, DW_AT_name("all")
	.dwattr $C$DW$442, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$442, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$442, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$443	.dwtag  DW_TAG_member
	.dwattr $C$DW$443, DW_AT_type(*$C$DW$T$66)
	.dwattr $C$DW$443, DW_AT_name("bit")
	.dwattr $C$DW$443, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$443, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$443, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$67


$C$DW$T$68	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$68, DW_AT_name("PIEIFR8_BITS")
	.dwattr $C$DW$T$68, DW_AT_byte_size(0x01)
$C$DW$444	.dwtag  DW_TAG_member
	.dwattr $C$DW$444, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$444, DW_AT_name("INTx1")
	.dwattr $C$DW$444, DW_AT_TI_symbol_name("_INTx1")
	.dwattr $C$DW$444, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$444, DW_AT_bit_size(0x01)
	.dwattr $C$DW$444, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$444, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$445	.dwtag  DW_TAG_member
	.dwattr $C$DW$445, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$445, DW_AT_name("INTx2")
	.dwattr $C$DW$445, DW_AT_TI_symbol_name("_INTx2")
	.dwattr $C$DW$445, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$445, DW_AT_bit_size(0x01)
	.dwattr $C$DW$445, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$445, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$446	.dwtag  DW_TAG_member
	.dwattr $C$DW$446, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$446, DW_AT_name("INTx3")
	.dwattr $C$DW$446, DW_AT_TI_symbol_name("_INTx3")
	.dwattr $C$DW$446, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$446, DW_AT_bit_size(0x01)
	.dwattr $C$DW$446, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$446, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$447	.dwtag  DW_TAG_member
	.dwattr $C$DW$447, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$447, DW_AT_name("INTx4")
	.dwattr $C$DW$447, DW_AT_TI_symbol_name("_INTx4")
	.dwattr $C$DW$447, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$447, DW_AT_bit_size(0x01)
	.dwattr $C$DW$447, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$447, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$448	.dwtag  DW_TAG_member
	.dwattr $C$DW$448, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$448, DW_AT_name("INTx5")
	.dwattr $C$DW$448, DW_AT_TI_symbol_name("_INTx5")
	.dwattr $C$DW$448, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$448, DW_AT_bit_size(0x01)
	.dwattr $C$DW$448, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$448, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$449	.dwtag  DW_TAG_member
	.dwattr $C$DW$449, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$449, DW_AT_name("INTx6")
	.dwattr $C$DW$449, DW_AT_TI_symbol_name("_INTx6")
	.dwattr $C$DW$449, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$449, DW_AT_bit_size(0x01)
	.dwattr $C$DW$449, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$449, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$450	.dwtag  DW_TAG_member
	.dwattr $C$DW$450, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$450, DW_AT_name("INTx7")
	.dwattr $C$DW$450, DW_AT_TI_symbol_name("_INTx7")
	.dwattr $C$DW$450, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$450, DW_AT_bit_size(0x01)
	.dwattr $C$DW$450, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$450, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$451	.dwtag  DW_TAG_member
	.dwattr $C$DW$451, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$451, DW_AT_name("INTx8")
	.dwattr $C$DW$451, DW_AT_TI_symbol_name("_INTx8")
	.dwattr $C$DW$451, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$451, DW_AT_bit_size(0x01)
	.dwattr $C$DW$451, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$451, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$452	.dwtag  DW_TAG_member
	.dwattr $C$DW$452, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$452, DW_AT_name("INTx9")
	.dwattr $C$DW$452, DW_AT_TI_symbol_name("_INTx9")
	.dwattr $C$DW$452, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$452, DW_AT_bit_size(0x01)
	.dwattr $C$DW$452, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$452, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$453	.dwtag  DW_TAG_member
	.dwattr $C$DW$453, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$453, DW_AT_name("INTx10")
	.dwattr $C$DW$453, DW_AT_TI_symbol_name("_INTx10")
	.dwattr $C$DW$453, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$453, DW_AT_bit_size(0x01)
	.dwattr $C$DW$453, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$453, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$454	.dwtag  DW_TAG_member
	.dwattr $C$DW$454, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$454, DW_AT_name("INTx11")
	.dwattr $C$DW$454, DW_AT_TI_symbol_name("_INTx11")
	.dwattr $C$DW$454, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$454, DW_AT_bit_size(0x01)
	.dwattr $C$DW$454, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$454, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$455	.dwtag  DW_TAG_member
	.dwattr $C$DW$455, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$455, DW_AT_name("INTx12")
	.dwattr $C$DW$455, DW_AT_TI_symbol_name("_INTx12")
	.dwattr $C$DW$455, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$455, DW_AT_bit_size(0x01)
	.dwattr $C$DW$455, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$455, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$456	.dwtag  DW_TAG_member
	.dwattr $C$DW$456, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$456, DW_AT_name("INTx13")
	.dwattr $C$DW$456, DW_AT_TI_symbol_name("_INTx13")
	.dwattr $C$DW$456, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$456, DW_AT_bit_size(0x01)
	.dwattr $C$DW$456, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$456, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$457	.dwtag  DW_TAG_member
	.dwattr $C$DW$457, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$457, DW_AT_name("INTx14")
	.dwattr $C$DW$457, DW_AT_TI_symbol_name("_INTx14")
	.dwattr $C$DW$457, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$457, DW_AT_bit_size(0x01)
	.dwattr $C$DW$457, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$457, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$458	.dwtag  DW_TAG_member
	.dwattr $C$DW$458, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$458, DW_AT_name("INTx15")
	.dwattr $C$DW$458, DW_AT_TI_symbol_name("_INTx15")
	.dwattr $C$DW$458, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$458, DW_AT_bit_size(0x01)
	.dwattr $C$DW$458, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$458, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$459	.dwtag  DW_TAG_member
	.dwattr $C$DW$459, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$459, DW_AT_name("INTx16")
	.dwattr $C$DW$459, DW_AT_TI_symbol_name("_INTx16")
	.dwattr $C$DW$459, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$459, DW_AT_bit_size(0x01)
	.dwattr $C$DW$459, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$459, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$68


$C$DW$T$69	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$69, DW_AT_name("PIEIFR8_REG")
	.dwattr $C$DW$T$69, DW_AT_byte_size(0x01)
$C$DW$460	.dwtag  DW_TAG_member
	.dwattr $C$DW$460, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$460, DW_AT_name("all")
	.dwattr $C$DW$460, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$460, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$460, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$461	.dwtag  DW_TAG_member
	.dwattr $C$DW$461, DW_AT_type(*$C$DW$T$68)
	.dwattr $C$DW$461, DW_AT_name("bit")
	.dwattr $C$DW$461, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$461, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$461, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$69


$C$DW$T$70	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$70, DW_AT_name("PIEIFR9_BITS")
	.dwattr $C$DW$T$70, DW_AT_byte_size(0x01)
$C$DW$462	.dwtag  DW_TAG_member
	.dwattr $C$DW$462, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$462, DW_AT_name("INTx1")
	.dwattr $C$DW$462, DW_AT_TI_symbol_name("_INTx1")
	.dwattr $C$DW$462, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$462, DW_AT_bit_size(0x01)
	.dwattr $C$DW$462, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$462, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$463	.dwtag  DW_TAG_member
	.dwattr $C$DW$463, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$463, DW_AT_name("INTx2")
	.dwattr $C$DW$463, DW_AT_TI_symbol_name("_INTx2")
	.dwattr $C$DW$463, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$463, DW_AT_bit_size(0x01)
	.dwattr $C$DW$463, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$463, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$464	.dwtag  DW_TAG_member
	.dwattr $C$DW$464, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$464, DW_AT_name("INTx3")
	.dwattr $C$DW$464, DW_AT_TI_symbol_name("_INTx3")
	.dwattr $C$DW$464, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$464, DW_AT_bit_size(0x01)
	.dwattr $C$DW$464, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$464, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$465	.dwtag  DW_TAG_member
	.dwattr $C$DW$465, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$465, DW_AT_name("INTx4")
	.dwattr $C$DW$465, DW_AT_TI_symbol_name("_INTx4")
	.dwattr $C$DW$465, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$465, DW_AT_bit_size(0x01)
	.dwattr $C$DW$465, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$465, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$466	.dwtag  DW_TAG_member
	.dwattr $C$DW$466, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$466, DW_AT_name("INTx5")
	.dwattr $C$DW$466, DW_AT_TI_symbol_name("_INTx5")
	.dwattr $C$DW$466, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$466, DW_AT_bit_size(0x01)
	.dwattr $C$DW$466, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$466, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$467	.dwtag  DW_TAG_member
	.dwattr $C$DW$467, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$467, DW_AT_name("INTx6")
	.dwattr $C$DW$467, DW_AT_TI_symbol_name("_INTx6")
	.dwattr $C$DW$467, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$467, DW_AT_bit_size(0x01)
	.dwattr $C$DW$467, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$467, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$468	.dwtag  DW_TAG_member
	.dwattr $C$DW$468, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$468, DW_AT_name("INTx7")
	.dwattr $C$DW$468, DW_AT_TI_symbol_name("_INTx7")
	.dwattr $C$DW$468, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$468, DW_AT_bit_size(0x01)
	.dwattr $C$DW$468, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$468, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$469	.dwtag  DW_TAG_member
	.dwattr $C$DW$469, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$469, DW_AT_name("INTx8")
	.dwattr $C$DW$469, DW_AT_TI_symbol_name("_INTx8")
	.dwattr $C$DW$469, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$469, DW_AT_bit_size(0x01)
	.dwattr $C$DW$469, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$469, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$470	.dwtag  DW_TAG_member
	.dwattr $C$DW$470, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$470, DW_AT_name("INTx9")
	.dwattr $C$DW$470, DW_AT_TI_symbol_name("_INTx9")
	.dwattr $C$DW$470, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$470, DW_AT_bit_size(0x01)
	.dwattr $C$DW$470, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$470, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$471	.dwtag  DW_TAG_member
	.dwattr $C$DW$471, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$471, DW_AT_name("INTx10")
	.dwattr $C$DW$471, DW_AT_TI_symbol_name("_INTx10")
	.dwattr $C$DW$471, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$471, DW_AT_bit_size(0x01)
	.dwattr $C$DW$471, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$471, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$472	.dwtag  DW_TAG_member
	.dwattr $C$DW$472, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$472, DW_AT_name("INTx11")
	.dwattr $C$DW$472, DW_AT_TI_symbol_name("_INTx11")
	.dwattr $C$DW$472, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$472, DW_AT_bit_size(0x01)
	.dwattr $C$DW$472, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$472, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$473	.dwtag  DW_TAG_member
	.dwattr $C$DW$473, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$473, DW_AT_name("INTx12")
	.dwattr $C$DW$473, DW_AT_TI_symbol_name("_INTx12")
	.dwattr $C$DW$473, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$473, DW_AT_bit_size(0x01)
	.dwattr $C$DW$473, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$473, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$474	.dwtag  DW_TAG_member
	.dwattr $C$DW$474, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$474, DW_AT_name("INTx13")
	.dwattr $C$DW$474, DW_AT_TI_symbol_name("_INTx13")
	.dwattr $C$DW$474, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$474, DW_AT_bit_size(0x01)
	.dwattr $C$DW$474, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$474, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$475	.dwtag  DW_TAG_member
	.dwattr $C$DW$475, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$475, DW_AT_name("INTx14")
	.dwattr $C$DW$475, DW_AT_TI_symbol_name("_INTx14")
	.dwattr $C$DW$475, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$475, DW_AT_bit_size(0x01)
	.dwattr $C$DW$475, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$475, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$476	.dwtag  DW_TAG_member
	.dwattr $C$DW$476, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$476, DW_AT_name("INTx15")
	.dwattr $C$DW$476, DW_AT_TI_symbol_name("_INTx15")
	.dwattr $C$DW$476, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$476, DW_AT_bit_size(0x01)
	.dwattr $C$DW$476, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$476, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$477	.dwtag  DW_TAG_member
	.dwattr $C$DW$477, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$477, DW_AT_name("INTx16")
	.dwattr $C$DW$477, DW_AT_TI_symbol_name("_INTx16")
	.dwattr $C$DW$477, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$477, DW_AT_bit_size(0x01)
	.dwattr $C$DW$477, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$477, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$70


$C$DW$T$71	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$71, DW_AT_name("PIEIFR9_REG")
	.dwattr $C$DW$T$71, DW_AT_byte_size(0x01)
$C$DW$478	.dwtag  DW_TAG_member
	.dwattr $C$DW$478, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$478, DW_AT_name("all")
	.dwattr $C$DW$478, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$478, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$478, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$479	.dwtag  DW_TAG_member
	.dwattr $C$DW$479, DW_AT_type(*$C$DW$T$70)
	.dwattr $C$DW$479, DW_AT_name("bit")
	.dwattr $C$DW$479, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$479, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$479, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$71


$C$DW$T$72	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$72, DW_AT_name("PIE_CTRL_REGS")
	.dwattr $C$DW$T$72, DW_AT_byte_size(0x1a)
$C$DW$480	.dwtag  DW_TAG_member
	.dwattr $C$DW$480, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$480, DW_AT_name("PIECTRL")
	.dwattr $C$DW$480, DW_AT_TI_symbol_name("_PIECTRL")
	.dwattr $C$DW$480, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$480, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$481	.dwtag  DW_TAG_member
	.dwattr $C$DW$481, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$481, DW_AT_name("PIEACK")
	.dwattr $C$DW$481, DW_AT_TI_symbol_name("_PIEACK")
	.dwattr $C$DW$481, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$481, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$482	.dwtag  DW_TAG_member
	.dwattr $C$DW$482, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$482, DW_AT_name("PIEIER1")
	.dwattr $C$DW$482, DW_AT_TI_symbol_name("_PIEIER1")
	.dwattr $C$DW$482, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$482, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$483	.dwtag  DW_TAG_member
	.dwattr $C$DW$483, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$483, DW_AT_name("PIEIFR1")
	.dwattr $C$DW$483, DW_AT_TI_symbol_name("_PIEIFR1")
	.dwattr $C$DW$483, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$483, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$484	.dwtag  DW_TAG_member
	.dwattr $C$DW$484, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$484, DW_AT_name("PIEIER2")
	.dwattr $C$DW$484, DW_AT_TI_symbol_name("_PIEIER2")
	.dwattr $C$DW$484, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$484, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$485	.dwtag  DW_TAG_member
	.dwattr $C$DW$485, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$485, DW_AT_name("PIEIFR2")
	.dwattr $C$DW$485, DW_AT_TI_symbol_name("_PIEIFR2")
	.dwattr $C$DW$485, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$485, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$486	.dwtag  DW_TAG_member
	.dwattr $C$DW$486, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$486, DW_AT_name("PIEIER3")
	.dwattr $C$DW$486, DW_AT_TI_symbol_name("_PIEIER3")
	.dwattr $C$DW$486, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$486, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$487	.dwtag  DW_TAG_member
	.dwattr $C$DW$487, DW_AT_type(*$C$DW$T$59)
	.dwattr $C$DW$487, DW_AT_name("PIEIFR3")
	.dwattr $C$DW$487, DW_AT_TI_symbol_name("_PIEIFR3")
	.dwattr $C$DW$487, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr $C$DW$487, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$488	.dwtag  DW_TAG_member
	.dwattr $C$DW$488, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$488, DW_AT_name("PIEIER4")
	.dwattr $C$DW$488, DW_AT_TI_symbol_name("_PIEIER4")
	.dwattr $C$DW$488, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$488, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$489	.dwtag  DW_TAG_member
	.dwattr $C$DW$489, DW_AT_type(*$C$DW$T$61)
	.dwattr $C$DW$489, DW_AT_name("PIEIFR4")
	.dwattr $C$DW$489, DW_AT_TI_symbol_name("_PIEIFR4")
	.dwattr $C$DW$489, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr $C$DW$489, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$490	.dwtag  DW_TAG_member
	.dwattr $C$DW$490, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$490, DW_AT_name("PIEIER5")
	.dwattr $C$DW$490, DW_AT_TI_symbol_name("_PIEIER5")
	.dwattr $C$DW$490, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$490, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$491	.dwtag  DW_TAG_member
	.dwattr $C$DW$491, DW_AT_type(*$C$DW$T$63)
	.dwattr $C$DW$491, DW_AT_name("PIEIFR5")
	.dwattr $C$DW$491, DW_AT_TI_symbol_name("_PIEIFR5")
	.dwattr $C$DW$491, DW_AT_data_member_location[DW_OP_plus_uconst 0xb]
	.dwattr $C$DW$491, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$492	.dwtag  DW_TAG_member
	.dwattr $C$DW$492, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$492, DW_AT_name("PIEIER6")
	.dwattr $C$DW$492, DW_AT_TI_symbol_name("_PIEIER6")
	.dwattr $C$DW$492, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$492, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$493	.dwtag  DW_TAG_member
	.dwattr $C$DW$493, DW_AT_type(*$C$DW$T$65)
	.dwattr $C$DW$493, DW_AT_name("PIEIFR6")
	.dwattr $C$DW$493, DW_AT_TI_symbol_name("_PIEIFR6")
	.dwattr $C$DW$493, DW_AT_data_member_location[DW_OP_plus_uconst 0xd]
	.dwattr $C$DW$493, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$494	.dwtag  DW_TAG_member
	.dwattr $C$DW$494, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$494, DW_AT_name("PIEIER7")
	.dwattr $C$DW$494, DW_AT_TI_symbol_name("_PIEIER7")
	.dwattr $C$DW$494, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$494, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$495	.dwtag  DW_TAG_member
	.dwattr $C$DW$495, DW_AT_type(*$C$DW$T$67)
	.dwattr $C$DW$495, DW_AT_name("PIEIFR7")
	.dwattr $C$DW$495, DW_AT_TI_symbol_name("_PIEIFR7")
	.dwattr $C$DW$495, DW_AT_data_member_location[DW_OP_plus_uconst 0xf]
	.dwattr $C$DW$495, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$496	.dwtag  DW_TAG_member
	.dwattr $C$DW$496, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$496, DW_AT_name("PIEIER8")
	.dwattr $C$DW$496, DW_AT_TI_symbol_name("_PIEIER8")
	.dwattr $C$DW$496, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$496, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$497	.dwtag  DW_TAG_member
	.dwattr $C$DW$497, DW_AT_type(*$C$DW$T$69)
	.dwattr $C$DW$497, DW_AT_name("PIEIFR8")
	.dwattr $C$DW$497, DW_AT_TI_symbol_name("_PIEIFR8")
	.dwattr $C$DW$497, DW_AT_data_member_location[DW_OP_plus_uconst 0x11]
	.dwattr $C$DW$497, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$498	.dwtag  DW_TAG_member
	.dwattr $C$DW$498, DW_AT_type(*$C$DW$T$47)
	.dwattr $C$DW$498, DW_AT_name("PIEIER9")
	.dwattr $C$DW$498, DW_AT_TI_symbol_name("_PIEIER9")
	.dwattr $C$DW$498, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr $C$DW$498, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$499	.dwtag  DW_TAG_member
	.dwattr $C$DW$499, DW_AT_type(*$C$DW$T$71)
	.dwattr $C$DW$499, DW_AT_name("PIEIFR9")
	.dwattr $C$DW$499, DW_AT_TI_symbol_name("_PIEIFR9")
	.dwattr $C$DW$499, DW_AT_data_member_location[DW_OP_plus_uconst 0x13]
	.dwattr $C$DW$499, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$500	.dwtag  DW_TAG_member
	.dwattr $C$DW$500, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$500, DW_AT_name("PIEIER10")
	.dwattr $C$DW$500, DW_AT_TI_symbol_name("_PIEIER10")
	.dwattr $C$DW$500, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$500, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$501	.dwtag  DW_TAG_member
	.dwattr $C$DW$501, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$501, DW_AT_name("PIEIFR10")
	.dwattr $C$DW$501, DW_AT_TI_symbol_name("_PIEIFR10")
	.dwattr $C$DW$501, DW_AT_data_member_location[DW_OP_plus_uconst 0x15]
	.dwattr $C$DW$501, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$502	.dwtag  DW_TAG_member
	.dwattr $C$DW$502, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$502, DW_AT_name("PIEIER11")
	.dwattr $C$DW$502, DW_AT_TI_symbol_name("_PIEIER11")
	.dwattr $C$DW$502, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr $C$DW$502, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$503	.dwtag  DW_TAG_member
	.dwattr $C$DW$503, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$503, DW_AT_name("PIEIFR11")
	.dwattr $C$DW$503, DW_AT_TI_symbol_name("_PIEIFR11")
	.dwattr $C$DW$503, DW_AT_data_member_location[DW_OP_plus_uconst 0x17]
	.dwattr $C$DW$503, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$504	.dwtag  DW_TAG_member
	.dwattr $C$DW$504, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$504, DW_AT_name("PIEIER12")
	.dwattr $C$DW$504, DW_AT_TI_symbol_name("_PIEIER12")
	.dwattr $C$DW$504, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$504, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$505	.dwtag  DW_TAG_member
	.dwattr $C$DW$505, DW_AT_type(*$C$DW$T$53)
	.dwattr $C$DW$505, DW_AT_name("PIEIFR12")
	.dwattr $C$DW$505, DW_AT_TI_symbol_name("_PIEIFR12")
	.dwattr $C$DW$505, DW_AT_data_member_location[DW_OP_plus_uconst 0x19]
	.dwattr $C$DW$505, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$72

$C$DW$506	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$506, DW_AT_type(*$C$DW$T$72)

$C$DW$T$102	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$102, DW_AT_type(*$C$DW$506)


$C$DW$T$76	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$76, DW_AT_name("PIE_VECT_TABLE")
	.dwattr $C$DW$T$76, DW_AT_byte_size(0x1c0)
$C$DW$507	.dwtag  DW_TAG_member
	.dwattr $C$DW$507, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$507, DW_AT_name("PIE1_RESERVED_INT")
	.dwattr $C$DW$507, DW_AT_TI_symbol_name("_PIE1_RESERVED_INT")
	.dwattr $C$DW$507, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$507, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$508	.dwtag  DW_TAG_member
	.dwattr $C$DW$508, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$508, DW_AT_name("PIE2_RESERVED_INT")
	.dwattr $C$DW$508, DW_AT_TI_symbol_name("_PIE2_RESERVED_INT")
	.dwattr $C$DW$508, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$508, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$509	.dwtag  DW_TAG_member
	.dwattr $C$DW$509, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$509, DW_AT_name("PIE3_RESERVED_INT")
	.dwattr $C$DW$509, DW_AT_TI_symbol_name("_PIE3_RESERVED_INT")
	.dwattr $C$DW$509, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$509, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$510	.dwtag  DW_TAG_member
	.dwattr $C$DW$510, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$510, DW_AT_name("PIE4_RESERVED_INT")
	.dwattr $C$DW$510, DW_AT_TI_symbol_name("_PIE4_RESERVED_INT")
	.dwattr $C$DW$510, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$510, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$511	.dwtag  DW_TAG_member
	.dwattr $C$DW$511, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$511, DW_AT_name("PIE5_RESERVED_INT")
	.dwattr $C$DW$511, DW_AT_TI_symbol_name("_PIE5_RESERVED_INT")
	.dwattr $C$DW$511, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$511, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$512	.dwtag  DW_TAG_member
	.dwattr $C$DW$512, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$512, DW_AT_name("PIE6_RESERVED_INT")
	.dwattr $C$DW$512, DW_AT_TI_symbol_name("_PIE6_RESERVED_INT")
	.dwattr $C$DW$512, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$512, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$513	.dwtag  DW_TAG_member
	.dwattr $C$DW$513, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$513, DW_AT_name("PIE7_RESERVED_INT")
	.dwattr $C$DW$513, DW_AT_TI_symbol_name("_PIE7_RESERVED_INT")
	.dwattr $C$DW$513, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$513, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$514	.dwtag  DW_TAG_member
	.dwattr $C$DW$514, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$514, DW_AT_name("PIE8_RESERVED_INT")
	.dwattr $C$DW$514, DW_AT_TI_symbol_name("_PIE8_RESERVED_INT")
	.dwattr $C$DW$514, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$514, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$515	.dwtag  DW_TAG_member
	.dwattr $C$DW$515, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$515, DW_AT_name("PIE9_RESERVED_INT")
	.dwattr $C$DW$515, DW_AT_TI_symbol_name("_PIE9_RESERVED_INT")
	.dwattr $C$DW$515, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$515, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$516	.dwtag  DW_TAG_member
	.dwattr $C$DW$516, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$516, DW_AT_name("PIE10_RESERVED_INT")
	.dwattr $C$DW$516, DW_AT_TI_symbol_name("_PIE10_RESERVED_INT")
	.dwattr $C$DW$516, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr $C$DW$516, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$517	.dwtag  DW_TAG_member
	.dwattr $C$DW$517, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$517, DW_AT_name("PIE11_RESERVED_INT")
	.dwattr $C$DW$517, DW_AT_TI_symbol_name("_PIE11_RESERVED_INT")
	.dwattr $C$DW$517, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$517, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$518	.dwtag  DW_TAG_member
	.dwattr $C$DW$518, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$518, DW_AT_name("PIE12_RESERVED_INT")
	.dwattr $C$DW$518, DW_AT_TI_symbol_name("_PIE12_RESERVED_INT")
	.dwattr $C$DW$518, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr $C$DW$518, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$519	.dwtag  DW_TAG_member
	.dwattr $C$DW$519, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$519, DW_AT_name("PIE13_RESERVED_INT")
	.dwattr $C$DW$519, DW_AT_TI_symbol_name("_PIE13_RESERVED_INT")
	.dwattr $C$DW$519, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$519, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$520	.dwtag  DW_TAG_member
	.dwattr $C$DW$520, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$520, DW_AT_name("TIMER1_INT")
	.dwattr $C$DW$520, DW_AT_TI_symbol_name("_TIMER1_INT")
	.dwattr $C$DW$520, DW_AT_data_member_location[DW_OP_plus_uconst 0x1a]
	.dwattr $C$DW$520, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$521	.dwtag  DW_TAG_member
	.dwattr $C$DW$521, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$521, DW_AT_name("TIMER2_INT")
	.dwattr $C$DW$521, DW_AT_TI_symbol_name("_TIMER2_INT")
	.dwattr $C$DW$521, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr $C$DW$521, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$522	.dwtag  DW_TAG_member
	.dwattr $C$DW$522, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$522, DW_AT_name("DATALOG_INT")
	.dwattr $C$DW$522, DW_AT_TI_symbol_name("_DATALOG_INT")
	.dwattr $C$DW$522, DW_AT_data_member_location[DW_OP_plus_uconst 0x1e]
	.dwattr $C$DW$522, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$523	.dwtag  DW_TAG_member
	.dwattr $C$DW$523, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$523, DW_AT_name("RTOS_INT")
	.dwattr $C$DW$523, DW_AT_TI_symbol_name("_RTOS_INT")
	.dwattr $C$DW$523, DW_AT_data_member_location[DW_OP_plus_uconst 0x20]
	.dwattr $C$DW$523, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$524	.dwtag  DW_TAG_member
	.dwattr $C$DW$524, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$524, DW_AT_name("EMU_INT")
	.dwattr $C$DW$524, DW_AT_TI_symbol_name("_EMU_INT")
	.dwattr $C$DW$524, DW_AT_data_member_location[DW_OP_plus_uconst 0x22]
	.dwattr $C$DW$524, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$525	.dwtag  DW_TAG_member
	.dwattr $C$DW$525, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$525, DW_AT_name("NMI_INT")
	.dwattr $C$DW$525, DW_AT_TI_symbol_name("_NMI_INT")
	.dwattr $C$DW$525, DW_AT_data_member_location[DW_OP_plus_uconst 0x24]
	.dwattr $C$DW$525, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$526	.dwtag  DW_TAG_member
	.dwattr $C$DW$526, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$526, DW_AT_name("ILLEGAL_INT")
	.dwattr $C$DW$526, DW_AT_TI_symbol_name("_ILLEGAL_INT")
	.dwattr $C$DW$526, DW_AT_data_member_location[DW_OP_plus_uconst 0x26]
	.dwattr $C$DW$526, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$527	.dwtag  DW_TAG_member
	.dwattr $C$DW$527, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$527, DW_AT_name("USER1_INT")
	.dwattr $C$DW$527, DW_AT_TI_symbol_name("_USER1_INT")
	.dwattr $C$DW$527, DW_AT_data_member_location[DW_OP_plus_uconst 0x28]
	.dwattr $C$DW$527, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$528	.dwtag  DW_TAG_member
	.dwattr $C$DW$528, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$528, DW_AT_name("USER2_INT")
	.dwattr $C$DW$528, DW_AT_TI_symbol_name("_USER2_INT")
	.dwattr $C$DW$528, DW_AT_data_member_location[DW_OP_plus_uconst 0x2a]
	.dwattr $C$DW$528, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$529	.dwtag  DW_TAG_member
	.dwattr $C$DW$529, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$529, DW_AT_name("USER3_INT")
	.dwattr $C$DW$529, DW_AT_TI_symbol_name("_USER3_INT")
	.dwattr $C$DW$529, DW_AT_data_member_location[DW_OP_plus_uconst 0x2c]
	.dwattr $C$DW$529, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$530	.dwtag  DW_TAG_member
	.dwattr $C$DW$530, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$530, DW_AT_name("USER4_INT")
	.dwattr $C$DW$530, DW_AT_TI_symbol_name("_USER4_INT")
	.dwattr $C$DW$530, DW_AT_data_member_location[DW_OP_plus_uconst 0x2e]
	.dwattr $C$DW$530, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$531	.dwtag  DW_TAG_member
	.dwattr $C$DW$531, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$531, DW_AT_name("USER5_INT")
	.dwattr $C$DW$531, DW_AT_TI_symbol_name("_USER5_INT")
	.dwattr $C$DW$531, DW_AT_data_member_location[DW_OP_plus_uconst 0x30]
	.dwattr $C$DW$531, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$532	.dwtag  DW_TAG_member
	.dwattr $C$DW$532, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$532, DW_AT_name("USER6_INT")
	.dwattr $C$DW$532, DW_AT_TI_symbol_name("_USER6_INT")
	.dwattr $C$DW$532, DW_AT_data_member_location[DW_OP_plus_uconst 0x32]
	.dwattr $C$DW$532, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$533	.dwtag  DW_TAG_member
	.dwattr $C$DW$533, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$533, DW_AT_name("USER7_INT")
	.dwattr $C$DW$533, DW_AT_TI_symbol_name("_USER7_INT")
	.dwattr $C$DW$533, DW_AT_data_member_location[DW_OP_plus_uconst 0x34]
	.dwattr $C$DW$533, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$534	.dwtag  DW_TAG_member
	.dwattr $C$DW$534, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$534, DW_AT_name("USER8_INT")
	.dwattr $C$DW$534, DW_AT_TI_symbol_name("_USER8_INT")
	.dwattr $C$DW$534, DW_AT_data_member_location[DW_OP_plus_uconst 0x36]
	.dwattr $C$DW$534, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$535	.dwtag  DW_TAG_member
	.dwattr $C$DW$535, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$535, DW_AT_name("USER9_INT")
	.dwattr $C$DW$535, DW_AT_TI_symbol_name("_USER9_INT")
	.dwattr $C$DW$535, DW_AT_data_member_location[DW_OP_plus_uconst 0x38]
	.dwattr $C$DW$535, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$536	.dwtag  DW_TAG_member
	.dwattr $C$DW$536, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$536, DW_AT_name("USER10_INT")
	.dwattr $C$DW$536, DW_AT_TI_symbol_name("_USER10_INT")
	.dwattr $C$DW$536, DW_AT_data_member_location[DW_OP_plus_uconst 0x3a]
	.dwattr $C$DW$536, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$537	.dwtag  DW_TAG_member
	.dwattr $C$DW$537, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$537, DW_AT_name("USER11_INT")
	.dwattr $C$DW$537, DW_AT_TI_symbol_name("_USER11_INT")
	.dwattr $C$DW$537, DW_AT_data_member_location[DW_OP_plus_uconst 0x3c]
	.dwattr $C$DW$537, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$538	.dwtag  DW_TAG_member
	.dwattr $C$DW$538, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$538, DW_AT_name("USER12_INT")
	.dwattr $C$DW$538, DW_AT_TI_symbol_name("_USER12_INT")
	.dwattr $C$DW$538, DW_AT_data_member_location[DW_OP_plus_uconst 0x3e]
	.dwattr $C$DW$538, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$539	.dwtag  DW_TAG_member
	.dwattr $C$DW$539, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$539, DW_AT_name("ADCA1_INT")
	.dwattr $C$DW$539, DW_AT_TI_symbol_name("_ADCA1_INT")
	.dwattr $C$DW$539, DW_AT_data_member_location[DW_OP_plus_uconst 0x40]
	.dwattr $C$DW$539, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$540	.dwtag  DW_TAG_member
	.dwattr $C$DW$540, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$540, DW_AT_name("ADCB1_INT")
	.dwattr $C$DW$540, DW_AT_TI_symbol_name("_ADCB1_INT")
	.dwattr $C$DW$540, DW_AT_data_member_location[DW_OP_plus_uconst 0x42]
	.dwattr $C$DW$540, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$541	.dwtag  DW_TAG_member
	.dwattr $C$DW$541, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$541, DW_AT_name("ADCC1_INT")
	.dwattr $C$DW$541, DW_AT_TI_symbol_name("_ADCC1_INT")
	.dwattr $C$DW$541, DW_AT_data_member_location[DW_OP_plus_uconst 0x44]
	.dwattr $C$DW$541, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$542	.dwtag  DW_TAG_member
	.dwattr $C$DW$542, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$542, DW_AT_name("XINT1_INT")
	.dwattr $C$DW$542, DW_AT_TI_symbol_name("_XINT1_INT")
	.dwattr $C$DW$542, DW_AT_data_member_location[DW_OP_plus_uconst 0x46]
	.dwattr $C$DW$542, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$543	.dwtag  DW_TAG_member
	.dwattr $C$DW$543, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$543, DW_AT_name("XINT2_INT")
	.dwattr $C$DW$543, DW_AT_TI_symbol_name("_XINT2_INT")
	.dwattr $C$DW$543, DW_AT_data_member_location[DW_OP_plus_uconst 0x48]
	.dwattr $C$DW$543, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$544	.dwtag  DW_TAG_member
	.dwattr $C$DW$544, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$544, DW_AT_name("ADCD1_INT")
	.dwattr $C$DW$544, DW_AT_TI_symbol_name("_ADCD1_INT")
	.dwattr $C$DW$544, DW_AT_data_member_location[DW_OP_plus_uconst 0x4a]
	.dwattr $C$DW$544, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$545	.dwtag  DW_TAG_member
	.dwattr $C$DW$545, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$545, DW_AT_name("TIMER0_INT")
	.dwattr $C$DW$545, DW_AT_TI_symbol_name("_TIMER0_INT")
	.dwattr $C$DW$545, DW_AT_data_member_location[DW_OP_plus_uconst 0x4c]
	.dwattr $C$DW$545, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$546	.dwtag  DW_TAG_member
	.dwattr $C$DW$546, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$546, DW_AT_name("WAKE_INT")
	.dwattr $C$DW$546, DW_AT_TI_symbol_name("_WAKE_INT")
	.dwattr $C$DW$546, DW_AT_data_member_location[DW_OP_plus_uconst 0x4e]
	.dwattr $C$DW$546, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$547	.dwtag  DW_TAG_member
	.dwattr $C$DW$547, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$547, DW_AT_name("EPWM1_TZ_INT")
	.dwattr $C$DW$547, DW_AT_TI_symbol_name("_EPWM1_TZ_INT")
	.dwattr $C$DW$547, DW_AT_data_member_location[DW_OP_plus_uconst 0x50]
	.dwattr $C$DW$547, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$548	.dwtag  DW_TAG_member
	.dwattr $C$DW$548, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$548, DW_AT_name("EPWM2_TZ_INT")
	.dwattr $C$DW$548, DW_AT_TI_symbol_name("_EPWM2_TZ_INT")
	.dwattr $C$DW$548, DW_AT_data_member_location[DW_OP_plus_uconst 0x52]
	.dwattr $C$DW$548, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$549	.dwtag  DW_TAG_member
	.dwattr $C$DW$549, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$549, DW_AT_name("EPWM3_TZ_INT")
	.dwattr $C$DW$549, DW_AT_TI_symbol_name("_EPWM3_TZ_INT")
	.dwattr $C$DW$549, DW_AT_data_member_location[DW_OP_plus_uconst 0x54]
	.dwattr $C$DW$549, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$550	.dwtag  DW_TAG_member
	.dwattr $C$DW$550, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$550, DW_AT_name("EPWM4_TZ_INT")
	.dwattr $C$DW$550, DW_AT_TI_symbol_name("_EPWM4_TZ_INT")
	.dwattr $C$DW$550, DW_AT_data_member_location[DW_OP_plus_uconst 0x56]
	.dwattr $C$DW$550, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$551	.dwtag  DW_TAG_member
	.dwattr $C$DW$551, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$551, DW_AT_name("EPWM5_TZ_INT")
	.dwattr $C$DW$551, DW_AT_TI_symbol_name("_EPWM5_TZ_INT")
	.dwattr $C$DW$551, DW_AT_data_member_location[DW_OP_plus_uconst 0x58]
	.dwattr $C$DW$551, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$552	.dwtag  DW_TAG_member
	.dwattr $C$DW$552, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$552, DW_AT_name("EPWM6_TZ_INT")
	.dwattr $C$DW$552, DW_AT_TI_symbol_name("_EPWM6_TZ_INT")
	.dwattr $C$DW$552, DW_AT_data_member_location[DW_OP_plus_uconst 0x5a]
	.dwattr $C$DW$552, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$553	.dwtag  DW_TAG_member
	.dwattr $C$DW$553, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$553, DW_AT_name("EPWM7_TZ_INT")
	.dwattr $C$DW$553, DW_AT_TI_symbol_name("_EPWM7_TZ_INT")
	.dwattr $C$DW$553, DW_AT_data_member_location[DW_OP_plus_uconst 0x5c]
	.dwattr $C$DW$553, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$554	.dwtag  DW_TAG_member
	.dwattr $C$DW$554, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$554, DW_AT_name("EPWM8_TZ_INT")
	.dwattr $C$DW$554, DW_AT_TI_symbol_name("_EPWM8_TZ_INT")
	.dwattr $C$DW$554, DW_AT_data_member_location[DW_OP_plus_uconst 0x5e]
	.dwattr $C$DW$554, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$555	.dwtag  DW_TAG_member
	.dwattr $C$DW$555, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$555, DW_AT_name("EPWM1_INT")
	.dwattr $C$DW$555, DW_AT_TI_symbol_name("_EPWM1_INT")
	.dwattr $C$DW$555, DW_AT_data_member_location[DW_OP_plus_uconst 0x60]
	.dwattr $C$DW$555, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$556	.dwtag  DW_TAG_member
	.dwattr $C$DW$556, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$556, DW_AT_name("EPWM2_INT")
	.dwattr $C$DW$556, DW_AT_TI_symbol_name("_EPWM2_INT")
	.dwattr $C$DW$556, DW_AT_data_member_location[DW_OP_plus_uconst 0x62]
	.dwattr $C$DW$556, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$557	.dwtag  DW_TAG_member
	.dwattr $C$DW$557, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$557, DW_AT_name("EPWM3_INT")
	.dwattr $C$DW$557, DW_AT_TI_symbol_name("_EPWM3_INT")
	.dwattr $C$DW$557, DW_AT_data_member_location[DW_OP_plus_uconst 0x64]
	.dwattr $C$DW$557, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$558	.dwtag  DW_TAG_member
	.dwattr $C$DW$558, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$558, DW_AT_name("EPWM4_INT")
	.dwattr $C$DW$558, DW_AT_TI_symbol_name("_EPWM4_INT")
	.dwattr $C$DW$558, DW_AT_data_member_location[DW_OP_plus_uconst 0x66]
	.dwattr $C$DW$558, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$559	.dwtag  DW_TAG_member
	.dwattr $C$DW$559, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$559, DW_AT_name("EPWM5_INT")
	.dwattr $C$DW$559, DW_AT_TI_symbol_name("_EPWM5_INT")
	.dwattr $C$DW$559, DW_AT_data_member_location[DW_OP_plus_uconst 0x68]
	.dwattr $C$DW$559, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$560	.dwtag  DW_TAG_member
	.dwattr $C$DW$560, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$560, DW_AT_name("EPWM6_INT")
	.dwattr $C$DW$560, DW_AT_TI_symbol_name("_EPWM6_INT")
	.dwattr $C$DW$560, DW_AT_data_member_location[DW_OP_plus_uconst 0x6a]
	.dwattr $C$DW$560, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$561	.dwtag  DW_TAG_member
	.dwattr $C$DW$561, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$561, DW_AT_name("EPWM7_INT")
	.dwattr $C$DW$561, DW_AT_TI_symbol_name("_EPWM7_INT")
	.dwattr $C$DW$561, DW_AT_data_member_location[DW_OP_plus_uconst 0x6c]
	.dwattr $C$DW$561, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$562	.dwtag  DW_TAG_member
	.dwattr $C$DW$562, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$562, DW_AT_name("EPWM8_INT")
	.dwattr $C$DW$562, DW_AT_TI_symbol_name("_EPWM8_INT")
	.dwattr $C$DW$562, DW_AT_data_member_location[DW_OP_plus_uconst 0x6e]
	.dwattr $C$DW$562, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$563	.dwtag  DW_TAG_member
	.dwattr $C$DW$563, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$563, DW_AT_name("ECAP1_INT")
	.dwattr $C$DW$563, DW_AT_TI_symbol_name("_ECAP1_INT")
	.dwattr $C$DW$563, DW_AT_data_member_location[DW_OP_plus_uconst 0x70]
	.dwattr $C$DW$563, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$564	.dwtag  DW_TAG_member
	.dwattr $C$DW$564, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$564, DW_AT_name("ECAP2_INT")
	.dwattr $C$DW$564, DW_AT_TI_symbol_name("_ECAP2_INT")
	.dwattr $C$DW$564, DW_AT_data_member_location[DW_OP_plus_uconst 0x72]
	.dwattr $C$DW$564, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$565	.dwtag  DW_TAG_member
	.dwattr $C$DW$565, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$565, DW_AT_name("ECAP3_INT")
	.dwattr $C$DW$565, DW_AT_TI_symbol_name("_ECAP3_INT")
	.dwattr $C$DW$565, DW_AT_data_member_location[DW_OP_plus_uconst 0x74]
	.dwattr $C$DW$565, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$566	.dwtag  DW_TAG_member
	.dwattr $C$DW$566, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$566, DW_AT_name("ECAP4_INT")
	.dwattr $C$DW$566, DW_AT_TI_symbol_name("_ECAP4_INT")
	.dwattr $C$DW$566, DW_AT_data_member_location[DW_OP_plus_uconst 0x76]
	.dwattr $C$DW$566, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$567	.dwtag  DW_TAG_member
	.dwattr $C$DW$567, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$567, DW_AT_name("ECAP5_INT")
	.dwattr $C$DW$567, DW_AT_TI_symbol_name("_ECAP5_INT")
	.dwattr $C$DW$567, DW_AT_data_member_location[DW_OP_plus_uconst 0x78]
	.dwattr $C$DW$567, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$568	.dwtag  DW_TAG_member
	.dwattr $C$DW$568, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$568, DW_AT_name("ECAP6_INT")
	.dwattr $C$DW$568, DW_AT_TI_symbol_name("_ECAP6_INT")
	.dwattr $C$DW$568, DW_AT_data_member_location[DW_OP_plus_uconst 0x7a]
	.dwattr $C$DW$568, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$569	.dwtag  DW_TAG_member
	.dwattr $C$DW$569, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$569, DW_AT_name("PIE14_RESERVED_INT")
	.dwattr $C$DW$569, DW_AT_TI_symbol_name("_PIE14_RESERVED_INT")
	.dwattr $C$DW$569, DW_AT_data_member_location[DW_OP_plus_uconst 0x7c]
	.dwattr $C$DW$569, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$570	.dwtag  DW_TAG_member
	.dwattr $C$DW$570, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$570, DW_AT_name("PIE15_RESERVED_INT")
	.dwattr $C$DW$570, DW_AT_TI_symbol_name("_PIE15_RESERVED_INT")
	.dwattr $C$DW$570, DW_AT_data_member_location[DW_OP_plus_uconst 0x7e]
	.dwattr $C$DW$570, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$571	.dwtag  DW_TAG_member
	.dwattr $C$DW$571, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$571, DW_AT_name("EQEP1_INT")
	.dwattr $C$DW$571, DW_AT_TI_symbol_name("_EQEP1_INT")
	.dwattr $C$DW$571, DW_AT_data_member_location[DW_OP_plus_uconst 0x80]
	.dwattr $C$DW$571, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$572	.dwtag  DW_TAG_member
	.dwattr $C$DW$572, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$572, DW_AT_name("EQEP2_INT")
	.dwattr $C$DW$572, DW_AT_TI_symbol_name("_EQEP2_INT")
	.dwattr $C$DW$572, DW_AT_data_member_location[DW_OP_plus_uconst 0x82]
	.dwattr $C$DW$572, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$573	.dwtag  DW_TAG_member
	.dwattr $C$DW$573, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$573, DW_AT_name("EQEP3_INT")
	.dwattr $C$DW$573, DW_AT_TI_symbol_name("_EQEP3_INT")
	.dwattr $C$DW$573, DW_AT_data_member_location[DW_OP_plus_uconst 0x84]
	.dwattr $C$DW$573, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$574	.dwtag  DW_TAG_member
	.dwattr $C$DW$574, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$574, DW_AT_name("PIE16_RESERVED_INT")
	.dwattr $C$DW$574, DW_AT_TI_symbol_name("_PIE16_RESERVED_INT")
	.dwattr $C$DW$574, DW_AT_data_member_location[DW_OP_plus_uconst 0x86]
	.dwattr $C$DW$574, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$575	.dwtag  DW_TAG_member
	.dwattr $C$DW$575, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$575, DW_AT_name("PIE17_RESERVED_INT")
	.dwattr $C$DW$575, DW_AT_TI_symbol_name("_PIE17_RESERVED_INT")
	.dwattr $C$DW$575, DW_AT_data_member_location[DW_OP_plus_uconst 0x88]
	.dwattr $C$DW$575, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$576	.dwtag  DW_TAG_member
	.dwattr $C$DW$576, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$576, DW_AT_name("PIE18_RESERVED_INT")
	.dwattr $C$DW$576, DW_AT_TI_symbol_name("_PIE18_RESERVED_INT")
	.dwattr $C$DW$576, DW_AT_data_member_location[DW_OP_plus_uconst 0x8a]
	.dwattr $C$DW$576, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$577	.dwtag  DW_TAG_member
	.dwattr $C$DW$577, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$577, DW_AT_name("PIE19_RESERVED_INT")
	.dwattr $C$DW$577, DW_AT_TI_symbol_name("_PIE19_RESERVED_INT")
	.dwattr $C$DW$577, DW_AT_data_member_location[DW_OP_plus_uconst 0x8c]
	.dwattr $C$DW$577, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$578	.dwtag  DW_TAG_member
	.dwattr $C$DW$578, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$578, DW_AT_name("PIE20_RESERVED_INT")
	.dwattr $C$DW$578, DW_AT_TI_symbol_name("_PIE20_RESERVED_INT")
	.dwattr $C$DW$578, DW_AT_data_member_location[DW_OP_plus_uconst 0x8e]
	.dwattr $C$DW$578, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$579	.dwtag  DW_TAG_member
	.dwattr $C$DW$579, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$579, DW_AT_name("SPIA_RX_INT")
	.dwattr $C$DW$579, DW_AT_TI_symbol_name("_SPIA_RX_INT")
	.dwattr $C$DW$579, DW_AT_data_member_location[DW_OP_plus_uconst 0x90]
	.dwattr $C$DW$579, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$580	.dwtag  DW_TAG_member
	.dwattr $C$DW$580, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$580, DW_AT_name("SPIA_TX_INT")
	.dwattr $C$DW$580, DW_AT_TI_symbol_name("_SPIA_TX_INT")
	.dwattr $C$DW$580, DW_AT_data_member_location[DW_OP_plus_uconst 0x92]
	.dwattr $C$DW$580, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$581	.dwtag  DW_TAG_member
	.dwattr $C$DW$581, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$581, DW_AT_name("SPIB_RX_INT")
	.dwattr $C$DW$581, DW_AT_TI_symbol_name("_SPIB_RX_INT")
	.dwattr $C$DW$581, DW_AT_data_member_location[DW_OP_plus_uconst 0x94]
	.dwattr $C$DW$581, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$582	.dwtag  DW_TAG_member
	.dwattr $C$DW$582, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$582, DW_AT_name("SPIB_TX_INT")
	.dwattr $C$DW$582, DW_AT_TI_symbol_name("_SPIB_TX_INT")
	.dwattr $C$DW$582, DW_AT_data_member_location[DW_OP_plus_uconst 0x96]
	.dwattr $C$DW$582, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$583	.dwtag  DW_TAG_member
	.dwattr $C$DW$583, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$583, DW_AT_name("MCBSPA_RX_INT")
	.dwattr $C$DW$583, DW_AT_TI_symbol_name("_MCBSPA_RX_INT")
	.dwattr $C$DW$583, DW_AT_data_member_location[DW_OP_plus_uconst 0x98]
	.dwattr $C$DW$583, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$584	.dwtag  DW_TAG_member
	.dwattr $C$DW$584, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$584, DW_AT_name("MCBSPA_TX_INT")
	.dwattr $C$DW$584, DW_AT_TI_symbol_name("_MCBSPA_TX_INT")
	.dwattr $C$DW$584, DW_AT_data_member_location[DW_OP_plus_uconst 0x9a]
	.dwattr $C$DW$584, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$585	.dwtag  DW_TAG_member
	.dwattr $C$DW$585, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$585, DW_AT_name("MCBSPB_RX_INT")
	.dwattr $C$DW$585, DW_AT_TI_symbol_name("_MCBSPB_RX_INT")
	.dwattr $C$DW$585, DW_AT_data_member_location[DW_OP_plus_uconst 0x9c]
	.dwattr $C$DW$585, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$586	.dwtag  DW_TAG_member
	.dwattr $C$DW$586, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$586, DW_AT_name("MCBSPB_TX_INT")
	.dwattr $C$DW$586, DW_AT_TI_symbol_name("_MCBSPB_TX_INT")
	.dwattr $C$DW$586, DW_AT_data_member_location[DW_OP_plus_uconst 0x9e]
	.dwattr $C$DW$586, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$587	.dwtag  DW_TAG_member
	.dwattr $C$DW$587, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$587, DW_AT_name("DMA_CH1_INT")
	.dwattr $C$DW$587, DW_AT_TI_symbol_name("_DMA_CH1_INT")
	.dwattr $C$DW$587, DW_AT_data_member_location[DW_OP_plus_uconst 0xa0]
	.dwattr $C$DW$587, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$588	.dwtag  DW_TAG_member
	.dwattr $C$DW$588, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$588, DW_AT_name("DMA_CH2_INT")
	.dwattr $C$DW$588, DW_AT_TI_symbol_name("_DMA_CH2_INT")
	.dwattr $C$DW$588, DW_AT_data_member_location[DW_OP_plus_uconst 0xa2]
	.dwattr $C$DW$588, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$589	.dwtag  DW_TAG_member
	.dwattr $C$DW$589, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$589, DW_AT_name("DMA_CH3_INT")
	.dwattr $C$DW$589, DW_AT_TI_symbol_name("_DMA_CH3_INT")
	.dwattr $C$DW$589, DW_AT_data_member_location[DW_OP_plus_uconst 0xa4]
	.dwattr $C$DW$589, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$590	.dwtag  DW_TAG_member
	.dwattr $C$DW$590, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$590, DW_AT_name("DMA_CH4_INT")
	.dwattr $C$DW$590, DW_AT_TI_symbol_name("_DMA_CH4_INT")
	.dwattr $C$DW$590, DW_AT_data_member_location[DW_OP_plus_uconst 0xa6]
	.dwattr $C$DW$590, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$591	.dwtag  DW_TAG_member
	.dwattr $C$DW$591, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$591, DW_AT_name("DMA_CH5_INT")
	.dwattr $C$DW$591, DW_AT_TI_symbol_name("_DMA_CH5_INT")
	.dwattr $C$DW$591, DW_AT_data_member_location[DW_OP_plus_uconst 0xa8]
	.dwattr $C$DW$591, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$592	.dwtag  DW_TAG_member
	.dwattr $C$DW$592, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$592, DW_AT_name("DMA_CH6_INT")
	.dwattr $C$DW$592, DW_AT_TI_symbol_name("_DMA_CH6_INT")
	.dwattr $C$DW$592, DW_AT_data_member_location[DW_OP_plus_uconst 0xaa]
	.dwattr $C$DW$592, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$593	.dwtag  DW_TAG_member
	.dwattr $C$DW$593, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$593, DW_AT_name("PIE21_RESERVED_INT")
	.dwattr $C$DW$593, DW_AT_TI_symbol_name("_PIE21_RESERVED_INT")
	.dwattr $C$DW$593, DW_AT_data_member_location[DW_OP_plus_uconst 0xac]
	.dwattr $C$DW$593, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$594	.dwtag  DW_TAG_member
	.dwattr $C$DW$594, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$594, DW_AT_name("PIE22_RESERVED_INT")
	.dwattr $C$DW$594, DW_AT_TI_symbol_name("_PIE22_RESERVED_INT")
	.dwattr $C$DW$594, DW_AT_data_member_location[DW_OP_plus_uconst 0xae]
	.dwattr $C$DW$594, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$595	.dwtag  DW_TAG_member
	.dwattr $C$DW$595, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$595, DW_AT_name("I2CA_INT")
	.dwattr $C$DW$595, DW_AT_TI_symbol_name("_I2CA_INT")
	.dwattr $C$DW$595, DW_AT_data_member_location[DW_OP_plus_uconst 0xb0]
	.dwattr $C$DW$595, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$596	.dwtag  DW_TAG_member
	.dwattr $C$DW$596, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$596, DW_AT_name("I2CA_FIFO_INT")
	.dwattr $C$DW$596, DW_AT_TI_symbol_name("_I2CA_FIFO_INT")
	.dwattr $C$DW$596, DW_AT_data_member_location[DW_OP_plus_uconst 0xb2]
	.dwattr $C$DW$596, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$597	.dwtag  DW_TAG_member
	.dwattr $C$DW$597, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$597, DW_AT_name("I2CB_INT")
	.dwattr $C$DW$597, DW_AT_TI_symbol_name("_I2CB_INT")
	.dwattr $C$DW$597, DW_AT_data_member_location[DW_OP_plus_uconst 0xb4]
	.dwattr $C$DW$597, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$598	.dwtag  DW_TAG_member
	.dwattr $C$DW$598, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$598, DW_AT_name("I2CB_FIFO_INT")
	.dwattr $C$DW$598, DW_AT_TI_symbol_name("_I2CB_FIFO_INT")
	.dwattr $C$DW$598, DW_AT_data_member_location[DW_OP_plus_uconst 0xb6]
	.dwattr $C$DW$598, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$599	.dwtag  DW_TAG_member
	.dwattr $C$DW$599, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$599, DW_AT_name("SCIC_RX_INT")
	.dwattr $C$DW$599, DW_AT_TI_symbol_name("_SCIC_RX_INT")
	.dwattr $C$DW$599, DW_AT_data_member_location[DW_OP_plus_uconst 0xb8]
	.dwattr $C$DW$599, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$600	.dwtag  DW_TAG_member
	.dwattr $C$DW$600, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$600, DW_AT_name("SCIC_TX_INT")
	.dwattr $C$DW$600, DW_AT_TI_symbol_name("_SCIC_TX_INT")
	.dwattr $C$DW$600, DW_AT_data_member_location[DW_OP_plus_uconst 0xba]
	.dwattr $C$DW$600, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$601	.dwtag  DW_TAG_member
	.dwattr $C$DW$601, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$601, DW_AT_name("SCID_RX_INT")
	.dwattr $C$DW$601, DW_AT_TI_symbol_name("_SCID_RX_INT")
	.dwattr $C$DW$601, DW_AT_data_member_location[DW_OP_plus_uconst 0xbc]
	.dwattr $C$DW$601, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$602	.dwtag  DW_TAG_member
	.dwattr $C$DW$602, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$602, DW_AT_name("SCID_TX_INT")
	.dwattr $C$DW$602, DW_AT_TI_symbol_name("_SCID_TX_INT")
	.dwattr $C$DW$602, DW_AT_data_member_location[DW_OP_plus_uconst 0xbe]
	.dwattr $C$DW$602, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$603	.dwtag  DW_TAG_member
	.dwattr $C$DW$603, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$603, DW_AT_name("SCIA_RX_INT")
	.dwattr $C$DW$603, DW_AT_TI_symbol_name("_SCIA_RX_INT")
	.dwattr $C$DW$603, DW_AT_data_member_location[DW_OP_plus_uconst 0xc0]
	.dwattr $C$DW$603, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$604	.dwtag  DW_TAG_member
	.dwattr $C$DW$604, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$604, DW_AT_name("SCIA_TX_INT")
	.dwattr $C$DW$604, DW_AT_TI_symbol_name("_SCIA_TX_INT")
	.dwattr $C$DW$604, DW_AT_data_member_location[DW_OP_plus_uconst 0xc2]
	.dwattr $C$DW$604, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$605	.dwtag  DW_TAG_member
	.dwattr $C$DW$605, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$605, DW_AT_name("SCIB_RX_INT")
	.dwattr $C$DW$605, DW_AT_TI_symbol_name("_SCIB_RX_INT")
	.dwattr $C$DW$605, DW_AT_data_member_location[DW_OP_plus_uconst 0xc4]
	.dwattr $C$DW$605, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$606	.dwtag  DW_TAG_member
	.dwattr $C$DW$606, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$606, DW_AT_name("SCIB_TX_INT")
	.dwattr $C$DW$606, DW_AT_TI_symbol_name("_SCIB_TX_INT")
	.dwattr $C$DW$606, DW_AT_data_member_location[DW_OP_plus_uconst 0xc6]
	.dwattr $C$DW$606, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$607	.dwtag  DW_TAG_member
	.dwattr $C$DW$607, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$607, DW_AT_name("CANA0_INT")
	.dwattr $C$DW$607, DW_AT_TI_symbol_name("_CANA0_INT")
	.dwattr $C$DW$607, DW_AT_data_member_location[DW_OP_plus_uconst 0xc8]
	.dwattr $C$DW$607, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$608	.dwtag  DW_TAG_member
	.dwattr $C$DW$608, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$608, DW_AT_name("CANA1_INT")
	.dwattr $C$DW$608, DW_AT_TI_symbol_name("_CANA1_INT")
	.dwattr $C$DW$608, DW_AT_data_member_location[DW_OP_plus_uconst 0xca]
	.dwattr $C$DW$608, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$609	.dwtag  DW_TAG_member
	.dwattr $C$DW$609, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$609, DW_AT_name("CANB0_INT")
	.dwattr $C$DW$609, DW_AT_TI_symbol_name("_CANB0_INT")
	.dwattr $C$DW$609, DW_AT_data_member_location[DW_OP_plus_uconst 0xcc]
	.dwattr $C$DW$609, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$610	.dwtag  DW_TAG_member
	.dwattr $C$DW$610, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$610, DW_AT_name("CANB1_INT")
	.dwattr $C$DW$610, DW_AT_TI_symbol_name("_CANB1_INT")
	.dwattr $C$DW$610, DW_AT_data_member_location[DW_OP_plus_uconst 0xce]
	.dwattr $C$DW$610, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$611	.dwtag  DW_TAG_member
	.dwattr $C$DW$611, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$611, DW_AT_name("ADCA_EVT_INT")
	.dwattr $C$DW$611, DW_AT_TI_symbol_name("_ADCA_EVT_INT")
	.dwattr $C$DW$611, DW_AT_data_member_location[DW_OP_plus_uconst 0xd0]
	.dwattr $C$DW$611, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$612	.dwtag  DW_TAG_member
	.dwattr $C$DW$612, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$612, DW_AT_name("ADCA2_INT")
	.dwattr $C$DW$612, DW_AT_TI_symbol_name("_ADCA2_INT")
	.dwattr $C$DW$612, DW_AT_data_member_location[DW_OP_plus_uconst 0xd2]
	.dwattr $C$DW$612, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$613	.dwtag  DW_TAG_member
	.dwattr $C$DW$613, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$613, DW_AT_name("ADCA3_INT")
	.dwattr $C$DW$613, DW_AT_TI_symbol_name("_ADCA3_INT")
	.dwattr $C$DW$613, DW_AT_data_member_location[DW_OP_plus_uconst 0xd4]
	.dwattr $C$DW$613, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$614	.dwtag  DW_TAG_member
	.dwattr $C$DW$614, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$614, DW_AT_name("ADCA4_INT")
	.dwattr $C$DW$614, DW_AT_TI_symbol_name("_ADCA4_INT")
	.dwattr $C$DW$614, DW_AT_data_member_location[DW_OP_plus_uconst 0xd6]
	.dwattr $C$DW$614, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$615	.dwtag  DW_TAG_member
	.dwattr $C$DW$615, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$615, DW_AT_name("ADCB_EVT_INT")
	.dwattr $C$DW$615, DW_AT_TI_symbol_name("_ADCB_EVT_INT")
	.dwattr $C$DW$615, DW_AT_data_member_location[DW_OP_plus_uconst 0xd8]
	.dwattr $C$DW$615, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$616	.dwtag  DW_TAG_member
	.dwattr $C$DW$616, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$616, DW_AT_name("ADCB2_INT")
	.dwattr $C$DW$616, DW_AT_TI_symbol_name("_ADCB2_INT")
	.dwattr $C$DW$616, DW_AT_data_member_location[DW_OP_plus_uconst 0xda]
	.dwattr $C$DW$616, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$617	.dwtag  DW_TAG_member
	.dwattr $C$DW$617, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$617, DW_AT_name("ADCB3_INT")
	.dwattr $C$DW$617, DW_AT_TI_symbol_name("_ADCB3_INT")
	.dwattr $C$DW$617, DW_AT_data_member_location[DW_OP_plus_uconst 0xdc]
	.dwattr $C$DW$617, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$618	.dwtag  DW_TAG_member
	.dwattr $C$DW$618, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$618, DW_AT_name("ADCB4_INT")
	.dwattr $C$DW$618, DW_AT_TI_symbol_name("_ADCB4_INT")
	.dwattr $C$DW$618, DW_AT_data_member_location[DW_OP_plus_uconst 0xde]
	.dwattr $C$DW$618, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$619	.dwtag  DW_TAG_member
	.dwattr $C$DW$619, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$619, DW_AT_name("CLA1_1_INT")
	.dwattr $C$DW$619, DW_AT_TI_symbol_name("_CLA1_1_INT")
	.dwattr $C$DW$619, DW_AT_data_member_location[DW_OP_plus_uconst 0xe0]
	.dwattr $C$DW$619, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$620	.dwtag  DW_TAG_member
	.dwattr $C$DW$620, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$620, DW_AT_name("CLA1_2_INT")
	.dwattr $C$DW$620, DW_AT_TI_symbol_name("_CLA1_2_INT")
	.dwattr $C$DW$620, DW_AT_data_member_location[DW_OP_plus_uconst 0xe2]
	.dwattr $C$DW$620, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$621	.dwtag  DW_TAG_member
	.dwattr $C$DW$621, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$621, DW_AT_name("CLA1_3_INT")
	.dwattr $C$DW$621, DW_AT_TI_symbol_name("_CLA1_3_INT")
	.dwattr $C$DW$621, DW_AT_data_member_location[DW_OP_plus_uconst 0xe4]
	.dwattr $C$DW$621, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$622	.dwtag  DW_TAG_member
	.dwattr $C$DW$622, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$622, DW_AT_name("CLA1_4_INT")
	.dwattr $C$DW$622, DW_AT_TI_symbol_name("_CLA1_4_INT")
	.dwattr $C$DW$622, DW_AT_data_member_location[DW_OP_plus_uconst 0xe6]
	.dwattr $C$DW$622, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$623	.dwtag  DW_TAG_member
	.dwattr $C$DW$623, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$623, DW_AT_name("CLA1_5_INT")
	.dwattr $C$DW$623, DW_AT_TI_symbol_name("_CLA1_5_INT")
	.dwattr $C$DW$623, DW_AT_data_member_location[DW_OP_plus_uconst 0xe8]
	.dwattr $C$DW$623, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$624	.dwtag  DW_TAG_member
	.dwattr $C$DW$624, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$624, DW_AT_name("CLA1_6_INT")
	.dwattr $C$DW$624, DW_AT_TI_symbol_name("_CLA1_6_INT")
	.dwattr $C$DW$624, DW_AT_data_member_location[DW_OP_plus_uconst 0xea]
	.dwattr $C$DW$624, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$625	.dwtag  DW_TAG_member
	.dwattr $C$DW$625, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$625, DW_AT_name("CLA1_7_INT")
	.dwattr $C$DW$625, DW_AT_TI_symbol_name("_CLA1_7_INT")
	.dwattr $C$DW$625, DW_AT_data_member_location[DW_OP_plus_uconst 0xec]
	.dwattr $C$DW$625, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$626	.dwtag  DW_TAG_member
	.dwattr $C$DW$626, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$626, DW_AT_name("CLA1_8_INT")
	.dwattr $C$DW$626, DW_AT_TI_symbol_name("_CLA1_8_INT")
	.dwattr $C$DW$626, DW_AT_data_member_location[DW_OP_plus_uconst 0xee]
	.dwattr $C$DW$626, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$627	.dwtag  DW_TAG_member
	.dwattr $C$DW$627, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$627, DW_AT_name("XINT3_INT")
	.dwattr $C$DW$627, DW_AT_TI_symbol_name("_XINT3_INT")
	.dwattr $C$DW$627, DW_AT_data_member_location[DW_OP_plus_uconst 0xf0]
	.dwattr $C$DW$627, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$628	.dwtag  DW_TAG_member
	.dwattr $C$DW$628, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$628, DW_AT_name("XINT4_INT")
	.dwattr $C$DW$628, DW_AT_TI_symbol_name("_XINT4_INT")
	.dwattr $C$DW$628, DW_AT_data_member_location[DW_OP_plus_uconst 0xf2]
	.dwattr $C$DW$628, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$629	.dwtag  DW_TAG_member
	.dwattr $C$DW$629, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$629, DW_AT_name("XINT5_INT")
	.dwattr $C$DW$629, DW_AT_TI_symbol_name("_XINT5_INT")
	.dwattr $C$DW$629, DW_AT_data_member_location[DW_OP_plus_uconst 0xf4]
	.dwattr $C$DW$629, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$630	.dwtag  DW_TAG_member
	.dwattr $C$DW$630, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$630, DW_AT_name("PIE23_RESERVED_INT")
	.dwattr $C$DW$630, DW_AT_TI_symbol_name("_PIE23_RESERVED_INT")
	.dwattr $C$DW$630, DW_AT_data_member_location[DW_OP_plus_uconst 0xf6]
	.dwattr $C$DW$630, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$631	.dwtag  DW_TAG_member
	.dwattr $C$DW$631, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$631, DW_AT_name("PIE24_RESERVED_INT")
	.dwattr $C$DW$631, DW_AT_TI_symbol_name("_PIE24_RESERVED_INT")
	.dwattr $C$DW$631, DW_AT_data_member_location[DW_OP_plus_uconst 0xf8]
	.dwattr $C$DW$631, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$632	.dwtag  DW_TAG_member
	.dwattr $C$DW$632, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$632, DW_AT_name("VCU_INT")
	.dwattr $C$DW$632, DW_AT_TI_symbol_name("_VCU_INT")
	.dwattr $C$DW$632, DW_AT_data_member_location[DW_OP_plus_uconst 0xfa]
	.dwattr $C$DW$632, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$633	.dwtag  DW_TAG_member
	.dwattr $C$DW$633, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$633, DW_AT_name("FPU_OVERFLOW_INT")
	.dwattr $C$DW$633, DW_AT_TI_symbol_name("_FPU_OVERFLOW_INT")
	.dwattr $C$DW$633, DW_AT_data_member_location[DW_OP_plus_uconst 0xfc]
	.dwattr $C$DW$633, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$634	.dwtag  DW_TAG_member
	.dwattr $C$DW$634, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$634, DW_AT_name("FPU_UNDERFLOW_INT")
	.dwattr $C$DW$634, DW_AT_TI_symbol_name("_FPU_UNDERFLOW_INT")
	.dwattr $C$DW$634, DW_AT_data_member_location[DW_OP_plus_uconst 0xfe]
	.dwattr $C$DW$634, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$635	.dwtag  DW_TAG_member
	.dwattr $C$DW$635, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$635, DW_AT_name("PIE25_RESERVED_INT")
	.dwattr $C$DW$635, DW_AT_TI_symbol_name("_PIE25_RESERVED_INT")
	.dwattr $C$DW$635, DW_AT_data_member_location[DW_OP_plus_uconst 0x100]
	.dwattr $C$DW$635, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$636	.dwtag  DW_TAG_member
	.dwattr $C$DW$636, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$636, DW_AT_name("PIE26_RESERVED_INT")
	.dwattr $C$DW$636, DW_AT_TI_symbol_name("_PIE26_RESERVED_INT")
	.dwattr $C$DW$636, DW_AT_data_member_location[DW_OP_plus_uconst 0x102]
	.dwattr $C$DW$636, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$637	.dwtag  DW_TAG_member
	.dwattr $C$DW$637, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$637, DW_AT_name("PIE27_RESERVED_INT")
	.dwattr $C$DW$637, DW_AT_TI_symbol_name("_PIE27_RESERVED_INT")
	.dwattr $C$DW$637, DW_AT_data_member_location[DW_OP_plus_uconst 0x104]
	.dwattr $C$DW$637, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$638	.dwtag  DW_TAG_member
	.dwattr $C$DW$638, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$638, DW_AT_name("PIE28_RESERVED_INT")
	.dwattr $C$DW$638, DW_AT_TI_symbol_name("_PIE28_RESERVED_INT")
	.dwattr $C$DW$638, DW_AT_data_member_location[DW_OP_plus_uconst 0x106]
	.dwattr $C$DW$638, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$639	.dwtag  DW_TAG_member
	.dwattr $C$DW$639, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$639, DW_AT_name("IPC0_INT")
	.dwattr $C$DW$639, DW_AT_TI_symbol_name("_IPC0_INT")
	.dwattr $C$DW$639, DW_AT_data_member_location[DW_OP_plus_uconst 0x108]
	.dwattr $C$DW$639, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$640	.dwtag  DW_TAG_member
	.dwattr $C$DW$640, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$640, DW_AT_name("IPC1_INT")
	.dwattr $C$DW$640, DW_AT_TI_symbol_name("_IPC1_INT")
	.dwattr $C$DW$640, DW_AT_data_member_location[DW_OP_plus_uconst 0x10a]
	.dwattr $C$DW$640, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$641	.dwtag  DW_TAG_member
	.dwattr $C$DW$641, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$641, DW_AT_name("IPC2_INT")
	.dwattr $C$DW$641, DW_AT_TI_symbol_name("_IPC2_INT")
	.dwattr $C$DW$641, DW_AT_data_member_location[DW_OP_plus_uconst 0x10c]
	.dwattr $C$DW$641, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$642	.dwtag  DW_TAG_member
	.dwattr $C$DW$642, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$642, DW_AT_name("IPC3_INT")
	.dwattr $C$DW$642, DW_AT_TI_symbol_name("_IPC3_INT")
	.dwattr $C$DW$642, DW_AT_data_member_location[DW_OP_plus_uconst 0x10e]
	.dwattr $C$DW$642, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$643	.dwtag  DW_TAG_member
	.dwattr $C$DW$643, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$643, DW_AT_name("EPWM9_TZ_INT")
	.dwattr $C$DW$643, DW_AT_TI_symbol_name("_EPWM9_TZ_INT")
	.dwattr $C$DW$643, DW_AT_data_member_location[DW_OP_plus_uconst 0x110]
	.dwattr $C$DW$643, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$644	.dwtag  DW_TAG_member
	.dwattr $C$DW$644, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$644, DW_AT_name("EPWM10_TZ_INT")
	.dwattr $C$DW$644, DW_AT_TI_symbol_name("_EPWM10_TZ_INT")
	.dwattr $C$DW$644, DW_AT_data_member_location[DW_OP_plus_uconst 0x112]
	.dwattr $C$DW$644, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$645	.dwtag  DW_TAG_member
	.dwattr $C$DW$645, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$645, DW_AT_name("EPWM11_TZ_INT")
	.dwattr $C$DW$645, DW_AT_TI_symbol_name("_EPWM11_TZ_INT")
	.dwattr $C$DW$645, DW_AT_data_member_location[DW_OP_plus_uconst 0x114]
	.dwattr $C$DW$645, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$646	.dwtag  DW_TAG_member
	.dwattr $C$DW$646, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$646, DW_AT_name("EPWM12_TZ_INT")
	.dwattr $C$DW$646, DW_AT_TI_symbol_name("_EPWM12_TZ_INT")
	.dwattr $C$DW$646, DW_AT_data_member_location[DW_OP_plus_uconst 0x116]
	.dwattr $C$DW$646, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$647	.dwtag  DW_TAG_member
	.dwattr $C$DW$647, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$647, DW_AT_name("PIE29_RESERVED_INT")
	.dwattr $C$DW$647, DW_AT_TI_symbol_name("_PIE29_RESERVED_INT")
	.dwattr $C$DW$647, DW_AT_data_member_location[DW_OP_plus_uconst 0x118]
	.dwattr $C$DW$647, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$648	.dwtag  DW_TAG_member
	.dwattr $C$DW$648, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$648, DW_AT_name("PIE30_RESERVED_INT")
	.dwattr $C$DW$648, DW_AT_TI_symbol_name("_PIE30_RESERVED_INT")
	.dwattr $C$DW$648, DW_AT_data_member_location[DW_OP_plus_uconst 0x11a]
	.dwattr $C$DW$648, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$649	.dwtag  DW_TAG_member
	.dwattr $C$DW$649, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$649, DW_AT_name("PIE31_RESERVED_INT")
	.dwattr $C$DW$649, DW_AT_TI_symbol_name("_PIE31_RESERVED_INT")
	.dwattr $C$DW$649, DW_AT_data_member_location[DW_OP_plus_uconst 0x11c]
	.dwattr $C$DW$649, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$650	.dwtag  DW_TAG_member
	.dwattr $C$DW$650, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$650, DW_AT_name("PIE32_RESERVED_INT")
	.dwattr $C$DW$650, DW_AT_TI_symbol_name("_PIE32_RESERVED_INT")
	.dwattr $C$DW$650, DW_AT_data_member_location[DW_OP_plus_uconst 0x11e]
	.dwattr $C$DW$650, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$651	.dwtag  DW_TAG_member
	.dwattr $C$DW$651, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$651, DW_AT_name("EPWM9_INT")
	.dwattr $C$DW$651, DW_AT_TI_symbol_name("_EPWM9_INT")
	.dwattr $C$DW$651, DW_AT_data_member_location[DW_OP_plus_uconst 0x120]
	.dwattr $C$DW$651, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$652	.dwtag  DW_TAG_member
	.dwattr $C$DW$652, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$652, DW_AT_name("EPWM10_INT")
	.dwattr $C$DW$652, DW_AT_TI_symbol_name("_EPWM10_INT")
	.dwattr $C$DW$652, DW_AT_data_member_location[DW_OP_plus_uconst 0x122]
	.dwattr $C$DW$652, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$653	.dwtag  DW_TAG_member
	.dwattr $C$DW$653, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$653, DW_AT_name("EPWM11_INT")
	.dwattr $C$DW$653, DW_AT_TI_symbol_name("_EPWM11_INT")
	.dwattr $C$DW$653, DW_AT_data_member_location[DW_OP_plus_uconst 0x124]
	.dwattr $C$DW$653, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$654	.dwtag  DW_TAG_member
	.dwattr $C$DW$654, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$654, DW_AT_name("EPWM12_INT")
	.dwattr $C$DW$654, DW_AT_TI_symbol_name("_EPWM12_INT")
	.dwattr $C$DW$654, DW_AT_data_member_location[DW_OP_plus_uconst 0x126]
	.dwattr $C$DW$654, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$655	.dwtag  DW_TAG_member
	.dwattr $C$DW$655, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$655, DW_AT_name("PIE33_RESERVED_INT")
	.dwattr $C$DW$655, DW_AT_TI_symbol_name("_PIE33_RESERVED_INT")
	.dwattr $C$DW$655, DW_AT_data_member_location[DW_OP_plus_uconst 0x128]
	.dwattr $C$DW$655, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$656	.dwtag  DW_TAG_member
	.dwattr $C$DW$656, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$656, DW_AT_name("PIE34_RESERVED_INT")
	.dwattr $C$DW$656, DW_AT_TI_symbol_name("_PIE34_RESERVED_INT")
	.dwattr $C$DW$656, DW_AT_data_member_location[DW_OP_plus_uconst 0x12a]
	.dwattr $C$DW$656, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$657	.dwtag  DW_TAG_member
	.dwattr $C$DW$657, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$657, DW_AT_name("PIE35_RESERVED_INT")
	.dwattr $C$DW$657, DW_AT_TI_symbol_name("_PIE35_RESERVED_INT")
	.dwattr $C$DW$657, DW_AT_data_member_location[DW_OP_plus_uconst 0x12c]
	.dwattr $C$DW$657, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$658	.dwtag  DW_TAG_member
	.dwattr $C$DW$658, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$658, DW_AT_name("PIE36_RESERVED_INT")
	.dwattr $C$DW$658, DW_AT_TI_symbol_name("_PIE36_RESERVED_INT")
	.dwattr $C$DW$658, DW_AT_data_member_location[DW_OP_plus_uconst 0x12e]
	.dwattr $C$DW$658, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$659	.dwtag  DW_TAG_member
	.dwattr $C$DW$659, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$659, DW_AT_name("PIE37_RESERVED_INT")
	.dwattr $C$DW$659, DW_AT_TI_symbol_name("_PIE37_RESERVED_INT")
	.dwattr $C$DW$659, DW_AT_data_member_location[DW_OP_plus_uconst 0x130]
	.dwattr $C$DW$659, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$660	.dwtag  DW_TAG_member
	.dwattr $C$DW$660, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$660, DW_AT_name("PIE38_RESERVED_INT")
	.dwattr $C$DW$660, DW_AT_TI_symbol_name("_PIE38_RESERVED_INT")
	.dwattr $C$DW$660, DW_AT_data_member_location[DW_OP_plus_uconst 0x132]
	.dwattr $C$DW$660, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$661	.dwtag  DW_TAG_member
	.dwattr $C$DW$661, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$661, DW_AT_name("PIE39_RESERVED_INT")
	.dwattr $C$DW$661, DW_AT_TI_symbol_name("_PIE39_RESERVED_INT")
	.dwattr $C$DW$661, DW_AT_data_member_location[DW_OP_plus_uconst 0x134]
	.dwattr $C$DW$661, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$662	.dwtag  DW_TAG_member
	.dwattr $C$DW$662, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$662, DW_AT_name("PIE40_RESERVED_INT")
	.dwattr $C$DW$662, DW_AT_TI_symbol_name("_PIE40_RESERVED_INT")
	.dwattr $C$DW$662, DW_AT_data_member_location[DW_OP_plus_uconst 0x136]
	.dwattr $C$DW$662, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$663	.dwtag  DW_TAG_member
	.dwattr $C$DW$663, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$663, DW_AT_name("PIE41_RESERVED_INT")
	.dwattr $C$DW$663, DW_AT_TI_symbol_name("_PIE41_RESERVED_INT")
	.dwattr $C$DW$663, DW_AT_data_member_location[DW_OP_plus_uconst 0x138]
	.dwattr $C$DW$663, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$664	.dwtag  DW_TAG_member
	.dwattr $C$DW$664, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$664, DW_AT_name("PIE42_RESERVED_INT")
	.dwattr $C$DW$664, DW_AT_TI_symbol_name("_PIE42_RESERVED_INT")
	.dwattr $C$DW$664, DW_AT_data_member_location[DW_OP_plus_uconst 0x13a]
	.dwattr $C$DW$664, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$665	.dwtag  DW_TAG_member
	.dwattr $C$DW$665, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$665, DW_AT_name("PIE43_RESERVED_INT")
	.dwattr $C$DW$665, DW_AT_TI_symbol_name("_PIE43_RESERVED_INT")
	.dwattr $C$DW$665, DW_AT_data_member_location[DW_OP_plus_uconst 0x13c]
	.dwattr $C$DW$665, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$666	.dwtag  DW_TAG_member
	.dwattr $C$DW$666, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$666, DW_AT_name("PIE44_RESERVED_INT")
	.dwattr $C$DW$666, DW_AT_TI_symbol_name("_PIE44_RESERVED_INT")
	.dwattr $C$DW$666, DW_AT_data_member_location[DW_OP_plus_uconst 0x13e]
	.dwattr $C$DW$666, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$667	.dwtag  DW_TAG_member
	.dwattr $C$DW$667, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$667, DW_AT_name("SD1_INT")
	.dwattr $C$DW$667, DW_AT_TI_symbol_name("_SD1_INT")
	.dwattr $C$DW$667, DW_AT_data_member_location[DW_OP_plus_uconst 0x140]
	.dwattr $C$DW$667, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$668	.dwtag  DW_TAG_member
	.dwattr $C$DW$668, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$668, DW_AT_name("SD2_INT")
	.dwattr $C$DW$668, DW_AT_TI_symbol_name("_SD2_INT")
	.dwattr $C$DW$668, DW_AT_data_member_location[DW_OP_plus_uconst 0x142]
	.dwattr $C$DW$668, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$669	.dwtag  DW_TAG_member
	.dwattr $C$DW$669, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$669, DW_AT_name("PIE45_RESERVED_INT")
	.dwattr $C$DW$669, DW_AT_TI_symbol_name("_PIE45_RESERVED_INT")
	.dwattr $C$DW$669, DW_AT_data_member_location[DW_OP_plus_uconst 0x144]
	.dwattr $C$DW$669, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$670	.dwtag  DW_TAG_member
	.dwattr $C$DW$670, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$670, DW_AT_name("PIE46_RESERVED_INT")
	.dwattr $C$DW$670, DW_AT_TI_symbol_name("_PIE46_RESERVED_INT")
	.dwattr $C$DW$670, DW_AT_data_member_location[DW_OP_plus_uconst 0x146]
	.dwattr $C$DW$670, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$671	.dwtag  DW_TAG_member
	.dwattr $C$DW$671, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$671, DW_AT_name("PIE47_RESERVED_INT")
	.dwattr $C$DW$671, DW_AT_TI_symbol_name("_PIE47_RESERVED_INT")
	.dwattr $C$DW$671, DW_AT_data_member_location[DW_OP_plus_uconst 0x148]
	.dwattr $C$DW$671, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$672	.dwtag  DW_TAG_member
	.dwattr $C$DW$672, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$672, DW_AT_name("PIE48_RESERVED_INT")
	.dwattr $C$DW$672, DW_AT_TI_symbol_name("_PIE48_RESERVED_INT")
	.dwattr $C$DW$672, DW_AT_data_member_location[DW_OP_plus_uconst 0x14a]
	.dwattr $C$DW$672, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$673	.dwtag  DW_TAG_member
	.dwattr $C$DW$673, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$673, DW_AT_name("PIE49_RESERVED_INT")
	.dwattr $C$DW$673, DW_AT_TI_symbol_name("_PIE49_RESERVED_INT")
	.dwattr $C$DW$673, DW_AT_data_member_location[DW_OP_plus_uconst 0x14c]
	.dwattr $C$DW$673, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$674	.dwtag  DW_TAG_member
	.dwattr $C$DW$674, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$674, DW_AT_name("PIE50_RESERVED_INT")
	.dwattr $C$DW$674, DW_AT_TI_symbol_name("_PIE50_RESERVED_INT")
	.dwattr $C$DW$674, DW_AT_data_member_location[DW_OP_plus_uconst 0x14e]
	.dwattr $C$DW$674, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$675	.dwtag  DW_TAG_member
	.dwattr $C$DW$675, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$675, DW_AT_name("SPIC_RX_INT")
	.dwattr $C$DW$675, DW_AT_TI_symbol_name("_SPIC_RX_INT")
	.dwattr $C$DW$675, DW_AT_data_member_location[DW_OP_plus_uconst 0x150]
	.dwattr $C$DW$675, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$676	.dwtag  DW_TAG_member
	.dwattr $C$DW$676, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$676, DW_AT_name("SPIC_TX_INT")
	.dwattr $C$DW$676, DW_AT_TI_symbol_name("_SPIC_TX_INT")
	.dwattr $C$DW$676, DW_AT_data_member_location[DW_OP_plus_uconst 0x152]
	.dwattr $C$DW$676, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$677	.dwtag  DW_TAG_member
	.dwattr $C$DW$677, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$677, DW_AT_name("PIE51_RESERVED_INT")
	.dwattr $C$DW$677, DW_AT_TI_symbol_name("_PIE51_RESERVED_INT")
	.dwattr $C$DW$677, DW_AT_data_member_location[DW_OP_plus_uconst 0x154]
	.dwattr $C$DW$677, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$678	.dwtag  DW_TAG_member
	.dwattr $C$DW$678, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$678, DW_AT_name("PIE52_RESERVED_INT")
	.dwattr $C$DW$678, DW_AT_TI_symbol_name("_PIE52_RESERVED_INT")
	.dwattr $C$DW$678, DW_AT_data_member_location[DW_OP_plus_uconst 0x156]
	.dwattr $C$DW$678, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$679	.dwtag  DW_TAG_member
	.dwattr $C$DW$679, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$679, DW_AT_name("PIE53_RESERVED_INT")
	.dwattr $C$DW$679, DW_AT_TI_symbol_name("_PIE53_RESERVED_INT")
	.dwattr $C$DW$679, DW_AT_data_member_location[DW_OP_plus_uconst 0x158]
	.dwattr $C$DW$679, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$680	.dwtag  DW_TAG_member
	.dwattr $C$DW$680, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$680, DW_AT_name("PIE54_RESERVED_INT")
	.dwattr $C$DW$680, DW_AT_TI_symbol_name("_PIE54_RESERVED_INT")
	.dwattr $C$DW$680, DW_AT_data_member_location[DW_OP_plus_uconst 0x15a]
	.dwattr $C$DW$680, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$681	.dwtag  DW_TAG_member
	.dwattr $C$DW$681, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$681, DW_AT_name("PIE55_RESERVED_INT")
	.dwattr $C$DW$681, DW_AT_TI_symbol_name("_PIE55_RESERVED_INT")
	.dwattr $C$DW$681, DW_AT_data_member_location[DW_OP_plus_uconst 0x15c]
	.dwattr $C$DW$681, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$682	.dwtag  DW_TAG_member
	.dwattr $C$DW$682, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$682, DW_AT_name("PIE56_RESERVED_INT")
	.dwattr $C$DW$682, DW_AT_TI_symbol_name("_PIE56_RESERVED_INT")
	.dwattr $C$DW$682, DW_AT_data_member_location[DW_OP_plus_uconst 0x15e]
	.dwattr $C$DW$682, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$683	.dwtag  DW_TAG_member
	.dwattr $C$DW$683, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$683, DW_AT_name("PIE57_RESERVED_INT")
	.dwattr $C$DW$683, DW_AT_TI_symbol_name("_PIE57_RESERVED_INT")
	.dwattr $C$DW$683, DW_AT_data_member_location[DW_OP_plus_uconst 0x160]
	.dwattr $C$DW$683, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$684	.dwtag  DW_TAG_member
	.dwattr $C$DW$684, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$684, DW_AT_name("PIE58_RESERVED_INT")
	.dwattr $C$DW$684, DW_AT_TI_symbol_name("_PIE58_RESERVED_INT")
	.dwattr $C$DW$684, DW_AT_data_member_location[DW_OP_plus_uconst 0x162]
	.dwattr $C$DW$684, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$685	.dwtag  DW_TAG_member
	.dwattr $C$DW$685, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$685, DW_AT_name("PIE59_RESERVED_INT")
	.dwattr $C$DW$685, DW_AT_TI_symbol_name("_PIE59_RESERVED_INT")
	.dwattr $C$DW$685, DW_AT_data_member_location[DW_OP_plus_uconst 0x164]
	.dwattr $C$DW$685, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$686	.dwtag  DW_TAG_member
	.dwattr $C$DW$686, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$686, DW_AT_name("PIE60_RESERVED_INT")
	.dwattr $C$DW$686, DW_AT_TI_symbol_name("_PIE60_RESERVED_INT")
	.dwattr $C$DW$686, DW_AT_data_member_location[DW_OP_plus_uconst 0x166]
	.dwattr $C$DW$686, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$687	.dwtag  DW_TAG_member
	.dwattr $C$DW$687, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$687, DW_AT_name("PIE61_RESERVED_INT")
	.dwattr $C$DW$687, DW_AT_TI_symbol_name("_PIE61_RESERVED_INT")
	.dwattr $C$DW$687, DW_AT_data_member_location[DW_OP_plus_uconst 0x168]
	.dwattr $C$DW$687, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$688	.dwtag  DW_TAG_member
	.dwattr $C$DW$688, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$688, DW_AT_name("PIE62_RESERVED_INT")
	.dwattr $C$DW$688, DW_AT_TI_symbol_name("_PIE62_RESERVED_INT")
	.dwattr $C$DW$688, DW_AT_data_member_location[DW_OP_plus_uconst 0x16a]
	.dwattr $C$DW$688, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$689	.dwtag  DW_TAG_member
	.dwattr $C$DW$689, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$689, DW_AT_name("PIE63_RESERVED_INT")
	.dwattr $C$DW$689, DW_AT_TI_symbol_name("_PIE63_RESERVED_INT")
	.dwattr $C$DW$689, DW_AT_data_member_location[DW_OP_plus_uconst 0x16c]
	.dwattr $C$DW$689, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$690	.dwtag  DW_TAG_member
	.dwattr $C$DW$690, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$690, DW_AT_name("PIE64_RESERVED_INT")
	.dwattr $C$DW$690, DW_AT_TI_symbol_name("_PIE64_RESERVED_INT")
	.dwattr $C$DW$690, DW_AT_data_member_location[DW_OP_plus_uconst 0x16e]
	.dwattr $C$DW$690, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$691	.dwtag  DW_TAG_member
	.dwattr $C$DW$691, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$691, DW_AT_name("PIE65_RESERVED_INT")
	.dwattr $C$DW$691, DW_AT_TI_symbol_name("_PIE65_RESERVED_INT")
	.dwattr $C$DW$691, DW_AT_data_member_location[DW_OP_plus_uconst 0x170]
	.dwattr $C$DW$691, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$692	.dwtag  DW_TAG_member
	.dwattr $C$DW$692, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$692, DW_AT_name("PIE66_RESERVED_INT")
	.dwattr $C$DW$692, DW_AT_TI_symbol_name("_PIE66_RESERVED_INT")
	.dwattr $C$DW$692, DW_AT_data_member_location[DW_OP_plus_uconst 0x172]
	.dwattr $C$DW$692, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$693	.dwtag  DW_TAG_member
	.dwattr $C$DW$693, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$693, DW_AT_name("PIE67_RESERVED_INT")
	.dwattr $C$DW$693, DW_AT_TI_symbol_name("_PIE67_RESERVED_INT")
	.dwattr $C$DW$693, DW_AT_data_member_location[DW_OP_plus_uconst 0x174]
	.dwattr $C$DW$693, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$694	.dwtag  DW_TAG_member
	.dwattr $C$DW$694, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$694, DW_AT_name("PIE68_RESERVED_INT")
	.dwattr $C$DW$694, DW_AT_TI_symbol_name("_PIE68_RESERVED_INT")
	.dwattr $C$DW$694, DW_AT_data_member_location[DW_OP_plus_uconst 0x176]
	.dwattr $C$DW$694, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$695	.dwtag  DW_TAG_member
	.dwattr $C$DW$695, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$695, DW_AT_name("PIE69_RESERVED_INT")
	.dwattr $C$DW$695, DW_AT_TI_symbol_name("_PIE69_RESERVED_INT")
	.dwattr $C$DW$695, DW_AT_data_member_location[DW_OP_plus_uconst 0x178]
	.dwattr $C$DW$695, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$696	.dwtag  DW_TAG_member
	.dwattr $C$DW$696, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$696, DW_AT_name("PIE70_RESERVED_INT")
	.dwattr $C$DW$696, DW_AT_TI_symbol_name("_PIE70_RESERVED_INT")
	.dwattr $C$DW$696, DW_AT_data_member_location[DW_OP_plus_uconst 0x17a]
	.dwattr $C$DW$696, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$697	.dwtag  DW_TAG_member
	.dwattr $C$DW$697, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$697, DW_AT_name("UPPA_INT")
	.dwattr $C$DW$697, DW_AT_TI_symbol_name("_UPPA_INT")
	.dwattr $C$DW$697, DW_AT_data_member_location[DW_OP_plus_uconst 0x17c]
	.dwattr $C$DW$697, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$698	.dwtag  DW_TAG_member
	.dwattr $C$DW$698, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$698, DW_AT_name("PIE72_RESERVED_INT")
	.dwattr $C$DW$698, DW_AT_TI_symbol_name("_PIE72_RESERVED_INT")
	.dwattr $C$DW$698, DW_AT_data_member_location[DW_OP_plus_uconst 0x17e]
	.dwattr $C$DW$698, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$699	.dwtag  DW_TAG_member
	.dwattr $C$DW$699, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$699, DW_AT_name("PIE73_RESERVED_INT")
	.dwattr $C$DW$699, DW_AT_TI_symbol_name("_PIE73_RESERVED_INT")
	.dwattr $C$DW$699, DW_AT_data_member_location[DW_OP_plus_uconst 0x180]
	.dwattr $C$DW$699, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$700	.dwtag  DW_TAG_member
	.dwattr $C$DW$700, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$700, DW_AT_name("PIE74_RESERVED_INT")
	.dwattr $C$DW$700, DW_AT_TI_symbol_name("_PIE74_RESERVED_INT")
	.dwattr $C$DW$700, DW_AT_data_member_location[DW_OP_plus_uconst 0x182]
	.dwattr $C$DW$700, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$701	.dwtag  DW_TAG_member
	.dwattr $C$DW$701, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$701, DW_AT_name("PIE75_RESERVED_INT")
	.dwattr $C$DW$701, DW_AT_TI_symbol_name("_PIE75_RESERVED_INT")
	.dwattr $C$DW$701, DW_AT_data_member_location[DW_OP_plus_uconst 0x184]
	.dwattr $C$DW$701, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$702	.dwtag  DW_TAG_member
	.dwattr $C$DW$702, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$702, DW_AT_name("PIE76_RESERVED_INT")
	.dwattr $C$DW$702, DW_AT_TI_symbol_name("_PIE76_RESERVED_INT")
	.dwattr $C$DW$702, DW_AT_data_member_location[DW_OP_plus_uconst 0x186]
	.dwattr $C$DW$702, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$703	.dwtag  DW_TAG_member
	.dwattr $C$DW$703, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$703, DW_AT_name("PIE77_RESERVED_INT")
	.dwattr $C$DW$703, DW_AT_TI_symbol_name("_PIE77_RESERVED_INT")
	.dwattr $C$DW$703, DW_AT_data_member_location[DW_OP_plus_uconst 0x188]
	.dwattr $C$DW$703, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$704	.dwtag  DW_TAG_member
	.dwattr $C$DW$704, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$704, DW_AT_name("PIE78_RESERVED_INT")
	.dwattr $C$DW$704, DW_AT_TI_symbol_name("_PIE78_RESERVED_INT")
	.dwattr $C$DW$704, DW_AT_data_member_location[DW_OP_plus_uconst 0x18a]
	.dwattr $C$DW$704, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$705	.dwtag  DW_TAG_member
	.dwattr $C$DW$705, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$705, DW_AT_name("USBA_INT")
	.dwattr $C$DW$705, DW_AT_TI_symbol_name("_USBA_INT")
	.dwattr $C$DW$705, DW_AT_data_member_location[DW_OP_plus_uconst 0x18c]
	.dwattr $C$DW$705, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$706	.dwtag  DW_TAG_member
	.dwattr $C$DW$706, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$706, DW_AT_name("PIE80_RESERVED_INT")
	.dwattr $C$DW$706, DW_AT_TI_symbol_name("_PIE80_RESERVED_INT")
	.dwattr $C$DW$706, DW_AT_data_member_location[DW_OP_plus_uconst 0x18e]
	.dwattr $C$DW$706, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$707	.dwtag  DW_TAG_member
	.dwattr $C$DW$707, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$707, DW_AT_name("ADCC_EVT_INT")
	.dwattr $C$DW$707, DW_AT_TI_symbol_name("_ADCC_EVT_INT")
	.dwattr $C$DW$707, DW_AT_data_member_location[DW_OP_plus_uconst 0x190]
	.dwattr $C$DW$707, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$708	.dwtag  DW_TAG_member
	.dwattr $C$DW$708, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$708, DW_AT_name("ADCC2_INT")
	.dwattr $C$DW$708, DW_AT_TI_symbol_name("_ADCC2_INT")
	.dwattr $C$DW$708, DW_AT_data_member_location[DW_OP_plus_uconst 0x192]
	.dwattr $C$DW$708, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$709	.dwtag  DW_TAG_member
	.dwattr $C$DW$709, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$709, DW_AT_name("ADCC3_INT")
	.dwattr $C$DW$709, DW_AT_TI_symbol_name("_ADCC3_INT")
	.dwattr $C$DW$709, DW_AT_data_member_location[DW_OP_plus_uconst 0x194]
	.dwattr $C$DW$709, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$710	.dwtag  DW_TAG_member
	.dwattr $C$DW$710, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$710, DW_AT_name("ADCC4_INT")
	.dwattr $C$DW$710, DW_AT_TI_symbol_name("_ADCC4_INT")
	.dwattr $C$DW$710, DW_AT_data_member_location[DW_OP_plus_uconst 0x196]
	.dwattr $C$DW$710, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$711	.dwtag  DW_TAG_member
	.dwattr $C$DW$711, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$711, DW_AT_name("ADCD_EVT_INT")
	.dwattr $C$DW$711, DW_AT_TI_symbol_name("_ADCD_EVT_INT")
	.dwattr $C$DW$711, DW_AT_data_member_location[DW_OP_plus_uconst 0x198]
	.dwattr $C$DW$711, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$712	.dwtag  DW_TAG_member
	.dwattr $C$DW$712, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$712, DW_AT_name("ADCD2_INT")
	.dwattr $C$DW$712, DW_AT_TI_symbol_name("_ADCD2_INT")
	.dwattr $C$DW$712, DW_AT_data_member_location[DW_OP_plus_uconst 0x19a]
	.dwattr $C$DW$712, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$713	.dwtag  DW_TAG_member
	.dwattr $C$DW$713, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$713, DW_AT_name("ADCD3_INT")
	.dwattr $C$DW$713, DW_AT_TI_symbol_name("_ADCD3_INT")
	.dwattr $C$DW$713, DW_AT_data_member_location[DW_OP_plus_uconst 0x19c]
	.dwattr $C$DW$713, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$714	.dwtag  DW_TAG_member
	.dwattr $C$DW$714, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$714, DW_AT_name("ADCD4_INT")
	.dwattr $C$DW$714, DW_AT_TI_symbol_name("_ADCD4_INT")
	.dwattr $C$DW$714, DW_AT_data_member_location[DW_OP_plus_uconst 0x19e]
	.dwattr $C$DW$714, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$715	.dwtag  DW_TAG_member
	.dwattr $C$DW$715, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$715, DW_AT_name("PIE81_RESERVED_INT")
	.dwattr $C$DW$715, DW_AT_TI_symbol_name("_PIE81_RESERVED_INT")
	.dwattr $C$DW$715, DW_AT_data_member_location[DW_OP_plus_uconst 0x1a0]
	.dwattr $C$DW$715, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$716	.dwtag  DW_TAG_member
	.dwattr $C$DW$716, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$716, DW_AT_name("PIE82_RESERVED_INT")
	.dwattr $C$DW$716, DW_AT_TI_symbol_name("_PIE82_RESERVED_INT")
	.dwattr $C$DW$716, DW_AT_data_member_location[DW_OP_plus_uconst 0x1a2]
	.dwattr $C$DW$716, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$717	.dwtag  DW_TAG_member
	.dwattr $C$DW$717, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$717, DW_AT_name("PIE83_RESERVED_INT")
	.dwattr $C$DW$717, DW_AT_TI_symbol_name("_PIE83_RESERVED_INT")
	.dwattr $C$DW$717, DW_AT_data_member_location[DW_OP_plus_uconst 0x1a4]
	.dwattr $C$DW$717, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$718	.dwtag  DW_TAG_member
	.dwattr $C$DW$718, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$718, DW_AT_name("PIE84_RESERVED_INT")
	.dwattr $C$DW$718, DW_AT_TI_symbol_name("_PIE84_RESERVED_INT")
	.dwattr $C$DW$718, DW_AT_data_member_location[DW_OP_plus_uconst 0x1a6]
	.dwattr $C$DW$718, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$719	.dwtag  DW_TAG_member
	.dwattr $C$DW$719, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$719, DW_AT_name("PIE85_RESERVED_INT")
	.dwattr $C$DW$719, DW_AT_TI_symbol_name("_PIE85_RESERVED_INT")
	.dwattr $C$DW$719, DW_AT_data_member_location[DW_OP_plus_uconst 0x1a8]
	.dwattr $C$DW$719, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$720	.dwtag  DW_TAG_member
	.dwattr $C$DW$720, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$720, DW_AT_name("PIE86_RESERVED_INT")
	.dwattr $C$DW$720, DW_AT_TI_symbol_name("_PIE86_RESERVED_INT")
	.dwattr $C$DW$720, DW_AT_data_member_location[DW_OP_plus_uconst 0x1aa]
	.dwattr $C$DW$720, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$721	.dwtag  DW_TAG_member
	.dwattr $C$DW$721, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$721, DW_AT_name("PIE87_RESERVED_INT")
	.dwattr $C$DW$721, DW_AT_TI_symbol_name("_PIE87_RESERVED_INT")
	.dwattr $C$DW$721, DW_AT_data_member_location[DW_OP_plus_uconst 0x1ac]
	.dwattr $C$DW$721, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$722	.dwtag  DW_TAG_member
	.dwattr $C$DW$722, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$722, DW_AT_name("PIE88_RESERVED_INT")
	.dwattr $C$DW$722, DW_AT_TI_symbol_name("_PIE88_RESERVED_INT")
	.dwattr $C$DW$722, DW_AT_data_member_location[DW_OP_plus_uconst 0x1ae]
	.dwattr $C$DW$722, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$723	.dwtag  DW_TAG_member
	.dwattr $C$DW$723, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$723, DW_AT_name("EMIF_ERROR_INT")
	.dwattr $C$DW$723, DW_AT_TI_symbol_name("_EMIF_ERROR_INT")
	.dwattr $C$DW$723, DW_AT_data_member_location[DW_OP_plus_uconst 0x1b0]
	.dwattr $C$DW$723, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$724	.dwtag  DW_TAG_member
	.dwattr $C$DW$724, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$724, DW_AT_name("RAM_CORRECTABLE_ERROR_INT")
	.dwattr $C$DW$724, DW_AT_TI_symbol_name("_RAM_CORRECTABLE_ERROR_INT")
	.dwattr $C$DW$724, DW_AT_data_member_location[DW_OP_plus_uconst 0x1b2]
	.dwattr $C$DW$724, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$725	.dwtag  DW_TAG_member
	.dwattr $C$DW$725, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$725, DW_AT_name("FLASH_CORRECTABLE_ERROR_INT")
	.dwattr $C$DW$725, DW_AT_TI_symbol_name("_FLASH_CORRECTABLE_ERROR_INT")
	.dwattr $C$DW$725, DW_AT_data_member_location[DW_OP_plus_uconst 0x1b4]
	.dwattr $C$DW$725, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$726	.dwtag  DW_TAG_member
	.dwattr $C$DW$726, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$726, DW_AT_name("RAM_ACCESS_VIOLATION_INT")
	.dwattr $C$DW$726, DW_AT_TI_symbol_name("_RAM_ACCESS_VIOLATION_INT")
	.dwattr $C$DW$726, DW_AT_data_member_location[DW_OP_plus_uconst 0x1b6]
	.dwattr $C$DW$726, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$727	.dwtag  DW_TAG_member
	.dwattr $C$DW$727, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$727, DW_AT_name("SYS_PLL_SLIP_INT")
	.dwattr $C$DW$727, DW_AT_TI_symbol_name("_SYS_PLL_SLIP_INT")
	.dwattr $C$DW$727, DW_AT_data_member_location[DW_OP_plus_uconst 0x1b8]
	.dwattr $C$DW$727, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$728	.dwtag  DW_TAG_member
	.dwattr $C$DW$728, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$728, DW_AT_name("AUX_PLL_SLIP_INT")
	.dwattr $C$DW$728, DW_AT_TI_symbol_name("_AUX_PLL_SLIP_INT")
	.dwattr $C$DW$728, DW_AT_data_member_location[DW_OP_plus_uconst 0x1ba]
	.dwattr $C$DW$728, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$729	.dwtag  DW_TAG_member
	.dwattr $C$DW$729, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$729, DW_AT_name("CLA_OVERFLOW_INT")
	.dwattr $C$DW$729, DW_AT_TI_symbol_name("_CLA_OVERFLOW_INT")
	.dwattr $C$DW$729, DW_AT_data_member_location[DW_OP_plus_uconst 0x1bc]
	.dwattr $C$DW$729, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$730	.dwtag  DW_TAG_member
	.dwattr $C$DW$730, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$730, DW_AT_name("CLA_UNDERFLOW_INT")
	.dwattr $C$DW$730, DW_AT_TI_symbol_name("_CLA_UNDERFLOW_INT")
	.dwattr $C$DW$730, DW_AT_data_member_location[DW_OP_plus_uconst 0x1be]
	.dwattr $C$DW$730, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$76

$C$DW$731	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$731, DW_AT_type(*$C$DW$T$76)

$C$DW$T$103	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$103, DW_AT_type(*$C$DW$731)

$C$DW$T$2	.dwtag  DW_TAG_unspecified_type
	.dwattr $C$DW$T$2, DW_AT_name("void")


$C$DW$T$73	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$73, DW_AT_language(DW_LANG_C)
	.dwendtag $C$DW$T$73

$C$DW$T$74	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$74, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$T$74, DW_AT_address_class(0x20)

$C$DW$T$75	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$75, DW_AT_name("PINT")
	.dwattr $C$DW$T$75, DW_AT_type(*$C$DW$T$74)
	.dwattr $C$DW$T$75, DW_AT_language(DW_LANG_C)

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

$C$DW$T$110	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$110, DW_AT_name("__uint16_t")
	.dwattr $C$DW$T$110, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$110, DW_AT_language(DW_LANG_C)

$C$DW$T$111	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$111, DW_AT_name("uint16_t")
	.dwattr $C$DW$T$111, DW_AT_type(*$C$DW$T$110)
	.dwattr $C$DW$T$111, DW_AT_language(DW_LANG_C)

$C$DW$T$106	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$106, DW_AT_name("uint16_T")
	.dwattr $C$DW$T$106, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$106, DW_AT_language(DW_LANG_C)

$C$DW$T$12	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$12, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$12, DW_AT_name("long")
	.dwattr $C$DW$T$12, DW_AT_byte_size(0x02)

$C$DW$T$13	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$13, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$13, DW_AT_name("unsigned long")
	.dwattr $C$DW$T$13, DW_AT_byte_size(0x02)

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

$C$DW$732	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$732, DW_AT_name("AL")
	.dwattr $C$DW$732, DW_AT_location[DW_OP_reg0]

$C$DW$733	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$733, DW_AT_name("AH")
	.dwattr $C$DW$733, DW_AT_location[DW_OP_reg1]

$C$DW$734	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$734, DW_AT_name("PL")
	.dwattr $C$DW$734, DW_AT_location[DW_OP_reg2]

$C$DW$735	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$735, DW_AT_name("PH")
	.dwattr $C$DW$735, DW_AT_location[DW_OP_reg3]

$C$DW$736	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$736, DW_AT_name("SP")
	.dwattr $C$DW$736, DW_AT_location[DW_OP_reg20]

$C$DW$737	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$737, DW_AT_name("XT")
	.dwattr $C$DW$737, DW_AT_location[DW_OP_reg21]

$C$DW$738	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$738, DW_AT_name("T")
	.dwattr $C$DW$738, DW_AT_location[DW_OP_reg22]

$C$DW$739	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$739, DW_AT_name("ST0")
	.dwattr $C$DW$739, DW_AT_location[DW_OP_reg23]

$C$DW$740	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$740, DW_AT_name("ST1")
	.dwattr $C$DW$740, DW_AT_location[DW_OP_reg24]

$C$DW$741	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$741, DW_AT_name("PC")
	.dwattr $C$DW$741, DW_AT_location[DW_OP_reg25]

$C$DW$742	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$742, DW_AT_name("RPC")
	.dwattr $C$DW$742, DW_AT_location[DW_OP_reg26]

$C$DW$743	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$743, DW_AT_name("FP")
	.dwattr $C$DW$743, DW_AT_location[DW_OP_reg28]

$C$DW$744	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$744, DW_AT_name("DP")
	.dwattr $C$DW$744, DW_AT_location[DW_OP_reg29]

$C$DW$745	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$745, DW_AT_name("SXM")
	.dwattr $C$DW$745, DW_AT_location[DW_OP_reg30]

$C$DW$746	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$746, DW_AT_name("PM")
	.dwattr $C$DW$746, DW_AT_location[DW_OP_reg31]

$C$DW$747	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$747, DW_AT_name("OVM")
	.dwattr $C$DW$747, DW_AT_location[DW_OP_regx 0x20]

$C$DW$748	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$748, DW_AT_name("PAGE0")
	.dwattr $C$DW$748, DW_AT_location[DW_OP_regx 0x21]

$C$DW$749	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$749, DW_AT_name("AMODE")
	.dwattr $C$DW$749, DW_AT_location[DW_OP_regx 0x22]

$C$DW$750	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$750, DW_AT_name("EALLOW")
	.dwattr $C$DW$750, DW_AT_location[DW_OP_regx 0x4e]

$C$DW$751	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$751, DW_AT_name("INTM")
	.dwattr $C$DW$751, DW_AT_location[DW_OP_regx 0x23]

$C$DW$752	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$752, DW_AT_name("IFR")
	.dwattr $C$DW$752, DW_AT_location[DW_OP_regx 0x24]

$C$DW$753	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$753, DW_AT_name("IER")
	.dwattr $C$DW$753, DW_AT_location[DW_OP_regx 0x25]

$C$DW$754	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$754, DW_AT_name("V")
	.dwattr $C$DW$754, DW_AT_location[DW_OP_regx 0x26]

$C$DW$755	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$755, DW_AT_name("PSEUDOH")
	.dwattr $C$DW$755, DW_AT_location[DW_OP_regx 0x4c]

$C$DW$756	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$756, DW_AT_name("VOL")
	.dwattr $C$DW$756, DW_AT_location[DW_OP_regx 0x4d]

$C$DW$757	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$757, DW_AT_name("AR0")
	.dwattr $C$DW$757, DW_AT_location[DW_OP_reg4]

$C$DW$758	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$758, DW_AT_name("XAR0")
	.dwattr $C$DW$758, DW_AT_location[DW_OP_reg5]

$C$DW$759	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$759, DW_AT_name("AR1")
	.dwattr $C$DW$759, DW_AT_location[DW_OP_reg6]

$C$DW$760	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$760, DW_AT_name("XAR1")
	.dwattr $C$DW$760, DW_AT_location[DW_OP_reg7]

$C$DW$761	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$761, DW_AT_name("AR2")
	.dwattr $C$DW$761, DW_AT_location[DW_OP_reg8]

$C$DW$762	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$762, DW_AT_name("XAR2")
	.dwattr $C$DW$762, DW_AT_location[DW_OP_reg9]

$C$DW$763	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$763, DW_AT_name("AR3")
	.dwattr $C$DW$763, DW_AT_location[DW_OP_reg10]

$C$DW$764	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$764, DW_AT_name("XAR3")
	.dwattr $C$DW$764, DW_AT_location[DW_OP_reg11]

$C$DW$765	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$765, DW_AT_name("AR4")
	.dwattr $C$DW$765, DW_AT_location[DW_OP_reg12]

$C$DW$766	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$766, DW_AT_name("XAR4")
	.dwattr $C$DW$766, DW_AT_location[DW_OP_reg13]

$C$DW$767	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$767, DW_AT_name("AR5")
	.dwattr $C$DW$767, DW_AT_location[DW_OP_reg14]

$C$DW$768	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$768, DW_AT_name("XAR5")
	.dwattr $C$DW$768, DW_AT_location[DW_OP_reg15]

$C$DW$769	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$769, DW_AT_name("AR6")
	.dwattr $C$DW$769, DW_AT_location[DW_OP_reg16]

$C$DW$770	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$770, DW_AT_name("XAR6")
	.dwattr $C$DW$770, DW_AT_location[DW_OP_reg17]

$C$DW$771	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$771, DW_AT_name("AR7")
	.dwattr $C$DW$771, DW_AT_location[DW_OP_reg18]

$C$DW$772	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$772, DW_AT_name("XAR7")
	.dwattr $C$DW$772, DW_AT_location[DW_OP_reg19]

$C$DW$773	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$773, DW_AT_name("R0H")
	.dwattr $C$DW$773, DW_AT_location[DW_OP_regx 0x2b]

$C$DW$774	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$774, DW_AT_name("R1H")
	.dwattr $C$DW$774, DW_AT_location[DW_OP_regx 0x2f]

$C$DW$775	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$775, DW_AT_name("R2H")
	.dwattr $C$DW$775, DW_AT_location[DW_OP_regx 0x33]

$C$DW$776	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$776, DW_AT_name("R3H")
	.dwattr $C$DW$776, DW_AT_location[DW_OP_regx 0x37]

$C$DW$777	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$777, DW_AT_name("R4H")
	.dwattr $C$DW$777, DW_AT_location[DW_OP_regx 0x3b]

$C$DW$778	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$778, DW_AT_name("R5H")
	.dwattr $C$DW$778, DW_AT_location[DW_OP_regx 0x3f]

$C$DW$779	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$779, DW_AT_name("R6H")
	.dwattr $C$DW$779, DW_AT_location[DW_OP_regx 0x43]

$C$DW$780	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$780, DW_AT_name("R7H")
	.dwattr $C$DW$780, DW_AT_location[DW_OP_regx 0x47]

$C$DW$781	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$781, DW_AT_name("RB")
	.dwattr $C$DW$781, DW_AT_location[DW_OP_regx 0x4a]

$C$DW$782	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$782, DW_AT_name("STF")
	.dwattr $C$DW$782, DW_AT_location[DW_OP_regx 0x28]

$C$DW$783	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$783, DW_AT_name("FPUHAZ")
	.dwattr $C$DW$783, DW_AT_location[DW_OP_reg27]

$C$DW$784	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$784, DW_AT_name("STF_HWDIV")
	.dwattr $C$DW$784, DW_AT_location[DW_OP_regx 0x4f]

	.dwendtag $C$DW$CU

