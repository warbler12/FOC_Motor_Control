/*
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * File: soc_pmsm_dualcpu_foc_sw_c28xCPU2.h
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

#ifndef RTW_HEADER_soc_pmsm_dualcpu_foc_sw_c28xCPU2_h_
#define RTW_HEADER_soc_pmsm_dualcpu_foc_sw_c28xCPU2_h_
#ifndef soc_pmsm_dualcpu_foc_sw_c28xCPU2_COMMON_INCLUDES_
#define soc_pmsm_dualcpu_foc_sw_c28xCPU2_COMMON_INCLUDES_
#include "rtwtypes.h"
#endif                   /* soc_pmsm_dualcpu_foc_sw_c28xCPU2_COMMON_INCLUDES_ */

#include "MW_c2000ISR.h"
#include <stddef.h>
#include "soc_pmsm_dualcpu_foc_sw_c28xCPU2_types.h"
#include <string.h>
#include "tidelfinof28379dlaunchpad_ADC_data.h"
#include "tidelfinof28379dlaunchpad_PWM_data.h"
#include "MW_target_hardware_resources.h"

/* Macros for accessing real-time model data structure */
#ifndef rtmGetErrorStatus
#define rtmGetErrorStatus(rtm)         ((rtm)->errorStatus)
#endif

#ifndef rtmSetErrorStatus
#define rtmSetErrorStatus(rtm, val)    ((rtm)->errorStatus = (val))
#endif

#ifndef rtmGetErrorStatusPointer
#define rtmGetErrorStatusPointer(rtm)  ((const char_T **)(&((rtm)->errorStatus)))
#endif

#define soc_pmsm_dualcpu_foc_sw_c28xCPU2_M (soc_pmsm_dualcpu_foc_sw_c28x_M)

/* Block signals (default storage) */
typedef struct {
  real32_T CurrentControl_o1;          /* '<Root>/Current Control' */
  real32_T CurrentControl_o2;          /* '<Root>/Current Control' */
  real32_T CurrentControl_o3;          /* '<Root>/Current Control' */
  real32_T CurrentControl_o4;          /* '<Root>/Current Control' */
} B_soc_pmsm_dualcpu_foc_sw_c28_T;

/* Real-time Model Data Structure */
struct tag_RTM_soc_pmsm_dualcpu_foc__T {
  const char_T *errorStatus;
};

typedef enum {
  MODEL_APPLICATION_NOT_RUNNING = 0x00U,
  MODEL_APPLICATION_READY_TO_START = 0x01U,
  MODEL_APPLICATION_WAIT_FOR_SCHEDULER_TO_START = 0x02U,
  MODEL_APPLICATION_RUNNING = 0x04U,
  MODEL_APPLICATION_RUNNING_ERROR = 0x08U
} RunModelStates_T;

/* Block signals (default storage) */
extern B_soc_pmsm_dualcpu_foc_sw_c28_T soc_pmsm_dualcpu_foc_sw_c28xC_B;

/* Model block global parameters (default storage) */
extern real32_T rtP_Vd_Ref_openLoop_PU;/* Variable: Vd_Ref_openLoop_PU
                                        * Referenced by: '<Root>/Current Control'
                                        */

/* Model entry point functions */
extern void soc_pmsm_dualcpu_foc_sw_c28xCPU2_initialize(void);
extern void soc_pmsm_dualcpu_foc_sw_c28xCPU2_step(void);
extern void soc_pmsm_dualcpu_foc_sw_c28xCPU2_terminate(void);

/* Real-time Model object */
extern RT_MODEL_soc_pmsm_dualcpu_foc_T *const soc_pmsm_dualcpu_foc_sw_c28x_M;
extern volatile boolean_T stopRequested;
extern volatile RunModelStates_T runModel;

#ifdef __cpluscplus

extern "C"
{

#endif

  interrupt void ADCB1_INT(void);
  void soc_pmsm_dualcpu_foc_sw_c28xCPU2_configure_interrupts (void);
  void soc_pmsm_dualcpu_foc_sw_c28xCPU2_unconfigure_interrupts (void);

#ifdef __cpluscplus

}

#endif

