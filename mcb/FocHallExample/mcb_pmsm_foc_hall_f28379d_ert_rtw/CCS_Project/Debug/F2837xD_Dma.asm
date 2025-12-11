;***************************************************************
;* TMS320C2000 G3 C/C++ Codegen                               PC v22.6.0.LTS *
;* Date/Time created: Thu Nov 20 18:10:00 2025                 *
;***************************************************************
	.compiler_opts --abi=coffabi --float_support=fpu32 --hll_source=on --mem_model:code=flat --mem_model:data=large --object_format=coff --silicon_errata_fpu1_workaround=off --silicon_version=28 --symdebug:dwarf --symdebug:dwarf_version=3 --tmu_support=tmu0 
	.asg	XAR2, FP

$C$DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr $C$DW$CU, DW_AT_name("C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c")
	.dwattr $C$DW$CU, DW_AT_producer("TI TMS320C2000 G3 C/C++ Codegen PC v22.6.0.LTS Copyright (c) 1996-2018 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("C:\Users\13571\Documents\MATLAB\Examples\R2023b\mcb\FocHallExample\mcb_pmsm_foc_hall_f28379d_ert_rtw\CCS_Project\Debug")
$C$DW$1	.dwtag  DW_TAG_variable
	.dwattr $C$DW$1, DW_AT_name("PieCtrlRegs")
	.dwattr $C$DW$1, DW_AT_TI_symbol_name("_PieCtrlRegs")
	.dwattr $C$DW$1, DW_AT_type(*$C$DW$T$127)
	.dwattr $C$DW$1, DW_AT_declaration
	.dwattr $C$DW$1, DW_AT_external

$C$DW$2	.dwtag  DW_TAG_variable
	.dwattr $C$DW$2, DW_AT_name("DmaClaSrcSelRegs")
	.dwattr $C$DW$2, DW_AT_TI_symbol_name("_DmaClaSrcSelRegs")
	.dwattr $C$DW$2, DW_AT_type(*$C$DW$T$121)
	.dwattr $C$DW$2, DW_AT_declaration
	.dwattr $C$DW$2, DW_AT_external

$C$DW$3	.dwtag  DW_TAG_variable
	.dwattr $C$DW$3, DW_AT_name("DmaRegs")
	.dwattr $C$DW$3, DW_AT_TI_symbol_name("_DmaRegs")
	.dwattr $C$DW$3, DW_AT_type(*$C$DW$T$122)
	.dwattr $C$DW$3, DW_AT_declaration
	.dwattr $C$DW$3, DW_AT_external

;	D:\Software\CCS\CCS12.2.0.00009_win64\c1220\ccs\tools\compiler\ti-cgt-c2000_22.6.0.LTS\bin\ac2000.exe -@C:\\Users\\13571\\AppData\\Local\\Temp\\{6DC452D7-A7B0-447A-8FD7-3F4553F24316} 
	.sect	".text"
	.clink
	.global	_DMAInitialize

$C$DW$4	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$4, DW_AT_name("DMAInitialize")
	.dwattr $C$DW$4, DW_AT_low_pc(_DMAInitialize)
	.dwattr $C$DW$4, DW_AT_high_pc(0x00)
	.dwattr $C$DW$4, DW_AT_TI_symbol_name("_DMAInitialize")
	.dwattr $C$DW$4, DW_AT_external
	.dwattr $C$DW$4, DW_AT_TI_begin_file("C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c")
	.dwattr $C$DW$4, DW_AT_TI_begin_line(0x34)
	.dwattr $C$DW$4, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$4, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 53,column 1,is_stmt,address _DMAInitialize,isa 0

	.dwfde $C$DW$CIE, _DMAInitialize
;----------------------------------------------------------------------
;  52 | void DMAInitialize(void)                                               
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _DMAInitialize                FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_DMAInitialize:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 54,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
;  54 | EALLOW;                                                                
;  56 | //                                                                     
;  57 | // Perform a hard reset on DMA                                         
;  58 | //                                                                     
;----------------------------------------------------------------------
 EALLOW
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 59,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
;  59 | DmaRegs.DMACTRL.bit.HARDRESET = 1;                                     
;----------------------------------------------------------------------
        MOVW      DP,#_DmaRegs          ; [CPU_ARAU] 
        OR        @$BLOCKED(_DmaRegs),#0x0001 ; [CPU_ALU] |59| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 60,column 4,is_stmt,isa 0
;----------------------------------------------------------------------
;  60 | __asm (" nop"); // one NOP required after HARDRESET                    
;  62 |  //                                                                    
;  63 |  // Allow DMA to run free on emulation suspend                         
;  64 |  //                                                                    
;----------------------------------------------------------------------
 nop
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 65,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
;  65 | DmaRegs.DEBUGCTRL.bit.FREE = 1;                                        
;----------------------------------------------------------------------
        OR        @$BLOCKED(_DmaRegs)+1,#0x8000 ; [CPU_ALU] |65| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 67,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
;  67 | EDIS;                                                                  
;----------------------------------------------------------------------
 EDIS
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 68,column 1,is_stmt,isa 0
        SPM       #0                    ; [CPU_ALU] 
$C$DW$5	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$5, DW_AT_low_pc(0x00)
	.dwattr $C$DW$5, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$4, DW_AT_TI_end_file("C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c")
	.dwattr $C$DW$4, DW_AT_TI_end_line(0x44)
	.dwattr $C$DW$4, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$4

	.sect	".text"
	.clink
	.global	_DMACH1AddrConfig

$C$DW$6	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$6, DW_AT_name("DMACH1AddrConfig")
	.dwattr $C$DW$6, DW_AT_low_pc(_DMACH1AddrConfig)
	.dwattr $C$DW$6, DW_AT_high_pc(0x00)
	.dwattr $C$DW$6, DW_AT_TI_symbol_name("_DMACH1AddrConfig")
	.dwattr $C$DW$6, DW_AT_external
	.dwattr $C$DW$6, DW_AT_TI_begin_file("C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c")
	.dwattr $C$DW$6, DW_AT_TI_begin_line(0x49)
	.dwattr $C$DW$6, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$6, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 74,column 1,is_stmt,address _DMACH1AddrConfig,isa 0

	.dwfde $C$DW$CIE, _DMACH1AddrConfig
$C$DW$7	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$7, DW_AT_name("DMA_Dest")
	.dwattr $C$DW$7, DW_AT_TI_symbol_name("_DMA_Dest")
	.dwattr $C$DW$7, DW_AT_type(*$C$DW$T$130)
	.dwattr $C$DW$7, DW_AT_location[DW_OP_reg12]

$C$DW$8	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$8, DW_AT_name("DMA_Source")
	.dwattr $C$DW$8, DW_AT_TI_symbol_name("_DMA_Source")
	.dwattr $C$DW$8, DW_AT_type(*$C$DW$T$130)
	.dwattr $C$DW$8, DW_AT_location[DW_OP_reg14]

;----------------------------------------------------------------------
;  73 | void DMACH1AddrConfig(volatile Uint16 *DMA_Dest,volatile Uint16 *DMA_So
;     | urce)                                                                  
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _DMACH1AddrConfig             FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  4 Auto,  0 SOE     *
;***************************************************************

_DMACH1AddrConfig:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
$C$DW$9	.dwtag  DW_TAG_variable
	.dwattr $C$DW$9, DW_AT_name("DMA_Dest")
	.dwattr $C$DW$9, DW_AT_TI_symbol_name("_DMA_Dest")
	.dwattr $C$DW$9, DW_AT_type(*$C$DW$T$130)
	.dwattr $C$DW$9, DW_AT_location[DW_OP_breg20 -2]

$C$DW$10	.dwtag  DW_TAG_variable
	.dwattr $C$DW$10, DW_AT_name("DMA_Source")
	.dwattr $C$DW$10, DW_AT_TI_symbol_name("_DMA_Source")
	.dwattr $C$DW$10, DW_AT_type(*$C$DW$T$130)
	.dwattr $C$DW$10, DW_AT_location[DW_OP_breg20 -4]

        MOVL      *-SP[4],XAR5          ; [CPU_ALU] |74| 
        MOVL      *-SP[2],XAR4          ; [CPU_ALU] |74| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 75,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
;  75 | EALLOW;                                                                
;  77 | //                                                                     
;  78 | // Set up SOURCE address:                                              
;  79 | //                                                                     
;----------------------------------------------------------------------
 EALLOW
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 80,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
;  80 | DmaRegs.CH1.SRC_BEG_ADDR_SHADOW = (Uint32)DMA_Source;   // Point to    
;  81 |                                                         // beginning of
;  82 |                                                         // source buffe
;     | r                                                                      
;----------------------------------------------------------------------
        MOVW      DP,#_DmaRegs+48       ; [CPU_ARAU] 
        MOVL      ACC,*-SP[4]           ; [CPU_ALU] |80| 
        MOVL      @$BLOCKED(_DmaRegs)+48,ACC ; [CPU_ALU] |80| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 83,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
;  83 | DmaRegs.CH1.SRC_ADDR_SHADOW =     (Uint32)DMA_Source;                  
;  85 | //                                                                     
;  86 | // Set up DESTINATION address:                                         
;  87 | //                                                                     
;----------------------------------------------------------------------
        MOVL      @$BLOCKED(_DmaRegs)+50,ACC ; [CPU_ALU] |83| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 88,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
;  88 | DmaRegs.CH1.DST_BEG_ADDR_SHADOW = (Uint32)DMA_Dest;  // Point to       
;  89 |                                                      // beginning of   
;  90 |                                                      // destination buf
;     | fer                                                                    
;----------------------------------------------------------------------
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |88| 
        MOVL      @$BLOCKED(_DmaRegs)+56,ACC ; [CPU_ALU] |88| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 91,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
;  91 | DmaRegs.CH1.DST_ADDR_SHADOW =     (Uint32)DMA_Dest;                    
;----------------------------------------------------------------------
        MOVL      @$BLOCKED(_DmaRegs)+58,ACC ; [CPU_ALU] |91| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 93,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
;  93 | EDIS;                                                                  
;----------------------------------------------------------------------
 EDIS
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 94,column 1,is_stmt,isa 0
        SPM       #0                    ; [CPU_ALU] 
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$11	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$11, DW_AT_low_pc(0x00)
	.dwattr $C$DW$11, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$6, DW_AT_TI_end_file("C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c")
	.dwattr $C$DW$6, DW_AT_TI_end_line(0x5e)
	.dwattr $C$DW$6, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$6

	.sect	".text"
	.clink
	.global	_DMACH1BurstConfig

$C$DW$12	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$12, DW_AT_name("DMACH1BurstConfig")
	.dwattr $C$DW$12, DW_AT_low_pc(_DMACH1BurstConfig)
	.dwattr $C$DW$12, DW_AT_high_pc(0x00)
	.dwattr $C$DW$12, DW_AT_TI_symbol_name("_DMACH1BurstConfig")
	.dwattr $C$DW$12, DW_AT_external
	.dwattr $C$DW$12, DW_AT_TI_begin_file("C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c")
	.dwattr $C$DW$12, DW_AT_TI_begin_line(0x63)
	.dwattr $C$DW$12, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$12, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 100,column 1,is_stmt,address _DMACH1BurstConfig,isa 0

	.dwfde $C$DW$CIE, _DMACH1BurstConfig
$C$DW$13	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$13, DW_AT_name("bsize")
	.dwattr $C$DW$13, DW_AT_TI_symbol_name("_bsize")
	.dwattr $C$DW$13, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$13, DW_AT_location[DW_OP_reg0]

$C$DW$14	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$14, DW_AT_name("srcbstep")
	.dwattr $C$DW$14, DW_AT_TI_symbol_name("_srcbstep")
	.dwattr $C$DW$14, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$14, DW_AT_location[DW_OP_reg1]

$C$DW$15	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$15, DW_AT_name("desbstep")
	.dwattr $C$DW$15, DW_AT_TI_symbol_name("_desbstep")
	.dwattr $C$DW$15, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$15, DW_AT_location[DW_OP_reg12]

;----------------------------------------------------------------------
;  99 | void DMACH1BurstConfig(Uint16 bsize, int16 srcbstep, int16 desbstep)   
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _DMACH1BurstConfig            FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  3 Auto,  0 SOE     *
;***************************************************************

_DMACH1BurstConfig:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
$C$DW$16	.dwtag  DW_TAG_variable
	.dwattr $C$DW$16, DW_AT_name("bsize")
	.dwattr $C$DW$16, DW_AT_TI_symbol_name("_bsize")
	.dwattr $C$DW$16, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$16, DW_AT_location[DW_OP_breg20 -1]

$C$DW$17	.dwtag  DW_TAG_variable
	.dwattr $C$DW$17, DW_AT_name("srcbstep")
	.dwattr $C$DW$17, DW_AT_TI_symbol_name("_srcbstep")
	.dwattr $C$DW$17, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$17, DW_AT_location[DW_OP_breg20 -2]

$C$DW$18	.dwtag  DW_TAG_variable
	.dwattr $C$DW$18, DW_AT_name("desbstep")
	.dwattr $C$DW$18, DW_AT_TI_symbol_name("_desbstep")
	.dwattr $C$DW$18, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$18, DW_AT_location[DW_OP_breg20 -3]

        MOV       *-SP[3],AR4           ; [CPU_ALU] |100| 
        MOV       *-SP[2],AH            ; [CPU_ALU] |100| 
        MOV       *-SP[1],AL            ; [CPU_ALU] |100| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 101,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 101 | EALLOW;                                                                
; 103 | //                                                                     
; 104 | // Set up BURST registers:                                             
; 105 | //                                                                     
;----------------------------------------------------------------------
 EALLOW
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 106,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 106 | DmaRegs.CH1.BURST_SIZE.all = bsize;      // Number of words(X-1)       
; 107 |                                          // x-ferred in a burst.       
;----------------------------------------------------------------------
        MOVW      DP,#_DmaRegs+34       ; [CPU_ARAU] 
        MOV       @$BLOCKED(_DmaRegs)+34,AL ; [CPU_ALU] |106| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 108,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 108 | DmaRegs.CH1.SRC_BURST_STEP = srcbstep;   // Increment source addr betwe
;     | en                                                                     
; 109 |                                          // each word x-ferred.        
;----------------------------------------------------------------------
        MOV       AL,*-SP[2]            ; [CPU_ALU] |108| 
        MOV       @$BLOCKED(_DmaRegs)+36,AL ; [CPU_ALU] |108| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 110,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 110 | DmaRegs.CH1.DST_BURST_STEP = desbstep;   // Increment dest addr between
; 111 |                                          // each word x-ferred.        
;----------------------------------------------------------------------
        MOV       AL,*-SP[3]            ; [CPU_ALU] |110| 
        MOV       @$BLOCKED(_DmaRegs)+37,AL ; [CPU_ALU] |110| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 113,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 113 | EDIS;                                                                  
;----------------------------------------------------------------------
 EDIS
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 114,column 1,is_stmt,isa 0
        SPM       #0                    ; [CPU_ALU] 
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$19	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$19, DW_AT_low_pc(0x00)
	.dwattr $C$DW$19, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$12, DW_AT_TI_end_file("C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c")
	.dwattr $C$DW$12, DW_AT_TI_end_line(0x72)
	.dwattr $C$DW$12, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$12

	.sect	".text"
	.clink
	.global	_DMACH1TransferConfig

$C$DW$20	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$20, DW_AT_name("DMACH1TransferConfig")
	.dwattr $C$DW$20, DW_AT_low_pc(_DMACH1TransferConfig)
	.dwattr $C$DW$20, DW_AT_high_pc(0x00)
	.dwattr $C$DW$20, DW_AT_TI_symbol_name("_DMACH1TransferConfig")
	.dwattr $C$DW$20, DW_AT_external
	.dwattr $C$DW$20, DW_AT_TI_begin_file("C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c")
	.dwattr $C$DW$20, DW_AT_TI_begin_line(0x77)
	.dwattr $C$DW$20, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$20, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 120,column 1,is_stmt,address _DMACH1TransferConfig,isa 0

	.dwfde $C$DW$CIE, _DMACH1TransferConfig
$C$DW$21	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$21, DW_AT_name("tsize")
	.dwattr $C$DW$21, DW_AT_TI_symbol_name("_tsize")
	.dwattr $C$DW$21, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$21, DW_AT_location[DW_OP_reg0]

$C$DW$22	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$22, DW_AT_name("srctstep")
	.dwattr $C$DW$22, DW_AT_TI_symbol_name("_srctstep")
	.dwattr $C$DW$22, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$22, DW_AT_location[DW_OP_reg1]

$C$DW$23	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$23, DW_AT_name("deststep")
	.dwattr $C$DW$23, DW_AT_TI_symbol_name("_deststep")
	.dwattr $C$DW$23, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$23, DW_AT_location[DW_OP_reg12]

;----------------------------------------------------------------------
; 119 | void DMACH1TransferConfig(Uint16 tsize, int16 srctstep, int16 deststep)
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _DMACH1TransferConfig         FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  3 Auto,  0 SOE     *
;***************************************************************

_DMACH1TransferConfig:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
$C$DW$24	.dwtag  DW_TAG_variable
	.dwattr $C$DW$24, DW_AT_name("tsize")
	.dwattr $C$DW$24, DW_AT_TI_symbol_name("_tsize")
	.dwattr $C$DW$24, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$24, DW_AT_location[DW_OP_breg20 -1]

$C$DW$25	.dwtag  DW_TAG_variable
	.dwattr $C$DW$25, DW_AT_name("srctstep")
	.dwattr $C$DW$25, DW_AT_TI_symbol_name("_srctstep")
	.dwattr $C$DW$25, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$25, DW_AT_location[DW_OP_breg20 -2]

$C$DW$26	.dwtag  DW_TAG_variable
	.dwattr $C$DW$26, DW_AT_name("deststep")
	.dwattr $C$DW$26, DW_AT_TI_symbol_name("_deststep")
	.dwattr $C$DW$26, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$26, DW_AT_location[DW_OP_breg20 -3]

        MOV       *-SP[3],AR4           ; [CPU_ALU] |120| 
        MOV       *-SP[2],AH            ; [CPU_ALU] |120| 
        MOV       *-SP[1],AL            ; [CPU_ALU] |120| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 121,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 121 | EALLOW;                                                                
; 123 | //                                                                     
; 124 | // Set up TRANSFER registers:                                          
; 125 | //                                                                     
;----------------------------------------------------------------------
 EALLOW
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 126,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 126 | DmaRegs.CH1.TRANSFER_SIZE = tsize;        // Number of bursts per trans
;     | fer,                                                                   
; 127 |                                           // DMA interrupt will occur a
;     | fter                                                                   
; 128 |                                           // completed transfer.       
;----------------------------------------------------------------------
        MOVW      DP,#_DmaRegs+38       ; [CPU_ARAU] 
        MOV       @$BLOCKED(_DmaRegs)+38,AL ; [CPU_ALU] |126| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 129,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 129 | DmaRegs.CH1.SRC_TRANSFER_STEP = srctstep; // TRANSFER_STEP is ignored  
; 130 |                                           // when WRAP occurs.         
;----------------------------------------------------------------------
        MOV       AL,*-SP[2]            ; [CPU_ALU] |129| 
        MOV       @$BLOCKED(_DmaRegs)+40,AL ; [CPU_ALU] |129| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 131,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 131 | DmaRegs.CH1.DST_TRANSFER_STEP = deststep; // TRANSFER_STEP is ignored  
; 132 |                                           // when WRAP occurs.         
;----------------------------------------------------------------------
        MOV       AL,*-SP[3]            ; [CPU_ALU] |131| 
        MOV       @$BLOCKED(_DmaRegs)+41,AL ; [CPU_ALU] |131| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 134,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 134 | EDIS;                                                                  
;----------------------------------------------------------------------
 EDIS
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 135,column 1,is_stmt,isa 0
        SPM       #0                    ; [CPU_ALU] 
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$27	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$27, DW_AT_low_pc(0x00)
	.dwattr $C$DW$27, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$20, DW_AT_TI_end_file("C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c")
	.dwattr $C$DW$20, DW_AT_TI_end_line(0x87)
	.dwattr $C$DW$20, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$20

	.sect	".text"
	.clink
	.global	_DMACH1WrapConfig

$C$DW$28	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$28, DW_AT_name("DMACH1WrapConfig")
	.dwattr $C$DW$28, DW_AT_low_pc(_DMACH1WrapConfig)
	.dwattr $C$DW$28, DW_AT_high_pc(0x00)
	.dwattr $C$DW$28, DW_AT_TI_symbol_name("_DMACH1WrapConfig")
	.dwattr $C$DW$28, DW_AT_external
	.dwattr $C$DW$28, DW_AT_TI_begin_file("C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c")
	.dwattr $C$DW$28, DW_AT_TI_begin_line(0x8c)
	.dwattr $C$DW$28, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$28, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 142,column 1,is_stmt,address _DMACH1WrapConfig,isa 0

	.dwfde $C$DW$CIE, _DMACH1WrapConfig
$C$DW$29	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$29, DW_AT_name("srcwsize")
	.dwattr $C$DW$29, DW_AT_TI_symbol_name("_srcwsize")
	.dwattr $C$DW$29, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$29, DW_AT_location[DW_OP_reg0]

$C$DW$30	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$30, DW_AT_name("srcwstep")
	.dwattr $C$DW$30, DW_AT_TI_symbol_name("_srcwstep")
	.dwattr $C$DW$30, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$30, DW_AT_location[DW_OP_reg1]

$C$DW$31	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$31, DW_AT_name("deswsize")
	.dwattr $C$DW$31, DW_AT_TI_symbol_name("_deswsize")
	.dwattr $C$DW$31, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$31, DW_AT_location[DW_OP_reg12]

$C$DW$32	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$32, DW_AT_name("deswstep")
	.dwattr $C$DW$32, DW_AT_TI_symbol_name("_deswstep")
	.dwattr $C$DW$32, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$32, DW_AT_location[DW_OP_reg14]

;----------------------------------------------------------------------
; 140 | void DMACH1WrapConfig(Uint16 srcwsize, int16 srcwstep, Uint16 deswsize,
; 141 | int16 deswstep)                                                        
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _DMACH1WrapConfig             FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  4 Auto,  0 SOE     *
;***************************************************************

_DMACH1WrapConfig:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
$C$DW$33	.dwtag  DW_TAG_variable
	.dwattr $C$DW$33, DW_AT_name("srcwsize")
	.dwattr $C$DW$33, DW_AT_TI_symbol_name("_srcwsize")
	.dwattr $C$DW$33, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$33, DW_AT_location[DW_OP_breg20 -1]

$C$DW$34	.dwtag  DW_TAG_variable
	.dwattr $C$DW$34, DW_AT_name("srcwstep")
	.dwattr $C$DW$34, DW_AT_TI_symbol_name("_srcwstep")
	.dwattr $C$DW$34, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$34, DW_AT_location[DW_OP_breg20 -2]

$C$DW$35	.dwtag  DW_TAG_variable
	.dwattr $C$DW$35, DW_AT_name("deswsize")
	.dwattr $C$DW$35, DW_AT_TI_symbol_name("_deswsize")
	.dwattr $C$DW$35, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$35, DW_AT_location[DW_OP_breg20 -3]

$C$DW$36	.dwtag  DW_TAG_variable
	.dwattr $C$DW$36, DW_AT_name("deswstep")
	.dwattr $C$DW$36, DW_AT_TI_symbol_name("_deswstep")
	.dwattr $C$DW$36, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$36, DW_AT_location[DW_OP_breg20 -4]

        MOV       *-SP[4],AR5           ; [CPU_ALU] |142| 
        MOV       *-SP[3],AR4           ; [CPU_ALU] |142| 
        MOV       *-SP[2],AH            ; [CPU_ALU] |142| 
        MOV       *-SP[1],AL            ; [CPU_ALU] |142| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 143,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 143 | EALLOW;                                                                
; 145 | //                                                                     
; 146 | // Set up WRAP registers:                                              
; 147 | //                                                                     
;----------------------------------------------------------------------
 EALLOW
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 148,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 148 | DmaRegs.CH1.SRC_WRAP_SIZE = srcwsize; // Wrap source address after N bu
;     | rsts                                                                   
;----------------------------------------------------------------------
        MOVW      DP,#_DmaRegs+42       ; [CPU_ARAU] 
        MOV       @$BLOCKED(_DmaRegs)+42,AL ; [CPU_ALU] |148| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 149,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 149 | DmaRegs.CH1.SRC_WRAP_STEP = srcwstep; // Step for source wrap          
;----------------------------------------------------------------------
        MOV       AL,*-SP[2]            ; [CPU_ALU] |149| 
        MOV       @$BLOCKED(_DmaRegs)+44,AL ; [CPU_ALU] |149| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 151,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 151 | DmaRegs.CH1.DST_WRAP_SIZE = deswsize; // Wrap destination address after
; 152 |                                       // N bursts.                     
;----------------------------------------------------------------------
        MOV       AL,*-SP[3]            ; [CPU_ALU] |151| 
        MOV       @$BLOCKED(_DmaRegs)+45,AL ; [CPU_ALU] |151| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 153,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 153 | DmaRegs.CH1.DST_WRAP_STEP = deswstep; // Step for destination wrap     
;----------------------------------------------------------------------
        MOV       AL,*-SP[4]            ; [CPU_ALU] |153| 
        MOV       @$BLOCKED(_DmaRegs)+47,AL ; [CPU_ALU] |153| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 155,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 155 | EDIS;                                                                  
;----------------------------------------------------------------------
 EDIS
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 156,column 1,is_stmt,isa 0
        SPM       #0                    ; [CPU_ALU] 
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$37	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$37, DW_AT_low_pc(0x00)
	.dwattr $C$DW$37, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$28, DW_AT_TI_end_file("C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c")
	.dwattr $C$DW$28, DW_AT_TI_end_line(0x9c)
	.dwattr $C$DW$28, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$28

	.sect	".text"
	.clink
	.global	_DMACH1ModeConfig

$C$DW$38	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$38, DW_AT_name("DMACH1ModeConfig")
	.dwattr $C$DW$38, DW_AT_low_pc(_DMACH1ModeConfig)
	.dwattr $C$DW$38, DW_AT_high_pc(0x00)
	.dwattr $C$DW$38, DW_AT_TI_symbol_name("_DMACH1ModeConfig")
	.dwattr $C$DW$38, DW_AT_external
	.dwattr $C$DW$38, DW_AT_TI_begin_file("C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c")
	.dwattr $C$DW$38, DW_AT_TI_begin_line(0xa1)
	.dwattr $C$DW$38, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$38, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 165,column 1,is_stmt,address _DMACH1ModeConfig,isa 0

	.dwfde $C$DW$CIE, _DMACH1ModeConfig
$C$DW$39	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$39, DW_AT_name("persel")
	.dwattr $C$DW$39, DW_AT_TI_symbol_name("_persel")
	.dwattr $C$DW$39, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$39, DW_AT_location[DW_OP_reg0]

$C$DW$40	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$40, DW_AT_name("perinte")
	.dwattr $C$DW$40, DW_AT_TI_symbol_name("_perinte")
	.dwattr $C$DW$40, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$40, DW_AT_location[DW_OP_reg1]

$C$DW$41	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$41, DW_AT_name("oneshot")
	.dwattr $C$DW$41, DW_AT_TI_symbol_name("_oneshot")
	.dwattr $C$DW$41, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$41, DW_AT_location[DW_OP_reg12]

$C$DW$42	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$42, DW_AT_name("cont")
	.dwattr $C$DW$42, DW_AT_TI_symbol_name("_cont")
	.dwattr $C$DW$42, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$42, DW_AT_location[DW_OP_reg14]

$C$DW$43	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$43, DW_AT_name("synce")
	.dwattr $C$DW$43, DW_AT_TI_symbol_name("_synce")
	.dwattr $C$DW$43, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$43, DW_AT_location[DW_OP_breg20 -7]

$C$DW$44	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$44, DW_AT_name("syncsel")
	.dwattr $C$DW$44, DW_AT_TI_symbol_name("_syncsel")
	.dwattr $C$DW$44, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$44, DW_AT_location[DW_OP_breg20 -8]

$C$DW$45	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$45, DW_AT_name("ovrinte")
	.dwattr $C$DW$45, DW_AT_TI_symbol_name("_ovrinte")
	.dwattr $C$DW$45, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$45, DW_AT_location[DW_OP_breg20 -9]

$C$DW$46	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$46, DW_AT_name("datasize")
	.dwattr $C$DW$46, DW_AT_TI_symbol_name("_datasize")
	.dwattr $C$DW$46, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$46, DW_AT_location[DW_OP_breg20 -10]

$C$DW$47	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$47, DW_AT_name("chintmode")
	.dwattr $C$DW$47, DW_AT_TI_symbol_name("_chintmode")
	.dwattr $C$DW$47, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$47, DW_AT_location[DW_OP_breg20 -11]

$C$DW$48	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$48, DW_AT_name("chinte")
	.dwattr $C$DW$48, DW_AT_TI_symbol_name("_chinte")
	.dwattr $C$DW$48, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$48, DW_AT_location[DW_OP_breg20 -12]

;----------------------------------------------------------------------
; 161 | void DMACH1ModeConfig(Uint16 persel, Uint16 perinte, Uint16 oneshot,   
; 162 | Uint16 cont, Uint16 synce, Uint16 syncsel,                             
; 163 | Uint16 ovrinte, Uint16 datasize, Uint16 chintmode,                     
; 164 | Uint16 chinte)                                                         
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _DMACH1ModeConfig             FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  4 Auto,  0 SOE     *
;***************************************************************

_DMACH1ModeConfig:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
$C$DW$49	.dwtag  DW_TAG_variable
	.dwattr $C$DW$49, DW_AT_name("persel")
	.dwattr $C$DW$49, DW_AT_TI_symbol_name("_persel")
	.dwattr $C$DW$49, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$49, DW_AT_location[DW_OP_breg20 -1]

$C$DW$50	.dwtag  DW_TAG_variable
	.dwattr $C$DW$50, DW_AT_name("perinte")
	.dwattr $C$DW$50, DW_AT_TI_symbol_name("_perinte")
	.dwattr $C$DW$50, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$50, DW_AT_location[DW_OP_breg20 -2]

$C$DW$51	.dwtag  DW_TAG_variable
	.dwattr $C$DW$51, DW_AT_name("oneshot")
	.dwattr $C$DW$51, DW_AT_TI_symbol_name("_oneshot")
	.dwattr $C$DW$51, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$51, DW_AT_location[DW_OP_breg20 -3]

$C$DW$52	.dwtag  DW_TAG_variable
	.dwattr $C$DW$52, DW_AT_name("cont")
	.dwattr $C$DW$52, DW_AT_TI_symbol_name("_cont")
	.dwattr $C$DW$52, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$52, DW_AT_location[DW_OP_breg20 -4]

        MOV       *-SP[4],AR5           ; [CPU_ALU] |165| 
        MOV       *-SP[3],AR4           ; [CPU_ALU] |165| 
        MOV       *-SP[2],AH            ; [CPU_ALU] |165| 
        MOV       *-SP[1],AL            ; [CPU_ALU] |165| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 166,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 166 | EALLOW;                                                                
; 168 | //                                                                     
; 169 | // Set up MODE Register:                                               
; 170 | // persel - Source select                                              
; 171 | // PERINTSEL - Should be hard coded to channel, above now selects sourc
;     | e                                                                      
; 172 | // PERINTE - Peripheral interrupt enable                               
; 173 | // ONESHOT - Oneshot enable                                            
; 174 | // CONTINUOUS - Continuous enable                                      
; 175 | // OVRINTE - Enable/disable the overflow interrupt                     
; 176 | // DATASIZE - 16-bit/32-bit data size transfers                        
; 177 | // CHINTMODE - Generate interrupt to CPU at beginning/end of transfer  
; 178 | // CHINTE - Channel Interrupt to  CPU enable                           
; 179 | //                                                                     
;----------------------------------------------------------------------
 EALLOW
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 180,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 180 | DmaClaSrcSelRegs.DMACHSRCSEL1.bit.CH1 = persel;                        
;----------------------------------------------------------------------
        MOVW      DP,#_DmaClaSrcSelRegs+22 ; [CPU_ARAU] 
        MOV       AH,@$BLOCKED(_DmaClaSrcSelRegs)+22 ; [CPU_ALU] |180| 
        MOVB      AH,AL.LSB             ; [CPU_ALU] |180| 
        MOV       @$BLOCKED(_DmaClaSrcSelRegs)+22,AH ; [CPU_ALU] |180| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 181,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 181 | DmaRegs.CH1.MODE.bit.PERINTSEL = 1;                                    
;----------------------------------------------------------------------
        MOVW      DP,#_DmaRegs+32       ; [CPU_ARAU] 
        AND       AL,@$BLOCKED(_DmaRegs)+32,#0xffe0 ; [CPU_ALU] |181| 
        ORB       AL,#0x01              ; [CPU_ALU] |181| 
        MOV       @$BLOCKED(_DmaRegs)+32,AL ; [CPU_ALU] |181| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 182,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 182 | DmaRegs.CH1.MODE.bit.PERINTE = perinte;                                
;----------------------------------------------------------------------
        MOV       AL,*-SP[2]            ; [CPU_ALU] |182| 
        ANDB      AL,#0x01              ; [CPU_ALU] |182| 
        AND       AH,@$BLOCKED(_DmaRegs)+32,#0xfeff ; [CPU_FPU] |182| 
        LSL       AL,8                  ; [CPU_ALU] |182| 
        OR        AL,AH                 ; [CPU_ALU] |182| 
        MOV       @$BLOCKED(_DmaRegs)+32,AL ; [CPU_ALU] |182| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 183,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 183 | DmaRegs.CH1.MODE.bit.ONESHOT = oneshot;                                
;----------------------------------------------------------------------
        MOV       AL,*-SP[3]            ; [CPU_ALU] |183| 
        ANDB      AL,#0x01              ; [CPU_ALU] |183| 
        LSL       AL,10                 ; [CPU_ALU] |183| 
        AND       AH,@$BLOCKED(_DmaRegs)+32,#0xfbff ; [CPU_FPU] |183| 
        OR        AL,AH                 ; [CPU_ALU] |183| 
        MOV       @$BLOCKED(_DmaRegs)+32,AL ; [CPU_ALU] |183| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 184,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 184 | DmaRegs.CH1.MODE.bit.CONTINUOUS = cont;                                
;----------------------------------------------------------------------
        MOV       AL,*-SP[4]            ; [CPU_ALU] |184| 
        ANDB      AL,#0x01              ; [CPU_ALU] |184| 
        LSL       AL,11                 ; [CPU_ALU] |184| 
        AND       AH,@$BLOCKED(_DmaRegs)+32,#0xf7ff ; [CPU_FPU] |184| 
        OR        AL,AH                 ; [CPU_ALU] |184| 
        MOV       @$BLOCKED(_DmaRegs)+32,AL ; [CPU_ALU] |184| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 185,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 185 | DmaRegs.CH1.MODE.bit.OVRINTE = ovrinte;                                
;----------------------------------------------------------------------
        MOV       AL,*-SP[9]            ; [CPU_ALU] |185| 
        ANDB      AL,#0x01              ; [CPU_ALU] |185| 
        LSL       AL,7                  ; [CPU_ALU] |185| 
        AND       AH,@$BLOCKED(_DmaRegs)+32,#0xff7f ; [CPU_FPU] |185| 
        OR        AL,AH                 ; [CPU_ALU] |185| 
        MOV       @$BLOCKED(_DmaRegs)+32,AL ; [CPU_ALU] |185| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 186,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 186 | DmaRegs.CH1.MODE.bit.DATASIZE = datasize;                              
;----------------------------------------------------------------------
        MOV       AL,*-SP[10]           ; [CPU_ALU] |186| 
        ANDB      AL,#0x01              ; [CPU_ALU] |186| 
        LSL       AL,14                 ; [CPU_ALU] |186| 
        AND       AH,@$BLOCKED(_DmaRegs)+32,#0xbfff ; [CPU_FPU] |186| 
        OR        AL,AH                 ; [CPU_ALU] |186| 
        MOV       @$BLOCKED(_DmaRegs)+32,AL ; [CPU_ALU] |186| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 187,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 187 | DmaRegs.CH1.MODE.bit.CHINTMODE = chintmode;                            
;----------------------------------------------------------------------
        MOV       AL,*-SP[11]           ; [CPU_ALU] |187| 
        ANDB      AL,#0x01              ; [CPU_ALU] |187| 
        LSL       AL,9                  ; [CPU_ALU] |187| 
        AND       AH,@$BLOCKED(_DmaRegs)+32,#0xfdff ; [CPU_FPU] |187| 
        OR        AL,AH                 ; [CPU_ALU] |187| 
        MOV       @$BLOCKED(_DmaRegs)+32,AL ; [CPU_ALU] |187| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 188,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 188 | DmaRegs.CH1.MODE.bit.CHINTE = chinte;                                  
; 190 | //                                                                     
; 191 | // Clear any spurious flags: interrupt and sync error flags            
; 192 | //                                                                     
;----------------------------------------------------------------------
        AND       AL,@$BLOCKED(_DmaRegs)+32,#0x7fff ; [CPU_ALU] |188| 
        MOVZ      AR6,AL                ; [CPU_ALU] |188| 
        MOV       ACC,*-SP[12] << #15   ; [CPU_ALU] |188| 
        OR        AL,AR6                ; [CPU_ALU] |188| 
        MOV       @$BLOCKED(_DmaRegs)+32,AL ; [CPU_ALU] |188| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 193,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 193 | DmaRegs.CH1.CONTROL.bit.PERINTCLR = 1;                                 
;----------------------------------------------------------------------
        OR        @$BLOCKED(_DmaRegs)+33,#0x0010 ; [CPU_ALU] |193| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 194,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 194 | DmaRegs.CH1.CONTROL.bit.ERRCLR = 1;                                    
; 196 | //                                                                     
; 197 | // Initialize PIE vector for CPU interrupt:                            
; 198 | // Enable DMA CH1 interrupt in PIE                                     
; 199 | //                                                                     
;----------------------------------------------------------------------
        OR        @$BLOCKED(_DmaRegs)+33,#0x0080 ; [CPU_ALU] |194| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 200,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 200 | PieCtrlRegs.PIEIER7.bit.INTx1 = 1;                                     
;----------------------------------------------------------------------
        MOVW      DP,#_PieCtrlRegs+14   ; [CPU_ARAU] 
        OR        @$BLOCKED(_PieCtrlRegs)+14,#0x0001 ; [CPU_ALU] |200| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 202,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 202 | EDIS;                                                                  
;----------------------------------------------------------------------
 EDIS
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 203,column 1,is_stmt,isa 0
        SPM       #0                    ; [CPU_ALU] 
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$53	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$53, DW_AT_low_pc(0x00)
	.dwattr $C$DW$53, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$38, DW_AT_TI_end_file("C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c")
	.dwattr $C$DW$38, DW_AT_TI_end_line(0xcb)
	.dwattr $C$DW$38, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$38

	.sect	".text"
	.clink
	.global	_StartDMACH1

$C$DW$54	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$54, DW_AT_name("StartDMACH1")
	.dwattr $C$DW$54, DW_AT_low_pc(_StartDMACH1)
	.dwattr $C$DW$54, DW_AT_high_pc(0x00)
	.dwattr $C$DW$54, DW_AT_TI_symbol_name("_StartDMACH1")
	.dwattr $C$DW$54, DW_AT_external
	.dwattr $C$DW$54, DW_AT_TI_begin_file("C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c")
	.dwattr $C$DW$54, DW_AT_TI_begin_line(0xd0)
	.dwattr $C$DW$54, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$54, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 209,column 1,is_stmt,address _StartDMACH1,isa 0

	.dwfde $C$DW$CIE, _StartDMACH1
;----------------------------------------------------------------------
; 208 | void StartDMACH1(void)                                                 
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _StartDMACH1                  FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_StartDMACH1:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 210,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 210 | EALLOW;                                                                
;----------------------------------------------------------------------
 EALLOW
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 211,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 211 | DmaRegs.CH1.CONTROL.bit.RUN = 1;                                       
;----------------------------------------------------------------------
        MOVW      DP,#_DmaRegs+33       ; [CPU_ARAU] 
        OR        @$BLOCKED(_DmaRegs)+33,#0x0001 ; [CPU_ALU] |211| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 212,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 212 | EDIS;                                                                  
;----------------------------------------------------------------------
 EDIS
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 213,column 1,is_stmt,isa 0
        SPM       #0                    ; [CPU_ALU] 
$C$DW$55	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$55, DW_AT_low_pc(0x00)
	.dwattr $C$DW$55, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$54, DW_AT_TI_end_file("C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c")
	.dwattr $C$DW$54, DW_AT_TI_end_line(0xd5)
	.dwattr $C$DW$54, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$54

	.sect	".text"
	.clink
	.global	_DMACH2AddrConfig

$C$DW$56	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$56, DW_AT_name("DMACH2AddrConfig")
	.dwattr $C$DW$56, DW_AT_low_pc(_DMACH2AddrConfig)
	.dwattr $C$DW$56, DW_AT_high_pc(0x00)
	.dwattr $C$DW$56, DW_AT_TI_symbol_name("_DMACH2AddrConfig")
	.dwattr $C$DW$56, DW_AT_external
	.dwattr $C$DW$56, DW_AT_TI_begin_file("C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c")
	.dwattr $C$DW$56, DW_AT_TI_begin_line(0xda)
	.dwattr $C$DW$56, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$56, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 219,column 1,is_stmt,address _DMACH2AddrConfig,isa 0

	.dwfde $C$DW$CIE, _DMACH2AddrConfig
$C$DW$57	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$57, DW_AT_name("DMA_Dest")
	.dwattr $C$DW$57, DW_AT_TI_symbol_name("_DMA_Dest")
	.dwattr $C$DW$57, DW_AT_type(*$C$DW$T$130)
	.dwattr $C$DW$57, DW_AT_location[DW_OP_reg12]

$C$DW$58	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$58, DW_AT_name("DMA_Source")
	.dwattr $C$DW$58, DW_AT_TI_symbol_name("_DMA_Source")
	.dwattr $C$DW$58, DW_AT_type(*$C$DW$T$130)
	.dwattr $C$DW$58, DW_AT_location[DW_OP_reg14]

;----------------------------------------------------------------------
; 218 | void DMACH2AddrConfig(volatile Uint16 *DMA_Dest,volatile Uint16 *DMA_So
;     | urce)                                                                  
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _DMACH2AddrConfig             FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  4 Auto,  0 SOE     *
;***************************************************************

_DMACH2AddrConfig:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
$C$DW$59	.dwtag  DW_TAG_variable
	.dwattr $C$DW$59, DW_AT_name("DMA_Dest")
	.dwattr $C$DW$59, DW_AT_TI_symbol_name("_DMA_Dest")
	.dwattr $C$DW$59, DW_AT_type(*$C$DW$T$130)
	.dwattr $C$DW$59, DW_AT_location[DW_OP_breg20 -2]

$C$DW$60	.dwtag  DW_TAG_variable
	.dwattr $C$DW$60, DW_AT_name("DMA_Source")
	.dwattr $C$DW$60, DW_AT_TI_symbol_name("_DMA_Source")
	.dwattr $C$DW$60, DW_AT_type(*$C$DW$T$130)
	.dwattr $C$DW$60, DW_AT_location[DW_OP_breg20 -4]

        MOVL      *-SP[4],XAR5          ; [CPU_ALU] |219| 
        MOVL      *-SP[2],XAR4          ; [CPU_ALU] |219| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 220,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 220 | EALLOW;                                                                
; 222 | //                                                                     
; 223 | // Set up SOURCE address:                                              
; 224 | //                                                                     
;----------------------------------------------------------------------
 EALLOW
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 225,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 225 | DmaRegs.CH2.SRC_BEG_ADDR_SHADOW = (Uint32)DMA_Source;   // Point to    
; 226 |                                                         // beginning of
; 227 |                                                         // source buffe
;     | r.                                                                     
;----------------------------------------------------------------------
        MOVW      DP,#_DmaRegs+80       ; [CPU_ARAU] 
        MOVL      ACC,*-SP[4]           ; [CPU_ALU] |225| 
        MOVL      @$BLOCKED(_DmaRegs)+80,ACC ; [CPU_ALU] |225| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 228,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 228 | DmaRegs.CH2.SRC_ADDR_SHADOW =     (Uint32)DMA_Source;                  
; 230 | //                                                                     
; 231 | // Set up DESTINATION address:                                         
; 232 | //                                                                     
;----------------------------------------------------------------------
        MOVL      @$BLOCKED(_DmaRegs)+82,ACC ; [CPU_ALU] |228| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 233,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 233 | DmaRegs.CH2.DST_BEG_ADDR_SHADOW = (Uint32)DMA_Dest;  // Point to beginn
;     | ing                                                                    
; 234 |                                                      // of destination 
; 235 |                                                      // buffer.        
;----------------------------------------------------------------------
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |233| 
        MOVL      @$BLOCKED(_DmaRegs)+88,ACC ; [CPU_ALU] |233| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 236,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 236 | DmaRegs.CH2.DST_ADDR_SHADOW =     (Uint32)DMA_Dest;                    
;----------------------------------------------------------------------
        MOVL      @$BLOCKED(_DmaRegs)+90,ACC ; [CPU_ALU] |236| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 238,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 238 | EDIS;                                                                  
;----------------------------------------------------------------------
 EDIS
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 239,column 1,is_stmt,isa 0
        SPM       #0                    ; [CPU_ALU] 
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$61	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$61, DW_AT_low_pc(0x00)
	.dwattr $C$DW$61, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$56, DW_AT_TI_end_file("C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c")
	.dwattr $C$DW$56, DW_AT_TI_end_line(0xef)
	.dwattr $C$DW$56, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$56

	.sect	".text"
	.clink
	.global	_DMACH2BurstConfig

$C$DW$62	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$62, DW_AT_name("DMACH2BurstConfig")
	.dwattr $C$DW$62, DW_AT_low_pc(_DMACH2BurstConfig)
	.dwattr $C$DW$62, DW_AT_high_pc(0x00)
	.dwattr $C$DW$62, DW_AT_TI_symbol_name("_DMACH2BurstConfig")
	.dwattr $C$DW$62, DW_AT_external
	.dwattr $C$DW$62, DW_AT_TI_begin_file("C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c")
	.dwattr $C$DW$62, DW_AT_TI_begin_line(0xf4)
	.dwattr $C$DW$62, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$62, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 245,column 1,is_stmt,address _DMACH2BurstConfig,isa 0

	.dwfde $C$DW$CIE, _DMACH2BurstConfig
$C$DW$63	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$63, DW_AT_name("bsize")
	.dwattr $C$DW$63, DW_AT_TI_symbol_name("_bsize")
	.dwattr $C$DW$63, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$63, DW_AT_location[DW_OP_reg0]

$C$DW$64	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$64, DW_AT_name("srcbstep")
	.dwattr $C$DW$64, DW_AT_TI_symbol_name("_srcbstep")
	.dwattr $C$DW$64, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$64, DW_AT_location[DW_OP_reg1]

$C$DW$65	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$65, DW_AT_name("desbstep")
	.dwattr $C$DW$65, DW_AT_TI_symbol_name("_desbstep")
	.dwattr $C$DW$65, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$65, DW_AT_location[DW_OP_reg12]

;----------------------------------------------------------------------
; 244 | void DMACH2BurstConfig(Uint16 bsize, int16 srcbstep, int16 desbstep)   
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _DMACH2BurstConfig            FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  3 Auto,  0 SOE     *
;***************************************************************

_DMACH2BurstConfig:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
$C$DW$66	.dwtag  DW_TAG_variable
	.dwattr $C$DW$66, DW_AT_name("bsize")
	.dwattr $C$DW$66, DW_AT_TI_symbol_name("_bsize")
	.dwattr $C$DW$66, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$66, DW_AT_location[DW_OP_breg20 -1]

$C$DW$67	.dwtag  DW_TAG_variable
	.dwattr $C$DW$67, DW_AT_name("srcbstep")
	.dwattr $C$DW$67, DW_AT_TI_symbol_name("_srcbstep")
	.dwattr $C$DW$67, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$67, DW_AT_location[DW_OP_breg20 -2]

$C$DW$68	.dwtag  DW_TAG_variable
	.dwattr $C$DW$68, DW_AT_name("desbstep")
	.dwattr $C$DW$68, DW_AT_TI_symbol_name("_desbstep")
	.dwattr $C$DW$68, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$68, DW_AT_location[DW_OP_breg20 -3]

        MOV       *-SP[3],AR4           ; [CPU_ALU] |245| 
        MOV       *-SP[2],AH            ; [CPU_ALU] |245| 
        MOV       *-SP[1],AL            ; [CPU_ALU] |245| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 246,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 246 | EALLOW;                                                                
; 248 | //                                                                     
; 249 | // Set up BURST registers:                                             
; 250 | //                                                                     
;----------------------------------------------------------------------
 EALLOW
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 251,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 251 | DmaRegs.CH2.BURST_SIZE.all = bsize;     // Number of words(X-1) x-ferre
;     | d in                                                                   
; 252 |                                         // a burst.                    
;----------------------------------------------------------------------
        MOVW      DP,#_DmaRegs+66       ; [CPU_ARAU] 
        MOV       @$BLOCKED(_DmaRegs)+66,AL ; [CPU_ALU] |251| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 253,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 253 | DmaRegs.CH2.SRC_BURST_STEP = srcbstep;  // Increment source addr betwee
;     | n                                                                      
; 254 |                                         // each word x-ferred.         
;----------------------------------------------------------------------
        MOV       AL,*-SP[2]            ; [CPU_ALU] |253| 
        MOV       @$BLOCKED(_DmaRegs)+68,AL ; [CPU_ALU] |253| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 255,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 255 | DmaRegs.CH2.DST_BURST_STEP = desbstep;  // Increment dest addr between
;     | each                                                                   
; 256 |                                         // word x-ferred.              
;----------------------------------------------------------------------
        MOV       AL,*-SP[3]            ; [CPU_ALU] |255| 
        MOV       @$BLOCKED(_DmaRegs)+69,AL ; [CPU_ALU] |255| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 258,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 258 | EDIS;                                                                  
;----------------------------------------------------------------------
 EDIS
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 259,column 1,is_stmt,isa 0
        SPM       #0                    ; [CPU_ALU] 
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$69	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$69, DW_AT_low_pc(0x00)
	.dwattr $C$DW$69, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$62, DW_AT_TI_end_file("C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c")
	.dwattr $C$DW$62, DW_AT_TI_end_line(0x103)
	.dwattr $C$DW$62, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$62

	.sect	".text"
	.clink
	.global	_DMACH2TransferConfig

$C$DW$70	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$70, DW_AT_name("DMACH2TransferConfig")
	.dwattr $C$DW$70, DW_AT_low_pc(_DMACH2TransferConfig)
	.dwattr $C$DW$70, DW_AT_high_pc(0x00)
	.dwattr $C$DW$70, DW_AT_TI_symbol_name("_DMACH2TransferConfig")
	.dwattr $C$DW$70, DW_AT_external
	.dwattr $C$DW$70, DW_AT_TI_begin_file("C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c")
	.dwattr $C$DW$70, DW_AT_TI_begin_line(0x108)
	.dwattr $C$DW$70, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$70, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 265,column 1,is_stmt,address _DMACH2TransferConfig,isa 0

	.dwfde $C$DW$CIE, _DMACH2TransferConfig
$C$DW$71	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$71, DW_AT_name("tsize")
	.dwattr $C$DW$71, DW_AT_TI_symbol_name("_tsize")
	.dwattr $C$DW$71, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$71, DW_AT_location[DW_OP_reg0]

$C$DW$72	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$72, DW_AT_name("srctstep")
	.dwattr $C$DW$72, DW_AT_TI_symbol_name("_srctstep")
	.dwattr $C$DW$72, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$72, DW_AT_location[DW_OP_reg1]

$C$DW$73	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$73, DW_AT_name("deststep")
	.dwattr $C$DW$73, DW_AT_TI_symbol_name("_deststep")
	.dwattr $C$DW$73, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$73, DW_AT_location[DW_OP_reg12]

;----------------------------------------------------------------------
; 264 | void DMACH2TransferConfig(Uint16 tsize, int16 srctstep, int16 deststep)
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _DMACH2TransferConfig         FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  3 Auto,  0 SOE     *
;***************************************************************

_DMACH2TransferConfig:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
$C$DW$74	.dwtag  DW_TAG_variable
	.dwattr $C$DW$74, DW_AT_name("tsize")
	.dwattr $C$DW$74, DW_AT_TI_symbol_name("_tsize")
	.dwattr $C$DW$74, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$74, DW_AT_location[DW_OP_breg20 -1]

$C$DW$75	.dwtag  DW_TAG_variable
	.dwattr $C$DW$75, DW_AT_name("srctstep")
	.dwattr $C$DW$75, DW_AT_TI_symbol_name("_srctstep")
	.dwattr $C$DW$75, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$75, DW_AT_location[DW_OP_breg20 -2]

$C$DW$76	.dwtag  DW_TAG_variable
	.dwattr $C$DW$76, DW_AT_name("deststep")
	.dwattr $C$DW$76, DW_AT_TI_symbol_name("_deststep")
	.dwattr $C$DW$76, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$76, DW_AT_location[DW_OP_breg20 -3]

        MOV       *-SP[3],AR4           ; [CPU_ALU] |265| 
        MOV       *-SP[2],AH            ; [CPU_ALU] |265| 
        MOV       *-SP[1],AL            ; [CPU_ALU] |265| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 266,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 266 | EALLOW;                                                                
; 268 | //                                                                     
; 269 | // Set up TRANSFER registers:                                          
; 270 | //                                                                     
;----------------------------------------------------------------------
 EALLOW
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 271,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 271 | DmaRegs.CH2.TRANSFER_SIZE = tsize;        // Number of bursts per trans
;     | fer,                                                                   
; 272 |                                           // DMA interrupt will occur a
;     | fter                                                                   
; 273 |                                           // completed transfer.       
;----------------------------------------------------------------------
        MOVW      DP,#_DmaRegs+70       ; [CPU_ARAU] 
        MOV       @$BLOCKED(_DmaRegs)+70,AL ; [CPU_ALU] |271| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 274,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 274 | DmaRegs.CH2.SRC_TRANSFER_STEP = srctstep; // TRANSFER_STEP is ignored w
;     | hen                                                                    
; 275 |                                           // WRAP occurs.              
;----------------------------------------------------------------------
        MOV       AL,*-SP[2]            ; [CPU_ALU] |274| 
        MOV       @$BLOCKED(_DmaRegs)+72,AL ; [CPU_ALU] |274| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 276,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 276 | DmaRegs.CH2.DST_TRANSFER_STEP = deststep; // TRANSFER_STEP is ignored w
;     | hen                                                                    
; 277 |                                           // WRAP occurs.              
;----------------------------------------------------------------------
        MOV       AL,*-SP[3]            ; [CPU_ALU] |276| 
        MOV       @$BLOCKED(_DmaRegs)+73,AL ; [CPU_ALU] |276| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 279,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 279 | EDIS;                                                                  
;----------------------------------------------------------------------
 EDIS
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 280,column 1,is_stmt,isa 0
        SPM       #0                    ; [CPU_ALU] 
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$77	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$77, DW_AT_low_pc(0x00)
	.dwattr $C$DW$77, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$70, DW_AT_TI_end_file("C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c")
	.dwattr $C$DW$70, DW_AT_TI_end_line(0x118)
	.dwattr $C$DW$70, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$70

	.sect	".text"
	.clink
	.global	_DMACH2WrapConfig

$C$DW$78	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$78, DW_AT_name("DMACH2WrapConfig")
	.dwattr $C$DW$78, DW_AT_low_pc(_DMACH2WrapConfig)
	.dwattr $C$DW$78, DW_AT_high_pc(0x00)
	.dwattr $C$DW$78, DW_AT_TI_symbol_name("_DMACH2WrapConfig")
	.dwattr $C$DW$78, DW_AT_external
	.dwattr $C$DW$78, DW_AT_TI_begin_file("C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c")
	.dwattr $C$DW$78, DW_AT_TI_begin_line(0x11d)
	.dwattr $C$DW$78, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$78, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 287,column 1,is_stmt,address _DMACH2WrapConfig,isa 0

	.dwfde $C$DW$CIE, _DMACH2WrapConfig
$C$DW$79	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$79, DW_AT_name("srcwsize")
	.dwattr $C$DW$79, DW_AT_TI_symbol_name("_srcwsize")
	.dwattr $C$DW$79, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$79, DW_AT_location[DW_OP_reg0]

$C$DW$80	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$80, DW_AT_name("srcwstep")
	.dwattr $C$DW$80, DW_AT_TI_symbol_name("_srcwstep")
	.dwattr $C$DW$80, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$80, DW_AT_location[DW_OP_reg1]

$C$DW$81	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$81, DW_AT_name("deswsize")
	.dwattr $C$DW$81, DW_AT_TI_symbol_name("_deswsize")
	.dwattr $C$DW$81, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$81, DW_AT_location[DW_OP_reg12]

$C$DW$82	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$82, DW_AT_name("deswstep")
	.dwattr $C$DW$82, DW_AT_TI_symbol_name("_deswstep")
	.dwattr $C$DW$82, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$82, DW_AT_location[DW_OP_reg14]

;----------------------------------------------------------------------
; 285 | void DMACH2WrapConfig(Uint16 srcwsize, int16 srcwstep, Uint16 deswsize,
; 286 | int16 deswstep)                                                        
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _DMACH2WrapConfig             FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  4 Auto,  0 SOE     *
;***************************************************************

_DMACH2WrapConfig:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
$C$DW$83	.dwtag  DW_TAG_variable
	.dwattr $C$DW$83, DW_AT_name("srcwsize")
	.dwattr $C$DW$83, DW_AT_TI_symbol_name("_srcwsize")
	.dwattr $C$DW$83, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$83, DW_AT_location[DW_OP_breg20 -1]

$C$DW$84	.dwtag  DW_TAG_variable
	.dwattr $C$DW$84, DW_AT_name("srcwstep")
	.dwattr $C$DW$84, DW_AT_TI_symbol_name("_srcwstep")
	.dwattr $C$DW$84, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$84, DW_AT_location[DW_OP_breg20 -2]

$C$DW$85	.dwtag  DW_TAG_variable
	.dwattr $C$DW$85, DW_AT_name("deswsize")
	.dwattr $C$DW$85, DW_AT_TI_symbol_name("_deswsize")
	.dwattr $C$DW$85, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$85, DW_AT_location[DW_OP_breg20 -3]

$C$DW$86	.dwtag  DW_TAG_variable
	.dwattr $C$DW$86, DW_AT_name("deswstep")
	.dwattr $C$DW$86, DW_AT_TI_symbol_name("_deswstep")
	.dwattr $C$DW$86, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$86, DW_AT_location[DW_OP_breg20 -4]

        MOV       *-SP[4],AR5           ; [CPU_ALU] |287| 
        MOV       *-SP[3],AR4           ; [CPU_ALU] |287| 
        MOV       *-SP[2],AH            ; [CPU_ALU] |287| 
        MOV       *-SP[1],AL            ; [CPU_ALU] |287| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 288,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 288 | EALLOW;                                                                
; 290 | //                                                                     
; 291 | // Set up WRAP registers:                                              
; 292 | //                                                                     
;----------------------------------------------------------------------
 EALLOW
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 293,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 293 | DmaRegs.CH2.SRC_WRAP_SIZE = srcwsize; // Wrap source address after N bu
;     | rsts                                                                   
;----------------------------------------------------------------------
        MOVW      DP,#_DmaRegs+74       ; [CPU_ARAU] 
        MOV       @$BLOCKED(_DmaRegs)+74,AL ; [CPU_ALU] |293| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 294,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 294 | DmaRegs.CH2.SRC_WRAP_STEP = srcwstep; // Step for source wrap          
;----------------------------------------------------------------------
        MOV       AL,*-SP[2]            ; [CPU_ALU] |294| 
        MOV       @$BLOCKED(_DmaRegs)+76,AL ; [CPU_ALU] |294| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 296,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 296 | DmaRegs.CH2.DST_WRAP_SIZE = deswsize; // Wrap destination address after
; 297 |                                       // N bursts.                     
;----------------------------------------------------------------------
        MOV       AL,*-SP[3]            ; [CPU_ALU] |296| 
        MOV       @$BLOCKED(_DmaRegs)+77,AL ; [CPU_ALU] |296| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 298,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 298 | DmaRegs.CH2.DST_WRAP_STEP = deswstep; // Step for destination wrap     
;----------------------------------------------------------------------
        MOV       AL,*-SP[4]            ; [CPU_ALU] |298| 
        MOV       @$BLOCKED(_DmaRegs)+79,AL ; [CPU_ALU] |298| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 300,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 300 | EDIS;                                                                  
;----------------------------------------------------------------------
 EDIS
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 301,column 1,is_stmt,isa 0
        SPM       #0                    ; [CPU_ALU] 
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$87	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$87, DW_AT_low_pc(0x00)
	.dwattr $C$DW$87, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$78, DW_AT_TI_end_file("C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c")
	.dwattr $C$DW$78, DW_AT_TI_end_line(0x12d)
	.dwattr $C$DW$78, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$78

	.sect	".text"
	.clink
	.global	_DMACH2ModeConfig

$C$DW$88	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$88, DW_AT_name("DMACH2ModeConfig")
	.dwattr $C$DW$88, DW_AT_low_pc(_DMACH2ModeConfig)
	.dwattr $C$DW$88, DW_AT_high_pc(0x00)
	.dwattr $C$DW$88, DW_AT_TI_symbol_name("_DMACH2ModeConfig")
	.dwattr $C$DW$88, DW_AT_external
	.dwattr $C$DW$88, DW_AT_TI_begin_file("C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c")
	.dwattr $C$DW$88, DW_AT_TI_begin_line(0x132)
	.dwattr $C$DW$88, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$88, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 310,column 1,is_stmt,address _DMACH2ModeConfig,isa 0

	.dwfde $C$DW$CIE, _DMACH2ModeConfig
$C$DW$89	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$89, DW_AT_name("persel")
	.dwattr $C$DW$89, DW_AT_TI_symbol_name("_persel")
	.dwattr $C$DW$89, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$89, DW_AT_location[DW_OP_reg0]

$C$DW$90	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$90, DW_AT_name("perinte")
	.dwattr $C$DW$90, DW_AT_TI_symbol_name("_perinte")
	.dwattr $C$DW$90, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$90, DW_AT_location[DW_OP_reg1]

$C$DW$91	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$91, DW_AT_name("oneshot")
	.dwattr $C$DW$91, DW_AT_TI_symbol_name("_oneshot")
	.dwattr $C$DW$91, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$91, DW_AT_location[DW_OP_reg12]

$C$DW$92	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$92, DW_AT_name("cont")
	.dwattr $C$DW$92, DW_AT_TI_symbol_name("_cont")
	.dwattr $C$DW$92, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$92, DW_AT_location[DW_OP_reg14]

$C$DW$93	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$93, DW_AT_name("synce")
	.dwattr $C$DW$93, DW_AT_TI_symbol_name("_synce")
	.dwattr $C$DW$93, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$93, DW_AT_location[DW_OP_breg20 -7]

$C$DW$94	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$94, DW_AT_name("syncsel")
	.dwattr $C$DW$94, DW_AT_TI_symbol_name("_syncsel")
	.dwattr $C$DW$94, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$94, DW_AT_location[DW_OP_breg20 -8]

$C$DW$95	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$95, DW_AT_name("ovrinte")
	.dwattr $C$DW$95, DW_AT_TI_symbol_name("_ovrinte")
	.dwattr $C$DW$95, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$95, DW_AT_location[DW_OP_breg20 -9]

$C$DW$96	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$96, DW_AT_name("datasize")
	.dwattr $C$DW$96, DW_AT_TI_symbol_name("_datasize")
	.dwattr $C$DW$96, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$96, DW_AT_location[DW_OP_breg20 -10]

$C$DW$97	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$97, DW_AT_name("chintmode")
	.dwattr $C$DW$97, DW_AT_TI_symbol_name("_chintmode")
	.dwattr $C$DW$97, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$97, DW_AT_location[DW_OP_breg20 -11]

$C$DW$98	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$98, DW_AT_name("chinte")
	.dwattr $C$DW$98, DW_AT_TI_symbol_name("_chinte")
	.dwattr $C$DW$98, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$98, DW_AT_location[DW_OP_breg20 -12]

;----------------------------------------------------------------------
; 306 | void DMACH2ModeConfig(Uint16 persel, Uint16 perinte, Uint16 oneshot,   
; 307 | Uint16 cont, Uint16 synce, Uint16 syncsel,                             
; 308 | Uint16 ovrinte, Uint16 datasize, Uint16 chintmode,                     
; 309 | Uint16 chinte)                                                         
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _DMACH2ModeConfig             FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  4 Auto,  0 SOE     *
;***************************************************************

_DMACH2ModeConfig:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
$C$DW$99	.dwtag  DW_TAG_variable
	.dwattr $C$DW$99, DW_AT_name("persel")
	.dwattr $C$DW$99, DW_AT_TI_symbol_name("_persel")
	.dwattr $C$DW$99, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$99, DW_AT_location[DW_OP_breg20 -1]

$C$DW$100	.dwtag  DW_TAG_variable
	.dwattr $C$DW$100, DW_AT_name("perinte")
	.dwattr $C$DW$100, DW_AT_TI_symbol_name("_perinte")
	.dwattr $C$DW$100, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$100, DW_AT_location[DW_OP_breg20 -2]

$C$DW$101	.dwtag  DW_TAG_variable
	.dwattr $C$DW$101, DW_AT_name("oneshot")
	.dwattr $C$DW$101, DW_AT_TI_symbol_name("_oneshot")
	.dwattr $C$DW$101, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$101, DW_AT_location[DW_OP_breg20 -3]

$C$DW$102	.dwtag  DW_TAG_variable
	.dwattr $C$DW$102, DW_AT_name("cont")
	.dwattr $C$DW$102, DW_AT_TI_symbol_name("_cont")
	.dwattr $C$DW$102, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$102, DW_AT_location[DW_OP_breg20 -4]

        MOV       *-SP[4],AR5           ; [CPU_ALU] |310| 
        MOV       *-SP[3],AR4           ; [CPU_ALU] |310| 
        MOV       *-SP[2],AH            ; [CPU_ALU] |310| 
        MOV       *-SP[1],AL            ; [CPU_ALU] |310| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 311,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 311 | EALLOW;                                                                
; 313 | //                                                                     
; 314 | // Set up MODE Register:                                               
; 315 | // persel - Source select                                              
; 316 | // PERINTSEL - Should be hard coded to channel, above now selects sourc
;     | e                                                                      
; 317 | // PERINTE - Peripheral interrupt enable                               
; 318 | // ONESHOT - Oneshot enable                                            
; 319 | // CONTINUOUS - Continuous enable                                      
; 320 | // OVRINTE - Enable/disable the overflow interrupt                     
; 321 | // DATASIZE - 16-bit/32-bit data size transfers                        
; 322 | // CHINTMODE - Generate interrupt to CPU at beginning/end of transfer  
; 323 | // CHINTE - Channel Interrupt to  CPU enable                           
; 324 | //                                                                     
;----------------------------------------------------------------------
 EALLOW
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 325,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 325 | DmaClaSrcSelRegs.DMACHSRCSEL1.bit.CH2 = persel;                        
;----------------------------------------------------------------------
        MOVW      DP,#_DmaClaSrcSelRegs+22 ; [CPU_ARAU] 
        MOV       AL,@$BLOCKED(_DmaClaSrcSelRegs)+22 ; [CPU_ALU] |325| 
        MOV       AH,*-SP[1]            ; [CPU_ALU] |325| 
        MOVB      AL.MSB,AH             ; [CPU_ALU] |325| 
        MOV       @$BLOCKED(_DmaClaSrcSelRegs)+22,AL ; [CPU_ALU] |325| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 326,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 326 | DmaRegs.CH2.MODE.bit.PERINTSEL = 2;                                    
;----------------------------------------------------------------------
        MOVW      DP,#_DmaRegs+64       ; [CPU_ARAU] 
        AND       AL,@$BLOCKED(_DmaRegs)+64,#0xffe0 ; [CPU_ALU] |326| 
        ORB       AL,#0x02              ; [CPU_ALU] |326| 
        MOV       @$BLOCKED(_DmaRegs)+64,AL ; [CPU_ALU] |326| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 327,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 327 | DmaRegs.CH2.MODE.bit.PERINTE = perinte;                                
;----------------------------------------------------------------------
        MOV       AL,*-SP[2]            ; [CPU_ALU] |327| 
        ANDB      AL,#0x01              ; [CPU_ALU] |327| 
        AND       AH,@$BLOCKED(_DmaRegs)+64,#0xfeff ; [CPU_FPU] |327| 
        LSL       AL,8                  ; [CPU_ALU] |327| 
        OR        AL,AH                 ; [CPU_ALU] |327| 
        MOV       @$BLOCKED(_DmaRegs)+64,AL ; [CPU_ALU] |327| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 328,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 328 | DmaRegs.CH2.MODE.bit.ONESHOT = oneshot;                                
;----------------------------------------------------------------------
        MOV       AL,*-SP[3]            ; [CPU_ALU] |328| 
        ANDB      AL,#0x01              ; [CPU_ALU] |328| 
        LSL       AL,10                 ; [CPU_ALU] |328| 
        AND       AH,@$BLOCKED(_DmaRegs)+64,#0xfbff ; [CPU_FPU] |328| 
        OR        AL,AH                 ; [CPU_ALU] |328| 
        MOV       @$BLOCKED(_DmaRegs)+64,AL ; [CPU_ALU] |328| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 329,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 329 | DmaRegs.CH2.MODE.bit.CONTINUOUS = cont;                                
;----------------------------------------------------------------------
        MOV       AL,*-SP[4]            ; [CPU_ALU] |329| 
        ANDB      AL,#0x01              ; [CPU_ALU] |329| 
        LSL       AL,11                 ; [CPU_ALU] |329| 
        AND       AH,@$BLOCKED(_DmaRegs)+64,#0xf7ff ; [CPU_FPU] |329| 
        OR        AL,AH                 ; [CPU_ALU] |329| 
        MOV       @$BLOCKED(_DmaRegs)+64,AL ; [CPU_ALU] |329| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 330,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 330 | DmaRegs.CH2.MODE.bit.OVRINTE = ovrinte;                                
;----------------------------------------------------------------------
        MOV       AL,*-SP[9]            ; [CPU_ALU] |330| 
        ANDB      AL,#0x01              ; [CPU_ALU] |330| 
        LSL       AL,7                  ; [CPU_ALU] |330| 
        AND       AH,@$BLOCKED(_DmaRegs)+64,#0xff7f ; [CPU_FPU] |330| 
        OR        AL,AH                 ; [CPU_ALU] |330| 
        MOV       @$BLOCKED(_DmaRegs)+64,AL ; [CPU_ALU] |330| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 331,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 331 | DmaRegs.CH2.MODE.bit.DATASIZE = datasize;                              
;----------------------------------------------------------------------
        MOV       AL,*-SP[10]           ; [CPU_ALU] |331| 
        ANDB      AL,#0x01              ; [CPU_ALU] |331| 
        LSL       AL,14                 ; [CPU_ALU] |331| 
        AND       AH,@$BLOCKED(_DmaRegs)+64,#0xbfff ; [CPU_FPU] |331| 
        OR        AL,AH                 ; [CPU_ALU] |331| 
        MOV       @$BLOCKED(_DmaRegs)+64,AL ; [CPU_ALU] |331| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 332,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 332 | DmaRegs.CH2.MODE.bit.CHINTMODE = chintmode;                            
;----------------------------------------------------------------------
        MOV       AL,*-SP[11]           ; [CPU_ALU] |332| 
        ANDB      AL,#0x01              ; [CPU_ALU] |332| 
        LSL       AL,9                  ; [CPU_ALU] |332| 
        AND       AH,@$BLOCKED(_DmaRegs)+64,#0xfdff ; [CPU_FPU] |332| 
        OR        AL,AH                 ; [CPU_ALU] |332| 
        MOV       @$BLOCKED(_DmaRegs)+64,AL ; [CPU_ALU] |332| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 333,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 333 | DmaRegs.CH2.MODE.bit.CHINTE = chinte;                                  
; 335 | //                                                                     
; 336 | // Clear any spurious flags: Interrupt flags and sync error flags      
; 337 | //                                                                     
;----------------------------------------------------------------------
        AND       AL,@$BLOCKED(_DmaRegs)+64,#0x7fff ; [CPU_ALU] |333| 
        MOVZ      AR6,AL                ; [CPU_ALU] |333| 
        MOV       ACC,*-SP[12] << #15   ; [CPU_ALU] |333| 
        OR        AL,AR6                ; [CPU_ALU] |333| 
        MOV       @$BLOCKED(_DmaRegs)+64,AL ; [CPU_ALU] |333| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 338,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 338 | DmaRegs.CH2.CONTROL.bit.PERINTCLR = 1;                                 
;----------------------------------------------------------------------
        OR        @$BLOCKED(_DmaRegs)+65,#0x0010 ; [CPU_ALU] |338| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 339,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 339 | DmaRegs.CH2.CONTROL.bit.ERRCLR = 1;                                    
; 341 | //                                                                     
; 342 | // Initialize PIE vector for CPU interrupt:                            
; 343 | // Enable DMA CH2 interrupt in PIE                                     
; 344 | //                                                                     
;----------------------------------------------------------------------
        OR        @$BLOCKED(_DmaRegs)+65,#0x0080 ; [CPU_ALU] |339| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 345,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 345 | PieCtrlRegs.PIEIER7.bit.INTx2 = 1;                                     
;----------------------------------------------------------------------
        MOVW      DP,#_PieCtrlRegs+14   ; [CPU_ARAU] 
        OR        @$BLOCKED(_PieCtrlRegs)+14,#0x0002 ; [CPU_ALU] |345| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 347,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 347 | EDIS;                                                                  
;----------------------------------------------------------------------
 EDIS
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 348,column 1,is_stmt,isa 0
        SPM       #0                    ; [CPU_ALU] 
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$103	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$103, DW_AT_low_pc(0x00)
	.dwattr $C$DW$103, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$88, DW_AT_TI_end_file("C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c")
	.dwattr $C$DW$88, DW_AT_TI_end_line(0x15c)
	.dwattr $C$DW$88, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$88

	.sect	".text"
	.clink
	.global	_StartDMACH2

$C$DW$104	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$104, DW_AT_name("StartDMACH2")
	.dwattr $C$DW$104, DW_AT_low_pc(_StartDMACH2)
	.dwattr $C$DW$104, DW_AT_high_pc(0x00)
	.dwattr $C$DW$104, DW_AT_TI_symbol_name("_StartDMACH2")
	.dwattr $C$DW$104, DW_AT_external
	.dwattr $C$DW$104, DW_AT_TI_begin_file("C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c")
	.dwattr $C$DW$104, DW_AT_TI_begin_line(0x161)
	.dwattr $C$DW$104, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$104, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 354,column 1,is_stmt,address _StartDMACH2,isa 0

	.dwfde $C$DW$CIE, _StartDMACH2
;----------------------------------------------------------------------
; 353 | void StartDMACH2(void)                                                 
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _StartDMACH2                  FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_StartDMACH2:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 355,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 355 | EALLOW;                                                                
;----------------------------------------------------------------------
 EALLOW
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 356,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 356 | DmaRegs.CH2.CONTROL.bit.RUN = 1;                                       
;----------------------------------------------------------------------
        MOVW      DP,#_DmaRegs+65       ; [CPU_ARAU] 
        OR        @$BLOCKED(_DmaRegs)+65,#0x0001 ; [CPU_ALU] |356| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 357,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 357 | EDIS;                                                                  
;----------------------------------------------------------------------
 EDIS
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 358,column 1,is_stmt,isa 0
        SPM       #0                    ; [CPU_ALU] 
$C$DW$105	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$105, DW_AT_low_pc(0x00)
	.dwattr $C$DW$105, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$104, DW_AT_TI_end_file("C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c")
	.dwattr $C$DW$104, DW_AT_TI_end_line(0x166)
	.dwattr $C$DW$104, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$104

	.sect	".text"
	.clink
	.global	_DMACH3AddrConfig

$C$DW$106	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$106, DW_AT_name("DMACH3AddrConfig")
	.dwattr $C$DW$106, DW_AT_low_pc(_DMACH3AddrConfig)
	.dwattr $C$DW$106, DW_AT_high_pc(0x00)
	.dwattr $C$DW$106, DW_AT_TI_symbol_name("_DMACH3AddrConfig")
	.dwattr $C$DW$106, DW_AT_external
	.dwattr $C$DW$106, DW_AT_TI_begin_file("C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c")
	.dwattr $C$DW$106, DW_AT_TI_begin_line(0x16b)
	.dwattr $C$DW$106, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$106, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 364,column 1,is_stmt,address _DMACH3AddrConfig,isa 0

	.dwfde $C$DW$CIE, _DMACH3AddrConfig
$C$DW$107	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$107, DW_AT_name("DMA_Dest")
	.dwattr $C$DW$107, DW_AT_TI_symbol_name("_DMA_Dest")
	.dwattr $C$DW$107, DW_AT_type(*$C$DW$T$130)
	.dwattr $C$DW$107, DW_AT_location[DW_OP_reg12]

$C$DW$108	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$108, DW_AT_name("DMA_Source")
	.dwattr $C$DW$108, DW_AT_TI_symbol_name("_DMA_Source")
	.dwattr $C$DW$108, DW_AT_type(*$C$DW$T$130)
	.dwattr $C$DW$108, DW_AT_location[DW_OP_reg14]

;----------------------------------------------------------------------
; 363 | void DMACH3AddrConfig(volatile Uint16 *DMA_Dest,volatile Uint16 *DMA_So
;     | urce)                                                                  
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _DMACH3AddrConfig             FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  4 Auto,  0 SOE     *
;***************************************************************

_DMACH3AddrConfig:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
$C$DW$109	.dwtag  DW_TAG_variable
	.dwattr $C$DW$109, DW_AT_name("DMA_Dest")
	.dwattr $C$DW$109, DW_AT_TI_symbol_name("_DMA_Dest")
	.dwattr $C$DW$109, DW_AT_type(*$C$DW$T$130)
	.dwattr $C$DW$109, DW_AT_location[DW_OP_breg20 -2]

$C$DW$110	.dwtag  DW_TAG_variable
	.dwattr $C$DW$110, DW_AT_name("DMA_Source")
	.dwattr $C$DW$110, DW_AT_TI_symbol_name("_DMA_Source")
	.dwattr $C$DW$110, DW_AT_type(*$C$DW$T$130)
	.dwattr $C$DW$110, DW_AT_location[DW_OP_breg20 -4]

        MOVL      *-SP[4],XAR5          ; [CPU_ALU] |364| 
        MOVL      *-SP[2],XAR4          ; [CPU_ALU] |364| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 365,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 365 | EALLOW;                                                                
; 367 | //                                                                     
; 368 | // Set up SOURCE address:                                              
; 369 | //                                                                     
;----------------------------------------------------------------------
 EALLOW
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 370,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 370 | DmaRegs.CH3.SRC_BEG_ADDR_SHADOW = (Uint32)DMA_Source; // Point to begin
;     | ning                                                                   
; 371 |                                                       // of source buff
;     | er.                                                                    
;----------------------------------------------------------------------
        MOVW      DP,#_DmaRegs+112      ; [CPU_ARAU] 
        MOVL      ACC,*-SP[4]           ; [CPU_ALU] |370| 
        MOVL      @$BLOCKED(_DmaRegs)+112,ACC ; [CPU_ALU] |370| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 372,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 372 | DmaRegs.CH3.SRC_ADDR_SHADOW =     (Uint32)DMA_Source;                  
; 374 | //                                                                     
; 375 | // Set up DESTINATION address:                                         
; 376 | //                                                                     
;----------------------------------------------------------------------
        MOVL      @$BLOCKED(_DmaRegs)+114,ACC ; [CPU_ALU] |372| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 377,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 377 | DmaRegs.CH3.DST_BEG_ADDR_SHADOW = (Uint32)DMA_Dest; // Point to beginni
;     | ng                                                                     
; 378 |                                                     // of destination  
; 379 |                                                     // buffer.         
;----------------------------------------------------------------------
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |377| 
        MOVL      @$BLOCKED(_DmaRegs)+120,ACC ; [CPU_ALU] |377| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 380,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 380 | DmaRegs.CH3.DST_ADDR_SHADOW =     (Uint32)DMA_Dest;                    
;----------------------------------------------------------------------
        MOVL      @$BLOCKED(_DmaRegs)+122,ACC ; [CPU_ALU] |380| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 382,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 382 | EDIS;                                                                  
;----------------------------------------------------------------------
 EDIS
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 383,column 1,is_stmt,isa 0
        SPM       #0                    ; [CPU_ALU] 
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$111	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$111, DW_AT_low_pc(0x00)
	.dwattr $C$DW$111, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$106, DW_AT_TI_end_file("C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c")
	.dwattr $C$DW$106, DW_AT_TI_end_line(0x17f)
	.dwattr $C$DW$106, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$106

	.sect	".text"
	.clink
	.global	_DMACH3BurstConfig

$C$DW$112	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$112, DW_AT_name("DMACH3BurstConfig")
	.dwattr $C$DW$112, DW_AT_low_pc(_DMACH3BurstConfig)
	.dwattr $C$DW$112, DW_AT_high_pc(0x00)
	.dwattr $C$DW$112, DW_AT_TI_symbol_name("_DMACH3BurstConfig")
	.dwattr $C$DW$112, DW_AT_external
	.dwattr $C$DW$112, DW_AT_TI_begin_file("C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c")
	.dwattr $C$DW$112, DW_AT_TI_begin_line(0x184)
	.dwattr $C$DW$112, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$112, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 389,column 1,is_stmt,address _DMACH3BurstConfig,isa 0

	.dwfde $C$DW$CIE, _DMACH3BurstConfig
$C$DW$113	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$113, DW_AT_name("bsize")
	.dwattr $C$DW$113, DW_AT_TI_symbol_name("_bsize")
	.dwattr $C$DW$113, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$113, DW_AT_location[DW_OP_reg0]

$C$DW$114	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$114, DW_AT_name("srcbstep")
	.dwattr $C$DW$114, DW_AT_TI_symbol_name("_srcbstep")
	.dwattr $C$DW$114, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$114, DW_AT_location[DW_OP_reg1]

$C$DW$115	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$115, DW_AT_name("desbstep")
	.dwattr $C$DW$115, DW_AT_TI_symbol_name("_desbstep")
	.dwattr $C$DW$115, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$115, DW_AT_location[DW_OP_reg12]

;----------------------------------------------------------------------
; 388 | void DMACH3BurstConfig(Uint16 bsize, int16 srcbstep, int16 desbstep)   
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _DMACH3BurstConfig            FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  3 Auto,  0 SOE     *
;***************************************************************

_DMACH3BurstConfig:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
$C$DW$116	.dwtag  DW_TAG_variable
	.dwattr $C$DW$116, DW_AT_name("bsize")
	.dwattr $C$DW$116, DW_AT_TI_symbol_name("_bsize")
	.dwattr $C$DW$116, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$116, DW_AT_location[DW_OP_breg20 -1]

$C$DW$117	.dwtag  DW_TAG_variable
	.dwattr $C$DW$117, DW_AT_name("srcbstep")
	.dwattr $C$DW$117, DW_AT_TI_symbol_name("_srcbstep")
	.dwattr $C$DW$117, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$117, DW_AT_location[DW_OP_breg20 -2]

$C$DW$118	.dwtag  DW_TAG_variable
	.dwattr $C$DW$118, DW_AT_name("desbstep")
	.dwattr $C$DW$118, DW_AT_TI_symbol_name("_desbstep")
	.dwattr $C$DW$118, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$118, DW_AT_location[DW_OP_breg20 -3]

        MOV       *-SP[3],AR4           ; [CPU_ALU] |389| 
        MOV       *-SP[2],AH            ; [CPU_ALU] |389| 
        MOV       *-SP[1],AL            ; [CPU_ALU] |389| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 390,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 390 | EALLOW;                                                                
; 392 | //                                                                     
; 393 | // Set up BURST registers:                                             
; 394 | //                                                                     
;----------------------------------------------------------------------
 EALLOW
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 395,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 395 | DmaRegs.CH3.BURST_SIZE.all = bsize;     // Number of words(X-1) x-ferre
;     | d in                                                                   
; 396 |                                         // a burst.                    
;----------------------------------------------------------------------
        MOVW      DP,#_DmaRegs+98       ; [CPU_ARAU] 
        MOV       @$BLOCKED(_DmaRegs)+98,AL ; [CPU_ALU] |395| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 397,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 397 | DmaRegs.CH3.SRC_BURST_STEP = srcbstep;  // Increment source addr betwee
;     | n                                                                      
; 398 |                                         // each word x-ferred.         
;----------------------------------------------------------------------
        MOV       AL,*-SP[2]            ; [CPU_ALU] |397| 
        MOV       @$BLOCKED(_DmaRegs)+100,AL ; [CPU_ALU] |397| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 399,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 399 | DmaRegs.CH3.DST_BURST_STEP = desbstep;  // Increment dest addr between
;     | each                                                                   
; 400 |                                         // word x-ferred.              
;----------------------------------------------------------------------
        MOV       AL,*-SP[3]            ; [CPU_ALU] |399| 
        MOV       @$BLOCKED(_DmaRegs)+101,AL ; [CPU_ALU] |399| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 402,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 402 | EDIS;                                                                  
;----------------------------------------------------------------------
 EDIS
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 403,column 1,is_stmt,isa 0
        SPM       #0                    ; [CPU_ALU] 
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$119	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$119, DW_AT_low_pc(0x00)
	.dwattr $C$DW$119, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$112, DW_AT_TI_end_file("C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c")
	.dwattr $C$DW$112, DW_AT_TI_end_line(0x193)
	.dwattr $C$DW$112, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$112

	.sect	".text"
	.clink
	.global	_DMACH3TransferConfig

$C$DW$120	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$120, DW_AT_name("DMACH3TransferConfig")
	.dwattr $C$DW$120, DW_AT_low_pc(_DMACH3TransferConfig)
	.dwattr $C$DW$120, DW_AT_high_pc(0x00)
	.dwattr $C$DW$120, DW_AT_TI_symbol_name("_DMACH3TransferConfig")
	.dwattr $C$DW$120, DW_AT_external
	.dwattr $C$DW$120, DW_AT_TI_begin_file("C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c")
	.dwattr $C$DW$120, DW_AT_TI_begin_line(0x198)
	.dwattr $C$DW$120, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$120, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 409,column 1,is_stmt,address _DMACH3TransferConfig,isa 0

	.dwfde $C$DW$CIE, _DMACH3TransferConfig
$C$DW$121	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$121, DW_AT_name("tsize")
	.dwattr $C$DW$121, DW_AT_TI_symbol_name("_tsize")
	.dwattr $C$DW$121, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$121, DW_AT_location[DW_OP_reg0]

$C$DW$122	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$122, DW_AT_name("srctstep")
	.dwattr $C$DW$122, DW_AT_TI_symbol_name("_srctstep")
	.dwattr $C$DW$122, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$122, DW_AT_location[DW_OP_reg1]

$C$DW$123	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$123, DW_AT_name("deststep")
	.dwattr $C$DW$123, DW_AT_TI_symbol_name("_deststep")
	.dwattr $C$DW$123, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$123, DW_AT_location[DW_OP_reg12]

;----------------------------------------------------------------------
; 408 | void DMACH3TransferConfig(Uint16 tsize, int16 srctstep, int16 deststep)
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _DMACH3TransferConfig         FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  3 Auto,  0 SOE     *
;***************************************************************

_DMACH3TransferConfig:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
$C$DW$124	.dwtag  DW_TAG_variable
	.dwattr $C$DW$124, DW_AT_name("tsize")
	.dwattr $C$DW$124, DW_AT_TI_symbol_name("_tsize")
	.dwattr $C$DW$124, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$124, DW_AT_location[DW_OP_breg20 -1]

$C$DW$125	.dwtag  DW_TAG_variable
	.dwattr $C$DW$125, DW_AT_name("srctstep")
	.dwattr $C$DW$125, DW_AT_TI_symbol_name("_srctstep")
	.dwattr $C$DW$125, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$125, DW_AT_location[DW_OP_breg20 -2]

$C$DW$126	.dwtag  DW_TAG_variable
	.dwattr $C$DW$126, DW_AT_name("deststep")
	.dwattr $C$DW$126, DW_AT_TI_symbol_name("_deststep")
	.dwattr $C$DW$126, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$126, DW_AT_location[DW_OP_breg20 -3]

        MOV       *-SP[3],AR4           ; [CPU_ALU] |409| 
        MOV       *-SP[2],AH            ; [CPU_ALU] |409| 
        MOV       *-SP[1],AL            ; [CPU_ALU] |409| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 410,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 410 | EALLOW;                                                                
; 412 | //                                                                     
; 413 | // Set up TRANSFER registers:                                          
; 414 | //                                                                     
;----------------------------------------------------------------------
 EALLOW
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 415,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 415 | DmaRegs.CH3.TRANSFER_SIZE = tsize;        // Number of bursts per trans
;     | fer,                                                                   
; 416 |                                           // DMA interrupt will occur a
;     | fter                                                                   
; 417 |                                           // completed transfer.       
;----------------------------------------------------------------------
        MOVW      DP,#_DmaRegs+102      ; [CPU_ARAU] 
        MOV       @$BLOCKED(_DmaRegs)+102,AL ; [CPU_ALU] |415| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 418,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 418 | DmaRegs.CH3.SRC_TRANSFER_STEP = srctstep; // TRANSFER_STEP is ignored w
;     | hen                                                                    
; 419 |                                           // WRAP occurs.              
;----------------------------------------------------------------------
        MOV       AL,*-SP[2]            ; [CPU_ALU] |418| 
        MOV       @$BLOCKED(_DmaRegs)+104,AL ; [CPU_ALU] |418| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 420,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 420 | DmaRegs.CH3.DST_TRANSFER_STEP = deststep; // TRANSFER_STEP is ignored w
;     | hen                                                                    
; 421 |                                           // WRAP occurs.              
;----------------------------------------------------------------------
        MOV       AL,*-SP[3]            ; [CPU_ALU] |420| 
        MOV       @$BLOCKED(_DmaRegs)+105,AL ; [CPU_ALU] |420| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 423,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 423 | EDIS;                                                                  
;----------------------------------------------------------------------
 EDIS
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 424,column 1,is_stmt,isa 0
        SPM       #0                    ; [CPU_ALU] 
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$127	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$127, DW_AT_low_pc(0x00)
	.dwattr $C$DW$127, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$120, DW_AT_TI_end_file("C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c")
	.dwattr $C$DW$120, DW_AT_TI_end_line(0x1a8)
	.dwattr $C$DW$120, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$120

	.sect	".text"
	.clink
	.global	_DMACH3WrapConfig

$C$DW$128	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$128, DW_AT_name("DMACH3WrapConfig")
	.dwattr $C$DW$128, DW_AT_low_pc(_DMACH3WrapConfig)
	.dwattr $C$DW$128, DW_AT_high_pc(0x00)
	.dwattr $C$DW$128, DW_AT_TI_symbol_name("_DMACH3WrapConfig")
	.dwattr $C$DW$128, DW_AT_external
	.dwattr $C$DW$128, DW_AT_TI_begin_file("C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c")
	.dwattr $C$DW$128, DW_AT_TI_begin_line(0x1ad)
	.dwattr $C$DW$128, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$128, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 431,column 1,is_stmt,address _DMACH3WrapConfig,isa 0

	.dwfde $C$DW$CIE, _DMACH3WrapConfig
$C$DW$129	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$129, DW_AT_name("srcwsize")
	.dwattr $C$DW$129, DW_AT_TI_symbol_name("_srcwsize")
	.dwattr $C$DW$129, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$129, DW_AT_location[DW_OP_reg0]

$C$DW$130	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$130, DW_AT_name("srcwstep")
	.dwattr $C$DW$130, DW_AT_TI_symbol_name("_srcwstep")
	.dwattr $C$DW$130, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$130, DW_AT_location[DW_OP_reg1]

$C$DW$131	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$131, DW_AT_name("deswsize")
	.dwattr $C$DW$131, DW_AT_TI_symbol_name("_deswsize")
	.dwattr $C$DW$131, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$131, DW_AT_location[DW_OP_reg12]

$C$DW$132	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$132, DW_AT_name("deswstep")
	.dwattr $C$DW$132, DW_AT_TI_symbol_name("_deswstep")
	.dwattr $C$DW$132, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$132, DW_AT_location[DW_OP_reg14]

;----------------------------------------------------------------------
; 429 | void DMACH3WrapConfig(Uint16 srcwsize, int16 srcwstep, Uint16 deswsize,
; 430 | int16 deswstep)                                                        
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _DMACH3WrapConfig             FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  4 Auto,  0 SOE     *
;***************************************************************

_DMACH3WrapConfig:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
$C$DW$133	.dwtag  DW_TAG_variable
	.dwattr $C$DW$133, DW_AT_name("srcwsize")
	.dwattr $C$DW$133, DW_AT_TI_symbol_name("_srcwsize")
	.dwattr $C$DW$133, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$133, DW_AT_location[DW_OP_breg20 -1]

$C$DW$134	.dwtag  DW_TAG_variable
	.dwattr $C$DW$134, DW_AT_name("srcwstep")
	.dwattr $C$DW$134, DW_AT_TI_symbol_name("_srcwstep")
	.dwattr $C$DW$134, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$134, DW_AT_location[DW_OP_breg20 -2]

$C$DW$135	.dwtag  DW_TAG_variable
	.dwattr $C$DW$135, DW_AT_name("deswsize")
	.dwattr $C$DW$135, DW_AT_TI_symbol_name("_deswsize")
	.dwattr $C$DW$135, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$135, DW_AT_location[DW_OP_breg20 -3]

$C$DW$136	.dwtag  DW_TAG_variable
	.dwattr $C$DW$136, DW_AT_name("deswstep")
	.dwattr $C$DW$136, DW_AT_TI_symbol_name("_deswstep")
	.dwattr $C$DW$136, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$136, DW_AT_location[DW_OP_breg20 -4]

        MOV       *-SP[4],AR5           ; [CPU_ALU] |431| 
        MOV       *-SP[3],AR4           ; [CPU_ALU] |431| 
        MOV       *-SP[2],AH            ; [CPU_ALU] |431| 
        MOV       *-SP[1],AL            ; [CPU_ALU] |431| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 432,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 432 | EALLOW;                                                                
; 434 | //                                                                     
; 435 | // Set up WRAP registers:                                              
; 436 | //                                                                     
;----------------------------------------------------------------------
 EALLOW
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 437,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 437 | DmaRegs.CH3.SRC_WRAP_SIZE = srcwsize; // Wrap source address after N bu
;     | rsts                                                                   
;----------------------------------------------------------------------
        MOVW      DP,#_DmaRegs+106      ; [CPU_ARAU] 
        MOV       @$BLOCKED(_DmaRegs)+106,AL ; [CPU_ALU] |437| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 438,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 438 | DmaRegs.CH3.SRC_WRAP_STEP = srcwstep; // Step for source wrap          
;----------------------------------------------------------------------
        MOV       AL,*-SP[2]            ; [CPU_ALU] |438| 
        MOV       @$BLOCKED(_DmaRegs)+108,AL ; [CPU_ALU] |438| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 440,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 440 | DmaRegs.CH3.DST_WRAP_SIZE = deswsize; // Wrap destination address after
;     |  N                                                                     
; 441 |                                       // bursts.                       
;----------------------------------------------------------------------
        MOV       AL,*-SP[3]            ; [CPU_ALU] |440| 
        MOV       @$BLOCKED(_DmaRegs)+109,AL ; [CPU_ALU] |440| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 442,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 442 | DmaRegs.CH3.DST_WRAP_STEP = deswstep; // Step for destination wrap     
;----------------------------------------------------------------------
        MOV       AL,*-SP[4]            ; [CPU_ALU] |442| 
        MOV       @$BLOCKED(_DmaRegs)+111,AL ; [CPU_ALU] |442| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 444,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 444 | EDIS;                                                                  
;----------------------------------------------------------------------
 EDIS
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 445,column 1,is_stmt,isa 0
        SPM       #0                    ; [CPU_ALU] 
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$137	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$137, DW_AT_low_pc(0x00)
	.dwattr $C$DW$137, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$128, DW_AT_TI_end_file("C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c")
	.dwattr $C$DW$128, DW_AT_TI_end_line(0x1bd)
	.dwattr $C$DW$128, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$128

	.sect	".text"
	.clink
	.global	_DMACH3ModeConfig

$C$DW$138	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$138, DW_AT_name("DMACH3ModeConfig")
	.dwattr $C$DW$138, DW_AT_low_pc(_DMACH3ModeConfig)
	.dwattr $C$DW$138, DW_AT_high_pc(0x00)
	.dwattr $C$DW$138, DW_AT_TI_symbol_name("_DMACH3ModeConfig")
	.dwattr $C$DW$138, DW_AT_external
	.dwattr $C$DW$138, DW_AT_TI_begin_file("C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c")
	.dwattr $C$DW$138, DW_AT_TI_begin_line(0x1c2)
	.dwattr $C$DW$138, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$138, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 454,column 1,is_stmt,address _DMACH3ModeConfig,isa 0

	.dwfde $C$DW$CIE, _DMACH3ModeConfig
$C$DW$139	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$139, DW_AT_name("persel")
	.dwattr $C$DW$139, DW_AT_TI_symbol_name("_persel")
	.dwattr $C$DW$139, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$139, DW_AT_location[DW_OP_reg0]

$C$DW$140	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$140, DW_AT_name("perinte")
	.dwattr $C$DW$140, DW_AT_TI_symbol_name("_perinte")
	.dwattr $C$DW$140, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$140, DW_AT_location[DW_OP_reg1]

$C$DW$141	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$141, DW_AT_name("oneshot")
	.dwattr $C$DW$141, DW_AT_TI_symbol_name("_oneshot")
	.dwattr $C$DW$141, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$141, DW_AT_location[DW_OP_reg12]

$C$DW$142	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$142, DW_AT_name("cont")
	.dwattr $C$DW$142, DW_AT_TI_symbol_name("_cont")
	.dwattr $C$DW$142, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$142, DW_AT_location[DW_OP_reg14]

$C$DW$143	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$143, DW_AT_name("synce")
	.dwattr $C$DW$143, DW_AT_TI_symbol_name("_synce")
	.dwattr $C$DW$143, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$143, DW_AT_location[DW_OP_breg20 -7]

$C$DW$144	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$144, DW_AT_name("syncsel")
	.dwattr $C$DW$144, DW_AT_TI_symbol_name("_syncsel")
	.dwattr $C$DW$144, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$144, DW_AT_location[DW_OP_breg20 -8]

$C$DW$145	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$145, DW_AT_name("ovrinte")
	.dwattr $C$DW$145, DW_AT_TI_symbol_name("_ovrinte")
	.dwattr $C$DW$145, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$145, DW_AT_location[DW_OP_breg20 -9]

$C$DW$146	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$146, DW_AT_name("datasize")
	.dwattr $C$DW$146, DW_AT_TI_symbol_name("_datasize")
	.dwattr $C$DW$146, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$146, DW_AT_location[DW_OP_breg20 -10]

$C$DW$147	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$147, DW_AT_name("chintmode")
	.dwattr $C$DW$147, DW_AT_TI_symbol_name("_chintmode")
	.dwattr $C$DW$147, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$147, DW_AT_location[DW_OP_breg20 -11]

$C$DW$148	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$148, DW_AT_name("chinte")
	.dwattr $C$DW$148, DW_AT_TI_symbol_name("_chinte")
	.dwattr $C$DW$148, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$148, DW_AT_location[DW_OP_breg20 -12]

;----------------------------------------------------------------------
; 450 | void DMACH3ModeConfig(Uint16 persel, Uint16 perinte, Uint16 oneshot,   
; 451 | Uint16 cont, Uint16 synce, Uint16 syncsel,                             
; 452 | Uint16 ovrinte, Uint16 datasize, Uint16 chintmode,                     
; 453 | Uint16 chinte)                                                         
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _DMACH3ModeConfig             FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  4 Auto,  0 SOE     *
;***************************************************************

_DMACH3ModeConfig:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
$C$DW$149	.dwtag  DW_TAG_variable
	.dwattr $C$DW$149, DW_AT_name("persel")
	.dwattr $C$DW$149, DW_AT_TI_symbol_name("_persel")
	.dwattr $C$DW$149, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$149, DW_AT_location[DW_OP_breg20 -1]

$C$DW$150	.dwtag  DW_TAG_variable
	.dwattr $C$DW$150, DW_AT_name("perinte")
	.dwattr $C$DW$150, DW_AT_TI_symbol_name("_perinte")
	.dwattr $C$DW$150, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$150, DW_AT_location[DW_OP_breg20 -2]

$C$DW$151	.dwtag  DW_TAG_variable
	.dwattr $C$DW$151, DW_AT_name("oneshot")
	.dwattr $C$DW$151, DW_AT_TI_symbol_name("_oneshot")
	.dwattr $C$DW$151, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$151, DW_AT_location[DW_OP_breg20 -3]

$C$DW$152	.dwtag  DW_TAG_variable
	.dwattr $C$DW$152, DW_AT_name("cont")
	.dwattr $C$DW$152, DW_AT_TI_symbol_name("_cont")
	.dwattr $C$DW$152, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$152, DW_AT_location[DW_OP_breg20 -4]

        MOV       *-SP[4],AR5           ; [CPU_ALU] |454| 
        MOV       *-SP[3],AR4           ; [CPU_ALU] |454| 
        MOV       *-SP[2],AH            ; [CPU_ALU] |454| 
        MOV       *-SP[1],AL            ; [CPU_ALU] |454| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 455,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 455 | EALLOW;                                                                
; 457 | //                                                                     
; 458 | // Set up MODE Register:                                               
; 459 | // persel - Source select                                              
; 460 | // PERINTSEL - Should be hard coded to channel, above now selects sourc
;     | e                                                                      
; 461 | // PERINTE - Peripheral interrupt enable                               
; 462 | // ONESHOT - Oneshot enable                                            
; 463 | // CONTINUOUS - Continuous enable                                      
; 464 | // OVRINTE - Enable/disable the overflow interrupt                     
; 465 | // DATASIZE - 16-bit/32-bit data size transfers                        
; 466 | // CHINTMODE - Generate interrupt to CPU at beginning/end of transfer  
; 467 | // CHINTE - Channel Interrupt to  CPU enable                           
; 468 | //                                                                     
;----------------------------------------------------------------------
 EALLOW
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 469,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 469 | DmaClaSrcSelRegs.DMACHSRCSEL1.bit.CH3 = persel;                        
;----------------------------------------------------------------------
        MOVW      DP,#_DmaClaSrcSelRegs+23 ; [CPU_ARAU] 
        MOV       AH,@$BLOCKED(_DmaClaSrcSelRegs)+23 ; [CPU_ALU] |469| 
        MOVB      AH,AL.LSB             ; [CPU_ALU] |469| 
        MOV       @$BLOCKED(_DmaClaSrcSelRegs)+23,AH ; [CPU_ALU] |469| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 470,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 470 | DmaRegs.CH3.MODE.bit.PERINTSEL = 3;                                    
;----------------------------------------------------------------------
        MOVW      DP,#_DmaRegs+96       ; [CPU_ARAU] 
        AND       AL,@$BLOCKED(_DmaRegs)+96,#0xffe0 ; [CPU_ALU] |470| 
        ORB       AL,#0x03              ; [CPU_ALU] |470| 
        MOV       @$BLOCKED(_DmaRegs)+96,AL ; [CPU_ALU] |470| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 471,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 471 | DmaRegs.CH3.MODE.bit.PERINTE = perinte;                                
;----------------------------------------------------------------------
        MOV       AL,*-SP[2]            ; [CPU_ALU] |471| 
        ANDB      AL,#0x01              ; [CPU_ALU] |471| 
        AND       AH,@$BLOCKED(_DmaRegs)+96,#0xfeff ; [CPU_FPU] |471| 
        LSL       AL,8                  ; [CPU_ALU] |471| 
        OR        AL,AH                 ; [CPU_ALU] |471| 
        MOV       @$BLOCKED(_DmaRegs)+96,AL ; [CPU_ALU] |471| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 472,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 472 | DmaRegs.CH3.MODE.bit.ONESHOT = oneshot;                                
;----------------------------------------------------------------------
        MOV       AL,*-SP[3]            ; [CPU_ALU] |472| 
        ANDB      AL,#0x01              ; [CPU_ALU] |472| 
        LSL       AL,10                 ; [CPU_ALU] |472| 
        AND       AH,@$BLOCKED(_DmaRegs)+96,#0xfbff ; [CPU_FPU] |472| 
        OR        AL,AH                 ; [CPU_ALU] |472| 
        MOV       @$BLOCKED(_DmaRegs)+96,AL ; [CPU_ALU] |472| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 473,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 473 | DmaRegs.CH3.MODE.bit.CONTINUOUS = cont;                                
;----------------------------------------------------------------------
        MOV       AL,*-SP[4]            ; [CPU_ALU] |473| 
        ANDB      AL,#0x01              ; [CPU_ALU] |473| 
        LSL       AL,11                 ; [CPU_ALU] |473| 
        AND       AH,@$BLOCKED(_DmaRegs)+96,#0xf7ff ; [CPU_FPU] |473| 
        OR        AL,AH                 ; [CPU_ALU] |473| 
        MOV       @$BLOCKED(_DmaRegs)+96,AL ; [CPU_ALU] |473| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 474,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 474 | DmaRegs.CH3.MODE.bit.OVRINTE = ovrinte;                                
;----------------------------------------------------------------------
        MOV       AL,*-SP[9]            ; [CPU_ALU] |474| 
        ANDB      AL,#0x01              ; [CPU_ALU] |474| 
        LSL       AL,7                  ; [CPU_ALU] |474| 
        AND       AH,@$BLOCKED(_DmaRegs)+96,#0xff7f ; [CPU_FPU] |474| 
        OR        AL,AH                 ; [CPU_ALU] |474| 
        MOV       @$BLOCKED(_DmaRegs)+96,AL ; [CPU_ALU] |474| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 475,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 475 | DmaRegs.CH3.MODE.bit.DATASIZE = datasize;                              
;----------------------------------------------------------------------
        MOV       AL,*-SP[10]           ; [CPU_ALU] |475| 
        ANDB      AL,#0x01              ; [CPU_ALU] |475| 
        LSL       AL,14                 ; [CPU_ALU] |475| 
        AND       AH,@$BLOCKED(_DmaRegs)+96,#0xbfff ; [CPU_FPU] |475| 
        OR        AL,AH                 ; [CPU_ALU] |475| 
        MOV       @$BLOCKED(_DmaRegs)+96,AL ; [CPU_ALU] |475| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 476,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 476 | DmaRegs.CH3.MODE.bit.CHINTMODE = chintmode;                            
;----------------------------------------------------------------------
        MOV       AL,*-SP[11]           ; [CPU_ALU] |476| 
        ANDB      AL,#0x01              ; [CPU_ALU] |476| 
        LSL       AL,9                  ; [CPU_ALU] |476| 
        AND       AH,@$BLOCKED(_DmaRegs)+96,#0xfdff ; [CPU_FPU] |476| 
        OR        AL,AH                 ; [CPU_ALU] |476| 
        MOV       @$BLOCKED(_DmaRegs)+96,AL ; [CPU_ALU] |476| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 477,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 477 | DmaRegs.CH3.MODE.bit.CHINTE = chinte;                                  
; 479 | //                                                                     
; 480 | // Clear any spurious flags: interrupt flags and sync error flags      
; 481 | //                                                                     
;----------------------------------------------------------------------
        AND       AL,@$BLOCKED(_DmaRegs)+96,#0x7fff ; [CPU_ALU] |477| 
        MOVZ      AR6,AL                ; [CPU_ALU] |477| 
        MOV       ACC,*-SP[12] << #15   ; [CPU_ALU] |477| 
        OR        AL,AR6                ; [CPU_ALU] |477| 
        MOV       @$BLOCKED(_DmaRegs)+96,AL ; [CPU_ALU] |477| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 482,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 482 | DmaRegs.CH3.CONTROL.bit.PERINTCLR = 1;                                 
;----------------------------------------------------------------------
        OR        @$BLOCKED(_DmaRegs)+97,#0x0010 ; [CPU_ALU] |482| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 483,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 483 | DmaRegs.CH3.CONTROL.bit.ERRCLR = 1;                                    
; 485 | //                                                                     
; 486 | // Initialize PIE vector for CPU interrupt:                            
; 487 | // Enable DMA CH3 interrupt in PIE                                     
; 488 | //                                                                     
;----------------------------------------------------------------------
        OR        @$BLOCKED(_DmaRegs)+97,#0x0080 ; [CPU_ALU] |483| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 489,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 489 | PieCtrlRegs.PIEIER7.bit.INTx3 = 1;                                     
;----------------------------------------------------------------------
        MOVW      DP,#_PieCtrlRegs+14   ; [CPU_ARAU] 
        OR        @$BLOCKED(_PieCtrlRegs)+14,#0x0004 ; [CPU_ALU] |489| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 491,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 491 | EDIS;                                                                  
;----------------------------------------------------------------------
 EDIS
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 492,column 1,is_stmt,isa 0
        SPM       #0                    ; [CPU_ALU] 
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$153	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$153, DW_AT_low_pc(0x00)
	.dwattr $C$DW$153, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$138, DW_AT_TI_end_file("C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c")
	.dwattr $C$DW$138, DW_AT_TI_end_line(0x1ec)
	.dwattr $C$DW$138, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$138

	.sect	".text"
	.clink
	.global	_StartDMACH3

$C$DW$154	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$154, DW_AT_name("StartDMACH3")
	.dwattr $C$DW$154, DW_AT_low_pc(_StartDMACH3)
	.dwattr $C$DW$154, DW_AT_high_pc(0x00)
	.dwattr $C$DW$154, DW_AT_TI_symbol_name("_StartDMACH3")
	.dwattr $C$DW$154, DW_AT_external
	.dwattr $C$DW$154, DW_AT_TI_begin_file("C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c")
	.dwattr $C$DW$154, DW_AT_TI_begin_line(0x1f1)
	.dwattr $C$DW$154, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$154, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 498,column 1,is_stmt,address _StartDMACH3,isa 0

	.dwfde $C$DW$CIE, _StartDMACH3
;----------------------------------------------------------------------
; 497 | void StartDMACH3(void)                                                 
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _StartDMACH3                  FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_StartDMACH3:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 499,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 499 | EALLOW;                                                                
;----------------------------------------------------------------------
 EALLOW
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 500,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 500 | DmaRegs.CH3.CONTROL.bit.RUN = 1;                                       
;----------------------------------------------------------------------
        MOVW      DP,#_DmaRegs+97       ; [CPU_ARAU] 
        OR        @$BLOCKED(_DmaRegs)+97,#0x0001 ; [CPU_ALU] |500| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 501,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 501 | EDIS;                                                                  
;----------------------------------------------------------------------
 EDIS
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 502,column 1,is_stmt,isa 0
        SPM       #0                    ; [CPU_ALU] 
$C$DW$155	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$155, DW_AT_low_pc(0x00)
	.dwattr $C$DW$155, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$154, DW_AT_TI_end_file("C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c")
	.dwattr $C$DW$154, DW_AT_TI_end_line(0x1f6)
	.dwattr $C$DW$154, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$154

	.sect	".text"
	.clink
	.global	_DMACH4AddrConfig

$C$DW$156	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$156, DW_AT_name("DMACH4AddrConfig")
	.dwattr $C$DW$156, DW_AT_low_pc(_DMACH4AddrConfig)
	.dwattr $C$DW$156, DW_AT_high_pc(0x00)
	.dwattr $C$DW$156, DW_AT_TI_symbol_name("_DMACH4AddrConfig")
	.dwattr $C$DW$156, DW_AT_external
	.dwattr $C$DW$156, DW_AT_TI_begin_file("C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c")
	.dwattr $C$DW$156, DW_AT_TI_begin_line(0x1fb)
	.dwattr $C$DW$156, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$156, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 508,column 1,is_stmt,address _DMACH4AddrConfig,isa 0

	.dwfde $C$DW$CIE, _DMACH4AddrConfig
$C$DW$157	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$157, DW_AT_name("DMA_Dest")
	.dwattr $C$DW$157, DW_AT_TI_symbol_name("_DMA_Dest")
	.dwattr $C$DW$157, DW_AT_type(*$C$DW$T$130)
	.dwattr $C$DW$157, DW_AT_location[DW_OP_reg12]

$C$DW$158	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$158, DW_AT_name("DMA_Source")
	.dwattr $C$DW$158, DW_AT_TI_symbol_name("_DMA_Source")
	.dwattr $C$DW$158, DW_AT_type(*$C$DW$T$130)
	.dwattr $C$DW$158, DW_AT_location[DW_OP_reg14]

;----------------------------------------------------------------------
; 507 | void DMACH4AddrConfig(volatile Uint16 *DMA_Dest,volatile Uint16 *DMA_So
;     | urce)                                                                  
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _DMACH4AddrConfig             FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  4 Auto,  0 SOE     *
;***************************************************************

_DMACH4AddrConfig:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
$C$DW$159	.dwtag  DW_TAG_variable
	.dwattr $C$DW$159, DW_AT_name("DMA_Dest")
	.dwattr $C$DW$159, DW_AT_TI_symbol_name("_DMA_Dest")
	.dwattr $C$DW$159, DW_AT_type(*$C$DW$T$130)
	.dwattr $C$DW$159, DW_AT_location[DW_OP_breg20 -2]

$C$DW$160	.dwtag  DW_TAG_variable
	.dwattr $C$DW$160, DW_AT_name("DMA_Source")
	.dwattr $C$DW$160, DW_AT_TI_symbol_name("_DMA_Source")
	.dwattr $C$DW$160, DW_AT_type(*$C$DW$T$130)
	.dwattr $C$DW$160, DW_AT_location[DW_OP_breg20 -4]

        MOVL      *-SP[4],XAR5          ; [CPU_ALU] |508| 
        MOVL      *-SP[2],XAR4          ; [CPU_ALU] |508| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 509,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 509 | EALLOW;                                                                
; 511 | //                                                                     
; 512 | // Set up SOURCE address:                                              
; 513 | //                                                                     
;----------------------------------------------------------------------
 EALLOW
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 514,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 514 | DmaRegs.CH4.SRC_BEG_ADDR_SHADOW = (Uint32)DMA_Source; // Point to begin
;     | ning                                                                   
; 515 |                                                       // of source buff
;     | er.                                                                    
;----------------------------------------------------------------------
        MOVW      DP,#_DmaRegs+144      ; [CPU_ARAU] 
        MOVL      ACC,*-SP[4]           ; [CPU_ALU] |514| 
        MOVL      @$BLOCKED(_DmaRegs)+144,ACC ; [CPU_ALU] |514| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 516,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 516 | DmaRegs.CH4.SRC_ADDR_SHADOW =     (Uint32)DMA_Source;                  
; 518 | //                                                                     
; 519 | // Set up DESTINATION address:                                         
; 520 | //                                                                     
;----------------------------------------------------------------------
        MOVL      @$BLOCKED(_DmaRegs)+146,ACC ; [CPU_ALU] |516| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 521,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 521 | DmaRegs.CH4.DST_BEG_ADDR_SHADOW = (Uint32)DMA_Dest;   // Point to begin
;     | ning                                                                   
; 522 |                                                       // of destination
; 523 |                                                       // buffer.       
;----------------------------------------------------------------------
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |521| 
        MOVL      @$BLOCKED(_DmaRegs)+152,ACC ; [CPU_ALU] |521| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 524,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 524 | DmaRegs.CH4.DST_ADDR_SHADOW =     (Uint32)DMA_Dest;                    
;----------------------------------------------------------------------
        MOVL      @$BLOCKED(_DmaRegs)+154,ACC ; [CPU_ALU] |524| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 526,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 526 | EDIS;                                                                  
;----------------------------------------------------------------------
 EDIS
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 527,column 1,is_stmt,isa 0
        SPM       #0                    ; [CPU_ALU] 
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$161	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$161, DW_AT_low_pc(0x00)
	.dwattr $C$DW$161, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$156, DW_AT_TI_end_file("C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c")
	.dwattr $C$DW$156, DW_AT_TI_end_line(0x20f)
	.dwattr $C$DW$156, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$156

	.sect	".text"
	.clink
	.global	_DMACH4BurstConfig

$C$DW$162	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$162, DW_AT_name("DMACH4BurstConfig")
	.dwattr $C$DW$162, DW_AT_low_pc(_DMACH4BurstConfig)
	.dwattr $C$DW$162, DW_AT_high_pc(0x00)
	.dwattr $C$DW$162, DW_AT_TI_symbol_name("_DMACH4BurstConfig")
	.dwattr $C$DW$162, DW_AT_external
	.dwattr $C$DW$162, DW_AT_TI_begin_file("C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c")
	.dwattr $C$DW$162, DW_AT_TI_begin_line(0x214)
	.dwattr $C$DW$162, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$162, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 533,column 1,is_stmt,address _DMACH4BurstConfig,isa 0

	.dwfde $C$DW$CIE, _DMACH4BurstConfig
$C$DW$163	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$163, DW_AT_name("bsize")
	.dwattr $C$DW$163, DW_AT_TI_symbol_name("_bsize")
	.dwattr $C$DW$163, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$163, DW_AT_location[DW_OP_reg0]

$C$DW$164	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$164, DW_AT_name("srcbstep")
	.dwattr $C$DW$164, DW_AT_TI_symbol_name("_srcbstep")
	.dwattr $C$DW$164, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$164, DW_AT_location[DW_OP_reg1]

$C$DW$165	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$165, DW_AT_name("desbstep")
	.dwattr $C$DW$165, DW_AT_TI_symbol_name("_desbstep")
	.dwattr $C$DW$165, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$165, DW_AT_location[DW_OP_reg12]

;----------------------------------------------------------------------
; 532 | void DMACH4BurstConfig(Uint16 bsize, int16 srcbstep, int16 desbstep)   
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _DMACH4BurstConfig            FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  3 Auto,  0 SOE     *
;***************************************************************

_DMACH4BurstConfig:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
$C$DW$166	.dwtag  DW_TAG_variable
	.dwattr $C$DW$166, DW_AT_name("bsize")
	.dwattr $C$DW$166, DW_AT_TI_symbol_name("_bsize")
	.dwattr $C$DW$166, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$166, DW_AT_location[DW_OP_breg20 -1]

$C$DW$167	.dwtag  DW_TAG_variable
	.dwattr $C$DW$167, DW_AT_name("srcbstep")
	.dwattr $C$DW$167, DW_AT_TI_symbol_name("_srcbstep")
	.dwattr $C$DW$167, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$167, DW_AT_location[DW_OP_breg20 -2]

$C$DW$168	.dwtag  DW_TAG_variable
	.dwattr $C$DW$168, DW_AT_name("desbstep")
	.dwattr $C$DW$168, DW_AT_TI_symbol_name("_desbstep")
	.dwattr $C$DW$168, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$168, DW_AT_location[DW_OP_breg20 -3]

        MOV       *-SP[3],AR4           ; [CPU_ALU] |533| 
        MOV       *-SP[2],AH            ; [CPU_ALU] |533| 
        MOV       *-SP[1],AL            ; [CPU_ALU] |533| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 534,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 534 | EALLOW;                                                                
; 536 | //                                                                     
; 537 | // Set up BURST registers:                                             
; 538 | //                                                                     
;----------------------------------------------------------------------
 EALLOW
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 539,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 539 | DmaRegs.CH4.BURST_SIZE.all = bsize;     // Number of words(X-1) x-ferre
;     | d in                                                                   
; 540 |                                         // a burst.                    
;----------------------------------------------------------------------
        MOVW      DP,#_DmaRegs+130      ; [CPU_ARAU] 
        MOV       @$BLOCKED(_DmaRegs)+130,AL ; [CPU_ALU] |539| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 541,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 541 | DmaRegs.CH4.SRC_BURST_STEP = srcbstep;  // Increment source addr betwee
;     | n                                                                      
; 542 |                                         // each word x-ferred.         
;----------------------------------------------------------------------
        MOV       AL,*-SP[2]            ; [CPU_ALU] |541| 
        MOV       @$BLOCKED(_DmaRegs)+132,AL ; [CPU_ALU] |541| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 543,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 543 | DmaRegs.CH4.DST_BURST_STEP = desbstep;  // Increment dest addr between
;     | each                                                                   
; 544 |                                         // word x-ferred.              
;----------------------------------------------------------------------
        MOV       AL,*-SP[3]            ; [CPU_ALU] |543| 
        MOV       @$BLOCKED(_DmaRegs)+133,AL ; [CPU_ALU] |543| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 546,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 546 | EDIS;                                                                  
;----------------------------------------------------------------------
 EDIS
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 547,column 1,is_stmt,isa 0
        SPM       #0                    ; [CPU_ALU] 
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$169	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$169, DW_AT_low_pc(0x00)
	.dwattr $C$DW$169, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$162, DW_AT_TI_end_file("C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c")
	.dwattr $C$DW$162, DW_AT_TI_end_line(0x223)
	.dwattr $C$DW$162, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$162

	.sect	".text"
	.clink
	.global	_DMACH4TransferConfig

$C$DW$170	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$170, DW_AT_name("DMACH4TransferConfig")
	.dwattr $C$DW$170, DW_AT_low_pc(_DMACH4TransferConfig)
	.dwattr $C$DW$170, DW_AT_high_pc(0x00)
	.dwattr $C$DW$170, DW_AT_TI_symbol_name("_DMACH4TransferConfig")
	.dwattr $C$DW$170, DW_AT_external
	.dwattr $C$DW$170, DW_AT_TI_begin_file("C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c")
	.dwattr $C$DW$170, DW_AT_TI_begin_line(0x228)
	.dwattr $C$DW$170, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$170, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 553,column 1,is_stmt,address _DMACH4TransferConfig,isa 0

	.dwfde $C$DW$CIE, _DMACH4TransferConfig
$C$DW$171	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$171, DW_AT_name("tsize")
	.dwattr $C$DW$171, DW_AT_TI_symbol_name("_tsize")
	.dwattr $C$DW$171, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$171, DW_AT_location[DW_OP_reg0]

$C$DW$172	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$172, DW_AT_name("srctstep")
	.dwattr $C$DW$172, DW_AT_TI_symbol_name("_srctstep")
	.dwattr $C$DW$172, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$172, DW_AT_location[DW_OP_reg1]

$C$DW$173	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$173, DW_AT_name("deststep")
	.dwattr $C$DW$173, DW_AT_TI_symbol_name("_deststep")
	.dwattr $C$DW$173, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$173, DW_AT_location[DW_OP_reg12]

;----------------------------------------------------------------------
; 552 | void DMACH4TransferConfig(Uint16 tsize, int16 srctstep, int16 deststep)
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _DMACH4TransferConfig         FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  3 Auto,  0 SOE     *
;***************************************************************

_DMACH4TransferConfig:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
$C$DW$174	.dwtag  DW_TAG_variable
	.dwattr $C$DW$174, DW_AT_name("tsize")
	.dwattr $C$DW$174, DW_AT_TI_symbol_name("_tsize")
	.dwattr $C$DW$174, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$174, DW_AT_location[DW_OP_breg20 -1]

$C$DW$175	.dwtag  DW_TAG_variable
	.dwattr $C$DW$175, DW_AT_name("srctstep")
	.dwattr $C$DW$175, DW_AT_TI_symbol_name("_srctstep")
	.dwattr $C$DW$175, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$175, DW_AT_location[DW_OP_breg20 -2]

$C$DW$176	.dwtag  DW_TAG_variable
	.dwattr $C$DW$176, DW_AT_name("deststep")
	.dwattr $C$DW$176, DW_AT_TI_symbol_name("_deststep")
	.dwattr $C$DW$176, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$176, DW_AT_location[DW_OP_breg20 -3]

        MOV       *-SP[3],AR4           ; [CPU_ALU] |553| 
        MOV       *-SP[2],AH            ; [CPU_ALU] |553| 
        MOV       *-SP[1],AL            ; [CPU_ALU] |553| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 554,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 554 | EALLOW;                                                                
; 556 | //                                                                     
; 557 | // Set up TRANSFER registers:                                          
; 558 | //                                                                     
;----------------------------------------------------------------------
 EALLOW
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 559,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 559 | DmaRegs.CH4.TRANSFER_SIZE = tsize;        // Number of bursts per trans
;     | fer,                                                                   
; 560 |                                           // DMA interrupt will occur a
;     | fter                                                                   
; 561 |                                           // completed transfer.       
;----------------------------------------------------------------------
        MOVW      DP,#_DmaRegs+134      ; [CPU_ARAU] 
        MOV       @$BLOCKED(_DmaRegs)+134,AL ; [CPU_ALU] |559| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 562,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 562 | DmaRegs.CH4.SRC_TRANSFER_STEP = srctstep; // TRANSFER_STEP is ignored w
;     | hen                                                                    
; 563 |                                           // WRAP occurs.              
;----------------------------------------------------------------------
        MOV       AL,*-SP[2]            ; [CPU_ALU] |562| 
        MOV       @$BLOCKED(_DmaRegs)+136,AL ; [CPU_ALU] |562| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 564,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 564 | DmaRegs.CH4.DST_TRANSFER_STEP = deststep; // TRANSFER_STEP is ignored w
;     | hen                                                                    
; 565 |                                           // WRAP occurs.              
;----------------------------------------------------------------------
        MOV       AL,*-SP[3]            ; [CPU_ALU] |564| 
        MOV       @$BLOCKED(_DmaRegs)+137,AL ; [CPU_ALU] |564| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 567,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 567 | EDIS;                                                                  
;----------------------------------------------------------------------
 EDIS
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 568,column 1,is_stmt,isa 0
        SPM       #0                    ; [CPU_ALU] 
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$177	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$177, DW_AT_low_pc(0x00)
	.dwattr $C$DW$177, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$170, DW_AT_TI_end_file("C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c")
	.dwattr $C$DW$170, DW_AT_TI_end_line(0x238)
	.dwattr $C$DW$170, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$170

	.sect	".text"
	.clink
	.global	_DMACH4WrapConfig

$C$DW$178	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$178, DW_AT_name("DMACH4WrapConfig")
	.dwattr $C$DW$178, DW_AT_low_pc(_DMACH4WrapConfig)
	.dwattr $C$DW$178, DW_AT_high_pc(0x00)
	.dwattr $C$DW$178, DW_AT_TI_symbol_name("_DMACH4WrapConfig")
	.dwattr $C$DW$178, DW_AT_external
	.dwattr $C$DW$178, DW_AT_TI_begin_file("C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c")
	.dwattr $C$DW$178, DW_AT_TI_begin_line(0x23d)
	.dwattr $C$DW$178, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$178, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 575,column 1,is_stmt,address _DMACH4WrapConfig,isa 0

	.dwfde $C$DW$CIE, _DMACH4WrapConfig
$C$DW$179	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$179, DW_AT_name("srcwsize")
	.dwattr $C$DW$179, DW_AT_TI_symbol_name("_srcwsize")
	.dwattr $C$DW$179, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$179, DW_AT_location[DW_OP_reg0]

$C$DW$180	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$180, DW_AT_name("srcwstep")
	.dwattr $C$DW$180, DW_AT_TI_symbol_name("_srcwstep")
	.dwattr $C$DW$180, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$180, DW_AT_location[DW_OP_reg1]

$C$DW$181	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$181, DW_AT_name("deswsize")
	.dwattr $C$DW$181, DW_AT_TI_symbol_name("_deswsize")
	.dwattr $C$DW$181, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$181, DW_AT_location[DW_OP_reg12]

$C$DW$182	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$182, DW_AT_name("deswstep")
	.dwattr $C$DW$182, DW_AT_TI_symbol_name("_deswstep")
	.dwattr $C$DW$182, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$182, DW_AT_location[DW_OP_reg14]

;----------------------------------------------------------------------
; 573 | void DMACH4WrapConfig(Uint16 srcwsize, int16 srcwstep, Uint16 deswsize,
; 574 | int16 deswstep)                                                        
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _DMACH4WrapConfig             FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  4 Auto,  0 SOE     *
;***************************************************************

_DMACH4WrapConfig:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
$C$DW$183	.dwtag  DW_TAG_variable
	.dwattr $C$DW$183, DW_AT_name("srcwsize")
	.dwattr $C$DW$183, DW_AT_TI_symbol_name("_srcwsize")
	.dwattr $C$DW$183, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$183, DW_AT_location[DW_OP_breg20 -1]

$C$DW$184	.dwtag  DW_TAG_variable
	.dwattr $C$DW$184, DW_AT_name("srcwstep")
	.dwattr $C$DW$184, DW_AT_TI_symbol_name("_srcwstep")
	.dwattr $C$DW$184, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$184, DW_AT_location[DW_OP_breg20 -2]

$C$DW$185	.dwtag  DW_TAG_variable
	.dwattr $C$DW$185, DW_AT_name("deswsize")
	.dwattr $C$DW$185, DW_AT_TI_symbol_name("_deswsize")
	.dwattr $C$DW$185, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$185, DW_AT_location[DW_OP_breg20 -3]

$C$DW$186	.dwtag  DW_TAG_variable
	.dwattr $C$DW$186, DW_AT_name("deswstep")
	.dwattr $C$DW$186, DW_AT_TI_symbol_name("_deswstep")
	.dwattr $C$DW$186, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$186, DW_AT_location[DW_OP_breg20 -4]

        MOV       *-SP[4],AR5           ; [CPU_ALU] |575| 
        MOV       *-SP[3],AR4           ; [CPU_ALU] |575| 
        MOV       *-SP[2],AH            ; [CPU_ALU] |575| 
        MOV       *-SP[1],AL            ; [CPU_ALU] |575| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 576,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 576 | EALLOW;                                                                
; 578 | //                                                                     
; 579 | // Set up WRAP registers:                                              
; 580 | //                                                                     
;----------------------------------------------------------------------
 EALLOW
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 581,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 581 | DmaRegs.CH4.SRC_WRAP_SIZE = srcwsize; // Wrap source address after N bu
;     | rsts                                                                   
;----------------------------------------------------------------------
        MOVW      DP,#_DmaRegs+138      ; [CPU_ARAU] 
        MOV       @$BLOCKED(_DmaRegs)+138,AL ; [CPU_ALU] |581| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 582,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 582 | DmaRegs.CH4.SRC_WRAP_STEP = srcwstep; // Step for source wrap          
;----------------------------------------------------------------------
        MOV       AL,*-SP[2]            ; [CPU_ALU] |582| 
        MOV       @$BLOCKED(_DmaRegs)+140,AL ; [CPU_ALU] |582| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 584,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 584 | DmaRegs.CH4.DST_WRAP_SIZE = deswsize; // Wrap destination address after
; 585 |                                       // N bursts.                     
;----------------------------------------------------------------------
        MOV       AL,*-SP[3]            ; [CPU_ALU] |584| 
        MOV       @$BLOCKED(_DmaRegs)+141,AL ; [CPU_ALU] |584| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 586,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 586 | DmaRegs.CH4.DST_WRAP_STEP = deswstep; // Step for destination wrap     
;----------------------------------------------------------------------
        MOV       AL,*-SP[4]            ; [CPU_ALU] |586| 
        MOV       @$BLOCKED(_DmaRegs)+143,AL ; [CPU_ALU] |586| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 588,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 588 | EDIS;                                                                  
;----------------------------------------------------------------------
 EDIS
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 589,column 1,is_stmt,isa 0
        SPM       #0                    ; [CPU_ALU] 
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$187	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$187, DW_AT_low_pc(0x00)
	.dwattr $C$DW$187, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$178, DW_AT_TI_end_file("C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c")
	.dwattr $C$DW$178, DW_AT_TI_end_line(0x24d)
	.dwattr $C$DW$178, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$178

	.sect	".text"
	.clink
	.global	_DMACH4ModeConfig

$C$DW$188	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$188, DW_AT_name("DMACH4ModeConfig")
	.dwattr $C$DW$188, DW_AT_low_pc(_DMACH4ModeConfig)
	.dwattr $C$DW$188, DW_AT_high_pc(0x00)
	.dwattr $C$DW$188, DW_AT_TI_symbol_name("_DMACH4ModeConfig")
	.dwattr $C$DW$188, DW_AT_external
	.dwattr $C$DW$188, DW_AT_TI_begin_file("C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c")
	.dwattr $C$DW$188, DW_AT_TI_begin_line(0x252)
	.dwattr $C$DW$188, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$188, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 598,column 1,is_stmt,address _DMACH4ModeConfig,isa 0

	.dwfde $C$DW$CIE, _DMACH4ModeConfig
$C$DW$189	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$189, DW_AT_name("persel")
	.dwattr $C$DW$189, DW_AT_TI_symbol_name("_persel")
	.dwattr $C$DW$189, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$189, DW_AT_location[DW_OP_reg0]

$C$DW$190	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$190, DW_AT_name("perinte")
	.dwattr $C$DW$190, DW_AT_TI_symbol_name("_perinte")
	.dwattr $C$DW$190, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$190, DW_AT_location[DW_OP_reg1]

$C$DW$191	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$191, DW_AT_name("oneshot")
	.dwattr $C$DW$191, DW_AT_TI_symbol_name("_oneshot")
	.dwattr $C$DW$191, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$191, DW_AT_location[DW_OP_reg12]

$C$DW$192	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$192, DW_AT_name("cont")
	.dwattr $C$DW$192, DW_AT_TI_symbol_name("_cont")
	.dwattr $C$DW$192, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$192, DW_AT_location[DW_OP_reg14]

$C$DW$193	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$193, DW_AT_name("synce")
	.dwattr $C$DW$193, DW_AT_TI_symbol_name("_synce")
	.dwattr $C$DW$193, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$193, DW_AT_location[DW_OP_breg20 -7]

$C$DW$194	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$194, DW_AT_name("syncsel")
	.dwattr $C$DW$194, DW_AT_TI_symbol_name("_syncsel")
	.dwattr $C$DW$194, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$194, DW_AT_location[DW_OP_breg20 -8]

$C$DW$195	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$195, DW_AT_name("ovrinte")
	.dwattr $C$DW$195, DW_AT_TI_symbol_name("_ovrinte")
	.dwattr $C$DW$195, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$195, DW_AT_location[DW_OP_breg20 -9]

$C$DW$196	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$196, DW_AT_name("datasize")
	.dwattr $C$DW$196, DW_AT_TI_symbol_name("_datasize")
	.dwattr $C$DW$196, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$196, DW_AT_location[DW_OP_breg20 -10]

$C$DW$197	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$197, DW_AT_name("chintmode")
	.dwattr $C$DW$197, DW_AT_TI_symbol_name("_chintmode")
	.dwattr $C$DW$197, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$197, DW_AT_location[DW_OP_breg20 -11]

$C$DW$198	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$198, DW_AT_name("chinte")
	.dwattr $C$DW$198, DW_AT_TI_symbol_name("_chinte")
	.dwattr $C$DW$198, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$198, DW_AT_location[DW_OP_breg20 -12]

;----------------------------------------------------------------------
; 594 | void DMACH4ModeConfig(Uint16 persel, Uint16 perinte, Uint16 oneshot,   
; 595 | Uint16 cont, Uint16 synce, Uint16 syncsel,                             
; 596 | Uint16 ovrinte, Uint16 datasize, Uint16 chintmode,                     
; 597 | Uint16 chinte)                                                         
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _DMACH4ModeConfig             FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  4 Auto,  0 SOE     *
;***************************************************************

_DMACH4ModeConfig:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
$C$DW$199	.dwtag  DW_TAG_variable
	.dwattr $C$DW$199, DW_AT_name("persel")
	.dwattr $C$DW$199, DW_AT_TI_symbol_name("_persel")
	.dwattr $C$DW$199, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$199, DW_AT_location[DW_OP_breg20 -1]

$C$DW$200	.dwtag  DW_TAG_variable
	.dwattr $C$DW$200, DW_AT_name("perinte")
	.dwattr $C$DW$200, DW_AT_TI_symbol_name("_perinte")
	.dwattr $C$DW$200, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$200, DW_AT_location[DW_OP_breg20 -2]

$C$DW$201	.dwtag  DW_TAG_variable
	.dwattr $C$DW$201, DW_AT_name("oneshot")
	.dwattr $C$DW$201, DW_AT_TI_symbol_name("_oneshot")
	.dwattr $C$DW$201, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$201, DW_AT_location[DW_OP_breg20 -3]

$C$DW$202	.dwtag  DW_TAG_variable
	.dwattr $C$DW$202, DW_AT_name("cont")
	.dwattr $C$DW$202, DW_AT_TI_symbol_name("_cont")
	.dwattr $C$DW$202, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$202, DW_AT_location[DW_OP_breg20 -4]

        MOV       *-SP[4],AR5           ; [CPU_ALU] |598| 
        MOV       *-SP[3],AR4           ; [CPU_ALU] |598| 
        MOV       *-SP[2],AH            ; [CPU_ALU] |598| 
        MOV       *-SP[1],AL            ; [CPU_ALU] |598| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 599,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 599 | EALLOW;                                                                
; 601 | //                                                                     
; 602 | // Set up MODE Register:                                               
; 603 | // persel - Source select                                              
; 604 | // PERINTSEL - Should be hard coded to channel, above now selects sourc
;     | e                                                                      
; 605 | // PERINTE - Peripheral interrupt enable                               
; 606 | // ONESHOT - Oneshot enable                                            
; 607 | // CONTINUOUS - Continuous enable                                      
; 608 | // OVRINTE - Enable/disable the overflow interrupt                     
; 609 | // DATASIZE - 16-bit/32-bit data size transfers                        
; 610 | // CHINTMODE - Generate interrupt to CPU at beginning/end of transfer  
; 611 | // CHINTE - Channel Interrupt to  CPU enable                           
; 612 | //                                                                     
;----------------------------------------------------------------------
 EALLOW
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 613,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 613 | DmaClaSrcSelRegs.DMACHSRCSEL1.bit.CH4 = persel;                        
;----------------------------------------------------------------------
        MOVW      DP,#_DmaClaSrcSelRegs+23 ; [CPU_ARAU] 
        MOV       AL,@$BLOCKED(_DmaClaSrcSelRegs)+23 ; [CPU_ALU] |613| 
        MOV       AH,*-SP[1]            ; [CPU_ALU] |613| 
        MOVB      AL.MSB,AH             ; [CPU_ALU] |613| 
        MOV       @$BLOCKED(_DmaClaSrcSelRegs)+23,AL ; [CPU_ALU] |613| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 614,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 614 | DmaRegs.CH4.MODE.bit.PERINTSEL = 4;                                    
;----------------------------------------------------------------------
        MOVW      DP,#_DmaRegs+128      ; [CPU_ARAU] 
        AND       AL,@$BLOCKED(_DmaRegs)+128,#0xffe0 ; [CPU_ALU] |614| 
        ORB       AL,#0x04              ; [CPU_ALU] |614| 
        MOV       @$BLOCKED(_DmaRegs)+128,AL ; [CPU_ALU] |614| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 615,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 615 | DmaRegs.CH4.MODE.bit.PERINTE = perinte;                                
;----------------------------------------------------------------------
        MOV       AL,*-SP[2]            ; [CPU_ALU] |615| 
        ANDB      AL,#0x01              ; [CPU_ALU] |615| 
        AND       AH,@$BLOCKED(_DmaRegs)+128,#0xfeff ; [CPU_FPU] |615| 
        LSL       AL,8                  ; [CPU_ALU] |615| 
        OR        AL,AH                 ; [CPU_ALU] |615| 
        MOV       @$BLOCKED(_DmaRegs)+128,AL ; [CPU_ALU] |615| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 616,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 616 | DmaRegs.CH4.MODE.bit.ONESHOT = oneshot;                                
;----------------------------------------------------------------------
        MOV       AL,*-SP[3]            ; [CPU_ALU] |616| 
        ANDB      AL,#0x01              ; [CPU_ALU] |616| 
        LSL       AL,10                 ; [CPU_ALU] |616| 
        AND       AH,@$BLOCKED(_DmaRegs)+128,#0xfbff ; [CPU_FPU] |616| 
        OR        AL,AH                 ; [CPU_ALU] |616| 
        MOV       @$BLOCKED(_DmaRegs)+128,AL ; [CPU_ALU] |616| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 617,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 617 | DmaRegs.CH4.MODE.bit.CONTINUOUS = cont;                                
;----------------------------------------------------------------------
        MOV       AL,*-SP[4]            ; [CPU_ALU] |617| 
        ANDB      AL,#0x01              ; [CPU_ALU] |617| 
        LSL       AL,11                 ; [CPU_ALU] |617| 
        AND       AH,@$BLOCKED(_DmaRegs)+128,#0xf7ff ; [CPU_FPU] |617| 
        OR        AL,AH                 ; [CPU_ALU] |617| 
        MOV       @$BLOCKED(_DmaRegs)+128,AL ; [CPU_ALU] |617| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 618,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 618 | DmaRegs.CH4.MODE.bit.OVRINTE = ovrinte;                                
;----------------------------------------------------------------------
        MOV       AL,*-SP[9]            ; [CPU_ALU] |618| 
        ANDB      AL,#0x01              ; [CPU_ALU] |618| 
        LSL       AL,7                  ; [CPU_ALU] |618| 
        AND       AH,@$BLOCKED(_DmaRegs)+128,#0xff7f ; [CPU_FPU] |618| 
        OR        AL,AH                 ; [CPU_ALU] |618| 
        MOV       @$BLOCKED(_DmaRegs)+128,AL ; [CPU_ALU] |618| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 619,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 619 | DmaRegs.CH4.MODE.bit.DATASIZE = datasize;                              
;----------------------------------------------------------------------
        MOV       AL,*-SP[10]           ; [CPU_ALU] |619| 
        ANDB      AL,#0x01              ; [CPU_ALU] |619| 
        LSL       AL,14                 ; [CPU_ALU] |619| 
        AND       AH,@$BLOCKED(_DmaRegs)+128,#0xbfff ; [CPU_FPU] |619| 
        OR        AL,AH                 ; [CPU_ALU] |619| 
        MOV       @$BLOCKED(_DmaRegs)+128,AL ; [CPU_ALU] |619| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 620,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 620 | DmaRegs.CH4.MODE.bit.CHINTMODE = chintmode;                            
;----------------------------------------------------------------------
        MOV       AL,*-SP[11]           ; [CPU_ALU] |620| 
        ANDB      AL,#0x01              ; [CPU_ALU] |620| 
        LSL       AL,9                  ; [CPU_ALU] |620| 
        AND       AH,@$BLOCKED(_DmaRegs)+128,#0xfdff ; [CPU_FPU] |620| 
        OR        AL,AH                 ; [CPU_ALU] |620| 
        MOV       @$BLOCKED(_DmaRegs)+128,AL ; [CPU_ALU] |620| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 621,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 621 | DmaRegs.CH4.MODE.bit.CHINTE = chinte;                                  
; 623 | //                                                                     
; 624 | // Clear any spurious flags: Interrupt flags and sync error flags      
; 625 | //                                                                     
;----------------------------------------------------------------------
        AND       AL,@$BLOCKED(_DmaRegs)+128,#0x7fff ; [CPU_ALU] |621| 
        MOVZ      AR6,AL                ; [CPU_ALU] |621| 
        MOV       ACC,*-SP[12] << #15   ; [CPU_ALU] |621| 
        OR        AL,AR6                ; [CPU_ALU] |621| 
        MOV       @$BLOCKED(_DmaRegs)+128,AL ; [CPU_ALU] |621| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 626,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 626 | DmaRegs.CH4.CONTROL.bit.PERINTCLR = 1;                                 
;----------------------------------------------------------------------
        OR        @$BLOCKED(_DmaRegs)+129,#0x0010 ; [CPU_ALU] |626| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 627,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 627 | DmaRegs.CH4.CONTROL.bit.ERRCLR = 1;                                    
; 629 | //                                                                     
; 630 | // Initialize PIE vector for CPU interrupt:                            
; 631 | // Enable DMA CH4 interrupt in PIE                                     
; 632 | //                                                                     
;----------------------------------------------------------------------
        OR        @$BLOCKED(_DmaRegs)+129,#0x0080 ; [CPU_ALU] |627| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 633,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 633 | PieCtrlRegs.PIEIER7.bit.INTx4 = 1;                                     
;----------------------------------------------------------------------
        MOVW      DP,#_PieCtrlRegs+14   ; [CPU_ARAU] 
        OR        @$BLOCKED(_PieCtrlRegs)+14,#0x0008 ; [CPU_ALU] |633| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 635,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 635 | EDIS;                                                                  
;----------------------------------------------------------------------
 EDIS
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 636,column 1,is_stmt,isa 0
        SPM       #0                    ; [CPU_ALU] 
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$203	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$203, DW_AT_low_pc(0x00)
	.dwattr $C$DW$203, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$188, DW_AT_TI_end_file("C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c")
	.dwattr $C$DW$188, DW_AT_TI_end_line(0x27c)
	.dwattr $C$DW$188, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$188

	.sect	".text"
	.clink
	.global	_StartDMACH4

$C$DW$204	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$204, DW_AT_name("StartDMACH4")
	.dwattr $C$DW$204, DW_AT_low_pc(_StartDMACH4)
	.dwattr $C$DW$204, DW_AT_high_pc(0x00)
	.dwattr $C$DW$204, DW_AT_TI_symbol_name("_StartDMACH4")
	.dwattr $C$DW$204, DW_AT_external
	.dwattr $C$DW$204, DW_AT_TI_begin_file("C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c")
	.dwattr $C$DW$204, DW_AT_TI_begin_line(0x281)
	.dwattr $C$DW$204, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$204, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 642,column 1,is_stmt,address _StartDMACH4,isa 0

	.dwfde $C$DW$CIE, _StartDMACH4
;----------------------------------------------------------------------
; 641 | void StartDMACH4(void)                                                 
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _StartDMACH4                  FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_StartDMACH4:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 643,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 643 | EALLOW;                                                                
;----------------------------------------------------------------------
 EALLOW
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 644,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 644 | DmaRegs.CH4.CONTROL.bit.RUN = 1;                                       
;----------------------------------------------------------------------
        MOVW      DP,#_DmaRegs+129      ; [CPU_ARAU] 
        OR        @$BLOCKED(_DmaRegs)+129,#0x0001 ; [CPU_ALU] |644| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 645,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 645 | EDIS;                                                                  
;----------------------------------------------------------------------
 EDIS
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 646,column 1,is_stmt,isa 0
        SPM       #0                    ; [CPU_ALU] 
$C$DW$205	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$205, DW_AT_low_pc(0x00)
	.dwattr $C$DW$205, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$204, DW_AT_TI_end_file("C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c")
	.dwattr $C$DW$204, DW_AT_TI_end_line(0x286)
	.dwattr $C$DW$204, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$204

	.sect	".text"
	.clink
	.global	_DMACH5AddrConfig

$C$DW$206	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$206, DW_AT_name("DMACH5AddrConfig")
	.dwattr $C$DW$206, DW_AT_low_pc(_DMACH5AddrConfig)
	.dwattr $C$DW$206, DW_AT_high_pc(0x00)
	.dwattr $C$DW$206, DW_AT_TI_symbol_name("_DMACH5AddrConfig")
	.dwattr $C$DW$206, DW_AT_external
	.dwattr $C$DW$206, DW_AT_TI_begin_file("C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c")
	.dwattr $C$DW$206, DW_AT_TI_begin_line(0x28b)
	.dwattr $C$DW$206, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$206, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 652,column 1,is_stmt,address _DMACH5AddrConfig,isa 0

	.dwfde $C$DW$CIE, _DMACH5AddrConfig
$C$DW$207	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$207, DW_AT_name("DMA_Dest")
	.dwattr $C$DW$207, DW_AT_TI_symbol_name("_DMA_Dest")
	.dwattr $C$DW$207, DW_AT_type(*$C$DW$T$130)
	.dwattr $C$DW$207, DW_AT_location[DW_OP_reg12]

$C$DW$208	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$208, DW_AT_name("DMA_Source")
	.dwattr $C$DW$208, DW_AT_TI_symbol_name("_DMA_Source")
	.dwattr $C$DW$208, DW_AT_type(*$C$DW$T$130)
	.dwattr $C$DW$208, DW_AT_location[DW_OP_reg14]

;----------------------------------------------------------------------
; 651 | void DMACH5AddrConfig(volatile Uint16 *DMA_Dest,volatile Uint16 *DMA_So
;     | urce)                                                                  
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _DMACH5AddrConfig             FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  4 Auto,  0 SOE     *
;***************************************************************

_DMACH5AddrConfig:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
$C$DW$209	.dwtag  DW_TAG_variable
	.dwattr $C$DW$209, DW_AT_name("DMA_Dest")
	.dwattr $C$DW$209, DW_AT_TI_symbol_name("_DMA_Dest")
	.dwattr $C$DW$209, DW_AT_type(*$C$DW$T$130)
	.dwattr $C$DW$209, DW_AT_location[DW_OP_breg20 -2]

$C$DW$210	.dwtag  DW_TAG_variable
	.dwattr $C$DW$210, DW_AT_name("DMA_Source")
	.dwattr $C$DW$210, DW_AT_TI_symbol_name("_DMA_Source")
	.dwattr $C$DW$210, DW_AT_type(*$C$DW$T$130)
	.dwattr $C$DW$210, DW_AT_location[DW_OP_breg20 -4]

        MOVL      *-SP[4],XAR5          ; [CPU_ALU] |652| 
        MOVL      *-SP[2],XAR4          ; [CPU_ALU] |652| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 653,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 653 | EALLOW;                                                                
; 655 | //                                                                     
; 656 | // Set up SOURCE address:                                              
; 657 | //                                                                     
;----------------------------------------------------------------------
 EALLOW
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 658,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 658 | DmaRegs.CH5.SRC_BEG_ADDR_SHADOW = (Uint32)DMA_Source; // Point to begin
;     | ning                                                                   
; 659 |                                                       // of source buff
;     | er                                                                     
;----------------------------------------------------------------------
        MOVW      DP,#_DmaRegs+176      ; [CPU_ARAU] 
        MOVL      ACC,*-SP[4]           ; [CPU_ALU] |658| 
        MOVL      @$BLOCKED(_DmaRegs)+176,ACC ; [CPU_ALU] |658| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 660,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 660 | DmaRegs.CH5.SRC_ADDR_SHADOW =     (Uint32)DMA_Source;                  
; 662 | //                                                                     
; 663 | // Set up DESTINATION address:                                         
; 664 | //                                                                     
;----------------------------------------------------------------------
        MOVL      @$BLOCKED(_DmaRegs)+178,ACC ; [CPU_ALU] |660| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 665,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 665 | DmaRegs.CH5.DST_BEG_ADDR_SHADOW = (Uint32)DMA_Dest;  // Point to beginn
;     | ing                                                                    
; 666 |                                                      // of destination 
; 667 |                                                      // buffer.        
;----------------------------------------------------------------------
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |665| 
        MOVL      @$BLOCKED(_DmaRegs)+184,ACC ; [CPU_ALU] |665| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 668,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 668 | DmaRegs.CH5.DST_ADDR_SHADOW =     (Uint32)DMA_Dest;                    
;----------------------------------------------------------------------
        MOVL      @$BLOCKED(_DmaRegs)+186,ACC ; [CPU_ALU] |668| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 670,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 670 | EDIS;                                                                  
;----------------------------------------------------------------------
 EDIS
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 671,column 1,is_stmt,isa 0
        SPM       #0                    ; [CPU_ALU] 
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$211	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$211, DW_AT_low_pc(0x00)
	.dwattr $C$DW$211, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$206, DW_AT_TI_end_file("C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c")
	.dwattr $C$DW$206, DW_AT_TI_end_line(0x29f)
	.dwattr $C$DW$206, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$206

	.sect	".text"
	.clink
	.global	_DMACH5BurstConfig

$C$DW$212	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$212, DW_AT_name("DMACH5BurstConfig")
	.dwattr $C$DW$212, DW_AT_low_pc(_DMACH5BurstConfig)
	.dwattr $C$DW$212, DW_AT_high_pc(0x00)
	.dwattr $C$DW$212, DW_AT_TI_symbol_name("_DMACH5BurstConfig")
	.dwattr $C$DW$212, DW_AT_external
	.dwattr $C$DW$212, DW_AT_TI_begin_file("C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c")
	.dwattr $C$DW$212, DW_AT_TI_begin_line(0x2a4)
	.dwattr $C$DW$212, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$212, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 677,column 1,is_stmt,address _DMACH5BurstConfig,isa 0

	.dwfde $C$DW$CIE, _DMACH5BurstConfig
$C$DW$213	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$213, DW_AT_name("bsize")
	.dwattr $C$DW$213, DW_AT_TI_symbol_name("_bsize")
	.dwattr $C$DW$213, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$213, DW_AT_location[DW_OP_reg0]

$C$DW$214	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$214, DW_AT_name("srcbstep")
	.dwattr $C$DW$214, DW_AT_TI_symbol_name("_srcbstep")
	.dwattr $C$DW$214, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$214, DW_AT_location[DW_OP_reg1]

$C$DW$215	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$215, DW_AT_name("desbstep")
	.dwattr $C$DW$215, DW_AT_TI_symbol_name("_desbstep")
	.dwattr $C$DW$215, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$215, DW_AT_location[DW_OP_reg12]

;----------------------------------------------------------------------
; 676 | void DMACH5BurstConfig(Uint16 bsize, int16 srcbstep, int16 desbstep)   
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _DMACH5BurstConfig            FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  3 Auto,  0 SOE     *
;***************************************************************

_DMACH5BurstConfig:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
$C$DW$216	.dwtag  DW_TAG_variable
	.dwattr $C$DW$216, DW_AT_name("bsize")
	.dwattr $C$DW$216, DW_AT_TI_symbol_name("_bsize")
	.dwattr $C$DW$216, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$216, DW_AT_location[DW_OP_breg20 -1]

$C$DW$217	.dwtag  DW_TAG_variable
	.dwattr $C$DW$217, DW_AT_name("srcbstep")
	.dwattr $C$DW$217, DW_AT_TI_symbol_name("_srcbstep")
	.dwattr $C$DW$217, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$217, DW_AT_location[DW_OP_breg20 -2]

$C$DW$218	.dwtag  DW_TAG_variable
	.dwattr $C$DW$218, DW_AT_name("desbstep")
	.dwattr $C$DW$218, DW_AT_TI_symbol_name("_desbstep")
	.dwattr $C$DW$218, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$218, DW_AT_location[DW_OP_breg20 -3]

        MOV       *-SP[3],AR4           ; [CPU_ALU] |677| 
        MOV       *-SP[2],AH            ; [CPU_ALU] |677| 
        MOV       *-SP[1],AL            ; [CPU_ALU] |677| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 678,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 678 | EALLOW;                                                                
; 680 | //                                                                     
; 681 | // Set up BURST registers:                                             
; 682 | //                                                                     
;----------------------------------------------------------------------
 EALLOW
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 683,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 683 | DmaRegs.CH5.BURST_SIZE.all = bsize;     // Number of words(X-1) x-ferre
;     | d in                                                                   
; 684 |                                         // a burst.                    
;----------------------------------------------------------------------
        MOVW      DP,#_DmaRegs+162      ; [CPU_ARAU] 
        MOV       @$BLOCKED(_DmaRegs)+162,AL ; [CPU_ALU] |683| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 685,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 685 | DmaRegs.CH5.SRC_BURST_STEP = srcbstep;  // Increment source addr betwee
;     | n                                                                      
; 686 |                                         // each word x-ferred.         
;----------------------------------------------------------------------
        MOV       AL,*-SP[2]            ; [CPU_ALU] |685| 
        MOV       @$BLOCKED(_DmaRegs)+164,AL ; [CPU_ALU] |685| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 687,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 687 | DmaRegs.CH5.DST_BURST_STEP = desbstep;  // Increment dest addr between
;     | each                                                                   
; 688 |                                         // word x-ferred.              
;----------------------------------------------------------------------
        MOV       AL,*-SP[3]            ; [CPU_ALU] |687| 
        MOV       @$BLOCKED(_DmaRegs)+165,AL ; [CPU_ALU] |687| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 690,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 690 | EDIS;                                                                  
;----------------------------------------------------------------------
 EDIS
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 691,column 1,is_stmt,isa 0
        SPM       #0                    ; [CPU_ALU] 
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$219	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$219, DW_AT_low_pc(0x00)
	.dwattr $C$DW$219, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$212, DW_AT_TI_end_file("C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c")
	.dwattr $C$DW$212, DW_AT_TI_end_line(0x2b3)
	.dwattr $C$DW$212, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$212

	.sect	".text"
	.clink
	.global	_DMACH5TransferConfig

$C$DW$220	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$220, DW_AT_name("DMACH5TransferConfig")
	.dwattr $C$DW$220, DW_AT_low_pc(_DMACH5TransferConfig)
	.dwattr $C$DW$220, DW_AT_high_pc(0x00)
	.dwattr $C$DW$220, DW_AT_TI_symbol_name("_DMACH5TransferConfig")
	.dwattr $C$DW$220, DW_AT_external
	.dwattr $C$DW$220, DW_AT_TI_begin_file("C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c")
	.dwattr $C$DW$220, DW_AT_TI_begin_line(0x2b8)
	.dwattr $C$DW$220, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$220, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 697,column 1,is_stmt,address _DMACH5TransferConfig,isa 0

	.dwfde $C$DW$CIE, _DMACH5TransferConfig
$C$DW$221	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$221, DW_AT_name("tsize")
	.dwattr $C$DW$221, DW_AT_TI_symbol_name("_tsize")
	.dwattr $C$DW$221, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$221, DW_AT_location[DW_OP_reg0]

$C$DW$222	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$222, DW_AT_name("srctstep")
	.dwattr $C$DW$222, DW_AT_TI_symbol_name("_srctstep")
	.dwattr $C$DW$222, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$222, DW_AT_location[DW_OP_reg1]

$C$DW$223	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$223, DW_AT_name("deststep")
	.dwattr $C$DW$223, DW_AT_TI_symbol_name("_deststep")
	.dwattr $C$DW$223, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$223, DW_AT_location[DW_OP_reg12]

;----------------------------------------------------------------------
; 696 | void DMACH5TransferConfig(Uint16 tsize, int16 srctstep, int16 deststep)
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _DMACH5TransferConfig         FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  3 Auto,  0 SOE     *
;***************************************************************

_DMACH5TransferConfig:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
$C$DW$224	.dwtag  DW_TAG_variable
	.dwattr $C$DW$224, DW_AT_name("tsize")
	.dwattr $C$DW$224, DW_AT_TI_symbol_name("_tsize")
	.dwattr $C$DW$224, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$224, DW_AT_location[DW_OP_breg20 -1]

$C$DW$225	.dwtag  DW_TAG_variable
	.dwattr $C$DW$225, DW_AT_name("srctstep")
	.dwattr $C$DW$225, DW_AT_TI_symbol_name("_srctstep")
	.dwattr $C$DW$225, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$225, DW_AT_location[DW_OP_breg20 -2]

$C$DW$226	.dwtag  DW_TAG_variable
	.dwattr $C$DW$226, DW_AT_name("deststep")
	.dwattr $C$DW$226, DW_AT_TI_symbol_name("_deststep")
	.dwattr $C$DW$226, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$226, DW_AT_location[DW_OP_breg20 -3]

        MOV       *-SP[3],AR4           ; [CPU_ALU] |697| 
        MOV       *-SP[2],AH            ; [CPU_ALU] |697| 
        MOV       *-SP[1],AL            ; [CPU_ALU] |697| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 698,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 698 | EALLOW;                                                                
; 700 | //                                                                     
; 701 | // Set up TRANSFER registers:                                          
; 702 | //                                                                     
;----------------------------------------------------------------------
 EALLOW
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 703,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 703 | DmaRegs.CH5.TRANSFER_SIZE = tsize;        // Number of bursts per trans
;     | fer,                                                                   
; 704 |                                           // DMA interrupt will occur a
;     | fter                                                                   
; 705 |                                           // completed transfer.       
;----------------------------------------------------------------------
        MOVW      DP,#_DmaRegs+166      ; [CPU_ARAU] 
        MOV       @$BLOCKED(_DmaRegs)+166,AL ; [CPU_ALU] |703| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 706,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 706 | DmaRegs.CH5.SRC_TRANSFER_STEP = srctstep; // TRANSFER_STEP is ignored w
;     | hen                                                                    
; 707 |                                           // WRAP occurs.              
;----------------------------------------------------------------------
        MOV       AL,*-SP[2]            ; [CPU_ALU] |706| 
        MOV       @$BLOCKED(_DmaRegs)+168,AL ; [CPU_ALU] |706| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 708,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 708 | DmaRegs.CH5.DST_TRANSFER_STEP = deststep; // TRANSFER_STEP is ignored w
;     | hen                                                                    
; 709 |                                           // WRAP occurs.              
;----------------------------------------------------------------------
        MOV       AL,*-SP[3]            ; [CPU_ALU] |708| 
        MOV       @$BLOCKED(_DmaRegs)+169,AL ; [CPU_ALU] |708| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 711,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 711 | EDIS;                                                                  
;----------------------------------------------------------------------
 EDIS
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 712,column 1,is_stmt,isa 0
        SPM       #0                    ; [CPU_ALU] 
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$227	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$227, DW_AT_low_pc(0x00)
	.dwattr $C$DW$227, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$220, DW_AT_TI_end_file("C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c")
	.dwattr $C$DW$220, DW_AT_TI_end_line(0x2c8)
	.dwattr $C$DW$220, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$220

	.sect	".text"
	.clink
	.global	_DMACH5WrapConfig

$C$DW$228	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$228, DW_AT_name("DMACH5WrapConfig")
	.dwattr $C$DW$228, DW_AT_low_pc(_DMACH5WrapConfig)
	.dwattr $C$DW$228, DW_AT_high_pc(0x00)
	.dwattr $C$DW$228, DW_AT_TI_symbol_name("_DMACH5WrapConfig")
	.dwattr $C$DW$228, DW_AT_external
	.dwattr $C$DW$228, DW_AT_TI_begin_file("C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c")
	.dwattr $C$DW$228, DW_AT_TI_begin_line(0x2cd)
	.dwattr $C$DW$228, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$228, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 719,column 1,is_stmt,address _DMACH5WrapConfig,isa 0

	.dwfde $C$DW$CIE, _DMACH5WrapConfig
$C$DW$229	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$229, DW_AT_name("srcwsize")
	.dwattr $C$DW$229, DW_AT_TI_symbol_name("_srcwsize")
	.dwattr $C$DW$229, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$229, DW_AT_location[DW_OP_reg0]

$C$DW$230	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$230, DW_AT_name("srcwstep")
	.dwattr $C$DW$230, DW_AT_TI_symbol_name("_srcwstep")
	.dwattr $C$DW$230, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$230, DW_AT_location[DW_OP_reg1]

$C$DW$231	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$231, DW_AT_name("deswsize")
	.dwattr $C$DW$231, DW_AT_TI_symbol_name("_deswsize")
	.dwattr $C$DW$231, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$231, DW_AT_location[DW_OP_reg12]

$C$DW$232	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$232, DW_AT_name("deswstep")
	.dwattr $C$DW$232, DW_AT_TI_symbol_name("_deswstep")
	.dwattr $C$DW$232, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$232, DW_AT_location[DW_OP_reg14]

;----------------------------------------------------------------------
; 717 | void DMACH5WrapConfig(Uint16 srcwsize, int16 srcwstep, Uint16 deswsize,
; 718 | int16 deswstep)                                                        
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _DMACH5WrapConfig             FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  4 Auto,  0 SOE     *
;***************************************************************

_DMACH5WrapConfig:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
$C$DW$233	.dwtag  DW_TAG_variable
	.dwattr $C$DW$233, DW_AT_name("srcwsize")
	.dwattr $C$DW$233, DW_AT_TI_symbol_name("_srcwsize")
	.dwattr $C$DW$233, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$233, DW_AT_location[DW_OP_breg20 -1]

$C$DW$234	.dwtag  DW_TAG_variable
	.dwattr $C$DW$234, DW_AT_name("srcwstep")
	.dwattr $C$DW$234, DW_AT_TI_symbol_name("_srcwstep")
	.dwattr $C$DW$234, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$234, DW_AT_location[DW_OP_breg20 -2]

$C$DW$235	.dwtag  DW_TAG_variable
	.dwattr $C$DW$235, DW_AT_name("deswsize")
	.dwattr $C$DW$235, DW_AT_TI_symbol_name("_deswsize")
	.dwattr $C$DW$235, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$235, DW_AT_location[DW_OP_breg20 -3]

$C$DW$236	.dwtag  DW_TAG_variable
	.dwattr $C$DW$236, DW_AT_name("deswstep")
	.dwattr $C$DW$236, DW_AT_TI_symbol_name("_deswstep")
	.dwattr $C$DW$236, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$236, DW_AT_location[DW_OP_breg20 -4]

        MOV       *-SP[4],AR5           ; [CPU_ALU] |719| 
        MOV       *-SP[3],AR4           ; [CPU_ALU] |719| 
        MOV       *-SP[2],AH            ; [CPU_ALU] |719| 
        MOV       *-SP[1],AL            ; [CPU_ALU] |719| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 720,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 720 | EALLOW;                                                                
; 722 | //                                                                     
; 723 | // Set up WRAP registers:                                              
; 724 | //                                                                     
;----------------------------------------------------------------------
 EALLOW
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 725,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 725 | DmaRegs.CH5.SRC_WRAP_SIZE = srcwsize; // Wrap source address after N bu
;     | rsts                                                                   
;----------------------------------------------------------------------
        MOVW      DP,#_DmaRegs+170      ; [CPU_ARAU] 
        MOV       @$BLOCKED(_DmaRegs)+170,AL ; [CPU_ALU] |725| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 726,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 726 | DmaRegs.CH5.SRC_WRAP_STEP = srcwstep; // Step for source wrap          
;----------------------------------------------------------------------
        MOV       AL,*-SP[2]            ; [CPU_ALU] |726| 
        MOV       @$BLOCKED(_DmaRegs)+172,AL ; [CPU_ALU] |726| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 728,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 728 | DmaRegs.CH5.DST_WRAP_SIZE = deswsize; // Wrap destination address after
; 729 |                                       // N bursts.                     
;----------------------------------------------------------------------
        MOV       AL,*-SP[3]            ; [CPU_ALU] |728| 
        MOV       @$BLOCKED(_DmaRegs)+173,AL ; [CPU_ALU] |728| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 730,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 730 | DmaRegs.CH5.DST_WRAP_STEP = deswstep; // Step for destination wrap     
;----------------------------------------------------------------------
        MOV       AL,*-SP[4]            ; [CPU_ALU] |730| 
        MOV       @$BLOCKED(_DmaRegs)+175,AL ; [CPU_ALU] |730| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 732,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 732 | EDIS;                                                                  
;----------------------------------------------------------------------
 EDIS
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 733,column 1,is_stmt,isa 0
        SPM       #0                    ; [CPU_ALU] 
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$237	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$237, DW_AT_low_pc(0x00)
	.dwattr $C$DW$237, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$228, DW_AT_TI_end_file("C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c")
	.dwattr $C$DW$228, DW_AT_TI_end_line(0x2dd)
	.dwattr $C$DW$228, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$228

	.sect	".text"
	.clink
	.global	_DMACH5ModeConfig

$C$DW$238	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$238, DW_AT_name("DMACH5ModeConfig")
	.dwattr $C$DW$238, DW_AT_low_pc(_DMACH5ModeConfig)
	.dwattr $C$DW$238, DW_AT_high_pc(0x00)
	.dwattr $C$DW$238, DW_AT_TI_symbol_name("_DMACH5ModeConfig")
	.dwattr $C$DW$238, DW_AT_external
	.dwattr $C$DW$238, DW_AT_TI_begin_file("C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c")
	.dwattr $C$DW$238, DW_AT_TI_begin_line(0x2e2)
	.dwattr $C$DW$238, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$238, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 742,column 1,is_stmt,address _DMACH5ModeConfig,isa 0

	.dwfde $C$DW$CIE, _DMACH5ModeConfig
$C$DW$239	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$239, DW_AT_name("persel")
	.dwattr $C$DW$239, DW_AT_TI_symbol_name("_persel")
	.dwattr $C$DW$239, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$239, DW_AT_location[DW_OP_reg0]

$C$DW$240	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$240, DW_AT_name("perinte")
	.dwattr $C$DW$240, DW_AT_TI_symbol_name("_perinte")
	.dwattr $C$DW$240, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$240, DW_AT_location[DW_OP_reg1]

$C$DW$241	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$241, DW_AT_name("oneshot")
	.dwattr $C$DW$241, DW_AT_TI_symbol_name("_oneshot")
	.dwattr $C$DW$241, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$241, DW_AT_location[DW_OP_reg12]

$C$DW$242	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$242, DW_AT_name("cont")
	.dwattr $C$DW$242, DW_AT_TI_symbol_name("_cont")
	.dwattr $C$DW$242, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$242, DW_AT_location[DW_OP_reg14]

$C$DW$243	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$243, DW_AT_name("synce")
	.dwattr $C$DW$243, DW_AT_TI_symbol_name("_synce")
	.dwattr $C$DW$243, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$243, DW_AT_location[DW_OP_breg20 -7]

$C$DW$244	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$244, DW_AT_name("syncsel")
	.dwattr $C$DW$244, DW_AT_TI_symbol_name("_syncsel")
	.dwattr $C$DW$244, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$244, DW_AT_location[DW_OP_breg20 -8]

$C$DW$245	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$245, DW_AT_name("ovrinte")
	.dwattr $C$DW$245, DW_AT_TI_symbol_name("_ovrinte")
	.dwattr $C$DW$245, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$245, DW_AT_location[DW_OP_breg20 -9]

$C$DW$246	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$246, DW_AT_name("datasize")
	.dwattr $C$DW$246, DW_AT_TI_symbol_name("_datasize")
	.dwattr $C$DW$246, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$246, DW_AT_location[DW_OP_breg20 -10]

$C$DW$247	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$247, DW_AT_name("chintmode")
	.dwattr $C$DW$247, DW_AT_TI_symbol_name("_chintmode")
	.dwattr $C$DW$247, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$247, DW_AT_location[DW_OP_breg20 -11]

$C$DW$248	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$248, DW_AT_name("chinte")
	.dwattr $C$DW$248, DW_AT_TI_symbol_name("_chinte")
	.dwattr $C$DW$248, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$248, DW_AT_location[DW_OP_breg20 -12]

;----------------------------------------------------------------------
; 738 | void DMACH5ModeConfig(Uint16 persel, Uint16 perinte, Uint16 oneshot,   
; 739 | Uint16 cont, Uint16 synce, Uint16 syncsel,                             
; 740 | Uint16 ovrinte, Uint16 datasize, Uint16 chintmode,                     
; 741 | Uint16 chinte)                                                         
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _DMACH5ModeConfig             FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  4 Auto,  0 SOE     *
;***************************************************************

_DMACH5ModeConfig:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
$C$DW$249	.dwtag  DW_TAG_variable
	.dwattr $C$DW$249, DW_AT_name("persel")
	.dwattr $C$DW$249, DW_AT_TI_symbol_name("_persel")
	.dwattr $C$DW$249, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$249, DW_AT_location[DW_OP_breg20 -1]

$C$DW$250	.dwtag  DW_TAG_variable
	.dwattr $C$DW$250, DW_AT_name("perinte")
	.dwattr $C$DW$250, DW_AT_TI_symbol_name("_perinte")
	.dwattr $C$DW$250, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$250, DW_AT_location[DW_OP_breg20 -2]

$C$DW$251	.dwtag  DW_TAG_variable
	.dwattr $C$DW$251, DW_AT_name("oneshot")
	.dwattr $C$DW$251, DW_AT_TI_symbol_name("_oneshot")
	.dwattr $C$DW$251, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$251, DW_AT_location[DW_OP_breg20 -3]

$C$DW$252	.dwtag  DW_TAG_variable
	.dwattr $C$DW$252, DW_AT_name("cont")
	.dwattr $C$DW$252, DW_AT_TI_symbol_name("_cont")
	.dwattr $C$DW$252, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$252, DW_AT_location[DW_OP_breg20 -4]

        MOV       *-SP[4],AR5           ; [CPU_ALU] |742| 
        MOV       *-SP[3],AR4           ; [CPU_ALU] |742| 
        MOV       *-SP[2],AH            ; [CPU_ALU] |742| 
        MOV       *-SP[1],AL            ; [CPU_ALU] |742| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 743,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 743 | EALLOW;                                                                
; 745 | //                                                                     
; 746 | // Set up MODE Register:                                               
; 747 | // persel - Source select                                              
; 748 | // PERINTSEL - Should be hard coded to channel, above now selects sourc
;     | e                                                                      
; 749 | // PERINTE - Peripheral interrupt enable                               
; 750 | // ONESHOT - Oneshot enable                                            
; 751 | // CONTINUOUS - Continuous enable                                      
; 752 | // OVRINTE - Enable/disable the overflow interrupt                     
; 753 | // DATASIZE - 16-bit/32-bit data size transfers                        
; 754 | // CHINTMODE - Generate interrupt to CPU at beginning/end of transfer  
; 755 | // CHINTE - Channel Interrupt to  CPU enable                           
; 756 | //                                                                     
;----------------------------------------------------------------------
 EALLOW
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 757,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 757 | DmaClaSrcSelRegs.DMACHSRCSEL2.bit.CH5 = persel;                        
;----------------------------------------------------------------------
        MOVW      DP,#_DmaClaSrcSelRegs+24 ; [CPU_ARAU] 
        MOV       AH,@$BLOCKED(_DmaClaSrcSelRegs)+24 ; [CPU_ALU] |757| 
        MOVB      AH,AL.LSB             ; [CPU_ALU] |757| 
        MOV       @$BLOCKED(_DmaClaSrcSelRegs)+24,AH ; [CPU_ALU] |757| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 758,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 758 | DmaRegs.CH5.MODE.bit.PERINTSEL = 5;                                    
;----------------------------------------------------------------------
        MOVW      DP,#_DmaRegs+160      ; [CPU_ARAU] 
        AND       AL,@$BLOCKED(_DmaRegs)+160,#0xffe0 ; [CPU_ALU] |758| 
        ORB       AL,#0x05              ; [CPU_ALU] |758| 
        MOV       @$BLOCKED(_DmaRegs)+160,AL ; [CPU_ALU] |758| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 759,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 759 | DmaRegs.CH5.MODE.bit.PERINTE = perinte;                                
;----------------------------------------------------------------------
        MOV       AL,*-SP[2]            ; [CPU_ALU] |759| 
        ANDB      AL,#0x01              ; [CPU_ALU] |759| 
        AND       AH,@$BLOCKED(_DmaRegs)+160,#0xfeff ; [CPU_FPU] |759| 
        LSL       AL,8                  ; [CPU_ALU] |759| 
        OR        AL,AH                 ; [CPU_ALU] |759| 
        MOV       @$BLOCKED(_DmaRegs)+160,AL ; [CPU_ALU] |759| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 760,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 760 | DmaRegs.CH5.MODE.bit.ONESHOT = oneshot;                                
;----------------------------------------------------------------------
        MOV       AL,*-SP[3]            ; [CPU_ALU] |760| 
        ANDB      AL,#0x01              ; [CPU_ALU] |760| 
        LSL       AL,10                 ; [CPU_ALU] |760| 
        AND       AH,@$BLOCKED(_DmaRegs)+160,#0xfbff ; [CPU_FPU] |760| 
        OR        AL,AH                 ; [CPU_ALU] |760| 
        MOV       @$BLOCKED(_DmaRegs)+160,AL ; [CPU_ALU] |760| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 761,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 761 | DmaRegs.CH5.MODE.bit.CONTINUOUS = cont;                                
;----------------------------------------------------------------------
        MOV       AL,*-SP[4]            ; [CPU_ALU] |761| 
        ANDB      AL,#0x01              ; [CPU_ALU] |761| 
        LSL       AL,11                 ; [CPU_ALU] |761| 
        AND       AH,@$BLOCKED(_DmaRegs)+160,#0xf7ff ; [CPU_FPU] |761| 
        OR        AL,AH                 ; [CPU_ALU] |761| 
        MOV       @$BLOCKED(_DmaRegs)+160,AL ; [CPU_ALU] |761| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 762,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 762 | DmaRegs.CH5.MODE.bit.OVRINTE = ovrinte;                                
;----------------------------------------------------------------------
        MOV       AL,*-SP[9]            ; [CPU_ALU] |762| 
        ANDB      AL,#0x01              ; [CPU_ALU] |762| 
        LSL       AL,7                  ; [CPU_ALU] |762| 
        AND       AH,@$BLOCKED(_DmaRegs)+160,#0xff7f ; [CPU_FPU] |762| 
        OR        AL,AH                 ; [CPU_ALU] |762| 
        MOV       @$BLOCKED(_DmaRegs)+160,AL ; [CPU_ALU] |762| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 763,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 763 | DmaRegs.CH5.MODE.bit.DATASIZE = datasize;                              
;----------------------------------------------------------------------
        MOV       AL,*-SP[10]           ; [CPU_ALU] |763| 
        ANDB      AL,#0x01              ; [CPU_ALU] |763| 
        LSL       AL,14                 ; [CPU_ALU] |763| 
        AND       AH,@$BLOCKED(_DmaRegs)+160,#0xbfff ; [CPU_FPU] |763| 
        OR        AL,AH                 ; [CPU_ALU] |763| 
        MOV       @$BLOCKED(_DmaRegs)+160,AL ; [CPU_ALU] |763| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 764,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 764 | DmaRegs.CH5.MODE.bit.CHINTMODE = chintmode;                            
;----------------------------------------------------------------------
        MOV       AL,*-SP[11]           ; [CPU_ALU] |764| 
        ANDB      AL,#0x01              ; [CPU_ALU] |764| 
        LSL       AL,9                  ; [CPU_ALU] |764| 
        AND       AH,@$BLOCKED(_DmaRegs)+160,#0xfdff ; [CPU_FPU] |764| 
        OR        AL,AH                 ; [CPU_ALU] |764| 
        MOV       @$BLOCKED(_DmaRegs)+160,AL ; [CPU_ALU] |764| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 765,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 765 | DmaRegs.CH5.MODE.bit.CHINTE = chinte;                                  
; 767 | //                                                                     
; 768 | // Clear any spurious flags: Interrupt flags and sync error flags      
; 769 | //                                                                     
;----------------------------------------------------------------------
        AND       AL,@$BLOCKED(_DmaRegs)+160,#0x7fff ; [CPU_ALU] |765| 
        MOVZ      AR6,AL                ; [CPU_ALU] |765| 
        MOV       ACC,*-SP[12] << #15   ; [CPU_ALU] |765| 
        OR        AL,AR6                ; [CPU_ALU] |765| 
        MOV       @$BLOCKED(_DmaRegs)+160,AL ; [CPU_ALU] |765| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 770,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 770 | DmaRegs.CH5.CONTROL.bit.PERINTCLR = 1;                                 
;----------------------------------------------------------------------
        OR        @$BLOCKED(_DmaRegs)+161,#0x0010 ; [CPU_ALU] |770| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 771,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 771 | DmaRegs.CH5.CONTROL.bit.ERRCLR = 1;                                    
; 773 | //                                                                     
; 774 | // Initialize PIE vector for CPU interrupt:                            
; 775 | // Enable DMA CH5 interrupt in PIE                                     
; 776 | //                                                                     
;----------------------------------------------------------------------
        OR        @$BLOCKED(_DmaRegs)+161,#0x0080 ; [CPU_ALU] |771| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 777,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 777 | PieCtrlRegs.PIEIER7.bit.INTx5 = 1;                                     
;----------------------------------------------------------------------
        MOVW      DP,#_PieCtrlRegs+14   ; [CPU_ARAU] 
        OR        @$BLOCKED(_PieCtrlRegs)+14,#0x0010 ; [CPU_ALU] |777| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 779,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 779 | EDIS;                                                                  
;----------------------------------------------------------------------
 EDIS
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 780,column 1,is_stmt,isa 0
        SPM       #0                    ; [CPU_ALU] 
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$253	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$253, DW_AT_low_pc(0x00)
	.dwattr $C$DW$253, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$238, DW_AT_TI_end_file("C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c")
	.dwattr $C$DW$238, DW_AT_TI_end_line(0x30c)
	.dwattr $C$DW$238, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$238

	.sect	".text"
	.clink
	.global	_StartDMACH5

$C$DW$254	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$254, DW_AT_name("StartDMACH5")
	.dwattr $C$DW$254, DW_AT_low_pc(_StartDMACH5)
	.dwattr $C$DW$254, DW_AT_high_pc(0x00)
	.dwattr $C$DW$254, DW_AT_TI_symbol_name("_StartDMACH5")
	.dwattr $C$DW$254, DW_AT_external
	.dwattr $C$DW$254, DW_AT_TI_begin_file("C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c")
	.dwattr $C$DW$254, DW_AT_TI_begin_line(0x311)
	.dwattr $C$DW$254, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$254, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 786,column 1,is_stmt,address _StartDMACH5,isa 0

	.dwfde $C$DW$CIE, _StartDMACH5
;----------------------------------------------------------------------
; 785 | void StartDMACH5(void)                                                 
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _StartDMACH5                  FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_StartDMACH5:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 787,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 787 | EALLOW;                                                                
;----------------------------------------------------------------------
 EALLOW
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 788,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 788 | DmaRegs.CH5.CONTROL.bit.RUN = 1;                                       
;----------------------------------------------------------------------
        MOVW      DP,#_DmaRegs+161      ; [CPU_ARAU] 
        OR        @$BLOCKED(_DmaRegs)+161,#0x0001 ; [CPU_ALU] |788| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 789,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 789 | EDIS;                                                                  
;----------------------------------------------------------------------
 EDIS
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 790,column 1,is_stmt,isa 0
        SPM       #0                    ; [CPU_ALU] 
$C$DW$255	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$255, DW_AT_low_pc(0x00)
	.dwattr $C$DW$255, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$254, DW_AT_TI_end_file("C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c")
	.dwattr $C$DW$254, DW_AT_TI_end_line(0x316)
	.dwattr $C$DW$254, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$254

	.sect	".text"
	.clink
	.global	_DMACH6AddrConfig

$C$DW$256	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$256, DW_AT_name("DMACH6AddrConfig")
	.dwattr $C$DW$256, DW_AT_low_pc(_DMACH6AddrConfig)
	.dwattr $C$DW$256, DW_AT_high_pc(0x00)
	.dwattr $C$DW$256, DW_AT_TI_symbol_name("_DMACH6AddrConfig")
	.dwattr $C$DW$256, DW_AT_external
	.dwattr $C$DW$256, DW_AT_TI_begin_file("C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c")
	.dwattr $C$DW$256, DW_AT_TI_begin_line(0x31b)
	.dwattr $C$DW$256, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$256, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 796,column 1,is_stmt,address _DMACH6AddrConfig,isa 0

	.dwfde $C$DW$CIE, _DMACH6AddrConfig
$C$DW$257	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$257, DW_AT_name("DMA_Dest")
	.dwattr $C$DW$257, DW_AT_TI_symbol_name("_DMA_Dest")
	.dwattr $C$DW$257, DW_AT_type(*$C$DW$T$130)
	.dwattr $C$DW$257, DW_AT_location[DW_OP_reg12]

$C$DW$258	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$258, DW_AT_name("DMA_Source")
	.dwattr $C$DW$258, DW_AT_TI_symbol_name("_DMA_Source")
	.dwattr $C$DW$258, DW_AT_type(*$C$DW$T$130)
	.dwattr $C$DW$258, DW_AT_location[DW_OP_reg14]

;----------------------------------------------------------------------
; 795 | void DMACH6AddrConfig(volatile Uint16 *DMA_Dest,volatile Uint16 *DMA_So
;     | urce)                                                                  
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _DMACH6AddrConfig             FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  4 Auto,  0 SOE     *
;***************************************************************

_DMACH6AddrConfig:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
$C$DW$259	.dwtag  DW_TAG_variable
	.dwattr $C$DW$259, DW_AT_name("DMA_Dest")
	.dwattr $C$DW$259, DW_AT_TI_symbol_name("_DMA_Dest")
	.dwattr $C$DW$259, DW_AT_type(*$C$DW$T$130)
	.dwattr $C$DW$259, DW_AT_location[DW_OP_breg20 -2]

$C$DW$260	.dwtag  DW_TAG_variable
	.dwattr $C$DW$260, DW_AT_name("DMA_Source")
	.dwattr $C$DW$260, DW_AT_TI_symbol_name("_DMA_Source")
	.dwattr $C$DW$260, DW_AT_type(*$C$DW$T$130)
	.dwattr $C$DW$260, DW_AT_location[DW_OP_breg20 -4]

        MOVL      *-SP[4],XAR5          ; [CPU_ALU] |796| 
        MOVL      *-SP[2],XAR4          ; [CPU_ALU] |796| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 797,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 797 | EALLOW;                                                                
; 799 | //                                                                     
; 800 | // Set up SOURCE address:                                              
; 801 | //                                                                     
;----------------------------------------------------------------------
 EALLOW
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 802,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 802 | DmaRegs.CH6.SRC_BEG_ADDR_SHADOW = (Uint32)DMA_Source; // Point to begin
;     | ning                                                                   
; 803 |                                                       // of source buff
;     | er.                                                                    
;----------------------------------------------------------------------
        MOVW      DP,#_DmaRegs+208      ; [CPU_ARAU] 
        MOVL      ACC,*-SP[4]           ; [CPU_ALU] |802| 
        MOVL      @$BLOCKED(_DmaRegs)+208,ACC ; [CPU_ALU] |802| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 804,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 804 | DmaRegs.CH6.SRC_ADDR_SHADOW =     (Uint32)DMA_Source;                  
; 806 | //                                                                     
; 807 | // Set up DESTINATION address:                                         
; 808 | //                                                                     
;----------------------------------------------------------------------
        MOVL      @$BLOCKED(_DmaRegs)+210,ACC ; [CPU_ALU] |804| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 809,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 809 | DmaRegs.CH6.DST_BEG_ADDR_SHADOW = (Uint32)DMA_Dest;  // Point to beginn
;     | ing                                                                    
; 810 |                                                      // of destination 
; 811 |                                                      // buffer.        
;----------------------------------------------------------------------
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |809| 
        MOVL      @$BLOCKED(_DmaRegs)+216,ACC ; [CPU_ALU] |809| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 812,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 812 | DmaRegs.CH6.DST_ADDR_SHADOW =     (Uint32)DMA_Dest;                    
;----------------------------------------------------------------------
        MOVL      @$BLOCKED(_DmaRegs)+218,ACC ; [CPU_ALU] |812| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 814,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 814 | EDIS;                                                                  
;----------------------------------------------------------------------
 EDIS
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 815,column 1,is_stmt,isa 0
        SPM       #0                    ; [CPU_ALU] 
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$261	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$261, DW_AT_low_pc(0x00)
	.dwattr $C$DW$261, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$256, DW_AT_TI_end_file("C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c")
	.dwattr $C$DW$256, DW_AT_TI_end_line(0x32f)
	.dwattr $C$DW$256, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$256

	.sect	".text"
	.clink
	.global	_DMACH6BurstConfig

$C$DW$262	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$262, DW_AT_name("DMACH6BurstConfig")
	.dwattr $C$DW$262, DW_AT_low_pc(_DMACH6BurstConfig)
	.dwattr $C$DW$262, DW_AT_high_pc(0x00)
	.dwattr $C$DW$262, DW_AT_TI_symbol_name("_DMACH6BurstConfig")
	.dwattr $C$DW$262, DW_AT_external
	.dwattr $C$DW$262, DW_AT_TI_begin_file("C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c")
	.dwattr $C$DW$262, DW_AT_TI_begin_line(0x334)
	.dwattr $C$DW$262, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$262, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 821,column 1,is_stmt,address _DMACH6BurstConfig,isa 0

	.dwfde $C$DW$CIE, _DMACH6BurstConfig
$C$DW$263	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$263, DW_AT_name("bsize")
	.dwattr $C$DW$263, DW_AT_TI_symbol_name("_bsize")
	.dwattr $C$DW$263, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$263, DW_AT_location[DW_OP_reg0]

$C$DW$264	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$264, DW_AT_name("srcbstep")
	.dwattr $C$DW$264, DW_AT_TI_symbol_name("_srcbstep")
	.dwattr $C$DW$264, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$264, DW_AT_location[DW_OP_reg1]

$C$DW$265	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$265, DW_AT_name("desbstep")
	.dwattr $C$DW$265, DW_AT_TI_symbol_name("_desbstep")
	.dwattr $C$DW$265, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$265, DW_AT_location[DW_OP_reg12]

;----------------------------------------------------------------------
; 820 | void DMACH6BurstConfig(Uint16 bsize,Uint16 srcbstep, int16 desbstep)   
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _DMACH6BurstConfig            FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  3 Auto,  0 SOE     *
;***************************************************************

_DMACH6BurstConfig:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
$C$DW$266	.dwtag  DW_TAG_variable
	.dwattr $C$DW$266, DW_AT_name("bsize")
	.dwattr $C$DW$266, DW_AT_TI_symbol_name("_bsize")
	.dwattr $C$DW$266, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$266, DW_AT_location[DW_OP_breg20 -1]

$C$DW$267	.dwtag  DW_TAG_variable
	.dwattr $C$DW$267, DW_AT_name("srcbstep")
	.dwattr $C$DW$267, DW_AT_TI_symbol_name("_srcbstep")
	.dwattr $C$DW$267, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$267, DW_AT_location[DW_OP_breg20 -2]

$C$DW$268	.dwtag  DW_TAG_variable
	.dwattr $C$DW$268, DW_AT_name("desbstep")
	.dwattr $C$DW$268, DW_AT_TI_symbol_name("_desbstep")
	.dwattr $C$DW$268, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$268, DW_AT_location[DW_OP_breg20 -3]

        MOV       *-SP[3],AR4           ; [CPU_ALU] |821| 
        MOV       *-SP[2],AH            ; [CPU_ALU] |821| 
        MOV       *-SP[1],AL            ; [CPU_ALU] |821| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 822,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 822 | EALLOW;                                                                
; 824 | //                                                                     
; 825 | // Set up BURST registers:                                             
; 826 | //                                                                     
;----------------------------------------------------------------------
 EALLOW
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 827,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 827 | DmaRegs.CH6.BURST_SIZE.all = bsize;     // Number of words(X-1) x-ferre
;     | d in                                                                   
; 828 |                                         // a burst.                    
;----------------------------------------------------------------------
        MOVW      DP,#_DmaRegs+194      ; [CPU_ARAU] 
        MOV       @$BLOCKED(_DmaRegs)+194,AL ; [CPU_ALU] |827| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 829,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 829 | DmaRegs.CH6.SRC_BURST_STEP = srcbstep;  // Increment source addr betwee
;     | n                                                                      
; 830 |                                         // each word x-ferred.         
;----------------------------------------------------------------------
        MOV       AL,*-SP[2]            ; [CPU_ALU] |829| 
        MOV       @$BLOCKED(_DmaRegs)+196,AL ; [CPU_ALU] |829| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 831,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 831 | DmaRegs.CH6.DST_BURST_STEP = desbstep;  // Increment dest addr between
;     | each                                                                   
; 832 |                                         // word x-ferred.              
;----------------------------------------------------------------------
        MOV       AL,*-SP[3]            ; [CPU_ALU] |831| 
        MOV       @$BLOCKED(_DmaRegs)+197,AL ; [CPU_ALU] |831| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 834,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 834 | EDIS;                                                                  
;----------------------------------------------------------------------
 EDIS
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 835,column 1,is_stmt,isa 0
        SPM       #0                    ; [CPU_ALU] 
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$269	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$269, DW_AT_low_pc(0x00)
	.dwattr $C$DW$269, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$262, DW_AT_TI_end_file("C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c")
	.dwattr $C$DW$262, DW_AT_TI_end_line(0x343)
	.dwattr $C$DW$262, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$262

	.sect	".text"
	.clink
	.global	_DMACH6TransferConfig

$C$DW$270	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$270, DW_AT_name("DMACH6TransferConfig")
	.dwattr $C$DW$270, DW_AT_low_pc(_DMACH6TransferConfig)
	.dwattr $C$DW$270, DW_AT_high_pc(0x00)
	.dwattr $C$DW$270, DW_AT_TI_symbol_name("_DMACH6TransferConfig")
	.dwattr $C$DW$270, DW_AT_external
	.dwattr $C$DW$270, DW_AT_TI_begin_file("C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c")
	.dwattr $C$DW$270, DW_AT_TI_begin_line(0x348)
	.dwattr $C$DW$270, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$270, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 841,column 1,is_stmt,address _DMACH6TransferConfig,isa 0

	.dwfde $C$DW$CIE, _DMACH6TransferConfig
$C$DW$271	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$271, DW_AT_name("tsize")
	.dwattr $C$DW$271, DW_AT_TI_symbol_name("_tsize")
	.dwattr $C$DW$271, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$271, DW_AT_location[DW_OP_reg0]

$C$DW$272	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$272, DW_AT_name("srctstep")
	.dwattr $C$DW$272, DW_AT_TI_symbol_name("_srctstep")
	.dwattr $C$DW$272, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$272, DW_AT_location[DW_OP_reg1]

$C$DW$273	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$273, DW_AT_name("deststep")
	.dwattr $C$DW$273, DW_AT_TI_symbol_name("_deststep")
	.dwattr $C$DW$273, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$273, DW_AT_location[DW_OP_reg12]

;----------------------------------------------------------------------
; 840 | void DMACH6TransferConfig(Uint16 tsize, int16 srctstep, int16 deststep)
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _DMACH6TransferConfig         FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  3 Auto,  0 SOE     *
;***************************************************************

_DMACH6TransferConfig:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
$C$DW$274	.dwtag  DW_TAG_variable
	.dwattr $C$DW$274, DW_AT_name("tsize")
	.dwattr $C$DW$274, DW_AT_TI_symbol_name("_tsize")
	.dwattr $C$DW$274, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$274, DW_AT_location[DW_OP_breg20 -1]

$C$DW$275	.dwtag  DW_TAG_variable
	.dwattr $C$DW$275, DW_AT_name("srctstep")
	.dwattr $C$DW$275, DW_AT_TI_symbol_name("_srctstep")
	.dwattr $C$DW$275, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$275, DW_AT_location[DW_OP_breg20 -2]

$C$DW$276	.dwtag  DW_TAG_variable
	.dwattr $C$DW$276, DW_AT_name("deststep")
	.dwattr $C$DW$276, DW_AT_TI_symbol_name("_deststep")
	.dwattr $C$DW$276, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$276, DW_AT_location[DW_OP_breg20 -3]

        MOV       *-SP[3],AR4           ; [CPU_ALU] |841| 
        MOV       *-SP[2],AH            ; [CPU_ALU] |841| 
        MOV       *-SP[1],AL            ; [CPU_ALU] |841| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 842,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 842 | EALLOW;                                                                
; 844 | //                                                                     
; 845 | // Set up TRANSFER registers:                                          
; 846 | //                                                                     
;----------------------------------------------------------------------
 EALLOW
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 847,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 847 | DmaRegs.CH6.TRANSFER_SIZE = tsize;        // Number of bursts per trans
;     | fer,                                                                   
; 848 |                                           // DMA interrupt will occur a
;     | fter                                                                   
; 849 |                                           // completed transfer.       
;----------------------------------------------------------------------
        MOVW      DP,#_DmaRegs+198      ; [CPU_ARAU] 
        MOV       @$BLOCKED(_DmaRegs)+198,AL ; [CPU_ALU] |847| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 850,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 850 | DmaRegs.CH6.SRC_TRANSFER_STEP = srctstep; // TRANSFER_STEP is ignored w
;     | hen                                                                    
; 851 |                                           // WRAP occurs.              
;----------------------------------------------------------------------
        MOV       AL,*-SP[2]            ; [CPU_ALU] |850| 
        MOV       @$BLOCKED(_DmaRegs)+200,AL ; [CPU_ALU] |850| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 852,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 852 | DmaRegs.CH6.DST_TRANSFER_STEP = deststep; // TRANSFER_STEP is ignored w
;     | hen                                                                    
; 853 |                                           // WRAP occurs.              
;----------------------------------------------------------------------
        MOV       AL,*-SP[3]            ; [CPU_ALU] |852| 
        MOV       @$BLOCKED(_DmaRegs)+201,AL ; [CPU_ALU] |852| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 855,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 855 | EDIS;                                                                  
;----------------------------------------------------------------------
 EDIS
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 856,column 1,is_stmt,isa 0
        SPM       #0                    ; [CPU_ALU] 
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$277	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$277, DW_AT_low_pc(0x00)
	.dwattr $C$DW$277, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$270, DW_AT_TI_end_file("C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c")
	.dwattr $C$DW$270, DW_AT_TI_end_line(0x358)
	.dwattr $C$DW$270, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$270

	.sect	".text"
	.clink
	.global	_DMACH6WrapConfig

$C$DW$278	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$278, DW_AT_name("DMACH6WrapConfig")
	.dwattr $C$DW$278, DW_AT_low_pc(_DMACH6WrapConfig)
	.dwattr $C$DW$278, DW_AT_high_pc(0x00)
	.dwattr $C$DW$278, DW_AT_TI_symbol_name("_DMACH6WrapConfig")
	.dwattr $C$DW$278, DW_AT_external
	.dwattr $C$DW$278, DW_AT_TI_begin_file("C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c")
	.dwattr $C$DW$278, DW_AT_TI_begin_line(0x35d)
	.dwattr $C$DW$278, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$278, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 863,column 1,is_stmt,address _DMACH6WrapConfig,isa 0

	.dwfde $C$DW$CIE, _DMACH6WrapConfig
$C$DW$279	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$279, DW_AT_name("srcwsize")
	.dwattr $C$DW$279, DW_AT_TI_symbol_name("_srcwsize")
	.dwattr $C$DW$279, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$279, DW_AT_location[DW_OP_reg0]

$C$DW$280	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$280, DW_AT_name("srcwstep")
	.dwattr $C$DW$280, DW_AT_TI_symbol_name("_srcwstep")
	.dwattr $C$DW$280, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$280, DW_AT_location[DW_OP_reg1]

$C$DW$281	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$281, DW_AT_name("deswsize")
	.dwattr $C$DW$281, DW_AT_TI_symbol_name("_deswsize")
	.dwattr $C$DW$281, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$281, DW_AT_location[DW_OP_reg12]

$C$DW$282	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$282, DW_AT_name("deswstep")
	.dwattr $C$DW$282, DW_AT_TI_symbol_name("_deswstep")
	.dwattr $C$DW$282, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$282, DW_AT_location[DW_OP_reg14]

;----------------------------------------------------------------------
; 861 | void DMACH6WrapConfig(Uint16 srcwsize, int16 srcwstep, Uint16 deswsize,
; 862 | int16 deswstep)                                                        
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _DMACH6WrapConfig             FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  4 Auto,  0 SOE     *
;***************************************************************

_DMACH6WrapConfig:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
$C$DW$283	.dwtag  DW_TAG_variable
	.dwattr $C$DW$283, DW_AT_name("srcwsize")
	.dwattr $C$DW$283, DW_AT_TI_symbol_name("_srcwsize")
	.dwattr $C$DW$283, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$283, DW_AT_location[DW_OP_breg20 -1]

$C$DW$284	.dwtag  DW_TAG_variable
	.dwattr $C$DW$284, DW_AT_name("srcwstep")
	.dwattr $C$DW$284, DW_AT_TI_symbol_name("_srcwstep")
	.dwattr $C$DW$284, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$284, DW_AT_location[DW_OP_breg20 -2]

$C$DW$285	.dwtag  DW_TAG_variable
	.dwattr $C$DW$285, DW_AT_name("deswsize")
	.dwattr $C$DW$285, DW_AT_TI_symbol_name("_deswsize")
	.dwattr $C$DW$285, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$285, DW_AT_location[DW_OP_breg20 -3]

$C$DW$286	.dwtag  DW_TAG_variable
	.dwattr $C$DW$286, DW_AT_name("deswstep")
	.dwattr $C$DW$286, DW_AT_TI_symbol_name("_deswstep")
	.dwattr $C$DW$286, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$286, DW_AT_location[DW_OP_breg20 -4]

        MOV       *-SP[4],AR5           ; [CPU_ALU] |863| 
        MOV       *-SP[3],AR4           ; [CPU_ALU] |863| 
        MOV       *-SP[2],AH            ; [CPU_ALU] |863| 
        MOV       *-SP[1],AL            ; [CPU_ALU] |863| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 864,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 864 | EALLOW;                                                                
; 866 | //                                                                     
; 867 | // Set up WRAP registers:                                              
; 868 | //                                                                     
;----------------------------------------------------------------------
 EALLOW
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 869,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 869 | DmaRegs.CH6.SRC_WRAP_SIZE = srcwsize; // Wrap source address after N bu
;     | rsts                                                                   
;----------------------------------------------------------------------
        MOVW      DP,#_DmaRegs+202      ; [CPU_ARAU] 
        MOV       @$BLOCKED(_DmaRegs)+202,AL ; [CPU_ALU] |869| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 870,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 870 | DmaRegs.CH6.SRC_WRAP_STEP = srcwstep; // Step for source wrap          
;----------------------------------------------------------------------
        MOV       AL,*-SP[2]            ; [CPU_ALU] |870| 
        MOV       @$BLOCKED(_DmaRegs)+204,AL ; [CPU_ALU] |870| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 872,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 872 | DmaRegs.CH6.DST_WRAP_SIZE = deswsize; // Wrap destination address after
;     |  N                                                                     
; 873 |                                       // bursts.                       
;----------------------------------------------------------------------
        MOV       AL,*-SP[3]            ; [CPU_ALU] |872| 
        MOV       @$BLOCKED(_DmaRegs)+205,AL ; [CPU_ALU] |872| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 874,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 874 | DmaRegs.CH6.DST_WRAP_STEP = deswstep; // Step for destination wrap     
;----------------------------------------------------------------------
        MOV       AL,*-SP[4]            ; [CPU_ALU] |874| 
        MOV       @$BLOCKED(_DmaRegs)+207,AL ; [CPU_ALU] |874| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 876,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 876 | EDIS;                                                                  
;----------------------------------------------------------------------
 EDIS
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 877,column 1,is_stmt,isa 0
        SPM       #0                    ; [CPU_ALU] 
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$287	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$287, DW_AT_low_pc(0x00)
	.dwattr $C$DW$287, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$278, DW_AT_TI_end_file("C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c")
	.dwattr $C$DW$278, DW_AT_TI_end_line(0x36d)
	.dwattr $C$DW$278, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$278

	.sect	".text"
	.clink
	.global	_DMACH6ModeConfig

$C$DW$288	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$288, DW_AT_name("DMACH6ModeConfig")
	.dwattr $C$DW$288, DW_AT_low_pc(_DMACH6ModeConfig)
	.dwattr $C$DW$288, DW_AT_high_pc(0x00)
	.dwattr $C$DW$288, DW_AT_TI_symbol_name("_DMACH6ModeConfig")
	.dwattr $C$DW$288, DW_AT_external
	.dwattr $C$DW$288, DW_AT_TI_begin_file("C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c")
	.dwattr $C$DW$288, DW_AT_TI_begin_line(0x372)
	.dwattr $C$DW$288, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$288, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 886,column 1,is_stmt,address _DMACH6ModeConfig,isa 0

	.dwfde $C$DW$CIE, _DMACH6ModeConfig
$C$DW$289	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$289, DW_AT_name("persel")
	.dwattr $C$DW$289, DW_AT_TI_symbol_name("_persel")
	.dwattr $C$DW$289, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$289, DW_AT_location[DW_OP_reg0]

$C$DW$290	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$290, DW_AT_name("perinte")
	.dwattr $C$DW$290, DW_AT_TI_symbol_name("_perinte")
	.dwattr $C$DW$290, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$290, DW_AT_location[DW_OP_reg1]

$C$DW$291	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$291, DW_AT_name("oneshot")
	.dwattr $C$DW$291, DW_AT_TI_symbol_name("_oneshot")
	.dwattr $C$DW$291, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$291, DW_AT_location[DW_OP_reg12]

$C$DW$292	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$292, DW_AT_name("cont")
	.dwattr $C$DW$292, DW_AT_TI_symbol_name("_cont")
	.dwattr $C$DW$292, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$292, DW_AT_location[DW_OP_reg14]

$C$DW$293	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$293, DW_AT_name("synce")
	.dwattr $C$DW$293, DW_AT_TI_symbol_name("_synce")
	.dwattr $C$DW$293, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$293, DW_AT_location[DW_OP_breg20 -7]

$C$DW$294	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$294, DW_AT_name("syncsel")
	.dwattr $C$DW$294, DW_AT_TI_symbol_name("_syncsel")
	.dwattr $C$DW$294, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$294, DW_AT_location[DW_OP_breg20 -8]

$C$DW$295	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$295, DW_AT_name("ovrinte")
	.dwattr $C$DW$295, DW_AT_TI_symbol_name("_ovrinte")
	.dwattr $C$DW$295, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$295, DW_AT_location[DW_OP_breg20 -9]

$C$DW$296	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$296, DW_AT_name("datasize")
	.dwattr $C$DW$296, DW_AT_TI_symbol_name("_datasize")
	.dwattr $C$DW$296, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$296, DW_AT_location[DW_OP_breg20 -10]

$C$DW$297	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$297, DW_AT_name("chintmode")
	.dwattr $C$DW$297, DW_AT_TI_symbol_name("_chintmode")
	.dwattr $C$DW$297, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$297, DW_AT_location[DW_OP_breg20 -11]

$C$DW$298	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$298, DW_AT_name("chinte")
	.dwattr $C$DW$298, DW_AT_TI_symbol_name("_chinte")
	.dwattr $C$DW$298, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$298, DW_AT_location[DW_OP_breg20 -12]

;----------------------------------------------------------------------
; 882 | void DMACH6ModeConfig(Uint16 persel, Uint16 perinte, Uint16 oneshot,   
; 883 | Uint16 cont, Uint16 synce, Uint16 syncsel,                             
; 884 | Uint16 ovrinte, Uint16 datasize, Uint16 chintmode,                     
; 885 | Uint16 chinte)                                                         
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _DMACH6ModeConfig             FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  4 Auto,  0 SOE     *
;***************************************************************

_DMACH6ModeConfig:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
$C$DW$299	.dwtag  DW_TAG_variable
	.dwattr $C$DW$299, DW_AT_name("persel")
	.dwattr $C$DW$299, DW_AT_TI_symbol_name("_persel")
	.dwattr $C$DW$299, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$299, DW_AT_location[DW_OP_breg20 -1]

$C$DW$300	.dwtag  DW_TAG_variable
	.dwattr $C$DW$300, DW_AT_name("perinte")
	.dwattr $C$DW$300, DW_AT_TI_symbol_name("_perinte")
	.dwattr $C$DW$300, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$300, DW_AT_location[DW_OP_breg20 -2]

$C$DW$301	.dwtag  DW_TAG_variable
	.dwattr $C$DW$301, DW_AT_name("oneshot")
	.dwattr $C$DW$301, DW_AT_TI_symbol_name("_oneshot")
	.dwattr $C$DW$301, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$301, DW_AT_location[DW_OP_breg20 -3]

$C$DW$302	.dwtag  DW_TAG_variable
	.dwattr $C$DW$302, DW_AT_name("cont")
	.dwattr $C$DW$302, DW_AT_TI_symbol_name("_cont")
	.dwattr $C$DW$302, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$302, DW_AT_location[DW_OP_breg20 -4]

        MOV       *-SP[4],AR5           ; [CPU_ALU] |886| 
        MOV       *-SP[3],AR4           ; [CPU_ALU] |886| 
        MOV       *-SP[2],AH            ; [CPU_ALU] |886| 
        MOV       *-SP[1],AL            ; [CPU_ALU] |886| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 887,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 887 | EALLOW;                                                                
; 889 | //                                                                     
; 890 | // Set up MODE Register:                                               
; 891 | // persel - Source select                                              
; 892 | // PERINTSEL - Should be hard coded to channel, above now selects sourc
;     | e                                                                      
; 893 | // PERINTE - Peripheral interrupt enable                               
; 894 | // ONESHOT - Oneshot enable                                            
; 895 | // CONTINUOUS - Continuous enable                                      
; 896 | // OVRINTE - Enable/disable the overflow interrupt                     
; 897 | // DATASIZE - 16-bit/32-bit data size transfers                        
; 898 | // CHINTMODE - Generate interrupt to CPU at beginning/end of transfer  
; 899 | // CHINTE - Channel Interrupt to  CPU enable                           
; 900 | //                                                                     
;----------------------------------------------------------------------
 EALLOW
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 901,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 901 | DmaClaSrcSelRegs.DMACHSRCSEL2.bit.CH6 = persel;                        
;----------------------------------------------------------------------
        MOVW      DP,#_DmaClaSrcSelRegs+24 ; [CPU_ARAU] 
        MOV       AL,@$BLOCKED(_DmaClaSrcSelRegs)+24 ; [CPU_ALU] |901| 
        MOV       AH,*-SP[1]            ; [CPU_ALU] |901| 
        MOVB      AL.MSB,AH             ; [CPU_ALU] |901| 
        MOV       @$BLOCKED(_DmaClaSrcSelRegs)+24,AL ; [CPU_ALU] |901| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 902,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 902 | DmaRegs.CH6.MODE.bit.PERINTSEL = 6;                                    
;----------------------------------------------------------------------
        MOVW      DP,#_DmaRegs+192      ; [CPU_ARAU] 
        AND       AL,@$BLOCKED(_DmaRegs)+192,#0xffe0 ; [CPU_ALU] |902| 
        ORB       AL,#0x06              ; [CPU_ALU] |902| 
        MOV       @$BLOCKED(_DmaRegs)+192,AL ; [CPU_ALU] |902| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 903,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 903 | DmaRegs.CH6.MODE.bit.PERINTE = perinte;                                
;----------------------------------------------------------------------
        MOV       AL,*-SP[2]            ; [CPU_ALU] |903| 
        ANDB      AL,#0x01              ; [CPU_ALU] |903| 
        AND       AH,@$BLOCKED(_DmaRegs)+192,#0xfeff ; [CPU_FPU] |903| 
        LSL       AL,8                  ; [CPU_ALU] |903| 
        OR        AL,AH                 ; [CPU_ALU] |903| 
        MOV       @$BLOCKED(_DmaRegs)+192,AL ; [CPU_ALU] |903| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 904,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 904 | DmaRegs.CH6.MODE.bit.ONESHOT = oneshot;                                
;----------------------------------------------------------------------
        MOV       AL,*-SP[3]            ; [CPU_ALU] |904| 
        ANDB      AL,#0x01              ; [CPU_ALU] |904| 
        LSL       AL,10                 ; [CPU_ALU] |904| 
        AND       AH,@$BLOCKED(_DmaRegs)+192,#0xfbff ; [CPU_FPU] |904| 
        OR        AL,AH                 ; [CPU_ALU] |904| 
        MOV       @$BLOCKED(_DmaRegs)+192,AL ; [CPU_ALU] |904| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 905,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 905 | DmaRegs.CH6.MODE.bit.CONTINUOUS = cont;                                
;----------------------------------------------------------------------
        MOV       AL,*-SP[4]            ; [CPU_ALU] |905| 
        ANDB      AL,#0x01              ; [CPU_ALU] |905| 
        LSL       AL,11                 ; [CPU_ALU] |905| 
        AND       AH,@$BLOCKED(_DmaRegs)+192,#0xf7ff ; [CPU_FPU] |905| 
        OR        AL,AH                 ; [CPU_ALU] |905| 
        MOV       @$BLOCKED(_DmaRegs)+192,AL ; [CPU_ALU] |905| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 906,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 906 | DmaRegs.CH6.MODE.bit.OVRINTE = ovrinte;                                
;----------------------------------------------------------------------
        MOV       AL,*-SP[9]            ; [CPU_ALU] |906| 
        ANDB      AL,#0x01              ; [CPU_ALU] |906| 
        LSL       AL,7                  ; [CPU_ALU] |906| 
        AND       AH,@$BLOCKED(_DmaRegs)+192,#0xff7f ; [CPU_FPU] |906| 
        OR        AL,AH                 ; [CPU_ALU] |906| 
        MOV       @$BLOCKED(_DmaRegs)+192,AL ; [CPU_ALU] |906| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 907,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 907 | DmaRegs.CH6.MODE.bit.DATASIZE = datasize;                              
;----------------------------------------------------------------------
        MOV       AL,*-SP[10]           ; [CPU_ALU] |907| 
        ANDB      AL,#0x01              ; [CPU_ALU] |907| 
        LSL       AL,14                 ; [CPU_ALU] |907| 
        AND       AH,@$BLOCKED(_DmaRegs)+192,#0xbfff ; [CPU_FPU] |907| 
        OR        AL,AH                 ; [CPU_ALU] |907| 
        MOV       @$BLOCKED(_DmaRegs)+192,AL ; [CPU_ALU] |907| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 908,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 908 | DmaRegs.CH6.MODE.bit.CHINTMODE = chintmode;                            
;----------------------------------------------------------------------
        MOV       AL,*-SP[11]           ; [CPU_ALU] |908| 
        ANDB      AL,#0x01              ; [CPU_ALU] |908| 
        LSL       AL,9                  ; [CPU_ALU] |908| 
        AND       AH,@$BLOCKED(_DmaRegs)+192,#0xfdff ; [CPU_FPU] |908| 
        OR        AL,AH                 ; [CPU_ALU] |908| 
        MOV       @$BLOCKED(_DmaRegs)+192,AL ; [CPU_ALU] |908| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 909,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 909 | DmaRegs.CH6.MODE.bit.CHINTE = chinte;                                  
; 911 | //                                                                     
; 912 | // Clear any spurious flags: Interrupt flags and sync error flags      
; 913 | //                                                                     
;----------------------------------------------------------------------
        AND       AL,@$BLOCKED(_DmaRegs)+192,#0x7fff ; [CPU_ALU] |909| 
        MOVZ      AR6,AL                ; [CPU_ALU] |909| 
        MOV       ACC,*-SP[12] << #15   ; [CPU_ALU] |909| 
        OR        AL,AR6                ; [CPU_ALU] |909| 
        MOV       @$BLOCKED(_DmaRegs)+192,AL ; [CPU_ALU] |909| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 914,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 914 | DmaRegs.CH6.CONTROL.bit.PERINTCLR = 1;                                 
;----------------------------------------------------------------------
        OR        @$BLOCKED(_DmaRegs)+193,#0x0010 ; [CPU_ALU] |914| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 915,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 915 | DmaRegs.CH6.CONTROL.bit.ERRCLR = 1;                                    
; 917 | //                                                                     
; 918 | // Initialize PIE vector for CPU interrupt:                            
; 919 | // Enable DMA CH6 interrupt in PIE                                     
; 920 | //                                                                     
;----------------------------------------------------------------------
        OR        @$BLOCKED(_DmaRegs)+193,#0x0080 ; [CPU_ALU] |915| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 921,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 921 | PieCtrlRegs.PIEIER7.bit.INTx6 = 1;                                     
;----------------------------------------------------------------------
        MOVW      DP,#_PieCtrlRegs+14   ; [CPU_ARAU] 
        OR        @$BLOCKED(_PieCtrlRegs)+14,#0x0020 ; [CPU_ALU] |921| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 923,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 923 | EDIS;                                                                  
;----------------------------------------------------------------------
 EDIS
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 924,column 1,is_stmt,isa 0
        SPM       #0                    ; [CPU_ALU] 
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$303	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$303, DW_AT_low_pc(0x00)
	.dwattr $C$DW$303, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$288, DW_AT_TI_end_file("C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c")
	.dwattr $C$DW$288, DW_AT_TI_end_line(0x39c)
	.dwattr $C$DW$288, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$288

	.sect	".text"
	.clink
	.global	_StartDMACH6

$C$DW$304	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$304, DW_AT_name("StartDMACH6")
	.dwattr $C$DW$304, DW_AT_low_pc(_StartDMACH6)
	.dwattr $C$DW$304, DW_AT_high_pc(0x00)
	.dwattr $C$DW$304, DW_AT_TI_symbol_name("_StartDMACH6")
	.dwattr $C$DW$304, DW_AT_external
	.dwattr $C$DW$304, DW_AT_TI_begin_file("C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c")
	.dwattr $C$DW$304, DW_AT_TI_begin_line(0x3a1)
	.dwattr $C$DW$304, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$304, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 930,column 1,is_stmt,address _StartDMACH6,isa 0

	.dwfde $C$DW$CIE, _StartDMACH6
;----------------------------------------------------------------------
; 929 | void StartDMACH6(void)                                                 
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _StartDMACH6                  FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_StartDMACH6:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 931,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 931 | EALLOW;                                                                
;----------------------------------------------------------------------
 EALLOW
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 932,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 932 | DmaRegs.CH6.CONTROL.bit.RUN = 1;                                       
;----------------------------------------------------------------------
        MOVW      DP,#_DmaRegs+193      ; [CPU_ARAU] 
        OR        @$BLOCKED(_DmaRegs)+193,#0x0001 ; [CPU_ALU] |932| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 933,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 933 | EDIS;                                                                  
;----------------------------------------------------------------------
 EDIS
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 934,column 1,is_stmt,isa 0
        SPM       #0                    ; [CPU_ALU] 
$C$DW$305	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$305, DW_AT_low_pc(0x00)
	.dwattr $C$DW$305, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$304, DW_AT_TI_end_file("C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c")
	.dwattr $C$DW$304, DW_AT_TI_end_line(0x3a6)
	.dwattr $C$DW$304, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$304

	.sect	".text"
	.clink
	.global	_DMACH1AddrConfig32bit

$C$DW$306	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$306, DW_AT_name("DMACH1AddrConfig32bit")
	.dwattr $C$DW$306, DW_AT_low_pc(_DMACH1AddrConfig32bit)
	.dwattr $C$DW$306, DW_AT_high_pc(0x00)
	.dwattr $C$DW$306, DW_AT_TI_symbol_name("_DMACH1AddrConfig32bit")
	.dwattr $C$DW$306, DW_AT_external
	.dwattr $C$DW$306, DW_AT_TI_begin_file("C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c")
	.dwattr $C$DW$306, DW_AT_TI_begin_line(0x3b1)
	.dwattr $C$DW$306, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$306, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 947,column 1,is_stmt,address _DMACH1AddrConfig32bit,isa 0

	.dwfde $C$DW$CIE, _DMACH1AddrConfig32bit
$C$DW$307	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$307, DW_AT_name("DMA_Dest")
	.dwattr $C$DW$307, DW_AT_TI_symbol_name("_DMA_Dest")
	.dwattr $C$DW$307, DW_AT_type(*$C$DW$T$137)
	.dwattr $C$DW$307, DW_AT_location[DW_OP_reg12]

$C$DW$308	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$308, DW_AT_name("DMA_Source")
	.dwattr $C$DW$308, DW_AT_TI_symbol_name("_DMA_Source")
	.dwattr $C$DW$308, DW_AT_type(*$C$DW$T$137)
	.dwattr $C$DW$308, DW_AT_location[DW_OP_reg14]

;----------------------------------------------------------------------
; 945 | void DMACH1AddrConfig32bit(volatile Uint32 *DMA_Dest,                  
; 946 | volatile Uint32 *DMA_Source)                                           
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _DMACH1AddrConfig32bit        FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  4 Auto,  0 SOE     *
;***************************************************************

_DMACH1AddrConfig32bit:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
$C$DW$309	.dwtag  DW_TAG_variable
	.dwattr $C$DW$309, DW_AT_name("DMA_Dest")
	.dwattr $C$DW$309, DW_AT_TI_symbol_name("_DMA_Dest")
	.dwattr $C$DW$309, DW_AT_type(*$C$DW$T$137)
	.dwattr $C$DW$309, DW_AT_location[DW_OP_breg20 -2]

$C$DW$310	.dwtag  DW_TAG_variable
	.dwattr $C$DW$310, DW_AT_name("DMA_Source")
	.dwattr $C$DW$310, DW_AT_TI_symbol_name("_DMA_Source")
	.dwattr $C$DW$310, DW_AT_type(*$C$DW$T$137)
	.dwattr $C$DW$310, DW_AT_location[DW_OP_breg20 -4]

        MOVL      *-SP[4],XAR5          ; [CPU_ALU] |947| 
        MOVL      *-SP[2],XAR4          ; [CPU_ALU] |947| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 948,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 948 | EALLOW;                                                                
; 950 | //                                                                     
; 951 | // Set up SOURCE address:                                              
; 952 | //                                                                     
;----------------------------------------------------------------------
 EALLOW
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 953,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 953 | DmaRegs.CH1.SRC_BEG_ADDR_SHADOW = (Uint32)DMA_Source; // Point to begin
;     | ning                                                                   
; 954 |                                                       // of source buff
;     | er                                                                     
;----------------------------------------------------------------------
        MOVW      DP,#_DmaRegs+48       ; [CPU_ARAU] 
        MOVL      ACC,*-SP[4]           ; [CPU_ALU] |953| 
        MOVL      @$BLOCKED(_DmaRegs)+48,ACC ; [CPU_ALU] |953| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 955,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 955 | DmaRegs.CH1.SRC_ADDR_SHADOW =     (Uint32)DMA_Source;                  
; 957 | //                                                                     
; 958 | // Set up DESTINATION address:                                         
; 959 | //                                                                     
;----------------------------------------------------------------------
        MOVL      @$BLOCKED(_DmaRegs)+50,ACC ; [CPU_ALU] |955| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 960,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 960 | DmaRegs.CH1.DST_BEG_ADDR_SHADOW = (Uint32)DMA_Dest;  // Point to beginn
;     | ing                                                                    
; 961 |                                                      // of destination 
; 962 |                                                      // buffer         
;----------------------------------------------------------------------
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |960| 
        MOVL      @$BLOCKED(_DmaRegs)+56,ACC ; [CPU_ALU] |960| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 963,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 963 | DmaRegs.CH1.DST_ADDR_SHADOW =     (Uint32)DMA_Dest;                    
;----------------------------------------------------------------------
        MOVL      @$BLOCKED(_DmaRegs)+58,ACC ; [CPU_ALU] |963| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 965,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 965 | EDIS;                                                                  
;----------------------------------------------------------------------
 EDIS
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 966,column 1,is_stmt,isa 0
        SPM       #0                    ; [CPU_ALU] 
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$311	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$311, DW_AT_low_pc(0x00)
	.dwattr $C$DW$311, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$306, DW_AT_TI_end_file("C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c")
	.dwattr $C$DW$306, DW_AT_TI_end_line(0x3c6)
	.dwattr $C$DW$306, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$306

	.sect	".text"
	.clink
	.global	_DMACH2AddrConfig32bit

$C$DW$312	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$312, DW_AT_name("DMACH2AddrConfig32bit")
	.dwattr $C$DW$312, DW_AT_low_pc(_DMACH2AddrConfig32bit)
	.dwattr $C$DW$312, DW_AT_high_pc(0x00)
	.dwattr $C$DW$312, DW_AT_TI_symbol_name("_DMACH2AddrConfig32bit")
	.dwattr $C$DW$312, DW_AT_external
	.dwattr $C$DW$312, DW_AT_TI_begin_file("C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c")
	.dwattr $C$DW$312, DW_AT_TI_begin_line(0x3cb)
	.dwattr $C$DW$312, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$312, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 973,column 1,is_stmt,address _DMACH2AddrConfig32bit,isa 0

	.dwfde $C$DW$CIE, _DMACH2AddrConfig32bit
$C$DW$313	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$313, DW_AT_name("DMA_Dest")
	.dwattr $C$DW$313, DW_AT_TI_symbol_name("_DMA_Dest")
	.dwattr $C$DW$313, DW_AT_type(*$C$DW$T$137)
	.dwattr $C$DW$313, DW_AT_location[DW_OP_reg12]

$C$DW$314	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$314, DW_AT_name("DMA_Source")
	.dwattr $C$DW$314, DW_AT_TI_symbol_name("_DMA_Source")
	.dwattr $C$DW$314, DW_AT_type(*$C$DW$T$137)
	.dwattr $C$DW$314, DW_AT_location[DW_OP_reg14]

;----------------------------------------------------------------------
; 971 | void DMACH2AddrConfig32bit(volatile Uint32 *DMA_Dest,                  
; 972 | volatile Uint32 *DMA_Source)                                           
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _DMACH2AddrConfig32bit        FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  4 Auto,  0 SOE     *
;***************************************************************

_DMACH2AddrConfig32bit:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
$C$DW$315	.dwtag  DW_TAG_variable
	.dwattr $C$DW$315, DW_AT_name("DMA_Dest")
	.dwattr $C$DW$315, DW_AT_TI_symbol_name("_DMA_Dest")
	.dwattr $C$DW$315, DW_AT_type(*$C$DW$T$137)
	.dwattr $C$DW$315, DW_AT_location[DW_OP_breg20 -2]

$C$DW$316	.dwtag  DW_TAG_variable
	.dwattr $C$DW$316, DW_AT_name("DMA_Source")
	.dwattr $C$DW$316, DW_AT_TI_symbol_name("_DMA_Source")
	.dwattr $C$DW$316, DW_AT_type(*$C$DW$T$137)
	.dwattr $C$DW$316, DW_AT_location[DW_OP_breg20 -4]

        MOVL      *-SP[4],XAR5          ; [CPU_ALU] |973| 
        MOVL      *-SP[2],XAR4          ; [CPU_ALU] |973| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 974,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 974 | EALLOW;                                                                
; 976 | //                                                                     
; 977 | // Set up SOURCE address:                                              
; 978 | //                                                                     
;----------------------------------------------------------------------
 EALLOW
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 979,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 979 | DmaRegs.CH2.SRC_BEG_ADDR_SHADOW = (Uint32)DMA_Source; // Point to begin
;     | ning                                                                   
; 980 |                                                       // of source buff
;     | er                                                                     
;----------------------------------------------------------------------
        MOVW      DP,#_DmaRegs+80       ; [CPU_ARAU] 
        MOVL      ACC,*-SP[4]           ; [CPU_ALU] |979| 
        MOVL      @$BLOCKED(_DmaRegs)+80,ACC ; [CPU_ALU] |979| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 981,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 981 | DmaRegs.CH2.SRC_ADDR_SHADOW =     (Uint32)DMA_Source;                  
; 983 | //                                                                     
; 984 | // Set up DESTINATION address:                                         
; 985 | //                                                                     
;----------------------------------------------------------------------
        MOVL      @$BLOCKED(_DmaRegs)+82,ACC ; [CPU_ALU] |981| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 986,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 986 | DmaRegs.CH2.DST_BEG_ADDR_SHADOW = (Uint32)DMA_Dest;  // Point to beginn
;     | ing                                                                    
; 987 |                                                      // of destination 
; 988 |                                                      // buffer         
;----------------------------------------------------------------------
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |986| 
        MOVL      @$BLOCKED(_DmaRegs)+88,ACC ; [CPU_ALU] |986| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 989,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 989 | DmaRegs.CH2.DST_ADDR_SHADOW =     (Uint32)DMA_Dest;                    
;----------------------------------------------------------------------
        MOVL      @$BLOCKED(_DmaRegs)+90,ACC ; [CPU_ALU] |989| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 991,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 991 | EDIS;                                                                  
;----------------------------------------------------------------------
 EDIS
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 992,column 1,is_stmt,isa 0
        SPM       #0                    ; [CPU_ALU] 
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$317	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$317, DW_AT_low_pc(0x00)
	.dwattr $C$DW$317, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$312, DW_AT_TI_end_file("C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c")
	.dwattr $C$DW$312, DW_AT_TI_end_line(0x3e0)
	.dwattr $C$DW$312, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$312

	.sect	".text"
	.clink
	.global	_DMACH3AddrConfig32bit

$C$DW$318	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$318, DW_AT_name("DMACH3AddrConfig32bit")
	.dwattr $C$DW$318, DW_AT_low_pc(_DMACH3AddrConfig32bit)
	.dwattr $C$DW$318, DW_AT_high_pc(0x00)
	.dwattr $C$DW$318, DW_AT_TI_symbol_name("_DMACH3AddrConfig32bit")
	.dwattr $C$DW$318, DW_AT_external
	.dwattr $C$DW$318, DW_AT_TI_begin_file("C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c")
	.dwattr $C$DW$318, DW_AT_TI_begin_line(0x3e5)
	.dwattr $C$DW$318, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$318, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 999,column 1,is_stmt,address _DMACH3AddrConfig32bit,isa 0

	.dwfde $C$DW$CIE, _DMACH3AddrConfig32bit
$C$DW$319	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$319, DW_AT_name("DMA_Dest")
	.dwattr $C$DW$319, DW_AT_TI_symbol_name("_DMA_Dest")
	.dwattr $C$DW$319, DW_AT_type(*$C$DW$T$137)
	.dwattr $C$DW$319, DW_AT_location[DW_OP_reg12]

$C$DW$320	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$320, DW_AT_name("DMA_Source")
	.dwattr $C$DW$320, DW_AT_TI_symbol_name("_DMA_Source")
	.dwattr $C$DW$320, DW_AT_type(*$C$DW$T$137)
	.dwattr $C$DW$320, DW_AT_location[DW_OP_reg14]

;----------------------------------------------------------------------
; 997 | void DMACH3AddrConfig32bit(volatile Uint32 *DMA_Dest,                  
; 998 | volatile Uint32 *DMA_Source)                                           
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _DMACH3AddrConfig32bit        FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  4 Auto,  0 SOE     *
;***************************************************************

_DMACH3AddrConfig32bit:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
$C$DW$321	.dwtag  DW_TAG_variable
	.dwattr $C$DW$321, DW_AT_name("DMA_Dest")
	.dwattr $C$DW$321, DW_AT_TI_symbol_name("_DMA_Dest")
	.dwattr $C$DW$321, DW_AT_type(*$C$DW$T$137)
	.dwattr $C$DW$321, DW_AT_location[DW_OP_breg20 -2]

$C$DW$322	.dwtag  DW_TAG_variable
	.dwattr $C$DW$322, DW_AT_name("DMA_Source")
	.dwattr $C$DW$322, DW_AT_TI_symbol_name("_DMA_Source")
	.dwattr $C$DW$322, DW_AT_type(*$C$DW$T$137)
	.dwattr $C$DW$322, DW_AT_location[DW_OP_breg20 -4]

        MOVL      *-SP[4],XAR5          ; [CPU_ALU] |999| 
        MOVL      *-SP[2],XAR4          ; [CPU_ALU] |999| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 1000,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 1000 | EALLOW;                                                                
; 1002 | //                                                                     
; 1003 | // Set up SOURCE address:                                              
; 1004 | //                                                                     
;----------------------------------------------------------------------
 EALLOW
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 1005,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 1005 | DmaRegs.CH3.SRC_BEG_ADDR_SHADOW = (Uint32)DMA_Source; // Point to begin
;     | ning                                                                   
; 1006 |                                                       // of source buff
;     | er                                                                     
;----------------------------------------------------------------------
        MOVW      DP,#_DmaRegs+112      ; [CPU_ARAU] 
        MOVL      ACC,*-SP[4]           ; [CPU_ALU] |1005| 
        MOVL      @$BLOCKED(_DmaRegs)+112,ACC ; [CPU_ALU] |1005| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 1007,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 1007 | DmaRegs.CH3.SRC_ADDR_SHADOW =     (Uint32)DMA_Source;                  
; 1009 | //                                                                     
; 1010 | // Set up DESTINATION address:                                         
; 1011 | //                                                                     
;----------------------------------------------------------------------
        MOVL      @$BLOCKED(_DmaRegs)+114,ACC ; [CPU_ALU] |1007| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 1012,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 1012 | DmaRegs.CH3.DST_BEG_ADDR_SHADOW = (Uint32)DMA_Dest;  // Point to beginn
;     | ing                                                                    
; 1013 |                                                      // of destination 
; 1014 |                                                      // buffer.        
;----------------------------------------------------------------------
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |1012| 
        MOVL      @$BLOCKED(_DmaRegs)+120,ACC ; [CPU_ALU] |1012| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 1015,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 1015 | DmaRegs.CH3.DST_ADDR_SHADOW =     (Uint32)DMA_Dest;                    
;----------------------------------------------------------------------
        MOVL      @$BLOCKED(_DmaRegs)+122,ACC ; [CPU_ALU] |1015| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 1017,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 1017 | EDIS;                                                                  
;----------------------------------------------------------------------
 EDIS
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 1018,column 1,is_stmt,isa 0
        SPM       #0                    ; [CPU_ALU] 
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$323	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$323, DW_AT_low_pc(0x00)
	.dwattr $C$DW$323, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$318, DW_AT_TI_end_file("C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c")
	.dwattr $C$DW$318, DW_AT_TI_end_line(0x3fa)
	.dwattr $C$DW$318, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$318

	.sect	".text"
	.clink
	.global	_DMACH4AddrConfig32bit

$C$DW$324	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$324, DW_AT_name("DMACH4AddrConfig32bit")
	.dwattr $C$DW$324, DW_AT_low_pc(_DMACH4AddrConfig32bit)
	.dwattr $C$DW$324, DW_AT_high_pc(0x00)
	.dwattr $C$DW$324, DW_AT_TI_symbol_name("_DMACH4AddrConfig32bit")
	.dwattr $C$DW$324, DW_AT_external
	.dwattr $C$DW$324, DW_AT_TI_begin_file("C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c")
	.dwattr $C$DW$324, DW_AT_TI_begin_line(0x3ff)
	.dwattr $C$DW$324, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$324, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 1025,column 1,is_stmt,address _DMACH4AddrConfig32bit,isa 0

	.dwfde $C$DW$CIE, _DMACH4AddrConfig32bit
$C$DW$325	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$325, DW_AT_name("DMA_Dest")
	.dwattr $C$DW$325, DW_AT_TI_symbol_name("_DMA_Dest")
	.dwattr $C$DW$325, DW_AT_type(*$C$DW$T$137)
	.dwattr $C$DW$325, DW_AT_location[DW_OP_reg12]

$C$DW$326	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$326, DW_AT_name("DMA_Source")
	.dwattr $C$DW$326, DW_AT_TI_symbol_name("_DMA_Source")
	.dwattr $C$DW$326, DW_AT_type(*$C$DW$T$137)
	.dwattr $C$DW$326, DW_AT_location[DW_OP_reg14]

;----------------------------------------------------------------------
; 1023 | void DMACH4AddrConfig32bit(volatile Uint32 *DMA_Dest,                  
; 1024 | volatile Uint32 *DMA_Source)                                           
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _DMACH4AddrConfig32bit        FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  4 Auto,  0 SOE     *
;***************************************************************

_DMACH4AddrConfig32bit:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
$C$DW$327	.dwtag  DW_TAG_variable
	.dwattr $C$DW$327, DW_AT_name("DMA_Dest")
	.dwattr $C$DW$327, DW_AT_TI_symbol_name("_DMA_Dest")
	.dwattr $C$DW$327, DW_AT_type(*$C$DW$T$137)
	.dwattr $C$DW$327, DW_AT_location[DW_OP_breg20 -2]

$C$DW$328	.dwtag  DW_TAG_variable
	.dwattr $C$DW$328, DW_AT_name("DMA_Source")
	.dwattr $C$DW$328, DW_AT_TI_symbol_name("_DMA_Source")
	.dwattr $C$DW$328, DW_AT_type(*$C$DW$T$137)
	.dwattr $C$DW$328, DW_AT_location[DW_OP_breg20 -4]

        MOVL      *-SP[4],XAR5          ; [CPU_ALU] |1025| 
        MOVL      *-SP[2],XAR4          ; [CPU_ALU] |1025| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 1026,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 1026 | EALLOW;                                                                
; 1028 | //                                                                     
; 1029 | // Set up SOURCE address:                                              
; 1030 | //                                                                     
;----------------------------------------------------------------------
 EALLOW
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 1031,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 1031 | DmaRegs.CH4.SRC_BEG_ADDR_SHADOW = (Uint32)DMA_Source; // Point to begin
;     | ning                                                                   
; 1032 |                                                       // of source buff
;     | er                                                                     
;----------------------------------------------------------------------
        MOVW      DP,#_DmaRegs+144      ; [CPU_ARAU] 
        MOVL      ACC,*-SP[4]           ; [CPU_ALU] |1031| 
        MOVL      @$BLOCKED(_DmaRegs)+144,ACC ; [CPU_ALU] |1031| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 1033,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 1033 | DmaRegs.CH4.SRC_ADDR_SHADOW =     (Uint32)DMA_Source;                  
; 1035 | //                                                                     
; 1036 | // Set up DESTINATION address:                                         
; 1037 | //                                                                     
;----------------------------------------------------------------------
        MOVL      @$BLOCKED(_DmaRegs)+146,ACC ; [CPU_ALU] |1033| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 1038,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 1038 | DmaRegs.CH4.DST_BEG_ADDR_SHADOW = (Uint32)DMA_Dest;   // Point to begin
;     | ning                                                                   
; 1039 |                                                       // of destination
; 1040 |                                                       // buffer        
;----------------------------------------------------------------------
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |1038| 
        MOVL      @$BLOCKED(_DmaRegs)+152,ACC ; [CPU_ALU] |1038| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 1041,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 1041 | DmaRegs.CH4.DST_ADDR_SHADOW =     (Uint32)DMA_Dest;                    
;----------------------------------------------------------------------
        MOVL      @$BLOCKED(_DmaRegs)+154,ACC ; [CPU_ALU] |1041| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 1043,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 1043 | EDIS;                                                                  
;----------------------------------------------------------------------
 EDIS
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 1044,column 1,is_stmt,isa 0
        SPM       #0                    ; [CPU_ALU] 
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$329	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$329, DW_AT_low_pc(0x00)
	.dwattr $C$DW$329, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$324, DW_AT_TI_end_file("C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c")
	.dwattr $C$DW$324, DW_AT_TI_end_line(0x414)
	.dwattr $C$DW$324, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$324

	.sect	".text"
	.clink
	.global	_DMACH5AddrConfig32bit

$C$DW$330	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$330, DW_AT_name("DMACH5AddrConfig32bit")
	.dwattr $C$DW$330, DW_AT_low_pc(_DMACH5AddrConfig32bit)
	.dwattr $C$DW$330, DW_AT_high_pc(0x00)
	.dwattr $C$DW$330, DW_AT_TI_symbol_name("_DMACH5AddrConfig32bit")
	.dwattr $C$DW$330, DW_AT_external
	.dwattr $C$DW$330, DW_AT_TI_begin_file("C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c")
	.dwattr $C$DW$330, DW_AT_TI_begin_line(0x419)
	.dwattr $C$DW$330, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$330, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 1051,column 1,is_stmt,address _DMACH5AddrConfig32bit,isa 0

	.dwfde $C$DW$CIE, _DMACH5AddrConfig32bit
$C$DW$331	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$331, DW_AT_name("DMA_Dest")
	.dwattr $C$DW$331, DW_AT_TI_symbol_name("_DMA_Dest")
	.dwattr $C$DW$331, DW_AT_type(*$C$DW$T$137)
	.dwattr $C$DW$331, DW_AT_location[DW_OP_reg12]

$C$DW$332	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$332, DW_AT_name("DMA_Source")
	.dwattr $C$DW$332, DW_AT_TI_symbol_name("_DMA_Source")
	.dwattr $C$DW$332, DW_AT_type(*$C$DW$T$137)
	.dwattr $C$DW$332, DW_AT_location[DW_OP_reg14]

;----------------------------------------------------------------------
; 1049 | void DMACH5AddrConfig32bit(volatile Uint32 *DMA_Dest,                  
; 1050 | volatile Uint32 *DMA_Source)                                           
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _DMACH5AddrConfig32bit        FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  4 Auto,  0 SOE     *
;***************************************************************

_DMACH5AddrConfig32bit:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
$C$DW$333	.dwtag  DW_TAG_variable
	.dwattr $C$DW$333, DW_AT_name("DMA_Dest")
	.dwattr $C$DW$333, DW_AT_TI_symbol_name("_DMA_Dest")
	.dwattr $C$DW$333, DW_AT_type(*$C$DW$T$137)
	.dwattr $C$DW$333, DW_AT_location[DW_OP_breg20 -2]

$C$DW$334	.dwtag  DW_TAG_variable
	.dwattr $C$DW$334, DW_AT_name("DMA_Source")
	.dwattr $C$DW$334, DW_AT_TI_symbol_name("_DMA_Source")
	.dwattr $C$DW$334, DW_AT_type(*$C$DW$T$137)
	.dwattr $C$DW$334, DW_AT_location[DW_OP_breg20 -4]

        MOVL      *-SP[4],XAR5          ; [CPU_ALU] |1051| 
        MOVL      *-SP[2],XAR4          ; [CPU_ALU] |1051| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 1052,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 1052 | EALLOW;                                                                
; 1054 | //                                                                     
; 1055 | // Set up SOURCE address:                                              
; 1056 | //                                                                     
;----------------------------------------------------------------------
 EALLOW
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 1057,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 1057 | DmaRegs.CH5.SRC_BEG_ADDR_SHADOW = (Uint32)DMA_Source; // Point to begin
;     | ning                                                                   
; 1058 |                                                       // of source buff
;     | er                                                                     
;----------------------------------------------------------------------
        MOVW      DP,#_DmaRegs+176      ; [CPU_ARAU] 
        MOVL      ACC,*-SP[4]           ; [CPU_ALU] |1057| 
        MOVL      @$BLOCKED(_DmaRegs)+176,ACC ; [CPU_ALU] |1057| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 1059,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 1059 | DmaRegs.CH5.SRC_ADDR_SHADOW =     (Uint32)DMA_Source;                  
; 1061 | //                                                                     
; 1062 | // Set up DESTINATION address:                                         
; 1063 | //                                                                     
;----------------------------------------------------------------------
        MOVL      @$BLOCKED(_DmaRegs)+178,ACC ; [CPU_ALU] |1059| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 1064,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 1064 | DmaRegs.CH5.DST_BEG_ADDR_SHADOW = (Uint32)DMA_Dest;   // Point to begin
;     | ning                                                                   
; 1065 |                                                       // of destination
; 1066 |                                                       // buffer        
;----------------------------------------------------------------------
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |1064| 
        MOVL      @$BLOCKED(_DmaRegs)+184,ACC ; [CPU_ALU] |1064| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 1067,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 1067 | DmaRegs.CH5.DST_ADDR_SHADOW =     (Uint32)DMA_Dest;                    
;----------------------------------------------------------------------
        MOVL      @$BLOCKED(_DmaRegs)+186,ACC ; [CPU_ALU] |1067| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 1069,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 1069 | EDIS;                                                                  
;----------------------------------------------------------------------
 EDIS
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 1070,column 1,is_stmt,isa 0
        SPM       #0                    ; [CPU_ALU] 
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$335	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$335, DW_AT_low_pc(0x00)
	.dwattr $C$DW$335, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$330, DW_AT_TI_end_file("C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c")
	.dwattr $C$DW$330, DW_AT_TI_end_line(0x42e)
	.dwattr $C$DW$330, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$330

	.sect	".text"
	.clink
	.global	_DMACH6AddrConfig32bit

$C$DW$336	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$336, DW_AT_name("DMACH6AddrConfig32bit")
	.dwattr $C$DW$336, DW_AT_low_pc(_DMACH6AddrConfig32bit)
	.dwattr $C$DW$336, DW_AT_high_pc(0x00)
	.dwattr $C$DW$336, DW_AT_TI_symbol_name("_DMACH6AddrConfig32bit")
	.dwattr $C$DW$336, DW_AT_external
	.dwattr $C$DW$336, DW_AT_TI_begin_file("C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c")
	.dwattr $C$DW$336, DW_AT_TI_begin_line(0x433)
	.dwattr $C$DW$336, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$336, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 1077,column 1,is_stmt,address _DMACH6AddrConfig32bit,isa 0

	.dwfde $C$DW$CIE, _DMACH6AddrConfig32bit
$C$DW$337	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$337, DW_AT_name("DMA_Dest")
	.dwattr $C$DW$337, DW_AT_TI_symbol_name("_DMA_Dest")
	.dwattr $C$DW$337, DW_AT_type(*$C$DW$T$137)
	.dwattr $C$DW$337, DW_AT_location[DW_OP_reg12]

$C$DW$338	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$338, DW_AT_name("DMA_Source")
	.dwattr $C$DW$338, DW_AT_TI_symbol_name("_DMA_Source")
	.dwattr $C$DW$338, DW_AT_type(*$C$DW$T$137)
	.dwattr $C$DW$338, DW_AT_location[DW_OP_reg14]

;----------------------------------------------------------------------
; 1075 | void DMACH6AddrConfig32bit(volatile Uint32 *DMA_Dest,                  
; 1076 | volatile Uint32 *DMA_Source)                                           
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _DMACH6AddrConfig32bit        FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  4 Auto,  0 SOE     *
;***************************************************************

_DMACH6AddrConfig32bit:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
$C$DW$339	.dwtag  DW_TAG_variable
	.dwattr $C$DW$339, DW_AT_name("DMA_Dest")
	.dwattr $C$DW$339, DW_AT_TI_symbol_name("_DMA_Dest")
	.dwattr $C$DW$339, DW_AT_type(*$C$DW$T$137)
	.dwattr $C$DW$339, DW_AT_location[DW_OP_breg20 -2]

$C$DW$340	.dwtag  DW_TAG_variable
	.dwattr $C$DW$340, DW_AT_name("DMA_Source")
	.dwattr $C$DW$340, DW_AT_TI_symbol_name("_DMA_Source")
	.dwattr $C$DW$340, DW_AT_type(*$C$DW$T$137)
	.dwattr $C$DW$340, DW_AT_location[DW_OP_breg20 -4]

        MOVL      *-SP[4],XAR5          ; [CPU_ALU] |1077| 
        MOVL      *-SP[2],XAR4          ; [CPU_ALU] |1077| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 1078,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 1078 | EALLOW;                                                                
; 1080 | //                                                                     
; 1081 | // Set up SOURCE address:                                              
; 1082 | //                                                                     
;----------------------------------------------------------------------
 EALLOW
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 1083,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 1083 | DmaRegs.CH6.SRC_BEG_ADDR_SHADOW = (Uint32)DMA_Source; // Point to begin
;     | ning                                                                   
; 1084 |                                                       // of source buff
;     | er                                                                     
;----------------------------------------------------------------------
        MOVW      DP,#_DmaRegs+208      ; [CPU_ARAU] 
        MOVL      ACC,*-SP[4]           ; [CPU_ALU] |1083| 
        MOVL      @$BLOCKED(_DmaRegs)+208,ACC ; [CPU_ALU] |1083| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 1085,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 1085 | DmaRegs.CH6.SRC_ADDR_SHADOW =     (Uint32)DMA_Source;                  
; 1087 | //                                                                     
; 1088 | // Set up DESTINATION address:                                         
; 1089 | //                                                                     
;----------------------------------------------------------------------
        MOVL      @$BLOCKED(_DmaRegs)+210,ACC ; [CPU_ALU] |1085| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 1090,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 1090 | DmaRegs.CH6.DST_BEG_ADDR_SHADOW = (Uint32)DMA_Dest;   // Point to begin
;     | ning                                                                   
; 1091 |                                                       // of destination
; 1092 |                                                       // buffer        
;----------------------------------------------------------------------
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |1090| 
        MOVL      @$BLOCKED(_DmaRegs)+216,ACC ; [CPU_ALU] |1090| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 1093,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 1093 | DmaRegs.CH6.DST_ADDR_SHADOW =     (Uint32)DMA_Dest;                    
;----------------------------------------------------------------------
        MOVL      @$BLOCKED(_DmaRegs)+218,ACC ; [CPU_ALU] |1093| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 1095,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 1095 | EDIS;                                                                  
;----------------------------------------------------------------------
 EDIS
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c",line 1096,column 1,is_stmt,isa 0
        SPM       #0                    ; [CPU_ALU] 
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$341	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$341, DW_AT_low_pc(0x00)
	.dwattr $C$DW$341, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$336, DW_AT_TI_end_file("C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Dma.c")
	.dwattr $C$DW$336, DW_AT_TI_end_line(0x448)
	.dwattr $C$DW$336, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$336

;**************************************************************
;* UNDEFINED EXTERNAL REFERENCES                              *
;**************************************************************
	.global	_PieCtrlRegs
	.global	_DmaClaSrcSelRegs
	.global	_DmaRegs

;***************************************************************
;* TYPE INFORMATION                                            *
;***************************************************************

$C$DW$T$20	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$20, DW_AT_name("BURST_COUNT_BITS")
	.dwattr $C$DW$T$20, DW_AT_byte_size(0x01)
$C$DW$342	.dwtag  DW_TAG_member
	.dwattr $C$DW$342, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$342, DW_AT_name("BURSTCOUNT")
	.dwattr $C$DW$342, DW_AT_TI_symbol_name("_BURSTCOUNT")
	.dwattr $C$DW$342, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$342, DW_AT_bit_size(0x05)
	.dwattr $C$DW$342, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$342, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$343	.dwtag  DW_TAG_member
	.dwattr $C$DW$343, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$343, DW_AT_name("rsvd1")
	.dwattr $C$DW$343, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$343, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$343, DW_AT_bit_size(0x0b)
	.dwattr $C$DW$343, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$343, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$20


$C$DW$T$21	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$21, DW_AT_name("BURST_COUNT_REG")
	.dwattr $C$DW$T$21, DW_AT_byte_size(0x01)
$C$DW$344	.dwtag  DW_TAG_member
	.dwattr $C$DW$344, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$344, DW_AT_name("all")
	.dwattr $C$DW$344, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$344, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$344, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$345	.dwtag  DW_TAG_member
	.dwattr $C$DW$345, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$345, DW_AT_name("bit")
	.dwattr $C$DW$345, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$345, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$345, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$21


$C$DW$T$22	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$22, DW_AT_name("BURST_SIZE_BITS")
	.dwattr $C$DW$T$22, DW_AT_byte_size(0x01)
$C$DW$346	.dwtag  DW_TAG_member
	.dwattr $C$DW$346, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$346, DW_AT_name("BURSTSIZE")
	.dwattr $C$DW$346, DW_AT_TI_symbol_name("_BURSTSIZE")
	.dwattr $C$DW$346, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$346, DW_AT_bit_size(0x05)
	.dwattr $C$DW$346, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$346, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$347	.dwtag  DW_TAG_member
	.dwattr $C$DW$347, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$347, DW_AT_name("rsvd1")
	.dwattr $C$DW$347, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$347, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$347, DW_AT_bit_size(0x0b)
	.dwattr $C$DW$347, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$347, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$22


$C$DW$T$23	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$23, DW_AT_name("BURST_SIZE_REG")
	.dwattr $C$DW$T$23, DW_AT_byte_size(0x01)
$C$DW$348	.dwtag  DW_TAG_member
	.dwattr $C$DW$348, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$348, DW_AT_name("all")
	.dwattr $C$DW$348, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$348, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$348, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$349	.dwtag  DW_TAG_member
	.dwattr $C$DW$349, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$349, DW_AT_name("bit")
	.dwattr $C$DW$349, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$349, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$349, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$23


$C$DW$T$26	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$26, DW_AT_name("CH_REGS")
	.dwattr $C$DW$T$26, DW_AT_byte_size(0x20)
$C$DW$350	.dwtag  DW_TAG_member
	.dwattr $C$DW$350, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$350, DW_AT_name("MODE")
	.dwattr $C$DW$350, DW_AT_TI_symbol_name("_MODE")
	.dwattr $C$DW$350, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$350, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$351	.dwtag  DW_TAG_member
	.dwattr $C$DW$351, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$351, DW_AT_name("CONTROL")
	.dwattr $C$DW$351, DW_AT_TI_symbol_name("_CONTROL")
	.dwattr $C$DW$351, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$351, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$352	.dwtag  DW_TAG_member
	.dwattr $C$DW$352, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$352, DW_AT_name("BURST_SIZE")
	.dwattr $C$DW$352, DW_AT_TI_symbol_name("_BURST_SIZE")
	.dwattr $C$DW$352, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$352, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$353	.dwtag  DW_TAG_member
	.dwattr $C$DW$353, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$353, DW_AT_name("BURST_COUNT")
	.dwattr $C$DW$353, DW_AT_TI_symbol_name("_BURST_COUNT")
	.dwattr $C$DW$353, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$353, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$354	.dwtag  DW_TAG_member
	.dwattr $C$DW$354, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$354, DW_AT_name("SRC_BURST_STEP")
	.dwattr $C$DW$354, DW_AT_TI_symbol_name("_SRC_BURST_STEP")
	.dwattr $C$DW$354, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$354, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$355	.dwtag  DW_TAG_member
	.dwattr $C$DW$355, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$355, DW_AT_name("DST_BURST_STEP")
	.dwattr $C$DW$355, DW_AT_TI_symbol_name("_DST_BURST_STEP")
	.dwattr $C$DW$355, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$355, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$356	.dwtag  DW_TAG_member
	.dwattr $C$DW$356, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$356, DW_AT_name("TRANSFER_SIZE")
	.dwattr $C$DW$356, DW_AT_TI_symbol_name("_TRANSFER_SIZE")
	.dwattr $C$DW$356, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$356, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$357	.dwtag  DW_TAG_member
	.dwattr $C$DW$357, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$357, DW_AT_name("TRANSFER_COUNT")
	.dwattr $C$DW$357, DW_AT_TI_symbol_name("_TRANSFER_COUNT")
	.dwattr $C$DW$357, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr $C$DW$357, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$358	.dwtag  DW_TAG_member
	.dwattr $C$DW$358, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$358, DW_AT_name("SRC_TRANSFER_STEP")
	.dwattr $C$DW$358, DW_AT_TI_symbol_name("_SRC_TRANSFER_STEP")
	.dwattr $C$DW$358, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$358, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$359	.dwtag  DW_TAG_member
	.dwattr $C$DW$359, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$359, DW_AT_name("DST_TRANSFER_STEP")
	.dwattr $C$DW$359, DW_AT_TI_symbol_name("_DST_TRANSFER_STEP")
	.dwattr $C$DW$359, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr $C$DW$359, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$360	.dwtag  DW_TAG_member
	.dwattr $C$DW$360, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$360, DW_AT_name("SRC_WRAP_SIZE")
	.dwattr $C$DW$360, DW_AT_TI_symbol_name("_SRC_WRAP_SIZE")
	.dwattr $C$DW$360, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$360, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$361	.dwtag  DW_TAG_member
	.dwattr $C$DW$361, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$361, DW_AT_name("SRC_WRAP_COUNT")
	.dwattr $C$DW$361, DW_AT_TI_symbol_name("_SRC_WRAP_COUNT")
	.dwattr $C$DW$361, DW_AT_data_member_location[DW_OP_plus_uconst 0xb]
	.dwattr $C$DW$361, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$362	.dwtag  DW_TAG_member
	.dwattr $C$DW$362, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$362, DW_AT_name("SRC_WRAP_STEP")
	.dwattr $C$DW$362, DW_AT_TI_symbol_name("_SRC_WRAP_STEP")
	.dwattr $C$DW$362, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$362, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$363	.dwtag  DW_TAG_member
	.dwattr $C$DW$363, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$363, DW_AT_name("DST_WRAP_SIZE")
	.dwattr $C$DW$363, DW_AT_TI_symbol_name("_DST_WRAP_SIZE")
	.dwattr $C$DW$363, DW_AT_data_member_location[DW_OP_plus_uconst 0xd]
	.dwattr $C$DW$363, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$364	.dwtag  DW_TAG_member
	.dwattr $C$DW$364, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$364, DW_AT_name("DST_WRAP_COUNT")
	.dwattr $C$DW$364, DW_AT_TI_symbol_name("_DST_WRAP_COUNT")
	.dwattr $C$DW$364, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$364, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$365	.dwtag  DW_TAG_member
	.dwattr $C$DW$365, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$365, DW_AT_name("DST_WRAP_STEP")
	.dwattr $C$DW$365, DW_AT_TI_symbol_name("_DST_WRAP_STEP")
	.dwattr $C$DW$365, DW_AT_data_member_location[DW_OP_plus_uconst 0xf]
	.dwattr $C$DW$365, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$366	.dwtag  DW_TAG_member
	.dwattr $C$DW$366, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$366, DW_AT_name("SRC_BEG_ADDR_SHADOW")
	.dwattr $C$DW$366, DW_AT_TI_symbol_name("_SRC_BEG_ADDR_SHADOW")
	.dwattr $C$DW$366, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$366, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$367	.dwtag  DW_TAG_member
	.dwattr $C$DW$367, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$367, DW_AT_name("SRC_ADDR_SHADOW")
	.dwattr $C$DW$367, DW_AT_TI_symbol_name("_SRC_ADDR_SHADOW")
	.dwattr $C$DW$367, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr $C$DW$367, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$368	.dwtag  DW_TAG_member
	.dwattr $C$DW$368, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$368, DW_AT_name("SRC_BEG_ADDR_ACTIVE")
	.dwattr $C$DW$368, DW_AT_TI_symbol_name("_SRC_BEG_ADDR_ACTIVE")
	.dwattr $C$DW$368, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$368, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$369	.dwtag  DW_TAG_member
	.dwattr $C$DW$369, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$369, DW_AT_name("SRC_ADDR_ACTIVE")
	.dwattr $C$DW$369, DW_AT_TI_symbol_name("_SRC_ADDR_ACTIVE")
	.dwattr $C$DW$369, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr $C$DW$369, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$370	.dwtag  DW_TAG_member
	.dwattr $C$DW$370, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$370, DW_AT_name("DST_BEG_ADDR_SHADOW")
	.dwattr $C$DW$370, DW_AT_TI_symbol_name("_DST_BEG_ADDR_SHADOW")
	.dwattr $C$DW$370, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$370, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$371	.dwtag  DW_TAG_member
	.dwattr $C$DW$371, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$371, DW_AT_name("DST_ADDR_SHADOW")
	.dwattr $C$DW$371, DW_AT_TI_symbol_name("_DST_ADDR_SHADOW")
	.dwattr $C$DW$371, DW_AT_data_member_location[DW_OP_plus_uconst 0x1a]
	.dwattr $C$DW$371, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$372	.dwtag  DW_TAG_member
	.dwattr $C$DW$372, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$372, DW_AT_name("DST_BEG_ADDR_ACTIVE")
	.dwattr $C$DW$372, DW_AT_TI_symbol_name("_DST_BEG_ADDR_ACTIVE")
	.dwattr $C$DW$372, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr $C$DW$372, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$373	.dwtag  DW_TAG_member
	.dwattr $C$DW$373, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$373, DW_AT_name("DST_ADDR_ACTIVE")
	.dwattr $C$DW$373, DW_AT_TI_symbol_name("_DST_ADDR_ACTIVE")
	.dwattr $C$DW$373, DW_AT_data_member_location[DW_OP_plus_uconst 0x1e]
	.dwattr $C$DW$373, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$26


$C$DW$T$27	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$27, DW_AT_name("CLA1TASKSRCSEL1_BITS")
	.dwattr $C$DW$T$27, DW_AT_byte_size(0x02)
$C$DW$374	.dwtag  DW_TAG_member
	.dwattr $C$DW$374, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$374, DW_AT_name("TASK1")
	.dwattr $C$DW$374, DW_AT_TI_symbol_name("_TASK1")
	.dwattr $C$DW$374, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$374, DW_AT_bit_size(0x08)
	.dwattr $C$DW$374, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$374, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$375	.dwtag  DW_TAG_member
	.dwattr $C$DW$375, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$375, DW_AT_name("TASK2")
	.dwattr $C$DW$375, DW_AT_TI_symbol_name("_TASK2")
	.dwattr $C$DW$375, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$375, DW_AT_bit_size(0x08)
	.dwattr $C$DW$375, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$375, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$376	.dwtag  DW_TAG_member
	.dwattr $C$DW$376, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$376, DW_AT_name("TASK3")
	.dwattr $C$DW$376, DW_AT_TI_symbol_name("_TASK3")
	.dwattr $C$DW$376, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$376, DW_AT_bit_size(0x08)
	.dwattr $C$DW$376, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$376, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$377	.dwtag  DW_TAG_member
	.dwattr $C$DW$377, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$377, DW_AT_name("TASK4")
	.dwattr $C$DW$377, DW_AT_TI_symbol_name("_TASK4")
	.dwattr $C$DW$377, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$377, DW_AT_bit_size(0x08)
	.dwattr $C$DW$377, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$377, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$27


$C$DW$T$28	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$28, DW_AT_name("CLA1TASKSRCSEL1_REG")
	.dwattr $C$DW$T$28, DW_AT_byte_size(0x02)
$C$DW$378	.dwtag  DW_TAG_member
	.dwattr $C$DW$378, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$378, DW_AT_name("all")
	.dwattr $C$DW$378, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$378, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$378, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$379	.dwtag  DW_TAG_member
	.dwattr $C$DW$379, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$379, DW_AT_name("bit")
	.dwattr $C$DW$379, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$379, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$379, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$28


$C$DW$T$29	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$29, DW_AT_name("CLA1TASKSRCSEL2_BITS")
	.dwattr $C$DW$T$29, DW_AT_byte_size(0x02)
$C$DW$380	.dwtag  DW_TAG_member
	.dwattr $C$DW$380, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$380, DW_AT_name("TASK5")
	.dwattr $C$DW$380, DW_AT_TI_symbol_name("_TASK5")
	.dwattr $C$DW$380, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$380, DW_AT_bit_size(0x08)
	.dwattr $C$DW$380, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$380, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$381	.dwtag  DW_TAG_member
	.dwattr $C$DW$381, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$381, DW_AT_name("TASK6")
	.dwattr $C$DW$381, DW_AT_TI_symbol_name("_TASK6")
	.dwattr $C$DW$381, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$381, DW_AT_bit_size(0x08)
	.dwattr $C$DW$381, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$381, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$382	.dwtag  DW_TAG_member
	.dwattr $C$DW$382, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$382, DW_AT_name("TASK7")
	.dwattr $C$DW$382, DW_AT_TI_symbol_name("_TASK7")
	.dwattr $C$DW$382, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$382, DW_AT_bit_size(0x08)
	.dwattr $C$DW$382, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$382, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$383	.dwtag  DW_TAG_member
	.dwattr $C$DW$383, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$383, DW_AT_name("TASK8")
	.dwattr $C$DW$383, DW_AT_TI_symbol_name("_TASK8")
	.dwattr $C$DW$383, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$383, DW_AT_bit_size(0x08)
	.dwattr $C$DW$383, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$383, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$29


$C$DW$T$30	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$30, DW_AT_name("CLA1TASKSRCSEL2_REG")
	.dwattr $C$DW$T$30, DW_AT_byte_size(0x02)
$C$DW$384	.dwtag  DW_TAG_member
	.dwattr $C$DW$384, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$384, DW_AT_name("all")
	.dwattr $C$DW$384, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$384, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$384, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$385	.dwtag  DW_TAG_member
	.dwattr $C$DW$385, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$385, DW_AT_name("bit")
	.dwattr $C$DW$385, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$385, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$385, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$30


$C$DW$T$31	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$31, DW_AT_name("CLA1TASKSRCSELLOCK_BITS")
	.dwattr $C$DW$T$31, DW_AT_byte_size(0x02)
$C$DW$386	.dwtag  DW_TAG_member
	.dwattr $C$DW$386, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$386, DW_AT_name("CLA1TASKSRCSEL1")
	.dwattr $C$DW$386, DW_AT_TI_symbol_name("_CLA1TASKSRCSEL1")
	.dwattr $C$DW$386, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$386, DW_AT_bit_size(0x01)
	.dwattr $C$DW$386, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$386, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$387	.dwtag  DW_TAG_member
	.dwattr $C$DW$387, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$387, DW_AT_name("CLA1TASKSRCSEL2")
	.dwattr $C$DW$387, DW_AT_TI_symbol_name("_CLA1TASKSRCSEL2")
	.dwattr $C$DW$387, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$387, DW_AT_bit_size(0x01)
	.dwattr $C$DW$387, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$387, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$388	.dwtag  DW_TAG_member
	.dwattr $C$DW$388, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$388, DW_AT_name("rsvd1")
	.dwattr $C$DW$388, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$388, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$388, DW_AT_bit_size(0x0e)
	.dwattr $C$DW$388, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$388, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$389	.dwtag  DW_TAG_member
	.dwattr $C$DW$389, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$389, DW_AT_name("rsvd2")
	.dwattr $C$DW$389, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$389, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$389, DW_AT_bit_size(0x10)
	.dwattr $C$DW$389, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$389, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$31


$C$DW$T$32	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$32, DW_AT_name("CLA1TASKSRCSELLOCK_REG")
	.dwattr $C$DW$T$32, DW_AT_byte_size(0x02)
$C$DW$390	.dwtag  DW_TAG_member
	.dwattr $C$DW$390, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$390, DW_AT_name("all")
	.dwattr $C$DW$390, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$390, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$390, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$391	.dwtag  DW_TAG_member
	.dwattr $C$DW$391, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$391, DW_AT_name("bit")
	.dwattr $C$DW$391, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$391, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$391, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$32


$C$DW$T$33	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$33, DW_AT_name("CONTROL_BITS")
	.dwattr $C$DW$T$33, DW_AT_byte_size(0x01)
$C$DW$392	.dwtag  DW_TAG_member
	.dwattr $C$DW$392, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$392, DW_AT_name("RUN")
	.dwattr $C$DW$392, DW_AT_TI_symbol_name("_RUN")
	.dwattr $C$DW$392, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$392, DW_AT_bit_size(0x01)
	.dwattr $C$DW$392, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$392, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$393	.dwtag  DW_TAG_member
	.dwattr $C$DW$393, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$393, DW_AT_name("HALT")
	.dwattr $C$DW$393, DW_AT_TI_symbol_name("_HALT")
	.dwattr $C$DW$393, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$393, DW_AT_bit_size(0x01)
	.dwattr $C$DW$393, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$393, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$394	.dwtag  DW_TAG_member
	.dwattr $C$DW$394, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$394, DW_AT_name("SOFTRESET")
	.dwattr $C$DW$394, DW_AT_TI_symbol_name("_SOFTRESET")
	.dwattr $C$DW$394, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$394, DW_AT_bit_size(0x01)
	.dwattr $C$DW$394, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$394, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$395	.dwtag  DW_TAG_member
	.dwattr $C$DW$395, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$395, DW_AT_name("PERINTFRC")
	.dwattr $C$DW$395, DW_AT_TI_symbol_name("_PERINTFRC")
	.dwattr $C$DW$395, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$395, DW_AT_bit_size(0x01)
	.dwattr $C$DW$395, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$395, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$396	.dwtag  DW_TAG_member
	.dwattr $C$DW$396, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$396, DW_AT_name("PERINTCLR")
	.dwattr $C$DW$396, DW_AT_TI_symbol_name("_PERINTCLR")
	.dwattr $C$DW$396, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$396, DW_AT_bit_size(0x01)
	.dwattr $C$DW$396, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$396, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$397	.dwtag  DW_TAG_member
	.dwattr $C$DW$397, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$397, DW_AT_name("rsvd1")
	.dwattr $C$DW$397, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$397, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$397, DW_AT_bit_size(0x01)
	.dwattr $C$DW$397, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$397, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$398	.dwtag  DW_TAG_member
	.dwattr $C$DW$398, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$398, DW_AT_name("rsvd2")
	.dwattr $C$DW$398, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$398, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$398, DW_AT_bit_size(0x01)
	.dwattr $C$DW$398, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$398, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$399	.dwtag  DW_TAG_member
	.dwattr $C$DW$399, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$399, DW_AT_name("ERRCLR")
	.dwattr $C$DW$399, DW_AT_TI_symbol_name("_ERRCLR")
	.dwattr $C$DW$399, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$399, DW_AT_bit_size(0x01)
	.dwattr $C$DW$399, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$399, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$400	.dwtag  DW_TAG_member
	.dwattr $C$DW$400, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$400, DW_AT_name("PERINTFLG")
	.dwattr $C$DW$400, DW_AT_TI_symbol_name("_PERINTFLG")
	.dwattr $C$DW$400, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$400, DW_AT_bit_size(0x01)
	.dwattr $C$DW$400, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$400, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$401	.dwtag  DW_TAG_member
	.dwattr $C$DW$401, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$401, DW_AT_name("rsvd3")
	.dwattr $C$DW$401, DW_AT_TI_symbol_name("_rsvd3")
	.dwattr $C$DW$401, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$401, DW_AT_bit_size(0x01)
	.dwattr $C$DW$401, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$401, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$402	.dwtag  DW_TAG_member
	.dwattr $C$DW$402, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$402, DW_AT_name("rsvd4")
	.dwattr $C$DW$402, DW_AT_TI_symbol_name("_rsvd4")
	.dwattr $C$DW$402, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$402, DW_AT_bit_size(0x01)
	.dwattr $C$DW$402, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$402, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$403	.dwtag  DW_TAG_member
	.dwattr $C$DW$403, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$403, DW_AT_name("TRANSFERSTS")
	.dwattr $C$DW$403, DW_AT_TI_symbol_name("_TRANSFERSTS")
	.dwattr $C$DW$403, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$403, DW_AT_bit_size(0x01)
	.dwattr $C$DW$403, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$403, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$404	.dwtag  DW_TAG_member
	.dwattr $C$DW$404, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$404, DW_AT_name("BURSTSTS")
	.dwattr $C$DW$404, DW_AT_TI_symbol_name("_BURSTSTS")
	.dwattr $C$DW$404, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$404, DW_AT_bit_size(0x01)
	.dwattr $C$DW$404, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$404, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$405	.dwtag  DW_TAG_member
	.dwattr $C$DW$405, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$405, DW_AT_name("RUNSTS")
	.dwattr $C$DW$405, DW_AT_TI_symbol_name("_RUNSTS")
	.dwattr $C$DW$405, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$405, DW_AT_bit_size(0x01)
	.dwattr $C$DW$405, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$405, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$406	.dwtag  DW_TAG_member
	.dwattr $C$DW$406, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$406, DW_AT_name("OVRFLG")
	.dwattr $C$DW$406, DW_AT_TI_symbol_name("_OVRFLG")
	.dwattr $C$DW$406, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$406, DW_AT_bit_size(0x01)
	.dwattr $C$DW$406, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$406, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$407	.dwtag  DW_TAG_member
	.dwattr $C$DW$407, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$407, DW_AT_name("rsvd5")
	.dwattr $C$DW$407, DW_AT_TI_symbol_name("_rsvd5")
	.dwattr $C$DW$407, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$407, DW_AT_bit_size(0x01)
	.dwattr $C$DW$407, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$407, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$33


$C$DW$T$34	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$34, DW_AT_name("CONTROL_REG")
	.dwattr $C$DW$T$34, DW_AT_byte_size(0x01)
$C$DW$408	.dwtag  DW_TAG_member
	.dwattr $C$DW$408, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$408, DW_AT_name("all")
	.dwattr $C$DW$408, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$408, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$408, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$409	.dwtag  DW_TAG_member
	.dwattr $C$DW$409, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$409, DW_AT_name("bit")
	.dwattr $C$DW$409, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$409, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$409, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$34


$C$DW$T$35	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$35, DW_AT_name("DEBUGCTRL_BITS")
	.dwattr $C$DW$T$35, DW_AT_byte_size(0x01)
$C$DW$410	.dwtag  DW_TAG_member
	.dwattr $C$DW$410, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$410, DW_AT_name("rsvd1")
	.dwattr $C$DW$410, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$410, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$410, DW_AT_bit_size(0x0f)
	.dwattr $C$DW$410, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$410, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$411	.dwtag  DW_TAG_member
	.dwattr $C$DW$411, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$411, DW_AT_name("FREE")
	.dwattr $C$DW$411, DW_AT_TI_symbol_name("_FREE")
	.dwattr $C$DW$411, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$411, DW_AT_bit_size(0x01)
	.dwattr $C$DW$411, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$411, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$35


$C$DW$T$36	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$36, DW_AT_name("DEBUGCTRL_REG")
	.dwattr $C$DW$T$36, DW_AT_byte_size(0x01)
$C$DW$412	.dwtag  DW_TAG_member
	.dwattr $C$DW$412, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$412, DW_AT_name("all")
	.dwattr $C$DW$412, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$412, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$412, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$413	.dwtag  DW_TAG_member
	.dwattr $C$DW$413, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$413, DW_AT_name("bit")
	.dwattr $C$DW$413, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$413, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$413, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$36


$C$DW$T$37	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$37, DW_AT_name("DMACHSRCSEL1_BITS")
	.dwattr $C$DW$T$37, DW_AT_byte_size(0x02)
$C$DW$414	.dwtag  DW_TAG_member
	.dwattr $C$DW$414, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$414, DW_AT_name("CH1")
	.dwattr $C$DW$414, DW_AT_TI_symbol_name("_CH1")
	.dwattr $C$DW$414, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$414, DW_AT_bit_size(0x08)
	.dwattr $C$DW$414, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$414, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$415	.dwtag  DW_TAG_member
	.dwattr $C$DW$415, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$415, DW_AT_name("CH2")
	.dwattr $C$DW$415, DW_AT_TI_symbol_name("_CH2")
	.dwattr $C$DW$415, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$415, DW_AT_bit_size(0x08)
	.dwattr $C$DW$415, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$415, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$416	.dwtag  DW_TAG_member
	.dwattr $C$DW$416, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$416, DW_AT_name("CH3")
	.dwattr $C$DW$416, DW_AT_TI_symbol_name("_CH3")
	.dwattr $C$DW$416, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$416, DW_AT_bit_size(0x08)
	.dwattr $C$DW$416, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$416, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$417	.dwtag  DW_TAG_member
	.dwattr $C$DW$417, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$417, DW_AT_name("CH4")
	.dwattr $C$DW$417, DW_AT_TI_symbol_name("_CH4")
	.dwattr $C$DW$417, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$417, DW_AT_bit_size(0x08)
	.dwattr $C$DW$417, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$417, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$37


$C$DW$T$38	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$38, DW_AT_name("DMACHSRCSEL1_REG")
	.dwattr $C$DW$T$38, DW_AT_byte_size(0x02)
$C$DW$418	.dwtag  DW_TAG_member
	.dwattr $C$DW$418, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$418, DW_AT_name("all")
	.dwattr $C$DW$418, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$418, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$418, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$419	.dwtag  DW_TAG_member
	.dwattr $C$DW$419, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$419, DW_AT_name("bit")
	.dwattr $C$DW$419, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$419, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$419, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$38


$C$DW$T$39	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$39, DW_AT_name("DMACHSRCSEL2_BITS")
	.dwattr $C$DW$T$39, DW_AT_byte_size(0x02)
$C$DW$420	.dwtag  DW_TAG_member
	.dwattr $C$DW$420, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$420, DW_AT_name("CH5")
	.dwattr $C$DW$420, DW_AT_TI_symbol_name("_CH5")
	.dwattr $C$DW$420, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$420, DW_AT_bit_size(0x08)
	.dwattr $C$DW$420, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$420, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$421	.dwtag  DW_TAG_member
	.dwattr $C$DW$421, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$421, DW_AT_name("CH6")
	.dwattr $C$DW$421, DW_AT_TI_symbol_name("_CH6")
	.dwattr $C$DW$421, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$421, DW_AT_bit_size(0x08)
	.dwattr $C$DW$421, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$421, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$422	.dwtag  DW_TAG_member
	.dwattr $C$DW$422, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$422, DW_AT_name("rsvd1")
	.dwattr $C$DW$422, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$422, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$422, DW_AT_bit_size(0x10)
	.dwattr $C$DW$422, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$422, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$39


$C$DW$T$40	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$40, DW_AT_name("DMACHSRCSEL2_REG")
	.dwattr $C$DW$T$40, DW_AT_byte_size(0x02)
$C$DW$423	.dwtag  DW_TAG_member
	.dwattr $C$DW$423, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$423, DW_AT_name("all")
	.dwattr $C$DW$423, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$423, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$423, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$424	.dwtag  DW_TAG_member
	.dwattr $C$DW$424, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$424, DW_AT_name("bit")
	.dwattr $C$DW$424, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$424, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$424, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$40


$C$DW$T$41	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$41, DW_AT_name("DMACHSRCSELLOCK_BITS")
	.dwattr $C$DW$T$41, DW_AT_byte_size(0x02)
$C$DW$425	.dwtag  DW_TAG_member
	.dwattr $C$DW$425, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$425, DW_AT_name("DMACHSRCSEL1")
	.dwattr $C$DW$425, DW_AT_TI_symbol_name("_DMACHSRCSEL1")
	.dwattr $C$DW$425, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$425, DW_AT_bit_size(0x01)
	.dwattr $C$DW$425, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$425, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$426	.dwtag  DW_TAG_member
	.dwattr $C$DW$426, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$426, DW_AT_name("DMACHSRCSEL2")
	.dwattr $C$DW$426, DW_AT_TI_symbol_name("_DMACHSRCSEL2")
	.dwattr $C$DW$426, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$426, DW_AT_bit_size(0x01)
	.dwattr $C$DW$426, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$426, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$427	.dwtag  DW_TAG_member
	.dwattr $C$DW$427, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$427, DW_AT_name("rsvd1")
	.dwattr $C$DW$427, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$427, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$427, DW_AT_bit_size(0x0e)
	.dwattr $C$DW$427, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$427, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$428	.dwtag  DW_TAG_member
	.dwattr $C$DW$428, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$428, DW_AT_name("rsvd2")
	.dwattr $C$DW$428, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$428, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$428, DW_AT_bit_size(0x10)
	.dwattr $C$DW$428, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$428, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$41


$C$DW$T$42	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$42, DW_AT_name("DMACHSRCSELLOCK_REG")
	.dwattr $C$DW$T$42, DW_AT_byte_size(0x02)
$C$DW$429	.dwtag  DW_TAG_member
	.dwattr $C$DW$429, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$429, DW_AT_name("all")
	.dwattr $C$DW$429, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$429, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$429, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$430	.dwtag  DW_TAG_member
	.dwattr $C$DW$430, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$430, DW_AT_name("bit")
	.dwattr $C$DW$430, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$430, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$430, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$42


$C$DW$T$43	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$43, DW_AT_name("DMACTRL_BITS")
	.dwattr $C$DW$T$43, DW_AT_byte_size(0x01)
$C$DW$431	.dwtag  DW_TAG_member
	.dwattr $C$DW$431, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$431, DW_AT_name("HARDRESET")
	.dwattr $C$DW$431, DW_AT_TI_symbol_name("_HARDRESET")
	.dwattr $C$DW$431, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$431, DW_AT_bit_size(0x01)
	.dwattr $C$DW$431, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$431, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$432	.dwtag  DW_TAG_member
	.dwattr $C$DW$432, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$432, DW_AT_name("PRIORITYRESET")
	.dwattr $C$DW$432, DW_AT_TI_symbol_name("_PRIORITYRESET")
	.dwattr $C$DW$432, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$432, DW_AT_bit_size(0x01)
	.dwattr $C$DW$432, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$432, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$433	.dwtag  DW_TAG_member
	.dwattr $C$DW$433, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$433, DW_AT_name("rsvd1")
	.dwattr $C$DW$433, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$433, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$433, DW_AT_bit_size(0x0e)
	.dwattr $C$DW$433, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$433, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$43


$C$DW$T$44	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$44, DW_AT_name("DMACTRL_REG")
	.dwattr $C$DW$T$44, DW_AT_byte_size(0x01)
$C$DW$434	.dwtag  DW_TAG_member
	.dwattr $C$DW$434, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$434, DW_AT_name("all")
	.dwattr $C$DW$434, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$434, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$434, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$435	.dwtag  DW_TAG_member
	.dwattr $C$DW$435, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$435, DW_AT_name("bit")
	.dwattr $C$DW$435, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$435, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$435, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$44


$C$DW$T$47	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$47, DW_AT_name("DMA_CLA_SRC_SEL_REGS")
	.dwattr $C$DW$T$47, DW_AT_byte_size(0x1a)
$C$DW$436	.dwtag  DW_TAG_member
	.dwattr $C$DW$436, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$436, DW_AT_name("CLA1TASKSRCSELLOCK")
	.dwattr $C$DW$436, DW_AT_TI_symbol_name("_CLA1TASKSRCSELLOCK")
	.dwattr $C$DW$436, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$436, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$437	.dwtag  DW_TAG_member
	.dwattr $C$DW$437, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$437, DW_AT_name("rsvd1")
	.dwattr $C$DW$437, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$437, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$437, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$438	.dwtag  DW_TAG_member
	.dwattr $C$DW$438, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$438, DW_AT_name("DMACHSRCSELLOCK")
	.dwattr $C$DW$438, DW_AT_TI_symbol_name("_DMACHSRCSELLOCK")
	.dwattr $C$DW$438, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$438, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$439	.dwtag  DW_TAG_member
	.dwattr $C$DW$439, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$439, DW_AT_name("CLA1TASKSRCSEL1")
	.dwattr $C$DW$439, DW_AT_TI_symbol_name("_CLA1TASKSRCSEL1")
	.dwattr $C$DW$439, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$439, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$440	.dwtag  DW_TAG_member
	.dwattr $C$DW$440, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$440, DW_AT_name("CLA1TASKSRCSEL2")
	.dwattr $C$DW$440, DW_AT_TI_symbol_name("_CLA1TASKSRCSEL2")
	.dwattr $C$DW$440, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$440, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$441	.dwtag  DW_TAG_member
	.dwattr $C$DW$441, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$441, DW_AT_name("rsvd2")
	.dwattr $C$DW$441, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$441, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$441, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$442	.dwtag  DW_TAG_member
	.dwattr $C$DW$442, DW_AT_type(*$C$DW$T$38)
	.dwattr $C$DW$442, DW_AT_name("DMACHSRCSEL1")
	.dwattr $C$DW$442, DW_AT_TI_symbol_name("_DMACHSRCSEL1")
	.dwattr $C$DW$442, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr $C$DW$442, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$443	.dwtag  DW_TAG_member
	.dwattr $C$DW$443, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$443, DW_AT_name("DMACHSRCSEL2")
	.dwattr $C$DW$443, DW_AT_TI_symbol_name("_DMACHSRCSEL2")
	.dwattr $C$DW$443, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$443, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$47

$C$DW$444	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$444, DW_AT_type(*$C$DW$T$47)

$C$DW$T$121	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$121, DW_AT_type(*$C$DW$444)


$C$DW$T$49	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$49, DW_AT_name("DMA_REGS")
	.dwattr $C$DW$T$49, DW_AT_byte_size(0xe0)
$C$DW$445	.dwtag  DW_TAG_member
	.dwattr $C$DW$445, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$445, DW_AT_name("DMACTRL")
	.dwattr $C$DW$445, DW_AT_TI_symbol_name("_DMACTRL")
	.dwattr $C$DW$445, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$445, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$446	.dwtag  DW_TAG_member
	.dwattr $C$DW$446, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$446, DW_AT_name("DEBUGCTRL")
	.dwattr $C$DW$446, DW_AT_TI_symbol_name("_DEBUGCTRL")
	.dwattr $C$DW$446, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$446, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$447	.dwtag  DW_TAG_member
	.dwattr $C$DW$447, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$447, DW_AT_name("rsvd1")
	.dwattr $C$DW$447, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$447, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$447, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$448	.dwtag  DW_TAG_member
	.dwattr $C$DW$448, DW_AT_type(*$C$DW$T$106)
	.dwattr $C$DW$448, DW_AT_name("PRIORITYCTRL1")
	.dwattr $C$DW$448, DW_AT_TI_symbol_name("_PRIORITYCTRL1")
	.dwattr $C$DW$448, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$448, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$449	.dwtag  DW_TAG_member
	.dwattr $C$DW$449, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$449, DW_AT_name("rsvd2")
	.dwattr $C$DW$449, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$449, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$449, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$450	.dwtag  DW_TAG_member
	.dwattr $C$DW$450, DW_AT_type(*$C$DW$T$108)
	.dwattr $C$DW$450, DW_AT_name("PRIORITYSTAT")
	.dwattr $C$DW$450, DW_AT_TI_symbol_name("_PRIORITYSTAT")
	.dwattr $C$DW$450, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$450, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$451	.dwtag  DW_TAG_member
	.dwattr $C$DW$451, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$451, DW_AT_name("rsvd3")
	.dwattr $C$DW$451, DW_AT_TI_symbol_name("_rsvd3")
	.dwattr $C$DW$451, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr $C$DW$451, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$452	.dwtag  DW_TAG_member
	.dwattr $C$DW$452, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$452, DW_AT_name("CH1")
	.dwattr $C$DW$452, DW_AT_TI_symbol_name("_CH1")
	.dwattr $C$DW$452, DW_AT_data_member_location[DW_OP_plus_uconst 0x20]
	.dwattr $C$DW$452, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$453	.dwtag  DW_TAG_member
	.dwattr $C$DW$453, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$453, DW_AT_name("CH2")
	.dwattr $C$DW$453, DW_AT_TI_symbol_name("_CH2")
	.dwattr $C$DW$453, DW_AT_data_member_location[DW_OP_plus_uconst 0x40]
	.dwattr $C$DW$453, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$454	.dwtag  DW_TAG_member
	.dwattr $C$DW$454, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$454, DW_AT_name("CH3")
	.dwattr $C$DW$454, DW_AT_TI_symbol_name("_CH3")
	.dwattr $C$DW$454, DW_AT_data_member_location[DW_OP_plus_uconst 0x60]
	.dwattr $C$DW$454, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$455	.dwtag  DW_TAG_member
	.dwattr $C$DW$455, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$455, DW_AT_name("CH4")
	.dwattr $C$DW$455, DW_AT_TI_symbol_name("_CH4")
	.dwattr $C$DW$455, DW_AT_data_member_location[DW_OP_plus_uconst 0x80]
	.dwattr $C$DW$455, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$456	.dwtag  DW_TAG_member
	.dwattr $C$DW$456, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$456, DW_AT_name("CH5")
	.dwattr $C$DW$456, DW_AT_TI_symbol_name("_CH5")
	.dwattr $C$DW$456, DW_AT_data_member_location[DW_OP_plus_uconst 0xa0]
	.dwattr $C$DW$456, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$457	.dwtag  DW_TAG_member
	.dwattr $C$DW$457, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$457, DW_AT_name("CH6")
	.dwattr $C$DW$457, DW_AT_TI_symbol_name("_CH6")
	.dwattr $C$DW$457, DW_AT_data_member_location[DW_OP_plus_uconst 0xc0]
	.dwattr $C$DW$457, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$49

$C$DW$458	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$458, DW_AT_type(*$C$DW$T$49)

$C$DW$T$122	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$122, DW_AT_type(*$C$DW$458)


$C$DW$T$50	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$50, DW_AT_name("MODE_BITS")
	.dwattr $C$DW$T$50, DW_AT_byte_size(0x01)
$C$DW$459	.dwtag  DW_TAG_member
	.dwattr $C$DW$459, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$459, DW_AT_name("PERINTSEL")
	.dwattr $C$DW$459, DW_AT_TI_symbol_name("_PERINTSEL")
	.dwattr $C$DW$459, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$459, DW_AT_bit_size(0x05)
	.dwattr $C$DW$459, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$459, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$460	.dwtag  DW_TAG_member
	.dwattr $C$DW$460, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$460, DW_AT_name("rsvd1")
	.dwattr $C$DW$460, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$460, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$460, DW_AT_bit_size(0x02)
	.dwattr $C$DW$460, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$460, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$461	.dwtag  DW_TAG_member
	.dwattr $C$DW$461, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$461, DW_AT_name("OVRINTE")
	.dwattr $C$DW$461, DW_AT_TI_symbol_name("_OVRINTE")
	.dwattr $C$DW$461, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$461, DW_AT_bit_size(0x01)
	.dwattr $C$DW$461, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$461, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$462	.dwtag  DW_TAG_member
	.dwattr $C$DW$462, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$462, DW_AT_name("PERINTE")
	.dwattr $C$DW$462, DW_AT_TI_symbol_name("_PERINTE")
	.dwattr $C$DW$462, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$462, DW_AT_bit_size(0x01)
	.dwattr $C$DW$462, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$462, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$463	.dwtag  DW_TAG_member
	.dwattr $C$DW$463, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$463, DW_AT_name("CHINTMODE")
	.dwattr $C$DW$463, DW_AT_TI_symbol_name("_CHINTMODE")
	.dwattr $C$DW$463, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$463, DW_AT_bit_size(0x01)
	.dwattr $C$DW$463, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$463, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$464	.dwtag  DW_TAG_member
	.dwattr $C$DW$464, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$464, DW_AT_name("ONESHOT")
	.dwattr $C$DW$464, DW_AT_TI_symbol_name("_ONESHOT")
	.dwattr $C$DW$464, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$464, DW_AT_bit_size(0x01)
	.dwattr $C$DW$464, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$464, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$465	.dwtag  DW_TAG_member
	.dwattr $C$DW$465, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$465, DW_AT_name("CONTINUOUS")
	.dwattr $C$DW$465, DW_AT_TI_symbol_name("_CONTINUOUS")
	.dwattr $C$DW$465, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$465, DW_AT_bit_size(0x01)
	.dwattr $C$DW$465, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$465, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$466	.dwtag  DW_TAG_member
	.dwattr $C$DW$466, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$466, DW_AT_name("rsvd2")
	.dwattr $C$DW$466, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$466, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$466, DW_AT_bit_size(0x01)
	.dwattr $C$DW$466, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$466, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$467	.dwtag  DW_TAG_member
	.dwattr $C$DW$467, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$467, DW_AT_name("rsvd3")
	.dwattr $C$DW$467, DW_AT_TI_symbol_name("_rsvd3")
	.dwattr $C$DW$467, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$467, DW_AT_bit_size(0x01)
	.dwattr $C$DW$467, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$467, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$468	.dwtag  DW_TAG_member
	.dwattr $C$DW$468, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$468, DW_AT_name("DATASIZE")
	.dwattr $C$DW$468, DW_AT_TI_symbol_name("_DATASIZE")
	.dwattr $C$DW$468, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$468, DW_AT_bit_size(0x01)
	.dwattr $C$DW$468, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$468, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$469	.dwtag  DW_TAG_member
	.dwattr $C$DW$469, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$469, DW_AT_name("CHINTE")
	.dwattr $C$DW$469, DW_AT_TI_symbol_name("_CHINTE")
	.dwattr $C$DW$469, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$469, DW_AT_bit_size(0x01)
	.dwattr $C$DW$469, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$469, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$50


$C$DW$T$51	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$51, DW_AT_name("MODE_REG")
	.dwattr $C$DW$T$51, DW_AT_byte_size(0x01)
$C$DW$470	.dwtag  DW_TAG_member
	.dwattr $C$DW$470, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$470, DW_AT_name("all")
	.dwattr $C$DW$470, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$470, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$470, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$471	.dwtag  DW_TAG_member
	.dwattr $C$DW$471, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$471, DW_AT_name("bit")
	.dwattr $C$DW$471, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$471, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$471, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$51


$C$DW$T$52	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$52, DW_AT_name("PIEACK_BITS")
	.dwattr $C$DW$T$52, DW_AT_byte_size(0x01)
$C$DW$472	.dwtag  DW_TAG_member
	.dwattr $C$DW$472, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$472, DW_AT_name("ACK1")
	.dwattr $C$DW$472, DW_AT_TI_symbol_name("_ACK1")
	.dwattr $C$DW$472, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$472, DW_AT_bit_size(0x01)
	.dwattr $C$DW$472, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$472, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$473	.dwtag  DW_TAG_member
	.dwattr $C$DW$473, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$473, DW_AT_name("ACK2")
	.dwattr $C$DW$473, DW_AT_TI_symbol_name("_ACK2")
	.dwattr $C$DW$473, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$473, DW_AT_bit_size(0x01)
	.dwattr $C$DW$473, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$473, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$474	.dwtag  DW_TAG_member
	.dwattr $C$DW$474, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$474, DW_AT_name("ACK3")
	.dwattr $C$DW$474, DW_AT_TI_symbol_name("_ACK3")
	.dwattr $C$DW$474, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$474, DW_AT_bit_size(0x01)
	.dwattr $C$DW$474, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$474, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$475	.dwtag  DW_TAG_member
	.dwattr $C$DW$475, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$475, DW_AT_name("ACK4")
	.dwattr $C$DW$475, DW_AT_TI_symbol_name("_ACK4")
	.dwattr $C$DW$475, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$475, DW_AT_bit_size(0x01)
	.dwattr $C$DW$475, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$475, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$476	.dwtag  DW_TAG_member
	.dwattr $C$DW$476, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$476, DW_AT_name("ACK5")
	.dwattr $C$DW$476, DW_AT_TI_symbol_name("_ACK5")
	.dwattr $C$DW$476, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$476, DW_AT_bit_size(0x01)
	.dwattr $C$DW$476, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$476, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$477	.dwtag  DW_TAG_member
	.dwattr $C$DW$477, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$477, DW_AT_name("ACK6")
	.dwattr $C$DW$477, DW_AT_TI_symbol_name("_ACK6")
	.dwattr $C$DW$477, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$477, DW_AT_bit_size(0x01)
	.dwattr $C$DW$477, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$477, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$478	.dwtag  DW_TAG_member
	.dwattr $C$DW$478, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$478, DW_AT_name("ACK7")
	.dwattr $C$DW$478, DW_AT_TI_symbol_name("_ACK7")
	.dwattr $C$DW$478, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$478, DW_AT_bit_size(0x01)
	.dwattr $C$DW$478, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$478, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$479	.dwtag  DW_TAG_member
	.dwattr $C$DW$479, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$479, DW_AT_name("ACK8")
	.dwattr $C$DW$479, DW_AT_TI_symbol_name("_ACK8")
	.dwattr $C$DW$479, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$479, DW_AT_bit_size(0x01)
	.dwattr $C$DW$479, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$479, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$480	.dwtag  DW_TAG_member
	.dwattr $C$DW$480, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$480, DW_AT_name("ACK9")
	.dwattr $C$DW$480, DW_AT_TI_symbol_name("_ACK9")
	.dwattr $C$DW$480, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$480, DW_AT_bit_size(0x01)
	.dwattr $C$DW$480, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$480, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$481	.dwtag  DW_TAG_member
	.dwattr $C$DW$481, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$481, DW_AT_name("ACK10")
	.dwattr $C$DW$481, DW_AT_TI_symbol_name("_ACK10")
	.dwattr $C$DW$481, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$481, DW_AT_bit_size(0x01)
	.dwattr $C$DW$481, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$481, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$482	.dwtag  DW_TAG_member
	.dwattr $C$DW$482, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$482, DW_AT_name("ACK11")
	.dwattr $C$DW$482, DW_AT_TI_symbol_name("_ACK11")
	.dwattr $C$DW$482, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$482, DW_AT_bit_size(0x01)
	.dwattr $C$DW$482, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$482, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$483	.dwtag  DW_TAG_member
	.dwattr $C$DW$483, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$483, DW_AT_name("ACK12")
	.dwattr $C$DW$483, DW_AT_TI_symbol_name("_ACK12")
	.dwattr $C$DW$483, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$483, DW_AT_bit_size(0x01)
	.dwattr $C$DW$483, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$483, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$484	.dwtag  DW_TAG_member
	.dwattr $C$DW$484, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$484, DW_AT_name("rsvd1")
	.dwattr $C$DW$484, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$484, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$484, DW_AT_bit_size(0x04)
	.dwattr $C$DW$484, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$484, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$52


$C$DW$T$53	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$53, DW_AT_name("PIEACK_REG")
	.dwattr $C$DW$T$53, DW_AT_byte_size(0x01)
$C$DW$485	.dwtag  DW_TAG_member
	.dwattr $C$DW$485, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$485, DW_AT_name("all")
	.dwattr $C$DW$485, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$485, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$485, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$486	.dwtag  DW_TAG_member
	.dwattr $C$DW$486, DW_AT_type(*$C$DW$T$52)
	.dwattr $C$DW$486, DW_AT_name("bit")
	.dwattr $C$DW$486, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$486, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$486, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$53


$C$DW$T$54	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$54, DW_AT_name("PIECTRL_BITS")
	.dwattr $C$DW$T$54, DW_AT_byte_size(0x01)
$C$DW$487	.dwtag  DW_TAG_member
	.dwattr $C$DW$487, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$487, DW_AT_name("ENPIE")
	.dwattr $C$DW$487, DW_AT_TI_symbol_name("_ENPIE")
	.dwattr $C$DW$487, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$487, DW_AT_bit_size(0x01)
	.dwattr $C$DW$487, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$487, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$488	.dwtag  DW_TAG_member
	.dwattr $C$DW$488, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$488, DW_AT_name("PIEVECT")
	.dwattr $C$DW$488, DW_AT_TI_symbol_name("_PIEVECT")
	.dwattr $C$DW$488, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$488, DW_AT_bit_size(0x0f)
	.dwattr $C$DW$488, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$488, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$54


$C$DW$T$55	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$55, DW_AT_name("PIECTRL_REG")
	.dwattr $C$DW$T$55, DW_AT_byte_size(0x01)
$C$DW$489	.dwtag  DW_TAG_member
	.dwattr $C$DW$489, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$489, DW_AT_name("all")
	.dwattr $C$DW$489, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$489, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$489, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$490	.dwtag  DW_TAG_member
	.dwattr $C$DW$490, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$490, DW_AT_name("bit")
	.dwattr $C$DW$490, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$490, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$490, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$55


$C$DW$T$56	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$56, DW_AT_name("PIEIER10_BITS")
	.dwattr $C$DW$T$56, DW_AT_byte_size(0x01)
$C$DW$491	.dwtag  DW_TAG_member
	.dwattr $C$DW$491, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$491, DW_AT_name("INTx1")
	.dwattr $C$DW$491, DW_AT_TI_symbol_name("_INTx1")
	.dwattr $C$DW$491, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$491, DW_AT_bit_size(0x01)
	.dwattr $C$DW$491, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$491, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$492	.dwtag  DW_TAG_member
	.dwattr $C$DW$492, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$492, DW_AT_name("INTx2")
	.dwattr $C$DW$492, DW_AT_TI_symbol_name("_INTx2")
	.dwattr $C$DW$492, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$492, DW_AT_bit_size(0x01)
	.dwattr $C$DW$492, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$492, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$493	.dwtag  DW_TAG_member
	.dwattr $C$DW$493, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$493, DW_AT_name("INTx3")
	.dwattr $C$DW$493, DW_AT_TI_symbol_name("_INTx3")
	.dwattr $C$DW$493, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$493, DW_AT_bit_size(0x01)
	.dwattr $C$DW$493, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$493, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$494	.dwtag  DW_TAG_member
	.dwattr $C$DW$494, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$494, DW_AT_name("INTx4")
	.dwattr $C$DW$494, DW_AT_TI_symbol_name("_INTx4")
	.dwattr $C$DW$494, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$494, DW_AT_bit_size(0x01)
	.dwattr $C$DW$494, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$494, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$495	.dwtag  DW_TAG_member
	.dwattr $C$DW$495, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$495, DW_AT_name("INTx5")
	.dwattr $C$DW$495, DW_AT_TI_symbol_name("_INTx5")
	.dwattr $C$DW$495, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$495, DW_AT_bit_size(0x01)
	.dwattr $C$DW$495, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$495, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$496	.dwtag  DW_TAG_member
	.dwattr $C$DW$496, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$496, DW_AT_name("INTx6")
	.dwattr $C$DW$496, DW_AT_TI_symbol_name("_INTx6")
	.dwattr $C$DW$496, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$496, DW_AT_bit_size(0x01)
	.dwattr $C$DW$496, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$496, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$497	.dwtag  DW_TAG_member
	.dwattr $C$DW$497, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$497, DW_AT_name("INTx7")
	.dwattr $C$DW$497, DW_AT_TI_symbol_name("_INTx7")
	.dwattr $C$DW$497, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$497, DW_AT_bit_size(0x01)
	.dwattr $C$DW$497, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$497, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$498	.dwtag  DW_TAG_member
	.dwattr $C$DW$498, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$498, DW_AT_name("INTx8")
	.dwattr $C$DW$498, DW_AT_TI_symbol_name("_INTx8")
	.dwattr $C$DW$498, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$498, DW_AT_bit_size(0x01)
	.dwattr $C$DW$498, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$498, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$499	.dwtag  DW_TAG_member
	.dwattr $C$DW$499, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$499, DW_AT_name("INTx9")
	.dwattr $C$DW$499, DW_AT_TI_symbol_name("_INTx9")
	.dwattr $C$DW$499, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$499, DW_AT_bit_size(0x01)
	.dwattr $C$DW$499, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$499, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$500	.dwtag  DW_TAG_member
	.dwattr $C$DW$500, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$500, DW_AT_name("INTx10")
	.dwattr $C$DW$500, DW_AT_TI_symbol_name("_INTx10")
	.dwattr $C$DW$500, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$500, DW_AT_bit_size(0x01)
	.dwattr $C$DW$500, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$500, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$501	.dwtag  DW_TAG_member
	.dwattr $C$DW$501, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$501, DW_AT_name("INTx11")
	.dwattr $C$DW$501, DW_AT_TI_symbol_name("_INTx11")
	.dwattr $C$DW$501, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$501, DW_AT_bit_size(0x01)
	.dwattr $C$DW$501, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$501, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$502	.dwtag  DW_TAG_member
	.dwattr $C$DW$502, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$502, DW_AT_name("INTx12")
	.dwattr $C$DW$502, DW_AT_TI_symbol_name("_INTx12")
	.dwattr $C$DW$502, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$502, DW_AT_bit_size(0x01)
	.dwattr $C$DW$502, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$502, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$503	.dwtag  DW_TAG_member
	.dwattr $C$DW$503, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$503, DW_AT_name("INTx13")
	.dwattr $C$DW$503, DW_AT_TI_symbol_name("_INTx13")
	.dwattr $C$DW$503, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$503, DW_AT_bit_size(0x01)
	.dwattr $C$DW$503, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$503, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$504	.dwtag  DW_TAG_member
	.dwattr $C$DW$504, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$504, DW_AT_name("INTx14")
	.dwattr $C$DW$504, DW_AT_TI_symbol_name("_INTx14")
	.dwattr $C$DW$504, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$504, DW_AT_bit_size(0x01)
	.dwattr $C$DW$504, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$504, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$505	.dwtag  DW_TAG_member
	.dwattr $C$DW$505, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$505, DW_AT_name("INTx15")
	.dwattr $C$DW$505, DW_AT_TI_symbol_name("_INTx15")
	.dwattr $C$DW$505, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$505, DW_AT_bit_size(0x01)
	.dwattr $C$DW$505, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$505, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$506	.dwtag  DW_TAG_member
	.dwattr $C$DW$506, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$506, DW_AT_name("INTx16")
	.dwattr $C$DW$506, DW_AT_TI_symbol_name("_INTx16")
	.dwattr $C$DW$506, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$506, DW_AT_bit_size(0x01)
	.dwattr $C$DW$506, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$506, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$56


$C$DW$T$57	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$57, DW_AT_name("PIEIER10_REG")
	.dwattr $C$DW$T$57, DW_AT_byte_size(0x01)
$C$DW$507	.dwtag  DW_TAG_member
	.dwattr $C$DW$507, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$507, DW_AT_name("all")
	.dwattr $C$DW$507, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$507, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$507, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$508	.dwtag  DW_TAG_member
	.dwattr $C$DW$508, DW_AT_type(*$C$DW$T$56)
	.dwattr $C$DW$508, DW_AT_name("bit")
	.dwattr $C$DW$508, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$508, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$508, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$57


$C$DW$T$58	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$58, DW_AT_name("PIEIER11_BITS")
	.dwattr $C$DW$T$58, DW_AT_byte_size(0x01)
$C$DW$509	.dwtag  DW_TAG_member
	.dwattr $C$DW$509, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$509, DW_AT_name("INTx1")
	.dwattr $C$DW$509, DW_AT_TI_symbol_name("_INTx1")
	.dwattr $C$DW$509, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$509, DW_AT_bit_size(0x01)
	.dwattr $C$DW$509, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$509, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$510	.dwtag  DW_TAG_member
	.dwattr $C$DW$510, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$510, DW_AT_name("INTx2")
	.dwattr $C$DW$510, DW_AT_TI_symbol_name("_INTx2")
	.dwattr $C$DW$510, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$510, DW_AT_bit_size(0x01)
	.dwattr $C$DW$510, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$510, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$511	.dwtag  DW_TAG_member
	.dwattr $C$DW$511, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$511, DW_AT_name("INTx3")
	.dwattr $C$DW$511, DW_AT_TI_symbol_name("_INTx3")
	.dwattr $C$DW$511, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$511, DW_AT_bit_size(0x01)
	.dwattr $C$DW$511, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$511, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$512	.dwtag  DW_TAG_member
	.dwattr $C$DW$512, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$512, DW_AT_name("INTx4")
	.dwattr $C$DW$512, DW_AT_TI_symbol_name("_INTx4")
	.dwattr $C$DW$512, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$512, DW_AT_bit_size(0x01)
	.dwattr $C$DW$512, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$512, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$513	.dwtag  DW_TAG_member
	.dwattr $C$DW$513, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$513, DW_AT_name("INTx5")
	.dwattr $C$DW$513, DW_AT_TI_symbol_name("_INTx5")
	.dwattr $C$DW$513, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$513, DW_AT_bit_size(0x01)
	.dwattr $C$DW$513, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$513, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$514	.dwtag  DW_TAG_member
	.dwattr $C$DW$514, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$514, DW_AT_name("INTx6")
	.dwattr $C$DW$514, DW_AT_TI_symbol_name("_INTx6")
	.dwattr $C$DW$514, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$514, DW_AT_bit_size(0x01)
	.dwattr $C$DW$514, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$514, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$515	.dwtag  DW_TAG_member
	.dwattr $C$DW$515, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$515, DW_AT_name("INTx7")
	.dwattr $C$DW$515, DW_AT_TI_symbol_name("_INTx7")
	.dwattr $C$DW$515, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$515, DW_AT_bit_size(0x01)
	.dwattr $C$DW$515, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$515, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$516	.dwtag  DW_TAG_member
	.dwattr $C$DW$516, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$516, DW_AT_name("INTx8")
	.dwattr $C$DW$516, DW_AT_TI_symbol_name("_INTx8")
	.dwattr $C$DW$516, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$516, DW_AT_bit_size(0x01)
	.dwattr $C$DW$516, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$516, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$517	.dwtag  DW_TAG_member
	.dwattr $C$DW$517, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$517, DW_AT_name("INTx9")
	.dwattr $C$DW$517, DW_AT_TI_symbol_name("_INTx9")
	.dwattr $C$DW$517, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$517, DW_AT_bit_size(0x01)
	.dwattr $C$DW$517, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$517, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$518	.dwtag  DW_TAG_member
	.dwattr $C$DW$518, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$518, DW_AT_name("INTx10")
	.dwattr $C$DW$518, DW_AT_TI_symbol_name("_INTx10")
	.dwattr $C$DW$518, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$518, DW_AT_bit_size(0x01)
	.dwattr $C$DW$518, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$518, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$519	.dwtag  DW_TAG_member
	.dwattr $C$DW$519, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$519, DW_AT_name("INTx11")
	.dwattr $C$DW$519, DW_AT_TI_symbol_name("_INTx11")
	.dwattr $C$DW$519, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$519, DW_AT_bit_size(0x01)
	.dwattr $C$DW$519, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$519, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$520	.dwtag  DW_TAG_member
	.dwattr $C$DW$520, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$520, DW_AT_name("INTx12")
	.dwattr $C$DW$520, DW_AT_TI_symbol_name("_INTx12")
	.dwattr $C$DW$520, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$520, DW_AT_bit_size(0x01)
	.dwattr $C$DW$520, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$520, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$521	.dwtag  DW_TAG_member
	.dwattr $C$DW$521, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$521, DW_AT_name("INTx13")
	.dwattr $C$DW$521, DW_AT_TI_symbol_name("_INTx13")
	.dwattr $C$DW$521, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$521, DW_AT_bit_size(0x01)
	.dwattr $C$DW$521, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$521, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$522	.dwtag  DW_TAG_member
	.dwattr $C$DW$522, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$522, DW_AT_name("INTx14")
	.dwattr $C$DW$522, DW_AT_TI_symbol_name("_INTx14")
	.dwattr $C$DW$522, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$522, DW_AT_bit_size(0x01)
	.dwattr $C$DW$522, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$522, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$523	.dwtag  DW_TAG_member
	.dwattr $C$DW$523, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$523, DW_AT_name("INTx15")
	.dwattr $C$DW$523, DW_AT_TI_symbol_name("_INTx15")
	.dwattr $C$DW$523, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$523, DW_AT_bit_size(0x01)
	.dwattr $C$DW$523, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$523, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$524	.dwtag  DW_TAG_member
	.dwattr $C$DW$524, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$524, DW_AT_name("INTx16")
	.dwattr $C$DW$524, DW_AT_TI_symbol_name("_INTx16")
	.dwattr $C$DW$524, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$524, DW_AT_bit_size(0x01)
	.dwattr $C$DW$524, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$524, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$58


$C$DW$T$59	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$59, DW_AT_name("PIEIER11_REG")
	.dwattr $C$DW$T$59, DW_AT_byte_size(0x01)
$C$DW$525	.dwtag  DW_TAG_member
	.dwattr $C$DW$525, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$525, DW_AT_name("all")
	.dwattr $C$DW$525, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$525, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$525, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$526	.dwtag  DW_TAG_member
	.dwattr $C$DW$526, DW_AT_type(*$C$DW$T$58)
	.dwattr $C$DW$526, DW_AT_name("bit")
	.dwattr $C$DW$526, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$526, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$526, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$59


$C$DW$T$60	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$60, DW_AT_name("PIEIER12_BITS")
	.dwattr $C$DW$T$60, DW_AT_byte_size(0x01)
$C$DW$527	.dwtag  DW_TAG_member
	.dwattr $C$DW$527, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$527, DW_AT_name("INTx1")
	.dwattr $C$DW$527, DW_AT_TI_symbol_name("_INTx1")
	.dwattr $C$DW$527, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$527, DW_AT_bit_size(0x01)
	.dwattr $C$DW$527, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$527, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$528	.dwtag  DW_TAG_member
	.dwattr $C$DW$528, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$528, DW_AT_name("INTx2")
	.dwattr $C$DW$528, DW_AT_TI_symbol_name("_INTx2")
	.dwattr $C$DW$528, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$528, DW_AT_bit_size(0x01)
	.dwattr $C$DW$528, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$528, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$529	.dwtag  DW_TAG_member
	.dwattr $C$DW$529, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$529, DW_AT_name("INTx3")
	.dwattr $C$DW$529, DW_AT_TI_symbol_name("_INTx3")
	.dwattr $C$DW$529, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$529, DW_AT_bit_size(0x01)
	.dwattr $C$DW$529, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$529, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$530	.dwtag  DW_TAG_member
	.dwattr $C$DW$530, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$530, DW_AT_name("INTx4")
	.dwattr $C$DW$530, DW_AT_TI_symbol_name("_INTx4")
	.dwattr $C$DW$530, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$530, DW_AT_bit_size(0x01)
	.dwattr $C$DW$530, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$530, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$531	.dwtag  DW_TAG_member
	.dwattr $C$DW$531, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$531, DW_AT_name("INTx5")
	.dwattr $C$DW$531, DW_AT_TI_symbol_name("_INTx5")
	.dwattr $C$DW$531, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$531, DW_AT_bit_size(0x01)
	.dwattr $C$DW$531, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$531, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$532	.dwtag  DW_TAG_member
	.dwattr $C$DW$532, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$532, DW_AT_name("INTx6")
	.dwattr $C$DW$532, DW_AT_TI_symbol_name("_INTx6")
	.dwattr $C$DW$532, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$532, DW_AT_bit_size(0x01)
	.dwattr $C$DW$532, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$532, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$533	.dwtag  DW_TAG_member
	.dwattr $C$DW$533, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$533, DW_AT_name("INTx7")
	.dwattr $C$DW$533, DW_AT_TI_symbol_name("_INTx7")
	.dwattr $C$DW$533, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$533, DW_AT_bit_size(0x01)
	.dwattr $C$DW$533, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$533, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$534	.dwtag  DW_TAG_member
	.dwattr $C$DW$534, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$534, DW_AT_name("INTx8")
	.dwattr $C$DW$534, DW_AT_TI_symbol_name("_INTx8")
	.dwattr $C$DW$534, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$534, DW_AT_bit_size(0x01)
	.dwattr $C$DW$534, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$534, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$535	.dwtag  DW_TAG_member
	.dwattr $C$DW$535, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$535, DW_AT_name("INTx9")
	.dwattr $C$DW$535, DW_AT_TI_symbol_name("_INTx9")
	.dwattr $C$DW$535, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$535, DW_AT_bit_size(0x01)
	.dwattr $C$DW$535, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$535, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$536	.dwtag  DW_TAG_member
	.dwattr $C$DW$536, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$536, DW_AT_name("INTx10")
	.dwattr $C$DW$536, DW_AT_TI_symbol_name("_INTx10")
	.dwattr $C$DW$536, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$536, DW_AT_bit_size(0x01)
	.dwattr $C$DW$536, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$536, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$537	.dwtag  DW_TAG_member
	.dwattr $C$DW$537, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$537, DW_AT_name("INTx11")
	.dwattr $C$DW$537, DW_AT_TI_symbol_name("_INTx11")
	.dwattr $C$DW$537, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$537, DW_AT_bit_size(0x01)
	.dwattr $C$DW$537, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$537, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$538	.dwtag  DW_TAG_member
	.dwattr $C$DW$538, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$538, DW_AT_name("INTx12")
	.dwattr $C$DW$538, DW_AT_TI_symbol_name("_INTx12")
	.dwattr $C$DW$538, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$538, DW_AT_bit_size(0x01)
	.dwattr $C$DW$538, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$538, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$539	.dwtag  DW_TAG_member
	.dwattr $C$DW$539, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$539, DW_AT_name("INTx13")
	.dwattr $C$DW$539, DW_AT_TI_symbol_name("_INTx13")
	.dwattr $C$DW$539, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$539, DW_AT_bit_size(0x01)
	.dwattr $C$DW$539, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$539, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$540	.dwtag  DW_TAG_member
	.dwattr $C$DW$540, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$540, DW_AT_name("INTx14")
	.dwattr $C$DW$540, DW_AT_TI_symbol_name("_INTx14")
	.dwattr $C$DW$540, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$540, DW_AT_bit_size(0x01)
	.dwattr $C$DW$540, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$540, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$541	.dwtag  DW_TAG_member
	.dwattr $C$DW$541, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$541, DW_AT_name("INTx15")
	.dwattr $C$DW$541, DW_AT_TI_symbol_name("_INTx15")
	.dwattr $C$DW$541, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$541, DW_AT_bit_size(0x01)
	.dwattr $C$DW$541, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$541, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$542	.dwtag  DW_TAG_member
	.dwattr $C$DW$542, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$542, DW_AT_name("INTx16")
	.dwattr $C$DW$542, DW_AT_TI_symbol_name("_INTx16")
	.dwattr $C$DW$542, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$542, DW_AT_bit_size(0x01)
	.dwattr $C$DW$542, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$542, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$60


$C$DW$T$61	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$61, DW_AT_name("PIEIER12_REG")
	.dwattr $C$DW$T$61, DW_AT_byte_size(0x01)
$C$DW$543	.dwtag  DW_TAG_member
	.dwattr $C$DW$543, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$543, DW_AT_name("all")
	.dwattr $C$DW$543, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$543, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$543, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$544	.dwtag  DW_TAG_member
	.dwattr $C$DW$544, DW_AT_type(*$C$DW$T$60)
	.dwattr $C$DW$544, DW_AT_name("bit")
	.dwattr $C$DW$544, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$544, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$544, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$61


$C$DW$T$62	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$62, DW_AT_name("PIEIER1_BITS")
	.dwattr $C$DW$T$62, DW_AT_byte_size(0x01)
$C$DW$545	.dwtag  DW_TAG_member
	.dwattr $C$DW$545, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$545, DW_AT_name("INTx1")
	.dwattr $C$DW$545, DW_AT_TI_symbol_name("_INTx1")
	.dwattr $C$DW$545, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$545, DW_AT_bit_size(0x01)
	.dwattr $C$DW$545, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$545, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$546	.dwtag  DW_TAG_member
	.dwattr $C$DW$546, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$546, DW_AT_name("INTx2")
	.dwattr $C$DW$546, DW_AT_TI_symbol_name("_INTx2")
	.dwattr $C$DW$546, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$546, DW_AT_bit_size(0x01)
	.dwattr $C$DW$546, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$546, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$547	.dwtag  DW_TAG_member
	.dwattr $C$DW$547, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$547, DW_AT_name("INTx3")
	.dwattr $C$DW$547, DW_AT_TI_symbol_name("_INTx3")
	.dwattr $C$DW$547, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$547, DW_AT_bit_size(0x01)
	.dwattr $C$DW$547, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$547, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$548	.dwtag  DW_TAG_member
	.dwattr $C$DW$548, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$548, DW_AT_name("INTx4")
	.dwattr $C$DW$548, DW_AT_TI_symbol_name("_INTx4")
	.dwattr $C$DW$548, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$548, DW_AT_bit_size(0x01)
	.dwattr $C$DW$548, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$548, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$549	.dwtag  DW_TAG_member
	.dwattr $C$DW$549, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$549, DW_AT_name("INTx5")
	.dwattr $C$DW$549, DW_AT_TI_symbol_name("_INTx5")
	.dwattr $C$DW$549, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$549, DW_AT_bit_size(0x01)
	.dwattr $C$DW$549, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$549, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$550	.dwtag  DW_TAG_member
	.dwattr $C$DW$550, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$550, DW_AT_name("INTx6")
	.dwattr $C$DW$550, DW_AT_TI_symbol_name("_INTx6")
	.dwattr $C$DW$550, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$550, DW_AT_bit_size(0x01)
	.dwattr $C$DW$550, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$550, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$551	.dwtag  DW_TAG_member
	.dwattr $C$DW$551, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$551, DW_AT_name("INTx7")
	.dwattr $C$DW$551, DW_AT_TI_symbol_name("_INTx7")
	.dwattr $C$DW$551, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$551, DW_AT_bit_size(0x01)
	.dwattr $C$DW$551, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$551, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$552	.dwtag  DW_TAG_member
	.dwattr $C$DW$552, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$552, DW_AT_name("INTx8")
	.dwattr $C$DW$552, DW_AT_TI_symbol_name("_INTx8")
	.dwattr $C$DW$552, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$552, DW_AT_bit_size(0x01)
	.dwattr $C$DW$552, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$552, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$553	.dwtag  DW_TAG_member
	.dwattr $C$DW$553, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$553, DW_AT_name("INTx9")
	.dwattr $C$DW$553, DW_AT_TI_symbol_name("_INTx9")
	.dwattr $C$DW$553, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$553, DW_AT_bit_size(0x01)
	.dwattr $C$DW$553, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$553, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$554	.dwtag  DW_TAG_member
	.dwattr $C$DW$554, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$554, DW_AT_name("INTx10")
	.dwattr $C$DW$554, DW_AT_TI_symbol_name("_INTx10")
	.dwattr $C$DW$554, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$554, DW_AT_bit_size(0x01)
	.dwattr $C$DW$554, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$554, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$555	.dwtag  DW_TAG_member
	.dwattr $C$DW$555, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$555, DW_AT_name("INTx11")
	.dwattr $C$DW$555, DW_AT_TI_symbol_name("_INTx11")
	.dwattr $C$DW$555, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$555, DW_AT_bit_size(0x01)
	.dwattr $C$DW$555, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$555, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$556	.dwtag  DW_TAG_member
	.dwattr $C$DW$556, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$556, DW_AT_name("INTx12")
	.dwattr $C$DW$556, DW_AT_TI_symbol_name("_INTx12")
	.dwattr $C$DW$556, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$556, DW_AT_bit_size(0x01)
	.dwattr $C$DW$556, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$556, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$557	.dwtag  DW_TAG_member
	.dwattr $C$DW$557, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$557, DW_AT_name("INTx13")
	.dwattr $C$DW$557, DW_AT_TI_symbol_name("_INTx13")
	.dwattr $C$DW$557, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$557, DW_AT_bit_size(0x01)
	.dwattr $C$DW$557, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$557, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$558	.dwtag  DW_TAG_member
	.dwattr $C$DW$558, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$558, DW_AT_name("INTx14")
	.dwattr $C$DW$558, DW_AT_TI_symbol_name("_INTx14")
	.dwattr $C$DW$558, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$558, DW_AT_bit_size(0x01)
	.dwattr $C$DW$558, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$558, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$559	.dwtag  DW_TAG_member
	.dwattr $C$DW$559, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$559, DW_AT_name("INTx15")
	.dwattr $C$DW$559, DW_AT_TI_symbol_name("_INTx15")
	.dwattr $C$DW$559, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$559, DW_AT_bit_size(0x01)
	.dwattr $C$DW$559, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$559, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$560	.dwtag  DW_TAG_member
	.dwattr $C$DW$560, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$560, DW_AT_name("INTx16")
	.dwattr $C$DW$560, DW_AT_TI_symbol_name("_INTx16")
	.dwattr $C$DW$560, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$560, DW_AT_bit_size(0x01)
	.dwattr $C$DW$560, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$560, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$62


$C$DW$T$63	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$63, DW_AT_name("PIEIER1_REG")
	.dwattr $C$DW$T$63, DW_AT_byte_size(0x01)
$C$DW$561	.dwtag  DW_TAG_member
	.dwattr $C$DW$561, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$561, DW_AT_name("all")
	.dwattr $C$DW$561, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$561, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$561, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$562	.dwtag  DW_TAG_member
	.dwattr $C$DW$562, DW_AT_type(*$C$DW$T$62)
	.dwattr $C$DW$562, DW_AT_name("bit")
	.dwattr $C$DW$562, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$562, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$562, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$63


$C$DW$T$64	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$64, DW_AT_name("PIEIER2_BITS")
	.dwattr $C$DW$T$64, DW_AT_byte_size(0x01)
$C$DW$563	.dwtag  DW_TAG_member
	.dwattr $C$DW$563, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$563, DW_AT_name("INTx1")
	.dwattr $C$DW$563, DW_AT_TI_symbol_name("_INTx1")
	.dwattr $C$DW$563, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$563, DW_AT_bit_size(0x01)
	.dwattr $C$DW$563, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$563, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$564	.dwtag  DW_TAG_member
	.dwattr $C$DW$564, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$564, DW_AT_name("INTx2")
	.dwattr $C$DW$564, DW_AT_TI_symbol_name("_INTx2")
	.dwattr $C$DW$564, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$564, DW_AT_bit_size(0x01)
	.dwattr $C$DW$564, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$564, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$565	.dwtag  DW_TAG_member
	.dwattr $C$DW$565, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$565, DW_AT_name("INTx3")
	.dwattr $C$DW$565, DW_AT_TI_symbol_name("_INTx3")
	.dwattr $C$DW$565, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$565, DW_AT_bit_size(0x01)
	.dwattr $C$DW$565, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$565, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$566	.dwtag  DW_TAG_member
	.dwattr $C$DW$566, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$566, DW_AT_name("INTx4")
	.dwattr $C$DW$566, DW_AT_TI_symbol_name("_INTx4")
	.dwattr $C$DW$566, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$566, DW_AT_bit_size(0x01)
	.dwattr $C$DW$566, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$566, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$567	.dwtag  DW_TAG_member
	.dwattr $C$DW$567, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$567, DW_AT_name("INTx5")
	.dwattr $C$DW$567, DW_AT_TI_symbol_name("_INTx5")
	.dwattr $C$DW$567, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$567, DW_AT_bit_size(0x01)
	.dwattr $C$DW$567, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$567, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$568	.dwtag  DW_TAG_member
	.dwattr $C$DW$568, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$568, DW_AT_name("INTx6")
	.dwattr $C$DW$568, DW_AT_TI_symbol_name("_INTx6")
	.dwattr $C$DW$568, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$568, DW_AT_bit_size(0x01)
	.dwattr $C$DW$568, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$568, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$569	.dwtag  DW_TAG_member
	.dwattr $C$DW$569, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$569, DW_AT_name("INTx7")
	.dwattr $C$DW$569, DW_AT_TI_symbol_name("_INTx7")
	.dwattr $C$DW$569, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$569, DW_AT_bit_size(0x01)
	.dwattr $C$DW$569, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$569, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$570	.dwtag  DW_TAG_member
	.dwattr $C$DW$570, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$570, DW_AT_name("INTx8")
	.dwattr $C$DW$570, DW_AT_TI_symbol_name("_INTx8")
	.dwattr $C$DW$570, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$570, DW_AT_bit_size(0x01)
	.dwattr $C$DW$570, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$570, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$571	.dwtag  DW_TAG_member
	.dwattr $C$DW$571, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$571, DW_AT_name("INTx9")
	.dwattr $C$DW$571, DW_AT_TI_symbol_name("_INTx9")
	.dwattr $C$DW$571, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$571, DW_AT_bit_size(0x01)
	.dwattr $C$DW$571, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$571, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$572	.dwtag  DW_TAG_member
	.dwattr $C$DW$572, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$572, DW_AT_name("INTx10")
	.dwattr $C$DW$572, DW_AT_TI_symbol_name("_INTx10")
	.dwattr $C$DW$572, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$572, DW_AT_bit_size(0x01)
	.dwattr $C$DW$572, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$572, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$573	.dwtag  DW_TAG_member
	.dwattr $C$DW$573, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$573, DW_AT_name("INTx11")
	.dwattr $C$DW$573, DW_AT_TI_symbol_name("_INTx11")
	.dwattr $C$DW$573, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$573, DW_AT_bit_size(0x01)
	.dwattr $C$DW$573, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$573, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$574	.dwtag  DW_TAG_member
	.dwattr $C$DW$574, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$574, DW_AT_name("INTx12")
	.dwattr $C$DW$574, DW_AT_TI_symbol_name("_INTx12")
	.dwattr $C$DW$574, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$574, DW_AT_bit_size(0x01)
	.dwattr $C$DW$574, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$574, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$575	.dwtag  DW_TAG_member
	.dwattr $C$DW$575, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$575, DW_AT_name("INTx13")
	.dwattr $C$DW$575, DW_AT_TI_symbol_name("_INTx13")
	.dwattr $C$DW$575, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$575, DW_AT_bit_size(0x01)
	.dwattr $C$DW$575, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$575, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$576	.dwtag  DW_TAG_member
	.dwattr $C$DW$576, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$576, DW_AT_name("INTx14")
	.dwattr $C$DW$576, DW_AT_TI_symbol_name("_INTx14")
	.dwattr $C$DW$576, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$576, DW_AT_bit_size(0x01)
	.dwattr $C$DW$576, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$576, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$577	.dwtag  DW_TAG_member
	.dwattr $C$DW$577, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$577, DW_AT_name("INTx15")
	.dwattr $C$DW$577, DW_AT_TI_symbol_name("_INTx15")
	.dwattr $C$DW$577, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$577, DW_AT_bit_size(0x01)
	.dwattr $C$DW$577, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$577, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$578	.dwtag  DW_TAG_member
	.dwattr $C$DW$578, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$578, DW_AT_name("INTx16")
	.dwattr $C$DW$578, DW_AT_TI_symbol_name("_INTx16")
	.dwattr $C$DW$578, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$578, DW_AT_bit_size(0x01)
	.dwattr $C$DW$578, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$578, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$64


$C$DW$T$65	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$65, DW_AT_name("PIEIER2_REG")
	.dwattr $C$DW$T$65, DW_AT_byte_size(0x01)
$C$DW$579	.dwtag  DW_TAG_member
	.dwattr $C$DW$579, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$579, DW_AT_name("all")
	.dwattr $C$DW$579, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$579, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$579, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$580	.dwtag  DW_TAG_member
	.dwattr $C$DW$580, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$580, DW_AT_name("bit")
	.dwattr $C$DW$580, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$580, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$580, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$65


$C$DW$T$66	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$66, DW_AT_name("PIEIER3_BITS")
	.dwattr $C$DW$T$66, DW_AT_byte_size(0x01)
$C$DW$581	.dwtag  DW_TAG_member
	.dwattr $C$DW$581, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$581, DW_AT_name("INTx1")
	.dwattr $C$DW$581, DW_AT_TI_symbol_name("_INTx1")
	.dwattr $C$DW$581, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$581, DW_AT_bit_size(0x01)
	.dwattr $C$DW$581, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$581, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$582	.dwtag  DW_TAG_member
	.dwattr $C$DW$582, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$582, DW_AT_name("INTx2")
	.dwattr $C$DW$582, DW_AT_TI_symbol_name("_INTx2")
	.dwattr $C$DW$582, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$582, DW_AT_bit_size(0x01)
	.dwattr $C$DW$582, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$582, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$583	.dwtag  DW_TAG_member
	.dwattr $C$DW$583, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$583, DW_AT_name("INTx3")
	.dwattr $C$DW$583, DW_AT_TI_symbol_name("_INTx3")
	.dwattr $C$DW$583, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$583, DW_AT_bit_size(0x01)
	.dwattr $C$DW$583, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$583, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$584	.dwtag  DW_TAG_member
	.dwattr $C$DW$584, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$584, DW_AT_name("INTx4")
	.dwattr $C$DW$584, DW_AT_TI_symbol_name("_INTx4")
	.dwattr $C$DW$584, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$584, DW_AT_bit_size(0x01)
	.dwattr $C$DW$584, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$584, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$585	.dwtag  DW_TAG_member
	.dwattr $C$DW$585, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$585, DW_AT_name("INTx5")
	.dwattr $C$DW$585, DW_AT_TI_symbol_name("_INTx5")
	.dwattr $C$DW$585, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$585, DW_AT_bit_size(0x01)
	.dwattr $C$DW$585, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$585, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$586	.dwtag  DW_TAG_member
	.dwattr $C$DW$586, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$586, DW_AT_name("INTx6")
	.dwattr $C$DW$586, DW_AT_TI_symbol_name("_INTx6")
	.dwattr $C$DW$586, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$586, DW_AT_bit_size(0x01)
	.dwattr $C$DW$586, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$586, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$587	.dwtag  DW_TAG_member
	.dwattr $C$DW$587, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$587, DW_AT_name("INTx7")
	.dwattr $C$DW$587, DW_AT_TI_symbol_name("_INTx7")
	.dwattr $C$DW$587, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$587, DW_AT_bit_size(0x01)
	.dwattr $C$DW$587, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$587, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$588	.dwtag  DW_TAG_member
	.dwattr $C$DW$588, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$588, DW_AT_name("INTx8")
	.dwattr $C$DW$588, DW_AT_TI_symbol_name("_INTx8")
	.dwattr $C$DW$588, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$588, DW_AT_bit_size(0x01)
	.dwattr $C$DW$588, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$588, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$589	.dwtag  DW_TAG_member
	.dwattr $C$DW$589, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$589, DW_AT_name("INTx9")
	.dwattr $C$DW$589, DW_AT_TI_symbol_name("_INTx9")
	.dwattr $C$DW$589, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$589, DW_AT_bit_size(0x01)
	.dwattr $C$DW$589, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$589, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$590	.dwtag  DW_TAG_member
	.dwattr $C$DW$590, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$590, DW_AT_name("INTx10")
	.dwattr $C$DW$590, DW_AT_TI_symbol_name("_INTx10")
	.dwattr $C$DW$590, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$590, DW_AT_bit_size(0x01)
	.dwattr $C$DW$590, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$590, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$591	.dwtag  DW_TAG_member
	.dwattr $C$DW$591, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$591, DW_AT_name("INTx11")
	.dwattr $C$DW$591, DW_AT_TI_symbol_name("_INTx11")
	.dwattr $C$DW$591, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$591, DW_AT_bit_size(0x01)
	.dwattr $C$DW$591, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$591, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$592	.dwtag  DW_TAG_member
	.dwattr $C$DW$592, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$592, DW_AT_name("INTx12")
	.dwattr $C$DW$592, DW_AT_TI_symbol_name("_INTx12")
	.dwattr $C$DW$592, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$592, DW_AT_bit_size(0x01)
	.dwattr $C$DW$592, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$592, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$593	.dwtag  DW_TAG_member
	.dwattr $C$DW$593, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$593, DW_AT_name("INTx13")
	.dwattr $C$DW$593, DW_AT_TI_symbol_name("_INTx13")
	.dwattr $C$DW$593, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$593, DW_AT_bit_size(0x01)
	.dwattr $C$DW$593, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$593, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$594	.dwtag  DW_TAG_member
	.dwattr $C$DW$594, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$594, DW_AT_name("INTx14")
	.dwattr $C$DW$594, DW_AT_TI_symbol_name("_INTx14")
	.dwattr $C$DW$594, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$594, DW_AT_bit_size(0x01)
	.dwattr $C$DW$594, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$594, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$595	.dwtag  DW_TAG_member
	.dwattr $C$DW$595, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$595, DW_AT_name("INTx15")
	.dwattr $C$DW$595, DW_AT_TI_symbol_name("_INTx15")
	.dwattr $C$DW$595, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$595, DW_AT_bit_size(0x01)
	.dwattr $C$DW$595, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$595, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$596	.dwtag  DW_TAG_member
	.dwattr $C$DW$596, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$596, DW_AT_name("INTx16")
	.dwattr $C$DW$596, DW_AT_TI_symbol_name("_INTx16")
	.dwattr $C$DW$596, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$596, DW_AT_bit_size(0x01)
	.dwattr $C$DW$596, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$596, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$66


$C$DW$T$67	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$67, DW_AT_name("PIEIER3_REG")
	.dwattr $C$DW$T$67, DW_AT_byte_size(0x01)
$C$DW$597	.dwtag  DW_TAG_member
	.dwattr $C$DW$597, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$597, DW_AT_name("all")
	.dwattr $C$DW$597, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$597, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$597, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$598	.dwtag  DW_TAG_member
	.dwattr $C$DW$598, DW_AT_type(*$C$DW$T$66)
	.dwattr $C$DW$598, DW_AT_name("bit")
	.dwattr $C$DW$598, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$598, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$598, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$67


$C$DW$T$68	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$68, DW_AT_name("PIEIER4_BITS")
	.dwattr $C$DW$T$68, DW_AT_byte_size(0x01)
$C$DW$599	.dwtag  DW_TAG_member
	.dwattr $C$DW$599, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$599, DW_AT_name("INTx1")
	.dwattr $C$DW$599, DW_AT_TI_symbol_name("_INTx1")
	.dwattr $C$DW$599, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$599, DW_AT_bit_size(0x01)
	.dwattr $C$DW$599, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$599, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$600	.dwtag  DW_TAG_member
	.dwattr $C$DW$600, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$600, DW_AT_name("INTx2")
	.dwattr $C$DW$600, DW_AT_TI_symbol_name("_INTx2")
	.dwattr $C$DW$600, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$600, DW_AT_bit_size(0x01)
	.dwattr $C$DW$600, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$600, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$601	.dwtag  DW_TAG_member
	.dwattr $C$DW$601, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$601, DW_AT_name("INTx3")
	.dwattr $C$DW$601, DW_AT_TI_symbol_name("_INTx3")
	.dwattr $C$DW$601, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$601, DW_AT_bit_size(0x01)
	.dwattr $C$DW$601, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$601, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$602	.dwtag  DW_TAG_member
	.dwattr $C$DW$602, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$602, DW_AT_name("INTx4")
	.dwattr $C$DW$602, DW_AT_TI_symbol_name("_INTx4")
	.dwattr $C$DW$602, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$602, DW_AT_bit_size(0x01)
	.dwattr $C$DW$602, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$602, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$603	.dwtag  DW_TAG_member
	.dwattr $C$DW$603, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$603, DW_AT_name("INTx5")
	.dwattr $C$DW$603, DW_AT_TI_symbol_name("_INTx5")
	.dwattr $C$DW$603, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$603, DW_AT_bit_size(0x01)
	.dwattr $C$DW$603, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$603, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$604	.dwtag  DW_TAG_member
	.dwattr $C$DW$604, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$604, DW_AT_name("INTx6")
	.dwattr $C$DW$604, DW_AT_TI_symbol_name("_INTx6")
	.dwattr $C$DW$604, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$604, DW_AT_bit_size(0x01)
	.dwattr $C$DW$604, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$604, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$605	.dwtag  DW_TAG_member
	.dwattr $C$DW$605, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$605, DW_AT_name("INTx7")
	.dwattr $C$DW$605, DW_AT_TI_symbol_name("_INTx7")
	.dwattr $C$DW$605, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$605, DW_AT_bit_size(0x01)
	.dwattr $C$DW$605, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$605, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$606	.dwtag  DW_TAG_member
	.dwattr $C$DW$606, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$606, DW_AT_name("INTx8")
	.dwattr $C$DW$606, DW_AT_TI_symbol_name("_INTx8")
	.dwattr $C$DW$606, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$606, DW_AT_bit_size(0x01)
	.dwattr $C$DW$606, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$606, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$607	.dwtag  DW_TAG_member
	.dwattr $C$DW$607, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$607, DW_AT_name("INTx9")
	.dwattr $C$DW$607, DW_AT_TI_symbol_name("_INTx9")
	.dwattr $C$DW$607, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$607, DW_AT_bit_size(0x01)
	.dwattr $C$DW$607, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$607, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$608	.dwtag  DW_TAG_member
	.dwattr $C$DW$608, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$608, DW_AT_name("INTx10")
	.dwattr $C$DW$608, DW_AT_TI_symbol_name("_INTx10")
	.dwattr $C$DW$608, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$608, DW_AT_bit_size(0x01)
	.dwattr $C$DW$608, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$608, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$609	.dwtag  DW_TAG_member
	.dwattr $C$DW$609, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$609, DW_AT_name("INTx11")
	.dwattr $C$DW$609, DW_AT_TI_symbol_name("_INTx11")
	.dwattr $C$DW$609, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$609, DW_AT_bit_size(0x01)
	.dwattr $C$DW$609, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$609, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$610	.dwtag  DW_TAG_member
	.dwattr $C$DW$610, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$610, DW_AT_name("INTx12")
	.dwattr $C$DW$610, DW_AT_TI_symbol_name("_INTx12")
	.dwattr $C$DW$610, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$610, DW_AT_bit_size(0x01)
	.dwattr $C$DW$610, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$610, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$611	.dwtag  DW_TAG_member
	.dwattr $C$DW$611, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$611, DW_AT_name("INTx13")
	.dwattr $C$DW$611, DW_AT_TI_symbol_name("_INTx13")
	.dwattr $C$DW$611, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$611, DW_AT_bit_size(0x01)
	.dwattr $C$DW$611, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$611, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$612	.dwtag  DW_TAG_member
	.dwattr $C$DW$612, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$612, DW_AT_name("INTx14")
	.dwattr $C$DW$612, DW_AT_TI_symbol_name("_INTx14")
	.dwattr $C$DW$612, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$612, DW_AT_bit_size(0x01)
	.dwattr $C$DW$612, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$612, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$613	.dwtag  DW_TAG_member
	.dwattr $C$DW$613, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$613, DW_AT_name("INTx15")
	.dwattr $C$DW$613, DW_AT_TI_symbol_name("_INTx15")
	.dwattr $C$DW$613, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$613, DW_AT_bit_size(0x01)
	.dwattr $C$DW$613, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$613, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$614	.dwtag  DW_TAG_member
	.dwattr $C$DW$614, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$614, DW_AT_name("INTx16")
	.dwattr $C$DW$614, DW_AT_TI_symbol_name("_INTx16")
	.dwattr $C$DW$614, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$614, DW_AT_bit_size(0x01)
	.dwattr $C$DW$614, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$614, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$68


$C$DW$T$69	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$69, DW_AT_name("PIEIER4_REG")
	.dwattr $C$DW$T$69, DW_AT_byte_size(0x01)
$C$DW$615	.dwtag  DW_TAG_member
	.dwattr $C$DW$615, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$615, DW_AT_name("all")
	.dwattr $C$DW$615, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$615, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$615, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$616	.dwtag  DW_TAG_member
	.dwattr $C$DW$616, DW_AT_type(*$C$DW$T$68)
	.dwattr $C$DW$616, DW_AT_name("bit")
	.dwattr $C$DW$616, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$616, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$616, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$69


$C$DW$T$70	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$70, DW_AT_name("PIEIER5_BITS")
	.dwattr $C$DW$T$70, DW_AT_byte_size(0x01)
$C$DW$617	.dwtag  DW_TAG_member
	.dwattr $C$DW$617, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$617, DW_AT_name("INTx1")
	.dwattr $C$DW$617, DW_AT_TI_symbol_name("_INTx1")
	.dwattr $C$DW$617, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$617, DW_AT_bit_size(0x01)
	.dwattr $C$DW$617, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$617, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$618	.dwtag  DW_TAG_member
	.dwattr $C$DW$618, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$618, DW_AT_name("INTx2")
	.dwattr $C$DW$618, DW_AT_TI_symbol_name("_INTx2")
	.dwattr $C$DW$618, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$618, DW_AT_bit_size(0x01)
	.dwattr $C$DW$618, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$618, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$619	.dwtag  DW_TAG_member
	.dwattr $C$DW$619, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$619, DW_AT_name("INTx3")
	.dwattr $C$DW$619, DW_AT_TI_symbol_name("_INTx3")
	.dwattr $C$DW$619, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$619, DW_AT_bit_size(0x01)
	.dwattr $C$DW$619, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$619, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$620	.dwtag  DW_TAG_member
	.dwattr $C$DW$620, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$620, DW_AT_name("INTx4")
	.dwattr $C$DW$620, DW_AT_TI_symbol_name("_INTx4")
	.dwattr $C$DW$620, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$620, DW_AT_bit_size(0x01)
	.dwattr $C$DW$620, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$620, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$621	.dwtag  DW_TAG_member
	.dwattr $C$DW$621, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$621, DW_AT_name("INTx5")
	.dwattr $C$DW$621, DW_AT_TI_symbol_name("_INTx5")
	.dwattr $C$DW$621, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$621, DW_AT_bit_size(0x01)
	.dwattr $C$DW$621, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$621, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$622	.dwtag  DW_TAG_member
	.dwattr $C$DW$622, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$622, DW_AT_name("INTx6")
	.dwattr $C$DW$622, DW_AT_TI_symbol_name("_INTx6")
	.dwattr $C$DW$622, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$622, DW_AT_bit_size(0x01)
	.dwattr $C$DW$622, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$622, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$623	.dwtag  DW_TAG_member
	.dwattr $C$DW$623, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$623, DW_AT_name("INTx7")
	.dwattr $C$DW$623, DW_AT_TI_symbol_name("_INTx7")
	.dwattr $C$DW$623, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$623, DW_AT_bit_size(0x01)
	.dwattr $C$DW$623, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$623, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$624	.dwtag  DW_TAG_member
	.dwattr $C$DW$624, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$624, DW_AT_name("INTx8")
	.dwattr $C$DW$624, DW_AT_TI_symbol_name("_INTx8")
	.dwattr $C$DW$624, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$624, DW_AT_bit_size(0x01)
	.dwattr $C$DW$624, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$624, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$625	.dwtag  DW_TAG_member
	.dwattr $C$DW$625, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$625, DW_AT_name("INTx9")
	.dwattr $C$DW$625, DW_AT_TI_symbol_name("_INTx9")
	.dwattr $C$DW$625, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$625, DW_AT_bit_size(0x01)
	.dwattr $C$DW$625, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$625, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$626	.dwtag  DW_TAG_member
	.dwattr $C$DW$626, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$626, DW_AT_name("INTx10")
	.dwattr $C$DW$626, DW_AT_TI_symbol_name("_INTx10")
	.dwattr $C$DW$626, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$626, DW_AT_bit_size(0x01)
	.dwattr $C$DW$626, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$626, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$627	.dwtag  DW_TAG_member
	.dwattr $C$DW$627, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$627, DW_AT_name("INTx11")
	.dwattr $C$DW$627, DW_AT_TI_symbol_name("_INTx11")
	.dwattr $C$DW$627, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$627, DW_AT_bit_size(0x01)
	.dwattr $C$DW$627, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$627, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$628	.dwtag  DW_TAG_member
	.dwattr $C$DW$628, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$628, DW_AT_name("INTx12")
	.dwattr $C$DW$628, DW_AT_TI_symbol_name("_INTx12")
	.dwattr $C$DW$628, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$628, DW_AT_bit_size(0x01)
	.dwattr $C$DW$628, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$628, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$629	.dwtag  DW_TAG_member
	.dwattr $C$DW$629, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$629, DW_AT_name("INTx13")
	.dwattr $C$DW$629, DW_AT_TI_symbol_name("_INTx13")
	.dwattr $C$DW$629, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$629, DW_AT_bit_size(0x01)
	.dwattr $C$DW$629, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$629, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$630	.dwtag  DW_TAG_member
	.dwattr $C$DW$630, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$630, DW_AT_name("INTx14")
	.dwattr $C$DW$630, DW_AT_TI_symbol_name("_INTx14")
	.dwattr $C$DW$630, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$630, DW_AT_bit_size(0x01)
	.dwattr $C$DW$630, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$630, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$631	.dwtag  DW_TAG_member
	.dwattr $C$DW$631, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$631, DW_AT_name("INTx15")
	.dwattr $C$DW$631, DW_AT_TI_symbol_name("_INTx15")
	.dwattr $C$DW$631, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$631, DW_AT_bit_size(0x01)
	.dwattr $C$DW$631, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$631, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$632	.dwtag  DW_TAG_member
	.dwattr $C$DW$632, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$632, DW_AT_name("INTx16")
	.dwattr $C$DW$632, DW_AT_TI_symbol_name("_INTx16")
	.dwattr $C$DW$632, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$632, DW_AT_bit_size(0x01)
	.dwattr $C$DW$632, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$632, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$70


$C$DW$T$71	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$71, DW_AT_name("PIEIER5_REG")
	.dwattr $C$DW$T$71, DW_AT_byte_size(0x01)
$C$DW$633	.dwtag  DW_TAG_member
	.dwattr $C$DW$633, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$633, DW_AT_name("all")
	.dwattr $C$DW$633, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$633, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$633, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$634	.dwtag  DW_TAG_member
	.dwattr $C$DW$634, DW_AT_type(*$C$DW$T$70)
	.dwattr $C$DW$634, DW_AT_name("bit")
	.dwattr $C$DW$634, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$634, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$634, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$71


$C$DW$T$72	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$72, DW_AT_name("PIEIER6_BITS")
	.dwattr $C$DW$T$72, DW_AT_byte_size(0x01)
$C$DW$635	.dwtag  DW_TAG_member
	.dwattr $C$DW$635, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$635, DW_AT_name("INTx1")
	.dwattr $C$DW$635, DW_AT_TI_symbol_name("_INTx1")
	.dwattr $C$DW$635, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$635, DW_AT_bit_size(0x01)
	.dwattr $C$DW$635, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$635, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$636	.dwtag  DW_TAG_member
	.dwattr $C$DW$636, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$636, DW_AT_name("INTx2")
	.dwattr $C$DW$636, DW_AT_TI_symbol_name("_INTx2")
	.dwattr $C$DW$636, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$636, DW_AT_bit_size(0x01)
	.dwattr $C$DW$636, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$636, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$637	.dwtag  DW_TAG_member
	.dwattr $C$DW$637, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$637, DW_AT_name("INTx3")
	.dwattr $C$DW$637, DW_AT_TI_symbol_name("_INTx3")
	.dwattr $C$DW$637, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$637, DW_AT_bit_size(0x01)
	.dwattr $C$DW$637, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$637, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$638	.dwtag  DW_TAG_member
	.dwattr $C$DW$638, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$638, DW_AT_name("INTx4")
	.dwattr $C$DW$638, DW_AT_TI_symbol_name("_INTx4")
	.dwattr $C$DW$638, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$638, DW_AT_bit_size(0x01)
	.dwattr $C$DW$638, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$638, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$639	.dwtag  DW_TAG_member
	.dwattr $C$DW$639, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$639, DW_AT_name("INTx5")
	.dwattr $C$DW$639, DW_AT_TI_symbol_name("_INTx5")
	.dwattr $C$DW$639, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$639, DW_AT_bit_size(0x01)
	.dwattr $C$DW$639, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$639, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$640	.dwtag  DW_TAG_member
	.dwattr $C$DW$640, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$640, DW_AT_name("INTx6")
	.dwattr $C$DW$640, DW_AT_TI_symbol_name("_INTx6")
	.dwattr $C$DW$640, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$640, DW_AT_bit_size(0x01)
	.dwattr $C$DW$640, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$640, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$641	.dwtag  DW_TAG_member
	.dwattr $C$DW$641, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$641, DW_AT_name("INTx7")
	.dwattr $C$DW$641, DW_AT_TI_symbol_name("_INTx7")
	.dwattr $C$DW$641, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$641, DW_AT_bit_size(0x01)
	.dwattr $C$DW$641, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$641, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$642	.dwtag  DW_TAG_member
	.dwattr $C$DW$642, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$642, DW_AT_name("INTx8")
	.dwattr $C$DW$642, DW_AT_TI_symbol_name("_INTx8")
	.dwattr $C$DW$642, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$642, DW_AT_bit_size(0x01)
	.dwattr $C$DW$642, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$642, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$643	.dwtag  DW_TAG_member
	.dwattr $C$DW$643, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$643, DW_AT_name("INTx9")
	.dwattr $C$DW$643, DW_AT_TI_symbol_name("_INTx9")
	.dwattr $C$DW$643, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$643, DW_AT_bit_size(0x01)
	.dwattr $C$DW$643, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$643, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$644	.dwtag  DW_TAG_member
	.dwattr $C$DW$644, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$644, DW_AT_name("INTx10")
	.dwattr $C$DW$644, DW_AT_TI_symbol_name("_INTx10")
	.dwattr $C$DW$644, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$644, DW_AT_bit_size(0x01)
	.dwattr $C$DW$644, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$644, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$645	.dwtag  DW_TAG_member
	.dwattr $C$DW$645, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$645, DW_AT_name("INTx11")
	.dwattr $C$DW$645, DW_AT_TI_symbol_name("_INTx11")
	.dwattr $C$DW$645, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$645, DW_AT_bit_size(0x01)
	.dwattr $C$DW$645, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$645, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$646	.dwtag  DW_TAG_member
	.dwattr $C$DW$646, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$646, DW_AT_name("INTx12")
	.dwattr $C$DW$646, DW_AT_TI_symbol_name("_INTx12")
	.dwattr $C$DW$646, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$646, DW_AT_bit_size(0x01)
	.dwattr $C$DW$646, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$646, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$647	.dwtag  DW_TAG_member
	.dwattr $C$DW$647, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$647, DW_AT_name("INTx13")
	.dwattr $C$DW$647, DW_AT_TI_symbol_name("_INTx13")
	.dwattr $C$DW$647, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$647, DW_AT_bit_size(0x01)
	.dwattr $C$DW$647, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$647, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$648	.dwtag  DW_TAG_member
	.dwattr $C$DW$648, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$648, DW_AT_name("INTx14")
	.dwattr $C$DW$648, DW_AT_TI_symbol_name("_INTx14")
	.dwattr $C$DW$648, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$648, DW_AT_bit_size(0x01)
	.dwattr $C$DW$648, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$648, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$649	.dwtag  DW_TAG_member
	.dwattr $C$DW$649, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$649, DW_AT_name("INTx15")
	.dwattr $C$DW$649, DW_AT_TI_symbol_name("_INTx15")
	.dwattr $C$DW$649, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$649, DW_AT_bit_size(0x01)
	.dwattr $C$DW$649, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$649, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$650	.dwtag  DW_TAG_member
	.dwattr $C$DW$650, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$650, DW_AT_name("INTx16")
	.dwattr $C$DW$650, DW_AT_TI_symbol_name("_INTx16")
	.dwattr $C$DW$650, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$650, DW_AT_bit_size(0x01)
	.dwattr $C$DW$650, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$650, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$72


$C$DW$T$73	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$73, DW_AT_name("PIEIER6_REG")
	.dwattr $C$DW$T$73, DW_AT_byte_size(0x01)
$C$DW$651	.dwtag  DW_TAG_member
	.dwattr $C$DW$651, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$651, DW_AT_name("all")
	.dwattr $C$DW$651, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$651, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$651, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$652	.dwtag  DW_TAG_member
	.dwattr $C$DW$652, DW_AT_type(*$C$DW$T$72)
	.dwattr $C$DW$652, DW_AT_name("bit")
	.dwattr $C$DW$652, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$652, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$652, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$73


$C$DW$T$74	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$74, DW_AT_name("PIEIER7_BITS")
	.dwattr $C$DW$T$74, DW_AT_byte_size(0x01)
$C$DW$653	.dwtag  DW_TAG_member
	.dwattr $C$DW$653, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$653, DW_AT_name("INTx1")
	.dwattr $C$DW$653, DW_AT_TI_symbol_name("_INTx1")
	.dwattr $C$DW$653, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$653, DW_AT_bit_size(0x01)
	.dwattr $C$DW$653, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$653, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$654	.dwtag  DW_TAG_member
	.dwattr $C$DW$654, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$654, DW_AT_name("INTx2")
	.dwattr $C$DW$654, DW_AT_TI_symbol_name("_INTx2")
	.dwattr $C$DW$654, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$654, DW_AT_bit_size(0x01)
	.dwattr $C$DW$654, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$654, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$655	.dwtag  DW_TAG_member
	.dwattr $C$DW$655, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$655, DW_AT_name("INTx3")
	.dwattr $C$DW$655, DW_AT_TI_symbol_name("_INTx3")
	.dwattr $C$DW$655, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$655, DW_AT_bit_size(0x01)
	.dwattr $C$DW$655, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$655, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$656	.dwtag  DW_TAG_member
	.dwattr $C$DW$656, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$656, DW_AT_name("INTx4")
	.dwattr $C$DW$656, DW_AT_TI_symbol_name("_INTx4")
	.dwattr $C$DW$656, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$656, DW_AT_bit_size(0x01)
	.dwattr $C$DW$656, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$656, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$657	.dwtag  DW_TAG_member
	.dwattr $C$DW$657, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$657, DW_AT_name("INTx5")
	.dwattr $C$DW$657, DW_AT_TI_symbol_name("_INTx5")
	.dwattr $C$DW$657, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$657, DW_AT_bit_size(0x01)
	.dwattr $C$DW$657, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$657, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$658	.dwtag  DW_TAG_member
	.dwattr $C$DW$658, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$658, DW_AT_name("INTx6")
	.dwattr $C$DW$658, DW_AT_TI_symbol_name("_INTx6")
	.dwattr $C$DW$658, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$658, DW_AT_bit_size(0x01)
	.dwattr $C$DW$658, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$658, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$659	.dwtag  DW_TAG_member
	.dwattr $C$DW$659, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$659, DW_AT_name("INTx7")
	.dwattr $C$DW$659, DW_AT_TI_symbol_name("_INTx7")
	.dwattr $C$DW$659, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$659, DW_AT_bit_size(0x01)
	.dwattr $C$DW$659, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$659, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$660	.dwtag  DW_TAG_member
	.dwattr $C$DW$660, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$660, DW_AT_name("INTx8")
	.dwattr $C$DW$660, DW_AT_TI_symbol_name("_INTx8")
	.dwattr $C$DW$660, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$660, DW_AT_bit_size(0x01)
	.dwattr $C$DW$660, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$660, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$661	.dwtag  DW_TAG_member
	.dwattr $C$DW$661, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$661, DW_AT_name("INTx9")
	.dwattr $C$DW$661, DW_AT_TI_symbol_name("_INTx9")
	.dwattr $C$DW$661, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$661, DW_AT_bit_size(0x01)
	.dwattr $C$DW$661, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$661, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$662	.dwtag  DW_TAG_member
	.dwattr $C$DW$662, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$662, DW_AT_name("INTx10")
	.dwattr $C$DW$662, DW_AT_TI_symbol_name("_INTx10")
	.dwattr $C$DW$662, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$662, DW_AT_bit_size(0x01)
	.dwattr $C$DW$662, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$662, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$663	.dwtag  DW_TAG_member
	.dwattr $C$DW$663, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$663, DW_AT_name("INTx11")
	.dwattr $C$DW$663, DW_AT_TI_symbol_name("_INTx11")
	.dwattr $C$DW$663, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$663, DW_AT_bit_size(0x01)
	.dwattr $C$DW$663, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$663, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$664	.dwtag  DW_TAG_member
	.dwattr $C$DW$664, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$664, DW_AT_name("INTx12")
	.dwattr $C$DW$664, DW_AT_TI_symbol_name("_INTx12")
	.dwattr $C$DW$664, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$664, DW_AT_bit_size(0x01)
	.dwattr $C$DW$664, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$664, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$665	.dwtag  DW_TAG_member
	.dwattr $C$DW$665, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$665, DW_AT_name("INTx13")
	.dwattr $C$DW$665, DW_AT_TI_symbol_name("_INTx13")
	.dwattr $C$DW$665, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$665, DW_AT_bit_size(0x01)
	.dwattr $C$DW$665, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$665, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$666	.dwtag  DW_TAG_member
	.dwattr $C$DW$666, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$666, DW_AT_name("INTx14")
	.dwattr $C$DW$666, DW_AT_TI_symbol_name("_INTx14")
	.dwattr $C$DW$666, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$666, DW_AT_bit_size(0x01)
	.dwattr $C$DW$666, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$666, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$667	.dwtag  DW_TAG_member
	.dwattr $C$DW$667, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$667, DW_AT_name("INTx15")
	.dwattr $C$DW$667, DW_AT_TI_symbol_name("_INTx15")
	.dwattr $C$DW$667, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$667, DW_AT_bit_size(0x01)
	.dwattr $C$DW$667, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$667, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$668	.dwtag  DW_TAG_member
	.dwattr $C$DW$668, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$668, DW_AT_name("INTx16")
	.dwattr $C$DW$668, DW_AT_TI_symbol_name("_INTx16")
	.dwattr $C$DW$668, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$668, DW_AT_bit_size(0x01)
	.dwattr $C$DW$668, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$668, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$74


$C$DW$T$75	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$75, DW_AT_name("PIEIER7_REG")
	.dwattr $C$DW$T$75, DW_AT_byte_size(0x01)
$C$DW$669	.dwtag  DW_TAG_member
	.dwattr $C$DW$669, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$669, DW_AT_name("all")
	.dwattr $C$DW$669, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$669, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$669, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$670	.dwtag  DW_TAG_member
	.dwattr $C$DW$670, DW_AT_type(*$C$DW$T$74)
	.dwattr $C$DW$670, DW_AT_name("bit")
	.dwattr $C$DW$670, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$670, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$670, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$75


$C$DW$T$76	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$76, DW_AT_name("PIEIER8_BITS")
	.dwattr $C$DW$T$76, DW_AT_byte_size(0x01)
$C$DW$671	.dwtag  DW_TAG_member
	.dwattr $C$DW$671, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$671, DW_AT_name("INTx1")
	.dwattr $C$DW$671, DW_AT_TI_symbol_name("_INTx1")
	.dwattr $C$DW$671, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$671, DW_AT_bit_size(0x01)
	.dwattr $C$DW$671, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$671, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$672	.dwtag  DW_TAG_member
	.dwattr $C$DW$672, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$672, DW_AT_name("INTx2")
	.dwattr $C$DW$672, DW_AT_TI_symbol_name("_INTx2")
	.dwattr $C$DW$672, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$672, DW_AT_bit_size(0x01)
	.dwattr $C$DW$672, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$672, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$673	.dwtag  DW_TAG_member
	.dwattr $C$DW$673, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$673, DW_AT_name("INTx3")
	.dwattr $C$DW$673, DW_AT_TI_symbol_name("_INTx3")
	.dwattr $C$DW$673, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$673, DW_AT_bit_size(0x01)
	.dwattr $C$DW$673, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$673, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$674	.dwtag  DW_TAG_member
	.dwattr $C$DW$674, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$674, DW_AT_name("INTx4")
	.dwattr $C$DW$674, DW_AT_TI_symbol_name("_INTx4")
	.dwattr $C$DW$674, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$674, DW_AT_bit_size(0x01)
	.dwattr $C$DW$674, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$674, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$675	.dwtag  DW_TAG_member
	.dwattr $C$DW$675, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$675, DW_AT_name("INTx5")
	.dwattr $C$DW$675, DW_AT_TI_symbol_name("_INTx5")
	.dwattr $C$DW$675, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$675, DW_AT_bit_size(0x01)
	.dwattr $C$DW$675, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$675, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$676	.dwtag  DW_TAG_member
	.dwattr $C$DW$676, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$676, DW_AT_name("INTx6")
	.dwattr $C$DW$676, DW_AT_TI_symbol_name("_INTx6")
	.dwattr $C$DW$676, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$676, DW_AT_bit_size(0x01)
	.dwattr $C$DW$676, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$676, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$677	.dwtag  DW_TAG_member
	.dwattr $C$DW$677, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$677, DW_AT_name("INTx7")
	.dwattr $C$DW$677, DW_AT_TI_symbol_name("_INTx7")
	.dwattr $C$DW$677, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$677, DW_AT_bit_size(0x01)
	.dwattr $C$DW$677, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$677, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$678	.dwtag  DW_TAG_member
	.dwattr $C$DW$678, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$678, DW_AT_name("INTx8")
	.dwattr $C$DW$678, DW_AT_TI_symbol_name("_INTx8")
	.dwattr $C$DW$678, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$678, DW_AT_bit_size(0x01)
	.dwattr $C$DW$678, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$678, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$679	.dwtag  DW_TAG_member
	.dwattr $C$DW$679, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$679, DW_AT_name("INTx9")
	.dwattr $C$DW$679, DW_AT_TI_symbol_name("_INTx9")
	.dwattr $C$DW$679, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$679, DW_AT_bit_size(0x01)
	.dwattr $C$DW$679, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$679, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$680	.dwtag  DW_TAG_member
	.dwattr $C$DW$680, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$680, DW_AT_name("INTx10")
	.dwattr $C$DW$680, DW_AT_TI_symbol_name("_INTx10")
	.dwattr $C$DW$680, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$680, DW_AT_bit_size(0x01)
	.dwattr $C$DW$680, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$680, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$681	.dwtag  DW_TAG_member
	.dwattr $C$DW$681, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$681, DW_AT_name("INTx11")
	.dwattr $C$DW$681, DW_AT_TI_symbol_name("_INTx11")
	.dwattr $C$DW$681, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$681, DW_AT_bit_size(0x01)
	.dwattr $C$DW$681, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$681, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$682	.dwtag  DW_TAG_member
	.dwattr $C$DW$682, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$682, DW_AT_name("INTx12")
	.dwattr $C$DW$682, DW_AT_TI_symbol_name("_INTx12")
	.dwattr $C$DW$682, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$682, DW_AT_bit_size(0x01)
	.dwattr $C$DW$682, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$682, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$683	.dwtag  DW_TAG_member
	.dwattr $C$DW$683, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$683, DW_AT_name("INTx13")
	.dwattr $C$DW$683, DW_AT_TI_symbol_name("_INTx13")
	.dwattr $C$DW$683, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$683, DW_AT_bit_size(0x01)
	.dwattr $C$DW$683, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$683, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$684	.dwtag  DW_TAG_member
	.dwattr $C$DW$684, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$684, DW_AT_name("INTx14")
	.dwattr $C$DW$684, DW_AT_TI_symbol_name("_INTx14")
	.dwattr $C$DW$684, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$684, DW_AT_bit_size(0x01)
	.dwattr $C$DW$684, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$684, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$685	.dwtag  DW_TAG_member
	.dwattr $C$DW$685, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$685, DW_AT_name("INTx15")
	.dwattr $C$DW$685, DW_AT_TI_symbol_name("_INTx15")
	.dwattr $C$DW$685, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$685, DW_AT_bit_size(0x01)
	.dwattr $C$DW$685, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$685, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$686	.dwtag  DW_TAG_member
	.dwattr $C$DW$686, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$686, DW_AT_name("INTx16")
	.dwattr $C$DW$686, DW_AT_TI_symbol_name("_INTx16")
	.dwattr $C$DW$686, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$686, DW_AT_bit_size(0x01)
	.dwattr $C$DW$686, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$686, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$76


$C$DW$T$77	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$77, DW_AT_name("PIEIER8_REG")
	.dwattr $C$DW$T$77, DW_AT_byte_size(0x01)
$C$DW$687	.dwtag  DW_TAG_member
	.dwattr $C$DW$687, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$687, DW_AT_name("all")
	.dwattr $C$DW$687, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$687, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$687, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$688	.dwtag  DW_TAG_member
	.dwattr $C$DW$688, DW_AT_type(*$C$DW$T$76)
	.dwattr $C$DW$688, DW_AT_name("bit")
	.dwattr $C$DW$688, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$688, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$688, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$77


$C$DW$T$78	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$78, DW_AT_name("PIEIER9_BITS")
	.dwattr $C$DW$T$78, DW_AT_byte_size(0x01)
$C$DW$689	.dwtag  DW_TAG_member
	.dwattr $C$DW$689, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$689, DW_AT_name("INTx1")
	.dwattr $C$DW$689, DW_AT_TI_symbol_name("_INTx1")
	.dwattr $C$DW$689, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$689, DW_AT_bit_size(0x01)
	.dwattr $C$DW$689, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$689, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$690	.dwtag  DW_TAG_member
	.dwattr $C$DW$690, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$690, DW_AT_name("INTx2")
	.dwattr $C$DW$690, DW_AT_TI_symbol_name("_INTx2")
	.dwattr $C$DW$690, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$690, DW_AT_bit_size(0x01)
	.dwattr $C$DW$690, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$690, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$691	.dwtag  DW_TAG_member
	.dwattr $C$DW$691, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$691, DW_AT_name("INTx3")
	.dwattr $C$DW$691, DW_AT_TI_symbol_name("_INTx3")
	.dwattr $C$DW$691, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$691, DW_AT_bit_size(0x01)
	.dwattr $C$DW$691, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$691, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$692	.dwtag  DW_TAG_member
	.dwattr $C$DW$692, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$692, DW_AT_name("INTx4")
	.dwattr $C$DW$692, DW_AT_TI_symbol_name("_INTx4")
	.dwattr $C$DW$692, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$692, DW_AT_bit_size(0x01)
	.dwattr $C$DW$692, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$692, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$693	.dwtag  DW_TAG_member
	.dwattr $C$DW$693, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$693, DW_AT_name("INTx5")
	.dwattr $C$DW$693, DW_AT_TI_symbol_name("_INTx5")
	.dwattr $C$DW$693, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$693, DW_AT_bit_size(0x01)
	.dwattr $C$DW$693, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$693, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$694	.dwtag  DW_TAG_member
	.dwattr $C$DW$694, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$694, DW_AT_name("INTx6")
	.dwattr $C$DW$694, DW_AT_TI_symbol_name("_INTx6")
	.dwattr $C$DW$694, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$694, DW_AT_bit_size(0x01)
	.dwattr $C$DW$694, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$694, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$695	.dwtag  DW_TAG_member
	.dwattr $C$DW$695, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$695, DW_AT_name("INTx7")
	.dwattr $C$DW$695, DW_AT_TI_symbol_name("_INTx7")
	.dwattr $C$DW$695, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$695, DW_AT_bit_size(0x01)
	.dwattr $C$DW$695, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$695, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$696	.dwtag  DW_TAG_member
	.dwattr $C$DW$696, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$696, DW_AT_name("INTx8")
	.dwattr $C$DW$696, DW_AT_TI_symbol_name("_INTx8")
	.dwattr $C$DW$696, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$696, DW_AT_bit_size(0x01)
	.dwattr $C$DW$696, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$696, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$697	.dwtag  DW_TAG_member
	.dwattr $C$DW$697, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$697, DW_AT_name("INTx9")
	.dwattr $C$DW$697, DW_AT_TI_symbol_name("_INTx9")
	.dwattr $C$DW$697, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$697, DW_AT_bit_size(0x01)
	.dwattr $C$DW$697, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$697, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$698	.dwtag  DW_TAG_member
	.dwattr $C$DW$698, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$698, DW_AT_name("INTx10")
	.dwattr $C$DW$698, DW_AT_TI_symbol_name("_INTx10")
	.dwattr $C$DW$698, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$698, DW_AT_bit_size(0x01)
	.dwattr $C$DW$698, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$698, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$699	.dwtag  DW_TAG_member
	.dwattr $C$DW$699, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$699, DW_AT_name("INTx11")
	.dwattr $C$DW$699, DW_AT_TI_symbol_name("_INTx11")
	.dwattr $C$DW$699, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$699, DW_AT_bit_size(0x01)
	.dwattr $C$DW$699, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$699, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$700	.dwtag  DW_TAG_member
	.dwattr $C$DW$700, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$700, DW_AT_name("INTx12")
	.dwattr $C$DW$700, DW_AT_TI_symbol_name("_INTx12")
	.dwattr $C$DW$700, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$700, DW_AT_bit_size(0x01)
	.dwattr $C$DW$700, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$700, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$701	.dwtag  DW_TAG_member
	.dwattr $C$DW$701, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$701, DW_AT_name("INTx13")
	.dwattr $C$DW$701, DW_AT_TI_symbol_name("_INTx13")
	.dwattr $C$DW$701, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$701, DW_AT_bit_size(0x01)
	.dwattr $C$DW$701, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$701, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$702	.dwtag  DW_TAG_member
	.dwattr $C$DW$702, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$702, DW_AT_name("INTx14")
	.dwattr $C$DW$702, DW_AT_TI_symbol_name("_INTx14")
	.dwattr $C$DW$702, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$702, DW_AT_bit_size(0x01)
	.dwattr $C$DW$702, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$702, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$703	.dwtag  DW_TAG_member
	.dwattr $C$DW$703, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$703, DW_AT_name("INTx15")
	.dwattr $C$DW$703, DW_AT_TI_symbol_name("_INTx15")
	.dwattr $C$DW$703, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$703, DW_AT_bit_size(0x01)
	.dwattr $C$DW$703, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$703, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$704	.dwtag  DW_TAG_member
	.dwattr $C$DW$704, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$704, DW_AT_name("INTx16")
	.dwattr $C$DW$704, DW_AT_TI_symbol_name("_INTx16")
	.dwattr $C$DW$704, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$704, DW_AT_bit_size(0x01)
	.dwattr $C$DW$704, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$704, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$78


$C$DW$T$79	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$79, DW_AT_name("PIEIER9_REG")
	.dwattr $C$DW$T$79, DW_AT_byte_size(0x01)
$C$DW$705	.dwtag  DW_TAG_member
	.dwattr $C$DW$705, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$705, DW_AT_name("all")
	.dwattr $C$DW$705, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$705, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$705, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$706	.dwtag  DW_TAG_member
	.dwattr $C$DW$706, DW_AT_type(*$C$DW$T$78)
	.dwattr $C$DW$706, DW_AT_name("bit")
	.dwattr $C$DW$706, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$706, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$706, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$79


$C$DW$T$80	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$80, DW_AT_name("PIEIFR10_BITS")
	.dwattr $C$DW$T$80, DW_AT_byte_size(0x01)
$C$DW$707	.dwtag  DW_TAG_member
	.dwattr $C$DW$707, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$707, DW_AT_name("INTx1")
	.dwattr $C$DW$707, DW_AT_TI_symbol_name("_INTx1")
	.dwattr $C$DW$707, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$707, DW_AT_bit_size(0x01)
	.dwattr $C$DW$707, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$707, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$708	.dwtag  DW_TAG_member
	.dwattr $C$DW$708, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$708, DW_AT_name("INTx2")
	.dwattr $C$DW$708, DW_AT_TI_symbol_name("_INTx2")
	.dwattr $C$DW$708, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$708, DW_AT_bit_size(0x01)
	.dwattr $C$DW$708, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$708, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$709	.dwtag  DW_TAG_member
	.dwattr $C$DW$709, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$709, DW_AT_name("INTx3")
	.dwattr $C$DW$709, DW_AT_TI_symbol_name("_INTx3")
	.dwattr $C$DW$709, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$709, DW_AT_bit_size(0x01)
	.dwattr $C$DW$709, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$709, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$710	.dwtag  DW_TAG_member
	.dwattr $C$DW$710, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$710, DW_AT_name("INTx4")
	.dwattr $C$DW$710, DW_AT_TI_symbol_name("_INTx4")
	.dwattr $C$DW$710, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$710, DW_AT_bit_size(0x01)
	.dwattr $C$DW$710, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$710, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$711	.dwtag  DW_TAG_member
	.dwattr $C$DW$711, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$711, DW_AT_name("INTx5")
	.dwattr $C$DW$711, DW_AT_TI_symbol_name("_INTx5")
	.dwattr $C$DW$711, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$711, DW_AT_bit_size(0x01)
	.dwattr $C$DW$711, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$711, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$712	.dwtag  DW_TAG_member
	.dwattr $C$DW$712, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$712, DW_AT_name("INTx6")
	.dwattr $C$DW$712, DW_AT_TI_symbol_name("_INTx6")
	.dwattr $C$DW$712, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$712, DW_AT_bit_size(0x01)
	.dwattr $C$DW$712, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$712, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$713	.dwtag  DW_TAG_member
	.dwattr $C$DW$713, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$713, DW_AT_name("INTx7")
	.dwattr $C$DW$713, DW_AT_TI_symbol_name("_INTx7")
	.dwattr $C$DW$713, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$713, DW_AT_bit_size(0x01)
	.dwattr $C$DW$713, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$713, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$714	.dwtag  DW_TAG_member
	.dwattr $C$DW$714, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$714, DW_AT_name("INTx8")
	.dwattr $C$DW$714, DW_AT_TI_symbol_name("_INTx8")
	.dwattr $C$DW$714, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$714, DW_AT_bit_size(0x01)
	.dwattr $C$DW$714, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$714, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$715	.dwtag  DW_TAG_member
	.dwattr $C$DW$715, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$715, DW_AT_name("INTx9")
	.dwattr $C$DW$715, DW_AT_TI_symbol_name("_INTx9")
	.dwattr $C$DW$715, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$715, DW_AT_bit_size(0x01)
	.dwattr $C$DW$715, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$715, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$716	.dwtag  DW_TAG_member
	.dwattr $C$DW$716, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$716, DW_AT_name("INTx10")
	.dwattr $C$DW$716, DW_AT_TI_symbol_name("_INTx10")
	.dwattr $C$DW$716, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$716, DW_AT_bit_size(0x01)
	.dwattr $C$DW$716, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$716, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$717	.dwtag  DW_TAG_member
	.dwattr $C$DW$717, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$717, DW_AT_name("INTx11")
	.dwattr $C$DW$717, DW_AT_TI_symbol_name("_INTx11")
	.dwattr $C$DW$717, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$717, DW_AT_bit_size(0x01)
	.dwattr $C$DW$717, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$717, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$718	.dwtag  DW_TAG_member
	.dwattr $C$DW$718, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$718, DW_AT_name("INTx12")
	.dwattr $C$DW$718, DW_AT_TI_symbol_name("_INTx12")
	.dwattr $C$DW$718, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$718, DW_AT_bit_size(0x01)
	.dwattr $C$DW$718, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$718, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$719	.dwtag  DW_TAG_member
	.dwattr $C$DW$719, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$719, DW_AT_name("INTx13")
	.dwattr $C$DW$719, DW_AT_TI_symbol_name("_INTx13")
	.dwattr $C$DW$719, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$719, DW_AT_bit_size(0x01)
	.dwattr $C$DW$719, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$719, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$720	.dwtag  DW_TAG_member
	.dwattr $C$DW$720, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$720, DW_AT_name("INTx14")
	.dwattr $C$DW$720, DW_AT_TI_symbol_name("_INTx14")
	.dwattr $C$DW$720, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$720, DW_AT_bit_size(0x01)
	.dwattr $C$DW$720, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$720, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$721	.dwtag  DW_TAG_member
	.dwattr $C$DW$721, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$721, DW_AT_name("INTx15")
	.dwattr $C$DW$721, DW_AT_TI_symbol_name("_INTx15")
	.dwattr $C$DW$721, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$721, DW_AT_bit_size(0x01)
	.dwattr $C$DW$721, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$721, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$722	.dwtag  DW_TAG_member
	.dwattr $C$DW$722, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$722, DW_AT_name("INTx16")
	.dwattr $C$DW$722, DW_AT_TI_symbol_name("_INTx16")
	.dwattr $C$DW$722, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$722, DW_AT_bit_size(0x01)
	.dwattr $C$DW$722, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$722, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$80


$C$DW$T$81	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$81, DW_AT_name("PIEIFR10_REG")
	.dwattr $C$DW$T$81, DW_AT_byte_size(0x01)
$C$DW$723	.dwtag  DW_TAG_member
	.dwattr $C$DW$723, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$723, DW_AT_name("all")
	.dwattr $C$DW$723, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$723, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$723, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$724	.dwtag  DW_TAG_member
	.dwattr $C$DW$724, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$724, DW_AT_name("bit")
	.dwattr $C$DW$724, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$724, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$724, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$81


$C$DW$T$82	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$82, DW_AT_name("PIEIFR11_BITS")
	.dwattr $C$DW$T$82, DW_AT_byte_size(0x01)
$C$DW$725	.dwtag  DW_TAG_member
	.dwattr $C$DW$725, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$725, DW_AT_name("INTx1")
	.dwattr $C$DW$725, DW_AT_TI_symbol_name("_INTx1")
	.dwattr $C$DW$725, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$725, DW_AT_bit_size(0x01)
	.dwattr $C$DW$725, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$725, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$726	.dwtag  DW_TAG_member
	.dwattr $C$DW$726, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$726, DW_AT_name("INTx2")
	.dwattr $C$DW$726, DW_AT_TI_symbol_name("_INTx2")
	.dwattr $C$DW$726, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$726, DW_AT_bit_size(0x01)
	.dwattr $C$DW$726, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$726, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$727	.dwtag  DW_TAG_member
	.dwattr $C$DW$727, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$727, DW_AT_name("INTx3")
	.dwattr $C$DW$727, DW_AT_TI_symbol_name("_INTx3")
	.dwattr $C$DW$727, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$727, DW_AT_bit_size(0x01)
	.dwattr $C$DW$727, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$727, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$728	.dwtag  DW_TAG_member
	.dwattr $C$DW$728, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$728, DW_AT_name("INTx4")
	.dwattr $C$DW$728, DW_AT_TI_symbol_name("_INTx4")
	.dwattr $C$DW$728, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$728, DW_AT_bit_size(0x01)
	.dwattr $C$DW$728, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$728, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$729	.dwtag  DW_TAG_member
	.dwattr $C$DW$729, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$729, DW_AT_name("INTx5")
	.dwattr $C$DW$729, DW_AT_TI_symbol_name("_INTx5")
	.dwattr $C$DW$729, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$729, DW_AT_bit_size(0x01)
	.dwattr $C$DW$729, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$729, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$730	.dwtag  DW_TAG_member
	.dwattr $C$DW$730, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$730, DW_AT_name("INTx6")
	.dwattr $C$DW$730, DW_AT_TI_symbol_name("_INTx6")
	.dwattr $C$DW$730, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$730, DW_AT_bit_size(0x01)
	.dwattr $C$DW$730, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$730, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$731	.dwtag  DW_TAG_member
	.dwattr $C$DW$731, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$731, DW_AT_name("INTx7")
	.dwattr $C$DW$731, DW_AT_TI_symbol_name("_INTx7")
	.dwattr $C$DW$731, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$731, DW_AT_bit_size(0x01)
	.dwattr $C$DW$731, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$731, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$732	.dwtag  DW_TAG_member
	.dwattr $C$DW$732, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$732, DW_AT_name("INTx8")
	.dwattr $C$DW$732, DW_AT_TI_symbol_name("_INTx8")
	.dwattr $C$DW$732, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$732, DW_AT_bit_size(0x01)
	.dwattr $C$DW$732, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$732, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$733	.dwtag  DW_TAG_member
	.dwattr $C$DW$733, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$733, DW_AT_name("INTx9")
	.dwattr $C$DW$733, DW_AT_TI_symbol_name("_INTx9")
	.dwattr $C$DW$733, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$733, DW_AT_bit_size(0x01)
	.dwattr $C$DW$733, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$733, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$734	.dwtag  DW_TAG_member
	.dwattr $C$DW$734, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$734, DW_AT_name("INTx10")
	.dwattr $C$DW$734, DW_AT_TI_symbol_name("_INTx10")
	.dwattr $C$DW$734, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$734, DW_AT_bit_size(0x01)
	.dwattr $C$DW$734, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$734, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$735	.dwtag  DW_TAG_member
	.dwattr $C$DW$735, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$735, DW_AT_name("INTx11")
	.dwattr $C$DW$735, DW_AT_TI_symbol_name("_INTx11")
	.dwattr $C$DW$735, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$735, DW_AT_bit_size(0x01)
	.dwattr $C$DW$735, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$735, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$736	.dwtag  DW_TAG_member
	.dwattr $C$DW$736, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$736, DW_AT_name("INTx12")
	.dwattr $C$DW$736, DW_AT_TI_symbol_name("_INTx12")
	.dwattr $C$DW$736, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$736, DW_AT_bit_size(0x01)
	.dwattr $C$DW$736, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$736, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$737	.dwtag  DW_TAG_member
	.dwattr $C$DW$737, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$737, DW_AT_name("INTx13")
	.dwattr $C$DW$737, DW_AT_TI_symbol_name("_INTx13")
	.dwattr $C$DW$737, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$737, DW_AT_bit_size(0x01)
	.dwattr $C$DW$737, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$737, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$738	.dwtag  DW_TAG_member
	.dwattr $C$DW$738, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$738, DW_AT_name("INTx14")
	.dwattr $C$DW$738, DW_AT_TI_symbol_name("_INTx14")
	.dwattr $C$DW$738, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$738, DW_AT_bit_size(0x01)
	.dwattr $C$DW$738, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$738, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$739	.dwtag  DW_TAG_member
	.dwattr $C$DW$739, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$739, DW_AT_name("INTx15")
	.dwattr $C$DW$739, DW_AT_TI_symbol_name("_INTx15")
	.dwattr $C$DW$739, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$739, DW_AT_bit_size(0x01)
	.dwattr $C$DW$739, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$739, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$740	.dwtag  DW_TAG_member
	.dwattr $C$DW$740, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$740, DW_AT_name("INTx16")
	.dwattr $C$DW$740, DW_AT_TI_symbol_name("_INTx16")
	.dwattr $C$DW$740, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$740, DW_AT_bit_size(0x01)
	.dwattr $C$DW$740, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$740, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$82


$C$DW$T$83	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$83, DW_AT_name("PIEIFR11_REG")
	.dwattr $C$DW$T$83, DW_AT_byte_size(0x01)
$C$DW$741	.dwtag  DW_TAG_member
	.dwattr $C$DW$741, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$741, DW_AT_name("all")
	.dwattr $C$DW$741, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$741, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$741, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$742	.dwtag  DW_TAG_member
	.dwattr $C$DW$742, DW_AT_type(*$C$DW$T$82)
	.dwattr $C$DW$742, DW_AT_name("bit")
	.dwattr $C$DW$742, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$742, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$742, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$83


$C$DW$T$84	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$84, DW_AT_name("PIEIFR12_BITS")
	.dwattr $C$DW$T$84, DW_AT_byte_size(0x01)
$C$DW$743	.dwtag  DW_TAG_member
	.dwattr $C$DW$743, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$743, DW_AT_name("INTx1")
	.dwattr $C$DW$743, DW_AT_TI_symbol_name("_INTx1")
	.dwattr $C$DW$743, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$743, DW_AT_bit_size(0x01)
	.dwattr $C$DW$743, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$743, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$744	.dwtag  DW_TAG_member
	.dwattr $C$DW$744, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$744, DW_AT_name("INTx2")
	.dwattr $C$DW$744, DW_AT_TI_symbol_name("_INTx2")
	.dwattr $C$DW$744, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$744, DW_AT_bit_size(0x01)
	.dwattr $C$DW$744, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$744, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$745	.dwtag  DW_TAG_member
	.dwattr $C$DW$745, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$745, DW_AT_name("INTx3")
	.dwattr $C$DW$745, DW_AT_TI_symbol_name("_INTx3")
	.dwattr $C$DW$745, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$745, DW_AT_bit_size(0x01)
	.dwattr $C$DW$745, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$745, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$746	.dwtag  DW_TAG_member
	.dwattr $C$DW$746, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$746, DW_AT_name("INTx4")
	.dwattr $C$DW$746, DW_AT_TI_symbol_name("_INTx4")
	.dwattr $C$DW$746, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$746, DW_AT_bit_size(0x01)
	.dwattr $C$DW$746, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$746, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$747	.dwtag  DW_TAG_member
	.dwattr $C$DW$747, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$747, DW_AT_name("INTx5")
	.dwattr $C$DW$747, DW_AT_TI_symbol_name("_INTx5")
	.dwattr $C$DW$747, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$747, DW_AT_bit_size(0x01)
	.dwattr $C$DW$747, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$747, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$748	.dwtag  DW_TAG_member
	.dwattr $C$DW$748, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$748, DW_AT_name("INTx6")
	.dwattr $C$DW$748, DW_AT_TI_symbol_name("_INTx6")
	.dwattr $C$DW$748, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$748, DW_AT_bit_size(0x01)
	.dwattr $C$DW$748, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$748, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$749	.dwtag  DW_TAG_member
	.dwattr $C$DW$749, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$749, DW_AT_name("INTx7")
	.dwattr $C$DW$749, DW_AT_TI_symbol_name("_INTx7")
	.dwattr $C$DW$749, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$749, DW_AT_bit_size(0x01)
	.dwattr $C$DW$749, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$749, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$750	.dwtag  DW_TAG_member
	.dwattr $C$DW$750, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$750, DW_AT_name("INTx8")
	.dwattr $C$DW$750, DW_AT_TI_symbol_name("_INTx8")
	.dwattr $C$DW$750, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$750, DW_AT_bit_size(0x01)
	.dwattr $C$DW$750, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$750, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$751	.dwtag  DW_TAG_member
	.dwattr $C$DW$751, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$751, DW_AT_name("INTx9")
	.dwattr $C$DW$751, DW_AT_TI_symbol_name("_INTx9")
	.dwattr $C$DW$751, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$751, DW_AT_bit_size(0x01)
	.dwattr $C$DW$751, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$751, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$752	.dwtag  DW_TAG_member
	.dwattr $C$DW$752, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$752, DW_AT_name("INTx10")
	.dwattr $C$DW$752, DW_AT_TI_symbol_name("_INTx10")
	.dwattr $C$DW$752, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$752, DW_AT_bit_size(0x01)
	.dwattr $C$DW$752, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$752, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$753	.dwtag  DW_TAG_member
	.dwattr $C$DW$753, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$753, DW_AT_name("INTx11")
	.dwattr $C$DW$753, DW_AT_TI_symbol_name("_INTx11")
	.dwattr $C$DW$753, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$753, DW_AT_bit_size(0x01)
	.dwattr $C$DW$753, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$753, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$754	.dwtag  DW_TAG_member
	.dwattr $C$DW$754, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$754, DW_AT_name("INTx12")
	.dwattr $C$DW$754, DW_AT_TI_symbol_name("_INTx12")
	.dwattr $C$DW$754, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$754, DW_AT_bit_size(0x01)
	.dwattr $C$DW$754, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$754, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$755	.dwtag  DW_TAG_member
	.dwattr $C$DW$755, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$755, DW_AT_name("INTx13")
	.dwattr $C$DW$755, DW_AT_TI_symbol_name("_INTx13")
	.dwattr $C$DW$755, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$755, DW_AT_bit_size(0x01)
	.dwattr $C$DW$755, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$755, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$756	.dwtag  DW_TAG_member
	.dwattr $C$DW$756, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$756, DW_AT_name("INTx14")
	.dwattr $C$DW$756, DW_AT_TI_symbol_name("_INTx14")
	.dwattr $C$DW$756, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$756, DW_AT_bit_size(0x01)
	.dwattr $C$DW$756, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$756, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$757	.dwtag  DW_TAG_member
	.dwattr $C$DW$757, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$757, DW_AT_name("INTx15")
	.dwattr $C$DW$757, DW_AT_TI_symbol_name("_INTx15")
	.dwattr $C$DW$757, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$757, DW_AT_bit_size(0x01)
	.dwattr $C$DW$757, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$757, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$758	.dwtag  DW_TAG_member
	.dwattr $C$DW$758, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$758, DW_AT_name("INTx16")
	.dwattr $C$DW$758, DW_AT_TI_symbol_name("_INTx16")
	.dwattr $C$DW$758, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$758, DW_AT_bit_size(0x01)
	.dwattr $C$DW$758, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$758, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$84


$C$DW$T$85	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$85, DW_AT_name("PIEIFR12_REG")
	.dwattr $C$DW$T$85, DW_AT_byte_size(0x01)
$C$DW$759	.dwtag  DW_TAG_member
	.dwattr $C$DW$759, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$759, DW_AT_name("all")
	.dwattr $C$DW$759, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$759, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$759, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$760	.dwtag  DW_TAG_member
	.dwattr $C$DW$760, DW_AT_type(*$C$DW$T$84)
	.dwattr $C$DW$760, DW_AT_name("bit")
	.dwattr $C$DW$760, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$760, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$760, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$85


$C$DW$T$86	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$86, DW_AT_name("PIEIFR1_BITS")
	.dwattr $C$DW$T$86, DW_AT_byte_size(0x01)
$C$DW$761	.dwtag  DW_TAG_member
	.dwattr $C$DW$761, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$761, DW_AT_name("INTx1")
	.dwattr $C$DW$761, DW_AT_TI_symbol_name("_INTx1")
	.dwattr $C$DW$761, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$761, DW_AT_bit_size(0x01)
	.dwattr $C$DW$761, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$761, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$762	.dwtag  DW_TAG_member
	.dwattr $C$DW$762, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$762, DW_AT_name("INTx2")
	.dwattr $C$DW$762, DW_AT_TI_symbol_name("_INTx2")
	.dwattr $C$DW$762, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$762, DW_AT_bit_size(0x01)
	.dwattr $C$DW$762, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$762, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$763	.dwtag  DW_TAG_member
	.dwattr $C$DW$763, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$763, DW_AT_name("INTx3")
	.dwattr $C$DW$763, DW_AT_TI_symbol_name("_INTx3")
	.dwattr $C$DW$763, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$763, DW_AT_bit_size(0x01)
	.dwattr $C$DW$763, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$763, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$764	.dwtag  DW_TAG_member
	.dwattr $C$DW$764, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$764, DW_AT_name("INTx4")
	.dwattr $C$DW$764, DW_AT_TI_symbol_name("_INTx4")
	.dwattr $C$DW$764, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$764, DW_AT_bit_size(0x01)
	.dwattr $C$DW$764, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$764, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$765	.dwtag  DW_TAG_member
	.dwattr $C$DW$765, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$765, DW_AT_name("INTx5")
	.dwattr $C$DW$765, DW_AT_TI_symbol_name("_INTx5")
	.dwattr $C$DW$765, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$765, DW_AT_bit_size(0x01)
	.dwattr $C$DW$765, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$765, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$766	.dwtag  DW_TAG_member
	.dwattr $C$DW$766, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$766, DW_AT_name("INTx6")
	.dwattr $C$DW$766, DW_AT_TI_symbol_name("_INTx6")
	.dwattr $C$DW$766, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$766, DW_AT_bit_size(0x01)
	.dwattr $C$DW$766, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$766, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$767	.dwtag  DW_TAG_member
	.dwattr $C$DW$767, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$767, DW_AT_name("INTx7")
	.dwattr $C$DW$767, DW_AT_TI_symbol_name("_INTx7")
	.dwattr $C$DW$767, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$767, DW_AT_bit_size(0x01)
	.dwattr $C$DW$767, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$767, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$768	.dwtag  DW_TAG_member
	.dwattr $C$DW$768, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$768, DW_AT_name("INTx8")
	.dwattr $C$DW$768, DW_AT_TI_symbol_name("_INTx8")
	.dwattr $C$DW$768, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$768, DW_AT_bit_size(0x01)
	.dwattr $C$DW$768, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$768, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$769	.dwtag  DW_TAG_member
	.dwattr $C$DW$769, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$769, DW_AT_name("INTx9")
	.dwattr $C$DW$769, DW_AT_TI_symbol_name("_INTx9")
	.dwattr $C$DW$769, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$769, DW_AT_bit_size(0x01)
	.dwattr $C$DW$769, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$769, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$770	.dwtag  DW_TAG_member
	.dwattr $C$DW$770, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$770, DW_AT_name("INTx10")
	.dwattr $C$DW$770, DW_AT_TI_symbol_name("_INTx10")
	.dwattr $C$DW$770, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$770, DW_AT_bit_size(0x01)
	.dwattr $C$DW$770, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$770, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$771	.dwtag  DW_TAG_member
	.dwattr $C$DW$771, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$771, DW_AT_name("INTx11")
	.dwattr $C$DW$771, DW_AT_TI_symbol_name("_INTx11")
	.dwattr $C$DW$771, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$771, DW_AT_bit_size(0x01)
	.dwattr $C$DW$771, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$771, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$772	.dwtag  DW_TAG_member
	.dwattr $C$DW$772, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$772, DW_AT_name("INTx12")
	.dwattr $C$DW$772, DW_AT_TI_symbol_name("_INTx12")
	.dwattr $C$DW$772, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$772, DW_AT_bit_size(0x01)
	.dwattr $C$DW$772, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$772, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$773	.dwtag  DW_TAG_member
	.dwattr $C$DW$773, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$773, DW_AT_name("INTx13")
	.dwattr $C$DW$773, DW_AT_TI_symbol_name("_INTx13")
	.dwattr $C$DW$773, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$773, DW_AT_bit_size(0x01)
	.dwattr $C$DW$773, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$773, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$774	.dwtag  DW_TAG_member
	.dwattr $C$DW$774, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$774, DW_AT_name("INTx14")
	.dwattr $C$DW$774, DW_AT_TI_symbol_name("_INTx14")
	.dwattr $C$DW$774, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$774, DW_AT_bit_size(0x01)
	.dwattr $C$DW$774, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$774, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$775	.dwtag  DW_TAG_member
	.dwattr $C$DW$775, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$775, DW_AT_name("INTx15")
	.dwattr $C$DW$775, DW_AT_TI_symbol_name("_INTx15")
	.dwattr $C$DW$775, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$775, DW_AT_bit_size(0x01)
	.dwattr $C$DW$775, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$775, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$776	.dwtag  DW_TAG_member
	.dwattr $C$DW$776, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$776, DW_AT_name("INTx16")
	.dwattr $C$DW$776, DW_AT_TI_symbol_name("_INTx16")
	.dwattr $C$DW$776, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$776, DW_AT_bit_size(0x01)
	.dwattr $C$DW$776, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$776, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$86


$C$DW$T$87	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$87, DW_AT_name("PIEIFR1_REG")
	.dwattr $C$DW$T$87, DW_AT_byte_size(0x01)
$C$DW$777	.dwtag  DW_TAG_member
	.dwattr $C$DW$777, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$777, DW_AT_name("all")
	.dwattr $C$DW$777, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$777, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$777, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$778	.dwtag  DW_TAG_member
	.dwattr $C$DW$778, DW_AT_type(*$C$DW$T$86)
	.dwattr $C$DW$778, DW_AT_name("bit")
	.dwattr $C$DW$778, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$778, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$778, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$87


$C$DW$T$88	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$88, DW_AT_name("PIEIFR2_BITS")
	.dwattr $C$DW$T$88, DW_AT_byte_size(0x01)
$C$DW$779	.dwtag  DW_TAG_member
	.dwattr $C$DW$779, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$779, DW_AT_name("INTx1")
	.dwattr $C$DW$779, DW_AT_TI_symbol_name("_INTx1")
	.dwattr $C$DW$779, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$779, DW_AT_bit_size(0x01)
	.dwattr $C$DW$779, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$779, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$780	.dwtag  DW_TAG_member
	.dwattr $C$DW$780, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$780, DW_AT_name("INTx2")
	.dwattr $C$DW$780, DW_AT_TI_symbol_name("_INTx2")
	.dwattr $C$DW$780, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$780, DW_AT_bit_size(0x01)
	.dwattr $C$DW$780, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$780, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$781	.dwtag  DW_TAG_member
	.dwattr $C$DW$781, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$781, DW_AT_name("INTx3")
	.dwattr $C$DW$781, DW_AT_TI_symbol_name("_INTx3")
	.dwattr $C$DW$781, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$781, DW_AT_bit_size(0x01)
	.dwattr $C$DW$781, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$781, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$782	.dwtag  DW_TAG_member
	.dwattr $C$DW$782, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$782, DW_AT_name("INTx4")
	.dwattr $C$DW$782, DW_AT_TI_symbol_name("_INTx4")
	.dwattr $C$DW$782, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$782, DW_AT_bit_size(0x01)
	.dwattr $C$DW$782, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$782, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$783	.dwtag  DW_TAG_member
	.dwattr $C$DW$783, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$783, DW_AT_name("INTx5")
	.dwattr $C$DW$783, DW_AT_TI_symbol_name("_INTx5")
	.dwattr $C$DW$783, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$783, DW_AT_bit_size(0x01)
	.dwattr $C$DW$783, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$783, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$784	.dwtag  DW_TAG_member
	.dwattr $C$DW$784, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$784, DW_AT_name("INTx6")
	.dwattr $C$DW$784, DW_AT_TI_symbol_name("_INTx6")
	.dwattr $C$DW$784, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$784, DW_AT_bit_size(0x01)
	.dwattr $C$DW$784, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$784, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$785	.dwtag  DW_TAG_member
	.dwattr $C$DW$785, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$785, DW_AT_name("INTx7")
	.dwattr $C$DW$785, DW_AT_TI_symbol_name("_INTx7")
	.dwattr $C$DW$785, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$785, DW_AT_bit_size(0x01)
	.dwattr $C$DW$785, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$785, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$786	.dwtag  DW_TAG_member
	.dwattr $C$DW$786, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$786, DW_AT_name("INTx8")
	.dwattr $C$DW$786, DW_AT_TI_symbol_name("_INTx8")
	.dwattr $C$DW$786, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$786, DW_AT_bit_size(0x01)
	.dwattr $C$DW$786, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$786, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$787	.dwtag  DW_TAG_member
	.dwattr $C$DW$787, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$787, DW_AT_name("INTx9")
	.dwattr $C$DW$787, DW_AT_TI_symbol_name("_INTx9")
	.dwattr $C$DW$787, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$787, DW_AT_bit_size(0x01)
	.dwattr $C$DW$787, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$787, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$788	.dwtag  DW_TAG_member
	.dwattr $C$DW$788, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$788, DW_AT_name("INTx10")
	.dwattr $C$DW$788, DW_AT_TI_symbol_name("_INTx10")
	.dwattr $C$DW$788, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$788, DW_AT_bit_size(0x01)
	.dwattr $C$DW$788, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$788, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$789	.dwtag  DW_TAG_member
	.dwattr $C$DW$789, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$789, DW_AT_name("INTx11")
	.dwattr $C$DW$789, DW_AT_TI_symbol_name("_INTx11")
	.dwattr $C$DW$789, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$789, DW_AT_bit_size(0x01)
	.dwattr $C$DW$789, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$789, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$790	.dwtag  DW_TAG_member
	.dwattr $C$DW$790, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$790, DW_AT_name("INTx12")
	.dwattr $C$DW$790, DW_AT_TI_symbol_name("_INTx12")
	.dwattr $C$DW$790, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$790, DW_AT_bit_size(0x01)
	.dwattr $C$DW$790, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$790, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$791	.dwtag  DW_TAG_member
	.dwattr $C$DW$791, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$791, DW_AT_name("INTx13")
	.dwattr $C$DW$791, DW_AT_TI_symbol_name("_INTx13")
	.dwattr $C$DW$791, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$791, DW_AT_bit_size(0x01)
	.dwattr $C$DW$791, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$791, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$792	.dwtag  DW_TAG_member
	.dwattr $C$DW$792, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$792, DW_AT_name("INTx14")
	.dwattr $C$DW$792, DW_AT_TI_symbol_name("_INTx14")
	.dwattr $C$DW$792, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$792, DW_AT_bit_size(0x01)
	.dwattr $C$DW$792, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$792, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$793	.dwtag  DW_TAG_member
	.dwattr $C$DW$793, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$793, DW_AT_name("INTx15")
	.dwattr $C$DW$793, DW_AT_TI_symbol_name("_INTx15")
	.dwattr $C$DW$793, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$793, DW_AT_bit_size(0x01)
	.dwattr $C$DW$793, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$793, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$794	.dwtag  DW_TAG_member
	.dwattr $C$DW$794, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$794, DW_AT_name("INTx16")
	.dwattr $C$DW$794, DW_AT_TI_symbol_name("_INTx16")
	.dwattr $C$DW$794, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$794, DW_AT_bit_size(0x01)
	.dwattr $C$DW$794, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$794, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$88


$C$DW$T$89	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$89, DW_AT_name("PIEIFR2_REG")
	.dwattr $C$DW$T$89, DW_AT_byte_size(0x01)
$C$DW$795	.dwtag  DW_TAG_member
	.dwattr $C$DW$795, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$795, DW_AT_name("all")
	.dwattr $C$DW$795, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$795, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$795, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$796	.dwtag  DW_TAG_member
	.dwattr $C$DW$796, DW_AT_type(*$C$DW$T$88)
	.dwattr $C$DW$796, DW_AT_name("bit")
	.dwattr $C$DW$796, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$796, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$796, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$89


$C$DW$T$90	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$90, DW_AT_name("PIEIFR3_BITS")
	.dwattr $C$DW$T$90, DW_AT_byte_size(0x01)
$C$DW$797	.dwtag  DW_TAG_member
	.dwattr $C$DW$797, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$797, DW_AT_name("INTx1")
	.dwattr $C$DW$797, DW_AT_TI_symbol_name("_INTx1")
	.dwattr $C$DW$797, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$797, DW_AT_bit_size(0x01)
	.dwattr $C$DW$797, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$797, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$798	.dwtag  DW_TAG_member
	.dwattr $C$DW$798, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$798, DW_AT_name("INTx2")
	.dwattr $C$DW$798, DW_AT_TI_symbol_name("_INTx2")
	.dwattr $C$DW$798, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$798, DW_AT_bit_size(0x01)
	.dwattr $C$DW$798, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$798, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$799	.dwtag  DW_TAG_member
	.dwattr $C$DW$799, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$799, DW_AT_name("INTx3")
	.dwattr $C$DW$799, DW_AT_TI_symbol_name("_INTx3")
	.dwattr $C$DW$799, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$799, DW_AT_bit_size(0x01)
	.dwattr $C$DW$799, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$799, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$800	.dwtag  DW_TAG_member
	.dwattr $C$DW$800, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$800, DW_AT_name("INTx4")
	.dwattr $C$DW$800, DW_AT_TI_symbol_name("_INTx4")
	.dwattr $C$DW$800, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$800, DW_AT_bit_size(0x01)
	.dwattr $C$DW$800, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$800, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$801	.dwtag  DW_TAG_member
	.dwattr $C$DW$801, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$801, DW_AT_name("INTx5")
	.dwattr $C$DW$801, DW_AT_TI_symbol_name("_INTx5")
	.dwattr $C$DW$801, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$801, DW_AT_bit_size(0x01)
	.dwattr $C$DW$801, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$801, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$802	.dwtag  DW_TAG_member
	.dwattr $C$DW$802, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$802, DW_AT_name("INTx6")
	.dwattr $C$DW$802, DW_AT_TI_symbol_name("_INTx6")
	.dwattr $C$DW$802, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$802, DW_AT_bit_size(0x01)
	.dwattr $C$DW$802, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$802, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$803	.dwtag  DW_TAG_member
	.dwattr $C$DW$803, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$803, DW_AT_name("INTx7")
	.dwattr $C$DW$803, DW_AT_TI_symbol_name("_INTx7")
	.dwattr $C$DW$803, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$803, DW_AT_bit_size(0x01)
	.dwattr $C$DW$803, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$803, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$804	.dwtag  DW_TAG_member
	.dwattr $C$DW$804, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$804, DW_AT_name("INTx8")
	.dwattr $C$DW$804, DW_AT_TI_symbol_name("_INTx8")
	.dwattr $C$DW$804, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$804, DW_AT_bit_size(0x01)
	.dwattr $C$DW$804, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$804, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$805	.dwtag  DW_TAG_member
	.dwattr $C$DW$805, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$805, DW_AT_name("INTx9")
	.dwattr $C$DW$805, DW_AT_TI_symbol_name("_INTx9")
	.dwattr $C$DW$805, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$805, DW_AT_bit_size(0x01)
	.dwattr $C$DW$805, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$805, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$806	.dwtag  DW_TAG_member
	.dwattr $C$DW$806, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$806, DW_AT_name("INTx10")
	.dwattr $C$DW$806, DW_AT_TI_symbol_name("_INTx10")
	.dwattr $C$DW$806, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$806, DW_AT_bit_size(0x01)
	.dwattr $C$DW$806, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$806, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$807	.dwtag  DW_TAG_member
	.dwattr $C$DW$807, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$807, DW_AT_name("INTx11")
	.dwattr $C$DW$807, DW_AT_TI_symbol_name("_INTx11")
	.dwattr $C$DW$807, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$807, DW_AT_bit_size(0x01)
	.dwattr $C$DW$807, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$807, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$808	.dwtag  DW_TAG_member
	.dwattr $C$DW$808, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$808, DW_AT_name("INTx12")
	.dwattr $C$DW$808, DW_AT_TI_symbol_name("_INTx12")
	.dwattr $C$DW$808, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$808, DW_AT_bit_size(0x01)
	.dwattr $C$DW$808, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$808, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$809	.dwtag  DW_TAG_member
	.dwattr $C$DW$809, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$809, DW_AT_name("INTx13")
	.dwattr $C$DW$809, DW_AT_TI_symbol_name("_INTx13")
	.dwattr $C$DW$809, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$809, DW_AT_bit_size(0x01)
	.dwattr $C$DW$809, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$809, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$810	.dwtag  DW_TAG_member
	.dwattr $C$DW$810, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$810, DW_AT_name("INTx14")
	.dwattr $C$DW$810, DW_AT_TI_symbol_name("_INTx14")
	.dwattr $C$DW$810, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$810, DW_AT_bit_size(0x01)
	.dwattr $C$DW$810, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$810, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$811	.dwtag  DW_TAG_member
	.dwattr $C$DW$811, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$811, DW_AT_name("INTx15")
	.dwattr $C$DW$811, DW_AT_TI_symbol_name("_INTx15")
	.dwattr $C$DW$811, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$811, DW_AT_bit_size(0x01)
	.dwattr $C$DW$811, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$811, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$812	.dwtag  DW_TAG_member
	.dwattr $C$DW$812, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$812, DW_AT_name("INTx16")
	.dwattr $C$DW$812, DW_AT_TI_symbol_name("_INTx16")
	.dwattr $C$DW$812, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$812, DW_AT_bit_size(0x01)
	.dwattr $C$DW$812, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$812, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$90


$C$DW$T$91	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$91, DW_AT_name("PIEIFR3_REG")
	.dwattr $C$DW$T$91, DW_AT_byte_size(0x01)
$C$DW$813	.dwtag  DW_TAG_member
	.dwattr $C$DW$813, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$813, DW_AT_name("all")
	.dwattr $C$DW$813, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$813, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$813, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$814	.dwtag  DW_TAG_member
	.dwattr $C$DW$814, DW_AT_type(*$C$DW$T$90)
	.dwattr $C$DW$814, DW_AT_name("bit")
	.dwattr $C$DW$814, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$814, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$814, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$91


$C$DW$T$92	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$92, DW_AT_name("PIEIFR4_BITS")
	.dwattr $C$DW$T$92, DW_AT_byte_size(0x01)
$C$DW$815	.dwtag  DW_TAG_member
	.dwattr $C$DW$815, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$815, DW_AT_name("INTx1")
	.dwattr $C$DW$815, DW_AT_TI_symbol_name("_INTx1")
	.dwattr $C$DW$815, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$815, DW_AT_bit_size(0x01)
	.dwattr $C$DW$815, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$815, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$816	.dwtag  DW_TAG_member
	.dwattr $C$DW$816, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$816, DW_AT_name("INTx2")
	.dwattr $C$DW$816, DW_AT_TI_symbol_name("_INTx2")
	.dwattr $C$DW$816, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$816, DW_AT_bit_size(0x01)
	.dwattr $C$DW$816, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$816, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$817	.dwtag  DW_TAG_member
	.dwattr $C$DW$817, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$817, DW_AT_name("INTx3")
	.dwattr $C$DW$817, DW_AT_TI_symbol_name("_INTx3")
	.dwattr $C$DW$817, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$817, DW_AT_bit_size(0x01)
	.dwattr $C$DW$817, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$817, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$818	.dwtag  DW_TAG_member
	.dwattr $C$DW$818, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$818, DW_AT_name("INTx4")
	.dwattr $C$DW$818, DW_AT_TI_symbol_name("_INTx4")
	.dwattr $C$DW$818, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$818, DW_AT_bit_size(0x01)
	.dwattr $C$DW$818, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$818, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$819	.dwtag  DW_TAG_member
	.dwattr $C$DW$819, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$819, DW_AT_name("INTx5")
	.dwattr $C$DW$819, DW_AT_TI_symbol_name("_INTx5")
	.dwattr $C$DW$819, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$819, DW_AT_bit_size(0x01)
	.dwattr $C$DW$819, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$819, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$820	.dwtag  DW_TAG_member
	.dwattr $C$DW$820, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$820, DW_AT_name("INTx6")
	.dwattr $C$DW$820, DW_AT_TI_symbol_name("_INTx6")
	.dwattr $C$DW$820, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$820, DW_AT_bit_size(0x01)
	.dwattr $C$DW$820, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$820, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$821	.dwtag  DW_TAG_member
	.dwattr $C$DW$821, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$821, DW_AT_name("INTx7")
	.dwattr $C$DW$821, DW_AT_TI_symbol_name("_INTx7")
	.dwattr $C$DW$821, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$821, DW_AT_bit_size(0x01)
	.dwattr $C$DW$821, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$821, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$822	.dwtag  DW_TAG_member
	.dwattr $C$DW$822, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$822, DW_AT_name("INTx8")
	.dwattr $C$DW$822, DW_AT_TI_symbol_name("_INTx8")
	.dwattr $C$DW$822, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$822, DW_AT_bit_size(0x01)
	.dwattr $C$DW$822, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$822, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$823	.dwtag  DW_TAG_member
	.dwattr $C$DW$823, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$823, DW_AT_name("INTx9")
	.dwattr $C$DW$823, DW_AT_TI_symbol_name("_INTx9")
	.dwattr $C$DW$823, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$823, DW_AT_bit_size(0x01)
	.dwattr $C$DW$823, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$823, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$824	.dwtag  DW_TAG_member
	.dwattr $C$DW$824, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$824, DW_AT_name("INTx10")
	.dwattr $C$DW$824, DW_AT_TI_symbol_name("_INTx10")
	.dwattr $C$DW$824, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$824, DW_AT_bit_size(0x01)
	.dwattr $C$DW$824, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$824, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$825	.dwtag  DW_TAG_member
	.dwattr $C$DW$825, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$825, DW_AT_name("INTx11")
	.dwattr $C$DW$825, DW_AT_TI_symbol_name("_INTx11")
	.dwattr $C$DW$825, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$825, DW_AT_bit_size(0x01)
	.dwattr $C$DW$825, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$825, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$826	.dwtag  DW_TAG_member
	.dwattr $C$DW$826, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$826, DW_AT_name("INTx12")
	.dwattr $C$DW$826, DW_AT_TI_symbol_name("_INTx12")
	.dwattr $C$DW$826, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$826, DW_AT_bit_size(0x01)
	.dwattr $C$DW$826, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$826, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$827	.dwtag  DW_TAG_member
	.dwattr $C$DW$827, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$827, DW_AT_name("INTx13")
	.dwattr $C$DW$827, DW_AT_TI_symbol_name("_INTx13")
	.dwattr $C$DW$827, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$827, DW_AT_bit_size(0x01)
	.dwattr $C$DW$827, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$827, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$828	.dwtag  DW_TAG_member
	.dwattr $C$DW$828, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$828, DW_AT_name("INTx14")
	.dwattr $C$DW$828, DW_AT_TI_symbol_name("_INTx14")
	.dwattr $C$DW$828, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$828, DW_AT_bit_size(0x01)
	.dwattr $C$DW$828, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$828, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$829	.dwtag  DW_TAG_member
	.dwattr $C$DW$829, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$829, DW_AT_name("INTx15")
	.dwattr $C$DW$829, DW_AT_TI_symbol_name("_INTx15")
	.dwattr $C$DW$829, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$829, DW_AT_bit_size(0x01)
	.dwattr $C$DW$829, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$829, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$830	.dwtag  DW_TAG_member
	.dwattr $C$DW$830, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$830, DW_AT_name("INTx16")
	.dwattr $C$DW$830, DW_AT_TI_symbol_name("_INTx16")
	.dwattr $C$DW$830, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$830, DW_AT_bit_size(0x01)
	.dwattr $C$DW$830, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$830, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$92


$C$DW$T$93	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$93, DW_AT_name("PIEIFR4_REG")
	.dwattr $C$DW$T$93, DW_AT_byte_size(0x01)
$C$DW$831	.dwtag  DW_TAG_member
	.dwattr $C$DW$831, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$831, DW_AT_name("all")
	.dwattr $C$DW$831, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$831, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$831, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$832	.dwtag  DW_TAG_member
	.dwattr $C$DW$832, DW_AT_type(*$C$DW$T$92)
	.dwattr $C$DW$832, DW_AT_name("bit")
	.dwattr $C$DW$832, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$832, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$832, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$93


$C$DW$T$94	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$94, DW_AT_name("PIEIFR5_BITS")
	.dwattr $C$DW$T$94, DW_AT_byte_size(0x01)
$C$DW$833	.dwtag  DW_TAG_member
	.dwattr $C$DW$833, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$833, DW_AT_name("INTx1")
	.dwattr $C$DW$833, DW_AT_TI_symbol_name("_INTx1")
	.dwattr $C$DW$833, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$833, DW_AT_bit_size(0x01)
	.dwattr $C$DW$833, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$833, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$834	.dwtag  DW_TAG_member
	.dwattr $C$DW$834, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$834, DW_AT_name("INTx2")
	.dwattr $C$DW$834, DW_AT_TI_symbol_name("_INTx2")
	.dwattr $C$DW$834, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$834, DW_AT_bit_size(0x01)
	.dwattr $C$DW$834, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$834, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$835	.dwtag  DW_TAG_member
	.dwattr $C$DW$835, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$835, DW_AT_name("INTx3")
	.dwattr $C$DW$835, DW_AT_TI_symbol_name("_INTx3")
	.dwattr $C$DW$835, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$835, DW_AT_bit_size(0x01)
	.dwattr $C$DW$835, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$835, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$836	.dwtag  DW_TAG_member
	.dwattr $C$DW$836, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$836, DW_AT_name("INTx4")
	.dwattr $C$DW$836, DW_AT_TI_symbol_name("_INTx4")
	.dwattr $C$DW$836, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$836, DW_AT_bit_size(0x01)
	.dwattr $C$DW$836, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$836, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$837	.dwtag  DW_TAG_member
	.dwattr $C$DW$837, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$837, DW_AT_name("INTx5")
	.dwattr $C$DW$837, DW_AT_TI_symbol_name("_INTx5")
	.dwattr $C$DW$837, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$837, DW_AT_bit_size(0x01)
	.dwattr $C$DW$837, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$837, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$838	.dwtag  DW_TAG_member
	.dwattr $C$DW$838, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$838, DW_AT_name("INTx6")
	.dwattr $C$DW$838, DW_AT_TI_symbol_name("_INTx6")
	.dwattr $C$DW$838, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$838, DW_AT_bit_size(0x01)
	.dwattr $C$DW$838, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$838, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$839	.dwtag  DW_TAG_member
	.dwattr $C$DW$839, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$839, DW_AT_name("INTx7")
	.dwattr $C$DW$839, DW_AT_TI_symbol_name("_INTx7")
	.dwattr $C$DW$839, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$839, DW_AT_bit_size(0x01)
	.dwattr $C$DW$839, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$839, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$840	.dwtag  DW_TAG_member
	.dwattr $C$DW$840, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$840, DW_AT_name("INTx8")
	.dwattr $C$DW$840, DW_AT_TI_symbol_name("_INTx8")
	.dwattr $C$DW$840, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$840, DW_AT_bit_size(0x01)
	.dwattr $C$DW$840, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$840, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$841	.dwtag  DW_TAG_member
	.dwattr $C$DW$841, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$841, DW_AT_name("INTx9")
	.dwattr $C$DW$841, DW_AT_TI_symbol_name("_INTx9")
	.dwattr $C$DW$841, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$841, DW_AT_bit_size(0x01)
	.dwattr $C$DW$841, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$841, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$842	.dwtag  DW_TAG_member
	.dwattr $C$DW$842, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$842, DW_AT_name("INTx10")
	.dwattr $C$DW$842, DW_AT_TI_symbol_name("_INTx10")
	.dwattr $C$DW$842, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$842, DW_AT_bit_size(0x01)
	.dwattr $C$DW$842, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$842, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$843	.dwtag  DW_TAG_member
	.dwattr $C$DW$843, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$843, DW_AT_name("INTx11")
	.dwattr $C$DW$843, DW_AT_TI_symbol_name("_INTx11")
	.dwattr $C$DW$843, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$843, DW_AT_bit_size(0x01)
	.dwattr $C$DW$843, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$843, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$844	.dwtag  DW_TAG_member
	.dwattr $C$DW$844, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$844, DW_AT_name("INTx12")
	.dwattr $C$DW$844, DW_AT_TI_symbol_name("_INTx12")
	.dwattr $C$DW$844, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$844, DW_AT_bit_size(0x01)
	.dwattr $C$DW$844, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$844, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$845	.dwtag  DW_TAG_member
	.dwattr $C$DW$845, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$845, DW_AT_name("INTx13")
	.dwattr $C$DW$845, DW_AT_TI_symbol_name("_INTx13")
	.dwattr $C$DW$845, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$845, DW_AT_bit_size(0x01)
	.dwattr $C$DW$845, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$845, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$846	.dwtag  DW_TAG_member
	.dwattr $C$DW$846, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$846, DW_AT_name("INTx14")
	.dwattr $C$DW$846, DW_AT_TI_symbol_name("_INTx14")
	.dwattr $C$DW$846, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$846, DW_AT_bit_size(0x01)
	.dwattr $C$DW$846, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$846, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$847	.dwtag  DW_TAG_member
	.dwattr $C$DW$847, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$847, DW_AT_name("INTx15")
	.dwattr $C$DW$847, DW_AT_TI_symbol_name("_INTx15")
	.dwattr $C$DW$847, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$847, DW_AT_bit_size(0x01)
	.dwattr $C$DW$847, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$847, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$848	.dwtag  DW_TAG_member
	.dwattr $C$DW$848, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$848, DW_AT_name("INTx16")
	.dwattr $C$DW$848, DW_AT_TI_symbol_name("_INTx16")
	.dwattr $C$DW$848, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$848, DW_AT_bit_size(0x01)
	.dwattr $C$DW$848, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$848, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$94


$C$DW$T$95	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$95, DW_AT_name("PIEIFR5_REG")
	.dwattr $C$DW$T$95, DW_AT_byte_size(0x01)
$C$DW$849	.dwtag  DW_TAG_member
	.dwattr $C$DW$849, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$849, DW_AT_name("all")
	.dwattr $C$DW$849, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$849, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$849, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$850	.dwtag  DW_TAG_member
	.dwattr $C$DW$850, DW_AT_type(*$C$DW$T$94)
	.dwattr $C$DW$850, DW_AT_name("bit")
	.dwattr $C$DW$850, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$850, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$850, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$95


$C$DW$T$96	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$96, DW_AT_name("PIEIFR6_BITS")
	.dwattr $C$DW$T$96, DW_AT_byte_size(0x01)
$C$DW$851	.dwtag  DW_TAG_member
	.dwattr $C$DW$851, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$851, DW_AT_name("INTx1")
	.dwattr $C$DW$851, DW_AT_TI_symbol_name("_INTx1")
	.dwattr $C$DW$851, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$851, DW_AT_bit_size(0x01)
	.dwattr $C$DW$851, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$851, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$852	.dwtag  DW_TAG_member
	.dwattr $C$DW$852, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$852, DW_AT_name("INTx2")
	.dwattr $C$DW$852, DW_AT_TI_symbol_name("_INTx2")
	.dwattr $C$DW$852, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$852, DW_AT_bit_size(0x01)
	.dwattr $C$DW$852, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$852, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$853	.dwtag  DW_TAG_member
	.dwattr $C$DW$853, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$853, DW_AT_name("INTx3")
	.dwattr $C$DW$853, DW_AT_TI_symbol_name("_INTx3")
	.dwattr $C$DW$853, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$853, DW_AT_bit_size(0x01)
	.dwattr $C$DW$853, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$853, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$854	.dwtag  DW_TAG_member
	.dwattr $C$DW$854, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$854, DW_AT_name("INTx4")
	.dwattr $C$DW$854, DW_AT_TI_symbol_name("_INTx4")
	.dwattr $C$DW$854, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$854, DW_AT_bit_size(0x01)
	.dwattr $C$DW$854, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$854, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$855	.dwtag  DW_TAG_member
	.dwattr $C$DW$855, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$855, DW_AT_name("INTx5")
	.dwattr $C$DW$855, DW_AT_TI_symbol_name("_INTx5")
	.dwattr $C$DW$855, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$855, DW_AT_bit_size(0x01)
	.dwattr $C$DW$855, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$855, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$856	.dwtag  DW_TAG_member
	.dwattr $C$DW$856, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$856, DW_AT_name("INTx6")
	.dwattr $C$DW$856, DW_AT_TI_symbol_name("_INTx6")
	.dwattr $C$DW$856, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$856, DW_AT_bit_size(0x01)
	.dwattr $C$DW$856, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$856, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$857	.dwtag  DW_TAG_member
	.dwattr $C$DW$857, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$857, DW_AT_name("INTx7")
	.dwattr $C$DW$857, DW_AT_TI_symbol_name("_INTx7")
	.dwattr $C$DW$857, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$857, DW_AT_bit_size(0x01)
	.dwattr $C$DW$857, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$857, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$858	.dwtag  DW_TAG_member
	.dwattr $C$DW$858, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$858, DW_AT_name("INTx8")
	.dwattr $C$DW$858, DW_AT_TI_symbol_name("_INTx8")
	.dwattr $C$DW$858, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$858, DW_AT_bit_size(0x01)
	.dwattr $C$DW$858, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$858, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$859	.dwtag  DW_TAG_member
	.dwattr $C$DW$859, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$859, DW_AT_name("INTx9")
	.dwattr $C$DW$859, DW_AT_TI_symbol_name("_INTx9")
	.dwattr $C$DW$859, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$859, DW_AT_bit_size(0x01)
	.dwattr $C$DW$859, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$859, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$860	.dwtag  DW_TAG_member
	.dwattr $C$DW$860, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$860, DW_AT_name("INTx10")
	.dwattr $C$DW$860, DW_AT_TI_symbol_name("_INTx10")
	.dwattr $C$DW$860, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$860, DW_AT_bit_size(0x01)
	.dwattr $C$DW$860, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$860, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$861	.dwtag  DW_TAG_member
	.dwattr $C$DW$861, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$861, DW_AT_name("INTx11")
	.dwattr $C$DW$861, DW_AT_TI_symbol_name("_INTx11")
	.dwattr $C$DW$861, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$861, DW_AT_bit_size(0x01)
	.dwattr $C$DW$861, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$861, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$862	.dwtag  DW_TAG_member
	.dwattr $C$DW$862, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$862, DW_AT_name("INTx12")
	.dwattr $C$DW$862, DW_AT_TI_symbol_name("_INTx12")
	.dwattr $C$DW$862, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$862, DW_AT_bit_size(0x01)
	.dwattr $C$DW$862, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$862, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$863	.dwtag  DW_TAG_member
	.dwattr $C$DW$863, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$863, DW_AT_name("INTx13")
	.dwattr $C$DW$863, DW_AT_TI_symbol_name("_INTx13")
	.dwattr $C$DW$863, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$863, DW_AT_bit_size(0x01)
	.dwattr $C$DW$863, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$863, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$864	.dwtag  DW_TAG_member
	.dwattr $C$DW$864, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$864, DW_AT_name("INTx14")
	.dwattr $C$DW$864, DW_AT_TI_symbol_name("_INTx14")
	.dwattr $C$DW$864, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$864, DW_AT_bit_size(0x01)
	.dwattr $C$DW$864, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$864, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$865	.dwtag  DW_TAG_member
	.dwattr $C$DW$865, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$865, DW_AT_name("INTx15")
	.dwattr $C$DW$865, DW_AT_TI_symbol_name("_INTx15")
	.dwattr $C$DW$865, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$865, DW_AT_bit_size(0x01)
	.dwattr $C$DW$865, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$865, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$866	.dwtag  DW_TAG_member
	.dwattr $C$DW$866, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$866, DW_AT_name("INTx16")
	.dwattr $C$DW$866, DW_AT_TI_symbol_name("_INTx16")
	.dwattr $C$DW$866, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$866, DW_AT_bit_size(0x01)
	.dwattr $C$DW$866, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$866, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$96


$C$DW$T$97	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$97, DW_AT_name("PIEIFR6_REG")
	.dwattr $C$DW$T$97, DW_AT_byte_size(0x01)
$C$DW$867	.dwtag  DW_TAG_member
	.dwattr $C$DW$867, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$867, DW_AT_name("all")
	.dwattr $C$DW$867, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$867, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$867, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$868	.dwtag  DW_TAG_member
	.dwattr $C$DW$868, DW_AT_type(*$C$DW$T$96)
	.dwattr $C$DW$868, DW_AT_name("bit")
	.dwattr $C$DW$868, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$868, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$868, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$97


$C$DW$T$98	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$98, DW_AT_name("PIEIFR7_BITS")
	.dwattr $C$DW$T$98, DW_AT_byte_size(0x01)
$C$DW$869	.dwtag  DW_TAG_member
	.dwattr $C$DW$869, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$869, DW_AT_name("INTx1")
	.dwattr $C$DW$869, DW_AT_TI_symbol_name("_INTx1")
	.dwattr $C$DW$869, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$869, DW_AT_bit_size(0x01)
	.dwattr $C$DW$869, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$869, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$870	.dwtag  DW_TAG_member
	.dwattr $C$DW$870, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$870, DW_AT_name("INTx2")
	.dwattr $C$DW$870, DW_AT_TI_symbol_name("_INTx2")
	.dwattr $C$DW$870, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$870, DW_AT_bit_size(0x01)
	.dwattr $C$DW$870, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$870, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$871	.dwtag  DW_TAG_member
	.dwattr $C$DW$871, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$871, DW_AT_name("INTx3")
	.dwattr $C$DW$871, DW_AT_TI_symbol_name("_INTx3")
	.dwattr $C$DW$871, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$871, DW_AT_bit_size(0x01)
	.dwattr $C$DW$871, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$871, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$872	.dwtag  DW_TAG_member
	.dwattr $C$DW$872, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$872, DW_AT_name("INTx4")
	.dwattr $C$DW$872, DW_AT_TI_symbol_name("_INTx4")
	.dwattr $C$DW$872, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$872, DW_AT_bit_size(0x01)
	.dwattr $C$DW$872, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$872, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$873	.dwtag  DW_TAG_member
	.dwattr $C$DW$873, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$873, DW_AT_name("INTx5")
	.dwattr $C$DW$873, DW_AT_TI_symbol_name("_INTx5")
	.dwattr $C$DW$873, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$873, DW_AT_bit_size(0x01)
	.dwattr $C$DW$873, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$873, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$874	.dwtag  DW_TAG_member
	.dwattr $C$DW$874, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$874, DW_AT_name("INTx6")
	.dwattr $C$DW$874, DW_AT_TI_symbol_name("_INTx6")
	.dwattr $C$DW$874, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$874, DW_AT_bit_size(0x01)
	.dwattr $C$DW$874, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$874, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$875	.dwtag  DW_TAG_member
	.dwattr $C$DW$875, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$875, DW_AT_name("INTx7")
	.dwattr $C$DW$875, DW_AT_TI_symbol_name("_INTx7")
	.dwattr $C$DW$875, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$875, DW_AT_bit_size(0x01)
	.dwattr $C$DW$875, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$875, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$876	.dwtag  DW_TAG_member
	.dwattr $C$DW$876, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$876, DW_AT_name("INTx8")
	.dwattr $C$DW$876, DW_AT_TI_symbol_name("_INTx8")
	.dwattr $C$DW$876, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$876, DW_AT_bit_size(0x01)
	.dwattr $C$DW$876, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$876, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$877	.dwtag  DW_TAG_member
	.dwattr $C$DW$877, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$877, DW_AT_name("INTx9")
	.dwattr $C$DW$877, DW_AT_TI_symbol_name("_INTx9")
	.dwattr $C$DW$877, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$877, DW_AT_bit_size(0x01)
	.dwattr $C$DW$877, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$877, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$878	.dwtag  DW_TAG_member
	.dwattr $C$DW$878, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$878, DW_AT_name("INTx10")
	.dwattr $C$DW$878, DW_AT_TI_symbol_name("_INTx10")
	.dwattr $C$DW$878, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$878, DW_AT_bit_size(0x01)
	.dwattr $C$DW$878, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$878, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$879	.dwtag  DW_TAG_member
	.dwattr $C$DW$879, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$879, DW_AT_name("INTx11")
	.dwattr $C$DW$879, DW_AT_TI_symbol_name("_INTx11")
	.dwattr $C$DW$879, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$879, DW_AT_bit_size(0x01)
	.dwattr $C$DW$879, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$879, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$880	.dwtag  DW_TAG_member
	.dwattr $C$DW$880, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$880, DW_AT_name("INTx12")
	.dwattr $C$DW$880, DW_AT_TI_symbol_name("_INTx12")
	.dwattr $C$DW$880, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$880, DW_AT_bit_size(0x01)
	.dwattr $C$DW$880, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$880, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$881	.dwtag  DW_TAG_member
	.dwattr $C$DW$881, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$881, DW_AT_name("INTx13")
	.dwattr $C$DW$881, DW_AT_TI_symbol_name("_INTx13")
	.dwattr $C$DW$881, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$881, DW_AT_bit_size(0x01)
	.dwattr $C$DW$881, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$881, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$882	.dwtag  DW_TAG_member
	.dwattr $C$DW$882, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$882, DW_AT_name("INTx14")
	.dwattr $C$DW$882, DW_AT_TI_symbol_name("_INTx14")
	.dwattr $C$DW$882, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$882, DW_AT_bit_size(0x01)
	.dwattr $C$DW$882, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$882, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$883	.dwtag  DW_TAG_member
	.dwattr $C$DW$883, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$883, DW_AT_name("INTx15")
	.dwattr $C$DW$883, DW_AT_TI_symbol_name("_INTx15")
	.dwattr $C$DW$883, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$883, DW_AT_bit_size(0x01)
	.dwattr $C$DW$883, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$883, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$884	.dwtag  DW_TAG_member
	.dwattr $C$DW$884, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$884, DW_AT_name("INTx16")
	.dwattr $C$DW$884, DW_AT_TI_symbol_name("_INTx16")
	.dwattr $C$DW$884, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$884, DW_AT_bit_size(0x01)
	.dwattr $C$DW$884, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$884, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$98


$C$DW$T$99	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$99, DW_AT_name("PIEIFR7_REG")
	.dwattr $C$DW$T$99, DW_AT_byte_size(0x01)
$C$DW$885	.dwtag  DW_TAG_member
	.dwattr $C$DW$885, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$885, DW_AT_name("all")
	.dwattr $C$DW$885, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$885, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$885, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$886	.dwtag  DW_TAG_member
	.dwattr $C$DW$886, DW_AT_type(*$C$DW$T$98)
	.dwattr $C$DW$886, DW_AT_name("bit")
	.dwattr $C$DW$886, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$886, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$886, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$99


$C$DW$T$100	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$100, DW_AT_name("PIEIFR8_BITS")
	.dwattr $C$DW$T$100, DW_AT_byte_size(0x01)
$C$DW$887	.dwtag  DW_TAG_member
	.dwattr $C$DW$887, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$887, DW_AT_name("INTx1")
	.dwattr $C$DW$887, DW_AT_TI_symbol_name("_INTx1")
	.dwattr $C$DW$887, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$887, DW_AT_bit_size(0x01)
	.dwattr $C$DW$887, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$887, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$888	.dwtag  DW_TAG_member
	.dwattr $C$DW$888, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$888, DW_AT_name("INTx2")
	.dwattr $C$DW$888, DW_AT_TI_symbol_name("_INTx2")
	.dwattr $C$DW$888, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$888, DW_AT_bit_size(0x01)
	.dwattr $C$DW$888, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$888, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$889	.dwtag  DW_TAG_member
	.dwattr $C$DW$889, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$889, DW_AT_name("INTx3")
	.dwattr $C$DW$889, DW_AT_TI_symbol_name("_INTx3")
	.dwattr $C$DW$889, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$889, DW_AT_bit_size(0x01)
	.dwattr $C$DW$889, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$889, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$890	.dwtag  DW_TAG_member
	.dwattr $C$DW$890, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$890, DW_AT_name("INTx4")
	.dwattr $C$DW$890, DW_AT_TI_symbol_name("_INTx4")
	.dwattr $C$DW$890, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$890, DW_AT_bit_size(0x01)
	.dwattr $C$DW$890, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$890, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$891	.dwtag  DW_TAG_member
	.dwattr $C$DW$891, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$891, DW_AT_name("INTx5")
	.dwattr $C$DW$891, DW_AT_TI_symbol_name("_INTx5")
	.dwattr $C$DW$891, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$891, DW_AT_bit_size(0x01)
	.dwattr $C$DW$891, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$891, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$892	.dwtag  DW_TAG_member
	.dwattr $C$DW$892, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$892, DW_AT_name("INTx6")
	.dwattr $C$DW$892, DW_AT_TI_symbol_name("_INTx6")
	.dwattr $C$DW$892, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$892, DW_AT_bit_size(0x01)
	.dwattr $C$DW$892, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$892, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$893	.dwtag  DW_TAG_member
	.dwattr $C$DW$893, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$893, DW_AT_name("INTx7")
	.dwattr $C$DW$893, DW_AT_TI_symbol_name("_INTx7")
	.dwattr $C$DW$893, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$893, DW_AT_bit_size(0x01)
	.dwattr $C$DW$893, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$893, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$894	.dwtag  DW_TAG_member
	.dwattr $C$DW$894, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$894, DW_AT_name("INTx8")
	.dwattr $C$DW$894, DW_AT_TI_symbol_name("_INTx8")
	.dwattr $C$DW$894, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$894, DW_AT_bit_size(0x01)
	.dwattr $C$DW$894, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$894, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$895	.dwtag  DW_TAG_member
	.dwattr $C$DW$895, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$895, DW_AT_name("INTx9")
	.dwattr $C$DW$895, DW_AT_TI_symbol_name("_INTx9")
	.dwattr $C$DW$895, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$895, DW_AT_bit_size(0x01)
	.dwattr $C$DW$895, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$895, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$896	.dwtag  DW_TAG_member
	.dwattr $C$DW$896, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$896, DW_AT_name("INTx10")
	.dwattr $C$DW$896, DW_AT_TI_symbol_name("_INTx10")
	.dwattr $C$DW$896, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$896, DW_AT_bit_size(0x01)
	.dwattr $C$DW$896, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$896, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$897	.dwtag  DW_TAG_member
	.dwattr $C$DW$897, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$897, DW_AT_name("INTx11")
	.dwattr $C$DW$897, DW_AT_TI_symbol_name("_INTx11")
	.dwattr $C$DW$897, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$897, DW_AT_bit_size(0x01)
	.dwattr $C$DW$897, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$897, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$898	.dwtag  DW_TAG_member
	.dwattr $C$DW$898, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$898, DW_AT_name("INTx12")
	.dwattr $C$DW$898, DW_AT_TI_symbol_name("_INTx12")
	.dwattr $C$DW$898, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$898, DW_AT_bit_size(0x01)
	.dwattr $C$DW$898, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$898, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$899	.dwtag  DW_TAG_member
	.dwattr $C$DW$899, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$899, DW_AT_name("INTx13")
	.dwattr $C$DW$899, DW_AT_TI_symbol_name("_INTx13")
	.dwattr $C$DW$899, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$899, DW_AT_bit_size(0x01)
	.dwattr $C$DW$899, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$899, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$900	.dwtag  DW_TAG_member
	.dwattr $C$DW$900, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$900, DW_AT_name("INTx14")
	.dwattr $C$DW$900, DW_AT_TI_symbol_name("_INTx14")
	.dwattr $C$DW$900, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$900, DW_AT_bit_size(0x01)
	.dwattr $C$DW$900, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$900, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$901	.dwtag  DW_TAG_member
	.dwattr $C$DW$901, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$901, DW_AT_name("INTx15")
	.dwattr $C$DW$901, DW_AT_TI_symbol_name("_INTx15")
	.dwattr $C$DW$901, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$901, DW_AT_bit_size(0x01)
	.dwattr $C$DW$901, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$901, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$902	.dwtag  DW_TAG_member
	.dwattr $C$DW$902, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$902, DW_AT_name("INTx16")
	.dwattr $C$DW$902, DW_AT_TI_symbol_name("_INTx16")
	.dwattr $C$DW$902, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$902, DW_AT_bit_size(0x01)
	.dwattr $C$DW$902, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$902, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$100


$C$DW$T$101	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$101, DW_AT_name("PIEIFR8_REG")
	.dwattr $C$DW$T$101, DW_AT_byte_size(0x01)
$C$DW$903	.dwtag  DW_TAG_member
	.dwattr $C$DW$903, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$903, DW_AT_name("all")
	.dwattr $C$DW$903, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$903, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$903, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$904	.dwtag  DW_TAG_member
	.dwattr $C$DW$904, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$904, DW_AT_name("bit")
	.dwattr $C$DW$904, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$904, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$904, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$101


$C$DW$T$102	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$102, DW_AT_name("PIEIFR9_BITS")
	.dwattr $C$DW$T$102, DW_AT_byte_size(0x01)
$C$DW$905	.dwtag  DW_TAG_member
	.dwattr $C$DW$905, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$905, DW_AT_name("INTx1")
	.dwattr $C$DW$905, DW_AT_TI_symbol_name("_INTx1")
	.dwattr $C$DW$905, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$905, DW_AT_bit_size(0x01)
	.dwattr $C$DW$905, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$905, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$906	.dwtag  DW_TAG_member
	.dwattr $C$DW$906, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$906, DW_AT_name("INTx2")
	.dwattr $C$DW$906, DW_AT_TI_symbol_name("_INTx2")
	.dwattr $C$DW$906, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$906, DW_AT_bit_size(0x01)
	.dwattr $C$DW$906, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$906, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$907	.dwtag  DW_TAG_member
	.dwattr $C$DW$907, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$907, DW_AT_name("INTx3")
	.dwattr $C$DW$907, DW_AT_TI_symbol_name("_INTx3")
	.dwattr $C$DW$907, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$907, DW_AT_bit_size(0x01)
	.dwattr $C$DW$907, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$907, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$908	.dwtag  DW_TAG_member
	.dwattr $C$DW$908, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$908, DW_AT_name("INTx4")
	.dwattr $C$DW$908, DW_AT_TI_symbol_name("_INTx4")
	.dwattr $C$DW$908, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$908, DW_AT_bit_size(0x01)
	.dwattr $C$DW$908, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$908, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$909	.dwtag  DW_TAG_member
	.dwattr $C$DW$909, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$909, DW_AT_name("INTx5")
	.dwattr $C$DW$909, DW_AT_TI_symbol_name("_INTx5")
	.dwattr $C$DW$909, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$909, DW_AT_bit_size(0x01)
	.dwattr $C$DW$909, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$909, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$910	.dwtag  DW_TAG_member
	.dwattr $C$DW$910, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$910, DW_AT_name("INTx6")
	.dwattr $C$DW$910, DW_AT_TI_symbol_name("_INTx6")
	.dwattr $C$DW$910, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$910, DW_AT_bit_size(0x01)
	.dwattr $C$DW$910, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$910, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$911	.dwtag  DW_TAG_member
	.dwattr $C$DW$911, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$911, DW_AT_name("INTx7")
	.dwattr $C$DW$911, DW_AT_TI_symbol_name("_INTx7")
	.dwattr $C$DW$911, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$911, DW_AT_bit_size(0x01)
	.dwattr $C$DW$911, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$911, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$912	.dwtag  DW_TAG_member
	.dwattr $C$DW$912, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$912, DW_AT_name("INTx8")
	.dwattr $C$DW$912, DW_AT_TI_symbol_name("_INTx8")
	.dwattr $C$DW$912, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$912, DW_AT_bit_size(0x01)
	.dwattr $C$DW$912, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$912, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$913	.dwtag  DW_TAG_member
	.dwattr $C$DW$913, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$913, DW_AT_name("INTx9")
	.dwattr $C$DW$913, DW_AT_TI_symbol_name("_INTx9")
	.dwattr $C$DW$913, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$913, DW_AT_bit_size(0x01)
	.dwattr $C$DW$913, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$913, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$914	.dwtag  DW_TAG_member
	.dwattr $C$DW$914, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$914, DW_AT_name("INTx10")
	.dwattr $C$DW$914, DW_AT_TI_symbol_name("_INTx10")
	.dwattr $C$DW$914, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$914, DW_AT_bit_size(0x01)
	.dwattr $C$DW$914, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$914, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$915	.dwtag  DW_TAG_member
	.dwattr $C$DW$915, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$915, DW_AT_name("INTx11")
	.dwattr $C$DW$915, DW_AT_TI_symbol_name("_INTx11")
	.dwattr $C$DW$915, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$915, DW_AT_bit_size(0x01)
	.dwattr $C$DW$915, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$915, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$916	.dwtag  DW_TAG_member
	.dwattr $C$DW$916, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$916, DW_AT_name("INTx12")
	.dwattr $C$DW$916, DW_AT_TI_symbol_name("_INTx12")
	.dwattr $C$DW$916, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$916, DW_AT_bit_size(0x01)
	.dwattr $C$DW$916, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$916, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$917	.dwtag  DW_TAG_member
	.dwattr $C$DW$917, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$917, DW_AT_name("INTx13")
	.dwattr $C$DW$917, DW_AT_TI_symbol_name("_INTx13")
	.dwattr $C$DW$917, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$917, DW_AT_bit_size(0x01)
	.dwattr $C$DW$917, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$917, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$918	.dwtag  DW_TAG_member
	.dwattr $C$DW$918, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$918, DW_AT_name("INTx14")
	.dwattr $C$DW$918, DW_AT_TI_symbol_name("_INTx14")
	.dwattr $C$DW$918, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$918, DW_AT_bit_size(0x01)
	.dwattr $C$DW$918, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$918, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$919	.dwtag  DW_TAG_member
	.dwattr $C$DW$919, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$919, DW_AT_name("INTx15")
	.dwattr $C$DW$919, DW_AT_TI_symbol_name("_INTx15")
	.dwattr $C$DW$919, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$919, DW_AT_bit_size(0x01)
	.dwattr $C$DW$919, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$919, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$920	.dwtag  DW_TAG_member
	.dwattr $C$DW$920, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$920, DW_AT_name("INTx16")
	.dwattr $C$DW$920, DW_AT_TI_symbol_name("_INTx16")
	.dwattr $C$DW$920, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$920, DW_AT_bit_size(0x01)
	.dwattr $C$DW$920, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$920, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$102


$C$DW$T$103	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$103, DW_AT_name("PIEIFR9_REG")
	.dwattr $C$DW$T$103, DW_AT_byte_size(0x01)
$C$DW$921	.dwtag  DW_TAG_member
	.dwattr $C$DW$921, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$921, DW_AT_name("all")
	.dwattr $C$DW$921, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$921, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$921, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$922	.dwtag  DW_TAG_member
	.dwattr $C$DW$922, DW_AT_type(*$C$DW$T$102)
	.dwattr $C$DW$922, DW_AT_name("bit")
	.dwattr $C$DW$922, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$922, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$922, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$103


$C$DW$T$104	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$104, DW_AT_name("PIE_CTRL_REGS")
	.dwattr $C$DW$T$104, DW_AT_byte_size(0x1a)
$C$DW$923	.dwtag  DW_TAG_member
	.dwattr $C$DW$923, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$923, DW_AT_name("PIECTRL")
	.dwattr $C$DW$923, DW_AT_TI_symbol_name("_PIECTRL")
	.dwattr $C$DW$923, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$923, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$924	.dwtag  DW_TAG_member
	.dwattr $C$DW$924, DW_AT_type(*$C$DW$T$53)
	.dwattr $C$DW$924, DW_AT_name("PIEACK")
	.dwattr $C$DW$924, DW_AT_TI_symbol_name("_PIEACK")
	.dwattr $C$DW$924, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$924, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$925	.dwtag  DW_TAG_member
	.dwattr $C$DW$925, DW_AT_type(*$C$DW$T$63)
	.dwattr $C$DW$925, DW_AT_name("PIEIER1")
	.dwattr $C$DW$925, DW_AT_TI_symbol_name("_PIEIER1")
	.dwattr $C$DW$925, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$925, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$926	.dwtag  DW_TAG_member
	.dwattr $C$DW$926, DW_AT_type(*$C$DW$T$87)
	.dwattr $C$DW$926, DW_AT_name("PIEIFR1")
	.dwattr $C$DW$926, DW_AT_TI_symbol_name("_PIEIFR1")
	.dwattr $C$DW$926, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$926, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$927	.dwtag  DW_TAG_member
	.dwattr $C$DW$927, DW_AT_type(*$C$DW$T$65)
	.dwattr $C$DW$927, DW_AT_name("PIEIER2")
	.dwattr $C$DW$927, DW_AT_TI_symbol_name("_PIEIER2")
	.dwattr $C$DW$927, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$927, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$928	.dwtag  DW_TAG_member
	.dwattr $C$DW$928, DW_AT_type(*$C$DW$T$89)
	.dwattr $C$DW$928, DW_AT_name("PIEIFR2")
	.dwattr $C$DW$928, DW_AT_TI_symbol_name("_PIEIFR2")
	.dwattr $C$DW$928, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$928, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$929	.dwtag  DW_TAG_member
	.dwattr $C$DW$929, DW_AT_type(*$C$DW$T$67)
	.dwattr $C$DW$929, DW_AT_name("PIEIER3")
	.dwattr $C$DW$929, DW_AT_TI_symbol_name("_PIEIER3")
	.dwattr $C$DW$929, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$929, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$930	.dwtag  DW_TAG_member
	.dwattr $C$DW$930, DW_AT_type(*$C$DW$T$91)
	.dwattr $C$DW$930, DW_AT_name("PIEIFR3")
	.dwattr $C$DW$930, DW_AT_TI_symbol_name("_PIEIFR3")
	.dwattr $C$DW$930, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr $C$DW$930, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$931	.dwtag  DW_TAG_member
	.dwattr $C$DW$931, DW_AT_type(*$C$DW$T$69)
	.dwattr $C$DW$931, DW_AT_name("PIEIER4")
	.dwattr $C$DW$931, DW_AT_TI_symbol_name("_PIEIER4")
	.dwattr $C$DW$931, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$931, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$932	.dwtag  DW_TAG_member
	.dwattr $C$DW$932, DW_AT_type(*$C$DW$T$93)
	.dwattr $C$DW$932, DW_AT_name("PIEIFR4")
	.dwattr $C$DW$932, DW_AT_TI_symbol_name("_PIEIFR4")
	.dwattr $C$DW$932, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr $C$DW$932, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$933	.dwtag  DW_TAG_member
	.dwattr $C$DW$933, DW_AT_type(*$C$DW$T$71)
	.dwattr $C$DW$933, DW_AT_name("PIEIER5")
	.dwattr $C$DW$933, DW_AT_TI_symbol_name("_PIEIER5")
	.dwattr $C$DW$933, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$933, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$934	.dwtag  DW_TAG_member
	.dwattr $C$DW$934, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$934, DW_AT_name("PIEIFR5")
	.dwattr $C$DW$934, DW_AT_TI_symbol_name("_PIEIFR5")
	.dwattr $C$DW$934, DW_AT_data_member_location[DW_OP_plus_uconst 0xb]
	.dwattr $C$DW$934, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$935	.dwtag  DW_TAG_member
	.dwattr $C$DW$935, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$935, DW_AT_name("PIEIER6")
	.dwattr $C$DW$935, DW_AT_TI_symbol_name("_PIEIER6")
	.dwattr $C$DW$935, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$935, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$936	.dwtag  DW_TAG_member
	.dwattr $C$DW$936, DW_AT_type(*$C$DW$T$97)
	.dwattr $C$DW$936, DW_AT_name("PIEIFR6")
	.dwattr $C$DW$936, DW_AT_TI_symbol_name("_PIEIFR6")
	.dwattr $C$DW$936, DW_AT_data_member_location[DW_OP_plus_uconst 0xd]
	.dwattr $C$DW$936, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$937	.dwtag  DW_TAG_member
	.dwattr $C$DW$937, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$937, DW_AT_name("PIEIER7")
	.dwattr $C$DW$937, DW_AT_TI_symbol_name("_PIEIER7")
	.dwattr $C$DW$937, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$937, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$938	.dwtag  DW_TAG_member
	.dwattr $C$DW$938, DW_AT_type(*$C$DW$T$99)
	.dwattr $C$DW$938, DW_AT_name("PIEIFR7")
	.dwattr $C$DW$938, DW_AT_TI_symbol_name("_PIEIFR7")
	.dwattr $C$DW$938, DW_AT_data_member_location[DW_OP_plus_uconst 0xf]
	.dwattr $C$DW$938, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$939	.dwtag  DW_TAG_member
	.dwattr $C$DW$939, DW_AT_type(*$C$DW$T$77)
	.dwattr $C$DW$939, DW_AT_name("PIEIER8")
	.dwattr $C$DW$939, DW_AT_TI_symbol_name("_PIEIER8")
	.dwattr $C$DW$939, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$939, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$940	.dwtag  DW_TAG_member
	.dwattr $C$DW$940, DW_AT_type(*$C$DW$T$101)
	.dwattr $C$DW$940, DW_AT_name("PIEIFR8")
	.dwattr $C$DW$940, DW_AT_TI_symbol_name("_PIEIFR8")
	.dwattr $C$DW$940, DW_AT_data_member_location[DW_OP_plus_uconst 0x11]
	.dwattr $C$DW$940, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$941	.dwtag  DW_TAG_member
	.dwattr $C$DW$941, DW_AT_type(*$C$DW$T$79)
	.dwattr $C$DW$941, DW_AT_name("PIEIER9")
	.dwattr $C$DW$941, DW_AT_TI_symbol_name("_PIEIER9")
	.dwattr $C$DW$941, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr $C$DW$941, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$942	.dwtag  DW_TAG_member
	.dwattr $C$DW$942, DW_AT_type(*$C$DW$T$103)
	.dwattr $C$DW$942, DW_AT_name("PIEIFR9")
	.dwattr $C$DW$942, DW_AT_TI_symbol_name("_PIEIFR9")
	.dwattr $C$DW$942, DW_AT_data_member_location[DW_OP_plus_uconst 0x13]
	.dwattr $C$DW$942, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$943	.dwtag  DW_TAG_member
	.dwattr $C$DW$943, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$943, DW_AT_name("PIEIER10")
	.dwattr $C$DW$943, DW_AT_TI_symbol_name("_PIEIER10")
	.dwattr $C$DW$943, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$943, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$944	.dwtag  DW_TAG_member
	.dwattr $C$DW$944, DW_AT_type(*$C$DW$T$81)
	.dwattr $C$DW$944, DW_AT_name("PIEIFR10")
	.dwattr $C$DW$944, DW_AT_TI_symbol_name("_PIEIFR10")
	.dwattr $C$DW$944, DW_AT_data_member_location[DW_OP_plus_uconst 0x15]
	.dwattr $C$DW$944, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$945	.dwtag  DW_TAG_member
	.dwattr $C$DW$945, DW_AT_type(*$C$DW$T$59)
	.dwattr $C$DW$945, DW_AT_name("PIEIER11")
	.dwattr $C$DW$945, DW_AT_TI_symbol_name("_PIEIER11")
	.dwattr $C$DW$945, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr $C$DW$945, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$946	.dwtag  DW_TAG_member
	.dwattr $C$DW$946, DW_AT_type(*$C$DW$T$83)
	.dwattr $C$DW$946, DW_AT_name("PIEIFR11")
	.dwattr $C$DW$946, DW_AT_TI_symbol_name("_PIEIFR11")
	.dwattr $C$DW$946, DW_AT_data_member_location[DW_OP_plus_uconst 0x17]
	.dwattr $C$DW$946, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$947	.dwtag  DW_TAG_member
	.dwattr $C$DW$947, DW_AT_type(*$C$DW$T$61)
	.dwattr $C$DW$947, DW_AT_name("PIEIER12")
	.dwattr $C$DW$947, DW_AT_TI_symbol_name("_PIEIER12")
	.dwattr $C$DW$947, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$947, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$948	.dwtag  DW_TAG_member
	.dwattr $C$DW$948, DW_AT_type(*$C$DW$T$85)
	.dwattr $C$DW$948, DW_AT_name("PIEIFR12")
	.dwattr $C$DW$948, DW_AT_TI_symbol_name("_PIEIFR12")
	.dwattr $C$DW$948, DW_AT_data_member_location[DW_OP_plus_uconst 0x19]
	.dwattr $C$DW$948, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$104

$C$DW$949	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$949, DW_AT_type(*$C$DW$T$104)

$C$DW$T$127	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$127, DW_AT_type(*$C$DW$949)


$C$DW$T$105	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$105, DW_AT_name("PRIORITYCTRL1_BITS")
	.dwattr $C$DW$T$105, DW_AT_byte_size(0x01)
$C$DW$950	.dwtag  DW_TAG_member
	.dwattr $C$DW$950, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$950, DW_AT_name("CH1PRIORITY")
	.dwattr $C$DW$950, DW_AT_TI_symbol_name("_CH1PRIORITY")
	.dwattr $C$DW$950, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$950, DW_AT_bit_size(0x01)
	.dwattr $C$DW$950, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$950, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$951	.dwtag  DW_TAG_member
	.dwattr $C$DW$951, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$951, DW_AT_name("rsvd1")
	.dwattr $C$DW$951, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$951, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$951, DW_AT_bit_size(0x0f)
	.dwattr $C$DW$951, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$951, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$105


$C$DW$T$106	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$106, DW_AT_name("PRIORITYCTRL1_REG")
	.dwattr $C$DW$T$106, DW_AT_byte_size(0x01)
$C$DW$952	.dwtag  DW_TAG_member
	.dwattr $C$DW$952, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$952, DW_AT_name("all")
	.dwattr $C$DW$952, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$952, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$952, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$953	.dwtag  DW_TAG_member
	.dwattr $C$DW$953, DW_AT_type(*$C$DW$T$105)
	.dwattr $C$DW$953, DW_AT_name("bit")
	.dwattr $C$DW$953, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$953, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$953, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$106


$C$DW$T$107	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$107, DW_AT_name("PRIORITYSTAT_BITS")
	.dwattr $C$DW$T$107, DW_AT_byte_size(0x01)
$C$DW$954	.dwtag  DW_TAG_member
	.dwattr $C$DW$954, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$954, DW_AT_name("ACTIVESTS")
	.dwattr $C$DW$954, DW_AT_TI_symbol_name("_ACTIVESTS")
	.dwattr $C$DW$954, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$954, DW_AT_bit_size(0x03)
	.dwattr $C$DW$954, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$954, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$955	.dwtag  DW_TAG_member
	.dwattr $C$DW$955, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$955, DW_AT_name("rsvd1")
	.dwattr $C$DW$955, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$955, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$955, DW_AT_bit_size(0x01)
	.dwattr $C$DW$955, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$955, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$956	.dwtag  DW_TAG_member
	.dwattr $C$DW$956, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$956, DW_AT_name("ACTIVESTS_SHADOW")
	.dwattr $C$DW$956, DW_AT_TI_symbol_name("_ACTIVESTS_SHADOW")
	.dwattr $C$DW$956, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$956, DW_AT_bit_size(0x03)
	.dwattr $C$DW$956, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$956, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$957	.dwtag  DW_TAG_member
	.dwattr $C$DW$957, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$957, DW_AT_name("rsvd2")
	.dwattr $C$DW$957, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$957, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$957, DW_AT_bit_size(0x09)
	.dwattr $C$DW$957, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$957, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$107


$C$DW$T$108	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$108, DW_AT_name("PRIORITYSTAT_REG")
	.dwattr $C$DW$T$108, DW_AT_byte_size(0x01)
$C$DW$958	.dwtag  DW_TAG_member
	.dwattr $C$DW$958, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$958, DW_AT_name("all")
	.dwattr $C$DW$958, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$958, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$958, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$959	.dwtag  DW_TAG_member
	.dwattr $C$DW$959, DW_AT_type(*$C$DW$T$107)
	.dwattr $C$DW$959, DW_AT_name("bit")
	.dwattr $C$DW$959, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$959, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$959, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$108

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

$C$DW$T$24	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$24, DW_AT_name("int16")
	.dwattr $C$DW$T$24, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$24, DW_AT_language(DW_LANG_C)

$C$DW$T$11	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$11, DW_AT_name("unsigned int")
	.dwattr $C$DW$T$11, DW_AT_byte_size(0x01)

$C$DW$T$19	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$19, DW_AT_name("Uint16")
	.dwattr $C$DW$T$19, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$19, DW_AT_language(DW_LANG_C)

$C$DW$960	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$960, DW_AT_type(*$C$DW$T$19)

$C$DW$T$129	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$129, DW_AT_type(*$C$DW$960)

$C$DW$T$130	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$130, DW_AT_type(*$C$DW$T$129)
	.dwattr $C$DW$T$130, DW_AT_address_class(0x20)


$C$DW$T$45	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$45, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$45, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$45, DW_AT_byte_size(0x02)
$C$DW$961	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$961, DW_AT_upper_bound(0x01)

	.dwendtag $C$DW$T$45


$C$DW$T$46	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$46, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$46, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$46, DW_AT_byte_size(0x0c)
$C$DW$962	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$962, DW_AT_upper_bound(0x0b)

	.dwendtag $C$DW$T$46


$C$DW$T$48	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$48, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$48, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$48, DW_AT_byte_size(0x19)
$C$DW$963	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$963, DW_AT_upper_bound(0x18)

	.dwendtag $C$DW$T$48

$C$DW$T$12	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$12, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$12, DW_AT_name("long")
	.dwattr $C$DW$T$12, DW_AT_byte_size(0x02)

$C$DW$T$13	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$13, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$13, DW_AT_name("unsigned long")
	.dwattr $C$DW$T$13, DW_AT_byte_size(0x02)

$C$DW$T$25	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$25, DW_AT_name("Uint32")
	.dwattr $C$DW$T$25, DW_AT_type(*$C$DW$T$13)
	.dwattr $C$DW$T$25, DW_AT_language(DW_LANG_C)

$C$DW$964	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$964, DW_AT_type(*$C$DW$T$25)

$C$DW$T$136	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$136, DW_AT_type(*$C$DW$964)

$C$DW$T$137	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$137, DW_AT_type(*$C$DW$T$136)
	.dwattr $C$DW$T$137, DW_AT_address_class(0x20)

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

$C$DW$965	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$965, DW_AT_name("AL")
	.dwattr $C$DW$965, DW_AT_location[DW_OP_reg0]

$C$DW$966	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$966, DW_AT_name("AH")
	.dwattr $C$DW$966, DW_AT_location[DW_OP_reg1]

$C$DW$967	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$967, DW_AT_name("PL")
	.dwattr $C$DW$967, DW_AT_location[DW_OP_reg2]

$C$DW$968	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$968, DW_AT_name("PH")
	.dwattr $C$DW$968, DW_AT_location[DW_OP_reg3]

$C$DW$969	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$969, DW_AT_name("SP")
	.dwattr $C$DW$969, DW_AT_location[DW_OP_reg20]

$C$DW$970	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$970, DW_AT_name("XT")
	.dwattr $C$DW$970, DW_AT_location[DW_OP_reg21]

$C$DW$971	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$971, DW_AT_name("T")
	.dwattr $C$DW$971, DW_AT_location[DW_OP_reg22]

$C$DW$972	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$972, DW_AT_name("ST0")
	.dwattr $C$DW$972, DW_AT_location[DW_OP_reg23]

$C$DW$973	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$973, DW_AT_name("ST1")
	.dwattr $C$DW$973, DW_AT_location[DW_OP_reg24]

$C$DW$974	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$974, DW_AT_name("PC")
	.dwattr $C$DW$974, DW_AT_location[DW_OP_reg25]

$C$DW$975	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$975, DW_AT_name("RPC")
	.dwattr $C$DW$975, DW_AT_location[DW_OP_reg26]

$C$DW$976	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$976, DW_AT_name("FP")
	.dwattr $C$DW$976, DW_AT_location[DW_OP_reg28]

$C$DW$977	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$977, DW_AT_name("DP")
	.dwattr $C$DW$977, DW_AT_location[DW_OP_reg29]

$C$DW$978	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$978, DW_AT_name("SXM")
	.dwattr $C$DW$978, DW_AT_location[DW_OP_reg30]

$C$DW$979	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$979, DW_AT_name("PM")
	.dwattr $C$DW$979, DW_AT_location[DW_OP_reg31]

$C$DW$980	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$980, DW_AT_name("OVM")
	.dwattr $C$DW$980, DW_AT_location[DW_OP_regx 0x20]

$C$DW$981	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$981, DW_AT_name("PAGE0")
	.dwattr $C$DW$981, DW_AT_location[DW_OP_regx 0x21]

$C$DW$982	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$982, DW_AT_name("AMODE")
	.dwattr $C$DW$982, DW_AT_location[DW_OP_regx 0x22]

$C$DW$983	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$983, DW_AT_name("EALLOW")
	.dwattr $C$DW$983, DW_AT_location[DW_OP_regx 0x4e]

$C$DW$984	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$984, DW_AT_name("INTM")
	.dwattr $C$DW$984, DW_AT_location[DW_OP_regx 0x23]

$C$DW$985	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$985, DW_AT_name("IFR")
	.dwattr $C$DW$985, DW_AT_location[DW_OP_regx 0x24]

$C$DW$986	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$986, DW_AT_name("IER")
	.dwattr $C$DW$986, DW_AT_location[DW_OP_regx 0x25]

$C$DW$987	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$987, DW_AT_name("V")
	.dwattr $C$DW$987, DW_AT_location[DW_OP_regx 0x26]

$C$DW$988	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$988, DW_AT_name("PSEUDOH")
	.dwattr $C$DW$988, DW_AT_location[DW_OP_regx 0x4c]

$C$DW$989	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$989, DW_AT_name("VOL")
	.dwattr $C$DW$989, DW_AT_location[DW_OP_regx 0x4d]

$C$DW$990	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$990, DW_AT_name("AR0")
	.dwattr $C$DW$990, DW_AT_location[DW_OP_reg4]

$C$DW$991	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$991, DW_AT_name("XAR0")
	.dwattr $C$DW$991, DW_AT_location[DW_OP_reg5]

$C$DW$992	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$992, DW_AT_name("AR1")
	.dwattr $C$DW$992, DW_AT_location[DW_OP_reg6]

$C$DW$993	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$993, DW_AT_name("XAR1")
	.dwattr $C$DW$993, DW_AT_location[DW_OP_reg7]

$C$DW$994	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$994, DW_AT_name("AR2")
	.dwattr $C$DW$994, DW_AT_location[DW_OP_reg8]

$C$DW$995	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$995, DW_AT_name("XAR2")
	.dwattr $C$DW$995, DW_AT_location[DW_OP_reg9]

$C$DW$996	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$996, DW_AT_name("AR3")
	.dwattr $C$DW$996, DW_AT_location[DW_OP_reg10]

$C$DW$997	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$997, DW_AT_name("XAR3")
	.dwattr $C$DW$997, DW_AT_location[DW_OP_reg11]

$C$DW$998	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$998, DW_AT_name("AR4")
	.dwattr $C$DW$998, DW_AT_location[DW_OP_reg12]

$C$DW$999	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$999, DW_AT_name("XAR4")
	.dwattr $C$DW$999, DW_AT_location[DW_OP_reg13]

$C$DW$1000	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1000, DW_AT_name("AR5")
	.dwattr $C$DW$1000, DW_AT_location[DW_OP_reg14]

$C$DW$1001	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1001, DW_AT_name("XAR5")
	.dwattr $C$DW$1001, DW_AT_location[DW_OP_reg15]

$C$DW$1002	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1002, DW_AT_name("AR6")
	.dwattr $C$DW$1002, DW_AT_location[DW_OP_reg16]

$C$DW$1003	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1003, DW_AT_name("XAR6")
	.dwattr $C$DW$1003, DW_AT_location[DW_OP_reg17]

$C$DW$1004	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1004, DW_AT_name("AR7")
	.dwattr $C$DW$1004, DW_AT_location[DW_OP_reg18]

$C$DW$1005	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1005, DW_AT_name("XAR7")
	.dwattr $C$DW$1005, DW_AT_location[DW_OP_reg19]

$C$DW$1006	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1006, DW_AT_name("R0H")
	.dwattr $C$DW$1006, DW_AT_location[DW_OP_regx 0x2b]

$C$DW$1007	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1007, DW_AT_name("R1H")
	.dwattr $C$DW$1007, DW_AT_location[DW_OP_regx 0x2f]

$C$DW$1008	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1008, DW_AT_name("R2H")
	.dwattr $C$DW$1008, DW_AT_location[DW_OP_regx 0x33]

$C$DW$1009	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1009, DW_AT_name("R3H")
	.dwattr $C$DW$1009, DW_AT_location[DW_OP_regx 0x37]

$C$DW$1010	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1010, DW_AT_name("R4H")
	.dwattr $C$DW$1010, DW_AT_location[DW_OP_regx 0x3b]

$C$DW$1011	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1011, DW_AT_name("R5H")
	.dwattr $C$DW$1011, DW_AT_location[DW_OP_regx 0x3f]

$C$DW$1012	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1012, DW_AT_name("R6H")
	.dwattr $C$DW$1012, DW_AT_location[DW_OP_regx 0x43]

$C$DW$1013	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1013, DW_AT_name("R7H")
	.dwattr $C$DW$1013, DW_AT_location[DW_OP_regx 0x47]

$C$DW$1014	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1014, DW_AT_name("RB")
	.dwattr $C$DW$1014, DW_AT_location[DW_OP_regx 0x4a]

$C$DW$1015	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1015, DW_AT_name("STF")
	.dwattr $C$DW$1015, DW_AT_location[DW_OP_regx 0x28]

$C$DW$1016	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1016, DW_AT_name("FPUHAZ")
	.dwattr $C$DW$1016, DW_AT_location[DW_OP_reg27]

$C$DW$1017	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1017, DW_AT_name("STF_HWDIV")
	.dwattr $C$DW$1017, DW_AT_location[DW_OP_regx 0x4f]

	.dwendtag $C$DW$CU

