;***************************************************************
;* TMS320C2000 G3 C/C++ Codegen                               PC v22.6.0.LTS *
;* Date/Time created: Thu Nov 20 18:10:06 2025                 *
;***************************************************************
	.compiler_opts --abi=coffabi --float_support=fpu32 --hll_source=on --mem_model:code=flat --mem_model:data=large --object_format=coff --silicon_errata_fpu1_workaround=off --silicon_version=28 --symdebug:dwarf --symdebug:dwarf_version=3 --tmu_support=tmu0 
	.asg	XAR2, FP

$C$DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr $C$DW$CU, DW_AT_name("D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c28xSPI.c")
	.dwattr $C$DW$CU, DW_AT_producer("TI TMS320C2000 G3 C/C++ Codegen PC v22.6.0.LTS Copyright (c) 1996-2018 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("C:\Users\13571\Documents\MATLAB\Examples\R2023b\mcb\FocHallExample\mcb_pmsm_foc_hall_f28379d_ert_rtw\CCS_Project\Debug")
;**************************************************************
;* CINIT RECORDS                                              *
;**************************************************************
	.sect	".cinit:_SPI_oneTimeInit"
	.clink
	.align	1
	.field  	-$C$IR_1,16
	.field  	_SPI_oneTimeInit+0,32
	.bits		0,16
			; _SPI_oneTimeInit[0] @ 0
	.bits		0,16
			; _SPI_oneTimeInit[1] @ 16
	.bits		0,16
			; _SPI_oneTimeInit[2] @ 32
	.bits		0,16
			; _SPI_oneTimeInit[3] @ 48
$C$IR_1:	.set	4


$C$DW$1	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$1, DW_AT_name("Set_GPIOPin")
	.dwattr $C$DW$1, DW_AT_TI_symbol_name("_Set_GPIOPin")
	.dwattr $C$DW$1, DW_AT_declaration
	.dwattr $C$DW$1, DW_AT_external
$C$DW$2	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$2, DW_AT_type(*$C$DW$T$19)

$C$DW$3	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$3, DW_AT_type(*$C$DW$T$19)

$C$DW$4	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$4, DW_AT_type(*$C$DW$T$19)

$C$DW$5	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$5, DW_AT_type(*$C$DW$T$19)

$C$DW$6	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$6, DW_AT_type(*$C$DW$T$19)

	.dwendtag $C$DW$1

	.global	_SPI_oneTimeInit
_SPI_oneTimeInit:	.usect	".ebss:_SPI_oneTimeInit",4,1,0
	.clink ".ebss:_SPI_oneTimeInit"
$C$DW$7	.dwtag  DW_TAG_variable
	.dwattr $C$DW$7, DW_AT_name("SPI_oneTimeInit")
	.dwattr $C$DW$7, DW_AT_TI_symbol_name("_SPI_oneTimeInit")
	.dwattr $C$DW$7, DW_AT_location[DW_OP_addr _SPI_oneTimeInit]
	.dwattr $C$DW$7, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$7, DW_AT_external

$C$DW$8	.dwtag  DW_TAG_variable
	.dwattr $C$DW$8, DW_AT_name("SpiaRegs")
	.dwattr $C$DW$8, DW_AT_TI_symbol_name("_SpiaRegs")
	.dwattr $C$DW$8, DW_AT_type(*$C$DW$T$99)
	.dwattr $C$DW$8, DW_AT_declaration
	.dwattr $C$DW$8, DW_AT_external

	.global	_mySpi
_mySpi:	.usect	".ebss:_mySpi",24,1,1
	.clink ".ebss:_mySpi"
$C$DW$9	.dwtag  DW_TAG_variable
	.dwattr $C$DW$9, DW_AT_name("mySpi")
	.dwattr $C$DW$9, DW_AT_TI_symbol_name("_mySpi")
	.dwattr $C$DW$9, DW_AT_location[DW_OP_addr _mySpi]
	.dwattr $C$DW$9, DW_AT_type(*$C$DW$T$105)
	.dwattr $C$DW$9, DW_AT_external

$C$DW$10	.dwtag  DW_TAG_variable
	.dwattr $C$DW$10, DW_AT_name("CpuSysRegs")
	.dwattr $C$DW$10, DW_AT_TI_symbol_name("_CpuSysRegs")
	.dwattr $C$DW$10, DW_AT_type(*$C$DW$T$96)
	.dwattr $C$DW$10, DW_AT_declaration
	.dwattr $C$DW$10, DW_AT_external

	.sblock	".ebss:_SPI_oneTimeInit"
	.sblock	".ebss:_mySpi"
;	D:\Software\CCS\CCS12.2.0.00009_win64\c1220\ccs\tools\compiler\ti-cgt-c2000_22.6.0.LTS\bin\ac2000.exe -@C:\\Users\\13571\\AppData\\Local\\Temp\\{13048985-7D2D-41C2-AE67-AF220823800A} 
	.sect	".text"
	.clink
	.global	_SPI_init

$C$DW$11	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$11, DW_AT_name("SPI_init")
	.dwattr $C$DW$11, DW_AT_low_pc(_SPI_init)
	.dwattr $C$DW$11, DW_AT_high_pc(0x00)
	.dwattr $C$DW$11, DW_AT_TI_symbol_name("_SPI_init")
	.dwattr $C$DW$11, DW_AT_external
	.dwattr $C$DW$11, DW_AT_type(*$C$DW$T$103)
	.dwattr $C$DW$11, DW_AT_TI_begin_file("D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c28xSPI.c")
	.dwattr $C$DW$11, DW_AT_TI_begin_line(0x19)
	.dwattr $C$DW$11, DW_AT_TI_begin_column(0x0e)
	.dwattr $C$DW$11, DW_AT_TI_max_frame_size(-10)
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c28xSPI.c",line 26,column 1,is_stmt,address _SPI_init,isa 0

	.dwfde $C$DW$CIE, _SPI_init
$C$DW$12	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$12, DW_AT_name("SPIModule")
	.dwattr $C$DW$12, DW_AT_TI_symbol_name("_SPIModule")
	.dwattr $C$DW$12, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$12, DW_AT_location[DW_OP_reg0]

;----------------------------------------------------------------------
;  25 | MW_SpiHandle SPI_init(Uint32 SPIModule)                                
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _SPI_init                     FR SIZE:   8           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            1 Parameter,  6 Auto,  0 SOE     *
;***************************************************************

_SPI_init:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#8                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -10
$C$DW$13	.dwtag  DW_TAG_variable
	.dwattr $C$DW$13, DW_AT_name("SPIModule")
	.dwattr $C$DW$13, DW_AT_TI_symbol_name("_SPIModule")
	.dwattr $C$DW$13, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$13, DW_AT_location[DW_OP_breg20 -4]

$C$DW$14	.dwtag  DW_TAG_variable
	.dwattr $C$DW$14, DW_AT_name("SPI_obj")
	.dwattr $C$DW$14, DW_AT_TI_symbol_name("_SPI_obj")
	.dwattr $C$DW$14, DW_AT_type(*$C$DW$T$103)
	.dwattr $C$DW$14, DW_AT_location[DW_OP_breg20 -6]

$C$DW$15	.dwtag  DW_TAG_variable
	.dwattr $C$DW$15, DW_AT_name("priority")
	.dwattr $C$DW$15, DW_AT_TI_symbol_name("_priority")
	.dwattr $C$DW$15, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$15, DW_AT_location[DW_OP_breg20 -7]

;----------------------------------------------------------------------
;  27 | Uint16 priority;                                                       
;----------------------------------------------------------------------
        MOVL      *-SP[4],ACC           ; [CPU_ALU] |26| 
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c28xSPI.c",line 28,column 26,is_stmt,isa 0
;----------------------------------------------------------------------
;  28 | MW_SpiHandle SPI_obj = (MW_SpiHandle)&mySpi[SPIModule];                
;  30 | #ifdef F2837X_REG_FORMAT                                               
;----------------------------------------------------------------------
        MOVB      ACC,#6                ; [CPU_ALU] |28| 
        MOVL      XAR4,#_mySpi          ; [CPU_ARAU] |28| 
        MOVL      XT,ACC                ; [CPU_ALU] |28| 
        IMPYL     ACC,XT,*-SP[4]        ; [CPU_ALU] |28| 
        ADDL      XAR4,ACC              ; [CPU_ALU] |28| 
        MOVL      *-SP[6],XAR4          ; [CPU_ALU] |28| 
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c28xSPI.c",line 31,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
;  31 | EALLOW;                                                                
;  32 | #ifdef MW_SPI_A                                                        
;----------------------------------------------------------------------
 EALLOW
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c28xSPI.c",line 33,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
;  33 | CpuSysRegs.PCLKCR8.bit.SPI_A = 1;                                      
;  34 | #endif                                                                 
;  35 | #ifdef MW_SPI_B                                                        
;  36 | CpuSysRegs.PCLKCR8.bit.SPI_B = 1;                                      
;  37 | #endif                                                                 
;  38 | #ifdef MW_SPI_C                                                        
;  39 | CpuSysRegs.PCLKCR8.bit.SPI_C = 1;                                      
;  40 | #endif                                                                 
;  41 | #ifdef MW_SPI_D                                                        
;  42 | CpuSysRegs.PCLKCR8.bit.SPI_D = 1;                                      
;  43 | #endif                                                                 
;----------------------------------------------------------------------
        MOVW      DP,#_CpuSysRegs+50    ; [CPU_ARAU] 
        OR        @$BLOCKED(_CpuSysRegs)+50,#0x0001 ; [CPU_ALU] |33| 
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c28xSPI.c",line 44,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
;  44 | EDIS;                                                                  
;  45 | #endif                                                                 
;  47 | #ifdef MW_F281X                                                        
;  48 |         if (SPI_oneTimeInit[0] == 0)                                   
;  50 |             SPI_obj->spi_base_address = (SPI_REG_ADDRESS)&SpiaRegs;    
;  51 |             SPI_obj->spi_clk_mode = 0;                                 
;  52 |             SPI_obj->charLength = 0;                                   
;  53 |             SPI_obj->fifoLevel = MW_SPI_FIFO_LEVEL;                    
;  54 |             SPI_obj->txInterrupt = MW_SPI_TXINTERRUPTENABLE;           
;  55 |             if (MW_SPI_SUSPENSIONMODE == 0)                            
;  57 |                 priority = 0;                                          
;  59 |             else if (MW_SPI_SUSPENSIONMODE == 1)                       
;  61 |                 priority = 2;                                          
;  63 |             else                                                       
;  65 |                 priority = 1;                                          
;  68 |             EALLOW;                                                    
;  69 |             GpioMuxRegs.GPFMUX.all|=0x0007;      /* Select GPIOs to be
;     | SPI pins, Port F MUX - x000 0000 0000 0111*/                           
;  70 |             GpioMuxRegs.GPFMUX.all|=0x0008;      /* Select GPIOs to be
;     | SPISTE pin, Port F MUX - x000 0000 0000 1000*/                         
;  71 |             EDIS;                                                      
;  73 |             *((SPI_obj->spi_base_address) + SPICCR_REG_OFFSET) &= (~(SP
;     | ICCR_SPISWRESET_BITS << SPICCR_SPISWRESET_SHIFT));                     
;  74 |             *((SPI_obj->spi_base_address) + SPICCR_REG_OFFSET) |= (Uint
;     | 16)((MW_SPI_ENABLELOOPBACK & SPICCR_SPILBK_BITS) << SPICCR_SPILBK_SHIFT
;     | );                                                                     
;  75 |             *((SPI_obj->spi_base_address) + SPICTL_REG_OFFSET) |= (Uint
;     | 16)(((~MW_SPI_MODE) & SPICTL_MASTER_SLAVE_BITS) << SPICTL_MASTER_SLAVE_
;     | SHIFT);                                                                
;  76 |             *((SPI_obj->spi_base_address) + SPICTL_REG_OFFSET) |= (Uint
;     | 16)((SPICTL_TALK_BITS) << SPICTL_TALK_SHIFT);                          
;  77 |             *((SPI_obj->spi_base_address) + SPIBRR_REG_OFFSET) |= (Uint
;     | 16)(((Uint16)MW_SPI_BAUDRATEFACTOR & SPIBRR_SPI_BIT_RATE_BITS) << SPIBR
;     | R_SPI_BIT_RATE_SHIFT);                                                 
;  79 |             *((SPI_obj->spi_base_address) + SPIPRI_REG_OFFSET) |= (Uint
;     | 16)((priority & SPIPRI_SOFT_FREE_BITS) << SPIPRI_SOFT_FREE_SHIFT);     
;  80 |             *((SPI_obj->spi_base_address) + SPIFFTX_REG_OFFSET) |= ((SP
;     | IFFTX_SPIFFENA_BITS) << SPIFFTX_SPIFFENA_SHIFT);                       
;  81 |             *((SPI_obj->spi_base_address) + SPIFFCT_REG_OFFSET) |= ((MW
;     | _SPI_FIFOTRANSMITDELAY & SPIFFCT_TXDLY_BITS) << SPIFFCT_TXDLY_SHIFT);  
;  84 |             *((SPI_obj->spi_base_address) + SPIFFTX_REG_OFFSET) |= ((MW
;     | _SPI_FIFOINTERRUPTLEVEL_TX & SPIFFTX_TXFFIL_BITS) << SPIFFTX_TXFFIL_SHI
;     | FT);                                                                   
;  86 |             *((SPI_obj->spi_base_address) + SPIFFRX_REG_OFFSET) &= (~(S
;     | PIFFRX_RXFFIL_BITS << SPIFFRX_RXFFIL_SHIFT));                          
;  87 |             *((SPI_obj->spi_base_address) + SPIFFRX_REG_OFFSET) |= ((MW
;     | _SPI_FIFOINTERRUPTLEVEL_RX & SPIFFRX_RXFFIL_BITS) << SPIFFRX_RXFFIL_SHI
;     | FT);                                                                   
;  88 |             *((SPI_obj->spi_base_address) + SPIFFRX_REG_OFFSET) |= (SPI
;     | FFRX_RXFFINTCLR_BITS << SPIFFRX_RXFFINTCLR_SHIFT);                     
;  89 |             *((SPI_obj->spi_base_address) + SPIFFRX_REG_OFFSET) |= ((MW
;     | _SPI_RXINTERRUPTENABLE & SPIFFRX_RXFFIENA_BITS) << SPIFFRX_RXFFIENA_SHI
;     | FT);                                                                   
;  91 |             *((SPI_obj->spi_base_address) + SPICCR_REG_OFFSET) |= (Uint
;     | 16)(SPICCR_SPISWRESET_BITS << SPICCR_SPISWRESET_SHIFT);                
;  92 |             SPI_oneTimeInit[0] = 1;                                    
;  94 | #else //Else of MW_F281X                                               
;----------------------------------------------------------------------
 EDIS
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c28xSPI.c",line 95,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
;  95 | switch(SPIModule)                                                      
;  97 |     case 0: //SPI Module A                                             
;  99 | #ifdef MW_SPI_A                                                        
;----------------------------------------------------------------------
        B         $C$L7,UNC             ; [CPU_ALU] |95| 
        ; branch occurs ; [] |95| 
$C$L1:    
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c28xSPI.c",line 100,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 100 | if (SPI_oneTimeInit[0] == 0)                                           
;----------------------------------------------------------------------
        MOVW      DP,#_SPI_oneTimeInit  ; [CPU_ARAU] 
        MOV       AL,@$BLOCKED(_SPI_oneTimeInit) ; [CPU_ALU] |100| 
        B         $C$L8,NEQ             ; [CPU_ALU] |100| 
        ; branchcc occurs ; [] |100| 
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c28xSPI.c",line 102,column 17,is_stmt,isa 0
;----------------------------------------------------------------------
; 102 | SPI_obj->spi_base_address = (SPI_REG_ADDRESS)&SpiaRegs;                
;----------------------------------------------------------------------
        MOVL      XAR5,*-SP[6]          ; [CPU_ALU] |102| 
        MOVL      XAR4,#_SpiaRegs       ; [CPU_ARAU] |102| 
        MOVL      *+XAR5[0],XAR4        ; [CPU_ALU] |102| 
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c28xSPI.c",line 103,column 17,is_stmt,isa 0
;----------------------------------------------------------------------
; 103 | SPI_obj->spi_clk_mode = 0;                                             
;----------------------------------------------------------------------
        MOVL      XAR4,*-SP[6]          ; [CPU_ALU] |103| 
        MOV       *+XAR4[2],#0          ; [CPU_ALU] |103| 
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c28xSPI.c",line 104,column 17,is_stmt,isa 0
;----------------------------------------------------------------------
; 104 | SPI_obj->charLength = 0;                                               
;----------------------------------------------------------------------
        MOVL      XAR4,*-SP[6]          ; [CPU_ALU] |104| 
        MOV       *+XAR4[3],#0          ; [CPU_ALU] |104| 
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c28xSPI.c",line 105,column 17,is_stmt,isa 0
;----------------------------------------------------------------------
; 105 | SPI_obj->fifoLevel = MW_SPI_A_FIFO_LEVEL;                              
;----------------------------------------------------------------------
        MOVL      XAR4,*-SP[6]          ; [CPU_ALU] |105| 
        MOVB      *+XAR4[4],#16,UNC     ; [CPU_ALU] |105| 
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c28xSPI.c",line 106,column 17,is_stmt,isa 0
;----------------------------------------------------------------------
; 106 | SPI_obj->txInterrupt = MW_SPI_A_TXINTERRUPTENABLE;                     
;----------------------------------------------------------------------
        MOVL      XAR4,*-SP[6]          ; [CPU_ALU] |106| 
        MOV       *+XAR4[5],#0          ; [CPU_ALU] |106| 
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c28xSPI.c",line 107,column 17,is_stmt,isa 0
;----------------------------------------------------------------------
; 107 | if (MW_SPI_A_SUSPENSIONMODE == 0)                                      
; 109 |     priority = 0;                                                      
; 111 | else if (MW_SPI_A_SUSPENSIONMODE == 1)                                 
; 113 |     priority = 2;                                                      
; 115 | else                                                                   
;----------------------------------------------------------------------
        B         $C$L2,UNC             ; [CPU_ALU] |107| 
        ; branch occurs ; [] |107| 
$C$L2:    
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c28xSPI.c",line 117,column 21,is_stmt,isa 0
;----------------------------------------------------------------------
; 117 | priority = 1;                                                          
; 120 | #ifdef MW_SPI_A_ENABLETHREEWIRE                                        
; 121 | #if  MW_SPI_A_ENABLETHREEWIRE == 1                                     
; 122 | #if MW_SPI_A_MODE == 0                                                 
; 123 | Set_GPIOPin(MW_SPI_A_PINVALUE_SIMO, GPIO_MUX_CPU1, MW_SPI_A_PINMUX_SIMO
;     | , GPIO_OUTPUT, GPIO_PULLUP|GPIO_ASYNC);                                
; 124 | #else //MW_SPI_A_MODE 1                                                
; 125 | Set_GPIOPin(MW_SPI_A_PINVALUE_SOMI, GPIO_MUX_CPU1, MW_SPI_A_PINMUX_SOMI
;     | , GPIO_INPUT, GPIO_PULLUP|GPIO_ASYNC);                                 
; 126 | #endif //MW_SPI_A_MODE                                                 
; 127 | #else // MW_SPI_A_ENABLETHREEWIRE 0                                    
; 128 | #if MW_SPI_A_MODE == 0                                                 
;----------------------------------------------------------------------
        MOVB      *-SP[7],#1,UNC        ; [CPU_ALU] |117| 
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c28xSPI.c",line 129,column 17,is_stmt,isa 0
;----------------------------------------------------------------------
; 129 | Set_GPIOPin(MW_SPI_A_PINVALUE_SIMO, GPIO_MUX_CPU1, MW_SPI_A_PINMUX_SIMO
;     | , GPIO_OUTPUT, GPIO_PULLUP|GPIO_ASYNC);                                
;----------------------------------------------------------------------
        MOVB      AL,#16                ; [CPU_ALU] |129| 
        MOVB      XAR4,#1               ; [CPU_ALU] |129| 
        MOVB      XAR5,#1               ; [CPU_ALU] |129| 
        MOVB      AH,#0                 ; [CPU_ALU] |129| 
        SPM       #0                    ; [CPU_ALU] 
        MOVB      *-SP[1],#49,UNC       ; [CPU_ALU] |129| 
$C$DW$16	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$16, DW_AT_low_pc(0x00)
	.dwattr $C$DW$16, DW_AT_name("_Set_GPIOPin")
	.dwattr $C$DW$16, DW_AT_TI_call

        LCR       #_Set_GPIOPin         ; [CPU_ALU] |129| 
        ; call occurs [#_Set_GPIOPin] ; [] |129| 
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c28xSPI.c",line 130,column 17,is_stmt,isa 0
;----------------------------------------------------------------------
; 130 | Set_GPIOPin(MW_SPI_A_PINVALUE_SOMI, GPIO_MUX_CPU1, MW_SPI_A_PINMUX_SOMI
;     | , GPIO_INPUT, GPIO_PULLUP|GPIO_ASYNC);                                 
; 131 | #else //MW_SPI_A_MODE 1                                                
; 132 | Set_GPIOPin(MW_SPI_A_PINVALUE_SIMO, GPIO_MUX_CPU1, MW_SPI_A_PINMUX_SIMO
;     | , GPIO_INPUT, GPIO_PULLUP|GPIO_ASYNC);                                 
; 133 | Set_GPIOPin(MW_SPI_A_PINVALUE_SOMI, GPIO_MUX_CPU1, MW_SPI_A_PINMUX_SOMI
;     | , GPIO_OUTPUT, GPIO_PULLUP|GPIO_ASYNC);                                
; 134 | #endif //MW_SPI_A_MODE                                                 
; 135 | #endif                                                                 
; 136 | #else //MW_SPI_A_ENABLETHREEWIRE not defined                           
; 137 | #if MW_SPI_A_MODE == 0                                                 
; 138 | Set_GPIOPin(MW_SPI_A_PINVALUE_SIMO, GPIO_MUX_CPU1, MW_SPI_A_PINMUX_SIMO
;     | , GPIO_OUTPUT, GPIO_PULLUP|GPIO_ASYNC);                                
; 139 | Set_GPIOPin(MW_SPI_A_PINVALUE_SOMI, GPIO_MUX_CPU1, MW_SPI_A_PINMUX_SOMI
;     | , GPIO_INPUT, GPIO_PULLUP|GPIO_ASYNC);                                 
; 140 | #else //MW_SPI_A_MODE 1                                                
; 141 | Set_GPIOPin(MW_SPI_A_PINVALUE_SIMO, GPIO_MUX_CPU1, MW_SPI_A_PINMUX_SIMO
;     | , GPIO_INPUT, GPIO_PULLUP|GPIO_ASYNC);                                 
; 142 | Set_GPIOPin(MW_SPI_A_PINVALUE_SOMI, GPIO_MUX_CPU1, MW_SPI_A_PINMUX_SOMI
;     | , GPIO_OUTPUT, GPIO_PULLUP|GPIO_ASYNC);                                
; 143 | #endif //MW_SPI_A_MODE                                                 
; 144 | #endif // End of MW_SPI_A_ENABLETHREEWIRE                              
; 146 | #if MW_SPI_A_MODE == 0                                                 
;----------------------------------------------------------------------
        MOVB      *-SP[1],#49,UNC       ; [CPU_ALU] |130| 
        MOVB      AL,#17                ; [CPU_ALU] |130| 
        MOVB      XAR4,#1               ; [CPU_ALU] |130| 
        MOVB      XAR5,#0               ; [CPU_ALU] |130| 
        MOVB      AH,#0                 ; [CPU_ALU] |130| 
$C$DW$17	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$17, DW_AT_low_pc(0x00)
	.dwattr $C$DW$17, DW_AT_name("_Set_GPIOPin")
	.dwattr $C$DW$17, DW_AT_TI_call

        LCR       #_Set_GPIOPin         ; [CPU_ALU] |130| 
        ; call occurs [#_Set_GPIOPin] ; [] |130| 
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c28xSPI.c",line 147,column 17,is_stmt,isa 0
;----------------------------------------------------------------------
; 147 | Set_GPIOPin(MW_SPI_A_PINVALUE_CLK, GPIO_MUX_CPU1, MW_SPI_A_PINMUX_CLK,
;     | GPIO_OUTPUT, GPIO_PULLUP|GPIO_ASYNC);                                  
; 148 | #else //MW_SPI_A_MODE 1                                                
; 149 | Set_GPIOPin(MW_SPI_A_PINVALUE_CLK, GPIO_MUX_CPU1, MW_SPI_A_PINMUX_CLK,
;     | GPIO_INPUT, GPIO_PULLUP|GPIO_ASYNC);                                   
; 150 | #endif //MW_SPI_A_MODE                                                 
; 152 | #ifdef MW_SPISTE_SELECT_SPI_A                                          
;----------------------------------------------------------------------
        MOVB      *-SP[1],#49,UNC       ; [CPU_ALU] |147| 
        MOVB      AL,#18                ; [CPU_ALU] |147| 
        MOVB      XAR4,#1               ; [CPU_ALU] |147| 
        MOVB      XAR5,#1               ; [CPU_ALU] |147| 
        MOVB      AH,#0                 ; [CPU_ALU] |147| 
$C$DW$18	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$18, DW_AT_low_pc(0x00)
	.dwattr $C$DW$18, DW_AT_name("_Set_GPIOPin")
	.dwattr $C$DW$18, DW_AT_TI_call

        LCR       #_Set_GPIOPin         ; [CPU_ALU] |147| 
        ; call occurs [#_Set_GPIOPin] ; [] |147| 
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c28xSPI.c",line 153,column 17,is_stmt,isa 0
;----------------------------------------------------------------------
; 153 | if (MW_SPI_A_PINVALUE_STE >= 0)                                        
; 155 | #if MW_SPI_A_MODE == 0                                                 
;----------------------------------------------------------------------
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c28xSPI.c",line 156,column 20,is_stmt,isa 0
;----------------------------------------------------------------------
; 156 | Set_GPIOPin(MW_SPI_A_PINVALUE_STE, GPIO_MUX_CPU1, MW_SPI_A_PINMUX_STE,
;     | GPIO_OUTPUT, GPIO_PULLUP|GPIO_ASYNC);                                  
; 157 | #else //MW_SPI_A_MODE 1                                                
; 158 | Set_GPIOPin(MW_SPI_A_PINVALUE_STE, GPIO_MUX_CPU1, MW_SPI_A_PINMUX_STE,
;     | GPIO_INPUT, GPIO_PULLUP|GPIO_ASYNC);                                   
; 159 | #endif //MW_SPI_A_MODE                                                 
; 161 | #endif //End of MW_SPISTE_SELECT_SPI_A                                 
;----------------------------------------------------------------------
        MOVB      *-SP[1],#49,UNC       ; [CPU_ALU] |156| 
        MOVB      AL,#19                ; [CPU_ALU] |156| 
        MOVB      XAR4,#1               ; [CPU_ALU] |156| 
        MOVB      XAR5,#1               ; [CPU_ALU] |156| 
        MOVB      AH,#0                 ; [CPU_ALU] |156| 
$C$DW$19	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$19, DW_AT_low_pc(0x00)
	.dwattr $C$DW$19, DW_AT_name("_Set_GPIOPin")
	.dwattr $C$DW$19, DW_AT_TI_call

        LCR       #_Set_GPIOPin         ; [CPU_ALU] |156| 
        ; call occurs [#_Set_GPIOPin] ; [] |156| 
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c28xSPI.c",line 163,column 17,is_stmt,isa 0
;----------------------------------------------------------------------
; 163 | *((SPI_obj->spi_base_address) + SPICCR_REG_OFFSET) &= (~(SPICCR_SPISWRE
;     | SET_BITS << SPICCR_SPISWRESET_SHIFT));                                 
;----------------------------------------------------------------------
        MOVL      XAR4,*-SP[6]          ; [CPU_ALU] |163| 
        MOVL      XAR4,*+XAR4[0]        ; [CPU_ALU] |163| 
        AND       *+XAR4[0],#0xff7f     ; [CPU_ALU] |163| 
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c28xSPI.c",line 164,column 17,is_stmt,isa 0
;----------------------------------------------------------------------
; 164 | *((SPI_obj->spi_base_address) + SPICCR_REG_OFFSET) |= (Uint16)((MW_SPI_
;     | A_ENABLELOOPBACK & SPICCR_SPILBK_BITS) << SPICCR_SPILBK_SHIFT);        
; 165 |                 #ifdef MW_SPI_A_ENABLEHIGHSPEEDMODE                    
;----------------------------------------------------------------------
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c28xSPI.c",line 166,column 17,is_stmt,isa 0
;----------------------------------------------------------------------
; 166 | *((SPI_obj->spi_base_address) + SPICCR_REG_OFFSET) |= (Uint16)((MW_SPI_
;     | A_ENABLEHIGHSPEEDMODE & SPICCR_HS_MODE_BITS) << SPICCR_HS_MODE_SHIFT); 
; 167 |                 #endif                                                 
;----------------------------------------------------------------------
        MOVL      XAR4,*-SP[6]          ; [CPU_ALU] |166| 
        MOVL      XAR4,*+XAR4[0]        ; [CPU_ALU] |166| 
        OR        *+XAR4[0],#0x0020     ; [CPU_ALU] |166| 
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c28xSPI.c",line 168,column 17,is_stmt,isa 0
;----------------------------------------------------------------------
; 168 | *((SPI_obj->spi_base_address) + SPICTL_REG_OFFSET) |= (Uint16)(((~MW_SP
;     | I_A_MODE) & SPICTL_MASTER_SLAVE_BITS) << SPICTL_MASTER_SLAVE_SHIFT);   
;----------------------------------------------------------------------
        MOVL      XAR4,*-SP[6]          ; [CPU_ALU] |168| 
        MOVL      XAR4,*+XAR4[0]        ; [CPU_ALU] |168| 
        OR        *+XAR4[1],#0x0004     ; [CPU_ALU] |168| 
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c28xSPI.c",line 169,column 17,is_stmt,isa 0
;----------------------------------------------------------------------
; 169 | *((SPI_obj->spi_base_address) + SPICTL_REG_OFFSET) |= (Uint16)((SPICTL_
;     | TALK_BITS) << SPICTL_TALK_SHIFT);                                      
;----------------------------------------------------------------------
        MOVL      XAR4,*-SP[6]          ; [CPU_ALU] |169| 
        MOVL      XAR4,*+XAR4[0]        ; [CPU_ALU] |169| 
        OR        *+XAR4[1],#0x0002     ; [CPU_ALU] |169| 
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c28xSPI.c",line 170,column 17,is_stmt,isa 0
;----------------------------------------------------------------------
; 170 | *((SPI_obj->spi_base_address) + SPIBRR_REG_OFFSET) |= (Uint16)(((Uint16
;     | )MW_SPI_A_BAUDRATEFACTOR & SPIBRR_SPI_BIT_RATE_BITS) << SPIBRR_SPI_BIT_
;     | RATE_SHIFT);                                                           
; 171 | #ifdef MW_SPI_A_ENABLETHREEWIRE                                        
;----------------------------------------------------------------------
        MOVL      XAR4,*-SP[6]          ; [CPU_ALU] |170| 
        MOVL      XAR4,*+XAR4[0]        ; [CPU_ALU] |170| 
        OR        *+XAR4[4],#0x006c     ; [CPU_ALU] |170| 
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c28xSPI.c",line 172,column 17,is_stmt,isa 0
;----------------------------------------------------------------------
; 172 | *((SPI_obj->spi_base_address) + SPIPRI_REG_OFFSET) |= (Uint16)((MW_SPI_
;     | A_ENABLETHREEWIRE & SPIPRI_TRIWIRE_BITS) << SPIPRI_TRIWIRE_SHIFT);     
; 173 | #endif // End of MW_SPI_A_ENABLETHREEWIRE                              
;----------------------------------------------------------------------
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c28xSPI.c",line 174,column 17,is_stmt,isa 0
;----------------------------------------------------------------------
; 174 | *((SPI_obj->spi_base_address) + SPIPRI_REG_OFFSET) |= (Uint16)((priorit
;     | y & SPIPRI_SOFT_FREE_BITS) << SPIPRI_SOFT_FREE_SHIFT);                 
;----------------------------------------------------------------------
        MOVL      XAR4,*-SP[6]          ; [CPU_ALU] |174| 
        MOVB      ACC,#15               ; [CPU_ALU] |174| 
        ADDL      ACC,*+XAR4[0]         ; [CPU_ALU] |174| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |174| 
        MOV       AL,*-SP[7]            ; [CPU_ALU] |174| 
        ANDB      AL,#0x03              ; [CPU_ALU] |174| 
        LSL       AL,4                  ; [CPU_ALU] |174| 
        OR        *+XAR4[0],AL          ; [CPU_ALU] |174| 
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c28xSPI.c",line 175,column 17,is_stmt,isa 0
;----------------------------------------------------------------------
; 175 | *((SPI_obj->spi_base_address) + SPIFFTX_REG_OFFSET) |= ((SPIFFTX_SPIFFE
;     | NA_BITS) << SPIFFTX_SPIFFENA_SHIFT);                                   
;----------------------------------------------------------------------
        MOVL      XAR4,*-SP[6]          ; [CPU_ALU] |175| 
        MOVB      ACC,#10               ; [CPU_ALU] |175| 
        ADDL      ACC,*+XAR4[0]         ; [CPU_ALU] |175| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |175| 
        OR        *+XAR4[0],#0x4000     ; [CPU_ALU] |175| 
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c28xSPI.c",line 176,column 17,is_stmt,isa 0
;----------------------------------------------------------------------
; 176 | *((SPI_obj->spi_base_address) + SPIFFCT_REG_OFFSET) |= ((MW_SPI_A_FIFOT
;     | RANSMITDELAY & SPIFFCT_TXDLY_BITS) << SPIFFCT_TXDLY_SHIFT);            
;----------------------------------------------------------------------
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c28xSPI.c",line 179,column 17,is_stmt,isa 0
;----------------------------------------------------------------------
; 179 | *((SPI_obj->spi_base_address) + SPIFFTX_REG_OFFSET) |= ((MW_SPI_A_FIFOI
;     | NTERRUPTLEVEL_TX & SPIFFTX_TXFFIL_BITS) << SPIFFTX_TXFFIL_SHIFT);      
;----------------------------------------------------------------------
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c28xSPI.c",line 181,column 17,is_stmt,isa 0
;----------------------------------------------------------------------
; 181 | *((SPI_obj->spi_base_address) + SPIFFRX_REG_OFFSET) &= (~(SPIFFRX_RXFFI
;     | L_BITS << SPIFFRX_RXFFIL_SHIFT));                                      
;----------------------------------------------------------------------
        MOVL      XAR4,*-SP[6]          ; [CPU_ALU] |181| 
        MOVB      ACC,#11               ; [CPU_ALU] |181| 
        ADDL      ACC,*+XAR4[0]         ; [CPU_ALU] |181| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |181| 
        AND       *+XAR4[0],#0xffe0     ; [CPU_ALU] |181| 
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c28xSPI.c",line 182,column 17,is_stmt,isa 0
;----------------------------------------------------------------------
; 182 | *((SPI_obj->spi_base_address) + SPIFFRX_REG_OFFSET) |= ((MW_SPI_A_FIFOI
;     | NTERRUPTLEVEL_RX & SPIFFRX_RXFFIL_BITS) << SPIFFRX_RXFFIL_SHIFT);      
;----------------------------------------------------------------------
        MOVL      XAR4,*-SP[6]          ; [CPU_ALU] |182| 
        MOVB      ACC,#11               ; [CPU_ALU] |182| 
        ADDL      ACC,*+XAR4[0]         ; [CPU_ALU] |182| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |182| 
        OR        *+XAR4[0],#0x0010     ; [CPU_ALU] |182| 
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c28xSPI.c",line 183,column 17,is_stmt,isa 0
;----------------------------------------------------------------------
; 183 | *((SPI_obj->spi_base_address) + SPIFFRX_REG_OFFSET) |= (SPIFFRX_RXFFINT
;     | CLR_BITS << SPIFFRX_RXFFINTCLR_SHIFT);                                 
;----------------------------------------------------------------------
        MOVL      XAR4,*-SP[6]          ; [CPU_ALU] |183| 
        MOVB      ACC,#11               ; [CPU_ALU] |183| 
        ADDL      ACC,*+XAR4[0]         ; [CPU_ALU] |183| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |183| 
        OR        *+XAR4[0],#0x0040     ; [CPU_ALU] |183| 
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c28xSPI.c",line 184,column 17,is_stmt,isa 0
;----------------------------------------------------------------------
; 184 | *((SPI_obj->spi_base_address) + SPIFFRX_REG_OFFSET) |= ((MW_SPI_A_RXINT
;     | ERRUPTENABLE & SPIFFRX_RXFFIENA_BITS) << SPIFFRX_RXFFIENA_SHIFT);      
;----------------------------------------------------------------------
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c28xSPI.c",line 186,column 17,is_stmt,isa 0
;----------------------------------------------------------------------
; 186 | *((SPI_obj->spi_base_address) + SPICCR_REG_OFFSET) |= (Uint16)(SPICCR_S
;     | PISWRESET_BITS << SPICCR_SPISWRESET_SHIFT);                            
;----------------------------------------------------------------------
        MOVL      XAR4,*-SP[6]          ; [CPU_ALU] |186| 
        MOVL      XAR4,*+XAR4[0]        ; [CPU_ALU] |186| 
        OR        *+XAR4[0],#0x0080     ; [CPU_ALU] |186| 
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c28xSPI.c",line 187,column 17,is_stmt,isa 0
;----------------------------------------------------------------------
; 187 | SPI_oneTimeInit[0] = 1;                                                
; 189 | #else                                                                  
; 190 | SPI_obj->spi_base_address = (SPI_REG_ADDRESS)0;                        
; 191 | SPI_obj->spi_clk_mode = 0;                                             
; 192 | SPI_obj->charLength = 0;                                               
; 193 | SPI_obj->fifoLevel = 0;                                                
; 194 | SPI_obj->txInterrupt = 0;                                              
; 195 | #endif //End of MW_SPI_A                                               
;----------------------------------------------------------------------
        MOVW      DP,#_SPI_oneTimeInit  ; [CPU_ARAU] 
        MOVB      @$BLOCKED(_SPI_oneTimeInit),#1,UNC ; [CPU_ALU] |187| 
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c28xSPI.c",line 197,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 197 | break;                                                                 
; 199 | case 1: //SPI Module B                                                 
; 201 | #ifdef MW_SPI_B                                                        
; 202 |     if (SPI_oneTimeInit[1] == 0)                                       
; 204 |         SPI_obj->spi_base_address = (SPI_REG_ADDRESS)&SpibRegs;        
; 205 |         SPI_obj->spi_clk_mode = 0;                                     
; 206 |         SPI_obj->charLength = 0;                                       
; 207 |         SPI_obj->fifoLevel = MW_SPI_B_FIFO_LEVEL;                      
; 208 |         SPI_obj->txInterrupt = MW_SPI_B_TXINTERRUPTENABLE;             
; 209 |         if (MW_SPI_B_SUSPENSIONMODE == 0)                              
; 211 |             priority = 0;                                              
; 213 |         else if (MW_SPI_B_SUSPENSIONMODE == 1)                         
; 215 |             priority = 2;                                              
; 217 |         else                                                           
; 219 |             priority = 1;                                              
; 222 | #ifdef MW_SPI_B_ENABLETHREEWIRE                                        
; 223 | #if  MW_SPI_B_ENABLETHREEWIRE == 1                                     
; 224 | #if MW_SPI_B_MODE == 0                                                 
; 225 |         Set_GPIOPin(MW_SPI_B_PINVALUE_SIMO, GPIO_MUX_CPU1, MW_SPI_B_PIN
;     | MUX_SIMO, GPIO_OUTPUT, GPIO_PULLUP|GPIO_ASYNC);                        
; 226 | #else //MW_SPI_B_MODE 1                                                
; 227 |        Set_GPIOPin(MW_SPI_B_PINVALUE_SOMI, GPIO_MUX_CPU1, MW_SPI_B_PINM
;     | UX_SOMI, GPIO_INPUT, GPIO_PULLUP|GPIO_ASYNC);                          
; 228 | #endif //MW_SPI_B_MODE                                                 
; 229 | #else // MW_SPI_B_ENABLETHREEWIRE 0                                    
; 230 | #if MW_SPI_B_MODE == 0                                                 
; 231 |         Set_GPIOPin(MW_SPI_B_PINVALUE_SIMO, GPIO_MUX_CPU1, MW_SPI_B_PIN
;     | MUX_SIMO, GPIO_OUTPUT, GPIO_PULLUP|GPIO_ASYNC);                        
; 232 |         Set_GPIOPin(MW_SPI_B_PINVALUE_SOMI, GPIO_MUX_CPU1, MW_SPI_B_PIN
;     | MUX_SOMI, GPIO_INPUT, GPIO_PULLUP|GPIO_ASYNC);                         
; 233 | #else //MW_SPI_B_MODE 1                                                
; 234 |         Set_GPIOPin(MW_SPI_B_PINVALUE_SIMO, GPIO_MUX_CPU1, MW_SPI_B_PIN
;     | MUX_SIMO, GPIO_INPUT, GPIO_PULLUP|GPIO_ASYNC);                         
; 235 |         Set_GPIOPin(MW_SPI_B_PINVALUE_SOMI, GPIO_MUX_CPU1, MW_SPI_B_PIN
;     | MUX_SOMI, GPIO_OUTPUT, GPIO_PULLUP|GPIO_ASYNC);                        
; 236 | #endif //MW_SPI_B_MODE                                                 
; 237 | #endif                                                                 
; 238 | #else //MW_SPI_B_ENABLETHREEWIRE not defined                           
; 239 | #if MW_SPI_B_MODE == 0                                                 
; 240 |         Set_GPIOPin(MW_SPI_B_PINVALUE_SIMO, GPIO_MUX_CPU1, MW_SPI_B_PIN
;     | MUX_SIMO, GPIO_OUTPUT, GPIO_PULLUP|GPIO_ASYNC);                        
; 241 |         Set_GPIOPin(MW_SPI_B_PINVALUE_SOMI, GPIO_MUX_CPU1, MW_SPI_B_PIN
;     | MUX_SOMI, GPIO_INPUT, GPIO_PULLUP|GPIO_ASYNC);                         
; 242 | #else //MW_SPI_B_MODE 1                                                
; 243 |         Set_GPIOPin(MW_SPI_B_PINVALUE_SIMO, GPIO_MUX_CPU1, MW_SPI_B_PIN
;     | MUX_SIMO, GPIO_INPUT, GPIO_PULLUP|GPIO_ASYNC);                         
; 244 |         Set_GPIOPin(MW_SPI_B_PINVALUE_SOMI, GPIO_MUX_CPU1, MW_SPI_B_PIN
;     | MUX_SOMI, GPIO_OUTPUT, GPIO_PULLUP|GPIO_ASYNC);                        
; 245 | #endif //MW_SPI_B_MODE                                                 
; 246 | #endif // End of MW_SPI_B_ENABLETHREEWIRE                              
; 248 | #if MW_SPI_B_MODE == 0                                                 
; 249 |         Set_GPIOPin(MW_SPI_B_PINVALUE_CLK, GPIO_MUX_CPU1, MW_SPI_B_PINM
;     | UX_CLK, GPIO_OUTPUT, GPIO_PULLUP|GPIO_ASYNC);                          
; 250 | #else //MW_SPI_B_MODE 1                                                
; 251 |         Set_GPIOPin(MW_SPI_B_PINVALUE_CLK, GPIO_MUX_CPU1, MW_SPI_B_PINM
;     | UX_CLK, GPIO_INPUT, GPIO_PULLUP|GPIO_ASYNC);                           
; 252 | #endif //MW_SPI_B_MODE                                                 
; 254 | #ifdef MW_SPISTE_SELECT_SPI_B                                          
; 255 |         if (MW_SPI_B_PINVALUE_STE >= 0)                                
; 257 | #if MW_SPI_B_MODE == 0                                                 
; 258 |            Set_GPIOPin(MW_SPI_B_PINVALUE_STE, GPIO_MUX_CPU1, MW_SPI_B_P
;     | INMUX_STE, GPIO_OUTPUT, GPIO_PULLUP|GPIO_ASYNC);                       
; 259 | #else //MW_SPI_B_MODE 1                                                
; 260 |            Set_GPIOPin(MW_SPI_B_PINVALUE_STE, GPIO_MUX_CPU1, MW_SPI_B_P
;     | INMUX_STE, GPIO_INPUT, GPIO_PULLUP|GPIO_ASYNC);                        
; 261 | #endif //MW_SPI_B_MODE                                                 
; 263 | #endif //End of MW_SPISTE_SELECT_SPI_B                                 
; 265 |         *((SPI_obj->spi_base_address) + SPICCR_REG_OFFSET) &= (~(SPICCR
;     | _SPISWRESET_BITS << SPICCR_SPISWRESET_SHIFT));                         
; 266 |         *((SPI_obj->spi_base_address) + SPICCR_REG_OFFSET) |= (Uint16)(
;     | (MW_SPI_B_ENABLELOOPBACK & SPICCR_SPILBK_BITS) << SPICCR_SPILBK_SHIFT);
; 267 |                         #ifdef MW_SPI_B_ENABLEHIGHSPEEDMODE            
; 268 |         *((SPI_obj->spi_base_address) + SPICCR_REG_OFFSET) |= (Uint16)(
;     | (MW_SPI_B_ENABLEHIGHSPEEDMODE & SPICCR_HS_MODE_BITS) << SPICCR_HS_MODE_
;     | SHIFT);                                                                
; 269 |                         #endif                                         
; 270 |         *((SPI_obj->spi_base_address) + SPICTL_REG_OFFSET) |= (Uint16)(
;     | ((~MW_SPI_B_MODE) & SPICTL_MASTER_SLAVE_BITS) << SPICTL_MASTER_SLAVE_SH
;     | IFT);                                                                  
; 271 |         *((SPI_obj->spi_base_address) + SPICTL_REG_OFFSET) |= (Uint16)(
;     | (SPICTL_TALK_BITS) << SPICTL_TALK_SHIFT);                              
; 272 |         *((SPI_obj->spi_base_address) + SPIBRR_REG_OFFSET) |= (Uint16)(
;     | ((Uint16)MW_SPI_B_BAUDRATEFACTOR & SPIBRR_SPI_BIT_RATE_BITS) << SPIBRR_
;     | SPI_BIT_RATE_SHIFT);                                                   
; 273 | #ifdef MW_SPI_B_ENABLETHREEWIRE                                        
; 274 |         *((SPI_obj->spi_base_address) + SPIPRI_REG_OFFSET) |= (Uint16)(
;     | (MW_SPI_B_ENABLETHREEWIRE & SPIPRI_TRIWIRE_BITS) << SPIPRI_TRIWIRE_SHIF
;     | T);                                                                    
; 275 | #endif // End of MW_SPI_B_ENABLETHREEWIRE                              
; 276 |         *((SPI_obj->spi_base_address) + SPIPRI_REG_OFFSET) |= (Uint16)(
;     | (priority & SPIPRI_SOFT_FREE_BITS) << SPIPRI_SOFT_FREE_SHIFT);         
; 277 |         *((SPI_obj->spi_base_address) + SPIFFTX_REG_OFFSET) |= ((SPIFFT
;     | X_SPIFFENA_BITS) << SPIFFTX_SPIFFENA_SHIFT);                           
; 278 |         *((SPI_obj->spi_base_address) + SPIFFCT_REG_OFFSET) |= ((MW_SPI
;     | _B_FIFOTRANSMITDELAY & SPIFFCT_TXDLY_BITS) << SPIFFCT_TXDLY_SHIFT);    
; 281 |         *((SPI_obj->spi_base_address) + SPIFFTX_REG_OFFSET) |= ((MW_SPI
;     | _B_FIFOINTERRUPTLEVEL_TX & SPIFFTX_TXFFIL_BITS) << SPIFFTX_TXFFIL_SHIFT
;     | );                                                                     
; 283 |         *((SPI_obj->spi_base_address) + SPIFFRX_REG_OFFSET) &= (~(SPIFF
;     | RX_RXFFIL_BITS << SPIFFRX_RXFFIL_SHIFT));                              
; 284 |         *((SPI_obj->spi_base_address) + SPIFFRX_REG_OFFSET) |= ((MW_SPI
;     | _B_FIFOINTERRUPTLEVEL_RX & SPIFFRX_RXFFIL_BITS) << SPIFFRX_RXFFIL_SHIFT
;     | );                                                                     
; 285 |         *((SPI_obj->spi_base_address) + SPIFFRX_REG_OFFSET) |= (SPIFFRX
;     | _RXFFINTCLR_BITS << SPIFFRX_RXFFINTCLR_SHIFT);                         
; 286 |         *((SPI_obj->spi_base_address) + SPIFFRX_REG_OFFSET) |= ((MW_SPI
;     | _B_RXINTERRUPTENABLE & SPIFFRX_RXFFIENA_BITS) << SPIFFRX_RXFFIENA_SHIFT
;     | );                                                                     
; 288 |         *((SPI_obj->spi_base_address) + SPICCR_REG_OFFSET) |= (Uint16)(
;     | SPICCR_SPISWRESET_BITS << SPICCR_SPISWRESET_SHIFT);                    
; 289 |         SPI_oneTimeInit[1] = 1;                                        
; 291 | #else                                                                  
;----------------------------------------------------------------------
        B         $C$L8,UNC             ; [CPU_ALU] |197| 
        ; branch occurs ; [] |197| 
$C$L3:    
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c28xSPI.c",line 292,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 292 | SPI_obj->spi_base_address = (SPI_REG_ADDRESS)0;                        
;----------------------------------------------------------------------
        MOVB      ACC,#0                ; [CPU_ALU] |292| 
        MOVL      *+XAR4[0],ACC         ; [CPU_ALU] |292| 
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c28xSPI.c",line 293,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 293 | SPI_obj->spi_clk_mode = 0;                                             
;----------------------------------------------------------------------
        MOVL      XAR4,*-SP[6]          ; [CPU_ALU] |293| 
        MOV       *+XAR4[2],#0          ; [CPU_ALU] |293| 
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c28xSPI.c",line 294,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 294 | SPI_obj->charLength = 0;                                               
;----------------------------------------------------------------------
        MOVL      XAR4,*-SP[6]          ; [CPU_ALU] |294| 
        MOV       *+XAR4[3],#0          ; [CPU_ALU] |294| 
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c28xSPI.c",line 295,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 295 | SPI_obj->fifoLevel = 0;                                                
;----------------------------------------------------------------------
        MOVL      XAR4,*-SP[6]          ; [CPU_ALU] |295| 
        MOV       *+XAR4[4],#0          ; [CPU_ALU] |295| 
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c28xSPI.c",line 296,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 296 | SPI_obj->txInterrupt = 0;                                              
; 297 | #endif // End of MW_SPI_B                                              
;----------------------------------------------------------------------
        MOVL      XAR4,*-SP[6]          ; [CPU_ALU] |296| 
        MOV       *+XAR4[5],#0          ; [CPU_ALU] |296| 
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c28xSPI.c",line 299,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 299 | break;                                                                 
; 300 | case 2: //SPI Module C                                                 
; 302 | #ifdef MW_SPI_C                                                        
; 303 |     if (SPI_oneTimeInit[2] == 0)                                       
; 305 |         SPI_obj->spi_base_address = (SPI_REG_ADDRESS)&SpicRegs;        
; 306 |         SPI_obj->spi_clk_mode = 0;                                     
; 307 |         SPI_obj->charLength = 0;                                       
; 308 |         SPI_obj->fifoLevel = MW_SPI_C_FIFO_LEVEL;                      
; 309 |         SPI_obj->txInterrupt = MW_SPI_C_TXINTERRUPTENABLE;             
; 310 |         if (MW_SPI_C_SUSPENSIONMODE == 0)                              
; 312 |             priority = 0;                                              
; 314 |         else if (MW_SPI_C_SUSPENSIONMODE == 1)                         
; 316 |             priority = 2;                                              
; 318 |         else                                                           
; 320 |             priority = 1;                                              
; 323 | #ifdef MW_SPI_C_ENABLETHREEWIRE                                        
; 324 | #if  MW_SPI_C_ENABLETHREEWIRE == 1                                     
; 325 | #if MW_SPI_C_MODE == 0                                                 
; 326 |         Set_GPIOPin(MW_SPI_C_PINVALUE_SIMO, GPIO_MUX_CPU1, MW_SPI_C_PIN
;     | MUX_SIMO, GPIO_OUTPUT, GPIO_PULLUP|GPIO_ASYNC);                        
; 327 | #else //MW_SPI_C_MODE 1                                                
; 328 |        Set_GPIOPin(MW_SPI_C_PINVALUE_SOMI, GPIO_MUX_CPU1, MW_SPI_C_PINM
;     | UX_SOMI, GPIO_INPUT, GPIO_PULLUP|GPIO_ASYNC);                          
; 329 | #endif //MW_SPI_C_MODE                                                 
; 330 | #else // MW_SPI_C_ENABLETHREEWIRE 0                                    
; 331 | #if MW_SPI_C_MODE == 0                                                 
; 332 |         Set_GPIOPin(MW_SPI_C_PINVALUE_SIMO, GPIO_MUX_CPU1, MW_SPI_C_PIN
;     | MUX_SIMO, GPIO_OUTPUT, GPIO_PULLUP|GPIO_ASYNC);                        
; 333 |         Set_GPIOPin(MW_SPI_C_PINVALUE_SOMI, GPIO_MUX_CPU1, MW_SPI_C_PIN
;     | MUX_SOMI, GPIO_INPUT, GPIO_PULLUP|GPIO_ASYNC);                         
; 334 | #else //MW_SPI_C_MODE 1                                                
; 335 |         Set_GPIOPin(MW_SPI_C_PINVALUE_SIMO, GPIO_MUX_CPU1, MW_SPI_C_PIN
;     | MUX_SIMO, GPIO_INPUT, GPIO_PULLUP|GPIO_ASYNC);                         
; 336 |         Set_GPIOPin(MW_SPI_C_PINVALUE_SOMI, GPIO_MUX_CPU1, MW_SPI_C_PIN
;     | MUX_SOMI, GPIO_OUTPUT, GPIO_PULLUP|GPIO_ASYNC);                        
; 337 | #endif //MW_SPI_C_MODE                                                 
; 338 | #endif                                                                 
; 339 | #else //MW_SPI_C_ENABLETHREEWIRE not defined                           
; 340 | #if MW_SPI_C_MODE == 0                                                 
; 341 |         Set_GPIOPin(MW_SPI_C_PINVALUE_SIMO, GPIO_MUX_CPU1, MW_SPI_C_PIN
;     | MUX_SIMO, GPIO_OUTPUT, GPIO_PULLUP|GPIO_ASYNC);                        
; 342 |         Set_GPIOPin(MW_SPI_C_PINVALUE_SOMI, GPIO_MUX_CPU1, MW_SPI_C_PIN
;     | MUX_SOMI, GPIO_INPUT, GPIO_PULLUP|GPIO_ASYNC);                         
; 343 | #else //MW_SPI_C_MODE 1                                                
; 344 |         Set_GPIOPin(MW_SPI_C_PINVALUE_SIMO, GPIO_MUX_CPU1, MW_SPI_C_PIN
;     | MUX_SIMO, GPIO_INPUT, GPIO_PULLUP|GPIO_ASYNC);                         
; 345 |         Set_GPIOPin(MW_SPI_C_PINVALUE_SOMI, GPIO_MUX_CPU1, MW_SPI_C_PIN
;     | MUX_SOMI, GPIO_OUTPUT, GPIO_PULLUP|GPIO_ASYNC);                        
; 346 | #endif //MW_SPI_C_MODE                                                 
; 347 | #endif // End of MW_SPI_C_ENABLETHREEWIRE                              
; 349 | #if MW_SPI_C_MODE == 0                                                 
; 350 |         Set_GPIOPin(MW_SPI_C_PINVALUE_CLK, GPIO_MUX_CPU1, MW_SPI_C_PINM
;     | UX_CLK, GPIO_OUTPUT, GPIO_PULLUP|GPIO_ASYNC);                          
; 351 | #else //MW_SPI_C_MODE 1                                                
; 352 |         Set_GPIOPin(MW_SPI_C_PINVALUE_CLK, GPIO_MUX_CPU1, MW_SPI_C_PINM
;     | UX_CLK, GPIO_INPUT, GPIO_PULLUP|GPIO_ASYNC);                           
; 353 | #endif //MW_SPI_C_MODE                                                 
; 355 | #ifdef MW_SPISTE_SELECT_SPI_C                                          
; 356 |         if (MW_SPI_C_PINVALUE_STE >= 0)                                
; 358 | #if MW_SPI_C_MODE == 0                                                 
; 359 |            Set_GPIOPin(MW_SPI_C_PINVALUE_STE, GPIO_MUX_CPU1, MW_SPI_C_P
;     | INMUX_STE, GPIO_OUTPUT, GPIO_PULLUP|GPIO_ASYNC);                       
; 360 | #else //MW_SPI_C_MODE 1                                                
; 361 |            Set_GPIOPin(MW_SPI_C_PINVALUE_STE, GPIO_MUX_CPU1, MW_SPI_C_P
;     | INMUX_STE, GPIO_INPUT, GPIO_PULLUP|GPIO_ASYNC);                        
; 362 | #endif //MW_SPI_C_MODE                                                 
; 364 | #endif //End of MW_SPISTE_SELECT_SPI_C                                 
; 366 |         *((SPI_obj->spi_base_address) + SPICCR_REG_OFFSET) &= (~(SPICCR
;     | _SPISWRESET_BITS << SPICCR_SPISWRESET_SHIFT));                         
; 367 |         *((SPI_obj->spi_base_address) + SPICCR_REG_OFFSET) |= (Uint16)(
;     | (MW_SPI_C_ENABLELOOPBACK & SPICCR_SPILBK_BITS) << SPICCR_SPILBK_SHIFT);
; 368 |                         #ifdef MW_SPI_C_ENABLEHIGHSPEEDMODE            
; 369 |         *((SPI_obj->spi_base_address) + SPICCR_REG_OFFSET) |= (Uint16)(
;     | (MW_SPI_C_ENABLEHIGHSPEEDMODE & SPICCR_HS_MODE_BITS) << SPICCR_HS_MODE_
;     | SHIFT);                                                                
; 370 |                         #endif                                         
; 371 |         *((SPI_obj->spi_base_address) + SPICTL_REG_OFFSET) |= (Uint16)(
;     | ((~MW_SPI_C_MODE) & SPICTL_MASTER_SLAVE_BITS) << SPICTL_MASTER_SLAVE_SH
;     | IFT);                                                                  
; 372 |         *((SPI_obj->spi_base_address) + SPICTL_REG_OFFSET) |= (Uint16)(
;     | (SPICTL_TALK_BITS) << SPICTL_TALK_SHIFT);                              
; 373 |         *((SPI_obj->spi_base_address) + SPIBRR_REG_OFFSET) |= (Uint16)(
;     | ((Uint16)MW_SPI_C_BAUDRATEFACTOR & SPIBRR_SPI_BIT_RATE_BITS) << SPIBRR_
;     | SPI_BIT_RATE_SHIFT);                                                   
; 374 | #ifdef MW_SPI_C_ENABLETHREEWIRE                                        
; 375 |         *((SPI_obj->spi_base_address) + SPIPRI_REG_OFFSET) |= (Uint16)(
;     | (MW_SPI_C_ENABLETHREEWIRE & SPIPRI_TRIWIRE_BITS) << SPIPRI_TRIWIRE_SHIF
;     | T);                                                                    
; 376 | #endif // End of MW_SPI_C_ENABLETHREEWIRE                              
; 377 |         *((SPI_obj->spi_base_address) + SPIPRI_REG_OFFSET) |= (Uint16)(
;     | (priority & SPIPRI_SOFT_FREE_BITS) << SPIPRI_SOFT_FREE_SHIFT);         
; 378 |         *((SPI_obj->spi_base_address) + SPIFFTX_REG_OFFSET) |= ((SPIFFT
;     | X_SPIFFENA_BITS) << SPIFFTX_SPIFFENA_SHIFT);                           
; 379 |         *((SPI_obj->spi_base_address) + SPIFFCT_REG_OFFSET) |= ((MW_SPI
;     | _C_FIFOTRANSMITDELAY & SPIFFCT_TXDLY_BITS) << SPIFFCT_TXDLY_SHIFT);    
; 382 |         *((SPI_obj->spi_base_address) + SPIFFTX_REG_OFFSET) |= ((MW_SPI
;     | _C_FIFOINTERRUPTLEVEL_TX & SPIFFTX_TXFFIL_BITS) << SPIFFTX_TXFFIL_SHIFT
;     | );                                                                     
; 384 |         *((SPI_obj->spi_base_address) + SPIFFRX_REG_OFFSET) &= (~(SPIFF
;     | RX_RXFFIL_BITS << SPIFFRX_RXFFIL_SHIFT));                              
; 385 |         *((SPI_obj->spi_base_address) + SPIFFRX_REG_OFFSET) |= ((MW_SPI
;     | _C_FIFOINTERRUPTLEVEL_RX & SPIFFRX_RXFFIL_BITS) << SPIFFRX_RXFFIL_SHIFT
;     | );                                                                     
; 386 |         *((SPI_obj->spi_base_address) + SPIFFRX_REG_OFFSET) |= (SPIFFRX
;     | _RXFFINTCLR_BITS << SPIFFRX_RXFFINTCLR_SHIFT);                         
; 387 |         *((SPI_obj->spi_base_address) + SPIFFRX_REG_OFFSET) |= ((MW_SPI
;     | _C_RXINTERRUPTENABLE & SPIFFRX_RXFFIENA_BITS) << SPIFFRX_RXFFIENA_SHIFT
;     | );                                                                     
; 389 |         *((SPI_obj->spi_base_address) + SPICCR_REG_OFFSET) |= (Uint16)(
;     | SPICCR_SPISWRESET_BITS << SPICCR_SPISWRESET_SHIFT);                    
; 390 |         SPI_oneTimeInit[2] = 1;                                        
; 392 | #else                                                                  
;----------------------------------------------------------------------
        B         $C$L8,UNC             ; [CPU_ALU] |299| 
        ; branch occurs ; [] |299| 
$C$L4:    
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c28xSPI.c",line 393,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 393 | SPI_obj->spi_base_address = (SPI_REG_ADDRESS)0;                        
;----------------------------------------------------------------------
        MOVB      ACC,#0                ; [CPU_ALU] |393| 
        MOVL      *+XAR4[0],ACC         ; [CPU_ALU] |393| 
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c28xSPI.c",line 394,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 394 | SPI_obj->spi_clk_mode = 0;                                             
;----------------------------------------------------------------------
        MOVL      XAR4,*-SP[6]          ; [CPU_ALU] |394| 
        MOV       *+XAR4[2],#0          ; [CPU_ALU] |394| 
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c28xSPI.c",line 395,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 395 | SPI_obj->charLength = 0;                                               
;----------------------------------------------------------------------
        MOVL      XAR4,*-SP[6]          ; [CPU_ALU] |395| 
        MOV       *+XAR4[3],#0          ; [CPU_ALU] |395| 
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c28xSPI.c",line 396,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 396 | SPI_obj->fifoLevel = 0;                                                
;----------------------------------------------------------------------
        MOVL      XAR4,*-SP[6]          ; [CPU_ALU] |396| 
        MOV       *+XAR4[4],#0          ; [CPU_ALU] |396| 
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c28xSPI.c",line 397,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 397 | SPI_obj->txInterrupt = 0;                                              
; 398 | #endif // End of MW_SPI_C                                              
;----------------------------------------------------------------------
        MOVL      XAR4,*-SP[6]          ; [CPU_ALU] |397| 
        MOV       *+XAR4[5],#0          ; [CPU_ALU] |397| 
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c28xSPI.c",line 400,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 400 | break;                                                                 
; 401 | case 3: //SPI Module D                                                 
; 403 | #ifdef MW_SPI_D                                                        
; 404 |     if (SPI_oneTimeInit[3] == 0)                                       
; 406 |         SPI_obj->spi_base_address = (SPI_REG_ADDRESS)&SpidRegs;        
; 407 |         SPI_obj->spi_clk_mode = 0;                                     
; 408 |         SPI_obj->charLength = 0;                                       
; 409 |         SPI_obj->fifoLevel = MW_SPI_D_FIFO_LEVEL;                      
; 410 |         SPI_obj->txInterrupt = MW_SPI_D_TXINTERRUPTENABLE;             
; 412 |         if (MW_SPI_D_SUSPENSIONMODE == 0)                              
; 414 |             priority = 0;                                              
; 416 |         else if (MW_SPI_D_SUSPENSIONMODE == 1)                         
; 418 |             priority = 2;                                              
; 420 |         else                                                           
; 422 |             priority = 1;                                              
; 425 | #ifdef MW_SPI_D_ENABLETHREEWIRE                                        
; 426 | #if  MW_SPI_D_ENABLETHREEWIRE == 1                                     
; 427 | #if MW_SPI_D_MODE == 0                                                 
; 428 |         Set_GPIOPin(MW_SPI_D_PINVALUE_SIMO, GPIO_MUX_CPU1, MW_SPI_D_PIN
;     | MUX_SIMO, GPIO_OUTPUT, GPIO_PULLUP|GPIO_ASYNC);                        
; 429 | #else //MW_SPI_D_MODE 1                                                
; 430 |        Set_GPIOPin(MW_SPI_D_PINVALUE_SOMI, GPIO_MUX_CPU1, MW_SPI_D_PINM
;     | UX_SOMI, GPIO_INPUT, GPIO_PULLUP|GPIO_ASYNC);                          
; 431 | #endif //MW_SPI_D_MODE                                                 
; 432 | #else // MW_SPI_D_ENABLETHREEWIRE 0                                    
; 433 | #if MW_SPI_D_MODE == 0                                                 
; 434 |         Set_GPIOPin(MW_SPI_D_PINVALUE_SIMO, GPIO_MUX_CPU1, MW_SPI_D_PIN
;     | MUX_SIMO, GPIO_OUTPUT, GPIO_PULLUP|GPIO_ASYNC);                        
; 435 |         Set_GPIOPin(MW_SPI_D_PINVALUE_SOMI, GPIO_MUX_CPU1, MW_SPI_D_PIN
;     | MUX_SOMI, GPIO_INPUT, GPIO_PULLUP|GPIO_ASYNC);                         
; 436 | #else //MW_SPI_D_MODE 1                                                
; 437 |         Set_GPIOPin(MW_SPI_D_PINVALUE_SIMO, GPIO_MUX_CPU1, MW_SPI_D_PIN
;     | MUX_SIMO, GPIO_INPUT, GPIO_PULLUP|GPIO_ASYNC);                         
; 438 |         Set_GPIOPin(MW_SPI_D_PINVALUE_SOMI, GPIO_MUX_CPU1, MW_SPI_D_PIN
;     | MUX_SOMI, GPIO_OUTPUT, GPIO_PULLUP|GPIO_ASYNC);                        
; 439 | #endif //MW_SPI_D_MODE                                                 
; 440 | #endif                                                                 
; 441 | #else //MW_SPI_D_ENABLETHREEWIRE not defined                           
; 442 | #if MW_SPI_D_MODE == 0                                                 
; 443 |         Set_GPIOPin(MW_SPI_D_PINVALUE_SIMO, GPIO_MUX_CPU1, MW_SPI_D_PIN
;     | MUX_SIMO, GPIO_OUTPUT, GPIO_PULLUP|GPIO_ASYNC);                        
; 444 |         Set_GPIOPin(MW_SPI_D_PINVALUE_SOMI, GPIO_MUX_CPU1, MW_SPI_D_PIN
;     | MUX_SOMI, GPIO_INPUT, GPIO_PULLUP|GPIO_ASYNC);                         
; 445 | #else //MW_SPI_D_MODE 1                                                
; 446 |         Set_GPIOPin(MW_SPI_D_PINVALUE_SIMO, GPIO_MUX_CPU1, MW_SPI_D_PIN
;     | MUX_SIMO, GPIO_INPUT, GPIO_PULLUP|GPIO_ASYNC);                         
; 447 |         Set_GPIOPin(MW_SPI_D_PINVALUE_SOMI, GPIO_MUX_CPU1, MW_SPI_D_PIN
;     | MUX_SOMI, GPIO_OUTPUT, GPIO_PULLUP|GPIO_ASYNC);                        
; 448 | #endif //MW_SPI_D_MODE                                                 
; 449 | #endif // End of MW_SPI_D_ENABLETHREEWIRE                              
; 451 | #if MW_SPI_D_MODE == 0                                                 
; 452 |         Set_GPIOPin(MW_SPI_D_PINVALUE_CLK, GPIO_MUX_CPU1, MW_SPI_D_PINM
;     | UX_CLK, GPIO_OUTPUT, GPIO_PULLUP|GPIO_ASYNC);                          
; 453 | #else //MW_SPI_D_MODE 1                                                
; 454 |         Set_GPIOPin(MW_SPI_D_PINVALUE_CLK, GPIO_MUX_CPU1, MW_SPI_D_PINM
;     | UX_CLK, GPIO_INPUT, GPIO_PULLUP|GPIO_ASYNC);                           
; 455 | #endif //MW_SPI_D_MODE                                                 
; 457 | #ifdef MW_SPISTE_SELECT_SPI_D                                          
; 458 |         if (MW_SPI_D_PINVALUE_STE >= 0)                                
; 460 | #if MW_SPI_D_MODE == 0                                                 
; 461 |            Set_GPIOPin(MW_SPI_D_PINVALUE_STE, GPIO_MUX_CPU1, MW_SPI_D_P
;     | INMUX_STE, GPIO_OUTPUT, GPIO_PULLUP|GPIO_ASYNC);                       
; 462 | #else //MW_SPI_D_MODE 1                                                
; 463 |            Set_GPIOPin(MW_SPI_D_PINVALUE_STE, GPIO_MUX_CPU1, MW_SPI_D_P
;     | INMUX_STE, GPIO_INPUT, GPIO_PULLUP|GPIO_ASYNC);                        
; 464 | #endif //MW_SPI_D_MODE                                                 
; 466 | #endif //End of MW_SPISTE_SELECT_SPI_D                                 
; 468 |         *((SPI_obj->spi_base_address) + SPICCR_REG_OFFSET) &= (~(SPICCR
;     | _SPISWRESET_BITS << SPICCR_SPISWRESET_SHIFT));                         
; 469 |         *((SPI_obj->spi_base_address) + SPICCR_REG_OFFSET) |= (Uint16)(
;     | (MW_SPI_D_ENABLELOOPBACK & SPICCR_SPILBK_BITS) << SPICCR_SPILBK_SHIFT);
; 470 |                         #ifdef MW_SPI_D_ENABLEHIGHSPEEDMODE            
; 471 |         *((SPI_obj->spi_base_address) + SPICCR_REG_OFFSET) |= (Uint16)(
;     | (MW_SPI_D_ENABLEHIGHSPEEDMODE & SPICCR_HS_MODE_BITS) << SPICCR_HS_MODE_
;     | SHIFT);                                                                
; 472 |                         #endif                                         
; 473 |         *((SPI_obj->spi_base_address) + SPICTL_REG_OFFSET) |= (Uint16)(
;     | ((~MW_SPI_D_MODE) & SPICTL_MASTER_SLAVE_BITS) << SPICTL_MASTER_SLAVE_SH
;     | IFT);                                                                  
; 474 |         *((SPI_obj->spi_base_address) + SPICTL_REG_OFFSET) |= (Uint16)(
;     | (SPICTL_TALK_BITS) << SPICTL_TALK_SHIFT);                              
; 475 |         *((SPI_obj->spi_base_address) + SPIBRR_REG_OFFSET) |= (Uint16)(
;     | ((Uint16)MW_SPI_D_BAUDRATEFACTOR & SPIBRR_SPI_BIT_RATE_BITS) << SPIBRR_
;     | SPI_BIT_RATE_SHIFT);                                                   
; 476 | #ifdef MW_SPI_D_ENABLETHREEWIRE                                        
; 477 |         *((SPI_obj->spi_base_address) + SPIPRI_REG_OFFSET) |= (Uint16)(
;     | (MW_SPI_D_ENABLETHREEWIRE & SPIPRI_TRIWIRE_BITS) << SPIPRI_TRIWIRE_SHIF
;     | T);                                                                    
; 478 | #endif // End of MW_SPI_D_ENABLETHREEWIRE                              
; 479 |         *((SPI_obj->spi_base_address) + SPIPRI_REG_OFFSET) |= (Uint16)(
;     | (priority & SPIPRI_SOFT_FREE_BITS) << SPIPRI_SOFT_FREE_SHIFT);         
; 480 |         *((SPI_obj->spi_base_address) + SPIFFTX_REG_OFFSET) |= ((SPIFFT
;     | X_SPIFFENA_BITS) << SPIFFTX_SPIFFENA_SHIFT);                           
; 481 |         *((SPI_obj->spi_base_address) + SPIFFCT_REG_OFFSET) |= ((MW_SPI
;     | _D_FIFOTRANSMITDELAY & SPIFFCT_TXDLY_BITS) << SPIFFCT_TXDLY_SHIFT);    
; 484 |         *((SPI_obj->spi_base_address) + SPIFFTX_REG_OFFSET) |= ((MW_SPI
;     | _D_FIFOINTERRUPTLEVEL_TX & SPIFFTX_TXFFIL_BITS) << SPIFFTX_TXFFIL_SHIFT
;     | );                                                                     
; 486 |         *((SPI_obj->spi_base_address) + SPIFFRX_REG_OFFSET) &= (~(SPIFF
;     | RX_RXFFIL_BITS << SPIFFRX_RXFFIL_SHIFT));                              
; 487 |         *((SPI_obj->spi_base_address) + SPIFFRX_REG_OFFSET) |= ((MW_SPI
;     | _D_FIFOINTERRUPTLEVEL_RX & SPIFFRX_RXFFIL_BITS) << SPIFFRX_RXFFIL_SHIFT
;     | );                                                                     
; 488 |         *((SPI_obj->spi_base_address) + SPIFFRX_REG_OFFSET) |= (SPIFFRX
;     | _RXFFINTCLR_BITS << SPIFFRX_RXFFINTCLR_SHIFT);                         
; 489 |         *((SPI_obj->spi_base_address) + SPIFFRX_REG_OFFSET) |= ((MW_SPI
;     | _D_RXINTERRUPTENABLE & SPIFFRX_RXFFIENA_BITS) << SPIFFRX_RXFFIENA_SHIFT
;     | );                                                                     
; 491 |         *((SPI_obj->spi_base_address) + SPICCR_REG_OFFSET) |= (Uint16)(
;     | SPICCR_SPISWRESET_BITS << SPICCR_SPISWRESET_SHIFT);                    
; 492 |         SPI_oneTimeInit[3] = 1;                                        
; 494 | #else                                                                  
;----------------------------------------------------------------------
        B         $C$L8,UNC             ; [CPU_ALU] |400| 
        ; branch occurs ; [] |400| 
$C$L5:    
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c28xSPI.c",line 495,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 495 | SPI_obj->spi_base_address = (SPI_REG_ADDRESS)0;                        
;----------------------------------------------------------------------
        MOVB      ACC,#0                ; [CPU_ALU] |495| 
        MOVL      *+XAR4[0],ACC         ; [CPU_ALU] |495| 
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c28xSPI.c",line 496,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 496 | SPI_obj->spi_clk_mode = 0;                                             
;----------------------------------------------------------------------
        MOVL      XAR4,*-SP[6]          ; [CPU_ALU] |496| 
        MOV       *+XAR4[2],#0          ; [CPU_ALU] |496| 
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c28xSPI.c",line 497,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 497 | SPI_obj->charLength = 0;                                               
;----------------------------------------------------------------------
        MOVL      XAR4,*-SP[6]          ; [CPU_ALU] |497| 
        MOV       *+XAR4[3],#0          ; [CPU_ALU] |497| 
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c28xSPI.c",line 498,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 498 | SPI_obj->fifoLevel = 0;                                                
;----------------------------------------------------------------------
        MOVL      XAR4,*-SP[6]          ; [CPU_ALU] |498| 
        MOV       *+XAR4[4],#0          ; [CPU_ALU] |498| 
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c28xSPI.c",line 499,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 499 | SPI_obj->txInterrupt = 0;                                              
; 500 | #endif //End of MW_SPI_D                                               
;----------------------------------------------------------------------
        MOVL      XAR4,*-SP[6]          ; [CPU_ALU] |499| 
        MOV       *+XAR4[5],#0          ; [CPU_ALU] |499| 
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c28xSPI.c",line 502,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 502 | break;                                                                 
; 503 | default:                                                               
;----------------------------------------------------------------------
        B         $C$L8,UNC             ; [CPU_ALU] |502| 
        ; branch occurs ; [] |502| 
$C$L6:    
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c28xSPI.c",line 504,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 504 | SPI_obj->spi_base_address = (SPI_REG_ADDRESS)0;                        
;----------------------------------------------------------------------
        MOVB      ACC,#0                ; [CPU_ALU] |504| 
        MOVL      *+XAR4[0],ACC         ; [CPU_ALU] |504| 
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c28xSPI.c",line 505,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 505 | break;                                                                 
; 507 | #endif //End of MW_F281X                                               
;----------------------------------------------------------------------
        B         $C$L8,UNC             ; [CPU_ALU] |505| 
        ; branch occurs ; [] |505| 
$C$L7:    
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c28xSPI.c",line 95,column 5,is_stmt,isa 0
        MOVL      XAR6,*-SP[4]          ; [CPU_ALU] |95| 
        MOVL      ACC,XAR6              ; [CPU_ALU] |95| 
        B         $C$L1,EQ              ; [CPU_ALU] |95| 
        ; branchcc occurs ; [] |95| 
        MOVB      ACC,#1                ; [CPU_ALU] |95| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |95| 
        B         $C$L3,EQ              ; [CPU_ALU] |95| 
        ; branchcc occurs ; [] |95| 
        MOVB      ACC,#2                ; [CPU_ALU] |95| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |95| 
        B         $C$L4,EQ              ; [CPU_ALU] |95| 
        ; branchcc occurs ; [] |95| 
        MOVB      ACC,#3                ; [CPU_ALU] |95| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |95| 
        B         $C$L5,EQ              ; [CPU_ALU] |95| 
        ; branchcc occurs ; [] |95| 
        B         $C$L6,UNC             ; [CPU_ALU] |95| 
        ; branch occurs ; [] |95| 
$C$L8:    
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c28xSPI.c",line 509,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 509 | return &mySpi[SPIModule];                                              
;----------------------------------------------------------------------
        MOVB      ACC,#6                ; [CPU_ALU] |509| 
        SPM       #0                    ; [CPU_ALU] 
        MOVL      XT,ACC                ; [CPU_ALU] |509| 
        IMPYL     ACC,XT,*-SP[4]        ; [CPU_ALU] |509| 
        MOVL      XAR4,#_mySpi          ; [CPU_ARAU] |509| 
        ADDL      XAR4,ACC              ; [CPU_ALU] |509| 
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c28xSPI.c",line 510,column 1,is_stmt,isa 0
        SUBB      SP,#8                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$20	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$20, DW_AT_low_pc(0x00)
	.dwattr $C$DW$20, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$11, DW_AT_TI_end_file("D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c28xSPI.c")
	.dwattr $C$DW$11, DW_AT_TI_end_line(0x1fe)
	.dwattr $C$DW$11, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$11

	.sect	".text"
	.clink
	.global	_SPI_clockFormat

$C$DW$21	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$21, DW_AT_name("SPI_clockFormat")
	.dwattr $C$DW$21, DW_AT_low_pc(_SPI_clockFormat)
	.dwattr $C$DW$21, DW_AT_high_pc(0x00)
	.dwattr $C$DW$21, DW_AT_TI_symbol_name("_SPI_clockFormat")
	.dwattr $C$DW$21, DW_AT_external
	.dwattr $C$DW$21, DW_AT_TI_begin_file("D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c28xSPI.c")
	.dwattr $C$DW$21, DW_AT_TI_begin_line(0x201)
	.dwattr $C$DW$21, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$21, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c28xSPI.c",line 514,column 1,is_stmt,address _SPI_clockFormat,isa 0

	.dwfde $C$DW$CIE, _SPI_clockFormat
$C$DW$22	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$22, DW_AT_name("SPI_obj")
	.dwattr $C$DW$22, DW_AT_TI_symbol_name("_SPI_obj")
	.dwattr $C$DW$22, DW_AT_type(*$C$DW$T$103)
	.dwattr $C$DW$22, DW_AT_location[DW_OP_reg12]

$C$DW$23	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$23, DW_AT_name("clockPolarity")
	.dwattr $C$DW$23, DW_AT_TI_symbol_name("_clockPolarity")
	.dwattr $C$DW$23, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$23, DW_AT_location[DW_OP_reg0]

$C$DW$24	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$24, DW_AT_name("clockPhase")
	.dwattr $C$DW$24, DW_AT_TI_symbol_name("_clockPhase")
	.dwattr $C$DW$24, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$24, DW_AT_location[DW_OP_reg1]

;----------------------------------------------------------------------
; 513 | void SPI_clockFormat(MW_SpiHandle SPI_obj, Uint16 clockPolarity, Uint16
;     |  clockPhase)                                                           
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _SPI_clockFormat              FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  4 Auto,  0 SOE     *
;***************************************************************

_SPI_clockFormat:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
$C$DW$25	.dwtag  DW_TAG_variable
	.dwattr $C$DW$25, DW_AT_name("SPI_obj")
	.dwattr $C$DW$25, DW_AT_TI_symbol_name("_SPI_obj")
	.dwattr $C$DW$25, DW_AT_type(*$C$DW$T$103)
	.dwattr $C$DW$25, DW_AT_location[DW_OP_breg20 -2]

$C$DW$26	.dwtag  DW_TAG_variable
	.dwattr $C$DW$26, DW_AT_name("clockPolarity")
	.dwattr $C$DW$26, DW_AT_TI_symbol_name("_clockPolarity")
	.dwattr $C$DW$26, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$26, DW_AT_location[DW_OP_breg20 -3]

$C$DW$27	.dwtag  DW_TAG_variable
	.dwattr $C$DW$27, DW_AT_name("clockPhase")
	.dwattr $C$DW$27, DW_AT_TI_symbol_name("_clockPhase")
	.dwattr $C$DW$27, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$27, DW_AT_location[DW_OP_breg20 -4]

        MOV       *-SP[4],AH            ; [CPU_ALU] |514| 
        MOV       *-SP[3],AL            ; [CPU_ALU] |514| 
        MOVL      *-SP[2],XAR4          ; [CPU_ALU] |514| 
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c28xSPI.c",line 515,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 515 | if(SPI_obj->spi_base_address != 0)                                     
;----------------------------------------------------------------------
        MOVL      ACC,*+XAR4[0]         ; [CPU_ALU] |515| 
        B         $C$L9,EQ              ; [CPU_ALU] |515| 
        ; branchcc occurs ; [] |515| 
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c28xSPI.c",line 517,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 517 | *((SPI_obj->spi_base_address) + SPICCR_REG_OFFSET) &= (~(SPICCR_CLKPOLA
;     | RITY_BITS << SPICCR_CLKPOLARITY_SHIFT));                               
;----------------------------------------------------------------------
        MOVL      XAR4,*+XAR4[0]        ; [CPU_ALU] |517| 
        AND       *+XAR4[0],#0xffbf     ; [CPU_ALU] |517| 
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c28xSPI.c",line 518,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 518 | *((SPI_obj->spi_base_address) + SPICTL_REG_OFFSET) &= (~(SPICTL_CLK_PHA
;     | SE_BITS << SPICTL_CLK_PHASE_SHIFT));                                   
;----------------------------------------------------------------------
        MOVL      XAR4,*-SP[2]          ; [CPU_ALU] |518| 
        MOVL      XAR4,*+XAR4[0]        ; [CPU_ALU] |518| 
        AND       *+XAR4[1],#0xfff7     ; [CPU_ALU] |518| 
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c28xSPI.c",line 519,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 519 | *((SPI_obj->spi_base_address) + SPICCR_REG_OFFSET) |= ((clockPolarity &
;     |  SPICCR_CLKPOLARITY_BITS) << SPICCR_CLKPOLARITY_SHIFT);                
;----------------------------------------------------------------------
        MOVL      XAR4,*-SP[2]          ; [CPU_ALU] |519| 
        MOVL      XAR4,*+XAR4[0]        ; [CPU_ALU] |519| 
        MOV       AL,*-SP[3]            ; [CPU_ALU] |519| 
        ANDB      AL,#0x01              ; [CPU_ALU] |519| 
        LSL       AL,6                  ; [CPU_ALU] |519| 
        OR        *+XAR4[0],AL          ; [CPU_ALU] |519| 
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c28xSPI.c",line 520,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 520 | *((SPI_obj->spi_base_address) + SPICTL_REG_OFFSET) |= ((clockPhase & SP
;     | ICTL_CLK_PHASE_BITS) << SPICTL_CLK_PHASE_SHIFT);                       
;----------------------------------------------------------------------
        MOVL      XAR4,*-SP[2]          ; [CPU_ALU] |520| 
        MOVL      XAR4,*+XAR4[0]        ; [CPU_ALU] |520| 
        MOV       AL,*-SP[4]            ; [CPU_ALU] |520| 
        ANDB      AL,#0x01              ; [CPU_ALU] |520| 
        LSL       AL,3                  ; [CPU_ALU] |520| 
        OR        *+XAR4[1],AL          ; [CPU_ALU] |520| 
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c28xSPI.c",line 522,column 1,is_stmt,isa 0
$C$L9:    
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$28	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$28, DW_AT_low_pc(0x00)
	.dwattr $C$DW$28, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$21, DW_AT_TI_end_file("D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c28xSPI.c")
	.dwattr $C$DW$21, DW_AT_TI_end_line(0x20a)
	.dwattr $C$DW$21, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$21

	.sect	".text"
	.clink
	.global	_SPI_status

