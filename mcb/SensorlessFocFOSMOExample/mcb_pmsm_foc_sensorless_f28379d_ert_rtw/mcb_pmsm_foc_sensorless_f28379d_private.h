/*
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * File: mcb_pmsm_foc_sensorless_f28379d_private.h
 *
 * Code generated for Simulink model 'mcb_pmsm_foc_sensorless_f28379d'.
 *
 * Model version                  : 7.2
 * Simulink Coder version         : 23.2 (R2023b) 01-Aug-2023
 * C/C++ source code generated on : Thu Dec  4 20:29:46 2025
 *
 * Target selection: ert.tlc
 * Embedded hardware selection: Texas Instruments->C2000
 * Code generation objectives: Unspecified
 * Validation result: Not run
 */

#ifndef RTW_HEADER_mcb_pmsm_foc_sensorless_f28379d_private_h_
#define RTW_HEADER_mcb_pmsm_foc_sensorless_f28379d_private_h_
#include "rtwtypes.h"
#include "zero_crossing_types.h"
#include "mcb_pmsm_foc_sensorless_f28379d.h"
#include "mcb_pmsm_foc_sensorless_f28379d_types.h"
#ifndef UCHAR_MAX
#include <limits.h>
#endif

#if ( UCHAR_MAX != (0xFFFFU) ) || ( SCHAR_MAX != (0x7FFF) )
#error Code was generated for compiler with different sized uchar/char. \
Consider adjusting Test hardware word size settings on the \
Hardware Implementation pane to match your compiler word sizes as \
defined in limits.h of the compiler. Alternatively, you can \
select the Test hardware is the same as production hardware option and \
select the Enable portable word sizes option on the Code Generation > \
Verification pane for ERT based targets, which will disable the \
preprocessor word size checks.
#endif

#if ( USHRT_MAX != (0xFFFFU) ) || ( SHRT_MAX != (0x7FFF) )
#error Code was generated for compiler with different sized ushort/short. \
Consider adjusting Test hardware word size settings on the \
Hardware Implementation pane to match your compiler word sizes as \
defined in limits.h of the compiler. Alternatively, you can \
select the Test hardware is the same as production hardware option and \
select the Enable portable word sizes option on the Code Generation > \
Verification pane for ERT based targets, which will disable the \
preprocessor word size checks.
#endif

#if ( UINT_MAX != (0xFFFFU) ) || ( INT_MAX != (0x7FFF) )
#error Code was generated for compiler with different sized uint/int. \
Consider adjusting Test hardware word size settings on the \
Hardware Implementation pane to match your compiler word sizes as \
defined in limits.h of the compiler. Alternatively, you can \
select the Test hardware is the same as production hardware option and \
select the Enable portable word sizes option on the Code Generation > \
Verification pane for ERT based targets, which will disable the \
preprocessor word size checks.
#endif

#if ( ULONG_MAX != (0xFFFFFFFFUL) ) || ( LONG_MAX != (0x7FFFFFFFL) )
#error Code was generated for compiler with different sized ulong/long. \
Consider adjusting Test hardware word size settings on the \
Hardware Implementation pane to match your compiler word sizes as \
defined in limits.h of the compiler. Alternatively, you can \
select the Test hardware is the same as production hardware option and \
select the Enable portable word sizes option on the Code Generation > \
Verification pane for ERT based targets, which will disable the \
preprocessor word size checks.
#endif

/* Skipping ulong_long/long_long check: insufficient preprocessor integer range. */
void InitAdcC (void);
void config_ADCC_SOC0 (void);
void InitAdcB (void);
void config_ADCB_SOC0 (void);
void config_ADCB_SOC2 (void);
void config_ADCC_SOC2 (void);
extern uint16_T MW_adcCInitFlag;
extern uint16_T MW_adcBInitFlag;
extern void mcb_pmsm_foc_sen_Accumulate(boolean_T rtu_Enable, real32_T rtu_Theta,
  real32_T rtu_Theta_e_prev, rtB_Accumulate_mcb_pmsm_foc_sen *localB,
  rtDW_Accumulate_mcb_pmsm_foc_se *localDW);
extern void mcb_pmsm__IfActionSubsystem(real32_T rtu_In1, real32_T *rty_Out1,
  rtB_IfActionSubsystem_mcb_pmsm_ *localB);
extern void mcb_pmsm_IfActionSubsystem1(real32_T rtu_In1, real32_T *rty_Out1,
  rtB_IfActionSubsystem1_mcb_pmsm *localB);
extern void mcb_pmsm_foc_sens_Dir_Sense(boolean_T rtu_A, boolean_T rtu_B,
  rtB_Dir_Sense_mcb_pmsm_foc_sens *localB, rtZCE_Dir_Sense_mcb_pmsm_foc_se
  *localZCE);
extern void mcb_pmsm_foc_sen_Subsystem2(real32_T rtu_SigmaAlpha, real32_T
  rtu_SigmaBeta, real32_T *rty_Out1, real32_T *rty_Out2);
extern void mcb__SPIMasterTransfer_Init(rtDW_SPIMasterTransfer_mcb_pmsm *localDW);
extern void mcb_pmsm__SPIMasterTransfer(uint16_T rtu_0,
  rtB_SPIMasterTransfer_mcb_pmsm_ *localB, rtDW_SPIMasterTransfer_mcb_pmsm
  *localDW);
extern void mcb_pmsm__SpeedControl_Init(rtB_SpeedControl_mcb_pmsm_foc_s *localB,
  rtDW_SpeedControl_mcb_pmsm_foc_ *localDW);
extern void mcb_pmsm_foc_s_SpeedControl(real32_T rtu_Speed_Ref_PU, real32_T
  rtu_Speed_Meas_PU, const boolean_T *rtd_EnClosedLoop, const boolean_T
  *rtd_Enable, const real32_T *rtd_Speed_ref, rtB_SpeedControl_mcb_pmsm_foc_s
  *localB, rtDW_SpeedControl_mcb_pmsm_foc_ *localDW);
extern void mcb__SPIMasterTransfer_Term(rtDW_SPIMasterTransfer_mcb_pmsm *localDW);

#endif               /* RTW_HEADER_mcb_pmsm_foc_sensorless_f28379d_private_h_ */

/*
 * File trailer for generated code.
 *
 * [EOF]
 */
