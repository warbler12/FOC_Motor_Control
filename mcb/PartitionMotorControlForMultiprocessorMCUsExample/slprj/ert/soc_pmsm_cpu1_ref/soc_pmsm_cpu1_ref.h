/*
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * File: soc_pmsm_cpu1_ref.h
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

#ifndef RTW_HEADER_soc_pmsm_cpu1_ref_h_
#define RTW_HEADER_soc_pmsm_cpu1_ref_h_
#ifndef soc_pmsm_cpu1_ref_COMMON_INCLUDES_
#define soc_pmsm_cpu1_ref_COMMON_INCLUDES_
#include "rtwtypes.h"
#include "mw_soc_drv_generic.h"
#include "mw_soc_ipc.h"
#endif                                 /* soc_pmsm_cpu1_ref_COMMON_INCLUDES_ */

#include <stddef.h>
#include "soc_pmsm_cpu1_ref_types.h"
#include "model_reference_types.h"
#include <string.h>
#include "rt_nonfinite.h"

extern void soc_pmsm_cpu1_ref_Init(void);
extern void soc_pmsm_cpu1_refTID0(void);
extern void soc_pmsm_cpu1_refTID1(void);
extern void soc_pmsm_cpu1_ref_Term(void);

/* Model reference registration function */
extern void soc_pmsm_cpu1_re_initialize(const char_T **rt_errorStatus, const
  rtTimingBridge *timingBridge, int_T mdlref_TID0, int_T mdlref_TID1);