$C$DW$29	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$29, DW_AT_name("SPI_status")
	.dwattr $C$DW$29, DW_AT_low_pc(_SPI_status)
	.dwattr $C$DW$29, DW_AT_high_pc(0x00)
	.dwattr $C$DW$29, DW_AT_TI_symbol_name("_SPI_status")
	.dwattr $C$DW$29, DW_AT_external
	.dwattr $C$DW$29, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$29, DW_AT_TI_begin_file("D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c28xSPI.c")
	.dwattr $C$DW$29, DW_AT_TI_begin_line(0x20d)
	.dwattr $C$DW$29, DW_AT_TI_begin_column(0x08)
	.dwattr $C$DW$29, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c28xSPI.c",line 526,column 1,is_stmt,address _SPI_status,isa 0

	.dwfde $C$DW$CIE, _SPI_status
$C$DW$30	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$30, DW_AT_name("SPI_obj")
	.dwattr $C$DW$30, DW_AT_TI_symbol_name("_SPI_obj")
	.dwattr $C$DW$30, DW_AT_type(*$C$DW$T$103)
	.dwattr $C$DW$30, DW_AT_location[DW_OP_reg12]

$C$DW$31	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$31, DW_AT_name("type")
	.dwattr $C$DW$31, DW_AT_TI_symbol_name("_type")
	.dwattr $C$DW$31, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$31, DW_AT_location[DW_OP_reg0]

