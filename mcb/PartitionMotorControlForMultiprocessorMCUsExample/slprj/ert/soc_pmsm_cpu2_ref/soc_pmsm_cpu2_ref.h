/*
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * File: soc_pmsm_cpu2_ref.h
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

#ifndef RTW_HEADER_soc_pmsm_cpu2_ref_h_
#define RTW_HEADER_soc_pmsm_cpu2_ref_h_
#ifndef soc_pmsm_cpu2_ref_COMMON_INCLUDES_
#define soc_pmsm_cpu2_ref_COMMON_INCLUDES_
#include "rtwtypes.h"
#include "mw_soc_drv_generic.h"
#include "mw_soc_adc.h"
#include "mw_soc_ipc.h"
#include "mw_soc_pwm.h"
#endif                                 /* soc_pmsm_cpu2_ref_COMMON_INCLUDES_ */

#include <stddef.h>
#include "soc_pmsm_cpu2_ref_types.h"
#include <string.h>
#include "rt_nonfinite.h"
#include "tidelfinof28379dlaunchpad_ADC_data.h"
#include "tidelfinof28379dlaunchpad_PWM_data.h"
#include "MW_target_hardware_resources.h"

extern void configureCPU2Peripherals(uint32_T gpioNumber, uint32_T gpGRegValA,
  uint32_T gpRegValA);

/* Model block global parameters (default storage) */
extern real32_T rtP_Vd_Ref_openLoop_PU;/* Variable: Vd_Ref_openLoop_PU
                                        * Referenced by: '<S38>/Vd_OpenLoop'
                                        */
extern void soc_pmsm_cpu2_ref_Init(real32_T *rty_duty1, real32_T *rty_duty2,
  real32_T *rty_duty3, real32_T *rty_VI_IPC);
extern void soc_pmsm_cpu2_ref(void);
extern void soc_pmsm_cpu2_ref_In1(real32_T *rty_duty1, real32_T *rty_duty2,
  real32_T *rty_duty3, real32_T *rty_VI_IPC);
extern void soc_pmsm_cpu2_ref_Term(void);

/* Model reference registration function */
extern void soc_pmsm_cpu2_ref_initialize(const char_T **rt_errorStatus);

/*-
 * These blocks were eliminated from the model due to optimizations:
 *
 * Block '<S16>/FixPt Data Type Propagation' : Unused code path elimination
 * Block '<S17>/FixPt Data Type Duplicate' : Unused code path elimination
 * Block '<S18>/FixPt Data Type Duplicate1' : Unused code path elimination
 * Block '<S36>/Data Type Duplicate' : Unused code path elimination
 * Block '<S44>/Data Type Duplicate' : Unused code path elimination
 * Block '<S51>/Data Type Duplicate' : Unused code path elimination
 * Block '<S51>/Data Type Propagation' : Unused code path elimination
 * Block '<S52>/Data Type Duplicate' : Unused code path elimination
 * Block '<S37>/Data Type Duplicate' : Unused code path elimination
 * Block '<S42>/Data Type Duplicate1' : Unused code path elimination
 * Block '<S42>/Data Type Duplicate2' : Unused code path elimination
 * Block '<S43>/Sqrt' : Unused code path elimination
 * Block '<S156>/Data Type Duplicate' : Unused code path elimination
 * Block '<S156>/Data Type Duplicate1' : Unused code path elimination
 * Block '<S158>/Data Type Duplicate' : Unused code path elimination
 * Block '<S158>/Data Type Duplicate1' : Unused code path elimination
 * Block '<S33>/Data Type Duplicate' : Unused code path elimination
 * Block '<S33>/Data Type Propagation' : Unused code path elimination
 * Block '<S163>/Data Type Duplicate' : Unused code path elimination
 * Block '<S164>/Data Type Duplicate' : Unused code path elimination
 * Block '<S34>/Data Type Duplicate' : Unused code path elimination
 * Block '<S34>/Vc' : Unused code path elimination
 * Block '<S171>/Data Type Duplicate' : Unused code path elimination
 * Block '<S33>/Get_FractionVal' : Eliminate redundant data type conversion
 * Block '<S176>/Data Type Conversion' : Eliminate redundant data type conversion
 * Block '<S176>/Data Type Conversion1' : Eliminate redundant data type conversion
 * Block '<S176>/Data Type Conversion2' : Eliminate redundant data type conversion
 * Block '<S180>/Data Type Conversion' : Eliminate redundant data type conversion
 * Block '<S180>/Data Type Conversion1' : Eliminate redundant data type conversion
 * Block '<S180>/Data Type Conversion2' : Eliminate redundant data type conversion
 * Block '<S184>/Data Type Conversion' : Eliminate redundant data type conversion
 * Block '<S184>/Data Type Conversion1' : Eliminate redundant data type conversion
 * Block '<S184>/Data Type Conversion2' : Eliminate redundant data type conversion
 */