/*-
 * These blocks were eliminated from the model due to optimizations:
 *
 * Block '<S8>/Compare' : Unused code path elimination
 * Block '<S8>/Constant' : Unused code path elimination
 * Block '<S10>/Constant' : Unused code path elimination
 * Block '<S13>/Constant' : Unused code path elimination
 * Block '<S16>/Constant' : Unused code path elimination
 * Block '<S19>/Constant' : Unused code path elimination
 * Block '<S22>/Constant' : Unused code path elimination
 * Block '<S25>/Constant' : Unused code path elimination
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
 * '<Root>' : 'soc_pmsm_dualcpu_foc_sw_c28xCPU2'
 * '<S1>'   : 'soc_pmsm_dualcpu_foc_sw_c28xCPU2/ADCIntEvent'
 * '<S2>'   : 'soc_pmsm_dualcpu_foc_sw_c28xCPU2/IODataSink_Register'
 * '<S3>'   : 'soc_pmsm_dualcpu_foc_sw_c28xCPU2/IODataSink_Register1'
 * '<S4>'   : 'soc_pmsm_dualcpu_foc_sw_c28xCPU2/IODataSink_Register2'
 * '<S5>'   : 'soc_pmsm_dualcpu_foc_sw_c28xCPU2/IODataSource_Register'
 * '<S6>'   : 'soc_pmsm_dualcpu_foc_sw_c28xCPU2/IODataSource_Register1'
 * '<S7>'   : 'soc_pmsm_dualcpu_foc_sw_c28xCPU2/Task Manager 2'
 * '<S8>'   : 'soc_pmsm_dualcpu_foc_sw_c28xCPU2/ADCIntEvent/Compare To Zero'
 * '<S9>'   : 'soc_pmsm_dualcpu_foc_sw_c28xCPU2/ADCIntEvent/Variant'
 * '<S10>'  : 'soc_pmsm_dualcpu_foc_sw_c28xCPU2/ADCIntEvent/Variant/CODEGEN'
 * '<S11>'  : 'soc_pmsm_dualcpu_foc_sw_c28xCPU2/ADCIntEvent/Variant/CODEGEN/Create rteEvent'
 * '<S12>'  : 'soc_pmsm_dualcpu_foc_sw_c28xCPU2/IODataSink_Register/Variant'
 * '<S13>'  : 'soc_pmsm_dualcpu_foc_sw_c28xCPU2/IODataSink_Register/Variant/CODEGEN'
 * '<S14>'  : 'soc_pmsm_dualcpu_foc_sw_c28xCPU2/IODataSink_Register/Variant/CODEGEN/Create rteEvent'
 * '<S15>'  : 'soc_pmsm_dualcpu_foc_sw_c28xCPU2/IODataSink_Register1/Variant'
 * '<S16>'  : 'soc_pmsm_dualcpu_foc_sw_c28xCPU2/IODataSink_Register1/Variant/CODEGEN'
 * '<S17>'  : 'soc_pmsm_dualcpu_foc_sw_c28xCPU2/IODataSink_Register1/Variant/CODEGEN/Create rteEvent'
 * '<S18>'  : 'soc_pmsm_dualcpu_foc_sw_c28xCPU2/IODataSink_Register2/Variant'
 * '<S19>'  : 'soc_pmsm_dualcpu_foc_sw_c28xCPU2/IODataSink_Register2/Variant/CODEGEN'
 * '<S20>'  : 'soc_pmsm_dualcpu_foc_sw_c28xCPU2/IODataSink_Register2/Variant/CODEGEN/Create rteEvent'
 * '<S21>'  : 'soc_pmsm_dualcpu_foc_sw_c28xCPU2/IODataSource_Register/Variant'
 * '<S22>'  : 'soc_pmsm_dualcpu_foc_sw_c28xCPU2/IODataSource_Register/Variant/CODEGEN'
 * '<S23>'  : 'soc_pmsm_dualcpu_foc_sw_c28xCPU2/IODataSource_Register/Variant/CODEGEN/Create rteEvent'
 * '<S24>'  : 'soc_pmsm_dualcpu_foc_sw_c28xCPU2/IODataSource_Register1/Variant'
 * '<S25>'  : 'soc_pmsm_dualcpu_foc_sw_c28xCPU2/IODataSource_Register1/Variant/CODEGEN'
 * '<S26>'  : 'soc_pmsm_dualcpu_foc_sw_c28xCPU2/IODataSource_Register1/Variant/CODEGEN/Create rteEvent'
 * '<S27>'  : 'soc_pmsm_dualcpu_foc_sw_c28xCPU2/Task Manager 2/Core Task Manager'
 * '<S28>'  : 'soc_pmsm_dualcpu_foc_sw_c28xCPU2/Task Manager 2/Task Blocks'
 * '<S29>'  : 'soc_pmsm_dualcpu_foc_sw_c28xCPU2/Task Manager 2/Core Task Manager/Variant Subsystem'
 * '<S30>'  : 'soc_pmsm_dualcpu_foc_sw_c28xCPU2/Task Manager 2/Core Task Manager/Variant Subsystem/HSBOFF'
 * '<S31>'  : 'soc_pmsm_dualcpu_foc_sw_c28xCPU2/Task Manager 2/Core Task Manager/Variant Subsystem/HSBOFF/Task Manager'
 * '<S32>'  : 'soc_pmsm_dualcpu_foc_sw_c28xCPU2/Task Manager 2/Core Task Manager/Variant Subsystem/HSBOFF/Task Manager/NOP'
 * '<S33>'  : 'soc_pmsm_dualcpu_foc_sw_c28xCPU2/Task Manager 2/Task Blocks/Variant Subsystem'
 * '<S34>'  : 'soc_pmsm_dualcpu_foc_sw_c28xCPU2/Task Manager 2/Task Blocks/Variant Subsystem/HSBOFF'
 * '<S35>'  : 'soc_pmsm_dualcpu_foc_sw_c28xCPU2/Task Manager 2/Task Blocks/Variant Subsystem/HSBOFF/ADCIntBlk'
 */
#endif                      /* RTW_HEADER_soc_pmsm_dualcpu_foc_sw_c28xCPU2_h_ */

/*
 * File trailer for generated code.
 *
 * [EOF]
 */