;----------------------------------------------------------------------
; 525 | Uint16 SPI_status(MW_SpiHandle SPI_obj, SPI_statusVal type)            
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _SPI_status                   FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  4 Auto,  0 SOE     *
;***************************************************************

_SPI_status:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
$C$DW$32	.dwtag  DW_TAG_variable
	.dwattr $C$DW$32, DW_AT_name("SPI_obj")
	.dwattr $C$DW$32, DW_AT_TI_symbol_name("_SPI_obj")
	.dwattr $C$DW$32, DW_AT_type(*$C$DW$T$103)
	.dwattr $C$DW$32, DW_AT_location[DW_OP_breg20 -2]

$C$DW$33	.dwtag  DW_TAG_variable
	.dwattr $C$DW$33, DW_AT_name("type")
	.dwattr $C$DW$33, DW_AT_TI_symbol_name("_type")
	.dwattr $C$DW$33, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$33, DW_AT_location[DW_OP_breg20 -3]

$C$DW$34	.dwtag  DW_TAG_variable
	.dwattr $C$DW$34, DW_AT_name("ret")
	.dwattr $C$DW$34, DW_AT_TI_symbol_name("_ret")
	.dwattr $C$DW$34, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$34, DW_AT_location[DW_OP_breg20 -4]

        MOV       *-SP[3],AL            ; [CPU_ALU] |526| 
        MOVL      *-SP[2],XAR4          ; [CPU_ALU] |526| 
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c28xSPI.c",line 527,column 16,is_stmt,isa 0
;----------------------------------------------------------------------
; 527 | Uint16 ret = 0;                                                        
;----------------------------------------------------------------------
        MOV       *-SP[4],#0            ; [CPU_ALU] |527| 
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c28xSPI.c",line 528,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 528 | if(SPI_obj->spi_base_address != 0)                                     
;----------------------------------------------------------------------
        MOVL      ACC,*+XAR4[0]         ; [CPU_ALU] |528| 
        B         $C$L19,EQ             ; [CPU_ALU] |528| 
        ; branchcc occurs ; [] |528| 
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c28xSPI.c",line 530,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 530 | switch(type)                                                           
; 532 |     case SPI_OVERRUN_FLAG:                                             
;----------------------------------------------------------------------
        B         $C$L17,UNC            ; [CPU_ALU] |530| 
        ; branch occurs ; [] |530| 
$C$L10:    
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c28xSPI.c",line 533,column 17,is_stmt,isa 0
;----------------------------------------------------------------------
; 533 | ret = (*((SPI_obj->spi_base_address) + SPISTS_REG_OFFSET) >> SPISTS_OVE
;     | RRUN_FLAG_SHIFT)& SPISTS_OVERRUN_FLAG_BITS;                            
;----------------------------------------------------------------------
        MOVL      XAR4,*+XAR4[0]        ; [CPU_ALU] |533| 
        AND       AL,*+XAR4[2],#0x0080  ; [CPU_ALU] |533| 
        LSR       AL,7                  ; [CPU_ALU] |533| 
        MOV       *-SP[4],AL            ; [CPU_ALU] |533| 
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c28xSPI.c",line 534,column 17,is_stmt,isa 0
;----------------------------------------------------------------------
; 534 | break;                                                                 
; 535 | case SPI_INT_FLAG:                                                     
;----------------------------------------------------------------------
        B         $C$L19,UNC            ; [CPU_ALU] |534| 
        ; branch occurs ; [] |534| 
$C$L11:    
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c28xSPI.c",line 536,column 17,is_stmt,isa 0
;----------------------------------------------------------------------
; 536 | ret = (*((SPI_obj->spi_base_address) + SPISTS_REG_OFFSET) >> SPISTS_INT
;     | _FLAG_SHIFT) & SPISTS_INT_FLAG_BITS;                                   
;----------------------------------------------------------------------
        MOVL      XAR4,*+XAR4[0]        ; [CPU_ALU] |536| 
        AND       AL,*+XAR4[2],#0x0040  ; [CPU_ALU] |536| 
        LSR       AL,6                  ; [CPU_ALU] |536| 
        MOV       *-SP[4],AL            ; [CPU_ALU] |536| 
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c28xSPI.c",line 537,column 17,is_stmt,isa 0
;----------------------------------------------------------------------
; 537 | break;                                                                 
; 538 | case SPI_BUFFULL_FLAG:                                                 
;----------------------------------------------------------------------
        B         $C$L19,UNC            ; [CPU_ALU] |537| 
        ; branch occurs ; [] |537| 
$C$L12:    
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c28xSPI.c",line 539,column 17,is_stmt,isa 0
;----------------------------------------------------------------------
; 539 | ret = (*((SPI_obj->spi_base_address) + SPISTS_REG_OFFSET) >> SPISTS_BUF
;     | FULL_FLAG_SHIFT) & SPISTS_BUFFULL_FLAG_BITS;                           
;----------------------------------------------------------------------
        MOVL      XAR4,*+XAR4[0]        ; [CPU_ALU] |539| 
        AND       AL,*+XAR4[2],#0x0020  ; [CPU_ALU] |539| 
        LSR       AL,5                  ; [CPU_ALU] |539| 
        MOV       *-SP[4],AL            ; [CPU_ALU] |539| 
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c28xSPI.c",line 540,column 17,is_stmt,isa 0
;----------------------------------------------------------------------
; 540 | break;                                                                 
; 541 | case SPI_TXFFST_FLAG:                                                  
;----------------------------------------------------------------------
        B         $C$L19,UNC            ; [CPU_ALU] |540| 
        ; branch occurs ; [] |540| 
