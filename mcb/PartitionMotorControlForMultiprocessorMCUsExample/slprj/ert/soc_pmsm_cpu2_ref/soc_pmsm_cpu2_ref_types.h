/*
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * File: soc_pmsm_cpu2_ref_types.h
 *
 * Code generated for Simulink model 'soc_pmsm_cpu2_ref'.
 *
 * Model version                  : 8.1
 * Simulink Coder version         : 23.2 (R2023b) 01-Aug-2023
 * C/C++ source code generated on : Fri Dec 12 11:44:46 2025
 *
 * Target selection: ert.tlc
 * Embedded hardware selection: Texas Instruments->C2000
 * Code generation objectives: Unspecified
 * Validation result: Not run
 */

#ifndef RTW_HEADER_soc_pmsm_cpu2_ref_types_h_
#define RTW_HEADER_soc_pmsm_cpu2_ref_types_h_
#include "rtwtypes.h"
#include "mw_soc_ipc.h"
#include "mw_soc_c2000_ipc.h"
#include "mw_soc_pwm.h"
#include "mw_soc_drv_generic.h"
#include "mw_soc_adc.h"
#ifndef DEFINED_TYPEDEF_FOR_PWMBusObj_
#define DEFINED_TYPEDEF_FOR_PWMBusObj_

/* Bus for HW/SW Message and PWM Write and Interface */
typedef struct {
  real32_T compare[2];
  boolean_T isPeriodValid;
  real32_T period;
  boolean_T isPhaseValid;
  real32_T phase;
} PWMBusObj;

#endif

/* Custom Type definition for MATLABSystem: '<S187>/PWM Write' */
#include "mw_soc_drv_generic.h"
#ifndef struct_tag_sfCnzoXdCATDCJJHAHlPZhD
#define struct_tag_sfCnzoXdCATDCJJHAHlPZhD

struct tag_sfCnzoXdCATDCJJHAHlPZhD
{
  uint16_T signal1;
  uint16_T signal2;
};

#endif                                 /* struct_tag_sfCnzoXdCATDCJJHAHlPZhD */

#ifndef typedef_sfCnzoXdCATDCJJHAHlPZhD_soc_p_T
#define typedef_sfCnzoXdCATDCJJHAHlPZhD_soc_p_T

typedef struct tag_sfCnzoXdCATDCJJHAHlPZhD sfCnzoXdCATDCJJHAHlPZhD_soc_p_T;

#endif                             /* typedef_sfCnzoXdCATDCJJHAHlPZhD_soc_p_T */

/* Custom Type definition for MATLABSystem: '<S175>/IPC Write' */
#include "mw_soc_ipc.h"
#include "mw_soc_c2000_ipc.h"
#ifndef struct_tag_8Biiv6JebBHFuGds4jXU7
#define struct_tag_8Biiv6JebBHFuGds4jXU7

struct tag_8Biiv6JebBHFuGds4jXU7
{
  boolean_T matlabCodegenIsDeleted;
  int32_T isInitialized;
  boolean_T isSetupComplete;
  MW_IPC_Params_T IpcParams;
  MW_IPC_Handle IpcHandle;
  uint16_T DataTypeInBytes;
  uint16_T DataTypeId;
};

#endif                                 /* struct_tag_8Biiv6JebBHFuGds4jXU7 */

#ifndef typedef_soc_blocks_IPCRead_soc_pmsm_c_T
#define typedef_soc_blocks_IPCRead_soc_pmsm_c_T

typedef struct tag_8Biiv6JebBHFuGds4jXU7 soc_blocks_IPCRead_soc_pmsm_c_T;

#endif                             /* typedef_soc_blocks_IPCRead_soc_pmsm_c_T */

/* Custom Type definition for MATLABSystem: '<S175>/IPC Write' */
#include "mw_soc_ipc.h"
#ifndef struct_tag_noW8dLyD6VprGUjE2KQWDC
#define struct_tag_noW8dLyD6VprGUjE2KQWDC

struct tag_noW8dLyD6VprGUjE2KQWDC
{
  boolean_T matlabCodegenIsDeleted;
  int32_T isInitialized;
  boolean_T isSetupComplete;
  MW_IPC_Params_T IpcParams;
  MW_IPC_Handle IpcHandle;
  real_T BuffSize;
  uint16_T DataTypeInBytes;
  uint16_T DataTypeId;
  uint64_T Overwritten;
  uint16_T NumBufUsed;
};

#endif                                 /* struct_tag_noW8dLyD6VprGUjE2KQWDC */

#ifndef typedef_soc_blocks_IPCWrite_soc_pmsm__T
#define typedef_soc_blocks_IPCWrite_soc_pmsm__T

typedef struct tag_noW8dLyD6VprGUjE2KQWDC soc_blocks_IPCWrite_soc_pmsm__T;

#endif                             /* typedef_soc_blocks_IPCWrite_soc_pmsm__T */

/* Custom Type definition for MATLABSystem: '<S187>/PWM Write' */
#include "mw_soc_pwm.h"
#ifndef struct_tag_cZGiBeCY8D4pGShns8BMsD
#define struct_tag_cZGiBeCY8D4pGShns8BMsD

struct tag_cZGiBeCY8D4pGShns8BMsD
{
  boolean_T matlabCodegenIsDeleted;
  int32_T isInitialized;
  boolean_T isSetupComplete;
  MW_PWM_Params_T PwmParams;
  MW_Void_Ptr_T PwmHandle;
};

#endif                                 /* struct_tag_cZGiBeCY8D4pGShns8BMsD */

#ifndef typedef_soc_blocks_PWMWrite_soc_pmsm__T
#define typedef_soc_blocks_PWMWrite_soc_pmsm__T

typedef struct tag_cZGiBeCY8D4pGShns8BMsD soc_blocks_PWMWrite_soc_pmsm__T;

#endif                             /* typedef_soc_blocks_PWMWrite_soc_pmsm__T */

/* Custom Type definition for MATLABSystem: '<S26>/ADC Read' */
#include "mw_soc_adc.h"
#ifndef struct_tag_3slOA19oQU4fGm7jByr7FB
#define struct_tag_3slOA19oQU4fGm7jByr7FB

struct tag_3slOA19oQU4fGm7jByr7FB
{
  boolean_T matlabCodegenIsDeleted;
  int32_T isInitialized;
  boolean_T isSetupComplete;
  MW_ADC_Params_T AdcParams;
  MW_Void_Ptr_T AdcHandle;
  MW_SOC_DataType DataTypeId;
};

#endif                                 /* struct_tag_3slOA19oQU4fGm7jByr7FB */

#ifndef typedef_soc_blocks_ADCRead_soc_pmsm_c_T
#define typedef_soc_blocks_ADCRead_soc_pmsm_c_T

typedef struct tag_3slOA19oQU4fGm7jByr7FB soc_blocks_ADCRead_soc_pmsm_c_T;

#endif                             /* typedef_soc_blocks_ADCRead_soc_pmsm_c_T */

/* Parameters (default storage) */
typedef struct P_soc_pmsm_cpu2_ref_T_ P_soc_pmsm_cpu2_ref_T;

/* Forward declaration for rtModel */
typedef struct tag_RTM_soc_pmsm_cpu2_ref_T RT_MODEL_soc_pmsm_cpu2_ref_T;

#endif                               /* RTW_HEADER_soc_pmsm_cpu2_ref_types_h_ */

/*
 * File trailer for generated code.
 *
 * [EOF]
 */