/*-
 * The generated code includes comments that allow you to trace directly
 * back to the appropriate location in the model.  The basic format
 * is <system>/block_name, where system is the system number (uniquely
 * assigned by Simulink) and block_name is the name of the block.
 *
 * Use the MATLAB hilite_system command to trace the generated code back
 * to the model.  For example,
 *
 * hilite_system('<S3>')    - opens system 3
 * hilite_system('<S3>/Kp') - opens and selects block Kp which resides in S3
 *
 * Here is the system hierarchy for this model
 *
 * '<Root>' : 'soc_pmsm_cpu2_ref'
 * '<S1>'   : 'soc_pmsm_cpu2_ref/Current Control'
 * '<S2>'   : 'soc_pmsm_cpu2_ref/Current Control/ADC MidPoint Calibration'
 * '<S3>'   : 'soc_pmsm_cpu2_ref/Current Control/ADC Read B'
 * '<S4>'   : 'soc_pmsm_cpu2_ref/Current Control/ADC Read C'
 * '<S5>'   : 'soc_pmsm_cpu2_ref/Current Control/Calculate Phase Currents'
 * '<S6>'   : 'soc_pmsm_cpu2_ref/Current Control/Closed Loop'
 * '<S7>'   : 'soc_pmsm_cpu2_ref/Current Control/IPC Read'
 * '<S8>'   : 'soc_pmsm_cpu2_ref/Current Control/IPC Write'
 * '<S9>'   : 'soc_pmsm_cpu2_ref/Current Control/Output Scaling'
 * '<S10>'  : 'soc_pmsm_cpu2_ref/Current Control/PWM Write'
 * '<S11>'  : 'soc_pmsm_cpu2_ref/Current Control/PWM Write1'
 * '<S12>'  : 'soc_pmsm_cpu2_ref/Current Control/PWM Write2'
 * '<S13>'  : 'soc_pmsm_cpu2_ref/Current Control/ADC MidPoint Calibration/Detect Change'
 * '<S14>'  : 'soc_pmsm_cpu2_ref/Current Control/ADC MidPoint Calibration/Subsystem'
 * '<S15>'  : 'soc_pmsm_cpu2_ref/Current Control/ADC MidPoint Calibration/Subsystem1'
 * '<S16>'  : 'soc_pmsm_cpu2_ref/Current Control/ADC MidPoint Calibration/Subsystem/Counter Free-Running'
 * '<S17>'  : 'soc_pmsm_cpu2_ref/Current Control/ADC MidPoint Calibration/Subsystem/Counter Free-Running/Increment Real World'
 * '<S18>'  : 'soc_pmsm_cpu2_ref/Current Control/ADC MidPoint Calibration/Subsystem/Counter Free-Running/Wrap To Zero'
 * '<S19>'  : 'soc_pmsm_cpu2_ref/Current Control/ADC MidPoint Calibration/Subsystem1/If Action Subsystem'
 * '<S20>'  : 'soc_pmsm_cpu2_ref/Current Control/ADC MidPoint Calibration/Subsystem1/If Action Subsystem1'
 * '<S21>'  : 'soc_pmsm_cpu2_ref/Current Control/ADC MidPoint Calibration/Subsystem1/If Action Subsystem2'
 * '<S22>'  : 'soc_pmsm_cpu2_ref/Current Control/ADC MidPoint Calibration/Subsystem1/If Action Subsystem3'
 * '<S23>'  : 'soc_pmsm_cpu2_ref/Current Control/ADC Read B/Variant'
 * '<S24>'  : 'soc_pmsm_cpu2_ref/Current Control/ADC Read B/Variant/CODEGEN'
 * '<S25>'  : 'soc_pmsm_cpu2_ref/Current Control/ADC Read C/Variant'
 * '<S26>'  : 'soc_pmsm_cpu2_ref/Current Control/ADC Read C/Variant/CODEGEN'
 * '<S27>'  : 'soc_pmsm_cpu2_ref/Current Control/Calculate Phase Currents/Data_Type'
 * '<S28>'  : 'soc_pmsm_cpu2_ref/Current Control/Calculate Phase Currents/Data_Type/Data_Type_Float'
 * '<S29>'  : 'soc_pmsm_cpu2_ref/Current Control/Closed Loop/Clarke Transform'
 * '<S30>'  : 'soc_pmsm_cpu2_ref/Current Control/Closed Loop/Current_Controllers'
 * '<S31>'  : 'soc_pmsm_cpu2_ref/Current Control/Closed Loop/Inverse Park Transform'
 * '<S32>'  : 'soc_pmsm_cpu2_ref/Current Control/Closed Loop/Park Transform'
 * '<S33>'  : 'soc_pmsm_cpu2_ref/Current Control/Closed Loop/Sine-Cosine Lookup'
 * '<S34>'  : 'soc_pmsm_cpu2_ref/Current Control/Closed Loop/Space Vector Generator'
 * '<S35>'  : 'soc_pmsm_cpu2_ref/Current Control/Closed Loop/Clarke Transform/Two phase input'
 * '<S36>'  : 'soc_pmsm_cpu2_ref/Current Control/Closed Loop/Clarke Transform/Two phase input/Two phase CRL wrap'
 * '<S37>'  : 'soc_pmsm_cpu2_ref/Current Control/Closed Loop/Current_Controllers/DQ Limiter'
 * '<S38>'  : 'soc_pmsm_cpu2_ref/Current Control/Closed Loop/Current_Controllers/PI_Controller_Id'
 * '<S39>'  : 'soc_pmsm_cpu2_ref/Current Control/Closed Loop/Current_Controllers/PI_Controller_Iq'
 * '<S40>'  : 'soc_pmsm_cpu2_ref/Current Control/Closed Loop/Current_Controllers/DQ Limiter/D-Q Equivalence'
 * '<S41>'  : 'soc_pmsm_cpu2_ref/Current Control/Closed Loop/Current_Controllers/DQ Limiter/D//Q Axis Priority'
 * '<S42>'  : 'soc_pmsm_cpu2_ref/Current Control/Closed Loop/Current_Controllers/DQ Limiter/Inport//Dialog Selection'
 * '<S43>'  : 'soc_pmsm_cpu2_ref/Current Control/Closed Loop/Current_Controllers/DQ Limiter/Magnitude_calc'
 * '<S44>'  : 'soc_pmsm_cpu2_ref/Current Control/Closed Loop/Current_Controllers/DQ Limiter/D-Q Equivalence/Limiter'
 * '<S45>'  : 'soc_pmsm_cpu2_ref/Current Control/Closed Loop/Current_Controllers/DQ Limiter/D-Q Equivalence/Passthrough'
 * '<S46>'  : 'soc_pmsm_cpu2_ref/Current Control/Closed Loop/Current_Controllers/DQ Limiter/D//Q Axis Priority/Compare To Constant'
 * '<S47>'  : 'soc_pmsm_cpu2_ref/Current Control/Closed Loop/Current_Controllers/DQ Limiter/D//Q Axis Priority/Compare To Constant1'
 * '<S48>'  : 'soc_pmsm_cpu2_ref/Current Control/Closed Loop/Current_Controllers/DQ Limiter/D//Q Axis Priority/flipInputs'
 * '<S49>'  : 'soc_pmsm_cpu2_ref/Current Control/Closed Loop/Current_Controllers/DQ Limiter/D//Q Axis Priority/flipInputs1'
 * '<S50>'  : 'soc_pmsm_cpu2_ref/Current Control/Closed Loop/Current_Controllers/DQ Limiter/D//Q Axis Priority/limiter'
 * '<S51>'  : 'soc_pmsm_cpu2_ref/Current Control/Closed Loop/Current_Controllers/DQ Limiter/D//Q Axis Priority/limiter/limitRef1'
 * '<S52>'  : 'soc_pmsm_cpu2_ref/Current Control/Closed Loop/Current_Controllers/DQ Limiter/D//Q Axis Priority/limiter/limitRef2'
 * '<S53>'  : 'soc_pmsm_cpu2_ref/Current Control/Closed Loop/Current_Controllers/DQ Limiter/D//Q Axis Priority/limiter/passThrough'
 * '<S54>'  : 'soc_pmsm_cpu2_ref/Current Control/Closed Loop/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset'
 * '<S55>'  : 'soc_pmsm_cpu2_ref/Current Control/Closed Loop/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Anti-windup'
 * '<S56>'  : 'soc_pmsm_cpu2_ref/Current Control/Closed Loop/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/D Gain'
 * '<S57>'  : 'soc_pmsm_cpu2_ref/Current Control/Closed Loop/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Filter'
 * '<S58>'  : 'soc_pmsm_cpu2_ref/Current Control/Closed Loop/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Filter ICs'
 * '<S59>'  : 'soc_pmsm_cpu2_ref/Current Control/Closed Loop/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/I Gain'
 * '<S60>'  : 'soc_pmsm_cpu2_ref/Current Control/Closed Loop/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Ideal P Gain'
 * '<S61>'  : 'soc_pmsm_cpu2_ref/Current Control/Closed Loop/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Ideal P Gain Fdbk'
 * '<S62>'  : 'soc_pmsm_cpu2_ref/Current Control/Closed Loop/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Integrator'
 * '<S63>'  : 'soc_pmsm_cpu2_ref/Current Control/Closed Loop/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Integrator ICs'
 * '<S64>'  : 'soc_pmsm_cpu2_ref/Current Control/Closed Loop/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/N Copy'
 * '<S65>'  : 'soc_pmsm_cpu2_ref/Current Control/Closed Loop/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/N Gain'
 * '<S66>'  : 'soc_pmsm_cpu2_ref/Current Control/Closed Loop/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/P Copy'
 * '<S67>'  : 'soc_pmsm_cpu2_ref/Current Control/Closed Loop/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Parallel P Gain'
 * '<S68>'  : 'soc_pmsm_cpu2_ref/Current Control/Closed Loop/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Reset Signal'
 * '<S69>'  : 'soc_pmsm_cpu2_ref/Current Control/Closed Loop/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Saturation'
 * '<S70>'  : 'soc_pmsm_cpu2_ref/Current Control/Closed Loop/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Saturation Fdbk'
 * '<S71>'  : 'soc_pmsm_cpu2_ref/Current Control/Closed Loop/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Sum'
 * '<S72>'  : 'soc_pmsm_cpu2_ref/Current Control/Closed Loop/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Sum Fdbk'
 * '<S73>'  : 'soc_pmsm_cpu2_ref/Current Control/Closed Loop/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Tracking Mode'
 * '<S74>'  : 'soc_pmsm_cpu2_ref/Current Control/Closed Loop/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Tracking Mode Sum'
 * '<S75>'  : 'soc_pmsm_cpu2_ref/Current Control/Closed Loop/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Tsamp - Integral'
 * '<S76>'  : 'soc_pmsm_cpu2_ref/Current Control/Closed Loop/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Tsamp - Ngain'
 * '<S77>'  : 'soc_pmsm_cpu2_ref/Current Control/Closed Loop/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/postSat Signal'
 * '<S78>'  : 'soc_pmsm_cpu2_ref/Current Control/Closed Loop/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/preSat Signal'
 * '<S79>'  : 'soc_pmsm_cpu2_ref/Current Control/Closed Loop/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Anti-windup/Disc. Clamping Parallel'
 * '<S80>'  : 'soc_pmsm_cpu2_ref/Current Control/Closed Loop/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Anti-windup/Disc. Clamping Parallel/Dead Zone'
 * '<S81>'  : 'soc_pmsm_cpu2_ref/Current Control/Closed Loop/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Anti-windup/Disc. Clamping Parallel/Dead Zone/Enabled'
 * '<S82>'  : 'soc_pmsm_cpu2_ref/Current Control/Closed Loop/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/D Gain/Disabled'
 * '<S83>'  : 'soc_pmsm_cpu2_ref/Current Control/Closed Loop/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Filter/Disabled'
 * '<S84>'  : 'soc_pmsm_cpu2_ref/Current Control/Closed Loop/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Filter ICs/Disabled'
 * '<S85>'  : 'soc_pmsm_cpu2_ref/Current Control/Closed Loop/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/I Gain/External Parameters'
 * '<S86>'  : 'soc_pmsm_cpu2_ref/Current Control/Closed Loop/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Ideal P Gain/Passthrough'
 * '<S87>'  : 'soc_pmsm_cpu2_ref/Current Control/Closed Loop/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Ideal P Gain Fdbk/Disabled'
 * '<S88>'  : 'soc_pmsm_cpu2_ref/Current Control/Closed Loop/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Integrator/Discrete'
 * '<S89>'  : 'soc_pmsm_cpu2_ref/Current Control/Closed Loop/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Integrator ICs/External IC'
 * '<S90>'  : 'soc_pmsm_cpu2_ref/Current Control/Closed Loop/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/N Copy/Disabled wSignal Specification'
 * '<S91>'  : 'soc_pmsm_cpu2_ref/Current Control/Closed Loop/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/N Gain/Disabled'
 * '<S92>'  : 'soc_pmsm_cpu2_ref/Current Control/Closed Loop/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/P Copy/Disabled'
 * '<S93>'  : 'soc_pmsm_cpu2_ref/Current Control/Closed Loop/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Parallel P Gain/External Parameters'
 * '<S94>'  : 'soc_pmsm_cpu2_ref/Current Control/Closed Loop/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Reset Signal/External Reset'
 * '<S95>'  : 'soc_pmsm_cpu2_ref/Current Control/Closed Loop/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Saturation/Enabled'
 * '<S96>'  : 'soc_pmsm_cpu2_ref/Current Control/Closed Loop/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Saturation Fdbk/Disabled'
 * '<S97>'  : 'soc_pmsm_cpu2_ref/Current Control/Closed Loop/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Sum/Sum_PI'
 * '<S98>'  : 'soc_pmsm_cpu2_ref/Current Control/Closed Loop/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Sum Fdbk/Disabled'
 * '<S99>'  : 'soc_pmsm_cpu2_ref/Current Control/Closed Loop/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Tracking Mode/Disabled'
 * '<S100>' : 'soc_pmsm_cpu2_ref/Current Control/Closed Loop/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Tracking Mode Sum/Passthrough'
 * '<S101>' : 'soc_pmsm_cpu2_ref/Current Control/Closed Loop/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Tsamp - Integral/TsSignalSpecification'
 * '<S102>' : 'soc_pmsm_cpu2_ref/Current Control/Closed Loop/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Tsamp - Ngain/Passthrough'
 * '<S103>' : 'soc_pmsm_cpu2_ref/Current Control/Closed Loop/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/postSat Signal/Forward_Path'
 * '<S104>' : 'soc_pmsm_cpu2_ref/Current Control/Closed Loop/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/preSat Signal/Forward_Path'
 * '<S105>' : 'soc_pmsm_cpu2_ref/Current Control/Closed Loop/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset'
 * '<S106>' : 'soc_pmsm_cpu2_ref/Current Control/Closed Loop/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Anti-windup'
 * '<S107>' : 'soc_pmsm_cpu2_ref/Current Control/Closed Loop/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/D Gain'
 * '<S108>' : 'soc_pmsm_cpu2_ref/Current Control/Closed Loop/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Filter'
 * '<S109>' : 'soc_pmsm_cpu2_ref/Current Control/Closed Loop/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Filter ICs'
 * '<S110>' : 'soc_pmsm_cpu2_ref/Current Control/Closed Loop/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/I Gain'
 * '<S111>' : 'soc_pmsm_cpu2_ref/Current Control/Closed Loop/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Ideal P Gain'
 * '<S112>' : 'soc_pmsm_cpu2_ref/Current Control/Closed Loop/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Ideal P Gain Fdbk'
 * '<S113>' : 'soc_pmsm_cpu2_ref/Current Control/Closed Loop/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Integrator'
 * '<S114>' : 'soc_pmsm_cpu2_ref/Current Control/Closed Loop/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Integrator ICs'
 * '<S115>' : 'soc_pmsm_cpu2_ref/Current Control/Closed Loop/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/N Copy'
 * '<S116>' : 'soc_pmsm_cpu2_ref/Current Control/Closed Loop/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/N Gain'
 * '<S117>' : 'soc_pmsm_cpu2_ref/Current Control/Closed Loop/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/P Copy'
 * '<S118>' : 'soc_pmsm_cpu2_ref/Current Control/Closed Loop/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Parallel P Gain'
 * '<S119>' : 'soc_pmsm_cpu2_ref/Current Control/Closed Loop/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Reset Signal'
 * '<S120>' : 'soc_pmsm_cpu2_ref/Current Control/Closed Loop/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Saturation'
 * '<S121>' : 'soc_pmsm_cpu2_ref/Current Control/Closed Loop/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Saturation Fdbk'
 * '<S122>' : 'soc_pmsm_cpu2_ref/Current Control/Closed Loop/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Sum'
 * '<S123>' : 'soc_pmsm_cpu2_ref/Current Control/Closed Loop/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Sum Fdbk'
 * '<S124>' : 'soc_pmsm_cpu2_ref/Current Control/Closed Loop/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Tracking Mode'
 * '<S125>' : 'soc_pmsm_cpu2_ref/Current Control/Closed Loop/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Tracking Mode Sum'
 * '<S126>' : 'soc_pmsm_cpu2_ref/Current Control/Closed Loop/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Tsamp - Integral'
 * '<S127>' : 'soc_pmsm_cpu2_ref/Current Control/Closed Loop/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Tsamp - Ngain'
 * '<S128>' : 'soc_pmsm_cpu2_ref/Current Control/Closed Loop/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/postSat Signal'
 * '<S129>' : 'soc_pmsm_cpu2_ref/Current Control/Closed Loop/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/preSat Signal'
 * '<S130>' : 'soc_pmsm_cpu2_ref/Current Control/Closed Loop/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Anti-windup/Disc. Clamping Parallel'
 * '<S131>' : 'soc_pmsm_cpu2_ref/Current Control/Closed Loop/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Anti-windup/Disc. Clamping Parallel/Dead Zone'
 * '<S132>' : 'soc_pmsm_cpu2_ref/Current Control/Closed Loop/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Anti-windup/Disc. Clamping Parallel/Dead Zone/Enabled'
 * '<S133>' : 'soc_pmsm_cpu2_ref/Current Control/Closed Loop/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/D Gain/Disabled'
 * '<S134>' : 'soc_pmsm_cpu2_ref/Current Control/Closed Loop/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Filter/Disabled'
 * '<S135>' : 'soc_pmsm_cpu2_ref/Current Control/Closed Loop/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Filter ICs/Disabled'
 * '<S136>' : 'soc_pmsm_cpu2_ref/Current Control/Closed Loop/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/I Gain/External Parameters'
 * '<S137>' : 'soc_pmsm_cpu2_ref/Current Control/Closed Loop/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Ideal P Gain/Passthrough'
 * '<S138>' : 'soc_pmsm_cpu2_ref/Current Control/Closed Loop/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Ideal P Gain Fdbk/Disabled'
 * '<S139>' : 'soc_pmsm_cpu2_ref/Current Control/Closed Loop/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Integrator/Discrete'
 * '<S140>' : 'soc_pmsm_cpu2_ref/Current Control/Closed Loop/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Integrator ICs/External IC'
 * '<S141>' : 'soc_pmsm_cpu2_ref/Current Control/Closed Loop/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/N Copy/Disabled wSignal Specification'
 * '<S142>' : 'soc_pmsm_cpu2_ref/Current Control/Closed Loop/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/N Gain/Disabled'
 * '<S143>' : 'soc_pmsm_cpu2_ref/Current Control/Closed Loop/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/P Copy/Disabled'
 * '<S144>' : 'soc_pmsm_cpu2_ref/Current Control/Closed Loop/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Parallel P Gain/External Parameters'
 * '<S145>' : 'soc_pmsm_cpu2_ref/Current Control/Closed Loop/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Reset Signal/External Reset'
 * '<S146>' : 'soc_pmsm_cpu2_ref/Current Control/Closed Loop/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Saturation/Enabled'
 * '<S147>' : 'soc_pmsm_cpu2_ref/Current Control/Closed Loop/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Saturation Fdbk/Disabled'
 * '<S148>' : 'soc_pmsm_cpu2_ref/Current Control/Closed Loop/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Sum/Sum_PI'
 * '<S149>' : 'soc_pmsm_cpu2_ref/Current Control/Closed Loop/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Sum Fdbk/Disabled'
 * '<S150>' : 'soc_pmsm_cpu2_ref/Current Control/Closed Loop/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Tracking Mode/Disabled'
 * '<S151>' : 'soc_pmsm_cpu2_ref/Current Control/Closed Loop/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Tracking Mode Sum/Passthrough'
 * '<S152>' : 'soc_pmsm_cpu2_ref/Current Control/Closed Loop/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Tsamp - Integral/TsSignalSpecification'
 * '<S153>' : 'soc_pmsm_cpu2_ref/Current Control/Closed Loop/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Tsamp - Ngain/Passthrough'
 * '<S154>' : 'soc_pmsm_cpu2_ref/Current Control/Closed Loop/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/postSat Signal/Forward_Path'
 * '<S155>' : 'soc_pmsm_cpu2_ref/Current Control/Closed Loop/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/preSat Signal/Forward_Path'
 * '<S156>' : 'soc_pmsm_cpu2_ref/Current Control/Closed Loop/Inverse Park Transform/Two inputs CRL'
 * '<S157>' : 'soc_pmsm_cpu2_ref/Current Control/Closed Loop/Inverse Park Transform/Two inputs CRL/Switch_Axis'
 * '<S158>' : 'soc_pmsm_cpu2_ref/Current Control/Closed Loop/Park Transform/Two inputs CRL'
 * '<S159>' : 'soc_pmsm_cpu2_ref/Current Control/Closed Loop/Park Transform/Two inputs CRL/Switch_Axis'
 * '<S160>' : 'soc_pmsm_cpu2_ref/Current Control/Closed Loop/Sine-Cosine Lookup/Interpolation'
 * '<S161>' : 'soc_pmsm_cpu2_ref/Current Control/Closed Loop/Sine-Cosine Lookup/WrapUp'
 * '<S162>' : 'soc_pmsm_cpu2_ref/Current Control/Closed Loop/Sine-Cosine Lookup/WrapUp/Compare To Zero'
 * '<S163>' : 'soc_pmsm_cpu2_ref/Current Control/Closed Loop/Sine-Cosine Lookup/WrapUp/If Action Subsystem'
 * '<S164>' : 'soc_pmsm_cpu2_ref/Current Control/Closed Loop/Sine-Cosine Lookup/WrapUp/If Action Subsystem1'
 * '<S165>' : 'soc_pmsm_cpu2_ref/Current Control/Closed Loop/Space Vector Generator/Modulation method'
 * '<S166>' : 'soc_pmsm_cpu2_ref/Current Control/Closed Loop/Space Vector Generator/Voltage Input'
 * '<S167>' : 'soc_pmsm_cpu2_ref/Current Control/Closed Loop/Space Vector Generator/Modulation method/SVPWM'
 * '<S168>' : 'soc_pmsm_cpu2_ref/Current Control/Closed Loop/Space Vector Generator/Modulation method/SVPWM/Half(Vmin+Vmax)'
 * '<S169>' : 'soc_pmsm_cpu2_ref/Current Control/Closed Loop/Space Vector Generator/Voltage Input/Valphabeta'
 * '<S170>' : 'soc_pmsm_cpu2_ref/Current Control/Closed Loop/Space Vector Generator/Voltage Input/Valphabeta/Inverse Clarke Transform'
 * '<S171>' : 'soc_pmsm_cpu2_ref/Current Control/Closed Loop/Space Vector Generator/Voltage Input/Valphabeta/Inverse Clarke Transform/Two phase input'
 * '<S172>' : 'soc_pmsm_cpu2_ref/Current Control/IPC Read/Variant'
 * '<S173>' : 'soc_pmsm_cpu2_ref/Current Control/IPC Read/Variant/CODEGEN'
 * '<S174>' : 'soc_pmsm_cpu2_ref/Current Control/IPC Write/Variant'
 * '<S175>' : 'soc_pmsm_cpu2_ref/Current Control/IPC Write/Variant/CODEGEN'
 * '<S176>' : 'soc_pmsm_cpu2_ref/Current Control/PWM Write/Subsystem'
 * '<S177>' : 'soc_pmsm_cpu2_ref/Current Control/PWM Write/Variant'
 * '<S178>' : 'soc_pmsm_cpu2_ref/Current Control/PWM Write/Subsystem/Compare To Constant'
 * '<S179>' : 'soc_pmsm_cpu2_ref/Current Control/PWM Write/Variant/CODEGEN'
 * '<S180>' : 'soc_pmsm_cpu2_ref/Current Control/PWM Write1/Subsystem'
 * '<S181>' : 'soc_pmsm_cpu2_ref/Current Control/PWM Write1/Variant'
 * '<S182>' : 'soc_pmsm_cpu2_ref/Current Control/PWM Write1/Subsystem/Compare To Constant'
 * '<S183>' : 'soc_pmsm_cpu2_ref/Current Control/PWM Write1/Variant/CODEGEN'
 * '<S184>' : 'soc_pmsm_cpu2_ref/Current Control/PWM Write2/Subsystem'
 * '<S185>' : 'soc_pmsm_cpu2_ref/Current Control/PWM Write2/Variant'
 * '<S186>' : 'soc_pmsm_cpu2_ref/Current Control/PWM Write2/Subsystem/Compare To Constant'
 * '<S187>' : 'soc_pmsm_cpu2_ref/Current Control/PWM Write2/Variant/CODEGEN'
 */
#endif                                 /* RTW_HEADER_soc_pmsm_cpu2_ref_h_ */

/*
 * File trailer for generated code.
 *
 * [EOF]
 */