$C$L13:    
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c28xSPI.c",line 542,column 17,is_stmt,isa 0
;----------------------------------------------------------------------
; 542 | ret = (*((SPI_obj->spi_base_address) + SPIFFTX_REG_OFFSET) >> SPIFFTX_T
;     | XFFST_SHIFT) & SPIFFTX_TXFFST_BITS ;                                   
;----------------------------------------------------------------------
        MOVL      XAR5,*-SP[2]          ; [CPU_ALU] |542| 
        MOVB      ACC,#10               ; [CPU_ALU] |542| 
        ADDL      ACC,*+XAR5[0]         ; [CPU_ALU] |542| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |542| 
        AND       AL,*+XAR4[0],#0x1f00  ; [CPU_ALU] |542| 
        LSR       AL,8                  ; [CPU_ALU] |542| 
        MOV       *-SP[4],AL            ; [CPU_ALU] |542| 
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c28xSPI.c",line 543,column 17,is_stmt,isa 0
;----------------------------------------------------------------------
; 543 | break;                                                                 
; 544 | case SPI_RXFFST_FLAG:                                                  
;----------------------------------------------------------------------
        B         $C$L19,UNC            ; [CPU_ALU] |543| 
        ; branch occurs ; [] |543| 
$C$L14:    
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c28xSPI.c",line 545,column 17,is_stmt,isa 0
;----------------------------------------------------------------------
; 545 | ret = (*((SPI_obj->spi_base_address) + SPIFFRX_REG_OFFSET) >> SPIFFRX_R
;     | XFFST_SHIFT) & SPIFFRX_RXFFST_BITS;                                    
;----------------------------------------------------------------------
        MOVL      XAR5,*-SP[2]          ; [CPU_ALU] |545| 
        MOVB      ACC,#11               ; [CPU_ALU] |545| 
        ADDL      ACC,*+XAR5[0]         ; [CPU_ALU] |545| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |545| 
        AND       AL,*+XAR4[0],#0x1f00  ; [CPU_ALU] |545| 
        LSR       AL,8                  ; [CPU_ALU] |545| 
        MOV       *-SP[4],AL            ; [CPU_ALU] |545| 
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c28xSPI.c",line 546,column 17,is_stmt,isa 0
;----------------------------------------------------------------------
; 546 | break;                                                                 
; 547 | case SPI_RXFFOVF_FLAG:                                                 
;----------------------------------------------------------------------
        B         $C$L19,UNC            ; [CPU_ALU] |546| 
        ; branch occurs ; [] |546| 
$C$L15:    
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c28xSPI.c",line 548,column 17,is_stmt,isa 0
;----------------------------------------------------------------------
; 548 | ret = (*((SPI_obj->spi_base_address) + SPIFFRX_REG_OFFSET) >> SPIFFRX_R
;     | XFFOVF_SHIFT) & SPIFFRX_RXFFOVF_BITS;                                  
;----------------------------------------------------------------------
        MOVL      XAR5,*-SP[2]          ; [CPU_ALU] |548| 
        MOVB      ACC,#11               ; [CPU_ALU] |548| 
        ADDL      ACC,*+XAR5[0]         ; [CPU_ALU] |548| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |548| 
        AND       AL,*+XAR4[0],#0x8000  ; [CPU_ALU] |548| 
        LSR       AL,15                 ; [CPU_ALU] |548| 
        MOV       *-SP[4],AL            ; [CPU_ALU] |548| 
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c28xSPI.c",line 549,column 17,is_stmt,isa 0
;----------------------------------------------------------------------
; 549 | break;                                                                 
; 550 | default :                                                              
;----------------------------------------------------------------------
        B         $C$L19,UNC            ; [CPU_ALU] |549| 
        ; branch occurs ; [] |549| 
$C$L16:    
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c28xSPI.c",line 551,column 17,is_stmt,isa 0
;----------------------------------------------------------------------
; 551 | ret = 0;                                                               
;----------------------------------------------------------------------
        MOV       *-SP[4],#0            ; [CPU_ALU] |551| 
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c28xSPI.c",line 552,column 9,is_stmt,isa 0
        B         $C$L19,UNC            ; [CPU_ALU] |552| 
        ; branch occurs ; [] |552| 
$C$L17:    
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c28xSPI.c",line 530,column 9,is_stmt,isa 0
        MOV       AL,*-SP[3]            ; [CPU_ALU] |530| 
        CMPB      AL,#3                 ; [CPU_ALU] |530| 
        B         $C$L18,GT             ; [CPU_ALU] |530| 
        ; branchcc occurs ; [] |530| 
        CMPB      AL,#3                 ; [CPU_ALU] |530| 
        B         $C$L13,EQ             ; [CPU_ALU] |530| 
        ; branchcc occurs ; [] |530| 
        CMPB      AL,#0                 ; [CPU_ALU] |530| 
        B         $C$L10,EQ             ; [CPU_ALU] |530| 
        ; branchcc occurs ; [] |530| 
        CMPB      AL,#1                 ; [CPU_ALU] |530| 
        B         $C$L11,EQ             ; [CPU_ALU] |530| 
        ; branchcc occurs ; [] |530| 
        CMPB      AL,#2                 ; [CPU_ALU] |530| 
        B         $C$L12,EQ             ; [CPU_ALU] |530| 
        ; branchcc occurs ; [] |530| 
        B         $C$L16,UNC            ; [CPU_ALU] |530| 
        ; branch occurs ; [] |530| 
$C$L18:    
        CMPB      AL,#4                 ; [CPU_ALU] |530| 
        B         $C$L14,EQ             ; [CPU_ALU] |530| 
        ; branchcc occurs ; [] |530| 
        CMPB      AL,#5                 ; [CPU_ALU] |530| 
        B         $C$L15,EQ             ; [CPU_ALU] |530| 
        ; branchcc occurs ; [] |530| 
        B         $C$L16,UNC            ; [CPU_ALU] |530| 
        ; branch occurs ; [] |530| 
$C$L19:    
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c28xSPI.c",line 554,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 554 | return ret;                                                            
;----------------------------------------------------------------------
        MOV       AL,*-SP[4]            ; [CPU_ALU] |554| 
	.dwpsn	file "D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c28xSPI.c",line 555,column 1,is_stmt,isa 0
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$35	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$35, DW_AT_low_pc(0x00)
	.dwattr $C$DW$35, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$29, DW_AT_TI_end_file("D:/Software/MATLAB/toolbox/c2b/tic2000/src/MW_c28xSPI.c")
	.dwattr $C$DW$29, DW_AT_TI_end_line(0x22b)
	.dwattr $C$DW$29, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$29

;**************************************************************
;* UNDEFINED EXTERNAL REFERENCES                              *
;**************************************************************
	.global	_Set_GPIOPin
	.global	_SpiaRegs
	.global	_CpuSysRegs

;***************************************************************
;* TYPE INFORMATION                                            *
;***************************************************************

$C$DW$T$94	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$94, DW_AT_byte_size(0x01)
$C$DW$36	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$36, DW_AT_name("SPI_OVERRUN_FLAG")
	.dwattr $C$DW$36, DW_AT_const_value(0x00)

$C$DW$37	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$37, DW_AT_name("SPI_INT_FLAG")
	.dwattr $C$DW$37, DW_AT_const_value(0x01)

$C$DW$38	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$38, DW_AT_name("SPI_BUFFULL_FLAG")
	.dwattr $C$DW$38, DW_AT_const_value(0x02)

$C$DW$39	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$39, DW_AT_name("SPI_TXFFST_FLAG")
	.dwattr $C$DW$39, DW_AT_const_value(0x03)

$C$DW$40	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$40, DW_AT_name("SPI_RXFFST_FLAG")
	.dwattr $C$DW$40, DW_AT_const_value(0x04)

$C$DW$41	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$41, DW_AT_name("SPI_RXFFOVF_FLAG")
	.dwattr $C$DW$41, DW_AT_const_value(0x05)

	.dwendtag $C$DW$T$94

$C$DW$T$95	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$95, DW_AT_name("SPI_statusVal")
	.dwattr $C$DW$T$95, DW_AT_type(*$C$DW$T$94)
	.dwattr $C$DW$T$95, DW_AT_language(DW_LANG_C)


$C$DW$T$20	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$20, DW_AT_name("CPUSYSLOCK1_BITS")
	.dwattr $C$DW$T$20, DW_AT_byte_size(0x02)
$C$DW$42	.dwtag  DW_TAG_member
	.dwattr $C$DW$42, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$42, DW_AT_name("HIBBOOTMODE")
	.dwattr $C$DW$42, DW_AT_TI_symbol_name("_HIBBOOTMODE")
	.dwattr $C$DW$42, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$42, DW_AT_bit_size(0x01)
	.dwattr $C$DW$42, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$42, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$43	.dwtag  DW_TAG_member
	.dwattr $C$DW$43, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$43, DW_AT_name("IORESTOREADDR")
	.dwattr $C$DW$43, DW_AT_TI_symbol_name("_IORESTOREADDR")
	.dwattr $C$DW$43, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$43, DW_AT_bit_size(0x01)
	.dwattr $C$DW$43, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$43, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$44	.dwtag  DW_TAG_member
	.dwattr $C$DW$44, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$44, DW_AT_name("PIEVERRADDR")
	.dwattr $C$DW$44, DW_AT_TI_symbol_name("_PIEVERRADDR")
	.dwattr $C$DW$44, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$44, DW_AT_bit_size(0x01)
	.dwattr $C$DW$44, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$44, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$45	.dwtag  DW_TAG_member
	.dwattr $C$DW$45, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$45, DW_AT_name("PCLKCR0")
	.dwattr $C$DW$45, DW_AT_TI_symbol_name("_PCLKCR0")
	.dwattr $C$DW$45, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$45, DW_AT_bit_size(0x01)
	.dwattr $C$DW$45, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$45, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$46	.dwtag  DW_TAG_member
	.dwattr $C$DW$46, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$46, DW_AT_name("PCLKCR1")
	.dwattr $C$DW$46, DW_AT_TI_symbol_name("_PCLKCR1")
	.dwattr $C$DW$46, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$46, DW_AT_bit_size(0x01)
	.dwattr $C$DW$46, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$46, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$47	.dwtag  DW_TAG_member
	.dwattr $C$DW$47, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$47, DW_AT_name("PCLKCR2")
	.dwattr $C$DW$47, DW_AT_TI_symbol_name("_PCLKCR2")
	.dwattr $C$DW$47, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$47, DW_AT_bit_size(0x01)
	.dwattr $C$DW$47, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$47, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$48	.dwtag  DW_TAG_member
	.dwattr $C$DW$48, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$48, DW_AT_name("PCLKCR3")
	.dwattr $C$DW$48, DW_AT_TI_symbol_name("_PCLKCR3")
	.dwattr $C$DW$48, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$48, DW_AT_bit_size(0x01)
	.dwattr $C$DW$48, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$48, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$49	.dwtag  DW_TAG_member
	.dwattr $C$DW$49, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$49, DW_AT_name("PCLKCR4")
	.dwattr $C$DW$49, DW_AT_TI_symbol_name("_PCLKCR4")
	.dwattr $C$DW$49, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$49, DW_AT_bit_size(0x01)
	.dwattr $C$DW$49, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$49, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$50	.dwtag  DW_TAG_member
	.dwattr $C$DW$50, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$50, DW_AT_name("PCLKCR5")
	.dwattr $C$DW$50, DW_AT_TI_symbol_name("_PCLKCR5")
	.dwattr $C$DW$50, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$50, DW_AT_bit_size(0x01)
	.dwattr $C$DW$50, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$50, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$51	.dwtag  DW_TAG_member
	.dwattr $C$DW$51, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$51, DW_AT_name("PCLKCR6")
	.dwattr $C$DW$51, DW_AT_TI_symbol_name("_PCLKCR6")
	.dwattr $C$DW$51, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$51, DW_AT_bit_size(0x01)
	.dwattr $C$DW$51, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$51, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$52	.dwtag  DW_TAG_member
	.dwattr $C$DW$52, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$52, DW_AT_name("PCLKCR7")
	.dwattr $C$DW$52, DW_AT_TI_symbol_name("_PCLKCR7")
	.dwattr $C$DW$52, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$52, DW_AT_bit_size(0x01)
	.dwattr $C$DW$52, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$52, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$53	.dwtag  DW_TAG_member
	.dwattr $C$DW$53, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$53, DW_AT_name("PCLKCR8")
	.dwattr $C$DW$53, DW_AT_TI_symbol_name("_PCLKCR8")
	.dwattr $C$DW$53, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$53, DW_AT_bit_size(0x01)
	.dwattr $C$DW$53, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$53, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$54	.dwtag  DW_TAG_member
	.dwattr $C$DW$54, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$54, DW_AT_name("PCLKCR9")
	.dwattr $C$DW$54, DW_AT_TI_symbol_name("_PCLKCR9")
	.dwattr $C$DW$54, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$54, DW_AT_bit_size(0x01)
	.dwattr $C$DW$54, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$54, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$55	.dwtag  DW_TAG_member
	.dwattr $C$DW$55, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$55, DW_AT_name("PCLKCR10")
	.dwattr $C$DW$55, DW_AT_TI_symbol_name("_PCLKCR10")
	.dwattr $C$DW$55, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$55, DW_AT_bit_size(0x01)
	.dwattr $C$DW$55, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$55, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$56	.dwtag  DW_TAG_member
	.dwattr $C$DW$56, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$56, DW_AT_name("PCLKCR11")
	.dwattr $C$DW$56, DW_AT_TI_symbol_name("_PCLKCR11")
	.dwattr $C$DW$56, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$56, DW_AT_bit_size(0x01)
	.dwattr $C$DW$56, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$56, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$57	.dwtag  DW_TAG_member
	.dwattr $C$DW$57, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$57, DW_AT_name("PCLKCR12")
	.dwattr $C$DW$57, DW_AT_TI_symbol_name("_PCLKCR12")
	.dwattr $C$DW$57, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$57, DW_AT_bit_size(0x01)
	.dwattr $C$DW$57, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$57, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$58	.dwtag  DW_TAG_member
	.dwattr $C$DW$58, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$58, DW_AT_name("PCLKCR13")
	.dwattr $C$DW$58, DW_AT_TI_symbol_name("_PCLKCR13")
	.dwattr $C$DW$58, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$58, DW_AT_bit_size(0x01)
	.dwattr $C$DW$58, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$58, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$59	.dwtag  DW_TAG_member
	.dwattr $C$DW$59, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$59, DW_AT_name("PCLKCR14")
	.dwattr $C$DW$59, DW_AT_TI_symbol_name("_PCLKCR14")
	.dwattr $C$DW$59, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$59, DW_AT_bit_size(0x01)
	.dwattr $C$DW$59, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$59, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$60	.dwtag  DW_TAG_member
	.dwattr $C$DW$60, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$60, DW_AT_name("PCLKCR15")
	.dwattr $C$DW$60, DW_AT_TI_symbol_name("_PCLKCR15")
	.dwattr $C$DW$60, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$60, DW_AT_bit_size(0x01)
	.dwattr $C$DW$60, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$60, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$61	.dwtag  DW_TAG_member
	.dwattr $C$DW$61, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$61, DW_AT_name("PCLKCR16")
	.dwattr $C$DW$61, DW_AT_TI_symbol_name("_PCLKCR16")
	.dwattr $C$DW$61, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$61, DW_AT_bit_size(0x01)
	.dwattr $C$DW$61, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$61, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$62	.dwtag  DW_TAG_member
	.dwattr $C$DW$62, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$62, DW_AT_name("SECMSEL")
	.dwattr $C$DW$62, DW_AT_TI_symbol_name("_SECMSEL")
	.dwattr $C$DW$62, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$62, DW_AT_bit_size(0x01)
	.dwattr $C$DW$62, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$62, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$63	.dwtag  DW_TAG_member
	.dwattr $C$DW$63, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$63, DW_AT_name("LPMCR")
	.dwattr $C$DW$63, DW_AT_TI_symbol_name("_LPMCR")
	.dwattr $C$DW$63, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$63, DW_AT_bit_size(0x01)
	.dwattr $C$DW$63, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$63, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$64	.dwtag  DW_TAG_member
	.dwattr $C$DW$64, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$64, DW_AT_name("GPIOLPMSEL0")
	.dwattr $C$DW$64, DW_AT_TI_symbol_name("_GPIOLPMSEL0")
	.dwattr $C$DW$64, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$64, DW_AT_bit_size(0x01)
	.dwattr $C$DW$64, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$64, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$65	.dwtag  DW_TAG_member
	.dwattr $C$DW$65, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$65, DW_AT_name("GPIOLPMSEL1")
	.dwattr $C$DW$65, DW_AT_TI_symbol_name("_GPIOLPMSEL1")
	.dwattr $C$DW$65, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$65, DW_AT_bit_size(0x01)
	.dwattr $C$DW$65, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$65, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$66	.dwtag  DW_TAG_member
	.dwattr $C$DW$66, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$66, DW_AT_name("rsvd1")
	.dwattr $C$DW$66, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$66, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$66, DW_AT_bit_size(0x08)
	.dwattr $C$DW$66, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$66, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$20


$C$DW$T$22	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$22, DW_AT_name("CPUSYSLOCK1_REG")
	.dwattr $C$DW$T$22, DW_AT_byte_size(0x02)
$C$DW$67	.dwtag  DW_TAG_member
	.dwattr $C$DW$67, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$67, DW_AT_name("all")
	.dwattr $C$DW$67, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$67, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$67, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$68	.dwtag  DW_TAG_member
	.dwattr $C$DW$68, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$68, DW_AT_name("bit")
	.dwattr $C$DW$68, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$68, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$68, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$22


$C$DW$T$27	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$27, DW_AT_name("CPU_SYS_REGS")
	.dwattr $C$DW$T$27, DW_AT_byte_size(0x82)
$C$DW$69	.dwtag  DW_TAG_member
	.dwattr $C$DW$69, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$69, DW_AT_name("CPUSYSLOCK1")
	.dwattr $C$DW$69, DW_AT_TI_symbol_name("_CPUSYSLOCK1")
	.dwattr $C$DW$69, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$69, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$70	.dwtag  DW_TAG_member
	.dwattr $C$DW$70, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$70, DW_AT_name("rsvd1")
	.dwattr $C$DW$70, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$70, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$70, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$71	.dwtag  DW_TAG_member
	.dwattr $C$DW$71, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$71, DW_AT_name("HIBBOOTMODE")
	.dwattr $C$DW$71, DW_AT_TI_symbol_name("_HIBBOOTMODE")
	.dwattr $C$DW$71, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$71, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$72	.dwtag  DW_TAG_member
	.dwattr $C$DW$72, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$72, DW_AT_name("IORESTOREADDR")
	.dwattr $C$DW$72, DW_AT_TI_symbol_name("_IORESTOREADDR")
	.dwattr $C$DW$72, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$72, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$73	.dwtag  DW_TAG_member
	.dwattr $C$DW$73, DW_AT_type(*$C$DW$T$67)
	.dwattr $C$DW$73, DW_AT_name("PIEVERRADDR")
	.dwattr $C$DW$73, DW_AT_TI_symbol_name("_PIEVERRADDR")
	.dwattr $C$DW$73, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$73, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$74	.dwtag  DW_TAG_member
	.dwattr $C$DW$74, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$74, DW_AT_name("rsvd2")
	.dwattr $C$DW$74, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$74, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$74, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$75	.dwtag  DW_TAG_member
	.dwattr $C$DW$75, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$75, DW_AT_name("PCLKCR0")
	.dwattr $C$DW$75, DW_AT_TI_symbol_name("_PCLKCR0")
	.dwattr $C$DW$75, DW_AT_data_member_location[DW_OP_plus_uconst 0x22]
	.dwattr $C$DW$75, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$76	.dwtag  DW_TAG_member
	.dwattr $C$DW$76, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$76, DW_AT_name("PCLKCR1")
	.dwattr $C$DW$76, DW_AT_TI_symbol_name("_PCLKCR1")
	.dwattr $C$DW$76, DW_AT_data_member_location[DW_OP_plus_uconst 0x24]
	.dwattr $C$DW$76, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$77	.dwtag  DW_TAG_member
	.dwattr $C$DW$77, DW_AT_type(*$C$DW$T$53)
	.dwattr $C$DW$77, DW_AT_name("PCLKCR2")
	.dwattr $C$DW$77, DW_AT_TI_symbol_name("_PCLKCR2")
	.dwattr $C$DW$77, DW_AT_data_member_location[DW_OP_plus_uconst 0x26]
	.dwattr $C$DW$77, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$78	.dwtag  DW_TAG_member
	.dwattr $C$DW$78, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$78, DW_AT_name("PCLKCR3")
	.dwattr $C$DW$78, DW_AT_TI_symbol_name("_PCLKCR3")
	.dwattr $C$DW$78, DW_AT_data_member_location[DW_OP_plus_uconst 0x28]
	.dwattr $C$DW$78, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$79	.dwtag  DW_TAG_member
	.dwattr $C$DW$79, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$79, DW_AT_name("PCLKCR4")
	.dwattr $C$DW$79, DW_AT_TI_symbol_name("_PCLKCR4")
	.dwattr $C$DW$79, DW_AT_data_member_location[DW_OP_plus_uconst 0x2a]
	.dwattr $C$DW$79, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$80	.dwtag  DW_TAG_member
	.dwattr $C$DW$80, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$80, DW_AT_name("rsvd3")
	.dwattr $C$DW$80, DW_AT_TI_symbol_name("_rsvd3")
	.dwattr $C$DW$80, DW_AT_data_member_location[DW_OP_plus_uconst 0x2c]
	.dwattr $C$DW$80, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$81	.dwtag  DW_TAG_member
	.dwattr $C$DW$81, DW_AT_type(*$C$DW$T$59)
	.dwattr $C$DW$81, DW_AT_name("PCLKCR6")
	.dwattr $C$DW$81, DW_AT_TI_symbol_name("_PCLKCR6")
	.dwattr $C$DW$81, DW_AT_data_member_location[DW_OP_plus_uconst 0x2e]
	.dwattr $C$DW$81, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$82	.dwtag  DW_TAG_member
	.dwattr $C$DW$82, DW_AT_type(*$C$DW$T$61)
	.dwattr $C$DW$82, DW_AT_name("PCLKCR7")
	.dwattr $C$DW$82, DW_AT_TI_symbol_name("_PCLKCR7")
	.dwattr $C$DW$82, DW_AT_data_member_location[DW_OP_plus_uconst 0x30]
	.dwattr $C$DW$82, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$83	.dwtag  DW_TAG_member
	.dwattr $C$DW$83, DW_AT_type(*$C$DW$T$63)
	.dwattr $C$DW$83, DW_AT_name("PCLKCR8")
	.dwattr $C$DW$83, DW_AT_TI_symbol_name("_PCLKCR8")
	.dwattr $C$DW$83, DW_AT_data_member_location[DW_OP_plus_uconst 0x32]
	.dwattr $C$DW$83, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$84	.dwtag  DW_TAG_member
	.dwattr $C$DW$84, DW_AT_type(*$C$DW$T$65)
	.dwattr $C$DW$84, DW_AT_name("PCLKCR9")
	.dwattr $C$DW$84, DW_AT_TI_symbol_name("_PCLKCR9")
	.dwattr $C$DW$84, DW_AT_data_member_location[DW_OP_plus_uconst 0x34]
	.dwattr $C$DW$84, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$85	.dwtag  DW_TAG_member
	.dwattr $C$DW$85, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$85, DW_AT_name("PCLKCR10")
	.dwattr $C$DW$85, DW_AT_TI_symbol_name("_PCLKCR10")
	.dwattr $C$DW$85, DW_AT_data_member_location[DW_OP_plus_uconst 0x36]
	.dwattr $C$DW$85, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$86	.dwtag  DW_TAG_member
	.dwattr $C$DW$86, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$86, DW_AT_name("PCLKCR11")
	.dwattr $C$DW$86, DW_AT_TI_symbol_name("_PCLKCR11")
	.dwattr $C$DW$86, DW_AT_data_member_location[DW_OP_plus_uconst 0x38]
	.dwattr $C$DW$86, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$87	.dwtag  DW_TAG_member
	.dwattr $C$DW$87, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$87, DW_AT_name("PCLKCR12")
	.dwattr $C$DW$87, DW_AT_TI_symbol_name("_PCLKCR12")
	.dwattr $C$DW$87, DW_AT_data_member_location[DW_OP_plus_uconst 0x3a]
	.dwattr $C$DW$87, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$88	.dwtag  DW_TAG_member
	.dwattr $C$DW$88, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$88, DW_AT_name("PCLKCR13")
	.dwattr $C$DW$88, DW_AT_TI_symbol_name("_PCLKCR13")
	.dwattr $C$DW$88, DW_AT_data_member_location[DW_OP_plus_uconst 0x3c]
	.dwattr $C$DW$88, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$89	.dwtag  DW_TAG_member
	.dwattr $C$DW$89, DW_AT_type(*$C$DW$T$47)
	.dwattr $C$DW$89, DW_AT_name("PCLKCR14")
	.dwattr $C$DW$89, DW_AT_TI_symbol_name("_PCLKCR14")
	.dwattr $C$DW$89, DW_AT_data_member_location[DW_OP_plus_uconst 0x3e]
	.dwattr $C$DW$89, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$90	.dwtag  DW_TAG_member
	.dwattr $C$DW$90, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$90, DW_AT_name("rsvd4")
	.dwattr $C$DW$90, DW_AT_TI_symbol_name("_rsvd4")
	.dwattr $C$DW$90, DW_AT_data_member_location[DW_OP_plus_uconst 0x40]
	.dwattr $C$DW$90, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$91	.dwtag  DW_TAG_member
	.dwattr $C$DW$91, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$91, DW_AT_name("PCLKCR16")
	.dwattr $C$DW$91, DW_AT_TI_symbol_name("_PCLKCR16")
	.dwattr $C$DW$91, DW_AT_data_member_location[DW_OP_plus_uconst 0x42]
	.dwattr $C$DW$91, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$92	.dwtag  DW_TAG_member
	.dwattr $C$DW$92, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$92, DW_AT_name("rsvd5")
	.dwattr $C$DW$92, DW_AT_TI_symbol_name("_rsvd5")
	.dwattr $C$DW$92, DW_AT_data_member_location[DW_OP_plus_uconst 0x44]
	.dwattr $C$DW$92, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$93	.dwtag  DW_TAG_member
	.dwattr $C$DW$93, DW_AT_type(*$C$DW$T$71)
	.dwattr $C$DW$93, DW_AT_name("SECMSEL")
	.dwattr $C$DW$93, DW_AT_TI_symbol_name("_SECMSEL")
	.dwattr $C$DW$93, DW_AT_data_member_location[DW_OP_plus_uconst 0x74]
	.dwattr $C$DW$93, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$94	.dwtag  DW_TAG_member
	.dwattr $C$DW$94, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$94, DW_AT_name("LPMCR")
	.dwattr $C$DW$94, DW_AT_TI_symbol_name("_LPMCR")
	.dwattr $C$DW$94, DW_AT_data_member_location[DW_OP_plus_uconst 0x76]
	.dwattr $C$DW$94, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$95	.dwtag  DW_TAG_member
	.dwattr $C$DW$95, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$95, DW_AT_name("GPIOLPMSEL0")
	.dwattr $C$DW$95, DW_AT_TI_symbol_name("_GPIOLPMSEL0")
	.dwattr $C$DW$95, DW_AT_data_member_location[DW_OP_plus_uconst 0x78]
	.dwattr $C$DW$95, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$96	.dwtag  DW_TAG_member
	.dwattr $C$DW$96, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$96, DW_AT_name("GPIOLPMSEL1")
	.dwattr $C$DW$96, DW_AT_TI_symbol_name("_GPIOLPMSEL1")
	.dwattr $C$DW$96, DW_AT_data_member_location[DW_OP_plus_uconst 0x7a]
	.dwattr $C$DW$96, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$97	.dwtag  DW_TAG_member
	.dwattr $C$DW$97, DW_AT_type(*$C$DW$T$90)
	.dwattr $C$DW$97, DW_AT_name("TMR2CLKCTL")
	.dwattr $C$DW$97, DW_AT_TI_symbol_name("_TMR2CLKCTL")
	.dwattr $C$DW$97, DW_AT_data_member_location[DW_OP_plus_uconst 0x7c]
	.dwattr $C$DW$97, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$98	.dwtag  DW_TAG_member
	.dwattr $C$DW$98, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$98, DW_AT_name("rsvd6")
	.dwattr $C$DW$98, DW_AT_TI_symbol_name("_rsvd6")
	.dwattr $C$DW$98, DW_AT_data_member_location[DW_OP_plus_uconst 0x7e]
	.dwattr $C$DW$98, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$99	.dwtag  DW_TAG_member
	.dwattr $C$DW$99, DW_AT_type(*$C$DW$T$69)
	.dwattr $C$DW$99, DW_AT_name("RESC")
	.dwattr $C$DW$99, DW_AT_TI_symbol_name("_RESC")
	.dwattr $C$DW$99, DW_AT_data_member_location[DW_OP_plus_uconst 0x80]
	.dwattr $C$DW$99, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$27

$C$DW$100	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$100, DW_AT_type(*$C$DW$T$27)

$C$DW$T$96	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$96, DW_AT_type(*$C$DW$100)


$C$DW$T$28	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$28, DW_AT_name("GPIOLPMSEL0_BITS")
	.dwattr $C$DW$T$28, DW_AT_byte_size(0x02)
