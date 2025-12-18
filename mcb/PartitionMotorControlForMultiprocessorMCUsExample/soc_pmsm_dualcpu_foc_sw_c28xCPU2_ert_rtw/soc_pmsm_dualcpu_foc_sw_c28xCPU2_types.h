/*
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * File: soc_pmsm_dualcpu_foc_sw_c28xCPU2_types.h
 *
 * Code generated for Simulink model 'soc_pmsm_dualcpu_foc_sw_c28xCPU2'.
 *
 * Model version                  : 1.2
 * Simulink Coder version         : 23.2 (R2023b) 01-Aug-2023
 * C/C++ source code generated on : Fri Dec 12 12:07:56 2025
 *
 * Target selection: ert.tlc
 * Embedded hardware selection: Texas Instruments->C2000
 * Code generation objectives: Unspecified
 * Validation result: Not run
 */

#ifndef RTW_HEADER_soc_pmsm_dualcpu_foc_sw_c28xCPU2_types_h_
#define RTW_HEADER_soc_pmsm_dualcpu_foc_sw_c28xCPU2_types_h_
#include "rtwtypes.h"
#ifndef DEFINED_TYPEDEF_FOR_SoCData_
#define DEFINED_TYPEDEF_FOR_SoCData_

typedef real_T SoCData;
typedef creal_T cSoCData;

#endif

#ifndef DEFINED_TYPEDEF_FOR_rteEvent_
#define DEFINED_TYPEDEF_FOR_rteEvent_

typedef struct {
  uint16_T name[64];
  uint32_T type;
  uint32_T index;
  uint32_T custom;
} rteEvent;

#endif

/* Forward declaration for rtModel */
typedef struct tag_RTM_soc_pmsm_dualcpu_foc__T RT_MODEL_soc_pmsm_dualcpu_foc_T;

#endif                /* RTW_HEADER_soc_pmsm_dualcpu_foc_sw_c28xCPU2_types_h_ */

/*
 * File trailer for generated code.
 *
 * [EOF]
 */