/*-
 * These blocks were eliminated from the model due to optimizations:
 *
 * Block '<S15>/Data Type Duplicate' : Unused code path elimination
 * Block '<S8>/Data Type Duplicate' : Unused code path elimination
 * Block '<S8>/Data Type Conversion' : Unused code path elimination
 * Block '<S8>/Data Type Conversion1' : Unused code path elimination
 * Block '<S8>/FluxGain' : Unused code path elimination
 * Block '<S8>/Product' : Unused code path elimination
 * Block '<S8>/Product1' : Unused code path elimination
 * Block '<S8>/Product2' : Unused code path elimination
 * Block '<S8>/Product3' : Unused code path elimination
 * Block '<S8>/Product4' : Unused code path elimination
 * Block '<S8>/Sqrt' : Unused code path elimination
 * Block '<S8>/Sum' : Unused code path elimination
 * Block '<S8>/Sum1' : Unused code path elimination
 * Block '<S8>/TorqueGain' : Unused code path elimination
 * Block '<S8>/TorqueGainDatatype' : Unused code path elimination
 * Block '<S17>/AlphaDataProp2' : Unused code path elimination
 * Block '<S17>/Data Type Duplicate' : Unused code path elimination
 * Block '<S23>/Data Type Duplicate' : Unused code path elimination
 * Block '<S19>/AlphaDataProp1' : Unused code path elimination
 * Block '<S24>/BetaDataProp2' : Unused code path elimination
 * Block '<S24>/Data Type Duplicate' : Unused code path elimination
 * Block '<S30>/Data Type Duplicate' : Unused code path elimination
 * Block '<S26>/BetaDataProp1' : Unused code path elimination
 * Block '<S33>/Data Type Duplicate' : Unused code path elimination
 * Block '<S39>/Data Type Duplicate' : Unused code path elimination
 * Block '<S44>/Data Type Duplicate2' : Unused code path elimination
 * Block '<S103>/Data Type Duplicate' : Unused code path elimination
 * Block '<S15>/Data Type Conversion' : Eliminate redundant data type conversion
 * Block '<S15>/Data Type Conversion1' : Eliminate redundant data type conversion
 * Block '<S15>/Data Type Conversion2' : Eliminate redundant data type conversion
 * Block '<S8>/Data Type Conversion2' : Eliminate redundant data type conversion
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
 * '<Root>' : 'soc_pmsm_cpu1_ref'
 * '<S1>'   : 'soc_pmsm_cpu1_ref/Calculate position and speed'
 * '<S2>'   : 'soc_pmsm_cpu1_ref/IPC Read'
 * '<S3>'   : 'soc_pmsm_cpu1_ref/IPC Write'
 * '<S4>'   : 'soc_pmsm_cpu1_ref/Open_Loop_Control'
 * '<S5>'   : 'soc_pmsm_cpu1_ref/Speed Control1'
 * '<S6>'   : 'soc_pmsm_cpu1_ref/Calculate position and speed/Flux Observer'
 * '<S7>'   : 'soc_pmsm_cpu1_ref/Calculate position and speed/High pass filter'
 * '<S8>'   : 'soc_pmsm_cpu1_ref/Calculate position and speed/Flux Observer/Flux Observer'
 * '<S9>'   : 'soc_pmsm_cpu1_ref/Calculate position and speed/Flux Observer/IIR Filter4'
 * '<S10>'  : 'soc_pmsm_cpu1_ref/Calculate position and speed/Flux Observer/Speed Measurement'
 * '<S11>'  : 'soc_pmsm_cpu1_ref/Calculate position and speed/Flux Observer/Flux Observer/Atan2'
 * '<S12>'  : 'soc_pmsm_cpu1_ref/Calculate position and speed/Flux Observer/Flux Observer/psiAlpha'
 * '<S13>'  : 'soc_pmsm_cpu1_ref/Calculate position and speed/Flux Observer/Flux Observer/psiBeta'
 * '<S14>'  : 'soc_pmsm_cpu1_ref/Calculate position and speed/Flux Observer/Flux Observer/Atan2/Default'
 * '<S15>'  : 'soc_pmsm_cpu1_ref/Calculate position and speed/Flux Observer/Flux Observer/Atan2/Default/atan2'
 * '<S16>'  : 'soc_pmsm_cpu1_ref/Calculate position and speed/Flux Observer/Flux Observer/Atan2/Default/atan2/Per Unit'
 * '<S17>'  : 'soc_pmsm_cpu1_ref/Calculate position and speed/Flux Observer/Flux Observer/psiAlpha/Default'
 * '<S18>'  : 'soc_pmsm_cpu1_ref/Calculate position and speed/Flux Observer/Flux Observer/psiAlpha/Default/IIR Filter'
 * '<S19>'  : 'soc_pmsm_cpu1_ref/Calculate position and speed/Flux Observer/Flux Observer/psiAlpha/Default/Integrator'
 * '<S20>'  : 'soc_pmsm_cpu1_ref/Calculate position and speed/Flux Observer/Flux Observer/psiAlpha/Default/Scaling'
 * '<S21>'  : 'soc_pmsm_cpu1_ref/Calculate position and speed/Flux Observer/Flux Observer/psiAlpha/Default/IIR Filter/IIR Filter'
 * '<S22>'  : 'soc_pmsm_cpu1_ref/Calculate position and speed/Flux Observer/Flux Observer/psiAlpha/Default/IIR Filter/IIR Filter/High-pass'
 * '<S23>'  : 'soc_pmsm_cpu1_ref/Calculate position and speed/Flux Observer/Flux Observer/psiAlpha/Default/IIR Filter/IIR Filter/High-pass/IIR Low Pass Filter'
 * '<S24>'  : 'soc_pmsm_cpu1_ref/Calculate position and speed/Flux Observer/Flux Observer/psiBeta/Default'
 * '<S25>'  : 'soc_pmsm_cpu1_ref/Calculate position and speed/Flux Observer/Flux Observer/psiBeta/Default/IIR Filter'
 * '<S26>'  : 'soc_pmsm_cpu1_ref/Calculate position and speed/Flux Observer/Flux Observer/psiBeta/Default/Integrator'
 * '<S27>'  : 'soc_pmsm_cpu1_ref/Calculate position and speed/Flux Observer/Flux Observer/psiBeta/Default/Scaling'
 * '<S28>'  : 'soc_pmsm_cpu1_ref/Calculate position and speed/Flux Observer/Flux Observer/psiBeta/Default/IIR Filter/IIR Filter'
 * '<S29>'  : 'soc_pmsm_cpu1_ref/Calculate position and speed/Flux Observer/Flux Observer/psiBeta/Default/IIR Filter/IIR Filter/High-pass'
 * '<S30>'  : 'soc_pmsm_cpu1_ref/Calculate position and speed/Flux Observer/Flux Observer/psiBeta/Default/IIR Filter/IIR Filter/High-pass/IIR Low Pass Filter'
 * '<S31>'  : 'soc_pmsm_cpu1_ref/Calculate position and speed/Flux Observer/IIR Filter4/IIR Filter'
 * '<S32>'  : 'soc_pmsm_cpu1_ref/Calculate position and speed/Flux Observer/IIR Filter4/IIR Filter/Low-pass'
 * '<S33>'  : 'soc_pmsm_cpu1_ref/Calculate position and speed/Flux Observer/IIR Filter4/IIR Filter/Low-pass/IIR Low Pass Filter'
 * '<S34>'  : 'soc_pmsm_cpu1_ref/Calculate position and speed/Flux Observer/Speed Measurement/DT_Handle'
 * '<S35>'  : 'soc_pmsm_cpu1_ref/Calculate position and speed/Flux Observer/Speed Measurement/DT_Handle/floating-point'
 * '<S36>'  : 'soc_pmsm_cpu1_ref/Calculate position and speed/High pass filter/IIR Filter4'
 * '<S37>'  : 'soc_pmsm_cpu1_ref/Calculate position and speed/High pass filter/IIR Filter4/IIR Filter'
 * '<S38>'  : 'soc_pmsm_cpu1_ref/Calculate position and speed/High pass filter/IIR Filter4/IIR Filter/Low-pass'
 * '<S39>'  : 'soc_pmsm_cpu1_ref/Calculate position and speed/High pass filter/IIR Filter4/IIR Filter/Low-pass/IIR Low Pass Filter'
 * '<S40>'  : 'soc_pmsm_cpu1_ref/IPC Read/Variant'
 * '<S41>'  : 'soc_pmsm_cpu1_ref/IPC Read/Variant/CODEGEN'
 * '<S42>'  : 'soc_pmsm_cpu1_ref/IPC Write/Variant'
 * '<S43>'  : 'soc_pmsm_cpu1_ref/IPC Write/Variant/CODEGEN'
 * '<S44>'  : 'soc_pmsm_cpu1_ref/Open_Loop_Control/Position Generator'
 * '<S45>'  : 'soc_pmsm_cpu1_ref/Open_Loop_Control/Position Generator/Accumulate'
 * '<S46>'  : 'soc_pmsm_cpu1_ref/Open_Loop_Control/Position Generator/Accumulate/Subsystem'
 * '<S47>'  : 'soc_pmsm_cpu1_ref/Speed Control1/PI_Controller_Speed'
 * '<S48>'  : 'soc_pmsm_cpu1_ref/Speed Control1/Speed_Ref_Selector1'
 * '<S49>'  : 'soc_pmsm_cpu1_ref/Speed Control1/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset'
 * '<S50>'  : 'soc_pmsm_cpu1_ref/Speed Control1/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/Anti-windup'
 * '<S51>'  : 'soc_pmsm_cpu1_ref/Speed Control1/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/D Gain'
 * '<S52>'  : 'soc_pmsm_cpu1_ref/Speed Control1/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/Filter'
 * '<S53>'  : 'soc_pmsm_cpu1_ref/Speed Control1/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/Filter ICs'
 * '<S54>'  : 'soc_pmsm_cpu1_ref/Speed Control1/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/I Gain'
 * '<S55>'  : 'soc_pmsm_cpu1_ref/Speed Control1/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/Ideal P Gain'
 * '<S56>'  : 'soc_pmsm_cpu1_ref/Speed Control1/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/Ideal P Gain Fdbk'
 * '<S57>'  : 'soc_pmsm_cpu1_ref/Speed Control1/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/Integrator'
 * '<S58>'  : 'soc_pmsm_cpu1_ref/Speed Control1/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/Integrator ICs'
 * '<S59>'  : 'soc_pmsm_cpu1_ref/Speed Control1/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/N Copy'
 * '<S60>'  : 'soc_pmsm_cpu1_ref/Speed Control1/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/N Gain'
 * '<S61>'  : 'soc_pmsm_cpu1_ref/Speed Control1/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/P Copy'
 * '<S62>'  : 'soc_pmsm_cpu1_ref/Speed Control1/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/Parallel P Gain'
 * '<S63>'  : 'soc_pmsm_cpu1_ref/Speed Control1/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/Reset Signal'
 * '<S64>'  : 'soc_pmsm_cpu1_ref/Speed Control1/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/Saturation'
 * '<S65>'  : 'soc_pmsm_cpu1_ref/Speed Control1/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/Saturation Fdbk'
 * '<S66>'  : 'soc_pmsm_cpu1_ref/Speed Control1/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/Sum'
 * '<S67>'  : 'soc_pmsm_cpu1_ref/Speed Control1/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/Sum Fdbk'
 * '<S68>'  : 'soc_pmsm_cpu1_ref/Speed Control1/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/Tracking Mode'
 * '<S69>'  : 'soc_pmsm_cpu1_ref/Speed Control1/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/Tracking Mode Sum'
 * '<S70>'  : 'soc_pmsm_cpu1_ref/Speed Control1/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/Tsamp - Integral'
 * '<S71>'  : 'soc_pmsm_cpu1_ref/Speed Control1/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/Tsamp - Ngain'
 * '<S72>'  : 'soc_pmsm_cpu1_ref/Speed Control1/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/postSat Signal'
 * '<S73>'  : 'soc_pmsm_cpu1_ref/Speed Control1/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/preSat Signal'
 * '<S74>'  : 'soc_pmsm_cpu1_ref/Speed Control1/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/Anti-windup/Disc. Clamping Parallel'
 * '<S75>'  : 'soc_pmsm_cpu1_ref/Speed Control1/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/Anti-windup/Disc. Clamping Parallel/Dead Zone'
 * '<S76>'  : 'soc_pmsm_cpu1_ref/Speed Control1/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/Anti-windup/Disc. Clamping Parallel/Dead Zone/Enabled'
 * '<S77>'  : 'soc_pmsm_cpu1_ref/Speed Control1/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/D Gain/Disabled'
 * '<S78>'  : 'soc_pmsm_cpu1_ref/Speed Control1/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/Filter/Disabled'
 * '<S79>'  : 'soc_pmsm_cpu1_ref/Speed Control1/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/Filter ICs/Disabled'
 * '<S80>'  : 'soc_pmsm_cpu1_ref/Speed Control1/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/I Gain/External Parameters'
 * '<S81>'  : 'soc_pmsm_cpu1_ref/Speed Control1/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/Ideal P Gain/Passthrough'
 * '<S82>'  : 'soc_pmsm_cpu1_ref/Speed Control1/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/Ideal P Gain Fdbk/Disabled'
 * '<S83>'  : 'soc_pmsm_cpu1_ref/Speed Control1/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/Integrator/Discrete'
 * '<S84>'  : 'soc_pmsm_cpu1_ref/Speed Control1/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/Integrator ICs/External IC'
 * '<S85>'  : 'soc_pmsm_cpu1_ref/Speed Control1/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/N Copy/Disabled wSignal Specification'
 * '<S86>'  : 'soc_pmsm_cpu1_ref/Speed Control1/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/N Gain/Disabled'
 * '<S87>'  : 'soc_pmsm_cpu1_ref/Speed Control1/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/P Copy/Disabled'
 * '<S88>'  : 'soc_pmsm_cpu1_ref/Speed Control1/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/Parallel P Gain/External Parameters'
 * '<S89>'  : 'soc_pmsm_cpu1_ref/Speed Control1/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/Reset Signal/External Reset'
 * '<S90>'  : 'soc_pmsm_cpu1_ref/Speed Control1/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/Saturation/Enabled'
 * '<S91>'  : 'soc_pmsm_cpu1_ref/Speed Control1/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/Saturation Fdbk/Disabled'
 * '<S92>'  : 'soc_pmsm_cpu1_ref/Speed Control1/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/Sum/Sum_PI'
 * '<S93>'  : 'soc_pmsm_cpu1_ref/Speed Control1/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/Sum Fdbk/Disabled'
 * '<S94>'  : 'soc_pmsm_cpu1_ref/Speed Control1/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/Tracking Mode/Disabled'
 * '<S95>'  : 'soc_pmsm_cpu1_ref/Speed Control1/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/Tracking Mode Sum/Passthrough'
 * '<S96>'  : 'soc_pmsm_cpu1_ref/Speed Control1/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/Tsamp - Integral/TsSignalSpecification'
 * '<S97>'  : 'soc_pmsm_cpu1_ref/Speed Control1/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/Tsamp - Ngain/Passthrough'
 * '<S98>'  : 'soc_pmsm_cpu1_ref/Speed Control1/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/postSat Signal/Forward_Path'
 * '<S99>'  : 'soc_pmsm_cpu1_ref/Speed Control1/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/preSat Signal/Forward_Path'
 * '<S100>' : 'soc_pmsm_cpu1_ref/Speed Control1/Speed_Ref_Selector1/Zero_Cancellation'
 * '<S101>' : 'soc_pmsm_cpu1_ref/Speed Control1/Speed_Ref_Selector1/Zero_Cancellation/IIR Filter'
 * '<S102>' : 'soc_pmsm_cpu1_ref/Speed Control1/Speed_Ref_Selector1/Zero_Cancellation/IIR Filter/Low-pass'
 * '<S103>' : 'soc_pmsm_cpu1_ref/Speed Control1/Speed_Ref_Selector1/Zero_Cancellation/IIR Filter/Low-pass/IIR Low Pass Filter'
 */
#endif                                 /* RTW_HEADER_soc_pmsm_cpu1_ref_h_ */

/*
 * File trailer for generated code.
 *
 * [EOF]
 */