$C$DW$101	.dwtag  DW_TAG_member
	.dwattr $C$DW$101, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$101, DW_AT_name("GPIO0")
	.dwattr $C$DW$101, DW_AT_TI_symbol_name("_GPIO0")
	.dwattr $C$DW$101, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$101, DW_AT_bit_size(0x01)
	.dwattr $C$DW$101, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$101, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$102	.dwtag  DW_TAG_member
	.dwattr $C$DW$102, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$102, DW_AT_name("GPIO1")
	.dwattr $C$DW$102, DW_AT_TI_symbol_name("_GPIO1")
	.dwattr $C$DW$102, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$102, DW_AT_bit_size(0x01)
	.dwattr $C$DW$102, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$102, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$103	.dwtag  DW_TAG_member
	.dwattr $C$DW$103, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$103, DW_AT_name("GPIO2")
	.dwattr $C$DW$103, DW_AT_TI_symbol_name("_GPIO2")
	.dwattr $C$DW$103, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$103, DW_AT_bit_size(0x01)
	.dwattr $C$DW$103, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$103, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$104	.dwtag  DW_TAG_member
	.dwattr $C$DW$104, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$104, DW_AT_name("GPIO3")
	.dwattr $C$DW$104, DW_AT_TI_symbol_name("_GPIO3")
	.dwattr $C$DW$104, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$104, DW_AT_bit_size(0x01)
	.dwattr $C$DW$104, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$104, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$105	.dwtag  DW_TAG_member
	.dwattr $C$DW$105, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$105, DW_AT_name("GPIO4")
	.dwattr $C$DW$105, DW_AT_TI_symbol_name("_GPIO4")
	.dwattr $C$DW$105, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$105, DW_AT_bit_size(0x01)
	.dwattr $C$DW$105, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$105, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$106	.dwtag  DW_TAG_member
	.dwattr $C$DW$106, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$106, DW_AT_name("GPIO5")
	.dwattr $C$DW$106, DW_AT_TI_symbol_name("_GPIO5")
	.dwattr $C$DW$106, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$106, DW_AT_bit_size(0x01)
	.dwattr $C$DW$106, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$106, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$107	.dwtag  DW_TAG_member
	.dwattr $C$DW$107, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$107, DW_AT_name("GPIO6")
	.dwattr $C$DW$107, DW_AT_TI_symbol_name("_GPIO6")
	.dwattr $C$DW$107, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$107, DW_AT_bit_size(0x01)
	.dwattr $C$DW$107, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$107, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$108	.dwtag  DW_TAG_member
	.dwattr $C$DW$108, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$108, DW_AT_name("GPIO7")
	.dwattr $C$DW$108, DW_AT_TI_symbol_name("_GPIO7")
	.dwattr $C$DW$108, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$108, DW_AT_bit_size(0x01)
	.dwattr $C$DW$108, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$108, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$109	.dwtag  DW_TAG_member
	.dwattr $C$DW$109, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$109, DW_AT_name("GPIO8")
	.dwattr $C$DW$109, DW_AT_TI_symbol_name("_GPIO8")
	.dwattr $C$DW$109, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$109, DW_AT_bit_size(0x01)
	.dwattr $C$DW$109, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$109, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$110	.dwtag  DW_TAG_member
	.dwattr $C$DW$110, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$110, DW_AT_name("GPIO9")
	.dwattr $C$DW$110, DW_AT_TI_symbol_name("_GPIO9")
	.dwattr $C$DW$110, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$110, DW_AT_bit_size(0x01)
	.dwattr $C$DW$110, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$110, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$111	.dwtag  DW_TAG_member
	.dwattr $C$DW$111, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$111, DW_AT_name("GPIO10")
	.dwattr $C$DW$111, DW_AT_TI_symbol_name("_GPIO10")
	.dwattr $C$DW$111, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$111, DW_AT_bit_size(0x01)
	.dwattr $C$DW$111, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$111, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$112	.dwtag  DW_TAG_member
	.dwattr $C$DW$112, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$112, DW_AT_name("GPIO11")
	.dwattr $C$DW$112, DW_AT_TI_symbol_name("_GPIO11")
	.dwattr $C$DW$112, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$112, DW_AT_bit_size(0x01)
	.dwattr $C$DW$112, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$112, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$113	.dwtag  DW_TAG_member
	.dwattr $C$DW$113, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$113, DW_AT_name("GPIO12")
	.dwattr $C$DW$113, DW_AT_TI_symbol_name("_GPIO12")
	.dwattr $C$DW$113, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$113, DW_AT_bit_size(0x01)
	.dwattr $C$DW$113, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$113, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$114	.dwtag  DW_TAG_member
	.dwattr $C$DW$114, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$114, DW_AT_name("GPIO13")
	.dwattr $C$DW$114, DW_AT_TI_symbol_name("_GPIO13")
	.dwattr $C$DW$114, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$114, DW_AT_bit_size(0x01)
	.dwattr $C$DW$114, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$114, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$115	.dwtag  DW_TAG_member
	.dwattr $C$DW$115, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$115, DW_AT_name("GPIO14")
	.dwattr $C$DW$115, DW_AT_TI_symbol_name("_GPIO14")
	.dwattr $C$DW$115, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$115, DW_AT_bit_size(0x01)
	.dwattr $C$DW$115, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$115, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$116	.dwtag  DW_TAG_member
	.dwattr $C$DW$116, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$116, DW_AT_name("GPIO15")
	.dwattr $C$DW$116, DW_AT_TI_symbol_name("_GPIO15")
	.dwattr $C$DW$116, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$116, DW_AT_bit_size(0x01)
	.dwattr $C$DW$116, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$116, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$117	.dwtag  DW_TAG_member
	.dwattr $C$DW$117, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$117, DW_AT_name("GPIO16")
	.dwattr $C$DW$117, DW_AT_TI_symbol_name("_GPIO16")
	.dwattr $C$DW$117, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$117, DW_AT_bit_size(0x01)
	.dwattr $C$DW$117, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$117, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$118	.dwtag  DW_TAG_member
	.dwattr $C$DW$118, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$118, DW_AT_name("GPIO17")
	.dwattr $C$DW$118, DW_AT_TI_symbol_name("_GPIO17")
	.dwattr $C$DW$118, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$118, DW_AT_bit_size(0x01)
	.dwattr $C$DW$118, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$118, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$119	.dwtag  DW_TAG_member
	.dwattr $C$DW$119, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$119, DW_AT_name("GPIO18")
	.dwattr $C$DW$119, DW_AT_TI_symbol_name("_GPIO18")
	.dwattr $C$DW$119, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$119, DW_AT_bit_size(0x01)
	.dwattr $C$DW$119, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$119, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$120	.dwtag  DW_TAG_member
	.dwattr $C$DW$120, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$120, DW_AT_name("GPIO19")
	.dwattr $C$DW$120, DW_AT_TI_symbol_name("_GPIO19")
	.dwattr $C$DW$120, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$120, DW_AT_bit_size(0x01)
	.dwattr $C$DW$120, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$120, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$121	.dwtag  DW_TAG_member
	.dwattr $C$DW$121, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$121, DW_AT_name("GPIO20")
	.dwattr $C$DW$121, DW_AT_TI_symbol_name("_GPIO20")
	.dwattr $C$DW$121, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$121, DW_AT_bit_size(0x01)
	.dwattr $C$DW$121, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$121, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$122	.dwtag  DW_TAG_member
	.dwattr $C$DW$122, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$122, DW_AT_name("GPIO21")
	.dwattr $C$DW$122, DW_AT_TI_symbol_name("_GPIO21")
	.dwattr $C$DW$122, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$122, DW_AT_bit_size(0x01)
	.dwattr $C$DW$122, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$122, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$123	.dwtag  DW_TAG_member
	.dwattr $C$DW$123, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$123, DW_AT_name("GPIO22")
	.dwattr $C$DW$123, DW_AT_TI_symbol_name("_GPIO22")
	.dwattr $C$DW$123, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$123, DW_AT_bit_size(0x01)
	.dwattr $C$DW$123, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$123, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$124	.dwtag  DW_TAG_member
	.dwattr $C$DW$124, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$124, DW_AT_name("GPIO23")
	.dwattr $C$DW$124, DW_AT_TI_symbol_name("_GPIO23")
	.dwattr $C$DW$124, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$124, DW_AT_bit_size(0x01)
	.dwattr $C$DW$124, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$124, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$125	.dwtag  DW_TAG_member
	.dwattr $C$DW$125, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$125, DW_AT_name("GPIO24")
	.dwattr $C$DW$125, DW_AT_TI_symbol_name("_GPIO24")
	.dwattr $C$DW$125, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$125, DW_AT_bit_size(0x01)
	.dwattr $C$DW$125, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$125, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$126	.dwtag  DW_TAG_member
	.dwattr $C$DW$126, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$126, DW_AT_name("GPIO25")
	.dwattr $C$DW$126, DW_AT_TI_symbol_name("_GPIO25")
	.dwattr $C$DW$126, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$126, DW_AT_bit_size(0x01)
	.dwattr $C$DW$126, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$126, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$127	.dwtag  DW_TAG_member
	.dwattr $C$DW$127, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$127, DW_AT_name("GPIO26")
	.dwattr $C$DW$127, DW_AT_TI_symbol_name("_GPIO26")
	.dwattr $C$DW$127, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$127, DW_AT_bit_size(0x01)
	.dwattr $C$DW$127, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$127, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$128	.dwtag  DW_TAG_member
	.dwattr $C$DW$128, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$128, DW_AT_name("GPIO27")
	.dwattr $C$DW$128, DW_AT_TI_symbol_name("_GPIO27")
	.dwattr $C$DW$128, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$128, DW_AT_bit_size(0x01)
	.dwattr $C$DW$128, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$128, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$129	.dwtag  DW_TAG_member
	.dwattr $C$DW$129, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$129, DW_AT_name("GPIO28")
	.dwattr $C$DW$129, DW_AT_TI_symbol_name("_GPIO28")
	.dwattr $C$DW$129, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$129, DW_AT_bit_size(0x01)
	.dwattr $C$DW$129, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$129, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$130	.dwtag  DW_TAG_member
	.dwattr $C$DW$130, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$130, DW_AT_name("GPIO29")
	.dwattr $C$DW$130, DW_AT_TI_symbol_name("_GPIO29")
	.dwattr $C$DW$130, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$130, DW_AT_bit_size(0x01)
	.dwattr $C$DW$130, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$130, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$131	.dwtag  DW_TAG_member
	.dwattr $C$DW$131, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$131, DW_AT_name("GPIO30")
	.dwattr $C$DW$131, DW_AT_TI_symbol_name("_GPIO30")
	.dwattr $C$DW$131, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$131, DW_AT_bit_size(0x01)
	.dwattr $C$DW$131, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$131, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$132	.dwtag  DW_TAG_member
	.dwattr $C$DW$132, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$132, DW_AT_name("GPIO31")
	.dwattr $C$DW$132, DW_AT_TI_symbol_name("_GPIO31")
	.dwattr $C$DW$132, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$132, DW_AT_bit_size(0x01)
	.dwattr $C$DW$132, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$132, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$28


$C$DW$T$29	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$29, DW_AT_name("GPIOLPMSEL0_REG")
	.dwattr $C$DW$T$29, DW_AT_byte_size(0x02)
$C$DW$133	.dwtag  DW_TAG_member
	.dwattr $C$DW$133, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$133, DW_AT_name("all")
	.dwattr $C$DW$133, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$133, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$133, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$134	.dwtag  DW_TAG_member
	.dwattr $C$DW$134, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$134, DW_AT_name("bit")
	.dwattr $C$DW$134, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$134, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$134, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$29


$C$DW$T$30	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$30, DW_AT_name("GPIOLPMSEL1_BITS")
	.dwattr $C$DW$T$30, DW_AT_byte_size(0x02)
$C$DW$135	.dwtag  DW_TAG_member
	.dwattr $C$DW$135, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$135, DW_AT_name("GPIO32")
	.dwattr $C$DW$135, DW_AT_TI_symbol_name("_GPIO32")
	.dwattr $C$DW$135, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$135, DW_AT_bit_size(0x01)
	.dwattr $C$DW$135, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$135, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$136	.dwtag  DW_TAG_member
	.dwattr $C$DW$136, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$136, DW_AT_name("GPIO33")
	.dwattr $C$DW$136, DW_AT_TI_symbol_name("_GPIO33")
	.dwattr $C$DW$136, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$136, DW_AT_bit_size(0x01)
	.dwattr $C$DW$136, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$136, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$137	.dwtag  DW_TAG_member
	.dwattr $C$DW$137, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$137, DW_AT_name("GPIO34")
	.dwattr $C$DW$137, DW_AT_TI_symbol_name("_GPIO34")
	.dwattr $C$DW$137, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$137, DW_AT_bit_size(0x01)
	.dwattr $C$DW$137, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$137, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$138	.dwtag  DW_TAG_member
	.dwattr $C$DW$138, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$138, DW_AT_name("GPIO35")
	.dwattr $C$DW$138, DW_AT_TI_symbol_name("_GPIO35")
	.dwattr $C$DW$138, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$138, DW_AT_bit_size(0x01)
	.dwattr $C$DW$138, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$138, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$139	.dwtag  DW_TAG_member
	.dwattr $C$DW$139, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$139, DW_AT_name("GPIO36")
	.dwattr $C$DW$139, DW_AT_TI_symbol_name("_GPIO36")
	.dwattr $C$DW$139, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$139, DW_AT_bit_size(0x01)
	.dwattr $C$DW$139, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$139, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$140	.dwtag  DW_TAG_member
	.dwattr $C$DW$140, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$140, DW_AT_name("GPIO37")
	.dwattr $C$DW$140, DW_AT_TI_symbol_name("_GPIO37")
	.dwattr $C$DW$140, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$140, DW_AT_bit_size(0x01)
	.dwattr $C$DW$140, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$140, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$141	.dwtag  DW_TAG_member
	.dwattr $C$DW$141, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$141, DW_AT_name("GPIO38")
	.dwattr $C$DW$141, DW_AT_TI_symbol_name("_GPIO38")
	.dwattr $C$DW$141, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$141, DW_AT_bit_size(0x01)
	.dwattr $C$DW$141, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$141, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$142	.dwtag  DW_TAG_member
	.dwattr $C$DW$142, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$142, DW_AT_name("GPIO39")
	.dwattr $C$DW$142, DW_AT_TI_symbol_name("_GPIO39")
	.dwattr $C$DW$142, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$142, DW_AT_bit_size(0x01)
	.dwattr $C$DW$142, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$142, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$143	.dwtag  DW_TAG_member
	.dwattr $C$DW$143, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$143, DW_AT_name("GPIO40")
	.dwattr $C$DW$143, DW_AT_TI_symbol_name("_GPIO40")
	.dwattr $C$DW$143, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$143, DW_AT_bit_size(0x01)
	.dwattr $C$DW$143, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$143, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$144	.dwtag  DW_TAG_member
	.dwattr $C$DW$144, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$144, DW_AT_name("GPIO41")
	.dwattr $C$DW$144, DW_AT_TI_symbol_name("_GPIO41")
	.dwattr $C$DW$144, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$144, DW_AT_bit_size(0x01)
	.dwattr $C$DW$144, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$144, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$145	.dwtag  DW_TAG_member
	.dwattr $C$DW$145, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$145, DW_AT_name("GPIO42")
	.dwattr $C$DW$145, DW_AT_TI_symbol_name("_GPIO42")
	.dwattr $C$DW$145, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$145, DW_AT_bit_size(0x01)
	.dwattr $C$DW$145, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$145, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$146	.dwtag  DW_TAG_member
	.dwattr $C$DW$146, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$146, DW_AT_name("GPIO43")
	.dwattr $C$DW$146, DW_AT_TI_symbol_name("_GPIO43")
	.dwattr $C$DW$146, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$146, DW_AT_bit_size(0x01)
	.dwattr $C$DW$146, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$146, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$147	.dwtag  DW_TAG_member
	.dwattr $C$DW$147, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$147, DW_AT_name("GPIO44")
	.dwattr $C$DW$147, DW_AT_TI_symbol_name("_GPIO44")
	.dwattr $C$DW$147, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$147, DW_AT_bit_size(0x01)
	.dwattr $C$DW$147, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$147, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$148	.dwtag  DW_TAG_member
	.dwattr $C$DW$148, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$148, DW_AT_name("GPIO45")
	.dwattr $C$DW$148, DW_AT_TI_symbol_name("_GPIO45")
	.dwattr $C$DW$148, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$148, DW_AT_bit_size(0x01)
	.dwattr $C$DW$148, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$148, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$149	.dwtag  DW_TAG_member
	.dwattr $C$DW$149, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$149, DW_AT_name("GPIO46")
	.dwattr $C$DW$149, DW_AT_TI_symbol_name("_GPIO46")
	.dwattr $C$DW$149, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$149, DW_AT_bit_size(0x01)
	.dwattr $C$DW$149, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$149, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$150	.dwtag  DW_TAG_member
	.dwattr $C$DW$150, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$150, DW_AT_name("GPIO47")
	.dwattr $C$DW$150, DW_AT_TI_symbol_name("_GPIO47")
	.dwattr $C$DW$150, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$150, DW_AT_bit_size(0x01)
	.dwattr $C$DW$150, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$150, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$151	.dwtag  DW_TAG_member
	.dwattr $C$DW$151, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$151, DW_AT_name("GPIO48")
	.dwattr $C$DW$151, DW_AT_TI_symbol_name("_GPIO48")
	.dwattr $C$DW$151, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$151, DW_AT_bit_size(0x01)
	.dwattr $C$DW$151, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$151, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$152	.dwtag  DW_TAG_member
	.dwattr $C$DW$152, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$152, DW_AT_name("GPIO49")
	.dwattr $C$DW$152, DW_AT_TI_symbol_name("_GPIO49")
	.dwattr $C$DW$152, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$152, DW_AT_bit_size(0x01)
	.dwattr $C$DW$152, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$152, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$153	.dwtag  DW_TAG_member
	.dwattr $C$DW$153, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$153, DW_AT_name("GPIO50")
	.dwattr $C$DW$153, DW_AT_TI_symbol_name("_GPIO50")
	.dwattr $C$DW$153, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$153, DW_AT_bit_size(0x01)
	.dwattr $C$DW$153, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$153, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$154	.dwtag  DW_TAG_member
	.dwattr $C$DW$154, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$154, DW_AT_name("GPIO51")
	.dwattr $C$DW$154, DW_AT_TI_symbol_name("_GPIO51")
	.dwattr $C$DW$154, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$154, DW_AT_bit_size(0x01)
	.dwattr $C$DW$154, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$154, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$155	.dwtag  DW_TAG_member
	.dwattr $C$DW$155, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$155, DW_AT_name("GPIO52")
	.dwattr $C$DW$155, DW_AT_TI_symbol_name("_GPIO52")
	.dwattr $C$DW$155, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$155, DW_AT_bit_size(0x01)
	.dwattr $C$DW$155, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$155, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$156	.dwtag  DW_TAG_member
	.dwattr $C$DW$156, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$156, DW_AT_name("GPIO53")
	.dwattr $C$DW$156, DW_AT_TI_symbol_name("_GPIO53")
	.dwattr $C$DW$156, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$156, DW_AT_bit_size(0x01)
	.dwattr $C$DW$156, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$156, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$157	.dwtag  DW_TAG_member
	.dwattr $C$DW$157, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$157, DW_AT_name("GPIO54")
	.dwattr $C$DW$157, DW_AT_TI_symbol_name("_GPIO54")
	.dwattr $C$DW$157, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$157, DW_AT_bit_size(0x01)
	.dwattr $C$DW$157, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$157, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$158	.dwtag  DW_TAG_member
	.dwattr $C$DW$158, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$158, DW_AT_name("GPIO55")
	.dwattr $C$DW$158, DW_AT_TI_symbol_name("_GPIO55")
	.dwattr $C$DW$158, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$158, DW_AT_bit_size(0x01)
	.dwattr $C$DW$158, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$158, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$159	.dwtag  DW_TAG_member
	.dwattr $C$DW$159, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$159, DW_AT_name("GPIO56")
	.dwattr $C$DW$159, DW_AT_TI_symbol_name("_GPIO56")
	.dwattr $C$DW$159, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$159, DW_AT_bit_size(0x01)
	.dwattr $C$DW$159, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$159, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$160	.dwtag  DW_TAG_member
	.dwattr $C$DW$160, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$160, DW_AT_name("GPIO57")
	.dwattr $C$DW$160, DW_AT_TI_symbol_name("_GPIO57")
	.dwattr $C$DW$160, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$160, DW_AT_bit_size(0x01)
	.dwattr $C$DW$160, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$160, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$161	.dwtag  DW_TAG_member
	.dwattr $C$DW$161, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$161, DW_AT_name("GPIO58")
	.dwattr $C$DW$161, DW_AT_TI_symbol_name("_GPIO58")
	.dwattr $C$DW$161, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$161, DW_AT_bit_size(0x01)
	.dwattr $C$DW$161, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$161, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$162	.dwtag  DW_TAG_member
	.dwattr $C$DW$162, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$162, DW_AT_name("GPIO59")
	.dwattr $C$DW$162, DW_AT_TI_symbol_name("_GPIO59")
	.dwattr $C$DW$162, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$162, DW_AT_bit_size(0x01)
	.dwattr $C$DW$162, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$162, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$163	.dwtag  DW_TAG_member
	.dwattr $C$DW$163, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$163, DW_AT_name("GPIO60")
	.dwattr $C$DW$163, DW_AT_TI_symbol_name("_GPIO60")
	.dwattr $C$DW$163, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$163, DW_AT_bit_size(0x01)
	.dwattr $C$DW$163, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$163, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$164	.dwtag  DW_TAG_member
	.dwattr $C$DW$164, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$164, DW_AT_name("GPIO61")
	.dwattr $C$DW$164, DW_AT_TI_symbol_name("_GPIO61")
	.dwattr $C$DW$164, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$164, DW_AT_bit_size(0x01)
	.dwattr $C$DW$164, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$164, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$165	.dwtag  DW_TAG_member
	.dwattr $C$DW$165, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$165, DW_AT_name("GPIO62")
	.dwattr $C$DW$165, DW_AT_TI_symbol_name("_GPIO62")
	.dwattr $C$DW$165, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$165, DW_AT_bit_size(0x01)
	.dwattr $C$DW$165, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$165, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$166	.dwtag  DW_TAG_member
	.dwattr $C$DW$166, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$166, DW_AT_name("GPIO63")
	.dwattr $C$DW$166, DW_AT_TI_symbol_name("_GPIO63")
	.dwattr $C$DW$166, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$166, DW_AT_bit_size(0x01)
	.dwattr $C$DW$166, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$166, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$30


$C$DW$T$31	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$31, DW_AT_name("GPIOLPMSEL1_REG")
	.dwattr $C$DW$T$31, DW_AT_byte_size(0x02)
$C$DW$167	.dwtag  DW_TAG_member
	.dwattr $C$DW$167, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$167, DW_AT_name("all")
	.dwattr $C$DW$167, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$167, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$167, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$168	.dwtag  DW_TAG_member
	.dwattr $C$DW$168, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$168, DW_AT_name("bit")
	.dwattr $C$DW$168, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$168, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$168, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$31


$C$DW$T$32	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$32, DW_AT_name("IORESTOREADDR_BITS")
	.dwattr $C$DW$T$32, DW_AT_byte_size(0x02)
$C$DW$169	.dwtag  DW_TAG_member
	.dwattr $C$DW$169, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$169, DW_AT_name("ADDR")
	.dwattr $C$DW$169, DW_AT_TI_symbol_name("_ADDR")
	.dwattr $C$DW$169, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$169, DW_AT_bit_size(0x16)
	.dwattr $C$DW$169, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$169, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$170	.dwtag  DW_TAG_member
	.dwattr $C$DW$170, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$170, DW_AT_name("rsvd1")
	.dwattr $C$DW$170, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$170, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$170, DW_AT_bit_size(0x0a)
	.dwattr $C$DW$170, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$170, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$32


$C$DW$T$33	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$33, DW_AT_name("IORESTOREADDR_REG")
	.dwattr $C$DW$T$33, DW_AT_byte_size(0x02)
$C$DW$171	.dwtag  DW_TAG_member
	.dwattr $C$DW$171, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$171, DW_AT_name("all")
	.dwattr $C$DW$171, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$171, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$171, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$172	.dwtag  DW_TAG_member
	.dwattr $C$DW$172, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$172, DW_AT_name("bit")
	.dwattr $C$DW$172, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$172, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$172, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$33


$C$DW$T$34	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$34, DW_AT_name("LPMCR_BITS")
	.dwattr $C$DW$T$34, DW_AT_byte_size(0x02)
$C$DW$173	.dwtag  DW_TAG_member
	.dwattr $C$DW$173, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$173, DW_AT_name("LPM")
	.dwattr $C$DW$173, DW_AT_TI_symbol_name("_LPM")
	.dwattr $C$DW$173, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$173, DW_AT_bit_size(0x02)
	.dwattr $C$DW$173, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$173, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$174	.dwtag  DW_TAG_member
	.dwattr $C$DW$174, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$174, DW_AT_name("QUALSTDBY")
	.dwattr $C$DW$174, DW_AT_TI_symbol_name("_QUALSTDBY")
	.dwattr $C$DW$174, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$174, DW_AT_bit_size(0x06)
	.dwattr $C$DW$174, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$174, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$175	.dwtag  DW_TAG_member
	.dwattr $C$DW$175, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$175, DW_AT_name("rsvd1")
	.dwattr $C$DW$175, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$175, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$175, DW_AT_bit_size(0x07)
	.dwattr $C$DW$175, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$175, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$176	.dwtag  DW_TAG_member
	.dwattr $C$DW$176, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$176, DW_AT_name("WDINTE")
	.dwattr $C$DW$176, DW_AT_TI_symbol_name("_WDINTE")
	.dwattr $C$DW$176, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$176, DW_AT_bit_size(0x01)
	.dwattr $C$DW$176, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$176, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$177	.dwtag  DW_TAG_member
	.dwattr $C$DW$177, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$177, DW_AT_name("M0M1MODE")
	.dwattr $C$DW$177, DW_AT_TI_symbol_name("_M0M1MODE")
	.dwattr $C$DW$177, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$177, DW_AT_bit_size(0x02)
	.dwattr $C$DW$177, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$177, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$178	.dwtag  DW_TAG_member
	.dwattr $C$DW$178, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$178, DW_AT_name("rsvd2")
	.dwattr $C$DW$178, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$178, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$178, DW_AT_bit_size(0x0d)
	.dwattr $C$DW$178, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$178, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$179	.dwtag  DW_TAG_member
	.dwattr $C$DW$179, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$179, DW_AT_name("IOISODIS")
	.dwattr $C$DW$179, DW_AT_TI_symbol_name("_IOISODIS")
	.dwattr $C$DW$179, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$179, DW_AT_bit_size(0x01)
	.dwattr $C$DW$179, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$179, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$34


$C$DW$T$35	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$35, DW_AT_name("LPMCR_REG")
	.dwattr $C$DW$T$35, DW_AT_byte_size(0x02)
$C$DW$180	.dwtag  DW_TAG_member
	.dwattr $C$DW$180, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$180, DW_AT_name("all")
	.dwattr $C$DW$180, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$180, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$180, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$181	.dwtag  DW_TAG_member
	.dwattr $C$DW$181, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$181, DW_AT_name("bit")
	.dwattr $C$DW$181, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$181, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$181, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$35


$C$DW$T$36	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$36, DW_AT_name("PCLKCR0_BITS")
	.dwattr $C$DW$T$36, DW_AT_byte_size(0x02)
$C$DW$182	.dwtag  DW_TAG_member
	.dwattr $C$DW$182, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$182, DW_AT_name("CLA1")
	.dwattr $C$DW$182, DW_AT_TI_symbol_name("_CLA1")
	.dwattr $C$DW$182, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$182, DW_AT_bit_size(0x01)
	.dwattr $C$DW$182, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$182, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$183	.dwtag  DW_TAG_member
	.dwattr $C$DW$183, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$183, DW_AT_name("rsvd1")
	.dwattr $C$DW$183, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$183, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$183, DW_AT_bit_size(0x01)
	.dwattr $C$DW$183, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$183, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$184	.dwtag  DW_TAG_member
	.dwattr $C$DW$184, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$184, DW_AT_name("DMA")
	.dwattr $C$DW$184, DW_AT_TI_symbol_name("_DMA")
	.dwattr $C$DW$184, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$184, DW_AT_bit_size(0x01)
	.dwattr $C$DW$184, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$184, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$185	.dwtag  DW_TAG_member
	.dwattr $C$DW$185, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$185, DW_AT_name("CPUTIMER0")
	.dwattr $C$DW$185, DW_AT_TI_symbol_name("_CPUTIMER0")
	.dwattr $C$DW$185, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$185, DW_AT_bit_size(0x01)
	.dwattr $C$DW$185, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$185, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$186	.dwtag  DW_TAG_member
	.dwattr $C$DW$186, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$186, DW_AT_name("CPUTIMER1")
	.dwattr $C$DW$186, DW_AT_TI_symbol_name("_CPUTIMER1")
	.dwattr $C$DW$186, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$186, DW_AT_bit_size(0x01)
	.dwattr $C$DW$186, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$186, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$187	.dwtag  DW_TAG_member
	.dwattr $C$DW$187, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$187, DW_AT_name("CPUTIMER2")
	.dwattr $C$DW$187, DW_AT_TI_symbol_name("_CPUTIMER2")
	.dwattr $C$DW$187, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$187, DW_AT_bit_size(0x01)
	.dwattr $C$DW$187, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$187, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$188	.dwtag  DW_TAG_member
	.dwattr $C$DW$188, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$188, DW_AT_name("rsvd2")
	.dwattr $C$DW$188, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$188, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$188, DW_AT_bit_size(0x0a)
	.dwattr $C$DW$188, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$188, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$189	.dwtag  DW_TAG_member
	.dwattr $C$DW$189, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$189, DW_AT_name("HRPWM")
	.dwattr $C$DW$189, DW_AT_TI_symbol_name("_HRPWM")
	.dwattr $C$DW$189, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$189, DW_AT_bit_size(0x01)
	.dwattr $C$DW$189, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$189, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$190	.dwtag  DW_TAG_member
	.dwattr $C$DW$190, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$190, DW_AT_name("rsvd3")
	.dwattr $C$DW$190, DW_AT_TI_symbol_name("_rsvd3")
	.dwattr $C$DW$190, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$190, DW_AT_bit_size(0x01)
	.dwattr $C$DW$190, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$190, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$191	.dwtag  DW_TAG_member
	.dwattr $C$DW$191, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$191, DW_AT_name("TBCLKSYNC")
	.dwattr $C$DW$191, DW_AT_TI_symbol_name("_TBCLKSYNC")
	.dwattr $C$DW$191, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$191, DW_AT_bit_size(0x01)
	.dwattr $C$DW$191, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$191, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$192	.dwtag  DW_TAG_member
	.dwattr $C$DW$192, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$192, DW_AT_name("GTBCLKSYNC")
	.dwattr $C$DW$192, DW_AT_TI_symbol_name("_GTBCLKSYNC")
	.dwattr $C$DW$192, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$192, DW_AT_bit_size(0x01)
	.dwattr $C$DW$192, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$192, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$193	.dwtag  DW_TAG_member
	.dwattr $C$DW$193, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$193, DW_AT_name("rsvd4")
	.dwattr $C$DW$193, DW_AT_TI_symbol_name("_rsvd4")
	.dwattr $C$DW$193, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$193, DW_AT_bit_size(0x0c)
	.dwattr $C$DW$193, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$193, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$36


$C$DW$T$37	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$37, DW_AT_name("PCLKCR0_REG")
	.dwattr $C$DW$T$37, DW_AT_byte_size(0x02)
$C$DW$194	.dwtag  DW_TAG_member
	.dwattr $C$DW$194, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$194, DW_AT_name("all")
	.dwattr $C$DW$194, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$194, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$194, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$195	.dwtag  DW_TAG_member
	.dwattr $C$DW$195, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$195, DW_AT_name("bit")
	.dwattr $C$DW$195, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$195, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$195, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$37


$C$DW$T$38	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$38, DW_AT_name("PCLKCR10_BITS")
	.dwattr $C$DW$T$38, DW_AT_byte_size(0x02)
$C$DW$196	.dwtag  DW_TAG_member
	.dwattr $C$DW$196, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$196, DW_AT_name("CAN_A")
	.dwattr $C$DW$196, DW_AT_TI_symbol_name("_CAN_A")
	.dwattr $C$DW$196, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$196, DW_AT_bit_size(0x01)
	.dwattr $C$DW$196, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$196, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$197	.dwtag  DW_TAG_member
	.dwattr $C$DW$197, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$197, DW_AT_name("CAN_B")
	.dwattr $C$DW$197, DW_AT_TI_symbol_name("_CAN_B")
	.dwattr $C$DW$197, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$197, DW_AT_bit_size(0x01)
	.dwattr $C$DW$197, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$197, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$198	.dwtag  DW_TAG_member
	.dwattr $C$DW$198, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$198, DW_AT_name("rsvd1")
	.dwattr $C$DW$198, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$198, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$198, DW_AT_bit_size(0x01)
	.dwattr $C$DW$198, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$198, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$199	.dwtag  DW_TAG_member
	.dwattr $C$DW$199, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$199, DW_AT_name("rsvd2")
	.dwattr $C$DW$199, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$199, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$199, DW_AT_bit_size(0x01)
	.dwattr $C$DW$199, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$199, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$200	.dwtag  DW_TAG_member
	.dwattr $C$DW$200, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$200, DW_AT_name("rsvd3")
	.dwattr $C$DW$200, DW_AT_TI_symbol_name("_rsvd3")
	.dwattr $C$DW$200, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$200, DW_AT_bit_size(0x0c)
	.dwattr $C$DW$200, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$200, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$201	.dwtag  DW_TAG_member
	.dwattr $C$DW$201, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$201, DW_AT_name("rsvd4")
	.dwattr $C$DW$201, DW_AT_TI_symbol_name("_rsvd4")
	.dwattr $C$DW$201, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$201, DW_AT_bit_size(0x10)
	.dwattr $C$DW$201, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$201, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$38


