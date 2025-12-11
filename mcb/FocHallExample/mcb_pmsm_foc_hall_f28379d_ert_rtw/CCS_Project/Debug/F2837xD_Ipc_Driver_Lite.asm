;***************************************************************
;* TMS320C2000 G3 C/C++ Codegen                               PC v22.6.0.LTS *
;* Date/Time created: Thu Nov 20 18:10:02 2025                 *
;***************************************************************
	.compiler_opts --abi=coffabi --float_support=fpu32 --hll_source=on --mem_model:code=flat --mem_model:data=large --object_format=coff --silicon_errata_fpu1_workaround=off --silicon_version=28 --symdebug:dwarf --symdebug:dwarf_version=3 --tmu_support=tmu0 
	.asg	XAR2, FP

$C$DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr $C$DW$CU, DW_AT_name("C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c")
	.dwattr $C$DW$CU, DW_AT_producer("TI TMS320C2000 G3 C/C++ Codegen PC v22.6.0.LTS Copyright (c) 1996-2018 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("C:\Users\13571\Documents\MATLAB\Examples\R2023b\mcb\FocHallExample\mcb_pmsm_foc_hall_f28379d_ert_rtw\CCS_Project\Debug")
$C$DW$1	.dwtag  DW_TAG_variable
	.dwattr $C$DW$1, DW_AT_name("IpcRegs")
	.dwattr $C$DW$1, DW_AT_TI_symbol_name("_IpcRegs")
	.dwattr $C$DW$1, DW_AT_type(*$C$DW$T$98)
	.dwattr $C$DW$1, DW_AT_declaration
	.dwattr $C$DW$1, DW_AT_external

$C$DW$2	.dwtag  DW_TAG_variable
	.dwattr $C$DW$2, DW_AT_name("MemCfgRegs")
	.dwattr $C$DW$2, DW_AT_TI_symbol_name("_MemCfgRegs")
	.dwattr $C$DW$2, DW_AT_type(*$C$DW$T$99)
	.dwattr $C$DW$2, DW_AT_declaration
	.dwattr $C$DW$2, DW_AT_external

;	D:\Software\CCS\CCS12.2.0.00009_win64\c1220\ccs\tools\compiler\ti-cgt-c2000_22.6.0.LTS\bin\ac2000.exe -@C:\\Users\\13571\\AppData\\Local\\Temp\\{DFE66BB2-A6E1-402A-AEED-30D8DAF1212E} 
	.sect	".text"
	.clink
	.global	_IPCLiteLtoRGetResult

$C$DW$3	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$3, DW_AT_name("IPCLiteLtoRGetResult")
	.dwattr $C$DW$3, DW_AT_low_pc(_IPCLiteLtoRGetResult)
	.dwattr $C$DW$3, DW_AT_high_pc(0x00)
	.dwattr $C$DW$3, DW_AT_TI_symbol_name("_IPCLiteLtoRGetResult")
	.dwattr $C$DW$3, DW_AT_external
	.dwattr $C$DW$3, DW_AT_type(*$C$DW$T$106)
	.dwattr $C$DW$3, DW_AT_TI_begin_file("C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c")
	.dwattr $C$DW$3, DW_AT_TI_begin_line(0x6c)
	.dwattr $C$DW$3, DW_AT_TI_begin_column(0x01)
	.dwattr $C$DW$3, DW_AT_TI_max_frame_size(-8)
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 109,column 1,is_stmt,address _IPCLiteLtoRGetResult,isa 0

	.dwfde $C$DW$CIE, _IPCLiteLtoRGetResult
$C$DW$4	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$4, DW_AT_name("pvData")
	.dwattr $C$DW$4, DW_AT_TI_symbol_name("_pvData")
	.dwattr $C$DW$4, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$4, DW_AT_location[DW_OP_reg12]

$C$DW$5	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$5, DW_AT_name("usLength")
	.dwattr $C$DW$5, DW_AT_TI_symbol_name("_usLength")
	.dwattr $C$DW$5, DW_AT_type(*$C$DW$T$106)
	.dwattr $C$DW$5, DW_AT_location[DW_OP_reg14]

$C$DW$6	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$6, DW_AT_name("ulStatusFlag")
	.dwattr $C$DW$6, DW_AT_TI_symbol_name("_ulStatusFlag")
	.dwattr $C$DW$6, DW_AT_type(*$C$DW$T$102)
	.dwattr $C$DW$6, DW_AT_location[DW_OP_reg0]

;----------------------------------------------------------------------
; 108 | IPCLiteLtoRGetResult (void *pvData, uint16_t usLength, uint32_t ulStatu
;     | sFlag)                                                                 
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _IPCLiteLtoRGetResult         FR SIZE:   6           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  6 Auto,  0 SOE     *
;***************************************************************

_IPCLiteLtoRGetResult:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#6                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -8
$C$DW$7	.dwtag  DW_TAG_variable
	.dwattr $C$DW$7, DW_AT_name("pvData")
	.dwattr $C$DW$7, DW_AT_TI_symbol_name("_pvData")
	.dwattr $C$DW$7, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$7, DW_AT_location[DW_OP_breg20 -2]

$C$DW$8	.dwtag  DW_TAG_variable
	.dwattr $C$DW$8, DW_AT_name("ulStatusFlag")
	.dwattr $C$DW$8, DW_AT_TI_symbol_name("_ulStatusFlag")
	.dwattr $C$DW$8, DW_AT_type(*$C$DW$T$102)
	.dwattr $C$DW$8, DW_AT_location[DW_OP_breg20 -4]

$C$DW$9	.dwtag  DW_TAG_variable
	.dwattr $C$DW$9, DW_AT_name("usLength")
	.dwattr $C$DW$9, DW_AT_TI_symbol_name("_usLength")
	.dwattr $C$DW$9, DW_AT_type(*$C$DW$T$106)
	.dwattr $C$DW$9, DW_AT_location[DW_OP_breg20 -5]

$C$DW$10	.dwtag  DW_TAG_variable
	.dwattr $C$DW$10, DW_AT_name("returnStatus")
	.dwattr $C$DW$10, DW_AT_TI_symbol_name("_returnStatus")
	.dwattr $C$DW$10, DW_AT_type(*$C$DW$T$106)
	.dwattr $C$DW$10, DW_AT_location[DW_OP_breg20 -6]

;----------------------------------------------------------------------
; 110 | uint16_t returnStatus;                                                 
; 112 | //                                                                     
; 113 | // If Remote System never acknowledged Status Task, indicates command  
; 114 | // failure.                                                            
; 115 | //                                                                     
;----------------------------------------------------------------------
        MOV       *-SP[5],AR5           ; [CPU_ALU] |109| 
        MOVL      *-SP[4],ACC           ; [CPU_ALU] |109| 
        MOVL      *-SP[2],XAR4          ; [CPU_ALU] |109| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 116,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 116 | if (IpcRegs.IPCFLG.all & ulStatusFlag)                                 
;----------------------------------------------------------------------
        MOVW      DP,#_IpcRegs+8        ; [CPU_ARAU] 
        AND       AL,@$BLOCKED(_IpcRegs)+8 ; [CPU_ALU] |116| 
        AND       AH,@$BLOCKED(_IpcRegs)+9 ; [CPU_ALU] |116| 
        TEST      ACC                   ; [CPU_ALU] |116| 
        B         $C$L1,EQ              ; [CPU_ALU] |116| 
        ; branchcc occurs ; [] |116| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 118,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 118 | returnStatus = STATUS_FAIL;                                            
; 120 | else                                                                   
; 122 | //                                                                     
; 123 | // Read data.                                                          
; 124 | //                                                                     
;----------------------------------------------------------------------
        MOVB      *-SP[6],#1,UNC        ; [CPU_ALU] |118| 
        B         $C$L4,UNC             ; [CPU_ALU] 
        ; branch occurs ; [] 
$C$L1:    
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 125,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 125 | if (usLength == IPC_LENGTH_16_BITS)                                    
;----------------------------------------------------------------------
        MOV       AL,*-SP[5]            ; [CPU_ALU] |125| 
        CMPB      AL,#1                 ; [CPU_ALU] |125| 
        B         $C$L2,NEQ             ; [CPU_ALU] |125| 
        ; branchcc occurs ; [] |125| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 127,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 127 | *(uint16_t *)pvData = IpcRegs.IPCREMOTEREPLY;                          
;----------------------------------------------------------------------
        MOVL      ACC,@$BLOCKED(_IpcRegs)+22 ; [CPU_ALU] |127| 
        MOV       *+XAR4[0],AL          ; [CPU_ALU] |127| 
        B         $C$L3,UNC             ; [CPU_ALU] 
        ; branch occurs ; [] 
$C$L2:    
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 129,column 14,is_stmt,isa 0
;----------------------------------------------------------------------
; 129 | else if (usLength == IPC_LENGTH_32_BITS)                               
;----------------------------------------------------------------------
        CMPB      AL,#2                 ; [CPU_ALU] |129| 
        B         $C$L3,NEQ             ; [CPU_ALU] |129| 
        ; branchcc occurs ; [] |129| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 131,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 131 | *(uint32_t *)pvData =  IpcRegs.IPCREMOTEREPLY;                         
;----------------------------------------------------------------------
        MOVL      ACC,@$BLOCKED(_IpcRegs)+22 ; [CPU_ALU] |131| 
        MOVL      *+XAR4[0],ACC         ; [CPU_ALU] |131| 
$C$L3:    
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 134,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 134 | returnStatus = STATUS_PASS;                                            
;----------------------------------------------------------------------
        MOV       *-SP[6],#0            ; [CPU_ALU] |134| 
$C$L4:    
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 137,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 137 | return returnStatus;                                                   
;----------------------------------------------------------------------
        MOV       AL,*-SP[6]            ; [CPU_ALU] |137| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 138,column 1,is_stmt,isa 0
        SUBB      SP,#6                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$11	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$11, DW_AT_low_pc(0x00)
	.dwattr $C$DW$11, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$3, DW_AT_TI_end_file("C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c")
	.dwattr $C$DW$3, DW_AT_TI_end_line(0x8a)
	.dwattr $C$DW$3, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$3

	.sect	".text"
	.clink
	.global	_IPCLiteLtoRDataRead

$C$DW$12	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$12, DW_AT_name("IPCLiteLtoRDataRead")
	.dwattr $C$DW$12, DW_AT_low_pc(_IPCLiteLtoRDataRead)
	.dwattr $C$DW$12, DW_AT_high_pc(0x00)
	.dwattr $C$DW$12, DW_AT_TI_symbol_name("_IPCLiteLtoRDataRead")
	.dwattr $C$DW$12, DW_AT_external
	.dwattr $C$DW$12, DW_AT_type(*$C$DW$T$106)
	.dwattr $C$DW$12, DW_AT_TI_begin_file("C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c")
	.dwattr $C$DW$12, DW_AT_TI_begin_line(0xa6)
	.dwattr $C$DW$12, DW_AT_TI_begin_column(0x01)
	.dwattr $C$DW$12, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 168,column 1,is_stmt,address _IPCLiteLtoRDataRead,isa 0

	.dwfde $C$DW$CIE, _IPCLiteLtoRDataRead
$C$DW$13	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$13, DW_AT_name("ulFlag")
	.dwattr $C$DW$13, DW_AT_TI_symbol_name("_ulFlag")
	.dwattr $C$DW$13, DW_AT_type(*$C$DW$T$102)
	.dwattr $C$DW$13, DW_AT_location[DW_OP_reg0]

$C$DW$14	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$14, DW_AT_name("ulAddress")
	.dwattr $C$DW$14, DW_AT_TI_symbol_name("_ulAddress")
	.dwattr $C$DW$14, DW_AT_type(*$C$DW$T$102)
	.dwattr $C$DW$14, DW_AT_location[DW_OP_breg20 -8]

$C$DW$15	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$15, DW_AT_name("usLength")
	.dwattr $C$DW$15, DW_AT_TI_symbol_name("_usLength")
	.dwattr $C$DW$15, DW_AT_type(*$C$DW$T$106)
	.dwattr $C$DW$15, DW_AT_location[DW_OP_reg12]

$C$DW$16	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$16, DW_AT_name("ulStatusFlag")
	.dwattr $C$DW$16, DW_AT_TI_symbol_name("_ulStatusFlag")
	.dwattr $C$DW$16, DW_AT_type(*$C$DW$T$102)
	.dwattr $C$DW$16, DW_AT_location[DW_OP_breg20 -10]

;----------------------------------------------------------------------
; 166 | IPCLiteLtoRDataRead(uint32_t ulFlag, uint32_t ulAddress, uint16_t usLen
;     | gth,                                                                   
; 167 | uint32_t ulStatusFlag)                                                 
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _IPCLiteLtoRDataRead          FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  4 Auto,  0 SOE     *
;***************************************************************

_IPCLiteLtoRDataRead:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
$C$DW$17	.dwtag  DW_TAG_variable
	.dwattr $C$DW$17, DW_AT_name("ulFlag")
	.dwattr $C$DW$17, DW_AT_TI_symbol_name("_ulFlag")
	.dwattr $C$DW$17, DW_AT_type(*$C$DW$T$102)
	.dwattr $C$DW$17, DW_AT_location[DW_OP_breg20 -2]

$C$DW$18	.dwtag  DW_TAG_variable
	.dwattr $C$DW$18, DW_AT_name("usLength")
	.dwattr $C$DW$18, DW_AT_TI_symbol_name("_usLength")
	.dwattr $C$DW$18, DW_AT_type(*$C$DW$T$106)
	.dwattr $C$DW$18, DW_AT_location[DW_OP_breg20 -3]

$C$DW$19	.dwtag  DW_TAG_variable
	.dwattr $C$DW$19, DW_AT_name("returnStatus")
	.dwattr $C$DW$19, DW_AT_TI_symbol_name("_returnStatus")
	.dwattr $C$DW$19, DW_AT_type(*$C$DW$T$106)
	.dwattr $C$DW$19, DW_AT_location[DW_OP_breg20 -4]

;----------------------------------------------------------------------
; 169 | uint16_t returnStatus;                                                 
; 171 | //                                                                     
; 172 | // Return false if IPC Local to Remote request or status flags are not 
; 173 | // available.                                                          
; 174 | //                                                                     
;----------------------------------------------------------------------
        MOV       *-SP[3],AR4           ; [CPU_ALU] |168| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |168| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 175,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 175 | if (IpcRegs.IPCFLG.all & (ulFlag | ulStatusFlag))                      
;----------------------------------------------------------------------
        MOVW      DP,#_IpcRegs+8        ; [CPU_ARAU] 
        MOVL      ACC,*-SP[10]          ; [CPU_ALU] |175| 
        OR        AL,*-SP[2]            ; [CPU_ALU] |175| 
        OR        AH,*-SP[1]            ; [CPU_ALU] |175| 
        AND       AL,@$BLOCKED(_IpcRegs)+8 ; [CPU_ALU] |175| 
        AND       AH,@$BLOCKED(_IpcRegs)+9 ; [CPU_ALU] |175| 
        TEST      ACC                   ; [CPU_ALU] |175| 
        B         $C$L5,EQ              ; [CPU_ALU] |175| 
        ; branchcc occurs ; [] |175| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 177,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 177 | returnStatus = STATUS_FAIL;                                            
; 179 | else                                                                   
; 181 | //                                                                     
; 182 | // Set up read command, address, and word length.                      
; 183 | //                                                                     
;----------------------------------------------------------------------
        MOVB      *-SP[4],#1,UNC        ; [CPU_ALU] |177| 
        B         $C$L8,UNC             ; [CPU_ALU] 
        ; branch occurs ; [] 
$C$L5:    
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 184,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 184 | if (usLength == IPC_LENGTH_16_BITS)                                    
;----------------------------------------------------------------------
        MOV       AL,*-SP[3]            ; [CPU_ALU] |184| 
        CMPB      AL,#1                 ; [CPU_ALU] |184| 
        B         $C$L6,NEQ             ; [CPU_ALU] |184| 
        ; branchcc occurs ; [] |184| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 186,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 186 | IpcRegs.IPCSENDCOM = IPC_DATA_READ_16;                                 
;----------------------------------------------------------------------
        MOVB      ACC,#7                ; [CPU_ALU] |186| 
        MOVL      @$BLOCKED(_IpcRegs)+16,ACC ; [CPU_ALU] |186| 
        B         $C$L7,UNC             ; [CPU_ALU] 
        ; branch occurs ; [] 
$C$L6:    
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 188,column 14,is_stmt,isa 0
;----------------------------------------------------------------------
; 188 | else if (usLength == IPC_LENGTH_32_BITS)                               
;----------------------------------------------------------------------
        CMPB      AL,#2                 ; [CPU_ALU] |188| 
        B         $C$L7,NEQ             ; [CPU_ALU] |188| 
        ; branchcc occurs ; [] |188| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 190,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 190 | IpcRegs.IPCSENDCOM = IPC_DATA_READ_32;                                 
;----------------------------------------------------------------------
        MOVB      ACC,#8                ; [CPU_ALU] |190| 
        MOVL      @$BLOCKED(_IpcRegs)+16,ACC ; [CPU_ALU] |190| 
$C$L7:    
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 192,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 192 | IpcRegs.IPCSENDADDR = ulAddress;                                       
; 194 | //                                                                     
; 195 | // Force IPC event on selected request task and enable status-checking.
; 196 | //                                                                     
;----------------------------------------------------------------------
        MOVL      ACC,*-SP[8]           ; [CPU_ALU] |192| 
        MOVL      @$BLOCKED(_IpcRegs)+18,ACC ; [CPU_ALU] |192| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 197,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 197 | IpcRegs.IPCSET.all = (ulFlag | ulStatusFlag);                          
;----------------------------------------------------------------------
        MOVL      ACC,*-SP[10]          ; [CPU_ALU] |197| 
        OR        AL,*-SP[2]            ; [CPU_ALU] |197| 
        OR        AH,*-SP[1]            ; [CPU_ALU] |197| 
        MOVL      @$BLOCKED(_IpcRegs)+4,ACC ; [CPU_ALU] |197| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 199,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 199 | returnStatus = STATUS_PASS;                                            
;----------------------------------------------------------------------
        MOV       *-SP[4],#0            ; [CPU_ALU] |199| 
$C$L8:    
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 202,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 202 | return returnStatus;                                                   
;----------------------------------------------------------------------
        MOV       AL,*-SP[4]            ; [CPU_ALU] |202| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 203,column 1,is_stmt,isa 0
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$20	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$20, DW_AT_low_pc(0x00)
	.dwattr $C$DW$20, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$12, DW_AT_TI_end_file("C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c")
	.dwattr $C$DW$12, DW_AT_TI_end_line(0xcb)
	.dwattr $C$DW$12, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$12

	.sect	".text"
	.clink
	.global	_IPCLiteLtoRSetBits

$C$DW$21	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$21, DW_AT_name("IPCLiteLtoRSetBits")
	.dwattr $C$DW$21, DW_AT_low_pc(_IPCLiteLtoRSetBits)
	.dwattr $C$DW$21, DW_AT_high_pc(0x00)
	.dwattr $C$DW$21, DW_AT_TI_symbol_name("_IPCLiteLtoRSetBits")
	.dwattr $C$DW$21, DW_AT_external
	.dwattr $C$DW$21, DW_AT_type(*$C$DW$T$106)
	.dwattr $C$DW$21, DW_AT_TI_begin_file("C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c")
	.dwattr $C$DW$21, DW_AT_TI_begin_line(0xed)
	.dwattr $C$DW$21, DW_AT_TI_begin_column(0x01)
	.dwattr $C$DW$21, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 239,column 1,is_stmt,address _IPCLiteLtoRSetBits,isa 0

	.dwfde $C$DW$CIE, _IPCLiteLtoRSetBits
$C$DW$22	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$22, DW_AT_name("ulFlag")
	.dwattr $C$DW$22, DW_AT_TI_symbol_name("_ulFlag")
	.dwattr $C$DW$22, DW_AT_type(*$C$DW$T$102)
	.dwattr $C$DW$22, DW_AT_location[DW_OP_reg0]

$C$DW$23	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$23, DW_AT_name("ulAddress")
	.dwattr $C$DW$23, DW_AT_TI_symbol_name("_ulAddress")
	.dwattr $C$DW$23, DW_AT_type(*$C$DW$T$102)
	.dwattr $C$DW$23, DW_AT_location[DW_OP_breg20 -8]

$C$DW$24	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$24, DW_AT_name("ulMask")
	.dwattr $C$DW$24, DW_AT_TI_symbol_name("_ulMask")
	.dwattr $C$DW$24, DW_AT_type(*$C$DW$T$102)
	.dwattr $C$DW$24, DW_AT_location[DW_OP_breg20 -10]

$C$DW$25	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$25, DW_AT_name("usLength")
	.dwattr $C$DW$25, DW_AT_TI_symbol_name("_usLength")
	.dwattr $C$DW$25, DW_AT_type(*$C$DW$T$106)
	.dwattr $C$DW$25, DW_AT_location[DW_OP_reg12]

$C$DW$26	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$26, DW_AT_name("ulStatusFlag")
	.dwattr $C$DW$26, DW_AT_TI_symbol_name("_ulStatusFlag")
	.dwattr $C$DW$26, DW_AT_type(*$C$DW$T$102)
	.dwattr $C$DW$26, DW_AT_location[DW_OP_breg20 -12]

;----------------------------------------------------------------------
; 237 | IPCLiteLtoRSetBits(uint32_t ulFlag, uint32_t ulAddress, uint32_t ulMask
;     | ,                                                                      
; 238 | uint16_t usLength, uint32_t ulStatusFlag)                              
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _IPCLiteLtoRSetBits           FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  4 Auto,  0 SOE     *
;***************************************************************

_IPCLiteLtoRSetBits:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
$C$DW$27	.dwtag  DW_TAG_variable
	.dwattr $C$DW$27, DW_AT_name("ulFlag")
	.dwattr $C$DW$27, DW_AT_TI_symbol_name("_ulFlag")
	.dwattr $C$DW$27, DW_AT_type(*$C$DW$T$102)
	.dwattr $C$DW$27, DW_AT_location[DW_OP_breg20 -2]

$C$DW$28	.dwtag  DW_TAG_variable
	.dwattr $C$DW$28, DW_AT_name("usLength")
	.dwattr $C$DW$28, DW_AT_TI_symbol_name("_usLength")
	.dwattr $C$DW$28, DW_AT_type(*$C$DW$T$106)
	.dwattr $C$DW$28, DW_AT_location[DW_OP_breg20 -3]

$C$DW$29	.dwtag  DW_TAG_variable
	.dwattr $C$DW$29, DW_AT_name("returnStatus")
	.dwattr $C$DW$29, DW_AT_TI_symbol_name("_returnStatus")
	.dwattr $C$DW$29, DW_AT_type(*$C$DW$T$106)
	.dwattr $C$DW$29, DW_AT_location[DW_OP_breg20 -4]

;----------------------------------------------------------------------
; 240 | uint16_t returnStatus;                                                 
; 242 | //                                                                     
; 243 | // Return false if IPC Local to Remote request or status flags are not 
; 244 | // available.                                                          
; 245 | //                                                                     
;----------------------------------------------------------------------
        MOV       *-SP[3],AR4           ; [CPU_ALU] |239| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |239| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 246,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 246 | if (IpcRegs.IPCFLG.all & (ulFlag | ulStatusFlag))                      
;----------------------------------------------------------------------
        MOVW      DP,#_IpcRegs+8        ; [CPU_ARAU] 
        MOVL      ACC,*-SP[12]          ; [CPU_ALU] |246| 
        OR        AL,*-SP[2]            ; [CPU_ALU] |246| 
        OR        AH,*-SP[1]            ; [CPU_ALU] |246| 
        AND       AL,@$BLOCKED(_IpcRegs)+8 ; [CPU_ALU] |246| 
        AND       AH,@$BLOCKED(_IpcRegs)+9 ; [CPU_ALU] |246| 
        TEST      ACC                   ; [CPU_ALU] |246| 
        B         $C$L9,EQ              ; [CPU_ALU] |246| 
        ; branchcc occurs ; [] |246| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 248,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 248 | returnStatus = STATUS_FAIL;                                            
; 250 | else                                                                   
;----------------------------------------------------------------------
        MOVB      *-SP[4],#1,UNC        ; [CPU_ALU] |248| 
        B         $C$L12,UNC            ; [CPU_ALU] 
        ; branch occurs ; [] 
$C$L9:    
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 252,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 252 | if (usLength == IPC_LENGTH_16_BITS)                                    
; 254 |     //                                                                 
; 255 |     // Set up 16-bit set bits command, address, and mask.              
; 256 |     //                                                                 
;----------------------------------------------------------------------
        MOV       AL,*-SP[3]            ; [CPU_ALU] |252| 
        CMPB      AL,#1                 ; [CPU_ALU] |252| 
        B         $C$L10,NEQ            ; [CPU_ALU] |252| 
        ; branchcc occurs ; [] |252| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 257,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 257 | IpcRegs.IPCSENDCOM = IPC_SET_BITS_16;                                  
;----------------------------------------------------------------------
        MOVB      ACC,#1                ; [CPU_ALU] |257| 
        MOVL      @$BLOCKED(_IpcRegs)+16,ACC ; [CPU_ALU] |257| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 258,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 258 | IpcRegs.IPCSENDADDR = ulAddress;                                       
;----------------------------------------------------------------------
        MOVL      ACC,*-SP[8]           ; [CPU_ALU] |258| 
        MOVL      @$BLOCKED(_IpcRegs)+18,ACC ; [CPU_ALU] |258| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 259,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 259 | IpcRegs.IPCSENDDATA = ulMask & (0x0000FFFF);                           
;----------------------------------------------------------------------
        MOVL      ACC,*-SP[10]          ; [CPU_ALU] |259| 
        ANDB      AH,#0                 ; [CPU_ALU] |259| 
        MOVL      @$BLOCKED(_IpcRegs)+20,ACC ; [CPU_ALU] |259| 
        B         $C$L11,UNC            ; [CPU_ALU] 
        ; branch occurs ; [] 
$C$L10:    
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 261,column 14,is_stmt,isa 0
;----------------------------------------------------------------------
; 261 | else if (usLength == IPC_LENGTH_32_BITS)                               
; 263 |     //                                                                 
; 264 |     // Set up 32-bit set bits command, address, and mask.              
; 265 |     //                                                                 
;----------------------------------------------------------------------
        CMPB      AL,#2                 ; [CPU_ALU] |261| 
        B         $C$L11,NEQ            ; [CPU_ALU] |261| 
        ; branchcc occurs ; [] |261| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 266,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 266 | IpcRegs.IPCSENDCOM = IPC_SET_BITS_32;                                  
;----------------------------------------------------------------------
        MOVB      ACC,#2                ; [CPU_ALU] |266| 
        MOVL      @$BLOCKED(_IpcRegs)+16,ACC ; [CPU_ALU] |266| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 267,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 267 | IpcRegs.IPCSENDADDR = ulAddress;                                       
;----------------------------------------------------------------------
        MOVL      ACC,*-SP[8]           ; [CPU_ALU] |267| 
        MOVL      @$BLOCKED(_IpcRegs)+18,ACC ; [CPU_ALU] |267| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 268,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 268 | IpcRegs.IPCSENDDATA = ulMask;                                          
; 271 | //                                                                     
; 272 | // Force IPC event on selected request task and enable status-checking.
; 273 | //                                                                     
;----------------------------------------------------------------------
        MOVL      ACC,*-SP[10]          ; [CPU_ALU] |268| 
        MOVL      @$BLOCKED(_IpcRegs)+20,ACC ; [CPU_ALU] |268| 
$C$L11:    
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 274,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 274 | IpcRegs.IPCSET.all = (ulFlag | ulStatusFlag);                          
;----------------------------------------------------------------------
        MOVL      ACC,*-SP[12]          ; [CPU_ALU] |274| 
        OR        AL,*-SP[2]            ; [CPU_ALU] |274| 
        OR        AH,*-SP[1]            ; [CPU_ALU] |274| 
        MOVL      @$BLOCKED(_IpcRegs)+4,ACC ; [CPU_ALU] |274| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 276,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 276 | returnStatus = STATUS_PASS;                                            
;----------------------------------------------------------------------
        MOV       *-SP[4],#0            ; [CPU_ALU] |276| 
$C$L12:    
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 279,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 279 | return returnStatus;                                                   
;----------------------------------------------------------------------
        MOV       AL,*-SP[4]            ; [CPU_ALU] |279| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 280,column 1,is_stmt,isa 0
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$30	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$30, DW_AT_low_pc(0x00)
	.dwattr $C$DW$30, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$21, DW_AT_TI_end_file("C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c")
	.dwattr $C$DW$21, DW_AT_TI_end_line(0x118)
	.dwattr $C$DW$21, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$21

	.sect	".text"
	.clink
	.global	_IPCLiteLtoRSetBits_Protected

$C$DW$31	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$31, DW_AT_name("IPCLiteLtoRSetBits_Protected")
	.dwattr $C$DW$31, DW_AT_low_pc(_IPCLiteLtoRSetBits_Protected)
	.dwattr $C$DW$31, DW_AT_high_pc(0x00)
	.dwattr $C$DW$31, DW_AT_TI_symbol_name("_IPCLiteLtoRSetBits_Protected")
	.dwattr $C$DW$31, DW_AT_external
	.dwattr $C$DW$31, DW_AT_type(*$C$DW$T$106)
	.dwattr $C$DW$31, DW_AT_TI_begin_file("C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c")
	.dwattr $C$DW$31, DW_AT_TI_begin_line(0x13c)
	.dwattr $C$DW$31, DW_AT_TI_begin_column(0x01)
	.dwattr $C$DW$31, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 319,column 1,is_stmt,address _IPCLiteLtoRSetBits_Protected,isa 0

	.dwfde $C$DW$CIE, _IPCLiteLtoRSetBits_Protected
$C$DW$32	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$32, DW_AT_name("ulFlag")
	.dwattr $C$DW$32, DW_AT_TI_symbol_name("_ulFlag")
	.dwattr $C$DW$32, DW_AT_type(*$C$DW$T$102)
	.dwattr $C$DW$32, DW_AT_location[DW_OP_reg0]

$C$DW$33	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$33, DW_AT_name("ulAddress")
	.dwattr $C$DW$33, DW_AT_TI_symbol_name("_ulAddress")
	.dwattr $C$DW$33, DW_AT_type(*$C$DW$T$102)
	.dwattr $C$DW$33, DW_AT_location[DW_OP_breg20 -8]

$C$DW$34	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$34, DW_AT_name("ulMask")
	.dwattr $C$DW$34, DW_AT_TI_symbol_name("_ulMask")
	.dwattr $C$DW$34, DW_AT_type(*$C$DW$T$102)
	.dwattr $C$DW$34, DW_AT_location[DW_OP_breg20 -10]

$C$DW$35	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$35, DW_AT_name("usLength")
	.dwattr $C$DW$35, DW_AT_TI_symbol_name("_usLength")
	.dwattr $C$DW$35, DW_AT_type(*$C$DW$T$106)
	.dwattr $C$DW$35, DW_AT_location[DW_OP_reg12]

$C$DW$36	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$36, DW_AT_name("ulStatusFlag")
	.dwattr $C$DW$36, DW_AT_TI_symbol_name("_ulStatusFlag")
	.dwattr $C$DW$36, DW_AT_type(*$C$DW$T$102)
	.dwattr $C$DW$36, DW_AT_location[DW_OP_breg20 -12]

;----------------------------------------------------------------------
; 316 | IPCLiteLtoRSetBits_Protected (uint32_t ulFlag, uint32_t ulAddress,     
; 317 | uint32_t ulMask, uint16_t usLength,                                    
; 318 | uint32_t ulStatusFlag)                                                 
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _IPCLiteLtoRSetBits_Protected FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  4 Auto,  0 SOE     *
;***************************************************************

_IPCLiteLtoRSetBits_Protected:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
$C$DW$37	.dwtag  DW_TAG_variable
	.dwattr $C$DW$37, DW_AT_name("ulFlag")
	.dwattr $C$DW$37, DW_AT_TI_symbol_name("_ulFlag")
	.dwattr $C$DW$37, DW_AT_type(*$C$DW$T$102)
	.dwattr $C$DW$37, DW_AT_location[DW_OP_breg20 -2]

$C$DW$38	.dwtag  DW_TAG_variable
	.dwattr $C$DW$38, DW_AT_name("usLength")
	.dwattr $C$DW$38, DW_AT_TI_symbol_name("_usLength")
	.dwattr $C$DW$38, DW_AT_type(*$C$DW$T$106)
	.dwattr $C$DW$38, DW_AT_location[DW_OP_breg20 -3]

$C$DW$39	.dwtag  DW_TAG_variable
	.dwattr $C$DW$39, DW_AT_name("returnStatus")
	.dwattr $C$DW$39, DW_AT_TI_symbol_name("_returnStatus")
	.dwattr $C$DW$39, DW_AT_type(*$C$DW$T$106)
	.dwattr $C$DW$39, DW_AT_location[DW_OP_breg20 -4]

;----------------------------------------------------------------------
; 320 | uint16_t returnStatus;                                                 
; 322 | //                                                                     
; 323 | // Return false if IPC Local to Remote request or status flags are not 
; 324 | // available.                                                          
; 325 | //                                                                     
;----------------------------------------------------------------------
        MOV       *-SP[3],AR4           ; [CPU_ALU] |319| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |319| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 326,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 326 | if (IpcRegs.IPCFLG.all & (ulFlag | ulStatusFlag))                      
;----------------------------------------------------------------------
        MOVW      DP,#_IpcRegs+8        ; [CPU_ARAU] 
        MOVL      ACC,*-SP[12]          ; [CPU_ALU] |326| 
        OR        AL,*-SP[2]            ; [CPU_ALU] |326| 
        OR        AH,*-SP[1]            ; [CPU_ALU] |326| 
        AND       AL,@$BLOCKED(_IpcRegs)+8 ; [CPU_ALU] |326| 
        AND       AH,@$BLOCKED(_IpcRegs)+9 ; [CPU_ALU] |326| 
        TEST      ACC                   ; [CPU_ALU] |326| 
        B         $C$L13,EQ             ; [CPU_ALU] |326| 
        ; branchcc occurs ; [] |326| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 328,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 328 | returnStatus = STATUS_FAIL;                                            
; 330 | else                                                                   
;----------------------------------------------------------------------
        MOVB      *-SP[4],#1,UNC        ; [CPU_ALU] |328| 
        B         $C$L16,UNC            ; [CPU_ALU] 
        ; branch occurs ; [] 
$C$L13:    
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 332,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 332 | if (usLength == IPC_LENGTH_16_BITS)                                    
; 334 |     //                                                                 
; 335 |     // Set up 16-bit set bits command, address, and mask.              
; 336 |     //                                                                 
;----------------------------------------------------------------------
        MOV       AL,*-SP[3]            ; [CPU_ALU] |332| 
        CMPB      AL,#1                 ; [CPU_ALU] |332| 
        B         $C$L14,NEQ            ; [CPU_ALU] |332| 
        ; branchcc occurs ; [] |332| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 337,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 337 | IpcRegs.IPCSENDCOM = IPC_SET_BITS_16_PROTECTED;                        
;----------------------------------------------------------------------
        MOVB      ACC,#9                ; [CPU_ALU] |337| 
        MOVL      @$BLOCKED(_IpcRegs)+16,ACC ; [CPU_ALU] |337| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 338,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 338 | IpcRegs.IPCSENDADDR = ulAddress;                                       
;----------------------------------------------------------------------
        MOVL      ACC,*-SP[8]           ; [CPU_ALU] |338| 
        MOVL      @$BLOCKED(_IpcRegs)+18,ACC ; [CPU_ALU] |338| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 339,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 339 | IpcRegs.IPCSENDDATA = ulMask & (0x0000FFFF);                           
;----------------------------------------------------------------------
        MOVL      ACC,*-SP[10]          ; [CPU_ALU] |339| 
        ANDB      AH,#0                 ; [CPU_ALU] |339| 
        MOVL      @$BLOCKED(_IpcRegs)+20,ACC ; [CPU_ALU] |339| 
        B         $C$L15,UNC            ; [CPU_ALU] 
        ; branch occurs ; [] 
$C$L14:    
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 341,column 14,is_stmt,isa 0
;----------------------------------------------------------------------
; 341 | else if (usLength == IPC_LENGTH_32_BITS)                               
; 343 |     //                                                                 
; 344 |     // Set up 32-bit set bits command, address, and mask.              
; 345 |     //                                                                 
;----------------------------------------------------------------------
        CMPB      AL,#2                 ; [CPU_ALU] |341| 
        B         $C$L15,NEQ            ; [CPU_ALU] |341| 
        ; branchcc occurs ; [] |341| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 346,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 346 | IpcRegs.IPCSENDCOM = IPC_SET_BITS_32_PROTECTED;                        
;----------------------------------------------------------------------
        MOVB      ACC,#10               ; [CPU_ALU] |346| 
        MOVL      @$BLOCKED(_IpcRegs)+16,ACC ; [CPU_ALU] |346| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 347,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 347 | IpcRegs.IPCSENDADDR = ulAddress;                                       
;----------------------------------------------------------------------
        MOVL      ACC,*-SP[8]           ; [CPU_ALU] |347| 
        MOVL      @$BLOCKED(_IpcRegs)+18,ACC ; [CPU_ALU] |347| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 348,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 348 | IpcRegs.IPCSENDDATA = ulMask;                                          
; 351 | //                                                                     
; 352 | // Force IPC event on selected request task and enable status-checking.
; 353 | //                                                                     
;----------------------------------------------------------------------
        MOVL      ACC,*-SP[10]          ; [CPU_ALU] |348| 
        MOVL      @$BLOCKED(_IpcRegs)+20,ACC ; [CPU_ALU] |348| 
$C$L15:    
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 354,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 354 | IpcRegs.IPCSET.all = (ulFlag | ulStatusFlag);                          
;----------------------------------------------------------------------
        MOVL      ACC,*-SP[12]          ; [CPU_ALU] |354| 
        OR        AL,*-SP[2]            ; [CPU_ALU] |354| 
        OR        AH,*-SP[1]            ; [CPU_ALU] |354| 
        MOVL      @$BLOCKED(_IpcRegs)+4,ACC ; [CPU_ALU] |354| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 356,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 356 | returnStatus = STATUS_PASS;                                            
;----------------------------------------------------------------------
        MOV       *-SP[4],#0            ; [CPU_ALU] |356| 
$C$L16:    
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 359,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 359 | return returnStatus;                                                   
;----------------------------------------------------------------------
        MOV       AL,*-SP[4]            ; [CPU_ALU] |359| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 360,column 1,is_stmt,isa 0
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$40	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$40, DW_AT_low_pc(0x00)
	.dwattr $C$DW$40, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$31, DW_AT_TI_end_file("C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c")
	.dwattr $C$DW$31, DW_AT_TI_end_line(0x168)
	.dwattr $C$DW$31, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$31

	.sect	".text"
	.clink
	.global	_IPCLiteLtoRClearBits

$C$DW$41	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$41, DW_AT_name("IPCLiteLtoRClearBits")
	.dwattr $C$DW$41, DW_AT_low_pc(_IPCLiteLtoRClearBits)
	.dwattr $C$DW$41, DW_AT_high_pc(0x00)
	.dwattr $C$DW$41, DW_AT_TI_symbol_name("_IPCLiteLtoRClearBits")
	.dwattr $C$DW$41, DW_AT_external
	.dwattr $C$DW$41, DW_AT_type(*$C$DW$T$106)
	.dwattr $C$DW$41, DW_AT_TI_begin_file("C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c")
	.dwattr $C$DW$41, DW_AT_TI_begin_line(0x18a)
	.dwattr $C$DW$41, DW_AT_TI_begin_column(0x01)
	.dwattr $C$DW$41, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 396,column 1,is_stmt,address _IPCLiteLtoRClearBits,isa 0

	.dwfde $C$DW$CIE, _IPCLiteLtoRClearBits
$C$DW$42	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$42, DW_AT_name("ulFlag")
	.dwattr $C$DW$42, DW_AT_TI_symbol_name("_ulFlag")
	.dwattr $C$DW$42, DW_AT_type(*$C$DW$T$102)
	.dwattr $C$DW$42, DW_AT_location[DW_OP_reg0]

$C$DW$43	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$43, DW_AT_name("ulAddress")
	.dwattr $C$DW$43, DW_AT_TI_symbol_name("_ulAddress")
	.dwattr $C$DW$43, DW_AT_type(*$C$DW$T$102)
	.dwattr $C$DW$43, DW_AT_location[DW_OP_breg20 -8]

$C$DW$44	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$44, DW_AT_name("ulMask")
	.dwattr $C$DW$44, DW_AT_TI_symbol_name("_ulMask")
	.dwattr $C$DW$44, DW_AT_type(*$C$DW$T$102)
	.dwattr $C$DW$44, DW_AT_location[DW_OP_breg20 -10]

$C$DW$45	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$45, DW_AT_name("usLength")
	.dwattr $C$DW$45, DW_AT_TI_symbol_name("_usLength")
	.dwattr $C$DW$45, DW_AT_type(*$C$DW$T$106)
	.dwattr $C$DW$45, DW_AT_location[DW_OP_reg12]

$C$DW$46	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$46, DW_AT_name("ulStatusFlag")
	.dwattr $C$DW$46, DW_AT_TI_symbol_name("_ulStatusFlag")
	.dwattr $C$DW$46, DW_AT_type(*$C$DW$T$102)
	.dwattr $C$DW$46, DW_AT_location[DW_OP_breg20 -12]

;----------------------------------------------------------------------
; 394 | IPCLiteLtoRClearBits(uint32_t ulFlag, uint32_t ulAddress, uint32_t ulMa
;     | sk,                                                                    
; 395 | uint16_t usLength, uint32_t ulStatusFlag)                              
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _IPCLiteLtoRClearBits         FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  4 Auto,  0 SOE     *
;***************************************************************

_IPCLiteLtoRClearBits:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
$C$DW$47	.dwtag  DW_TAG_variable
	.dwattr $C$DW$47, DW_AT_name("ulFlag")
	.dwattr $C$DW$47, DW_AT_TI_symbol_name("_ulFlag")
	.dwattr $C$DW$47, DW_AT_type(*$C$DW$T$102)
	.dwattr $C$DW$47, DW_AT_location[DW_OP_breg20 -2]

$C$DW$48	.dwtag  DW_TAG_variable
	.dwattr $C$DW$48, DW_AT_name("usLength")
	.dwattr $C$DW$48, DW_AT_TI_symbol_name("_usLength")
	.dwattr $C$DW$48, DW_AT_type(*$C$DW$T$106)
	.dwattr $C$DW$48, DW_AT_location[DW_OP_breg20 -3]

$C$DW$49	.dwtag  DW_TAG_variable
	.dwattr $C$DW$49, DW_AT_name("returnStatus")
	.dwattr $C$DW$49, DW_AT_TI_symbol_name("_returnStatus")
	.dwattr $C$DW$49, DW_AT_type(*$C$DW$T$106)
	.dwattr $C$DW$49, DW_AT_location[DW_OP_breg20 -4]

;----------------------------------------------------------------------
; 397 | uint16_t returnStatus;                                                 
; 399 | //                                                                     
; 400 | // Return false if IPC Local to Remote request or status flags are not 
; 401 | // available.                                                          
; 402 | //                                                                     
;----------------------------------------------------------------------
        MOV       *-SP[3],AR4           ; [CPU_ALU] |396| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |396| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 403,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 403 | if (IpcRegs.IPCFLG.all & (ulFlag | ulStatusFlag))                      
;----------------------------------------------------------------------
        MOVW      DP,#_IpcRegs+8        ; [CPU_ARAU] 
        MOVL      ACC,*-SP[12]          ; [CPU_ALU] |403| 
        OR        AL,*-SP[2]            ; [CPU_ALU] |403| 
        OR        AH,*-SP[1]            ; [CPU_ALU] |403| 
        AND       AL,@$BLOCKED(_IpcRegs)+8 ; [CPU_ALU] |403| 
        AND       AH,@$BLOCKED(_IpcRegs)+9 ; [CPU_ALU] |403| 
        TEST      ACC                   ; [CPU_ALU] |403| 
        B         $C$L17,EQ             ; [CPU_ALU] |403| 
        ; branchcc occurs ; [] |403| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 405,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 405 | returnStatus = STATUS_FAIL;                                            
; 407 | else                                                                   
;----------------------------------------------------------------------
        MOVB      *-SP[4],#1,UNC        ; [CPU_ALU] |405| 
        B         $C$L20,UNC            ; [CPU_ALU] 
        ; branch occurs ; [] 
$C$L17:    
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 409,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 409 | if (usLength == IPC_LENGTH_16_BITS)                                    
; 411 |     //                                                                 
; 412 |     // Set up 16-bit set bits command, address, and mask.              
; 413 |     //                                                                 
;----------------------------------------------------------------------
        MOV       AL,*-SP[3]            ; [CPU_ALU] |409| 
        CMPB      AL,#1                 ; [CPU_ALU] |409| 
        B         $C$L18,NEQ            ; [CPU_ALU] |409| 
        ; branchcc occurs ; [] |409| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 414,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 414 | IpcRegs.IPCSENDCOM = IPC_CLEAR_BITS_16;                                
;----------------------------------------------------------------------
        MOVB      ACC,#3                ; [CPU_ALU] |414| 
        MOVL      @$BLOCKED(_IpcRegs)+16,ACC ; [CPU_ALU] |414| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 415,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 415 | IpcRegs.IPCSENDADDR = ulAddress;                                       
;----------------------------------------------------------------------
        MOVL      ACC,*-SP[8]           ; [CPU_ALU] |415| 
        MOVL      @$BLOCKED(_IpcRegs)+18,ACC ; [CPU_ALU] |415| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 416,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 416 | IpcRegs.IPCSENDDATA = ulMask & (0x0000FFFF);                           
;----------------------------------------------------------------------
        MOVL      ACC,*-SP[10]          ; [CPU_ALU] |416| 
        ANDB      AH,#0                 ; [CPU_ALU] |416| 
        MOVL      @$BLOCKED(_IpcRegs)+20,ACC ; [CPU_ALU] |416| 
        B         $C$L19,UNC            ; [CPU_ALU] 
        ; branch occurs ; [] 
$C$L18:    
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 418,column 14,is_stmt,isa 0
;----------------------------------------------------------------------
; 418 | else if (usLength == IPC_LENGTH_32_BITS)                               
; 420 |     //                                                                 
; 421 |     // Set up 32-bit set bits command, address, and mask.              
; 422 |     //                                                                 
;----------------------------------------------------------------------
        CMPB      AL,#2                 ; [CPU_ALU] |418| 
        B         $C$L19,NEQ            ; [CPU_ALU] |418| 
        ; branchcc occurs ; [] |418| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 423,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 423 | IpcRegs.IPCSENDCOM = IPC_CLEAR_BITS_32;                                
;----------------------------------------------------------------------
        MOVB      ACC,#4                ; [CPU_ALU] |423| 
        MOVL      @$BLOCKED(_IpcRegs)+16,ACC ; [CPU_ALU] |423| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 424,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 424 | IpcRegs.IPCSENDADDR = ulAddress;                                       
;----------------------------------------------------------------------
        MOVL      ACC,*-SP[8]           ; [CPU_ALU] |424| 
        MOVL      @$BLOCKED(_IpcRegs)+18,ACC ; [CPU_ALU] |424| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 425,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 425 | IpcRegs.IPCSENDDATA = ulMask;                                          
; 428 | //                                                                     
; 429 | // Force IPC event on selected request task and enable status-checking.
; 430 | //                                                                     
;----------------------------------------------------------------------
        MOVL      ACC,*-SP[10]          ; [CPU_ALU] |425| 
        MOVL      @$BLOCKED(_IpcRegs)+20,ACC ; [CPU_ALU] |425| 
$C$L19:    
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 431,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 431 | IpcRegs.IPCSET.all = (ulFlag | ulStatusFlag);                          
;----------------------------------------------------------------------
        MOVL      ACC,*-SP[12]          ; [CPU_ALU] |431| 
        OR        AL,*-SP[2]            ; [CPU_ALU] |431| 
        OR        AH,*-SP[1]            ; [CPU_ALU] |431| 
        MOVL      @$BLOCKED(_IpcRegs)+4,ACC ; [CPU_ALU] |431| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 433,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 433 | returnStatus = STATUS_PASS;                                            
;----------------------------------------------------------------------
        MOV       *-SP[4],#0            ; [CPU_ALU] |433| 
$C$L20:    
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 436,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 436 | return returnStatus;                                                   
;----------------------------------------------------------------------
        MOV       AL,*-SP[4]            ; [CPU_ALU] |436| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 437,column 1,is_stmt,isa 0
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$50	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$50, DW_AT_low_pc(0x00)
	.dwattr $C$DW$50, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$41, DW_AT_TI_end_file("C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c")
	.dwattr $C$DW$41, DW_AT_TI_end_line(0x1b5)
	.dwattr $C$DW$41, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$41

	.sect	".text"
	.clink
	.global	_IPCLiteLtoRClearBits_Protected

$C$DW$51	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$51, DW_AT_name("IPCLiteLtoRClearBits_Protected")
	.dwattr $C$DW$51, DW_AT_low_pc(_IPCLiteLtoRClearBits_Protected)
	.dwattr $C$DW$51, DW_AT_high_pc(0x00)
	.dwattr $C$DW$51, DW_AT_TI_symbol_name("_IPCLiteLtoRClearBits_Protected")
	.dwattr $C$DW$51, DW_AT_external
	.dwattr $C$DW$51, DW_AT_type(*$C$DW$T$106)
	.dwattr $C$DW$51, DW_AT_TI_begin_file("C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c")
	.dwattr $C$DW$51, DW_AT_TI_begin_line(0x1d9)
	.dwattr $C$DW$51, DW_AT_TI_begin_column(0x01)
	.dwattr $C$DW$51, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 476,column 1,is_stmt,address _IPCLiteLtoRClearBits_Protected,isa 0

	.dwfde $C$DW$CIE, _IPCLiteLtoRClearBits_Protected
$C$DW$52	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$52, DW_AT_name("ulFlag")
	.dwattr $C$DW$52, DW_AT_TI_symbol_name("_ulFlag")
	.dwattr $C$DW$52, DW_AT_type(*$C$DW$T$102)
	.dwattr $C$DW$52, DW_AT_location[DW_OP_reg0]

$C$DW$53	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$53, DW_AT_name("ulAddress")
	.dwattr $C$DW$53, DW_AT_TI_symbol_name("_ulAddress")
	.dwattr $C$DW$53, DW_AT_type(*$C$DW$T$102)
	.dwattr $C$DW$53, DW_AT_location[DW_OP_breg20 -8]

$C$DW$54	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$54, DW_AT_name("ulMask")
	.dwattr $C$DW$54, DW_AT_TI_symbol_name("_ulMask")
	.dwattr $C$DW$54, DW_AT_type(*$C$DW$T$102)
	.dwattr $C$DW$54, DW_AT_location[DW_OP_breg20 -10]

$C$DW$55	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$55, DW_AT_name("usLength")
	.dwattr $C$DW$55, DW_AT_TI_symbol_name("_usLength")
	.dwattr $C$DW$55, DW_AT_type(*$C$DW$T$106)
	.dwattr $C$DW$55, DW_AT_location[DW_OP_reg12]

$C$DW$56	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$56, DW_AT_name("ulStatusFlag")
	.dwattr $C$DW$56, DW_AT_TI_symbol_name("_ulStatusFlag")
	.dwattr $C$DW$56, DW_AT_type(*$C$DW$T$102)
	.dwattr $C$DW$56, DW_AT_location[DW_OP_breg20 -12]

;----------------------------------------------------------------------
; 473 | IPCLiteLtoRClearBits_Protected (uint32_t ulFlag, uint32_t ulAddress,   
; 474 | uint32_t ulMask, uint16_t usLength,                                    
; 475 | uint32_t ulStatusFlag)                                                 
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _IPCLiteLtoRClearBits_Protected FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  4 Auto,  0 SOE     *
;***************************************************************

_IPCLiteLtoRClearBits_Protected:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
$C$DW$57	.dwtag  DW_TAG_variable
	.dwattr $C$DW$57, DW_AT_name("ulFlag")
	.dwattr $C$DW$57, DW_AT_TI_symbol_name("_ulFlag")
	.dwattr $C$DW$57, DW_AT_type(*$C$DW$T$102)
	.dwattr $C$DW$57, DW_AT_location[DW_OP_breg20 -2]

$C$DW$58	.dwtag  DW_TAG_variable
	.dwattr $C$DW$58, DW_AT_name("usLength")
	.dwattr $C$DW$58, DW_AT_TI_symbol_name("_usLength")
	.dwattr $C$DW$58, DW_AT_type(*$C$DW$T$106)
	.dwattr $C$DW$58, DW_AT_location[DW_OP_breg20 -3]

$C$DW$59	.dwtag  DW_TAG_variable
	.dwattr $C$DW$59, DW_AT_name("returnStatus")
	.dwattr $C$DW$59, DW_AT_TI_symbol_name("_returnStatus")
	.dwattr $C$DW$59, DW_AT_type(*$C$DW$T$106)
	.dwattr $C$DW$59, DW_AT_location[DW_OP_breg20 -4]

;----------------------------------------------------------------------
; 477 | uint16_t returnStatus;                                                 
; 479 | //                                                                     
; 480 | // Return false if IPC Local to Remote request or status flags are not 
; 481 | // available.                                                          
; 482 | //                                                                     
;----------------------------------------------------------------------
        MOV       *-SP[3],AR4           ; [CPU_ALU] |476| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |476| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 483,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 483 | if (IpcRegs.IPCFLG.all & (ulFlag | ulStatusFlag))                      
;----------------------------------------------------------------------
        MOVW      DP,#_IpcRegs+8        ; [CPU_ARAU] 
        MOVL      ACC,*-SP[12]          ; [CPU_ALU] |483| 
        OR        AL,*-SP[2]            ; [CPU_ALU] |483| 
        OR        AH,*-SP[1]            ; [CPU_ALU] |483| 
        AND       AL,@$BLOCKED(_IpcRegs)+8 ; [CPU_ALU] |483| 
        AND       AH,@$BLOCKED(_IpcRegs)+9 ; [CPU_ALU] |483| 
        TEST      ACC                   ; [CPU_ALU] |483| 
        B         $C$L21,EQ             ; [CPU_ALU] |483| 
        ; branchcc occurs ; [] |483| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 485,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 485 | returnStatus = STATUS_FAIL;                                            
; 487 | else                                                                   
;----------------------------------------------------------------------
        MOVB      *-SP[4],#1,UNC        ; [CPU_ALU] |485| 
        B         $C$L24,UNC            ; [CPU_ALU] 
        ; branch occurs ; [] 
$C$L21:    
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 489,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 489 | if (usLength == IPC_LENGTH_16_BITS)                                    
; 491 |     //                                                                 
; 492 |     // Set up 16-bit set bits command, address, and mask.              
; 493 |     //                                                                 
;----------------------------------------------------------------------
        MOV       AL,*-SP[3]            ; [CPU_ALU] |489| 
        CMPB      AL,#1                 ; [CPU_ALU] |489| 
        B         $C$L22,NEQ            ; [CPU_ALU] |489| 
        ; branchcc occurs ; [] |489| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 494,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 494 | IpcRegs.IPCSENDCOM = IPC_CLEAR_BITS_16_PROTECTED;                      
;----------------------------------------------------------------------
        MOVB      ACC,#11               ; [CPU_ALU] |494| 
        MOVL      @$BLOCKED(_IpcRegs)+16,ACC ; [CPU_ALU] |494| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 495,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 495 | IpcRegs.IPCSENDADDR = ulAddress;                                       
;----------------------------------------------------------------------
        MOVL      ACC,*-SP[8]           ; [CPU_ALU] |495| 
        MOVL      @$BLOCKED(_IpcRegs)+18,ACC ; [CPU_ALU] |495| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 496,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 496 | IpcRegs.IPCSENDDATA = ulMask & (0x0000FFFF);                           
;----------------------------------------------------------------------
        MOVL      ACC,*-SP[10]          ; [CPU_ALU] |496| 
        ANDB      AH,#0                 ; [CPU_ALU] |496| 
        MOVL      @$BLOCKED(_IpcRegs)+20,ACC ; [CPU_ALU] |496| 
        B         $C$L23,UNC            ; [CPU_ALU] 
        ; branch occurs ; [] 
$C$L22:    
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 498,column 14,is_stmt,isa 0
;----------------------------------------------------------------------
; 498 | else if (usLength == IPC_LENGTH_32_BITS)                               
; 500 |     //                                                                 
; 501 |     // Set up 32-bit set bits command, address, and mask.              
; 502 |     //                                                                 
;----------------------------------------------------------------------
        CMPB      AL,#2                 ; [CPU_ALU] |498| 
        B         $C$L23,NEQ            ; [CPU_ALU] |498| 
        ; branchcc occurs ; [] |498| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 503,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 503 | IpcRegs.IPCSENDCOM = IPC_CLEAR_BITS_32_PROTECTED;                      
;----------------------------------------------------------------------
        MOVB      ACC,#12               ; [CPU_ALU] |503| 
        MOVL      @$BLOCKED(_IpcRegs)+16,ACC ; [CPU_ALU] |503| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 504,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 504 | IpcRegs.IPCSENDADDR = ulAddress;                                       
;----------------------------------------------------------------------
        MOVL      ACC,*-SP[8]           ; [CPU_ALU] |504| 
        MOVL      @$BLOCKED(_IpcRegs)+18,ACC ; [CPU_ALU] |504| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 505,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 505 | IpcRegs.IPCSENDDATA = ulMask;                                          
; 508 | //                                                                     
; 509 | // Force IPC event on selected request task and enable status-checking.
; 510 | //                                                                     
;----------------------------------------------------------------------
        MOVL      ACC,*-SP[10]          ; [CPU_ALU] |505| 
        MOVL      @$BLOCKED(_IpcRegs)+20,ACC ; [CPU_ALU] |505| 
$C$L23:    
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 511,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 511 | IpcRegs.IPCSET.all = (ulFlag | ulStatusFlag);                          
;----------------------------------------------------------------------
        MOVL      ACC,*-SP[12]          ; [CPU_ALU] |511| 
        OR        AL,*-SP[2]            ; [CPU_ALU] |511| 
        OR        AH,*-SP[1]            ; [CPU_ALU] |511| 
        MOVL      @$BLOCKED(_IpcRegs)+4,ACC ; [CPU_ALU] |511| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 513,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 513 | returnStatus = STATUS_PASS;                                            
;----------------------------------------------------------------------
        MOV       *-SP[4],#0            ; [CPU_ALU] |513| 
$C$L24:    
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 516,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 516 | return returnStatus;                                                   
;----------------------------------------------------------------------
        MOV       AL,*-SP[4]            ; [CPU_ALU] |516| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 517,column 1,is_stmt,isa 0
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$60	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$60, DW_AT_low_pc(0x00)
	.dwattr $C$DW$60, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$51, DW_AT_TI_end_file("C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c")
	.dwattr $C$DW$51, DW_AT_TI_end_line(0x205)
	.dwattr $C$DW$51, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$51

	.sect	".text"
	.clink
	.global	_IPCLiteLtoRDataWrite

$C$DW$61	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$61, DW_AT_name("IPCLiteLtoRDataWrite")
	.dwattr $C$DW$61, DW_AT_low_pc(_IPCLiteLtoRDataWrite)
	.dwattr $C$DW$61, DW_AT_high_pc(0x00)
	.dwattr $C$DW$61, DW_AT_TI_symbol_name("_IPCLiteLtoRDataWrite")
	.dwattr $C$DW$61, DW_AT_external
	.dwattr $C$DW$61, DW_AT_type(*$C$DW$T$106)
	.dwattr $C$DW$61, DW_AT_TI_begin_file("C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c")
	.dwattr $C$DW$61, DW_AT_TI_begin_line(0x222)
	.dwattr $C$DW$61, DW_AT_TI_begin_column(0x01)
	.dwattr $C$DW$61, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 548,column 1,is_stmt,address _IPCLiteLtoRDataWrite,isa 0

	.dwfde $C$DW$CIE, _IPCLiteLtoRDataWrite
$C$DW$62	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$62, DW_AT_name("ulFlag")
	.dwattr $C$DW$62, DW_AT_TI_symbol_name("_ulFlag")
	.dwattr $C$DW$62, DW_AT_type(*$C$DW$T$102)
	.dwattr $C$DW$62, DW_AT_location[DW_OP_reg0]

$C$DW$63	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$63, DW_AT_name("ulAddress")
	.dwattr $C$DW$63, DW_AT_TI_symbol_name("_ulAddress")
	.dwattr $C$DW$63, DW_AT_type(*$C$DW$T$102)
	.dwattr $C$DW$63, DW_AT_location[DW_OP_breg20 -8]

$C$DW$64	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$64, DW_AT_name("ulData")
	.dwattr $C$DW$64, DW_AT_TI_symbol_name("_ulData")
	.dwattr $C$DW$64, DW_AT_type(*$C$DW$T$102)
	.dwattr $C$DW$64, DW_AT_location[DW_OP_breg20 -10]

$C$DW$65	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$65, DW_AT_name("usLength")
	.dwattr $C$DW$65, DW_AT_TI_symbol_name("_usLength")
	.dwattr $C$DW$65, DW_AT_type(*$C$DW$T$106)
	.dwattr $C$DW$65, DW_AT_location[DW_OP_reg12]

$C$DW$66	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$66, DW_AT_name("ulStatusFlag")
	.dwattr $C$DW$66, DW_AT_TI_symbol_name("_ulStatusFlag")
	.dwattr $C$DW$66, DW_AT_type(*$C$DW$T$102)
	.dwattr $C$DW$66, DW_AT_location[DW_OP_breg20 -12]

;----------------------------------------------------------------------
; 546 | IPCLiteLtoRDataWrite(uint32_t ulFlag, uint32_t ulAddress, uint32_t ulDa
;     | ta,                                                                    
; 547 | uint16_t usLength, uint32_t ulStatusFlag)                              
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _IPCLiteLtoRDataWrite         FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  4 Auto,  0 SOE     *
;***************************************************************

_IPCLiteLtoRDataWrite:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
$C$DW$67	.dwtag  DW_TAG_variable
	.dwattr $C$DW$67, DW_AT_name("ulFlag")
	.dwattr $C$DW$67, DW_AT_TI_symbol_name("_ulFlag")
	.dwattr $C$DW$67, DW_AT_type(*$C$DW$T$102)
	.dwattr $C$DW$67, DW_AT_location[DW_OP_breg20 -2]

$C$DW$68	.dwtag  DW_TAG_variable
	.dwattr $C$DW$68, DW_AT_name("usLength")
	.dwattr $C$DW$68, DW_AT_TI_symbol_name("_usLength")
	.dwattr $C$DW$68, DW_AT_type(*$C$DW$T$106)
	.dwattr $C$DW$68, DW_AT_location[DW_OP_breg20 -3]

$C$DW$69	.dwtag  DW_TAG_variable
	.dwattr $C$DW$69, DW_AT_name("returnStatus")
	.dwattr $C$DW$69, DW_AT_TI_symbol_name("_returnStatus")
	.dwattr $C$DW$69, DW_AT_type(*$C$DW$T$106)
	.dwattr $C$DW$69, DW_AT_location[DW_OP_breg20 -4]

;----------------------------------------------------------------------
; 549 | uint16_t returnStatus;                                                 
; 551 | //                                                                     
; 552 | // Return false if IPC Local to Remote request or status flags are not 
; 553 | // available.                                                          
; 554 | //                                                                     
;----------------------------------------------------------------------
        MOV       *-SP[3],AR4           ; [CPU_ALU] |548| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |548| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 555,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 555 | if (IpcRegs.IPCFLG.all & (ulFlag | ulStatusFlag))                      
;----------------------------------------------------------------------
        MOVW      DP,#_IpcRegs+8        ; [CPU_ARAU] 
        MOVL      ACC,*-SP[12]          ; [CPU_ALU] |555| 
        OR        AL,*-SP[2]            ; [CPU_ALU] |555| 
        OR        AH,*-SP[1]            ; [CPU_ALU] |555| 
        AND       AL,@$BLOCKED(_IpcRegs)+8 ; [CPU_ALU] |555| 
        AND       AH,@$BLOCKED(_IpcRegs)+9 ; [CPU_ALU] |555| 
        TEST      ACC                   ; [CPU_ALU] |555| 
        B         $C$L25,EQ             ; [CPU_ALU] |555| 
        ; branchcc occurs ; [] |555| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 557,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 557 | returnStatus = STATUS_FAIL;                                            
; 559 | else                                                                   
; 561 | //                                                                     
; 562 | // Set up data write command, address, and data. For 16-bit write,     
; 563 | // Master system will look at lower 16-bits only.                      
; 564 | //                                                                     
;----------------------------------------------------------------------
        MOVB      *-SP[4],#1,UNC        ; [CPU_ALU] |557| 
        B         $C$L28,UNC            ; [CPU_ALU] 
        ; branch occurs ; [] 
$C$L25:    
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 565,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 565 | if (usLength == IPC_LENGTH_16_BITS)                                    
;----------------------------------------------------------------------
        MOV       AL,*-SP[3]            ; [CPU_ALU] |565| 
        CMPB      AL,#1                 ; [CPU_ALU] |565| 
        B         $C$L26,NEQ            ; [CPU_ALU] |565| 
        ; branchcc occurs ; [] |565| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 567,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 567 | IpcRegs.IPCSENDCOM = IPC_DATA_WRITE_16;                                
;----------------------------------------------------------------------
        MOVB      ACC,#5                ; [CPU_ALU] |567| 
        MOVL      @$BLOCKED(_IpcRegs)+16,ACC ; [CPU_ALU] |567| 
        B         $C$L27,UNC            ; [CPU_ALU] 
        ; branch occurs ; [] 
$C$L26:    
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 569,column 14,is_stmt,isa 0
;----------------------------------------------------------------------
; 569 | else if (usLength == IPC_LENGTH_32_BITS)                               
;----------------------------------------------------------------------
        CMPB      AL,#2                 ; [CPU_ALU] |569| 
        B         $C$L27,NEQ            ; [CPU_ALU] |569| 
        ; branchcc occurs ; [] |569| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 571,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 571 | IpcRegs.IPCSENDCOM = IPC_DATA_WRITE_32;                                
;----------------------------------------------------------------------
        MOVB      ACC,#6                ; [CPU_ALU] |571| 
        MOVL      @$BLOCKED(_IpcRegs)+16,ACC ; [CPU_ALU] |571| 
$C$L27:    
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 573,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 573 | IpcRegs.IPCSENDADDR = ulAddress;                                       
;----------------------------------------------------------------------
        MOVL      ACC,*-SP[8]           ; [CPU_ALU] |573| 
        MOVL      @$BLOCKED(_IpcRegs)+18,ACC ; [CPU_ALU] |573| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 574,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 574 | IpcRegs.IPCSENDDATA = ulData;                                          
; 576 | //                                                                     
; 577 | // Force IPC event on selected request task and enable status-checking 
; 578 | //                                                                     
;----------------------------------------------------------------------
        MOVL      ACC,*-SP[10]          ; [CPU_ALU] |574| 
        MOVL      @$BLOCKED(_IpcRegs)+20,ACC ; [CPU_ALU] |574| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 579,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 579 | IpcRegs.IPCSET.all = (ulFlag | ulStatusFlag);                          
;----------------------------------------------------------------------
        MOVL      ACC,*-SP[12]          ; [CPU_ALU] |579| 
        OR        AL,*-SP[2]            ; [CPU_ALU] |579| 
        OR        AH,*-SP[1]            ; [CPU_ALU] |579| 
        MOVL      @$BLOCKED(_IpcRegs)+4,ACC ; [CPU_ALU] |579| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 581,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 581 | returnStatus = STATUS_PASS;                                            
;----------------------------------------------------------------------
        MOV       *-SP[4],#0            ; [CPU_ALU] |581| 
$C$L28:    
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 584,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 584 | return returnStatus;                                                   
;----------------------------------------------------------------------
        MOV       AL,*-SP[4]            ; [CPU_ALU] |584| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 585,column 1,is_stmt,isa 0
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$70	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$70, DW_AT_low_pc(0x00)
	.dwattr $C$DW$70, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$61, DW_AT_TI_end_file("C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c")
	.dwattr $C$DW$61, DW_AT_TI_end_line(0x249)
	.dwattr $C$DW$61, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$61

	.sect	".text"
	.clink
	.global	_IPCLiteLtoRDataWrite_Protected

$C$DW$71	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$71, DW_AT_name("IPCLiteLtoRDataWrite_Protected")
	.dwattr $C$DW$71, DW_AT_low_pc(_IPCLiteLtoRDataWrite_Protected)
	.dwattr $C$DW$71, DW_AT_high_pc(0x00)
	.dwattr $C$DW$71, DW_AT_TI_symbol_name("_IPCLiteLtoRDataWrite_Protected")
	.dwattr $C$DW$71, DW_AT_external
	.dwattr $C$DW$71, DW_AT_type(*$C$DW$T$106)
	.dwattr $C$DW$71, DW_AT_TI_begin_file("C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c")
	.dwattr $C$DW$71, DW_AT_TI_begin_line(0x266)
	.dwattr $C$DW$71, DW_AT_TI_begin_column(0x01)
	.dwattr $C$DW$71, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 617,column 1,is_stmt,address _IPCLiteLtoRDataWrite_Protected,isa 0

	.dwfde $C$DW$CIE, _IPCLiteLtoRDataWrite_Protected
$C$DW$72	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$72, DW_AT_name("ulFlag")
	.dwattr $C$DW$72, DW_AT_TI_symbol_name("_ulFlag")
	.dwattr $C$DW$72, DW_AT_type(*$C$DW$T$102)
	.dwattr $C$DW$72, DW_AT_location[DW_OP_reg0]

$C$DW$73	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$73, DW_AT_name("ulAddress")
	.dwattr $C$DW$73, DW_AT_TI_symbol_name("_ulAddress")
	.dwattr $C$DW$73, DW_AT_type(*$C$DW$T$102)
	.dwattr $C$DW$73, DW_AT_location[DW_OP_breg20 -8]

$C$DW$74	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$74, DW_AT_name("ulData")
	.dwattr $C$DW$74, DW_AT_TI_symbol_name("_ulData")
	.dwattr $C$DW$74, DW_AT_type(*$C$DW$T$102)
	.dwattr $C$DW$74, DW_AT_location[DW_OP_breg20 -10]

$C$DW$75	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$75, DW_AT_name("usLength")
	.dwattr $C$DW$75, DW_AT_TI_symbol_name("_usLength")
	.dwattr $C$DW$75, DW_AT_type(*$C$DW$T$106)
	.dwattr $C$DW$75, DW_AT_location[DW_OP_reg12]

$C$DW$76	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$76, DW_AT_name("ulStatusFlag")
	.dwattr $C$DW$76, DW_AT_TI_symbol_name("_ulStatusFlag")
	.dwattr $C$DW$76, DW_AT_type(*$C$DW$T$102)
	.dwattr $C$DW$76, DW_AT_location[DW_OP_breg20 -12]

;----------------------------------------------------------------------
; 614 | IPCLiteLtoRDataWrite_Protected(uint32_t ulFlag, uint32_t ulAddress,    
; 615 | uint32_t ulData, uint16_t usLength,                                    
; 616 | uint32_t ulStatusFlag)                                                 
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _IPCLiteLtoRDataWrite_Protected FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  4 Auto,  0 SOE     *
;***************************************************************

_IPCLiteLtoRDataWrite_Protected:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
$C$DW$77	.dwtag  DW_TAG_variable
	.dwattr $C$DW$77, DW_AT_name("ulFlag")
	.dwattr $C$DW$77, DW_AT_TI_symbol_name("_ulFlag")
	.dwattr $C$DW$77, DW_AT_type(*$C$DW$T$102)
	.dwattr $C$DW$77, DW_AT_location[DW_OP_breg20 -2]

$C$DW$78	.dwtag  DW_TAG_variable
	.dwattr $C$DW$78, DW_AT_name("usLength")
	.dwattr $C$DW$78, DW_AT_TI_symbol_name("_usLength")
	.dwattr $C$DW$78, DW_AT_type(*$C$DW$T$106)
	.dwattr $C$DW$78, DW_AT_location[DW_OP_breg20 -3]

$C$DW$79	.dwtag  DW_TAG_variable
	.dwattr $C$DW$79, DW_AT_name("returnStatus")
	.dwattr $C$DW$79, DW_AT_TI_symbol_name("_returnStatus")
	.dwattr $C$DW$79, DW_AT_type(*$C$DW$T$106)
	.dwattr $C$DW$79, DW_AT_location[DW_OP_breg20 -4]

;----------------------------------------------------------------------
; 618 | uint16_t returnStatus;                                                 
; 620 | //                                                                     
; 621 | // Return false if IPC Local to Remote request or status flags are not 
; 622 | // available.                                                          
; 623 | //                                                                     
;----------------------------------------------------------------------
        MOV       *-SP[3],AR4           ; [CPU_ALU] |617| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |617| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 624,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 624 | if (IpcRegs.IPCFLG.all & (ulFlag | ulStatusFlag))                      
;----------------------------------------------------------------------
        MOVW      DP,#_IpcRegs+8        ; [CPU_ARAU] 
        MOVL      ACC,*-SP[12]          ; [CPU_ALU] |624| 
        OR        AL,*-SP[2]            ; [CPU_ALU] |624| 
        OR        AH,*-SP[1]            ; [CPU_ALU] |624| 
        AND       AL,@$BLOCKED(_IpcRegs)+8 ; [CPU_ALU] |624| 
        AND       AH,@$BLOCKED(_IpcRegs)+9 ; [CPU_ALU] |624| 
        TEST      ACC                   ; [CPU_ALU] |624| 
        B         $C$L29,EQ             ; [CPU_ALU] |624| 
        ; branchcc occurs ; [] |624| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 626,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 626 | returnStatus = STATUS_FAIL;                                            
; 628 | else                                                                   
; 630 | //                                                                     
; 631 | // Set up data write command, address, and data. For 16-bit write, Mast
;     | er                                                                     
; 632 | // system will look at lower 16-bits only.                             
; 633 | //                                                                     
;----------------------------------------------------------------------
        MOVB      *-SP[4],#1,UNC        ; [CPU_ALU] |626| 
        B         $C$L32,UNC            ; [CPU_ALU] 
        ; branch occurs ; [] 
$C$L29:    
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 634,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 634 | if (usLength == IPC_LENGTH_16_BITS)                                    
;----------------------------------------------------------------------
        MOV       AL,*-SP[3]            ; [CPU_ALU] |634| 
        CMPB      AL,#1                 ; [CPU_ALU] |634| 
        B         $C$L30,NEQ            ; [CPU_ALU] |634| 
        ; branchcc occurs ; [] |634| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 636,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 636 | IpcRegs.IPCSENDCOM = IPC_DATA_WRITE_16_PROTECTED;                      
;----------------------------------------------------------------------
        MOVB      ACC,#13               ; [CPU_ALU] |636| 
        MOVL      @$BLOCKED(_IpcRegs)+16,ACC ; [CPU_ALU] |636| 
        B         $C$L31,UNC            ; [CPU_ALU] 
        ; branch occurs ; [] 
$C$L30:    
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 638,column 14,is_stmt,isa 0
;----------------------------------------------------------------------
; 638 | else if (usLength == IPC_LENGTH_32_BITS)                               
;----------------------------------------------------------------------
        CMPB      AL,#2                 ; [CPU_ALU] |638| 
        B         $C$L31,NEQ            ; [CPU_ALU] |638| 
        ; branchcc occurs ; [] |638| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 640,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 640 | IpcRegs.IPCSENDCOM = IPC_DATA_WRITE_32_PROTECTED;                      
;----------------------------------------------------------------------
        MOVB      ACC,#14               ; [CPU_ALU] |640| 
        MOVL      @$BLOCKED(_IpcRegs)+16,ACC ; [CPU_ALU] |640| 
$C$L31:    
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 642,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 642 | IpcRegs.IPCSENDADDR = ulAddress;                                       
;----------------------------------------------------------------------
        MOVL      ACC,*-SP[8]           ; [CPU_ALU] |642| 
        MOVL      @$BLOCKED(_IpcRegs)+18,ACC ; [CPU_ALU] |642| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 643,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 643 | IpcRegs.IPCSENDDATA = ulData;                                          
; 645 | //                                                                     
; 646 | // Force IPC event on selected request task and enable status-checking 
; 647 | //                                                                     
;----------------------------------------------------------------------
        MOVL      ACC,*-SP[10]          ; [CPU_ALU] |643| 
        MOVL      @$BLOCKED(_IpcRegs)+20,ACC ; [CPU_ALU] |643| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 648,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 648 | IpcRegs.IPCSET.all = (ulFlag | ulStatusFlag);                          
;----------------------------------------------------------------------
        MOVL      ACC,*-SP[12]          ; [CPU_ALU] |648| 
        OR        AL,*-SP[2]            ; [CPU_ALU] |648| 
        OR        AH,*-SP[1]            ; [CPU_ALU] |648| 
        MOVL      @$BLOCKED(_IpcRegs)+4,ACC ; [CPU_ALU] |648| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 650,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 650 | returnStatus = STATUS_PASS;                                            
;----------------------------------------------------------------------
        MOV       *-SP[4],#0            ; [CPU_ALU] |650| 
$C$L32:    
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 653,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 653 | return returnStatus;                                                   
;----------------------------------------------------------------------
        MOV       AL,*-SP[4]            ; [CPU_ALU] |653| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 654,column 1,is_stmt,isa 0
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$80	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$80, DW_AT_low_pc(0x00)
	.dwattr $C$DW$80, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$71, DW_AT_TI_end_file("C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c")
	.dwattr $C$DW$71, DW_AT_TI_end_line(0x28e)
	.dwattr $C$DW$71, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$71

	.sect	".text"
	.clink
	.global	_IPCLiteLtoRFunctionCall

$C$DW$81	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$81, DW_AT_name("IPCLiteLtoRFunctionCall")
	.dwattr $C$DW$81, DW_AT_low_pc(_IPCLiteLtoRFunctionCall)
	.dwattr $C$DW$81, DW_AT_high_pc(0x00)
	.dwattr $C$DW$81, DW_AT_TI_symbol_name("_IPCLiteLtoRFunctionCall")
	.dwattr $C$DW$81, DW_AT_external
	.dwattr $C$DW$81, DW_AT_type(*$C$DW$T$106)
	.dwattr $C$DW$81, DW_AT_TI_begin_file("C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c")
	.dwattr $C$DW$81, DW_AT_TI_begin_line(0x2a8)
	.dwattr $C$DW$81, DW_AT_TI_begin_column(0x01)
	.dwattr $C$DW$81, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 682,column 1,is_stmt,address _IPCLiteLtoRFunctionCall,isa 0

	.dwfde $C$DW$CIE, _IPCLiteLtoRFunctionCall
$C$DW$82	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$82, DW_AT_name("ulFlag")
	.dwattr $C$DW$82, DW_AT_TI_symbol_name("_ulFlag")
	.dwattr $C$DW$82, DW_AT_type(*$C$DW$T$102)
	.dwattr $C$DW$82, DW_AT_location[DW_OP_reg0]

$C$DW$83	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$83, DW_AT_name("ulAddress")
	.dwattr $C$DW$83, DW_AT_TI_symbol_name("_ulAddress")
	.dwattr $C$DW$83, DW_AT_type(*$C$DW$T$102)
	.dwattr $C$DW$83, DW_AT_location[DW_OP_breg20 -8]

$C$DW$84	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$84, DW_AT_name("ulParam")
	.dwattr $C$DW$84, DW_AT_TI_symbol_name("_ulParam")
	.dwattr $C$DW$84, DW_AT_type(*$C$DW$T$102)
	.dwattr $C$DW$84, DW_AT_location[DW_OP_breg20 -10]

$C$DW$85	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$85, DW_AT_name("ulStatusFlag")
	.dwattr $C$DW$85, DW_AT_TI_symbol_name("_ulStatusFlag")
	.dwattr $C$DW$85, DW_AT_type(*$C$DW$T$102)
	.dwattr $C$DW$85, DW_AT_location[DW_OP_breg20 -12]

;----------------------------------------------------------------------
; 680 | IPCLiteLtoRFunctionCall(uint32_t ulFlag, uint32_t ulAddress, uint32_t u
;     | lParam,                                                                
; 681 | uint32_t ulStatusFlag)                                                 
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _IPCLiteLtoRFunctionCall      FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  3 Auto,  0 SOE     *
;***************************************************************

_IPCLiteLtoRFunctionCall:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
$C$DW$86	.dwtag  DW_TAG_variable
	.dwattr $C$DW$86, DW_AT_name("ulFlag")
	.dwattr $C$DW$86, DW_AT_TI_symbol_name("_ulFlag")
	.dwattr $C$DW$86, DW_AT_type(*$C$DW$T$102)
	.dwattr $C$DW$86, DW_AT_location[DW_OP_breg20 -2]

$C$DW$87	.dwtag  DW_TAG_variable
	.dwattr $C$DW$87, DW_AT_name("returnStatus")
	.dwattr $C$DW$87, DW_AT_TI_symbol_name("_returnStatus")
	.dwattr $C$DW$87, DW_AT_type(*$C$DW$T$106)
	.dwattr $C$DW$87, DW_AT_location[DW_OP_breg20 -3]

;----------------------------------------------------------------------
; 683 | uint16_t returnStatus;                                                 
; 685 | //                                                                     
; 686 | // Return false if IPC Remote to Local request or status flags are not 
; 687 | // available.                                                          
; 688 | //                                                                     
;----------------------------------------------------------------------
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |682| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 689,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 689 | if (IpcRegs.IPCFLG.all & (ulFlag | ulStatusFlag))                      
;----------------------------------------------------------------------
        MOVW      DP,#_IpcRegs+8        ; [CPU_ARAU] 
        MOVL      ACC,*-SP[12]          ; [CPU_ALU] |689| 
        OR        AL,*-SP[2]            ; [CPU_ALU] |689| 
        OR        AH,*-SP[1]            ; [CPU_ALU] |689| 
        AND       AL,@$BLOCKED(_IpcRegs)+8 ; [CPU_ALU] |689| 
        AND       AH,@$BLOCKED(_IpcRegs)+9 ; [CPU_ALU] |689| 
        TEST      ACC                   ; [CPU_ALU] |689| 
        B         $C$L33,EQ             ; [CPU_ALU] |689| 
        ; branchcc occurs ; [] |689| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 691,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 691 | returnStatus = STATUS_FAIL;                                            
; 693 | else                                                                   
; 695 | //                                                                     
; 696 | // Set up function call command, address, and parameter.               
; 697 | //                                                                     
;----------------------------------------------------------------------
        MOVB      *-SP[3],#1,UNC        ; [CPU_ALU] |691| 
        B         $C$L34,UNC            ; [CPU_ALU] 
        ; branch occurs ; [] 
$C$L33:    
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 698,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 698 | IpcRegs.IPCSENDCOM = IPC_FUNC_CALL;                                    
;----------------------------------------------------------------------
        MOVB      ACC,#18               ; [CPU_ALU] |698| 
        MOVL      @$BLOCKED(_IpcRegs)+16,ACC ; [CPU_ALU] |698| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 699,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 699 | IpcRegs.IPCSENDADDR = ulAddress;                                       
;----------------------------------------------------------------------
        MOVL      ACC,*-SP[8]           ; [CPU_ALU] |699| 
        MOVL      @$BLOCKED(_IpcRegs)+18,ACC ; [CPU_ALU] |699| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 700,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 700 | IpcRegs.IPCSENDDATA = ulParam;                                         
; 702 | //                                                                     
; 703 | // Force IPC event on selected request task and enable status-checking 
; 704 | //                                                                     
;----------------------------------------------------------------------
        MOVL      ACC,*-SP[10]          ; [CPU_ALU] |700| 
        MOVL      @$BLOCKED(_IpcRegs)+20,ACC ; [CPU_ALU] |700| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 705,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 705 | IpcRegs.IPCSET.all = (ulFlag | ulStatusFlag);                          
;----------------------------------------------------------------------
        MOVL      ACC,*-SP[12]          ; [CPU_ALU] |705| 
        OR        AL,*-SP[2]            ; [CPU_ALU] |705| 
        OR        AH,*-SP[1]            ; [CPU_ALU] |705| 
        MOVL      @$BLOCKED(_IpcRegs)+4,ACC ; [CPU_ALU] |705| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 707,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 707 | returnStatus = STATUS_PASS;                                            
;----------------------------------------------------------------------
        MOV       *-SP[3],#0            ; [CPU_ALU] |707| 
$C$L34:    
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 710,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 710 | return returnStatus;                                                   
;----------------------------------------------------------------------
        MOV       AL,*-SP[3]            ; [CPU_ALU] |710| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 711,column 1,is_stmt,isa 0
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$88	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$88, DW_AT_low_pc(0x00)
	.dwattr $C$DW$88, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$81, DW_AT_TI_end_file("C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c")
	.dwattr $C$DW$81, DW_AT_TI_end_line(0x2c7)
	.dwattr $C$DW$81, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$81

	.sect	".text"
	.clink
	.global	_IPCLiteReqMemAccess

$C$DW$89	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$89, DW_AT_name("IPCLiteReqMemAccess")
	.dwattr $C$DW$89, DW_AT_low_pc(_IPCLiteReqMemAccess)
	.dwattr $C$DW$89, DW_AT_high_pc(0x00)
	.dwattr $C$DW$89, DW_AT_TI_symbol_name("_IPCLiteReqMemAccess")
	.dwattr $C$DW$89, DW_AT_external
	.dwattr $C$DW$89, DW_AT_type(*$C$DW$T$106)
	.dwattr $C$DW$89, DW_AT_TI_begin_file("C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c")
	.dwattr $C$DW$89, DW_AT_TI_begin_line(0x2e7)
	.dwattr $C$DW$89, DW_AT_TI_begin_column(0x01)
	.dwattr $C$DW$89, DW_AT_TI_max_frame_size(-14)
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 745,column 1,is_stmt,address _IPCLiteReqMemAccess,isa 0

	.dwfde $C$DW$CIE, _IPCLiteReqMemAccess
$C$DW$90	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$90, DW_AT_name("ulFlag")
	.dwattr $C$DW$90, DW_AT_TI_symbol_name("_ulFlag")
	.dwattr $C$DW$90, DW_AT_type(*$C$DW$T$102)
	.dwattr $C$DW$90, DW_AT_location[DW_OP_reg0]

$C$DW$91	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$91, DW_AT_name("ulMask")
	.dwattr $C$DW$91, DW_AT_TI_symbol_name("_ulMask")
	.dwattr $C$DW$91, DW_AT_type(*$C$DW$T$102)
	.dwattr $C$DW$91, DW_AT_location[DW_OP_breg20 -16]

$C$DW$92	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$92, DW_AT_name("ulMaster")
	.dwattr $C$DW$92, DW_AT_TI_symbol_name("_ulMaster")
	.dwattr $C$DW$92, DW_AT_type(*$C$DW$T$106)
	.dwattr $C$DW$92, DW_AT_location[DW_OP_reg12]

$C$DW$93	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$93, DW_AT_name("ulStatusFlag")
	.dwattr $C$DW$93, DW_AT_TI_symbol_name("_ulStatusFlag")
	.dwattr $C$DW$93, DW_AT_type(*$C$DW$T$102)
	.dwattr $C$DW$93, DW_AT_location[DW_OP_breg20 -18]

;----------------------------------------------------------------------
; 743 | IPCLiteReqMemAccess (uint32_t ulFlag, uint32_t ulMask, uint16_t ulMaste
;     | r,                                                                     
; 744 | uint32_t ulStatusFlag)                                                 
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _IPCLiteReqMemAccess          FR SIZE:  12           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            6 Parameter,  6 Auto,  0 SOE     *
;***************************************************************

_IPCLiteReqMemAccess:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#12                ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -14
$C$DW$94	.dwtag  DW_TAG_variable
	.dwattr $C$DW$94, DW_AT_name("ulFlag")
	.dwattr $C$DW$94, DW_AT_TI_symbol_name("_ulFlag")
	.dwattr $C$DW$94, DW_AT_type(*$C$DW$T$102)
	.dwattr $C$DW$94, DW_AT_location[DW_OP_breg20 -8]

$C$DW$95	.dwtag  DW_TAG_variable
	.dwattr $C$DW$95, DW_AT_name("GSxMSEL_REGaddress")
	.dwattr $C$DW$95, DW_AT_TI_symbol_name("_GSxMSEL_REGaddress")
	.dwattr $C$DW$95, DW_AT_type(*$C$DW$T$102)
	.dwattr $C$DW$95, DW_AT_location[DW_OP_breg20 -10]

$C$DW$96	.dwtag  DW_TAG_variable
	.dwattr $C$DW$96, DW_AT_name("ulMaster")
	.dwattr $C$DW$96, DW_AT_TI_symbol_name("_ulMaster")
	.dwattr $C$DW$96, DW_AT_type(*$C$DW$T$106)
	.dwattr $C$DW$96, DW_AT_location[DW_OP_breg20 -11]

$C$DW$97	.dwtag  DW_TAG_variable
	.dwattr $C$DW$97, DW_AT_name("status")
	.dwattr $C$DW$97, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$97, DW_AT_type(*$C$DW$T$106)
	.dwattr $C$DW$97, DW_AT_location[DW_OP_breg20 -12]

;----------------------------------------------------------------------
; 746 | uint16_t status;                                                       
;----------------------------------------------------------------------
        MOV       *-SP[11],AR4          ; [CPU_ALU] |745| 
        MOVL      *-SP[8],ACC           ; [CPU_ALU] |745| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 747,column 33,is_stmt,isa 0
;----------------------------------------------------------------------
; 747 | uint32_t GSxMSEL_REGaddress = (uint32_t)(&MemCfgRegs.GSxMSEL.all);     
;----------------------------------------------------------------------
        MOVL      XAR4,#_MemCfgRegs+68  ; [CPU_ARAU] |747| 
        MOVL      *-SP[10],XAR4         ; [CPU_ALU] |747| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 748,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 748 | if (ulMaster == IPC_GSX_CPU2_MASTER)                                   
;----------------------------------------------------------------------
        MOV       AL,*-SP[11]           ; [CPU_ALU] |748| 
        B         $C$L35,NEQ            ; [CPU_ALU] |748| 
        ; branchcc occurs ; [] |748| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 750,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 750 | status =                                                               
; 751 |     IPCLiteLtoRSetBits_Protected (ulFlag, GSxMSEL_REGaddress, ulMask,  
; 752 |                                   IPC_LENGTH_32_BITS,                  
; 753 |                                   ulStatusFlag);                       
;----------------------------------------------------------------------
        MOVL      ACC,*-SP[10]          ; [CPU_ALU] |750| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |750| 
        MOVB      XAR4,#2               ; [CPU_ALU] |750| 
        MOVL      ACC,*-SP[16]          ; [CPU_ALU] |750| 
        MOVL      *-SP[4],ACC           ; [CPU_ALU] |750| 
        MOVL      ACC,*-SP[18]          ; [CPU_ALU] |750| 
        MOVL      *-SP[6],ACC           ; [CPU_ALU] |750| 
        MOVL      ACC,*-SP[8]           ; [CPU_ALU] |750| 
$C$DW$98	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$98, DW_AT_low_pc(0x00)
	.dwattr $C$DW$98, DW_AT_name("_IPCLiteLtoRSetBits_Protected")
	.dwattr $C$DW$98, DW_AT_TI_call

        LCR       #_IPCLiteLtoRSetBits_Protected ; [CPU_ALU] |750| 
        ; call occurs [#_IPCLiteLtoRSetBits_Protected] ; [] |750| 
        MOV       *-SP[12],AL           ; [CPU_ALU] |750| 
        B         $C$L36,UNC            ; [CPU_ALU] 
        ; branch occurs ; [] 
$C$L35:    
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 755,column 10,is_stmt,isa 0
;----------------------------------------------------------------------
; 755 | else if (ulMaster == IPC_GSX_CPU1_MASTER)                              
;----------------------------------------------------------------------
        CMPB      AL,#1                 ; [CPU_ALU] |755| 
        B         $C$L36,NEQ            ; [CPU_ALU] |755| 
        ; branchcc occurs ; [] |755| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 757,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 757 | status =                                                               
; 758 |     IPCLiteLtoRClearBits_Protected (ulFlag, GSxMSEL_REGaddress, ulMask,
; 759 |                                     IPC_LENGTH_32_BITS,                
; 760 |                                     ulStatusFlag);                     
;----------------------------------------------------------------------
        MOVL      ACC,*-SP[10]          ; [CPU_ALU] |757| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |757| 
        MOVB      XAR4,#2               ; [CPU_ALU] |757| 
        MOVL      ACC,*-SP[16]          ; [CPU_ALU] |757| 
        MOVL      *-SP[4],ACC           ; [CPU_ALU] |757| 
        MOVL      ACC,*-SP[18]          ; [CPU_ALU] |757| 
        MOVL      *-SP[6],ACC           ; [CPU_ALU] |757| 
        MOVL      ACC,*-SP[8]           ; [CPU_ALU] |757| 
$C$DW$99	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$99, DW_AT_low_pc(0x00)
	.dwattr $C$DW$99, DW_AT_name("_IPCLiteLtoRClearBits_Protected")
	.dwattr $C$DW$99, DW_AT_TI_call

        LCR       #_IPCLiteLtoRClearBits_Protected ; [CPU_ALU] |757| 
        ; call occurs [#_IPCLiteLtoRClearBits_Protected] ; [] |757| 
        MOV       *-SP[12],AL           ; [CPU_ALU] |757| 
$C$L36:    
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 763,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 763 | return status;                                                         
;----------------------------------------------------------------------
        MOV       AL,*-SP[12]           ; [CPU_ALU] |763| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 764,column 1,is_stmt,isa 0
        SUBB      SP,#12                ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$100	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$100, DW_AT_low_pc(0x00)
	.dwattr $C$DW$100, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$89, DW_AT_TI_end_file("C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c")
	.dwattr $C$DW$89, DW_AT_TI_end_line(0x2fc)
	.dwattr $C$DW$89, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$89

	.sect	".text"
	.clink
	.global	_IPCLiteRtoLDataRead

$C$DW$101	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$101, DW_AT_name("IPCLiteRtoLDataRead")
	.dwattr $C$DW$101, DW_AT_low_pc(_IPCLiteRtoLDataRead)
	.dwattr $C$DW$101, DW_AT_high_pc(0x00)
	.dwattr $C$DW$101, DW_AT_TI_symbol_name("_IPCLiteRtoLDataRead")
	.dwattr $C$DW$101, DW_AT_external
	.dwattr $C$DW$101, DW_AT_TI_begin_file("C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c")
	.dwattr $C$DW$101, DW_AT_TI_begin_line(0x30f)
	.dwattr $C$DW$101, DW_AT_TI_begin_column(0x01)
	.dwattr $C$DW$101, DW_AT_TI_max_frame_size(-8)
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 784,column 1,is_stmt,address _IPCLiteRtoLDataRead,isa 0

	.dwfde $C$DW$CIE, _IPCLiteRtoLDataRead
$C$DW$102	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$102, DW_AT_name("ulFlag")
	.dwattr $C$DW$102, DW_AT_TI_symbol_name("_ulFlag")
	.dwattr $C$DW$102, DW_AT_type(*$C$DW$T$102)
	.dwattr $C$DW$102, DW_AT_location[DW_OP_reg0]

$C$DW$103	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$103, DW_AT_name("ulStatusFlag")
	.dwattr $C$DW$103, DW_AT_TI_symbol_name("_ulStatusFlag")
	.dwattr $C$DW$103, DW_AT_type(*$C$DW$T$102)
	.dwattr $C$DW$103, DW_AT_location[DW_OP_breg20 -10]

;----------------------------------------------------------------------
; 783 | IPCLiteRtoLDataRead(uint32_t ulFlag, uint32_t ulStatusFlag)            
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _IPCLiteRtoLDataRead          FR SIZE:   6           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  6 Auto,  0 SOE     *
;***************************************************************

_IPCLiteRtoLDataRead:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#6                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -8
$C$DW$104	.dwtag  DW_TAG_variable
	.dwattr $C$DW$104, DW_AT_name("ulFlag")
	.dwattr $C$DW$104, DW_AT_TI_symbol_name("_ulFlag")
	.dwattr $C$DW$104, DW_AT_type(*$C$DW$T$102)
	.dwattr $C$DW$104, DW_AT_location[DW_OP_breg20 -2]

$C$DW$105	.dwtag  DW_TAG_variable
	.dwattr $C$DW$105, DW_AT_name("pulRAddress")
	.dwattr $C$DW$105, DW_AT_TI_symbol_name("_pulRAddress")
	.dwattr $C$DW$105, DW_AT_type(*$C$DW$T$114)
	.dwattr $C$DW$105, DW_AT_location[DW_OP_breg20 -4]

$C$DW$106	.dwtag  DW_TAG_variable
	.dwattr $C$DW$106, DW_AT_name("pusRAddress")
	.dwattr $C$DW$106, DW_AT_TI_symbol_name("_pusRAddress")
	.dwattr $C$DW$106, DW_AT_type(*$C$DW$T$112)
	.dwattr $C$DW$106, DW_AT_location[DW_OP_breg20 -6]

;----------------------------------------------------------------------
; 786 | uint32_t* pulRAddress;                                                 
; 787 | uint16_t* pusRAddress;                                                 
; 789 | //                                                                     
; 790 | // Wait until IPC Remote to Local request task is flagged              
; 791 | //                                                                     
;----------------------------------------------------------------------
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |784| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 792,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 792 | while (!(IpcRegs.IPCSTS.all & ulFlag))                                 
;----------------------------------------------------------------------
$C$L37:    
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 792,column 12,is_stmt,isa 0
;----------------------------------------------------------------------
; 796 | //                                                                     
; 797 | // If the command and data length are correct for this function:       
; 798 | // Then read from requested address and write 16/32-bit data           
; 799 | // to IPCLOCALREPLY. Acknowledge the status flag                       
; 800 | // and the task flag.                                                  
; 801 | //                                                                     
;----------------------------------------------------------------------
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |792| 
        MOVW      DP,#_IpcRegs+2        ; [CPU_ARAU] 
        AND       AL,@$BLOCKED(_IpcRegs)+2 ; [CPU_ALU] |792| 
        AND       AH,@$BLOCKED(_IpcRegs)+3 ; [CPU_ALU] |792| 
        TEST      ACC                   ; [CPU_ALU] |792| 
        B         $C$L37,EQ             ; [CPU_ALU] |792| 
        ; branchcc occurs ; [] |792| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 802,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 802 | if (IpcRegs.IPCRECVCOM == IPC_DATA_READ_16)                            
; 804 |     //                                                                 
; 805 |     // Perform 16-bit read.                                            
; 806 |     //                                                                 
;----------------------------------------------------------------------
        MOVB      ACC,#7                ; [CPU_ALU] |802| 
        CMPL      ACC,@$BLOCKED(_IpcRegs)+24 ; [CPU_ALU] |802| 
        B         $C$L38,NEQ            ; [CPU_ALU] |802| 
        ; branchcc occurs ; [] |802| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 807,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 807 | pusRAddress = (uint16_t *)IpcRegs.IPCRECVADDR;                         
;----------------------------------------------------------------------
        MOVL      ACC,@$BLOCKED(_IpcRegs)+26 ; [CPU_ALU] |807| 
        MOVL      *-SP[6],ACC           ; [CPU_ALU] |807| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 808,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 808 | IpcRegs.IPCLOCALREPLY = (uint32_t)(*pusRAddress);                      
;----------------------------------------------------------------------
        MOVL      XAR4,*-SP[6]          ; [CPU_ALU] |808| 
        MOVU      ACC,*+XAR4[0]         ; [CPU_ALU] |808| 
        MOVL      @$BLOCKED(_IpcRegs)+30,ACC ; [CPU_ALU] |808| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 809,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 809 | IpcRegs.IPCACK.all = (ulStatusFlag | ulFlag);                          
;----------------------------------------------------------------------
        MOVL      ACC,*-SP[10]          ; [CPU_ALU] |809| 
        OR        AL,*-SP[2]            ; [CPU_ALU] |809| 
        OR        AH,*-SP[1]            ; [CPU_ALU] |809| 
        MOVL      @$BLOCKED(_IpcRegs),ACC ; [CPU_ALU] |809| 
        B         $C$L40,UNC            ; [CPU_ALU] 
        ; branch occurs ; [] 
$C$L38:    
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 811,column 10,is_stmt,isa 0
;----------------------------------------------------------------------
; 811 | else if (IpcRegs.IPCRECVCOM == IPC_DATA_READ_32)                       
;----------------------------------------------------------------------
        MOVB      ACC,#8                ; [CPU_ALU] |811| 
        CMPL      ACC,@$BLOCKED(_IpcRegs)+24 ; [CPU_ALU] |811| 
        B         $C$L39,NEQ            ; [CPU_ALU] |811| 
        ; branchcc occurs ; [] |811| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 813,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 813 | pulRAddress = (uint32_t *)IpcRegs.IPCRECVADDR;                         
;----------------------------------------------------------------------
        MOVL      ACC,@$BLOCKED(_IpcRegs)+26 ; [CPU_ALU] |813| 
        MOVL      *-SP[4],ACC           ; [CPU_ALU] |813| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 814,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 814 | IpcRegs.IPCLOCALREPLY = *pulRAddress;                                  
;----------------------------------------------------------------------
        MOVL      XAR4,*-SP[4]          ; [CPU_ALU] |814| 
        MOVL      ACC,*+XAR4[0]         ; [CPU_ALU] |814| 
        MOVL      @$BLOCKED(_IpcRegs)+30,ACC ; [CPU_ALU] |814| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 815,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 815 | IpcRegs.IPCACK.all = (ulStatusFlag | ulFlag);                          
; 818 | //                                                                     
; 819 | // Otherwise, only acknowledge the task flag.                          
; 820 | //(Indicates to Remote CPU there was an error)                         
; 821 | //                                                                     
; 822 | else                                                                   
;----------------------------------------------------------------------
        MOVL      ACC,*-SP[10]          ; [CPU_ALU] |815| 
        OR        AL,*-SP[2]            ; [CPU_ALU] |815| 
        OR        AH,*-SP[1]            ; [CPU_ALU] |815| 
        MOVL      @$BLOCKED(_IpcRegs),ACC ; [CPU_ALU] |815| 
        B         $C$L40,UNC            ; [CPU_ALU] 
        ; branch occurs ; [] 
$C$L39:    
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 824,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 824 | IpcRegs.IPCACK.all = (ulFlag);                                         
;----------------------------------------------------------------------
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |824| 
        MOVL      @$BLOCKED(_IpcRegs),ACC ; [CPU_ALU] |824| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 826,column 1,is_stmt,isa 0
$C$L40:    
        SUBB      SP,#6                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$107	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$107, DW_AT_low_pc(0x00)
	.dwattr $C$DW$107, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$101, DW_AT_TI_end_file("C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c")
	.dwattr $C$DW$101, DW_AT_TI_end_line(0x33a)
	.dwattr $C$DW$101, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$101

	.sect	".text"
	.clink
	.global	_IPCLiteRtoLSetBits

$C$DW$108	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$108, DW_AT_name("IPCLiteRtoLSetBits")
	.dwattr $C$DW$108, DW_AT_low_pc(_IPCLiteRtoLSetBits)
	.dwattr $C$DW$108, DW_AT_high_pc(0x00)
	.dwattr $C$DW$108, DW_AT_TI_symbol_name("_IPCLiteRtoLSetBits")
	.dwattr $C$DW$108, DW_AT_external
	.dwattr $C$DW$108, DW_AT_TI_begin_file("C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c")
	.dwattr $C$DW$108, DW_AT_TI_begin_line(0x34f)
	.dwattr $C$DW$108, DW_AT_TI_begin_column(0x01)
	.dwattr $C$DW$108, DW_AT_TI_max_frame_size(-8)
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 848,column 1,is_stmt,address _IPCLiteRtoLSetBits,isa 0

	.dwfde $C$DW$CIE, _IPCLiteRtoLSetBits
$C$DW$109	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$109, DW_AT_name("ulFlag")
	.dwattr $C$DW$109, DW_AT_TI_symbol_name("_ulFlag")
	.dwattr $C$DW$109, DW_AT_type(*$C$DW$T$102)
	.dwattr $C$DW$109, DW_AT_location[DW_OP_reg0]

$C$DW$110	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$110, DW_AT_name("ulStatusFlag")
	.dwattr $C$DW$110, DW_AT_TI_symbol_name("_ulStatusFlag")
	.dwattr $C$DW$110, DW_AT_type(*$C$DW$T$102)
	.dwattr $C$DW$110, DW_AT_location[DW_OP_breg20 -10]

;----------------------------------------------------------------------
; 847 | IPCLiteRtoLSetBits(uint32_t ulFlag, uint32_t ulStatusFlag)             
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _IPCLiteRtoLSetBits           FR SIZE:   6           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  6 Auto,  0 SOE     *
;***************************************************************

_IPCLiteRtoLSetBits:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#6                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -8
$C$DW$111	.dwtag  DW_TAG_variable
	.dwattr $C$DW$111, DW_AT_name("ulFlag")
	.dwattr $C$DW$111, DW_AT_TI_symbol_name("_ulFlag")
	.dwattr $C$DW$111, DW_AT_type(*$C$DW$T$102)
	.dwattr $C$DW$111, DW_AT_location[DW_OP_breg20 -2]

$C$DW$112	.dwtag  DW_TAG_variable
	.dwattr $C$DW$112, DW_AT_name("pusAddress")
	.dwattr $C$DW$112, DW_AT_TI_symbol_name("_pusAddress")
	.dwattr $C$DW$112, DW_AT_type(*$C$DW$T$112)
	.dwattr $C$DW$112, DW_AT_location[DW_OP_breg20 -4]

$C$DW$113	.dwtag  DW_TAG_variable
	.dwattr $C$DW$113, DW_AT_name("pulAddress")
	.dwattr $C$DW$113, DW_AT_TI_symbol_name("_pulAddress")
	.dwattr $C$DW$113, DW_AT_type(*$C$DW$T$114)
	.dwattr $C$DW$113, DW_AT_location[DW_OP_breg20 -6]

;----------------------------------------------------------------------
; 850 | uint16_t* pusAddress;                                                  
; 851 | uint32_t* pulAddress;                                                  
; 853 | //                                                                     
; 854 | // Wait until IPC Remote to Local request task is flagged              
; 855 | //                                                                     
;----------------------------------------------------------------------
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |848| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 856,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 856 | while (!(IpcRegs.IPCSTS.all & ulFlag))                                 
;----------------------------------------------------------------------
$C$L41:    
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 856,column 12,is_stmt,isa 0
;----------------------------------------------------------------------
; 860 | //                                                                     
; 861 | // If the command is correct for this function:                        
; 862 | // Then set the mask bits at the requested address                     
; 863 | // and write back the 16/32-bit data to IPCLOCALREPLY.                 
; 864 | // Acknowledge the status flag and the task flag.                      
; 865 | //                                                                     
;----------------------------------------------------------------------
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |856| 
        MOVW      DP,#_IpcRegs+2        ; [CPU_ARAU] 
        AND       AL,@$BLOCKED(_IpcRegs)+2 ; [CPU_ALU] |856| 
        AND       AH,@$BLOCKED(_IpcRegs)+3 ; [CPU_ALU] |856| 
        TEST      ACC                   ; [CPU_ALU] |856| 
        B         $C$L41,EQ             ; [CPU_ALU] |856| 
        ; branchcc occurs ; [] |856| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 866,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 866 | if (IpcRegs.IPCRECVCOM == IPC_SET_BITS_16)                             
;----------------------------------------------------------------------
        MOVB      ACC,#1                ; [CPU_ALU] |866| 
        CMPL      ACC,@$BLOCKED(_IpcRegs)+24 ; [CPU_ALU] |866| 
        B         $C$L42,NEQ            ; [CPU_ALU] |866| 
        ; branchcc occurs ; [] |866| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 868,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 868 | pusAddress = (uint16_t *)IpcRegs.IPCRECVADDR;;                         
;----------------------------------------------------------------------
        MOVL      ACC,@$BLOCKED(_IpcRegs)+26 ; [CPU_ALU] |868| 
        MOVL      *-SP[4],ACC           ; [CPU_ALU] |868| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 869,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 869 | *pusAddress |= (uint16_t)IpcRegs.IPCRECVDATA;                          
;----------------------------------------------------------------------
        MOVL      XAR4,*-SP[4]          ; [CPU_ALU] |869| 
        MOVL      ACC,@$BLOCKED(_IpcRegs)+28 ; [CPU_ALU] |869| 
        OR        *+XAR4[0],AL          ; [CPU_ALU] |869| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 870,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 870 | IpcRegs.IPCLOCALREPLY = (uint32_t)*pusAddress;                         
;----------------------------------------------------------------------
        MOVL      XAR4,*-SP[4]          ; [CPU_ALU] |870| 
        MOVU      ACC,*+XAR4[0]         ; [CPU_ALU] |870| 
        MOVL      @$BLOCKED(_IpcRegs)+30,ACC ; [CPU_ALU] |870| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 872,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 872 | IpcRegs.IPCACK.all = (ulStatusFlag | ulFlag);                          
;----------------------------------------------------------------------
        MOVL      ACC,*-SP[10]          ; [CPU_ALU] |872| 
        OR        AL,*-SP[2]            ; [CPU_ALU] |872| 
        OR        AH,*-SP[1]            ; [CPU_ALU] |872| 
        MOVL      @$BLOCKED(_IpcRegs),ACC ; [CPU_ALU] |872| 
        B         $C$L44,UNC            ; [CPU_ALU] 
        ; branch occurs ; [] 
$C$L42:    
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 874,column 10,is_stmt,isa 0
;----------------------------------------------------------------------
; 874 | else if (IpcRegs.IPCRECVCOM == IPC_SET_BITS_32)                        
;----------------------------------------------------------------------
        MOVB      ACC,#2                ; [CPU_ALU] |874| 
        CMPL      ACC,@$BLOCKED(_IpcRegs)+24 ; [CPU_ALU] |874| 
        B         $C$L43,NEQ            ; [CPU_ALU] |874| 
        ; branchcc occurs ; [] |874| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 876,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 876 | pulAddress = (uint32_t *)IpcRegs.IPCRECVADDR;;                         
;----------------------------------------------------------------------
        MOVL      ACC,@$BLOCKED(_IpcRegs)+26 ; [CPU_ALU] |876| 
        MOVL      *-SP[6],ACC           ; [CPU_ALU] |876| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 877,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 877 | *pulAddress |= (uint32_t)IpcRegs.IPCRECVDATA;                          
;----------------------------------------------------------------------
        MOVL      XAR4,*-SP[6]          ; [CPU_ALU] |877| 
        MOVL      ACC,@$BLOCKED(_IpcRegs)+28 ; [CPU_ALU] |877| 
        OR        *+XAR4[0],AL          ; [CPU_ALU] |877| 
        OR        *+XAR4[1],AH          ; [CPU_ALU] |877| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 878,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 878 | IpcRegs.IPCLOCALREPLY = *pulAddress;                                   
;----------------------------------------------------------------------
        MOVL      XAR4,*-SP[6]          ; [CPU_ALU] |878| 
        MOVL      ACC,*+XAR4[0]         ; [CPU_ALU] |878| 
        MOVL      @$BLOCKED(_IpcRegs)+30,ACC ; [CPU_ALU] |878| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 880,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 880 | IpcRegs.IPCACK.all = (ulStatusFlag | ulFlag);                          
; 883 | //                                                                     
; 884 | // Otherwise, only acknowledge the task flag.                          
; 885 | // (Indicates to Remote CPU there was an error)                        
; 886 | //                                                                     
; 887 | else                                                                   
;----------------------------------------------------------------------
        MOVL      ACC,*-SP[10]          ; [CPU_ALU] |880| 
        OR        AL,*-SP[2]            ; [CPU_ALU] |880| 
        OR        AH,*-SP[1]            ; [CPU_ALU] |880| 
        MOVL      @$BLOCKED(_IpcRegs),ACC ; [CPU_ALU] |880| 
        B         $C$L44,UNC            ; [CPU_ALU] 
        ; branch occurs ; [] 
$C$L43:    
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 889,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 889 | IpcRegs.IPCACK.all = (ulFlag);                                         
;----------------------------------------------------------------------
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |889| 
        MOVL      @$BLOCKED(_IpcRegs),ACC ; [CPU_ALU] |889| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 891,column 1,is_stmt,isa 0
$C$L44:    
        SUBB      SP,#6                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$114	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$114, DW_AT_low_pc(0x00)
	.dwattr $C$DW$114, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$108, DW_AT_TI_end_file("C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c")
	.dwattr $C$DW$108, DW_AT_TI_end_line(0x37b)
	.dwattr $C$DW$108, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$108

	.sect	".text"
	.clink
	.global	_IPCLiteRtoLSetBits_Protected

$C$DW$115	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$115, DW_AT_name("IPCLiteRtoLSetBits_Protected")
	.dwattr $C$DW$115, DW_AT_low_pc(_IPCLiteRtoLSetBits_Protected)
	.dwattr $C$DW$115, DW_AT_high_pc(0x00)
	.dwattr $C$DW$115, DW_AT_TI_symbol_name("_IPCLiteRtoLSetBits_Protected")
	.dwattr $C$DW$115, DW_AT_external
	.dwattr $C$DW$115, DW_AT_TI_begin_file("C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c")
	.dwattr $C$DW$115, DW_AT_TI_begin_line(0x390)
	.dwattr $C$DW$115, DW_AT_TI_begin_column(0x01)
	.dwattr $C$DW$115, DW_AT_TI_max_frame_size(-8)
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 913,column 1,is_stmt,address _IPCLiteRtoLSetBits_Protected,isa 0

	.dwfde $C$DW$CIE, _IPCLiteRtoLSetBits_Protected
$C$DW$116	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$116, DW_AT_name("ulFlag")
	.dwattr $C$DW$116, DW_AT_TI_symbol_name("_ulFlag")
	.dwattr $C$DW$116, DW_AT_type(*$C$DW$T$102)
	.dwattr $C$DW$116, DW_AT_location[DW_OP_reg0]

$C$DW$117	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$117, DW_AT_name("ulStatusFlag")
	.dwattr $C$DW$117, DW_AT_TI_symbol_name("_ulStatusFlag")
	.dwattr $C$DW$117, DW_AT_type(*$C$DW$T$102)
	.dwattr $C$DW$117, DW_AT_location[DW_OP_breg20 -10]

;----------------------------------------------------------------------
; 912 | IPCLiteRtoLSetBits_Protected (uint32_t ulFlag, uint32_t ulStatusFlag)  
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _IPCLiteRtoLSetBits_Protected FR SIZE:   6           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  6 Auto,  0 SOE     *
;***************************************************************

_IPCLiteRtoLSetBits_Protected:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#6                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -8
$C$DW$118	.dwtag  DW_TAG_variable
	.dwattr $C$DW$118, DW_AT_name("ulFlag")
	.dwattr $C$DW$118, DW_AT_TI_symbol_name("_ulFlag")
	.dwattr $C$DW$118, DW_AT_type(*$C$DW$T$102)
	.dwattr $C$DW$118, DW_AT_location[DW_OP_breg20 -2]

$C$DW$119	.dwtag  DW_TAG_variable
	.dwattr $C$DW$119, DW_AT_name("pusAddress")
	.dwattr $C$DW$119, DW_AT_TI_symbol_name("_pusAddress")
	.dwattr $C$DW$119, DW_AT_type(*$C$DW$T$112)
	.dwattr $C$DW$119, DW_AT_location[DW_OP_breg20 -4]

$C$DW$120	.dwtag  DW_TAG_variable
	.dwattr $C$DW$120, DW_AT_name("pulAddress")
	.dwattr $C$DW$120, DW_AT_TI_symbol_name("_pulAddress")
	.dwattr $C$DW$120, DW_AT_type(*$C$DW$T$114)
	.dwattr $C$DW$120, DW_AT_location[DW_OP_breg20 -6]

;----------------------------------------------------------------------
; 915 | uint16_t* pusAddress;                                                  
; 916 | uint32_t* pulAddress;                                                  
; 918 | //                                                                     
; 919 | // Wait until IPC Remote to Local request task is flagged              
; 920 | //                                                                     
;----------------------------------------------------------------------
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |913| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 921,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 921 | while (!(IpcRegs.IPCSTS.all & ulFlag))                                 
;----------------------------------------------------------------------
$C$L45:    
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 921,column 12,is_stmt,isa 0
;----------------------------------------------------------------------
; 925 | //                                                                     
; 926 | // If the command is correct for this function:                        
; 927 | // Then enable write access with EALLOW and                            
; 928 | // set the mask bits at the requested address.                         
; 929 | // Write back the 16-bit data to IPCLOCALREPLY.                        
; 930 | // Restore write-protection with EDIS.                                 
; 931 | // Acknowledge the status flag and the task flag.                      
; 932 | //                                                                     
;----------------------------------------------------------------------
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |921| 
        MOVW      DP,#_IpcRegs+2        ; [CPU_ARAU] 
        AND       AL,@$BLOCKED(_IpcRegs)+2 ; [CPU_ALU] |921| 
        AND       AH,@$BLOCKED(_IpcRegs)+3 ; [CPU_ALU] |921| 
        TEST      ACC                   ; [CPU_ALU] |921| 
        B         $C$L45,EQ             ; [CPU_ALU] |921| 
        ; branchcc occurs ; [] |921| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 934,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 934 | EALLOW;                                                                
;----------------------------------------------------------------------
 EALLOW
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 936,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 936 | if (IpcRegs.IPCRECVCOM == IPC_SET_BITS_16_PROTECTED)                   
;----------------------------------------------------------------------
        MOVB      ACC,#9                ; [CPU_ALU] |936| 
        CMPL      ACC,@$BLOCKED(_IpcRegs)+24 ; [CPU_ALU] |936| 
        B         $C$L46,NEQ            ; [CPU_ALU] |936| 
        ; branchcc occurs ; [] |936| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 938,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 938 | pusAddress = (uint16_t *)IpcRegs.IPCRECVADDR;                          
;----------------------------------------------------------------------
        MOVL      ACC,@$BLOCKED(_IpcRegs)+26 ; [CPU_ALU] |938| 
        MOVL      *-SP[4],ACC           ; [CPU_ALU] |938| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 939,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 939 | *pusAddress |= (uint16_t)IpcRegs.IPCRECVDATA;                          
;----------------------------------------------------------------------
        MOVL      XAR4,*-SP[4]          ; [CPU_ALU] |939| 
        MOVL      ACC,@$BLOCKED(_IpcRegs)+28 ; [CPU_ALU] |939| 
        OR        *+XAR4[0],AL          ; [CPU_ALU] |939| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 940,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 940 | IpcRegs.IPCLOCALREPLY = (uint32_t)*pusAddress;                         
;----------------------------------------------------------------------
        MOVL      XAR4,*-SP[4]          ; [CPU_ALU] |940| 
        MOVU      ACC,*+XAR4[0]         ; [CPU_ALU] |940| 
        MOVL      @$BLOCKED(_IpcRegs)+30,ACC ; [CPU_ALU] |940| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 942,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 942 | IpcRegs.IPCACK.all = (ulStatusFlag | ulFlag);                          
;----------------------------------------------------------------------
        MOVL      ACC,*-SP[10]          ; [CPU_ALU] |942| 
        OR        AL,*-SP[2]            ; [CPU_ALU] |942| 
        OR        AH,*-SP[1]            ; [CPU_ALU] |942| 
        MOVL      @$BLOCKED(_IpcRegs),ACC ; [CPU_ALU] |942| 
        B         $C$L48,UNC            ; [CPU_ALU] 
        ; branch occurs ; [] 
$C$L46:    
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 944,column 10,is_stmt,isa 0
;----------------------------------------------------------------------
; 944 | else if (IpcRegs.IPCRECVCOM == IPC_SET_BITS_32_PROTECTED)              
;----------------------------------------------------------------------
        MOVB      ACC,#10               ; [CPU_ALU] |944| 
        CMPL      ACC,@$BLOCKED(_IpcRegs)+24 ; [CPU_ALU] |944| 
        B         $C$L47,NEQ            ; [CPU_ALU] |944| 
        ; branchcc occurs ; [] |944| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 946,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 946 | pulAddress = (uint32_t *)IpcRegs.IPCRECVADDR;                          
;----------------------------------------------------------------------
        MOVL      ACC,@$BLOCKED(_IpcRegs)+26 ; [CPU_ALU] |946| 
        MOVL      *-SP[6],ACC           ; [CPU_ALU] |946| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 947,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 947 | *pulAddress |= (uint32_t)IpcRegs.IPCRECVDATA;                          
;----------------------------------------------------------------------
        MOVL      XAR4,*-SP[6]          ; [CPU_ALU] |947| 
        MOVL      ACC,@$BLOCKED(_IpcRegs)+28 ; [CPU_ALU] |947| 
        OR        *+XAR4[0],AL          ; [CPU_ALU] |947| 
        OR        *+XAR4[1],AH          ; [CPU_ALU] |947| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 948,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 948 | IpcRegs.IPCLOCALREPLY = *pulAddress;                                   
;----------------------------------------------------------------------
        MOVL      XAR4,*-SP[6]          ; [CPU_ALU] |948| 
        MOVL      ACC,*+XAR4[0]         ; [CPU_ALU] |948| 
        MOVL      @$BLOCKED(_IpcRegs)+30,ACC ; [CPU_ALU] |948| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 950,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 950 | IpcRegs.IPCACK.all = (ulStatusFlag | ulFlag);                          
; 953 | //                                                                     
; 954 | // Otherwise, only acknowledge the task flag.                          
; 955 | //(Indicates to the Remote CPU there was an error)                     
; 956 | //                                                                     
; 957 | else                                                                   
;----------------------------------------------------------------------
        MOVL      ACC,*-SP[10]          ; [CPU_ALU] |950| 
        OR        AL,*-SP[2]            ; [CPU_ALU] |950| 
        OR        AH,*-SP[1]            ; [CPU_ALU] |950| 
        MOVL      @$BLOCKED(_IpcRegs),ACC ; [CPU_ALU] |950| 
        B         $C$L48,UNC            ; [CPU_ALU] 
        ; branch occurs ; [] 
$C$L47:    
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 959,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 959 | IpcRegs.IPCACK.all = (ulFlag);                                         
;----------------------------------------------------------------------
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |959| 
        MOVL      @$BLOCKED(_IpcRegs),ACC ; [CPU_ALU] |959| 
$C$L48:    
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 962,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 962 | EDIS;                                                                  
;----------------------------------------------------------------------
 EDIS
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 963,column 1,is_stmt,isa 0
        SUBB      SP,#6                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
        SPM       #0                    ; [CPU_ALU] 
$C$DW$121	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$121, DW_AT_low_pc(0x00)
	.dwattr $C$DW$121, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$115, DW_AT_TI_end_file("C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c")
	.dwattr $C$DW$115, DW_AT_TI_end_line(0x3c3)
	.dwattr $C$DW$115, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$115

	.sect	".text"
	.clink
	.global	_IPCLiteRtoLClearBits

$C$DW$122	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$122, DW_AT_name("IPCLiteRtoLClearBits")
	.dwattr $C$DW$122, DW_AT_low_pc(_IPCLiteRtoLClearBits)
	.dwattr $C$DW$122, DW_AT_high_pc(0x00)
	.dwattr $C$DW$122, DW_AT_TI_symbol_name("_IPCLiteRtoLClearBits")
	.dwattr $C$DW$122, DW_AT_external
	.dwattr $C$DW$122, DW_AT_TI_begin_file("C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c")
	.dwattr $C$DW$122, DW_AT_TI_begin_line(0x3d8)
	.dwattr $C$DW$122, DW_AT_TI_begin_column(0x01)
	.dwattr $C$DW$122, DW_AT_TI_max_frame_size(-8)
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 985,column 1,is_stmt,address _IPCLiteRtoLClearBits,isa 0

	.dwfde $C$DW$CIE, _IPCLiteRtoLClearBits
$C$DW$123	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$123, DW_AT_name("ulFlag")
	.dwattr $C$DW$123, DW_AT_TI_symbol_name("_ulFlag")
	.dwattr $C$DW$123, DW_AT_type(*$C$DW$T$102)
	.dwattr $C$DW$123, DW_AT_location[DW_OP_reg0]

$C$DW$124	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$124, DW_AT_name("ulStatusFlag")
	.dwattr $C$DW$124, DW_AT_TI_symbol_name("_ulStatusFlag")
	.dwattr $C$DW$124, DW_AT_type(*$C$DW$T$102)
	.dwattr $C$DW$124, DW_AT_location[DW_OP_breg20 -10]

;----------------------------------------------------------------------
; 984 | IPCLiteRtoLClearBits(uint32_t ulFlag, uint32_t ulStatusFlag)           
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _IPCLiteRtoLClearBits         FR SIZE:   6           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  6 Auto,  0 SOE     *
;***************************************************************

_IPCLiteRtoLClearBits:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#6                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -8
$C$DW$125	.dwtag  DW_TAG_variable
	.dwattr $C$DW$125, DW_AT_name("ulFlag")
	.dwattr $C$DW$125, DW_AT_TI_symbol_name("_ulFlag")
	.dwattr $C$DW$125, DW_AT_type(*$C$DW$T$102)
	.dwattr $C$DW$125, DW_AT_location[DW_OP_breg20 -2]

$C$DW$126	.dwtag  DW_TAG_variable
	.dwattr $C$DW$126, DW_AT_name("pusAddress")
	.dwattr $C$DW$126, DW_AT_TI_symbol_name("_pusAddress")
	.dwattr $C$DW$126, DW_AT_type(*$C$DW$T$112)
	.dwattr $C$DW$126, DW_AT_location[DW_OP_breg20 -4]

$C$DW$127	.dwtag  DW_TAG_variable
	.dwattr $C$DW$127, DW_AT_name("pulAddress")
	.dwattr $C$DW$127, DW_AT_TI_symbol_name("_pulAddress")
	.dwattr $C$DW$127, DW_AT_type(*$C$DW$T$114)
	.dwattr $C$DW$127, DW_AT_location[DW_OP_breg20 -6]

;----------------------------------------------------------------------
; 986 | uint16_t* pusAddress;                                                  
; 987 | uint32_t* pulAddress;                                                  
; 989 | //                                                                     
; 990 | // Wait until IPC Remote to Local request task is flagged              
; 991 | //                                                                     
;----------------------------------------------------------------------
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |985| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 992,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 992 | while (!(IpcRegs.IPCSTS.all & ulFlag))                                 
;----------------------------------------------------------------------
$C$L49:    
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 992,column 12,is_stmt,isa 0
;----------------------------------------------------------------------
; 996 | //                                                                     
; 997 | // If the command is correct for this function:                        
; 998 | // Then clear the mask bits at the requested address                   
; 999 | // and write back the 16/32-bit data to IPCLOCALREPLY.                 
; 1000 | // Acknowledge the status flag and the task flag.                      
; 1001 | //                                                                     
;----------------------------------------------------------------------
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |992| 
        MOVW      DP,#_IpcRegs+2        ; [CPU_ARAU] 
        AND       AL,@$BLOCKED(_IpcRegs)+2 ; [CPU_ALU] |992| 
        AND       AH,@$BLOCKED(_IpcRegs)+3 ; [CPU_ALU] |992| 
        TEST      ACC                   ; [CPU_ALU] |992| 
        B         $C$L49,EQ             ; [CPU_ALU] |992| 
        ; branchcc occurs ; [] |992| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 1002,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 1002 | if (IpcRegs.IPCRECVCOM == IPC_CLEAR_BITS_16)                           
;----------------------------------------------------------------------
        MOVB      ACC,#3                ; [CPU_ALU] |1002| 
        CMPL      ACC,@$BLOCKED(_IpcRegs)+24 ; [CPU_ALU] |1002| 
        B         $C$L50,NEQ            ; [CPU_ALU] |1002| 
        ; branchcc occurs ; [] |1002| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 1004,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 1004 | pusAddress = (uint16_t *)IpcRegs.IPCRECVADDR;;                         
;----------------------------------------------------------------------
        MOVL      ACC,@$BLOCKED(_IpcRegs)+26 ; [CPU_ALU] |1004| 
        MOVL      *-SP[4],ACC           ; [CPU_ALU] |1004| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 1005,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 1005 | *pusAddress &= ~((uint16_t)IpcRegs.IPCRECVDATA);                       
;----------------------------------------------------------------------
        MOVL      XAR4,*-SP[4]          ; [CPU_ALU] |1005| 
        MOVL      ACC,@$BLOCKED(_IpcRegs)+28 ; [CPU_ALU] |1005| 
        NOT       AL                    ; [CPU_ALU] |1005| 
        AND       *+XAR4[0],AL          ; [CPU_ALU] |1005| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 1006,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 1006 | IpcRegs.IPCLOCALREPLY = (uint32_t)*pusAddress;                         
;----------------------------------------------------------------------
        MOVL      XAR4,*-SP[4]          ; [CPU_ALU] |1006| 
        MOVU      ACC,*+XAR4[0]         ; [CPU_ALU] |1006| 
        MOVL      @$BLOCKED(_IpcRegs)+30,ACC ; [CPU_ALU] |1006| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 1008,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 1008 | IpcRegs.IPCACK.all = (ulStatusFlag | ulFlag);                          
;----------------------------------------------------------------------
        MOVL      ACC,*-SP[10]          ; [CPU_ALU] |1008| 
        OR        AL,*-SP[2]            ; [CPU_ALU] |1008| 
        OR        AH,*-SP[1]            ; [CPU_ALU] |1008| 
        MOVL      @$BLOCKED(_IpcRegs),ACC ; [CPU_ALU] |1008| 
        B         $C$L52,UNC            ; [CPU_ALU] 
        ; branch occurs ; [] 
$C$L50:    
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 1010,column 10,is_stmt,isa 0
;----------------------------------------------------------------------
; 1010 | else if (IpcRegs.IPCRECVCOM == IPC_CLEAR_BITS_32)                      
;----------------------------------------------------------------------
        MOVB      ACC,#4                ; [CPU_ALU] |1010| 
        CMPL      ACC,@$BLOCKED(_IpcRegs)+24 ; [CPU_ALU] |1010| 
        B         $C$L51,NEQ            ; [CPU_ALU] |1010| 
        ; branchcc occurs ; [] |1010| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 1012,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 1012 | pulAddress = (uint32_t *)IpcRegs.IPCRECVADDR;                          
;----------------------------------------------------------------------
        MOVL      ACC,@$BLOCKED(_IpcRegs)+26 ; [CPU_ALU] |1012| 
        MOVL      *-SP[6],ACC           ; [CPU_ALU] |1012| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 1013,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 1013 | *pulAddress &= ~((uint32_t)IpcRegs.IPCRECVDATA);                       
;----------------------------------------------------------------------
        MOVL      XAR4,*-SP[6]          ; [CPU_ALU] |1013| 
        MOVL      ACC,@$BLOCKED(_IpcRegs)+28 ; [CPU_ALU] |1013| 
        NOT       ACC                   ; [CPU_ALU] |1013| 
        AND       *+XAR4[0],AL          ; [CPU_ALU] |1013| 
        AND       *+XAR4[1],AH          ; [CPU_ALU] |1013| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 1014,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 1014 | IpcRegs.IPCLOCALREPLY = *pulAddress;                                   
;----------------------------------------------------------------------
        MOVL      XAR4,*-SP[6]          ; [CPU_ALU] |1014| 
        MOVL      ACC,*+XAR4[0]         ; [CPU_ALU] |1014| 
        MOVL      @$BLOCKED(_IpcRegs)+30,ACC ; [CPU_ALU] |1014| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 1016,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 1016 | IpcRegs.IPCACK.all = (ulStatusFlag | ulFlag);                          
; 1019 | //                                                                     
; 1020 | // Otherwise, only acknowledge the task flag.                          
; 1021 | // (Indicates to Remote CPU there was an error)                        
; 1022 | //                                                                     
; 1023 | else                                                                   
;----------------------------------------------------------------------
        MOVL      ACC,*-SP[10]          ; [CPU_ALU] |1016| 
        OR        AL,*-SP[2]            ; [CPU_ALU] |1016| 
        OR        AH,*-SP[1]            ; [CPU_ALU] |1016| 
        MOVL      @$BLOCKED(_IpcRegs),ACC ; [CPU_ALU] |1016| 
        B         $C$L52,UNC            ; [CPU_ALU] 
        ; branch occurs ; [] 
$C$L51:    
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 1025,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 1025 | IpcRegs.IPCACK.all = (ulFlag);                                         
;----------------------------------------------------------------------
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |1025| 
        MOVL      @$BLOCKED(_IpcRegs),ACC ; [CPU_ALU] |1025| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 1027,column 1,is_stmt,isa 0
$C$L52:    
        SUBB      SP,#6                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$128	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$128, DW_AT_low_pc(0x00)
	.dwattr $C$DW$128, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$122, DW_AT_TI_end_file("C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c")
	.dwattr $C$DW$122, DW_AT_TI_end_line(0x403)
	.dwattr $C$DW$122, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$122

	.sect	".text"
	.clink
	.global	_IPCLiteRtoLClearBits_Protected

$C$DW$129	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$129, DW_AT_name("IPCLiteRtoLClearBits_Protected")
	.dwattr $C$DW$129, DW_AT_low_pc(_IPCLiteRtoLClearBits_Protected)
	.dwattr $C$DW$129, DW_AT_high_pc(0x00)
	.dwattr $C$DW$129, DW_AT_TI_symbol_name("_IPCLiteRtoLClearBits_Protected")
	.dwattr $C$DW$129, DW_AT_external
	.dwattr $C$DW$129, DW_AT_TI_begin_file("C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c")
	.dwattr $C$DW$129, DW_AT_TI_begin_line(0x418)
	.dwattr $C$DW$129, DW_AT_TI_begin_column(0x01)
	.dwattr $C$DW$129, DW_AT_TI_max_frame_size(-8)
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 1049,column 1,is_stmt,address _IPCLiteRtoLClearBits_Protected,isa 0

	.dwfde $C$DW$CIE, _IPCLiteRtoLClearBits_Protected
$C$DW$130	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$130, DW_AT_name("ulFlag")
	.dwattr $C$DW$130, DW_AT_TI_symbol_name("_ulFlag")
	.dwattr $C$DW$130, DW_AT_type(*$C$DW$T$102)
	.dwattr $C$DW$130, DW_AT_location[DW_OP_reg0]

$C$DW$131	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$131, DW_AT_name("ulStatusFlag")
	.dwattr $C$DW$131, DW_AT_TI_symbol_name("_ulStatusFlag")
	.dwattr $C$DW$131, DW_AT_type(*$C$DW$T$102)
	.dwattr $C$DW$131, DW_AT_location[DW_OP_breg20 -10]

;----------------------------------------------------------------------
; 1048 | IPCLiteRtoLClearBits_Protected (uint32_t ulFlag, uint32_t ulStatusFlag)
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _IPCLiteRtoLClearBits_Protected FR SIZE:   6           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  6 Auto,  0 SOE     *
;***************************************************************

_IPCLiteRtoLClearBits_Protected:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#6                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -8
$C$DW$132	.dwtag  DW_TAG_variable
	.dwattr $C$DW$132, DW_AT_name("ulFlag")
	.dwattr $C$DW$132, DW_AT_TI_symbol_name("_ulFlag")
	.dwattr $C$DW$132, DW_AT_type(*$C$DW$T$102)
	.dwattr $C$DW$132, DW_AT_location[DW_OP_breg20 -2]

$C$DW$133	.dwtag  DW_TAG_variable
	.dwattr $C$DW$133, DW_AT_name("pusAddress")
	.dwattr $C$DW$133, DW_AT_TI_symbol_name("_pusAddress")
	.dwattr $C$DW$133, DW_AT_type(*$C$DW$T$112)
	.dwattr $C$DW$133, DW_AT_location[DW_OP_breg20 -4]

$C$DW$134	.dwtag  DW_TAG_variable
	.dwattr $C$DW$134, DW_AT_name("pulAddress")
	.dwattr $C$DW$134, DW_AT_TI_symbol_name("_pulAddress")
	.dwattr $C$DW$134, DW_AT_type(*$C$DW$T$114)
	.dwattr $C$DW$134, DW_AT_location[DW_OP_breg20 -6]

;----------------------------------------------------------------------
; 1050 | uint16_t* pusAddress;                                                  
; 1051 | uint32_t* pulAddress;                                                  
; 1053 | //                                                                     
; 1054 | // Wait until IPC Remote to Local request task is flagged              
; 1055 | //                                                                     
;----------------------------------------------------------------------
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |1049| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 1056,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 1056 | while (!(IpcRegs.IPCSTS.all & ulFlag))                                 
;----------------------------------------------------------------------
$C$L53:    
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 1056,column 12,is_stmt,isa 0
;----------------------------------------------------------------------
; 1060 | //                                                                     
; 1061 | // If the command is correct for this function:                        
; 1062 | // Then enable write access with EALLOW and                            
; 1063 | // clear the mask bits at the requested address.                       
; 1064 | // Write back the 16/32-bit data to IPCLOCALREPLY.                     
; 1065 | // Restore the status of the EALLOW register.                          
; 1066 | // Acknowledge the status flag and the task flag.                      
; 1067 | //                                                                     
;----------------------------------------------------------------------
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |1056| 
        MOVW      DP,#_IpcRegs+2        ; [CPU_ARAU] 
        AND       AL,@$BLOCKED(_IpcRegs)+2 ; [CPU_ALU] |1056| 
        AND       AH,@$BLOCKED(_IpcRegs)+3 ; [CPU_ALU] |1056| 
        TEST      ACC                   ; [CPU_ALU] |1056| 
        B         $C$L53,EQ             ; [CPU_ALU] |1056| 
        ; branchcc occurs ; [] |1056| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 1068,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 1068 | EALLOW;                                                                
;----------------------------------------------------------------------
 EALLOW
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 1070,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 1070 | if (IpcRegs.IPCRECVCOM == IPC_CLEAR_BITS_16_PROTECTED)                 
;----------------------------------------------------------------------
        MOVB      ACC,#11               ; [CPU_ALU] |1070| 
        CMPL      ACC,@$BLOCKED(_IpcRegs)+24 ; [CPU_ALU] |1070| 
        B         $C$L54,NEQ            ; [CPU_ALU] |1070| 
        ; branchcc occurs ; [] |1070| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 1073,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 1073 | pusAddress = (uint16_t *)IpcRegs.IPCRECVADDR;;                         
;----------------------------------------------------------------------
        MOVL      ACC,@$BLOCKED(_IpcRegs)+26 ; [CPU_ALU] |1073| 
        MOVL      *-SP[4],ACC           ; [CPU_ALU] |1073| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 1074,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 1074 | *pusAddress &= ~((uint16_t)IpcRegs.IPCRECVDATA);                       
;----------------------------------------------------------------------
        MOVL      XAR4,*-SP[4]          ; [CPU_ALU] |1074| 
        MOVL      ACC,@$BLOCKED(_IpcRegs)+28 ; [CPU_ALU] |1074| 
        NOT       AL                    ; [CPU_ALU] |1074| 
        AND       *+XAR4[0],AL          ; [CPU_ALU] |1074| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 1075,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 1075 | IpcRegs.IPCLOCALREPLY = (uint32_t)*pusAddress;                         
;----------------------------------------------------------------------
        MOVL      XAR4,*-SP[4]          ; [CPU_ALU] |1075| 
        MOVU      ACC,*+XAR4[0]         ; [CPU_ALU] |1075| 
        MOVL      @$BLOCKED(_IpcRegs)+30,ACC ; [CPU_ALU] |1075| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 1077,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 1077 | IpcRegs.IPCACK.all = (ulStatusFlag | ulFlag);                          
;----------------------------------------------------------------------
        MOVL      ACC,*-SP[10]          ; [CPU_ALU] |1077| 
        OR        AL,*-SP[2]            ; [CPU_ALU] |1077| 
        OR        AH,*-SP[1]            ; [CPU_ALU] |1077| 
        MOVL      @$BLOCKED(_IpcRegs),ACC ; [CPU_ALU] |1077| 
        B         $C$L56,UNC            ; [CPU_ALU] 
        ; branch occurs ; [] 
$C$L54:    
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 1079,column 10,is_stmt,isa 0
;----------------------------------------------------------------------
; 1079 | else if (IpcRegs.IPCRECVCOM == IPC_CLEAR_BITS_32_PROTECTED)            
;----------------------------------------------------------------------
        MOVB      ACC,#12               ; [CPU_ALU] |1079| 
        CMPL      ACC,@$BLOCKED(_IpcRegs)+24 ; [CPU_ALU] |1079| 
        B         $C$L55,NEQ            ; [CPU_ALU] |1079| 
        ; branchcc occurs ; [] |1079| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 1082,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 1082 | pulAddress = (uint32_t *)IpcRegs.IPCRECVADDR;;                         
;----------------------------------------------------------------------
        MOVL      ACC,@$BLOCKED(_IpcRegs)+26 ; [CPU_ALU] |1082| 
        MOVL      *-SP[6],ACC           ; [CPU_ALU] |1082| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 1083,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 1083 | *pulAddress &= ~((uint32_t)IpcRegs.IPCRECVDATA);                       
;----------------------------------------------------------------------
        MOVL      XAR4,*-SP[6]          ; [CPU_ALU] |1083| 
        MOVL      ACC,@$BLOCKED(_IpcRegs)+28 ; [CPU_ALU] |1083| 
        NOT       ACC                   ; [CPU_ALU] |1083| 
        AND       *+XAR4[0],AL          ; [CPU_ALU] |1083| 
        AND       *+XAR4[1],AH          ; [CPU_ALU] |1083| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 1084,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 1084 | IpcRegs.IPCLOCALREPLY = (uint32_t)*pulAddress;                         
;----------------------------------------------------------------------
        MOVL      XAR4,*-SP[6]          ; [CPU_ALU] |1084| 
        MOVL      ACC,*+XAR4[0]         ; [CPU_ALU] |1084| 
        MOVL      @$BLOCKED(_IpcRegs)+30,ACC ; [CPU_ALU] |1084| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 1086,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 1086 | IpcRegs.IPCACK.all = (ulStatusFlag | ulFlag);                          
; 1089 | //                                                                     
; 1090 | // Otherwise, only acknowledge the task flag.                          
; 1091 | // (Indicates to Remote CPU there was an error)                        
; 1092 | //                                                                     
; 1093 | else                                                                   
;----------------------------------------------------------------------
        MOVL      ACC,*-SP[10]          ; [CPU_ALU] |1086| 
        OR        AL,*-SP[2]            ; [CPU_ALU] |1086| 
        OR        AH,*-SP[1]            ; [CPU_ALU] |1086| 
        MOVL      @$BLOCKED(_IpcRegs),ACC ; [CPU_ALU] |1086| 
        B         $C$L56,UNC            ; [CPU_ALU] 
        ; branch occurs ; [] 
$C$L55:    
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 1095,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 1095 | IpcRegs.IPCACK.all = (ulFlag);                                         
;----------------------------------------------------------------------
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |1095| 
        MOVL      @$BLOCKED(_IpcRegs),ACC ; [CPU_ALU] |1095| 
$C$L56:    
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 1098,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 1098 | EDIS;                                                                  
;----------------------------------------------------------------------
 EDIS
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 1099,column 1,is_stmt,isa 0
        SUBB      SP,#6                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
        SPM       #0                    ; [CPU_ALU] 
$C$DW$135	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$135, DW_AT_low_pc(0x00)
	.dwattr $C$DW$135, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$129, DW_AT_TI_end_file("C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c")
	.dwattr $C$DW$129, DW_AT_TI_end_line(0x44b)
	.dwattr $C$DW$129, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$129

	.sect	".text"
	.clink
	.global	_IPCLiteRtoLDataWrite

$C$DW$136	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$136, DW_AT_name("IPCLiteRtoLDataWrite")
	.dwattr $C$DW$136, DW_AT_low_pc(_IPCLiteRtoLDataWrite)
	.dwattr $C$DW$136, DW_AT_high_pc(0x00)
	.dwattr $C$DW$136, DW_AT_TI_symbol_name("_IPCLiteRtoLDataWrite")
	.dwattr $C$DW$136, DW_AT_external
	.dwattr $C$DW$136, DW_AT_TI_begin_file("C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c")
	.dwattr $C$DW$136, DW_AT_TI_begin_line(0x45e)
	.dwattr $C$DW$136, DW_AT_TI_begin_column(0x01)
	.dwattr $C$DW$136, DW_AT_TI_max_frame_size(-8)
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 1119,column 1,is_stmt,address _IPCLiteRtoLDataWrite,isa 0

	.dwfde $C$DW$CIE, _IPCLiteRtoLDataWrite
$C$DW$137	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$137, DW_AT_name("ulFlag")
	.dwattr $C$DW$137, DW_AT_TI_symbol_name("_ulFlag")
	.dwattr $C$DW$137, DW_AT_type(*$C$DW$T$102)
	.dwattr $C$DW$137, DW_AT_location[DW_OP_reg0]

$C$DW$138	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$138, DW_AT_name("ulStatusFlag")
	.dwattr $C$DW$138, DW_AT_TI_symbol_name("_ulStatusFlag")
	.dwattr $C$DW$138, DW_AT_type(*$C$DW$T$102)
	.dwattr $C$DW$138, DW_AT_location[DW_OP_breg20 -10]

;----------------------------------------------------------------------
; 1118 | IPCLiteRtoLDataWrite(uint32_t ulFlag, uint32_t ulStatusFlag)           
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _IPCLiteRtoLDataWrite         FR SIZE:   6           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  6 Auto,  0 SOE     *
;***************************************************************

_IPCLiteRtoLDataWrite:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#6                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -8
$C$DW$139	.dwtag  DW_TAG_variable
	.dwattr $C$DW$139, DW_AT_name("ulFlag")
	.dwattr $C$DW$139, DW_AT_TI_symbol_name("_ulFlag")
	.dwattr $C$DW$139, DW_AT_type(*$C$DW$T$102)
	.dwattr $C$DW$139, DW_AT_location[DW_OP_breg20 -2]

$C$DW$140	.dwtag  DW_TAG_variable
	.dwattr $C$DW$140, DW_AT_name("pulAddress")
	.dwattr $C$DW$140, DW_AT_TI_symbol_name("_pulAddress")
	.dwattr $C$DW$140, DW_AT_type(*$C$DW$T$114)
	.dwattr $C$DW$140, DW_AT_location[DW_OP_breg20 -4]

$C$DW$141	.dwtag  DW_TAG_variable
	.dwattr $C$DW$141, DW_AT_name("pusAddress")
	.dwattr $C$DW$141, DW_AT_TI_symbol_name("_pusAddress")
	.dwattr $C$DW$141, DW_AT_type(*$C$DW$T$112)
	.dwattr $C$DW$141, DW_AT_location[DW_OP_breg20 -6]

;----------------------------------------------------------------------
; 1120 | uint32_t* pulAddress;                                                  
; 1121 | uint16_t* pusAddress;                                                  
; 1123 | //                                                                     
; 1124 | // Wait until IPC Remote to Local request task is flagged              
; 1125 | //                                                                     
;----------------------------------------------------------------------
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |1119| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 1126,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 1126 | while (!(IpcRegs.IPCSTS.all & ulFlag))                                 
;----------------------------------------------------------------------
$C$L57:    
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 1126,column 12,is_stmt,isa 0
;----------------------------------------------------------------------
; 1130 | //                                                                     
; 1131 | // If the command is correct for this function:                        
; 1132 | // Then write the 16/32-bit data to the requested address              
; 1133 | // and write back the 16/32-bit data to IPCLOCALREPLY.                 
; 1134 | // Acknowledge the status flag and the task flag.                      
; 1135 | //                                                                     
;----------------------------------------------------------------------
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |1126| 
        MOVW      DP,#_IpcRegs+2        ; [CPU_ARAU] 
        AND       AL,@$BLOCKED(_IpcRegs)+2 ; [CPU_ALU] |1126| 
        AND       AH,@$BLOCKED(_IpcRegs)+3 ; [CPU_ALU] |1126| 
        TEST      ACC                   ; [CPU_ALU] |1126| 
        B         $C$L57,EQ             ; [CPU_ALU] |1126| 
        ; branchcc occurs ; [] |1126| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 1136,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 1136 | if (IpcRegs.IPCRECVCOM == IPC_DATA_WRITE_16)                           
;----------------------------------------------------------------------
        MOVB      ACC,#5                ; [CPU_ALU] |1136| 
        CMPL      ACC,@$BLOCKED(_IpcRegs)+24 ; [CPU_ALU] |1136| 
        B         $C$L58,NEQ            ; [CPU_ALU] |1136| 
        ; branchcc occurs ; [] |1136| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 1138,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 1138 | pusAddress = (uint16_t *)IpcRegs.IPCRECVADDR;;                         
;----------------------------------------------------------------------
        MOVL      ACC,@$BLOCKED(_IpcRegs)+26 ; [CPU_ALU] |1138| 
        MOVL      *-SP[6],ACC           ; [CPU_ALU] |1138| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 1139,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 1139 | *pusAddress = (uint16_t)IpcRegs.IPCRECVDATA;                           
;----------------------------------------------------------------------
        MOVL      XAR4,*-SP[6]          ; [CPU_ALU] |1139| 
        MOVL      ACC,@$BLOCKED(_IpcRegs)+28 ; [CPU_ALU] |1139| 
        MOV       *+XAR4[0],AL          ; [CPU_ALU] |1139| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 1140,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 1140 | IpcRegs.IPCLOCALREPLY = (uint32_t)*pusAddress;                         
;----------------------------------------------------------------------
        MOVL      XAR4,*-SP[6]          ; [CPU_ALU] |1140| 
        MOVU      ACC,*+XAR4[0]         ; [CPU_ALU] |1140| 
        MOVL      @$BLOCKED(_IpcRegs)+30,ACC ; [CPU_ALU] |1140| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 1142,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 1142 | IpcRegs.IPCACK.all = (ulStatusFlag | ulFlag);                          
;----------------------------------------------------------------------
        MOVL      ACC,*-SP[10]          ; [CPU_ALU] |1142| 
        OR        AL,*-SP[2]            ; [CPU_ALU] |1142| 
        OR        AH,*-SP[1]            ; [CPU_ALU] |1142| 
        MOVL      @$BLOCKED(_IpcRegs),ACC ; [CPU_ALU] |1142| 
        B         $C$L60,UNC            ; [CPU_ALU] 
        ; branch occurs ; [] 
$C$L58:    
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 1144,column 10,is_stmt,isa 0
;----------------------------------------------------------------------
; 1144 | else if (IpcRegs.IPCRECVCOM == IPC_DATA_WRITE_32)                      
;----------------------------------------------------------------------
        MOVB      ACC,#6                ; [CPU_ALU] |1144| 
        CMPL      ACC,@$BLOCKED(_IpcRegs)+24 ; [CPU_ALU] |1144| 
        B         $C$L59,NEQ            ; [CPU_ALU] |1144| 
        ; branchcc occurs ; [] |1144| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 1146,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 1146 | pulAddress = (uint32_t *)IpcRegs.IPCRECVADDR;;                         
;----------------------------------------------------------------------
        MOVL      ACC,@$BLOCKED(_IpcRegs)+26 ; [CPU_ALU] |1146| 
        MOVL      *-SP[4],ACC           ; [CPU_ALU] |1146| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 1147,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 1147 | *pulAddress = IpcRegs.IPCRECVDATA;                                     
;----------------------------------------------------------------------
        MOVL      XAR4,*-SP[4]          ; [CPU_ALU] |1147| 
        MOVL      ACC,@$BLOCKED(_IpcRegs)+28 ; [CPU_ALU] |1147| 
        MOVL      *+XAR4[0],ACC         ; [CPU_ALU] |1147| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 1148,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 1148 | IpcRegs.IPCLOCALREPLY = *pulAddress;                                   
;----------------------------------------------------------------------
        MOVL      XAR4,*-SP[4]          ; [CPU_ALU] |1148| 
        MOVL      ACC,*+XAR4[0]         ; [CPU_ALU] |1148| 
        MOVL      @$BLOCKED(_IpcRegs)+30,ACC ; [CPU_ALU] |1148| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 1150,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 1150 | IpcRegs.IPCACK.all = (ulStatusFlag | ulFlag);                          
; 1154 | //                                                                     
; 1155 | // Otherwise, only acknowledge the task flag.                          
; 1156 | // (Indicates to Remote CPU there was an error)                        
; 1157 | //                                                                     
; 1158 | else                                                                   
;----------------------------------------------------------------------
        MOVL      ACC,*-SP[10]          ; [CPU_ALU] |1150| 
        OR        AL,*-SP[2]            ; [CPU_ALU] |1150| 
        OR        AH,*-SP[1]            ; [CPU_ALU] |1150| 
        MOVL      @$BLOCKED(_IpcRegs),ACC ; [CPU_ALU] |1150| 
        B         $C$L60,UNC            ; [CPU_ALU] 
        ; branch occurs ; [] 
$C$L59:    
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 1160,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 1160 | IpcRegs.IPCACK.all = (ulFlag);                                         
;----------------------------------------------------------------------
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |1160| 
        MOVL      @$BLOCKED(_IpcRegs),ACC ; [CPU_ALU] |1160| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 1162,column 1,is_stmt,isa 0
$C$L60:    
        SUBB      SP,#6                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$142	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$142, DW_AT_low_pc(0x00)
	.dwattr $C$DW$142, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$136, DW_AT_TI_end_file("C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c")
	.dwattr $C$DW$136, DW_AT_TI_end_line(0x48a)
	.dwattr $C$DW$136, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$136

	.sect	".text"
	.clink
	.global	_IPCLiteRtoLDataWrite_Protected

$C$DW$143	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$143, DW_AT_name("IPCLiteRtoLDataWrite_Protected")
	.dwattr $C$DW$143, DW_AT_low_pc(_IPCLiteRtoLDataWrite_Protected)
	.dwattr $C$DW$143, DW_AT_high_pc(0x00)
	.dwattr $C$DW$143, DW_AT_TI_symbol_name("_IPCLiteRtoLDataWrite_Protected")
	.dwattr $C$DW$143, DW_AT_external
	.dwattr $C$DW$143, DW_AT_TI_begin_file("C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c")
	.dwattr $C$DW$143, DW_AT_TI_begin_line(0x49d)
	.dwattr $C$DW$143, DW_AT_TI_begin_column(0x01)
	.dwattr $C$DW$143, DW_AT_TI_max_frame_size(-8)
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 1182,column 1,is_stmt,address _IPCLiteRtoLDataWrite_Protected,isa 0

	.dwfde $C$DW$CIE, _IPCLiteRtoLDataWrite_Protected
$C$DW$144	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$144, DW_AT_name("ulFlag")
	.dwattr $C$DW$144, DW_AT_TI_symbol_name("_ulFlag")
	.dwattr $C$DW$144, DW_AT_type(*$C$DW$T$102)
	.dwattr $C$DW$144, DW_AT_location[DW_OP_reg0]

$C$DW$145	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$145, DW_AT_name("ulStatusFlag")
	.dwattr $C$DW$145, DW_AT_TI_symbol_name("_ulStatusFlag")
	.dwattr $C$DW$145, DW_AT_type(*$C$DW$T$102)
	.dwattr $C$DW$145, DW_AT_location[DW_OP_breg20 -10]

;----------------------------------------------------------------------
; 1181 | IPCLiteRtoLDataWrite_Protected(uint32_t ulFlag, uint32_t ulStatusFlag) 
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _IPCLiteRtoLDataWrite_Protected FR SIZE:   6           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  6 Auto,  0 SOE     *
;***************************************************************

_IPCLiteRtoLDataWrite_Protected:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#6                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -8
$C$DW$146	.dwtag  DW_TAG_variable
	.dwattr $C$DW$146, DW_AT_name("ulFlag")
	.dwattr $C$DW$146, DW_AT_TI_symbol_name("_ulFlag")
	.dwattr $C$DW$146, DW_AT_type(*$C$DW$T$102)
	.dwattr $C$DW$146, DW_AT_location[DW_OP_breg20 -2]

$C$DW$147	.dwtag  DW_TAG_variable
	.dwattr $C$DW$147, DW_AT_name("pulAddress")
	.dwattr $C$DW$147, DW_AT_TI_symbol_name("_pulAddress")
	.dwattr $C$DW$147, DW_AT_type(*$C$DW$T$114)
	.dwattr $C$DW$147, DW_AT_location[DW_OP_breg20 -4]

$C$DW$148	.dwtag  DW_TAG_variable
	.dwattr $C$DW$148, DW_AT_name("pusAddress")
	.dwattr $C$DW$148, DW_AT_TI_symbol_name("_pusAddress")
	.dwattr $C$DW$148, DW_AT_type(*$C$DW$T$112)
	.dwattr $C$DW$148, DW_AT_location[DW_OP_breg20 -6]

;----------------------------------------------------------------------
; 1183 | uint32_t* pulAddress;                                                  
; 1184 | uint16_t* pusAddress;                                                  
; 1186 | //                                                                     
; 1187 | // Wait until IPC Remote to Local request task is flagged              
; 1188 | //                                                                     
;----------------------------------------------------------------------
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |1182| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 1189,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 1189 | while (!(IpcRegs.IPCSTS.all & ulFlag))                                 
;----------------------------------------------------------------------
$C$L61:    
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 1189,column 12,is_stmt,isa 0
;----------------------------------------------------------------------
; 1193 | //                                                                     
; 1194 | // If the command is correct for this function:                        
; 1195 | // Then enable write access with EALLOW and                            
; 1196 | // write the 16/32-bit data to the requested address                   
; 1197 | // and write back the 16/32-bit data to IPCLOCALREPLY.                 
; 1198 | // Acknowledge the status flag and the task flag.                      
; 1199 | //                                                                     
;----------------------------------------------------------------------
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |1189| 
        MOVW      DP,#_IpcRegs+2        ; [CPU_ARAU] 
        AND       AL,@$BLOCKED(_IpcRegs)+2 ; [CPU_ALU] |1189| 
        AND       AH,@$BLOCKED(_IpcRegs)+3 ; [CPU_ALU] |1189| 
        TEST      ACC                   ; [CPU_ALU] |1189| 
        B         $C$L61,EQ             ; [CPU_ALU] |1189| 
        ; branchcc occurs ; [] |1189| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 1200,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 1200 | EALLOW;                                                                
;----------------------------------------------------------------------
 EALLOW
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 1202,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 1202 | if (IpcRegs.IPCRECVCOM == IPC_DATA_WRITE_16_PROTECTED)                 
;----------------------------------------------------------------------
        MOVB      ACC,#13               ; [CPU_ALU] |1202| 
        CMPL      ACC,@$BLOCKED(_IpcRegs)+24 ; [CPU_ALU] |1202| 
        B         $C$L62,NEQ            ; [CPU_ALU] |1202| 
        ; branchcc occurs ; [] |1202| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 1204,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 1204 | pusAddress = (uint16_t *)IpcRegs.IPCRECVADDR;;                         
;----------------------------------------------------------------------
        MOVL      ACC,@$BLOCKED(_IpcRegs)+26 ; [CPU_ALU] |1204| 
        MOVL      *-SP[6],ACC           ; [CPU_ALU] |1204| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 1205,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 1205 | *pusAddress = (uint16_t)IpcRegs.IPCRECVDATA;                           
;----------------------------------------------------------------------
        MOVL      XAR4,*-SP[6]          ; [CPU_ALU] |1205| 
        MOVL      ACC,@$BLOCKED(_IpcRegs)+28 ; [CPU_ALU] |1205| 
        MOV       *+XAR4[0],AL          ; [CPU_ALU] |1205| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 1206,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 1206 | IpcRegs.IPCLOCALREPLY = (uint32_t)*pusAddress;                         
;----------------------------------------------------------------------
        MOVL      XAR4,*-SP[6]          ; [CPU_ALU] |1206| 
        MOVU      ACC,*+XAR4[0]         ; [CPU_ALU] |1206| 
        MOVL      @$BLOCKED(_IpcRegs)+30,ACC ; [CPU_ALU] |1206| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 1208,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 1208 | IpcRegs.IPCACK.all = (ulStatusFlag | ulFlag);                          
;----------------------------------------------------------------------
        MOVL      ACC,*-SP[10]          ; [CPU_ALU] |1208| 
        OR        AL,*-SP[2]            ; [CPU_ALU] |1208| 
        OR        AH,*-SP[1]            ; [CPU_ALU] |1208| 
        MOVL      @$BLOCKED(_IpcRegs),ACC ; [CPU_ALU] |1208| 
        B         $C$L64,UNC            ; [CPU_ALU] 
        ; branch occurs ; [] 
$C$L62:    
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 1210,column 10,is_stmt,isa 0
;----------------------------------------------------------------------
; 1210 | else if (IpcRegs.IPCRECVCOM == IPC_DATA_WRITE_32_PROTECTED)            
;----------------------------------------------------------------------
        MOVB      ACC,#14               ; [CPU_ALU] |1210| 
        CMPL      ACC,@$BLOCKED(_IpcRegs)+24 ; [CPU_ALU] |1210| 
        B         $C$L63,NEQ            ; [CPU_ALU] |1210| 
        ; branchcc occurs ; [] |1210| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 1212,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 1212 | pulAddress = (uint32_t *)IpcRegs.IPCRECVADDR;                          
;----------------------------------------------------------------------
        MOVL      ACC,@$BLOCKED(_IpcRegs)+26 ; [CPU_ALU] |1212| 
        MOVL      *-SP[4],ACC           ; [CPU_ALU] |1212| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 1213,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 1213 | *pulAddress = IpcRegs.IPCRECVDATA;                                     
;----------------------------------------------------------------------
        MOVL      XAR4,*-SP[4]          ; [CPU_ALU] |1213| 
        MOVL      ACC,@$BLOCKED(_IpcRegs)+28 ; [CPU_ALU] |1213| 
        MOVL      *+XAR4[0],ACC         ; [CPU_ALU] |1213| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 1214,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 1214 | IpcRegs.IPCLOCALREPLY = *pulAddress;                                   
;----------------------------------------------------------------------
        MOVL      XAR4,*-SP[4]          ; [CPU_ALU] |1214| 
        MOVL      ACC,*+XAR4[0]         ; [CPU_ALU] |1214| 
        MOVL      @$BLOCKED(_IpcRegs)+30,ACC ; [CPU_ALU] |1214| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 1216,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 1216 | IpcRegs.IPCACK.all = (ulStatusFlag | ulFlag);                          
; 1220 | //                                                                     
; 1221 | // Otherwise, only acknowledge the task flag.                          
; 1222 | // (Indicates to Remote CPU there was an error)                        
; 1223 | //                                                                     
; 1224 | else                                                                   
;----------------------------------------------------------------------
        MOVL      ACC,*-SP[10]          ; [CPU_ALU] |1216| 
        OR        AL,*-SP[2]            ; [CPU_ALU] |1216| 
        OR        AH,*-SP[1]            ; [CPU_ALU] |1216| 
        MOVL      @$BLOCKED(_IpcRegs),ACC ; [CPU_ALU] |1216| 
        B         $C$L64,UNC            ; [CPU_ALU] 
        ; branch occurs ; [] 
$C$L63:    
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 1226,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 1226 | IpcRegs.IPCACK.all = (ulFlag);                                         
; 1229 | //                                                                     
; 1230 | // Restore write-protection status.                                    
; 1231 | //                                                                     
;----------------------------------------------------------------------
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |1226| 
        MOVL      @$BLOCKED(_IpcRegs),ACC ; [CPU_ALU] |1226| 
$C$L64:    
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 1232,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 1232 | EDIS;                                                                  
;----------------------------------------------------------------------
 EDIS
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 1233,column 1,is_stmt,isa 0
        SUBB      SP,#6                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
        SPM       #0                    ; [CPU_ALU] 
$C$DW$149	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$149, DW_AT_low_pc(0x00)
	.dwattr $C$DW$149, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$143, DW_AT_TI_end_file("C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c")
	.dwattr $C$DW$143, DW_AT_TI_end_line(0x4d1)
	.dwattr $C$DW$143, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$143

	.sect	".text"
	.clink
	.global	_IPCLiteRtoLFunctionCall

$C$DW$150	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$150, DW_AT_name("IPCLiteRtoLFunctionCall")
	.dwattr $C$DW$150, DW_AT_low_pc(_IPCLiteRtoLFunctionCall)
	.dwattr $C$DW$150, DW_AT_high_pc(0x00)
	.dwattr $C$DW$150, DW_AT_TI_symbol_name("_IPCLiteRtoLFunctionCall")
	.dwattr $C$DW$150, DW_AT_external
	.dwattr $C$DW$150, DW_AT_TI_begin_file("C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c")
	.dwattr $C$DW$150, DW_AT_TI_begin_line(0x4e6)
	.dwattr $C$DW$150, DW_AT_TI_begin_column(0x01)
	.dwattr $C$DW$150, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 1255,column 1,is_stmt,address _IPCLiteRtoLFunctionCall,isa 0

	.dwfde $C$DW$CIE, _IPCLiteRtoLFunctionCall
$C$DW$151	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$151, DW_AT_name("ulFlag")
	.dwattr $C$DW$151, DW_AT_TI_symbol_name("_ulFlag")
	.dwattr $C$DW$151, DW_AT_type(*$C$DW$T$102)
	.dwattr $C$DW$151, DW_AT_location[DW_OP_reg0]

$C$DW$152	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$152, DW_AT_name("ulStatusFlag")
	.dwattr $C$DW$152, DW_AT_TI_symbol_name("_ulStatusFlag")
	.dwattr $C$DW$152, DW_AT_type(*$C$DW$T$102)
	.dwattr $C$DW$152, DW_AT_location[DW_OP_breg20 -8]

;----------------------------------------------------------------------
; 1254 | IPCLiteRtoLFunctionCall(uint32_t ulFlag, uint32_t ulStatusFlag)        
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _IPCLiteRtoLFunctionCall      FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  4 Auto,  0 SOE     *
;***************************************************************

_IPCLiteRtoLFunctionCall:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
$C$DW$153	.dwtag  DW_TAG_variable
	.dwattr $C$DW$153, DW_AT_name("ulFlag")
	.dwattr $C$DW$153, DW_AT_TI_symbol_name("_ulFlag")
	.dwattr $C$DW$153, DW_AT_type(*$C$DW$T$102)
	.dwattr $C$DW$153, DW_AT_location[DW_OP_breg20 -2]

;----------------------------------------------------------------------
; 1256 | //                                                                     
; 1257 | // Wait until IPC Remote to Local request task is flagged              
; 1258 | //                                                                     
;----------------------------------------------------------------------
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |1255| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 1259,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 1259 | while (!(IpcRegs.IPCSTS.all & ulFlag))                                 
;----------------------------------------------------------------------
$C$L65:    
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 1259,column 12,is_stmt,isa 0
;----------------------------------------------------------------------
; 1263 | //                                                                     
; 1264 | // If the command is correct for this function:                        
; 1265 | // Then call function at requested address                             
; 1266 | // and if there is a return value, insert into                         
; 1267 | // IPCLOCALREPLY register.                                             
; 1268 | // Acknowledge the status flag and the task flag.                      
; 1269 | //                                                                     
;----------------------------------------------------------------------
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |1259| 
        MOVW      DP,#_IpcRegs+2        ; [CPU_ARAU] 
        AND       AL,@$BLOCKED(_IpcRegs)+2 ; [CPU_ALU] |1259| 
        AND       AH,@$BLOCKED(_IpcRegs)+3 ; [CPU_ALU] |1259| 
        TEST      ACC                   ; [CPU_ALU] |1259| 
        B         $C$L65,EQ             ; [CPU_ALU] |1259| 
        ; branchcc occurs ; [] |1259| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 1270,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 1270 | if (IpcRegs.IPCRECVCOM == IPC_FUNC_CALL)                               
;----------------------------------------------------------------------
        MOVB      ACC,#18               ; [CPU_ALU] |1270| 
        CMPL      ACC,@$BLOCKED(_IpcRegs)+24 ; [CPU_ALU] |1270| 
        B         $C$L66,NEQ            ; [CPU_ALU] |1270| 
        ; branchcc occurs ; [] |1270| 

$C$DW$154	.dwtag  DW_TAG_lexical_block
	.dwattr $C$DW$154, DW_AT_low_pc(0x00)
	.dwattr $C$DW$154, DW_AT_high_pc(0x00)
$C$DW$155	.dwtag  DW_TAG_variable
	.dwattr $C$DW$155, DW_AT_name("func_call")
	.dwattr $C$DW$155, DW_AT_TI_symbol_name("_func_call")
	.dwattr $C$DW$155, DW_AT_type(*$C$DW$T$117)
	.dwattr $C$DW$155, DW_AT_location[DW_OP_breg20 -4]

	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 1272,column 33,is_stmt,isa 0
;----------------------------------------------------------------------
; 1272 | tfIpcFuncCall func_call = (tfIpcFuncCall)IpcRegs.IPCRECVADDR;          
;----------------------------------------------------------------------
        MOVL      ACC,@$BLOCKED(_IpcRegs)+26 ; [CPU_ALU] |1272| 
        MOVL      *-SP[4],ACC           ; [CPU_ALU] |1272| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 1273,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 1273 | IpcRegs.IPCLOCALREPLY = func_call(IpcRegs.IPCRECVDATA);                
;----------------------------------------------------------------------
        MOVL      XAR7,*-SP[4]          ; [CPU_ALU] |1273| 
        MOVL      ACC,@$BLOCKED(_IpcRegs)+28 ; [CPU_ALU] |1273| 
$C$DW$156	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$156, DW_AT_low_pc(0x00)
	.dwattr $C$DW$156, DW_AT_TI_call
	.dwattr $C$DW$156, DW_AT_TI_indirect

        LCR       *XAR7                 ; [CPU_ALU] |1273| 
        ; call occurs [XAR7] ; [] |1273| 
        MOVW      DP,#_IpcRegs+30       ; [CPU_ARAU] 
        MOVL      @$BLOCKED(_IpcRegs)+30,ACC ; [CPU_ALU] |1273| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 1275,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 1275 | IpcRegs.IPCACK.all = (ulStatusFlag | ulFlag);                          
; 1278 | //                                                                     
; 1279 | // Otherwise, only acknowledge the task flag.                          
; 1280 | //(Indicates to Remote CPU there was an error)                         
; 1281 | //                                                                     
; 1282 | else                                                                   
;----------------------------------------------------------------------
        MOVL      ACC,*-SP[8]           ; [CPU_ALU] |1275| 
        OR        AL,*-SP[2]            ; [CPU_ALU] |1275| 
        OR        AH,*-SP[1]            ; [CPU_ALU] |1275| 
        MOVL      @$BLOCKED(_IpcRegs),ACC ; [CPU_ALU] |1275| 
	.dwendtag $C$DW$154

        B         $C$L67,UNC            ; [CPU_ALU] 
        ; branch occurs ; [] 
$C$L66:    
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 1284,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 1284 | IpcRegs.IPCACK.all = (ulFlag);                                         
;----------------------------------------------------------------------
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |1284| 
        MOVL      @$BLOCKED(_IpcRegs),ACC ; [CPU_ALU] |1284| 
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 1286,column 1,is_stmt,isa 0
$C$L67:    
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$157	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$157, DW_AT_low_pc(0x00)
	.dwattr $C$DW$157, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$150, DW_AT_TI_end_file("C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c")
	.dwattr $C$DW$150, DW_AT_TI_end_line(0x506)
	.dwattr $C$DW$150, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$150

	.sect	".text"
	.clink
	.global	_DelayLoop

$C$DW$158	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$158, DW_AT_name("DelayLoop")
	.dwattr $C$DW$158, DW_AT_low_pc(_DelayLoop)
	.dwattr $C$DW$158, DW_AT_high_pc(0x00)
	.dwattr $C$DW$158, DW_AT_TI_symbol_name("_DelayLoop")
	.dwattr $C$DW$158, DW_AT_external
	.dwattr $C$DW$158, DW_AT_TI_begin_file("C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c")
	.dwattr $C$DW$158, DW_AT_TI_begin_line(0x508)
	.dwattr $C$DW$158, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$158, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 1289,column 1,is_stmt,address _DelayLoop,isa 0

	.dwfde $C$DW$CIE, _DelayLoop
;----------------------------------------------------------------------
; 1288 | void DelayLoop (void)                                                  
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _DelayLoop                    FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_DelayLoop:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 1290,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 1290 | __asm(" nop");                                                         
;----------------------------------------------------------------------
 nop
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 1291,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 1291 | __asm(" nop");                                                         
;----------------------------------------------------------------------
 nop
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 1292,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 1292 | __asm(" nop");                                                         
;----------------------------------------------------------------------
 nop
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 1293,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 1293 | __asm(" nop");                                                         
;----------------------------------------------------------------------
 nop
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 1294,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 1294 | __asm(" nop");                                                         
;----------------------------------------------------------------------
 nop
	.dwpsn	file "C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c",line 1295,column 1,is_stmt,isa 0
        SPM       #0                    ; [CPU_ALU] 
$C$DW$159	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$159, DW_AT_low_pc(0x00)
	.dwattr $C$DW$159, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$158, DW_AT_TI_end_file("C:/TI/C2000Ware_3_04_00_00/device_support/f2837xd/common/source/F2837xD_Ipc_Driver_Lite.c")
	.dwattr $C$DW$158, DW_AT_TI_end_line(0x50f)
	.dwattr $C$DW$158, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$158

;**************************************************************
;* UNDEFINED EXTERNAL REFERENCES                              *
;**************************************************************
	.global	_IpcRegs
	.global	_MemCfgRegs

;***************************************************************
;* TYPE INFORMATION                                            *
;***************************************************************

$C$DW$T$20	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$20, DW_AT_name("DxACCPROT0_BITS")
	.dwattr $C$DW$T$20, DW_AT_byte_size(0x02)
$C$DW$160	.dwtag  DW_TAG_member
	.dwattr $C$DW$160, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$160, DW_AT_name("rsvd1")
	.dwattr $C$DW$160, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$160, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$160, DW_AT_bit_size(0x10)
	.dwattr $C$DW$160, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$160, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$161	.dwtag  DW_TAG_member
	.dwattr $C$DW$161, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$161, DW_AT_name("FETCHPROT_D0")
	.dwattr $C$DW$161, DW_AT_TI_symbol_name("_FETCHPROT_D0")
	.dwattr $C$DW$161, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$161, DW_AT_bit_size(0x01)
	.dwattr $C$DW$161, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$161, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$162	.dwtag  DW_TAG_member
	.dwattr $C$DW$162, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$162, DW_AT_name("CPUWRPROT_D0")
	.dwattr $C$DW$162, DW_AT_TI_symbol_name("_CPUWRPROT_D0")
	.dwattr $C$DW$162, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$162, DW_AT_bit_size(0x01)
	.dwattr $C$DW$162, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$162, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$163	.dwtag  DW_TAG_member
	.dwattr $C$DW$163, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$163, DW_AT_name("rsvd2")
	.dwattr $C$DW$163, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$163, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$163, DW_AT_bit_size(0x06)
	.dwattr $C$DW$163, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$163, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$164	.dwtag  DW_TAG_member
	.dwattr $C$DW$164, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$164, DW_AT_name("FETCHPROT_D1")
	.dwattr $C$DW$164, DW_AT_TI_symbol_name("_FETCHPROT_D1")
	.dwattr $C$DW$164, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$164, DW_AT_bit_size(0x01)
	.dwattr $C$DW$164, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$164, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$165	.dwtag  DW_TAG_member
	.dwattr $C$DW$165, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$165, DW_AT_name("CPUWRPROT_D1")
	.dwattr $C$DW$165, DW_AT_TI_symbol_name("_CPUWRPROT_D1")
	.dwattr $C$DW$165, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$165, DW_AT_bit_size(0x01)
	.dwattr $C$DW$165, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$165, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$166	.dwtag  DW_TAG_member
	.dwattr $C$DW$166, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$166, DW_AT_name("rsvd3")
	.dwattr $C$DW$166, DW_AT_TI_symbol_name("_rsvd3")
	.dwattr $C$DW$166, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$166, DW_AT_bit_size(0x06)
	.dwattr $C$DW$166, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$166, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$20


$C$DW$T$22	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$22, DW_AT_name("DxACCPROT0_REG")
	.dwattr $C$DW$T$22, DW_AT_byte_size(0x02)
$C$DW$167	.dwtag  DW_TAG_member
	.dwattr $C$DW$167, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$167, DW_AT_name("all")
	.dwattr $C$DW$167, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$167, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$167, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$168	.dwtag  DW_TAG_member
	.dwattr $C$DW$168, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$168, DW_AT_name("bit")
	.dwattr $C$DW$168, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$168, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$168, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$22


$C$DW$T$23	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$23, DW_AT_name("DxCOMMIT_BITS")
	.dwattr $C$DW$T$23, DW_AT_byte_size(0x02)
$C$DW$169	.dwtag  DW_TAG_member
	.dwattr $C$DW$169, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$169, DW_AT_name("rsvd1")
	.dwattr $C$DW$169, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$169, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$169, DW_AT_bit_size(0x02)
	.dwattr $C$DW$169, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$169, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$170	.dwtag  DW_TAG_member
	.dwattr $C$DW$170, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$170, DW_AT_name("COMMIT_D0")
	.dwattr $C$DW$170, DW_AT_TI_symbol_name("_COMMIT_D0")
	.dwattr $C$DW$170, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$170, DW_AT_bit_size(0x01)
	.dwattr $C$DW$170, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$170, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$171	.dwtag  DW_TAG_member
	.dwattr $C$DW$171, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$171, DW_AT_name("COMMIT_D1")
	.dwattr $C$DW$171, DW_AT_TI_symbol_name("_COMMIT_D1")
	.dwattr $C$DW$171, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$171, DW_AT_bit_size(0x01)
	.dwattr $C$DW$171, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$171, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$172	.dwtag  DW_TAG_member
	.dwattr $C$DW$172, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$172, DW_AT_name("rsvd2")
	.dwattr $C$DW$172, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$172, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$172, DW_AT_bit_size(0x0c)
	.dwattr $C$DW$172, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$172, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$173	.dwtag  DW_TAG_member
	.dwattr $C$DW$173, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$173, DW_AT_name("rsvd3")
	.dwattr $C$DW$173, DW_AT_TI_symbol_name("_rsvd3")
	.dwattr $C$DW$173, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$173, DW_AT_bit_size(0x10)
	.dwattr $C$DW$173, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$173, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$23


$C$DW$T$24	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$24, DW_AT_name("DxCOMMIT_REG")
	.dwattr $C$DW$T$24, DW_AT_byte_size(0x02)
$C$DW$174	.dwtag  DW_TAG_member
	.dwattr $C$DW$174, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$174, DW_AT_name("all")
	.dwattr $C$DW$174, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$174, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$174, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$175	.dwtag  DW_TAG_member
	.dwattr $C$DW$175, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$175, DW_AT_name("bit")
	.dwattr $C$DW$175, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$175, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$175, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$24


$C$DW$T$25	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$25, DW_AT_name("DxINITDONE_BITS")
	.dwattr $C$DW$T$25, DW_AT_byte_size(0x02)
$C$DW$176	.dwtag  DW_TAG_member
	.dwattr $C$DW$176, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$176, DW_AT_name("INITDONE_M0")
	.dwattr $C$DW$176, DW_AT_TI_symbol_name("_INITDONE_M0")
	.dwattr $C$DW$176, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$176, DW_AT_bit_size(0x01)
	.dwattr $C$DW$176, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$176, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$177	.dwtag  DW_TAG_member
	.dwattr $C$DW$177, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$177, DW_AT_name("INITDONE_M1")
	.dwattr $C$DW$177, DW_AT_TI_symbol_name("_INITDONE_M1")
	.dwattr $C$DW$177, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$177, DW_AT_bit_size(0x01)
	.dwattr $C$DW$177, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$177, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$178	.dwtag  DW_TAG_member
	.dwattr $C$DW$178, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$178, DW_AT_name("INITDONE_D0")
	.dwattr $C$DW$178, DW_AT_TI_symbol_name("_INITDONE_D0")
	.dwattr $C$DW$178, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$178, DW_AT_bit_size(0x01)
	.dwattr $C$DW$178, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$178, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$179	.dwtag  DW_TAG_member
	.dwattr $C$DW$179, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$179, DW_AT_name("INITDONE_D1")
	.dwattr $C$DW$179, DW_AT_TI_symbol_name("_INITDONE_D1")
	.dwattr $C$DW$179, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$179, DW_AT_bit_size(0x01)
	.dwattr $C$DW$179, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$179, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$180	.dwtag  DW_TAG_member
	.dwattr $C$DW$180, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$180, DW_AT_name("rsvd1")
	.dwattr $C$DW$180, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$180, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$180, DW_AT_bit_size(0x0c)
	.dwattr $C$DW$180, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$180, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$181	.dwtag  DW_TAG_member
	.dwattr $C$DW$181, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$181, DW_AT_name("rsvd2")
	.dwattr $C$DW$181, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$181, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$181, DW_AT_bit_size(0x10)
	.dwattr $C$DW$181, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$181, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$25


$C$DW$T$26	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$26, DW_AT_name("DxINITDONE_REG")
	.dwattr $C$DW$T$26, DW_AT_byte_size(0x02)
$C$DW$182	.dwtag  DW_TAG_member
	.dwattr $C$DW$182, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$182, DW_AT_name("all")
	.dwattr $C$DW$182, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$182, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$182, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$183	.dwtag  DW_TAG_member
	.dwattr $C$DW$183, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$183, DW_AT_name("bit")
	.dwattr $C$DW$183, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$183, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$183, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$26


$C$DW$T$27	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$27, DW_AT_name("DxINIT_BITS")
	.dwattr $C$DW$T$27, DW_AT_byte_size(0x02)
$C$DW$184	.dwtag  DW_TAG_member
	.dwattr $C$DW$184, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$184, DW_AT_name("INIT_M0")
	.dwattr $C$DW$184, DW_AT_TI_symbol_name("_INIT_M0")
	.dwattr $C$DW$184, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$184, DW_AT_bit_size(0x01)
	.dwattr $C$DW$184, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$184, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$185	.dwtag  DW_TAG_member
	.dwattr $C$DW$185, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$185, DW_AT_name("INIT_M1")
	.dwattr $C$DW$185, DW_AT_TI_symbol_name("_INIT_M1")
	.dwattr $C$DW$185, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$185, DW_AT_bit_size(0x01)
	.dwattr $C$DW$185, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$185, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$186	.dwtag  DW_TAG_member
	.dwattr $C$DW$186, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$186, DW_AT_name("INIT_D0")
	.dwattr $C$DW$186, DW_AT_TI_symbol_name("_INIT_D0")
	.dwattr $C$DW$186, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$186, DW_AT_bit_size(0x01)
	.dwattr $C$DW$186, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$186, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$187	.dwtag  DW_TAG_member
	.dwattr $C$DW$187, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$187, DW_AT_name("INIT_D1")
	.dwattr $C$DW$187, DW_AT_TI_symbol_name("_INIT_D1")
	.dwattr $C$DW$187, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$187, DW_AT_bit_size(0x01)
	.dwattr $C$DW$187, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$187, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$188	.dwtag  DW_TAG_member
	.dwattr $C$DW$188, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$188, DW_AT_name("rsvd1")
	.dwattr $C$DW$188, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$188, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$188, DW_AT_bit_size(0x0c)
	.dwattr $C$DW$188, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$188, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$189	.dwtag  DW_TAG_member
	.dwattr $C$DW$189, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$189, DW_AT_name("rsvd2")
	.dwattr $C$DW$189, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$189, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$189, DW_AT_bit_size(0x10)
	.dwattr $C$DW$189, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$189, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$27


$C$DW$T$28	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$28, DW_AT_name("DxINIT_REG")
	.dwattr $C$DW$T$28, DW_AT_byte_size(0x02)
$C$DW$190	.dwtag  DW_TAG_member
	.dwattr $C$DW$190, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$190, DW_AT_name("all")
	.dwattr $C$DW$190, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$190, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$190, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$191	.dwtag  DW_TAG_member
	.dwattr $C$DW$191, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$191, DW_AT_name("bit")
	.dwattr $C$DW$191, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$191, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$191, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$28


$C$DW$T$29	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$29, DW_AT_name("DxLOCK_BITS")
	.dwattr $C$DW$T$29, DW_AT_byte_size(0x02)
$C$DW$192	.dwtag  DW_TAG_member
	.dwattr $C$DW$192, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$192, DW_AT_name("rsvd1")
	.dwattr $C$DW$192, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$192, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$192, DW_AT_bit_size(0x02)
	.dwattr $C$DW$192, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$192, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$193	.dwtag  DW_TAG_member
	.dwattr $C$DW$193, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$193, DW_AT_name("LOCK_D0")
	.dwattr $C$DW$193, DW_AT_TI_symbol_name("_LOCK_D0")
	.dwattr $C$DW$193, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$193, DW_AT_bit_size(0x01)
	.dwattr $C$DW$193, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$193, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$194	.dwtag  DW_TAG_member
	.dwattr $C$DW$194, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$194, DW_AT_name("LOCK_D1")
	.dwattr $C$DW$194, DW_AT_TI_symbol_name("_LOCK_D1")
	.dwattr $C$DW$194, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$194, DW_AT_bit_size(0x01)
	.dwattr $C$DW$194, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$194, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$195	.dwtag  DW_TAG_member
	.dwattr $C$DW$195, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$195, DW_AT_name("rsvd2")
	.dwattr $C$DW$195, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$195, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$195, DW_AT_bit_size(0x0c)
	.dwattr $C$DW$195, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$195, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$196	.dwtag  DW_TAG_member
	.dwattr $C$DW$196, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$196, DW_AT_name("rsvd3")
	.dwattr $C$DW$196, DW_AT_TI_symbol_name("_rsvd3")
	.dwattr $C$DW$196, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$196, DW_AT_bit_size(0x10)
	.dwattr $C$DW$196, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$196, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$29


$C$DW$T$30	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$30, DW_AT_name("DxLOCK_REG")
	.dwattr $C$DW$T$30, DW_AT_byte_size(0x02)
$C$DW$197	.dwtag  DW_TAG_member
	.dwattr $C$DW$197, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$197, DW_AT_name("all")
	.dwattr $C$DW$197, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$197, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$197, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$198	.dwtag  DW_TAG_member
	.dwattr $C$DW$198, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$198, DW_AT_name("bit")
	.dwattr $C$DW$198, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$198, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$198, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$30


$C$DW$T$31	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$31, DW_AT_name("DxTEST_BITS")
	.dwattr $C$DW$T$31, DW_AT_byte_size(0x02)
$C$DW$199	.dwtag  DW_TAG_member
	.dwattr $C$DW$199, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$199, DW_AT_name("TEST_M0")
	.dwattr $C$DW$199, DW_AT_TI_symbol_name("_TEST_M0")
	.dwattr $C$DW$199, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$199, DW_AT_bit_size(0x02)
	.dwattr $C$DW$199, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$199, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$200	.dwtag  DW_TAG_member
	.dwattr $C$DW$200, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$200, DW_AT_name("TEST_M1")
	.dwattr $C$DW$200, DW_AT_TI_symbol_name("_TEST_M1")
	.dwattr $C$DW$200, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$200, DW_AT_bit_size(0x02)
	.dwattr $C$DW$200, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$200, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$201	.dwtag  DW_TAG_member
	.dwattr $C$DW$201, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$201, DW_AT_name("TEST_D0")
	.dwattr $C$DW$201, DW_AT_TI_symbol_name("_TEST_D0")
	.dwattr $C$DW$201, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$201, DW_AT_bit_size(0x02)
	.dwattr $C$DW$201, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$201, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$202	.dwtag  DW_TAG_member
	.dwattr $C$DW$202, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$202, DW_AT_name("TEST_D1")
	.dwattr $C$DW$202, DW_AT_TI_symbol_name("_TEST_D1")
	.dwattr $C$DW$202, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$202, DW_AT_bit_size(0x02)
	.dwattr $C$DW$202, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$202, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$203	.dwtag  DW_TAG_member
	.dwattr $C$DW$203, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$203, DW_AT_name("rsvd1")
	.dwattr $C$DW$203, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$203, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$203, DW_AT_bit_size(0x08)
	.dwattr $C$DW$203, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$203, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$204	.dwtag  DW_TAG_member
	.dwattr $C$DW$204, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$204, DW_AT_name("rsvd2")
	.dwattr $C$DW$204, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$204, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$204, DW_AT_bit_size(0x10)
	.dwattr $C$DW$204, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$204, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$31


$C$DW$T$32	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$32, DW_AT_name("DxTEST_REG")
	.dwattr $C$DW$T$32, DW_AT_byte_size(0x02)
$C$DW$205	.dwtag  DW_TAG_member
	.dwattr $C$DW$205, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$205, DW_AT_name("all")
	.dwattr $C$DW$205, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$205, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$205, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$206	.dwtag  DW_TAG_member
	.dwattr $C$DW$206, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$206, DW_AT_name("bit")
	.dwattr $C$DW$206, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$206, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$206, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$32


$C$DW$T$33	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$33, DW_AT_name("GSxACCPROT0_BITS")
	.dwattr $C$DW$T$33, DW_AT_byte_size(0x02)
$C$DW$207	.dwtag  DW_TAG_member
	.dwattr $C$DW$207, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$207, DW_AT_name("FETCHPROT_GS0")
	.dwattr $C$DW$207, DW_AT_TI_symbol_name("_FETCHPROT_GS0")
	.dwattr $C$DW$207, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$207, DW_AT_bit_size(0x01)
	.dwattr $C$DW$207, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$207, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$208	.dwtag  DW_TAG_member
	.dwattr $C$DW$208, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$208, DW_AT_name("CPUWRPROT_GS0")
	.dwattr $C$DW$208, DW_AT_TI_symbol_name("_CPUWRPROT_GS0")
	.dwattr $C$DW$208, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$208, DW_AT_bit_size(0x01)
	.dwattr $C$DW$208, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$208, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$209	.dwtag  DW_TAG_member
	.dwattr $C$DW$209, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$209, DW_AT_name("DMAWRPROT_GS0")
	.dwattr $C$DW$209, DW_AT_TI_symbol_name("_DMAWRPROT_GS0")
	.dwattr $C$DW$209, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$209, DW_AT_bit_size(0x01)
	.dwattr $C$DW$209, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$209, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$210	.dwtag  DW_TAG_member
	.dwattr $C$DW$210, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$210, DW_AT_name("rsvd1")
	.dwattr $C$DW$210, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$210, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$210, DW_AT_bit_size(0x05)
	.dwattr $C$DW$210, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$210, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$211	.dwtag  DW_TAG_member
	.dwattr $C$DW$211, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$211, DW_AT_name("FETCHPROT_GS1")
	.dwattr $C$DW$211, DW_AT_TI_symbol_name("_FETCHPROT_GS1")
	.dwattr $C$DW$211, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$211, DW_AT_bit_size(0x01)
	.dwattr $C$DW$211, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$211, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$212	.dwtag  DW_TAG_member
	.dwattr $C$DW$212, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$212, DW_AT_name("CPUWRPROT_GS1")
	.dwattr $C$DW$212, DW_AT_TI_symbol_name("_CPUWRPROT_GS1")
	.dwattr $C$DW$212, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$212, DW_AT_bit_size(0x01)
	.dwattr $C$DW$212, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$212, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$213	.dwtag  DW_TAG_member
	.dwattr $C$DW$213, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$213, DW_AT_name("DMAWRPROT_GS1")
	.dwattr $C$DW$213, DW_AT_TI_symbol_name("_DMAWRPROT_GS1")
	.dwattr $C$DW$213, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$213, DW_AT_bit_size(0x01)
	.dwattr $C$DW$213, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$213, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$214	.dwtag  DW_TAG_member
	.dwattr $C$DW$214, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$214, DW_AT_name("rsvd2")
	.dwattr $C$DW$214, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$214, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$214, DW_AT_bit_size(0x05)
	.dwattr $C$DW$214, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$214, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$215	.dwtag  DW_TAG_member
	.dwattr $C$DW$215, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$215, DW_AT_name("FETCHPROT_GS2")
	.dwattr $C$DW$215, DW_AT_TI_symbol_name("_FETCHPROT_GS2")
	.dwattr $C$DW$215, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$215, DW_AT_bit_size(0x01)
	.dwattr $C$DW$215, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$215, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$216	.dwtag  DW_TAG_member
	.dwattr $C$DW$216, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$216, DW_AT_name("CPUWRPROT_GS2")
	.dwattr $C$DW$216, DW_AT_TI_symbol_name("_CPUWRPROT_GS2")
	.dwattr $C$DW$216, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$216, DW_AT_bit_size(0x01)
	.dwattr $C$DW$216, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$216, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$217	.dwtag  DW_TAG_member
	.dwattr $C$DW$217, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$217, DW_AT_name("DMAWRPROT_GS2")
	.dwattr $C$DW$217, DW_AT_TI_symbol_name("_DMAWRPROT_GS2")
	.dwattr $C$DW$217, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$217, DW_AT_bit_size(0x01)
	.dwattr $C$DW$217, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$217, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$218	.dwtag  DW_TAG_member
	.dwattr $C$DW$218, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$218, DW_AT_name("rsvd3")
	.dwattr $C$DW$218, DW_AT_TI_symbol_name("_rsvd3")
	.dwattr $C$DW$218, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$218, DW_AT_bit_size(0x05)
	.dwattr $C$DW$218, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$218, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$219	.dwtag  DW_TAG_member
	.dwattr $C$DW$219, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$219, DW_AT_name("FETCHPROT_GS3")
	.dwattr $C$DW$219, DW_AT_TI_symbol_name("_FETCHPROT_GS3")
	.dwattr $C$DW$219, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$219, DW_AT_bit_size(0x01)
	.dwattr $C$DW$219, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$219, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$220	.dwtag  DW_TAG_member
	.dwattr $C$DW$220, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$220, DW_AT_name("CPUWRPROT_GS3")
	.dwattr $C$DW$220, DW_AT_TI_symbol_name("_CPUWRPROT_GS3")
	.dwattr $C$DW$220, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$220, DW_AT_bit_size(0x01)
	.dwattr $C$DW$220, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$220, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$221	.dwtag  DW_TAG_member
	.dwattr $C$DW$221, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$221, DW_AT_name("DMAWRPROT_GS3")
	.dwattr $C$DW$221, DW_AT_TI_symbol_name("_DMAWRPROT_GS3")
	.dwattr $C$DW$221, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$221, DW_AT_bit_size(0x01)
	.dwattr $C$DW$221, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$221, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$222	.dwtag  DW_TAG_member
	.dwattr $C$DW$222, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$222, DW_AT_name("rsvd4")
	.dwattr $C$DW$222, DW_AT_TI_symbol_name("_rsvd4")
	.dwattr $C$DW$222, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$222, DW_AT_bit_size(0x05)
	.dwattr $C$DW$222, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$222, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$33


$C$DW$T$34	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$34, DW_AT_name("GSxACCPROT0_REG")
	.dwattr $C$DW$T$34, DW_AT_byte_size(0x02)
$C$DW$223	.dwtag  DW_TAG_member
	.dwattr $C$DW$223, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$223, DW_AT_name("all")
	.dwattr $C$DW$223, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$223, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$223, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$224	.dwtag  DW_TAG_member
	.dwattr $C$DW$224, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$224, DW_AT_name("bit")
	.dwattr $C$DW$224, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$224, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$224, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$34


$C$DW$T$35	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$35, DW_AT_name("GSxACCPROT1_BITS")
	.dwattr $C$DW$T$35, DW_AT_byte_size(0x02)
$C$DW$225	.dwtag  DW_TAG_member
	.dwattr $C$DW$225, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$225, DW_AT_name("FETCHPROT_GS4")
	.dwattr $C$DW$225, DW_AT_TI_symbol_name("_FETCHPROT_GS4")
	.dwattr $C$DW$225, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$225, DW_AT_bit_size(0x01)
	.dwattr $C$DW$225, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$225, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$226	.dwtag  DW_TAG_member
	.dwattr $C$DW$226, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$226, DW_AT_name("CPUWRPROT_GS4")
	.dwattr $C$DW$226, DW_AT_TI_symbol_name("_CPUWRPROT_GS4")
	.dwattr $C$DW$226, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$226, DW_AT_bit_size(0x01)
	.dwattr $C$DW$226, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$226, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$227	.dwtag  DW_TAG_member
	.dwattr $C$DW$227, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$227, DW_AT_name("DMAWRPROT_GS4")
	.dwattr $C$DW$227, DW_AT_TI_symbol_name("_DMAWRPROT_GS4")
	.dwattr $C$DW$227, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$227, DW_AT_bit_size(0x01)
	.dwattr $C$DW$227, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$227, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$228	.dwtag  DW_TAG_member
	.dwattr $C$DW$228, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$228, DW_AT_name("rsvd1")
	.dwattr $C$DW$228, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$228, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$228, DW_AT_bit_size(0x05)
	.dwattr $C$DW$228, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$228, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$229	.dwtag  DW_TAG_member
	.dwattr $C$DW$229, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$229, DW_AT_name("FETCHPROT_GS5")
	.dwattr $C$DW$229, DW_AT_TI_symbol_name("_FETCHPROT_GS5")
	.dwattr $C$DW$229, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$229, DW_AT_bit_size(0x01)
	.dwattr $C$DW$229, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$229, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$230	.dwtag  DW_TAG_member
	.dwattr $C$DW$230, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$230, DW_AT_name("CPUWRPROT_GS5")
	.dwattr $C$DW$230, DW_AT_TI_symbol_name("_CPUWRPROT_GS5")
	.dwattr $C$DW$230, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$230, DW_AT_bit_size(0x01)
	.dwattr $C$DW$230, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$230, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$231	.dwtag  DW_TAG_member
	.dwattr $C$DW$231, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$231, DW_AT_name("DMAWRPROT_GS5")
	.dwattr $C$DW$231, DW_AT_TI_symbol_name("_DMAWRPROT_GS5")
	.dwattr $C$DW$231, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$231, DW_AT_bit_size(0x01)
	.dwattr $C$DW$231, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$231, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$232	.dwtag  DW_TAG_member
	.dwattr $C$DW$232, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$232, DW_AT_name("rsvd2")
	.dwattr $C$DW$232, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$232, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$232, DW_AT_bit_size(0x05)
	.dwattr $C$DW$232, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$232, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$233	.dwtag  DW_TAG_member
	.dwattr $C$DW$233, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$233, DW_AT_name("FETCHPROT_GS6")
	.dwattr $C$DW$233, DW_AT_TI_symbol_name("_FETCHPROT_GS6")
	.dwattr $C$DW$233, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$233, DW_AT_bit_size(0x01)
	.dwattr $C$DW$233, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$233, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$234	.dwtag  DW_TAG_member
	.dwattr $C$DW$234, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$234, DW_AT_name("CPUWRPROT_GS6")
	.dwattr $C$DW$234, DW_AT_TI_symbol_name("_CPUWRPROT_GS6")
	.dwattr $C$DW$234, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$234, DW_AT_bit_size(0x01)
	.dwattr $C$DW$234, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$234, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$235	.dwtag  DW_TAG_member
	.dwattr $C$DW$235, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$235, DW_AT_name("DMAWRPROT_GS6")
	.dwattr $C$DW$235, DW_AT_TI_symbol_name("_DMAWRPROT_GS6")
	.dwattr $C$DW$235, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$235, DW_AT_bit_size(0x01)
	.dwattr $C$DW$235, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$235, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$236	.dwtag  DW_TAG_member
	.dwattr $C$DW$236, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$236, DW_AT_name("rsvd3")
	.dwattr $C$DW$236, DW_AT_TI_symbol_name("_rsvd3")
	.dwattr $C$DW$236, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$236, DW_AT_bit_size(0x05)
	.dwattr $C$DW$236, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$236, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$237	.dwtag  DW_TAG_member
	.dwattr $C$DW$237, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$237, DW_AT_name("FETCHPROT_GS7")
	.dwattr $C$DW$237, DW_AT_TI_symbol_name("_FETCHPROT_GS7")
	.dwattr $C$DW$237, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$237, DW_AT_bit_size(0x01)
	.dwattr $C$DW$237, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$237, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$238	.dwtag  DW_TAG_member
	.dwattr $C$DW$238, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$238, DW_AT_name("CPUWRPROT_GS7")
	.dwattr $C$DW$238, DW_AT_TI_symbol_name("_CPUWRPROT_GS7")
	.dwattr $C$DW$238, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$238, DW_AT_bit_size(0x01)
	.dwattr $C$DW$238, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$238, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$239	.dwtag  DW_TAG_member
	.dwattr $C$DW$239, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$239, DW_AT_name("DMAWRPROT_GS7")
	.dwattr $C$DW$239, DW_AT_TI_symbol_name("_DMAWRPROT_GS7")
	.dwattr $C$DW$239, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$239, DW_AT_bit_size(0x01)
	.dwattr $C$DW$239, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$239, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$240	.dwtag  DW_TAG_member
	.dwattr $C$DW$240, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$240, DW_AT_name("rsvd4")
	.dwattr $C$DW$240, DW_AT_TI_symbol_name("_rsvd4")
	.dwattr $C$DW$240, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$240, DW_AT_bit_size(0x05)
	.dwattr $C$DW$240, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$240, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$35


$C$DW$T$36	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$36, DW_AT_name("GSxACCPROT1_REG")
	.dwattr $C$DW$T$36, DW_AT_byte_size(0x02)
$C$DW$241	.dwtag  DW_TAG_member
	.dwattr $C$DW$241, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$241, DW_AT_name("all")
	.dwattr $C$DW$241, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$241, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$241, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$242	.dwtag  DW_TAG_member
	.dwattr $C$DW$242, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$242, DW_AT_name("bit")
	.dwattr $C$DW$242, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$242, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$242, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$36


$C$DW$T$37	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$37, DW_AT_name("GSxACCPROT2_BITS")
	.dwattr $C$DW$T$37, DW_AT_byte_size(0x02)
$C$DW$243	.dwtag  DW_TAG_member
	.dwattr $C$DW$243, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$243, DW_AT_name("FETCHPROT_GS8")
	.dwattr $C$DW$243, DW_AT_TI_symbol_name("_FETCHPROT_GS8")
	.dwattr $C$DW$243, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$243, DW_AT_bit_size(0x01)
	.dwattr $C$DW$243, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$243, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$244	.dwtag  DW_TAG_member
	.dwattr $C$DW$244, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$244, DW_AT_name("CPUWRPROT_GS8")
	.dwattr $C$DW$244, DW_AT_TI_symbol_name("_CPUWRPROT_GS8")
	.dwattr $C$DW$244, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$244, DW_AT_bit_size(0x01)
	.dwattr $C$DW$244, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$244, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$245	.dwtag  DW_TAG_member
	.dwattr $C$DW$245, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$245, DW_AT_name("DMAWRPROT_GS8")
	.dwattr $C$DW$245, DW_AT_TI_symbol_name("_DMAWRPROT_GS8")
	.dwattr $C$DW$245, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$245, DW_AT_bit_size(0x01)
	.dwattr $C$DW$245, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$245, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$246	.dwtag  DW_TAG_member
	.dwattr $C$DW$246, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$246, DW_AT_name("rsvd1")
	.dwattr $C$DW$246, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$246, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$246, DW_AT_bit_size(0x05)
	.dwattr $C$DW$246, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$246, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$247	.dwtag  DW_TAG_member
	.dwattr $C$DW$247, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$247, DW_AT_name("FETCHPROT_GS9")
	.dwattr $C$DW$247, DW_AT_TI_symbol_name("_FETCHPROT_GS9")
	.dwattr $C$DW$247, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$247, DW_AT_bit_size(0x01)
	.dwattr $C$DW$247, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$247, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$248	.dwtag  DW_TAG_member
	.dwattr $C$DW$248, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$248, DW_AT_name("CPUWRPROT_GS9")
	.dwattr $C$DW$248, DW_AT_TI_symbol_name("_CPUWRPROT_GS9")
	.dwattr $C$DW$248, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$248, DW_AT_bit_size(0x01)
	.dwattr $C$DW$248, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$248, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$249	.dwtag  DW_TAG_member
	.dwattr $C$DW$249, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$249, DW_AT_name("DMAWRPROT_GS9")
	.dwattr $C$DW$249, DW_AT_TI_symbol_name("_DMAWRPROT_GS9")
	.dwattr $C$DW$249, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$249, DW_AT_bit_size(0x01)
	.dwattr $C$DW$249, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$249, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$250	.dwtag  DW_TAG_member
	.dwattr $C$DW$250, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$250, DW_AT_name("rsvd2")
	.dwattr $C$DW$250, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$250, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$250, DW_AT_bit_size(0x05)
	.dwattr $C$DW$250, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$250, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$251	.dwtag  DW_TAG_member
	.dwattr $C$DW$251, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$251, DW_AT_name("FETCHPROT_GS10")
	.dwattr $C$DW$251, DW_AT_TI_symbol_name("_FETCHPROT_GS10")
	.dwattr $C$DW$251, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$251, DW_AT_bit_size(0x01)
	.dwattr $C$DW$251, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$251, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$252	.dwtag  DW_TAG_member
	.dwattr $C$DW$252, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$252, DW_AT_name("CPUWRPROT_GS10")
	.dwattr $C$DW$252, DW_AT_TI_symbol_name("_CPUWRPROT_GS10")
	.dwattr $C$DW$252, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$252, DW_AT_bit_size(0x01)
	.dwattr $C$DW$252, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$252, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$253	.dwtag  DW_TAG_member
	.dwattr $C$DW$253, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$253, DW_AT_name("DMAWRPROT_GS10")
	.dwattr $C$DW$253, DW_AT_TI_symbol_name("_DMAWRPROT_GS10")
	.dwattr $C$DW$253, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$253, DW_AT_bit_size(0x01)
	.dwattr $C$DW$253, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$253, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$254	.dwtag  DW_TAG_member
	.dwattr $C$DW$254, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$254, DW_AT_name("rsvd3")
	.dwattr $C$DW$254, DW_AT_TI_symbol_name("_rsvd3")
	.dwattr $C$DW$254, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$254, DW_AT_bit_size(0x05)
	.dwattr $C$DW$254, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$254, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$255	.dwtag  DW_TAG_member
	.dwattr $C$DW$255, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$255, DW_AT_name("FETCHPROT_GS11")
	.dwattr $C$DW$255, DW_AT_TI_symbol_name("_FETCHPROT_GS11")
	.dwattr $C$DW$255, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$255, DW_AT_bit_size(0x01)
	.dwattr $C$DW$255, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$255, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$256	.dwtag  DW_TAG_member
	.dwattr $C$DW$256, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$256, DW_AT_name("CPUWRPROT_GS11")
	.dwattr $C$DW$256, DW_AT_TI_symbol_name("_CPUWRPROT_GS11")
	.dwattr $C$DW$256, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$256, DW_AT_bit_size(0x01)
	.dwattr $C$DW$256, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$256, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$257	.dwtag  DW_TAG_member
	.dwattr $C$DW$257, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$257, DW_AT_name("DMAWRPROT_GS11")
	.dwattr $C$DW$257, DW_AT_TI_symbol_name("_DMAWRPROT_GS11")
	.dwattr $C$DW$257, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$257, DW_AT_bit_size(0x01)
	.dwattr $C$DW$257, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$257, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$258	.dwtag  DW_TAG_member
	.dwattr $C$DW$258, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$258, DW_AT_name("rsvd4")
	.dwattr $C$DW$258, DW_AT_TI_symbol_name("_rsvd4")
	.dwattr $C$DW$258, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$258, DW_AT_bit_size(0x05)
	.dwattr $C$DW$258, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$258, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$37


$C$DW$T$38	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$38, DW_AT_name("GSxACCPROT2_REG")
	.dwattr $C$DW$T$38, DW_AT_byte_size(0x02)
$C$DW$259	.dwtag  DW_TAG_member
	.dwattr $C$DW$259, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$259, DW_AT_name("all")
	.dwattr $C$DW$259, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$259, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$259, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$260	.dwtag  DW_TAG_member
	.dwattr $C$DW$260, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$260, DW_AT_name("bit")
	.dwattr $C$DW$260, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$260, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$260, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$38


$C$DW$T$39	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$39, DW_AT_name("GSxACCPROT3_BITS")
	.dwattr $C$DW$T$39, DW_AT_byte_size(0x02)
$C$DW$261	.dwtag  DW_TAG_member
	.dwattr $C$DW$261, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$261, DW_AT_name("FETCHPROT_GS12")
	.dwattr $C$DW$261, DW_AT_TI_symbol_name("_FETCHPROT_GS12")
	.dwattr $C$DW$261, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$261, DW_AT_bit_size(0x01)
	.dwattr $C$DW$261, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$261, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$262	.dwtag  DW_TAG_member
	.dwattr $C$DW$262, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$262, DW_AT_name("CPUWRPROT_GS12")
	.dwattr $C$DW$262, DW_AT_TI_symbol_name("_CPUWRPROT_GS12")
	.dwattr $C$DW$262, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$262, DW_AT_bit_size(0x01)
	.dwattr $C$DW$262, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$262, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$263	.dwtag  DW_TAG_member
	.dwattr $C$DW$263, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$263, DW_AT_name("DMAWRPROT_GS12")
	.dwattr $C$DW$263, DW_AT_TI_symbol_name("_DMAWRPROT_GS12")
	.dwattr $C$DW$263, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$263, DW_AT_bit_size(0x01)
	.dwattr $C$DW$263, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$263, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$264	.dwtag  DW_TAG_member
	.dwattr $C$DW$264, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$264, DW_AT_name("rsvd1")
	.dwattr $C$DW$264, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$264, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$264, DW_AT_bit_size(0x05)
	.dwattr $C$DW$264, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$264, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$265	.dwtag  DW_TAG_member
	.dwattr $C$DW$265, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$265, DW_AT_name("FETCHPROT_GS13")
	.dwattr $C$DW$265, DW_AT_TI_symbol_name("_FETCHPROT_GS13")
	.dwattr $C$DW$265, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$265, DW_AT_bit_size(0x01)
	.dwattr $C$DW$265, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$265, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$266	.dwtag  DW_TAG_member
	.dwattr $C$DW$266, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$266, DW_AT_name("CPUWRPROT_GS13")
	.dwattr $C$DW$266, DW_AT_TI_symbol_name("_CPUWRPROT_GS13")
	.dwattr $C$DW$266, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$266, DW_AT_bit_size(0x01)
	.dwattr $C$DW$266, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$266, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$267	.dwtag  DW_TAG_member
	.dwattr $C$DW$267, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$267, DW_AT_name("DMAWRPROT_GS13")
	.dwattr $C$DW$267, DW_AT_TI_symbol_name("_DMAWRPROT_GS13")
	.dwattr $C$DW$267, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$267, DW_AT_bit_size(0x01)
	.dwattr $C$DW$267, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$267, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$268	.dwtag  DW_TAG_member
	.dwattr $C$DW$268, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$268, DW_AT_name("rsvd2")
	.dwattr $C$DW$268, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$268, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$268, DW_AT_bit_size(0x05)
	.dwattr $C$DW$268, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$268, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$269	.dwtag  DW_TAG_member
	.dwattr $C$DW$269, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$269, DW_AT_name("FETCHPROT_GS14")
	.dwattr $C$DW$269, DW_AT_TI_symbol_name("_FETCHPROT_GS14")
	.dwattr $C$DW$269, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$269, DW_AT_bit_size(0x01)
	.dwattr $C$DW$269, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$269, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$270	.dwtag  DW_TAG_member
	.dwattr $C$DW$270, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$270, DW_AT_name("CPUWRPROT_GS14")
	.dwattr $C$DW$270, DW_AT_TI_symbol_name("_CPUWRPROT_GS14")
	.dwattr $C$DW$270, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$270, DW_AT_bit_size(0x01)
	.dwattr $C$DW$270, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$270, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$271	.dwtag  DW_TAG_member
	.dwattr $C$DW$271, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$271, DW_AT_name("DMAWRPROT_GS14")
	.dwattr $C$DW$271, DW_AT_TI_symbol_name("_DMAWRPROT_GS14")
	.dwattr $C$DW$271, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$271, DW_AT_bit_size(0x01)
	.dwattr $C$DW$271, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$271, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$272	.dwtag  DW_TAG_member
	.dwattr $C$DW$272, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$272, DW_AT_name("rsvd3")
	.dwattr $C$DW$272, DW_AT_TI_symbol_name("_rsvd3")
	.dwattr $C$DW$272, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$272, DW_AT_bit_size(0x05)
	.dwattr $C$DW$272, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$272, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$273	.dwtag  DW_TAG_member
	.dwattr $C$DW$273, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$273, DW_AT_name("FETCHPROT_GS15")
	.dwattr $C$DW$273, DW_AT_TI_symbol_name("_FETCHPROT_GS15")
	.dwattr $C$DW$273, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$273, DW_AT_bit_size(0x01)
	.dwattr $C$DW$273, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$273, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$274	.dwtag  DW_TAG_member
	.dwattr $C$DW$274, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$274, DW_AT_name("CPUWRPROT_GS15")
	.dwattr $C$DW$274, DW_AT_TI_symbol_name("_CPUWRPROT_GS15")
	.dwattr $C$DW$274, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$274, DW_AT_bit_size(0x01)
	.dwattr $C$DW$274, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$274, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$275	.dwtag  DW_TAG_member
	.dwattr $C$DW$275, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$275, DW_AT_name("DMAWRPROT_GS15")
	.dwattr $C$DW$275, DW_AT_TI_symbol_name("_DMAWRPROT_GS15")
	.dwattr $C$DW$275, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$275, DW_AT_bit_size(0x01)
	.dwattr $C$DW$275, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$275, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$276	.dwtag  DW_TAG_member
	.dwattr $C$DW$276, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$276, DW_AT_name("rsvd4")
	.dwattr $C$DW$276, DW_AT_TI_symbol_name("_rsvd4")
	.dwattr $C$DW$276, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$276, DW_AT_bit_size(0x05)
	.dwattr $C$DW$276, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$276, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$39


$C$DW$T$40	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$40, DW_AT_name("GSxACCPROT3_REG")
	.dwattr $C$DW$T$40, DW_AT_byte_size(0x02)
$C$DW$277	.dwtag  DW_TAG_member
	.dwattr $C$DW$277, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$277, DW_AT_name("all")
	.dwattr $C$DW$277, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$277, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$277, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$278	.dwtag  DW_TAG_member
	.dwattr $C$DW$278, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$278, DW_AT_name("bit")
	.dwattr $C$DW$278, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$278, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$278, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$40


$C$DW$T$41	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$41, DW_AT_name("GSxCOMMIT_BITS")
	.dwattr $C$DW$T$41, DW_AT_byte_size(0x02)
$C$DW$279	.dwtag  DW_TAG_member
	.dwattr $C$DW$279, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$279, DW_AT_name("COMMIT_GS0")
	.dwattr $C$DW$279, DW_AT_TI_symbol_name("_COMMIT_GS0")
	.dwattr $C$DW$279, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$279, DW_AT_bit_size(0x01)
	.dwattr $C$DW$279, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$279, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$280	.dwtag  DW_TAG_member
	.dwattr $C$DW$280, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$280, DW_AT_name("COMMIT_GS1")
	.dwattr $C$DW$280, DW_AT_TI_symbol_name("_COMMIT_GS1")
	.dwattr $C$DW$280, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$280, DW_AT_bit_size(0x01)
	.dwattr $C$DW$280, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$280, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$281	.dwtag  DW_TAG_member
	.dwattr $C$DW$281, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$281, DW_AT_name("COMMIT_GS2")
	.dwattr $C$DW$281, DW_AT_TI_symbol_name("_COMMIT_GS2")
	.dwattr $C$DW$281, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$281, DW_AT_bit_size(0x01)
	.dwattr $C$DW$281, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$281, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$282	.dwtag  DW_TAG_member
	.dwattr $C$DW$282, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$282, DW_AT_name("COMMIT_GS3")
	.dwattr $C$DW$282, DW_AT_TI_symbol_name("_COMMIT_GS3")
	.dwattr $C$DW$282, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$282, DW_AT_bit_size(0x01)
	.dwattr $C$DW$282, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$282, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$283	.dwtag  DW_TAG_member
	.dwattr $C$DW$283, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$283, DW_AT_name("COMMIT_GS4")
	.dwattr $C$DW$283, DW_AT_TI_symbol_name("_COMMIT_GS4")
	.dwattr $C$DW$283, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$283, DW_AT_bit_size(0x01)
	.dwattr $C$DW$283, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$283, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$284	.dwtag  DW_TAG_member
	.dwattr $C$DW$284, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$284, DW_AT_name("COMMIT_GS5")
	.dwattr $C$DW$284, DW_AT_TI_symbol_name("_COMMIT_GS5")
	.dwattr $C$DW$284, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$284, DW_AT_bit_size(0x01)
	.dwattr $C$DW$284, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$284, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$285	.dwtag  DW_TAG_member
	.dwattr $C$DW$285, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$285, DW_AT_name("COMMIT_GS6")
	.dwattr $C$DW$285, DW_AT_TI_symbol_name("_COMMIT_GS6")
	.dwattr $C$DW$285, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$285, DW_AT_bit_size(0x01)
	.dwattr $C$DW$285, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$285, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$286	.dwtag  DW_TAG_member
	.dwattr $C$DW$286, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$286, DW_AT_name("COMMIT_GS7")
	.dwattr $C$DW$286, DW_AT_TI_symbol_name("_COMMIT_GS7")
	.dwattr $C$DW$286, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$286, DW_AT_bit_size(0x01)
	.dwattr $C$DW$286, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$286, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$287	.dwtag  DW_TAG_member
	.dwattr $C$DW$287, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$287, DW_AT_name("COMMIT_GS8")
	.dwattr $C$DW$287, DW_AT_TI_symbol_name("_COMMIT_GS8")
	.dwattr $C$DW$287, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$287, DW_AT_bit_size(0x01)
	.dwattr $C$DW$287, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$287, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$288	.dwtag  DW_TAG_member
	.dwattr $C$DW$288, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$288, DW_AT_name("COMMIT_GS9")
	.dwattr $C$DW$288, DW_AT_TI_symbol_name("_COMMIT_GS9")
	.dwattr $C$DW$288, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$288, DW_AT_bit_size(0x01)
	.dwattr $C$DW$288, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$288, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$289	.dwtag  DW_TAG_member
	.dwattr $C$DW$289, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$289, DW_AT_name("COMMIT_GS10")
	.dwattr $C$DW$289, DW_AT_TI_symbol_name("_COMMIT_GS10")
	.dwattr $C$DW$289, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$289, DW_AT_bit_size(0x01)
	.dwattr $C$DW$289, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$289, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$290	.dwtag  DW_TAG_member
	.dwattr $C$DW$290, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$290, DW_AT_name("COMMIT_GS11")
	.dwattr $C$DW$290, DW_AT_TI_symbol_name("_COMMIT_GS11")
	.dwattr $C$DW$290, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$290, DW_AT_bit_size(0x01)
	.dwattr $C$DW$290, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$290, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$291	.dwtag  DW_TAG_member
	.dwattr $C$DW$291, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$291, DW_AT_name("COMMIT_GS12")
	.dwattr $C$DW$291, DW_AT_TI_symbol_name("_COMMIT_GS12")
	.dwattr $C$DW$291, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$291, DW_AT_bit_size(0x01)
	.dwattr $C$DW$291, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$291, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$292	.dwtag  DW_TAG_member
	.dwattr $C$DW$292, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$292, DW_AT_name("COMMIT_GS13")
	.dwattr $C$DW$292, DW_AT_TI_symbol_name("_COMMIT_GS13")
	.dwattr $C$DW$292, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$292, DW_AT_bit_size(0x01)
	.dwattr $C$DW$292, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$292, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$293	.dwtag  DW_TAG_member
	.dwattr $C$DW$293, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$293, DW_AT_name("COMMIT_GS14")
	.dwattr $C$DW$293, DW_AT_TI_symbol_name("_COMMIT_GS14")
	.dwattr $C$DW$293, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$293, DW_AT_bit_size(0x01)
	.dwattr $C$DW$293, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$293, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$294	.dwtag  DW_TAG_member
	.dwattr $C$DW$294, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$294, DW_AT_name("COMMIT_GS15")
	.dwattr $C$DW$294, DW_AT_TI_symbol_name("_COMMIT_GS15")
	.dwattr $C$DW$294, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$294, DW_AT_bit_size(0x01)
	.dwattr $C$DW$294, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$294, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$295	.dwtag  DW_TAG_member
	.dwattr $C$DW$295, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$295, DW_AT_name("rsvd1")
	.dwattr $C$DW$295, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$295, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$295, DW_AT_bit_size(0x10)
	.dwattr $C$DW$295, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$295, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$41


$C$DW$T$42	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$42, DW_AT_name("GSxCOMMIT_REG")
	.dwattr $C$DW$T$42, DW_AT_byte_size(0x02)
$C$DW$296	.dwtag  DW_TAG_member
	.dwattr $C$DW$296, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$296, DW_AT_name("all")
	.dwattr $C$DW$296, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$296, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$296, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$297	.dwtag  DW_TAG_member
	.dwattr $C$DW$297, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$297, DW_AT_name("bit")
	.dwattr $C$DW$297, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$297, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$297, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$42


$C$DW$T$43	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$43, DW_AT_name("GSxINITDONE_BITS")
	.dwattr $C$DW$T$43, DW_AT_byte_size(0x02)
$C$DW$298	.dwtag  DW_TAG_member
	.dwattr $C$DW$298, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$298, DW_AT_name("INITDONE_GS0")
	.dwattr $C$DW$298, DW_AT_TI_symbol_name("_INITDONE_GS0")
	.dwattr $C$DW$298, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$298, DW_AT_bit_size(0x01)
	.dwattr $C$DW$298, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$298, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$299	.dwtag  DW_TAG_member
	.dwattr $C$DW$299, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$299, DW_AT_name("INITDONE_GS1")
	.dwattr $C$DW$299, DW_AT_TI_symbol_name("_INITDONE_GS1")
	.dwattr $C$DW$299, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$299, DW_AT_bit_size(0x01)
	.dwattr $C$DW$299, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$299, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$300	.dwtag  DW_TAG_member
	.dwattr $C$DW$300, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$300, DW_AT_name("INITDONE_GS2")
	.dwattr $C$DW$300, DW_AT_TI_symbol_name("_INITDONE_GS2")
	.dwattr $C$DW$300, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$300, DW_AT_bit_size(0x01)
	.dwattr $C$DW$300, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$300, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$301	.dwtag  DW_TAG_member
	.dwattr $C$DW$301, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$301, DW_AT_name("INITDONE_GS3")
	.dwattr $C$DW$301, DW_AT_TI_symbol_name("_INITDONE_GS3")
	.dwattr $C$DW$301, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$301, DW_AT_bit_size(0x01)
	.dwattr $C$DW$301, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$301, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$302	.dwtag  DW_TAG_member
	.dwattr $C$DW$302, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$302, DW_AT_name("INITDONE_GS4")
	.dwattr $C$DW$302, DW_AT_TI_symbol_name("_INITDONE_GS4")
	.dwattr $C$DW$302, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$302, DW_AT_bit_size(0x01)
	.dwattr $C$DW$302, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$302, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$303	.dwtag  DW_TAG_member
	.dwattr $C$DW$303, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$303, DW_AT_name("INITDONE_GS5")
	.dwattr $C$DW$303, DW_AT_TI_symbol_name("_INITDONE_GS5")
	.dwattr $C$DW$303, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$303, DW_AT_bit_size(0x01)
	.dwattr $C$DW$303, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$303, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$304	.dwtag  DW_TAG_member
	.dwattr $C$DW$304, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$304, DW_AT_name("INITDONE_GS6")
	.dwattr $C$DW$304, DW_AT_TI_symbol_name("_INITDONE_GS6")
	.dwattr $C$DW$304, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$304, DW_AT_bit_size(0x01)
	.dwattr $C$DW$304, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$304, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$305	.dwtag  DW_TAG_member
	.dwattr $C$DW$305, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$305, DW_AT_name("INITDONE_GS7")
	.dwattr $C$DW$305, DW_AT_TI_symbol_name("_INITDONE_GS7")
	.dwattr $C$DW$305, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$305, DW_AT_bit_size(0x01)
	.dwattr $C$DW$305, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$305, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$306	.dwtag  DW_TAG_member
	.dwattr $C$DW$306, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$306, DW_AT_name("INITDONE_GS8")
	.dwattr $C$DW$306, DW_AT_TI_symbol_name("_INITDONE_GS8")
	.dwattr $C$DW$306, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$306, DW_AT_bit_size(0x01)
	.dwattr $C$DW$306, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$306, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$307	.dwtag  DW_TAG_member
	.dwattr $C$DW$307, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$307, DW_AT_name("INITDONE_GS9")
	.dwattr $C$DW$307, DW_AT_TI_symbol_name("_INITDONE_GS9")
	.dwattr $C$DW$307, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$307, DW_AT_bit_size(0x01)
	.dwattr $C$DW$307, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$307, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$308	.dwtag  DW_TAG_member
	.dwattr $C$DW$308, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$308, DW_AT_name("INITDONE_GS10")
	.dwattr $C$DW$308, DW_AT_TI_symbol_name("_INITDONE_GS10")
	.dwattr $C$DW$308, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$308, DW_AT_bit_size(0x01)
	.dwattr $C$DW$308, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$308, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$309	.dwtag  DW_TAG_member
	.dwattr $C$DW$309, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$309, DW_AT_name("INITDONE_GS11")
	.dwattr $C$DW$309, DW_AT_TI_symbol_name("_INITDONE_GS11")
	.dwattr $C$DW$309, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$309, DW_AT_bit_size(0x01)
	.dwattr $C$DW$309, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$309, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$310	.dwtag  DW_TAG_member
	.dwattr $C$DW$310, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$310, DW_AT_name("INITDONE_GS12")
	.dwattr $C$DW$310, DW_AT_TI_symbol_name("_INITDONE_GS12")
	.dwattr $C$DW$310, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$310, DW_AT_bit_size(0x01)
	.dwattr $C$DW$310, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$310, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$311	.dwtag  DW_TAG_member
	.dwattr $C$DW$311, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$311, DW_AT_name("INITDONE_GS13")
	.dwattr $C$DW$311, DW_AT_TI_symbol_name("_INITDONE_GS13")
	.dwattr $C$DW$311, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$311, DW_AT_bit_size(0x01)
	.dwattr $C$DW$311, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$311, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$312	.dwtag  DW_TAG_member
	.dwattr $C$DW$312, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$312, DW_AT_name("INITDONE_GS14")
	.dwattr $C$DW$312, DW_AT_TI_symbol_name("_INITDONE_GS14")
	.dwattr $C$DW$312, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$312, DW_AT_bit_size(0x01)
	.dwattr $C$DW$312, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$312, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$313	.dwtag  DW_TAG_member
	.dwattr $C$DW$313, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$313, DW_AT_name("INITDONE_GS15")
	.dwattr $C$DW$313, DW_AT_TI_symbol_name("_INITDONE_GS15")
	.dwattr $C$DW$313, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$313, DW_AT_bit_size(0x01)
	.dwattr $C$DW$313, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$313, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$314	.dwtag  DW_TAG_member
	.dwattr $C$DW$314, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$314, DW_AT_name("rsvd1")
	.dwattr $C$DW$314, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$314, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$314, DW_AT_bit_size(0x10)
	.dwattr $C$DW$314, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$314, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$43


$C$DW$T$44	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$44, DW_AT_name("GSxINITDONE_REG")
	.dwattr $C$DW$T$44, DW_AT_byte_size(0x02)
$C$DW$315	.dwtag  DW_TAG_member
	.dwattr $C$DW$315, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$315, DW_AT_name("all")
	.dwattr $C$DW$315, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$315, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$315, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$316	.dwtag  DW_TAG_member
	.dwattr $C$DW$316, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$316, DW_AT_name("bit")
	.dwattr $C$DW$316, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$316, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$316, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$44


$C$DW$T$45	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$45, DW_AT_name("GSxINIT_BITS")
	.dwattr $C$DW$T$45, DW_AT_byte_size(0x02)
$C$DW$317	.dwtag  DW_TAG_member
	.dwattr $C$DW$317, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$317, DW_AT_name("INIT_GS0")
	.dwattr $C$DW$317, DW_AT_TI_symbol_name("_INIT_GS0")
	.dwattr $C$DW$317, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$317, DW_AT_bit_size(0x01)
	.dwattr $C$DW$317, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$317, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$318	.dwtag  DW_TAG_member
	.dwattr $C$DW$318, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$318, DW_AT_name("INIT_GS1")
	.dwattr $C$DW$318, DW_AT_TI_symbol_name("_INIT_GS1")
	.dwattr $C$DW$318, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$318, DW_AT_bit_size(0x01)
	.dwattr $C$DW$318, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$318, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$319	.dwtag  DW_TAG_member
	.dwattr $C$DW$319, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$319, DW_AT_name("INIT_GS2")
	.dwattr $C$DW$319, DW_AT_TI_symbol_name("_INIT_GS2")
	.dwattr $C$DW$319, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$319, DW_AT_bit_size(0x01)
	.dwattr $C$DW$319, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$319, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$320	.dwtag  DW_TAG_member
	.dwattr $C$DW$320, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$320, DW_AT_name("INIT_GS3")
	.dwattr $C$DW$320, DW_AT_TI_symbol_name("_INIT_GS3")
	.dwattr $C$DW$320, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$320, DW_AT_bit_size(0x01)
	.dwattr $C$DW$320, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$320, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$321	.dwtag  DW_TAG_member
	.dwattr $C$DW$321, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$321, DW_AT_name("INIT_GS4")
	.dwattr $C$DW$321, DW_AT_TI_symbol_name("_INIT_GS4")
	.dwattr $C$DW$321, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$321, DW_AT_bit_size(0x01)
	.dwattr $C$DW$321, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$321, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$322	.dwtag  DW_TAG_member
	.dwattr $C$DW$322, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$322, DW_AT_name("INIT_GS5")
	.dwattr $C$DW$322, DW_AT_TI_symbol_name("_INIT_GS5")
	.dwattr $C$DW$322, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$322, DW_AT_bit_size(0x01)
	.dwattr $C$DW$322, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$322, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$323	.dwtag  DW_TAG_member
	.dwattr $C$DW$323, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$323, DW_AT_name("INIT_GS6")
	.dwattr $C$DW$323, DW_AT_TI_symbol_name("_INIT_GS6")
	.dwattr $C$DW$323, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$323, DW_AT_bit_size(0x01)
	.dwattr $C$DW$323, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$323, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$324	.dwtag  DW_TAG_member
	.dwattr $C$DW$324, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$324, DW_AT_name("INIT_GS7")
	.dwattr $C$DW$324, DW_AT_TI_symbol_name("_INIT_GS7")
	.dwattr $C$DW$324, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$324, DW_AT_bit_size(0x01)
	.dwattr $C$DW$324, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$324, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$325	.dwtag  DW_TAG_member
	.dwattr $C$DW$325, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$325, DW_AT_name("INIT_GS8")
	.dwattr $C$DW$325, DW_AT_TI_symbol_name("_INIT_GS8")
	.dwattr $C$DW$325, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$325, DW_AT_bit_size(0x01)
	.dwattr $C$DW$325, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$325, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$326	.dwtag  DW_TAG_member
	.dwattr $C$DW$326, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$326, DW_AT_name("INIT_GS9")
	.dwattr $C$DW$326, DW_AT_TI_symbol_name("_INIT_GS9")
	.dwattr $C$DW$326, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$326, DW_AT_bit_size(0x01)
	.dwattr $C$DW$326, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$326, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$327	.dwtag  DW_TAG_member
	.dwattr $C$DW$327, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$327, DW_AT_name("INIT_GS10")
	.dwattr $C$DW$327, DW_AT_TI_symbol_name("_INIT_GS10")
	.dwattr $C$DW$327, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$327, DW_AT_bit_size(0x01)
	.dwattr $C$DW$327, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$327, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$328	.dwtag  DW_TAG_member
	.dwattr $C$DW$328, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$328, DW_AT_name("INIT_GS11")
	.dwattr $C$DW$328, DW_AT_TI_symbol_name("_INIT_GS11")
	.dwattr $C$DW$328, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$328, DW_AT_bit_size(0x01)
	.dwattr $C$DW$328, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$328, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$329	.dwtag  DW_TAG_member
	.dwattr $C$DW$329, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$329, DW_AT_name("INIT_GS12")
	.dwattr $C$DW$329, DW_AT_TI_symbol_name("_INIT_GS12")
	.dwattr $C$DW$329, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$329, DW_AT_bit_size(0x01)
	.dwattr $C$DW$329, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$329, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$330	.dwtag  DW_TAG_member
	.dwattr $C$DW$330, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$330, DW_AT_name("INIT_GS13")
	.dwattr $C$DW$330, DW_AT_TI_symbol_name("_INIT_GS13")
	.dwattr $C$DW$330, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$330, DW_AT_bit_size(0x01)
	.dwattr $C$DW$330, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$330, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$331	.dwtag  DW_TAG_member
	.dwattr $C$DW$331, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$331, DW_AT_name("INIT_GS14")
	.dwattr $C$DW$331, DW_AT_TI_symbol_name("_INIT_GS14")
	.dwattr $C$DW$331, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$331, DW_AT_bit_size(0x01)
	.dwattr $C$DW$331, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$331, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$332	.dwtag  DW_TAG_member
	.dwattr $C$DW$332, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$332, DW_AT_name("INIT_GS15")
	.dwattr $C$DW$332, DW_AT_TI_symbol_name("_INIT_GS15")
	.dwattr $C$DW$332, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$332, DW_AT_bit_size(0x01)
	.dwattr $C$DW$332, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$332, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$333	.dwtag  DW_TAG_member
	.dwattr $C$DW$333, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$333, DW_AT_name("rsvd1")
	.dwattr $C$DW$333, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$333, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$333, DW_AT_bit_size(0x10)
	.dwattr $C$DW$333, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$333, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$45


$C$DW$T$46	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$46, DW_AT_name("GSxINIT_REG")
	.dwattr $C$DW$T$46, DW_AT_byte_size(0x02)
$C$DW$334	.dwtag  DW_TAG_member
	.dwattr $C$DW$334, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$334, DW_AT_name("all")
	.dwattr $C$DW$334, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$334, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$334, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$335	.dwtag  DW_TAG_member
	.dwattr $C$DW$335, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$335, DW_AT_name("bit")
	.dwattr $C$DW$335, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$335, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$335, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$46


$C$DW$T$47	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$47, DW_AT_name("GSxLOCK_BITS")
	.dwattr $C$DW$T$47, DW_AT_byte_size(0x02)
$C$DW$336	.dwtag  DW_TAG_member
	.dwattr $C$DW$336, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$336, DW_AT_name("LOCK_GS0")
	.dwattr $C$DW$336, DW_AT_TI_symbol_name("_LOCK_GS0")
	.dwattr $C$DW$336, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$336, DW_AT_bit_size(0x01)
	.dwattr $C$DW$336, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$336, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$337	.dwtag  DW_TAG_member
	.dwattr $C$DW$337, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$337, DW_AT_name("LOCK_GS1")
	.dwattr $C$DW$337, DW_AT_TI_symbol_name("_LOCK_GS1")
	.dwattr $C$DW$337, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$337, DW_AT_bit_size(0x01)
	.dwattr $C$DW$337, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$337, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$338	.dwtag  DW_TAG_member
	.dwattr $C$DW$338, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$338, DW_AT_name("LOCK_GS2")
	.dwattr $C$DW$338, DW_AT_TI_symbol_name("_LOCK_GS2")
	.dwattr $C$DW$338, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$338, DW_AT_bit_size(0x01)
	.dwattr $C$DW$338, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$338, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$339	.dwtag  DW_TAG_member
	.dwattr $C$DW$339, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$339, DW_AT_name("LOCK_GS3")
	.dwattr $C$DW$339, DW_AT_TI_symbol_name("_LOCK_GS3")
	.dwattr $C$DW$339, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$339, DW_AT_bit_size(0x01)
	.dwattr $C$DW$339, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$339, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$340	.dwtag  DW_TAG_member
	.dwattr $C$DW$340, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$340, DW_AT_name("LOCK_GS4")
	.dwattr $C$DW$340, DW_AT_TI_symbol_name("_LOCK_GS4")
	.dwattr $C$DW$340, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$340, DW_AT_bit_size(0x01)
	.dwattr $C$DW$340, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$340, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$341	.dwtag  DW_TAG_member
	.dwattr $C$DW$341, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$341, DW_AT_name("LOCK_GS5")
	.dwattr $C$DW$341, DW_AT_TI_symbol_name("_LOCK_GS5")
	.dwattr $C$DW$341, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$341, DW_AT_bit_size(0x01)
	.dwattr $C$DW$341, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$341, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$342	.dwtag  DW_TAG_member
	.dwattr $C$DW$342, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$342, DW_AT_name("LOCK_GS6")
	.dwattr $C$DW$342, DW_AT_TI_symbol_name("_LOCK_GS6")
	.dwattr $C$DW$342, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$342, DW_AT_bit_size(0x01)
	.dwattr $C$DW$342, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$342, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$343	.dwtag  DW_TAG_member
	.dwattr $C$DW$343, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$343, DW_AT_name("LOCK_GS7")
	.dwattr $C$DW$343, DW_AT_TI_symbol_name("_LOCK_GS7")
	.dwattr $C$DW$343, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$343, DW_AT_bit_size(0x01)
	.dwattr $C$DW$343, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$343, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$344	.dwtag  DW_TAG_member
	.dwattr $C$DW$344, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$344, DW_AT_name("LOCK_GS8")
	.dwattr $C$DW$344, DW_AT_TI_symbol_name("_LOCK_GS8")
	.dwattr $C$DW$344, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$344, DW_AT_bit_size(0x01)
	.dwattr $C$DW$344, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$344, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$345	.dwtag  DW_TAG_member
	.dwattr $C$DW$345, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$345, DW_AT_name("LOCK_GS9")
	.dwattr $C$DW$345, DW_AT_TI_symbol_name("_LOCK_GS9")
	.dwattr $C$DW$345, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$345, DW_AT_bit_size(0x01)
	.dwattr $C$DW$345, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$345, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$346	.dwtag  DW_TAG_member
	.dwattr $C$DW$346, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$346, DW_AT_name("LOCK_GS10")
	.dwattr $C$DW$346, DW_AT_TI_symbol_name("_LOCK_GS10")
	.dwattr $C$DW$346, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$346, DW_AT_bit_size(0x01)
	.dwattr $C$DW$346, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$346, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$347	.dwtag  DW_TAG_member
	.dwattr $C$DW$347, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$347, DW_AT_name("LOCK_GS11")
	.dwattr $C$DW$347, DW_AT_TI_symbol_name("_LOCK_GS11")
	.dwattr $C$DW$347, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$347, DW_AT_bit_size(0x01)
	.dwattr $C$DW$347, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$347, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$348	.dwtag  DW_TAG_member
	.dwattr $C$DW$348, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$348, DW_AT_name("LOCK_GS12")
	.dwattr $C$DW$348, DW_AT_TI_symbol_name("_LOCK_GS12")
	.dwattr $C$DW$348, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$348, DW_AT_bit_size(0x01)
	.dwattr $C$DW$348, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$348, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$349	.dwtag  DW_TAG_member
	.dwattr $C$DW$349, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$349, DW_AT_name("LOCK_GS13")
	.dwattr $C$DW$349, DW_AT_TI_symbol_name("_LOCK_GS13")
	.dwattr $C$DW$349, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$349, DW_AT_bit_size(0x01)
	.dwattr $C$DW$349, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$349, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$350	.dwtag  DW_TAG_member
	.dwattr $C$DW$350, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$350, DW_AT_name("LOCK_GS14")
	.dwattr $C$DW$350, DW_AT_TI_symbol_name("_LOCK_GS14")
	.dwattr $C$DW$350, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$350, DW_AT_bit_size(0x01)
	.dwattr $C$DW$350, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$350, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$351	.dwtag  DW_TAG_member
	.dwattr $C$DW$351, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$351, DW_AT_name("LOCK_GS15")
	.dwattr $C$DW$351, DW_AT_TI_symbol_name("_LOCK_GS15")
	.dwattr $C$DW$351, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$351, DW_AT_bit_size(0x01)
	.dwattr $C$DW$351, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$351, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$352	.dwtag  DW_TAG_member
	.dwattr $C$DW$352, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$352, DW_AT_name("rsvd1")
	.dwattr $C$DW$352, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$352, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$352, DW_AT_bit_size(0x10)
	.dwattr $C$DW$352, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$352, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$47


$C$DW$T$48	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$48, DW_AT_name("GSxLOCK_REG")
	.dwattr $C$DW$T$48, DW_AT_byte_size(0x02)
$C$DW$353	.dwtag  DW_TAG_member
	.dwattr $C$DW$353, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$353, DW_AT_name("all")
	.dwattr $C$DW$353, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$353, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$353, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$354	.dwtag  DW_TAG_member
	.dwattr $C$DW$354, DW_AT_type(*$C$DW$T$47)
	.dwattr $C$DW$354, DW_AT_name("bit")
	.dwattr $C$DW$354, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$354, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$354, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$48


$C$DW$T$49	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$49, DW_AT_name("GSxMSEL_BITS")
	.dwattr $C$DW$T$49, DW_AT_byte_size(0x02)
$C$DW$355	.dwtag  DW_TAG_member
	.dwattr $C$DW$355, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$355, DW_AT_name("MSEL_GS0")
	.dwattr $C$DW$355, DW_AT_TI_symbol_name("_MSEL_GS0")
	.dwattr $C$DW$355, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$355, DW_AT_bit_size(0x01)
	.dwattr $C$DW$355, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$355, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$356	.dwtag  DW_TAG_member
	.dwattr $C$DW$356, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$356, DW_AT_name("MSEL_GS1")
	.dwattr $C$DW$356, DW_AT_TI_symbol_name("_MSEL_GS1")
	.dwattr $C$DW$356, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$356, DW_AT_bit_size(0x01)
	.dwattr $C$DW$356, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$356, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$357	.dwtag  DW_TAG_member
	.dwattr $C$DW$357, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$357, DW_AT_name("MSEL_GS2")
	.dwattr $C$DW$357, DW_AT_TI_symbol_name("_MSEL_GS2")
	.dwattr $C$DW$357, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$357, DW_AT_bit_size(0x01)
	.dwattr $C$DW$357, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$357, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$358	.dwtag  DW_TAG_member
	.dwattr $C$DW$358, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$358, DW_AT_name("MSEL_GS3")
	.dwattr $C$DW$358, DW_AT_TI_symbol_name("_MSEL_GS3")
	.dwattr $C$DW$358, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$358, DW_AT_bit_size(0x01)
	.dwattr $C$DW$358, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$358, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$359	.dwtag  DW_TAG_member
	.dwattr $C$DW$359, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$359, DW_AT_name("MSEL_GS4")
	.dwattr $C$DW$359, DW_AT_TI_symbol_name("_MSEL_GS4")
	.dwattr $C$DW$359, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$359, DW_AT_bit_size(0x01)
	.dwattr $C$DW$359, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$359, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$360	.dwtag  DW_TAG_member
	.dwattr $C$DW$360, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$360, DW_AT_name("MSEL_GS5")
	.dwattr $C$DW$360, DW_AT_TI_symbol_name("_MSEL_GS5")
	.dwattr $C$DW$360, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$360, DW_AT_bit_size(0x01)
	.dwattr $C$DW$360, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$360, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$361	.dwtag  DW_TAG_member
	.dwattr $C$DW$361, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$361, DW_AT_name("MSEL_GS6")
	.dwattr $C$DW$361, DW_AT_TI_symbol_name("_MSEL_GS6")
	.dwattr $C$DW$361, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$361, DW_AT_bit_size(0x01)
	.dwattr $C$DW$361, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$361, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$362	.dwtag  DW_TAG_member
	.dwattr $C$DW$362, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$362, DW_AT_name("MSEL_GS7")
	.dwattr $C$DW$362, DW_AT_TI_symbol_name("_MSEL_GS7")
	.dwattr $C$DW$362, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$362, DW_AT_bit_size(0x01)
	.dwattr $C$DW$362, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$362, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$363	.dwtag  DW_TAG_member
	.dwattr $C$DW$363, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$363, DW_AT_name("MSEL_GS8")
	.dwattr $C$DW$363, DW_AT_TI_symbol_name("_MSEL_GS8")
	.dwattr $C$DW$363, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$363, DW_AT_bit_size(0x01)
	.dwattr $C$DW$363, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$363, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$364	.dwtag  DW_TAG_member
	.dwattr $C$DW$364, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$364, DW_AT_name("MSEL_GS9")
	.dwattr $C$DW$364, DW_AT_TI_symbol_name("_MSEL_GS9")
	.dwattr $C$DW$364, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$364, DW_AT_bit_size(0x01)
	.dwattr $C$DW$364, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$364, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$365	.dwtag  DW_TAG_member
	.dwattr $C$DW$365, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$365, DW_AT_name("MSEL_GS10")
	.dwattr $C$DW$365, DW_AT_TI_symbol_name("_MSEL_GS10")
	.dwattr $C$DW$365, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$365, DW_AT_bit_size(0x01)
	.dwattr $C$DW$365, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$365, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$366	.dwtag  DW_TAG_member
	.dwattr $C$DW$366, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$366, DW_AT_name("MSEL_GS11")
	.dwattr $C$DW$366, DW_AT_TI_symbol_name("_MSEL_GS11")
	.dwattr $C$DW$366, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$366, DW_AT_bit_size(0x01)
	.dwattr $C$DW$366, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$366, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$367	.dwtag  DW_TAG_member
	.dwattr $C$DW$367, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$367, DW_AT_name("MSEL_GS12")
	.dwattr $C$DW$367, DW_AT_TI_symbol_name("_MSEL_GS12")
	.dwattr $C$DW$367, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$367, DW_AT_bit_size(0x01)
	.dwattr $C$DW$367, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$367, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$368	.dwtag  DW_TAG_member
	.dwattr $C$DW$368, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$368, DW_AT_name("MSEL_GS13")
	.dwattr $C$DW$368, DW_AT_TI_symbol_name("_MSEL_GS13")
	.dwattr $C$DW$368, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$368, DW_AT_bit_size(0x01)
	.dwattr $C$DW$368, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$368, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$369	.dwtag  DW_TAG_member
	.dwattr $C$DW$369, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$369, DW_AT_name("MSEL_GS14")
	.dwattr $C$DW$369, DW_AT_TI_symbol_name("_MSEL_GS14")
	.dwattr $C$DW$369, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$369, DW_AT_bit_size(0x01)
	.dwattr $C$DW$369, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$369, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$370	.dwtag  DW_TAG_member
	.dwattr $C$DW$370, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$370, DW_AT_name("MSEL_GS15")
	.dwattr $C$DW$370, DW_AT_TI_symbol_name("_MSEL_GS15")
	.dwattr $C$DW$370, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$370, DW_AT_bit_size(0x01)
	.dwattr $C$DW$370, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$370, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$371	.dwtag  DW_TAG_member
	.dwattr $C$DW$371, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$371, DW_AT_name("rsvd1")
	.dwattr $C$DW$371, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$371, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$371, DW_AT_bit_size(0x10)
	.dwattr $C$DW$371, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$371, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$49


$C$DW$T$50	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$50, DW_AT_name("GSxMSEL_REG")
	.dwattr $C$DW$T$50, DW_AT_byte_size(0x02)
$C$DW$372	.dwtag  DW_TAG_member
	.dwattr $C$DW$372, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$372, DW_AT_name("all")
	.dwattr $C$DW$372, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$372, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$372, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$373	.dwtag  DW_TAG_member
	.dwattr $C$DW$373, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$373, DW_AT_name("bit")
	.dwattr $C$DW$373, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$373, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$373, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$50


$C$DW$T$51	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$51, DW_AT_name("GSxTEST_BITS")
	.dwattr $C$DW$T$51, DW_AT_byte_size(0x02)
$C$DW$374	.dwtag  DW_TAG_member
	.dwattr $C$DW$374, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$374, DW_AT_name("TEST_GS0")
	.dwattr $C$DW$374, DW_AT_TI_symbol_name("_TEST_GS0")
	.dwattr $C$DW$374, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$374, DW_AT_bit_size(0x02)
	.dwattr $C$DW$374, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$374, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$375	.dwtag  DW_TAG_member
	.dwattr $C$DW$375, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$375, DW_AT_name("TEST_GS1")
	.dwattr $C$DW$375, DW_AT_TI_symbol_name("_TEST_GS1")
	.dwattr $C$DW$375, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$375, DW_AT_bit_size(0x02)
	.dwattr $C$DW$375, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$375, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$376	.dwtag  DW_TAG_member
	.dwattr $C$DW$376, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$376, DW_AT_name("TEST_GS2")
	.dwattr $C$DW$376, DW_AT_TI_symbol_name("_TEST_GS2")
	.dwattr $C$DW$376, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$376, DW_AT_bit_size(0x02)
	.dwattr $C$DW$376, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$376, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$377	.dwtag  DW_TAG_member
	.dwattr $C$DW$377, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$377, DW_AT_name("TEST_GS3")
	.dwattr $C$DW$377, DW_AT_TI_symbol_name("_TEST_GS3")
	.dwattr $C$DW$377, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$377, DW_AT_bit_size(0x02)
	.dwattr $C$DW$377, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$377, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$378	.dwtag  DW_TAG_member
	.dwattr $C$DW$378, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$378, DW_AT_name("TEST_GS4")
	.dwattr $C$DW$378, DW_AT_TI_symbol_name("_TEST_GS4")
	.dwattr $C$DW$378, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$378, DW_AT_bit_size(0x02)
	.dwattr $C$DW$378, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$378, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$379	.dwtag  DW_TAG_member
	.dwattr $C$DW$379, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$379, DW_AT_name("TEST_GS5")
	.dwattr $C$DW$379, DW_AT_TI_symbol_name("_TEST_GS5")
	.dwattr $C$DW$379, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$379, DW_AT_bit_size(0x02)
	.dwattr $C$DW$379, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$379, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$380	.dwtag  DW_TAG_member
	.dwattr $C$DW$380, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$380, DW_AT_name("TEST_GS6")
	.dwattr $C$DW$380, DW_AT_TI_symbol_name("_TEST_GS6")
	.dwattr $C$DW$380, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$380, DW_AT_bit_size(0x02)
	.dwattr $C$DW$380, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$380, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$381	.dwtag  DW_TAG_member
	.dwattr $C$DW$381, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$381, DW_AT_name("TEST_GS7")
	.dwattr $C$DW$381, DW_AT_TI_symbol_name("_TEST_GS7")
	.dwattr $C$DW$381, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$381, DW_AT_bit_size(0x02)
	.dwattr $C$DW$381, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$381, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$382	.dwtag  DW_TAG_member
	.dwattr $C$DW$382, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$382, DW_AT_name("TEST_GS8")
	.dwattr $C$DW$382, DW_AT_TI_symbol_name("_TEST_GS8")
	.dwattr $C$DW$382, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$382, DW_AT_bit_size(0x02)
	.dwattr $C$DW$382, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$382, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$383	.dwtag  DW_TAG_member
	.dwattr $C$DW$383, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$383, DW_AT_name("TEST_GS9")
	.dwattr $C$DW$383, DW_AT_TI_symbol_name("_TEST_GS9")
	.dwattr $C$DW$383, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$383, DW_AT_bit_size(0x02)
	.dwattr $C$DW$383, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$383, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$384	.dwtag  DW_TAG_member
	.dwattr $C$DW$384, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$384, DW_AT_name("TEST_GS10")
	.dwattr $C$DW$384, DW_AT_TI_symbol_name("_TEST_GS10")
	.dwattr $C$DW$384, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$384, DW_AT_bit_size(0x02)
	.dwattr $C$DW$384, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$384, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$385	.dwtag  DW_TAG_member
	.dwattr $C$DW$385, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$385, DW_AT_name("TEST_GS11")
	.dwattr $C$DW$385, DW_AT_TI_symbol_name("_TEST_GS11")
	.dwattr $C$DW$385, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$385, DW_AT_bit_size(0x02)
	.dwattr $C$DW$385, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$385, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$386	.dwtag  DW_TAG_member
	.dwattr $C$DW$386, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$386, DW_AT_name("TEST_GS12")
	.dwattr $C$DW$386, DW_AT_TI_symbol_name("_TEST_GS12")
	.dwattr $C$DW$386, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$386, DW_AT_bit_size(0x02)
	.dwattr $C$DW$386, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$386, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$387	.dwtag  DW_TAG_member
	.dwattr $C$DW$387, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$387, DW_AT_name("TEST_GS13")
	.dwattr $C$DW$387, DW_AT_TI_symbol_name("_TEST_GS13")
	.dwattr $C$DW$387, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$387, DW_AT_bit_size(0x02)
	.dwattr $C$DW$387, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$387, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$388	.dwtag  DW_TAG_member
	.dwattr $C$DW$388, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$388, DW_AT_name("TEST_GS14")
	.dwattr $C$DW$388, DW_AT_TI_symbol_name("_TEST_GS14")
	.dwattr $C$DW$388, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$388, DW_AT_bit_size(0x02)
	.dwattr $C$DW$388, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$388, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$389	.dwtag  DW_TAG_member
	.dwattr $C$DW$389, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$389, DW_AT_name("TEST_GS15")
	.dwattr $C$DW$389, DW_AT_TI_symbol_name("_TEST_GS15")
	.dwattr $C$DW$389, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$389, DW_AT_bit_size(0x02)
	.dwattr $C$DW$389, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$389, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$51


$C$DW$T$52	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$52, DW_AT_name("GSxTEST_REG")
	.dwattr $C$DW$T$52, DW_AT_byte_size(0x02)
$C$DW$390	.dwtag  DW_TAG_member
	.dwattr $C$DW$390, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$390, DW_AT_name("all")
	.dwattr $C$DW$390, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$390, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$390, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$391	.dwtag  DW_TAG_member
	.dwattr $C$DW$391, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$391, DW_AT_name("bit")
	.dwattr $C$DW$391, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$391, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$391, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$52


$C$DW$T$53	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$53, DW_AT_name("IPCACK_BITS")
	.dwattr $C$DW$T$53, DW_AT_byte_size(0x02)
$C$DW$392	.dwtag  DW_TAG_member
	.dwattr $C$DW$392, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$392, DW_AT_name("IPC0")
	.dwattr $C$DW$392, DW_AT_TI_symbol_name("_IPC0")
	.dwattr $C$DW$392, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$392, DW_AT_bit_size(0x01)
	.dwattr $C$DW$392, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$392, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$393	.dwtag  DW_TAG_member
	.dwattr $C$DW$393, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$393, DW_AT_name("IPC1")
	.dwattr $C$DW$393, DW_AT_TI_symbol_name("_IPC1")
	.dwattr $C$DW$393, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$393, DW_AT_bit_size(0x01)
	.dwattr $C$DW$393, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$393, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$394	.dwtag  DW_TAG_member
	.dwattr $C$DW$394, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$394, DW_AT_name("IPC2")
	.dwattr $C$DW$394, DW_AT_TI_symbol_name("_IPC2")
	.dwattr $C$DW$394, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$394, DW_AT_bit_size(0x01)
	.dwattr $C$DW$394, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$394, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$395	.dwtag  DW_TAG_member
	.dwattr $C$DW$395, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$395, DW_AT_name("IPC3")
	.dwattr $C$DW$395, DW_AT_TI_symbol_name("_IPC3")
	.dwattr $C$DW$395, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$395, DW_AT_bit_size(0x01)
	.dwattr $C$DW$395, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$395, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$396	.dwtag  DW_TAG_member
	.dwattr $C$DW$396, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$396, DW_AT_name("IPC4")
	.dwattr $C$DW$396, DW_AT_TI_symbol_name("_IPC4")
	.dwattr $C$DW$396, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$396, DW_AT_bit_size(0x01)
	.dwattr $C$DW$396, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$396, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$397	.dwtag  DW_TAG_member
	.dwattr $C$DW$397, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$397, DW_AT_name("IPC5")
	.dwattr $C$DW$397, DW_AT_TI_symbol_name("_IPC5")
	.dwattr $C$DW$397, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$397, DW_AT_bit_size(0x01)
	.dwattr $C$DW$397, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$397, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$398	.dwtag  DW_TAG_member
	.dwattr $C$DW$398, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$398, DW_AT_name("IPC6")
	.dwattr $C$DW$398, DW_AT_TI_symbol_name("_IPC6")
	.dwattr $C$DW$398, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$398, DW_AT_bit_size(0x01)
	.dwattr $C$DW$398, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$398, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$399	.dwtag  DW_TAG_member
	.dwattr $C$DW$399, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$399, DW_AT_name("IPC7")
	.dwattr $C$DW$399, DW_AT_TI_symbol_name("_IPC7")
	.dwattr $C$DW$399, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$399, DW_AT_bit_size(0x01)
	.dwattr $C$DW$399, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$399, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$400	.dwtag  DW_TAG_member
	.dwattr $C$DW$400, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$400, DW_AT_name("IPC8")
	.dwattr $C$DW$400, DW_AT_TI_symbol_name("_IPC8")
	.dwattr $C$DW$400, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$400, DW_AT_bit_size(0x01)
	.dwattr $C$DW$400, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$400, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$401	.dwtag  DW_TAG_member
	.dwattr $C$DW$401, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$401, DW_AT_name("IPC9")
	.dwattr $C$DW$401, DW_AT_TI_symbol_name("_IPC9")
	.dwattr $C$DW$401, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$401, DW_AT_bit_size(0x01)
	.dwattr $C$DW$401, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$401, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$402	.dwtag  DW_TAG_member
	.dwattr $C$DW$402, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$402, DW_AT_name("IPC10")
	.dwattr $C$DW$402, DW_AT_TI_symbol_name("_IPC10")
	.dwattr $C$DW$402, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$402, DW_AT_bit_size(0x01)
	.dwattr $C$DW$402, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$402, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$403	.dwtag  DW_TAG_member
	.dwattr $C$DW$403, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$403, DW_AT_name("IPC11")
	.dwattr $C$DW$403, DW_AT_TI_symbol_name("_IPC11")
	.dwattr $C$DW$403, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$403, DW_AT_bit_size(0x01)
	.dwattr $C$DW$403, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$403, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$404	.dwtag  DW_TAG_member
	.dwattr $C$DW$404, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$404, DW_AT_name("IPC12")
	.dwattr $C$DW$404, DW_AT_TI_symbol_name("_IPC12")
	.dwattr $C$DW$404, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$404, DW_AT_bit_size(0x01)
	.dwattr $C$DW$404, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$404, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$405	.dwtag  DW_TAG_member
	.dwattr $C$DW$405, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$405, DW_AT_name("IPC13")
	.dwattr $C$DW$405, DW_AT_TI_symbol_name("_IPC13")
	.dwattr $C$DW$405, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$405, DW_AT_bit_size(0x01)
	.dwattr $C$DW$405, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$405, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$406	.dwtag  DW_TAG_member
	.dwattr $C$DW$406, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$406, DW_AT_name("IPC14")
	.dwattr $C$DW$406, DW_AT_TI_symbol_name("_IPC14")
	.dwattr $C$DW$406, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$406, DW_AT_bit_size(0x01)
	.dwattr $C$DW$406, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$406, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$407	.dwtag  DW_TAG_member
	.dwattr $C$DW$407, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$407, DW_AT_name("IPC15")
	.dwattr $C$DW$407, DW_AT_TI_symbol_name("_IPC15")
	.dwattr $C$DW$407, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$407, DW_AT_bit_size(0x01)
	.dwattr $C$DW$407, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$407, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$408	.dwtag  DW_TAG_member
	.dwattr $C$DW$408, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$408, DW_AT_name("IPC16")
	.dwattr $C$DW$408, DW_AT_TI_symbol_name("_IPC16")
	.dwattr $C$DW$408, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$408, DW_AT_bit_size(0x01)
	.dwattr $C$DW$408, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$408, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$409	.dwtag  DW_TAG_member
	.dwattr $C$DW$409, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$409, DW_AT_name("IPC17")
	.dwattr $C$DW$409, DW_AT_TI_symbol_name("_IPC17")
	.dwattr $C$DW$409, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$409, DW_AT_bit_size(0x01)
	.dwattr $C$DW$409, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$409, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$410	.dwtag  DW_TAG_member
	.dwattr $C$DW$410, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$410, DW_AT_name("IPC18")
	.dwattr $C$DW$410, DW_AT_TI_symbol_name("_IPC18")
	.dwattr $C$DW$410, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$410, DW_AT_bit_size(0x01)
	.dwattr $C$DW$410, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$410, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$411	.dwtag  DW_TAG_member
	.dwattr $C$DW$411, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$411, DW_AT_name("IPC19")
	.dwattr $C$DW$411, DW_AT_TI_symbol_name("_IPC19")
	.dwattr $C$DW$411, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$411, DW_AT_bit_size(0x01)
	.dwattr $C$DW$411, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$411, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$412	.dwtag  DW_TAG_member
	.dwattr $C$DW$412, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$412, DW_AT_name("IPC20")
	.dwattr $C$DW$412, DW_AT_TI_symbol_name("_IPC20")
	.dwattr $C$DW$412, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$412, DW_AT_bit_size(0x01)
	.dwattr $C$DW$412, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$412, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$413	.dwtag  DW_TAG_member
	.dwattr $C$DW$413, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$413, DW_AT_name("IPC21")
	.dwattr $C$DW$413, DW_AT_TI_symbol_name("_IPC21")
	.dwattr $C$DW$413, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$413, DW_AT_bit_size(0x01)
	.dwattr $C$DW$413, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$413, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$414	.dwtag  DW_TAG_member
	.dwattr $C$DW$414, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$414, DW_AT_name("IPC22")
	.dwattr $C$DW$414, DW_AT_TI_symbol_name("_IPC22")
	.dwattr $C$DW$414, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$414, DW_AT_bit_size(0x01)
	.dwattr $C$DW$414, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$414, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$415	.dwtag  DW_TAG_member
	.dwattr $C$DW$415, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$415, DW_AT_name("IPC23")
	.dwattr $C$DW$415, DW_AT_TI_symbol_name("_IPC23")
	.dwattr $C$DW$415, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$415, DW_AT_bit_size(0x01)
	.dwattr $C$DW$415, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$415, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$416	.dwtag  DW_TAG_member
	.dwattr $C$DW$416, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$416, DW_AT_name("IPC24")
	.dwattr $C$DW$416, DW_AT_TI_symbol_name("_IPC24")
	.dwattr $C$DW$416, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$416, DW_AT_bit_size(0x01)
	.dwattr $C$DW$416, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$416, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$417	.dwtag  DW_TAG_member
	.dwattr $C$DW$417, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$417, DW_AT_name("IPC25")
	.dwattr $C$DW$417, DW_AT_TI_symbol_name("_IPC25")
	.dwattr $C$DW$417, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$417, DW_AT_bit_size(0x01)
	.dwattr $C$DW$417, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$417, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$418	.dwtag  DW_TAG_member
	.dwattr $C$DW$418, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$418, DW_AT_name("IPC26")
	.dwattr $C$DW$418, DW_AT_TI_symbol_name("_IPC26")
	.dwattr $C$DW$418, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$418, DW_AT_bit_size(0x01)
	.dwattr $C$DW$418, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$418, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$419	.dwtag  DW_TAG_member
	.dwattr $C$DW$419, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$419, DW_AT_name("IPC27")
	.dwattr $C$DW$419, DW_AT_TI_symbol_name("_IPC27")
	.dwattr $C$DW$419, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$419, DW_AT_bit_size(0x01)
	.dwattr $C$DW$419, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$419, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$420	.dwtag  DW_TAG_member
	.dwattr $C$DW$420, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$420, DW_AT_name("IPC28")
	.dwattr $C$DW$420, DW_AT_TI_symbol_name("_IPC28")
	.dwattr $C$DW$420, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$420, DW_AT_bit_size(0x01)
	.dwattr $C$DW$420, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$420, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$421	.dwtag  DW_TAG_member
	.dwattr $C$DW$421, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$421, DW_AT_name("IPC29")
	.dwattr $C$DW$421, DW_AT_TI_symbol_name("_IPC29")
	.dwattr $C$DW$421, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$421, DW_AT_bit_size(0x01)
	.dwattr $C$DW$421, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$421, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$422	.dwtag  DW_TAG_member
	.dwattr $C$DW$422, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$422, DW_AT_name("IPC30")
	.dwattr $C$DW$422, DW_AT_TI_symbol_name("_IPC30")
	.dwattr $C$DW$422, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$422, DW_AT_bit_size(0x01)
	.dwattr $C$DW$422, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$422, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$423	.dwtag  DW_TAG_member
	.dwattr $C$DW$423, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$423, DW_AT_name("IPC31")
	.dwattr $C$DW$423, DW_AT_TI_symbol_name("_IPC31")
	.dwattr $C$DW$423, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$423, DW_AT_bit_size(0x01)
	.dwattr $C$DW$423, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$423, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$53


$C$DW$T$54	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$54, DW_AT_name("IPCACK_REG")
	.dwattr $C$DW$T$54, DW_AT_byte_size(0x02)
$C$DW$424	.dwtag  DW_TAG_member
	.dwattr $C$DW$424, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$424, DW_AT_name("all")
	.dwattr $C$DW$424, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$424, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$424, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$425	.dwtag  DW_TAG_member
	.dwattr $C$DW$425, DW_AT_type(*$C$DW$T$53)
	.dwattr $C$DW$425, DW_AT_name("bit")
	.dwattr $C$DW$425, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$425, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$425, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$54


$C$DW$T$55	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$55, DW_AT_name("IPCCLR_BITS")
	.dwattr $C$DW$T$55, DW_AT_byte_size(0x02)
$C$DW$426	.dwtag  DW_TAG_member
	.dwattr $C$DW$426, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$426, DW_AT_name("IPC0")
	.dwattr $C$DW$426, DW_AT_TI_symbol_name("_IPC0")
	.dwattr $C$DW$426, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$426, DW_AT_bit_size(0x01)
	.dwattr $C$DW$426, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$426, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$427	.dwtag  DW_TAG_member
	.dwattr $C$DW$427, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$427, DW_AT_name("IPC1")
	.dwattr $C$DW$427, DW_AT_TI_symbol_name("_IPC1")
	.dwattr $C$DW$427, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$427, DW_AT_bit_size(0x01)
	.dwattr $C$DW$427, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$427, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$428	.dwtag  DW_TAG_member
	.dwattr $C$DW$428, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$428, DW_AT_name("IPC2")
	.dwattr $C$DW$428, DW_AT_TI_symbol_name("_IPC2")
	.dwattr $C$DW$428, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$428, DW_AT_bit_size(0x01)
	.dwattr $C$DW$428, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$428, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$429	.dwtag  DW_TAG_member
	.dwattr $C$DW$429, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$429, DW_AT_name("IPC3")
	.dwattr $C$DW$429, DW_AT_TI_symbol_name("_IPC3")
	.dwattr $C$DW$429, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$429, DW_AT_bit_size(0x01)
	.dwattr $C$DW$429, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$429, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$430	.dwtag  DW_TAG_member
	.dwattr $C$DW$430, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$430, DW_AT_name("IPC4")
	.dwattr $C$DW$430, DW_AT_TI_symbol_name("_IPC4")
	.dwattr $C$DW$430, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$430, DW_AT_bit_size(0x01)
	.dwattr $C$DW$430, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$430, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$431	.dwtag  DW_TAG_member
	.dwattr $C$DW$431, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$431, DW_AT_name("IPC5")
	.dwattr $C$DW$431, DW_AT_TI_symbol_name("_IPC5")
	.dwattr $C$DW$431, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$431, DW_AT_bit_size(0x01)
	.dwattr $C$DW$431, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$431, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$432	.dwtag  DW_TAG_member
	.dwattr $C$DW$432, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$432, DW_AT_name("IPC6")
	.dwattr $C$DW$432, DW_AT_TI_symbol_name("_IPC6")
	.dwattr $C$DW$432, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$432, DW_AT_bit_size(0x01)
	.dwattr $C$DW$432, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$432, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$433	.dwtag  DW_TAG_member
	.dwattr $C$DW$433, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$433, DW_AT_name("IPC7")
	.dwattr $C$DW$433, DW_AT_TI_symbol_name("_IPC7")
	.dwattr $C$DW$433, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$433, DW_AT_bit_size(0x01)
	.dwattr $C$DW$433, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$433, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$434	.dwtag  DW_TAG_member
	.dwattr $C$DW$434, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$434, DW_AT_name("IPC8")
	.dwattr $C$DW$434, DW_AT_TI_symbol_name("_IPC8")
	.dwattr $C$DW$434, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$434, DW_AT_bit_size(0x01)
	.dwattr $C$DW$434, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$434, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$435	.dwtag  DW_TAG_member
	.dwattr $C$DW$435, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$435, DW_AT_name("IPC9")
	.dwattr $C$DW$435, DW_AT_TI_symbol_name("_IPC9")
	.dwattr $C$DW$435, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$435, DW_AT_bit_size(0x01)
	.dwattr $C$DW$435, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$435, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$436	.dwtag  DW_TAG_member
	.dwattr $C$DW$436, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$436, DW_AT_name("IPC10")
	.dwattr $C$DW$436, DW_AT_TI_symbol_name("_IPC10")
	.dwattr $C$DW$436, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$436, DW_AT_bit_size(0x01)
	.dwattr $C$DW$436, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$436, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$437	.dwtag  DW_TAG_member
	.dwattr $C$DW$437, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$437, DW_AT_name("IPC11")
	.dwattr $C$DW$437, DW_AT_TI_symbol_name("_IPC11")
	.dwattr $C$DW$437, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$437, DW_AT_bit_size(0x01)
	.dwattr $C$DW$437, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$437, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$438	.dwtag  DW_TAG_member
	.dwattr $C$DW$438, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$438, DW_AT_name("IPC12")
	.dwattr $C$DW$438, DW_AT_TI_symbol_name("_IPC12")
	.dwattr $C$DW$438, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$438, DW_AT_bit_size(0x01)
	.dwattr $C$DW$438, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$438, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$439	.dwtag  DW_TAG_member
	.dwattr $C$DW$439, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$439, DW_AT_name("IPC13")
	.dwattr $C$DW$439, DW_AT_TI_symbol_name("_IPC13")
	.dwattr $C$DW$439, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$439, DW_AT_bit_size(0x01)
	.dwattr $C$DW$439, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$439, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$440	.dwtag  DW_TAG_member
	.dwattr $C$DW$440, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$440, DW_AT_name("IPC14")
	.dwattr $C$DW$440, DW_AT_TI_symbol_name("_IPC14")
	.dwattr $C$DW$440, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$440, DW_AT_bit_size(0x01)
	.dwattr $C$DW$440, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$440, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$441	.dwtag  DW_TAG_member
	.dwattr $C$DW$441, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$441, DW_AT_name("IPC15")
	.dwattr $C$DW$441, DW_AT_TI_symbol_name("_IPC15")
	.dwattr $C$DW$441, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$441, DW_AT_bit_size(0x01)
	.dwattr $C$DW$441, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$441, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$442	.dwtag  DW_TAG_member
	.dwattr $C$DW$442, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$442, DW_AT_name("IPC16")
	.dwattr $C$DW$442, DW_AT_TI_symbol_name("_IPC16")
	.dwattr $C$DW$442, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$442, DW_AT_bit_size(0x01)
	.dwattr $C$DW$442, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$442, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$443	.dwtag  DW_TAG_member
	.dwattr $C$DW$443, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$443, DW_AT_name("IPC17")
	.dwattr $C$DW$443, DW_AT_TI_symbol_name("_IPC17")
	.dwattr $C$DW$443, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$443, DW_AT_bit_size(0x01)
	.dwattr $C$DW$443, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$443, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$444	.dwtag  DW_TAG_member
	.dwattr $C$DW$444, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$444, DW_AT_name("IPC18")
	.dwattr $C$DW$444, DW_AT_TI_symbol_name("_IPC18")
	.dwattr $C$DW$444, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$444, DW_AT_bit_size(0x01)
	.dwattr $C$DW$444, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$444, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$445	.dwtag  DW_TAG_member
	.dwattr $C$DW$445, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$445, DW_AT_name("IPC19")
	.dwattr $C$DW$445, DW_AT_TI_symbol_name("_IPC19")
	.dwattr $C$DW$445, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$445, DW_AT_bit_size(0x01)
	.dwattr $C$DW$445, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$445, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$446	.dwtag  DW_TAG_member
	.dwattr $C$DW$446, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$446, DW_AT_name("IPC20")
	.dwattr $C$DW$446, DW_AT_TI_symbol_name("_IPC20")
	.dwattr $C$DW$446, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$446, DW_AT_bit_size(0x01)
	.dwattr $C$DW$446, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$446, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$447	.dwtag  DW_TAG_member
	.dwattr $C$DW$447, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$447, DW_AT_name("IPC21")
	.dwattr $C$DW$447, DW_AT_TI_symbol_name("_IPC21")
	.dwattr $C$DW$447, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$447, DW_AT_bit_size(0x01)
	.dwattr $C$DW$447, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$447, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$448	.dwtag  DW_TAG_member
	.dwattr $C$DW$448, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$448, DW_AT_name("IPC22")
	.dwattr $C$DW$448, DW_AT_TI_symbol_name("_IPC22")
	.dwattr $C$DW$448, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$448, DW_AT_bit_size(0x01)
	.dwattr $C$DW$448, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$448, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$449	.dwtag  DW_TAG_member
	.dwattr $C$DW$449, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$449, DW_AT_name("IPC23")
	.dwattr $C$DW$449, DW_AT_TI_symbol_name("_IPC23")
	.dwattr $C$DW$449, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$449, DW_AT_bit_size(0x01)
	.dwattr $C$DW$449, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$449, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$450	.dwtag  DW_TAG_member
	.dwattr $C$DW$450, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$450, DW_AT_name("IPC24")
	.dwattr $C$DW$450, DW_AT_TI_symbol_name("_IPC24")
	.dwattr $C$DW$450, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$450, DW_AT_bit_size(0x01)
	.dwattr $C$DW$450, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$450, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$451	.dwtag  DW_TAG_member
	.dwattr $C$DW$451, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$451, DW_AT_name("IPC25")
	.dwattr $C$DW$451, DW_AT_TI_symbol_name("_IPC25")
	.dwattr $C$DW$451, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$451, DW_AT_bit_size(0x01)
	.dwattr $C$DW$451, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$451, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$452	.dwtag  DW_TAG_member
	.dwattr $C$DW$452, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$452, DW_AT_name("IPC26")
	.dwattr $C$DW$452, DW_AT_TI_symbol_name("_IPC26")
	.dwattr $C$DW$452, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$452, DW_AT_bit_size(0x01)
	.dwattr $C$DW$452, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$452, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$453	.dwtag  DW_TAG_member
	.dwattr $C$DW$453, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$453, DW_AT_name("IPC27")
	.dwattr $C$DW$453, DW_AT_TI_symbol_name("_IPC27")
	.dwattr $C$DW$453, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$453, DW_AT_bit_size(0x01)
	.dwattr $C$DW$453, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$453, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$454	.dwtag  DW_TAG_member
	.dwattr $C$DW$454, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$454, DW_AT_name("IPC28")
	.dwattr $C$DW$454, DW_AT_TI_symbol_name("_IPC28")
	.dwattr $C$DW$454, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$454, DW_AT_bit_size(0x01)
	.dwattr $C$DW$454, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$454, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$455	.dwtag  DW_TAG_member
	.dwattr $C$DW$455, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$455, DW_AT_name("IPC29")
	.dwattr $C$DW$455, DW_AT_TI_symbol_name("_IPC29")
	.dwattr $C$DW$455, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$455, DW_AT_bit_size(0x01)
	.dwattr $C$DW$455, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$455, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$456	.dwtag  DW_TAG_member
	.dwattr $C$DW$456, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$456, DW_AT_name("IPC30")
	.dwattr $C$DW$456, DW_AT_TI_symbol_name("_IPC30")
	.dwattr $C$DW$456, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$456, DW_AT_bit_size(0x01)
	.dwattr $C$DW$456, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$456, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$457	.dwtag  DW_TAG_member
	.dwattr $C$DW$457, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$457, DW_AT_name("IPC31")
	.dwattr $C$DW$457, DW_AT_TI_symbol_name("_IPC31")
	.dwattr $C$DW$457, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$457, DW_AT_bit_size(0x01)
	.dwattr $C$DW$457, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$457, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$55


$C$DW$T$56	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$56, DW_AT_name("IPCCLR_REG")
	.dwattr $C$DW$T$56, DW_AT_byte_size(0x02)
$C$DW$458	.dwtag  DW_TAG_member
	.dwattr $C$DW$458, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$458, DW_AT_name("all")
	.dwattr $C$DW$458, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$458, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$458, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$459	.dwtag  DW_TAG_member
	.dwattr $C$DW$459, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$459, DW_AT_name("bit")
	.dwattr $C$DW$459, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$459, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$459, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$56


$C$DW$T$57	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$57, DW_AT_name("IPCFLG_BITS")
	.dwattr $C$DW$T$57, DW_AT_byte_size(0x02)
$C$DW$460	.dwtag  DW_TAG_member
	.dwattr $C$DW$460, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$460, DW_AT_name("IPC0")
	.dwattr $C$DW$460, DW_AT_TI_symbol_name("_IPC0")
	.dwattr $C$DW$460, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$460, DW_AT_bit_size(0x01)
	.dwattr $C$DW$460, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$460, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$461	.dwtag  DW_TAG_member
	.dwattr $C$DW$461, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$461, DW_AT_name("IPC1")
	.dwattr $C$DW$461, DW_AT_TI_symbol_name("_IPC1")
	.dwattr $C$DW$461, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$461, DW_AT_bit_size(0x01)
	.dwattr $C$DW$461, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$461, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$462	.dwtag  DW_TAG_member
	.dwattr $C$DW$462, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$462, DW_AT_name("IPC2")
	.dwattr $C$DW$462, DW_AT_TI_symbol_name("_IPC2")
	.dwattr $C$DW$462, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$462, DW_AT_bit_size(0x01)
	.dwattr $C$DW$462, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$462, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$463	.dwtag  DW_TAG_member
	.dwattr $C$DW$463, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$463, DW_AT_name("IPC3")
	.dwattr $C$DW$463, DW_AT_TI_symbol_name("_IPC3")
	.dwattr $C$DW$463, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$463, DW_AT_bit_size(0x01)
	.dwattr $C$DW$463, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$463, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$464	.dwtag  DW_TAG_member
	.dwattr $C$DW$464, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$464, DW_AT_name("IPC4")
	.dwattr $C$DW$464, DW_AT_TI_symbol_name("_IPC4")
	.dwattr $C$DW$464, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$464, DW_AT_bit_size(0x01)
	.dwattr $C$DW$464, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$464, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$465	.dwtag  DW_TAG_member
	.dwattr $C$DW$465, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$465, DW_AT_name("IPC5")
	.dwattr $C$DW$465, DW_AT_TI_symbol_name("_IPC5")
	.dwattr $C$DW$465, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$465, DW_AT_bit_size(0x01)
	.dwattr $C$DW$465, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$465, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$466	.dwtag  DW_TAG_member
	.dwattr $C$DW$466, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$466, DW_AT_name("IPC6")
	.dwattr $C$DW$466, DW_AT_TI_symbol_name("_IPC6")
	.dwattr $C$DW$466, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$466, DW_AT_bit_size(0x01)
	.dwattr $C$DW$466, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$466, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$467	.dwtag  DW_TAG_member
	.dwattr $C$DW$467, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$467, DW_AT_name("IPC7")
	.dwattr $C$DW$467, DW_AT_TI_symbol_name("_IPC7")
	.dwattr $C$DW$467, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$467, DW_AT_bit_size(0x01)
	.dwattr $C$DW$467, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$467, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$468	.dwtag  DW_TAG_member
	.dwattr $C$DW$468, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$468, DW_AT_name("IPC8")
	.dwattr $C$DW$468, DW_AT_TI_symbol_name("_IPC8")
	.dwattr $C$DW$468, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$468, DW_AT_bit_size(0x01)
	.dwattr $C$DW$468, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$468, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$469	.dwtag  DW_TAG_member
	.dwattr $C$DW$469, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$469, DW_AT_name("IPC9")
	.dwattr $C$DW$469, DW_AT_TI_symbol_name("_IPC9")
	.dwattr $C$DW$469, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$469, DW_AT_bit_size(0x01)
	.dwattr $C$DW$469, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$469, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$470	.dwtag  DW_TAG_member
	.dwattr $C$DW$470, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$470, DW_AT_name("IPC10")
	.dwattr $C$DW$470, DW_AT_TI_symbol_name("_IPC10")
	.dwattr $C$DW$470, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$470, DW_AT_bit_size(0x01)
	.dwattr $C$DW$470, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$470, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$471	.dwtag  DW_TAG_member
	.dwattr $C$DW$471, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$471, DW_AT_name("IPC11")
	.dwattr $C$DW$471, DW_AT_TI_symbol_name("_IPC11")
	.dwattr $C$DW$471, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$471, DW_AT_bit_size(0x01)
	.dwattr $C$DW$471, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$471, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$472	.dwtag  DW_TAG_member
	.dwattr $C$DW$472, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$472, DW_AT_name("IPC12")
	.dwattr $C$DW$472, DW_AT_TI_symbol_name("_IPC12")
	.dwattr $C$DW$472, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$472, DW_AT_bit_size(0x01)
	.dwattr $C$DW$472, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$472, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$473	.dwtag  DW_TAG_member
	.dwattr $C$DW$473, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$473, DW_AT_name("IPC13")
	.dwattr $C$DW$473, DW_AT_TI_symbol_name("_IPC13")
	.dwattr $C$DW$473, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$473, DW_AT_bit_size(0x01)
	.dwattr $C$DW$473, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$473, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$474	.dwtag  DW_TAG_member
	.dwattr $C$DW$474, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$474, DW_AT_name("IPC14")
	.dwattr $C$DW$474, DW_AT_TI_symbol_name("_IPC14")
	.dwattr $C$DW$474, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$474, DW_AT_bit_size(0x01)
	.dwattr $C$DW$474, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$474, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$475	.dwtag  DW_TAG_member
	.dwattr $C$DW$475, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$475, DW_AT_name("IPC15")
	.dwattr $C$DW$475, DW_AT_TI_symbol_name("_IPC15")
	.dwattr $C$DW$475, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$475, DW_AT_bit_size(0x01)
	.dwattr $C$DW$475, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$475, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$476	.dwtag  DW_TAG_member
	.dwattr $C$DW$476, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$476, DW_AT_name("IPC16")
	.dwattr $C$DW$476, DW_AT_TI_symbol_name("_IPC16")
	.dwattr $C$DW$476, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$476, DW_AT_bit_size(0x01)
	.dwattr $C$DW$476, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$476, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$477	.dwtag  DW_TAG_member
	.dwattr $C$DW$477, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$477, DW_AT_name("IPC17")
	.dwattr $C$DW$477, DW_AT_TI_symbol_name("_IPC17")
	.dwattr $C$DW$477, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$477, DW_AT_bit_size(0x01)
	.dwattr $C$DW$477, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$477, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$478	.dwtag  DW_TAG_member
	.dwattr $C$DW$478, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$478, DW_AT_name("IPC18")
	.dwattr $C$DW$478, DW_AT_TI_symbol_name("_IPC18")
	.dwattr $C$DW$478, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$478, DW_AT_bit_size(0x01)
	.dwattr $C$DW$478, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$478, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$479	.dwtag  DW_TAG_member
	.dwattr $C$DW$479, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$479, DW_AT_name("IPC19")
	.dwattr $C$DW$479, DW_AT_TI_symbol_name("_IPC19")
	.dwattr $C$DW$479, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$479, DW_AT_bit_size(0x01)
	.dwattr $C$DW$479, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$479, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$480	.dwtag  DW_TAG_member
	.dwattr $C$DW$480, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$480, DW_AT_name("IPC20")
	.dwattr $C$DW$480, DW_AT_TI_symbol_name("_IPC20")
	.dwattr $C$DW$480, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$480, DW_AT_bit_size(0x01)
	.dwattr $C$DW$480, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$480, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$481	.dwtag  DW_TAG_member
	.dwattr $C$DW$481, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$481, DW_AT_name("IPC21")
	.dwattr $C$DW$481, DW_AT_TI_symbol_name("_IPC21")
	.dwattr $C$DW$481, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$481, DW_AT_bit_size(0x01)
	.dwattr $C$DW$481, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$481, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$482	.dwtag  DW_TAG_member
	.dwattr $C$DW$482, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$482, DW_AT_name("IPC22")
	.dwattr $C$DW$482, DW_AT_TI_symbol_name("_IPC22")
	.dwattr $C$DW$482, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$482, DW_AT_bit_size(0x01)
	.dwattr $C$DW$482, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$482, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$483	.dwtag  DW_TAG_member
	.dwattr $C$DW$483, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$483, DW_AT_name("IPC23")
	.dwattr $C$DW$483, DW_AT_TI_symbol_name("_IPC23")
	.dwattr $C$DW$483, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$483, DW_AT_bit_size(0x01)
	.dwattr $C$DW$483, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$483, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$484	.dwtag  DW_TAG_member
	.dwattr $C$DW$484, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$484, DW_AT_name("IPC24")
	.dwattr $C$DW$484, DW_AT_TI_symbol_name("_IPC24")
	.dwattr $C$DW$484, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$484, DW_AT_bit_size(0x01)
	.dwattr $C$DW$484, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$484, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$485	.dwtag  DW_TAG_member
	.dwattr $C$DW$485, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$485, DW_AT_name("IPC25")
	.dwattr $C$DW$485, DW_AT_TI_symbol_name("_IPC25")
	.dwattr $C$DW$485, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$485, DW_AT_bit_size(0x01)
	.dwattr $C$DW$485, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$485, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$486	.dwtag  DW_TAG_member
	.dwattr $C$DW$486, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$486, DW_AT_name("IPC26")
	.dwattr $C$DW$486, DW_AT_TI_symbol_name("_IPC26")
	.dwattr $C$DW$486, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$486, DW_AT_bit_size(0x01)
	.dwattr $C$DW$486, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$486, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$487	.dwtag  DW_TAG_member
	.dwattr $C$DW$487, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$487, DW_AT_name("IPC27")
	.dwattr $C$DW$487, DW_AT_TI_symbol_name("_IPC27")
	.dwattr $C$DW$487, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$487, DW_AT_bit_size(0x01)
	.dwattr $C$DW$487, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$487, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$488	.dwtag  DW_TAG_member
	.dwattr $C$DW$488, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$488, DW_AT_name("IPC28")
	.dwattr $C$DW$488, DW_AT_TI_symbol_name("_IPC28")
	.dwattr $C$DW$488, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$488, DW_AT_bit_size(0x01)
	.dwattr $C$DW$488, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$488, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$489	.dwtag  DW_TAG_member
	.dwattr $C$DW$489, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$489, DW_AT_name("IPC29")
	.dwattr $C$DW$489, DW_AT_TI_symbol_name("_IPC29")
	.dwattr $C$DW$489, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$489, DW_AT_bit_size(0x01)
	.dwattr $C$DW$489, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$489, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$490	.dwtag  DW_TAG_member
	.dwattr $C$DW$490, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$490, DW_AT_name("IPC30")
	.dwattr $C$DW$490, DW_AT_TI_symbol_name("_IPC30")
	.dwattr $C$DW$490, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$490, DW_AT_bit_size(0x01)
	.dwattr $C$DW$490, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$490, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$491	.dwtag  DW_TAG_member
	.dwattr $C$DW$491, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$491, DW_AT_name("IPC31")
	.dwattr $C$DW$491, DW_AT_TI_symbol_name("_IPC31")
	.dwattr $C$DW$491, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$491, DW_AT_bit_size(0x01)
	.dwattr $C$DW$491, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$491, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$57


$C$DW$T$58	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$58, DW_AT_name("IPCFLG_REG")
	.dwattr $C$DW$T$58, DW_AT_byte_size(0x02)
$C$DW$492	.dwtag  DW_TAG_member
	.dwattr $C$DW$492, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$492, DW_AT_name("all")
	.dwattr $C$DW$492, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$492, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$492, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$493	.dwtag  DW_TAG_member
	.dwattr $C$DW$493, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$493, DW_AT_name("bit")
	.dwattr $C$DW$493, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$493, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$493, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$58


$C$DW$T$59	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$59, DW_AT_name("IPCSET_BITS")
	.dwattr $C$DW$T$59, DW_AT_byte_size(0x02)
$C$DW$494	.dwtag  DW_TAG_member
	.dwattr $C$DW$494, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$494, DW_AT_name("IPC0")
	.dwattr $C$DW$494, DW_AT_TI_symbol_name("_IPC0")
	.dwattr $C$DW$494, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$494, DW_AT_bit_size(0x01)
	.dwattr $C$DW$494, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$494, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$495	.dwtag  DW_TAG_member
	.dwattr $C$DW$495, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$495, DW_AT_name("IPC1")
	.dwattr $C$DW$495, DW_AT_TI_symbol_name("_IPC1")
	.dwattr $C$DW$495, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$495, DW_AT_bit_size(0x01)
	.dwattr $C$DW$495, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$495, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$496	.dwtag  DW_TAG_member
	.dwattr $C$DW$496, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$496, DW_AT_name("IPC2")
	.dwattr $C$DW$496, DW_AT_TI_symbol_name("_IPC2")
	.dwattr $C$DW$496, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$496, DW_AT_bit_size(0x01)
	.dwattr $C$DW$496, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$496, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$497	.dwtag  DW_TAG_member
	.dwattr $C$DW$497, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$497, DW_AT_name("IPC3")
	.dwattr $C$DW$497, DW_AT_TI_symbol_name("_IPC3")
	.dwattr $C$DW$497, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$497, DW_AT_bit_size(0x01)
	.dwattr $C$DW$497, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$497, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$498	.dwtag  DW_TAG_member
	.dwattr $C$DW$498, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$498, DW_AT_name("IPC4")
	.dwattr $C$DW$498, DW_AT_TI_symbol_name("_IPC4")
	.dwattr $C$DW$498, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$498, DW_AT_bit_size(0x01)
	.dwattr $C$DW$498, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$498, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$499	.dwtag  DW_TAG_member
	.dwattr $C$DW$499, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$499, DW_AT_name("IPC5")
	.dwattr $C$DW$499, DW_AT_TI_symbol_name("_IPC5")
	.dwattr $C$DW$499, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$499, DW_AT_bit_size(0x01)
	.dwattr $C$DW$499, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$499, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$500	.dwtag  DW_TAG_member
	.dwattr $C$DW$500, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$500, DW_AT_name("IPC6")
	.dwattr $C$DW$500, DW_AT_TI_symbol_name("_IPC6")
	.dwattr $C$DW$500, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$500, DW_AT_bit_size(0x01)
	.dwattr $C$DW$500, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$500, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$501	.dwtag  DW_TAG_member
	.dwattr $C$DW$501, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$501, DW_AT_name("IPC7")
	.dwattr $C$DW$501, DW_AT_TI_symbol_name("_IPC7")
	.dwattr $C$DW$501, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$501, DW_AT_bit_size(0x01)
	.dwattr $C$DW$501, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$501, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$502	.dwtag  DW_TAG_member
	.dwattr $C$DW$502, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$502, DW_AT_name("IPC8")
	.dwattr $C$DW$502, DW_AT_TI_symbol_name("_IPC8")
	.dwattr $C$DW$502, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$502, DW_AT_bit_size(0x01)
	.dwattr $C$DW$502, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$502, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$503	.dwtag  DW_TAG_member
	.dwattr $C$DW$503, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$503, DW_AT_name("IPC9")
	.dwattr $C$DW$503, DW_AT_TI_symbol_name("_IPC9")
	.dwattr $C$DW$503, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$503, DW_AT_bit_size(0x01)
	.dwattr $C$DW$503, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$503, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$504	.dwtag  DW_TAG_member
	.dwattr $C$DW$504, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$504, DW_AT_name("IPC10")
	.dwattr $C$DW$504, DW_AT_TI_symbol_name("_IPC10")
	.dwattr $C$DW$504, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$504, DW_AT_bit_size(0x01)
	.dwattr $C$DW$504, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$504, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$505	.dwtag  DW_TAG_member
	.dwattr $C$DW$505, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$505, DW_AT_name("IPC11")
	.dwattr $C$DW$505, DW_AT_TI_symbol_name("_IPC11")
	.dwattr $C$DW$505, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$505, DW_AT_bit_size(0x01)
	.dwattr $C$DW$505, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$505, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$506	.dwtag  DW_TAG_member
	.dwattr $C$DW$506, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$506, DW_AT_name("IPC12")
	.dwattr $C$DW$506, DW_AT_TI_symbol_name("_IPC12")
	.dwattr $C$DW$506, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$506, DW_AT_bit_size(0x01)
	.dwattr $C$DW$506, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$506, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$507	.dwtag  DW_TAG_member
	.dwattr $C$DW$507, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$507, DW_AT_name("IPC13")
	.dwattr $C$DW$507, DW_AT_TI_symbol_name("_IPC13")
	.dwattr $C$DW$507, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$507, DW_AT_bit_size(0x01)
	.dwattr $C$DW$507, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$507, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$508	.dwtag  DW_TAG_member
	.dwattr $C$DW$508, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$508, DW_AT_name("IPC14")
	.dwattr $C$DW$508, DW_AT_TI_symbol_name("_IPC14")
	.dwattr $C$DW$508, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$508, DW_AT_bit_size(0x01)
	.dwattr $C$DW$508, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$508, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$509	.dwtag  DW_TAG_member
	.dwattr $C$DW$509, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$509, DW_AT_name("IPC15")
	.dwattr $C$DW$509, DW_AT_TI_symbol_name("_IPC15")
	.dwattr $C$DW$509, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$509, DW_AT_bit_size(0x01)
	.dwattr $C$DW$509, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$509, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$510	.dwtag  DW_TAG_member
	.dwattr $C$DW$510, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$510, DW_AT_name("IPC16")
	.dwattr $C$DW$510, DW_AT_TI_symbol_name("_IPC16")
	.dwattr $C$DW$510, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$510, DW_AT_bit_size(0x01)
	.dwattr $C$DW$510, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$510, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$511	.dwtag  DW_TAG_member
	.dwattr $C$DW$511, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$511, DW_AT_name("IPC17")
	.dwattr $C$DW$511, DW_AT_TI_symbol_name("_IPC17")
	.dwattr $C$DW$511, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$511, DW_AT_bit_size(0x01)
	.dwattr $C$DW$511, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$511, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$512	.dwtag  DW_TAG_member
	.dwattr $C$DW$512, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$512, DW_AT_name("IPC18")
	.dwattr $C$DW$512, DW_AT_TI_symbol_name("_IPC18")
	.dwattr $C$DW$512, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$512, DW_AT_bit_size(0x01)
	.dwattr $C$DW$512, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$512, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$513	.dwtag  DW_TAG_member
	.dwattr $C$DW$513, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$513, DW_AT_name("IPC19")
	.dwattr $C$DW$513, DW_AT_TI_symbol_name("_IPC19")
	.dwattr $C$DW$513, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$513, DW_AT_bit_size(0x01)
	.dwattr $C$DW$513, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$513, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$514	.dwtag  DW_TAG_member
	.dwattr $C$DW$514, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$514, DW_AT_name("IPC20")
	.dwattr $C$DW$514, DW_AT_TI_symbol_name("_IPC20")
	.dwattr $C$DW$514, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$514, DW_AT_bit_size(0x01)
	.dwattr $C$DW$514, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$514, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$515	.dwtag  DW_TAG_member
	.dwattr $C$DW$515, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$515, DW_AT_name("IPC21")
	.dwattr $C$DW$515, DW_AT_TI_symbol_name("_IPC21")
	.dwattr $C$DW$515, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$515, DW_AT_bit_size(0x01)
	.dwattr $C$DW$515, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$515, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$516	.dwtag  DW_TAG_member
	.dwattr $C$DW$516, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$516, DW_AT_name("IPC22")
	.dwattr $C$DW$516, DW_AT_TI_symbol_name("_IPC22")
	.dwattr $C$DW$516, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$516, DW_AT_bit_size(0x01)
	.dwattr $C$DW$516, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$516, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$517	.dwtag  DW_TAG_member
	.dwattr $C$DW$517, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$517, DW_AT_name("IPC23")
	.dwattr $C$DW$517, DW_AT_TI_symbol_name("_IPC23")
	.dwattr $C$DW$517, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$517, DW_AT_bit_size(0x01)
	.dwattr $C$DW$517, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$517, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$518	.dwtag  DW_TAG_member
	.dwattr $C$DW$518, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$518, DW_AT_name("IPC24")
	.dwattr $C$DW$518, DW_AT_TI_symbol_name("_IPC24")
	.dwattr $C$DW$518, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$518, DW_AT_bit_size(0x01)
	.dwattr $C$DW$518, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$518, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$519	.dwtag  DW_TAG_member
	.dwattr $C$DW$519, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$519, DW_AT_name("IPC25")
	.dwattr $C$DW$519, DW_AT_TI_symbol_name("_IPC25")
	.dwattr $C$DW$519, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$519, DW_AT_bit_size(0x01)
	.dwattr $C$DW$519, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$519, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$520	.dwtag  DW_TAG_member
	.dwattr $C$DW$520, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$520, DW_AT_name("IPC26")
	.dwattr $C$DW$520, DW_AT_TI_symbol_name("_IPC26")
	.dwattr $C$DW$520, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$520, DW_AT_bit_size(0x01)
	.dwattr $C$DW$520, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$520, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$521	.dwtag  DW_TAG_member
	.dwattr $C$DW$521, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$521, DW_AT_name("IPC27")
	.dwattr $C$DW$521, DW_AT_TI_symbol_name("_IPC27")
	.dwattr $C$DW$521, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$521, DW_AT_bit_size(0x01)
	.dwattr $C$DW$521, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$521, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$522	.dwtag  DW_TAG_member
	.dwattr $C$DW$522, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$522, DW_AT_name("IPC28")
	.dwattr $C$DW$522, DW_AT_TI_symbol_name("_IPC28")
	.dwattr $C$DW$522, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$522, DW_AT_bit_size(0x01)
	.dwattr $C$DW$522, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$522, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$523	.dwtag  DW_TAG_member
	.dwattr $C$DW$523, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$523, DW_AT_name("IPC29")
	.dwattr $C$DW$523, DW_AT_TI_symbol_name("_IPC29")
	.dwattr $C$DW$523, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$523, DW_AT_bit_size(0x01)
	.dwattr $C$DW$523, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$523, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$524	.dwtag  DW_TAG_member
	.dwattr $C$DW$524, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$524, DW_AT_name("IPC30")
	.dwattr $C$DW$524, DW_AT_TI_symbol_name("_IPC30")
	.dwattr $C$DW$524, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$524, DW_AT_bit_size(0x01)
	.dwattr $C$DW$524, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$524, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$525	.dwtag  DW_TAG_member
	.dwattr $C$DW$525, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$525, DW_AT_name("IPC31")
	.dwattr $C$DW$525, DW_AT_TI_symbol_name("_IPC31")
	.dwattr $C$DW$525, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$525, DW_AT_bit_size(0x01)
	.dwattr $C$DW$525, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$525, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$59


$C$DW$T$60	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$60, DW_AT_name("IPCSET_REG")
	.dwattr $C$DW$T$60, DW_AT_byte_size(0x02)
$C$DW$526	.dwtag  DW_TAG_member
	.dwattr $C$DW$526, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$526, DW_AT_name("all")
	.dwattr $C$DW$526, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$526, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$526, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$527	.dwtag  DW_TAG_member
	.dwattr $C$DW$527, DW_AT_type(*$C$DW$T$59)
	.dwattr $C$DW$527, DW_AT_name("bit")
	.dwattr $C$DW$527, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$527, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$527, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$60


$C$DW$T$61	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$61, DW_AT_name("IPCSTS_BITS")
	.dwattr $C$DW$T$61, DW_AT_byte_size(0x02)
$C$DW$528	.dwtag  DW_TAG_member
	.dwattr $C$DW$528, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$528, DW_AT_name("IPC0")
	.dwattr $C$DW$528, DW_AT_TI_symbol_name("_IPC0")
	.dwattr $C$DW$528, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$528, DW_AT_bit_size(0x01)
	.dwattr $C$DW$528, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$528, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$529	.dwtag  DW_TAG_member
	.dwattr $C$DW$529, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$529, DW_AT_name("IPC1")
	.dwattr $C$DW$529, DW_AT_TI_symbol_name("_IPC1")
	.dwattr $C$DW$529, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$529, DW_AT_bit_size(0x01)
	.dwattr $C$DW$529, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$529, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$530	.dwtag  DW_TAG_member
	.dwattr $C$DW$530, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$530, DW_AT_name("IPC2")
	.dwattr $C$DW$530, DW_AT_TI_symbol_name("_IPC2")
	.dwattr $C$DW$530, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$530, DW_AT_bit_size(0x01)
	.dwattr $C$DW$530, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$530, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$531	.dwtag  DW_TAG_member
	.dwattr $C$DW$531, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$531, DW_AT_name("IPC3")
	.dwattr $C$DW$531, DW_AT_TI_symbol_name("_IPC3")
	.dwattr $C$DW$531, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$531, DW_AT_bit_size(0x01)
	.dwattr $C$DW$531, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$531, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$532	.dwtag  DW_TAG_member
	.dwattr $C$DW$532, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$532, DW_AT_name("IPC4")
	.dwattr $C$DW$532, DW_AT_TI_symbol_name("_IPC4")
	.dwattr $C$DW$532, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$532, DW_AT_bit_size(0x01)
	.dwattr $C$DW$532, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$532, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$533	.dwtag  DW_TAG_member
	.dwattr $C$DW$533, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$533, DW_AT_name("IPC5")
	.dwattr $C$DW$533, DW_AT_TI_symbol_name("_IPC5")
	.dwattr $C$DW$533, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$533, DW_AT_bit_size(0x01)
	.dwattr $C$DW$533, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$533, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$534	.dwtag  DW_TAG_member
	.dwattr $C$DW$534, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$534, DW_AT_name("IPC6")
	.dwattr $C$DW$534, DW_AT_TI_symbol_name("_IPC6")
	.dwattr $C$DW$534, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$534, DW_AT_bit_size(0x01)
	.dwattr $C$DW$534, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$534, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$535	.dwtag  DW_TAG_member
	.dwattr $C$DW$535, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$535, DW_AT_name("IPC7")
	.dwattr $C$DW$535, DW_AT_TI_symbol_name("_IPC7")
	.dwattr $C$DW$535, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$535, DW_AT_bit_size(0x01)
	.dwattr $C$DW$535, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$535, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$536	.dwtag  DW_TAG_member
	.dwattr $C$DW$536, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$536, DW_AT_name("IPC8")
	.dwattr $C$DW$536, DW_AT_TI_symbol_name("_IPC8")
	.dwattr $C$DW$536, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$536, DW_AT_bit_size(0x01)
	.dwattr $C$DW$536, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$536, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$537	.dwtag  DW_TAG_member
	.dwattr $C$DW$537, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$537, DW_AT_name("IPC9")
	.dwattr $C$DW$537, DW_AT_TI_symbol_name("_IPC9")
	.dwattr $C$DW$537, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$537, DW_AT_bit_size(0x01)
	.dwattr $C$DW$537, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$537, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$538	.dwtag  DW_TAG_member
	.dwattr $C$DW$538, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$538, DW_AT_name("IPC10")
	.dwattr $C$DW$538, DW_AT_TI_symbol_name("_IPC10")
	.dwattr $C$DW$538, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$538, DW_AT_bit_size(0x01)
	.dwattr $C$DW$538, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$538, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$539	.dwtag  DW_TAG_member
	.dwattr $C$DW$539, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$539, DW_AT_name("IPC11")
	.dwattr $C$DW$539, DW_AT_TI_symbol_name("_IPC11")
	.dwattr $C$DW$539, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$539, DW_AT_bit_size(0x01)
	.dwattr $C$DW$539, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$539, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$540	.dwtag  DW_TAG_member
	.dwattr $C$DW$540, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$540, DW_AT_name("IPC12")
	.dwattr $C$DW$540, DW_AT_TI_symbol_name("_IPC12")
	.dwattr $C$DW$540, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$540, DW_AT_bit_size(0x01)
	.dwattr $C$DW$540, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$540, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$541	.dwtag  DW_TAG_member
	.dwattr $C$DW$541, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$541, DW_AT_name("IPC13")
	.dwattr $C$DW$541, DW_AT_TI_symbol_name("_IPC13")
	.dwattr $C$DW$541, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$541, DW_AT_bit_size(0x01)
	.dwattr $C$DW$541, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$541, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$542	.dwtag  DW_TAG_member
	.dwattr $C$DW$542, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$542, DW_AT_name("IPC14")
	.dwattr $C$DW$542, DW_AT_TI_symbol_name("_IPC14")
	.dwattr $C$DW$542, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$542, DW_AT_bit_size(0x01)
	.dwattr $C$DW$542, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$542, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$543	.dwtag  DW_TAG_member
	.dwattr $C$DW$543, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$543, DW_AT_name("IPC15")
	.dwattr $C$DW$543, DW_AT_TI_symbol_name("_IPC15")
	.dwattr $C$DW$543, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$543, DW_AT_bit_size(0x01)
	.dwattr $C$DW$543, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$543, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$544	.dwtag  DW_TAG_member
	.dwattr $C$DW$544, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$544, DW_AT_name("IPC16")
	.dwattr $C$DW$544, DW_AT_TI_symbol_name("_IPC16")
	.dwattr $C$DW$544, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$544, DW_AT_bit_size(0x01)
	.dwattr $C$DW$544, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$544, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$545	.dwtag  DW_TAG_member
	.dwattr $C$DW$545, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$545, DW_AT_name("IPC17")
	.dwattr $C$DW$545, DW_AT_TI_symbol_name("_IPC17")
	.dwattr $C$DW$545, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$545, DW_AT_bit_size(0x01)
	.dwattr $C$DW$545, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$545, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$546	.dwtag  DW_TAG_member
	.dwattr $C$DW$546, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$546, DW_AT_name("IPC18")
	.dwattr $C$DW$546, DW_AT_TI_symbol_name("_IPC18")
	.dwattr $C$DW$546, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$546, DW_AT_bit_size(0x01)
	.dwattr $C$DW$546, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$546, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$547	.dwtag  DW_TAG_member
	.dwattr $C$DW$547, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$547, DW_AT_name("IPC19")
	.dwattr $C$DW$547, DW_AT_TI_symbol_name("_IPC19")
	.dwattr $C$DW$547, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$547, DW_AT_bit_size(0x01)
	.dwattr $C$DW$547, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$547, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$548	.dwtag  DW_TAG_member
	.dwattr $C$DW$548, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$548, DW_AT_name("IPC20")
	.dwattr $C$DW$548, DW_AT_TI_symbol_name("_IPC20")
	.dwattr $C$DW$548, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$548, DW_AT_bit_size(0x01)
	.dwattr $C$DW$548, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$548, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$549	.dwtag  DW_TAG_member
	.dwattr $C$DW$549, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$549, DW_AT_name("IPC21")
	.dwattr $C$DW$549, DW_AT_TI_symbol_name("_IPC21")
	.dwattr $C$DW$549, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$549, DW_AT_bit_size(0x01)
	.dwattr $C$DW$549, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$549, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$550	.dwtag  DW_TAG_member
	.dwattr $C$DW$550, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$550, DW_AT_name("IPC22")
	.dwattr $C$DW$550, DW_AT_TI_symbol_name("_IPC22")
	.dwattr $C$DW$550, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$550, DW_AT_bit_size(0x01)
	.dwattr $C$DW$550, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$550, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$551	.dwtag  DW_TAG_member
	.dwattr $C$DW$551, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$551, DW_AT_name("IPC23")
	.dwattr $C$DW$551, DW_AT_TI_symbol_name("_IPC23")
	.dwattr $C$DW$551, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$551, DW_AT_bit_size(0x01)
	.dwattr $C$DW$551, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$551, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$552	.dwtag  DW_TAG_member
	.dwattr $C$DW$552, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$552, DW_AT_name("IPC24")
	.dwattr $C$DW$552, DW_AT_TI_symbol_name("_IPC24")
	.dwattr $C$DW$552, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$552, DW_AT_bit_size(0x01)
	.dwattr $C$DW$552, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$552, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$553	.dwtag  DW_TAG_member
	.dwattr $C$DW$553, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$553, DW_AT_name("IPC25")
	.dwattr $C$DW$553, DW_AT_TI_symbol_name("_IPC25")
	.dwattr $C$DW$553, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$553, DW_AT_bit_size(0x01)
	.dwattr $C$DW$553, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$553, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$554	.dwtag  DW_TAG_member
	.dwattr $C$DW$554, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$554, DW_AT_name("IPC26")
	.dwattr $C$DW$554, DW_AT_TI_symbol_name("_IPC26")
	.dwattr $C$DW$554, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$554, DW_AT_bit_size(0x01)
	.dwattr $C$DW$554, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$554, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$555	.dwtag  DW_TAG_member
	.dwattr $C$DW$555, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$555, DW_AT_name("IPC27")
	.dwattr $C$DW$555, DW_AT_TI_symbol_name("_IPC27")
	.dwattr $C$DW$555, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$555, DW_AT_bit_size(0x01)
	.dwattr $C$DW$555, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$555, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$556	.dwtag  DW_TAG_member
	.dwattr $C$DW$556, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$556, DW_AT_name("IPC28")
	.dwattr $C$DW$556, DW_AT_TI_symbol_name("_IPC28")
	.dwattr $C$DW$556, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$556, DW_AT_bit_size(0x01)
	.dwattr $C$DW$556, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$556, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$557	.dwtag  DW_TAG_member
	.dwattr $C$DW$557, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$557, DW_AT_name("IPC29")
	.dwattr $C$DW$557, DW_AT_TI_symbol_name("_IPC29")
	.dwattr $C$DW$557, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$557, DW_AT_bit_size(0x01)
	.dwattr $C$DW$557, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$557, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$558	.dwtag  DW_TAG_member
	.dwattr $C$DW$558, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$558, DW_AT_name("IPC30")
	.dwattr $C$DW$558, DW_AT_TI_symbol_name("_IPC30")
	.dwattr $C$DW$558, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$558, DW_AT_bit_size(0x01)
	.dwattr $C$DW$558, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$558, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$559	.dwtag  DW_TAG_member
	.dwattr $C$DW$559, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$559, DW_AT_name("IPC31")
	.dwattr $C$DW$559, DW_AT_TI_symbol_name("_IPC31")
	.dwattr $C$DW$559, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$559, DW_AT_bit_size(0x01)
	.dwattr $C$DW$559, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$559, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$61


$C$DW$T$62	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$62, DW_AT_name("IPCSTS_REG")
	.dwattr $C$DW$T$62, DW_AT_byte_size(0x02)
$C$DW$560	.dwtag  DW_TAG_member
	.dwattr $C$DW$560, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$560, DW_AT_name("all")
	.dwattr $C$DW$560, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$560, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$560, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$561	.dwtag  DW_TAG_member
	.dwattr $C$DW$561, DW_AT_type(*$C$DW$T$61)
	.dwattr $C$DW$561, DW_AT_name("bit")
	.dwattr $C$DW$561, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$561, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$561, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$62


$C$DW$T$64	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$64, DW_AT_name("IPC_REGS_CPU1")
	.dwattr $C$DW$T$64, DW_AT_byte_size(0x24)
$C$DW$562	.dwtag  DW_TAG_member
	.dwattr $C$DW$562, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$562, DW_AT_name("IPCACK")
	.dwattr $C$DW$562, DW_AT_TI_symbol_name("_IPCACK")
	.dwattr $C$DW$562, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$562, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$563	.dwtag  DW_TAG_member
	.dwattr $C$DW$563, DW_AT_type(*$C$DW$T$62)
	.dwattr $C$DW$563, DW_AT_name("IPCSTS")
	.dwattr $C$DW$563, DW_AT_TI_symbol_name("_IPCSTS")
	.dwattr $C$DW$563, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$563, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$564	.dwtag  DW_TAG_member
	.dwattr $C$DW$564, DW_AT_type(*$C$DW$T$60)
	.dwattr $C$DW$564, DW_AT_name("IPCSET")
	.dwattr $C$DW$564, DW_AT_TI_symbol_name("_IPCSET")
	.dwattr $C$DW$564, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$564, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$565	.dwtag  DW_TAG_member
	.dwattr $C$DW$565, DW_AT_type(*$C$DW$T$56)
	.dwattr $C$DW$565, DW_AT_name("IPCCLR")
	.dwattr $C$DW$565, DW_AT_TI_symbol_name("_IPCCLR")
	.dwattr $C$DW$565, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$565, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$566	.dwtag  DW_TAG_member
	.dwattr $C$DW$566, DW_AT_type(*$C$DW$T$58)
	.dwattr $C$DW$566, DW_AT_name("IPCFLG")
	.dwattr $C$DW$566, DW_AT_TI_symbol_name("_IPCFLG")
	.dwattr $C$DW$566, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$566, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$567	.dwtag  DW_TAG_member
	.dwattr $C$DW$567, DW_AT_type(*$C$DW$T$63)
	.dwattr $C$DW$567, DW_AT_name("rsvd1")
	.dwattr $C$DW$567, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$567, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$567, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$568	.dwtag  DW_TAG_member
	.dwattr $C$DW$568, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$568, DW_AT_name("IPCCOUNTERL")
	.dwattr $C$DW$568, DW_AT_TI_symbol_name("_IPCCOUNTERL")
	.dwattr $C$DW$568, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$568, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$569	.dwtag  DW_TAG_member
	.dwattr $C$DW$569, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$569, DW_AT_name("IPCCOUNTERH")
	.dwattr $C$DW$569, DW_AT_TI_symbol_name("_IPCCOUNTERH")
	.dwattr $C$DW$569, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$569, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$570	.dwtag  DW_TAG_member
	.dwattr $C$DW$570, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$570, DW_AT_name("IPCSENDCOM")
	.dwattr $C$DW$570, DW_AT_TI_symbol_name("_IPCSENDCOM")
	.dwattr $C$DW$570, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$570, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$571	.dwtag  DW_TAG_member
	.dwattr $C$DW$571, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$571, DW_AT_name("IPCSENDADDR")
	.dwattr $C$DW$571, DW_AT_TI_symbol_name("_IPCSENDADDR")
	.dwattr $C$DW$571, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr $C$DW$571, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$572	.dwtag  DW_TAG_member
	.dwattr $C$DW$572, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$572, DW_AT_name("IPCSENDDATA")
	.dwattr $C$DW$572, DW_AT_TI_symbol_name("_IPCSENDDATA")
	.dwattr $C$DW$572, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$572, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$573	.dwtag  DW_TAG_member
	.dwattr $C$DW$573, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$573, DW_AT_name("IPCREMOTEREPLY")
	.dwattr $C$DW$573, DW_AT_TI_symbol_name("_IPCREMOTEREPLY")
	.dwattr $C$DW$573, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr $C$DW$573, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$574	.dwtag  DW_TAG_member
	.dwattr $C$DW$574, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$574, DW_AT_name("IPCRECVCOM")
	.dwattr $C$DW$574, DW_AT_TI_symbol_name("_IPCRECVCOM")
	.dwattr $C$DW$574, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$574, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$575	.dwtag  DW_TAG_member
	.dwattr $C$DW$575, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$575, DW_AT_name("IPCRECVADDR")
	.dwattr $C$DW$575, DW_AT_TI_symbol_name("_IPCRECVADDR")
	.dwattr $C$DW$575, DW_AT_data_member_location[DW_OP_plus_uconst 0x1a]
	.dwattr $C$DW$575, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$576	.dwtag  DW_TAG_member
	.dwattr $C$DW$576, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$576, DW_AT_name("IPCRECVDATA")
	.dwattr $C$DW$576, DW_AT_TI_symbol_name("_IPCRECVDATA")
	.dwattr $C$DW$576, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr $C$DW$576, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$577	.dwtag  DW_TAG_member
	.dwattr $C$DW$577, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$577, DW_AT_name("IPCLOCALREPLY")
	.dwattr $C$DW$577, DW_AT_TI_symbol_name("_IPCLOCALREPLY")
	.dwattr $C$DW$577, DW_AT_data_member_location[DW_OP_plus_uconst 0x1e]
	.dwattr $C$DW$577, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$578	.dwtag  DW_TAG_member
	.dwattr $C$DW$578, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$578, DW_AT_name("IPCBOOTSTS")
	.dwattr $C$DW$578, DW_AT_TI_symbol_name("_IPCBOOTSTS")
	.dwattr $C$DW$578, DW_AT_data_member_location[DW_OP_plus_uconst 0x20]
	.dwattr $C$DW$578, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$579	.dwtag  DW_TAG_member
	.dwattr $C$DW$579, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$579, DW_AT_name("IPCBOOTMODE")
	.dwattr $C$DW$579, DW_AT_TI_symbol_name("_IPCBOOTMODE")
	.dwattr $C$DW$579, DW_AT_data_member_location[DW_OP_plus_uconst 0x22]
	.dwattr $C$DW$579, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$64

$C$DW$580	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$580, DW_AT_type(*$C$DW$T$64)

$C$DW$T$98	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$98, DW_AT_type(*$C$DW$580)


$C$DW$T$65	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$65, DW_AT_name("LSxACCPROT0_BITS")
	.dwattr $C$DW$T$65, DW_AT_byte_size(0x02)
$C$DW$581	.dwtag  DW_TAG_member
	.dwattr $C$DW$581, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$581, DW_AT_name("FETCHPROT_LS0")
	.dwattr $C$DW$581, DW_AT_TI_symbol_name("_FETCHPROT_LS0")
	.dwattr $C$DW$581, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$581, DW_AT_bit_size(0x01)
	.dwattr $C$DW$581, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$581, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$582	.dwtag  DW_TAG_member
	.dwattr $C$DW$582, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$582, DW_AT_name("CPUWRPROT_LS0")
	.dwattr $C$DW$582, DW_AT_TI_symbol_name("_CPUWRPROT_LS0")
	.dwattr $C$DW$582, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$582, DW_AT_bit_size(0x01)
	.dwattr $C$DW$582, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$582, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$583	.dwtag  DW_TAG_member
	.dwattr $C$DW$583, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$583, DW_AT_name("rsvd1")
	.dwattr $C$DW$583, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$583, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$583, DW_AT_bit_size(0x06)
	.dwattr $C$DW$583, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$583, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$584	.dwtag  DW_TAG_member
	.dwattr $C$DW$584, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$584, DW_AT_name("FETCHPROT_LS1")
	.dwattr $C$DW$584, DW_AT_TI_symbol_name("_FETCHPROT_LS1")
	.dwattr $C$DW$584, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$584, DW_AT_bit_size(0x01)
	.dwattr $C$DW$584, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$584, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$585	.dwtag  DW_TAG_member
	.dwattr $C$DW$585, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$585, DW_AT_name("CPUWRPROT_LS1")
	.dwattr $C$DW$585, DW_AT_TI_symbol_name("_CPUWRPROT_LS1")
	.dwattr $C$DW$585, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$585, DW_AT_bit_size(0x01)
	.dwattr $C$DW$585, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$585, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$586	.dwtag  DW_TAG_member
	.dwattr $C$DW$586, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$586, DW_AT_name("rsvd2")
	.dwattr $C$DW$586, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$586, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$586, DW_AT_bit_size(0x06)
	.dwattr $C$DW$586, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$586, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$587	.dwtag  DW_TAG_member
	.dwattr $C$DW$587, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$587, DW_AT_name("FETCHPROT_LS2")
	.dwattr $C$DW$587, DW_AT_TI_symbol_name("_FETCHPROT_LS2")
	.dwattr $C$DW$587, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$587, DW_AT_bit_size(0x01)
	.dwattr $C$DW$587, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$587, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$588	.dwtag  DW_TAG_member
	.dwattr $C$DW$588, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$588, DW_AT_name("CPUWRPROT_LS2")
	.dwattr $C$DW$588, DW_AT_TI_symbol_name("_CPUWRPROT_LS2")
	.dwattr $C$DW$588, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$588, DW_AT_bit_size(0x01)
	.dwattr $C$DW$588, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$588, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$589	.dwtag  DW_TAG_member
	.dwattr $C$DW$589, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$589, DW_AT_name("rsvd3")
	.dwattr $C$DW$589, DW_AT_TI_symbol_name("_rsvd3")
	.dwattr $C$DW$589, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$589, DW_AT_bit_size(0x06)
	.dwattr $C$DW$589, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$589, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$590	.dwtag  DW_TAG_member
	.dwattr $C$DW$590, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$590, DW_AT_name("FETCHPROT_LS3")
	.dwattr $C$DW$590, DW_AT_TI_symbol_name("_FETCHPROT_LS3")
	.dwattr $C$DW$590, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$590, DW_AT_bit_size(0x01)
	.dwattr $C$DW$590, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$590, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$591	.dwtag  DW_TAG_member
	.dwattr $C$DW$591, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$591, DW_AT_name("CPUWRPROT_LS3")
	.dwattr $C$DW$591, DW_AT_TI_symbol_name("_CPUWRPROT_LS3")
	.dwattr $C$DW$591, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$591, DW_AT_bit_size(0x01)
	.dwattr $C$DW$591, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$591, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$592	.dwtag  DW_TAG_member
	.dwattr $C$DW$592, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$592, DW_AT_name("rsvd4")
	.dwattr $C$DW$592, DW_AT_TI_symbol_name("_rsvd4")
	.dwattr $C$DW$592, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$592, DW_AT_bit_size(0x06)
	.dwattr $C$DW$592, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$592, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$65


$C$DW$T$66	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$66, DW_AT_name("LSxACCPROT0_REG")
	.dwattr $C$DW$T$66, DW_AT_byte_size(0x02)
$C$DW$593	.dwtag  DW_TAG_member
	.dwattr $C$DW$593, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$593, DW_AT_name("all")
	.dwattr $C$DW$593, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$593, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$593, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$594	.dwtag  DW_TAG_member
	.dwattr $C$DW$594, DW_AT_type(*$C$DW$T$65)
	.dwattr $C$DW$594, DW_AT_name("bit")
	.dwattr $C$DW$594, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$594, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$594, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$66


$C$DW$T$67	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$67, DW_AT_name("LSxACCPROT1_BITS")
	.dwattr $C$DW$T$67, DW_AT_byte_size(0x02)
$C$DW$595	.dwtag  DW_TAG_member
	.dwattr $C$DW$595, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$595, DW_AT_name("FETCHPROT_LS4")
	.dwattr $C$DW$595, DW_AT_TI_symbol_name("_FETCHPROT_LS4")
	.dwattr $C$DW$595, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$595, DW_AT_bit_size(0x01)
	.dwattr $C$DW$595, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$595, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$596	.dwtag  DW_TAG_member
	.dwattr $C$DW$596, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$596, DW_AT_name("CPUWRPROT_LS4")
	.dwattr $C$DW$596, DW_AT_TI_symbol_name("_CPUWRPROT_LS4")
	.dwattr $C$DW$596, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$596, DW_AT_bit_size(0x01)
	.dwattr $C$DW$596, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$596, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$597	.dwtag  DW_TAG_member
	.dwattr $C$DW$597, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$597, DW_AT_name("rsvd1")
	.dwattr $C$DW$597, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$597, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$597, DW_AT_bit_size(0x06)
	.dwattr $C$DW$597, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$597, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$598	.dwtag  DW_TAG_member
	.dwattr $C$DW$598, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$598, DW_AT_name("FETCHPROT_LS5")
	.dwattr $C$DW$598, DW_AT_TI_symbol_name("_FETCHPROT_LS5")
	.dwattr $C$DW$598, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$598, DW_AT_bit_size(0x01)
	.dwattr $C$DW$598, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$598, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$599	.dwtag  DW_TAG_member
	.dwattr $C$DW$599, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$599, DW_AT_name("CPUWRPROT_LS5")
	.dwattr $C$DW$599, DW_AT_TI_symbol_name("_CPUWRPROT_LS5")
	.dwattr $C$DW$599, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$599, DW_AT_bit_size(0x01)
	.dwattr $C$DW$599, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$599, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$600	.dwtag  DW_TAG_member
	.dwattr $C$DW$600, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$600, DW_AT_name("rsvd2")
	.dwattr $C$DW$600, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$600, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$600, DW_AT_bit_size(0x06)
	.dwattr $C$DW$600, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$600, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$601	.dwtag  DW_TAG_member
	.dwattr $C$DW$601, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$601, DW_AT_name("rsvd3")
	.dwattr $C$DW$601, DW_AT_TI_symbol_name("_rsvd3")
	.dwattr $C$DW$601, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$601, DW_AT_bit_size(0x10)
	.dwattr $C$DW$601, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$601, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$67


$C$DW$T$68	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$68, DW_AT_name("LSxACCPROT1_REG")
	.dwattr $C$DW$T$68, DW_AT_byte_size(0x02)
$C$DW$602	.dwtag  DW_TAG_member
	.dwattr $C$DW$602, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$602, DW_AT_name("all")
	.dwattr $C$DW$602, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$602, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$602, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$603	.dwtag  DW_TAG_member
	.dwattr $C$DW$603, DW_AT_type(*$C$DW$T$67)
	.dwattr $C$DW$603, DW_AT_name("bit")
	.dwattr $C$DW$603, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$603, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$603, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$68


$C$DW$T$69	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$69, DW_AT_name("LSxCLAPGM_BITS")
	.dwattr $C$DW$T$69, DW_AT_byte_size(0x02)
$C$DW$604	.dwtag  DW_TAG_member
	.dwattr $C$DW$604, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$604, DW_AT_name("CLAPGM_LS0")
	.dwattr $C$DW$604, DW_AT_TI_symbol_name("_CLAPGM_LS0")
	.dwattr $C$DW$604, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$604, DW_AT_bit_size(0x01)
	.dwattr $C$DW$604, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$604, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$605	.dwtag  DW_TAG_member
	.dwattr $C$DW$605, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$605, DW_AT_name("CLAPGM_LS1")
	.dwattr $C$DW$605, DW_AT_TI_symbol_name("_CLAPGM_LS1")
	.dwattr $C$DW$605, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$605, DW_AT_bit_size(0x01)
	.dwattr $C$DW$605, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$605, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$606	.dwtag  DW_TAG_member
	.dwattr $C$DW$606, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$606, DW_AT_name("CLAPGM_LS2")
	.dwattr $C$DW$606, DW_AT_TI_symbol_name("_CLAPGM_LS2")
	.dwattr $C$DW$606, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$606, DW_AT_bit_size(0x01)
	.dwattr $C$DW$606, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$606, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$607	.dwtag  DW_TAG_member
	.dwattr $C$DW$607, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$607, DW_AT_name("CLAPGM_LS3")
	.dwattr $C$DW$607, DW_AT_TI_symbol_name("_CLAPGM_LS3")
	.dwattr $C$DW$607, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$607, DW_AT_bit_size(0x01)
	.dwattr $C$DW$607, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$607, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$608	.dwtag  DW_TAG_member
	.dwattr $C$DW$608, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$608, DW_AT_name("CLAPGM_LS4")
	.dwattr $C$DW$608, DW_AT_TI_symbol_name("_CLAPGM_LS4")
	.dwattr $C$DW$608, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$608, DW_AT_bit_size(0x01)
	.dwattr $C$DW$608, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$608, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$609	.dwtag  DW_TAG_member
	.dwattr $C$DW$609, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$609, DW_AT_name("CLAPGM_LS5")
	.dwattr $C$DW$609, DW_AT_TI_symbol_name("_CLAPGM_LS5")
	.dwattr $C$DW$609, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$609, DW_AT_bit_size(0x01)
	.dwattr $C$DW$609, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$609, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$610	.dwtag  DW_TAG_member
	.dwattr $C$DW$610, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$610, DW_AT_name("rsvd1")
	.dwattr $C$DW$610, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$610, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$610, DW_AT_bit_size(0x0a)
	.dwattr $C$DW$610, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$610, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$611	.dwtag  DW_TAG_member
	.dwattr $C$DW$611, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$611, DW_AT_name("rsvd2")
	.dwattr $C$DW$611, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$611, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$611, DW_AT_bit_size(0x10)
	.dwattr $C$DW$611, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$611, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$69


$C$DW$T$70	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$70, DW_AT_name("LSxCLAPGM_REG")
	.dwattr $C$DW$T$70, DW_AT_byte_size(0x02)
$C$DW$612	.dwtag  DW_TAG_member
	.dwattr $C$DW$612, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$612, DW_AT_name("all")
	.dwattr $C$DW$612, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$612, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$612, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$613	.dwtag  DW_TAG_member
	.dwattr $C$DW$613, DW_AT_type(*$C$DW$T$69)
	.dwattr $C$DW$613, DW_AT_name("bit")
	.dwattr $C$DW$613, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$613, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$613, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$70


$C$DW$T$71	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$71, DW_AT_name("LSxCOMMIT_BITS")
	.dwattr $C$DW$T$71, DW_AT_byte_size(0x02)
$C$DW$614	.dwtag  DW_TAG_member
	.dwattr $C$DW$614, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$614, DW_AT_name("COMMIT_LS0")
	.dwattr $C$DW$614, DW_AT_TI_symbol_name("_COMMIT_LS0")
	.dwattr $C$DW$614, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$614, DW_AT_bit_size(0x01)
	.dwattr $C$DW$614, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$614, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$615	.dwtag  DW_TAG_member
	.dwattr $C$DW$615, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$615, DW_AT_name("COMMIT_LS1")
	.dwattr $C$DW$615, DW_AT_TI_symbol_name("_COMMIT_LS1")
	.dwattr $C$DW$615, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$615, DW_AT_bit_size(0x01)
	.dwattr $C$DW$615, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$615, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$616	.dwtag  DW_TAG_member
	.dwattr $C$DW$616, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$616, DW_AT_name("COMMIT_LS2")
	.dwattr $C$DW$616, DW_AT_TI_symbol_name("_COMMIT_LS2")
	.dwattr $C$DW$616, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$616, DW_AT_bit_size(0x01)
	.dwattr $C$DW$616, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$616, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$617	.dwtag  DW_TAG_member
	.dwattr $C$DW$617, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$617, DW_AT_name("COMMIT_LS3")
	.dwattr $C$DW$617, DW_AT_TI_symbol_name("_COMMIT_LS3")
	.dwattr $C$DW$617, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$617, DW_AT_bit_size(0x01)
	.dwattr $C$DW$617, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$617, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$618	.dwtag  DW_TAG_member
	.dwattr $C$DW$618, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$618, DW_AT_name("COMMIT_LS4")
	.dwattr $C$DW$618, DW_AT_TI_symbol_name("_COMMIT_LS4")
	.dwattr $C$DW$618, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$618, DW_AT_bit_size(0x01)
	.dwattr $C$DW$618, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$618, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$619	.dwtag  DW_TAG_member
	.dwattr $C$DW$619, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$619, DW_AT_name("COMMIT_LS5")
	.dwattr $C$DW$619, DW_AT_TI_symbol_name("_COMMIT_LS5")
	.dwattr $C$DW$619, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$619, DW_AT_bit_size(0x01)
	.dwattr $C$DW$619, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$619, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$620	.dwtag  DW_TAG_member
	.dwattr $C$DW$620, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$620, DW_AT_name("rsvd1")
	.dwattr $C$DW$620, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$620, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$620, DW_AT_bit_size(0x0a)
	.dwattr $C$DW$620, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$620, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$621	.dwtag  DW_TAG_member
	.dwattr $C$DW$621, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$621, DW_AT_name("rsvd2")
	.dwattr $C$DW$621, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$621, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$621, DW_AT_bit_size(0x10)
	.dwattr $C$DW$621, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$621, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$71


$C$DW$T$72	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$72, DW_AT_name("LSxCOMMIT_REG")
	.dwattr $C$DW$T$72, DW_AT_byte_size(0x02)
$C$DW$622	.dwtag  DW_TAG_member
	.dwattr $C$DW$622, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$622, DW_AT_name("all")
	.dwattr $C$DW$622, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$622, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$622, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$623	.dwtag  DW_TAG_member
	.dwattr $C$DW$623, DW_AT_type(*$C$DW$T$71)
	.dwattr $C$DW$623, DW_AT_name("bit")
	.dwattr $C$DW$623, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$623, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$623, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$72


$C$DW$T$73	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$73, DW_AT_name("LSxINITDONE_BITS")
	.dwattr $C$DW$T$73, DW_AT_byte_size(0x02)
$C$DW$624	.dwtag  DW_TAG_member
	.dwattr $C$DW$624, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$624, DW_AT_name("INITDONE_LS0")
	.dwattr $C$DW$624, DW_AT_TI_symbol_name("_INITDONE_LS0")
	.dwattr $C$DW$624, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$624, DW_AT_bit_size(0x01)
	.dwattr $C$DW$624, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$624, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$625	.dwtag  DW_TAG_member
	.dwattr $C$DW$625, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$625, DW_AT_name("INITDONE_LS1")
	.dwattr $C$DW$625, DW_AT_TI_symbol_name("_INITDONE_LS1")
	.dwattr $C$DW$625, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$625, DW_AT_bit_size(0x01)
	.dwattr $C$DW$625, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$625, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$626	.dwtag  DW_TAG_member
	.dwattr $C$DW$626, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$626, DW_AT_name("INITDONE_LS2")
	.dwattr $C$DW$626, DW_AT_TI_symbol_name("_INITDONE_LS2")
	.dwattr $C$DW$626, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$626, DW_AT_bit_size(0x01)
	.dwattr $C$DW$626, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$626, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$627	.dwtag  DW_TAG_member
	.dwattr $C$DW$627, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$627, DW_AT_name("INITDONE_LS3")
	.dwattr $C$DW$627, DW_AT_TI_symbol_name("_INITDONE_LS3")
	.dwattr $C$DW$627, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$627, DW_AT_bit_size(0x01)
	.dwattr $C$DW$627, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$627, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$628	.dwtag  DW_TAG_member
	.dwattr $C$DW$628, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$628, DW_AT_name("INITDONE_LS4")
	.dwattr $C$DW$628, DW_AT_TI_symbol_name("_INITDONE_LS4")
	.dwattr $C$DW$628, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$628, DW_AT_bit_size(0x01)
	.dwattr $C$DW$628, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$628, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$629	.dwtag  DW_TAG_member
	.dwattr $C$DW$629, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$629, DW_AT_name("INITDONE_LS5")
	.dwattr $C$DW$629, DW_AT_TI_symbol_name("_INITDONE_LS5")
	.dwattr $C$DW$629, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$629, DW_AT_bit_size(0x01)
	.dwattr $C$DW$629, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$629, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$630	.dwtag  DW_TAG_member
	.dwattr $C$DW$630, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$630, DW_AT_name("rsvd1")
	.dwattr $C$DW$630, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$630, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$630, DW_AT_bit_size(0x0a)
	.dwattr $C$DW$630, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$630, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$631	.dwtag  DW_TAG_member
	.dwattr $C$DW$631, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$631, DW_AT_name("rsvd2")
	.dwattr $C$DW$631, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$631, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$631, DW_AT_bit_size(0x10)
	.dwattr $C$DW$631, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$631, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$73


$C$DW$T$74	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$74, DW_AT_name("LSxINITDONE_REG")
	.dwattr $C$DW$T$74, DW_AT_byte_size(0x02)
$C$DW$632	.dwtag  DW_TAG_member
	.dwattr $C$DW$632, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$632, DW_AT_name("all")
	.dwattr $C$DW$632, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$632, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$632, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$633	.dwtag  DW_TAG_member
	.dwattr $C$DW$633, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$633, DW_AT_name("bit")
	.dwattr $C$DW$633, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$633, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$633, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$74


$C$DW$T$75	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$75, DW_AT_name("LSxINIT_BITS")
	.dwattr $C$DW$T$75, DW_AT_byte_size(0x02)
$C$DW$634	.dwtag  DW_TAG_member
	.dwattr $C$DW$634, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$634, DW_AT_name("INIT_LS0")
	.dwattr $C$DW$634, DW_AT_TI_symbol_name("_INIT_LS0")
	.dwattr $C$DW$634, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$634, DW_AT_bit_size(0x01)
	.dwattr $C$DW$634, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$634, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$635	.dwtag  DW_TAG_member
	.dwattr $C$DW$635, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$635, DW_AT_name("INIT_LS1")
	.dwattr $C$DW$635, DW_AT_TI_symbol_name("_INIT_LS1")
	.dwattr $C$DW$635, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$635, DW_AT_bit_size(0x01)
	.dwattr $C$DW$635, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$635, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$636	.dwtag  DW_TAG_member
	.dwattr $C$DW$636, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$636, DW_AT_name("INIT_LS2")
	.dwattr $C$DW$636, DW_AT_TI_symbol_name("_INIT_LS2")
	.dwattr $C$DW$636, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$636, DW_AT_bit_size(0x01)
	.dwattr $C$DW$636, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$636, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$637	.dwtag  DW_TAG_member
	.dwattr $C$DW$637, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$637, DW_AT_name("INIT_LS3")
	.dwattr $C$DW$637, DW_AT_TI_symbol_name("_INIT_LS3")
	.dwattr $C$DW$637, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$637, DW_AT_bit_size(0x01)
	.dwattr $C$DW$637, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$637, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$638	.dwtag  DW_TAG_member
	.dwattr $C$DW$638, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$638, DW_AT_name("INIT_LS4")
	.dwattr $C$DW$638, DW_AT_TI_symbol_name("_INIT_LS4")
	.dwattr $C$DW$638, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$638, DW_AT_bit_size(0x01)
	.dwattr $C$DW$638, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$638, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$639	.dwtag  DW_TAG_member
	.dwattr $C$DW$639, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$639, DW_AT_name("INIT_LS5")
	.dwattr $C$DW$639, DW_AT_TI_symbol_name("_INIT_LS5")
	.dwattr $C$DW$639, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$639, DW_AT_bit_size(0x01)
	.dwattr $C$DW$639, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$639, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$640	.dwtag  DW_TAG_member
	.dwattr $C$DW$640, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$640, DW_AT_name("rsvd1")
	.dwattr $C$DW$640, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$640, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$640, DW_AT_bit_size(0x0a)
	.dwattr $C$DW$640, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$640, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$641	.dwtag  DW_TAG_member
	.dwattr $C$DW$641, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$641, DW_AT_name("rsvd2")
	.dwattr $C$DW$641, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$641, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$641, DW_AT_bit_size(0x10)
	.dwattr $C$DW$641, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$641, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$75


$C$DW$T$76	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$76, DW_AT_name("LSxINIT_REG")
	.dwattr $C$DW$T$76, DW_AT_byte_size(0x02)
$C$DW$642	.dwtag  DW_TAG_member
	.dwattr $C$DW$642, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$642, DW_AT_name("all")
	.dwattr $C$DW$642, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$642, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$642, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$643	.dwtag  DW_TAG_member
	.dwattr $C$DW$643, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$643, DW_AT_name("bit")
	.dwattr $C$DW$643, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$643, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$643, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$76


$C$DW$T$77	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$77, DW_AT_name("LSxLOCK_BITS")
	.dwattr $C$DW$T$77, DW_AT_byte_size(0x02)
$C$DW$644	.dwtag  DW_TAG_member
	.dwattr $C$DW$644, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$644, DW_AT_name("LOCK_LS0")
	.dwattr $C$DW$644, DW_AT_TI_symbol_name("_LOCK_LS0")
	.dwattr $C$DW$644, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$644, DW_AT_bit_size(0x01)
	.dwattr $C$DW$644, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$644, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$645	.dwtag  DW_TAG_member
	.dwattr $C$DW$645, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$645, DW_AT_name("LOCK_LS1")
	.dwattr $C$DW$645, DW_AT_TI_symbol_name("_LOCK_LS1")
	.dwattr $C$DW$645, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$645, DW_AT_bit_size(0x01)
	.dwattr $C$DW$645, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$645, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$646	.dwtag  DW_TAG_member
	.dwattr $C$DW$646, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$646, DW_AT_name("LOCK_LS2")
	.dwattr $C$DW$646, DW_AT_TI_symbol_name("_LOCK_LS2")
	.dwattr $C$DW$646, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$646, DW_AT_bit_size(0x01)
	.dwattr $C$DW$646, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$646, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$647	.dwtag  DW_TAG_member
	.dwattr $C$DW$647, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$647, DW_AT_name("LOCK_LS3")
	.dwattr $C$DW$647, DW_AT_TI_symbol_name("_LOCK_LS3")
	.dwattr $C$DW$647, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$647, DW_AT_bit_size(0x01)
	.dwattr $C$DW$647, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$647, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$648	.dwtag  DW_TAG_member
	.dwattr $C$DW$648, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$648, DW_AT_name("LOCK_LS4")
	.dwattr $C$DW$648, DW_AT_TI_symbol_name("_LOCK_LS4")
	.dwattr $C$DW$648, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$648, DW_AT_bit_size(0x01)
	.dwattr $C$DW$648, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$648, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$649	.dwtag  DW_TAG_member
	.dwattr $C$DW$649, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$649, DW_AT_name("LOCK_LS5")
	.dwattr $C$DW$649, DW_AT_TI_symbol_name("_LOCK_LS5")
	.dwattr $C$DW$649, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$649, DW_AT_bit_size(0x01)
	.dwattr $C$DW$649, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$649, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$650	.dwtag  DW_TAG_member
	.dwattr $C$DW$650, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$650, DW_AT_name("rsvd1")
	.dwattr $C$DW$650, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$650, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$650, DW_AT_bit_size(0x0a)
	.dwattr $C$DW$650, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$650, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$651	.dwtag  DW_TAG_member
	.dwattr $C$DW$651, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$651, DW_AT_name("rsvd2")
	.dwattr $C$DW$651, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$651, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$651, DW_AT_bit_size(0x10)
	.dwattr $C$DW$651, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$651, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$77


$C$DW$T$78	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$78, DW_AT_name("LSxLOCK_REG")
	.dwattr $C$DW$T$78, DW_AT_byte_size(0x02)
$C$DW$652	.dwtag  DW_TAG_member
	.dwattr $C$DW$652, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$652, DW_AT_name("all")
	.dwattr $C$DW$652, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$652, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$652, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$653	.dwtag  DW_TAG_member
	.dwattr $C$DW$653, DW_AT_type(*$C$DW$T$77)
	.dwattr $C$DW$653, DW_AT_name("bit")
	.dwattr $C$DW$653, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$653, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$653, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$78


$C$DW$T$79	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$79, DW_AT_name("LSxMSEL_BITS")
	.dwattr $C$DW$T$79, DW_AT_byte_size(0x02)
$C$DW$654	.dwtag  DW_TAG_member
	.dwattr $C$DW$654, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$654, DW_AT_name("MSEL_LS0")
	.dwattr $C$DW$654, DW_AT_TI_symbol_name("_MSEL_LS0")
	.dwattr $C$DW$654, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$654, DW_AT_bit_size(0x02)
	.dwattr $C$DW$654, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$654, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$655	.dwtag  DW_TAG_member
	.dwattr $C$DW$655, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$655, DW_AT_name("MSEL_LS1")
	.dwattr $C$DW$655, DW_AT_TI_symbol_name("_MSEL_LS1")
	.dwattr $C$DW$655, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$655, DW_AT_bit_size(0x02)
	.dwattr $C$DW$655, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$655, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$656	.dwtag  DW_TAG_member
	.dwattr $C$DW$656, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$656, DW_AT_name("MSEL_LS2")
	.dwattr $C$DW$656, DW_AT_TI_symbol_name("_MSEL_LS2")
	.dwattr $C$DW$656, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$656, DW_AT_bit_size(0x02)
	.dwattr $C$DW$656, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$656, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$657	.dwtag  DW_TAG_member
	.dwattr $C$DW$657, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$657, DW_AT_name("MSEL_LS3")
	.dwattr $C$DW$657, DW_AT_TI_symbol_name("_MSEL_LS3")
	.dwattr $C$DW$657, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$657, DW_AT_bit_size(0x02)
	.dwattr $C$DW$657, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$657, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$658	.dwtag  DW_TAG_member
	.dwattr $C$DW$658, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$658, DW_AT_name("MSEL_LS4")
	.dwattr $C$DW$658, DW_AT_TI_symbol_name("_MSEL_LS4")
	.dwattr $C$DW$658, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$658, DW_AT_bit_size(0x02)
	.dwattr $C$DW$658, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$658, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$659	.dwtag  DW_TAG_member
	.dwattr $C$DW$659, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$659, DW_AT_name("MSEL_LS5")
	.dwattr $C$DW$659, DW_AT_TI_symbol_name("_MSEL_LS5")
	.dwattr $C$DW$659, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$659, DW_AT_bit_size(0x02)
	.dwattr $C$DW$659, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$659, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$660	.dwtag  DW_TAG_member
	.dwattr $C$DW$660, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$660, DW_AT_name("rsvd1")
	.dwattr $C$DW$660, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$660, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$660, DW_AT_bit_size(0x04)
	.dwattr $C$DW$660, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$660, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$661	.dwtag  DW_TAG_member
	.dwattr $C$DW$661, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$661, DW_AT_name("rsvd2")
	.dwattr $C$DW$661, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$661, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$661, DW_AT_bit_size(0x10)
	.dwattr $C$DW$661, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$661, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$79


$C$DW$T$80	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$80, DW_AT_name("LSxMSEL_REG")
	.dwattr $C$DW$T$80, DW_AT_byte_size(0x02)
$C$DW$662	.dwtag  DW_TAG_member
	.dwattr $C$DW$662, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$662, DW_AT_name("all")
	.dwattr $C$DW$662, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$662, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$662, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$663	.dwtag  DW_TAG_member
	.dwattr $C$DW$663, DW_AT_type(*$C$DW$T$79)
	.dwattr $C$DW$663, DW_AT_name("bit")
	.dwattr $C$DW$663, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$663, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$663, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$80


$C$DW$T$81	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$81, DW_AT_name("LSxTEST_BITS")
	.dwattr $C$DW$T$81, DW_AT_byte_size(0x02)
$C$DW$664	.dwtag  DW_TAG_member
	.dwattr $C$DW$664, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$664, DW_AT_name("TEST_LS0")
	.dwattr $C$DW$664, DW_AT_TI_symbol_name("_TEST_LS0")
	.dwattr $C$DW$664, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$664, DW_AT_bit_size(0x02)
	.dwattr $C$DW$664, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$664, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$665	.dwtag  DW_TAG_member
	.dwattr $C$DW$665, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$665, DW_AT_name("TEST_LS1")
	.dwattr $C$DW$665, DW_AT_TI_symbol_name("_TEST_LS1")
	.dwattr $C$DW$665, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$665, DW_AT_bit_size(0x02)
	.dwattr $C$DW$665, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$665, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$666	.dwtag  DW_TAG_member
	.dwattr $C$DW$666, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$666, DW_AT_name("TEST_LS2")
	.dwattr $C$DW$666, DW_AT_TI_symbol_name("_TEST_LS2")
	.dwattr $C$DW$666, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$666, DW_AT_bit_size(0x02)
	.dwattr $C$DW$666, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$666, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$667	.dwtag  DW_TAG_member
	.dwattr $C$DW$667, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$667, DW_AT_name("TEST_LS3")
	.dwattr $C$DW$667, DW_AT_TI_symbol_name("_TEST_LS3")
	.dwattr $C$DW$667, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$667, DW_AT_bit_size(0x02)
	.dwattr $C$DW$667, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$667, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$668	.dwtag  DW_TAG_member
	.dwattr $C$DW$668, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$668, DW_AT_name("TEST_LS4")
	.dwattr $C$DW$668, DW_AT_TI_symbol_name("_TEST_LS4")
	.dwattr $C$DW$668, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$668, DW_AT_bit_size(0x02)
	.dwattr $C$DW$668, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$668, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$669	.dwtag  DW_TAG_member
	.dwattr $C$DW$669, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$669, DW_AT_name("TEST_LS5")
	.dwattr $C$DW$669, DW_AT_TI_symbol_name("_TEST_LS5")
	.dwattr $C$DW$669, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$669, DW_AT_bit_size(0x02)
	.dwattr $C$DW$669, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$669, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$670	.dwtag  DW_TAG_member
	.dwattr $C$DW$670, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$670, DW_AT_name("rsvd1")
	.dwattr $C$DW$670, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$670, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$670, DW_AT_bit_size(0x04)
	.dwattr $C$DW$670, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$670, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$671	.dwtag  DW_TAG_member
	.dwattr $C$DW$671, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$671, DW_AT_name("rsvd2")
	.dwattr $C$DW$671, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$671, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$671, DW_AT_bit_size(0x10)
	.dwattr $C$DW$671, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$671, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$81


$C$DW$T$82	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$82, DW_AT_name("LSxTEST_REG")
	.dwattr $C$DW$T$82, DW_AT_byte_size(0x02)
$C$DW$672	.dwtag  DW_TAG_member
	.dwattr $C$DW$672, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$672, DW_AT_name("all")
	.dwattr $C$DW$672, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$672, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$672, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$673	.dwtag  DW_TAG_member
	.dwattr $C$DW$673, DW_AT_type(*$C$DW$T$81)
	.dwattr $C$DW$673, DW_AT_name("bit")
	.dwattr $C$DW$673, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$673, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$673, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$82


$C$DW$T$87	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$87, DW_AT_name("MEM_CFG_REGS")
	.dwattr $C$DW$T$87, DW_AT_byte_size(0x76)
$C$DW$674	.dwtag  DW_TAG_member
	.dwattr $C$DW$674, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$674, DW_AT_name("DxLOCK")
	.dwattr $C$DW$674, DW_AT_TI_symbol_name("_DxLOCK")
	.dwattr $C$DW$674, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$674, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$675	.dwtag  DW_TAG_member
	.dwattr $C$DW$675, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$675, DW_AT_name("DxCOMMIT")
	.dwattr $C$DW$675, DW_AT_TI_symbol_name("_DxCOMMIT")
	.dwattr $C$DW$675, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$675, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$676	.dwtag  DW_TAG_member
	.dwattr $C$DW$676, DW_AT_type(*$C$DW$T$83)
	.dwattr $C$DW$676, DW_AT_name("rsvd1")
	.dwattr $C$DW$676, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$676, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$676, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$677	.dwtag  DW_TAG_member
	.dwattr $C$DW$677, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$677, DW_AT_name("DxACCPROT0")
	.dwattr $C$DW$677, DW_AT_TI_symbol_name("_DxACCPROT0")
	.dwattr $C$DW$677, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$677, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$678	.dwtag  DW_TAG_member
	.dwattr $C$DW$678, DW_AT_type(*$C$DW$T$84)
	.dwattr $C$DW$678, DW_AT_name("rsvd2")
	.dwattr $C$DW$678, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$678, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$678, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$679	.dwtag  DW_TAG_member
	.dwattr $C$DW$679, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$679, DW_AT_name("DxTEST")
	.dwattr $C$DW$679, DW_AT_TI_symbol_name("_DxTEST")
	.dwattr $C$DW$679, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$679, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$680	.dwtag  DW_TAG_member
	.dwattr $C$DW$680, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$680, DW_AT_name("DxINIT")
	.dwattr $C$DW$680, DW_AT_TI_symbol_name("_DxINIT")
	.dwattr $C$DW$680, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr $C$DW$680, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$681	.dwtag  DW_TAG_member
	.dwattr $C$DW$681, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$681, DW_AT_name("DxINITDONE")
	.dwattr $C$DW$681, DW_AT_TI_symbol_name("_DxINITDONE")
	.dwattr $C$DW$681, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$681, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$682	.dwtag  DW_TAG_member
	.dwattr $C$DW$682, DW_AT_type(*$C$DW$T$85)
	.dwattr $C$DW$682, DW_AT_name("rsvd3")
	.dwattr $C$DW$682, DW_AT_TI_symbol_name("_rsvd3")
	.dwattr $C$DW$682, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr $C$DW$682, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$683	.dwtag  DW_TAG_member
	.dwattr $C$DW$683, DW_AT_type(*$C$DW$T$78)
	.dwattr $C$DW$683, DW_AT_name("LSxLOCK")
	.dwattr $C$DW$683, DW_AT_TI_symbol_name("_LSxLOCK")
	.dwattr $C$DW$683, DW_AT_data_member_location[DW_OP_plus_uconst 0x20]
	.dwattr $C$DW$683, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$684	.dwtag  DW_TAG_member
	.dwattr $C$DW$684, DW_AT_type(*$C$DW$T$72)
	.dwattr $C$DW$684, DW_AT_name("LSxCOMMIT")
	.dwattr $C$DW$684, DW_AT_TI_symbol_name("_LSxCOMMIT")
	.dwattr $C$DW$684, DW_AT_data_member_location[DW_OP_plus_uconst 0x22]
	.dwattr $C$DW$684, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$685	.dwtag  DW_TAG_member
	.dwattr $C$DW$685, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$685, DW_AT_name("LSxMSEL")
	.dwattr $C$DW$685, DW_AT_TI_symbol_name("_LSxMSEL")
	.dwattr $C$DW$685, DW_AT_data_member_location[DW_OP_plus_uconst 0x24]
	.dwattr $C$DW$685, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$686	.dwtag  DW_TAG_member
	.dwattr $C$DW$686, DW_AT_type(*$C$DW$T$70)
	.dwattr $C$DW$686, DW_AT_name("LSxCLAPGM")
	.dwattr $C$DW$686, DW_AT_TI_symbol_name("_LSxCLAPGM")
	.dwattr $C$DW$686, DW_AT_data_member_location[DW_OP_plus_uconst 0x26]
	.dwattr $C$DW$686, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$687	.dwtag  DW_TAG_member
	.dwattr $C$DW$687, DW_AT_type(*$C$DW$T$66)
	.dwattr $C$DW$687, DW_AT_name("LSxACCPROT0")
	.dwattr $C$DW$687, DW_AT_TI_symbol_name("_LSxACCPROT0")
	.dwattr $C$DW$687, DW_AT_data_member_location[DW_OP_plus_uconst 0x28]
	.dwattr $C$DW$687, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$688	.dwtag  DW_TAG_member
	.dwattr $C$DW$688, DW_AT_type(*$C$DW$T$68)
	.dwattr $C$DW$688, DW_AT_name("LSxACCPROT1")
	.dwattr $C$DW$688, DW_AT_TI_symbol_name("_LSxACCPROT1")
	.dwattr $C$DW$688, DW_AT_data_member_location[DW_OP_plus_uconst 0x2a]
	.dwattr $C$DW$688, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$689	.dwtag  DW_TAG_member
	.dwattr $C$DW$689, DW_AT_type(*$C$DW$T$83)
	.dwattr $C$DW$689, DW_AT_name("rsvd4")
	.dwattr $C$DW$689, DW_AT_TI_symbol_name("_rsvd4")
	.dwattr $C$DW$689, DW_AT_data_member_location[DW_OP_plus_uconst 0x2c]
	.dwattr $C$DW$689, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$690	.dwtag  DW_TAG_member
	.dwattr $C$DW$690, DW_AT_type(*$C$DW$T$82)
	.dwattr $C$DW$690, DW_AT_name("LSxTEST")
	.dwattr $C$DW$690, DW_AT_TI_symbol_name("_LSxTEST")
	.dwattr $C$DW$690, DW_AT_data_member_location[DW_OP_plus_uconst 0x30]
	.dwattr $C$DW$690, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$691	.dwtag  DW_TAG_member
	.dwattr $C$DW$691, DW_AT_type(*$C$DW$T$76)
	.dwattr $C$DW$691, DW_AT_name("LSxINIT")
	.dwattr $C$DW$691, DW_AT_TI_symbol_name("_LSxINIT")
	.dwattr $C$DW$691, DW_AT_data_member_location[DW_OP_plus_uconst 0x32]
	.dwattr $C$DW$691, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$692	.dwtag  DW_TAG_member
	.dwattr $C$DW$692, DW_AT_type(*$C$DW$T$74)
	.dwattr $C$DW$692, DW_AT_name("LSxINITDONE")
	.dwattr $C$DW$692, DW_AT_TI_symbol_name("_LSxINITDONE")
	.dwattr $C$DW$692, DW_AT_data_member_location[DW_OP_plus_uconst 0x34]
	.dwattr $C$DW$692, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$693	.dwtag  DW_TAG_member
	.dwattr $C$DW$693, DW_AT_type(*$C$DW$T$85)
	.dwattr $C$DW$693, DW_AT_name("rsvd5")
	.dwattr $C$DW$693, DW_AT_TI_symbol_name("_rsvd5")
	.dwattr $C$DW$693, DW_AT_data_member_location[DW_OP_plus_uconst 0x36]
	.dwattr $C$DW$693, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$694	.dwtag  DW_TAG_member
	.dwattr $C$DW$694, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$694, DW_AT_name("GSxLOCK")
	.dwattr $C$DW$694, DW_AT_TI_symbol_name("_GSxLOCK")
	.dwattr $C$DW$694, DW_AT_data_member_location[DW_OP_plus_uconst 0x40]
	.dwattr $C$DW$694, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$695	.dwtag  DW_TAG_member
	.dwattr $C$DW$695, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$695, DW_AT_name("GSxCOMMIT")
	.dwattr $C$DW$695, DW_AT_TI_symbol_name("_GSxCOMMIT")
	.dwattr $C$DW$695, DW_AT_data_member_location[DW_OP_plus_uconst 0x42]
	.dwattr $C$DW$695, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$696	.dwtag  DW_TAG_member
	.dwattr $C$DW$696, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$696, DW_AT_name("GSxMSEL")
	.dwattr $C$DW$696, DW_AT_TI_symbol_name("_GSxMSEL")
	.dwattr $C$DW$696, DW_AT_data_member_location[DW_OP_plus_uconst 0x44]
	.dwattr $C$DW$696, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$697	.dwtag  DW_TAG_member
	.dwattr $C$DW$697, DW_AT_type(*$C$DW$T$63)
	.dwattr $C$DW$697, DW_AT_name("rsvd6")
	.dwattr $C$DW$697, DW_AT_TI_symbol_name("_rsvd6")
	.dwattr $C$DW$697, DW_AT_data_member_location[DW_OP_plus_uconst 0x46]
	.dwattr $C$DW$697, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$698	.dwtag  DW_TAG_member
	.dwattr $C$DW$698, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$698, DW_AT_name("GSxACCPROT0")
	.dwattr $C$DW$698, DW_AT_TI_symbol_name("_GSxACCPROT0")
	.dwattr $C$DW$698, DW_AT_data_member_location[DW_OP_plus_uconst 0x48]
	.dwattr $C$DW$698, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$699	.dwtag  DW_TAG_member
	.dwattr $C$DW$699, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$699, DW_AT_name("GSxACCPROT1")
	.dwattr $C$DW$699, DW_AT_TI_symbol_name("_GSxACCPROT1")
	.dwattr $C$DW$699, DW_AT_data_member_location[DW_OP_plus_uconst 0x4a]
	.dwattr $C$DW$699, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$700	.dwtag  DW_TAG_member
	.dwattr $C$DW$700, DW_AT_type(*$C$DW$T$38)
	.dwattr $C$DW$700, DW_AT_name("GSxACCPROT2")
	.dwattr $C$DW$700, DW_AT_TI_symbol_name("_GSxACCPROT2")
	.dwattr $C$DW$700, DW_AT_data_member_location[DW_OP_plus_uconst 0x4c]
	.dwattr $C$DW$700, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$701	.dwtag  DW_TAG_member
	.dwattr $C$DW$701, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$701, DW_AT_name("GSxACCPROT3")
	.dwattr $C$DW$701, DW_AT_TI_symbol_name("_GSxACCPROT3")
	.dwattr $C$DW$701, DW_AT_data_member_location[DW_OP_plus_uconst 0x4e]
	.dwattr $C$DW$701, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$702	.dwtag  DW_TAG_member
	.dwattr $C$DW$702, DW_AT_type(*$C$DW$T$52)
	.dwattr $C$DW$702, DW_AT_name("GSxTEST")
	.dwattr $C$DW$702, DW_AT_TI_symbol_name("_GSxTEST")
	.dwattr $C$DW$702, DW_AT_data_member_location[DW_OP_plus_uconst 0x50]
	.dwattr $C$DW$702, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$703	.dwtag  DW_TAG_member
	.dwattr $C$DW$703, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$703, DW_AT_name("GSxINIT")
	.dwattr $C$DW$703, DW_AT_TI_symbol_name("_GSxINIT")
	.dwattr $C$DW$703, DW_AT_data_member_location[DW_OP_plus_uconst 0x52]
	.dwattr $C$DW$703, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$704	.dwtag  DW_TAG_member
	.dwattr $C$DW$704, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$704, DW_AT_name("GSxINITDONE")
	.dwattr $C$DW$704, DW_AT_TI_symbol_name("_GSxINITDONE")
	.dwattr $C$DW$704, DW_AT_data_member_location[DW_OP_plus_uconst 0x54]
	.dwattr $C$DW$704, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$705	.dwtag  DW_TAG_member
	.dwattr $C$DW$705, DW_AT_type(*$C$DW$T$86)
	.dwattr $C$DW$705, DW_AT_name("rsvd7")
	.dwattr $C$DW$705, DW_AT_TI_symbol_name("_rsvd7")
	.dwattr $C$DW$705, DW_AT_data_member_location[DW_OP_plus_uconst 0x56]
	.dwattr $C$DW$705, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$706	.dwtag  DW_TAG_member
	.dwattr $C$DW$706, DW_AT_type(*$C$DW$T$93)
	.dwattr $C$DW$706, DW_AT_name("MSGxTEST")
	.dwattr $C$DW$706, DW_AT_TI_symbol_name("_MSGxTEST")
	.dwattr $C$DW$706, DW_AT_data_member_location[DW_OP_plus_uconst 0x70]
	.dwattr $C$DW$706, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$707	.dwtag  DW_TAG_member
	.dwattr $C$DW$707, DW_AT_type(*$C$DW$T$91)
	.dwattr $C$DW$707, DW_AT_name("MSGxINIT")
	.dwattr $C$DW$707, DW_AT_TI_symbol_name("_MSGxINIT")
	.dwattr $C$DW$707, DW_AT_data_member_location[DW_OP_plus_uconst 0x72]
	.dwattr $C$DW$707, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$708	.dwtag  DW_TAG_member
	.dwattr $C$DW$708, DW_AT_type(*$C$DW$T$89)
	.dwattr $C$DW$708, DW_AT_name("MSGxINITDONE")
	.dwattr $C$DW$708, DW_AT_TI_symbol_name("_MSGxINITDONE")
	.dwattr $C$DW$708, DW_AT_data_member_location[DW_OP_plus_uconst 0x74]
	.dwattr $C$DW$708, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$87

$C$DW$709	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$709, DW_AT_type(*$C$DW$T$87)

$C$DW$T$99	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$99, DW_AT_type(*$C$DW$709)


$C$DW$T$88	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$88, DW_AT_name("MSGxINITDONE_BITS")
	.dwattr $C$DW$T$88, DW_AT_byte_size(0x02)
$C$DW$710	.dwtag  DW_TAG_member
	.dwattr $C$DW$710, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$710, DW_AT_name("INITDONE_CPUTOCPU")
	.dwattr $C$DW$710, DW_AT_TI_symbol_name("_INITDONE_CPUTOCPU")
	.dwattr $C$DW$710, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$710, DW_AT_bit_size(0x01)
	.dwattr $C$DW$710, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$710, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$711	.dwtag  DW_TAG_member
	.dwattr $C$DW$711, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$711, DW_AT_name("INITDONE_CPUTOCLA1")
	.dwattr $C$DW$711, DW_AT_TI_symbol_name("_INITDONE_CPUTOCLA1")
	.dwattr $C$DW$711, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$711, DW_AT_bit_size(0x01)
	.dwattr $C$DW$711, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$711, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$712	.dwtag  DW_TAG_member
	.dwattr $C$DW$712, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$712, DW_AT_name("INITDONE_CLA1TOCPU")
	.dwattr $C$DW$712, DW_AT_TI_symbol_name("_INITDONE_CLA1TOCPU")
	.dwattr $C$DW$712, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$712, DW_AT_bit_size(0x01)
	.dwattr $C$DW$712, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$712, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$713	.dwtag  DW_TAG_member
	.dwattr $C$DW$713, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$713, DW_AT_name("rsvd1")
	.dwattr $C$DW$713, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$713, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$713, DW_AT_bit_size(0x01)
	.dwattr $C$DW$713, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$713, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$714	.dwtag  DW_TAG_member
	.dwattr $C$DW$714, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$714, DW_AT_name("rsvd2")
	.dwattr $C$DW$714, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$714, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$714, DW_AT_bit_size(0x01)
	.dwattr $C$DW$714, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$714, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$715	.dwtag  DW_TAG_member
	.dwattr $C$DW$715, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$715, DW_AT_name("rsvd3")
	.dwattr $C$DW$715, DW_AT_TI_symbol_name("_rsvd3")
	.dwattr $C$DW$715, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$715, DW_AT_bit_size(0x0b)
	.dwattr $C$DW$715, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$715, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$716	.dwtag  DW_TAG_member
	.dwattr $C$DW$716, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$716, DW_AT_name("rsvd4")
	.dwattr $C$DW$716, DW_AT_TI_symbol_name("_rsvd4")
	.dwattr $C$DW$716, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$716, DW_AT_bit_size(0x10)
	.dwattr $C$DW$716, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$716, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$88


$C$DW$T$89	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$89, DW_AT_name("MSGxINITDONE_REG")
	.dwattr $C$DW$T$89, DW_AT_byte_size(0x02)
$C$DW$717	.dwtag  DW_TAG_member
	.dwattr $C$DW$717, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$717, DW_AT_name("all")
	.dwattr $C$DW$717, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$717, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$717, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$718	.dwtag  DW_TAG_member
	.dwattr $C$DW$718, DW_AT_type(*$C$DW$T$88)
	.dwattr $C$DW$718, DW_AT_name("bit")
	.dwattr $C$DW$718, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$718, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$718, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$89


$C$DW$T$90	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$90, DW_AT_name("MSGxINIT_BITS")
	.dwattr $C$DW$T$90, DW_AT_byte_size(0x02)
$C$DW$719	.dwtag  DW_TAG_member
	.dwattr $C$DW$719, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$719, DW_AT_name("INIT_CPUTOCPU")
	.dwattr $C$DW$719, DW_AT_TI_symbol_name("_INIT_CPUTOCPU")
	.dwattr $C$DW$719, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$719, DW_AT_bit_size(0x01)
	.dwattr $C$DW$719, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$719, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$720	.dwtag  DW_TAG_member
	.dwattr $C$DW$720, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$720, DW_AT_name("INIT_CPUTOCLA1")
	.dwattr $C$DW$720, DW_AT_TI_symbol_name("_INIT_CPUTOCLA1")
	.dwattr $C$DW$720, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$720, DW_AT_bit_size(0x01)
	.dwattr $C$DW$720, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$720, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$721	.dwtag  DW_TAG_member
	.dwattr $C$DW$721, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$721, DW_AT_name("INIT_CLA1TOCPU")
	.dwattr $C$DW$721, DW_AT_TI_symbol_name("_INIT_CLA1TOCPU")
	.dwattr $C$DW$721, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$721, DW_AT_bit_size(0x01)
	.dwattr $C$DW$721, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$721, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$722	.dwtag  DW_TAG_member
	.dwattr $C$DW$722, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$722, DW_AT_name("rsvd1")
	.dwattr $C$DW$722, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$722, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$722, DW_AT_bit_size(0x01)
	.dwattr $C$DW$722, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$722, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$723	.dwtag  DW_TAG_member
	.dwattr $C$DW$723, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$723, DW_AT_name("rsvd2")
	.dwattr $C$DW$723, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$723, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$723, DW_AT_bit_size(0x01)
	.dwattr $C$DW$723, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$723, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$724	.dwtag  DW_TAG_member
	.dwattr $C$DW$724, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$724, DW_AT_name("rsvd3")
	.dwattr $C$DW$724, DW_AT_TI_symbol_name("_rsvd3")
	.dwattr $C$DW$724, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$724, DW_AT_bit_size(0x0b)
	.dwattr $C$DW$724, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$724, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$725	.dwtag  DW_TAG_member
	.dwattr $C$DW$725, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$725, DW_AT_name("rsvd4")
	.dwattr $C$DW$725, DW_AT_TI_symbol_name("_rsvd4")
	.dwattr $C$DW$725, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$725, DW_AT_bit_size(0x10)
	.dwattr $C$DW$725, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$725, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$90


$C$DW$T$91	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$91, DW_AT_name("MSGxINIT_REG")
	.dwattr $C$DW$T$91, DW_AT_byte_size(0x02)
$C$DW$726	.dwtag  DW_TAG_member
	.dwattr $C$DW$726, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$726, DW_AT_name("all")
	.dwattr $C$DW$726, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$726, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$726, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$727	.dwtag  DW_TAG_member
	.dwattr $C$DW$727, DW_AT_type(*$C$DW$T$90)
	.dwattr $C$DW$727, DW_AT_name("bit")
	.dwattr $C$DW$727, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$727, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$727, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$91


$C$DW$T$92	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$92, DW_AT_name("MSGxTEST_BITS")
	.dwattr $C$DW$T$92, DW_AT_byte_size(0x02)
$C$DW$728	.dwtag  DW_TAG_member
	.dwattr $C$DW$728, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$728, DW_AT_name("TEST_CPUTOCPU")
	.dwattr $C$DW$728, DW_AT_TI_symbol_name("_TEST_CPUTOCPU")
	.dwattr $C$DW$728, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$728, DW_AT_bit_size(0x02)
	.dwattr $C$DW$728, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$728, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$729	.dwtag  DW_TAG_member
	.dwattr $C$DW$729, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$729, DW_AT_name("TEST_CPUTOCLA1")
	.dwattr $C$DW$729, DW_AT_TI_symbol_name("_TEST_CPUTOCLA1")
	.dwattr $C$DW$729, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$729, DW_AT_bit_size(0x02)
	.dwattr $C$DW$729, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$729, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$730	.dwtag  DW_TAG_member
	.dwattr $C$DW$730, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$730, DW_AT_name("TEST_CLA1TOCPU")
	.dwattr $C$DW$730, DW_AT_TI_symbol_name("_TEST_CLA1TOCPU")
	.dwattr $C$DW$730, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$730, DW_AT_bit_size(0x02)
	.dwattr $C$DW$730, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$730, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$731	.dwtag  DW_TAG_member
	.dwattr $C$DW$731, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$731, DW_AT_name("rsvd1")
	.dwattr $C$DW$731, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$731, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$731, DW_AT_bit_size(0x02)
	.dwattr $C$DW$731, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$731, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$732	.dwtag  DW_TAG_member
	.dwattr $C$DW$732, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$732, DW_AT_name("rsvd2")
	.dwattr $C$DW$732, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$732, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$732, DW_AT_bit_size(0x02)
	.dwattr $C$DW$732, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$732, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$733	.dwtag  DW_TAG_member
	.dwattr $C$DW$733, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$733, DW_AT_name("rsvd3")
	.dwattr $C$DW$733, DW_AT_TI_symbol_name("_rsvd3")
	.dwattr $C$DW$733, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$733, DW_AT_bit_size(0x06)
	.dwattr $C$DW$733, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$733, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$734	.dwtag  DW_TAG_member
	.dwattr $C$DW$734, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$734, DW_AT_name("rsvd4")
	.dwattr $C$DW$734, DW_AT_TI_symbol_name("_rsvd4")
	.dwattr $C$DW$734, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$734, DW_AT_bit_size(0x10)
	.dwattr $C$DW$734, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$734, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$92


$C$DW$T$93	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$93, DW_AT_name("MSGxTEST_REG")
	.dwattr $C$DW$T$93, DW_AT_byte_size(0x02)
$C$DW$735	.dwtag  DW_TAG_member
	.dwattr $C$DW$735, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$735, DW_AT_name("all")
	.dwattr $C$DW$735, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$735, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$735, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$736	.dwtag  DW_TAG_member
	.dwattr $C$DW$736, DW_AT_type(*$C$DW$T$92)
	.dwattr $C$DW$736, DW_AT_name("bit")
	.dwattr $C$DW$736, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$736, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$736, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$93

$C$DW$T$2	.dwtag  DW_TAG_unspecified_type
	.dwattr $C$DW$T$2, DW_AT_name("void")

$C$DW$T$3	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$3, DW_AT_type(*$C$DW$T$2)
	.dwattr $C$DW$T$3, DW_AT_address_class(0x20)

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


$C$DW$T$63	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$63, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$63, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$63, DW_AT_byte_size(0x02)
$C$DW$737	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$737, DW_AT_upper_bound(0x01)

	.dwendtag $C$DW$T$63


$C$DW$T$83	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$83, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$83, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$83, DW_AT_byte_size(0x04)
$C$DW$738	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$738, DW_AT_upper_bound(0x03)

	.dwendtag $C$DW$T$83


$C$DW$T$84	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$84, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$84, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$84, DW_AT_byte_size(0x06)
$C$DW$739	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$739, DW_AT_upper_bound(0x05)

	.dwendtag $C$DW$T$84


$C$DW$T$85	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$85, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$85, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$85, DW_AT_byte_size(0x0a)
$C$DW$740	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$740, DW_AT_upper_bound(0x09)

	.dwendtag $C$DW$T$85


$C$DW$T$86	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$86, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$86, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$86, DW_AT_byte_size(0x1a)
$C$DW$741	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$741, DW_AT_upper_bound(0x19)

	.dwendtag $C$DW$T$86

$C$DW$T$105	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$105, DW_AT_name("__uint16_t")
	.dwattr $C$DW$T$105, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$105, DW_AT_language(DW_LANG_C)

$C$DW$T$106	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$106, DW_AT_name("uint16_t")
	.dwattr $C$DW$T$106, DW_AT_type(*$C$DW$T$105)
	.dwattr $C$DW$T$106, DW_AT_language(DW_LANG_C)

$C$DW$T$112	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$112, DW_AT_type(*$C$DW$T$106)
	.dwattr $C$DW$T$112, DW_AT_address_class(0x20)

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

$C$DW$T$101	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$101, DW_AT_name("__uint32_t")
	.dwattr $C$DW$T$101, DW_AT_type(*$C$DW$T$13)
	.dwattr $C$DW$T$101, DW_AT_language(DW_LANG_C)

$C$DW$T$102	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$102, DW_AT_name("uint32_t")
	.dwattr $C$DW$T$102, DW_AT_type(*$C$DW$T$101)
	.dwattr $C$DW$T$102, DW_AT_language(DW_LANG_C)

$C$DW$T$114	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$114, DW_AT_type(*$C$DW$T$102)
	.dwattr $C$DW$T$114, DW_AT_address_class(0x20)


$C$DW$T$115	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$115, DW_AT_type(*$C$DW$T$102)
	.dwattr $C$DW$T$115, DW_AT_language(DW_LANG_C)
$C$DW$742	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$742, DW_AT_type(*$C$DW$T$102)

	.dwendtag $C$DW$T$115

$C$DW$T$116	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$116, DW_AT_type(*$C$DW$T$115)
	.dwattr $C$DW$T$116, DW_AT_address_class(0x20)

$C$DW$T$117	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$117, DW_AT_name("tfIpcFuncCall")
	.dwattr $C$DW$T$117, DW_AT_type(*$C$DW$T$116)
	.dwattr $C$DW$T$117, DW_AT_language(DW_LANG_C)

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

$C$DW$743	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$743, DW_AT_name("AL")
	.dwattr $C$DW$743, DW_AT_location[DW_OP_reg0]

$C$DW$744	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$744, DW_AT_name("AH")
	.dwattr $C$DW$744, DW_AT_location[DW_OP_reg1]

$C$DW$745	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$745, DW_AT_name("PL")
	.dwattr $C$DW$745, DW_AT_location[DW_OP_reg2]

$C$DW$746	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$746, DW_AT_name("PH")
	.dwattr $C$DW$746, DW_AT_location[DW_OP_reg3]

$C$DW$747	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$747, DW_AT_name("SP")
	.dwattr $C$DW$747, DW_AT_location[DW_OP_reg20]

$C$DW$748	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$748, DW_AT_name("XT")
	.dwattr $C$DW$748, DW_AT_location[DW_OP_reg21]

$C$DW$749	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$749, DW_AT_name("T")
	.dwattr $C$DW$749, DW_AT_location[DW_OP_reg22]

$C$DW$750	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$750, DW_AT_name("ST0")
	.dwattr $C$DW$750, DW_AT_location[DW_OP_reg23]

$C$DW$751	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$751, DW_AT_name("ST1")
	.dwattr $C$DW$751, DW_AT_location[DW_OP_reg24]

$C$DW$752	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$752, DW_AT_name("PC")
	.dwattr $C$DW$752, DW_AT_location[DW_OP_reg25]

$C$DW$753	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$753, DW_AT_name("RPC")
	.dwattr $C$DW$753, DW_AT_location[DW_OP_reg26]

$C$DW$754	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$754, DW_AT_name("FP")
	.dwattr $C$DW$754, DW_AT_location[DW_OP_reg28]

$C$DW$755	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$755, DW_AT_name("DP")
	.dwattr $C$DW$755, DW_AT_location[DW_OP_reg29]

$C$DW$756	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$756, DW_AT_name("SXM")
	.dwattr $C$DW$756, DW_AT_location[DW_OP_reg30]

$C$DW$757	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$757, DW_AT_name("PM")
	.dwattr $C$DW$757, DW_AT_location[DW_OP_reg31]

$C$DW$758	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$758, DW_AT_name("OVM")
	.dwattr $C$DW$758, DW_AT_location[DW_OP_regx 0x20]

$C$DW$759	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$759, DW_AT_name("PAGE0")
	.dwattr $C$DW$759, DW_AT_location[DW_OP_regx 0x21]

$C$DW$760	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$760, DW_AT_name("AMODE")
	.dwattr $C$DW$760, DW_AT_location[DW_OP_regx 0x22]

$C$DW$761	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$761, DW_AT_name("EALLOW")
	.dwattr $C$DW$761, DW_AT_location[DW_OP_regx 0x4e]

$C$DW$762	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$762, DW_AT_name("INTM")
	.dwattr $C$DW$762, DW_AT_location[DW_OP_regx 0x23]

$C$DW$763	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$763, DW_AT_name("IFR")
	.dwattr $C$DW$763, DW_AT_location[DW_OP_regx 0x24]

$C$DW$764	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$764, DW_AT_name("IER")
	.dwattr $C$DW$764, DW_AT_location[DW_OP_regx 0x25]

$C$DW$765	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$765, DW_AT_name("V")
	.dwattr $C$DW$765, DW_AT_location[DW_OP_regx 0x26]

$C$DW$766	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$766, DW_AT_name("PSEUDOH")
	.dwattr $C$DW$766, DW_AT_location[DW_OP_regx 0x4c]

$C$DW$767	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$767, DW_AT_name("VOL")
	.dwattr $C$DW$767, DW_AT_location[DW_OP_regx 0x4d]

$C$DW$768	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$768, DW_AT_name("AR0")
	.dwattr $C$DW$768, DW_AT_location[DW_OP_reg4]

$C$DW$769	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$769, DW_AT_name("XAR0")
	.dwattr $C$DW$769, DW_AT_location[DW_OP_reg5]

$C$DW$770	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$770, DW_AT_name("AR1")
	.dwattr $C$DW$770, DW_AT_location[DW_OP_reg6]

$C$DW$771	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$771, DW_AT_name("XAR1")
	.dwattr $C$DW$771, DW_AT_location[DW_OP_reg7]

$C$DW$772	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$772, DW_AT_name("AR2")
	.dwattr $C$DW$772, DW_AT_location[DW_OP_reg8]

$C$DW$773	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$773, DW_AT_name("XAR2")
	.dwattr $C$DW$773, DW_AT_location[DW_OP_reg9]

$C$DW$774	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$774, DW_AT_name("AR3")
	.dwattr $C$DW$774, DW_AT_location[DW_OP_reg10]

$C$DW$775	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$775, DW_AT_name("XAR3")
	.dwattr $C$DW$775, DW_AT_location[DW_OP_reg11]

$C$DW$776	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$776, DW_AT_name("AR4")
	.dwattr $C$DW$776, DW_AT_location[DW_OP_reg12]

$C$DW$777	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$777, DW_AT_name("XAR4")
	.dwattr $C$DW$777, DW_AT_location[DW_OP_reg13]

$C$DW$778	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$778, DW_AT_name("AR5")
	.dwattr $C$DW$778, DW_AT_location[DW_OP_reg14]

$C$DW$779	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$779, DW_AT_name("XAR5")
	.dwattr $C$DW$779, DW_AT_location[DW_OP_reg15]

$C$DW$780	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$780, DW_AT_name("AR6")
	.dwattr $C$DW$780, DW_AT_location[DW_OP_reg16]

$C$DW$781	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$781, DW_AT_name("XAR6")
	.dwattr $C$DW$781, DW_AT_location[DW_OP_reg17]

$C$DW$782	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$782, DW_AT_name("AR7")
	.dwattr $C$DW$782, DW_AT_location[DW_OP_reg18]

$C$DW$783	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$783, DW_AT_name("XAR7")
	.dwattr $C$DW$783, DW_AT_location[DW_OP_reg19]

$C$DW$784	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$784, DW_AT_name("R0H")
	.dwattr $C$DW$784, DW_AT_location[DW_OP_regx 0x2b]

$C$DW$785	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$785, DW_AT_name("R1H")
	.dwattr $C$DW$785, DW_AT_location[DW_OP_regx 0x2f]

$C$DW$786	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$786, DW_AT_name("R2H")
	.dwattr $C$DW$786, DW_AT_location[DW_OP_regx 0x33]

$C$DW$787	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$787, DW_AT_name("R3H")
	.dwattr $C$DW$787, DW_AT_location[DW_OP_regx 0x37]

$C$DW$788	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$788, DW_AT_name("R4H")
	.dwattr $C$DW$788, DW_AT_location[DW_OP_regx 0x3b]

$C$DW$789	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$789, DW_AT_name("R5H")
	.dwattr $C$DW$789, DW_AT_location[DW_OP_regx 0x3f]

$C$DW$790	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$790, DW_AT_name("R6H")
	.dwattr $C$DW$790, DW_AT_location[DW_OP_regx 0x43]

$C$DW$791	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$791, DW_AT_name("R7H")
	.dwattr $C$DW$791, DW_AT_location[DW_OP_regx 0x47]

$C$DW$792	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$792, DW_AT_name("RB")
	.dwattr $C$DW$792, DW_AT_location[DW_OP_regx 0x4a]

$C$DW$793	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$793, DW_AT_name("STF")
	.dwattr $C$DW$793, DW_AT_location[DW_OP_regx 0x28]

$C$DW$794	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$794, DW_AT_name("FPUHAZ")
	.dwattr $C$DW$794, DW_AT_location[DW_OP_reg27]

$C$DW$795	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$795, DW_AT_name("STF_HWDIV")
	.dwattr $C$DW$795, DW_AT_location[DW_OP_regx 0x4f]

	.dwendtag $C$DW$CU

