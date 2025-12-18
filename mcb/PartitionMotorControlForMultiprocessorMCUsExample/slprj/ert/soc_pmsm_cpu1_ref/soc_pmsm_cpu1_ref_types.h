/*
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * File: soc_pmsm_cpu1_ref_types.h
 *
 * Code generated for Simulink model 'soc_pmsm_cpu1_ref'.
 *
 * Model version                  : 8.1
 * Simulink Coder version         : 23.2 (R2023b) 01-Aug-2023
 * C/C++ source code generated on : Fri Dec 12 11:43:52 2025
 *
 * Target selection: ert.tlc
 * Embedded hardware selection: Texas Instruments->C2000
 * Code generation objectives: Unspecified
 * Validation result: Not run
 */

#ifndef RTW_HEADER_soc_pmsm_cpu1_ref_types_h_
#define RTW_HEADER_soc_pmsm_cpu1_ref_types_h_
#include "rtwtypes.h"
#include "mw_soc_ipc.h"
#include "mw_soc_c2000_ipc.h"
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

/* Custom Type definition for MATLABSystem: '<S43>/IPC Write' */
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

/* Custom Type definition for MATLABSystem: '<S43>/IPC Write' */
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

/* Parameters for system: '<Root>/Speed Control1' */
typedef struct P_SpeedControl1_soc_pmsm_cpu1_T_ P_SpeedControl1_soc_pmsm_cpu1_T;

/* Parameters (default storage) */
typedef struct P_soc_pmsm_cpu1_ref_T_ P_soc_pmsm_cpu1_ref_T;

/* Forward declaration for rtModel */
typedef struct tag_RTM_soc_pmsm_cpu1_ref_T RT_MODEL_soc_pmsm_cpu1_ref_T;

#endif                               /* RTW_HEADER_soc_pmsm_cpu1_ref_types_h_ */

/*
 * File trailer for generated code.
 *
 * [EOF]
 */
