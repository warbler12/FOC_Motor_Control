/*
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * File: mcb_pmsm_foc_test_f28379d_types.h
 *
 * Code generated for Simulink model 'mcb_pmsm_foc_test_f28379d'.
 *
 * Model version                  : 7.13
 * Simulink Coder version         : 23.2 (R2023b) 01-Aug-2023
 * C/C++ source code generated on : Tue Dec  9 23:18:23 2025
 *
 * Target selection: ert.tlc
 * Embedded hardware selection: Texas Instruments->C2000
 * Code generation objectives: Unspecified
 * Validation result: Not run
 */

#ifndef RTW_HEADER_mcb_pmsm_foc_test_f28379d_types_h_
#define RTW_HEADER_mcb_pmsm_foc_test_f28379d_types_h_
#include "rtwtypes.h"
#include "MW_c2000SPI.h"

/* Custom Type definition for MATLABSystem: '<S229>/SPI Master Transfer' */
#include "MW_c2000SPI.h"
#ifndef struct_tag_RL3bf5VyBoZJTCiPpDuhAE
#define struct_tag_RL3bf5VyBoZJTCiPpDuhAE

struct tag_RL3bf5VyBoZJTCiPpDuhAE
{
  boolean_T matlabCodegenIsDeleted;
  int32_T isInitialized;
  boolean_T isSetupComplete;
  MW_Handle_Type MW_SPI_HANDLE;
};

#endif                                 /* struct_tag_RL3bf5VyBoZJTCiPpDuhAE */

#ifndef typedef_codertarget_tic2000_blocks_SP_T
#define typedef_codertarget_tic2000_blocks_SP_T

typedef struct tag_RL3bf5VyBoZJTCiPpDuhAE codertarget_tic2000_blocks_SP_T;

#endif                             /* typedef_codertarget_tic2000_blocks_SP_T */

/* Forward declaration for rtModel */
typedef struct tag_RTM_mcb_pmsm_foc_test_f28_T RT_MODEL_mcb_pmsm_foc_test_f2_T;

#endif                       /* RTW_HEADER_mcb_pmsm_foc_test_f28379d_types_h_ */

/*
 * File trailer for generated code.
 *
 * [EOF]
 */
