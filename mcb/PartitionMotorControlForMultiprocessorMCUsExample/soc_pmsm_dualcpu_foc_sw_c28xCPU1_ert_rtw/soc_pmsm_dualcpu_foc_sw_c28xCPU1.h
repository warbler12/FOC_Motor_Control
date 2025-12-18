/*
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * File: soc_pmsm_dualcpu_foc_sw_c28xCPU1.h
 *
 * Code generated for Simulink model 'soc_pmsm_dualcpu_foc_sw_c28xCPU1'.
 *
 * Model version                  : 1.2
 * Simulink Coder version         : 23.2 (R2023b) 01-Aug-2023
 * C/C++ source code generated on : Fri Dec 12 11:44:17 2025
 *
 * Target selection: ert.tlc
 * Embedded hardware selection: Texas Instruments->C2000
 * Code generation objectives: Unspecified
 * Validation result: Not run
 */

#ifndef RTW_HEADER_soc_pmsm_dualcpu_foc_sw_c28xCPU1_h_
#define RTW_HEADER_soc_pmsm_dualcpu_foc_sw_c28xCPU1_h_
#ifndef soc_pmsm_dualcpu_foc_sw_c28xCPU1_COMMON_INCLUDES_
#define soc_pmsm_dualcpu_foc_sw_c28xCPU1_COMMON_INCLUDES_
#include "rtwtypes.h"
#endif                   /* soc_pmsm_dualcpu_foc_sw_c28xCPU1_COMMON_INCLUDES_ */

#include <stddef.h>
#include "soc_pmsm_dualcpu_foc_sw_c28xCPU1_types.h"
#include "model_reference_types.h"
#include <string.h>
#include "zero_crossing_types.h"
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

#ifndef rtmStepTask
#define rtmStepTask(rtm, idx)          ((rtm)->Timing.TaskCounters.TID[(idx)] == 0)
#endif

#ifndef rtmTaskCounter
#define rtmTaskCounter(rtm, idx)       ((rtm)->Timing.TaskCounters.TID[(idx)])
#endif

#define soc_pmsm_dualcpu_foc_sw_c28xCPU1_M (soc_pmsm_dualcpu_foc_sw_c28x_M)

/* Block signals (default storage) */
typedef struct {
  real32_T SpeedControl;               /* '<Root>/Speed Control' */
} B_soc_pmsm_dualcpu_foc_sw_c28_T;

/* Real-time Model Data Structure */
struct tag_RTM_soc_pmsm_dualcpu_foc__T {
  const char_T *errorStatus;

  /*
   * Timing:
   * The following substructure contains information regarding
   * the timing information for the model.
   */
  struct {
    uint32_T clockTick1;
    struct {
      uint32_T TID[2];
    } TaskCounters;
  } Timing;
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

/* External function called from main */
extern void soc_pmsm_dualcpu_foc_sw_c28xCPU1_SetEventsForThisBaseStep(boolean_T *
  eventFlags);

/* Model entry point functions */
extern void soc_pmsm_dualcpu_foc_sw_c28xCPU1_initialize(void);
extern void soc_pmsm_dualcpu_foc_sw_c28xCPU1_step0(void);
extern void soc_pmsm_dualcpu_foc_sw_c28xCPU1_step1(void);
extern void soc_pmsm_dualcpu_foc_sw_c28xCPU1_terminate(void);

/* Real-time Model object */
extern RT_MODEL_soc_pmsm_dualcpu_foc_T *const soc_pmsm_dualcpu_foc_sw_c28x_M;
extern volatile boolean_T stopRequested;
extern volatile RunModelStates_T runModel;

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
 * '<Root>' : 'soc_pmsm_dualcpu_foc_sw_c28xCPU1'
 * '<S1>'   : 'soc_pmsm_dualcpu_foc_sw_c28xCPU1/Task Manager 1'
 * '<S2>'   : 'soc_pmsm_dualcpu_foc_sw_c28xCPU1/Task Manager 1/Core Task Manager'
 * '<S3>'   : 'soc_pmsm_dualcpu_foc_sw_c28xCPU1/Task Manager 1/Task Blocks'
 * '<S4>'   : 'soc_pmsm_dualcpu_foc_sw_c28xCPU1/Task Manager 1/Core Task Manager/Variant Subsystem'
 * '<S5>'   : 'soc_pmsm_dualcpu_foc_sw_c28xCPU1/Task Manager 1/Core Task Manager/Variant Subsystem/HSBOFF'
 * '<S6>'   : 'soc_pmsm_dualcpu_foc_sw_c28xCPU1/Task Manager 1/Core Task Manager/Variant Subsystem/HSBOFF/Task Manager'
 * '<S7>'   : 'soc_pmsm_dualcpu_foc_sw_c28xCPU1/Task Manager 1/Task Blocks/Variant Subsystem'
 * '<S8>'   : 'soc_pmsm_dualcpu_foc_sw_c28xCPU1/Task Manager 1/Task Blocks/Variant Subsystem/HSBOFF'
 */
#endif                      /* RTW_HEADER_soc_pmsm_dualcpu_foc_sw_c28xCPU1_h_ */

/*
 * File trailer for generated code.
 *
 * [EOF]
 */
