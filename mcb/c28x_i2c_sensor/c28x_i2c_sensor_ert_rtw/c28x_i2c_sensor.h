/*
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * File: c28x_i2c_sensor.h
 *
 * Code generated for Simulink model 'c28x_i2c_sensor'.
 *
 * Model version                  : 12.3
 * Simulink Coder version         : 23.2 (R2023b) 01-Aug-2023
 * C/C++ source code generated on : Fri Nov  7 14:46:51 2025
 *
 * Target selection: ert.tlc
 * Embedded hardware selection: Texas Instruments->C2000
 * Code generation objectives: Unspecified
 * Validation result: Not run
 */

#ifndef RTW_HEADER_c28x_i2c_sensor_h_
#define RTW_HEADER_c28x_i2c_sensor_h_
#ifndef c28x_i2c_sensor_COMMON_INCLUDES_
#define c28x_i2c_sensor_COMMON_INCLUDES_
#include "rtwtypes.h"
#include "rtw_extmode.h"
#include "sysran_types.h"
#include "c2000BoardSupport.h"
#include "MW_f2837xD_includes.h"
#endif                                 /* c28x_i2c_sensor_COMMON_INCLUDES_ */

#include <stddef.h>
#include "c28x_i2c_sensor_types.h"
#include <string.h>
#include "MW_target_hardware_resources.h"

/* Macros for accessing real-time model data structure */
#ifndef rtmGetFinalTime
#define rtmGetFinalTime(rtm)           ((rtm)->Timing.tFinal)
#endif

#ifndef rtmGetRTWExtModeInfo
#define rtmGetRTWExtModeInfo(rtm)      ((rtm)->extModeInfo)
#endif

#ifndef rtmGetErrorStatus
#define rtmGetErrorStatus(rtm)         ((rtm)->errorStatus)
#endif

#ifndef rtmSetErrorStatus
#define rtmSetErrorStatus(rtm, val)    ((rtm)->errorStatus = (val))
#endif

#ifndef rtmStepTask
#define rtmStepTask(rtm, idx)          ((rtm)->Timing.TaskCounters.TID[(idx)] == 0)
#endif

#ifndef rtmGetStopRequested
#define rtmGetStopRequested(rtm)       ((rtm)->Timing.stopRequestedFlag)
#endif

#ifndef rtmSetStopRequested
#define rtmSetStopRequested(rtm, val)  ((rtm)->Timing.stopRequestedFlag = (val))
#endif

#ifndef rtmGetStopRequestedPtr
#define rtmGetStopRequestedPtr(rtm)    (&((rtm)->Timing.stopRequestedFlag))
#endif

#ifndef rtmGetT
#define rtmGetT(rtm)                   ((rtm)->Timing.taskTime0)
#endif

#ifndef rtmGetTFinal
#define rtmGetTFinal(rtm)              ((rtm)->Timing.tFinal)
#endif

#ifndef rtmGetTPtr
#define rtmGetTPtr(rtm)                (&(rtm)->Timing.taskTime0)
#endif

#ifndef rtmTaskCounter
#define rtmTaskCounter(rtm, idx)       ((rtm)->Timing.TaskCounters.TID[(idx)])
#endif

extern void init_I2C_GPIO(void);
extern void init_I2C_A(void);

/* Block states (default storage) for system '<S4>/Delay 1ms' */
typedef struct {
  int16_T Delay1ms_SubsysRanBC;        /* '<S4>/Delay 1ms' */
} rtDW_Delay1ms_c28x_i2c_sensor;

/* Block signals (default storage) */
typedef struct {
  real32_T CastToSingle;               /* '<S3>/Cast To Single' */
  real32_T Gain;                       /* '<S3>/Gain' */
  uint16_T I2CTransmit1;               /* '<S6>/I2C Transmit1' */
  uint16_T raw_angle;                  /* '<S3>/MATLAB Function' */
  uint16_T I2CReceive_o2;              /* '<S2>/I2C Receive' */
  uint16_T I2CTransmit;                /* '<S2>/I2C Transmit' */
  uint16_T Reshape[2];                 /* '<S3>/Reshape' */
  uint16_T I2CReceive_o1[2];           /* '<S2>/I2C Receive' */
  boolean_T RT4;                       /* '<S1>/RT4' */
  boolean_T UnitDelay;                 /* '<S1>/Unit Delay' */
  boolean_T LogicalOperator2;          /* '<S1>/Logical Operator2' */
} BlockIO_c28x_i2c_sensor;