$C$DW$T$39	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$39, DW_AT_name("PCLKCR10_REG")
	.dwattr $C$DW$T$39, DW_AT_byte_size(0x02)
$C$DW$202	.dwtag  DW_TAG_member
	.dwattr $C$DW$202, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$202, DW_AT_name("all")
	.dwattr $C$DW$202, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$202, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$202, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$203	.dwtag  DW_TAG_member
	.dwattr $C$DW$203, DW_AT_type(*$C$DW$T$38)
	.dwattr $C$DW$203, DW_AT_name("bit")
	.dwattr $C$DW$203, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$203, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$203, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$39


$C$DW$T$40	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$40, DW_AT_name("PCLKCR11_BITS")
	.dwattr $C$DW$T$40, DW_AT_byte_size(0x02)
$C$DW$204	.dwtag  DW_TAG_member
	.dwattr $C$DW$204, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$204, DW_AT_name("McBSP_A")
	.dwattr $C$DW$204, DW_AT_TI_symbol_name("_McBSP_A")
	.dwattr $C$DW$204, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$204, DW_AT_bit_size(0x01)
	.dwattr $C$DW$204, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$204, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$205	.dwtag  DW_TAG_member
	.dwattr $C$DW$205, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$205, DW_AT_name("McBSP_B")
	.dwattr $C$DW$205, DW_AT_TI_symbol_name("_McBSP_B")
	.dwattr $C$DW$205, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$205, DW_AT_bit_size(0x01)
	.dwattr $C$DW$205, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$205, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$206	.dwtag  DW_TAG_member
	.dwattr $C$DW$206, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$206, DW_AT_name("rsvd1")
	.dwattr $C$DW$206, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$206, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$206, DW_AT_bit_size(0x0e)
	.dwattr $C$DW$206, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$206, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$207	.dwtag  DW_TAG_member
	.dwattr $C$DW$207, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$207, DW_AT_name("USB_A")
	.dwattr $C$DW$207, DW_AT_TI_symbol_name("_USB_A")
	.dwattr $C$DW$207, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$207, DW_AT_bit_size(0x01)
	.dwattr $C$DW$207, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$207, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$208	.dwtag  DW_TAG_member
	.dwattr $C$DW$208, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$208, DW_AT_name("rsvd2")
	.dwattr $C$DW$208, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$208, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$208, DW_AT_bit_size(0x01)
	.dwattr $C$DW$208, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$208, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$209	.dwtag  DW_TAG_member
	.dwattr $C$DW$209, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$209, DW_AT_name("rsvd3")
	.dwattr $C$DW$209, DW_AT_TI_symbol_name("_rsvd3")
	.dwattr $C$DW$209, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$209, DW_AT_bit_size(0x0e)
	.dwattr $C$DW$209, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$209, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$40


$C$DW$T$41	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$41, DW_AT_name("PCLKCR11_REG")
	.dwattr $C$DW$T$41, DW_AT_byte_size(0x02)
$C$DW$210	.dwtag  DW_TAG_member
	.dwattr $C$DW$210, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$210, DW_AT_name("all")
	.dwattr $C$DW$210, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$210, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$210, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$211	.dwtag  DW_TAG_member
	.dwattr $C$DW$211, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$211, DW_AT_name("bit")
	.dwattr $C$DW$211, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$211, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$211, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$41


$C$DW$T$42	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$42, DW_AT_name("PCLKCR12_BITS")
	.dwattr $C$DW$T$42, DW_AT_byte_size(0x02)
$C$DW$212	.dwtag  DW_TAG_member
	.dwattr $C$DW$212, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$212, DW_AT_name("uPP_A")
	.dwattr $C$DW$212, DW_AT_TI_symbol_name("_uPP_A")
	.dwattr $C$DW$212, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$212, DW_AT_bit_size(0x01)
	.dwattr $C$DW$212, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$212, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$213	.dwtag  DW_TAG_member
	.dwattr $C$DW$213, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$213, DW_AT_name("rsvd1")
	.dwattr $C$DW$213, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$213, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$213, DW_AT_bit_size(0x01)
	.dwattr $C$DW$213, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$213, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$214	.dwtag  DW_TAG_member
	.dwattr $C$DW$214, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$214, DW_AT_name("rsvd2")
	.dwattr $C$DW$214, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$214, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$214, DW_AT_bit_size(0x0e)
	.dwattr $C$DW$214, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$214, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$215	.dwtag  DW_TAG_member
	.dwattr $C$DW$215, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$215, DW_AT_name("rsvd3")
	.dwattr $C$DW$215, DW_AT_TI_symbol_name("_rsvd3")
	.dwattr $C$DW$215, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$215, DW_AT_bit_size(0x10)
	.dwattr $C$DW$215, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$215, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$42


$C$DW$T$43	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$43, DW_AT_name("PCLKCR12_REG")
	.dwattr $C$DW$T$43, DW_AT_byte_size(0x02)
$C$DW$216	.dwtag  DW_TAG_member
	.dwattr $C$DW$216, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$216, DW_AT_name("all")
	.dwattr $C$DW$216, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$216, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$216, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$217	.dwtag  DW_TAG_member
	.dwattr $C$DW$217, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$217, DW_AT_name("bit")
	.dwattr $C$DW$217, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$217, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$217, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$43


$C$DW$T$44	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$44, DW_AT_name("PCLKCR13_BITS")
	.dwattr $C$DW$T$44, DW_AT_byte_size(0x02)
$C$DW$218	.dwtag  DW_TAG_member
	.dwattr $C$DW$218, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$218, DW_AT_name("ADC_A")
	.dwattr $C$DW$218, DW_AT_TI_symbol_name("_ADC_A")
	.dwattr $C$DW$218, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$218, DW_AT_bit_size(0x01)
	.dwattr $C$DW$218, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$218, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$219	.dwtag  DW_TAG_member
	.dwattr $C$DW$219, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$219, DW_AT_name("ADC_B")
	.dwattr $C$DW$219, DW_AT_TI_symbol_name("_ADC_B")
	.dwattr $C$DW$219, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$219, DW_AT_bit_size(0x01)
	.dwattr $C$DW$219, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$219, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$220	.dwtag  DW_TAG_member
	.dwattr $C$DW$220, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$220, DW_AT_name("ADC_C")
	.dwattr $C$DW$220, DW_AT_TI_symbol_name("_ADC_C")
	.dwattr $C$DW$220, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$220, DW_AT_bit_size(0x01)
	.dwattr $C$DW$220, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$220, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$221	.dwtag  DW_TAG_member
	.dwattr $C$DW$221, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$221, DW_AT_name("ADC_D")
	.dwattr $C$DW$221, DW_AT_TI_symbol_name("_ADC_D")
	.dwattr $C$DW$221, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$221, DW_AT_bit_size(0x01)
	.dwattr $C$DW$221, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$221, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$222	.dwtag  DW_TAG_member
	.dwattr $C$DW$222, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$222, DW_AT_name("rsvd1")
	.dwattr $C$DW$222, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$222, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$222, DW_AT_bit_size(0x0c)
	.dwattr $C$DW$222, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$222, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$223	.dwtag  DW_TAG_member
	.dwattr $C$DW$223, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$223, DW_AT_name("rsvd2")
	.dwattr $C$DW$223, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$223, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$223, DW_AT_bit_size(0x10)
	.dwattr $C$DW$223, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$223, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$44


$C$DW$T$45	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$45, DW_AT_name("PCLKCR13_REG")
	.dwattr $C$DW$T$45, DW_AT_byte_size(0x02)
$C$DW$224	.dwtag  DW_TAG_member
	.dwattr $C$DW$224, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$224, DW_AT_name("all")
	.dwattr $C$DW$224, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$224, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$224, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$225	.dwtag  DW_TAG_member
	.dwattr $C$DW$225, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$225, DW_AT_name("bit")
	.dwattr $C$DW$225, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$225, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$225, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$45


$C$DW$T$46	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$46, DW_AT_name("PCLKCR14_BITS")
	.dwattr $C$DW$T$46, DW_AT_byte_size(0x02)
$C$DW$226	.dwtag  DW_TAG_member
	.dwattr $C$DW$226, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$226, DW_AT_name("CMPSS1")
	.dwattr $C$DW$226, DW_AT_TI_symbol_name("_CMPSS1")
	.dwattr $C$DW$226, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$226, DW_AT_bit_size(0x01)
	.dwattr $C$DW$226, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$226, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$227	.dwtag  DW_TAG_member
	.dwattr $C$DW$227, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$227, DW_AT_name("CMPSS2")
	.dwattr $C$DW$227, DW_AT_TI_symbol_name("_CMPSS2")
	.dwattr $C$DW$227, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$227, DW_AT_bit_size(0x01)
	.dwattr $C$DW$227, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$227, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$228	.dwtag  DW_TAG_member
	.dwattr $C$DW$228, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$228, DW_AT_name("CMPSS3")
	.dwattr $C$DW$228, DW_AT_TI_symbol_name("_CMPSS3")
	.dwattr $C$DW$228, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$228, DW_AT_bit_size(0x01)
	.dwattr $C$DW$228, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$228, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$229	.dwtag  DW_TAG_member
	.dwattr $C$DW$229, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$229, DW_AT_name("CMPSS4")
	.dwattr $C$DW$229, DW_AT_TI_symbol_name("_CMPSS4")
	.dwattr $C$DW$229, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$229, DW_AT_bit_size(0x01)
	.dwattr $C$DW$229, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$229, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$230	.dwtag  DW_TAG_member
	.dwattr $C$DW$230, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$230, DW_AT_name("CMPSS5")
	.dwattr $C$DW$230, DW_AT_TI_symbol_name("_CMPSS5")
	.dwattr $C$DW$230, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$230, DW_AT_bit_size(0x01)
	.dwattr $C$DW$230, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$230, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$231	.dwtag  DW_TAG_member
	.dwattr $C$DW$231, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$231, DW_AT_name("CMPSS6")
	.dwattr $C$DW$231, DW_AT_TI_symbol_name("_CMPSS6")
	.dwattr $C$DW$231, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$231, DW_AT_bit_size(0x01)
	.dwattr $C$DW$231, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$231, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$232	.dwtag  DW_TAG_member
	.dwattr $C$DW$232, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$232, DW_AT_name("CMPSS7")
	.dwattr $C$DW$232, DW_AT_TI_symbol_name("_CMPSS7")
	.dwattr $C$DW$232, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$232, DW_AT_bit_size(0x01)
	.dwattr $C$DW$232, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$232, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$233	.dwtag  DW_TAG_member
	.dwattr $C$DW$233, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$233, DW_AT_name("CMPSS8")
	.dwattr $C$DW$233, DW_AT_TI_symbol_name("_CMPSS8")
	.dwattr $C$DW$233, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$233, DW_AT_bit_size(0x01)
	.dwattr $C$DW$233, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$233, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$234	.dwtag  DW_TAG_member
	.dwattr $C$DW$234, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$234, DW_AT_name("rsvd1")
	.dwattr $C$DW$234, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$234, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$234, DW_AT_bit_size(0x08)
	.dwattr $C$DW$234, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$234, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$235	.dwtag  DW_TAG_member
	.dwattr $C$DW$235, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$235, DW_AT_name("rsvd2")
	.dwattr $C$DW$235, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$235, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$235, DW_AT_bit_size(0x10)
	.dwattr $C$DW$235, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$235, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$46


$C$DW$T$47	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$47, DW_AT_name("PCLKCR14_REG")
	.dwattr $C$DW$T$47, DW_AT_byte_size(0x02)
$C$DW$236	.dwtag  DW_TAG_member
	.dwattr $C$DW$236, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$236, DW_AT_name("all")
	.dwattr $C$DW$236, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$236, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$236, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$237	.dwtag  DW_TAG_member
	.dwattr $C$DW$237, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$237, DW_AT_name("bit")
	.dwattr $C$DW$237, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$237, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$237, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$47


$C$DW$T$48	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$48, DW_AT_name("PCLKCR16_BITS")
	.dwattr $C$DW$T$48, DW_AT_byte_size(0x02)
$C$DW$238	.dwtag  DW_TAG_member
	.dwattr $C$DW$238, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$238, DW_AT_name("rsvd1")
	.dwattr $C$DW$238, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$238, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$238, DW_AT_bit_size(0x01)
	.dwattr $C$DW$238, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$238, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$239	.dwtag  DW_TAG_member
	.dwattr $C$DW$239, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$239, DW_AT_name("rsvd2")
	.dwattr $C$DW$239, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$239, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$239, DW_AT_bit_size(0x01)
	.dwattr $C$DW$239, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$239, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$240	.dwtag  DW_TAG_member
	.dwattr $C$DW$240, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$240, DW_AT_name("rsvd3")
	.dwattr $C$DW$240, DW_AT_TI_symbol_name("_rsvd3")
	.dwattr $C$DW$240, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$240, DW_AT_bit_size(0x01)
	.dwattr $C$DW$240, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$240, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$241	.dwtag  DW_TAG_member
	.dwattr $C$DW$241, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$241, DW_AT_name("rsvd4")
	.dwattr $C$DW$241, DW_AT_TI_symbol_name("_rsvd4")
	.dwattr $C$DW$241, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$241, DW_AT_bit_size(0x01)
	.dwattr $C$DW$241, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$241, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$242	.dwtag  DW_TAG_member
	.dwattr $C$DW$242, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$242, DW_AT_name("rsvd5")
	.dwattr $C$DW$242, DW_AT_TI_symbol_name("_rsvd5")
	.dwattr $C$DW$242, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$242, DW_AT_bit_size(0x0c)
	.dwattr $C$DW$242, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$242, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$243	.dwtag  DW_TAG_member
	.dwattr $C$DW$243, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$243, DW_AT_name("DAC_A")
	.dwattr $C$DW$243, DW_AT_TI_symbol_name("_DAC_A")
	.dwattr $C$DW$243, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$243, DW_AT_bit_size(0x01)
	.dwattr $C$DW$243, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$243, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$244	.dwtag  DW_TAG_member
	.dwattr $C$DW$244, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$244, DW_AT_name("DAC_B")
	.dwattr $C$DW$244, DW_AT_TI_symbol_name("_DAC_B")
	.dwattr $C$DW$244, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$244, DW_AT_bit_size(0x01)
	.dwattr $C$DW$244, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$244, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$245	.dwtag  DW_TAG_member
	.dwattr $C$DW$245, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$245, DW_AT_name("DAC_C")
	.dwattr $C$DW$245, DW_AT_TI_symbol_name("_DAC_C")
	.dwattr $C$DW$245, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$245, DW_AT_bit_size(0x01)
	.dwattr $C$DW$245, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$245, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$246	.dwtag  DW_TAG_member
	.dwattr $C$DW$246, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$246, DW_AT_name("rsvd6")
	.dwattr $C$DW$246, DW_AT_TI_symbol_name("_rsvd6")
	.dwattr $C$DW$246, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$246, DW_AT_bit_size(0x01)
	.dwattr $C$DW$246, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$246, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$247	.dwtag  DW_TAG_member
	.dwattr $C$DW$247, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$247, DW_AT_name("rsvd7")
	.dwattr $C$DW$247, DW_AT_TI_symbol_name("_rsvd7")
	.dwattr $C$DW$247, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$247, DW_AT_bit_size(0x0c)
	.dwattr $C$DW$247, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$247, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$48


$C$DW$T$49	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$49, DW_AT_name("PCLKCR16_REG")
	.dwattr $C$DW$T$49, DW_AT_byte_size(0x02)
$C$DW$248	.dwtag  DW_TAG_member
	.dwattr $C$DW$248, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$248, DW_AT_name("all")
	.dwattr $C$DW$248, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$248, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$248, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$249	.dwtag  DW_TAG_member
	.dwattr $C$DW$249, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$249, DW_AT_name("bit")
	.dwattr $C$DW$249, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$249, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$249, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$49


$C$DW$T$50	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$50, DW_AT_name("PCLKCR1_BITS")
	.dwattr $C$DW$T$50, DW_AT_byte_size(0x02)
$C$DW$250	.dwtag  DW_TAG_member
	.dwattr $C$DW$250, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$250, DW_AT_name("EMIF1")
	.dwattr $C$DW$250, DW_AT_TI_symbol_name("_EMIF1")
	.dwattr $C$DW$250, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$250, DW_AT_bit_size(0x01)
	.dwattr $C$DW$250, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$250, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$251	.dwtag  DW_TAG_member
	.dwattr $C$DW$251, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$251, DW_AT_name("EMIF2")
	.dwattr $C$DW$251, DW_AT_TI_symbol_name("_EMIF2")
	.dwattr $C$DW$251, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$251, DW_AT_bit_size(0x01)
	.dwattr $C$DW$251, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$251, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$252	.dwtag  DW_TAG_member
	.dwattr $C$DW$252, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$252, DW_AT_name("rsvd1")
	.dwattr $C$DW$252, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$252, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$252, DW_AT_bit_size(0x0e)
	.dwattr $C$DW$252, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$252, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$253	.dwtag  DW_TAG_member
	.dwattr $C$DW$253, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$253, DW_AT_name("rsvd2")
	.dwattr $C$DW$253, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$253, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$253, DW_AT_bit_size(0x10)
	.dwattr $C$DW$253, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$253, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$50


$C$DW$T$51	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$51, DW_AT_name("PCLKCR1_REG")
	.dwattr $C$DW$T$51, DW_AT_byte_size(0x02)
$C$DW$254	.dwtag  DW_TAG_member
	.dwattr $C$DW$254, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$254, DW_AT_name("all")
	.dwattr $C$DW$254, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$254, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$254, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$255	.dwtag  DW_TAG_member
	.dwattr $C$DW$255, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$255, DW_AT_name("bit")
	.dwattr $C$DW$255, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$255, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$255, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$51


$C$DW$T$52	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$52, DW_AT_name("PCLKCR2_BITS")
	.dwattr $C$DW$T$52, DW_AT_byte_size(0x02)
$C$DW$256	.dwtag  DW_TAG_member
	.dwattr $C$DW$256, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$256, DW_AT_name("EPWM1")
	.dwattr $C$DW$256, DW_AT_TI_symbol_name("_EPWM1")
	.dwattr $C$DW$256, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$256, DW_AT_bit_size(0x01)
	.dwattr $C$DW$256, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$256, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$257	.dwtag  DW_TAG_member
	.dwattr $C$DW$257, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$257, DW_AT_name("EPWM2")
	.dwattr $C$DW$257, DW_AT_TI_symbol_name("_EPWM2")
	.dwattr $C$DW$257, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$257, DW_AT_bit_size(0x01)
	.dwattr $C$DW$257, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$257, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$258	.dwtag  DW_TAG_member
	.dwattr $C$DW$258, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$258, DW_AT_name("EPWM3")
	.dwattr $C$DW$258, DW_AT_TI_symbol_name("_EPWM3")
	.dwattr $C$DW$258, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$258, DW_AT_bit_size(0x01)
	.dwattr $C$DW$258, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$258, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$259	.dwtag  DW_TAG_member
	.dwattr $C$DW$259, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$259, DW_AT_name("EPWM4")
	.dwattr $C$DW$259, DW_AT_TI_symbol_name("_EPWM4")
	.dwattr $C$DW$259, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$259, DW_AT_bit_size(0x01)
	.dwattr $C$DW$259, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$259, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$260	.dwtag  DW_TAG_member
	.dwattr $C$DW$260, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$260, DW_AT_name("EPWM5")
	.dwattr $C$DW$260, DW_AT_TI_symbol_name("_EPWM5")
	.dwattr $C$DW$260, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$260, DW_AT_bit_size(0x01)
	.dwattr $C$DW$260, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$260, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$261	.dwtag  DW_TAG_member
	.dwattr $C$DW$261, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$261, DW_AT_name("EPWM6")
	.dwattr $C$DW$261, DW_AT_TI_symbol_name("_EPWM6")
	.dwattr $C$DW$261, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$261, DW_AT_bit_size(0x01)
	.dwattr $C$DW$261, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$261, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$262	.dwtag  DW_TAG_member
	.dwattr $C$DW$262, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$262, DW_AT_name("EPWM7")
	.dwattr $C$DW$262, DW_AT_TI_symbol_name("_EPWM7")
	.dwattr $C$DW$262, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$262, DW_AT_bit_size(0x01)
	.dwattr $C$DW$262, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$262, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$263	.dwtag  DW_TAG_member
	.dwattr $C$DW$263, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$263, DW_AT_name("EPWM8")
	.dwattr $C$DW$263, DW_AT_TI_symbol_name("_EPWM8")
	.dwattr $C$DW$263, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$263, DW_AT_bit_size(0x01)
	.dwattr $C$DW$263, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$263, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$264	.dwtag  DW_TAG_member
	.dwattr $C$DW$264, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$264, DW_AT_name("EPWM9")
	.dwattr $C$DW$264, DW_AT_TI_symbol_name("_EPWM9")
	.dwattr $C$DW$264, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$264, DW_AT_bit_size(0x01)
	.dwattr $C$DW$264, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$264, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$265	.dwtag  DW_TAG_member
	.dwattr $C$DW$265, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$265, DW_AT_name("EPWM10")
	.dwattr $C$DW$265, DW_AT_TI_symbol_name("_EPWM10")
	.dwattr $C$DW$265, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$265, DW_AT_bit_size(0x01)
	.dwattr $C$DW$265, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$265, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$266	.dwtag  DW_TAG_member
	.dwattr $C$DW$266, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$266, DW_AT_name("EPWM11")
	.dwattr $C$DW$266, DW_AT_TI_symbol_name("_EPWM11")
	.dwattr $C$DW$266, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$266, DW_AT_bit_size(0x01)
	.dwattr $C$DW$266, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$266, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$267	.dwtag  DW_TAG_member
	.dwattr $C$DW$267, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$267, DW_AT_name("EPWM12")
	.dwattr $C$DW$267, DW_AT_TI_symbol_name("_EPWM12")
	.dwattr $C$DW$267, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$267, DW_AT_bit_size(0x01)
	.dwattr $C$DW$267, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$267, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$268	.dwtag  DW_TAG_member
	.dwattr $C$DW$268, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$268, DW_AT_name("rsvd1")
	.dwattr $C$DW$268, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$268, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$268, DW_AT_bit_size(0x01)
	.dwattr $C$DW$268, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$268, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$269	.dwtag  DW_TAG_member
	.dwattr $C$DW$269, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$269, DW_AT_name("rsvd2")
	.dwattr $C$DW$269, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$269, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$269, DW_AT_bit_size(0x01)
	.dwattr $C$DW$269, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$269, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$270	.dwtag  DW_TAG_member
	.dwattr $C$DW$270, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$270, DW_AT_name("rsvd3")
	.dwattr $C$DW$270, DW_AT_TI_symbol_name("_rsvd3")
	.dwattr $C$DW$270, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$270, DW_AT_bit_size(0x01)
	.dwattr $C$DW$270, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$270, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$271	.dwtag  DW_TAG_member
	.dwattr $C$DW$271, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$271, DW_AT_name("rsvd4")
	.dwattr $C$DW$271, DW_AT_TI_symbol_name("_rsvd4")
	.dwattr $C$DW$271, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$271, DW_AT_bit_size(0x01)
	.dwattr $C$DW$271, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$271, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$272	.dwtag  DW_TAG_member
	.dwattr $C$DW$272, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$272, DW_AT_name("rsvd5")
	.dwattr $C$DW$272, DW_AT_TI_symbol_name("_rsvd5")
	.dwattr $C$DW$272, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$272, DW_AT_bit_size(0x10)
	.dwattr $C$DW$272, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$272, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$52


$C$DW$T$53	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$53, DW_AT_name("PCLKCR2_REG")
	.dwattr $C$DW$T$53, DW_AT_byte_size(0x02)
$C$DW$273	.dwtag  DW_TAG_member
	.dwattr $C$DW$273, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$273, DW_AT_name("all")
	.dwattr $C$DW$273, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$273, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$273, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$274	.dwtag  DW_TAG_member
	.dwattr $C$DW$274, DW_AT_type(*$C$DW$T$52)
	.dwattr $C$DW$274, DW_AT_name("bit")
	.dwattr $C$DW$274, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$274, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$274, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$53


$C$DW$T$54	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$54, DW_AT_name("PCLKCR3_BITS")
	.dwattr $C$DW$T$54, DW_AT_byte_size(0x02)
$C$DW$275	.dwtag  DW_TAG_member
	.dwattr $C$DW$275, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$275, DW_AT_name("ECAP1")
	.dwattr $C$DW$275, DW_AT_TI_symbol_name("_ECAP1")
	.dwattr $C$DW$275, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$275, DW_AT_bit_size(0x01)
	.dwattr $C$DW$275, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$275, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$276	.dwtag  DW_TAG_member
	.dwattr $C$DW$276, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$276, DW_AT_name("ECAP2")
	.dwattr $C$DW$276, DW_AT_TI_symbol_name("_ECAP2")
	.dwattr $C$DW$276, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$276, DW_AT_bit_size(0x01)
	.dwattr $C$DW$276, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$276, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$277	.dwtag  DW_TAG_member
	.dwattr $C$DW$277, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$277, DW_AT_name("ECAP3")
	.dwattr $C$DW$277, DW_AT_TI_symbol_name("_ECAP3")
	.dwattr $C$DW$277, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$277, DW_AT_bit_size(0x01)
	.dwattr $C$DW$277, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$277, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$278	.dwtag  DW_TAG_member
	.dwattr $C$DW$278, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$278, DW_AT_name("ECAP4")
	.dwattr $C$DW$278, DW_AT_TI_symbol_name("_ECAP4")
	.dwattr $C$DW$278, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$278, DW_AT_bit_size(0x01)
	.dwattr $C$DW$278, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$278, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$279	.dwtag  DW_TAG_member
	.dwattr $C$DW$279, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$279, DW_AT_name("ECAP5")
	.dwattr $C$DW$279, DW_AT_TI_symbol_name("_ECAP5")
	.dwattr $C$DW$279, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$279, DW_AT_bit_size(0x01)
	.dwattr $C$DW$279, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$279, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$280	.dwtag  DW_TAG_member
	.dwattr $C$DW$280, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$280, DW_AT_name("ECAP6")
	.dwattr $C$DW$280, DW_AT_TI_symbol_name("_ECAP6")
	.dwattr $C$DW$280, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$280, DW_AT_bit_size(0x01)
	.dwattr $C$DW$280, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$280, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$281	.dwtag  DW_TAG_member
	.dwattr $C$DW$281, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$281, DW_AT_name("rsvd1")
	.dwattr $C$DW$281, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$281, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$281, DW_AT_bit_size(0x01)
	.dwattr $C$DW$281, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$281, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$282	.dwtag  DW_TAG_member
	.dwattr $C$DW$282, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$282, DW_AT_name("rsvd2")
	.dwattr $C$DW$282, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$282, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$282, DW_AT_bit_size(0x01)
	.dwattr $C$DW$282, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$282, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$283	.dwtag  DW_TAG_member
	.dwattr $C$DW$283, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$283, DW_AT_name("rsvd3")
	.dwattr $C$DW$283, DW_AT_TI_symbol_name("_rsvd3")
	.dwattr $C$DW$283, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$283, DW_AT_bit_size(0x08)
	.dwattr $C$DW$283, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$283, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$284	.dwtag  DW_TAG_member
	.dwattr $C$DW$284, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$284, DW_AT_name("rsvd4")
	.dwattr $C$DW$284, DW_AT_TI_symbol_name("_rsvd4")
	.dwattr $C$DW$284, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$284, DW_AT_bit_size(0x10)
	.dwattr $C$DW$284, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$284, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$54


$C$DW$T$55	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$55, DW_AT_name("PCLKCR3_REG")
	.dwattr $C$DW$T$55, DW_AT_byte_size(0x02)
$C$DW$285	.dwtag  DW_TAG_member
	.dwattr $C$DW$285, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$285, DW_AT_name("all")
	.dwattr $C$DW$285, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$285, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$285, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$286	.dwtag  DW_TAG_member
	.dwattr $C$DW$286, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$286, DW_AT_name("bit")
	.dwattr $C$DW$286, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$286, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$286, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$55


$C$DW$T$56	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$56, DW_AT_name("PCLKCR4_BITS")
	.dwattr $C$DW$T$56, DW_AT_byte_size(0x02)
$C$DW$287	.dwtag  DW_TAG_member
	.dwattr $C$DW$287, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$287, DW_AT_name("EQEP1")
	.dwattr $C$DW$287, DW_AT_TI_symbol_name("_EQEP1")
	.dwattr $C$DW$287, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$287, DW_AT_bit_size(0x01)
	.dwattr $C$DW$287, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$287, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$288	.dwtag  DW_TAG_member
	.dwattr $C$DW$288, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$288, DW_AT_name("EQEP2")
	.dwattr $C$DW$288, DW_AT_TI_symbol_name("_EQEP2")
	.dwattr $C$DW$288, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$288, DW_AT_bit_size(0x01)
	.dwattr $C$DW$288, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$288, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$289	.dwtag  DW_TAG_member
	.dwattr $C$DW$289, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$289, DW_AT_name("EQEP3")
	.dwattr $C$DW$289, DW_AT_TI_symbol_name("_EQEP3")
	.dwattr $C$DW$289, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$289, DW_AT_bit_size(0x01)
	.dwattr $C$DW$289, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$289, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$290	.dwtag  DW_TAG_member
	.dwattr $C$DW$290, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$290, DW_AT_name("rsvd1")
	.dwattr $C$DW$290, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$290, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$290, DW_AT_bit_size(0x01)
	.dwattr $C$DW$290, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$290, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$291	.dwtag  DW_TAG_member
	.dwattr $C$DW$291, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$291, DW_AT_name("rsvd2")
	.dwattr $C$DW$291, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$291, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$291, DW_AT_bit_size(0x0c)
	.dwattr $C$DW$291, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$291, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$292	.dwtag  DW_TAG_member
	.dwattr $C$DW$292, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$292, DW_AT_name("rsvd3")
	.dwattr $C$DW$292, DW_AT_TI_symbol_name("_rsvd3")
	.dwattr $C$DW$292, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$292, DW_AT_bit_size(0x10)
	.dwattr $C$DW$292, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$292, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$56


$C$DW$T$57	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$57, DW_AT_name("PCLKCR4_REG")
	.dwattr $C$DW$T$57, DW_AT_byte_size(0x02)
