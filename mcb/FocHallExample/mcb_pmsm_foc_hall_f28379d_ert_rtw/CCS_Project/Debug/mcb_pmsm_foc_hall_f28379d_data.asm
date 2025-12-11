;***************************************************************
;* TMS320C2000 G3 C/C++ Codegen                               PC v22.6.0.LTS *
;* Date/Time created: Thu Nov 20 18:10:13 2025                 *
;***************************************************************
	.compiler_opts --abi=coffabi --float_support=fpu32 --hll_source=on --mem_model:code=flat --mem_model:data=large --object_format=coff --silicon_errata_fpu1_workaround=off --silicon_version=28 --symdebug:dwarf --symdebug:dwarf_version=3 --tmu_support=tmu0 
	.asg	XAR2, FP

$C$DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr $C$DW$CU, DW_AT_name("C:/Users/13571/Documents/MATLAB/Examples/R2023b/mcb/FocHallExample/mcb_pmsm_foc_hall_f28379d_ert_rtw/mcb_pmsm_foc_hall_f28379d_data.c")
	.dwattr $C$DW$CU, DW_AT_producer("TI TMS320C2000 G3 C/C++ Codegen PC v22.6.0.LTS Copyright (c) 1996-2018 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("C:\Users\13571\Documents\MATLAB\Examples\R2023b\mcb\FocHallExample\mcb_pmsm_foc_hall_f28379d_ert_rtw\CCS_Project\Debug")
	.global	_mcb_pmsm_foc_hall_f28379_ConstB
	.sect	".econst:_mcb_pmsm_foc_hall_f28379_ConstB"
	.clink
	.align	2
	.elfsym	_mcb_pmsm_foc_hall_f28379_ConstB,SYM_SIZE(4)
_mcb_pmsm_foc_hall_f28379_ConstB:
	.bits		0x2,32
			; _mcb_pmsm_foc_hall_f28379_ConstB._Width @ 0
	.xfloat	$strtod("0x1.7d784p+24")		; _mcb_pmsm_foc_hall_f28379_ConstB._SpeedConstData @ 32

$C$DW$1	.dwtag  DW_TAG_variable
	.dwattr $C$DW$1, DW_AT_name("mcb_pmsm_foc_hall_f28379_ConstB")
	.dwattr $C$DW$1, DW_AT_TI_symbol_name("_mcb_pmsm_foc_hall_f28379_ConstB")
	.dwattr $C$DW$1, DW_AT_location[DW_OP_addr _mcb_pmsm_foc_hall_f28379_ConstB]
	.dwattr $C$DW$1, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$1, DW_AT_external

	.global	_mcb_pmsm_foc_hall_f28379_ConstP
	.sect	".econst:_mcb_pmsm_foc_hall_f28379_ConstP"
	.clink
	.align	2
	.elfsym	_mcb_pmsm_foc_hall_f28379_ConstP,SYM_SIZE(2004)
_mcb_pmsm_foc_hall_f28379_ConstP:
	.xfloat	$strtod("0x0p+0")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[0] @ 0
	.xfloat	$strtod("0x1.015b4cp-7")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[1] @ 32
	.xfloat	$strtod("0x1.015944p-6")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[2] @ 64
	.xfloat	$strtod("0x1.8200dp-6")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[3] @ 96
	.xfloat	$strtod("0x1.015122p-5")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[4] @ 128
	.xfloat	$strtod("0x1.419dcep-5")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[5] @ 160
	.xfloat	$strtod("0x1.81e564p-5")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[6] @ 192
	.xfloat	$strtod("0x1.c226e2p-5")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[7] @ 224
	.xfloat	$strtod("0x1.0130a2p-4")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[8] @ 256
	.xfloat	$strtod("0x1.2149c4p-4")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[9] @ 288
	.xfloat	$strtod("0x1.415e54p-4")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[10] @ 320
	.xfloat	$strtod("0x1.616ddp-4")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[11] @ 352
	.xfloat	$strtod("0x1.8177b8p-4")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[12] @ 384
	.xfloat	$strtod("0x1.a17b8ap-4")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[13] @ 416
	.xfloat	$strtod("0x1.c178c4p-4")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[14] @ 448
	.xfloat	$strtod("0x1.e16ee4p-4")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[15] @ 480
	.xfloat	$strtod("0x1.00aeb6p-3")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[16] @ 512
	.xfloat	$strtod("0x1.10a1ecp-3")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[17] @ 544
	.xfloat	$strtod("0x1.2090d4p-3")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[18] @ 576
	.xfloat	$strtod("0x1.307b2cp-3")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[19] @ 608
	.xfloat	$strtod("0x1.4060b6p-3")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[20] @ 640
	.xfloat	$strtod("0x1.504132p-3")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[21] @ 672
	.xfloat	$strtod("0x1.601c5ep-3")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[22] @ 704
	.xfloat	$strtod("0x1.6ff1fap-3")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[23] @ 736
	.xfloat	$strtod("0x1.7fc1c6p-3")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[24] @ 768
	.xfloat	$strtod("0x1.8f8b84p-3")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[25] @ 800
	.xfloat	$strtod("0x1.9f4ef2p-3")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[26] @ 832
	.xfloat	$strtod("0x1.af0bd2p-3")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[27] @ 864
	.xfloat	$strtod("0x1.bec1e2p-3")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[28] @ 896
	.xfloat	$strtod("0x1.ce70e6p-3")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[29] @ 928
	.xfloat	$strtod("0x1.de189ap-3")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[30] @ 960
	.xfloat	$strtod("0x1.edb8c2p-3")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[31] @ 992
	.xfloat	$strtod("0x1.fd512p-3")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[32] @ 1024
	.xfloat	$strtod("0x1.0670b8p-2")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[33] @ 1056
	.xfloat	$strtod("0x1.0e34bcp-2")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[34] @ 1088
	.xfloat	$strtod("0x1.15f47cp-2")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[35] @ 1120
	.xfloat	$strtod("0x1.1dafd8p-2")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[36] @ 1152
	.xfloat	$strtod("0x1.2566b2p-2")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[37] @ 1184
	.xfloat	$strtod("0x1.2d18e8p-2")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[38] @ 1216
	.xfloat	$strtod("0x1.34c65ep-2")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[39] @ 1248
	.xfloat	$strtod("0x1.3c6ef4p-2")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[40] @ 1280
	.xfloat	$strtod("0x1.44128ap-2")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[41] @ 1312
	.xfloat	$strtod("0x1.4bb102p-2")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[42] @ 1344
	.xfloat	$strtod("0x1.534a3ep-2")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[43] @ 1376
	.xfloat	$strtod("0x1.5ade1ep-2")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[44] @ 1408
	.xfloat	$strtod("0x1.626c82p-2")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[45] @ 1440
	.xfloat	$strtod("0x1.69f55p-2")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[46] @ 1472
	.xfloat	$strtod("0x1.717864p-2")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[47] @ 1504
	.xfloat	$strtod("0x1.78f5a4p-2")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[48] @ 1536
	.xfloat	$strtod("0x1.806cfp-2")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[49] @ 1568
	.xfloat	$strtod("0x1.87de2ap-2")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[50] @ 1600
	.xfloat	$strtod("0x1.8f4934p-2")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[51] @ 1632
	.xfloat	$strtod("0x1.96adfp-2")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[52] @ 1664
	.xfloat	$strtod("0x1.9e0c4p-2")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[53] @ 1696
	.xfloat	$strtod("0x1.a56406p-2")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[54] @ 1728
	.xfloat	$strtod("0x1.acb524p-2")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[55] @ 1760
	.xfloat	$strtod("0x1.b3ff7cp-2")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[56] @ 1792
	.xfloat	$strtod("0x1.bb42f4p-2")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[57] @ 1824
	.xfloat	$strtod("0x1.c27f6ap-2")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[58] @ 1856
	.xfloat	$strtod("0x1.c9b4c4p-2")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[59] @ 1888
	.xfloat	$strtod("0x1.d0e2e2p-2")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[60] @ 1920
	.xfloat	$strtod("0x1.d809aap-2")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[61] @ 1952
	.xfloat	$strtod("0x1.df28fep-2")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[62] @ 1984
	.xfloat	$strtod("0x1.e640cp-2")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[63] @ 2016
	.xfloat	$strtod("0x1.ed50d6p-2")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[64] @ 2048
	.xfloat	$strtod("0x1.f4592p-2")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[65] @ 2080
	.xfloat	$strtod("0x1.fb5984p-2")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[66] @ 2112
	.xfloat	$strtod("0x1.0128f2p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[67] @ 2144
	.xfloat	$strtod("0x1.04a114p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[68] @ 2176
	.xfloat	$strtod("0x1.081516p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[69] @ 2208
	.xfloat	$strtod("0x1.0b84eep-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[70] @ 2240
	.xfloat	$strtod("0x1.0ef08cp-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[71] @ 2272
	.xfloat	$strtod("0x1.1257e4p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[72] @ 2304
	.xfloat	$strtod("0x1.15bae6p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[73] @ 2336
	.xfloat	$strtod("0x1.191984p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[74] @ 2368
	.xfloat	$strtod("0x1.1c73b4p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[75] @ 2400
	.xfloat	$strtod("0x1.1fc964p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[76] @ 2432
	.xfloat	$strtod("0x1.231a8ap-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[77] @ 2464
	.xfloat	$strtod("0x1.266716p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[78] @ 2496
	.xfloat	$strtod("0x1.29aefep-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[79] @ 2528
	.xfloat	$strtod("0x1.2cf23p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[80] @ 2560
	.xfloat	$strtod("0x1.3030a2p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[81] @ 2592
	.xfloat	$strtod("0x1.336a48p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[82] @ 2624
	.xfloat	$strtod("0x1.369f12p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[83] @ 2656
	.xfloat	$strtod("0x1.39cef4p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[84] @ 2688
	.xfloat	$strtod("0x1.3cf9e2p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[85] @ 2720
	.xfloat	$strtod("0x1.401fcep-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[86] @ 2752
	.xfloat	$strtod("0x1.4340acp-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[87] @ 2784
	.xfloat	$strtod("0x1.465c7p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[88] @ 2816
	.xfloat	$strtod("0x1.49730cp-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[89] @ 2848
	.xfloat	$strtod("0x1.4c8474p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[90] @ 2880
	.xfloat	$strtod("0x1.4f909cp-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[91] @ 2912
	.xfloat	$strtod("0x1.529778p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[92] @ 2944
	.xfloat	$strtod("0x1.5598fap-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[93] @ 2976
	.xfloat	$strtod("0x1.589518p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[94] @ 3008
	.xfloat	$strtod("0x1.5b8bc6p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[95] @ 3040
	.xfloat	$strtod("0x1.5e7cf6p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[96] @ 3072
	.xfloat	$strtod("0x1.61689cp-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[97] @ 3104
	.xfloat	$strtod("0x1.644eaep-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[98] @ 3136
	.xfloat	$strtod("0x1.672f2p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[99] @ 3168
	.xfloat	$strtod("0x1.6a09e6p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[100] @ 3200
	.xfloat	$strtod("0x1.6cdef4p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[101] @ 3232
	.xfloat	$strtod("0x1.6fae4p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[102] @ 3264
	.xfloat	$strtod("0x1.7277bcp-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[103] @ 3296
	.xfloat	$strtod("0x1.753b6p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[104] @ 3328
	.xfloat	$strtod("0x1.77f91ep-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[105] @ 3360
	.xfloat	$strtod("0x1.7ab0eep-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[106] @ 3392
	.xfloat	$strtod("0x1.7d62cp-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[107] @ 3424
	.xfloat	$strtod("0x1.800e8ep-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[108] @ 3456
	.xfloat	$strtod("0x1.82b44cp-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[109] @ 3488
	.xfloat	$strtod("0x1.8553eep-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[110] @ 3520
	.xfloat	$strtod("0x1.87ed6ap-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[111] @ 3552
	.xfloat	$strtod("0x1.8a80b6p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[112] @ 3584
	.xfloat	$strtod("0x1.8d0dc8p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[113] @ 3616
	.xfloat	$strtod("0x1.8f9494p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[114] @ 3648
	.xfloat	$strtod("0x1.92151p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[115] @ 3680
	.xfloat	$strtod("0x1.948f32p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[116] @ 3712
	.xfloat	$strtod("0x1.9702f2p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[117] @ 3744
	.xfloat	$strtod("0x1.997044p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[118] @ 3776
	.xfloat	$strtod("0x1.9bd72p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[119] @ 3808
	.xfloat	$strtod("0x1.9e377ap-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[120] @ 3840
	.xfloat	$strtod("0x1.a0914ap-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[121] @ 3872
	.xfloat	$strtod("0x1.a2e486p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[122] @ 3904
	.xfloat	$strtod("0x1.a53124p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[123] @ 3936
	.xfloat	$strtod("0x1.a7771ap-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[124] @ 3968
	.xfloat	$strtod("0x1.a9b662p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[125] @ 4000
	.xfloat	$strtod("0x1.abeef2p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[126] @ 4032
	.xfloat	$strtod("0x1.ae20bep-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[127] @ 4064
	.xfloat	$strtod("0x1.b04bcp-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[128] @ 4096
	.xfloat	$strtod("0x1.b26feep-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[129] @ 4128
	.xfloat	$strtod("0x1.b48d4p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[130] @ 4160
	.xfloat	$strtod("0x1.b6a3aep-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[131] @ 4192
	.xfloat	$strtod("0x1.b8b32ep-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[132] @ 4224
	.xfloat	$strtod("0x1.babbb8p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[133] @ 4256
	.xfloat	$strtod("0x1.bcbd46p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[134] @ 4288
	.xfloat	$strtod("0x1.beb7ccp-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[135] @ 4320
	.xfloat	$strtod("0x1.c0ab44p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[136] @ 4352
	.xfloat	$strtod("0x1.c297a8p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[137] @ 4384
	.xfloat	$strtod("0x1.c47ceep-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[138] @ 4416
	.xfloat	$strtod("0x1.c65b0ep-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[139] @ 4448
	.xfloat	$strtod("0x1.c83202p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[140] @ 4480
	.xfloat	$strtod("0x1.ca01c2p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[141] @ 4512
	.xfloat	$strtod("0x1.cbca46p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[142] @ 4544
	.xfloat	$strtod("0x1.cd8b86p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[143] @ 4576
	.xfloat	$strtod("0x1.cf457ep-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[144] @ 4608
	.xfloat	$strtod("0x1.d0f824p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[145] @ 4640
	.xfloat	$strtod("0x1.d2a374p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[146] @ 4672
	.xfloat	$strtod("0x1.d44764p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[147] @ 4704
	.xfloat	$strtod("0x1.d5e3fp-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[148] @ 4736
	.xfloat	$strtod("0x1.d7791p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[149] @ 4768
	.xfloat	$strtod("0x1.d906bcp-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[150] @ 4800
	.xfloat	$strtod("0x1.da8cf2p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[151] @ 4832
	.xfloat	$strtod("0x1.dc0baap-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[152] @ 4864
	.xfloat	$strtod("0x1.dd82dcp-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[153] @ 4896
	.xfloat	$strtod("0x1.def286p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[154] @ 4928
	.xfloat	$strtod("0x1.e05a9ep-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[155] @ 4960
	.xfloat	$strtod("0x1.e1bb2p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[156] @ 4992
	.xfloat	$strtod("0x1.e31406p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[157] @ 5024
	.xfloat	$strtod("0x1.e4654cp-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[158] @ 5056
	.xfloat	$strtod("0x1.e5aeecp-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[159] @ 5088
	.xfloat	$strtod("0x1.e6f0e2p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[160] @ 5120
	.xfloat	$strtod("0x1.e82b26p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[161] @ 5152
	.xfloat	$strtod("0x1.e95db4p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[162] @ 5184
	.xfloat	$strtod("0x1.ea8888p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[163] @ 5216
	.xfloat	$strtod("0x1.ebab9ep-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[164] @ 5248
	.xfloat	$strtod("0x1.ecc6eep-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[165] @ 5280
	.xfloat	$strtod("0x1.edda78p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[166] @ 5312
	.xfloat	$strtod("0x1.eee636p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[167] @ 5344
	.xfloat	$strtod("0x1.efea22p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[168] @ 5376
	.xfloat	$strtod("0x1.f0e63ap-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[169] @ 5408
	.xfloat	$strtod("0x1.f1da78p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[170] @ 5440
	.xfloat	$strtod("0x1.f2c6dap-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[171] @ 5472
	.xfloat	$strtod("0x1.f3ab5cp-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[172] @ 5504
	.xfloat	$strtod("0x1.f487fap-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[173] @ 5536
	.xfloat	$strtod("0x1.f55cb2p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[174] @ 5568
	.xfloat	$strtod("0x1.f6297cp-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[175] @ 5600
	.xfloat	$strtod("0x1.f6ee5ap-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[176] @ 5632
	.xfloat	$strtod("0x1.f7ab48p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[177] @ 5664
	.xfloat	$strtod("0x1.f8604p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[178] @ 5696
	.xfloat	$strtod("0x1.f90d42p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[179] @ 5728
	.xfloat	$strtod("0x1.f9b24ap-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[180] @ 5760
	.xfloat	$strtod("0x1.fa4f54p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[181] @ 5792
	.xfloat	$strtod("0x1.fae462p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[182] @ 5824
	.xfloat	$strtod("0x1.fb716ep-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[183] @ 5856
	.xfloat	$strtod("0x1.fbf676p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[184] @ 5888
	.xfloat	$strtod("0x1.fc7378p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[185] @ 5920
	.xfloat	$strtod("0x1.fce874p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[186] @ 5952
	.xfloat	$strtod("0x1.fd5566p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[187] @ 5984
	.xfloat	$strtod("0x1.fdba4cp-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[188] @ 6016
	.xfloat	$strtod("0x1.fe1726p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[189] @ 6048
	.xfloat	$strtod("0x1.fe6bf2p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[190] @ 6080
	.xfloat	$strtod("0x1.feb8bp-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[191] @ 6112
	.xfloat	$strtod("0x1.fefd5cp-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[192] @ 6144
	.xfloat	$strtod("0x1.ff39f6p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[193] @ 6176
	.xfloat	$strtod("0x1.ff6e7ep-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[194] @ 6208
	.xfloat	$strtod("0x1.ff9af2p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[195] @ 6240
	.xfloat	$strtod("0x1.ffbf52p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[196] @ 6272
	.xfloat	$strtod("0x1.ffdb9ep-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[197] @ 6304
	.xfloat	$strtod("0x1.ffefd4p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[198] @ 6336
	.xfloat	$strtod("0x1.fffbf6p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[199] @ 6368
	.xfloat	$strtod("0x1p+0")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[200] @ 6400
	.xfloat	$strtod("0x1.fffbf6p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[201] @ 6432
	.xfloat	$strtod("0x1.ffefd4p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[202] @ 6464
	.xfloat	$strtod("0x1.ffdb9ep-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[203] @ 6496
	.xfloat	$strtod("0x1.ffbf52p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[204] @ 6528
	.xfloat	$strtod("0x1.ff9af2p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[205] @ 6560
	.xfloat	$strtod("0x1.ff6e7ep-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[206] @ 6592
	.xfloat	$strtod("0x1.ff39f6p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[207] @ 6624
	.xfloat	$strtod("0x1.fefd5cp-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[208] @ 6656
	.xfloat	$strtod("0x1.feb8bp-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[209] @ 6688
	.xfloat	$strtod("0x1.fe6bf2p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[210] @ 6720
	.xfloat	$strtod("0x1.fe1726p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[211] @ 6752
	.xfloat	$strtod("0x1.fdba4cp-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[212] @ 6784
	.xfloat	$strtod("0x1.fd5566p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[213] @ 6816
	.xfloat	$strtod("0x1.fce874p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[214] @ 6848
	.xfloat	$strtod("0x1.fc7378p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[215] @ 6880
	.xfloat	$strtod("0x1.fbf676p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[216] @ 6912
	.xfloat	$strtod("0x1.fb716ep-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[217] @ 6944
	.xfloat	$strtod("0x1.fae462p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[218] @ 6976
	.xfloat	$strtod("0x1.fa4f54p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[219] @ 7008
	.xfloat	$strtod("0x1.f9b24ap-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[220] @ 7040
	.xfloat	$strtod("0x1.f90d42p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[221] @ 7072
	.xfloat	$strtod("0x1.f8604p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[222] @ 7104
	.xfloat	$strtod("0x1.f7ab48p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[223] @ 7136
	.xfloat	$strtod("0x1.f6ee5ap-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[224] @ 7168
	.xfloat	$strtod("0x1.f6297cp-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[225] @ 7200
	.xfloat	$strtod("0x1.f55cb2p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[226] @ 7232
	.xfloat	$strtod("0x1.f487fap-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[227] @ 7264
	.xfloat	$strtod("0x1.f3ab5cp-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[228] @ 7296
	.xfloat	$strtod("0x1.f2c6dap-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[229] @ 7328
	.xfloat	$strtod("0x1.f1da78p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[230] @ 7360
	.xfloat	$strtod("0x1.f0e63ap-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[231] @ 7392
	.xfloat	$strtod("0x1.efea22p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[232] @ 7424
	.xfloat	$strtod("0x1.eee636p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[233] @ 7456
	.xfloat	$strtod("0x1.edda78p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[234] @ 7488
	.xfloat	$strtod("0x1.ecc6eep-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[235] @ 7520
	.xfloat	$strtod("0x1.ebab9ep-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[236] @ 7552
	.xfloat	$strtod("0x1.ea8888p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[237] @ 7584
	.xfloat	$strtod("0x1.e95db4p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[238] @ 7616
	.xfloat	$strtod("0x1.e82b26p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[239] @ 7648
	.xfloat	$strtod("0x1.e6f0e2p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[240] @ 7680
	.xfloat	$strtod("0x1.e5aeecp-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[241] @ 7712
	.xfloat	$strtod("0x1.e4654cp-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[242] @ 7744
	.xfloat	$strtod("0x1.e31406p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[243] @ 7776
	.xfloat	$strtod("0x1.e1bb2p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[244] @ 7808
	.xfloat	$strtod("0x1.e05a9ep-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[245] @ 7840
	.xfloat	$strtod("0x1.def286p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[246] @ 7872
	.xfloat	$strtod("0x1.dd82dcp-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[247] @ 7904
	.xfloat	$strtod("0x1.dc0baap-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[248] @ 7936
	.xfloat	$strtod("0x1.da8cf2p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[249] @ 7968
	.xfloat	$strtod("0x1.d906bcp-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[250] @ 8000
	.xfloat	$strtod("0x1.d7791p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[251] @ 8032
	.xfloat	$strtod("0x1.d5e3fp-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[252] @ 8064
	.xfloat	$strtod("0x1.d44764p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[253] @ 8096
	.xfloat	$strtod("0x1.d2a374p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[254] @ 8128
	.xfloat	$strtod("0x1.d0f824p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[255] @ 8160
	.xfloat	$strtod("0x1.cf457ep-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[256] @ 8192
	.xfloat	$strtod("0x1.cd8b86p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[257] @ 8224
	.xfloat	$strtod("0x1.cbca46p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[258] @ 8256
	.xfloat	$strtod("0x1.ca01c2p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[259] @ 8288
	.xfloat	$strtod("0x1.c83202p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[260] @ 8320
	.xfloat	$strtod("0x1.c65b0ep-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[261] @ 8352
	.xfloat	$strtod("0x1.c47ceep-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[262] @ 8384
	.xfloat	$strtod("0x1.c297a8p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[263] @ 8416
	.xfloat	$strtod("0x1.c0ab44p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[264] @ 8448
	.xfloat	$strtod("0x1.beb7ccp-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[265] @ 8480
	.xfloat	$strtod("0x1.bcbd46p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[266] @ 8512
	.xfloat	$strtod("0x1.babbb8p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[267] @ 8544
	.xfloat	$strtod("0x1.b8b32ep-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[268] @ 8576
	.xfloat	$strtod("0x1.b6a3aep-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[269] @ 8608
	.xfloat	$strtod("0x1.b48d4p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[270] @ 8640
	.xfloat	$strtod("0x1.b26feep-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[271] @ 8672
	.xfloat	$strtod("0x1.b04bcp-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[272] @ 8704
	.xfloat	$strtod("0x1.ae20bep-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[273] @ 8736
	.xfloat	$strtod("0x1.abeef2p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[274] @ 8768
	.xfloat	$strtod("0x1.a9b662p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[275] @ 8800
	.xfloat	$strtod("0x1.a7771ap-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[276] @ 8832
	.xfloat	$strtod("0x1.a53124p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[277] @ 8864
	.xfloat	$strtod("0x1.a2e486p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[278] @ 8896
	.xfloat	$strtod("0x1.a0914ap-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[279] @ 8928
	.xfloat	$strtod("0x1.9e377ap-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[280] @ 8960
	.xfloat	$strtod("0x1.9bd72p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[281] @ 8992
	.xfloat	$strtod("0x1.997044p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[282] @ 9024
	.xfloat	$strtod("0x1.9702f2p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[283] @ 9056
	.xfloat	$strtod("0x1.948f32p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[284] @ 9088
	.xfloat	$strtod("0x1.92151p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[285] @ 9120
	.xfloat	$strtod("0x1.8f9494p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[286] @ 9152
	.xfloat	$strtod("0x1.8d0dc8p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[287] @ 9184
	.xfloat	$strtod("0x1.8a80b6p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[288] @ 9216
	.xfloat	$strtod("0x1.87ed6ap-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[289] @ 9248
	.xfloat	$strtod("0x1.8553eep-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[290] @ 9280
	.xfloat	$strtod("0x1.82b44cp-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[291] @ 9312
	.xfloat	$strtod("0x1.800e8ep-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[292] @ 9344
	.xfloat	$strtod("0x1.7d62cp-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[293] @ 9376
	.xfloat	$strtod("0x1.7ab0eep-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[294] @ 9408
	.xfloat	$strtod("0x1.77f91ep-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[295] @ 9440
	.xfloat	$strtod("0x1.753b6p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[296] @ 9472
	.xfloat	$strtod("0x1.7277bcp-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[297] @ 9504
	.xfloat	$strtod("0x1.6fae4p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[298] @ 9536
	.xfloat	$strtod("0x1.6cdef4p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[299] @ 9568
	.xfloat	$strtod("0x1.6a09e6p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[300] @ 9600
	.xfloat	$strtod("0x1.672f2p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[301] @ 9632
	.xfloat	$strtod("0x1.644eaep-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[302] @ 9664
	.xfloat	$strtod("0x1.61689cp-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[303] @ 9696
	.xfloat	$strtod("0x1.5e7cf6p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[304] @ 9728
	.xfloat	$strtod("0x1.5b8bc6p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[305] @ 9760
	.xfloat	$strtod("0x1.589518p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[306] @ 9792
	.xfloat	$strtod("0x1.5598fap-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[307] @ 9824
	.xfloat	$strtod("0x1.529778p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[308] @ 9856
	.xfloat	$strtod("0x1.4f909cp-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[309] @ 9888
	.xfloat	$strtod("0x1.4c8474p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[310] @ 9920
	.xfloat	$strtod("0x1.49730cp-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[311] @ 9952
	.xfloat	$strtod("0x1.465c7p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[312] @ 9984
	.xfloat	$strtod("0x1.4340acp-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[313] @ 10016
	.xfloat	$strtod("0x1.401fcep-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[314] @ 10048
	.xfloat	$strtod("0x1.3cf9e2p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[315] @ 10080
	.xfloat	$strtod("0x1.39cef4p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[316] @ 10112
	.xfloat	$strtod("0x1.369f12p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[317] @ 10144
	.xfloat	$strtod("0x1.336a48p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[318] @ 10176
	.xfloat	$strtod("0x1.3030a2p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[319] @ 10208
	.xfloat	$strtod("0x1.2cf23p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[320] @ 10240
	.xfloat	$strtod("0x1.29aefep-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[321] @ 10272
	.xfloat	$strtod("0x1.266716p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[322] @ 10304
	.xfloat	$strtod("0x1.231a8ap-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[323] @ 10336
	.xfloat	$strtod("0x1.1fc964p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[324] @ 10368
	.xfloat	$strtod("0x1.1c73b4p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[325] @ 10400
	.xfloat	$strtod("0x1.191984p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[326] @ 10432
	.xfloat	$strtod("0x1.15bae6p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[327] @ 10464
	.xfloat	$strtod("0x1.1257e4p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[328] @ 10496
	.xfloat	$strtod("0x1.0ef08cp-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[329] @ 10528
	.xfloat	$strtod("0x1.0b84eep-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[330] @ 10560
	.xfloat	$strtod("0x1.081516p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[331] @ 10592
	.xfloat	$strtod("0x1.04a114p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[332] @ 10624
	.xfloat	$strtod("0x1.0128f2p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[333] @ 10656
	.xfloat	$strtod("0x1.fb5984p-2")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[334] @ 10688
	.xfloat	$strtod("0x1.f4592p-2")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[335] @ 10720
	.xfloat	$strtod("0x1.ed50d6p-2")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[336] @ 10752
	.xfloat	$strtod("0x1.e640cp-2")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[337] @ 10784
	.xfloat	$strtod("0x1.df28fep-2")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[338] @ 10816
	.xfloat	$strtod("0x1.d809aap-2")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[339] @ 10848
	.xfloat	$strtod("0x1.d0e2e2p-2")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[340] @ 10880
	.xfloat	$strtod("0x1.c9b4c4p-2")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[341] @ 10912
	.xfloat	$strtod("0x1.c27f6ap-2")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[342] @ 10944
	.xfloat	$strtod("0x1.bb42f4p-2")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[343] @ 10976
	.xfloat	$strtod("0x1.b3ff7cp-2")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[344] @ 11008
	.xfloat	$strtod("0x1.acb524p-2")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[345] @ 11040
	.xfloat	$strtod("0x1.a56406p-2")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[346] @ 11072
	.xfloat	$strtod("0x1.9e0c4p-2")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[347] @ 11104
	.xfloat	$strtod("0x1.96adfp-2")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[348] @ 11136
	.xfloat	$strtod("0x1.8f4934p-2")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[349] @ 11168
	.xfloat	$strtod("0x1.87de2ap-2")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[350] @ 11200
	.xfloat	$strtod("0x1.806cfp-2")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[351] @ 11232
	.xfloat	$strtod("0x1.78f5a4p-2")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[352] @ 11264
	.xfloat	$strtod("0x1.717864p-2")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[353] @ 11296
	.xfloat	$strtod("0x1.69f55p-2")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[354] @ 11328
	.xfloat	$strtod("0x1.626c82p-2")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[355] @ 11360
	.xfloat	$strtod("0x1.5ade1ep-2")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[356] @ 11392
	.xfloat	$strtod("0x1.534a3ep-2")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[357] @ 11424
	.xfloat	$strtod("0x1.4bb102p-2")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[358] @ 11456
	.xfloat	$strtod("0x1.44128ap-2")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[359] @ 11488
	.xfloat	$strtod("0x1.3c6ef4p-2")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[360] @ 11520
	.xfloat	$strtod("0x1.34c65ep-2")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[361] @ 11552
	.xfloat	$strtod("0x1.2d18e8p-2")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[362] @ 11584
	.xfloat	$strtod("0x1.2566b2p-2")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[363] @ 11616
	.xfloat	$strtod("0x1.1dafd8p-2")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[364] @ 11648
	.xfloat	$strtod("0x1.15f47cp-2")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[365] @ 11680
	.xfloat	$strtod("0x1.0e34bcp-2")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[366] @ 11712
	.xfloat	$strtod("0x1.0670b8p-2")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[367] @ 11744
	.xfloat	$strtod("0x1.fd512p-3")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[368] @ 11776
	.xfloat	$strtod("0x1.edb8c2p-3")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[369] @ 11808
	.xfloat	$strtod("0x1.de189ap-3")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[370] @ 11840
	.xfloat	$strtod("0x1.ce70e6p-3")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[371] @ 11872
	.xfloat	$strtod("0x1.bec1e2p-3")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[372] @ 11904
	.xfloat	$strtod("0x1.af0bd2p-3")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[373] @ 11936
	.xfloat	$strtod("0x1.9f4ef2p-3")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[374] @ 11968
	.xfloat	$strtod("0x1.8f8b84p-3")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[375] @ 12000
	.xfloat	$strtod("0x1.7fc1c6p-3")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[376] @ 12032
	.xfloat	$strtod("0x1.6ff1fap-3")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[377] @ 12064
	.xfloat	$strtod("0x1.601c5ep-3")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[378] @ 12096
	.xfloat	$strtod("0x1.504132p-3")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[379] @ 12128
	.xfloat	$strtod("0x1.4060b6p-3")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[380] @ 12160
	.xfloat	$strtod("0x1.307b2cp-3")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[381] @ 12192
	.xfloat	$strtod("0x1.2090d4p-3")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[382] @ 12224
	.xfloat	$strtod("0x1.10a1ecp-3")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[383] @ 12256
	.xfloat	$strtod("0x1.00aeb6p-3")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[384] @ 12288
	.xfloat	$strtod("0x1.e16ee4p-4")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[385] @ 12320
	.xfloat	$strtod("0x1.c178c4p-4")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[386] @ 12352
	.xfloat	$strtod("0x1.a17b8ap-4")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[387] @ 12384
	.xfloat	$strtod("0x1.8177b8p-4")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[388] @ 12416
	.xfloat	$strtod("0x1.616ddp-4")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[389] @ 12448
	.xfloat	$strtod("0x1.415e54p-4")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[390] @ 12480
	.xfloat	$strtod("0x1.2149c4p-4")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[391] @ 12512
	.xfloat	$strtod("0x1.0130a2p-4")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[392] @ 12544
	.xfloat	$strtod("0x1.c226e2p-5")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[393] @ 12576
	.xfloat	$strtod("0x1.81e564p-5")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[394] @ 12608
	.xfloat	$strtod("0x1.419dcep-5")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[395] @ 12640
	.xfloat	$strtod("0x1.015122p-5")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[396] @ 12672
	.xfloat	$strtod("0x1.8200dp-6")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[397] @ 12704
	.xfloat	$strtod("0x1.015944p-6")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[398] @ 12736
	.xfloat	$strtod("0x1.015b4cp-7")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[399] @ 12768
	.xfloat	$strtod("0x1.1a6264p-53")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[400] @ 12800
	.xfloat	$strtod("-0x1.015b4cp-7")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[401] @ 12832
	.xfloat	$strtod("-0x1.015944p-6")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[402] @ 12864
	.xfloat	$strtod("-0x1.8200dp-6")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[403] @ 12896
	.xfloat	$strtod("-0x1.015122p-5")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[404] @ 12928
	.xfloat	$strtod("-0x1.419dcep-5")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[405] @ 12960
	.xfloat	$strtod("-0x1.81e564p-5")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[406] @ 12992
	.xfloat	$strtod("-0x1.c226e2p-5")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[407] @ 13024
	.xfloat	$strtod("-0x1.0130a2p-4")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[408] @ 13056
	.xfloat	$strtod("-0x1.2149c4p-4")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[409] @ 13088
	.xfloat	$strtod("-0x1.415e54p-4")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[410] @ 13120
	.xfloat	$strtod("-0x1.616ddp-4")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[411] @ 13152
	.xfloat	$strtod("-0x1.8177b8p-4")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[412] @ 13184
	.xfloat	$strtod("-0x1.a17b8ap-4")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[413] @ 13216
	.xfloat	$strtod("-0x1.c178c4p-4")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[414] @ 13248
	.xfloat	$strtod("-0x1.e16ee4p-4")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[415] @ 13280
	.xfloat	$strtod("-0x1.00aeb6p-3")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[416] @ 13312
	.xfloat	$strtod("-0x1.10a1ecp-3")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[417] @ 13344
	.xfloat	$strtod("-0x1.2090d4p-3")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[418] @ 13376
	.xfloat	$strtod("-0x1.307b2cp-3")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[419] @ 13408
	.xfloat	$strtod("-0x1.4060b6p-3")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[420] @ 13440
	.xfloat	$strtod("-0x1.504132p-3")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[421] @ 13472
	.xfloat	$strtod("-0x1.601c5ep-3")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[422] @ 13504
	.xfloat	$strtod("-0x1.6ff1fap-3")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[423] @ 13536
	.xfloat	$strtod("-0x1.7fc1c6p-3")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[424] @ 13568
	.xfloat	$strtod("-0x1.8f8b84p-3")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[425] @ 13600
	.xfloat	$strtod("-0x1.9f4ef2p-3")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[426] @ 13632
	.xfloat	$strtod("-0x1.af0bd2p-3")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[427] @ 13664
	.xfloat	$strtod("-0x1.bec1e2p-3")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[428] @ 13696
	.xfloat	$strtod("-0x1.ce70e6p-3")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[429] @ 13728
	.xfloat	$strtod("-0x1.de189ap-3")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[430] @ 13760
	.xfloat	$strtod("-0x1.edb8c2p-3")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[431] @ 13792
	.xfloat	$strtod("-0x1.fd512p-3")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[432] @ 13824
	.xfloat	$strtod("-0x1.0670b8p-2")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[433] @ 13856
	.xfloat	$strtod("-0x1.0e34bcp-2")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[434] @ 13888
	.xfloat	$strtod("-0x1.15f47cp-2")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[435] @ 13920
	.xfloat	$strtod("-0x1.1dafd8p-2")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[436] @ 13952
	.xfloat	$strtod("-0x1.2566b2p-2")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[437] @ 13984
	.xfloat	$strtod("-0x1.2d18e8p-2")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[438] @ 14016
	.xfloat	$strtod("-0x1.34c65ep-2")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[439] @ 14048
	.xfloat	$strtod("-0x1.3c6ef4p-2")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[440] @ 14080
	.xfloat	$strtod("-0x1.44128ap-2")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[441] @ 14112
	.xfloat	$strtod("-0x1.4bb102p-2")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[442] @ 14144
	.xfloat	$strtod("-0x1.534a3ep-2")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[443] @ 14176
	.xfloat	$strtod("-0x1.5ade1ep-2")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[444] @ 14208
	.xfloat	$strtod("-0x1.626c82p-2")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[445] @ 14240
	.xfloat	$strtod("-0x1.69f55p-2")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[446] @ 14272
	.xfloat	$strtod("-0x1.717864p-2")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[447] @ 14304
	.xfloat	$strtod("-0x1.78f5a4p-2")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[448] @ 14336
	.xfloat	$strtod("-0x1.806cfp-2")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[449] @ 14368
	.xfloat	$strtod("-0x1.87de2ap-2")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[450] @ 14400
	.xfloat	$strtod("-0x1.8f4934p-2")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[451] @ 14432
	.xfloat	$strtod("-0x1.96adfp-2")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[452] @ 14464
	.xfloat	$strtod("-0x1.9e0c4p-2")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[453] @ 14496
	.xfloat	$strtod("-0x1.a56406p-2")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[454] @ 14528
	.xfloat	$strtod("-0x1.acb524p-2")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[455] @ 14560
	.xfloat	$strtod("-0x1.b3ff7cp-2")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[456] @ 14592
	.xfloat	$strtod("-0x1.bb42f4p-2")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[457] @ 14624
	.xfloat	$strtod("-0x1.c27f6ap-2")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[458] @ 14656
	.xfloat	$strtod("-0x1.c9b4c4p-2")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[459] @ 14688
	.xfloat	$strtod("-0x1.d0e2e2p-2")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[460] @ 14720
	.xfloat	$strtod("-0x1.d809aap-2")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[461] @ 14752
	.xfloat	$strtod("-0x1.df28fep-2")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[462] @ 14784
	.xfloat	$strtod("-0x1.e640cp-2")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[463] @ 14816
	.xfloat	$strtod("-0x1.ed50d6p-2")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[464] @ 14848
	.xfloat	$strtod("-0x1.f4592p-2")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[465] @ 14880
	.xfloat	$strtod("-0x1.fb5984p-2")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[466] @ 14912
	.xfloat	$strtod("-0x1.0128f2p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[467] @ 14944
	.xfloat	$strtod("-0x1.04a114p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[468] @ 14976
	.xfloat	$strtod("-0x1.081516p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[469] @ 15008
	.xfloat	$strtod("-0x1.0b84eep-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[470] @ 15040
	.xfloat	$strtod("-0x1.0ef08cp-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[471] @ 15072
	.xfloat	$strtod("-0x1.1257e4p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[472] @ 15104
	.xfloat	$strtod("-0x1.15bae6p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[473] @ 15136
	.xfloat	$strtod("-0x1.191984p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[474] @ 15168
	.xfloat	$strtod("-0x1.1c73b4p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[475] @ 15200
	.xfloat	$strtod("-0x1.1fc964p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[476] @ 15232
	.xfloat	$strtod("-0x1.231a8ap-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[477] @ 15264
	.xfloat	$strtod("-0x1.266716p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[478] @ 15296
	.xfloat	$strtod("-0x1.29aefep-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[479] @ 15328
	.xfloat	$strtod("-0x1.2cf23p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[480] @ 15360
	.xfloat	$strtod("-0x1.3030a2p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[481] @ 15392
	.xfloat	$strtod("-0x1.336a48p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[482] @ 15424
	.xfloat	$strtod("-0x1.369f12p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[483] @ 15456
	.xfloat	$strtod("-0x1.39cef4p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[484] @ 15488
	.xfloat	$strtod("-0x1.3cf9e2p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[485] @ 15520
	.xfloat	$strtod("-0x1.401fcep-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[486] @ 15552
	.xfloat	$strtod("-0x1.4340acp-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[487] @ 15584
	.xfloat	$strtod("-0x1.465c7p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[488] @ 15616
	.xfloat	$strtod("-0x1.49730cp-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[489] @ 15648
	.xfloat	$strtod("-0x1.4c8474p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[490] @ 15680
	.xfloat	$strtod("-0x1.4f909cp-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[491] @ 15712
	.xfloat	$strtod("-0x1.529778p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[492] @ 15744
	.xfloat	$strtod("-0x1.5598fap-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[493] @ 15776
	.xfloat	$strtod("-0x1.589518p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[494] @ 15808
	.xfloat	$strtod("-0x1.5b8bc6p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[495] @ 15840
	.xfloat	$strtod("-0x1.5e7cf6p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[496] @ 15872
	.xfloat	$strtod("-0x1.61689cp-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[497] @ 15904
	.xfloat	$strtod("-0x1.644eaep-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[498] @ 15936
	.xfloat	$strtod("-0x1.672f2p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[499] @ 15968
	.xfloat	$strtod("-0x1.6a09e6p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[500] @ 16000
	.xfloat	$strtod("-0x1.6cdef4p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[501] @ 16032
	.xfloat	$strtod("-0x1.6fae4p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[502] @ 16064
	.xfloat	$strtod("-0x1.7277bcp-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[503] @ 16096
	.xfloat	$strtod("-0x1.753b6p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[504] @ 16128
	.xfloat	$strtod("-0x1.77f91ep-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[505] @ 16160
	.xfloat	$strtod("-0x1.7ab0eep-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[506] @ 16192
	.xfloat	$strtod("-0x1.7d62cp-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[507] @ 16224
	.xfloat	$strtod("-0x1.800e8ep-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[508] @ 16256
	.xfloat	$strtod("-0x1.82b44cp-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[509] @ 16288
	.xfloat	$strtod("-0x1.8553eep-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[510] @ 16320
	.xfloat	$strtod("-0x1.87ed6ap-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[511] @ 16352
	.xfloat	$strtod("-0x1.8a80b6p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[512] @ 16384
	.xfloat	$strtod("-0x1.8d0dc8p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[513] @ 16416
	.xfloat	$strtod("-0x1.8f9494p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[514] @ 16448
	.xfloat	$strtod("-0x1.92151p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[515] @ 16480
	.xfloat	$strtod("-0x1.948f32p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[516] @ 16512
	.xfloat	$strtod("-0x1.9702f2p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[517] @ 16544
	.xfloat	$strtod("-0x1.997044p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[518] @ 16576
	.xfloat	$strtod("-0x1.9bd72p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[519] @ 16608
	.xfloat	$strtod("-0x1.9e377ap-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[520] @ 16640
	.xfloat	$strtod("-0x1.a0914ap-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[521] @ 16672
	.xfloat	$strtod("-0x1.a2e486p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[522] @ 16704
	.xfloat	$strtod("-0x1.a53124p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[523] @ 16736
	.xfloat	$strtod("-0x1.a7771ap-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[524] @ 16768
	.xfloat	$strtod("-0x1.a9b662p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[525] @ 16800
	.xfloat	$strtod("-0x1.abeef2p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[526] @ 16832
	.xfloat	$strtod("-0x1.ae20bep-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[527] @ 16864
	.xfloat	$strtod("-0x1.b04bcp-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[528] @ 16896
	.xfloat	$strtod("-0x1.b26feep-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[529] @ 16928
	.xfloat	$strtod("-0x1.b48d4p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[530] @ 16960
	.xfloat	$strtod("-0x1.b6a3aep-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[531] @ 16992
	.xfloat	$strtod("-0x1.b8b32ep-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[532] @ 17024
	.xfloat	$strtod("-0x1.babbb8p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[533] @ 17056
	.xfloat	$strtod("-0x1.bcbd46p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[534] @ 17088
	.xfloat	$strtod("-0x1.beb7ccp-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[535] @ 17120
	.xfloat	$strtod("-0x1.c0ab44p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[536] @ 17152
	.xfloat	$strtod("-0x1.c297a8p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[537] @ 17184
	.xfloat	$strtod("-0x1.c47ceep-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[538] @ 17216
	.xfloat	$strtod("-0x1.c65b0ep-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[539] @ 17248
	.xfloat	$strtod("-0x1.c83202p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[540] @ 17280
	.xfloat	$strtod("-0x1.ca01c2p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[541] @ 17312
	.xfloat	$strtod("-0x1.cbca46p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[542] @ 17344
	.xfloat	$strtod("-0x1.cd8b86p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[543] @ 17376
	.xfloat	$strtod("-0x1.cf457ep-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[544] @ 17408
	.xfloat	$strtod("-0x1.d0f824p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[545] @ 17440
	.xfloat	$strtod("-0x1.d2a374p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[546] @ 17472
	.xfloat	$strtod("-0x1.d44764p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[547] @ 17504
	.xfloat	$strtod("-0x1.d5e3fp-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[548] @ 17536
	.xfloat	$strtod("-0x1.d7791p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[549] @ 17568
	.xfloat	$strtod("-0x1.d906bcp-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[550] @ 17600
	.xfloat	$strtod("-0x1.da8cf2p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[551] @ 17632
	.xfloat	$strtod("-0x1.dc0baap-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[552] @ 17664
	.xfloat	$strtod("-0x1.dd82dcp-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[553] @ 17696
	.xfloat	$strtod("-0x1.def286p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[554] @ 17728
	.xfloat	$strtod("-0x1.e05a9ep-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[555] @ 17760
	.xfloat	$strtod("-0x1.e1bb2p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[556] @ 17792
	.xfloat	$strtod("-0x1.e31406p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[557] @ 17824
	.xfloat	$strtod("-0x1.e4654cp-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[558] @ 17856
	.xfloat	$strtod("-0x1.e5aeecp-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[559] @ 17888
	.xfloat	$strtod("-0x1.e6f0e2p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[560] @ 17920
	.xfloat	$strtod("-0x1.e82b26p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[561] @ 17952
	.xfloat	$strtod("-0x1.e95db4p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[562] @ 17984
	.xfloat	$strtod("-0x1.ea8888p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[563] @ 18016
	.xfloat	$strtod("-0x1.ebab9ep-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[564] @ 18048
	.xfloat	$strtod("-0x1.ecc6eep-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[565] @ 18080
	.xfloat	$strtod("-0x1.edda78p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[566] @ 18112
	.xfloat	$strtod("-0x1.eee636p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[567] @ 18144
	.xfloat	$strtod("-0x1.efea22p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[568] @ 18176
	.xfloat	$strtod("-0x1.f0e63ap-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[569] @ 18208
	.xfloat	$strtod("-0x1.f1da78p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[570] @ 18240
	.xfloat	$strtod("-0x1.f2c6dap-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[571] @ 18272
	.xfloat	$strtod("-0x1.f3ab5cp-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[572] @ 18304
	.xfloat	$strtod("-0x1.f487fap-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[573] @ 18336
	.xfloat	$strtod("-0x1.f55cb2p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[574] @ 18368
	.xfloat	$strtod("-0x1.f6297cp-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[575] @ 18400
	.xfloat	$strtod("-0x1.f6ee5ap-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[576] @ 18432
	.xfloat	$strtod("-0x1.f7ab48p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[577] @ 18464
	.xfloat	$strtod("-0x1.f8604p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[578] @ 18496
	.xfloat	$strtod("-0x1.f90d42p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[579] @ 18528
	.xfloat	$strtod("-0x1.f9b24ap-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[580] @ 18560
	.xfloat	$strtod("-0x1.fa4f54p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[581] @ 18592
	.xfloat	$strtod("-0x1.fae462p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[582] @ 18624
	.xfloat	$strtod("-0x1.fb716ep-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[583] @ 18656
	.xfloat	$strtod("-0x1.fbf676p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[584] @ 18688
	.xfloat	$strtod("-0x1.fc7378p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[585] @ 18720
	.xfloat	$strtod("-0x1.fce874p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[586] @ 18752
	.xfloat	$strtod("-0x1.fd5566p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[587] @ 18784
	.xfloat	$strtod("-0x1.fdba4cp-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[588] @ 18816
	.xfloat	$strtod("-0x1.fe1726p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[589] @ 18848
	.xfloat	$strtod("-0x1.fe6bf2p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[590] @ 18880
	.xfloat	$strtod("-0x1.feb8bp-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[591] @ 18912
	.xfloat	$strtod("-0x1.fefd5cp-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[592] @ 18944
	.xfloat	$strtod("-0x1.ff39f6p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[593] @ 18976
	.xfloat	$strtod("-0x1.ff6e7ep-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[594] @ 19008
	.xfloat	$strtod("-0x1.ff9af2p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[595] @ 19040
	.xfloat	$strtod("-0x1.ffbf52p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[596] @ 19072
	.xfloat	$strtod("-0x1.ffdb9ep-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[597] @ 19104
	.xfloat	$strtod("-0x1.ffefd4p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[598] @ 19136
	.xfloat	$strtod("-0x1.fffbf6p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[599] @ 19168
	.xfloat	$strtod("-0x1p+0")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[600] @ 19200
	.xfloat	$strtod("-0x1.fffbf6p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[601] @ 19232
	.xfloat	$strtod("-0x1.ffefd4p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[602] @ 19264
	.xfloat	$strtod("-0x1.ffdb9ep-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[603] @ 19296
	.xfloat	$strtod("-0x1.ffbf52p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[604] @ 19328
	.xfloat	$strtod("-0x1.ff9af2p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[605] @ 19360
	.xfloat	$strtod("-0x1.ff6e7ep-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[606] @ 19392
	.xfloat	$strtod("-0x1.ff39f6p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[607] @ 19424
	.xfloat	$strtod("-0x1.fefd5cp-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[608] @ 19456
	.xfloat	$strtod("-0x1.feb8bp-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[609] @ 19488
	.xfloat	$strtod("-0x1.fe6bf2p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[610] @ 19520
	.xfloat	$strtod("-0x1.fe1726p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[611] @ 19552
	.xfloat	$strtod("-0x1.fdba4cp-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[612] @ 19584
	.xfloat	$strtod("-0x1.fd5566p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[613] @ 19616
	.xfloat	$strtod("-0x1.fce874p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[614] @ 19648
	.xfloat	$strtod("-0x1.fc7378p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[615] @ 19680
	.xfloat	$strtod("-0x1.fbf676p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[616] @ 19712
	.xfloat	$strtod("-0x1.fb716ep-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[617] @ 19744
	.xfloat	$strtod("-0x1.fae462p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[618] @ 19776
	.xfloat	$strtod("-0x1.fa4f54p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[619] @ 19808
	.xfloat	$strtod("-0x1.f9b24ap-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[620] @ 19840
	.xfloat	$strtod("-0x1.f90d42p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[621] @ 19872
	.xfloat	$strtod("-0x1.f8604p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[622] @ 19904
	.xfloat	$strtod("-0x1.f7ab48p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[623] @ 19936
	.xfloat	$strtod("-0x1.f6ee5ap-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[624] @ 19968
	.xfloat	$strtod("-0x1.f6297cp-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[625] @ 20000
	.xfloat	$strtod("-0x1.f55cb2p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[626] @ 20032
	.xfloat	$strtod("-0x1.f487fap-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[627] @ 20064
	.xfloat	$strtod("-0x1.f3ab5cp-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[628] @ 20096
	.xfloat	$strtod("-0x1.f2c6dap-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[629] @ 20128
	.xfloat	$strtod("-0x1.f1da78p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[630] @ 20160
	.xfloat	$strtod("-0x1.f0e63ap-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[631] @ 20192
	.xfloat	$strtod("-0x1.efea22p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[632] @ 20224
	.xfloat	$strtod("-0x1.eee636p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[633] @ 20256
	.xfloat	$strtod("-0x1.edda78p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[634] @ 20288
	.xfloat	$strtod("-0x1.ecc6eep-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[635] @ 20320
	.xfloat	$strtod("-0x1.ebab9ep-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[636] @ 20352
	.xfloat	$strtod("-0x1.ea8888p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[637] @ 20384
	.xfloat	$strtod("-0x1.e95db4p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[638] @ 20416
	.xfloat	$strtod("-0x1.e82b26p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[639] @ 20448
	.xfloat	$strtod("-0x1.e6f0e2p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[640] @ 20480
	.xfloat	$strtod("-0x1.e5aeecp-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[641] @ 20512
	.xfloat	$strtod("-0x1.e4654cp-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[642] @ 20544
	.xfloat	$strtod("-0x1.e31406p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[643] @ 20576
	.xfloat	$strtod("-0x1.e1bb2p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[644] @ 20608
	.xfloat	$strtod("-0x1.e05a9ep-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[645] @ 20640
	.xfloat	$strtod("-0x1.def286p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[646] @ 20672
	.xfloat	$strtod("-0x1.dd82dcp-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[647] @ 20704
	.xfloat	$strtod("-0x1.dc0baap-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[648] @ 20736
	.xfloat	$strtod("-0x1.da8cf2p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[649] @ 20768
	.xfloat	$strtod("-0x1.d906bcp-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[650] @ 20800
	.xfloat	$strtod("-0x1.d7791p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[651] @ 20832
	.xfloat	$strtod("-0x1.d5e3fp-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[652] @ 20864
	.xfloat	$strtod("-0x1.d44764p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[653] @ 20896
	.xfloat	$strtod("-0x1.d2a374p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[654] @ 20928
	.xfloat	$strtod("-0x1.d0f824p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[655] @ 20960
	.xfloat	$strtod("-0x1.cf457ep-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[656] @ 20992
	.xfloat	$strtod("-0x1.cd8b86p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[657] @ 21024
	.xfloat	$strtod("-0x1.cbca46p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[658] @ 21056
	.xfloat	$strtod("-0x1.ca01c2p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[659] @ 21088
	.xfloat	$strtod("-0x1.c83202p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[660] @ 21120
	.xfloat	$strtod("-0x1.c65b0ep-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[661] @ 21152
	.xfloat	$strtod("-0x1.c47ceep-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[662] @ 21184
	.xfloat	$strtod("-0x1.c297a8p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[663] @ 21216
	.xfloat	$strtod("-0x1.c0ab44p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[664] @ 21248
	.xfloat	$strtod("-0x1.beb7ccp-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[665] @ 21280
	.xfloat	$strtod("-0x1.bcbd46p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[666] @ 21312
	.xfloat	$strtod("-0x1.babbb8p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[667] @ 21344
	.xfloat	$strtod("-0x1.b8b32ep-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[668] @ 21376
	.xfloat	$strtod("-0x1.b6a3aep-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[669] @ 21408
	.xfloat	$strtod("-0x1.b48d4p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[670] @ 21440
	.xfloat	$strtod("-0x1.b26feep-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[671] @ 21472
	.xfloat	$strtod("-0x1.b04bcp-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[672] @ 21504
	.xfloat	$strtod("-0x1.ae20bep-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[673] @ 21536
	.xfloat	$strtod("-0x1.abeef2p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[674] @ 21568
	.xfloat	$strtod("-0x1.a9b662p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[675] @ 21600
	.xfloat	$strtod("-0x1.a7771ap-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[676] @ 21632
	.xfloat	$strtod("-0x1.a53124p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[677] @ 21664
	.xfloat	$strtod("-0x1.a2e486p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[678] @ 21696
	.xfloat	$strtod("-0x1.a0914ap-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[679] @ 21728
	.xfloat	$strtod("-0x1.9e377ap-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[680] @ 21760
	.xfloat	$strtod("-0x1.9bd72p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[681] @ 21792
	.xfloat	$strtod("-0x1.997044p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[682] @ 21824
	.xfloat	$strtod("-0x1.9702f2p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[683] @ 21856
	.xfloat	$strtod("-0x1.948f32p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[684] @ 21888
	.xfloat	$strtod("-0x1.92151p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[685] @ 21920
	.xfloat	$strtod("-0x1.8f9494p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[686] @ 21952
	.xfloat	$strtod("-0x1.8d0dc8p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[687] @ 21984
	.xfloat	$strtod("-0x1.8a80b6p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[688] @ 22016
	.xfloat	$strtod("-0x1.87ed6ap-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[689] @ 22048
	.xfloat	$strtod("-0x1.8553eep-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[690] @ 22080
	.xfloat	$strtod("-0x1.82b44cp-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[691] @ 22112
	.xfloat	$strtod("-0x1.800e8ep-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[692] @ 22144
	.xfloat	$strtod("-0x1.7d62cp-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[693] @ 22176
	.xfloat	$strtod("-0x1.7ab0eep-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[694] @ 22208
	.xfloat	$strtod("-0x1.77f91ep-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[695] @ 22240
	.xfloat	$strtod("-0x1.753b6p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[696] @ 22272
	.xfloat	$strtod("-0x1.7277bcp-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[697] @ 22304
	.xfloat	$strtod("-0x1.6fae4p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[698] @ 22336
	.xfloat	$strtod("-0x1.6cdef4p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[699] @ 22368
	.xfloat	$strtod("-0x1.6a09e6p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[700] @ 22400
	.xfloat	$strtod("-0x1.672f2p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[701] @ 22432
	.xfloat	$strtod("-0x1.644eaep-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[702] @ 22464
	.xfloat	$strtod("-0x1.61689cp-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[703] @ 22496
	.xfloat	$strtod("-0x1.5e7cf6p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[704] @ 22528
	.xfloat	$strtod("-0x1.5b8bc6p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[705] @ 22560
	.xfloat	$strtod("-0x1.589518p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[706] @ 22592
	.xfloat	$strtod("-0x1.5598fap-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[707] @ 22624
	.xfloat	$strtod("-0x1.529778p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[708] @ 22656
	.xfloat	$strtod("-0x1.4f909cp-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[709] @ 22688
	.xfloat	$strtod("-0x1.4c8474p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[710] @ 22720
	.xfloat	$strtod("-0x1.49730cp-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[711] @ 22752
	.xfloat	$strtod("-0x1.465c7p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[712] @ 22784
	.xfloat	$strtod("-0x1.4340acp-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[713] @ 22816
	.xfloat	$strtod("-0x1.401fcep-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[714] @ 22848
	.xfloat	$strtod("-0x1.3cf9e2p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[715] @ 22880
	.xfloat	$strtod("-0x1.39cef4p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[716] @ 22912
	.xfloat	$strtod("-0x1.369f12p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[717] @ 22944
	.xfloat	$strtod("-0x1.336a48p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[718] @ 22976
	.xfloat	$strtod("-0x1.3030a2p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[719] @ 23008
	.xfloat	$strtod("-0x1.2cf23p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[720] @ 23040
	.xfloat	$strtod("-0x1.29aefep-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[721] @ 23072
	.xfloat	$strtod("-0x1.266716p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[722] @ 23104
	.xfloat	$strtod("-0x1.231a8ap-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[723] @ 23136
	.xfloat	$strtod("-0x1.1fc964p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[724] @ 23168
	.xfloat	$strtod("-0x1.1c73b4p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[725] @ 23200
	.xfloat	$strtod("-0x1.191984p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[726] @ 23232
	.xfloat	$strtod("-0x1.15bae6p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[727] @ 23264
	.xfloat	$strtod("-0x1.1257e4p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[728] @ 23296
	.xfloat	$strtod("-0x1.0ef08cp-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[729] @ 23328
	.xfloat	$strtod("-0x1.0b84eep-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[730] @ 23360
	.xfloat	$strtod("-0x1.081516p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[731] @ 23392
	.xfloat	$strtod("-0x1.04a114p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[732] @ 23424
	.xfloat	$strtod("-0x1.0128f2p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[733] @ 23456
	.xfloat	$strtod("-0x1.fb5984p-2")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[734] @ 23488
	.xfloat	$strtod("-0x1.f4592p-2")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[735] @ 23520
	.xfloat	$strtod("-0x1.ed50d6p-2")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[736] @ 23552
	.xfloat	$strtod("-0x1.e640cp-2")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[737] @ 23584
	.xfloat	$strtod("-0x1.df28fep-2")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[738] @ 23616
	.xfloat	$strtod("-0x1.d809aap-2")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[739] @ 23648
	.xfloat	$strtod("-0x1.d0e2e2p-2")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[740] @ 23680
	.xfloat	$strtod("-0x1.c9b4c4p-2")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[741] @ 23712
	.xfloat	$strtod("-0x1.c27f6ap-2")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[742] @ 23744
	.xfloat	$strtod("-0x1.bb42f4p-2")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[743] @ 23776
	.xfloat	$strtod("-0x1.b3ff7cp-2")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[744] @ 23808
	.xfloat	$strtod("-0x1.acb524p-2")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[745] @ 23840
	.xfloat	$strtod("-0x1.a56406p-2")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[746] @ 23872
	.xfloat	$strtod("-0x1.9e0c4p-2")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[747] @ 23904
	.xfloat	$strtod("-0x1.96adfp-2")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[748] @ 23936
	.xfloat	$strtod("-0x1.8f4934p-2")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[749] @ 23968
	.xfloat	$strtod("-0x1.87de2ap-2")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[750] @ 24000
	.xfloat	$strtod("-0x1.806cfp-2")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[751] @ 24032
	.xfloat	$strtod("-0x1.78f5a4p-2")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[752] @ 24064
	.xfloat	$strtod("-0x1.717864p-2")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[753] @ 24096
	.xfloat	$strtod("-0x1.69f55p-2")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[754] @ 24128
	.xfloat	$strtod("-0x1.626c82p-2")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[755] @ 24160
	.xfloat	$strtod("-0x1.5ade1ep-2")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[756] @ 24192
	.xfloat	$strtod("-0x1.534a3ep-2")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[757] @ 24224
	.xfloat	$strtod("-0x1.4bb102p-2")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[758] @ 24256
	.xfloat	$strtod("-0x1.44128ap-2")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[759] @ 24288
	.xfloat	$strtod("-0x1.3c6ef4p-2")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[760] @ 24320
	.xfloat	$strtod("-0x1.34c65ep-2")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[761] @ 24352
	.xfloat	$strtod("-0x1.2d18e8p-2")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[762] @ 24384
	.xfloat	$strtod("-0x1.2566b2p-2")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[763] @ 24416
	.xfloat	$strtod("-0x1.1dafd8p-2")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[764] @ 24448
	.xfloat	$strtod("-0x1.15f47cp-2")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[765] @ 24480
	.xfloat	$strtod("-0x1.0e34bcp-2")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[766] @ 24512
	.xfloat	$strtod("-0x1.0670b8p-2")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[767] @ 24544
	.xfloat	$strtod("-0x1.fd512p-3")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[768] @ 24576
	.xfloat	$strtod("-0x1.edb8c2p-3")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[769] @ 24608
	.xfloat	$strtod("-0x1.de189ap-3")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[770] @ 24640
	.xfloat	$strtod("-0x1.ce70e6p-3")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[771] @ 24672
	.xfloat	$strtod("-0x1.bec1e2p-3")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[772] @ 24704
	.xfloat	$strtod("-0x1.af0bd2p-3")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[773] @ 24736
	.xfloat	$strtod("-0x1.9f4ef2p-3")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[774] @ 24768
	.xfloat	$strtod("-0x1.8f8b84p-3")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[775] @ 24800
	.xfloat	$strtod("-0x1.7fc1c6p-3")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[776] @ 24832
	.xfloat	$strtod("-0x1.6ff1fap-3")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[777] @ 24864
	.xfloat	$strtod("-0x1.601c5ep-3")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[778] @ 24896
	.xfloat	$strtod("-0x1.504132p-3")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[779] @ 24928
	.xfloat	$strtod("-0x1.4060b6p-3")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[780] @ 24960
	.xfloat	$strtod("-0x1.307b2cp-3")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[781] @ 24992
	.xfloat	$strtod("-0x1.2090d4p-3")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[782] @ 25024
	.xfloat	$strtod("-0x1.10a1ecp-3")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[783] @ 25056
	.xfloat	$strtod("-0x1.00aeb6p-3")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[784] @ 25088
	.xfloat	$strtod("-0x1.e16ee4p-4")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[785] @ 25120
	.xfloat	$strtod("-0x1.c178c4p-4")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[786] @ 25152
	.xfloat	$strtod("-0x1.a17b8ap-4")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[787] @ 25184
	.xfloat	$strtod("-0x1.8177b8p-4")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[788] @ 25216
	.xfloat	$strtod("-0x1.616ddp-4")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[789] @ 25248
	.xfloat	$strtod("-0x1.415e54p-4")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[790] @ 25280
	.xfloat	$strtod("-0x1.2149c4p-4")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[791] @ 25312
	.xfloat	$strtod("-0x1.0130a2p-4")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[792] @ 25344
	.xfloat	$strtod("-0x1.c226e2p-5")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[793] @ 25376
	.xfloat	$strtod("-0x1.81e564p-5")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[794] @ 25408
	.xfloat	$strtod("-0x1.419dcep-5")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[795] @ 25440
	.xfloat	$strtod("-0x1.015122p-5")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[796] @ 25472
	.xfloat	$strtod("-0x1.8200dp-6")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[797] @ 25504
	.xfloat	$strtod("-0x1.015944p-6")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[798] @ 25536
	.xfloat	$strtod("-0x1.015b4cp-7")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[799] @ 25568
	.xfloat	$strtod("-0x1.1a6264p-52")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[800] @ 25600
	.xfloat	$strtod("0x1.015b4cp-7")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[801] @ 25632
	.xfloat	$strtod("0x1.015944p-6")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[802] @ 25664
	.xfloat	$strtod("0x1.8200dp-6")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[803] @ 25696
	.xfloat	$strtod("0x1.015122p-5")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[804] @ 25728
	.xfloat	$strtod("0x1.419dcep-5")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[805] @ 25760
	.xfloat	$strtod("0x1.81e564p-5")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[806] @ 25792
	.xfloat	$strtod("0x1.c226e2p-5")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[807] @ 25824
	.xfloat	$strtod("0x1.0130a2p-4")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[808] @ 25856
	.xfloat	$strtod("0x1.2149c4p-4")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[809] @ 25888
	.xfloat	$strtod("0x1.415e54p-4")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[810] @ 25920
	.xfloat	$strtod("0x1.616ddp-4")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[811] @ 25952
	.xfloat	$strtod("0x1.8177b8p-4")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[812] @ 25984
	.xfloat	$strtod("0x1.a17b8ap-4")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[813] @ 26016
	.xfloat	$strtod("0x1.c178c4p-4")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[814] @ 26048
	.xfloat	$strtod("0x1.e16ee4p-4")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[815] @ 26080
	.xfloat	$strtod("0x1.00aeb6p-3")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[816] @ 26112
	.xfloat	$strtod("0x1.10a1ecp-3")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[817] @ 26144
	.xfloat	$strtod("0x1.2090d4p-3")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[818] @ 26176
	.xfloat	$strtod("0x1.307b2cp-3")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[819] @ 26208
	.xfloat	$strtod("0x1.4060b6p-3")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[820] @ 26240
	.xfloat	$strtod("0x1.504132p-3")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[821] @ 26272
	.xfloat	$strtod("0x1.601c5ep-3")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[822] @ 26304
	.xfloat	$strtod("0x1.6ff1fap-3")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[823] @ 26336
	.xfloat	$strtod("0x1.7fc1c6p-3")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[824] @ 26368
	.xfloat	$strtod("0x1.8f8b84p-3")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[825] @ 26400
	.xfloat	$strtod("0x1.9f4ef2p-3")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[826] @ 26432
	.xfloat	$strtod("0x1.af0bd2p-3")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[827] @ 26464
	.xfloat	$strtod("0x1.bec1e2p-3")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[828] @ 26496
	.xfloat	$strtod("0x1.ce70e6p-3")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[829] @ 26528
	.xfloat	$strtod("0x1.de189ap-3")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[830] @ 26560
	.xfloat	$strtod("0x1.edb8c2p-3")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[831] @ 26592
	.xfloat	$strtod("0x1.fd512p-3")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[832] @ 26624
	.xfloat	$strtod("0x1.0670b8p-2")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[833] @ 26656
	.xfloat	$strtod("0x1.0e34bcp-2")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[834] @ 26688
	.xfloat	$strtod("0x1.15f47cp-2")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[835] @ 26720
	.xfloat	$strtod("0x1.1dafd8p-2")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[836] @ 26752
	.xfloat	$strtod("0x1.2566b2p-2")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[837] @ 26784
	.xfloat	$strtod("0x1.2d18e8p-2")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[838] @ 26816
	.xfloat	$strtod("0x1.34c65ep-2")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[839] @ 26848
	.xfloat	$strtod("0x1.3c6ef4p-2")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[840] @ 26880
	.xfloat	$strtod("0x1.44128ap-2")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[841] @ 26912
	.xfloat	$strtod("0x1.4bb102p-2")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[842] @ 26944
	.xfloat	$strtod("0x1.534a3ep-2")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[843] @ 26976
	.xfloat	$strtod("0x1.5ade1ep-2")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[844] @ 27008
	.xfloat	$strtod("0x1.626c82p-2")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[845] @ 27040
	.xfloat	$strtod("0x1.69f55p-2")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[846] @ 27072
	.xfloat	$strtod("0x1.717864p-2")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[847] @ 27104
	.xfloat	$strtod("0x1.78f5a4p-2")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[848] @ 27136
	.xfloat	$strtod("0x1.806cfp-2")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[849] @ 27168
	.xfloat	$strtod("0x1.87de2ap-2")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[850] @ 27200
	.xfloat	$strtod("0x1.8f4934p-2")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[851] @ 27232
	.xfloat	$strtod("0x1.96adfp-2")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[852] @ 27264
	.xfloat	$strtod("0x1.9e0c4p-2")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[853] @ 27296
	.xfloat	$strtod("0x1.a56406p-2")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[854] @ 27328
	.xfloat	$strtod("0x1.acb524p-2")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[855] @ 27360
	.xfloat	$strtod("0x1.b3ff7cp-2")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[856] @ 27392
	.xfloat	$strtod("0x1.bb42f4p-2")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[857] @ 27424
	.xfloat	$strtod("0x1.c27f6ap-2")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[858] @ 27456
	.xfloat	$strtod("0x1.c9b4c4p-2")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[859] @ 27488
	.xfloat	$strtod("0x1.d0e2e2p-2")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[860] @ 27520
	.xfloat	$strtod("0x1.d809aap-2")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[861] @ 27552
	.xfloat	$strtod("0x1.df28fep-2")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[862] @ 27584
	.xfloat	$strtod("0x1.e640cp-2")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[863] @ 27616
	.xfloat	$strtod("0x1.ed50d6p-2")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[864] @ 27648
	.xfloat	$strtod("0x1.f4592p-2")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[865] @ 27680
	.xfloat	$strtod("0x1.fb5984p-2")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[866] @ 27712
	.xfloat	$strtod("0x1.0128f2p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[867] @ 27744
	.xfloat	$strtod("0x1.04a114p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[868] @ 27776
	.xfloat	$strtod("0x1.081516p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[869] @ 27808
	.xfloat	$strtod("0x1.0b84eep-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[870] @ 27840
	.xfloat	$strtod("0x1.0ef08cp-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[871] @ 27872
	.xfloat	$strtod("0x1.1257e4p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[872] @ 27904
	.xfloat	$strtod("0x1.15bae6p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[873] @ 27936
	.xfloat	$strtod("0x1.191984p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[874] @ 27968
	.xfloat	$strtod("0x1.1c73b4p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[875] @ 28000
	.xfloat	$strtod("0x1.1fc964p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[876] @ 28032
	.xfloat	$strtod("0x1.231a8ap-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[877] @ 28064
	.xfloat	$strtod("0x1.266716p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[878] @ 28096
	.xfloat	$strtod("0x1.29aefep-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[879] @ 28128
	.xfloat	$strtod("0x1.2cf23p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[880] @ 28160
	.xfloat	$strtod("0x1.3030a2p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[881] @ 28192
	.xfloat	$strtod("0x1.336a48p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[882] @ 28224
	.xfloat	$strtod("0x1.369f12p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[883] @ 28256
	.xfloat	$strtod("0x1.39cef4p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[884] @ 28288
	.xfloat	$strtod("0x1.3cf9e2p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[885] @ 28320
	.xfloat	$strtod("0x1.401fcep-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[886] @ 28352
	.xfloat	$strtod("0x1.4340acp-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[887] @ 28384
	.xfloat	$strtod("0x1.465c7p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[888] @ 28416
	.xfloat	$strtod("0x1.49730cp-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[889] @ 28448
	.xfloat	$strtod("0x1.4c8474p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[890] @ 28480
	.xfloat	$strtod("0x1.4f909cp-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[891] @ 28512
	.xfloat	$strtod("0x1.529778p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[892] @ 28544
	.xfloat	$strtod("0x1.5598fap-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[893] @ 28576
	.xfloat	$strtod("0x1.589518p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[894] @ 28608
	.xfloat	$strtod("0x1.5b8bc6p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[895] @ 28640
	.xfloat	$strtod("0x1.5e7cf6p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[896] @ 28672
	.xfloat	$strtod("0x1.61689cp-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[897] @ 28704
	.xfloat	$strtod("0x1.644eaep-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[898] @ 28736
	.xfloat	$strtod("0x1.672f2p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[899] @ 28768
	.xfloat	$strtod("0x1.6a09e6p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[900] @ 28800
	.xfloat	$strtod("0x1.6cdef4p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[901] @ 28832
	.xfloat	$strtod("0x1.6fae4p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[902] @ 28864
	.xfloat	$strtod("0x1.7277bcp-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[903] @ 28896
	.xfloat	$strtod("0x1.753b6p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[904] @ 28928
	.xfloat	$strtod("0x1.77f91ep-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[905] @ 28960
	.xfloat	$strtod("0x1.7ab0eep-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[906] @ 28992
	.xfloat	$strtod("0x1.7d62cp-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[907] @ 29024
	.xfloat	$strtod("0x1.800e8ep-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[908] @ 29056
	.xfloat	$strtod("0x1.82b44cp-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[909] @ 29088
	.xfloat	$strtod("0x1.8553eep-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[910] @ 29120
	.xfloat	$strtod("0x1.87ed6ap-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[911] @ 29152
	.xfloat	$strtod("0x1.8a80b6p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[912] @ 29184
	.xfloat	$strtod("0x1.8d0dc8p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[913] @ 29216
	.xfloat	$strtod("0x1.8f9494p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[914] @ 29248
	.xfloat	$strtod("0x1.92151p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[915] @ 29280
	.xfloat	$strtod("0x1.948f32p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[916] @ 29312
	.xfloat	$strtod("0x1.9702f2p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[917] @ 29344
	.xfloat	$strtod("0x1.997044p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[918] @ 29376
	.xfloat	$strtod("0x1.9bd72p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[919] @ 29408
	.xfloat	$strtod("0x1.9e377ap-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[920] @ 29440
	.xfloat	$strtod("0x1.a0914ap-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[921] @ 29472
	.xfloat	$strtod("0x1.a2e486p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[922] @ 29504
	.xfloat	$strtod("0x1.a53124p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[923] @ 29536
	.xfloat	$strtod("0x1.a7771ap-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[924] @ 29568
	.xfloat	$strtod("0x1.a9b662p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[925] @ 29600
	.xfloat	$strtod("0x1.abeef2p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[926] @ 29632
	.xfloat	$strtod("0x1.ae20bep-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[927] @ 29664
	.xfloat	$strtod("0x1.b04bcp-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[928] @ 29696
	.xfloat	$strtod("0x1.b26feep-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[929] @ 29728
	.xfloat	$strtod("0x1.b48d4p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[930] @ 29760
	.xfloat	$strtod("0x1.b6a3aep-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[931] @ 29792
	.xfloat	$strtod("0x1.b8b32ep-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[932] @ 29824
	.xfloat	$strtod("0x1.babbb8p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[933] @ 29856
	.xfloat	$strtod("0x1.bcbd46p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[934] @ 29888
	.xfloat	$strtod("0x1.beb7ccp-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[935] @ 29920
	.xfloat	$strtod("0x1.c0ab44p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[936] @ 29952
	.xfloat	$strtod("0x1.c297a8p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[937] @ 29984
	.xfloat	$strtod("0x1.c47ceep-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[938] @ 30016
	.xfloat	$strtod("0x1.c65b0ep-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[939] @ 30048
	.xfloat	$strtod("0x1.c83202p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[940] @ 30080
	.xfloat	$strtod("0x1.ca01c2p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[941] @ 30112
	.xfloat	$strtod("0x1.cbca46p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[942] @ 30144
	.xfloat	$strtod("0x1.cd8b86p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[943] @ 30176
	.xfloat	$strtod("0x1.cf457ep-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[944] @ 30208
	.xfloat	$strtod("0x1.d0f824p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[945] @ 30240
	.xfloat	$strtod("0x1.d2a374p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[946] @ 30272
	.xfloat	$strtod("0x1.d44764p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[947] @ 30304
	.xfloat	$strtod("0x1.d5e3fp-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[948] @ 30336
	.xfloat	$strtod("0x1.d7791p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[949] @ 30368
	.xfloat	$strtod("0x1.d906bcp-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[950] @ 30400
	.xfloat	$strtod("0x1.da8cf2p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[951] @ 30432
	.xfloat	$strtod("0x1.dc0baap-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[952] @ 30464
	.xfloat	$strtod("0x1.dd82dcp-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[953] @ 30496
	.xfloat	$strtod("0x1.def286p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[954] @ 30528
	.xfloat	$strtod("0x1.e05a9ep-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[955] @ 30560
	.xfloat	$strtod("0x1.e1bb2p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[956] @ 30592
	.xfloat	$strtod("0x1.e31406p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[957] @ 30624
	.xfloat	$strtod("0x1.e4654cp-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[958] @ 30656
	.xfloat	$strtod("0x1.e5aeecp-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[959] @ 30688
	.xfloat	$strtod("0x1.e6f0e2p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[960] @ 30720
	.xfloat	$strtod("0x1.e82b26p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[961] @ 30752
	.xfloat	$strtod("0x1.e95db4p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[962] @ 30784
	.xfloat	$strtod("0x1.ea8888p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[963] @ 30816
	.xfloat	$strtod("0x1.ebab9ep-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[964] @ 30848
	.xfloat	$strtod("0x1.ecc6eep-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[965] @ 30880
	.xfloat	$strtod("0x1.edda78p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[966] @ 30912
	.xfloat	$strtod("0x1.eee636p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[967] @ 30944
	.xfloat	$strtod("0x1.efea22p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[968] @ 30976
	.xfloat	$strtod("0x1.f0e63ap-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[969] @ 31008
	.xfloat	$strtod("0x1.f1da78p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[970] @ 31040
	.xfloat	$strtod("0x1.f2c6dap-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[971] @ 31072
	.xfloat	$strtod("0x1.f3ab5cp-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[972] @ 31104
	.xfloat	$strtod("0x1.f487fap-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[973] @ 31136
	.xfloat	$strtod("0x1.f55cb2p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[974] @ 31168
	.xfloat	$strtod("0x1.f6297cp-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[975] @ 31200
	.xfloat	$strtod("0x1.f6ee5ap-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[976] @ 31232
	.xfloat	$strtod("0x1.f7ab48p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[977] @ 31264
	.xfloat	$strtod("0x1.f8604p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[978] @ 31296
	.xfloat	$strtod("0x1.f90d42p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[979] @ 31328
	.xfloat	$strtod("0x1.f9b24ap-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[980] @ 31360
	.xfloat	$strtod("0x1.fa4f54p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[981] @ 31392
	.xfloat	$strtod("0x1.fae462p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[982] @ 31424
	.xfloat	$strtod("0x1.fb716ep-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[983] @ 31456
	.xfloat	$strtod("0x1.fbf676p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[984] @ 31488
	.xfloat	$strtod("0x1.fc7378p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[985] @ 31520
	.xfloat	$strtod("0x1.fce874p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[986] @ 31552
	.xfloat	$strtod("0x1.fd5566p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[987] @ 31584
	.xfloat	$strtod("0x1.fdba4cp-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[988] @ 31616
	.xfloat	$strtod("0x1.fe1726p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[989] @ 31648
	.xfloat	$strtod("0x1.fe6bf2p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[990] @ 31680
	.xfloat	$strtod("0x1.feb8bp-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[991] @ 31712
	.xfloat	$strtod("0x1.fefd5cp-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[992] @ 31744
	.xfloat	$strtod("0x1.ff39f6p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[993] @ 31776
	.xfloat	$strtod("0x1.ff6e7ep-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[994] @ 31808
	.xfloat	$strtod("0x1.ff9af2p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[995] @ 31840
	.xfloat	$strtod("0x1.ffbf52p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[996] @ 31872
	.xfloat	$strtod("0x1.ffdb9ep-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[997] @ 31904
	.xfloat	$strtod("0x1.ffefd4p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[998] @ 31936
	.xfloat	$strtod("0x1.fffbf6p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[999] @ 31968
	.xfloat	$strtod("0x1p+0")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[1000] @ 32000
	.xfloat	$strtod("0x1.fffbf6p-1")		; _mcb_pmsm_foc_hall_f28379_ConstP._sine_table_values_Value[1001] @ 32032

$C$DW$2	.dwtag  DW_TAG_variable
	.dwattr $C$DW$2, DW_AT_name("mcb_pmsm_foc_hall_f28379_ConstP")
	.dwattr $C$DW$2, DW_AT_TI_symbol_name("_mcb_pmsm_foc_hall_f28379_ConstP")
	.dwattr $C$DW$2, DW_AT_location[DW_OP_addr _mcb_pmsm_foc_hall_f28379_ConstP]
	.dwattr $C$DW$2, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$2, DW_AT_external

;	D:\Software\CCS\CCS12.2.0.00009_win64\c1220\ccs\tools\compiler\ti-cgt-c2000_22.6.0.LTS\bin\ac2000.exe -@C:\\Users\\13571\\AppData\\Local\\Temp\\{8E494EE5-D140-49B0-92C6-A56F7B0CBF62} 

;***************************************************************
;* TYPE INFORMATION                                            *
;***************************************************************

$C$DW$T$23	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$23, DW_AT_byte_size(0x04)
$C$DW$3	.dwtag  DW_TAG_member
	.dwattr $C$DW$3, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$3, DW_AT_name("Width")
	.dwattr $C$DW$3, DW_AT_TI_symbol_name("_Width")
	.dwattr $C$DW$3, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$3, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$4	.dwtag  DW_TAG_member
	.dwattr $C$DW$4, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$4, DW_AT_name("SpeedConstData")
	.dwattr $C$DW$4, DW_AT_TI_symbol_name("_SpeedConstData")
	.dwattr $C$DW$4, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$4, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$23

$C$DW$T$26	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$26, DW_AT_name("ConstBlockIO_mcb_pmsm_foc_hall_")
	.dwattr $C$DW$T$26, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$T$26, DW_AT_language(DW_LANG_C)

$C$DW$5	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$5, DW_AT_type(*$C$DW$T$26)

$C$DW$T$27	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$27, DW_AT_type(*$C$DW$5)


$C$DW$T$25	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$25, DW_AT_byte_size(0x7d4)
$C$DW$6	.dwtag  DW_TAG_member
	.dwattr $C$DW$6, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$6, DW_AT_name("sine_table_values_Value")
	.dwattr $C$DW$6, DW_AT_TI_symbol_name("_sine_table_values_Value")
	.dwattr $C$DW$6, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$6, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$25

$C$DW$T$28	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$28, DW_AT_name("ConstParam_mcb_pmsm_foc_hall_f2")
	.dwattr $C$DW$T$28, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$T$28, DW_AT_language(DW_LANG_C)

$C$DW$7	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$7, DW_AT_type(*$C$DW$T$28)

$C$DW$T$29	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$29, DW_AT_type(*$C$DW$7)

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

$C$DW$T$12	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$12, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$12, DW_AT_name("long")
	.dwattr $C$DW$T$12, DW_AT_byte_size(0x02)

$C$DW$T$13	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$13, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$13, DW_AT_name("unsigned long")
	.dwattr $C$DW$T$13, DW_AT_byte_size(0x02)

$C$DW$T$19	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$19, DW_AT_name("uint32_T")
	.dwattr $C$DW$T$19, DW_AT_type(*$C$DW$T$13)
	.dwattr $C$DW$T$19, DW_AT_language(DW_LANG_C)

$C$DW$8	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$8, DW_AT_type(*$C$DW$T$19)

$C$DW$T$20	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$20, DW_AT_type(*$C$DW$8)

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

$C$DW$T$21	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$21, DW_AT_name("real32_T")
	.dwattr $C$DW$T$21, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$T$21, DW_AT_language(DW_LANG_C)


$C$DW$T$24	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$24, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$T$24, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$24, DW_AT_byte_size(0x7d4)
$C$DW$9	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$9, DW_AT_upper_bound(0x3e9)

	.dwendtag $C$DW$T$24

$C$DW$10	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$10, DW_AT_type(*$C$DW$T$21)

$C$DW$T$22	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$22, DW_AT_type(*$C$DW$10)

$C$DW$T$17	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$17, DW_AT_encoding(DW_ATE_float)
	.dwattr $C$DW$T$17, DW_AT_name("double")
	.dwattr $C$DW$T$17, DW_AT_byte_size(0x02)

$C$DW$T$18	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$18, DW_AT_encoding(DW_ATE_float)
	.dwattr $C$DW$T$18, DW_AT_name("long double")
	.dwattr $C$DW$T$18, DW_AT_byte_size(0x04)

	.dwattr $C$DW$CU, DW_AT_language(DW_LANG_C)
	.dwendtag $C$DW$CU

