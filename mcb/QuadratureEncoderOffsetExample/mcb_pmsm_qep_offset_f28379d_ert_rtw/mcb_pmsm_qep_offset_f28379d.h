/*
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * File: mcb_pmsm_qep_offset_f28379d.h
 *
 * Code generated for Simulink model 'mcb_pmsm_qep_offset_f28379d'.
 *
 * Model version                  : 7.6
 * Simulink Coder version         : 23.2 (R2023b) 01-Aug-2023
 * C/C++ source code generated on : Tue Oct 21 16:22:13 2025
 *
 * Target selection: ert.tlc
 * Embedded hardware selection: Texas Instruments->C2000
 * Code generation objectives: Unspecified
 * Validation result: Not run
 */

#ifndef RTW_HEADER_mcb_pmsm_qep_offset_f28379d_h_
#define RTW_HEADER_mcb_pmsm_qep_offset_f28379d_h_
#ifndef mcb_pmsm_qep_offset_f28379d_COMMON_INCLUDES_
#define mcb_pmsm_qep_offset_f28379d_COMMON_INCLUDES_
#include "rtwtypes.h"
#include "c2000BoardSupport.h"
#include "MW_f2837xD_includes.h"
#endif                        /* mcb_pmsm_qep_offset_f28379d_COMMON_INCLUDES_ */

#include <stddef.h>
#include "mcb_pmsm_qep_offset_f28379d_types.h"
#include <string.h>
#include "MW_target_hardware_resources.h"

/* Macros for accessing real-time model data structure */
#ifndef rtmGetErrorStatus
#define rtmGetErrorStatus(rtm)         ((rtm)->errorStatus)
#endif

#ifndef rtmSetErrorStatus
#define rtmSetErrorStatus(rtm, val)    ((rtm)->errorStatus = (val))
#endif

#ifndef rtmStepTask
#define rtmStepTask(rtm, idx)          ((rtm)->Timing.TaskCounters.TID[(idx)] == 0)
#endif

#ifndef rtmTaskCounter
#define rtmTaskCounter(rtm, idx)       ((rtm)->Timing.TaskCounters.TID[(idx)])
#endif

extern void init_I2C_GPIO(void);
extern void init_I2C_A(void);

/* Block signals (default storage) */
typedef struct {
  uint16_T RateTransition;             /* '<Root>/Rate Transition' */
  uint16_T I2CReceive_o2;              /* '<S8>/I2C Receive' */
  uint16_T I2CTransmit;                /* '<S7>/I2C Transmit' */
  uint16_T I2CTransmit1;               /* '<S5>/I2C Transmit1' */
  uint16_T I2CReceive_o1[2];           /* '<S8>/I2C Receive' */
} B_mcb_pmsm_qep_offset_f28379d_T;

/* Block states (default storage) for system '<Root>' */
typedef struct {
  uint16_T UnitDelay_DSTATE;           /* '<Root>/Unit Delay' */
  uint16_T RateTransition_Buffer0;     /* '<Root>/Rate Transition' */
} DW_mcb_pmsm_qep_offset_f28379_T;

/* Parameters (default storage) */
struct P_mcb_pmsm_qep_offset_f28379d_T_ {
  uint16_T UnitDelay_InitialCondition;
                               /* Computed Parameter: UnitDelay_InitialCondition
                                * Referenced by: '<Root>/Unit Delay'
                                */
  uint16_T RateTransition_InitialCondition;
                          /* Computed Parameter: RateTransition_InitialCondition
                           * Referenced by: '<Root>/Rate Transition'
                           */
  uint16_T InitTrigger_Value;          /* Computed Parameter: InitTrigger_Value
                                        * Referenced by: '<Root>/InitTrigger'
                                        */
  boolean_T DataStoreMemory29_InitialValue;
                           /* Computed Parameter: DataStoreMemory29_InitialValue
                            * Referenced by: '<Root>/Data Store Memory29'
                            */
  uint16_T Datareadaddress_Value;   /* Computed Parameter: Datareadaddress_Value
                                     * Referenced by: '<S5>/Data read address'
                                     */
  uint16_T Out1_Y0;                    /* Computed Parameter: Out1_Y0
                                        * Referenced by: '<S8>/Out1'
                                        */
  uint16_T DataReadAddress_Value;   /* Computed Parameter: DataReadAddress_Value
                                     * Referenced by: '<S3>/Data Read Address'
                                     */
};

/* Real-time Model Data Structure */
struct tag_RTM_mcb_pmsm_qep_offset_f_T {
  const char_T * volatile errorStatus;

  /*
   * Timing:
   * The following substructure contains information regarding
   * the timing information for the model.
   */
  struct {
    struct {
      uint16_T TID[2];
    } TaskCounters;

    struct {
      boolean_T TID0_1;
    } RateInteraction;
  } Timing;
};

/* Block parameters (default storage) */
extern P_mcb_pmsm_qep_offset_f28379d_T mcb_pmsm_qep_offset_f28379d_P;

/* Block signals (default storage) */
extern B_mcb_pmsm_qep_offset_f28379d_T mcb_pmsm_qep_offset_f28379d_B;

/* Block states (default storage) */
extern DW_mcb_pmsm_qep_offset_f28379_T mcb_pmsm_qep_offset_f28379d_DW;

/* External function called from main */
extern void mcb_pmsm_qep_offset_f28379d_SetEventsForThisBaseStep(boolean_T
  *eventFlags);

/* Model entry point functions */
extern void mcb_pmsm_qep_offset_f28379d_initialize(void);
extern void mcb_pmsm_qep_offset_f28379d_step0(void);
extern void mcb_pmsm_qep_offset_f28379d_step1(void);
extern void mcb_pmsm_qep_offset_f28379d_terminate(void);

/* Real-time Model object */
extern RT_MODEL_mcb_pmsm_qep_offset__T *const mcb_pmsm_qep_offset_f28379d_M;
extern volatile boolean_T stopRequested;
extern volatile boolean_T runModel;

/*-
 * These blocks were eliminated from the model due to optimizations:
 *
 * Block '<Root>/Gyro' : Unused code path elimination
 * Block '<S1>/Reshape' : Reshape block reduction
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
 * '<Root>' : 'mcb_pmsm_qep_offset_f28379d'
 * '<S1>'   : 'mcb_pmsm_qep_offset_f28379d/Data Realignment '
 * '<S2>'   : 'mcb_pmsm_qep_offset_f28379d/Initialization'
 * '<S3>'   : 'mcb_pmsm_qep_offset_f28379d/Subsystem'
 * '<S4>'   : 'mcb_pmsm_qep_offset_f28379d/Data Realignment /MATLAB Function'
 * '<S5>'   : 'mcb_pmsm_qep_offset_f28379d/Initialization/Address - Data read'
 * '<S6>'   : 'mcb_pmsm_qep_offset_f28379d/Subsystem/I2C Read'
 * '<S7>'   : 'mcb_pmsm_qep_offset_f28379d/Subsystem/I2C Read/Subsystem'
 * '<S8>'   : 'mcb_pmsm_qep_offset_f28379d/Subsystem/I2C Read/Subsystem1'
 */
#endif                           /* RTW_HEADER_mcb_pmsm_qep_offset_f28379d_h_ */

/*
 * File trailer for generated code.
 *
 * [EOF]
 */