$C$DW$293	.dwtag  DW_TAG_member
	.dwattr $C$DW$293, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$293, DW_AT_name("all")
	.dwattr $C$DW$293, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$293, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$293, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$294	.dwtag  DW_TAG_member
	.dwattr $C$DW$294, DW_AT_type(*$C$DW$T$56)
	.dwattr $C$DW$294, DW_AT_name("bit")
	.dwattr $C$DW$294, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$294, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$294, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$57


$C$DW$T$58	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$58, DW_AT_name("PCLKCR6_BITS")
	.dwattr $C$DW$T$58, DW_AT_byte_size(0x02)
$C$DW$295	.dwtag  DW_TAG_member
	.dwattr $C$DW$295, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$295, DW_AT_name("SD1")
	.dwattr $C$DW$295, DW_AT_TI_symbol_name("_SD1")
	.dwattr $C$DW$295, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$295, DW_AT_bit_size(0x01)
	.dwattr $C$DW$295, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$295, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$296	.dwtag  DW_TAG_member
	.dwattr $C$DW$296, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$296, DW_AT_name("SD2")
	.dwattr $C$DW$296, DW_AT_TI_symbol_name("_SD2")
	.dwattr $C$DW$296, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$296, DW_AT_bit_size(0x01)
	.dwattr $C$DW$296, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$296, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$297	.dwtag  DW_TAG_member
	.dwattr $C$DW$297, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$297, DW_AT_name("rsvd1")
	.dwattr $C$DW$297, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$297, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$297, DW_AT_bit_size(0x01)
	.dwattr $C$DW$297, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$297, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$298	.dwtag  DW_TAG_member
	.dwattr $C$DW$298, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$298, DW_AT_name("rsvd2")
	.dwattr $C$DW$298, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$298, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$298, DW_AT_bit_size(0x01)
	.dwattr $C$DW$298, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$298, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$299	.dwtag  DW_TAG_member
	.dwattr $C$DW$299, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$299, DW_AT_name("rsvd3")
	.dwattr $C$DW$299, DW_AT_TI_symbol_name("_rsvd3")
	.dwattr $C$DW$299, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$299, DW_AT_bit_size(0x01)
	.dwattr $C$DW$299, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$299, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$300	.dwtag  DW_TAG_member
	.dwattr $C$DW$300, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$300, DW_AT_name("rsvd4")
	.dwattr $C$DW$300, DW_AT_TI_symbol_name("_rsvd4")
	.dwattr $C$DW$300, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$300, DW_AT_bit_size(0x01)
	.dwattr $C$DW$300, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$300, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$301	.dwtag  DW_TAG_member
	.dwattr $C$DW$301, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$301, DW_AT_name("rsvd5")
	.dwattr $C$DW$301, DW_AT_TI_symbol_name("_rsvd5")
	.dwattr $C$DW$301, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$301, DW_AT_bit_size(0x01)
	.dwattr $C$DW$301, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$301, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$302	.dwtag  DW_TAG_member
	.dwattr $C$DW$302, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$302, DW_AT_name("rsvd6")
	.dwattr $C$DW$302, DW_AT_TI_symbol_name("_rsvd6")
	.dwattr $C$DW$302, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$302, DW_AT_bit_size(0x01)
	.dwattr $C$DW$302, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$302, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$303	.dwtag  DW_TAG_member
	.dwattr $C$DW$303, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$303, DW_AT_name("rsvd7")
	.dwattr $C$DW$303, DW_AT_TI_symbol_name("_rsvd7")
	.dwattr $C$DW$303, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$303, DW_AT_bit_size(0x08)
	.dwattr $C$DW$303, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$303, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$304	.dwtag  DW_TAG_member
	.dwattr $C$DW$304, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$304, DW_AT_name("rsvd8")
	.dwattr $C$DW$304, DW_AT_TI_symbol_name("_rsvd8")
	.dwattr $C$DW$304, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$304, DW_AT_bit_size(0x10)
	.dwattr $C$DW$304, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$304, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$58


$C$DW$T$59	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$59, DW_AT_name("PCLKCR6_REG")
	.dwattr $C$DW$T$59, DW_AT_byte_size(0x02)
$C$DW$305	.dwtag  DW_TAG_member
	.dwattr $C$DW$305, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$305, DW_AT_name("all")
	.dwattr $C$DW$305, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$305, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$305, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$306	.dwtag  DW_TAG_member
	.dwattr $C$DW$306, DW_AT_type(*$C$DW$T$58)
	.dwattr $C$DW$306, DW_AT_name("bit")
	.dwattr $C$DW$306, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$306, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$306, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$59


$C$DW$T$60	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$60, DW_AT_name("PCLKCR7_BITS")
	.dwattr $C$DW$T$60, DW_AT_byte_size(0x02)
$C$DW$307	.dwtag  DW_TAG_member
	.dwattr $C$DW$307, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$307, DW_AT_name("SCI_A")
	.dwattr $C$DW$307, DW_AT_TI_symbol_name("_SCI_A")
	.dwattr $C$DW$307, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$307, DW_AT_bit_size(0x01)
	.dwattr $C$DW$307, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$307, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$308	.dwtag  DW_TAG_member
	.dwattr $C$DW$308, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$308, DW_AT_name("SCI_B")
	.dwattr $C$DW$308, DW_AT_TI_symbol_name("_SCI_B")
	.dwattr $C$DW$308, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$308, DW_AT_bit_size(0x01)
	.dwattr $C$DW$308, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$308, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$309	.dwtag  DW_TAG_member
	.dwattr $C$DW$309, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$309, DW_AT_name("SCI_C")
	.dwattr $C$DW$309, DW_AT_TI_symbol_name("_SCI_C")
	.dwattr $C$DW$309, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$309, DW_AT_bit_size(0x01)
	.dwattr $C$DW$309, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$309, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$310	.dwtag  DW_TAG_member
	.dwattr $C$DW$310, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$310, DW_AT_name("SCI_D")
	.dwattr $C$DW$310, DW_AT_TI_symbol_name("_SCI_D")
	.dwattr $C$DW$310, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$310, DW_AT_bit_size(0x01)
	.dwattr $C$DW$310, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$310, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$311	.dwtag  DW_TAG_member
	.dwattr $C$DW$311, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$311, DW_AT_name("rsvd1")
	.dwattr $C$DW$311, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$311, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$311, DW_AT_bit_size(0x0c)
	.dwattr $C$DW$311, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$311, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$312	.dwtag  DW_TAG_member
	.dwattr $C$DW$312, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$312, DW_AT_name("rsvd2")
	.dwattr $C$DW$312, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$312, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$312, DW_AT_bit_size(0x10)
	.dwattr $C$DW$312, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$312, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$60


$C$DW$T$61	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$61, DW_AT_name("PCLKCR7_REG")
	.dwattr $C$DW$T$61, DW_AT_byte_size(0x02)
$C$DW$313	.dwtag  DW_TAG_member
	.dwattr $C$DW$313, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$313, DW_AT_name("all")
	.dwattr $C$DW$313, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$313, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$313, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$314	.dwtag  DW_TAG_member
	.dwattr $C$DW$314, DW_AT_type(*$C$DW$T$60)
	.dwattr $C$DW$314, DW_AT_name("bit")
	.dwattr $C$DW$314, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$314, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$314, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$61


$C$DW$T$62	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$62, DW_AT_name("PCLKCR8_BITS")
	.dwattr $C$DW$T$62, DW_AT_byte_size(0x02)
$C$DW$315	.dwtag  DW_TAG_member
	.dwattr $C$DW$315, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$315, DW_AT_name("SPI_A")
	.dwattr $C$DW$315, DW_AT_TI_symbol_name("_SPI_A")
	.dwattr $C$DW$315, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$315, DW_AT_bit_size(0x01)
	.dwattr $C$DW$315, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$315, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$316	.dwtag  DW_TAG_member
	.dwattr $C$DW$316, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$316, DW_AT_name("SPI_B")
	.dwattr $C$DW$316, DW_AT_TI_symbol_name("_SPI_B")
	.dwattr $C$DW$316, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$316, DW_AT_bit_size(0x01)
	.dwattr $C$DW$316, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$316, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$317	.dwtag  DW_TAG_member
	.dwattr $C$DW$317, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$317, DW_AT_name("SPI_C")
	.dwattr $C$DW$317, DW_AT_TI_symbol_name("_SPI_C")
	.dwattr $C$DW$317, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$317, DW_AT_bit_size(0x01)
	.dwattr $C$DW$317, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$317, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$318	.dwtag  DW_TAG_member
	.dwattr $C$DW$318, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$318, DW_AT_name("rsvd1")
	.dwattr $C$DW$318, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$318, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$318, DW_AT_bit_size(0x01)
	.dwattr $C$DW$318, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$318, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$319	.dwtag  DW_TAG_member
	.dwattr $C$DW$319, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$319, DW_AT_name("rsvd2")
	.dwattr $C$DW$319, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$319, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$319, DW_AT_bit_size(0x0c)
	.dwattr $C$DW$319, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$319, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$320	.dwtag  DW_TAG_member
	.dwattr $C$DW$320, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$320, DW_AT_name("rsvd3")
	.dwattr $C$DW$320, DW_AT_TI_symbol_name("_rsvd3")
	.dwattr $C$DW$320, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$320, DW_AT_bit_size(0x01)
	.dwattr $C$DW$320, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$320, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$321	.dwtag  DW_TAG_member
	.dwattr $C$DW$321, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$321, DW_AT_name("rsvd4")
	.dwattr $C$DW$321, DW_AT_TI_symbol_name("_rsvd4")
	.dwattr $C$DW$321, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$321, DW_AT_bit_size(0x01)
	.dwattr $C$DW$321, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$321, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$322	.dwtag  DW_TAG_member
	.dwattr $C$DW$322, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$322, DW_AT_name("rsvd5")
	.dwattr $C$DW$322, DW_AT_TI_symbol_name("_rsvd5")
	.dwattr $C$DW$322, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$322, DW_AT_bit_size(0x0e)
	.dwattr $C$DW$322, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$322, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$62


$C$DW$T$63	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$63, DW_AT_name("PCLKCR8_REG")
	.dwattr $C$DW$T$63, DW_AT_byte_size(0x02)
$C$DW$323	.dwtag  DW_TAG_member
	.dwattr $C$DW$323, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$323, DW_AT_name("all")
	.dwattr $C$DW$323, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$323, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$323, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$324	.dwtag  DW_TAG_member
	.dwattr $C$DW$324, DW_AT_type(*$C$DW$T$62)
	.dwattr $C$DW$324, DW_AT_name("bit")
	.dwattr $C$DW$324, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$324, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$324, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$63


$C$DW$T$64	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$64, DW_AT_name("PCLKCR9_BITS")
	.dwattr $C$DW$T$64, DW_AT_byte_size(0x02)
$C$DW$325	.dwtag  DW_TAG_member
	.dwattr $C$DW$325, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$325, DW_AT_name("I2C_A")
	.dwattr $C$DW$325, DW_AT_TI_symbol_name("_I2C_A")
	.dwattr $C$DW$325, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$325, DW_AT_bit_size(0x01)
	.dwattr $C$DW$325, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$325, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$326	.dwtag  DW_TAG_member
	.dwattr $C$DW$326, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$326, DW_AT_name("I2C_B")
	.dwattr $C$DW$326, DW_AT_TI_symbol_name("_I2C_B")
	.dwattr $C$DW$326, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$326, DW_AT_bit_size(0x01)
	.dwattr $C$DW$326, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$326, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$327	.dwtag  DW_TAG_member
	.dwattr $C$DW$327, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$327, DW_AT_name("rsvd1")
	.dwattr $C$DW$327, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$327, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$327, DW_AT_bit_size(0x0e)
	.dwattr $C$DW$327, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$327, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$328	.dwtag  DW_TAG_member
	.dwattr $C$DW$328, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$328, DW_AT_name("rsvd2")
	.dwattr $C$DW$328, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$328, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$328, DW_AT_bit_size(0x01)
	.dwattr $C$DW$328, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$328, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$329	.dwtag  DW_TAG_member
	.dwattr $C$DW$329, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$329, DW_AT_name("rsvd3")
	.dwattr $C$DW$329, DW_AT_TI_symbol_name("_rsvd3")
	.dwattr $C$DW$329, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$329, DW_AT_bit_size(0x01)
	.dwattr $C$DW$329, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$329, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$330	.dwtag  DW_TAG_member
	.dwattr $C$DW$330, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$330, DW_AT_name("rsvd4")
	.dwattr $C$DW$330, DW_AT_TI_symbol_name("_rsvd4")
	.dwattr $C$DW$330, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$330, DW_AT_bit_size(0x0e)
	.dwattr $C$DW$330, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$330, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$64


$C$DW$T$65	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$65, DW_AT_name("PCLKCR9_REG")
	.dwattr $C$DW$T$65, DW_AT_byte_size(0x02)
$C$DW$331	.dwtag  DW_TAG_member
	.dwattr $C$DW$331, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$331, DW_AT_name("all")
	.dwattr $C$DW$331, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$331, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$331, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$332	.dwtag  DW_TAG_member
	.dwattr $C$DW$332, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$332, DW_AT_name("bit")
	.dwattr $C$DW$332, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$332, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$332, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$65


$C$DW$T$66	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$66, DW_AT_name("PIEVERRADDR_BITS")
	.dwattr $C$DW$T$66, DW_AT_byte_size(0x02)
$C$DW$333	.dwtag  DW_TAG_member
	.dwattr $C$DW$333, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$333, DW_AT_name("ADDR")
	.dwattr $C$DW$333, DW_AT_TI_symbol_name("_ADDR")
	.dwattr $C$DW$333, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$333, DW_AT_bit_size(0x16)
	.dwattr $C$DW$333, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$333, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$334	.dwtag  DW_TAG_member
	.dwattr $C$DW$334, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$334, DW_AT_name("rsvd1")
	.dwattr $C$DW$334, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$334, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$334, DW_AT_bit_size(0x0a)
	.dwattr $C$DW$334, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$334, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$66


$C$DW$T$67	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$67, DW_AT_name("PIEVERRADDR_REG")
	.dwattr $C$DW$T$67, DW_AT_byte_size(0x02)
$C$DW$335	.dwtag  DW_TAG_member
	.dwattr $C$DW$335, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$335, DW_AT_name("all")
	.dwattr $C$DW$335, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$335, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$335, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$336	.dwtag  DW_TAG_member
	.dwattr $C$DW$336, DW_AT_type(*$C$DW$T$66)
	.dwattr $C$DW$336, DW_AT_name("bit")
	.dwattr $C$DW$336, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$336, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$336, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$67


$C$DW$T$68	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$68, DW_AT_name("RESC_BITS")
	.dwattr $C$DW$T$68, DW_AT_byte_size(0x02)
$C$DW$337	.dwtag  DW_TAG_member
	.dwattr $C$DW$337, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$337, DW_AT_name("POR")
	.dwattr $C$DW$337, DW_AT_TI_symbol_name("_POR")
	.dwattr $C$DW$337, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$337, DW_AT_bit_size(0x01)
	.dwattr $C$DW$337, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$337, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$338	.dwtag  DW_TAG_member
	.dwattr $C$DW$338, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$338, DW_AT_name("XRSn")
	.dwattr $C$DW$338, DW_AT_TI_symbol_name("_XRSn")
	.dwattr $C$DW$338, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$338, DW_AT_bit_size(0x01)
	.dwattr $C$DW$338, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$338, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$339	.dwtag  DW_TAG_member
	.dwattr $C$DW$339, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$339, DW_AT_name("WDRSn")
	.dwattr $C$DW$339, DW_AT_TI_symbol_name("_WDRSn")
	.dwattr $C$DW$339, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$339, DW_AT_bit_size(0x01)
	.dwattr $C$DW$339, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$339, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$340	.dwtag  DW_TAG_member
	.dwattr $C$DW$340, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$340, DW_AT_name("NMIWDRSn")
	.dwattr $C$DW$340, DW_AT_TI_symbol_name("_NMIWDRSn")
	.dwattr $C$DW$340, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$340, DW_AT_bit_size(0x01)
	.dwattr $C$DW$340, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$340, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$341	.dwtag  DW_TAG_member
	.dwattr $C$DW$341, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$341, DW_AT_name("rsvd1")
	.dwattr $C$DW$341, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$341, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$341, DW_AT_bit_size(0x01)
	.dwattr $C$DW$341, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$341, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$342	.dwtag  DW_TAG_member
	.dwattr $C$DW$342, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$342, DW_AT_name("HWBISTn")
	.dwattr $C$DW$342, DW_AT_TI_symbol_name("_HWBISTn")
	.dwattr $C$DW$342, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$342, DW_AT_bit_size(0x01)
	.dwattr $C$DW$342, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$342, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$343	.dwtag  DW_TAG_member
	.dwattr $C$DW$343, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$343, DW_AT_name("HIBRESETn")
	.dwattr $C$DW$343, DW_AT_TI_symbol_name("_HIBRESETn")
	.dwattr $C$DW$343, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$343, DW_AT_bit_size(0x01)
	.dwattr $C$DW$343, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$343, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$344	.dwtag  DW_TAG_member
	.dwattr $C$DW$344, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$344, DW_AT_name("rsvd2")
	.dwattr $C$DW$344, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$344, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$344, DW_AT_bit_size(0x01)
	.dwattr $C$DW$344, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$344, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$345	.dwtag  DW_TAG_member
	.dwattr $C$DW$345, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$345, DW_AT_name("SCCRESETn")
	.dwattr $C$DW$345, DW_AT_TI_symbol_name("_SCCRESETn")
	.dwattr $C$DW$345, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$345, DW_AT_bit_size(0x01)
	.dwattr $C$DW$345, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$345, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$346	.dwtag  DW_TAG_member
	.dwattr $C$DW$346, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$346, DW_AT_name("rsvd3")
	.dwattr $C$DW$346, DW_AT_TI_symbol_name("_rsvd3")
	.dwattr $C$DW$346, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$346, DW_AT_bit_size(0x07)
	.dwattr $C$DW$346, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$346, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$347	.dwtag  DW_TAG_member
	.dwattr $C$DW$347, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$347, DW_AT_name("rsvd4")
	.dwattr $C$DW$347, DW_AT_TI_symbol_name("_rsvd4")
	.dwattr $C$DW$347, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$347, DW_AT_bit_size(0x0e)
	.dwattr $C$DW$347, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$347, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$348	.dwtag  DW_TAG_member
	.dwattr $C$DW$348, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$348, DW_AT_name("XRSn_pin_status")
	.dwattr $C$DW$348, DW_AT_TI_symbol_name("_XRSn_pin_status")
	.dwattr $C$DW$348, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$348, DW_AT_bit_size(0x01)
	.dwattr $C$DW$348, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$348, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$349	.dwtag  DW_TAG_member
	.dwattr $C$DW$349, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$349, DW_AT_name("TRSTn_pin_status")
	.dwattr $C$DW$349, DW_AT_TI_symbol_name("_TRSTn_pin_status")
	.dwattr $C$DW$349, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$349, DW_AT_bit_size(0x01)
	.dwattr $C$DW$349, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$349, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$68


$C$DW$T$69	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$69, DW_AT_name("RESC_REG")
	.dwattr $C$DW$T$69, DW_AT_byte_size(0x02)
$C$DW$350	.dwtag  DW_TAG_member
	.dwattr $C$DW$350, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$350, DW_AT_name("all")
	.dwattr $C$DW$350, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$350, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$350, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$351	.dwtag  DW_TAG_member
	.dwattr $C$DW$351, DW_AT_type(*$C$DW$T$68)
	.dwattr $C$DW$351, DW_AT_name("bit")
	.dwattr $C$DW$351, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$351, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$351, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$69


$C$DW$T$70	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$70, DW_AT_name("SECMSEL_BITS")
	.dwattr $C$DW$T$70, DW_AT_byte_size(0x02)
$C$DW$352	.dwtag  DW_TAG_member
	.dwattr $C$DW$352, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$352, DW_AT_name("PF1SEL")
	.dwattr $C$DW$352, DW_AT_TI_symbol_name("_PF1SEL")
	.dwattr $C$DW$352, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$352, DW_AT_bit_size(0x02)
	.dwattr $C$DW$352, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$352, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$353	.dwtag  DW_TAG_member
	.dwattr $C$DW$353, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$353, DW_AT_name("PF2SEL")
	.dwattr $C$DW$353, DW_AT_TI_symbol_name("_PF2SEL")
	.dwattr $C$DW$353, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$353, DW_AT_bit_size(0x02)
	.dwattr $C$DW$353, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$353, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$354	.dwtag  DW_TAG_member
	.dwattr $C$DW$354, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$354, DW_AT_name("rsvd1")
	.dwattr $C$DW$354, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$354, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$354, DW_AT_bit_size(0x02)
	.dwattr $C$DW$354, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$354, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$355	.dwtag  DW_TAG_member
	.dwattr $C$DW$355, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$355, DW_AT_name("rsvd2")
	.dwattr $C$DW$355, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$355, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$355, DW_AT_bit_size(0x02)
	.dwattr $C$DW$355, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$355, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$356	.dwtag  DW_TAG_member
	.dwattr $C$DW$356, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$356, DW_AT_name("rsvd3")
	.dwattr $C$DW$356, DW_AT_TI_symbol_name("_rsvd3")
	.dwattr $C$DW$356, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$356, DW_AT_bit_size(0x02)
	.dwattr $C$DW$356, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$356, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$357	.dwtag  DW_TAG_member
	.dwattr $C$DW$357, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$357, DW_AT_name("rsvd4")
	.dwattr $C$DW$357, DW_AT_TI_symbol_name("_rsvd4")
	.dwattr $C$DW$357, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$357, DW_AT_bit_size(0x02)
	.dwattr $C$DW$357, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$357, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$358	.dwtag  DW_TAG_member
	.dwattr $C$DW$358, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$358, DW_AT_name("rsvd5")
	.dwattr $C$DW$358, DW_AT_TI_symbol_name("_rsvd5")
	.dwattr $C$DW$358, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$358, DW_AT_bit_size(0x02)
	.dwattr $C$DW$358, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$358, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$359	.dwtag  DW_TAG_member
	.dwattr $C$DW$359, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$359, DW_AT_name("rsvd6")
	.dwattr $C$DW$359, DW_AT_TI_symbol_name("_rsvd6")
	.dwattr $C$DW$359, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$359, DW_AT_bit_size(0x02)
	.dwattr $C$DW$359, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$359, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$360	.dwtag  DW_TAG_member
	.dwattr $C$DW$360, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$360, DW_AT_name("rsvd7")
	.dwattr $C$DW$360, DW_AT_TI_symbol_name("_rsvd7")
	.dwattr $C$DW$360, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$360, DW_AT_bit_size(0x10)
	.dwattr $C$DW$360, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$360, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$70


$C$DW$T$71	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$71, DW_AT_name("SECMSEL_REG")
	.dwattr $C$DW$T$71, DW_AT_byte_size(0x02)
$C$DW$361	.dwtag  DW_TAG_member
	.dwattr $C$DW$361, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$361, DW_AT_name("all")
	.dwattr $C$DW$361, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$361, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$361, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$362	.dwtag  DW_TAG_member
	.dwattr $C$DW$362, DW_AT_type(*$C$DW$T$70)
	.dwattr $C$DW$362, DW_AT_name("bit")
	.dwattr $C$DW$362, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$362, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$362, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$71


$C$DW$T$72	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$72, DW_AT_name("SPIBRR_BITS")
	.dwattr $C$DW$T$72, DW_AT_byte_size(0x01)
$C$DW$363	.dwtag  DW_TAG_member
	.dwattr $C$DW$363, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$363, DW_AT_name("SPI_BIT_RATE")
	.dwattr $C$DW$363, DW_AT_TI_symbol_name("_SPI_BIT_RATE")
	.dwattr $C$DW$363, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$363, DW_AT_bit_size(0x07)
	.dwattr $C$DW$363, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$363, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$364	.dwtag  DW_TAG_member
	.dwattr $C$DW$364, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$364, DW_AT_name("rsvd1")
	.dwattr $C$DW$364, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$364, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$364, DW_AT_bit_size(0x09)
	.dwattr $C$DW$364, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$364, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$72


$C$DW$T$73	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$73, DW_AT_name("SPIBRR_REG")
	.dwattr $C$DW$T$73, DW_AT_byte_size(0x01)
$C$DW$365	.dwtag  DW_TAG_member
	.dwattr $C$DW$365, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$365, DW_AT_name("all")
	.dwattr $C$DW$365, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$365, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$365, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$366	.dwtag  DW_TAG_member
	.dwattr $C$DW$366, DW_AT_type(*$C$DW$T$72)
	.dwattr $C$DW$366, DW_AT_name("bit")
	.dwattr $C$DW$366, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$366, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$366, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$73


$C$DW$T$74	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$74, DW_AT_name("SPICCR_BITS")
	.dwattr $C$DW$T$74, DW_AT_byte_size(0x01)
$C$DW$367	.dwtag  DW_TAG_member
	.dwattr $C$DW$367, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$367, DW_AT_name("SPICHAR")
	.dwattr $C$DW$367, DW_AT_TI_symbol_name("_SPICHAR")
	.dwattr $C$DW$367, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$367, DW_AT_bit_size(0x04)
	.dwattr $C$DW$367, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$367, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$368	.dwtag  DW_TAG_member
	.dwattr $C$DW$368, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$368, DW_AT_name("SPILBK")
	.dwattr $C$DW$368, DW_AT_TI_symbol_name("_SPILBK")
	.dwattr $C$DW$368, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$368, DW_AT_bit_size(0x01)
	.dwattr $C$DW$368, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$368, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$369	.dwtag  DW_TAG_member
	.dwattr $C$DW$369, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$369, DW_AT_name("HS_MODE")
	.dwattr $C$DW$369, DW_AT_TI_symbol_name("_HS_MODE")
	.dwattr $C$DW$369, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$369, DW_AT_bit_size(0x01)
	.dwattr $C$DW$369, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$369, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$370	.dwtag  DW_TAG_member
	.dwattr $C$DW$370, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$370, DW_AT_name("CLKPOLARITY")
	.dwattr $C$DW$370, DW_AT_TI_symbol_name("_CLKPOLARITY")
	.dwattr $C$DW$370, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$370, DW_AT_bit_size(0x01)
	.dwattr $C$DW$370, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$370, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$371	.dwtag  DW_TAG_member
	.dwattr $C$DW$371, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$371, DW_AT_name("SPISWRESET")
	.dwattr $C$DW$371, DW_AT_TI_symbol_name("_SPISWRESET")
	.dwattr $C$DW$371, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$371, DW_AT_bit_size(0x01)
	.dwattr $C$DW$371, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$371, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$372	.dwtag  DW_TAG_member
	.dwattr $C$DW$372, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$372, DW_AT_name("rsvd1")
	.dwattr $C$DW$372, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$372, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$372, DW_AT_bit_size(0x08)
	.dwattr $C$DW$372, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$372, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$74


$C$DW$T$75	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$75, DW_AT_name("SPICCR_REG")
	.dwattr $C$DW$T$75, DW_AT_byte_size(0x01)
$C$DW$373	.dwtag  DW_TAG_member
	.dwattr $C$DW$373, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$373, DW_AT_name("all")
	.dwattr $C$DW$373, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$373, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$373, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$374	.dwtag  DW_TAG_member
	.dwattr $C$DW$374, DW_AT_type(*$C$DW$T$74)
	.dwattr $C$DW$374, DW_AT_name("bit")
	.dwattr $C$DW$374, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$374, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$374, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$75


$C$DW$T$76	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$76, DW_AT_name("SPICTL_BITS")
	.dwattr $C$DW$T$76, DW_AT_byte_size(0x01)
$C$DW$375	.dwtag  DW_TAG_member
	.dwattr $C$DW$375, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$375, DW_AT_name("SPIINTENA")
	.dwattr $C$DW$375, DW_AT_TI_symbol_name("_SPIINTENA")
	.dwattr $C$DW$375, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$375, DW_AT_bit_size(0x01)
	.dwattr $C$DW$375, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$375, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$376	.dwtag  DW_TAG_member
	.dwattr $C$DW$376, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$376, DW_AT_name("TALK")
	.dwattr $C$DW$376, DW_AT_TI_symbol_name("_TALK")
	.dwattr $C$DW$376, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$376, DW_AT_bit_size(0x01)
	.dwattr $C$DW$376, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$376, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$377	.dwtag  DW_TAG_member
	.dwattr $C$DW$377, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$377, DW_AT_name("MASTER_SLAVE")
	.dwattr $C$DW$377, DW_AT_TI_symbol_name("_MASTER_SLAVE")
	.dwattr $C$DW$377, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$377, DW_AT_bit_size(0x01)
	.dwattr $C$DW$377, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$377, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$378	.dwtag  DW_TAG_member
	.dwattr $C$DW$378, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$378, DW_AT_name("CLK_PHASE")
	.dwattr $C$DW$378, DW_AT_TI_symbol_name("_CLK_PHASE")
	.dwattr $C$DW$378, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$378, DW_AT_bit_size(0x01)
	.dwattr $C$DW$378, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$378, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$379	.dwtag  DW_TAG_member
	.dwattr $C$DW$379, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$379, DW_AT_name("OVERRUNINTENA")
	.dwattr $C$DW$379, DW_AT_TI_symbol_name("_OVERRUNINTENA")
	.dwattr $C$DW$379, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$379, DW_AT_bit_size(0x01)
	.dwattr $C$DW$379, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$379, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$380	.dwtag  DW_TAG_member
	.dwattr $C$DW$380, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$380, DW_AT_name("rsvd1")
	.dwattr $C$DW$380, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$380, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$380, DW_AT_bit_size(0x0b)
	.dwattr $C$DW$380, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$380, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$76


$C$DW$T$77	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$77, DW_AT_name("SPICTL_REG")
	.dwattr $C$DW$T$77, DW_AT_byte_size(0x01)
$C$DW$381	.dwtag  DW_TAG_member
	.dwattr $C$DW$381, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$381, DW_AT_name("all")
	.dwattr $C$DW$381, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$381, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$381, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$382	.dwtag  DW_TAG_member
	.dwattr $C$DW$382, DW_AT_type(*$C$DW$T$76)
	.dwattr $C$DW$382, DW_AT_name("bit")
	.dwattr $C$DW$382, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$382, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$382, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$77


$C$DW$T$78	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$78, DW_AT_name("SPIFFCT_BITS")
	.dwattr $C$DW$T$78, DW_AT_byte_size(0x01)
$C$DW$383	.dwtag  DW_TAG_member
	.dwattr $C$DW$383, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$383, DW_AT_name("TXDLY")
	.dwattr $C$DW$383, DW_AT_TI_symbol_name("_TXDLY")
	.dwattr $C$DW$383, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$383, DW_AT_bit_size(0x08)
	.dwattr $C$DW$383, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$383, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$384	.dwtag  DW_TAG_member
	.dwattr $C$DW$384, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$384, DW_AT_name("rsvd1")
	.dwattr $C$DW$384, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$384, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$384, DW_AT_bit_size(0x08)
	.dwattr $C$DW$384, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$384, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$78


$C$DW$T$79	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$79, DW_AT_name("SPIFFCT_REG")
	.dwattr $C$DW$T$79, DW_AT_byte_size(0x01)