/* Block states (default storage) for system '<Root>' */
typedef struct {
  struct {
    void *LoggedData;
  } Angle1_PWORK;                      /* '<Root>/Angle1' */

  int32_T sfEvent;                     /* '<S3>/MATLAB Function' */
  boolean_T UnitDelay_DSTATE;          /* '<S1>/Unit Delay' */
  int16_T Initialization_SubsysRanBC;  /* '<S1>/Initialization' */
  int16_T AddressDataread_SubsysRanBC; /* '<S4>/Address - Data read' */
  int16_T DataRead_SubsysRanBC;        /* '<S1>/Data Read' */
  uint16_T is_active_c2_c28x_i2c_sensor;/* '<S3>/MATLAB Function' */
  volatile boolean_T RT4_Buffer0;      /* '<S1>/RT4' */
  boolean_T doneDoubleBufferReInit;    /* '<S3>/MATLAB Function' */
  rtDW_Delay1ms_c28x_i2c_sensor Delay1ms;/* '<S4>/Delay 1ms' */
} D_Work_c28x_i2c_sensor;

/* Real-time Model Data Structure */
struct tag_RTM_c28x_i2c_sensor {
  const char_T *errorStatus;
  RTWExtModeInfo *extModeInfo;

  /*
   * Sizes:
   * The following substructure contains sizes information
   * for many of the model attributes such as inputs, outputs,
   * dwork, sample times, etc.
   */
  struct {
    uint32_T checksums[4];
  } Sizes;

  /*
   * SpecialInfo:
   * The following substructure contains special information
   * related to other components that are dependent on RTW.
   */
  struct {
    const void *mappingInfo;
  } SpecialInfo;

  /*
   * Timing:
   * The following substructure contains information regarding
   * the timing information for the model.
   */
  struct {
    time_T taskTime0;
    uint32_T clockTick0;
    uint32_T clockTickH0;
    time_T stepSize0;
    uint32_T clockTick1;
    uint32_T clockTickH1;
    struct {
      uint16_T TID[2];
    } TaskCounters;

    time_T tFinal;
    boolean_T stopRequestedFlag;
  } Timing;
};

/* Block signals (default storage) */
extern BlockIO_c28x_i2c_sensor c28x_i2c_sensor_B;

/* Block states (default storage) */
extern D_Work_c28x_i2c_sensor c28x_i2c_sensor_DWork;

/* External function called from main */
extern void c28x_i2c_sensor_SetEventsForThisBaseStep(boolean_T *eventFlags);

/* Model entry point functions */
extern void c28x_i2c_sensor_initialize(void);
extern void c28x_i2c_sensor_step0(void);
extern void c28x_i2c_sensor_step1(void);
extern void c28x_i2c_sensor_terminate(void);

/* Real-time Model object */
extern RT_MODEL_c28x_i2c_sensor *const c28x_i2c_sensor_M;
extern volatile boolean_T stopRequested;
extern volatile boolean_T runModel;

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
 * '<Root>' : 'c28x_i2c_sensor'
 * '<S1>'   : 'c28x_i2c_sensor/AS5600 Read'
 * '<S2>'   : 'c28x_i2c_sensor/AS5600 Read/Data Read'
 * '<S3>'   : 'c28x_i2c_sensor/AS5600 Read/Data Realignment '
 * '<S4>'   : 'c28x_i2c_sensor/AS5600 Read/Initialization'
 * '<S5>'   : 'c28x_i2c_sensor/AS5600 Read/Data Realignment /MATLAB Function'
 * '<S6>'   : 'c28x_i2c_sensor/AS5600 Read/Initialization/Address - Data read'
 * '<S7>'   : 'c28x_i2c_sensor/AS5600 Read/Initialization/Delay 1ms'
 */
#endif                                 /* RTW_HEADER_c28x_i2c_sensor_h_ */

/*
 * File trailer for generated code.
 *
 * [EOF]
 */