$C$DW$385	.dwtag  DW_TAG_member
	.dwattr $C$DW$385, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$385, DW_AT_name("all")
	.dwattr $C$DW$385, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$385, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$385, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$386	.dwtag  DW_TAG_member
	.dwattr $C$DW$386, DW_AT_type(*$C$DW$T$78)
	.dwattr $C$DW$386, DW_AT_name("bit")
	.dwattr $C$DW$386, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$386, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$386, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$79


$C$DW$T$80	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$80, DW_AT_name("SPIFFRX_BITS")
	.dwattr $C$DW$T$80, DW_AT_byte_size(0x01)
$C$DW$387	.dwtag  DW_TAG_member
	.dwattr $C$DW$387, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$387, DW_AT_name("RXFFIL")
	.dwattr $C$DW$387, DW_AT_TI_symbol_name("_RXFFIL")
	.dwattr $C$DW$387, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$387, DW_AT_bit_size(0x05)
	.dwattr $C$DW$387, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$387, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$388	.dwtag  DW_TAG_member
	.dwattr $C$DW$388, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$388, DW_AT_name("RXFFIENA")
	.dwattr $C$DW$388, DW_AT_TI_symbol_name("_RXFFIENA")
	.dwattr $C$DW$388, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$388, DW_AT_bit_size(0x01)
	.dwattr $C$DW$388, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$388, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$389	.dwtag  DW_TAG_member
	.dwattr $C$DW$389, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$389, DW_AT_name("RXFFINTCLR")
	.dwattr $C$DW$389, DW_AT_TI_symbol_name("_RXFFINTCLR")
	.dwattr $C$DW$389, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$389, DW_AT_bit_size(0x01)
	.dwattr $C$DW$389, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$389, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$390	.dwtag  DW_TAG_member
	.dwattr $C$DW$390, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$390, DW_AT_name("RXFFINT")
	.dwattr $C$DW$390, DW_AT_TI_symbol_name("_RXFFINT")
	.dwattr $C$DW$390, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$390, DW_AT_bit_size(0x01)
	.dwattr $C$DW$390, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$390, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$391	.dwtag  DW_TAG_member
	.dwattr $C$DW$391, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$391, DW_AT_name("RXFFST")
	.dwattr $C$DW$391, DW_AT_TI_symbol_name("_RXFFST")
	.dwattr $C$DW$391, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$391, DW_AT_bit_size(0x05)
	.dwattr $C$DW$391, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$391, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$392	.dwtag  DW_TAG_member
	.dwattr $C$DW$392, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$392, DW_AT_name("RXFIFORESET")
	.dwattr $C$DW$392, DW_AT_TI_symbol_name("_RXFIFORESET")
	.dwattr $C$DW$392, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$392, DW_AT_bit_size(0x01)
	.dwattr $C$DW$392, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$392, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$393	.dwtag  DW_TAG_member
	.dwattr $C$DW$393, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$393, DW_AT_name("RXFFOVFCLR")
	.dwattr $C$DW$393, DW_AT_TI_symbol_name("_RXFFOVFCLR")
	.dwattr $C$DW$393, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$393, DW_AT_bit_size(0x01)
	.dwattr $C$DW$393, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$393, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$394	.dwtag  DW_TAG_member
	.dwattr $C$DW$394, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$394, DW_AT_name("RXFFOVF")
	.dwattr $C$DW$394, DW_AT_TI_symbol_name("_RXFFOVF")
	.dwattr $C$DW$394, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$394, DW_AT_bit_size(0x01)
	.dwattr $C$DW$394, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$394, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$80


$C$DW$T$81	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$81, DW_AT_name("SPIFFRX_REG")
	.dwattr $C$DW$T$81, DW_AT_byte_size(0x01)
$C$DW$395	.dwtag  DW_TAG_member
	.dwattr $C$DW$395, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$395, DW_AT_name("all")
	.dwattr $C$DW$395, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$395, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$395, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$396	.dwtag  DW_TAG_member
	.dwattr $C$DW$396, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$396, DW_AT_name("bit")
	.dwattr $C$DW$396, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$396, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$396, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$81


$C$DW$T$82	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$82, DW_AT_name("SPIFFTX_BITS")
	.dwattr $C$DW$T$82, DW_AT_byte_size(0x01)
$C$DW$397	.dwtag  DW_TAG_member
	.dwattr $C$DW$397, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$397, DW_AT_name("TXFFIL")
	.dwattr $C$DW$397, DW_AT_TI_symbol_name("_TXFFIL")
	.dwattr $C$DW$397, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$397, DW_AT_bit_size(0x05)
	.dwattr $C$DW$397, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$397, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$398	.dwtag  DW_TAG_member
	.dwattr $C$DW$398, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$398, DW_AT_name("TXFFIENA")
	.dwattr $C$DW$398, DW_AT_TI_symbol_name("_TXFFIENA")
	.dwattr $C$DW$398, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$398, DW_AT_bit_size(0x01)
	.dwattr $C$DW$398, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$398, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$399	.dwtag  DW_TAG_member
	.dwattr $C$DW$399, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$399, DW_AT_name("TXFFINTCLR")
	.dwattr $C$DW$399, DW_AT_TI_symbol_name("_TXFFINTCLR")
	.dwattr $C$DW$399, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$399, DW_AT_bit_size(0x01)
	.dwattr $C$DW$399, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$399, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$400	.dwtag  DW_TAG_member
	.dwattr $C$DW$400, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$400, DW_AT_name("TXFFINT")
	.dwattr $C$DW$400, DW_AT_TI_symbol_name("_TXFFINT")
	.dwattr $C$DW$400, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$400, DW_AT_bit_size(0x01)
	.dwattr $C$DW$400, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$400, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$401	.dwtag  DW_TAG_member
	.dwattr $C$DW$401, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$401, DW_AT_name("TXFFST")
	.dwattr $C$DW$401, DW_AT_TI_symbol_name("_TXFFST")
	.dwattr $C$DW$401, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$401, DW_AT_bit_size(0x05)
	.dwattr $C$DW$401, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$401, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$402	.dwtag  DW_TAG_member
	.dwattr $C$DW$402, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$402, DW_AT_name("TXFIFO")
	.dwattr $C$DW$402, DW_AT_TI_symbol_name("_TXFIFO")
	.dwattr $C$DW$402, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$402, DW_AT_bit_size(0x01)
	.dwattr $C$DW$402, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$402, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$403	.dwtag  DW_TAG_member
	.dwattr $C$DW$403, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$403, DW_AT_name("SPIFFENA")
	.dwattr $C$DW$403, DW_AT_TI_symbol_name("_SPIFFENA")
	.dwattr $C$DW$403, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$403, DW_AT_bit_size(0x01)
	.dwattr $C$DW$403, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$403, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$404	.dwtag  DW_TAG_member
	.dwattr $C$DW$404, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$404, DW_AT_name("SPIRST")
	.dwattr $C$DW$404, DW_AT_TI_symbol_name("_SPIRST")
	.dwattr $C$DW$404, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$404, DW_AT_bit_size(0x01)
	.dwattr $C$DW$404, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$404, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$82


$C$DW$T$83	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$83, DW_AT_name("SPIFFTX_REG")
	.dwattr $C$DW$T$83, DW_AT_byte_size(0x01)
$C$DW$405	.dwtag  DW_TAG_member
	.dwattr $C$DW$405, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$405, DW_AT_name("all")
	.dwattr $C$DW$405, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$405, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$405, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$406	.dwtag  DW_TAG_member
	.dwattr $C$DW$406, DW_AT_type(*$C$DW$T$82)
	.dwattr $C$DW$406, DW_AT_name("bit")
	.dwattr $C$DW$406, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$406, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$406, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$83


$C$DW$T$84	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$84, DW_AT_name("SPIPRI_BITS")
	.dwattr $C$DW$T$84, DW_AT_byte_size(0x01)
$C$DW$407	.dwtag  DW_TAG_member
	.dwattr $C$DW$407, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$407, DW_AT_name("TRIWIRE")
	.dwattr $C$DW$407, DW_AT_TI_symbol_name("_TRIWIRE")
	.dwattr $C$DW$407, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$407, DW_AT_bit_size(0x01)
	.dwattr $C$DW$407, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$407, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$408	.dwtag  DW_TAG_member
	.dwattr $C$DW$408, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$408, DW_AT_name("STEINV")
	.dwattr $C$DW$408, DW_AT_TI_symbol_name("_STEINV")
	.dwattr $C$DW$408, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$408, DW_AT_bit_size(0x01)
	.dwattr $C$DW$408, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$408, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$409	.dwtag  DW_TAG_member
	.dwattr $C$DW$409, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$409, DW_AT_name("rsvd1")
	.dwattr $C$DW$409, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$409, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$409, DW_AT_bit_size(0x02)
	.dwattr $C$DW$409, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$409, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$410	.dwtag  DW_TAG_member
	.dwattr $C$DW$410, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$410, DW_AT_name("FREE")
	.dwattr $C$DW$410, DW_AT_TI_symbol_name("_FREE")
	.dwattr $C$DW$410, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$410, DW_AT_bit_size(0x01)
	.dwattr $C$DW$410, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$410, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$411	.dwtag  DW_TAG_member
	.dwattr $C$DW$411, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$411, DW_AT_name("SOFT")
	.dwattr $C$DW$411, DW_AT_TI_symbol_name("_SOFT")
	.dwattr $C$DW$411, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$411, DW_AT_bit_size(0x01)
	.dwattr $C$DW$411, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$411, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$412	.dwtag  DW_TAG_member
	.dwattr $C$DW$412, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$412, DW_AT_name("rsvd2")
	.dwattr $C$DW$412, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$412, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$412, DW_AT_bit_size(0x01)
	.dwattr $C$DW$412, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$412, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$413	.dwtag  DW_TAG_member
	.dwattr $C$DW$413, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$413, DW_AT_name("rsvd3")
	.dwattr $C$DW$413, DW_AT_TI_symbol_name("_rsvd3")
	.dwattr $C$DW$413, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$413, DW_AT_bit_size(0x09)
	.dwattr $C$DW$413, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$413, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$84


$C$DW$T$85	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$85, DW_AT_name("SPIPRI_REG")
	.dwattr $C$DW$T$85, DW_AT_byte_size(0x01)
$C$DW$414	.dwtag  DW_TAG_member
	.dwattr $C$DW$414, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$414, DW_AT_name("all")
	.dwattr $C$DW$414, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$414, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$414, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$415	.dwtag  DW_TAG_member
	.dwattr $C$DW$415, DW_AT_type(*$C$DW$T$84)
	.dwattr $C$DW$415, DW_AT_name("bit")
	.dwattr $C$DW$415, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$415, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$415, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$85


$C$DW$T$86	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$86, DW_AT_name("SPISTS_BITS")
	.dwattr $C$DW$T$86, DW_AT_byte_size(0x01)
$C$DW$416	.dwtag  DW_TAG_member
	.dwattr $C$DW$416, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$416, DW_AT_name("rsvd1")
	.dwattr $C$DW$416, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$416, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$416, DW_AT_bit_size(0x05)
	.dwattr $C$DW$416, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$416, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$417	.dwtag  DW_TAG_member
	.dwattr $C$DW$417, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$417, DW_AT_name("BUFFULL_FLAG")
	.dwattr $C$DW$417, DW_AT_TI_symbol_name("_BUFFULL_FLAG")
	.dwattr $C$DW$417, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$417, DW_AT_bit_size(0x01)
	.dwattr $C$DW$417, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$417, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$418	.dwtag  DW_TAG_member
	.dwattr $C$DW$418, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$418, DW_AT_name("INT_FLAG")
	.dwattr $C$DW$418, DW_AT_TI_symbol_name("_INT_FLAG")
	.dwattr $C$DW$418, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$418, DW_AT_bit_size(0x01)
	.dwattr $C$DW$418, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$418, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$419	.dwtag  DW_TAG_member
	.dwattr $C$DW$419, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$419, DW_AT_name("OVERRUN_FLAG")
	.dwattr $C$DW$419, DW_AT_TI_symbol_name("_OVERRUN_FLAG")
	.dwattr $C$DW$419, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$419, DW_AT_bit_size(0x01)
	.dwattr $C$DW$419, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$419, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$420	.dwtag  DW_TAG_member
	.dwattr $C$DW$420, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$420, DW_AT_name("rsvd2")
	.dwattr $C$DW$420, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$420, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$420, DW_AT_bit_size(0x08)
	.dwattr $C$DW$420, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$420, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$86


$C$DW$T$87	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$87, DW_AT_name("SPISTS_REG")
	.dwattr $C$DW$T$87, DW_AT_byte_size(0x01)
$C$DW$421	.dwtag  DW_TAG_member
	.dwattr $C$DW$421, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$421, DW_AT_name("all")
	.dwattr $C$DW$421, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$421, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$421, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$422	.dwtag  DW_TAG_member
	.dwattr $C$DW$422, DW_AT_type(*$C$DW$T$86)
	.dwattr $C$DW$422, DW_AT_name("bit")
	.dwattr $C$DW$422, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$422, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$422, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$87


$C$DW$T$88	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$88, DW_AT_name("SPI_REGS")
	.dwattr $C$DW$T$88, DW_AT_byte_size(0x10)
$C$DW$423	.dwtag  DW_TAG_member
	.dwattr $C$DW$423, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$423, DW_AT_name("SPICCR")
	.dwattr $C$DW$423, DW_AT_TI_symbol_name("_SPICCR")
	.dwattr $C$DW$423, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$423, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$424	.dwtag  DW_TAG_member
	.dwattr $C$DW$424, DW_AT_type(*$C$DW$T$77)
	.dwattr $C$DW$424, DW_AT_name("SPICTL")
	.dwattr $C$DW$424, DW_AT_TI_symbol_name("_SPICTL")
	.dwattr $C$DW$424, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$424, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$425	.dwtag  DW_TAG_member
	.dwattr $C$DW$425, DW_AT_type(*$C$DW$T$87)
	.dwattr $C$DW$425, DW_AT_name("SPISTS")
	.dwattr $C$DW$425, DW_AT_TI_symbol_name("_SPISTS")
	.dwattr $C$DW$425, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$425, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$426	.dwtag  DW_TAG_member
	.dwattr $C$DW$426, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$426, DW_AT_name("rsvd1")
	.dwattr $C$DW$426, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$426, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$426, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$427	.dwtag  DW_TAG_member
	.dwattr $C$DW$427, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$427, DW_AT_name("SPIBRR")
	.dwattr $C$DW$427, DW_AT_TI_symbol_name("_SPIBRR")
	.dwattr $C$DW$427, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$427, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$428	.dwtag  DW_TAG_member
	.dwattr $C$DW$428, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$428, DW_AT_name("rsvd2")
	.dwattr $C$DW$428, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$428, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$428, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$429	.dwtag  DW_TAG_member
	.dwattr $C$DW$429, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$429, DW_AT_name("SPIRXEMU")
	.dwattr $C$DW$429, DW_AT_TI_symbol_name("_SPIRXEMU")
	.dwattr $C$DW$429, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$429, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$430	.dwtag  DW_TAG_member
	.dwattr $C$DW$430, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$430, DW_AT_name("SPIRXBUF")
	.dwattr $C$DW$430, DW_AT_TI_symbol_name("_SPIRXBUF")
	.dwattr $C$DW$430, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr $C$DW$430, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$431	.dwtag  DW_TAG_member
	.dwattr $C$DW$431, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$431, DW_AT_name("SPITXBUF")
	.dwattr $C$DW$431, DW_AT_TI_symbol_name("_SPITXBUF")
	.dwattr $C$DW$431, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$431, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$432	.dwtag  DW_TAG_member
	.dwattr $C$DW$432, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$432, DW_AT_name("SPIDAT")
	.dwattr $C$DW$432, DW_AT_TI_symbol_name("_SPIDAT")
	.dwattr $C$DW$432, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr $C$DW$432, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$433	.dwtag  DW_TAG_member
	.dwattr $C$DW$433, DW_AT_type(*$C$DW$T$83)
	.dwattr $C$DW$433, DW_AT_name("SPIFFTX")
	.dwattr $C$DW$433, DW_AT_TI_symbol_name("_SPIFFTX")
	.dwattr $C$DW$433, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$433, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$434	.dwtag  DW_TAG_member
	.dwattr $C$DW$434, DW_AT_type(*$C$DW$T$81)
	.dwattr $C$DW$434, DW_AT_name("SPIFFRX")
	.dwattr $C$DW$434, DW_AT_TI_symbol_name("_SPIFFRX")
	.dwattr $C$DW$434, DW_AT_data_member_location[DW_OP_plus_uconst 0xb]
	.dwattr $C$DW$434, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$435	.dwtag  DW_TAG_member
	.dwattr $C$DW$435, DW_AT_type(*$C$DW$T$79)
	.dwattr $C$DW$435, DW_AT_name("SPIFFCT")
	.dwattr $C$DW$435, DW_AT_TI_symbol_name("_SPIFFCT")
	.dwattr $C$DW$435, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$435, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$436	.dwtag  DW_TAG_member
	.dwattr $C$DW$436, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$436, DW_AT_name("rsvd3")
	.dwattr $C$DW$436, DW_AT_TI_symbol_name("_rsvd3")
	.dwattr $C$DW$436, DW_AT_data_member_location[DW_OP_plus_uconst 0xd]
	.dwattr $C$DW$436, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$437	.dwtag  DW_TAG_member
	.dwattr $C$DW$437, DW_AT_type(*$C$DW$T$85)
	.dwattr $C$DW$437, DW_AT_name("SPIPRI")
	.dwattr $C$DW$437, DW_AT_TI_symbol_name("_SPIPRI")
	.dwattr $C$DW$437, DW_AT_data_member_location[DW_OP_plus_uconst 0xf]
	.dwattr $C$DW$437, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$88

$C$DW$438	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$438, DW_AT_type(*$C$DW$T$88)

$C$DW$T$99	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$99, DW_AT_type(*$C$DW$438)


$C$DW$T$89	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$89, DW_AT_name("TMR2CLKCTL_BITS")
	.dwattr $C$DW$T$89, DW_AT_byte_size(0x02)
$C$DW$439	.dwtag  DW_TAG_member
	.dwattr $C$DW$439, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$439, DW_AT_name("TMR2CLKSRCSEL")
	.dwattr $C$DW$439, DW_AT_TI_symbol_name("_TMR2CLKSRCSEL")
	.dwattr $C$DW$439, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$439, DW_AT_bit_size(0x03)
	.dwattr $C$DW$439, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$439, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$440	.dwtag  DW_TAG_member
	.dwattr $C$DW$440, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$440, DW_AT_name("TMR2CLKPRESCALE")
	.dwattr $C$DW$440, DW_AT_TI_symbol_name("_TMR2CLKPRESCALE")
	.dwattr $C$DW$440, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$440, DW_AT_bit_size(0x03)
	.dwattr $C$DW$440, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$440, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$441	.dwtag  DW_TAG_member
	.dwattr $C$DW$441, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$441, DW_AT_name("rsvd1")
	.dwattr $C$DW$441, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$441, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$441, DW_AT_bit_size(0x0a)
	.dwattr $C$DW$441, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$441, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$442	.dwtag  DW_TAG_member
	.dwattr $C$DW$442, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$442, DW_AT_name("rsvd2")
	.dwattr $C$DW$442, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$442, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$442, DW_AT_bit_size(0x10)
	.dwattr $C$DW$442, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$442, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$89


$C$DW$T$90	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$90, DW_AT_name("TMR2CLKCTL_REG")
	.dwattr $C$DW$T$90, DW_AT_byte_size(0x02)
$C$DW$443	.dwtag  DW_TAG_member
	.dwattr $C$DW$443, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$443, DW_AT_name("all")
	.dwattr $C$DW$443, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$443, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$443, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$444	.dwtag  DW_TAG_member
	.dwattr $C$DW$444, DW_AT_type(*$C$DW$T$89)
	.dwattr $C$DW$444, DW_AT_name("bit")
	.dwattr $C$DW$444, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$444, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$444, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$90


$C$DW$T$93	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$93, DW_AT_name("_MW_SpiObj")
	.dwattr $C$DW$T$93, DW_AT_byte_size(0x06)
$C$DW$445	.dwtag  DW_TAG_member
	.dwattr $C$DW$445, DW_AT_type(*$C$DW$T$92)
	.dwattr $C$DW$445, DW_AT_name("spi_base_address")
	.dwattr $C$DW$445, DW_AT_TI_symbol_name("_spi_base_address")
	.dwattr $C$DW$445, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$445, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$446	.dwtag  DW_TAG_member
	.dwattr $C$DW$446, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$446, DW_AT_name("spi_clk_mode")
	.dwattr $C$DW$446, DW_AT_TI_symbol_name("_spi_clk_mode")
	.dwattr $C$DW$446, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$446, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$447	.dwtag  DW_TAG_member
	.dwattr $C$DW$447, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$447, DW_AT_name("charLength")
	.dwattr $C$DW$447, DW_AT_TI_symbol_name("_charLength")
	.dwattr $C$DW$447, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$447, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$448	.dwtag  DW_TAG_member
	.dwattr $C$DW$448, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$448, DW_AT_name("fifoLevel")
	.dwattr $C$DW$448, DW_AT_TI_symbol_name("_fifoLevel")
	.dwattr $C$DW$448, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$448, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$449	.dwtag  DW_TAG_member
	.dwattr $C$DW$449, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$449, DW_AT_name("txInterrupt")
	.dwattr $C$DW$449, DW_AT_TI_symbol_name("_txInterrupt")
	.dwattr $C$DW$449, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$449, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$93

$C$DW$T$101	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$101, DW_AT_name("MW_SpiObj")
	.dwattr $C$DW$T$101, DW_AT_type(*$C$DW$T$93)
	.dwattr $C$DW$T$101, DW_AT_language(DW_LANG_C)

$C$DW$T$102	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$102, DW_AT_type(*$C$DW$T$101)
	.dwattr $C$DW$T$102, DW_AT_address_class(0x20)

$C$DW$T$103	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$103, DW_AT_name("MW_SpiHandle")
	.dwattr $C$DW$T$103, DW_AT_type(*$C$DW$T$102)
	.dwattr $C$DW$T$103, DW_AT_language(DW_LANG_C)


$C$DW$T$105	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$105, DW_AT_type(*$C$DW$T$101)
	.dwattr $C$DW$T$105, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$105, DW_AT_byte_size(0x18)
$C$DW$450	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$450, DW_AT_upper_bound(0x03)

	.dwendtag $C$DW$T$105

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
	.dwattr $C$DW$T$23, DW_AT_byte_size(0x04)
$C$DW$451	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$451, DW_AT_upper_bound(0x03)

	.dwendtag $C$DW$T$23


$C$DW$T$24	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$24, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$24, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$24, DW_AT_byte_size(0x16)
$C$DW$452	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$452, DW_AT_upper_bound(0x15)

	.dwendtag $C$DW$T$24


$C$DW$T$25	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$25, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$25, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$25, DW_AT_byte_size(0x02)
$C$DW$453	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$453, DW_AT_upper_bound(0x01)

	.dwendtag $C$DW$T$25


$C$DW$T$26	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$26, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$26, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$26, DW_AT_byte_size(0x30)
$C$DW$454	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$454, DW_AT_upper_bound(0x2f)

	.dwendtag $C$DW$T$26

$C$DW$T$91	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$91, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$91, DW_AT_address_class(0x20)

$C$DW$T$92	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$92, DW_AT_name("SPI_REG_ADDRESS")
	.dwattr $C$DW$T$92, DW_AT_type(*$C$DW$T$91)
	.dwattr $C$DW$T$92, DW_AT_language(DW_LANG_C)

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

$C$DW$455	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$455, DW_AT_name("AL")
	.dwattr $C$DW$455, DW_AT_location[DW_OP_reg0]

$C$DW$456	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$456, DW_AT_name("AH")
	.dwattr $C$DW$456, DW_AT_location[DW_OP_reg1]

$C$DW$457	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$457, DW_AT_name("PL")
	.dwattr $C$DW$457, DW_AT_location[DW_OP_reg2]

$C$DW$458	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$458, DW_AT_name("PH")
	.dwattr $C$DW$458, DW_AT_location[DW_OP_reg3]

$C$DW$459	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$459, DW_AT_name("SP")
	.dwattr $C$DW$459, DW_AT_location[DW_OP_reg20]

$C$DW$460	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$460, DW_AT_name("XT")
	.dwattr $C$DW$460, DW_AT_location[DW_OP_reg21]

$C$DW$461	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$461, DW_AT_name("T")
	.dwattr $C$DW$461, DW_AT_location[DW_OP_reg22]

$C$DW$462	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$462, DW_AT_name("ST0")
	.dwattr $C$DW$462, DW_AT_location[DW_OP_reg23]

$C$DW$463	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$463, DW_AT_name("ST1")
	.dwattr $C$DW$463, DW_AT_location[DW_OP_reg24]

$C$DW$464	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$464, DW_AT_name("PC")
	.dwattr $C$DW$464, DW_AT_location[DW_OP_reg25]

$C$DW$465	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$465, DW_AT_name("RPC")
	.dwattr $C$DW$465, DW_AT_location[DW_OP_reg26]

$C$DW$466	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$466, DW_AT_name("FP")
	.dwattr $C$DW$466, DW_AT_location[DW_OP_reg28]

$C$DW$467	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$467, DW_AT_name("DP")
	.dwattr $C$DW$467, DW_AT_location[DW_OP_reg29]

$C$DW$468	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$468, DW_AT_name("SXM")
	.dwattr $C$DW$468, DW_AT_location[DW_OP_reg30]

$C$DW$469	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$469, DW_AT_name("PM")
	.dwattr $C$DW$469, DW_AT_location[DW_OP_reg31]

$C$DW$470	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$470, DW_AT_name("OVM")
	.dwattr $C$DW$470, DW_AT_location[DW_OP_regx 0x20]

$C$DW$471	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$471, DW_AT_name("PAGE0")
	.dwattr $C$DW$471, DW_AT_location[DW_OP_regx 0x21]

$C$DW$472	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$472, DW_AT_name("AMODE")
	.dwattr $C$DW$472, DW_AT_location[DW_OP_regx 0x22]

$C$DW$473	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$473, DW_AT_name("EALLOW")
	.dwattr $C$DW$473, DW_AT_location[DW_OP_regx 0x4e]

$C$DW$474	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$474, DW_AT_name("INTM")
	.dwattr $C$DW$474, DW_AT_location[DW_OP_regx 0x23]

$C$DW$475	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$475, DW_AT_name("IFR")
	.dwattr $C$DW$475, DW_AT_location[DW_OP_regx 0x24]

$C$DW$476	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$476, DW_AT_name("IER")
	.dwattr $C$DW$476, DW_AT_location[DW_OP_regx 0x25]

$C$DW$477	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$477, DW_AT_name("V")
	.dwattr $C$DW$477, DW_AT_location[DW_OP_regx 0x26]

$C$DW$478	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$478, DW_AT_name("PSEUDOH")
	.dwattr $C$DW$478, DW_AT_location[DW_OP_regx 0x4c]

$C$DW$479	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$479, DW_AT_name("VOL")
	.dwattr $C$DW$479, DW_AT_location[DW_OP_regx 0x4d]

$C$DW$480	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$480, DW_AT_name("AR0")
	.dwattr $C$DW$480, DW_AT_location[DW_OP_reg4]

$C$DW$481	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$481, DW_AT_name("XAR0")
	.dwattr $C$DW$481, DW_AT_location[DW_OP_reg5]

$C$DW$482	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$482, DW_AT_name("AR1")
	.dwattr $C$DW$482, DW_AT_location[DW_OP_reg6]

$C$DW$483	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$483, DW_AT_name("XAR1")
	.dwattr $C$DW$483, DW_AT_location[DW_OP_reg7]

$C$DW$484	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$484, DW_AT_name("AR2")
	.dwattr $C$DW$484, DW_AT_location[DW_OP_reg8]

$C$DW$485	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$485, DW_AT_name("XAR2")
	.dwattr $C$DW$485, DW_AT_location[DW_OP_reg9]

$C$DW$486	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$486, DW_AT_name("AR3")
	.dwattr $C$DW$486, DW_AT_location[DW_OP_reg10]

$C$DW$487	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$487, DW_AT_name("XAR3")
	.dwattr $C$DW$487, DW_AT_location[DW_OP_reg11]

$C$DW$488	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$488, DW_AT_name("AR4")
	.dwattr $C$DW$488, DW_AT_location[DW_OP_reg12]

$C$DW$489	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$489, DW_AT_name("XAR4")
	.dwattr $C$DW$489, DW_AT_location[DW_OP_reg13]

$C$DW$490	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$490, DW_AT_name("AR5")
	.dwattr $C$DW$490, DW_AT_location[DW_OP_reg14]

$C$DW$491	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$491, DW_AT_name("XAR5")
	.dwattr $C$DW$491, DW_AT_location[DW_OP_reg15]

$C$DW$492	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$492, DW_AT_name("AR6")
	.dwattr $C$DW$492, DW_AT_location[DW_OP_reg16]

$C$DW$493	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$493, DW_AT_name("XAR6")
	.dwattr $C$DW$493, DW_AT_location[DW_OP_reg17]

$C$DW$494	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$494, DW_AT_name("AR7")
	.dwattr $C$DW$494, DW_AT_location[DW_OP_reg18]

$C$DW$495	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$495, DW_AT_name("XAR7")
	.dwattr $C$DW$495, DW_AT_location[DW_OP_reg19]

$C$DW$496	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$496, DW_AT_name("R0H")
	.dwattr $C$DW$496, DW_AT_location[DW_OP_regx 0x2b]

$C$DW$497	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$497, DW_AT_name("R1H")
	.dwattr $C$DW$497, DW_AT_location[DW_OP_regx 0x2f]

$C$DW$498	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$498, DW_AT_name("R2H")
	.dwattr $C$DW$498, DW_AT_location[DW_OP_regx 0x33]

$C$DW$499	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$499, DW_AT_name("R3H")
	.dwattr $C$DW$499, DW_AT_location[DW_OP_regx 0x37]

$C$DW$500	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$500, DW_AT_name("R4H")
	.dwattr $C$DW$500, DW_AT_location[DW_OP_regx 0x3b]

$C$DW$501	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$501, DW_AT_name("R5H")
	.dwattr $C$DW$501, DW_AT_location[DW_OP_regx 0x3f]

$C$DW$502	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$502, DW_AT_name("R6H")
	.dwattr $C$DW$502, DW_AT_location[DW_OP_regx 0x43]

$C$DW$503	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$503, DW_AT_name("R7H")
	.dwattr $C$DW$503, DW_AT_location[DW_OP_regx 0x47]

$C$DW$504	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$504, DW_AT_name("RB")
	.dwattr $C$DW$504, DW_AT_location[DW_OP_regx 0x4a]

$C$DW$505	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$505, DW_AT_name("STF")
	.dwattr $C$DW$505, DW_AT_location[DW_OP_regx 0x28]

$C$DW$506	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$506, DW_AT_name("FPUHAZ")
	.dwattr $C$DW$506, DW_AT_location[DW_OP_reg27]

$C$DW$507	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$507, DW_AT_name("STF_HWDIV")
	.dwattr $C$DW$507, DW_AT_location[DW_OP_regx 0x4f]

	.dwendtag $C$DW$CU

