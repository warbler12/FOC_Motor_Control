/*
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * File: mcb_pmsm_foc_sensorless_f28379d.c
 *
 * Code generated for Simulink model 'mcb_pmsm_foc_sensorless_f28379d'.
 *
 * Model version                  : 7.12
 * Simulink Coder version         : 23.2 (R2023b) 01-Aug-2023
 * C/C++ source code generated on : Thu Dec 11 17:51:43 2025
 *
 * Target selection: ert.tlc
 * Embedded hardware selection: Texas Instruments->C2000
 * Code generation objectives: Unspecified
 * Validation result: Not run
 */

#include "mcb_pmsm_foc_sensorless_f28379d.h"
#include "rtwtypes.h"
#include "mcb_pmsm_foc_sensorless_f28379d_private.h"
#include <math.h>
#include "rt_nonfinite.h"
#include "zero_crossing_types.h"
#include <string.h>
#include <float.h>
#define mcb_pmsm_foc_IN_NO_ACTIVE_CHILD (0U)
#define mcb_pmsm_foc_sens_IN_AlignStage (1U)
#define mcb_pmsm_foc_senso_IN_OpenStage (3U)
#define mcb_pmsm_foc_sensor_IN_RunStage (4U)
#define mcb_pmsm_foc_sensorless_IN_IDLE (2U)

/* Block signals (default storage) */
BlockIO_mcb_pmsm_foc_sensorless mcb_pmsm_foc_sensorless_f2837_B;

/* Block states (default storage) */
D_Work_mcb_pmsm_foc_sensorless_ mcb_pmsm_foc_sensorless_f_DWork;

/* Previous zero-crossings (trigger) states */
PrevZCSigStates_mcb_pmsm_foc_se mcb_pmsm_foc_sen_PrevZCSigState;

/* Real-time model */
static RT_MODEL_mcb_pmsm_foc_sensorles mcb_pmsm_foc_sensorless_f283_M_;
RT_MODEL_mcb_pmsm_foc_sensorles *const mcb_pmsm_foc_sensorless_f283_M =
  &mcb_pmsm_foc_sensorless_f283_M_;
static void rate_monotonic_scheduler(void);

#ifndef __TMS320C28XX_CLA__

uint16_T MW_adcCInitFlag = 0;

#endif

#ifndef __TMS320C28XX_CLA__

uint16_T MW_adcBInitFlag = 0;

#endif

/*
 * Set which subrates need to run this base step (base rate always runs).
 * This function must be called prior to calling the model step function
 * in order to remember which rates need to run this base step.  The
 * buffering of events allows for overlapping preemption.
 */
void mcb_pmsm_foc_sensorless_f28379d_SetEventsForThisBaseStep(boolean_T
  *eventFlags)
{
  /* Task runs when its counter is zero, computed via rtmStepTask macro */
  eventFlags[1] = ((boolean_T)rtmStepTask(mcb_pmsm_foc_sensorless_f283_M, 1));
  eventFlags[2] = ((boolean_T)rtmStepTask(mcb_pmsm_foc_sensorless_f283_M, 2));
  eventFlags[3] = ((boolean_T)rtmStepTask(mcb_pmsm_foc_sensorless_f283_M, 3));
}

/*
 *         This function updates active task flag for each subrate
 *         and rate transition flags for tasks that exchange data.
 *         The function assumes rate-monotonic multitasking scheduler.
 *         The function must be called at model base rate so that
 *         the generated code self-manages all its subrates and rate
 *         transition flags.
 */
static void rate_monotonic_scheduler(void)
{
  /* Compute which subrates run during the next base time step.  Subrates
   * are an integer multiple of the base rate counter.  Therefore, the subtask
   * counter is reset when it reaches its limit (zero means run).
   */
  (mcb_pmsm_foc_sensorless_f283_M->Timing.TaskCounters.TID[1])++;
  if ((mcb_pmsm_foc_sensorless_f283_M->Timing.TaskCounters.TID[1]) > 199) {/* Sample time: [0.001s, 0.0s] */
    mcb_pmsm_foc_sensorless_f283_M->Timing.TaskCounters.TID[1] = 0;
  }

  (mcb_pmsm_foc_sensorless_f283_M->Timing.TaskCounters.TID[2])++;
  if ((mcb_pmsm_foc_sensorless_f283_M->Timing.TaskCounters.TID[2]) > 2999) {/* Sample time: [0.015s, 0.0s] */
    mcb_pmsm_foc_sensorless_f283_M->Timing.TaskCounters.TID[2] = 0;
  }

  (mcb_pmsm_foc_sensorless_f283_M->Timing.TaskCounters.TID[3])++;
  if ((mcb_pmsm_foc_sensorless_f283_M->Timing.TaskCounters.TID[3]) > 99999) {/* Sample time: [0.5s, 0.0s] */
    mcb_pmsm_foc_sensorless_f283_M->Timing.TaskCounters.TID[3] = 0;
  }
}

/*
 * Output and update for action system:
 *    '<S149>/If Action Subsystem'
 *    '<S161>/If Action Subsystem'
 *    '<S332>/If Action Subsystem'
 */
void mcb_pmsm__IfActionSubsystem(real32_T rtu_In1, real32_T *rty_Out1,
  rtB_IfActionSubsystem_mcb_pmsm_ *localB)
{
  /* DataTypeConversion: '<S151>/Convert_uint16' */
  localB->Convert_uint16 = (int16_T)(real32_T)floor(rtu_In1);

  /* DataTypeConversion: '<S151>/Convert_back' */
  localB->Convert_back = localB->Convert_uint16;

  /* Sum: '<S151>/Sum' */
  *rty_Out1 = rtu_In1 - localB->Convert_back;
}

/*
 * Output and update for action system:
 *    '<S149>/If Action Subsystem1'
 *    '<S161>/If Action Subsystem1'
 *    '<S332>/If Action Subsystem1'
 */
void mcb_pmsm_IfActionSubsystem1(real32_T rtu_In1, real32_T *rty_Out1,
  rtB_IfActionSubsystem1_mcb_pmsm *localB)
{
  /* DataTypeConversion: '<S152>/Convert_uint16' */
  localB->Convert_uint16 = (int16_T)rtu_In1;

  /* DataTypeConversion: '<S152>/Convert_back' */
  localB->Convert_back = localB->Convert_uint16;

  /* Sum: '<S152>/Sum' */
  *rty_Out1 = rtu_In1 - localB->Convert_back;
}

/*
 * Output and update for trigger system:
 *    '<S374>/Dir_Sense'
 *    '<S212>/Dir_Sense'
 */
void mcb_pmsm_foc_sens_Dir_Sense(boolean_T rtu_A, boolean_T rtu_B,
  rtB_Dir_Sense_mcb_pmsm_foc_sens *localB, rtZCE_Dir_Sense_mcb_pmsm_foc_se
  *localZCE)
{
  boolean_T zcEvent;

  /* Outputs for Triggered SubSystem: '<S374>/Dir_Sense' incorporates:
   *  TriggerPort: '<S382>/Trigger'
   */
  zcEvent = (rtu_A && (localZCE->Dir_Sense_Trig_ZCE != POS_ZCSIG));
  if (zcEvent) {
    /* Logic: '<S382>/Logical Operator' */
    localB->LogicalOperator = (rtu_A && rtu_B);

    /* Switch: '<S382>/Switch' */
    if (localB->LogicalOperator) {
      /* Switch: '<S382>/Switch' incorporates:
       *  Constant: '<S382>/Constant'
       */
      localB->Switch = -1;
    } else {
      /* Switch: '<S382>/Switch' incorporates:
       *  Constant: '<S382>/Constant1'
       */
      localB->Switch = 1;
    }

    /* End of Switch: '<S382>/Switch' */
  }

  localZCE->Dir_Sense_Trig_ZCE = rtu_A;

  /* End of Outputs for SubSystem: '<S374>/Dir_Sense' */
}

/*
 * Output and update for action system:
 *    '<S374>/Subsystem2'
 *    '<S212>/Subsystem2'
 */
void mcb_pmsm_foc_sen_Subsystem2(real_T rtu_SigmaAlpha, real_T rtu_SigmaBeta,
  real_T *rty_Out1, real_T *rty_Out2)
{
  /* UnaryMinus: '<S383>/Unary Minus' */
  *rty_Out1 = -rtu_SigmaAlpha;

  /* SignalConversion generated from: '<S383>/SigmaBeta' */
  *rty_Out2 = rtu_SigmaBeta;
}

/*
 * Output and update for atomic system:
 *    '<S347>/atan2'
 *    '<S511>/atan2'
 */
void mcb_pmsm_foc_sensorle_atan2(real_T rtu_A, real_T rtu_B, uint16_T
  rtp_outputUnit, rtB_atan2_mcb_pmsm_foc_sensorle *localB)
{
  /* DataTypeConversion: '<S348>/Data Type Conversion1' */
  localB->DataTypeConversion1 = (real32_T)rtu_A;

  /* DataTypeConversion: '<S348>/Data Type Conversion2' */
  localB->DataTypeConversion2 = (real32_T)rtu_B;

  /* Trigonometry: '<S348>/Atan2' */
  localB->Atan2 = atan2f(localB->DataTypeConversion1,
    localB->DataTypeConversion2);

  /* DataTypeConversion: '<S348>/Data Type Conversion' */
  localB->DataTypeConversion = localB->Atan2;

  /* Switch: '<S348>/Switch' incorporates:
   *  Constant: '<S348>/Constant'
   */
  if (rtp_outputUnit > 1U) {
    /* Outputs for Atomic SubSystem: '<S348>/Per Unit' */
    /* Gain: '<S349>/Gain' */
    localB->Gain = 0.15915494309189535 * localB->DataTypeConversion;

    /* Switch: '<S349>/Switch' */
    if (localB->Gain >= 0.0) {
      /* Switch: '<S349>/Switch' */
      localB->Switch_k = localB->Gain;
    } else {
      /* Bias: '<S349>/Bias' */
      localB->Bias = localB->Gain + 1.0;

      /* Switch: '<S349>/Switch' */
      localB->Switch_k = localB->Bias;
    }

    /* End of Switch: '<S349>/Switch' */
    /* End of Outputs for SubSystem: '<S348>/Per Unit' */

    /* Switch: '<S348>/Switch' */
    localB->Switch = localB->Switch_k;
  } else {
    /* Switch: '<S348>/Switch' */
    localB->Switch = localB->DataTypeConversion;
  }

  /* End of Switch: '<S348>/Switch' */

  /* AlgorithmDescriptorDelegate generated from: '<S348>/a16' */
  localB->algDD = localB->Switch;
}

/* System initialize for atomic system: */
void mcb__SPIMasterTransfer_Init(rtDW_SPIMasterTransfer_mcb_pmsm *localDW)
{
  uint32_T SPIPinsLoc;

  /* Start for MATLABSystem: '<S432>/SPI Master Transfer' */
  localDW->obj.matlabCodegenIsDeleted = false;
  localDW->objisempty = true;
  localDW->obj.isInitialized = 1L;
  SPIPinsLoc = MW_UNDEFINED_VALUE;
  localDW->obj.MW_SPI_HANDLE = MW_SPI_Open(0UL, SPIPinsLoc, SPIPinsLoc,
    SPIPinsLoc, MW_UNDEFINED_VALUE, true, 0U);
  MW_SPI_SetFormat(localDW->obj.MW_SPI_HANDLE, 16U, MW_SPI_MODE_0,
                   MW_SPI_MOST_SIGNIFICANT_BIT_FIRST);
  localDW->obj.isSetupComplete = true;
}

/* Output and update for atomic system: */
void mcb_pmsm__SPIMasterTransfer(uint16_T rtu_0, rtB_SPIMasterTransfer_mcb_pmsm_
  *localB, rtDW_SPIMasterTransfer_mcb_pmsm *localDW)
{
  uint16_T rdDataRaw;
  uint16_T status;

  /* MATLABSystem: '<S432>/SPI Master Transfer' */
  MW_SPI_SetSlaveSelect(localDW->obj.MW_SPI_HANDLE, 0U, true);
  status = MW_SPI_SetFormat(localDW->obj.MW_SPI_HANDLE, 16U, MW_SPI_MODE_0,
    MW_SPI_MOST_SIGNIFICANT_BIT_FIRST);
  if (status == 0U) {
    MW_SPI_MasterWriteRead_8bits(localDW->obj.MW_SPI_HANDLE, &rtu_0, &rdDataRaw,
      1UL);
  }

  /* MATLABSystem: '<S432>/SPI Master Transfer' */
  localB->SPIMasterTransfer = rdDataRaw;
}

/* Termination for atomic system: */
void mcb__SPIMasterTransfer_Term(rtDW_SPIMasterTransfer_mcb_pmsm *localDW)
{
  uint32_T SPIPinsLoc;

  /* Terminate for MATLABSystem: '<S432>/SPI Master Transfer' */
  if (!localDW->obj.matlabCodegenIsDeleted) {
    localDW->obj.matlabCodegenIsDeleted = true;
    if ((localDW->obj.isInitialized == 1L) && localDW->obj.isSetupComplete) {
      SPIPinsLoc = MW_UNDEFINED_VALUE;
      MW_SPI_Close(localDW->obj.MW_SPI_HANDLE, SPIPinsLoc, SPIPinsLoc,
                   SPIPinsLoc, MW_UNDEFINED_VALUE);
    }
  }

  /* End of Terminate for MATLABSystem: '<S432>/SPI Master Transfer' */
}

real32_T rt_modf_snf(real32_T u0, real32_T u1)
{
  real32_T q;
  real32_T y;
  boolean_T yEq;
  y = u0;
  if (u1 == 0.0F) {
    if (u0 == 0.0F) {
      y = u1;
    }
  } else if (rtIsNaNF(u0) || rtIsNaNF(u1) || rtIsInfF(u0)) {
    y = (rtNaNF);
  } else if (u0 == 0.0F) {
    y = 0.0F / u1;
  } else if (rtIsInfF(u1)) {
    if ((u1 < 0.0F) != (u0 < 0.0F)) {
      y = u1;
    }
  } else {
    y = (real32_T)fmod(u0, u1);
    yEq = (y == 0.0F);
    if ((!yEq) && (u1 > (real32_T)floor(u1))) {
      q = fabsf(u0 / u1);
      yEq = !(fabsf(q - (real32_T)floor(q + 0.5F)) > FLT_EPSILON * q);
    }

    if (yEq) {
      y = u1 * 0.0F;
    } else if ((u0 < 0.0F) != (u1 < 0.0F)) {
      y += u1;
    }
  }

  return y;
}

/* System initialize for atomic system: '<Root>/Speed Control' */
void mcb_pmsm__SpeedControl_Init(rtB_SpeedControl_mcb_pmsm_foc_s *localB,
  rtDW_SpeedControl_mcb_pmsm_foc_ *localDW)
{
  /* Start for Constant: '<S442>/Ki2' */
  localB->Ki2 = 0.0F;

  /* InitializeConditions for RateLimiter: '<S443>/Rate Limiter' */
  localDW->PrevY = 0.1F;

  /* InitializeConditions for RateLimiter: '<S443>/Rate Limiter1' */
  localDW->PrevY_d = -0.1F;

  /* InitializeConditions for DiscreteIntegrator: '<S486>/Integrator' */
  localDW->Integrator_DSTATE = 0.0F;
  localDW->Integrator_PrevResetState = 0;

  /* InitializeConditions for S-Function (sdspunwrap2): '<S447>/Unwrap' */
  localDW->Unwrap_FirstStep = true;
  localDW->Unwrap_Cumsum = 0.0F;

  /* InitializeConditions for Delay: '<S504>/Delay' */
  localDW->CircBufIdx = 0U;

  /* SystemInitialize for Chart: '<S442>/Chart' */
  localDW->temporalCounter_i1 = 0U;
  localDW->is_active_c3_mcb_pmsm_foc_senso = 0U;
  localDW->is_c3_mcb_pmsm_foc_sensorless_f = mcb_pmsm_foc_IN_NO_ACTIVE_CHILD;
  localB->Motor_State = 0U;

  /* SystemInitialize for Merge: '<S442>/Merge' */
  localB->Merge = 0.0F;

  /* SystemInitialize for Merge: '<S442>/Merge1' */
  localB->Merge1 = 0.0F;

  /* SystemInitialize for Merge: '<S442>/Merge2' */
  localB->Merge2 = false;
}

/* Output and update for atomic system: '<Root>/Speed Control' */
void mcb_pmsm_foc_s_SpeedControl(real32_T rtu_Speed_Ref_PU, real32_T
  rtu_Speed_Meas_PU, real32_T rtu_Theta_e_hat, const boolean_T *rtd_EnClosedLoop,
  const boolean_T *rtd_Enable, real32_T *rtd_Speed_ref,
  rtB_SpeedControl_mcb_pmsm_foc_s *localB, rtDW_SpeedControl_mcb_pmsm_foc_
  *localDW)
{
  real_T u1;
  real32_T dpTmp;
  real32_T rateLimiterRate;
  real32_T uPrev;
  boolean_T out;

  /* RateLimiter: '<S443>/Rate Limiter' */
  rateLimiterRate = rtu_Speed_Ref_PU - localDW->PrevY;
  if (rateLimiterRate > 0.000118231263F) {
    /* RateLimiter: '<S443>/Rate Limiter' */
    localB->RateLimiter = localDW->PrevY + 0.000118231263F;
  } else if (rateLimiterRate < -0.000118231263F) {
    /* RateLimiter: '<S443>/Rate Limiter' */
    localB->RateLimiter = localDW->PrevY - 0.000118231263F;
  } else {
    /* RateLimiter: '<S443>/Rate Limiter' */
    localB->RateLimiter = rtu_Speed_Ref_PU;
  }

  localDW->PrevY = localB->RateLimiter;

  /* End of RateLimiter: '<S443>/Rate Limiter' */

  /* RateLimiter: '<S443>/Rate Limiter1' */
  rateLimiterRate = rtu_Speed_Ref_PU - localDW->PrevY_d;
  if (rateLimiterRate > 0.000118231263F) {
    /* RateLimiter: '<S443>/Rate Limiter1' */
    localB->RateLimiter1 = localDW->PrevY_d + 0.000118231263F;
  } else if (rateLimiterRate < -0.000118231263F) {
    /* RateLimiter: '<S443>/Rate Limiter1' */
    localB->RateLimiter1 = localDW->PrevY_d - 0.000118231263F;
  } else {
    /* RateLimiter: '<S443>/Rate Limiter1' */
    localB->RateLimiter1 = rtu_Speed_Ref_PU;
  }

  localDW->PrevY_d = localB->RateLimiter1;

  /* End of RateLimiter: '<S443>/Rate Limiter1' */

  /* Switch: '<S443>/Switch' */
  if (rtu_Speed_Ref_PU >= 0.0F) {
    /* Switch: '<S443>/Switch' */
    localB->Switch = localB->RateLimiter;
  } else {
    /* Switch: '<S443>/Switch' */
    localB->Switch = localB->RateLimiter1;
  }

  /* End of Switch: '<S443>/Switch' */

  /* DataStoreWrite: '<S443>/Data Store Write1' */
  *rtd_Speed_ref = localB->Switch;

  /* Constant: '<S7>/Constant2' */
  localB->Constant2 = 0.0F;

  /* DataStoreRead: '<S442>/Data Store Read1' */
  localB->DataStoreRead1 = *rtd_Enable;

  /* DataStoreRead: '<S442>/Data Store Read2' */
  localB->DataStoreRead2 = *rtd_EnClosedLoop;

  /* Logic: '<S442>/AND' */
  localB->AND = (localB->DataStoreRead1 && localB->DataStoreRead2);

  /* DataStoreRead: '<S442>/Data Store Read3' */
  localB->DataStoreRead3 = *rtd_Enable;

  /* UnitDelay: '<S442>/Unit Delay' */
  localB->UnitDelay_i = localDW->UnitDelay_DSTATE_hl;

  /* Chart: '<S442>/Chart' */
  /* Gateway: Speed Control/PI_Controller_Speed2/Chart */
  if (localDW->temporalCounter_i1 < 4095U) {
    localDW->temporalCounter_i1 = (uint16_T)((int16_T)
      localDW->temporalCounter_i1 + 1);
  }

  /* During: Speed Control/PI_Controller_Speed2/Chart */
  if (localDW->is_active_c3_mcb_pmsm_foc_senso == 0U) {
    /* Entry: Speed Control/PI_Controller_Speed2/Chart */
    localDW->is_active_c3_mcb_pmsm_foc_senso = 1U;

    /* Entry Internal: Speed Control/PI_Controller_Speed2/Chart */
    /* Transition: '<S445>:2' */
    localDW->is_c3_mcb_pmsm_foc_sensorless_f = mcb_pmsm_foc_sensorless_IN_IDLE;

    /* Entry 'IDLE': '<S445>:1' */
    localB->Motor_State = 1U;
  } else {
    switch (localDW->is_c3_mcb_pmsm_foc_sensorless_f) {
     case mcb_pmsm_foc_sens_IN_AlignStage:
      /* During 'AlignStage': '<S445>:3' */
      if (!localB->DataStoreRead3) {
        /* Transition: '<S445>:14' */
        localDW->is_c3_mcb_pmsm_foc_sensorless_f =
          mcb_pmsm_foc_sensorless_IN_IDLE;

        /* Entry 'IDLE': '<S445>:1' */
        localB->Motor_State = 1U;
      } else if (localDW->temporalCounter_i1 >= 1000U) {
        /* Transition: '<S445>:18' */
        localDW->temporalCounter_i1 = 0U;
        localDW->is_c3_mcb_pmsm_foc_sensorless_f =
          mcb_pmsm_foc_senso_IN_OpenStage;

        /* Entry 'OpenStage': '<S445>:4' */
        localB->Motor_State = 3U;
      } else {
        localB->Motor_State = 2U;
      }
      break;

     case mcb_pmsm_foc_sensorless_IN_IDLE:
      /* During 'IDLE': '<S445>:1' */
      if (localB->DataStoreRead3) {
        /* Transition: '<S445>:7' */
        localDW->temporalCounter_i1 = 0U;
        localDW->is_c3_mcb_pmsm_foc_sensorless_f =
          mcb_pmsm_foc_sens_IN_AlignStage;

        /* Entry 'AlignStage': '<S445>:3' */
        localB->Motor_State = 2U;
      } else {
        localB->Motor_State = 1U;
      }
      break;

     case mcb_pmsm_foc_senso_IN_OpenStage:
      /* During 'OpenStage': '<S445>:4' */
      out = ((localDW->temporalCounter_i1 >= 3000U) && localB->UnitDelay_i);
      if (out) {
        /* Transition: '<S445>:13' */
        localDW->is_c3_mcb_pmsm_foc_sensorless_f =
          mcb_pmsm_foc_sensor_IN_RunStage;

        /* Entry 'RunStage': '<S445>:5' */
        localB->Motor_State = 4U;
      } else if (!localB->DataStoreRead3) {
        /* Transition: '<S445>:15' */
        localDW->is_c3_mcb_pmsm_foc_sensorless_f =
          mcb_pmsm_foc_sensorless_IN_IDLE;

        /* Entry 'IDLE': '<S445>:1' */
        localB->Motor_State = 1U;
      } else {
        localB->Motor_State = 3U;
      }
      break;

     default:
      /* During 'RunStage': '<S445>:5' */
      if (!localB->DataStoreRead3) {
        /* Transition: '<S445>:16' */
        localDW->is_c3_mcb_pmsm_foc_sensorless_f =
          mcb_pmsm_foc_sensorless_IN_IDLE;

        /* Entry 'IDLE': '<S445>:1' */
        localB->Motor_State = 1U;
      } else {
        localB->Motor_State = 4U;
      }
      break;
    }
  }

  /* End of Chart: '<S442>/Chart' */

  /* DataStoreRead: '<S444>/Data Store Read1' */
  localB->DataStoreRead1_e = *rtd_EnClosedLoop;

  /* Switch: '<S444>/Switch' */
  if (localB->DataStoreRead1_e) {
    /* Switch: '<S444>/Switch' */
    localB->Switch_i = localB->Switch;
  } else {
    /* DataStoreRead: '<S444>/Data Store Read' */
    localB->DataStoreRead = *rtd_Speed_ref;

    /* Switch: '<S444>/Switch1' */
    if (localB->DataStoreRead > 0.0F) {
      /* Switch: '<S444>/Switch1' incorporates:
       *  Constant: '<S444>/Constant'
       */
      localB->Switch1 = 0.1F;
    } else {
      /* Switch: '<S444>/Switch1' incorporates:
       *  Constant: '<S444>/Constant1'
       */
      localB->Switch1 = -0.1F;
    }

    /* End of Switch: '<S444>/Switch1' */

    /* Switch: '<S444>/Switch' */
    localB->Switch_i = localB->Switch1;
  }

  /* End of Switch: '<S444>/Switch' */

  /* Product: '<S529>/Product' incorporates:
   *  Constant: '<S529>/Filter_Constant'
   */
  localB->Product = localB->Switch_i * 0.2F;

  /* UnitDelay: '<S529>/Unit Delay' */
  localB->UnitDelay = localDW->UnitDelay_DSTATE;

  /* Product: '<S529>/Product1' incorporates:
   *  Constant: '<S529>/One'
   */
  localB->Product1 = 0.8F * localB->UnitDelay;

  /* Sum: '<S529>/Add1' */
  localB->Add1 = localB->Product + localB->Product1;

  /* Sum: '<S442>/Sum' */
  localB->Sum = localB->Add1 - rtu_Speed_Meas_PU;

  /* Product: '<S491>/PProd Out' incorporates:
   *  Constant: '<S442>/Kp1'
   */
  localB->PProdOut = localB->Sum * 4.0F;

  /* Logic: '<S442>/Logical Operator' */
  localB->LogicalOperator = !localB->AND;

  /* Constant: '<S442>/Ki2' */
  localB->Ki2 = 0.0F;

  /* DiscreteIntegrator: '<S486>/Integrator' */
  if (localB->LogicalOperator || (localDW->Integrator_PrevResetState != 0)) {
    localDW->Integrator_DSTATE = 0.0F;
  }

  /* DiscreteIntegrator: '<S486>/Integrator' */
  localB->Integrator = localDW->Integrator_DSTATE;

  /* Sum: '<S495>/Sum' */
  localB->Sum_p = localB->PProdOut + localB->Integrator;

  /* DeadZone: '<S479>/DeadZone' */
  if (localB->Sum_p > 1.0F) {
    /* DeadZone: '<S479>/DeadZone' */
    localB->DeadZone = localB->Sum_p - 1.0F;
  } else if (localB->Sum_p >= -1.0F) {
    /* DeadZone: '<S479>/DeadZone' */
    localB->DeadZone = 0.0F;
  } else {
    /* DeadZone: '<S479>/DeadZone' */
    localB->DeadZone = localB->Sum_p - -1.0F;
  }

  /* End of DeadZone: '<S479>/DeadZone' */

  /* RelationalOperator: '<S477>/Relational Operator' incorporates:
   *  Constant: '<S477>/Clamping_zero'
   */
  localB->RelationalOperator = (localB->DeadZone != 0.0F);

  /* RelationalOperator: '<S477>/fix for DT propagation issue' incorporates:
   *  Constant: '<S477>/Clamping_zero'
   */
  localB->fixforDTpropagationissue = (localB->DeadZone > 0.0F);

  /* Switch: '<S477>/Switch1' */
  if (localB->fixforDTpropagationissue) {
    /* Switch: '<S477>/Switch1' incorporates:
     *  Constant: '<S477>/Constant'
     */
    localB->Switch1_m = 1;
  } else {
    /* Switch: '<S477>/Switch1' incorporates:
     *  Constant: '<S477>/Constant2'
     */
    localB->Switch1_m = -1;
  }

  /* End of Switch: '<S477>/Switch1' */

  /* Product: '<S483>/IProd Out' incorporates:
   *  Constant: '<S442>/Ki1'
   */
  localB->IProdOut = localB->Sum * 0.0002F;

  /* RelationalOperator: '<S477>/fix for DT propagation issue1' incorporates:
   *  Constant: '<S477>/Clamping_zero'
   */
  localB->fixforDTpropagationissue1 = (localB->IProdOut > 0.0F);

  /* Switch: '<S477>/Switch2' */
  if (localB->fixforDTpropagationissue1) {
    /* Switch: '<S477>/Switch2' incorporates:
     *  Constant: '<S477>/Constant3'
     */
    localB->Switch2_j3 = 1;
  } else {
    /* Switch: '<S477>/Switch2' incorporates:
     *  Constant: '<S477>/Constant4'
     */
    localB->Switch2_j3 = -1;
  }

  /* End of Switch: '<S477>/Switch2' */

  /* RelationalOperator: '<S477>/Equal1' incorporates:
   *  Switch: '<S477>/Switch1'
   *  Switch: '<S477>/Switch2'
   */
  localB->Equal1 = (localB->Switch1_m == localB->Switch2_j3);

  /* Logic: '<S477>/AND3' */
  localB->AND3 = (localB->RelationalOperator && localB->Equal1);

  /* Switch: '<S477>/Switch' */
  if (localB->AND3) {
    /* Switch: '<S477>/Switch' incorporates:
     *  Constant: '<S477>/Constant1'
     */
    localB->Switch_in = 0.0F;
  } else {
    /* Switch: '<S477>/Switch' */
    localB->Switch_in = localB->IProdOut;
  }

  /* End of Switch: '<S477>/Switch' */

  /* Saturate: '<S493>/Saturation' */
  rateLimiterRate = localB->Sum_p;
  if (rateLimiterRate > 1.0F) {
    /* Saturate: '<S493>/Saturation' */
    localB->Saturation = 1.0F;
  } else if (rateLimiterRate < -1.0F) {
    /* Saturate: '<S493>/Saturation' */
    localB->Saturation = -1.0F;
  } else {
    /* Saturate: '<S493>/Saturation' */
    localB->Saturation = rateLimiterRate;
  }

  /* End of Saturate: '<S493>/Saturation' */

  /* Gain: '<S442>/Gain1' incorporates:
   *  Constant: '<S442>/speed_ref_rpm'
   */
  localB->Gain1 = 0.0023646252069047056;

  /* SwitchCase: '<S442>/Switch Case' */
  switch ((int32_T)localB->Motor_State) {
   case 1L:
    /* Outputs for IfAction SubSystem: '<S442>/Switch Case Action Subsystem' incorporates:
     *  ActionPort: '<S448>/Action Port'
     */
    /* Merge: '<S442>/Merge' incorporates:
     *  Constant: '<S448>/Constant'
     *  SignalConversion generated from: '<S448>/theta_virtual'
     */
    localB->Merge = 0.0F;

    /* Merge: '<S442>/Merge1' incorporates:
     *  Constant: '<S448>/Constant1'
     *  SignalConversion generated from: '<S448>/Iq_ref+'
     */
    localB->Merge1 = 0.0F;

    /* Merge: '<S442>/Merge2' incorporates:
     *  Constant: '<S448>/Constant2'
     *  SignalConversion generated from: '<S448>/CloseLoop_Enable'
     */
    localB->Merge2 = false;

    /* End of Outputs for SubSystem: '<S442>/Switch Case Action Subsystem' */
    break;

   case 2L:
    /* Outputs for IfAction SubSystem: '<S442>/Switch Case Action Subsystem1' incorporates:
     *  ActionPort: '<S449>/Action Port'
     */
    /* Merge: '<S442>/Merge' incorporates:
     *  Constant: '<S449>/Constant'
     *  SignalConversion generated from: '<S449>/theta_virtual'
     */
    localB->Merge = 0.0F;

    /* Merge: '<S442>/Merge1' incorporates:
     *  Constant: '<S442>/Constant1'
     *  SignalConversion generated from: '<S449>/Iq_ref'
     */
    localB->Merge1 = 0.5F;

    /* Merge: '<S442>/Merge2' incorporates:
     *  Constant: '<S449>/Constant2'
     *  SignalConversion generated from: '<S449>/CloseLoop_Enable'
     */
    localB->Merge2 = false;

    /* End of Outputs for SubSystem: '<S442>/Switch Case Action Subsystem1' */
    break;

   case 3L:
    /* Outputs for IfAction SubSystem: '<S442>/Switch Case Action Subsystem2' incorporates:
     *  ActionPort: '<S450>/Action Port'
     */
    /* DiscreteIntegrator: '<S512>/Discrete-Time Integrator1' */
    localB->DiscreteTimeIntegrator1 = localDW->DiscreteTimeIntegrator1_DSTATE;

    /* Sum: '<S510>/Sum' */
    localB->Sum_o = rtu_Theta_e_hat - localB->DiscreteTimeIntegrator1;

    /* Delay: '<S510>/Delay' */
    localB->Delay_j = localDW->Delay_DSTATE;

    /* Sum: '<S510>/Sum1' */
    localB->Sum1 = localB->Delay_j - localB->Sum_o;

    /* Abs: '<S510>/Abs' */
    localB->Abs = fabsf(localB->Sum1);

    /* MinMax: '<S512>/MinMax' */
    u1 = localB->Switch_i;
    if ((u1 >= 0.0023646252069047056) || rtIsNaN(u1)) {
      u1 = 0.0023646252069047056;
    }

    /* MinMax: '<S512>/MinMax' */
    localB->MinMax = u1;

    /* Abs: '<S510>/Abs1' */
    localB->Abs1 = fabs(localB->MinMax);

    /* Abs: '<S510>/Abs2' */
    localB->Abs2 = fabsf(rtu_Speed_Meas_PU);

    /* Switch: '<S510>/Switch' */
    localB->Switch_b = (localB->Abs != 0.0F);

    /* Sum: '<S510>/Sum2' */
    localB->Sum2 = localB->Abs2 - localB->Abs1;

    /* Switch: '<S510>/Switch1' */
    localB->Switch1_l = (localB->Sum2 > 0.0);

    /* Logic: '<S510>/Logical Operator' */
    localB->LogicalOperator_m = (localB->Switch_b && localB->Switch1_l);

    /* Logic: '<S510>/Logical Operator2' */
    localB->LogicalOperator2 = true;

    /* Merge: '<S442>/Merge2' incorporates:
     *  Logic: '<S510>/Logical Operator1'
     */
    localB->Merge2 = localB->LogicalOperator_m;

    /* Abs: '<S511>/Abs3' */
    localB->Abs3 = fabsf(localB->Switch_i);

    /* DiscreteIntegrator: '<S511>/Discrete-Time Integrator2' */
    localB->DiscreteTimeIntegrator2 = localDW->DiscreteTimeIntegrator2_DSTATE;

    /* Product: '<S511>/Divide1' incorporates:
     *  Constant: '<S442>/RampTime'
     *  Constant: '<S511>/Constant5'
     */
    localB->Divide1 = 0.33333333333333331;

    /* Gain: '<S511>/Gain3' incorporates:
     *  Constant: '<S511>/speed_rpm_base'
     */
    localB->Gain3 = 0.011823126034523528;

    /* Sum: '<S511>/Sum3' */
    localB->Iq_ref = localB->Abs3 - 0.011823126034523528;

    /* Switch: '<S511>/Switch2' */
    if (localB->Iq_ref > 0.0) {
      /* Switch: '<S511>/Switch2' */
      localB->Switch2 = localB->Abs3;
    } else {
      /* Switch: '<S511>/Switch2' incorporates:
       *  Constant: '<S511>/Constant4'
       */
      localB->Switch2 = 0.0;
    }

    /* End of Switch: '<S511>/Switch2' */

    /* Gain: '<S511>/Gain5' */
    localB->Gain5 = 10.0 * localB->Switch2;

    /* Outputs for Atomic SubSystem: '<S511>/atan2' */
    mcb_pmsm_foc_sensorle_atan2(localB->Gain5, 0.011823126034523528, 2U,
      &localB->atan2_o);

    /* End of Outputs for SubSystem: '<S511>/atan2' */

    /* Sum: '<S511>/Sum6' incorporates:
     *  Constant: '<S511>/Constant7'
     */
    localB->Iq_ref_l = localB->atan2_o.algDD + 1.0;

    /* Product: '<S511>/Product2' */
    localB->Product2 = (real32_T)(localB->Iq_ref_l * 0.5);

    /* Gain: '<S511>/Gain1' */
    localB->Gain1_j = 0.333333343F * localB->Product2;

    /* Product: '<S511>/Product1' */
    localB->Product1_g = (real32_T)(localB->Product2 * 0.33333333333333331);

    /* RelationalOperator: '<S513>/LowerRelop1' */
    localB->LowerRelop1 = (localB->DiscreteTimeIntegrator2 > localB->Gain1_j);

    /* Switch: '<S513>/Switch2' */
    if (localB->LowerRelop1) {
      /* Switch: '<S513>/Switch2' */
      localB->Switch2_j = localB->Gain1_j;
    } else {
      /* RelationalOperator: '<S513>/UpperRelop' incorporates:
       *  Constant: '<S511>/Constant6'
       */
      localB->UpperRelop_f = (localB->DiscreteTimeIntegrator2 < 0.0F);

      /* Switch: '<S513>/Switch' */
      if (localB->UpperRelop_f) {
        /* Switch: '<S513>/Switch' incorporates:
         *  Constant: '<S511>/Constant6'
         */
        localB->Switch_ij = 0.0F;
      } else {
        /* Switch: '<S513>/Switch' */
        localB->Switch_ij = localB->DiscreteTimeIntegrator2;
      }

      /* End of Switch: '<S513>/Switch' */

      /* Switch: '<S513>/Switch2' */
      localB->Switch2_j = localB->Switch_ij;
    }

    /* End of Switch: '<S513>/Switch2' */

    /* Merge: '<S442>/Merge1' incorporates:
     *  Sum: '<S511>/Sum4'
     */
    localB->Merge1 = localB->Product2 - localB->Switch2_j;

    /* DiscreteIntegrator: '<S512>/Discrete-Time Integrator' */
    localB->DiscreteTimeIntegrator = localDW->DiscreteTimeIntegrator_DSTATE;

    /* Product: '<S512>/Divide' incorporates:
     *  Constant: '<S442>/RampTime'
     *  Constant: '<S512>/Constant'
     */
    localB->Divide = 0.33333333333333331;

    /* Gain: '<S512>/Gain4' */
    localB->Gain4 = 70.483333333333334 * localB->MinMax;

    /* Switch: '<S520>/Switch' incorporates:
     *  Constant: '<S520>/Constant1'
     */
    localB->Switch_k = 0.0F;

    /* If: '<S521>/If' */
    if (localB->DiscreteTimeIntegrator1 <= 0.0F) {
      /* Outputs for IfAction SubSystem: '<S521>/If Action Subsystem' incorporates:
       *  ActionPort: '<S523>/Action Port'
       */
      /* Merge: '<S521>/Merge' incorporates:
       *  Constant: '<S523>/Constant'
       *  Sum: '<S523>/Add'
       */
      localB->Merge_p = localB->DiscreteTimeIntegrator1 + 1.0F;

      /* End of Outputs for SubSystem: '<S521>/If Action Subsystem' */
    } else {
      /* Outputs for IfAction SubSystem: '<S521>/If Action Subsystem1' incorporates:
       *  ActionPort: '<S524>/Action Port'
       */
      /* Merge: '<S521>/Merge' incorporates:
       *  Sum: '<S524>/Add'
       */
      localB->Merge_p = localB->DiscreteTimeIntegrator1;

      /* End of Outputs for SubSystem: '<S521>/If Action Subsystem1' */
    }

    /* End of If: '<S521>/If' */

    /* Gain: '<S526>/Number of pole pairs' */
    localB->Numberofpolepairs = 5.0F * localB->Merge_p;

    /* Rounding: '<S522>/Floor' */
    localB->Floor = (real32_T)floor(localB->Numberofpolepairs);

    /* Sum: '<S522>/Add' */
    localB->Add = localB->Numberofpolepairs - localB->Floor;

    /* Merge: '<S442>/Merge' incorporates:
     *  Constant: '<S512>/Constant3'
     *  Math: '<S512>/Math Function'
     */
    localB->Merge = rt_modf_snf(localB->Add, 1.0F);

    /* Product: '<S512>/Product' */
    localB->Product_f = (real32_T)(localB->Gain4 * 0.33333333333333331);

    /* RelationalOperator: '<S518>/LowerRelop1' */
    localB->LowerRelop1_c = (localB->DiscreteTimeIntegrator > localB->Gain4);

    /* Switch: '<S518>/Switch2' */
    if (localB->LowerRelop1_c) {
      /* Switch: '<S518>/Switch2' */
      localB->Switch2_k = (real32_T)localB->Gain4;
    } else {
      /* Gain: '<S512>/Gain2' */
      localB->Gain2 = -localB->Gain4;

      /* RelationalOperator: '<S518>/UpperRelop' */
      localB->UpperRelop = (localB->DiscreteTimeIntegrator < localB->Gain2);

      /* Switch: '<S518>/Switch' */
      if (localB->UpperRelop) {
        /* Switch: '<S518>/Switch' */
        localB->Switch_ke = (real32_T)localB->Gain2;
      } else {
        /* Switch: '<S518>/Switch' */
        localB->Switch_ke = localB->DiscreteTimeIntegrator;
      }

      /* End of Switch: '<S518>/Switch' */

      /* Switch: '<S518>/Switch2' */
      localB->Switch2_k = localB->Switch_ke;
    }

    /* End of Switch: '<S518>/Switch2' */

    /* Update for DiscreteIntegrator: '<S512>/Discrete-Time Integrator1' */
    localDW->DiscreteTimeIntegrator1_DSTATE += 0.001F * localB->Switch2_k;

    /* Update for Delay: '<S510>/Delay' */
    localDW->Delay_DSTATE = localB->Sum_o;

    /* Update for DiscreteIntegrator: '<S511>/Discrete-Time Integrator2' */
    localDW->DiscreteTimeIntegrator2_DSTATE += 0.001F * localB->Product1_g;

    /* Update for DiscreteIntegrator: '<S512>/Discrete-Time Integrator' */
    localDW->DiscreteTimeIntegrator_DSTATE += 0.001F * localB->Product_f;

    /* End of Outputs for SubSystem: '<S442>/Switch Case Action Subsystem2' */
    break;

   case 4L:
    /* Outputs for IfAction SubSystem: '<S442>/Switch Case Action Subsystem3' incorporates:
     *  ActionPort: '<S451>/Action Port'
     */
    /* Merge: '<S442>/Merge' incorporates:
     *  Constant: '<S451>/Constant1'
     *  SignalConversion generated from: '<S451>/theta_virtual'
     */
    localB->Merge = 0.0F;

    /* Merge: '<S442>/Merge1' incorporates:
     *  SignalConversion generated from: '<S451>/Iq_ref'
     */
    localB->Merge1 = localB->Saturation;

    /* Merge: '<S442>/Merge2' incorporates:
     *  Constant: '<S451>/Constant2'
     *  SignalConversion generated from: '<S451>/CloseLoop_Enable'
     */
    localB->Merge2 = false;

    /* End of Outputs for SubSystem: '<S442>/Switch Case Action Subsystem3' */
    break;

   default:
    /* no actions */
    break;
  }

  /* End of SwitchCase: '<S442>/Switch Case' */

  /* S-Function (sdspunwrap2): '<S447>/Unwrap' */
  if (localDW->Unwrap_FirstStep) {
    localDW->Unwrap_Prev = localB->Merge;
    localDW->Unwrap_FirstStep = false;
  }

  rateLimiterRate = localDW->Unwrap_Cumsum;
  uPrev = localDW->Unwrap_Prev;
  uPrev = localB->Merge - uPrev;
  dpTmp = (uPrev + 3.14159274F) / 6.28318548F;
  dpTmp = (real32_T)floor(dpTmp);
  dpTmp = uPrev - 6.28318548F * dpTmp;
  if ((dpTmp == -3.14159274F) && (uPrev > 0.0F)) {
    dpTmp = 3.14159274F;
  }

  uPrev = dpTmp - uPrev;
  if (fabsf(uPrev) > 0.5F) {
    rateLimiterRate += uPrev;
  }

  uPrev = localB->Merge;

  /* S-Function (sdspunwrap2): '<S447>/Unwrap' */
  localB->Unwrap = localB->Merge + rateLimiterRate;

  /* S-Function (sdspunwrap2): '<S447>/Unwrap' */
  localDW->Unwrap_Prev = uPrev;
  localDW->Unwrap_Cumsum = rateLimiterRate;

  /* Gain: '<S504>/PositionToCount' */
  localB->PositionToCount = (uint32_T)(4.2949673E+9F * localB->Unwrap);

  /* Delay: '<S504>/Delay' */
  localB->Delay = localDW->Delay_DSTATE_m[localDW->CircBufIdx];

  /* Sum: '<S504>/SpeedCount' */
  localB->SpeedCount = (int32_T)localB->PositionToCount - (int32_T)localB->Delay;

  /* DataTypeConversion: '<S509>/DTC' */
  localB->DTC = (real32_T)localB->SpeedCount;

  /* Gain: '<S504>/SpeedGain' */
  localB->SpeedGain = 1.65167158E-10F * localB->DTC;

  /* Product: '<S507>/Product' incorporates:
   *  Constant: '<S507>/Filter_Constant'
   */
  localB->Product_e = localB->SpeedGain * 0.001F;

  /* UnitDelay: '<S507>/Unit Delay' */
  localB->UnitDelay_e = localDW->UnitDelay_DSTATE_h;

  /* Product: '<S507>/Product1' incorporates:
   *  Constant: '<S507>/One'
   */
  localB->Product1_f = 0.999F * localB->UnitDelay_e;

  /* Sum: '<S507>/Add1' */
  localB->Add1_p = localB->Product_e + localB->Product1_f;

  /* Gain: '<S442>/Gain2' */
  localB->Gain2_g = 0.2F * localB->Add1_p;

  /* Update for UnitDelay: '<S442>/Unit Delay' */
  localDW->UnitDelay_DSTATE_hl = localB->Merge2;

  /* Update for UnitDelay: '<S529>/Unit Delay' */
  localDW->UnitDelay_DSTATE = localB->Add1;

  /* Update for DiscreteIntegrator: '<S486>/Integrator' */
  localDW->Integrator_DSTATE += localB->Switch_in;
  localDW->Integrator_PrevResetState = (int16_T)localB->LogicalOperator;

  /* Update for Delay: '<S504>/Delay' */
  localDW->Delay_DSTATE_m[localDW->CircBufIdx] = localB->PositionToCount;
  if (localDW->CircBufIdx < 19U) {
    localDW->CircBufIdx++;
  } else {
    localDW->CircBufIdx = 0U;
  }

  /* End of Update for Delay: '<S504>/Delay' */

  /* Update for UnitDelay: '<S507>/Unit Delay' */
  localDW->UnitDelay_DSTATE_h = localB->Add1_p;
}

/* Model step function for TID0 */
void mcb_pmsm_foc_sensorless_f28379d_step0(void) /* Sample time: [5.0E-6s, 0.0s] */
{
  {                                    /* Sample time: [5.0E-6s, 0.0s] */
    rate_monotonic_scheduler();
  }

  /* Outputs for Enabled SubSystem: '<Root>/方波信号' incorporates:
   *  EnablePort: '<S9>/Enable'
   */
  /* DiscretePulseGenerator: '<S9>/Discrete Pulse Generator' */
  mcb_pmsm_foc_sensorless_f2837_B.DiscretePulseGenerator =
    (mcb_pmsm_foc_sensorless_f_DWork.clockTickCounter < 10L) &&
    (mcb_pmsm_foc_sensorless_f_DWork.clockTickCounter >= 0L) ? 0.2 : 0.0;

  /* DiscretePulseGenerator: '<S9>/Discrete Pulse Generator' */
  if (mcb_pmsm_foc_sensorless_f_DWork.clockTickCounter >= 19L) {
    mcb_pmsm_foc_sensorless_f_DWork.clockTickCounter = 0L;
  } else {
    mcb_pmsm_foc_sensorless_f_DWork.clockTickCounter++;
  }

  /* Sum: '<S9>/Subtract' incorporates:
   *  Constant: '<S9>/Constant'
   */
  mcb_pmsm_foc_sensorless_f2837_B.Subtract =
    mcb_pmsm_foc_sensorless_f2837_B.DiscretePulseGenerator - 0.1;

  /* DataStoreWrite: '<S9>/Data Store Write' */
  mcb_pmsm_foc_sensorless_f_DWork.Udh = mcb_pmsm_foc_sensorless_f2837_B.Subtract;

  /* End of Outputs for SubSystem: '<Root>/方波信号' */

  /* Update absolute time */
  /* The "clockTick0" counts the number of times the code of this task has
   * been executed. The resolution of this integer timer is 5.0E-6, which is the step size
   * of the task. Size of "clockTick0" ensures timer will not overflow during the
   * application lifespan selected.
   * Timer of this task consists of two 32 bit unsigned integers.
   * The two integers represent the low bits Timing.clockTick0 and the high bits
   * Timing.clockTickH0. When the low bit overflows to 0, the high bits increment.
   */
  mcb_pmsm_foc_sensorless_f283_M->Timing.clockTick0++;
  if (!mcb_pmsm_foc_sensorless_f283_M->Timing.clockTick0) {
    mcb_pmsm_foc_sensorless_f283_M->Timing.clockTickH0++;
  }

  {
    /* Base rate updates double buffers of absolute time for
       asynchronous task. Double buffers are used to ensure
       data integrity when asynchronous task reads absolute
       time.
       -- rtmL2HLastBufWr is the buffer index that is written last.
     */
    boolean_T bufIdx = !(mcb_pmsm_foc_sensorless_f283_M->Timing.rtmL2HLastBufWr
                         != 0U);
    mcb_pmsm_foc_sensorless_f283_M->Timing.rtmL2HDbBufClockTick[bufIdx] =
      mcb_pmsm_foc_sensorless_f283_M->Timing.clockTick0;
    mcb_pmsm_foc_sensorless_f283_M->Timing.rtmL2HDbBufClockTickH[bufIdx] =
      mcb_pmsm_foc_sensorless_f283_M->Timing.clockTickH0;
    mcb_pmsm_foc_sensorless_f283_M->Timing.rtmL2HLastBufWr = bufIdx ? 1U : 0U;
  }
}

/* Model step function for TID1 */
void mcb_pmsm_foc_sensorless_f28379d_step1(void) /* Sample time: [0.001s, 0.0s] */
{
  real_T x;

  /* RateTransition: '<Root>/RT14' */
  mcb_pmsm_foc_sensorless_f2837_B.RT14 =
    mcb_pmsm_foc_sensorless_f_DWork.RT14_Buffer0;

  /* Outputs for Enabled SubSystem: '<Root>/Subsystem' incorporates:
   *  EnablePort: '<S8>/Enable'
   */
  if (mcb_pmsm_foc_sensorless_f2837_B.RT14) {
    /* MATLAB Function: '<S8>/MATLAB Function' incorporates:
     *  Constant: '<S8>/Ts_sensor'
     *  Constant: '<S8>/speed_ref_rpm'
     */
    /* MATLAB Function 'Subsystem/MATLAB Function': '<S530>:1' */
    /* '<S530>:1:13' */
    /* '<S530>:1:15' */
    x = mcb_pmsm_foc_sensorless_f_DWork.theta + 0.00016666666666666666;
    if (rtIsNaN(x) || rtIsInf(x)) {
      mcb_pmsm_foc_sensorless_f_DWork.theta = (rtNaN);
    } else if (x == 0.0) {
      mcb_pmsm_foc_sensorless_f_DWork.theta = 0.0;
    } else {
      mcb_pmsm_foc_sensorless_f_DWork.theta = fmod(x, 1.0);
      if (mcb_pmsm_foc_sensorless_f_DWork.theta == 0.0) {
        mcb_pmsm_foc_sensorless_f_DWork.theta = 0.0;
      } else if (x < 0.0) {
        mcb_pmsm_foc_sensorless_f_DWork.theta++;
      }
    }

    /* '<S530>:1:16' */
    mcb_pmsm_foc_sensorless_f2837_B.pu = (real32_T)
      mcb_pmsm_foc_sensorless_f_DWork.theta;

    /* End of MATLAB Function: '<S8>/MATLAB Function' */
  }

  /* End of Outputs for SubSystem: '<Root>/Subsystem' */

  /* RateTransition: '<Root>/RT' */
  mcb_pmsm_foc_sensorless_f2837_B.RT_f =
    mcb_pmsm_foc_sensorless_f_DWork.RT_Buffer[mcb_pmsm_foc_sensorless_f_DWork.RT_ActiveBufIdx];

  /* RateTransition: '<Root>/RT3' */
  mcb_pmsm_foc_sensorless_f_DWork.RT3_semaphoreTaken =
    mcb_pmsm_foc_sensorless_f_DWork.RT3_ActiveBufIdx;

  /* RateTransition: '<Root>/RT3' */
  mcb_pmsm_foc_sensorless_f2837_B.RT3 =
    mcb_pmsm_foc_sensorless_f_DWork.RT3_Buffer[mcb_pmsm_foc_sensorless_f_DWork.RT3_semaphoreTaken];

  /* RateTransition: '<Root>/RT5' */
  mcb_pmsm_foc_sensorless_f_DWork.RT5_semaphoreTaken =
    mcb_pmsm_foc_sensorless_f_DWork.RT5_ActiveBufIdx;

  /* RateTransition: '<Root>/RT5' */
  mcb_pmsm_foc_sensorless_f2837_B.RT5 =
    mcb_pmsm_foc_sensorless_f_DWork.RT5_Buffer[mcb_pmsm_foc_sensorless_f_DWork.RT5_semaphoreTaken];

  /* Outputs for Atomic SubSystem: '<Root>/Speed Control' */
  mcb_pmsm_foc_s_SpeedControl(mcb_pmsm_foc_sensorless_f2837_B.RT_f,
    mcb_pmsm_foc_sensorless_f2837_B.RT3, mcb_pmsm_foc_sensorless_f2837_B.RT5,
    &mcb_pmsm_foc_sensorless_f_DWork.EnClosedLoop,
    &mcb_pmsm_foc_sensorless_f_DWork.Enable,
    &mcb_pmsm_foc_sensorless_f_DWork.Speed_ref,
    &mcb_pmsm_foc_sensorless_f2837_B.SpeedControl,
    &mcb_pmsm_foc_sensorless_f_DWork.SpeedControl);

  /* End of Outputs for SubSystem: '<Root>/Speed Control' */

  /* RateTransition: '<Root>/RT2' */
  mcb_pmsm_foc_sensorless_f_DWork.RT2_Buffer
    [(mcb_pmsm_foc_sensorless_f_DWork.RT2_ActiveBufIdx == 0) << 1U] =
    mcb_pmsm_foc_sensorless_f2837_B.SpeedControl.Constant2;
  mcb_pmsm_foc_sensorless_f_DWork.RT2_Buffer[1 +
    ((mcb_pmsm_foc_sensorless_f_DWork.RT2_ActiveBufIdx == 0) << 1U)] =
    mcb_pmsm_foc_sensorless_f2837_B.SpeedControl.Merge1;
  mcb_pmsm_foc_sensorless_f_DWork.RT2_ActiveBufIdx =
    (mcb_pmsm_foc_sensorless_f_DWork.RT2_ActiveBufIdx == 0);

  /* RateTransition: '<Root>/RT6' */
  mcb_pmsm_foc_sensorless_f_DWork.RT6_Buffer[mcb_pmsm_foc_sensorless_f_DWork.RT6_ActiveBufIdx
    == 0] = mcb_pmsm_foc_sensorless_f2837_B.SpeedControl.Merge;
  mcb_pmsm_foc_sensorless_f_DWork.RT6_ActiveBufIdx =
    (mcb_pmsm_foc_sensorless_f_DWork.RT6_ActiveBufIdx == 0);

  /* RateTransition: '<Root>/RT7' */
  mcb_pmsm_foc_sensorless_f_DWork.RT7_Buffer[mcb_pmsm_foc_sensorless_f_DWork.RT7_ActiveBufIdx
    == 0] = mcb_pmsm_foc_sensorless_f2837_B.SpeedControl.Gain2_g;
  mcb_pmsm_foc_sensorless_f_DWork.RT7_ActiveBufIdx =
    (mcb_pmsm_foc_sensorless_f_DWork.RT7_ActiveBufIdx == 0);

  /* RateTransition: '<Root>/RT8' */
  mcb_pmsm_foc_sensorless_f_DWork.RT8_Buffer0 =
    mcb_pmsm_foc_sensorless_f2837_B.SpeedControl.Motor_State;
}

/* Model step function for TID2 */
void mcb_pmsm_foc_sensorless_f28379d_step2(void) /* Sample time: [0.015s, 0.0s] */
{
  /* Constant: '<Root>/InitTrigger' */
  mcb_pmsm_foc_sensorless_f2837_B.InitTrigger = true;

  /* RateTransition: '<Root>/RT14' */
  mcb_pmsm_foc_sensorless_f_DWork.RT14_Buffer0 =
    mcb_pmsm_foc_sensorless_f2837_B.InitTrigger;
}

/* Model step function for TID3 */
void mcb_pmsm_foc_sensorless_f28379d_step3(void) /* Sample time: [0.5s, 0.0s] */
{
  /* Outputs for Atomic SubSystem: '<Root>/Heartbeat LED' */
  /* S-Function (c280xgpio_do): '<S434>/Digital Output' incorporates:
   *  Constant: '<S4>/RED_LED'
   */
  {
    GpioDataRegs.GPBTOGGLE.bit.GPIO34 = (uint16_T)((1U) != 0);
  }

  /* End of Outputs for SubSystem: '<Root>/Heartbeat LED' */
}

/* Model initialize function */
void mcb_pmsm_foc_sensorless_f28379d_initialize(void)
{
  /* Registration code */

  /* initialize non-finites */
  rt_InitInfAndNaN(sizeof(real_T));

  /* initialize real-time model */
  (void) memset((void *)mcb_pmsm_foc_sensorless_f283_M, 0,
                sizeof(RT_MODEL_mcb_pmsm_foc_sensorles));

  /* block I/O */
  (void) memset(((void *) &mcb_pmsm_foc_sensorless_f2837_B), 0,
                sizeof(BlockIO_mcb_pmsm_foc_sensorless));

  {
    int16_T i;
    for (i = 0; i < 16; i++) {
      mcb_pmsm_foc_sensorless_f2837_B.MatrixConcatenate[i] = 0.0;
    }

    for (i = 0; i < 16; i++) {
      mcb_pmsm_foc_sensorless_f2837_B.MatrixMultiply[i] = 0.0;
    }

    for (i = 0; i < 16; i++) {
      mcb_pmsm_foc_sensorless_f2837_B.Add1_n[i] = 0.0;
    }

    for (i = 0; i < 16; i++) {
      mcb_pmsm_foc_sensorless_f2837_B.Delay1_k[i] = 0.0;
    }

    for (i = 0; i < 16; i++) {
      mcb_pmsm_foc_sensorless_f2837_B.MatrixMultiply_l[i] = 0.0;
    }

    for (i = 0; i < 16; i++) {
      mcb_pmsm_foc_sensorless_f2837_B.Transpose[i] = 0.0;
    }

    for (i = 0; i < 16; i++) {
      mcb_pmsm_foc_sensorless_f2837_B.MatrixMultiply1[i] = 0.0;
    }

    for (i = 0; i < 16; i++) {
      mcb_pmsm_foc_sensorless_f2837_B.Add_d[i] = 0.0;
    }

    for (i = 0; i < 8; i++) {
      mcb_pmsm_foc_sensorless_f2837_B.MatrixMultiply_i[i] = 0.0;
    }

    for (i = 0; i < 8; i++) {
      mcb_pmsm_foc_sensorless_f2837_B.Divide[i] = 0.0;
    }

    for (i = 0; i < 16; i++) {
      mcb_pmsm_foc_sensorless_f2837_B.MatrixMultiply1_l[i] = 0.0;
    }

    for (i = 0; i < 16; i++) {
      mcb_pmsm_foc_sensorless_f2837_B.Add_j[i] = 0.0;
    }

    for (i = 0; i < 16; i++) {
      mcb_pmsm_foc_sensorless_f2837_B.MatrixMultiply_o[i] = 0.0;
    }

    for (i = 0; i < 15; i++) {
      mcb_pmsm_foc_sensorless_f2837_B.TmpSignalConversionAtSelector_j[i] = 0.0F;
    }

    mcb_pmsm_foc_sensorless_f2837_B.DiscretePulseGenerator = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Subtract = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Delay5[0] = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Delay5[1] = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Delay5[2] = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Delay5[3] = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.CastToDouble = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.CastToDouble1 = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.DataStoreRead = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.TmpSignalConversionAtSelectorIn[0] = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.TmpSignalConversionAtSelectorIn[1] = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Selector = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.TmpSignalConversionAtDelay5Inpo[0] = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.TmpSignalConversionAtDelay5Inpo[1] = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.TmpSignalConversionAtDelay5Inpo[2] = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.TmpSignalConversionAtDelay5Inpo[3] = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.sqrt3_by_two = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.one_by_two = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.add_c = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.add_b = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Min = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Max = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Add = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.one_by_two_p = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Add2 = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Add1 = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Add3 = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Gain[0] = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Gain[1] = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Gain[2] = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.DiscreteTimeIntegrator1 = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Delay = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Delay1 = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Sum3 = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Gain1 = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.u = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.DataStoreRead1 = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Sign = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Ibeta_h = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.TrigonometricFunction2 = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Product2 = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Delay1_l = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Delay_p = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Sum2 = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Gain_k = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.u_k = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Ialpha_h = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.TrigonometricFunction3 = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Product3 = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Iq = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Kp = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Ki = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Add1_j = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Saturation = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.DiscreteTransferFcn = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.wewm = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Ki_d = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.UnitDelay[0] = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.UnitDelay[1] = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.UnitDelay[2] = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.UnitDelay[3] = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Cos1 = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Gain1_m = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Cos = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.VectorConcatenate4[0] = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.VectorConcatenate4[1] = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.VectorConcatenate4[2] = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.VectorConcatenate4[3] = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Gain2 = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.VectorConcatenate1[0] = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.VectorConcatenate1[1] = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.VectorConcatenate1[2] = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.VectorConcatenate1[3] = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Delay_f[0] = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Delay_f[1] = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Delay_f[2] = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Delay_f[3] = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Delay2 = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Delay3 = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Delay4 = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Delay5_e = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.MatrixMultiply1_e[0] = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.MatrixMultiply1_e[1] = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.MatrixMultiply1_e[2] = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.MatrixMultiply1_e[3] = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Add_p[0] = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Add_p[1] = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Add_p[2] = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Add_p[3] = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.VectorConcatenate[0] = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.VectorConcatenate[1] = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.VectorConcatenate1_h[0] = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.VectorConcatenate1_h[1] = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.VectorConcatenate1_h[2] = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.VectorConcatenate1_h[3] = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.VectorConcatenate2[0] = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.VectorConcatenate2[1] = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Gain_i = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Gain1_o = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Cos1_o = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Product1 = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Gain2_e = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Gain3 = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Cos_c = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Product2_j = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.VectorConcatenate4_j[0] = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.VectorConcatenate4_j[1] = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.VectorConcatenate4_j[2] = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.VectorConcatenate4_j[3] = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.MatrixMultiply1_er[0] = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.MatrixMultiply1_er[1] = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.MatrixMultiply1_er[2] = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.MatrixMultiply1_er[3] = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Add2_h[0] = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Add2_h[1] = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Add2_h[2] = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Add2_h[3] = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Gain_kv[0] = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Gain_kv[1] = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Gain_kv[2] = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Gain_kv[3] = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Add1_h[0] = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Add1_h[1] = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Add1_h[2] = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Add1_h[3] = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.MatrixMultiply1_f[0] = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.MatrixMultiply1_f[1] = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Add1_jz[0] = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Add1_jz[1] = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.MatrixMultiply_on[0] = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.MatrixMultiply_on[1] = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.MatrixMultiply_on[2] = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.MatrixMultiply_on[3] = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Add_l[0] = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Add_l[1] = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Add_l[2] = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Add_l[3] = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.In1 = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.In2 = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Delay_c[0] = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Delay_c[1] = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Gain_b = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.UnaryMinus = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Product1_i = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Gain1_j = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Product2_g = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Product = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Gain_m = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Product_m = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Sum = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Product1_j = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Product3_l = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Sum1 = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Product3_n = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Product1_o = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Product2_i = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Gain_f = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Product3_i = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Sum1_c = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Product1_ja = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.UnaryMinus_k = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.UnaryMinus_g = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Product2_f = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Product_e = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Sum_n = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Product_d = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.UnaryMinus_a = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Gain1_d = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.UnaryMinus1 = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Product2_p = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Gain_p = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.UnaryMinus_b = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Product_k = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Sum_f = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Product1_g = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Product3_p = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Sum1_k = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.UnaryMinus_a2 = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Product_o = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Product3_a = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.UnaryMinus1_c = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Product5 = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Sum1_h = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Product2_b = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Product4 = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Product1_l = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.UnaryMinus_j = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Product2_d = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Sum_b = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Product_h = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Sum_k = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Product1_b = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Product3_c = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Sum1_a = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Sum_ba[0] = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Sum_ba[1] = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Sum_m[0] = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Sum_m[1] = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Gain1_mj[0] = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Gain1_mj[1] = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Sum2_j[0] = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Sum2_j[1] = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Gain2_k[0] = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Gain2_k[1] = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Sum1_o[0] = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Sum1_o[1] = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Product_p[0] = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Product_p[1] = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Product_kb[0] = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Product_kb[1] = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.UnitDelay_i[0] = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.UnitDelay_i[1] = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Product1_oy[0] = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Product1_oy[1] = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Add1_a[0] = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Add1_a[1] = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Merge = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Merge1 = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Merge_l[0] = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Merge_l[1] = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Product_f = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Product1_n = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Sum_k0 = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Merge_p = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Merge1_g = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Merge_i = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Product_k3 = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.UnitDelay_ik = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Product1_ls = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Add1_p = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Delay_i = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.DataTypeConversion1 = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Product_oz = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.DataTypeConversion = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Product1_m = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Sum_mt = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.ProportionalGain = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.IntegralGain = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Integrator = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Sum_o = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.speed = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Product_j = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.UnitDelay_e = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Product1_p = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Add1_l = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Gain_b3 = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.UnitDelay_g = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Add_k = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.DataTypeConversion1_o = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Add1_lb = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Input = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.In1_o = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Delay2_l = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Delay3_a = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Product_ml = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.UnitDelay_gc = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Product1_k = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Add1_g = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Gain_a = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Sum1_p = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Gain1_p = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Delay2_h = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Delay3_h = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Product_fa = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.UnitDelay_e3 = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Product1_e = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Add1_o = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Gain_n = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Sum1_ad = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Gain1_f = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Product_o0 = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Product1_nd = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Product_g = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.UnitDelay_n = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Product1_m1 = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Add1_he = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Delay1_b = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Sum_h = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Gain1_g = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Delay_a = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Gain2_p = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Sum1_m = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Product_g0 = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Product_c = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.UnitDelay_gt = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Product1_f = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Add1_oz = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Delay1_h = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Sum_n4 = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Gain1_pc = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Delay_l = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Gain2_h = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Sum1_i = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Product1_nm = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Sum_k2 = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.MathFunction = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Abs = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Delay2_g = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Delay3_l = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Product_b = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.UnitDelay_k = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Product1_g1 = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Add1_m = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Gain_e = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Sum1_id = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Gain1_pv = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Delay2_lv = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Delay3_n = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Product_ck = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.UnitDelay_nf = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Product1_kb = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Add1_h3 = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Gain_c = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Sum1_l = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Gain1_i = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Delay_n = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Delay1_p = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Switch1 = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Product_hj = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.UnitDelay_d = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Product1_m5 = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Add1_k = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Square = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Square1 = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Sum2_m = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Sqrt = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.UnaryMinus_i = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Sum_l = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Sqrt_b = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Divide_j = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Divide1 = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Product_ep[0] = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Product_ep[1] = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Product_ep[2] = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Product_ep[3] = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.UnitDelay_h[0] = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.UnitDelay_h[1] = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.UnitDelay_h[2] = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.UnitDelay_h[3] = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Product1_h[0] = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Product1_h[1] = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Product1_h[2] = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Product1_h[3] = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Add1_n1[0] = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Add1_n1[1] = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Add1_n1[2] = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Add1_n1[3] = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Sum6[0] = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Sum6[1] = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Sum6[2] = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Sum6[3] = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.ScalingR = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Sum3_b = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Delay1_px = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Sum_mm = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Gain1_k = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Delay_no = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Gain2_ev = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Sum1_on = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.ScalingL = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Sum1_j = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Product_en = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.UnitDelay_er = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Product1_p3 = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Add1_d = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Switch = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.ScalingR_g = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Sum3_d = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Delay1_j = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Sum_c = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Gain1_k1 = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Delay_b = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Gain2_j = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Sum1_co = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.ScalingL_e = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Sum1_f = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Product_jy = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.UnitDelay_m = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Product1_kt = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Add1_ah = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Switch_i = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Sum_i = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Sum_bi = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.UnitDelay1 = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.UnitDelay_b = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.a = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Delay_g = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Sum2_p = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Sum3_g = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.b_invg = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Delay1_i = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Sum4 = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Product_c4 = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.UnitDelay_o = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Product1_ei = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Add1_km = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.UnitDelay1_k = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.UnitDelay_ev = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.a_g = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Delay_cd = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Sum2_b = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Sum3_n = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.b_invg_n = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Delay1_n = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Sum4_g = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Product_ed = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.UnitDelay_l = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Product1_m1j = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Add1_i = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Merge_l1 = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Merge1_e = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Sign_b = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Eta = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Sum_i4 = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.b = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.a_o = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Sum1_c0 = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Sign_m = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Eta_e = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Sum_iv = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.b_n = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.a_gy = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Sum1_hy = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Product_cp = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Product2_m = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Sum1_h1 = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Product1_fi = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Product3_pb = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Sum2_k = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Switch_l = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.DataTypeConversion_d = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Switch_ia = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.algDD = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Gain_nd = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Switch_b = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Bias = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Bias_e = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Switch_ih[0] = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.Switch_ih[1] = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.algDD_o1 = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.algDD_o2 = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.RT_f = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.RT3 = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.RT5 = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.RT2[0] = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.RT2[1] = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.RT6 = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.RT7 = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.pu = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.SCIReceive[0] = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.SCIReceive[1] = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.DataStoreRead_h = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Abs_d = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Gain_k0 = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.UnitDelay_p = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Merge_a[0] = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Merge_a[1] = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Sum_lw = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Saturation_g = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Yk1 = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Yk1Uk = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.PoleYk1Uk = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Sum_mb = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Merge_b = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Switch_ial = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.GetADCVoltage[0] = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.GetADCVoltage[1] = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.GetCurrents[0] = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.GetCurrents[1] = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.PU_Conversion[0] = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.PU_Conversion[1] = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Merge_az = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.indexing = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Lookup[0] = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Lookup[1] = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Lookup[2] = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Lookup[3] = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Sum3_e = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.DataTypeConversion1_i = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Sum2_e = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Product_gs = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Sum4_d = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Sum5 = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Product1_c = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Sum6_g = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Sum_g = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.PProdOut = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.UnitDelay_c = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Integrator_h = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Sum_l5 = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Switch_h = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Sum_km = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.PProdOut_a = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.UnitDelay_mw = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Integrator_c = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Sum_kn = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Switch_lw = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Sum_e = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Switch_f = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Product_bp = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Product_kt = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Product1_no = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Sum1_mh = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Merge_e[0] = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Merge_e[1] = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Merge_pu = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.indexing_g = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Lookup_k[0] = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Lookup_k[1] = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Lookup_k[2] = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Lookup_k[3] = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Sum3_j = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.DataTypeConversion1_m = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Sum2_a = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Product_mz = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Sum4_f = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Sum5_g = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Product1_d = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Sum6_f = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.DeadZone = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.IProdOut = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Switch_fm = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.DeadZone_d = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.IProdOut_h = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Switch_m = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.DataStoreRead1_p = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Merge1_h = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.CastToSingle = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Selector_o[0] = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Selector_o[1] = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.DataTypeConversion_c = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Switch_p = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.CastToSingle_h[0] = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.CastToSingle_h[1] = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.CastToSingle_h[2] = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.One_by_Two[0] = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.One_by_Two[1] = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.One_by_Two[2] = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.PWM_Duty_Cycles[0] = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.PWM_Duty_Cycles[1] = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.PWM_Duty_Cycles[2] = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Delay1_e = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.DataTypeConversion3 = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Merge_h = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.indexing_i = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Lookup_a[0] = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Lookup_a[1] = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Lookup_a[2] = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Lookup_a[3] = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Sum5_h = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.DataTypeConversion1_c = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Sum2_kx = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Product1_er = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Sum6_l = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Sum3_c = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Product_cj = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Sum4_m = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.FreqGain = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.PositionGain = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.DTC = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.SpeedGain = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Product_i = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.UnitDelay_my = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Product1_hz = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Add1_k1 = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.elect2mech = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Delay_fd = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.DTC_c = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.SpeedGain_h = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Product_my = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.UnitDelay_gq = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Product1_mm = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Add1_c = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.DataTypeConversion1_mf = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.DataTypeConversion2 = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Atan2 = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.acos_k = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.bsin = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.sum_Ds = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.bcos = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.asin_e = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.sum_Qs = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Switch_o[0] = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Switch_o[1] = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.algDD_o1_h = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.algDD_o2_h = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Add_o = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.DataTypeConversion1_j = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Add1_gv = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Input_h = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.qcos = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.dsin = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.sum_beta = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.dcos = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.qsin = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.sum_alpha = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Unary_Minus = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Saturation_gt = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Vd_OpenLoop = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Abs_f = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Saturation_h = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Saturation_i = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Product_l[0] = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Product_l[1] = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.SquareRoot = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Switch_a = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Reciprocal = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Switch_fu[0] = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Switch_fu[1] = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Switch2 = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Product_dh = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Sum_nt = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Product2_l = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Merge_g = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Gain_d = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Switch_ps = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Switch1_n = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Sqrt_b5 = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Gain_du = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.a_plus_2b = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.one_by_sqrt3 = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.algDD_o1_n = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.algDD_o2_e = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.SpeedControl.Gain1 = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.SpeedControl.MinMax = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.SpeedControl.Abs1 = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.SpeedControl.Sum2 = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.SpeedControl.Divide1 = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.SpeedControl.Gain3 = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.SpeedControl.Iq_ref = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.SpeedControl.Switch2 = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.SpeedControl.Gain5 = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.SpeedControl.Iq_ref_l = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.SpeedControl.Divide = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.SpeedControl.Gain4 = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.SpeedControl.Gain2 = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.SpeedControl.RateLimiter = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.SpeedControl.RateLimiter1 = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.SpeedControl.Switch = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.SpeedControl.Constant2 = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.SpeedControl.Switch_i = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.SpeedControl.Product = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.SpeedControl.UnitDelay = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.SpeedControl.Product1 = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.SpeedControl.Add1 = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.SpeedControl.Sum = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.SpeedControl.PProdOut = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.SpeedControl.Ki2 = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.SpeedControl.Integrator = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.SpeedControl.Sum_p = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.SpeedControl.DeadZone = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.SpeedControl.IProdOut = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.SpeedControl.Switch_in = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.SpeedControl.Saturation = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.SpeedControl.Merge = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.SpeedControl.Unwrap = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.SpeedControl.DTC = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.SpeedControl.SpeedGain = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.SpeedControl.Product_e = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.SpeedControl.UnitDelay_e = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.SpeedControl.Product1_f = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.SpeedControl.Add1_p = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.SpeedControl.Gain2_g = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.SpeedControl.Merge1 = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.SpeedControl.DataStoreRead = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.SpeedControl.Switch1 = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.SpeedControl.DiscreteTimeIntegrator1 = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.SpeedControl.Sum_o = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.SpeedControl.Delay_j = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.SpeedControl.Sum1 = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.SpeedControl.Abs = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.SpeedControl.Abs2 = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.SpeedControl.Abs3 = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.SpeedControl.DiscreteTimeIntegrator2 = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.SpeedControl.Product2 = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.SpeedControl.Gain1_j = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.SpeedControl.Product1_g = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.SpeedControl.Switch2_j = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.SpeedControl.DiscreteTimeIntegrator = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.SpeedControl.Switch_k = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.SpeedControl.Merge_p = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.SpeedControl.Numberofpolepairs = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.SpeedControl.Floor = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.SpeedControl.Add = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.SpeedControl.Product_f = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.SpeedControl.Switch2_k = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.SpeedControl.Switch_ke = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.SpeedControl.Switch_ij = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.SpeedControl.atan2_o.DataTypeConversion =
      0.0;
    mcb_pmsm_foc_sensorless_f2837_B.SpeedControl.atan2_o.Switch = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.SpeedControl.atan2_o.algDD = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.SpeedControl.atan2_o.Gain = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.SpeedControl.atan2_o.Switch_k = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.SpeedControl.atan2_o.Bias = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.SpeedControl.atan2_o.DataTypeConversion1 =
      0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.SpeedControl.atan2_o.DataTypeConversion2 =
      0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.SpeedControl.atan2_o.Atan2 = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.IfActionSubsystem1_f.Convert_back = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.IfActionSubsystem_f.Convert_back = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.atan2_f.DataTypeConversion = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.atan2_f.Switch = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.atan2_f.algDD = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.atan2_f.Gain = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.atan2_f.Switch_k = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.atan2_f.Bias = 0.0;
    mcb_pmsm_foc_sensorless_f2837_B.atan2_f.DataTypeConversion1 = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.atan2_f.DataTypeConversion2 = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.atan2_f.Atan2 = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.IfActionSubsystem1_n.Convert_back = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.IfActionSubsystem_i.Convert_back = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.IfActionSubsystem1.Convert_back = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.IfActionSubsystem.Convert_back = 0.0F;
  }

  /* states (dwork) */
  (void) memset((void *)&mcb_pmsm_foc_sensorless_f_DWork, 0,
                sizeof(D_Work_mcb_pmsm_foc_sensorless_));
  mcb_pmsm_foc_sensorless_f_DWork.Delay5_DSTATE[0] = 0.0;
  mcb_pmsm_foc_sensorless_f_DWork.Delay5_DSTATE[1] = 0.0;
  mcb_pmsm_foc_sensorless_f_DWork.Delay5_DSTATE[2] = 0.0;
  mcb_pmsm_foc_sensorless_f_DWork.Delay5_DSTATE[3] = 0.0;
  mcb_pmsm_foc_sensorless_f_DWork.DiscreteTimeIntegrator1_DSTATE = 0.0;
  mcb_pmsm_foc_sensorless_f_DWork.DiscreteTimeIntegrator1_DSTAT_k = 0.0;
  mcb_pmsm_foc_sensorless_f_DWork.DiscreteTransferFcn_states = 0.0;
  mcb_pmsm_foc_sensorless_f_DWork.UnitDelay_DSTATE[0] = 0.0;
  mcb_pmsm_foc_sensorless_f_DWork.UnitDelay_DSTATE[1] = 0.0;
  mcb_pmsm_foc_sensorless_f_DWork.UnitDelay_DSTATE[2] = 0.0;
  mcb_pmsm_foc_sensorless_f_DWork.UnitDelay_DSTATE[3] = 0.0;
  mcb_pmsm_foc_sensorless_f_DWork.Delay_DSTATE_m[0] = 0.0;
  mcb_pmsm_foc_sensorless_f_DWork.Delay_DSTATE_m[1] = 0.0;
  mcb_pmsm_foc_sensorless_f_DWork.UnitDelay_DSTATE_j[0] = 0.0;
  mcb_pmsm_foc_sensorless_f_DWork.UnitDelay_DSTATE_j[1] = 0.0;
  mcb_pmsm_foc_sensorless_f_DWork.UnitDelay_DSTATE_i = 0.0;
  mcb_pmsm_foc_sensorless_f_DWork.Delay_DSTATE_n = 0.0;
  mcb_pmsm_foc_sensorless_f_DWork.Integrator_DSTATE = 0.0;
  mcb_pmsm_foc_sensorless_f_DWork.UnitDelay_DSTATE_l = 0.0;
  mcb_pmsm_foc_sensorless_f_DWork.UnitDelay_DSTATE_f = 0.0;
  mcb_pmsm_foc_sensorless_f_DWork.Delay2_DSTATE_k = 0.0;
  mcb_pmsm_foc_sensorless_f_DWork.Delay3_DSTATE_l = 0.0;
  mcb_pmsm_foc_sensorless_f_DWork.UnitDelay_DSTATE_m = 0.0;
  mcb_pmsm_foc_sensorless_f_DWork.Delay2_DSTATE_p = 0.0;
  mcb_pmsm_foc_sensorless_f_DWork.Delay3_DSTATE_g = 0.0;
  mcb_pmsm_foc_sensorless_f_DWork.UnitDelay_DSTATE_fz = 0.0;
  mcb_pmsm_foc_sensorless_f_DWork.Delay1_DSTATE_k = 0.0;
  mcb_pmsm_foc_sensorless_f_DWork.Delay_DSTATE_l = 0.0;
  mcb_pmsm_foc_sensorless_f_DWork.Delay1_DSTATE_f = 0.0;
  mcb_pmsm_foc_sensorless_f_DWork.Delay_DSTATE_k = 0.0;
  mcb_pmsm_foc_sensorless_f_DWork.Delay2_DSTATE_m = 0.0;
  mcb_pmsm_foc_sensorless_f_DWork.Delay3_DSTATE_p = 0.0;
  mcb_pmsm_foc_sensorless_f_DWork.Delay2_DSTATE_kc = 0.0;
  mcb_pmsm_foc_sensorless_f_DWork.Delay3_DSTATE_gs = 0.0;
  mcb_pmsm_foc_sensorless_f_DWork.Delay1_DSTATE_h = 0.0;
  mcb_pmsm_foc_sensorless_f_DWork.Delay_DSTATE_lq = 0.0;
  mcb_pmsm_foc_sensorless_f_DWork.Delay1_DSTATE_p = 0.0;
  mcb_pmsm_foc_sensorless_f_DWork.Delay_DSTATE_ka = 0.0;
  mcb_pmsm_foc_sensorless_f_DWork.Delay_DSTATE_kar = 0.0;
  mcb_pmsm_foc_sensorless_f_DWork.Delay1_DSTATE_m = 0.0;
  mcb_pmsm_foc_sensorless_f_DWork.Delay_DSTATE_kb = 0.0;
  mcb_pmsm_foc_sensorless_f_DWork.Delay1_DSTATE_e = 0.0;
  mcb_pmsm_foc_sensorless_f_DWork.Udh = 0.0;
  mcb_pmsm_foc_sensorless_f_DWork.theta = 0.0;
  mcb_pmsm_foc_sensorless_f_DWork.Sum_DWORK1 = 0.0;
  mcb_pmsm_foc_sensorless_f_DWork.DiscreteTimeIntegrator1_PREV_U = 0.0;
  mcb_pmsm_foc_sensorless_f_DWork.DiscreteTimeIntegrator1_PREV__l = 0.0;
  mcb_pmsm_foc_sensorless_f_DWork.Divide_DWORK1[0] = 0.0;
  mcb_pmsm_foc_sensorless_f_DWork.Divide_DWORK1[1] = 0.0;
  mcb_pmsm_foc_sensorless_f_DWork.Divide_DWORK1[2] = 0.0;
  mcb_pmsm_foc_sensorless_f_DWork.Divide_DWORK1[3] = 0.0;
  mcb_pmsm_foc_sensorless_f_DWork.Divide_DWORK3[0] = 0.0;
  mcb_pmsm_foc_sensorless_f_DWork.Divide_DWORK3[1] = 0.0;
  mcb_pmsm_foc_sensorless_f_DWork.Divide_DWORK3[2] = 0.0;
  mcb_pmsm_foc_sensorless_f_DWork.Divide_DWORK3[3] = 0.0;
  mcb_pmsm_foc_sensorless_f_DWork.Divide_DWORK4[0] = 0.0;
  mcb_pmsm_foc_sensorless_f_DWork.Divide_DWORK4[1] = 0.0;
  mcb_pmsm_foc_sensorless_f_DWork.Divide_DWORK4[2] = 0.0;
  mcb_pmsm_foc_sensorless_f_DWork.Divide_DWORK4[3] = 0.0;
  mcb_pmsm_foc_sensorless_f_DWork.Divide_DWORK5[0] = 0.0;
  mcb_pmsm_foc_sensorless_f_DWork.Divide_DWORK5[1] = 0.0;
  mcb_pmsm_foc_sensorless_f_DWork.Divide_DWORK5[2] = 0.0;
  mcb_pmsm_foc_sensorless_f_DWork.Divide_DWORK5[3] = 0.0;
  mcb_pmsm_foc_sensorless_f_DWork.UnitDelay_DSTATE_h = 0.0F;
  mcb_pmsm_foc_sensorless_f_DWork.UD_DSTATE = 0.0F;
  mcb_pmsm_foc_sensorless_f_DWork.UnitDelay_DSTATE_a = 0.0F;
  mcb_pmsm_foc_sensorless_f_DWork.Integrator_DSTATE_m = 0.0F;
  mcb_pmsm_foc_sensorless_f_DWork.UnitDelay_DSTATE_p = 0.0F;
  mcb_pmsm_foc_sensorless_f_DWork.Integrator_DSTATE_a = 0.0F;
  mcb_pmsm_foc_sensorless_f_DWork.Delay1_DSTATE_fi = 0.0F;
  mcb_pmsm_foc_sensorless_f_DWork.Delay_DSTATE_e = 0.0F;
  mcb_pmsm_foc_sensorless_f_DWork.RT_Buffer[0] = 0.0F;
  mcb_pmsm_foc_sensorless_f_DWork.RT_Buffer[1] = 0.0F;
  mcb_pmsm_foc_sensorless_f_DWork.RT3_Buffer[0] = 0.0F;
  mcb_pmsm_foc_sensorless_f_DWork.RT3_Buffer[1] = 0.0F;
  mcb_pmsm_foc_sensorless_f_DWork.RT5_Buffer[0] = 0.0F;
  mcb_pmsm_foc_sensorless_f_DWork.RT5_Buffer[1] = 0.0F;
  mcb_pmsm_foc_sensorless_f_DWork.RT2_Buffer[0] = 0.0F;
  mcb_pmsm_foc_sensorless_f_DWork.RT2_Buffer[1] = 0.0F;
  mcb_pmsm_foc_sensorless_f_DWork.RT2_Buffer[2] = 0.0F;
  mcb_pmsm_foc_sensorless_f_DWork.RT2_Buffer[3] = 0.0F;
  mcb_pmsm_foc_sensorless_f_DWork.RT6_Buffer[0] = 0.0F;
  mcb_pmsm_foc_sensorless_f_DWork.RT6_Buffer[1] = 0.0F;
  mcb_pmsm_foc_sensorless_f_DWork.RT7_Buffer[0] = 0.0F;
  mcb_pmsm_foc_sensorless_f_DWork.RT7_Buffer[1] = 0.0F;
  mcb_pmsm_foc_sensorless_f_DWork.Speed_ref = 0.0F;
  mcb_pmsm_foc_sensorless_f_DWork.SpeedControl.Sum2_DWORK1 = 0.0;
  mcb_pmsm_foc_sensorless_f_DWork.SpeedControl.UnitDelay_DSTATE = 0.0F;
  mcb_pmsm_foc_sensorless_f_DWork.SpeedControl.Integrator_DSTATE = 0.0F;
  mcb_pmsm_foc_sensorless_f_DWork.SpeedControl.UnitDelay_DSTATE_h = 0.0F;
  mcb_pmsm_foc_sensorless_f_DWork.SpeedControl.DiscreteTimeIntegrator1_DSTATE =
    0.0F;
  mcb_pmsm_foc_sensorless_f_DWork.SpeedControl.Delay_DSTATE = 0.0F;
  mcb_pmsm_foc_sensorless_f_DWork.SpeedControl.DiscreteTimeIntegrator2_DSTATE =
    0.0F;
  mcb_pmsm_foc_sensorless_f_DWork.SpeedControl.DiscreteTimeIntegrator_DSTATE =
    0.0F;
  mcb_pmsm_foc_sensorless_f_DWork.SpeedControl.PrevY = 0.0F;
  mcb_pmsm_foc_sensorless_f_DWork.SpeedControl.PrevY_d = 0.0F;
  mcb_pmsm_foc_sensorless_f_DWork.SpeedControl.Unwrap_Prev = 0.0F;
  mcb_pmsm_foc_sensorless_f_DWork.SpeedControl.Unwrap_Cumsum = 0.0F;

  {
    uint16_T s426_iter;

    /* Start for DataStoreMemory: '<Root>/Data Store Memory7' */
    mcb_pmsm_foc_sensorless_f_DWork.Udh = 5.0;

    /* Start for DataStoreMemory: '<Root>/Data Store Memory3' */
    mcb_pmsm_foc_sensorless_f_DWork.Speed_ref = 0.1F;

    /* Start for DataStoreMemory: '<Root>/Data Store Memory1' */
    mcb_pmsm_foc_sensorless_f_DWork.IaOffset = 2295U;

    /* Start for DataStoreMemory: '<Root>/Data Store Memory2' */
    mcb_pmsm_foc_sensorless_f_DWork.IbOffset = 2286U;

    /* Start for DataStoreMemory: '<Root>/Data Store Memory4' */
    mcb_pmsm_foc_sensorless_f_DWork.Debug_signals = 5U;

    /* Start for DataStoreMemory: '<Root>/Data Store Memory6' */
    mcb_pmsm_foc_sensorless_f_DWork.EstimatorSelector = 5UL;
    mcb_pmsm_foc_sen_PrevZCSigState.Delay_Reset_ZCE_pv = UNINITIALIZED_ZCSIG;
    mcb_pmsm_foc_sen_PrevZCSigState.Delay1_Reset_ZCE_kr = UNINITIALIZED_ZCSIG;
    mcb_pmsm_foc_sen_PrevZCSigState.Delay_Reset_ZCE_l = UNINITIALIZED_ZCSIG;
    mcb_pmsm_foc_sen_PrevZCSigState.Delay1_Reset_ZCE_n = UNINITIALIZED_ZCSIG;
    mcb_pmsm_foc_sen_PrevZCSigState.Delay_Reset_ZCE_hd = UNINITIALIZED_ZCSIG;
    mcb_pmsm_foc_sen_PrevZCSigState.Delay1_Reset_ZCE_p = UNINITIALIZED_ZCSIG;
    mcb_pmsm_foc_sen_PrevZCSigState.Delay_Reset_ZCE_k = UNINITIALIZED_ZCSIG;
    mcb_pmsm_foc_sen_PrevZCSigState.Delay1_Reset_ZCE_kq = UNINITIALIZED_ZCSIG;
    mcb_pmsm_foc_sen_PrevZCSigState.Delay_Reset_ZCE_e = UNINITIALIZED_ZCSIG;
    mcb_pmsm_foc_sen_PrevZCSigState.Delay2_Reset_ZCE_h = UNINITIALIZED_ZCSIG;
    mcb_pmsm_foc_sen_PrevZCSigState.Delay3_Reset_ZCE_e = UNINITIALIZED_ZCSIG;
    mcb_pmsm_foc_sen_PrevZCSigState.Delay2_Reset_ZCE_b = UNINITIALIZED_ZCSIG;
    mcb_pmsm_foc_sen_PrevZCSigState.Delay3_Reset_ZCE_cv = UNINITIALIZED_ZCSIG;
    mcb_pmsm_foc_sen_PrevZCSigState.Delay1_Reset_ZCE_h = UNINITIALIZED_ZCSIG;
    mcb_pmsm_foc_sen_PrevZCSigState.Delay_Reset_ZCE_a = UNINITIALIZED_ZCSIG;
    mcb_pmsm_foc_sen_PrevZCSigState.Delay1_Reset_ZCE_k = UNINITIALIZED_ZCSIG;
    mcb_pmsm_foc_sen_PrevZCSigState.Delay_Reset_ZCE_p = UNINITIALIZED_ZCSIG;
    mcb_pmsm_foc_sen_PrevZCSigState.Delay2_Reset_ZCE = UNINITIALIZED_ZCSIG;
    mcb_pmsm_foc_sen_PrevZCSigState.Delay3_Reset_ZCE = UNINITIALIZED_ZCSIG;
    mcb_pmsm_foc_sen_PrevZCSigState.Delay2_Reset_ZCE_j = UNINITIALIZED_ZCSIG;
    mcb_pmsm_foc_sen_PrevZCSigState.Delay3_Reset_ZCE_c = UNINITIALIZED_ZCSIG;
    mcb_pmsm_foc_sen_PrevZCSigState.Delay1_Reset_ZCE = UNINITIALIZED_ZCSIG;
    mcb_pmsm_foc_sen_PrevZCSigState.Delay_Reset_ZCE = UNINITIALIZED_ZCSIG;
    mcb_pmsm_foc_sen_PrevZCSigState.Delay_Reset_ZCE_h = UNINITIALIZED_ZCSIG;
    mcb_pmsm_foc_sen_PrevZCSigState.Dir_Sense_d.Dir_Sense_Trig_ZCE = POS_ZCSIG;
    mcb_pmsm_foc_sen_PrevZCSigState.Dir_Sense.Dir_Sense_Trig_ZCE = POS_ZCSIG;

    /* SystemInitialize for Enabled SubSystem: '<Root>/Subsystem' */
    /* SystemInitialize for MATLAB Function: '<S8>/MATLAB Function' */
    mcb_pmsm_foc_sensorless_f_DWork.theta = 0.0;

    /* End of SystemInitialize for SubSystem: '<Root>/Subsystem' */

    /* SystemInitialize for Enabled SubSystem: '<Root>/方波信号' */
    /* InitializeConditions for DiscretePulseGenerator: '<S9>/Discrete Pulse Generator' */
    mcb_pmsm_foc_sensorless_f_DWork.clockTickCounter = -10L;

    /* End of SystemInitialize for SubSystem: '<Root>/方波信号' */

    /* SystemInitialize for S-Function (HardwareInterrupt_sfun): '<S418>/Hardware Interrupt' incorporates:
     *  SubSystem: '<Root>/Current Control'
     */
    /* System initialize for function-call system: '<Root>/Current Control' */

    /* Asynchronous task reads absolute time. Data (absolute time)
       transfers from low priority task (base rate) to high priority
       task (asynchronous rate). Double buffers are used to ensure
       data integrity.
       -- rtmL2HLastBufWr is the buffer index that is written last.
     */
    mcb_pmsm_foc_sensorless_f283_M->Timing.clockTick4 =
      mcb_pmsm_foc_sensorless_f283_M->
      Timing.rtmL2HDbBufClockTick
      [mcb_pmsm_foc_sensorless_f283_M->Timing.rtmL2HLastBufWr];
    mcb_pmsm_foc_sensorless_f283_M->Timing.clockTickH4 =
      mcb_pmsm_foc_sensorless_f283_M->
      Timing.rtmL2HDbBufClockTickH
      [mcb_pmsm_foc_sensorless_f283_M->Timing.rtmL2HLastBufWr];

    /* Start for SwitchCase: '<S175>/Switch Case' */
    mcb_pmsm_foc_sensorless_f_DWork.SwitchCase_ActiveSubsystem = -1;

    /* Start for S-Function (c2802xadc): '<S173>/ADC_C_IN2' */
    if (MW_adcCInitFlag == 0U) {
      InitAdcC();
      MW_adcCInitFlag = 1U;
    }

    config_ADCC_SOC0 ();

    /* Start for S-Function (c2802xadc): '<S173>/ADC_B_IN2' */
    if (MW_adcBInitFlag == 0U) {
      InitAdcB();
      MW_adcBInitFlag = 1U;
    }

    config_ADCB_SOC0 ();

    /* Start for S-Function (c280xgpio_do): '<S400>/DRV830x Enable' */
    EALLOW;
    GpioCtrlRegs.GPDMUX2.all &= 0xFCFFFFFFU;
    GpioCtrlRegs.GPDDIR.all |= 0x10000000U;
    EDIS;

    /* Start for S-Function (c2802xpwm): '<S400>/ePWM1' */

    /*** Initialize ePWM1 modules ***/
    {
      /*  // Time Base Control Register
         EPwm1Regs.TBCTL.bit.CTRMODE              = 2U;          // Counter Mode
         EPwm1Regs.TBCTL.bit.SYNCOSEL             = 1U;          // Sync Output Select

         EPwm1Regs.TBCTL.bit.PRDLD                = 0U;          // Shadow select

         EPwm1Regs.TBCTL2.bit.PRDLDSYNC           = 0U;          // Shadow select

         EPwm1Regs.TBCTL.bit.PHSEN                = 0U;          // Phase Load Enable
         EPwm1Regs.TBCTL.bit.PHSDIR               = 0U;          // Phase Direction Bit
         EPwm1Regs.TBCTL.bit.HSPCLKDIV            = 0U;          // High Speed TBCLK Pre-scaler
         EPwm1Regs.TBCTL.bit.CLKDIV               = 0U;          // Time Base Clock Pre-scaler
       */
      EPwm1Regs.TBCTL.all = (EPwm1Regs.TBCTL.all & ~0x3FFFU) | 0x12U;
      EPwm1Regs.TBCTL2.all = (EPwm1Regs.TBCTL2.all & ~0xC000U) | 0x0U;

      /*-- Setup Time-Base (TB) Submodule --*/
      EPwm1Regs.TBPRD = 5000U;         // Time Base Period Register

      /* // Time-Base Phase Register
         EPwm1Regs.TBPHS.bit.TBPHS               = 0U;          // Phase offset register
       */
      EPwm1Regs.TBPHS.all = (EPwm1Regs.TBPHS.all & ~0xFFFF0000U) | 0x0U;

      // Time Base Counter Register
      EPwm1Regs.TBCTR = 0x0000U;       /* Clear counter*/

      /*-- Setup Counter_Compare (CC) Submodule --*/
      /*	// Counter Compare Control Register

         EPwm1Regs.CMPCTL.bit.LOADASYNC           = 0U;          // Active Compare A Load SYNC Option
         EPwm1Regs.CMPCTL.bit.LOADBSYNC           = 0U;          // Active Compare B Load SYNC Option
         EPwm1Regs.CMPCTL.bit.LOADAMODE           = 0U;          // Active Compare A Load
         EPwm1Regs.CMPCTL.bit.LOADBMODE           = 0U;          // Active Compare B Load
         EPwm1Regs.CMPCTL.bit.SHDWAMODE           = 0U;          // Compare A Register Block Operating Mode
         EPwm1Regs.CMPCTL.bit.SHDWBMODE           = 0U;          // Compare B Register Block Operating Mode
       */
      EPwm1Regs.CMPCTL.all = (EPwm1Regs.CMPCTL.all & ~0x3C5FU) | 0x0U;

      /* EPwm1Regs.CMPCTL2.bit.SHDWCMODE           = 0U;          // Compare C Register Block Operating Mode
         EPwm1Regs.CMPCTL2.bit.SHDWDMODE           = 0U;          // Compare D Register Block Operating Mode
         EPwm1Regs.CMPCTL2.bit.LOADCSYNC           = 0U;          // Active Compare C Load SYNC Option
         EPwm1Regs.CMPCTL2.bit.LOADDSYNC           = 0U;          // Active Compare D Load SYNC Option
         EPwm1Regs.CMPCTL2.bit.LOADCMODE           = 0U;          // Active Compare C Load
         EPwm1Regs.CMPCTL2.bit.LOADDMODE           = 0U;          // Active Compare D Load
       */
      EPwm1Regs.CMPCTL2.all = (EPwm1Regs.CMPCTL2.all & ~0x3C5FU) | 0x0U;
      EPwm1Regs.CMPA.bit.CMPA = 2501U; // Counter Compare A Register
      EPwm1Regs.CMPB.bit.CMPB = 2501U; // Counter Compare B Register
      EPwm1Regs.CMPC = 32000U;         // Counter Compare C Register
      EPwm1Regs.CMPD = 32000U;         // Counter Compare D Register

      /*-- Setup Action-Qualifier (AQ) Submodule --*/
      EPwm1Regs.AQCTLA.all = 144U;
                               // Action Qualifier Control Register For Output A
      EPwm1Regs.AQCTLB.all = 2310U;
                               // Action Qualifier Control Register For Output B

      /*	// Action Qualifier Software Force Register
         EPwm1Regs.AQSFRC.bit.RLDCSF              = 0U;          // Reload from Shadow Options
       */
      EPwm1Regs.AQSFRC.all = (EPwm1Regs.AQSFRC.all & ~0xC0U) | 0x0U;

      /*	// Action Qualifier Continuous S/W Force Register
         EPwm1Regs.AQCSFRC.bit.CSFA               = 0U;          // Continuous Software Force on output A
         EPwm1Regs.AQCSFRC.bit.CSFB               = 0U;          // Continuous Software Force on output B
       */
      EPwm1Regs.AQCSFRC.all = (EPwm1Regs.AQCSFRC.all & ~0xFU) | 0x0U;

      /*-- Setup Dead-Band Generator (DB) Submodule --*/
      /*	// Dead-Band Generator Control Register
         EPwm1Regs.DBCTL.bit.OUT_MODE             = 3U;          // Dead Band Output Mode Control
         EPwm1Regs.DBCTL.bit.IN_MODE              = 0U;          // Dead Band Input Select Mode Control
         EPwm1Regs.DBCTL.bit.POLSEL               = 2U;          // Polarity Select Control
         EPwm1Regs.DBCTL.bit.HALFCYCLE            = 0U;          // Half Cycle Clocking Enable
         EPwm1Regs.DBCTL.bit.SHDWDBREDMODE        = 0U;          // DBRED shadow mode
         EPwm1Regs.DBCTL.bit.SHDWDBFEDMODE        = 0U;          // DBFED shadow mode
         EPwm1Regs.DBCTL.bit.LOADREDMODE          = 4U;        // DBRED load
         EPwm1Regs.DBCTL.bit.LOADFEDMODE          = 4U;        // DBFED load
       */
      EPwm1Regs.DBCTL.all = (EPwm1Regs.DBCTL.all & ~0x8FFFU) | 0xBU;
      EPwm1Regs.DBRED.bit.DBRED = (uint16_T)(15.0);
                         // Dead-Band Generator Rising Edge Delay Count Register
      EPwm1Regs.DBFED.bit.DBFED = (uint16_T)(15.0);
                        // Dead-Band Generator Falling Edge Delay Count Register

      /*-- Setup Event-Trigger (ET) Submodule --*/
      /*	// Event Trigger Selection and Pre-Scale Register
         EPwm1Regs.ETSEL.bit.SOCAEN               = 1U;          // Start of Conversion A Enable
         EPwm1Regs.ETSEL.bit.SOCASELCMP           = 0U;
         EPwm1Regs.ETSEL.bit.SOCASEL              = 2U;          // Start of Conversion A Select
         EPwm1Regs.ETPS.bit.SOCPSSEL              = 1U;          // EPWM1SOC Period Select
         EPwm1Regs.ETSOCPS.bit.SOCAPRD2           = 1U;
         EPwm1Regs.ETSEL.bit.SOCBEN               = 0U;          // Start of Conversion B Enable
         EPwm1Regs.ETSEL.bit.SOCBSELCMP           = 0U;
         EPwm1Regs.ETSEL.bit.SOCBSEL              = 1U;          // Start of Conversion A Select
         EPwm1Regs.ETPS.bit.SOCPSSEL              = 1;          // EPWM1SOCB Period Select
         EPwm1Regs.ETSOCPS.bit.SOCBPRD2           = 1U;
         EPwm1Regs.ETSEL.bit.INTEN                = 0U;          // EPWM1INTn Enable
         EPwm1Regs.ETSEL.bit.INTSELCMP            = 0U;
         EPwm1Regs.ETSEL.bit.INTSEL               = 1U;          // Start of Conversion A Select
         EPwm1Regs.ETPS.bit.INTPSSEL              = 1U;          // EPWM1INTn Period Select
         EPwm1Regs.ETINTPS.bit.INTPRD2            = 1U;
       */
      EPwm1Regs.ETSEL.all = (EPwm1Regs.ETSEL.all & ~0xFF7FU) | 0x1A01U;
      EPwm1Regs.ETPS.all = (EPwm1Regs.ETPS.all & ~0x30U) | 0x30U;
      EPwm1Regs.ETSOCPS.all = (EPwm1Regs.ETSOCPS.all & ~0xF0FU) | 0x101U;
      EPwm1Regs.ETINTPS.all = (EPwm1Regs.ETINTPS.all & ~0xFU) | 0x1U;

      /*-- Setup PWM-Chopper (PC) Submodule --*/
      /*	// PWM Chopper Control Register
         EPwm1Regs.PCCTL.bit.CHPEN                = 0U;          // PWM chopping enable
         EPwm1Regs.PCCTL.bit.CHPFREQ              = 0U;          // Chopping clock frequency
         EPwm1Regs.PCCTL.bit.OSHTWTH              = 0U;          // One-shot pulse width
         EPwm1Regs.PCCTL.bit.CHPDUTY              = 0U;          // Chopping clock Duty cycle
       */
      EPwm1Regs.PCCTL.all = (EPwm1Regs.PCCTL.all & ~0x7FFU) | 0x0U;

      /*-- Set up Trip-Zone (TZ) Submodule --*/
      EALLOW;
      EPwm1Regs.TZSEL.all = 0U;        // Trip Zone Select Register

      /*	// Trip Zone Control Register
         EPwm1Regs.TZCTL.bit.TZA                  = 3U;          // TZ1 to TZ6 Trip Action On EPWM1A
         EPwm1Regs.TZCTL.bit.TZB                  = 3U;          // TZ1 to TZ6 Trip Action On EPWM1B
         EPwm1Regs.TZCTL.bit.DCAEVT1              = 3U;          // EPWM1A action on DCAEVT1
         EPwm1Regs.TZCTL.bit.DCAEVT2              = 3U;          // EPWM1A action on DCAEVT2
         EPwm1Regs.TZCTL.bit.DCBEVT1              = 3U;          // EPWM1B action on DCBEVT1
         EPwm1Regs.TZCTL.bit.DCBEVT2              = 3U;          // EPWM1B action on DCBEVT2
       */
      EPwm1Regs.TZCTL.all = (EPwm1Regs.TZCTL.all & ~0xFFFU) | 0xFFFU;

      /*	// Trip Zone Enable Interrupt Register
         EPwm1Regs.TZEINT.bit.OST                 = 0U;          // Trip Zones One Shot Int Enable
         EPwm1Regs.TZEINT.bit.CBC                 = 0U;          // Trip Zones Cycle By Cycle Int Enable
         EPwm1Regs.TZEINT.bit.DCAEVT1             = 0U;          // Digital Compare A Event 1 Int Enable
         EPwm1Regs.TZEINT.bit.DCAEVT2             = 0U;          // Digital Compare A Event 2 Int Enable
         EPwm1Regs.TZEINT.bit.DCBEVT1             = 0U;          // Digital Compare B Event 1 Int Enable
         EPwm1Regs.TZEINT.bit.DCBEVT2             = 0U;          // Digital Compare B Event 2 Int Enable
       */
      EPwm1Regs.TZEINT.all = (EPwm1Regs.TZEINT.all & ~0x7EU) | 0x0U;

      /*	// Digital Compare A Control Register
         EPwm1Regs.DCACTL.bit.EVT1SYNCE           = 0U;          // DCAEVT1 SYNC Enable
         EPwm1Regs.DCACTL.bit.EVT1SOCE            = 1U;          // DCAEVT1 SOC Enable
         EPwm1Regs.DCACTL.bit.EVT1FRCSYNCSEL      = 0U;          // DCAEVT1 Force Sync Signal
         EPwm1Regs.DCACTL.bit.EVT1SRCSEL          = 0U;          // DCAEVT1 Source Signal
         EPwm1Regs.DCACTL.bit.EVT2FRCSYNCSEL      = 0U;          // DCAEVT2 Force Sync Signal
         EPwm1Regs.DCACTL.bit.EVT2SRCSEL          = 0U;          // DCAEVT2 Source Signal
       */
      EPwm1Regs.DCACTL.all = (EPwm1Regs.DCACTL.all & ~0x30FU) | 0x4U;

      /*	// Digital Compare B Control Register
         EPwm1Regs.DCBCTL.bit.EVT1SYNCE           = 0U;          // DCBEVT1 SYNC Enable
         EPwm1Regs.DCBCTL.bit.EVT1SOCE            = 0U;          // DCBEVT1 SOC Enable
         EPwm1Regs.DCBCTL.bit.EVT1FRCSYNCSEL      = 0U;          // DCBEVT1 Force Sync Signal
         EPwm1Regs.DCBCTL.bit.EVT1SRCSEL          = 0U;          // DCBEVT1 Source Signal
         EPwm1Regs.DCBCTL.bit.EVT2FRCSYNCSEL      = 0U;          // DCBEVT2 Force Sync Signal
         EPwm1Regs.DCBCTL.bit.EVT2SRCSEL          = 0U;          // DCBEVT2 Source Signal
       */
      EPwm1Regs.DCBCTL.all = (EPwm1Regs.DCBCTL.all & ~0x30FU) | 0x0U;

      /*	// Digital Compare Trip Select Register
         EPwm1Regs.DCTRIPSEL.bit.DCAHCOMPSEL      = 0U;          // Digital Compare A High COMP Input Select

         EPwm1Regs.DCTRIPSEL.bit.DCALCOMPSEL      = 1U;          // Digital Compare A Low COMP Input Select
         EPwm1Regs.DCTRIPSEL.bit.DCBHCOMPSEL      = 0U;          // Digital Compare B High COMP Input Select
         EPwm1Regs.DCTRIPSEL.bit.DCBLCOMPSEL      = 1U;          // Digital Compare B Low COMP Input Select
       */
      EPwm1Regs.DCTRIPSEL.all = (EPwm1Regs.DCTRIPSEL.all & ~ 0xFFFFU) | 0x1010U;

      /*	// Trip Zone Digital Comparator Select Register
         EPwm1Regs.TZDCSEL.bit.DCAEVT1            = 0U;          // Digital Compare Output A Event 1
         EPwm1Regs.TZDCSEL.bit.DCAEVT2            = 0U;          // Digital Compare Output A Event 2
         EPwm1Regs.TZDCSEL.bit.DCBEVT1            = 0U;          // Digital Compare Output B Event 1
         EPwm1Regs.TZDCSEL.bit.DCBEVT2            = 0U;          // Digital Compare Output B Event 2
       */
      EPwm1Regs.TZDCSEL.all = (EPwm1Regs.TZDCSEL.all & ~0xFFFU) | 0x0U;

      /*	// Digital Compare Filter Control Register
         EPwm1Regs.DCFCTL.bit.BLANKE              = 0U;          // Blanking Enable/Disable
         EPwm1Regs.DCFCTL.bit.PULSESEL            = 1U;          // Pulse Select for Blanking & Capture Alignment
         EPwm1Regs.DCFCTL.bit.BLANKINV            = 0U;          // Blanking Window Inversion
         EPwm1Regs.DCFCTL.bit.SRCSEL              = 0U;          // Filter Block Signal Source Select
       */
      EPwm1Regs.DCFCTL.all = (EPwm1Regs.DCFCTL.all & ~0x3FU) | 0x10U;
      EPwm1Regs.DCFOFFSET = 0U;        // Digital Compare Filter Offset Register
      EPwm1Regs.DCFWINDOW = 0U;        // Digital Compare Filter Window Register

      /*	// Digital Compare Capture Control Register
         EPwm1Regs.DCCAPCTL.bit.CAPE              = 0U;          // Counter Capture Enable
       */
      EPwm1Regs.DCCAPCTL.all = (EPwm1Regs.DCCAPCTL.all & ~0x1U) | 0x0U;

      /*	// HRPWM Configuration Register
         EPwm1Regs.HRCNFG.bit.SWAPAB              = 0U;          // Swap EPWMA and EPWMB Outputs Bit
         EPwm1Regs.HRCNFG.bit.SELOUTB             = 0U;          // EPWMB Output Selection Bit
       */
      EPwm1Regs.HRCNFG.all = (EPwm1Regs.HRCNFG.all & ~0xA0U) | 0x0U;

      /* Update the Link Registers with the link value for all the Compare values and TBPRD */
      /* No error is thrown if the ePWM register exists in the model or not */
      EPwm1Regs.EPWMXLINK.bit.TBPRDLINK = 0U;
      EPwm1Regs.EPWMXLINK.bit.CMPALINK = 0U;
      EPwm1Regs.EPWMXLINK.bit.CMPBLINK = 0U;
      EPwm1Regs.EPWMXLINK.bit.CMPCLINK = 0U;
      EPwm1Regs.EPWMXLINK.bit.CMPDLINK = 0U;

      /* SYNCPER - Peripheral synchronization output event
         EPwm1Regs.HRPCTL.bit.PWMSYNCSEL            = 0U;          // EPWMSYNCPER selection
         EPwm1Regs.HRPCTL.bit.PWMSYNCSELX           = 0U;          //  EPWMSYNCPER selection
       */
      EPwm1Regs.HRPCTL.all = (EPwm1Regs.HRPCTL.all & ~0x72U) | 0x0U;
      EDIS;
    }

    /* Start for S-Function (c2802xpwm): '<S400>/ePWM2' */

    /*** Initialize ePWM2 modules ***/
    {
      /*  // Time Base Control Register
         EPwm2Regs.TBCTL.bit.CTRMODE              = 2U;          // Counter Mode
         EPwm2Regs.TBCTL.bit.SYNCOSEL             = 0U;          // Sync Output Select

         EPwm2Regs.TBCTL.bit.PRDLD                = 0U;          // Shadow select

         EPwm2Regs.TBCTL2.bit.PRDLDSYNC           = 0U;          // Shadow select

         EPwm2Regs.TBCTL.bit.PHSEN                = 1U;          // Phase Load Enable
         EPwm2Regs.TBCTL.bit.PHSDIR               = 1U;          // Phase Direction Bit
         EPwm2Regs.TBCTL.bit.HSPCLKDIV            = 0U;          // High Speed TBCLK Pre-scaler
         EPwm2Regs.TBCTL.bit.CLKDIV               = 0U;          // Time Base Clock Pre-scaler
       */
      EPwm2Regs.TBCTL.all = (EPwm2Regs.TBCTL.all & ~0x3FFFU) | 0x2006U;
      EPwm2Regs.TBCTL2.all = (EPwm2Regs.TBCTL2.all & ~0xC000U) | 0x0U;

      /*-- Setup Time-Base (TB) Submodule --*/
      EPwm2Regs.TBPRD = 5000U;         // Time Base Period Register

      /* // Time-Base Phase Register
         EPwm2Regs.TBPHS.bit.TBPHS               = 0U;          // Phase offset register
       */
      EPwm2Regs.TBPHS.all = (EPwm2Regs.TBPHS.all & ~0xFFFF0000U) | 0x0U;

      // Time Base Counter Register
      EPwm2Regs.TBCTR = 0x0000U;       /* Clear counter*/

      /*-- Setup Counter_Compare (CC) Submodule --*/
      /*	// Counter Compare Control Register

         EPwm2Regs.CMPCTL.bit.LOADASYNC           = 0U;          // Active Compare A Load SYNC Option
         EPwm2Regs.CMPCTL.bit.LOADBSYNC           = 0U;          // Active Compare B Load SYNC Option
         EPwm2Regs.CMPCTL.bit.LOADAMODE           = 0U;          // Active Compare A Load
         EPwm2Regs.CMPCTL.bit.LOADBMODE           = 0U;          // Active Compare B Load
         EPwm2Regs.CMPCTL.bit.SHDWAMODE           = 0U;          // Compare A Register Block Operating Mode
         EPwm2Regs.CMPCTL.bit.SHDWBMODE           = 0U;          // Compare B Register Block Operating Mode
       */
      EPwm2Regs.CMPCTL.all = (EPwm2Regs.CMPCTL.all & ~0x3C5FU) | 0x0U;

      /* EPwm2Regs.CMPCTL2.bit.SHDWCMODE           = 0U;          // Compare C Register Block Operating Mode
         EPwm2Regs.CMPCTL2.bit.SHDWDMODE           = 0U;          // Compare D Register Block Operating Mode
         EPwm2Regs.CMPCTL2.bit.LOADCSYNC           = 0U;          // Active Compare C Load SYNC Option
         EPwm2Regs.CMPCTL2.bit.LOADDSYNC           = 0U;          // Active Compare D Load SYNC Option
         EPwm2Regs.CMPCTL2.bit.LOADCMODE           = 0U;          // Active Compare C Load
         EPwm2Regs.CMPCTL2.bit.LOADDMODE           = 0U;          // Active Compare D Load
       */
      EPwm2Regs.CMPCTL2.all = (EPwm2Regs.CMPCTL2.all & ~0x3C5FU) | 0x0U;
      EPwm2Regs.CMPA.bit.CMPA = 2501U; // Counter Compare A Register
      EPwm2Regs.CMPB.bit.CMPB = 2501U; // Counter Compare B Register
      EPwm2Regs.CMPC = 32000U;         // Counter Compare C Register
      EPwm2Regs.CMPD = 32000U;         // Counter Compare D Register

      /*-- Setup Action-Qualifier (AQ) Submodule --*/
      EPwm2Regs.AQCTLA.all = 144U;
                               // Action Qualifier Control Register For Output A
      EPwm2Regs.AQCTLB.all = 2310U;
                               // Action Qualifier Control Register For Output B

      /*	// Action Qualifier Software Force Register
         EPwm2Regs.AQSFRC.bit.RLDCSF              = 0U;          // Reload from Shadow Options
       */
      EPwm2Regs.AQSFRC.all = (EPwm2Regs.AQSFRC.all & ~0xC0U) | 0x0U;

      /*	// Action Qualifier Continuous S/W Force Register
         EPwm2Regs.AQCSFRC.bit.CSFA               = 0U;          // Continuous Software Force on output A
         EPwm2Regs.AQCSFRC.bit.CSFB               = 0U;          // Continuous Software Force on output B
       */
      EPwm2Regs.AQCSFRC.all = (EPwm2Regs.AQCSFRC.all & ~0xFU) | 0x0U;

      /*-- Setup Dead-Band Generator (DB) Submodule --*/
      /*	// Dead-Band Generator Control Register
         EPwm2Regs.DBCTL.bit.OUT_MODE             = 3U;          // Dead Band Output Mode Control
         EPwm2Regs.DBCTL.bit.IN_MODE              = 0U;          // Dead Band Input Select Mode Control
         EPwm2Regs.DBCTL.bit.POLSEL               = 2U;          // Polarity Select Control
         EPwm2Regs.DBCTL.bit.HALFCYCLE            = 0U;          // Half Cycle Clocking Enable
         EPwm2Regs.DBCTL.bit.SHDWDBREDMODE        = 0U;          // DBRED shadow mode
         EPwm2Regs.DBCTL.bit.SHDWDBFEDMODE        = 0U;          // DBFED shadow mode
         EPwm2Regs.DBCTL.bit.LOADREDMODE          = 4U;        // DBRED load
         EPwm2Regs.DBCTL.bit.LOADFEDMODE          = 4U;        // DBFED load
       */
      EPwm2Regs.DBCTL.all = (EPwm2Regs.DBCTL.all & ~0x8FFFU) | 0xBU;
      EPwm2Regs.DBRED.bit.DBRED = (uint16_T)(15.0);
                         // Dead-Band Generator Rising Edge Delay Count Register
      EPwm2Regs.DBFED.bit.DBFED = (uint16_T)(15.0);
                        // Dead-Band Generator Falling Edge Delay Count Register

      /*-- Setup Event-Trigger (ET) Submodule --*/
      /*	// Event Trigger Selection and Pre-Scale Register
         EPwm2Regs.ETSEL.bit.SOCAEN               = 0U;          // Start of Conversion A Enable
         EPwm2Regs.ETSEL.bit.SOCASELCMP           = 0U;
         EPwm2Regs.ETSEL.bit.SOCASEL              = 2U;          // Start of Conversion A Select
         EPwm2Regs.ETPS.bit.SOCPSSEL              = 1U;          // EPWM2SOC Period Select
         EPwm2Regs.ETSOCPS.bit.SOCAPRD2           = 1U;
         EPwm2Regs.ETSEL.bit.SOCBEN               = 0U;          // Start of Conversion B Enable
         EPwm2Regs.ETSEL.bit.SOCBSELCMP           = 0U;
         EPwm2Regs.ETSEL.bit.SOCBSEL              = 1U;          // Start of Conversion A Select
         EPwm2Regs.ETPS.bit.SOCPSSEL              = 1;          // EPWM2SOCB Period Select
         EPwm2Regs.ETSOCPS.bit.SOCBPRD2           = 1U;
         EPwm2Regs.ETSEL.bit.INTEN                = 0U;          // EPWM2INTn Enable
         EPwm2Regs.ETSEL.bit.INTSELCMP            = 0U;
         EPwm2Regs.ETSEL.bit.INTSEL               = 1U;          // Start of Conversion A Select
         EPwm2Regs.ETPS.bit.INTPSSEL              = 1U;          // EPWM2INTn Period Select
         EPwm2Regs.ETINTPS.bit.INTPRD2            = 1U;
       */
      EPwm2Regs.ETSEL.all = (EPwm2Regs.ETSEL.all & ~0xFF7FU) | 0x1201U;
      EPwm2Regs.ETPS.all = (EPwm2Regs.ETPS.all & ~0x30U) | 0x30U;
      EPwm2Regs.ETSOCPS.all = (EPwm2Regs.ETSOCPS.all & ~0xF0FU) | 0x101U;
      EPwm2Regs.ETINTPS.all = (EPwm2Regs.ETINTPS.all & ~0xFU) | 0x1U;

      /*-- Setup PWM-Chopper (PC) Submodule --*/
      /*	// PWM Chopper Control Register
         EPwm2Regs.PCCTL.bit.CHPEN                = 0U;          // PWM chopping enable
         EPwm2Regs.PCCTL.bit.CHPFREQ              = 0U;          // Chopping clock frequency
         EPwm2Regs.PCCTL.bit.OSHTWTH              = 0U;          // One-shot pulse width
         EPwm2Regs.PCCTL.bit.CHPDUTY              = 0U;          // Chopping clock Duty cycle
       */
      EPwm2Regs.PCCTL.all = (EPwm2Regs.PCCTL.all & ~0x7FFU) | 0x0U;

      /*-- Set up Trip-Zone (TZ) Submodule --*/
      EALLOW;
      EPwm2Regs.TZSEL.all = 0U;        // Trip Zone Select Register

      /*	// Trip Zone Control Register
         EPwm2Regs.TZCTL.bit.TZA                  = 3U;          // TZ1 to TZ6 Trip Action On EPWM2A
         EPwm2Regs.TZCTL.bit.TZB                  = 3U;          // TZ1 to TZ6 Trip Action On EPWM2B
         EPwm2Regs.TZCTL.bit.DCAEVT1              = 3U;          // EPWM2A action on DCAEVT1
         EPwm2Regs.TZCTL.bit.DCAEVT2              = 3U;          // EPWM2A action on DCAEVT2
         EPwm2Regs.TZCTL.bit.DCBEVT1              = 3U;          // EPWM2B action on DCBEVT1
         EPwm2Regs.TZCTL.bit.DCBEVT2              = 3U;          // EPWM2B action on DCBEVT2
       */
      EPwm2Regs.TZCTL.all = (EPwm2Regs.TZCTL.all & ~0xFFFU) | 0xFFFU;

      /*	// Trip Zone Enable Interrupt Register
         EPwm2Regs.TZEINT.bit.OST                 = 0U;          // Trip Zones One Shot Int Enable
         EPwm2Regs.TZEINT.bit.CBC                 = 0U;          // Trip Zones Cycle By Cycle Int Enable
         EPwm2Regs.TZEINT.bit.DCAEVT1             = 0U;          // Digital Compare A Event 1 Int Enable
         EPwm2Regs.TZEINT.bit.DCAEVT2             = 0U;          // Digital Compare A Event 2 Int Enable
         EPwm2Regs.TZEINT.bit.DCBEVT1             = 0U;          // Digital Compare B Event 1 Int Enable
         EPwm2Regs.TZEINT.bit.DCBEVT2             = 0U;          // Digital Compare B Event 2 Int Enable
       */
      EPwm2Regs.TZEINT.all = (EPwm2Regs.TZEINT.all & ~0x7EU) | 0x0U;

      /*	// Digital Compare A Control Register
         EPwm2Regs.DCACTL.bit.EVT1SYNCE           = 0U;          // DCAEVT1 SYNC Enable
         EPwm2Regs.DCACTL.bit.EVT1SOCE            = 1U;          // DCAEVT1 SOC Enable
         EPwm2Regs.DCACTL.bit.EVT1FRCSYNCSEL      = 0U;          // DCAEVT1 Force Sync Signal
         EPwm2Regs.DCACTL.bit.EVT1SRCSEL          = 0U;          // DCAEVT1 Source Signal
         EPwm2Regs.DCACTL.bit.EVT2FRCSYNCSEL      = 0U;          // DCAEVT2 Force Sync Signal
         EPwm2Regs.DCACTL.bit.EVT2SRCSEL          = 0U;          // DCAEVT2 Source Signal
       */
      EPwm2Regs.DCACTL.all = (EPwm2Regs.DCACTL.all & ~0x30FU) | 0x4U;

      /*	// Digital Compare B Control Register
         EPwm2Regs.DCBCTL.bit.EVT1SYNCE           = 0U;          // DCBEVT1 SYNC Enable
         EPwm2Regs.DCBCTL.bit.EVT1SOCE            = 0U;          // DCBEVT1 SOC Enable
         EPwm2Regs.DCBCTL.bit.EVT1FRCSYNCSEL      = 0U;          // DCBEVT1 Force Sync Signal
         EPwm2Regs.DCBCTL.bit.EVT1SRCSEL          = 0U;          // DCBEVT1 Source Signal
         EPwm2Regs.DCBCTL.bit.EVT2FRCSYNCSEL      = 0U;          // DCBEVT2 Force Sync Signal
         EPwm2Regs.DCBCTL.bit.EVT2SRCSEL          = 0U;          // DCBEVT2 Source Signal
       */
      EPwm2Regs.DCBCTL.all = (EPwm2Regs.DCBCTL.all & ~0x30FU) | 0x0U;

      /*	// Digital Compare Trip Select Register
         EPwm2Regs.DCTRIPSEL.bit.DCAHCOMPSEL      = 0U;          // Digital Compare A High COMP Input Select

         EPwm2Regs.DCTRIPSEL.bit.DCALCOMPSEL      = 1U;          // Digital Compare A Low COMP Input Select
         EPwm2Regs.DCTRIPSEL.bit.DCBHCOMPSEL      = 0U;          // Digital Compare B High COMP Input Select
         EPwm2Regs.DCTRIPSEL.bit.DCBLCOMPSEL      = 1U;          // Digital Compare B Low COMP Input Select
       */
      EPwm2Regs.DCTRIPSEL.all = (EPwm2Regs.DCTRIPSEL.all & ~ 0xFFFFU) | 0x1010U;

      /*	// Trip Zone Digital Comparator Select Register
         EPwm2Regs.TZDCSEL.bit.DCAEVT1            = 0U;          // Digital Compare Output A Event 1
         EPwm2Regs.TZDCSEL.bit.DCAEVT2            = 0U;          // Digital Compare Output A Event 2
         EPwm2Regs.TZDCSEL.bit.DCBEVT1            = 0U;          // Digital Compare Output B Event 1
         EPwm2Regs.TZDCSEL.bit.DCBEVT2            = 0U;          // Digital Compare Output B Event 2
       */
      EPwm2Regs.TZDCSEL.all = (EPwm2Regs.TZDCSEL.all & ~0xFFFU) | 0x0U;

      /*	// Digital Compare Filter Control Register
         EPwm2Regs.DCFCTL.bit.BLANKE              = 0U;          // Blanking Enable/Disable
         EPwm2Regs.DCFCTL.bit.PULSESEL            = 1U;          // Pulse Select for Blanking & Capture Alignment
         EPwm2Regs.DCFCTL.bit.BLANKINV            = 0U;          // Blanking Window Inversion
         EPwm2Regs.DCFCTL.bit.SRCSEL              = 0U;          // Filter Block Signal Source Select
       */
      EPwm2Regs.DCFCTL.all = (EPwm2Regs.DCFCTL.all & ~0x3FU) | 0x10U;
      EPwm2Regs.DCFOFFSET = 0U;        // Digital Compare Filter Offset Register
      EPwm2Regs.DCFWINDOW = 0U;        // Digital Compare Filter Window Register

      /*	// Digital Compare Capture Control Register
         EPwm2Regs.DCCAPCTL.bit.CAPE              = 0U;          // Counter Capture Enable
       */
      EPwm2Regs.DCCAPCTL.all = (EPwm2Regs.DCCAPCTL.all & ~0x1U) | 0x0U;

      /*	// HRPWM Configuration Register
         EPwm2Regs.HRCNFG.bit.SWAPAB              = 0U;          // Swap EPWMA and EPWMB Outputs Bit
         EPwm2Regs.HRCNFG.bit.SELOUTB             = 0U;          // EPWMB Output Selection Bit
       */
      EPwm2Regs.HRCNFG.all = (EPwm2Regs.HRCNFG.all & ~0xA0U) | 0x0U;

      /* Update the Link Registers with the link value for all the Compare values and TBPRD */
      /* No error is thrown if the ePWM register exists in the model or not */
      EPwm2Regs.EPWMXLINK.bit.TBPRDLINK = 1U;
      EPwm2Regs.EPWMXLINK.bit.CMPALINK = 1U;
      EPwm2Regs.EPWMXLINK.bit.CMPBLINK = 1U;
      EPwm2Regs.EPWMXLINK.bit.CMPCLINK = 1U;
      EPwm2Regs.EPWMXLINK.bit.CMPDLINK = 1U;

      /* SYNCPER - Peripheral synchronization output event
         EPwm2Regs.HRPCTL.bit.PWMSYNCSEL            = 0U;          // EPWMSYNCPER selection
         EPwm2Regs.HRPCTL.bit.PWMSYNCSELX           = 0U;          //  EPWMSYNCPER selection
       */
      EPwm2Regs.HRPCTL.all = (EPwm2Regs.HRPCTL.all & ~0x72U) | 0x0U;
      EDIS;
    }

    /* Start for S-Function (c2802xpwm): '<S400>/ePWM3' */

    /*** Initialize ePWM3 modules ***/
    {
      /*  // Time Base Control Register
         EPwm3Regs.TBCTL.bit.CTRMODE              = 2U;          // Counter Mode
         EPwm3Regs.TBCTL.bit.SYNCOSEL             = 0U;          // Sync Output Select

         EPwm3Regs.TBCTL.bit.PRDLD                = 0U;          // Shadow select

         EPwm3Regs.TBCTL2.bit.PRDLDSYNC           = 0U;          // Shadow select

         EPwm3Regs.TBCTL.bit.PHSEN                = 1U;          // Phase Load Enable
         EPwm3Regs.TBCTL.bit.PHSDIR               = 1U;          // Phase Direction Bit
         EPwm3Regs.TBCTL.bit.HSPCLKDIV            = 0U;          // High Speed TBCLK Pre-scaler
         EPwm3Regs.TBCTL.bit.CLKDIV               = 0U;          // Time Base Clock Pre-scaler
       */
      EPwm3Regs.TBCTL.all = (EPwm3Regs.TBCTL.all & ~0x3FFFU) | 0x2006U;
      EPwm3Regs.TBCTL2.all = (EPwm3Regs.TBCTL2.all & ~0xC000U) | 0x0U;

      /*-- Setup Time-Base (TB) Submodule --*/
      EPwm3Regs.TBPRD = 5000U;         // Time Base Period Register

      /* // Time-Base Phase Register
         EPwm3Regs.TBPHS.bit.TBPHS               = 0U;          // Phase offset register
       */
      EPwm3Regs.TBPHS.all = (EPwm3Regs.TBPHS.all & ~0xFFFF0000U) | 0x0U;

      // Time Base Counter Register
      EPwm3Regs.TBCTR = 0x0000U;       /* Clear counter*/

      /*-- Setup Counter_Compare (CC) Submodule --*/
      /*	// Counter Compare Control Register

         EPwm3Regs.CMPCTL.bit.LOADASYNC           = 0U;          // Active Compare A Load SYNC Option
         EPwm3Regs.CMPCTL.bit.LOADBSYNC           = 0U;          // Active Compare B Load SYNC Option
         EPwm3Regs.CMPCTL.bit.LOADAMODE           = 0U;          // Active Compare A Load
         EPwm3Regs.CMPCTL.bit.LOADBMODE           = 0U;          // Active Compare B Load
         EPwm3Regs.CMPCTL.bit.SHDWAMODE           = 0U;          // Compare A Register Block Operating Mode
         EPwm3Regs.CMPCTL.bit.SHDWBMODE           = 0U;          // Compare B Register Block Operating Mode
       */
      EPwm3Regs.CMPCTL.all = (EPwm3Regs.CMPCTL.all & ~0x3C5FU) | 0x0U;

      /* EPwm3Regs.CMPCTL2.bit.SHDWCMODE           = 0U;          // Compare C Register Block Operating Mode
         EPwm3Regs.CMPCTL2.bit.SHDWDMODE           = 0U;          // Compare D Register Block Operating Mode
         EPwm3Regs.CMPCTL2.bit.LOADCSYNC           = 0U;          // Active Compare C Load SYNC Option
         EPwm3Regs.CMPCTL2.bit.LOADDSYNC           = 0U;          // Active Compare D Load SYNC Option
         EPwm3Regs.CMPCTL2.bit.LOADCMODE           = 0U;          // Active Compare C Load
         EPwm3Regs.CMPCTL2.bit.LOADDMODE           = 0U;          // Active Compare D Load
       */
      EPwm3Regs.CMPCTL2.all = (EPwm3Regs.CMPCTL2.all & ~0x3C5FU) | 0x0U;
      EPwm3Regs.CMPA.bit.CMPA = 2501U; // Counter Compare A Register
      EPwm3Regs.CMPB.bit.CMPB = 2501U; // Counter Compare B Register
      EPwm3Regs.CMPC = 32000U;         // Counter Compare C Register
      EPwm3Regs.CMPD = 32000U;         // Counter Compare D Register

      /*-- Setup Action-Qualifier (AQ) Submodule --*/
      EPwm3Regs.AQCTLA.all = 144U;
                               // Action Qualifier Control Register For Output A
      EPwm3Regs.AQCTLB.all = 2310U;
                               // Action Qualifier Control Register For Output B

      /*	// Action Qualifier Software Force Register
         EPwm3Regs.AQSFRC.bit.RLDCSF              = 0U;          // Reload from Shadow Options
       */
      EPwm3Regs.AQSFRC.all = (EPwm3Regs.AQSFRC.all & ~0xC0U) | 0x0U;

      /*	// Action Qualifier Continuous S/W Force Register
         EPwm3Regs.AQCSFRC.bit.CSFA               = 0U;          // Continuous Software Force on output A
         EPwm3Regs.AQCSFRC.bit.CSFB               = 0U;          // Continuous Software Force on output B
       */
      EPwm3Regs.AQCSFRC.all = (EPwm3Regs.AQCSFRC.all & ~0xFU) | 0x0U;

      /*-- Setup Dead-Band Generator (DB) Submodule --*/
      /*	// Dead-Band Generator Control Register
         EPwm3Regs.DBCTL.bit.OUT_MODE             = 3U;          // Dead Band Output Mode Control
         EPwm3Regs.DBCTL.bit.IN_MODE              = 0U;          // Dead Band Input Select Mode Control
         EPwm3Regs.DBCTL.bit.POLSEL               = 2U;          // Polarity Select Control
         EPwm3Regs.DBCTL.bit.HALFCYCLE            = 0U;          // Half Cycle Clocking Enable
         EPwm3Regs.DBCTL.bit.SHDWDBREDMODE        = 0U;          // DBRED shadow mode
         EPwm3Regs.DBCTL.bit.SHDWDBFEDMODE        = 0U;          // DBFED shadow mode
         EPwm3Regs.DBCTL.bit.LOADREDMODE          = 4U;        // DBRED load
         EPwm3Regs.DBCTL.bit.LOADFEDMODE          = 4U;        // DBFED load
       */
      EPwm3Regs.DBCTL.all = (EPwm3Regs.DBCTL.all & ~0x8FFFU) | 0xBU;
      EPwm3Regs.DBRED.bit.DBRED = (uint16_T)(15.0);
                         // Dead-Band Generator Rising Edge Delay Count Register
      EPwm3Regs.DBFED.bit.DBFED = (uint16_T)(15.0);
                        // Dead-Band Generator Falling Edge Delay Count Register

      /*-- Setup Event-Trigger (ET) Submodule --*/
      /*	// Event Trigger Selection and Pre-Scale Register
         EPwm3Regs.ETSEL.bit.SOCAEN               = 0U;          // Start of Conversion A Enable
         EPwm3Regs.ETSEL.bit.SOCASELCMP           = 0U;
         EPwm3Regs.ETSEL.bit.SOCASEL              = 2U;          // Start of Conversion A Select
         EPwm3Regs.ETPS.bit.SOCPSSEL              = 1U;          // EPWM3SOC Period Select
         EPwm3Regs.ETSOCPS.bit.SOCAPRD2           = 1U;
         EPwm3Regs.ETSEL.bit.SOCBEN               = 0U;          // Start of Conversion B Enable
         EPwm3Regs.ETSEL.bit.SOCBSELCMP           = 0U;
         EPwm3Regs.ETSEL.bit.SOCBSEL              = 1U;          // Start of Conversion A Select
         EPwm3Regs.ETPS.bit.SOCPSSEL              = 1;          // EPWM3SOCB Period Select
         EPwm3Regs.ETSOCPS.bit.SOCBPRD2           = 1U;
         EPwm3Regs.ETSEL.bit.INTEN                = 0U;          // EPWM3INTn Enable
         EPwm3Regs.ETSEL.bit.INTSELCMP            = 0U;
         EPwm3Regs.ETSEL.bit.INTSEL               = 1U;          // Start of Conversion A Select
         EPwm3Regs.ETPS.bit.INTPSSEL              = 1U;          // EPWM3INTn Period Select
         EPwm3Regs.ETINTPS.bit.INTPRD2            = 1U;
       */
      EPwm3Regs.ETSEL.all = (EPwm3Regs.ETSEL.all & ~0xFF7FU) | 0x1201U;
      EPwm3Regs.ETPS.all = (EPwm3Regs.ETPS.all & ~0x30U) | 0x30U;
      EPwm3Regs.ETSOCPS.all = (EPwm3Regs.ETSOCPS.all & ~0xF0FU) | 0x101U;
      EPwm3Regs.ETINTPS.all = (EPwm3Regs.ETINTPS.all & ~0xFU) | 0x1U;

      /*-- Setup PWM-Chopper (PC) Submodule --*/
      /*	// PWM Chopper Control Register
         EPwm3Regs.PCCTL.bit.CHPEN                = 0U;          // PWM chopping enable
         EPwm3Regs.PCCTL.bit.CHPFREQ              = 0U;          // Chopping clock frequency
         EPwm3Regs.PCCTL.bit.OSHTWTH              = 0U;          // One-shot pulse width
         EPwm3Regs.PCCTL.bit.CHPDUTY              = 0U;          // Chopping clock Duty cycle
       */
      EPwm3Regs.PCCTL.all = (EPwm3Regs.PCCTL.all & ~0x7FFU) | 0x0U;

      /*-- Set up Trip-Zone (TZ) Submodule --*/
      EALLOW;
      EPwm3Regs.TZSEL.all = 0U;        // Trip Zone Select Register

      /*	// Trip Zone Control Register
         EPwm3Regs.TZCTL.bit.TZA                  = 3U;          // TZ1 to TZ6 Trip Action On EPWM3A
         EPwm3Regs.TZCTL.bit.TZB                  = 3U;          // TZ1 to TZ6 Trip Action On EPWM3B
         EPwm3Regs.TZCTL.bit.DCAEVT1              = 3U;          // EPWM3A action on DCAEVT1
         EPwm3Regs.TZCTL.bit.DCAEVT2              = 3U;          // EPWM3A action on DCAEVT2
         EPwm3Regs.TZCTL.bit.DCBEVT1              = 3U;          // EPWM3B action on DCBEVT1
         EPwm3Regs.TZCTL.bit.DCBEVT2              = 3U;          // EPWM3B action on DCBEVT2
       */
      EPwm3Regs.TZCTL.all = (EPwm3Regs.TZCTL.all & ~0xFFFU) | 0xFFFU;

      /*	// Trip Zone Enable Interrupt Register
         EPwm3Regs.TZEINT.bit.OST                 = 0U;          // Trip Zones One Shot Int Enable
         EPwm3Regs.TZEINT.bit.CBC                 = 0U;          // Trip Zones Cycle By Cycle Int Enable
         EPwm3Regs.TZEINT.bit.DCAEVT1             = 0U;          // Digital Compare A Event 1 Int Enable
         EPwm3Regs.TZEINT.bit.DCAEVT2             = 0U;          // Digital Compare A Event 2 Int Enable
         EPwm3Regs.TZEINT.bit.DCBEVT1             = 0U;          // Digital Compare B Event 1 Int Enable
         EPwm3Regs.TZEINT.bit.DCBEVT2             = 0U;          // Digital Compare B Event 2 Int Enable
       */
      EPwm3Regs.TZEINT.all = (EPwm3Regs.TZEINT.all & ~0x7EU) | 0x0U;

      /*	// Digital Compare A Control Register
         EPwm3Regs.DCACTL.bit.EVT1SYNCE           = 0U;          // DCAEVT1 SYNC Enable
         EPwm3Regs.DCACTL.bit.EVT1SOCE            = 1U;          // DCAEVT1 SOC Enable
         EPwm3Regs.DCACTL.bit.EVT1FRCSYNCSEL      = 0U;          // DCAEVT1 Force Sync Signal
         EPwm3Regs.DCACTL.bit.EVT1SRCSEL          = 0U;          // DCAEVT1 Source Signal
         EPwm3Regs.DCACTL.bit.EVT2FRCSYNCSEL      = 0U;          // DCAEVT2 Force Sync Signal
         EPwm3Regs.DCACTL.bit.EVT2SRCSEL          = 0U;          // DCAEVT2 Source Signal
       */
      EPwm3Regs.DCACTL.all = (EPwm3Regs.DCACTL.all & ~0x30FU) | 0x4U;

      /*	// Digital Compare B Control Register
         EPwm3Regs.DCBCTL.bit.EVT1SYNCE           = 0U;          // DCBEVT1 SYNC Enable
         EPwm3Regs.DCBCTL.bit.EVT1SOCE            = 0U;          // DCBEVT1 SOC Enable
         EPwm3Regs.DCBCTL.bit.EVT1FRCSYNCSEL      = 0U;          // DCBEVT1 Force Sync Signal
         EPwm3Regs.DCBCTL.bit.EVT1SRCSEL          = 0U;          // DCBEVT1 Source Signal
         EPwm3Regs.DCBCTL.bit.EVT2FRCSYNCSEL      = 0U;          // DCBEVT2 Force Sync Signal
         EPwm3Regs.DCBCTL.bit.EVT2SRCSEL          = 0U;          // DCBEVT2 Source Signal
       */
      EPwm3Regs.DCBCTL.all = (EPwm3Regs.DCBCTL.all & ~0x30FU) | 0x0U;

      /*	// Digital Compare Trip Select Register
         EPwm3Regs.DCTRIPSEL.bit.DCAHCOMPSEL      = 0U;          // Digital Compare A High COMP Input Select

         EPwm3Regs.DCTRIPSEL.bit.DCALCOMPSEL      = 1U;          // Digital Compare A Low COMP Input Select
         EPwm3Regs.DCTRIPSEL.bit.DCBHCOMPSEL      = 0U;          // Digital Compare B High COMP Input Select
         EPwm3Regs.DCTRIPSEL.bit.DCBLCOMPSEL      = 1U;          // Digital Compare B Low COMP Input Select
       */
      EPwm3Regs.DCTRIPSEL.all = (EPwm3Regs.DCTRIPSEL.all & ~ 0xFFFFU) | 0x1010U;

      /*	// Trip Zone Digital Comparator Select Register
         EPwm3Regs.TZDCSEL.bit.DCAEVT1            = 0U;          // Digital Compare Output A Event 1
         EPwm3Regs.TZDCSEL.bit.DCAEVT2            = 0U;          // Digital Compare Output A Event 2
         EPwm3Regs.TZDCSEL.bit.DCBEVT1            = 0U;          // Digital Compare Output B Event 1
         EPwm3Regs.TZDCSEL.bit.DCBEVT2            = 0U;          // Digital Compare Output B Event 2
       */
      EPwm3Regs.TZDCSEL.all = (EPwm3Regs.TZDCSEL.all & ~0xFFFU) | 0x0U;

      /*	// Digital Compare Filter Control Register
         EPwm3Regs.DCFCTL.bit.BLANKE              = 0U;          // Blanking Enable/Disable
         EPwm3Regs.DCFCTL.bit.PULSESEL            = 1U;          // Pulse Select for Blanking & Capture Alignment
         EPwm3Regs.DCFCTL.bit.BLANKINV            = 0U;          // Blanking Window Inversion
         EPwm3Regs.DCFCTL.bit.SRCSEL              = 0U;          // Filter Block Signal Source Select
       */
      EPwm3Regs.DCFCTL.all = (EPwm3Regs.DCFCTL.all & ~0x3FU) | 0x10U;
      EPwm3Regs.DCFOFFSET = 0U;        // Digital Compare Filter Offset Register
      EPwm3Regs.DCFWINDOW = 0U;        // Digital Compare Filter Window Register

      /*	// Digital Compare Capture Control Register
         EPwm3Regs.DCCAPCTL.bit.CAPE              = 0U;          // Counter Capture Enable
       */
      EPwm3Regs.DCCAPCTL.all = (EPwm3Regs.DCCAPCTL.all & ~0x1U) | 0x0U;

      /*	// HRPWM Configuration Register
         EPwm3Regs.HRCNFG.bit.SWAPAB              = 0U;          // Swap EPWMA and EPWMB Outputs Bit
         EPwm3Regs.HRCNFG.bit.SELOUTB             = 0U;          // EPWMB Output Selection Bit
       */
      EPwm3Regs.HRCNFG.all = (EPwm3Regs.HRCNFG.all & ~0xA0U) | 0x0U;

      /* Update the Link Registers with the link value for all the Compare values and TBPRD */
      /* No error is thrown if the ePWM register exists in the model or not */
      EPwm3Regs.EPWMXLINK.bit.TBPRDLINK = 2U;
      EPwm3Regs.EPWMXLINK.bit.CMPALINK = 2U;
      EPwm3Regs.EPWMXLINK.bit.CMPBLINK = 2U;
      EPwm3Regs.EPWMXLINK.bit.CMPCLINK = 2U;
      EPwm3Regs.EPWMXLINK.bit.CMPDLINK = 2U;

      /* SYNCPER - Peripheral synchronization output event
         EPwm3Regs.HRPCTL.bit.PWMSYNCSEL            = 0U;          // EPWMSYNCPER selection
         EPwm3Regs.HRPCTL.bit.PWMSYNCSELX           = 0U;          //  EPWMSYNCPER selection
       */
      EPwm3Regs.HRPCTL.all = (EPwm3Regs.HRPCTL.all & ~0x72U) | 0x0U;
      EDIS;
    }

    /* InitializeConditions for DiscreteIntegrator: '<S129>/Integrator' */
    mcb_pmsm_foc_sensorless_f_DWork.Integrator_PrevResetState = 0;
    mcb_pmsm_foc_sensorless_f_DWork.Integrator_IC_LOADING = 1U;

    /* InitializeConditions for DiscreteIntegrator: '<S78>/Integrator' */
    mcb_pmsm_foc_sensorless_f_DWork.Integrator_PrevResetState_e = 0;
    mcb_pmsm_foc_sensorless_f_DWork.Integrator_IC_LOADING_b = 1U;

    /* SystemInitialize for IfAction SubSystem: '<S175>/EKF Observer' */
    /* InitializeConditions for UnitDelay: '<S184>/Unit Delay' */
    mcb_pmsm_foc_sensorless_f_DWork.UnitDelay_DSTATE[0] = 0.0;
    mcb_pmsm_foc_sensorless_f_DWork.UnitDelay_DSTATE[1] = 0.0;
    mcb_pmsm_foc_sensorless_f_DWork.UnitDelay_DSTATE[2] = 0.1;
    mcb_pmsm_foc_sensorless_f_DWork.UnitDelay_DSTATE[3] = 0.0;

    /* End of SystemInitialize for SubSystem: '<S175>/EKF Observer' */

    /* SystemInitialize for IfAction SubSystem: '<S175>/Extended EMF Observer' */
    /* InitializeConditions for Delay: '<S194>/Delay1' */
    mcb_pmsm_foc_sensorless_f_DWork.Delay1_DSTATE_fi = 0.0F;

    /* InitializeConditions for Delay: '<S326>/Delay' */
    mcb_pmsm_foc_sensorless_f_DWork.Delay_DSTATE_n = 0.0;

    /* InitializeConditions for DiscreteIntegrator: '<S259>/Integrator' */
    mcb_pmsm_foc_sensorless_f_DWork.Integrator_PrevResetState_h = 0;

    /* SystemInitialize for IfAction SubSystem: '<S220>/DifferentiationMethod' */
    /* InitializeConditions for Delay: '<S280>/Delay2' */
    mcb_pmsm_foc_sensorless_f_DWork.Delay2_DSTATE_m = 0.0;

    /* InitializeConditions for Delay: '<S280>/Delay3' */
    mcb_pmsm_foc_sensorless_f_DWork.Delay3_DSTATE_p = 0.0;

    /* InitializeConditions for Delay: '<S281>/Delay2' */
    mcb_pmsm_foc_sensorless_f_DWork.Delay2_DSTATE_kc = 0.0;

    /* InitializeConditions for Delay: '<S281>/Delay3' */
    mcb_pmsm_foc_sensorless_f_DWork.Delay3_DSTATE_gs = 0.0;

    /* End of SystemInitialize for SubSystem: '<S220>/DifferentiationMethod' */

    /* SystemInitialize for IfAction SubSystem: '<S220>/IntegralMethod' */
    /* InitializeConditions for Delay: '<S305>/Delay1' */
    mcb_pmsm_foc_sensorless_f_DWork.Delay1_DSTATE_k = 0.0;

    /* InitializeConditions for Delay: '<S305>/Delay' */
    mcb_pmsm_foc_sensorless_f_DWork.Delay_DSTATE_l = 0.0;

    /* InitializeConditions for Delay: '<S306>/Delay1' */
    mcb_pmsm_foc_sensorless_f_DWork.Delay1_DSTATE_f = 0.0;

    /* InitializeConditions for Delay: '<S306>/Delay' */
    mcb_pmsm_foc_sensorless_f_DWork.Delay_DSTATE_k = 0.0;

    /* End of SystemInitialize for SubSystem: '<S220>/IntegralMethod' */

    /* SystemInitialize for IfAction SubSystem: '<S220>/OptimizedDifferentiationMethod' */
    /* InitializeConditions for Delay: '<S313>/Delay2' */
    mcb_pmsm_foc_sensorless_f_DWork.Delay2_DSTATE_k = 0.0;

    /* InitializeConditions for Delay: '<S313>/Delay3' */
    mcb_pmsm_foc_sensorless_f_DWork.Delay3_DSTATE_l = 0.0;

    /* InitializeConditions for Delay: '<S314>/Delay2' */
    mcb_pmsm_foc_sensorless_f_DWork.Delay2_DSTATE_p = 0.0;

    /* InitializeConditions for Delay: '<S314>/Delay3' */
    mcb_pmsm_foc_sensorless_f_DWork.Delay3_DSTATE_g = 0.0;

    /* End of SystemInitialize for SubSystem: '<S220>/OptimizedDifferentiationMethod' */

    /* SystemInitialize for Merge: '<S220>/Merge' */
    mcb_pmsm_foc_sensorless_f2837_B.Merge_i = 0.0;

    /* End of SystemInitialize for SubSystem: '<S175>/Extended EMF Observer' */

    /* SystemInitialize for IfAction SubSystem: '<S175>/Flux Observer' */
    /* InitializeConditions for Delay: '<S359>/Delay1' */
    mcb_pmsm_foc_sensorless_f_DWork.Delay1_DSTATE_h = 0.0;

    /* InitializeConditions for Delay: '<S359>/Delay' */
    mcb_pmsm_foc_sensorless_f_DWork.Delay_DSTATE_lq = 0.0;

    /* InitializeConditions for Delay: '<S352>/Delay1' */
    mcb_pmsm_foc_sensorless_f_DWork.Delay1_DSTATE_p = 0.0;

    /* InitializeConditions for Delay: '<S352>/Delay' */
    mcb_pmsm_foc_sensorless_f_DWork.Delay_DSTATE_ka = 0.0;

    /* InitializeConditions for Delay: '<S339>/Delay' */
    mcb_pmsm_foc_sensorless_f_DWork.CircBufIdx = 0U;

    /* End of SystemInitialize for SubSystem: '<S175>/Flux Observer' */

    /* SystemInitialize for IfAction SubSystem: '<S175>/HFI' */
    /* InitializeConditions for DiscreteIntegrator: '<S371>/Discrete-Time Integrator1' */
    mcb_pmsm_foc_sensorless_f_DWork.DiscreteTimeIntegrator1_PREV_U = 0.0;

    /* InitializeConditions for DiscreteIntegrator: '<S372>/Discrete-Time Integrator1' */
    mcb_pmsm_foc_sensorless_f_DWork.DiscreteTimeIntegrator1_PREV__l = 0.0;

    /* End of SystemInitialize for SubSystem: '<S175>/HFI' */

    /* SystemInitialize for IfAction SubSystem: '<S175>/Sliding Mode Observer' */
    /* InitializeConditions for Delay: '<S375>/Delay' */
    mcb_pmsm_foc_sensorless_f_DWork.Delay_DSTATE_kar = 0.0;

    /* InitializeConditions for Delay: '<S385>/Delay1' */
    mcb_pmsm_foc_sensorless_f_DWork.Delay1_DSTATE_m = 0.0;

    /* InitializeConditions for Delay: '<S376>/Delay' */
    mcb_pmsm_foc_sensorless_f_DWork.Delay_DSTATE_kb = 0.0;

    /* InitializeConditions for Delay: '<S386>/Delay1' */
    mcb_pmsm_foc_sensorless_f_DWork.Delay1_DSTATE_e = 0.0;

    /* InitializeConditions for Delay: '<S373>/Delay' */
    mcb_pmsm_foc_sensorless_f_DWork.Delay_DSTATE_e = 0.0F;

    /* InitializeConditions for Delay: '<S380>/Delay' */
    mcb_pmsm_foc_sensorless_f_DWork.CircBufIdx_g = 0U;

    /* End of SystemInitialize for SubSystem: '<S175>/Sliding Mode Observer' */

    /* SystemInitialize for IfAction SubSystem: '<S175>/Extended EMF Observer' */
    /* InitializeConditions for Delay: '<S195>/Delay' */
    mcb_pmsm_foc_sensorless_f_DWork.Delay_DSTATE_m[0] = 0.0;

    /* End of SystemInitialize for SubSystem: '<S175>/Extended EMF Observer' */

    /* SystemInitialize for Merge: '<S175>/Merge' */
    mcb_pmsm_foc_sensorless_f2837_B.Merge_a[0] = 0.0F;

    /* SystemInitialize for IfAction SubSystem: '<S175>/Extended EMF Observer' */
    /* InitializeConditions for Delay: '<S195>/Delay' */
    mcb_pmsm_foc_sensorless_f_DWork.Delay_DSTATE_m[1] = 0.0;

    /* End of SystemInitialize for SubSystem: '<S175>/Extended EMF Observer' */

    /* SystemInitialize for Merge: '<S175>/Merge' */
    mcb_pmsm_foc_sensorless_f2837_B.Merge_a[1] = 0.0F;

    /* SystemInitialize for S-Function (HardwareInterrupt_sfun): '<S420>/Hardware Interrupt' incorporates:
     *  SubSystem: '<Root>/Serial Receive'
     */
    /* System initialize for function-call system: '<Root>/Serial Receive' */

    /* Start for S-Function (c28xsci_rx): '<S441>/SCI Receive' */

    /* Initialize out port */
    {
      mcb_pmsm_foc_sensorless_f2837_B.SCIReceive[0] = (real32_T)0.0;
      mcb_pmsm_foc_sensorless_f2837_B.SCIReceive[1] = (real32_T)0.0;
    }

    /*Configure Timer2 when blocking mode is enabled and Timeout is not inf*/
    {
      /* InitCpuTimers() - CPU Timers are also initialized in
       * MW_c28xx_board.c in the generated code.
       */
      CpuTimer2Regs.PRD.all = 0xFFFFFFFFU;/* max Period*/
      CpuTimer2Regs.TIM.all = 0xFFFFFFFFU;/* set Ctr*/
      CpuTimer2Regs.TPR.all = 0x00U;   /* no prescaler    */
      StartCpuTimer2();
    }

    /* SystemInitialize for Atomic SubSystem: '<Root>/Speed Control' */
    mcb_pmsm__SpeedControl_Init(&mcb_pmsm_foc_sensorless_f2837_B.SpeedControl,
      &mcb_pmsm_foc_sensorless_f_DWork.SpeedControl);

    /* End of SystemInitialize for SubSystem: '<Root>/Speed Control' */

    /* SystemInitialize for Atomic SubSystem: '<Root>/Heartbeat LED' */
    /* Start for S-Function (c280xgpio_do): '<S434>/Digital Output' */
    EALLOW;
    GpioCtrlRegs.GPBMUX1.all &= 0xFFFFFFCFU;
    GpioCtrlRegs.GPBDIR.all |= 0x4U;
    EDIS;

    /* End of SystemInitialize for SubSystem: '<Root>/Heartbeat LED' */

    /* SystemInitialize for Atomic SubSystem: '<Root>/Hardware Init' */
    /* Start for S-Function (c280xgpio_do): '<S424>/Digital Output' */
    EALLOW;
    GpioCtrlRegs.GPDMUX2.all &= 0xFCFFFFFFU;
    GpioCtrlRegs.GPDDIR.all |= 0x10000000U;
    EDIS;

    /* Start for S-Function (c280xgpio_do): '<S424>/Digital Output1' */
    EALLOW;
    GpioCtrlRegs.GPAMUX2.all &= 0xFFFFCFFFU;
    GpioCtrlRegs.GPADIR.all |= 0x400000U;
    EDIS;

    /* SystemInitialize for Enabled SubSystem: '<S424>/ADC Gain Setting' */
    mcb__SPIMasterTransfer_Init
      (&mcb_pmsm_foc_sensorless_f_DWork.SPIMasterTransfer);
    mcb__SPIMasterTransfer_Init
      (&mcb_pmsm_foc_sensorless_f_DWork.SPIMasterTransfer1);

    /* End of SystemInitialize for SubSystem: '<S424>/ADC Gain Setting' */

    /* SystemInitialize for Enabled SubSystem: '<S422>/Calculate ADC Offset ' */
    /* SystemInitialize for Iterator SubSystem: '<S423>/For Iterator Subsystem' */
    /* Start for S-Function (c2802xadc): '<S426>/ADC_B2' */
    if (MW_adcBInitFlag == 0U) {
      InitAdcB();
      MW_adcBInitFlag = 1U;
    }

    config_ADCB_SOC2 ();

    /* Start for S-Function (c2802xadc): '<S426>/ADC_C2' */
    if (MW_adcCInitFlag == 0U) {
      InitAdcC();
      MW_adcCInitFlag = 1U;
    }

    config_ADCC_SOC2 ();

    /* End of SystemInitialize for SubSystem: '<S423>/For Iterator Subsystem' */
    /* End of SystemInitialize for SubSystem: '<S422>/Calculate ADC Offset ' */
    /* End of SystemInitialize for SubSystem: '<Root>/Hardware Init' */

    /* Outputs for Atomic SubSystem: '<Root>/Hardware Init' */
    /* Outputs for Enabled SubSystem: '<S424>/ADC Gain Setting' incorporates:
     *  EnablePort: '<S432>/Enable'
     */
    /* Constant: '<S3>/6PWM_Mode' */
    mcb_pmsm__SPIMasterTransfer(14870U,
      &mcb_pmsm_foc_sensorless_f2837_B.SPIMasterTransfer,
      &mcb_pmsm_foc_sensorless_f_DWork.SPIMasterTransfer);

    /* Constant: '<S3>/ADC_Gain_Setting' */
    mcb_pmsm__SPIMasterTransfer(20501U,
      &mcb_pmsm_foc_sensorless_f2837_B.SPIMasterTransfer1,
      &mcb_pmsm_foc_sensorless_f_DWork.SPIMasterTransfer1);

    /* End of Outputs for SubSystem: '<S424>/ADC Gain Setting' */

    /* Switch: '<S424>/Switch' incorporates:
     *  Constant: '<S424>/Inverter Enable'
     */
    mcb_pmsm_foc_sensorless_f2837_B.Switch_e = 1U;

    /* S-Function (c280xgpio_do): '<S424>/Digital Output' */
    {
      if (mcb_pmsm_foc_sensorless_f2837_B.Switch_e) {
        GpioDataRegs.GPDSET.bit.GPIO124 = 1U;
      } else {
        GpioDataRegs.GPDCLEAR.bit.GPIO124 = 1U;
      }
    }

    /* S-Function (c280xgpio_do): '<S424>/Digital Output1' incorporates:
     *  Constant: '<S424>/RunTimeMeasurement'
     */
    {
      if ((1U)) {
        GpioDataRegs.GPASET.bit.GPIO22 = 1U;
      } else {
        GpioDataRegs.GPACLEAR.bit.GPIO22 = 1U;
      }
    }

    /* Outputs for Enabled SubSystem: '<S422>/Calculate ADC Offset ' incorporates:
     *  EnablePort: '<S423>/Enable'
     */
    /* Outputs for Iterator SubSystem: '<S423>/For Iterator Subsystem' incorporates:
     *  ForIterator: '<S426>/For Iterator'
     */
    for (s426_iter = 1U; s426_iter < 17U; s426_iter++) {
      /* Outputs for Iterator SubSystem: '<S423>/For Iterator Subsystem' incorporates:
       *  ForIterator: '<S426>/For Iterator'
       */
      mcb_pmsm_foc_sensorless_f2837_B.ForIterator = s426_iter;

      /* S-Function (c2802xadc): '<S426>/ADC_B2' */
      {
        /*  Internal Reference Voltage : Fixed scale 0 to 3.3 V range.  */
        /*  External Reference Voltage : Allowable ranges of VREFHI(ADCINA0) = 3.3 and VREFLO(tied to ground) = 0  */
        AdcbRegs.ADCSOCFRC1.bit.SOC2 = 1U;

        /* Wait for the period of Sampling window and EOC result to be latched after trigger */
#ifndef __TMS320C28XX_CLA__

        asm(" RPT #75|| NOP");

#endif

#ifdef __TMS320C28XX_CLA__

        float wait_index;
        for (wait_index= 12; wait_index > 0; wait_index--)
          __mnop();

#endif

        mcb_pmsm_foc_sensorless_f2837_B.ADC_B2 = (AdcbResultRegs.ADCRESULT2);
      }

      /* S-Function (c2802xadc): '<S426>/ADC_C2' */
      {
        /*  Internal Reference Voltage : Fixed scale 0 to 3.3 V range.  */
        /*  External Reference Voltage : Allowable ranges of VREFHI(ADCINA0) = 3.3 and VREFLO(tied to ground) = 0  */
        AdccRegs.ADCSOCFRC1.bit.SOC2 = 1U;

        /* Wait for the period of Sampling window and EOC result to be latched after trigger */
#ifndef __TMS320C28XX_CLA__

        asm(" RPT #75|| NOP");

#endif

#ifdef __TMS320C28XX_CLA__

        float wait_index;
        for (wait_index= 12; wait_index > 0; wait_index--)
          __mnop();

#endif

        mcb_pmsm_foc_sensorless_f2837_B.ADC_C2 = (AdccResultRegs.ADCRESULT2);
      }

      /* If: '<S426>/If' */
      if (mcb_pmsm_foc_sensorless_f2837_B.ForIterator > 8U) {
        /* Outputs for IfAction SubSystem: '<S426>/If Action Subsystem' incorporates:
         *  ActionPort: '<S431>/Action Port'
         */
        /* Memory: '<S431>/Memory' */
        mcb_pmsm_foc_sensorless_f2837_B.Memory =
          mcb_pmsm_foc_sensorless_f_DWork.Memory_PreviousInput;

        /* Sum: '<S431>/Sum' */
        mcb_pmsm_foc_sensorless_f2837_B.Sum_ij =
          mcb_pmsm_foc_sensorless_f2837_B.ADC_C2 +
          mcb_pmsm_foc_sensorless_f2837_B.Memory;

        /* Memory: '<S431>/Memory1' */
        mcb_pmsm_foc_sensorless_f2837_B.Memory1 =
          mcb_pmsm_foc_sensorless_f_DWork.Memory1_PreviousInput;

        /* Sum: '<S431>/Sum1' */
        mcb_pmsm_foc_sensorless_f2837_B.Sum1_jw =
          mcb_pmsm_foc_sensorless_f2837_B.ADC_B2 +
          mcb_pmsm_foc_sensorless_f2837_B.Memory1;

        /* Update for Memory: '<S431>/Memory' */
        mcb_pmsm_foc_sensorless_f_DWork.Memory_PreviousInput =
          mcb_pmsm_foc_sensorless_f2837_B.Sum_ij;

        /* Update for Memory: '<S431>/Memory1' */
        mcb_pmsm_foc_sensorless_f_DWork.Memory1_PreviousInput =
          mcb_pmsm_foc_sensorless_f2837_B.Sum1_jw;

        /* End of Outputs for SubSystem: '<S426>/If Action Subsystem' */
      }

      /* End of If: '<S426>/If' */
    }

    /* End of Outputs for SubSystem: '<S423>/For Iterator Subsystem' */

    /* Product: '<S423>/Divide' incorporates:
     *  Constant: '<S423>/Constant'
     */
    mcb_pmsm_foc_sensorless_f2837_B.Divide_p = (uint16_T)((real_T)
      mcb_pmsm_foc_sensorless_f2837_B.Sum_ij / 8.0);

    /* If: '<S423>/If' incorporates:
     *  Constant: '<S423>/Constant1'
     *  Constant: '<S423>/Constant2'
     */
    if ((mcb_pmsm_foc_sensorless_f2837_B.Divide_p > 1500U) &&
        (mcb_pmsm_foc_sensorless_f2837_B.Divide_p < 2500U)) {
      /* Outputs for IfAction SubSystem: '<S423>/If Action Subsystem' incorporates:
       *  ActionPort: '<S427>/Action Port'
       */
      /* DataStoreWrite: '<S427>/Data Store Write1' */
      mcb_pmsm_foc_sensorless_f_DWork.IaOffset =
        mcb_pmsm_foc_sensorless_f2837_B.Divide_p;

      /* End of Outputs for SubSystem: '<S423>/If Action Subsystem' */
    } else {
      /* Outputs for IfAction SubSystem: '<S423>/If Action Subsystem1' incorporates:
       *  ActionPort: '<S428>/Action Port'
       */
      /* DataStoreWrite: '<S428>/Data Store Write1' incorporates:
       *  Constant: '<S428>/Constant'
       */
      mcb_pmsm_foc_sensorless_f_DWork.IaOffset = 2295U;

      /* End of Outputs for SubSystem: '<S423>/If Action Subsystem1' */
    }

    /* End of If: '<S423>/If' */

    /* Product: '<S423>/Divide1' incorporates:
     *  Constant: '<S423>/Constant'
     */
    mcb_pmsm_foc_sensorless_f2837_B.Divide1_l = (uint16_T)((real_T)
      mcb_pmsm_foc_sensorless_f2837_B.Sum1_jw / 8.0);

    /* If: '<S423>/If1' incorporates:
     *  Constant: '<S423>/Constant1'
     *  Constant: '<S423>/Constant2'
     */
    if ((mcb_pmsm_foc_sensorless_f2837_B.Divide1_l > 1500U) &&
        (mcb_pmsm_foc_sensorless_f2837_B.Divide1_l < 2500U)) {
      /* Outputs for IfAction SubSystem: '<S423>/If Action Subsystem2' incorporates:
       *  ActionPort: '<S429>/Action Port'
       */
      /* DataStoreWrite: '<S429>/Data Store Write2' */
      mcb_pmsm_foc_sensorless_f_DWork.IbOffset =
        mcb_pmsm_foc_sensorless_f2837_B.Divide1_l;

      /* End of Outputs for SubSystem: '<S423>/If Action Subsystem2' */
    } else {
      /* Outputs for IfAction SubSystem: '<S423>/If Action Subsystem3' incorporates:
       *  ActionPort: '<S430>/Action Port'
       */
      /* DataStoreWrite: '<S430>/Data Store Write2' incorporates:
       *  Constant: '<S430>/Constant1'
       */
      mcb_pmsm_foc_sensorless_f_DWork.IbOffset = 2286U;

      /* End of Outputs for SubSystem: '<S423>/If Action Subsystem3' */
    }

    /* End of If: '<S423>/If1' */
    /* End of Outputs for SubSystem: '<S422>/Calculate ADC Offset ' */

    /* Logic: '<S422>/NOT' */
    mcb_pmsm_foc_sensorless_f2837_B.NOT = false;

    /* Outputs for Enabled SubSystem: '<S422>/Default ADC Offset' incorporates:
     *  EnablePort: '<S425>/Enable'
     */
    if (mcb_pmsm_foc_sensorless_f2837_B.NOT) {
      /* DataStoreWrite: '<S425>/Data Store Write1' incorporates:
       *  Constant: '<S425>/Constant'
       */
      mcb_pmsm_foc_sensorless_f_DWork.IaOffset = 2295U;

      /* DataStoreWrite: '<S425>/Data Store Write2' incorporates:
       *  Constant: '<S425>/Constant1'
       */
      mcb_pmsm_foc_sensorless_f_DWork.IbOffset = 2286U;
    }

    /* End of Outputs for SubSystem: '<S422>/Default ADC Offset' */
    /* End of Outputs for SubSystem: '<Root>/Hardware Init' */
  }
}

/* Model terminate function */
void mcb_pmsm_foc_sensorless_f28379d_terminate(void)
{
  /* Terminate for Atomic SubSystem: '<Root>/Hardware Init' */
  /* Terminate for Enabled SubSystem: '<S424>/ADC Gain Setting' */
  mcb__SPIMasterTransfer_Term(&mcb_pmsm_foc_sensorless_f_DWork.SPIMasterTransfer);
  mcb__SPIMasterTransfer_Term
    (&mcb_pmsm_foc_sensorless_f_DWork.SPIMasterTransfer1);

  /* End of Terminate for SubSystem: '<S424>/ADC Gain Setting' */
  /* End of Terminate for SubSystem: '<Root>/Hardware Init' */
}

void mcb_pmsm_foc_sensorless_f28379d_configure_interrupts(void)
{
  /* Register interrupt service routine */
  HWI_TIC28x_ConfigureIRQ(33,&ADCB1_INT,0);
  HWI_TIC28x_EnableIRQ(33);

  /* Register interrupt service routine */
  HWI_TIC28x_ConfigureIRQ(96,&SCIA_RX_INT,2);
  HWI_TIC28x_EnableIRQ(96);
}

/* Hardware Interrupt Block: '<S418>/Hardware Interrupt' */
interrupt void ADCB1_INT(void)
{
  volatile unsigned int PIEIER1_stack_save = PieCtrlRegs.PIEIER1.all;
  volatile unsigned int PIEIER9_stack_save = PieCtrlRegs.PIEIER9.all;
  PieCtrlRegs.PIEIER1.all &= ~66;
                              /*disable group1 lower/equal priority interrupts*/
  PieCtrlRegs.PIEIER9.all &= ~1;
                              /*disable group9 lower/equal priority interrupts*/
  asm(" RPT #5 || NOP");               /*wait 5 cycles        */
  IFR &= ~257;    /*eventually disable lower/equal priority pending interrupts*/
  PieCtrlRegs.PIEACK.all = 257;
                   /*ACK to allow other interrupts from the same group to fire*/
  IER |= 1;
  EINT;

  /* Event: Default Event */
  if (1 == runModel) {
    {
      int16_T tmp;

      /* RateTransition: '<Root>/RT2' */
      tmp = mcb_pmsm_foc_sensorless_f_DWork.RT2_ActiveBufIdx << 1U;
      mcb_pmsm_foc_sensorless_f2837_B.RT2[0] =
        mcb_pmsm_foc_sensorless_f_DWork.RT2_Buffer[tmp];
      mcb_pmsm_foc_sensorless_f2837_B.RT2[1] =
        mcb_pmsm_foc_sensorless_f_DWork.RT2_Buffer[tmp + 1];

      /* RateTransition: '<Root>/RT6' */
      mcb_pmsm_foc_sensorless_f2837_B.RT6 =
        mcb_pmsm_foc_sensorless_f_DWork.RT6_Buffer[mcb_pmsm_foc_sensorless_f_DWork.RT6_ActiveBufIdx];

      /* RateTransition: '<Root>/RT7' */
      mcb_pmsm_foc_sensorless_f2837_B.RT7 =
        mcb_pmsm_foc_sensorless_f_DWork.RT7_Buffer[mcb_pmsm_foc_sensorless_f_DWork.RT7_ActiveBufIdx];

      /* RateTransition: '<Root>/RT8' */
      mcb_pmsm_foc_sensorless_f2837_B.RT8 =
        mcb_pmsm_foc_sensorless_f_DWork.RT8_Buffer0;

      /* S-Function (HardwareInterrupt_sfun): '<S418>/Hardware Interrupt' */

      /* Output and update for function-call system: '<Root>/Current Control' */
      {
        real_T Bias;
        real_T Gain1_mj;
        real32_T u0;
        uint32_T Sum_p;
        int16_T s404_iter;
        uint16_T Scale_to_PWM_Counter_PRD;
        boolean_T zcEvent;

        /* Asynchronous task reads absolute time. Data (absolute time)
           transfers from low priority task (base rate) to high priority
           task (asynchronous rate). Double buffers are used to ensure
           data integrity.
           -- rtmL2HLastBufWr is the buffer index that is written last.
         */
        mcb_pmsm_foc_sensorless_f283_M->Timing.clockTick4 =
          mcb_pmsm_foc_sensorless_f283_M->
          Timing.rtmL2HDbBufClockTick
          [mcb_pmsm_foc_sensorless_f283_M->Timing.rtmL2HLastBufWr];
        mcb_pmsm_foc_sensorless_f283_M->Timing.clockTickH4 =
          mcb_pmsm_foc_sensorless_f283_M->
          Timing.rtmL2HDbBufClockTickH
          [mcb_pmsm_foc_sensorless_f283_M->Timing.rtmL2HLastBufWr];

        /* DataStoreRead: '<S21>/Data Store Read' */
        mcb_pmsm_foc_sensorless_f2837_B.DataStoreRead_h =
          mcb_pmsm_foc_sensorless_f_DWork.Speed_ref;

        /* Abs: '<S21>/Abs' */
        mcb_pmsm_foc_sensorless_f2837_B.Abs_d = fabsf
          (mcb_pmsm_foc_sensorless_f2837_B.DataStoreRead_h);

        /* Switch: '<S21>/Switch2' */
        mcb_pmsm_foc_sensorless_f2837_B.Switch2_c = (uint16_T)
          (mcb_pmsm_foc_sensorless_f2837_B.Abs_d > 0.1F);

        /* DataTypeConversion: '<S21>/Data Type Conversion' */
        mcb_pmsm_foc_sensorless_f2837_B.DataTypeConversion_o =
          (mcb_pmsm_foc_sensorless_f2837_B.Switch2_c != 0U);

        /* DataStoreWrite: '<S21>/Data Store Write' */
        mcb_pmsm_foc_sensorless_f_DWork.EnClosedLoop =
          mcb_pmsm_foc_sensorless_f2837_B.DataTypeConversion_o;

        /* Gain: '<S21>/Gain' */
        mcb_pmsm_foc_sensorless_f2837_B.Gain_k0 = 0.0176208336F *
          mcb_pmsm_foc_sensorless_f2837_B.DataStoreRead_h;

        /* UnitDelay: '<S154>/Unit Delay' */
        mcb_pmsm_foc_sensorless_f2837_B.UnitDelay_p =
          mcb_pmsm_foc_sensorless_f_DWork.UnitDelay_DSTATE_h;

        /* Logic: '<S154>/NOT' */
        mcb_pmsm_foc_sensorless_f2837_B.NOT_f = true;

        /* Outputs for Enabled SubSystem: '<S154>/Accumulate' incorporates:
         *  EnablePort: '<S155>/Enable'
         */
        /* Delay: '<S155>/Delay' */
        mcb_pmsm_foc_sensorless_f2837_B.Delay_fv =
          mcb_pmsm_foc_sensorless_f_DWork.Delay_DSTATE_bc;

        /* Outputs for Enabled SubSystem: '<S155>/Subsystem' incorporates:
         *  EnablePort: '<S156>/Enable'
         */
        if (mcb_pmsm_foc_sensorless_f2837_B.Delay_fv) {
          /* SignalConversion generated from: '<S156>/Input' */
          mcb_pmsm_foc_sensorless_f2837_B.Input_h =
            mcb_pmsm_foc_sensorless_f2837_B.Gain_k0;
        }

        /* End of Outputs for SubSystem: '<S155>/Subsystem' */

        /* Sum: '<S155>/Add' */
        mcb_pmsm_foc_sensorless_f2837_B.Add_o =
          mcb_pmsm_foc_sensorless_f2837_B.Input_h +
          mcb_pmsm_foc_sensorless_f2837_B.UnitDelay_p;

        /* DataTypeConversion: '<S155>/Data Type Conversion' */
        mcb_pmsm_foc_sensorless_f2837_B.DataTypeConversion_a = (int16_T)
          (real32_T)floor(mcb_pmsm_foc_sensorless_f2837_B.Add_o);

        /* DataTypeConversion: '<S155>/Data Type Conversion1' */
        mcb_pmsm_foc_sensorless_f2837_B.DataTypeConversion1_j =
          mcb_pmsm_foc_sensorless_f2837_B.DataTypeConversion_a;

        /* Sum: '<S155>/Add1' */
        mcb_pmsm_foc_sensorless_f2837_B.Add1_gv =
          mcb_pmsm_foc_sensorless_f2837_B.Add_o -
          mcb_pmsm_foc_sensorless_f2837_B.DataTypeConversion1_j;

        /* Update for Delay: '<S155>/Delay' incorporates:
         *  Constant: '<S155>/Constant'
         */
        mcb_pmsm_foc_sensorless_f_DWork.Delay_DSTATE_bc = true;

        /* End of Outputs for SubSystem: '<S154>/Accumulate' */

        /* Delay: '<S1>/Delay5' */
        mcb_pmsm_foc_sensorless_f2837_B.Delay5[0] =
          mcb_pmsm_foc_sensorless_f_DWork.Delay5_DSTATE[0];
        mcb_pmsm_foc_sensorless_f2837_B.Delay5[1] =
          mcb_pmsm_foc_sensorless_f_DWork.Delay5_DSTATE[1];
        mcb_pmsm_foc_sensorless_f2837_B.Delay5[2] =
          mcb_pmsm_foc_sensorless_f_DWork.Delay5_DSTATE[2];
        mcb_pmsm_foc_sensorless_f2837_B.Delay5[3] =
          mcb_pmsm_foc_sensorless_f_DWork.Delay5_DSTATE[3];

        /* SwitchCase: '<S175>/Switch Case' incorporates:
         *  Constant: '<S197>/I_PU'
         *  Constant: '<S197>/V_PU'
         *  Constant: '<S201>/(Ld-Lq)//Ld'
         *  Constant: '<S201>/R//Ld'
         *  Constant: '<S204>/alpha'
         *  Constant: '<S205>/alpha'
         *  Constant: '<S206>/alpha'
         *  Constant: '<S208>/alpha'
         *  DataStoreRead: '<S179>/Data Store Read1'
         *  Delay: '<S194>/Delay1'
         *  Delay: '<S195>/Delay'
         *  Gain: '<S199>/Gain'
         *  Gain: '<S200>/Gain'
         *  Gain: '<S202>/Gain'
         *  Gain: '<S202>/Gain1'
         *  Gain: '<S207>/Gain'
         *  Gain: '<S207>/Gain1'
         *  Logic: '<S179>/Logical Operator'
         *  Product: '<S197>/Product'
         *  Product: '<S197>/Product1'
         *  Product: '<S197>/Product2'
         *  Product: '<S197>/Product3'
         *  Product: '<S201>/Product'
         *  Product: '<S201>/Product1'
         *  Product: '<S201>/Product2'
         *  Product: '<S201>/Product3'
         *  Product: '<S201>/Product4'
         *  Product: '<S201>/Product5'
         *  Product: '<S203>/Product'
         *  Product: '<S203>/Product1'
         *  Product: '<S204>/Product'
         *  Product: '<S204>/Product1'
         *  Product: '<S204>/Product2'
         *  Product: '<S204>/Product3'
         *  Product: '<S205>/Product'
         *  Product: '<S205>/Product1'
         *  Product: '<S205>/Product2'
         *  Product: '<S205>/Product3'
         *  Product: '<S206>/Product'
         *  Product: '<S206>/Product1'
         *  Product: '<S206>/Product2'
         *  Product: '<S206>/Product3'
         *  Product: '<S208>/Product'
         *  Product: '<S208>/Product1'
         *  Product: '<S208>/Product2'
         *  Product: '<S208>/Product3'
         *  Sum: '<S195>/Sum'
         *  Sum: '<S199>/Sum'
         *  Sum: '<S201>/Sum'
         *  Sum: '<S201>/Sum1'
         *  Sum: '<S204>/Sum'
         *  Sum: '<S204>/Sum1'
         *  Sum: '<S205>/Sum'
         *  Sum: '<S205>/Sum1'
         *  Sum: '<S206>/Sum'
         *  Sum: '<S206>/Sum1'
         *  Sum: '<S208>/Sum'
         *  Sum: '<S208>/Sum1'
         *  UnaryMinus: '<S201>/Unary Minus'
         *  UnaryMinus: '<S201>/Unary Minus1'
         *  UnaryMinus: '<S202>/Unary Minus'
         *  UnaryMinus: '<S202>/Unary Minus1'
         *  UnaryMinus: '<S203>/Unary Minus'
         *  UnaryMinus: '<S204>/Unary Minus'
         *  UnaryMinus: '<S205>/Unary Minus'
         *  UnaryMinus: '<S206>/Unary Minus'
         *  UnaryMinus: '<S208>/Unary Minus'
         */
        mcb_pmsm_foc_sensorless_f_DWork.SwitchCase_ActiveSubsystem = 2;

        /* Outputs for IfAction SubSystem: '<S175>/Extended EMF Observer' incorporates:
         *  ActionPort: '<S179>/Action Port'
         */
        mcb_pmsm_foc_sensorless_f2837_B.DataStoreRead1_c =
          mcb_pmsm_foc_sensorless_f_DWork.Enable;
        mcb_pmsm_foc_sensorless_f2837_B.LogicalOperator_g =
          !mcb_pmsm_foc_sensorless_f2837_B.DataStoreRead1_c;
        zcEvent = (((mcb_pmsm_foc_sen_PrevZCSigState.Delay1_Reset_ZCE ==
                     POS_ZCSIG) != (int16_T)
                    mcb_pmsm_foc_sensorless_f2837_B.LogicalOperator_g) &&
                   (mcb_pmsm_foc_sen_PrevZCSigState.Delay1_Reset_ZCE !=
                    UNINITIALIZED_ZCSIG));
        if (zcEvent || mcb_pmsm_foc_sensorless_f2837_B.LogicalOperator_g) {
          mcb_pmsm_foc_sensorless_f_DWork.Delay1_DSTATE_fi = 0.0F;
        }

        mcb_pmsm_foc_sen_PrevZCSigState.Delay1_Reset_ZCE =
          mcb_pmsm_foc_sensorless_f2837_B.LogicalOperator_g;
        mcb_pmsm_foc_sensorless_f2837_B.Delay1_e =
          mcb_pmsm_foc_sensorless_f_DWork.Delay1_DSTATE_fi;
        zcEvent = (((mcb_pmsm_foc_sen_PrevZCSigState.Delay_Reset_ZCE ==
                     POS_ZCSIG) != (int16_T)
                    mcb_pmsm_foc_sensorless_f2837_B.LogicalOperator_g) &&
                   (mcb_pmsm_foc_sen_PrevZCSigState.Delay_Reset_ZCE !=
                    UNINITIALIZED_ZCSIG));
        if (zcEvent || mcb_pmsm_foc_sensorless_f2837_B.LogicalOperator_g) {
          mcb_pmsm_foc_sensorless_f_DWork.Delay_DSTATE_m[0] = 0.0;
          mcb_pmsm_foc_sensorless_f_DWork.Delay_DSTATE_m[1] = 0.0;
        }

        mcb_pmsm_foc_sen_PrevZCSigState.Delay_Reset_ZCE =
          mcb_pmsm_foc_sensorless_f2837_B.LogicalOperator_g;
        mcb_pmsm_foc_sensorless_f2837_B.Gain_b = -0.00079999997979030013 *
          mcb_pmsm_foc_sensorless_f2837_B.Delay1_e;
        mcb_pmsm_foc_sensorless_f2837_B.UnaryMinus =
          -mcb_pmsm_foc_sensorless_f2837_B.Gain_b;
        mcb_pmsm_foc_sensorless_f2837_B.Product1_i = 13.856406460551019 *
          mcb_pmsm_foc_sensorless_f2837_B.Delay5[1];
        mcb_pmsm_foc_sensorless_f2837_B.Gain1_j = 1250.0 *
          mcb_pmsm_foc_sensorless_f2837_B.Product1_i;
        mcb_pmsm_foc_sensorless_f2837_B.Product2_g =
          mcb_pmsm_foc_sensorless_f2837_B.UnaryMinus *
          mcb_pmsm_foc_sensorless_f2837_B.Gain1_j;
        mcb_pmsm_foc_sensorless_f2837_B.Product = 13.856406460551019 *
          mcb_pmsm_foc_sensorless_f2837_B.Delay5[0];
        mcb_pmsm_foc_sensorless_f2837_B.Gain_m = 1250.0 *
          mcb_pmsm_foc_sensorless_f2837_B.Product;
        mcb_pmsm_foc_sensorless_f2837_B.Product_m = -10.0 *
          mcb_pmsm_foc_sensorless_f2837_B.Gain_m;
        mcb_pmsm_foc_sensorless_f2837_B.Sum =
          mcb_pmsm_foc_sensorless_f2837_B.Product2_g +
          mcb_pmsm_foc_sensorless_f2837_B.Product_m;
        mcb_pmsm_foc_sensorless_f2837_B.Product1_j =
          mcb_pmsm_foc_sensorless_f2837_B.Gain1_j * -10.0;
        mcb_pmsm_foc_sensorless_f2837_B.Product3_l =
          mcb_pmsm_foc_sensorless_f2837_B.Gain_m *
          mcb_pmsm_foc_sensorless_f2837_B.Gain_b;
        mcb_pmsm_foc_sensorless_f2837_B.Sum1 =
          mcb_pmsm_foc_sensorless_f2837_B.Product1_j +
          mcb_pmsm_foc_sensorless_f2837_B.Product3_l;
        mcb_pmsm_foc_sensorless_f2837_B.Product3_n = 10.714285714285714 *
          mcb_pmsm_foc_sensorless_f2837_B.Delay5[3];
        mcb_pmsm_foc_sensorless_f2837_B.Product1_o =
          mcb_pmsm_foc_sensorless_f2837_B.Product3_n * -10.0;
        mcb_pmsm_foc_sensorless_f2837_B.Product2_i = 10.714285714285714 *
          mcb_pmsm_foc_sensorless_f2837_B.Delay5[2];
        mcb_pmsm_foc_sensorless_f2837_B.Gain_f = -0.00079999997979030013 *
          mcb_pmsm_foc_sensorless_f2837_B.Delay1_e;
        mcb_pmsm_foc_sensorless_f2837_B.Product3_i =
          mcb_pmsm_foc_sensorless_f2837_B.Product2_i *
          mcb_pmsm_foc_sensorless_f2837_B.Gain_f;
        mcb_pmsm_foc_sensorless_f2837_B.Sum1_c =
          mcb_pmsm_foc_sensorless_f2837_B.Product1_o +
          mcb_pmsm_foc_sensorless_f2837_B.Product3_i;
        mcb_pmsm_foc_sensorless_f2837_B.Product1_ja =
          mcb_pmsm_foc_sensorless_f2837_B.Sum1_c *
          mcb_pmsm_foc_sensorless_f2837_B.Delay1_e;
        mcb_pmsm_foc_sensorless_f2837_B.UnaryMinus_k =
          -mcb_pmsm_foc_sensorless_f2837_B.Product1_ja;
        mcb_pmsm_foc_sensorless_f2837_B.UnaryMinus_g =
          -mcb_pmsm_foc_sensorless_f2837_B.Gain_f;
        mcb_pmsm_foc_sensorless_f2837_B.Product2_f =
          mcb_pmsm_foc_sensorless_f2837_B.UnaryMinus_g *
          mcb_pmsm_foc_sensorless_f2837_B.Product3_n;
        mcb_pmsm_foc_sensorless_f2837_B.Product_e = -10.0 *
          mcb_pmsm_foc_sensorless_f2837_B.Product2_i;
        mcb_pmsm_foc_sensorless_f2837_B.Sum_n =
          mcb_pmsm_foc_sensorless_f2837_B.Product2_f +
          mcb_pmsm_foc_sensorless_f2837_B.Product_e;
        mcb_pmsm_foc_sensorless_f2837_B.Product_d =
          mcb_pmsm_foc_sensorless_f2837_B.Sum_n *
          mcb_pmsm_foc_sensorless_f2837_B.Delay1_e;
        mcb_pmsm_foc_sensorless_f2837_B.UnaryMinus_a =
          -mcb_pmsm_foc_sensorless_f2837_B.Gain_f;
        mcb_pmsm_foc_sensorless_f2837_B.Gain1_d = 1250.0 *
          mcb_pmsm_foc_sensorless_f2837_B.Sum1_c;
        mcb_pmsm_foc_sensorless_f2837_B.UnaryMinus1 =
          -mcb_pmsm_foc_sensorless_f2837_B.Gain1_d;
        mcb_pmsm_foc_sensorless_f2837_B.Product2_p =
          mcb_pmsm_foc_sensorless_f2837_B.UnaryMinus_a *
          mcb_pmsm_foc_sensorless_f2837_B.UnaryMinus1;
        mcb_pmsm_foc_sensorless_f2837_B.Gain_p = 1250.0 *
          mcb_pmsm_foc_sensorless_f2837_B.Sum_n;
        mcb_pmsm_foc_sensorless_f2837_B.UnaryMinus_b =
          -mcb_pmsm_foc_sensorless_f2837_B.Gain_p;
        mcb_pmsm_foc_sensorless_f2837_B.Product_k = -10.0 *
          mcb_pmsm_foc_sensorless_f2837_B.UnaryMinus_b;
        mcb_pmsm_foc_sensorless_f2837_B.Sum_f =
          mcb_pmsm_foc_sensorless_f2837_B.Product2_p +
          mcb_pmsm_foc_sensorless_f2837_B.Product_k;
        mcb_pmsm_foc_sensorless_f2837_B.Product1_g =
          mcb_pmsm_foc_sensorless_f2837_B.UnaryMinus1 * -10.0;
        mcb_pmsm_foc_sensorless_f2837_B.Product3_p =
          mcb_pmsm_foc_sensorless_f2837_B.UnaryMinus_b *
          mcb_pmsm_foc_sensorless_f2837_B.Gain_f;
        mcb_pmsm_foc_sensorless_f2837_B.Sum1_k =
          mcb_pmsm_foc_sensorless_f2837_B.Product1_g +
          mcb_pmsm_foc_sensorless_f2837_B.Product3_p;
        mcb_pmsm_foc_sensorless_f2837_B.UnaryMinus_a2 =
          -mcb_pmsm_foc_sensorless_f2837_B.Gain_f;
        mcb_pmsm_foc_sensorless_f2837_B.Product_o =
          mcb_pmsm_foc_sensorless_f2837_B.Product2_i *
          mcb_pmsm_foc_sensorless_f2837_B.Delay1_e;
        mcb_pmsm_foc_sensorless_f2837_B.Product3_a = -0.12499999999999992 *
          mcb_pmsm_foc_sensorless_f2837_B.Product_o;
        mcb_pmsm_foc_sensorless_f2837_B.UnaryMinus1_c = -500.0;
        mcb_pmsm_foc_sensorless_f2837_B.Product5 =
          mcb_pmsm_foc_sensorless_f2837_B.Product3_n * -500.0;
        mcb_pmsm_foc_sensorless_f2837_B.Sum1_h =
          mcb_pmsm_foc_sensorless_f2837_B.Product3_a +
          mcb_pmsm_foc_sensorless_f2837_B.Product5;
        mcb_pmsm_foc_sensorless_f2837_B.Product2_b =
          mcb_pmsm_foc_sensorless_f2837_B.UnaryMinus_a2 *
          mcb_pmsm_foc_sensorless_f2837_B.Sum1_h;
        mcb_pmsm_foc_sensorless_f2837_B.Product4 =
          mcb_pmsm_foc_sensorless_f2837_B.Product2_i * -500.0;
        mcb_pmsm_foc_sensorless_f2837_B.Product1_l =
          mcb_pmsm_foc_sensorless_f2837_B.Product3_n *
          mcb_pmsm_foc_sensorless_f2837_B.Delay1_e;
        mcb_pmsm_foc_sensorless_f2837_B.UnaryMinus_j =
          -mcb_pmsm_foc_sensorless_f2837_B.Product1_l;
        mcb_pmsm_foc_sensorless_f2837_B.Product2_d =
          mcb_pmsm_foc_sensorless_f2837_B.UnaryMinus_j * -0.12499999999999992;
        mcb_pmsm_foc_sensorless_f2837_B.Sum_b =
          mcb_pmsm_foc_sensorless_f2837_B.Product4 +
          mcb_pmsm_foc_sensorless_f2837_B.Product2_d;
        mcb_pmsm_foc_sensorless_f2837_B.Product_h = -10.0 *
          mcb_pmsm_foc_sensorless_f2837_B.Sum_b;
        mcb_pmsm_foc_sensorless_f2837_B.Sum_k =
          mcb_pmsm_foc_sensorless_f2837_B.Product2_b +
          mcb_pmsm_foc_sensorless_f2837_B.Product_h;
        mcb_pmsm_foc_sensorless_f2837_B.Product1_b =
          mcb_pmsm_foc_sensorless_f2837_B.Sum1_h * -10.0;
        mcb_pmsm_foc_sensorless_f2837_B.Product3_c =
          mcb_pmsm_foc_sensorless_f2837_B.Sum_b *
          mcb_pmsm_foc_sensorless_f2837_B.Gain_f;
        mcb_pmsm_foc_sensorless_f2837_B.Sum1_a =
          mcb_pmsm_foc_sensorless_f2837_B.Product1_b +
          mcb_pmsm_foc_sensorless_f2837_B.Product3_c;
        mcb_pmsm_foc_sensorless_f2837_B.Sum_ba[0] =
          (mcb_pmsm_foc_sensorless_f2837_B.UnaryMinus_k -
           mcb_pmsm_foc_sensorless_f2837_B.Sum_f) -
          mcb_pmsm_foc_sensorless_f2837_B.Sum_k;
        mcb_pmsm_foc_sensorless_f2837_B.Sum_ba[1] =
          (mcb_pmsm_foc_sensorless_f2837_B.Product_d -
           mcb_pmsm_foc_sensorless_f2837_B.Sum1_k) -
          mcb_pmsm_foc_sensorless_f2837_B.Sum1_a;
        mcb_pmsm_foc_sensorless_f2837_B.Sum_m[0] =
          mcb_pmsm_foc_sensorless_f2837_B.Sum_ba[0] -
          mcb_pmsm_foc_sensorless_f2837_B.Sum;
        mcb_pmsm_foc_sensorless_f2837_B.Sum_m[1] =
          mcb_pmsm_foc_sensorless_f2837_B.Sum_ba[1] -
          mcb_pmsm_foc_sensorless_f2837_B.Sum1;
        Bias = mcb_pmsm_foc_sensorless_f_DWork.Delay_DSTATE_m[0];

        /* End of Outputs for SubSystem: '<S175>/Extended EMF Observer' */

        /* Delay: '<S195>/Delay' */
        mcb_pmsm_foc_sensorless_f2837_B.Delay_c[0] = Bias;

        /* Outputs for IfAction SubSystem: '<S175>/Extended EMF Observer' incorporates:
         *  ActionPort: '<S179>/Action Port'
         */
        /* SwitchCase: '<S175>/Switch Case' incorporates:
         *  Gain: '<S195>/Gain1'
         */
        Gain1_mj = 5.0E-5 * mcb_pmsm_foc_sensorless_f2837_B.Sum_m[0];

        /* End of Outputs for SubSystem: '<S175>/Extended EMF Observer' */

        /* Gain: '<S195>/Gain1' */
        mcb_pmsm_foc_sensorless_f2837_B.Gain1_mj[0] = Gain1_mj;

        /* Outputs for IfAction SubSystem: '<S175>/Extended EMF Observer' incorporates:
         *  ActionPort: '<S179>/Action Port'
         */
        /* SwitchCase: '<S175>/Switch Case' incorporates:
         *  Sum: '<S195>/Sum2'
         */
        Bias += Gain1_mj;

        /* End of Outputs for SubSystem: '<S175>/Extended EMF Observer' */

        /* Sum: '<S195>/Sum2' */
        mcb_pmsm_foc_sensorless_f2837_B.Sum2_j[0] = Bias;

        /* Outputs for IfAction SubSystem: '<S175>/Extended EMF Observer' incorporates:
         *  ActionPort: '<S179>/Action Port'
         */
        /* SwitchCase: '<S175>/Switch Case' incorporates:
         *  Delay: '<S195>/Delay'
         *  Gain: '<S195>/Gain2'
         */
        mcb_pmsm_foc_sensorless_f2837_B.Gain2_k[0] = 0.61538461538461542 * Bias;
        Bias = mcb_pmsm_foc_sensorless_f_DWork.Delay_DSTATE_m[1];

        /* End of Outputs for SubSystem: '<S175>/Extended EMF Observer' */

        /* Delay: '<S195>/Delay' */
        mcb_pmsm_foc_sensorless_f2837_B.Delay_c[1] = Bias;

        /* Outputs for IfAction SubSystem: '<S175>/Extended EMF Observer' incorporates:
         *  ActionPort: '<S179>/Action Port'
         */
        /* SwitchCase: '<S175>/Switch Case' incorporates:
         *  Gain: '<S195>/Gain1'
         */
        Gain1_mj = 5.0E-5 * mcb_pmsm_foc_sensorless_f2837_B.Sum_m[1];

        /* End of Outputs for SubSystem: '<S175>/Extended EMF Observer' */

        /* Gain: '<S195>/Gain1' */
        mcb_pmsm_foc_sensorless_f2837_B.Gain1_mj[1] = Gain1_mj;

        /* Outputs for IfAction SubSystem: '<S175>/Extended EMF Observer' incorporates:
         *  ActionPort: '<S179>/Action Port'
         */
        /* SwitchCase: '<S175>/Switch Case' incorporates:
         *  Sum: '<S195>/Sum2'
         */
        Bias += Gain1_mj;

        /* End of Outputs for SubSystem: '<S175>/Extended EMF Observer' */

        /* Sum: '<S195>/Sum2' */
        mcb_pmsm_foc_sensorless_f2837_B.Sum2_j[1] = Bias;

        /* Outputs for IfAction SubSystem: '<S175>/Extended EMF Observer' incorporates:
         *  ActionPort: '<S179>/Action Port'
         */
        /* SwitchCase: '<S175>/Switch Case' incorporates:
         *  Constant: '<S194>/V_PU'
         *  Gain: '<S195>/Gain2'
         *  Product: '<S194>/Product'
         *  Sum: '<S195>/Sum1'
         */
        mcb_pmsm_foc_sensorless_f2837_B.Gain2_k[1] = 0.61538461538461542 * Bias;
        mcb_pmsm_foc_sensorless_f2837_B.Sum1_o[0] =
          mcb_pmsm_foc_sensorless_f2837_B.Gain2_k[0] +
          mcb_pmsm_foc_sensorless_f2837_B.Sum_n;
        mcb_pmsm_foc_sensorless_f2837_B.Sum1_o[1] =
          mcb_pmsm_foc_sensorless_f2837_B.Gain2_k[1] +
          mcb_pmsm_foc_sensorless_f2837_B.Sum1_c;
        Bias = mcb_pmsm_foc_sensorless_f2837_B.Sum1_o[0] * 0.072168783648703216;

        /* End of Outputs for SubSystem: '<S175>/Extended EMF Observer' */

        /* Product: '<S194>/Product' */
        mcb_pmsm_foc_sensorless_f2837_B.Product_p[0] = Bias;

        /* Outputs for IfAction SubSystem: '<S175>/Extended EMF Observer' incorporates:
         *  ActionPort: '<S179>/Action Port'
         */
        /* SwitchCase: '<S175>/Switch Case' incorporates:
         *  Constant: '<S211>/Filter_Constant'
         *  Product: '<S211>/Product'
         */
        Bias *= 0.70204348915944692;

        /* End of Outputs for SubSystem: '<S175>/Extended EMF Observer' */

        /* Product: '<S211>/Product' */
        mcb_pmsm_foc_sensorless_f2837_B.Product_kb[0] = Bias;

        /* Outputs for IfAction SubSystem: '<S175>/Extended EMF Observer' incorporates:
         *  ActionPort: '<S179>/Action Port'
         */
        /* SwitchCase: '<S175>/Switch Case' incorporates:
         *  UnitDelay: '<S211>/Unit Delay'
         */
        Gain1_mj = mcb_pmsm_foc_sensorless_f_DWork.UnitDelay_DSTATE_j[0];

        /* End of Outputs for SubSystem: '<S175>/Extended EMF Observer' */

        /* UnitDelay: '<S211>/Unit Delay' */
        mcb_pmsm_foc_sensorless_f2837_B.UnitDelay_i[0] = Gain1_mj;

        /* Outputs for IfAction SubSystem: '<S175>/Extended EMF Observer' incorporates:
         *  ActionPort: '<S179>/Action Port'
         */
        /* SwitchCase: '<S175>/Switch Case' incorporates:
         *  Constant: '<S211>/One'
         *  Product: '<S211>/Product1'
         */
        Gain1_mj *= 0.29795651084055308;

        /* End of Outputs for SubSystem: '<S175>/Extended EMF Observer' */

        /* Product: '<S211>/Product1' */
        mcb_pmsm_foc_sensorless_f2837_B.Product1_oy[0] = Gain1_mj;

        /* Outputs for IfAction SubSystem: '<S175>/Extended EMF Observer' incorporates:
         *  ActionPort: '<S179>/Action Port'
         */
        /* SwitchCase: '<S175>/Switch Case' incorporates:
         *  Constant: '<S194>/V_PU'
         *  Product: '<S194>/Product'
         *  Sum: '<S211>/Add1'
         */
        mcb_pmsm_foc_sensorless_f2837_B.Add1_a[0] = Bias + Gain1_mj;
        Bias = mcb_pmsm_foc_sensorless_f2837_B.Sum1_o[1] * 0.072168783648703216;

        /* End of Outputs for SubSystem: '<S175>/Extended EMF Observer' */

        /* Product: '<S194>/Product' */
        mcb_pmsm_foc_sensorless_f2837_B.Product_p[1] = Bias;

        /* Outputs for IfAction SubSystem: '<S175>/Extended EMF Observer' incorporates:
         *  ActionPort: '<S179>/Action Port'
         */
        /* SwitchCase: '<S175>/Switch Case' incorporates:
         *  Constant: '<S211>/Filter_Constant'
         *  Product: '<S211>/Product'
         */
        Bias *= 0.70204348915944692;

        /* End of Outputs for SubSystem: '<S175>/Extended EMF Observer' */

        /* Product: '<S211>/Product' */
        mcb_pmsm_foc_sensorless_f2837_B.Product_kb[1] = Bias;

        /* Outputs for IfAction SubSystem: '<S175>/Extended EMF Observer' incorporates:
         *  ActionPort: '<S179>/Action Port'
         */
        /* SwitchCase: '<S175>/Switch Case' incorporates:
         *  UnitDelay: '<S211>/Unit Delay'
         */
        Gain1_mj = mcb_pmsm_foc_sensorless_f_DWork.UnitDelay_DSTATE_j[1];

        /* End of Outputs for SubSystem: '<S175>/Extended EMF Observer' */

        /* UnitDelay: '<S211>/Unit Delay' */
        mcb_pmsm_foc_sensorless_f2837_B.UnitDelay_i[1] = Gain1_mj;

        /* Outputs for IfAction SubSystem: '<S175>/Extended EMF Observer' incorporates:
         *  ActionPort: '<S179>/Action Port'
         */
        /* SwitchCase: '<S175>/Switch Case' incorporates:
         *  Constant: '<S211>/One'
         *  Product: '<S211>/Product1'
         */
        Gain1_mj *= 0.29795651084055308;

        /* End of Outputs for SubSystem: '<S175>/Extended EMF Observer' */

        /* Product: '<S211>/Product1' */
        mcb_pmsm_foc_sensorless_f2837_B.Product1_oy[1] = Gain1_mj;

        /* Outputs for IfAction SubSystem: '<S175>/Extended EMF Observer' incorporates:
         *  ActionPort: '<S179>/Action Port'
         */
        /* SwitchCase: '<S175>/Switch Case' incorporates:
         *  Constant: '<S302>/Filter_Constant'
         *  Constant: '<S302>/One'
         *  Constant: '<S319>/Filter_Constant'
         *  Constant: '<S319>/One'
         *  Constant: '<S322>/Filter_Constant'
         *  Constant: '<S322>/One'
         *  Constant: '<S328>/offset'
         *  Constant: '<S333>/Constant'
         *  DataTypeConversion: '<S218>/Cast To Boolean'
         *  DataTypeConversion: '<S221>/Data Type Conversion'
         *  DataTypeConversion: '<S326>/Data Type Conversion3'
         *  DataTypeConversion: '<S328>/Get_Integer'
         *  DataTypeConversion: '<S332>/Data Type Conversion'
         *  Delay: '<S313>/Delay2'
         *  Delay: '<S313>/Delay3'
         *  Delay: '<S314>/Delay2'
         *  Delay: '<S314>/Delay3'
         *  Delay: '<S326>/Delay'
         *  Gain: '<S313>/Gain'
         *  Gain: '<S313>/Gain1'
         *  Gain: '<S314>/Gain'
         *  Gain: '<S314>/Gain1'
         *  Gain: '<S328>/indexing'
         *  If: '<S212>/If'
         *  If: '<S218>/If'
         *  If: '<S332>/If'
         *  Merge: '<S220>/Merge'
         *  Product: '<S218>/Product'
         *  Product: '<S218>/Product1'
         *  Product: '<S279>/Product'
         *  Product: '<S279>/Product1'
         *  Product: '<S302>/Product'
         *  Product: '<S302>/Product1'
         *  Product: '<S319>/Product'
         *  Product: '<S319>/Product1'
         *  Product: '<S322>/Product'
         *  Product: '<S322>/Product1'
         *  RelationalOperator: '<S333>/Compare'
         *  Relay: '<S212>/AlphaRelay'
         *  Relay: '<S212>/BetaRelay'
         *  Sum: '<S211>/Add1'
         *  Sum: '<S218>/Sum'
         *  Sum: '<S279>/Sum'
         *  Sum: '<S302>/Add1'
         *  Sum: '<S313>/Sum1'
         *  Sum: '<S314>/Sum1'
         *  Sum: '<S319>/Add1'
         *  Sum: '<S322>/Add1'
         *  Sum: '<S328>/Sum'
         *  SwitchCase: '<S220>/Switch Case'
         *  SwitchCase: '<S221>/Switch Case'
         *  UnitDelay: '<S302>/Unit Delay'
         *  UnitDelay: '<S319>/Unit Delay'
         *  UnitDelay: '<S322>/Unit Delay'
         * */
        mcb_pmsm_foc_sensorless_f2837_B.Add1_a[1] = Bias + Gain1_mj;
        Bias = mcb_pmsm_foc_sensorless_f2837_B.Add1_a[0];
        mcb_pmsm_foc_sensorless_f_DWork.AlphaRelay_Mode = ((Bias >= 0.02) ||
          ((!(Bias <= -0.02)) && mcb_pmsm_foc_sensorless_f_DWork.AlphaRelay_Mode));
        mcb_pmsm_foc_sensorless_f2837_B.AlphaRelay =
          mcb_pmsm_foc_sensorless_f_DWork.AlphaRelay_Mode;
        Bias = mcb_pmsm_foc_sensorless_f2837_B.Add1_a[1];
        mcb_pmsm_foc_sensorless_f_DWork.BetaRelay_Mode = ((Bias >= 0.02) ||
          ((!(Bias <= -0.02)) && mcb_pmsm_foc_sensorless_f_DWork.BetaRelay_Mode));
        mcb_pmsm_foc_sensorless_f2837_B.BetaRelay =
          mcb_pmsm_foc_sensorless_f_DWork.BetaRelay_Mode;

        /* Outputs for Triggered SubSystem: '<S212>/Dir_Sense' */
        mcb_pmsm_foc_sens_Dir_Sense(mcb_pmsm_foc_sensorless_f2837_B.AlphaRelay,
          mcb_pmsm_foc_sensorless_f2837_B.BetaRelay,
          &mcb_pmsm_foc_sensorless_f2837_B.Dir_Sense_d,
          &mcb_pmsm_foc_sen_PrevZCSigState.Dir_Sense_d);

        /* End of Outputs for SubSystem: '<S212>/Dir_Sense' */
        if (mcb_pmsm_foc_sensorless_f2837_B.Dir_Sense_d.Switch > 0) {
          /* Outputs for IfAction SubSystem: '<S212>/Subsystem2' incorporates:
           *  ActionPort: '<S215>/Action Port'
           */
          mcb_pmsm_foc_sen_Subsystem2(mcb_pmsm_foc_sensorless_f2837_B.Add1_a[0],
            mcb_pmsm_foc_sensorless_f2837_B.Add1_a[1],
            &mcb_pmsm_foc_sensorless_f2837_B.Merge,
            &mcb_pmsm_foc_sensorless_f2837_B.Merge1);

          /* End of Outputs for SubSystem: '<S212>/Subsystem2' */
        } else {
          /* Outputs for IfAction SubSystem: '<S212>/Subsystem3' incorporates:
           *  ActionPort: '<S216>/Action Port'
           */
          mcb_pmsm_foc_sen_Subsystem2(mcb_pmsm_foc_sensorless_f2837_B.Add1_a[1],
            mcb_pmsm_foc_sensorless_f2837_B.Add1_a[0],
            &mcb_pmsm_foc_sensorless_f2837_B.Merge1,
            &mcb_pmsm_foc_sensorless_f2837_B.Merge);

          /* End of Outputs for SubSystem: '<S212>/Subsystem3' */
        }

        mcb_pmsm_foc_sensorless_f2837_B.DataTypeConversion_j =
          mcb_pmsm_foc_sensorless_f2837_B.LogicalOperator_g;
        if ((int16_T)mcb_pmsm_foc_sensorless_f2837_B.DataTypeConversion_j == 1)
        {
          /* Outputs for IfAction SubSystem: '<S221>/Switch Case Action Subsystem' incorporates:
           *  ActionPort: '<S323>/Action Port'
           */
          /* SignalConversion generated from: '<S323>/In1' incorporates:
           *  Constant: '<S221>/Constant'
           */
          mcb_pmsm_foc_sensorless_f2837_B.In1_o = 0.0;

          /* Merge: '<S221>/Merge' incorporates:
           *  SignalConversion generated from: '<S323>/Out1'
           */
          mcb_pmsm_foc_sensorless_f2837_B.Merge_l[0] = 0.0;
          mcb_pmsm_foc_sensorless_f2837_B.Merge_l[1] = 0.0;

          /* End of Outputs for SubSystem: '<S221>/Switch Case Action Subsystem' */
        } else {
          /* Outputs for IfAction SubSystem: '<S221>/Switch Case Action Subsystem1' incorporates:
           *  ActionPort: '<S324>/Action Port'
           */
          /* Merge: '<S221>/Merge' incorporates:
           *  SignalConversion generated from: '<S324>/In1'
           */
          mcb_pmsm_foc_sensorless_f2837_B.Merge_l[0] =
            mcb_pmsm_foc_sensorless_f2837_B.Merge;
          mcb_pmsm_foc_sensorless_f2837_B.Merge_l[1] =
            mcb_pmsm_foc_sensorless_f2837_B.Merge1;

          /* End of Outputs for SubSystem: '<S221>/Switch Case Action Subsystem1' */
        }

        mcb_pmsm_foc_sensorless_f2837_B.Product_f =
          mcb_pmsm_foc_sensorless_f2837_B.Merge_l[0] *
          mcb_pmsm_foc_sensorless_f2837_B.Merge_l[0];
        mcb_pmsm_foc_sensorless_f2837_B.Product1_n =
          mcb_pmsm_foc_sensorless_f2837_B.Merge_l[1] *
          mcb_pmsm_foc_sensorless_f2837_B.Merge_l[1];
        mcb_pmsm_foc_sensorless_f2837_B.Sum_k0 =
          mcb_pmsm_foc_sensorless_f2837_B.Product_f +
          mcb_pmsm_foc_sensorless_f2837_B.Product1_n;
        mcb_pmsm_foc_sensorless_f2837_B.CastToBoolean =
          (mcb_pmsm_foc_sensorless_f2837_B.Sum_k0 != 0.0);
        if (mcb_pmsm_foc_sensorless_f2837_B.CastToBoolean) {
          /* Outputs for IfAction SubSystem: '<S218>/Subsystem' incorporates:
           *  ActionPort: '<S227>/Action Port'
           */
          /* Sqrt: '<S227>/Sqrt' */
          mcb_pmsm_foc_sensorless_f2837_B.Sqrt_b = sqrt
            (mcb_pmsm_foc_sensorless_f2837_B.Sum_k0);

          /* Product: '<S227>/Divide' */
          mcb_pmsm_foc_sensorless_f2837_B.Divide_j = 1.0 /
            mcb_pmsm_foc_sensorless_f2837_B.Sqrt_b *
            mcb_pmsm_foc_sensorless_f2837_B.Merge_l[1];

          /* Product: '<S227>/Divide1' */
          mcb_pmsm_foc_sensorless_f2837_B.Divide1 =
            mcb_pmsm_foc_sensorless_f2837_B.Merge_l[0] /
            mcb_pmsm_foc_sensorless_f2837_B.Sqrt_b;

          /* Merge: '<S218>/Merge' incorporates:
           *  SignalConversion generated from: '<S227>/Out1'
           */
          mcb_pmsm_foc_sensorless_f2837_B.Merge_p =
            mcb_pmsm_foc_sensorless_f2837_B.Divide1;

          /* Merge: '<S218>/Merge1' incorporates:
           *  SignalConversion generated from: '<S227>/Out2'
           */
          mcb_pmsm_foc_sensorless_f2837_B.Merge1_g =
            mcb_pmsm_foc_sensorless_f2837_B.Divide_j;

          /* End of Outputs for SubSystem: '<S218>/Subsystem' */
        } else {
          /* Outputs for IfAction SubSystem: '<S218>/If Action Subsystem' incorporates:
           *  ActionPort: '<S226>/Action Port'
           */
          /* Merge: '<S218>/Merge' incorporates:
           *  SignalConversion generated from: '<S226>/Out1'
           */
          mcb_pmsm_foc_sensorless_f2837_B.Merge_p =
            mcb_pmsm_foc_sensorless_f2837_B.Merge_l[0];

          /* Merge: '<S218>/Merge1' incorporates:
           *  SignalConversion generated from: '<S226>/Out2'
           */
          mcb_pmsm_foc_sensorless_f2837_B.Merge1_g =
            mcb_pmsm_foc_sensorless_f2837_B.Merge_l[1];

          /* End of Outputs for SubSystem: '<S218>/If Action Subsystem' */
        }

        /* Outputs for IfAction SubSystem: '<S220>/OptimizedDifferentiationMethod' incorporates:
         *  ActionPort: '<S279>/Action Port'
         */
        zcEvent = (((mcb_pmsm_foc_sen_PrevZCSigState.Delay2_Reset_ZCE ==
                     POS_ZCSIG) != (int16_T)
                    mcb_pmsm_foc_sensorless_f2837_B.LogicalOperator_g) &&
                   (mcb_pmsm_foc_sen_PrevZCSigState.Delay2_Reset_ZCE !=
                    UNINITIALIZED_ZCSIG));
        if (zcEvent || mcb_pmsm_foc_sensorless_f2837_B.LogicalOperator_g) {
          mcb_pmsm_foc_sensorless_f_DWork.Delay2_DSTATE_k = 0.0;
        }

        mcb_pmsm_foc_sen_PrevZCSigState.Delay2_Reset_ZCE =
          mcb_pmsm_foc_sensorless_f2837_B.LogicalOperator_g;
        mcb_pmsm_foc_sensorless_f2837_B.Delay2_l =
          mcb_pmsm_foc_sensorless_f_DWork.Delay2_DSTATE_k;
        zcEvent = (((mcb_pmsm_foc_sen_PrevZCSigState.Delay3_Reset_ZCE ==
                     POS_ZCSIG) != (int16_T)
                    mcb_pmsm_foc_sensorless_f2837_B.LogicalOperator_g) &&
                   (mcb_pmsm_foc_sen_PrevZCSigState.Delay3_Reset_ZCE !=
                    UNINITIALIZED_ZCSIG));
        if (zcEvent || mcb_pmsm_foc_sensorless_f2837_B.LogicalOperator_g) {
          mcb_pmsm_foc_sensorless_f_DWork.Delay3_DSTATE_l = 0.0;
        }

        mcb_pmsm_foc_sen_PrevZCSigState.Delay3_Reset_ZCE =
          mcb_pmsm_foc_sensorless_f2837_B.LogicalOperator_g;
        mcb_pmsm_foc_sensorless_f2837_B.Delay3_a =
          mcb_pmsm_foc_sensorless_f_DWork.Delay3_DSTATE_l;
        mcb_pmsm_foc_sensorless_f2837_B.Product_ml =
          mcb_pmsm_foc_sensorless_f2837_B.Merge_p * 0.91716022679496656;
        mcb_pmsm_foc_sensorless_f2837_B.UnitDelay_gc =
          mcb_pmsm_foc_sensorless_f_DWork.UnitDelay_DSTATE_m;
        mcb_pmsm_foc_sensorless_f2837_B.Product1_k = 0.08283977320503344 *
          mcb_pmsm_foc_sensorless_f2837_B.UnitDelay_gc;
        mcb_pmsm_foc_sensorless_f2837_B.Add1_g =
          mcb_pmsm_foc_sensorless_f2837_B.Product_ml +
          mcb_pmsm_foc_sensorless_f2837_B.Product1_k;
        mcb_pmsm_foc_sensorless_f2837_B.Gain_a = 1.1071496110026028E+6 *
          mcb_pmsm_foc_sensorless_f2837_B.Add1_g;
        mcb_pmsm_foc_sensorless_f2837_B.Sum1_p =
          (mcb_pmsm_foc_sensorless_f2837_B.Delay3_a +
           mcb_pmsm_foc_sensorless_f2837_B.Gain_a) -
          mcb_pmsm_foc_sensorless_f2837_B.Delay2_l;
        mcb_pmsm_foc_sensorless_f2837_B.Gain1_p = 0.017743873399565777 *
          mcb_pmsm_foc_sensorless_f2837_B.Sum1_p;
        zcEvent = (((mcb_pmsm_foc_sen_PrevZCSigState.Delay2_Reset_ZCE_j ==
                     POS_ZCSIG) != (int16_T)
                    mcb_pmsm_foc_sensorless_f2837_B.LogicalOperator_g) &&
                   (mcb_pmsm_foc_sen_PrevZCSigState.Delay2_Reset_ZCE_j !=
                    UNINITIALIZED_ZCSIG));
        if (zcEvent || mcb_pmsm_foc_sensorless_f2837_B.LogicalOperator_g) {
          mcb_pmsm_foc_sensorless_f_DWork.Delay2_DSTATE_p = 0.0;
        }

        mcb_pmsm_foc_sen_PrevZCSigState.Delay2_Reset_ZCE_j =
          mcb_pmsm_foc_sensorless_f2837_B.LogicalOperator_g;
        mcb_pmsm_foc_sensorless_f2837_B.Delay2_h =
          mcb_pmsm_foc_sensorless_f_DWork.Delay2_DSTATE_p;
        zcEvent = (((mcb_pmsm_foc_sen_PrevZCSigState.Delay3_Reset_ZCE_c ==
                     POS_ZCSIG) != (int16_T)
                    mcb_pmsm_foc_sensorless_f2837_B.LogicalOperator_g) &&
                   (mcb_pmsm_foc_sen_PrevZCSigState.Delay3_Reset_ZCE_c !=
                    UNINITIALIZED_ZCSIG));
        if (zcEvent || mcb_pmsm_foc_sensorless_f2837_B.LogicalOperator_g) {
          mcb_pmsm_foc_sensorless_f_DWork.Delay3_DSTATE_g = 0.0;
        }

        mcb_pmsm_foc_sen_PrevZCSigState.Delay3_Reset_ZCE_c =
          mcb_pmsm_foc_sensorless_f2837_B.LogicalOperator_g;
        mcb_pmsm_foc_sensorless_f2837_B.Delay3_h =
          mcb_pmsm_foc_sensorless_f_DWork.Delay3_DSTATE_g;
        mcb_pmsm_foc_sensorless_f2837_B.Product_fa =
          mcb_pmsm_foc_sensorless_f2837_B.Merge1_g * 0.91716022679496656;
        mcb_pmsm_foc_sensorless_f2837_B.UnitDelay_e3 =
          mcb_pmsm_foc_sensorless_f_DWork.UnitDelay_DSTATE_fz;
        mcb_pmsm_foc_sensorless_f2837_B.Product1_e = 0.08283977320503344 *
          mcb_pmsm_foc_sensorless_f2837_B.UnitDelay_e3;
        mcb_pmsm_foc_sensorless_f2837_B.Add1_o =
          mcb_pmsm_foc_sensorless_f2837_B.Product_fa +
          mcb_pmsm_foc_sensorless_f2837_B.Product1_e;
        mcb_pmsm_foc_sensorless_f2837_B.Gain_n = 1.1071496110026028E+6 *
          mcb_pmsm_foc_sensorless_f2837_B.Add1_o;
        mcb_pmsm_foc_sensorless_f2837_B.Sum1_ad =
          (mcb_pmsm_foc_sensorless_f2837_B.Delay3_h +
           mcb_pmsm_foc_sensorless_f2837_B.Gain_n) -
          mcb_pmsm_foc_sensorless_f2837_B.Delay2_h;
        mcb_pmsm_foc_sensorless_f2837_B.Gain1_f = 0.017743873399565777 *
          mcb_pmsm_foc_sensorless_f2837_B.Sum1_ad;
        mcb_pmsm_foc_sensorless_f2837_B.Product_o0 =
          mcb_pmsm_foc_sensorless_f2837_B.Gain1_p *
          mcb_pmsm_foc_sensorless_f2837_B.Merge1_g;
        mcb_pmsm_foc_sensorless_f2837_B.Product1_nd =
          mcb_pmsm_foc_sensorless_f2837_B.Gain1_f *
          mcb_pmsm_foc_sensorless_f2837_B.Merge_p;
        mcb_pmsm_foc_sensorless_f2837_B.Merge_i =
          mcb_pmsm_foc_sensorless_f2837_B.Product_o0 -
          mcb_pmsm_foc_sensorless_f2837_B.Product1_nd;
        mcb_pmsm_foc_sensorless_f_DWork.Delay2_DSTATE_k =
          mcb_pmsm_foc_sensorless_f2837_B.Gain_a;
        mcb_pmsm_foc_sensorless_f_DWork.Delay3_DSTATE_l =
          mcb_pmsm_foc_sensorless_f2837_B.Gain1_p;
        mcb_pmsm_foc_sensorless_f_DWork.UnitDelay_DSTATE_m =
          mcb_pmsm_foc_sensorless_f2837_B.Add1_g;
        mcb_pmsm_foc_sensorless_f_DWork.Delay2_DSTATE_p =
          mcb_pmsm_foc_sensorless_f2837_B.Gain_n;
        mcb_pmsm_foc_sensorless_f_DWork.Delay3_DSTATE_g =
          mcb_pmsm_foc_sensorless_f2837_B.Gain1_f;
        mcb_pmsm_foc_sensorless_f_DWork.UnitDelay_DSTATE_fz =
          mcb_pmsm_foc_sensorless_f2837_B.Add1_o;

        /* End of Outputs for SubSystem: '<S220>/OptimizedDifferentiationMethod' */
        mcb_pmsm_foc_sensorless_f2837_B.Product_k3 =
          mcb_pmsm_foc_sensorless_f2837_B.Merge_i * 0.0046902865258454489;
        mcb_pmsm_foc_sensorless_f2837_B.UnitDelay_ik =
          mcb_pmsm_foc_sensorless_f_DWork.UnitDelay_DSTATE_i;
        mcb_pmsm_foc_sensorless_f2837_B.Product1_ls = 0.99530971347415453 *
          mcb_pmsm_foc_sensorless_f2837_B.UnitDelay_ik;
        mcb_pmsm_foc_sensorless_f2837_B.Add1_p =
          mcb_pmsm_foc_sensorless_f2837_B.Product_k3 +
          mcb_pmsm_foc_sensorless_f2837_B.Product1_ls;
        zcEvent = (((mcb_pmsm_foc_sen_PrevZCSigState.Delay_Reset_ZCE_h ==
                     POS_ZCSIG) != (int16_T)
                    mcb_pmsm_foc_sensorless_f2837_B.LogicalOperator_g) &&
                   (mcb_pmsm_foc_sen_PrevZCSigState.Delay_Reset_ZCE_h !=
                    UNINITIALIZED_ZCSIG));
        if (zcEvent || mcb_pmsm_foc_sensorless_f2837_B.LogicalOperator_g) {
          mcb_pmsm_foc_sensorless_f_DWork.Delay_DSTATE_n = 0.0;
        }

        mcb_pmsm_foc_sen_PrevZCSigState.Delay_Reset_ZCE_h =
          mcb_pmsm_foc_sensorless_f2837_B.LogicalOperator_g;
        mcb_pmsm_foc_sensorless_f2837_B.Delay_i =
          mcb_pmsm_foc_sensorless_f_DWork.Delay_DSTATE_n;
        mcb_pmsm_foc_sensorless_f2837_B.DataTypeConversion3 = (real32_T)
          mcb_pmsm_foc_sensorless_f2837_B.Delay_i;
        mcb_pmsm_foc_sensorless_f2837_B.Compare_h =
          (mcb_pmsm_foc_sensorless_f2837_B.DataTypeConversion3 < 0.0F);
        mcb_pmsm_foc_sensorless_f2837_B.DataTypeConversion_b =
          mcb_pmsm_foc_sensorless_f2837_B.Compare_h;
        if (mcb_pmsm_foc_sensorless_f2837_B.DataTypeConversion_b > 0U) {
          /* Outputs for IfAction SubSystem: '<S332>/If Action Subsystem' incorporates:
           *  ActionPort: '<S334>/Action Port'
           */
          mcb_pmsm__IfActionSubsystem
            (mcb_pmsm_foc_sensorless_f2837_B.DataTypeConversion3,
             &mcb_pmsm_foc_sensorless_f2837_B.Merge_h,
             &mcb_pmsm_foc_sensorless_f2837_B.IfActionSubsystem_f);

          /* End of Outputs for SubSystem: '<S332>/If Action Subsystem' */
        } else {
          /* Outputs for IfAction SubSystem: '<S332>/If Action Subsystem1' incorporates:
           *  ActionPort: '<S335>/Action Port'
           */
          mcb_pmsm_IfActionSubsystem1
            (mcb_pmsm_foc_sensorless_f2837_B.DataTypeConversion3,
             &mcb_pmsm_foc_sensorless_f2837_B.Merge_h,
             &mcb_pmsm_foc_sensorless_f2837_B.IfActionSubsystem1_f);

          /* End of Outputs for SubSystem: '<S332>/If Action Subsystem1' */
        }

        mcb_pmsm_foc_sensorless_f2837_B.indexing_i = 800.0F *
          mcb_pmsm_foc_sensorless_f2837_B.Merge_h;
        mcb_pmsm_foc_sensorless_f2837_B.Get_Integer_n = (uint16_T)
          mcb_pmsm_foc_sensorless_f2837_B.indexing_i;
        Sum_p = mcb_pmsm_foc_sensorless_f2837_B.Get_Integer_n + 1UL;

        /* End of Outputs for SubSystem: '<S175>/Extended EMF Observer' */

        /* Sum: '<S328>/Sum' */
        mcb_pmsm_foc_sensorless_f2837_B.Sum_p[0] = Sum_p;

        /* Outputs for IfAction SubSystem: '<S175>/Extended EMF Observer' incorporates:
         *  ActionPort: '<S179>/Action Port'
         */
        /* SwitchCase: '<S175>/Switch Case' incorporates:
         *  Constant: '<S328>/sine_table_values'
         *  Selector: '<S328>/Lookup'
         *  Sum: '<S328>/Sum'
         */
        mcb_pmsm_foc_sensorless_f2837_B.Lookup_a[0] =
          mcb_pmsm_foc_sensorless__ConstP.pooled46[(int16_T)Sum_p];
        Sum_p = mcb_pmsm_foc_sensorless_f2837_B.Get_Integer_n;

        /* End of Outputs for SubSystem: '<S175>/Extended EMF Observer' */

        /* Sum: '<S328>/Sum' */
        mcb_pmsm_foc_sensorless_f2837_B.Sum_p[1] = Sum_p;

        /* Outputs for IfAction SubSystem: '<S175>/Extended EMF Observer' incorporates:
         *  ActionPort: '<S179>/Action Port'
         */
        /* SwitchCase: '<S175>/Switch Case' incorporates:
         *  Constant: '<S328>/offset'
         *  Constant: '<S328>/sine_table_values'
         *  Selector: '<S328>/Lookup'
         *  Sum: '<S328>/Sum'
         */
        mcb_pmsm_foc_sensorless_f2837_B.Lookup_a[1] =
          mcb_pmsm_foc_sensorless__ConstP.pooled46[(int16_T)Sum_p];
        Sum_p = mcb_pmsm_foc_sensorless_f2837_B.Get_Integer_n + 201UL;

        /* End of Outputs for SubSystem: '<S175>/Extended EMF Observer' */

        /* Sum: '<S328>/Sum' */
        mcb_pmsm_foc_sensorless_f2837_B.Sum_p[2] = Sum_p;

        /* Outputs for IfAction SubSystem: '<S175>/Extended EMF Observer' incorporates:
         *  ActionPort: '<S179>/Action Port'
         */
        /* SwitchCase: '<S175>/Switch Case' incorporates:
         *  Constant: '<S328>/offset'
         *  Constant: '<S328>/sine_table_values'
         *  Selector: '<S328>/Lookup'
         *  Sum: '<S328>/Sum'
         */
        mcb_pmsm_foc_sensorless_f2837_B.Lookup_a[2] =
          mcb_pmsm_foc_sensorless__ConstP.pooled46[(int16_T)Sum_p];
        Sum_p = mcb_pmsm_foc_sensorless_f2837_B.Get_Integer_n + 200UL;

        /* End of Outputs for SubSystem: '<S175>/Extended EMF Observer' */

        /* Sum: '<S328>/Sum' */
        mcb_pmsm_foc_sensorless_f2837_B.Sum_p[3] = Sum_p;

        /* Outputs for IfAction SubSystem: '<S175>/Extended EMF Observer' incorporates:
         *  ActionPort: '<S179>/Action Port'
         */
        /* SwitchCase: '<S175>/Switch Case' incorporates:
         *  Constant: '<S225>/Filter_Constant'
         *  Constant: '<S225>/One'
         *  Constant: '<S328>/sine_table_values'
         *  Constant: '<S329>/Constant'
         *  DataTypeConversion: '<S326>/Data Type Conversion'
         *  DataTypeConversion: '<S326>/Data Type Conversion1'
         *  DataTypeConversion: '<S328>/Data Type Conversion1'
         *  DataTypeConversion: '<S329>/Data Type Conversion'
         *  DataTypeConversion: '<S329>/Data Type Conversion1'
         *  Delay: '<S194>/Delay1'
         *  Delay: '<S195>/Delay'
         *  Delay: '<S326>/Delay'
         *  Delay: '<S329>/Delay'
         *  DiscreteIntegrator: '<S259>/Integrator'
         *  Gain: '<S194>/SpeedGain'
         *  Gain: '<S213>/FreqGain'
         *  Gain: '<S213>/PositionGain'
         *  Gain: '<S256>/Integral Gain'
         *  Gain: '<S264>/Proportional Gain'
         *  Gain: '<S326>/Gain'
         *  Logic: '<S327>/NOT'
         *  Merge: '<S175>/Merge'
         *  Product: '<S213>/Product'
         *  Product: '<S213>/Product1'
         *  Product: '<S225>/Product'
         *  Product: '<S225>/Product1'
         *  Product: '<S331>/Product'
         *  Product: '<S331>/Product1'
         *  Selector: '<S328>/Lookup'
         *  Sum: '<S213>/Sum'
         *  Sum: '<S213>/Sum1'
         *  Sum: '<S225>/Add1'
         *  Sum: '<S268>/Sum'
         *  Sum: '<S328>/Sum2'
         *  Sum: '<S329>/Add'
         *  Sum: '<S329>/Add1'
         *  Sum: '<S331>/Sum3'
         *  Sum: '<S331>/Sum4'
         *  Sum: '<S331>/Sum5'
         *  Sum: '<S331>/Sum6'
         *  UnitDelay: '<S211>/Unit Delay'
         *  UnitDelay: '<S225>/Unit Delay'
         *  UnitDelay: '<S302>/Unit Delay'
         *  UnitDelay: '<S327>/Unit Delay'
         * */
        mcb_pmsm_foc_sensorless_f2837_B.Lookup_a[3] =
          mcb_pmsm_foc_sensorless__ConstP.pooled46[(int16_T)Sum_p];
        mcb_pmsm_foc_sensorless_f2837_B.Sum5_h =
          mcb_pmsm_foc_sensorless_f2837_B.Lookup_a[2] -
          mcb_pmsm_foc_sensorless_f2837_B.Lookup_a[3];
        mcb_pmsm_foc_sensorless_f2837_B.DataTypeConversion1_c =
          mcb_pmsm_foc_sensorless_f2837_B.Get_Integer_n;
        mcb_pmsm_foc_sensorless_f2837_B.Sum2_kx =
          mcb_pmsm_foc_sensorless_f2837_B.indexing_i -
          mcb_pmsm_foc_sensorless_f2837_B.DataTypeConversion1_c;
        mcb_pmsm_foc_sensorless_f2837_B.Product1_er =
          mcb_pmsm_foc_sensorless_f2837_B.Sum5_h *
          mcb_pmsm_foc_sensorless_f2837_B.Sum2_kx;
        mcb_pmsm_foc_sensorless_f2837_B.Sum6_l =
          mcb_pmsm_foc_sensorless_f2837_B.Product1_er +
          mcb_pmsm_foc_sensorless_f2837_B.Lookup_a[3];
        mcb_pmsm_foc_sensorless_f2837_B.DataTypeConversion1 =
          mcb_pmsm_foc_sensorless_f2837_B.Sum6_l;
        mcb_pmsm_foc_sensorless_f2837_B.Product_oz =
          mcb_pmsm_foc_sensorless_f2837_B.Merge_p *
          mcb_pmsm_foc_sensorless_f2837_B.DataTypeConversion1;
        mcb_pmsm_foc_sensorless_f2837_B.Sum3_c =
          mcb_pmsm_foc_sensorless_f2837_B.Lookup_a[0] -
          mcb_pmsm_foc_sensorless_f2837_B.Lookup_a[1];
        mcb_pmsm_foc_sensorless_f2837_B.Product_cj =
          mcb_pmsm_foc_sensorless_f2837_B.Sum3_c *
          mcb_pmsm_foc_sensorless_f2837_B.Sum2_kx;
        mcb_pmsm_foc_sensorless_f2837_B.Sum4_m =
          mcb_pmsm_foc_sensorless_f2837_B.Product_cj +
          mcb_pmsm_foc_sensorless_f2837_B.Lookup_a[1];
        mcb_pmsm_foc_sensorless_f2837_B.DataTypeConversion =
          mcb_pmsm_foc_sensorless_f2837_B.Sum4_m;
        mcb_pmsm_foc_sensorless_f2837_B.Product1_m =
          mcb_pmsm_foc_sensorless_f2837_B.Merge1_g *
          mcb_pmsm_foc_sensorless_f2837_B.DataTypeConversion;
        mcb_pmsm_foc_sensorless_f2837_B.Sum_mt =
          mcb_pmsm_foc_sensorless_f2837_B.Product_oz -
          mcb_pmsm_foc_sensorless_f2837_B.Product1_m;
        mcb_pmsm_foc_sensorless_f2837_B.ProportionalGain = 250.0 *
          mcb_pmsm_foc_sensorless_f2837_B.Sum_mt;
        mcb_pmsm_foc_sensorless_f2837_B.IntegralGain = 10.0 *
          mcb_pmsm_foc_sensorless_f2837_B.Sum_mt;
        if (mcb_pmsm_foc_sensorless_f2837_B.LogicalOperator_g ||
            (mcb_pmsm_foc_sensorless_f_DWork.Integrator_PrevResetState_h != 0))
        {
          mcb_pmsm_foc_sensorless_f_DWork.Integrator_DSTATE = 0.0;
        }

        mcb_pmsm_foc_sensorless_f2837_B.Integrator =
          mcb_pmsm_foc_sensorless_f_DWork.Integrator_DSTATE +
          mcb_pmsm_foc_sensorless_f2837_B.IntegralGain;
        mcb_pmsm_foc_sensorless_f2837_B.Sum_o =
          mcb_pmsm_foc_sensorless_f2837_B.ProportionalGain +
          mcb_pmsm_foc_sensorless_f2837_B.Integrator;
        mcb_pmsm_foc_sensorless_f2837_B.speed =
          mcb_pmsm_foc_sensorless_f2837_B.Add1_p +
          mcb_pmsm_foc_sensorless_f2837_B.Sum_o;
        mcb_pmsm_foc_sensorless_f2837_B.Product_j =
          mcb_pmsm_foc_sensorless_f2837_B.speed * 0.0046902865258454489;
        mcb_pmsm_foc_sensorless_f2837_B.UnitDelay_e =
          mcb_pmsm_foc_sensorless_f_DWork.UnitDelay_DSTATE_l;
        mcb_pmsm_foc_sensorless_f2837_B.Product1_p = 0.99530971347415453 *
          mcb_pmsm_foc_sensorless_f2837_B.UnitDelay_e;
        mcb_pmsm_foc_sensorless_f2837_B.Add1_l =
          mcb_pmsm_foc_sensorless_f2837_B.Product_j +
          mcb_pmsm_foc_sensorless_f2837_B.Product1_p;
        mcb_pmsm_foc_sensorless_f2837_B.FreqGain = (real32_T)
          mcb_pmsm_foc_sensorless_f2837_B.Add1_l;
        mcb_pmsm_foc_sensorless_f2837_B.Gain_b3 = 7.9577471545947669E-6 *
          mcb_pmsm_foc_sensorless_f2837_B.speed;
        mcb_pmsm_foc_sensorless_f2837_B.UnitDelay_g =
          mcb_pmsm_foc_sensorless_f_DWork.UnitDelay_DSTATE_f;
        mcb_pmsm_foc_sensorless_f2837_B.NOT_fg = true;

        /* Outputs for Enabled SubSystem: '<S327>/Accumulate' incorporates:
         *  EnablePort: '<S329>/Enable'
         */
        mcb_pmsm_foc_sensorless_f2837_B.Delay_p3 =
          mcb_pmsm_foc_sensorless_f_DWork.Delay_DSTATE_k4;

        /* Outputs for Enabled SubSystem: '<S329>/Subsystem' incorporates:
         *  EnablePort: '<S330>/Enable'
         */
        if (mcb_pmsm_foc_sensorless_f2837_B.Delay_p3) {
          /* SignalConversion generated from: '<S330>/Input' */
          mcb_pmsm_foc_sensorless_f2837_B.Input =
            mcb_pmsm_foc_sensorless_f2837_B.Gain_b3;
        }

        /* End of Outputs for SubSystem: '<S329>/Subsystem' */
        mcb_pmsm_foc_sensorless_f2837_B.Add_k =
          mcb_pmsm_foc_sensorless_f2837_B.Input +
          mcb_pmsm_foc_sensorless_f2837_B.UnitDelay_g;
        mcb_pmsm_foc_sensorless_f2837_B.DataTypeConversion_jm = (int16_T)floor
          (mcb_pmsm_foc_sensorless_f2837_B.Add_k);
        mcb_pmsm_foc_sensorless_f2837_B.DataTypeConversion1_o =
          mcb_pmsm_foc_sensorless_f2837_B.DataTypeConversion_jm;
        mcb_pmsm_foc_sensorless_f2837_B.Add1_lb =
          mcb_pmsm_foc_sensorless_f2837_B.Add_k -
          mcb_pmsm_foc_sensorless_f2837_B.DataTypeConversion1_o;
        mcb_pmsm_foc_sensorless_f_DWork.Delay_DSTATE_k4 = true;

        /* End of Outputs for SubSystem: '<S327>/Accumulate' */
        mcb_pmsm_foc_sensorless_f2837_B.Merge_a[0] = (real32_T)
          mcb_pmsm_foc_sensorless_f2837_B.Add1_lb;
        mcb_pmsm_foc_sensorless_f2837_B.Merge_a[1] = 0.000451610162F *
          mcb_pmsm_foc_sensorless_f2837_B.FreqGain;
        mcb_pmsm_foc_sensorless_f_DWork.Delay1_DSTATE_fi =
          mcb_pmsm_foc_sensorless_f2837_B.FreqGain;
        mcb_pmsm_foc_sensorless_f_DWork.Delay_DSTATE_m[0] =
          mcb_pmsm_foc_sensorless_f2837_B.Gain2_k[0];
        mcb_pmsm_foc_sensorless_f_DWork.UnitDelay_DSTATE_j[0] =
          mcb_pmsm_foc_sensorless_f2837_B.Add1_a[0];
        mcb_pmsm_foc_sensorless_f_DWork.Delay_DSTATE_m[1] =
          mcb_pmsm_foc_sensorless_f2837_B.Gain2_k[1];
        mcb_pmsm_foc_sensorless_f_DWork.UnitDelay_DSTATE_j[1] =
          mcb_pmsm_foc_sensorless_f2837_B.Add1_a[1];
        mcb_pmsm_foc_sensorless_f_DWork.UnitDelay_DSTATE_i =
          mcb_pmsm_foc_sensorless_f2837_B.Add1_p;
        mcb_pmsm_foc_sensorless_f_DWork.Delay_DSTATE_n =
          mcb_pmsm_foc_sensorless_f2837_B.Add1_lb;
        mcb_pmsm_foc_sensorless_f_DWork.Integrator_DSTATE =
          mcb_pmsm_foc_sensorless_f2837_B.Integrator;
        mcb_pmsm_foc_sensorless_f_DWork.Integrator_PrevResetState_h = (int16_T)
          mcb_pmsm_foc_sensorless_f2837_B.LogicalOperator_g;
        mcb_pmsm_foc_sensorless_f_DWork.UnitDelay_DSTATE_l =
          mcb_pmsm_foc_sensorless_f2837_B.Add1_l;
        mcb_pmsm_foc_sensorless_f_DWork.UnitDelay_DSTATE_f =
          mcb_pmsm_foc_sensorless_f2837_B.Add1_lb;

        /* End of Outputs for SubSystem: '<S175>/Extended EMF Observer' */

        /* Sum: '<S175>/Sum' */
        mcb_pmsm_foc_sensorless_f2837_B.Sum_lw =
          mcb_pmsm_foc_sensorless__ConstB.CastToSingle +
          mcb_pmsm_foc_sensorless_f2837_B.Merge_a[0];

        /* Saturate: '<S175>/Saturation' */
        u0 = mcb_pmsm_foc_sensorless_f2837_B.Sum_lw;
        if (u0 > 1.0F) {
          /* Saturate: '<S175>/Saturation' */
          mcb_pmsm_foc_sensorless_f2837_B.Saturation_g = 1.0F;
        } else if (u0 < 0.0F) {
          /* Saturate: '<S175>/Saturation' */
          mcb_pmsm_foc_sensorless_f2837_B.Saturation_g = 0.0F;
        } else {
          /* Saturate: '<S175>/Saturation' */
          mcb_pmsm_foc_sensorless_f2837_B.Saturation_g = u0;
        }

        /* End of Saturate: '<S175>/Saturation' */

        /* UnitDelay: '<S183>/UD' */
        mcb_pmsm_foc_sensorless_f2837_B.Yk1 =
          mcb_pmsm_foc_sensorless_f_DWork.UD_DSTATE;

        /* Sum: '<S183>/Diff' */
        mcb_pmsm_foc_sensorless_f2837_B.Yk1Uk =
          mcb_pmsm_foc_sensorless_f2837_B.Yk1 -
          mcb_pmsm_foc_sensorless_f2837_B.Merge_a[1];

        /* Gain: '<S183>/Gain' */
        mcb_pmsm_foc_sensorless_f2837_B.PoleYk1Uk = 0.94F *
          mcb_pmsm_foc_sensorless_f2837_B.Yk1Uk;

        /* Sum: '<S183>/Sum' */
        mcb_pmsm_foc_sensorless_f2837_B.Sum_mb =
          mcb_pmsm_foc_sensorless_f2837_B.PoleYk1Uk +
          mcb_pmsm_foc_sensorless_f2837_B.Merge_a[1];

        /* If: '<S17>/If' */
        if (mcb_pmsm_foc_sensorless_f2837_B.RT8 < 4U) {
          /* Outputs for IfAction SubSystem: '<S17>/If Action Subsystem' incorporates:
           *  ActionPort: '<S412>/Action Port'
           */
          /* Merge: '<S17>/Merge' incorporates:
           *  SignalConversion generated from: '<S412>/Pos_virtual'
           */
          mcb_pmsm_foc_sensorless_f2837_B.Merge_b =
            mcb_pmsm_foc_sensorless_f2837_B.RT6;

          /* Merge: '<S17>/Merge1' incorporates:
           *  SignalConversion generated from: '<S412>/Vel_virtual'
           */
          mcb_pmsm_foc_sensorless_f2837_B.Merge1_h =
            mcb_pmsm_foc_sensorless_f2837_B.RT7;

          /* End of Outputs for SubSystem: '<S17>/If Action Subsystem' */
        } else {
          /* Outputs for IfAction SubSystem: '<S17>/If Action Subsystem1' incorporates:
           *  ActionPort: '<S413>/Action Port'
           */
          /* Merge: '<S17>/Merge' incorporates:
           *  SignalConversion generated from: '<S413>/Pos_Meas'
           */
          mcb_pmsm_foc_sensorless_f2837_B.Merge_b =
            mcb_pmsm_foc_sensorless_f2837_B.Saturation_g;

          /* Merge: '<S17>/Merge1' incorporates:
           *  SignalConversion generated from: '<S413>/speed_Meas'
           */
          mcb_pmsm_foc_sensorless_f2837_B.Merge1_h =
            mcb_pmsm_foc_sensorless_f2837_B.Sum_mb;

          /* End of Outputs for SubSystem: '<S17>/If Action Subsystem1' */
        }

        /* End of If: '<S17>/If' */

        /* Switch: '<S21>/Switch' */
        if (mcb_pmsm_foc_sensorless_f2837_B.Switch2_c != 0U) {
          /* Switch: '<S21>/Switch' */
          mcb_pmsm_foc_sensorless_f2837_B.Switch_ial =
            mcb_pmsm_foc_sensorless_f2837_B.Merge_b;
        } else {
          /* Switch: '<S21>/Switch' */
          mcb_pmsm_foc_sensorless_f2837_B.Switch_ial =
            mcb_pmsm_foc_sensorless_f2837_B.Add1_gv;
        }

        /* End of Switch: '<S21>/Switch' */

        /* DataStoreRead: '<S174>/Data Store Read1' */
        mcb_pmsm_foc_sensorless_f2837_B.DataStoreRead1_f =
          mcb_pmsm_foc_sensorless_f_DWork.IaOffset;

        /* DataStoreRead: '<S174>/Data Store Read2' */
        mcb_pmsm_foc_sensorless_f2837_B.DataStoreRead2 =
          mcb_pmsm_foc_sensorless_f_DWork.IbOffset;

        /* S-Function (c2802xadc): '<S173>/ADC_C_IN2' */
        {
          /*  Internal Reference Voltage : Fixed scale 0 to 3.3 V range.  */
          /*  External Reference Voltage : Allowable ranges of VREFHI(ADCINA0) = 3.3 and VREFLO(tied to ground) = 0  */
          mcb_pmsm_foc_sensorless_f2837_B.ADC_C_IN2 = (AdccResultRegs.ADCRESULT0);
        }

        /* S-Function (c2802xadc): '<S173>/ADC_B_IN2' */
        {
          /*  Internal Reference Voltage : Fixed scale 0 to 3.3 V range.  */
          /*  External Reference Voltage : Allowable ranges of VREFHI(ADCINA0) = 3.3 and VREFLO(tied to ground) = 0  */
          mcb_pmsm_foc_sensorless_f2837_B.ADC_B_IN2 = (AdcbResultRegs.ADCRESULT0);
        }

        /* DataTypeConversion: '<S174>/Data Type Conversion' */
        mcb_pmsm_foc_sensorless_f2837_B.DataTypeConversion_jn[0] =
          mcb_pmsm_foc_sensorless_f2837_B.ADC_C_IN2;
        mcb_pmsm_foc_sensorless_f2837_B.DataTypeConversion_jn[1] =
          mcb_pmsm_foc_sensorless_f2837_B.ADC_B_IN2;

        /* Sum: '<S174>/Add' */
        mcb_pmsm_foc_sensorless_f2837_B.Add_pu[0] =
          mcb_pmsm_foc_sensorless_f2837_B.DataTypeConversion_jn[0] -
          mcb_pmsm_foc_sensorless_f2837_B.DataStoreRead1_f;
        mcb_pmsm_foc_sensorless_f2837_B.Add_pu[1] =
          mcb_pmsm_foc_sensorless_f2837_B.DataTypeConversion_jn[1] -
          mcb_pmsm_foc_sensorless_f2837_B.DataStoreRead2;

        /* Gain: '<S177>/Get ADC Voltage' */
        u0 = 0.000732600747F * (real32_T)mcb_pmsm_foc_sensorless_f2837_B.Add_pu
          [0];
        mcb_pmsm_foc_sensorless_f2837_B.GetADCVoltage[0] = u0;

        /* Gain: '<S177>/Get Currents' */
        u0 *= 7.14285707F;
        mcb_pmsm_foc_sensorless_f2837_B.GetCurrents[0] = u0;

        /* Gain: '<S177>/PU_Conversion' */
        mcb_pmsm_foc_sensorless_f2837_B.PU_Conversion[0] = 0.0933333337F * u0;

        /* Gain: '<S177>/Get ADC Voltage' */
        u0 = 0.000732600747F * (real32_T)mcb_pmsm_foc_sensorless_f2837_B.Add_pu
          [1];
        mcb_pmsm_foc_sensorless_f2837_B.GetADCVoltage[1] = u0;

        /* Gain: '<S177>/Get Currents' */
        u0 *= 7.14285707F;
        mcb_pmsm_foc_sensorless_f2837_B.GetCurrents[1] = u0;

        /* Gain: '<S177>/PU_Conversion' */
        mcb_pmsm_foc_sensorless_f2837_B.PU_Conversion[1] = 0.0933333337F * u0;

        /* Outputs for Atomic SubSystem: '<S24>/Two phase CRL wrap' */
        /* Sum: '<S25>/a_plus_2b' */
        mcb_pmsm_foc_sensorless_f2837_B.a_plus_2b =
          (mcb_pmsm_foc_sensorless_f2837_B.PU_Conversion[0] +
           mcb_pmsm_foc_sensorless_f2837_B.PU_Conversion[1]) +
          mcb_pmsm_foc_sensorless_f2837_B.PU_Conversion[1];

        /* Gain: '<S25>/one_by_sqrt3' */
        mcb_pmsm_foc_sensorless_f2837_B.one_by_sqrt3 = 0.577350259F *
          mcb_pmsm_foc_sensorless_f2837_B.a_plus_2b;

        /* AlgorithmDescriptorDelegate generated from: '<S25>/a16' */
        mcb_pmsm_foc_sensorless_f2837_B.algDD_o1_n =
          mcb_pmsm_foc_sensorless_f2837_B.PU_Conversion[0];

        /* AlgorithmDescriptorDelegate generated from: '<S25>/a16' */
        mcb_pmsm_foc_sensorless_f2837_B.algDD_o2_e =
          mcb_pmsm_foc_sensorless_f2837_B.one_by_sqrt3;

        /* End of Outputs for SubSystem: '<S24>/Two phase CRL wrap' */

        /* DataTypeConversion: '<S10>/Cast To Double' */
        mcb_pmsm_foc_sensorless_f2837_B.CastToDouble =
          mcb_pmsm_foc_sensorless_f2837_B.algDD_o1_n;

        /* DataTypeConversion: '<S10>/Cast To Double1' */
        mcb_pmsm_foc_sensorless_f2837_B.CastToDouble1 =
          mcb_pmsm_foc_sensorless_f2837_B.algDD_o2_e;

        /* Switch: '<S32>/Switch1' incorporates:
         *  Constant: '<S32>/ChosenMethod'
         */
        mcb_pmsm_foc_sensorless_f2837_B.Switch1_h = 3U;

        /* RelationalOperator: '<S162>/Compare' incorporates:
         *  Constant: '<S162>/Constant'
         */
        mcb_pmsm_foc_sensorless_f2837_B.Compare =
          (mcb_pmsm_foc_sensorless_f2837_B.Switch_ial < 0.0F);

        /* DataTypeConversion: '<S161>/Data Type Conversion' */
        mcb_pmsm_foc_sensorless_f2837_B.DataTypeConversion_f =
          mcb_pmsm_foc_sensorless_f2837_B.Compare;

        /* If: '<S161>/If' */
        if (mcb_pmsm_foc_sensorless_f2837_B.DataTypeConversion_f > 0U) {
          /* Outputs for IfAction SubSystem: '<S161>/If Action Subsystem' incorporates:
           *  ActionPort: '<S163>/Action Port'
           */
          mcb_pmsm__IfActionSubsystem(mcb_pmsm_foc_sensorless_f2837_B.Switch_ial,
            &mcb_pmsm_foc_sensorless_f2837_B.Merge_az,
            &mcb_pmsm_foc_sensorless_f2837_B.IfActionSubsystem_i);

          /* End of Outputs for SubSystem: '<S161>/If Action Subsystem' */
        } else {
          /* Outputs for IfAction SubSystem: '<S161>/If Action Subsystem1' incorporates:
           *  ActionPort: '<S164>/Action Port'
           */
          mcb_pmsm_IfActionSubsystem1(mcb_pmsm_foc_sensorless_f2837_B.Switch_ial,
            &mcb_pmsm_foc_sensorless_f2837_B.Merge_az,
            &mcb_pmsm_foc_sensorless_f2837_B.IfActionSubsystem1_n);

          /* End of Outputs for SubSystem: '<S161>/If Action Subsystem1' */
        }

        /* End of If: '<S161>/If' */

        /* Gain: '<S159>/indexing' */
        mcb_pmsm_foc_sensorless_f2837_B.indexing = 800.0F *
          mcb_pmsm_foc_sensorless_f2837_B.Merge_az;

        /* DataTypeConversion: '<S159>/Get_Integer' */
        mcb_pmsm_foc_sensorless_f2837_B.Get_Integer = (uint16_T)
          mcb_pmsm_foc_sensorless_f2837_B.indexing;

        /* Sum: '<S159>/Sum' incorporates:
         *  Constant: '<S159>/offset'
         */
        Sum_p = mcb_pmsm_foc_sensorless_f2837_B.Get_Integer + 1UL;
        mcb_pmsm_foc_sensorless_f2837_B.Sum_nh[0] = Sum_p;

        /* Selector: '<S159>/Lookup' incorporates:
         *  Constant: '<S159>/sine_table_values'
         */
        mcb_pmsm_foc_sensorless_f2837_B.Lookup[0] =
          mcb_pmsm_foc_sensorless__ConstP.pooled46[(int16_T)Sum_p];

        /* Sum: '<S159>/Sum' */
        Sum_p = mcb_pmsm_foc_sensorless_f2837_B.Get_Integer;
        mcb_pmsm_foc_sensorless_f2837_B.Sum_nh[1] = Sum_p;

        /* Selector: '<S159>/Lookup' incorporates:
         *  Constant: '<S159>/sine_table_values'
         */
        mcb_pmsm_foc_sensorless_f2837_B.Lookup[1] =
          mcb_pmsm_foc_sensorless__ConstP.pooled46[(int16_T)Sum_p];

        /* Sum: '<S159>/Sum' incorporates:
         *  Constant: '<S159>/offset'
         */
        Sum_p = mcb_pmsm_foc_sensorless_f2837_B.Get_Integer + 201UL;
        mcb_pmsm_foc_sensorless_f2837_B.Sum_nh[2] = Sum_p;

        /* Selector: '<S159>/Lookup' incorporates:
         *  Constant: '<S159>/sine_table_values'
         */
        mcb_pmsm_foc_sensorless_f2837_B.Lookup[2] =
          mcb_pmsm_foc_sensorless__ConstP.pooled46[(int16_T)Sum_p];

        /* Sum: '<S159>/Sum' incorporates:
         *  Constant: '<S159>/offset'
         */
        Sum_p = mcb_pmsm_foc_sensorless_f2837_B.Get_Integer + 200UL;
        mcb_pmsm_foc_sensorless_f2837_B.Sum_nh[3] = Sum_p;

        /* Selector: '<S159>/Lookup' incorporates:
         *  Constant: '<S159>/sine_table_values'
         */
        mcb_pmsm_foc_sensorless_f2837_B.Lookup[3] =
          mcb_pmsm_foc_sensorless__ConstP.pooled46[(int16_T)Sum_p];

        /* Sum: '<S160>/Sum3' */
        mcb_pmsm_foc_sensorless_f2837_B.Sum3_e =
          mcb_pmsm_foc_sensorless_f2837_B.Lookup[0] -
          mcb_pmsm_foc_sensorless_f2837_B.Lookup[1];

        /* DataTypeConversion: '<S159>/Data Type Conversion1' */
        mcb_pmsm_foc_sensorless_f2837_B.DataTypeConversion1_i =
          mcb_pmsm_foc_sensorless_f2837_B.Get_Integer;

        /* Sum: '<S159>/Sum2' */
        mcb_pmsm_foc_sensorless_f2837_B.Sum2_e =
          mcb_pmsm_foc_sensorless_f2837_B.indexing -
          mcb_pmsm_foc_sensorless_f2837_B.DataTypeConversion1_i;

        /* Product: '<S160>/Product' */
        mcb_pmsm_foc_sensorless_f2837_B.Product_gs =
          mcb_pmsm_foc_sensorless_f2837_B.Sum3_e *
          mcb_pmsm_foc_sensorless_f2837_B.Sum2_e;

        /* Sum: '<S160>/Sum4' */
        mcb_pmsm_foc_sensorless_f2837_B.Sum4_d =
          mcb_pmsm_foc_sensorless_f2837_B.Product_gs +
          mcb_pmsm_foc_sensorless_f2837_B.Lookup[1];

        /* Sum: '<S160>/Sum5' */
        mcb_pmsm_foc_sensorless_f2837_B.Sum5 =
          mcb_pmsm_foc_sensorless_f2837_B.Lookup[2] -
          mcb_pmsm_foc_sensorless_f2837_B.Lookup[3];

        /* Product: '<S160>/Product1' */
        mcb_pmsm_foc_sensorless_f2837_B.Product1_c =
          mcb_pmsm_foc_sensorless_f2837_B.Sum5 *
          mcb_pmsm_foc_sensorless_f2837_B.Sum2_e;

        /* Sum: '<S160>/Sum6' */
        mcb_pmsm_foc_sensorless_f2837_B.Sum6_g =
          mcb_pmsm_foc_sensorless_f2837_B.Product1_c +
          mcb_pmsm_foc_sensorless_f2837_B.Lookup[3];

        /* Outputs for Atomic SubSystem: '<S22>/Two inputs CRL' */
        /* Product: '<S158>/acos' */
        mcb_pmsm_foc_sensorless_f2837_B.acos_k =
          mcb_pmsm_foc_sensorless_f2837_B.algDD_o1_n *
          mcb_pmsm_foc_sensorless_f2837_B.Sum6_g;

        /* Product: '<S158>/bsin' */
        mcb_pmsm_foc_sensorless_f2837_B.bsin =
          mcb_pmsm_foc_sensorless_f2837_B.algDD_o2_e *
          mcb_pmsm_foc_sensorless_f2837_B.Sum4_d;

        /* Sum: '<S158>/sum_Ds' */
        mcb_pmsm_foc_sensorless_f2837_B.sum_Ds =
          mcb_pmsm_foc_sensorless_f2837_B.acos_k +
          mcb_pmsm_foc_sensorless_f2837_B.bsin;

        /* Product: '<S158>/bcos' */
        mcb_pmsm_foc_sensorless_f2837_B.bcos =
          mcb_pmsm_foc_sensorless_f2837_B.algDD_o2_e *
          mcb_pmsm_foc_sensorless_f2837_B.Sum6_g;

        /* Product: '<S158>/asin' */
        mcb_pmsm_foc_sensorless_f2837_B.asin_e =
          mcb_pmsm_foc_sensorless_f2837_B.algDD_o1_n *
          mcb_pmsm_foc_sensorless_f2837_B.Sum4_d;

        /* Sum: '<S158>/sum_Qs' */
        mcb_pmsm_foc_sensorless_f2837_B.sum_Qs =
          mcb_pmsm_foc_sensorless_f2837_B.bcos -
          mcb_pmsm_foc_sensorless_f2837_B.asin_e;

        /* Switch: '<S165>/Switch' */
        mcb_pmsm_foc_sensorless_f2837_B.Switch_o[0] =
          mcb_pmsm_foc_sensorless_f2837_B.sum_Ds;
        mcb_pmsm_foc_sensorless_f2837_B.Switch_o[1] =
          mcb_pmsm_foc_sensorless_f2837_B.sum_Qs;

        /* AlgorithmDescriptorDelegate generated from: '<S158>/a16' */
        mcb_pmsm_foc_sensorless_f2837_B.algDD_o1_h =
          mcb_pmsm_foc_sensorless_f2837_B.Switch_o[0];

        /* AlgorithmDescriptorDelegate generated from: '<S158>/a16' */
        mcb_pmsm_foc_sensorless_f2837_B.algDD_o2_h =
          mcb_pmsm_foc_sensorless_f2837_B.Switch_o[1];

        /* End of Outputs for SubSystem: '<S22>/Two inputs CRL' */

        /* Sum: '<S28>/Sum' */
        mcb_pmsm_foc_sensorless_f2837_B.Sum_g =
          mcb_pmsm_foc_sensorless_f2837_B.RT2[1] -
          mcb_pmsm_foc_sensorless_f2837_B.algDD_o2_h;

        /* Product: '<S134>/PProd Out' incorporates:
         *  Constant: '<S28>/Kp'
         */
        mcb_pmsm_foc_sensorless_f2837_B.PProdOut =
          mcb_pmsm_foc_sensorless_f2837_B.Sum_g * 3.0F;

        /* DataStoreRead: '<S28>/Data Store Read1' */
        mcb_pmsm_foc_sensorless_f2837_B.DataStoreRead1_h =
          mcb_pmsm_foc_sensorless_f_DWork.EnClosedLoop;

        /* Logic: '<S28>/Logical Operator' */
        mcb_pmsm_foc_sensorless_f2837_B.LogicalOperator =
          !mcb_pmsm_foc_sensorless_f2837_B.DataStoreRead1_h;

        /* UnitDelay: '<S28>/Unit Delay' */
        mcb_pmsm_foc_sensorless_f2837_B.UnitDelay_c =
          mcb_pmsm_foc_sensorless_f_DWork.UnitDelay_DSTATE_a;

        /* DiscreteIntegrator: '<S129>/Integrator' */
        if (mcb_pmsm_foc_sensorless_f_DWork.Integrator_IC_LOADING != 0U) {
          mcb_pmsm_foc_sensorless_f_DWork.Integrator_DSTATE_m =
            mcb_pmsm_foc_sensorless_f2837_B.UnitDelay_c;
        }

        if (mcb_pmsm_foc_sensorless_f2837_B.LogicalOperator ||
            (mcb_pmsm_foc_sensorless_f_DWork.Integrator_PrevResetState != 0)) {
          mcb_pmsm_foc_sensorless_f_DWork.Integrator_DSTATE_m =
            mcb_pmsm_foc_sensorless_f2837_B.UnitDelay_c;
        }

        /* DiscreteIntegrator: '<S129>/Integrator' */
        mcb_pmsm_foc_sensorless_f2837_B.Integrator_h =
          mcb_pmsm_foc_sensorless_f_DWork.Integrator_DSTATE_m;

        /* Sum: '<S138>/Sum' */
        mcb_pmsm_foc_sensorless_f2837_B.Sum_l5 =
          mcb_pmsm_foc_sensorless_f2837_B.PProdOut +
          mcb_pmsm_foc_sensorless_f2837_B.Integrator_h;

        /* Switch: '<S28>/Switch' */
        if (mcb_pmsm_foc_sensorless_f2837_B.DataStoreRead1_h) {
          /* Saturate: '<S136>/Saturation' */
          u0 = mcb_pmsm_foc_sensorless_f2837_B.Sum_l5;
          if (u0 > 1.0F) {
            /* Saturate: '<S136>/Saturation' */
            mcb_pmsm_foc_sensorless_f2837_B.Saturation_gt = 1.0F;
          } else if (u0 < -1.0F) {
            /* Saturate: '<S136>/Saturation' */
            mcb_pmsm_foc_sensorless_f2837_B.Saturation_gt = -1.0F;
          } else {
            /* Saturate: '<S136>/Saturation' */
            mcb_pmsm_foc_sensorless_f2837_B.Saturation_gt = u0;
          }

          /* End of Saturate: '<S136>/Saturation' */

          /* Switch: '<S28>/Switch' */
          mcb_pmsm_foc_sensorless_f2837_B.Switch_h =
            mcb_pmsm_foc_sensorless_f2837_B.Saturation_gt;
        } else {
          /* Switch: '<S28>/Switch' incorporates:
           *  Constant: '<S28>/Vq_OpenLoop'
           */
          mcb_pmsm_foc_sensorless_f2837_B.Switch_h = 0.0F;
        }

        /* End of Switch: '<S28>/Switch' */

        /* Sum: '<S27>/Sum' */
        mcb_pmsm_foc_sensorless_f2837_B.Sum_km =
          mcb_pmsm_foc_sensorless_f2837_B.RT2[0] -
          mcb_pmsm_foc_sensorless_f2837_B.algDD_o1_h;

        /* Product: '<S83>/PProd Out' incorporates:
         *  Constant: '<S27>/Kp'
         */
        mcb_pmsm_foc_sensorless_f2837_B.PProdOut_a =
          mcb_pmsm_foc_sensorless_f2837_B.Sum_km * 3.0F;

        /* DataStoreRead: '<S27>/Data Store Read1' */
        mcb_pmsm_foc_sensorless_f2837_B.DataStoreRead1_o =
          mcb_pmsm_foc_sensorless_f_DWork.EnClosedLoop;

        /* Logic: '<S27>/Logical Operator' */
        mcb_pmsm_foc_sensorless_f2837_B.LogicalOperator_n =
          !mcb_pmsm_foc_sensorless_f2837_B.DataStoreRead1_o;

        /* UnitDelay: '<S27>/Unit Delay' */
        mcb_pmsm_foc_sensorless_f2837_B.UnitDelay_mw =
          mcb_pmsm_foc_sensorless_f_DWork.UnitDelay_DSTATE_p;

        /* DiscreteIntegrator: '<S78>/Integrator' */
        if (mcb_pmsm_foc_sensorless_f_DWork.Integrator_IC_LOADING_b != 0U) {
          mcb_pmsm_foc_sensorless_f_DWork.Integrator_DSTATE_a =
            mcb_pmsm_foc_sensorless_f2837_B.UnitDelay_mw;
        }

        if (mcb_pmsm_foc_sensorless_f2837_B.LogicalOperator_n ||
            (mcb_pmsm_foc_sensorless_f_DWork.Integrator_PrevResetState_e != 0))
        {
          mcb_pmsm_foc_sensorless_f_DWork.Integrator_DSTATE_a =
            mcb_pmsm_foc_sensorless_f2837_B.UnitDelay_mw;
        }

        /* DiscreteIntegrator: '<S78>/Integrator' */
        mcb_pmsm_foc_sensorless_f2837_B.Integrator_c =
          mcb_pmsm_foc_sensorless_f_DWork.Integrator_DSTATE_a;

        /* Sum: '<S87>/Sum' */
        mcb_pmsm_foc_sensorless_f2837_B.Sum_kn =
          mcb_pmsm_foc_sensorless_f2837_B.PProdOut_a +
          mcb_pmsm_foc_sensorless_f2837_B.Integrator_c;

        /* Switch: '<S27>/Switch' */
        if (mcb_pmsm_foc_sensorless_f2837_B.DataStoreRead1_o) {
          /* Saturate: '<S85>/Saturation' */
          u0 = mcb_pmsm_foc_sensorless_f2837_B.Sum_kn;
          if (u0 > 1.0F) {
            /* Saturate: '<S85>/Saturation' */
            mcb_pmsm_foc_sensorless_f2837_B.Saturation_i = 1.0F;
          } else if (u0 < -1.0F) {
            /* Saturate: '<S85>/Saturation' */
            mcb_pmsm_foc_sensorless_f2837_B.Saturation_i = -1.0F;
          } else {
            /* Saturate: '<S85>/Saturation' */
            mcb_pmsm_foc_sensorless_f2837_B.Saturation_i = u0;
          }

          /* End of Saturate: '<S85>/Saturation' */

          /* Switch: '<S27>/Switch' */
          mcb_pmsm_foc_sensorless_f2837_B.Switch_lw =
            mcb_pmsm_foc_sensorless_f2837_B.Saturation_i;
        } else {
          /* DataStoreRead: '<S27>/Vd_OpenLoop' */
          mcb_pmsm_foc_sensorless_f2837_B.Vd_OpenLoop =
            mcb_pmsm_foc_sensorless_f_DWork.Speed_ref;

          /* Abs: '<S27>/Abs' */
          mcb_pmsm_foc_sensorless_f2837_B.Abs_f = fabsf
            (mcb_pmsm_foc_sensorless_f2837_B.Vd_OpenLoop);

          /* Saturate: '<S27>/Saturation' */
          u0 = mcb_pmsm_foc_sensorless_f2837_B.Abs_f;
          if (u0 > 0.5F) {
            /* Saturate: '<S27>/Saturation' */
            mcb_pmsm_foc_sensorless_f2837_B.Saturation_h = 0.5F;
          } else if (u0 < 0.15F) {
            /* Saturate: '<S27>/Saturation' */
            mcb_pmsm_foc_sensorless_f2837_B.Saturation_h = 0.15F;
          } else {
            /* Saturate: '<S27>/Saturation' */
            mcb_pmsm_foc_sensorless_f2837_B.Saturation_h = u0;
          }

          /* End of Saturate: '<S27>/Saturation' */

          /* Switch: '<S27>/Switch' */
          mcb_pmsm_foc_sensorless_f2837_B.Switch_lw =
            mcb_pmsm_foc_sensorless_f2837_B.Saturation_h;
        }

        /* End of Switch: '<S27>/Switch' */

        /* DataStoreRead: '<S29>/Data Store Read' */
        mcb_pmsm_foc_sensorless_f2837_B.DataStoreRead =
          mcb_pmsm_foc_sensorless_f_DWork.Udh;

        /* SignalConversion generated from: '<S29>/Selector' incorporates:
         *  Constant: '<S29>/Constant'
         */
        mcb_pmsm_foc_sensorless_f2837_B.TmpSignalConversionAtSelectorIn[0] = 0.0;
        mcb_pmsm_foc_sensorless_f2837_B.TmpSignalConversionAtSelectorIn[1] =
          mcb_pmsm_foc_sensorless_f2837_B.DataStoreRead;

        /* DataStoreRead: '<S29>/Data Store Read1' */
        mcb_pmsm_foc_sensorless_f2837_B.DataStoreRead1_e =
          mcb_pmsm_foc_sensorless_f_DWork.EstimatorSelector;

        /* MultiPortSwitch: '<S29>/Multiport Switch' */
        switch (mcb_pmsm_foc_sensorless_f2837_B.DataStoreRead1_e) {
         case 0:
          /* MultiPortSwitch: '<S29>/Multiport Switch' incorporates:
           *  Constant: '<S29>/Vd_origin'
           */
          mcb_pmsm_foc_sensorless_f2837_B.MultiportSwitch = 0UL;
          break;

         case 1:
          /* MultiPortSwitch: '<S29>/Multiport Switch' incorporates:
           *  Constant: '<S29>/Vd_origin'
           */
          mcb_pmsm_foc_sensorless_f2837_B.MultiportSwitch = 0UL;
          break;

         case 2:
          /* MultiPortSwitch: '<S29>/Multiport Switch' incorporates:
           *  Constant: '<S29>/Vd_origin'
           */
          mcb_pmsm_foc_sensorless_f2837_B.MultiportSwitch = 0UL;
          break;

         case 3:
          /* MultiPortSwitch: '<S29>/Multiport Switch' incorporates:
           *  Constant: '<S29>/Vd_origin'
           */
          mcb_pmsm_foc_sensorless_f2837_B.MultiportSwitch = 0UL;
          break;

         default:
          /* MultiPortSwitch: '<S29>/Multiport Switch' incorporates:
           *  Constant: '<S29>/Square Wave'
           */
          mcb_pmsm_foc_sensorless_f2837_B.MultiportSwitch = 1UL;
          break;
        }

        /* End of MultiPortSwitch: '<S29>/Multiport Switch' */

        /* Selector: '<S29>/Selector' */
        mcb_pmsm_foc_sensorless_f2837_B.Selector =
          mcb_pmsm_foc_sensorless_f2837_B.TmpSignalConversionAtSelectorIn
          [(int16_T)mcb_pmsm_foc_sensorless_f2837_B.MultiportSwitch];

        /* Sum: '<S29>/Sum' */
        mcb_pmsm_foc_sensorless_f2837_B.Sum_e = (real32_T)
          (mcb_pmsm_foc_sensorless_f2837_B.Switch_lw +
           mcb_pmsm_foc_sensorless_f2837_B.Selector);

        /* Switch: '<S32>/Switch' incorporates:
         *  Constant: '<S32>/Constant3'
         */
        mcb_pmsm_foc_sensorless_f2837_B.Switch_f = 0.95F;

        /* Product: '<S32>/Product' */
        mcb_pmsm_foc_sensorless_f2837_B.Product_bp = 0.9025F;

        /* Product: '<S33>/Product' */
        mcb_pmsm_foc_sensorless_f2837_B.Product_kt =
          mcb_pmsm_foc_sensorless_f2837_B.Sum_e *
          mcb_pmsm_foc_sensorless_f2837_B.Sum_e;

        /* Product: '<S33>/Product1' */
        mcb_pmsm_foc_sensorless_f2837_B.Product1_no =
          mcb_pmsm_foc_sensorless_f2837_B.Switch_h *
          mcb_pmsm_foc_sensorless_f2837_B.Switch_h;

        /* Sum: '<S33>/Sum1' */
        mcb_pmsm_foc_sensorless_f2837_B.Sum1_mh =
          mcb_pmsm_foc_sensorless_f2837_B.Product_kt +
          mcb_pmsm_foc_sensorless_f2837_B.Product1_no;

        /* Outputs for IfAction SubSystem: '<S26>/D-Q Equivalence' incorporates:
         *  ActionPort: '<S30>/Action Port'
         */
        /* If: '<S26>/If' incorporates:
         *  DataTypeConversion: '<S30>/Data Type Conversion'
         *  RelationalOperator: '<S30>/Relational Operator'
         */
        mcb_pmsm_foc_sensorless_f2837_B.RelationalOperator_e =
          (mcb_pmsm_foc_sensorless_f2837_B.Sum1_mh > 0.9025F);
        mcb_pmsm_foc_sensorless_f2837_B.DataTypeConversion_m =
          mcb_pmsm_foc_sensorless_f2837_B.RelationalOperator_e;

        /* If: '<S30>/If' incorporates:
         *  If: '<S26>/If'
         */
        if (mcb_pmsm_foc_sensorless_f2837_B.DataTypeConversion_m != 0U) {
          /* Outputs for IfAction SubSystem: '<S30>/Limiter' incorporates:
           *  ActionPort: '<S34>/Action Port'
           */
          /* Product: '<S34>/Product' */
          mcb_pmsm_foc_sensorless_f2837_B.Product_l[0] =
            mcb_pmsm_foc_sensorless_f2837_B.Sum_e * 0.95F;
          mcb_pmsm_foc_sensorless_f2837_B.Product_l[1] =
            mcb_pmsm_foc_sensorless_f2837_B.Switch_h * 0.95F;

          /* Sqrt: '<S34>/Square Root' */
          mcb_pmsm_foc_sensorless_f2837_B.SquareRoot = (real32_T)sqrt
            (mcb_pmsm_foc_sensorless_f2837_B.Sum1_mh);

          /* Switch: '<S34>/Switch' */
          if (mcb_pmsm_foc_sensorless_f2837_B.SquareRoot != 0.0F) {
            /* Switch: '<S34>/Switch' */
            mcb_pmsm_foc_sensorless_f2837_B.Switch_a =
              mcb_pmsm_foc_sensorless_f2837_B.SquareRoot;
          } else {
            /* Switch: '<S34>/Switch' incorporates:
             *  Constant: '<S34>/Constant'
             */
            mcb_pmsm_foc_sensorless_f2837_B.Switch_a = 1.0F;
          }

          /* End of Switch: '<S34>/Switch' */

          /* Product: '<S34>/Reciprocal' */
          mcb_pmsm_foc_sensorless_f2837_B.Reciprocal = 1.0F /
            mcb_pmsm_foc_sensorless_f2837_B.Switch_a;

          /* Merge: '<S26>/Merge' incorporates:
           *  Product: '<S34>/Product1'
           */
          mcb_pmsm_foc_sensorless_f2837_B.Merge_e[0] =
            mcb_pmsm_foc_sensorless_f2837_B.Product_l[0] *
            mcb_pmsm_foc_sensorless_f2837_B.Reciprocal;
          mcb_pmsm_foc_sensorless_f2837_B.Merge_e[1] =
            mcb_pmsm_foc_sensorless_f2837_B.Product_l[1] *
            mcb_pmsm_foc_sensorless_f2837_B.Reciprocal;

          /* End of Outputs for SubSystem: '<S30>/Limiter' */
        } else {
          /* Outputs for IfAction SubSystem: '<S30>/Passthrough' incorporates:
           *  ActionPort: '<S35>/Action Port'
           */
          /* Merge: '<S26>/Merge' incorporates:
           *  SignalConversion generated from: '<S35>/dqRef'
           */
          mcb_pmsm_foc_sensorless_f2837_B.Merge_e[0] =
            mcb_pmsm_foc_sensorless_f2837_B.Sum_e;
          mcb_pmsm_foc_sensorless_f2837_B.Merge_e[1] =
            mcb_pmsm_foc_sensorless_f2837_B.Switch_h;

          /* End of Outputs for SubSystem: '<S30>/Passthrough' */
        }

        /* End of If: '<S30>/If' */
        /* End of Outputs for SubSystem: '<S26>/D-Q Equivalence' */

        /* RelationalOperator: '<S150>/Compare' incorporates:
         *  Constant: '<S150>/Constant'
         */
        mcb_pmsm_foc_sensorless_f2837_B.Compare_p =
          (mcb_pmsm_foc_sensorless_f2837_B.Switch_ial < 0.0F);

        /* DataTypeConversion: '<S149>/Data Type Conversion' */
        mcb_pmsm_foc_sensorless_f2837_B.DataTypeConversion_l =
          mcb_pmsm_foc_sensorless_f2837_B.Compare_p;

        /* If: '<S149>/If' */
        if (mcb_pmsm_foc_sensorless_f2837_B.DataTypeConversion_l > 0U) {
          /* Outputs for IfAction SubSystem: '<S149>/If Action Subsystem' incorporates:
           *  ActionPort: '<S151>/Action Port'
           */
          mcb_pmsm__IfActionSubsystem(mcb_pmsm_foc_sensorless_f2837_B.Switch_ial,
            &mcb_pmsm_foc_sensorless_f2837_B.Merge_pu,
            &mcb_pmsm_foc_sensorless_f2837_B.IfActionSubsystem);

          /* End of Outputs for SubSystem: '<S149>/If Action Subsystem' */
        } else {
          /* Outputs for IfAction SubSystem: '<S149>/If Action Subsystem1' incorporates:
           *  ActionPort: '<S152>/Action Port'
           */
          mcb_pmsm_IfActionSubsystem1(mcb_pmsm_foc_sensorless_f2837_B.Switch_ial,
            &mcb_pmsm_foc_sensorless_f2837_B.Merge_pu,
            &mcb_pmsm_foc_sensorless_f2837_B.IfActionSubsystem1);

          /* End of Outputs for SubSystem: '<S149>/If Action Subsystem1' */
        }

        /* End of If: '<S149>/If' */

        /* Gain: '<S146>/indexing' */
        mcb_pmsm_foc_sensorless_f2837_B.indexing_g = 800.0F *
          mcb_pmsm_foc_sensorless_f2837_B.Merge_pu;

        /* DataTypeConversion: '<S146>/Get_Integer' */
        mcb_pmsm_foc_sensorless_f2837_B.Get_Integer_o = (uint16_T)
          mcb_pmsm_foc_sensorless_f2837_B.indexing_g;

        /* Sum: '<S146>/Sum' incorporates:
         *  Constant: '<S146>/offset'
         */
        Sum_p = mcb_pmsm_foc_sensorless_f2837_B.Get_Integer_o + 1UL;
        mcb_pmsm_foc_sensorless_f2837_B.Sum_ke[0] = Sum_p;

        /* Selector: '<S146>/Lookup' incorporates:
         *  Constant: '<S146>/sine_table_values'
         */
        mcb_pmsm_foc_sensorless_f2837_B.Lookup_k[0] =
          mcb_pmsm_foc_sensorless__ConstP.pooled46[(int16_T)Sum_p];

        /* Sum: '<S146>/Sum' */
        Sum_p = mcb_pmsm_foc_sensorless_f2837_B.Get_Integer_o;
        mcb_pmsm_foc_sensorless_f2837_B.Sum_ke[1] = Sum_p;

        /* Selector: '<S146>/Lookup' incorporates:
         *  Constant: '<S146>/sine_table_values'
         */
        mcb_pmsm_foc_sensorless_f2837_B.Lookup_k[1] =
          mcb_pmsm_foc_sensorless__ConstP.pooled46[(int16_T)Sum_p];

        /* Sum: '<S146>/Sum' incorporates:
         *  Constant: '<S146>/offset'
         */
        Sum_p = mcb_pmsm_foc_sensorless_f2837_B.Get_Integer_o + 201UL;
        mcb_pmsm_foc_sensorless_f2837_B.Sum_ke[2] = Sum_p;

        /* Selector: '<S146>/Lookup' incorporates:
         *  Constant: '<S146>/sine_table_values'
         */
        mcb_pmsm_foc_sensorless_f2837_B.Lookup_k[2] =
          mcb_pmsm_foc_sensorless__ConstP.pooled46[(int16_T)Sum_p];

        /* Sum: '<S146>/Sum' incorporates:
         *  Constant: '<S146>/offset'
         */
        Sum_p = mcb_pmsm_foc_sensorless_f2837_B.Get_Integer_o + 200UL;
        mcb_pmsm_foc_sensorless_f2837_B.Sum_ke[3] = Sum_p;

        /* Selector: '<S146>/Lookup' incorporates:
         *  Constant: '<S146>/sine_table_values'
         */
        mcb_pmsm_foc_sensorless_f2837_B.Lookup_k[3] =
          mcb_pmsm_foc_sensorless__ConstP.pooled46[(int16_T)Sum_p];

        /* Sum: '<S148>/Sum3' */
        mcb_pmsm_foc_sensorless_f2837_B.Sum3_j =
          mcb_pmsm_foc_sensorless_f2837_B.Lookup_k[0] -
          mcb_pmsm_foc_sensorless_f2837_B.Lookup_k[1];

        /* DataTypeConversion: '<S146>/Data Type Conversion1' */
        mcb_pmsm_foc_sensorless_f2837_B.DataTypeConversion1_m =
          mcb_pmsm_foc_sensorless_f2837_B.Get_Integer_o;

        /* Sum: '<S146>/Sum2' */
        mcb_pmsm_foc_sensorless_f2837_B.Sum2_a =
          mcb_pmsm_foc_sensorless_f2837_B.indexing_g -
          mcb_pmsm_foc_sensorless_f2837_B.DataTypeConversion1_m;

        /* Product: '<S148>/Product' */
        mcb_pmsm_foc_sensorless_f2837_B.Product_mz =
          mcb_pmsm_foc_sensorless_f2837_B.Sum3_j *
          mcb_pmsm_foc_sensorless_f2837_B.Sum2_a;

        /* Sum: '<S148>/Sum4' */
        mcb_pmsm_foc_sensorless_f2837_B.Sum4_f =
          mcb_pmsm_foc_sensorless_f2837_B.Product_mz +
          mcb_pmsm_foc_sensorless_f2837_B.Lookup_k[1];

        /* Sum: '<S148>/Sum5' */
        mcb_pmsm_foc_sensorless_f2837_B.Sum5_g =
          mcb_pmsm_foc_sensorless_f2837_B.Lookup_k[2] -
          mcb_pmsm_foc_sensorless_f2837_B.Lookup_k[3];

        /* Product: '<S148>/Product1' */
        mcb_pmsm_foc_sensorless_f2837_B.Product1_d =
          mcb_pmsm_foc_sensorless_f2837_B.Sum5_g *
          mcb_pmsm_foc_sensorless_f2837_B.Sum2_a;

        /* Sum: '<S148>/Sum6' */
        mcb_pmsm_foc_sensorless_f2837_B.Sum6_f =
          mcb_pmsm_foc_sensorless_f2837_B.Product1_d +
          mcb_pmsm_foc_sensorless_f2837_B.Lookup_k[3];

        /* Outputs for Atomic SubSystem: '<S20>/Two inputs CRL' */
        /* Product: '<S147>/qcos' */
        mcb_pmsm_foc_sensorless_f2837_B.qcos =
          mcb_pmsm_foc_sensorless_f2837_B.Merge_e[1] *
          mcb_pmsm_foc_sensorless_f2837_B.Sum6_f;

        /* Product: '<S147>/dsin' */
        mcb_pmsm_foc_sensorless_f2837_B.dsin =
          mcb_pmsm_foc_sensorless_f2837_B.Merge_e[0] *
          mcb_pmsm_foc_sensorless_f2837_B.Sum4_f;

        /* Sum: '<S147>/sum_beta' */
        mcb_pmsm_foc_sensorless_f2837_B.sum_beta =
          mcb_pmsm_foc_sensorless_f2837_B.qcos +
          mcb_pmsm_foc_sensorless_f2837_B.dsin;

        /* Product: '<S147>/dcos' */
        mcb_pmsm_foc_sensorless_f2837_B.dcos =
          mcb_pmsm_foc_sensorless_f2837_B.Merge_e[0] *
          mcb_pmsm_foc_sensorless_f2837_B.Sum6_f;

        /* Product: '<S147>/qsin' */
        mcb_pmsm_foc_sensorless_f2837_B.qsin =
          mcb_pmsm_foc_sensorless_f2837_B.Merge_e[1] *
          mcb_pmsm_foc_sensorless_f2837_B.Sum4_f;

        /* Sum: '<S147>/sum_alpha' */
        mcb_pmsm_foc_sensorless_f2837_B.sum_alpha =
          mcb_pmsm_foc_sensorless_f2837_B.dcos -
          mcb_pmsm_foc_sensorless_f2837_B.qsin;

        /* Switch: '<S153>/Switch' */
        mcb_pmsm_foc_sensorless_f2837_B.Switch_ih[0] =
          mcb_pmsm_foc_sensorless_f2837_B.sum_alpha;
        mcb_pmsm_foc_sensorless_f2837_B.Switch_ih[1] =
          mcb_pmsm_foc_sensorless_f2837_B.sum_beta;

        /* AlgorithmDescriptorDelegate generated from: '<S147>/a16' */
        mcb_pmsm_foc_sensorless_f2837_B.algDD_o1 =
          mcb_pmsm_foc_sensorless_f2837_B.Switch_ih[0];

        /* AlgorithmDescriptorDelegate generated from: '<S147>/a16' */
        mcb_pmsm_foc_sensorless_f2837_B.algDD_o2 =
          mcb_pmsm_foc_sensorless_f2837_B.Switch_ih[1];

        /* End of Outputs for SubSystem: '<S20>/Two inputs CRL' */

        /* DeadZone: '<S71>/DeadZone' */
        if (mcb_pmsm_foc_sensorless_f2837_B.Sum_kn > 1.0F) {
          /* DeadZone: '<S71>/DeadZone' */
          mcb_pmsm_foc_sensorless_f2837_B.DeadZone =
            mcb_pmsm_foc_sensorless_f2837_B.Sum_kn - 1.0F;
        } else if (mcb_pmsm_foc_sensorless_f2837_B.Sum_kn >= -1.0F) {
          /* DeadZone: '<S71>/DeadZone' */
          mcb_pmsm_foc_sensorless_f2837_B.DeadZone = 0.0F;
        } else {
          /* DeadZone: '<S71>/DeadZone' */
          mcb_pmsm_foc_sensorless_f2837_B.DeadZone =
            mcb_pmsm_foc_sensorless_f2837_B.Sum_kn - -1.0F;
        }

        /* End of DeadZone: '<S71>/DeadZone' */

        /* RelationalOperator: '<S69>/Relational Operator' incorporates:
         *  Constant: '<S69>/Clamping_zero'
         */
        mcb_pmsm_foc_sensorless_f2837_B.RelationalOperator =
          (mcb_pmsm_foc_sensorless_f2837_B.DeadZone != 0.0F);

        /* RelationalOperator: '<S69>/fix for DT propagation issue' incorporates:
         *  Constant: '<S69>/Clamping_zero'
         */
        mcb_pmsm_foc_sensorless_f2837_B.fixforDTpropagationissue =
          (mcb_pmsm_foc_sensorless_f2837_B.DeadZone > 0.0F);

        /* Switch: '<S69>/Switch1' */
        if (mcb_pmsm_foc_sensorless_f2837_B.fixforDTpropagationissue) {
          /* Switch: '<S69>/Switch1' incorporates:
           *  Constant: '<S69>/Constant'
           */
          mcb_pmsm_foc_sensorless_f2837_B.Switch1_m = 1;
        } else {
          /* Switch: '<S69>/Switch1' incorporates:
           *  Constant: '<S69>/Constant2'
           */
          mcb_pmsm_foc_sensorless_f2837_B.Switch1_m = -1;
        }

        /* End of Switch: '<S69>/Switch1' */

        /* Product: '<S75>/IProd Out' incorporates:
         *  Constant: '<S27>/Ki'
         */
        mcb_pmsm_foc_sensorless_f2837_B.IProdOut =
          mcb_pmsm_foc_sensorless_f2837_B.Sum_km * 5.0E-6F;

        /* RelationalOperator: '<S69>/fix for DT propagation issue1' incorporates:
         *  Constant: '<S69>/Clamping_zero'
         */
        mcb_pmsm_foc_sensorless_f2837_B.fixforDTpropagationissue1 =
          (mcb_pmsm_foc_sensorless_f2837_B.IProdOut > 0.0F);

        /* Switch: '<S69>/Switch2' */
        if (mcb_pmsm_foc_sensorless_f2837_B.fixforDTpropagationissue1) {
          /* Switch: '<S69>/Switch2' incorporates:
           *  Constant: '<S69>/Constant3'
           */
          mcb_pmsm_foc_sensorless_f2837_B.Switch2_p = 1;
        } else {
          /* Switch: '<S69>/Switch2' incorporates:
           *  Constant: '<S69>/Constant4'
           */
          mcb_pmsm_foc_sensorless_f2837_B.Switch2_p = -1;
        }

        /* End of Switch: '<S69>/Switch2' */

        /* RelationalOperator: '<S69>/Equal1' incorporates:
         *  Switch: '<S69>/Switch1'
         *  Switch: '<S69>/Switch2'
         */
        mcb_pmsm_foc_sensorless_f2837_B.Equal1 =
          (mcb_pmsm_foc_sensorless_f2837_B.Switch1_m ==
           mcb_pmsm_foc_sensorless_f2837_B.Switch2_p);

        /* Logic: '<S69>/AND3' */
        mcb_pmsm_foc_sensorless_f2837_B.AND3 =
          (mcb_pmsm_foc_sensorless_f2837_B.RelationalOperator &&
           mcb_pmsm_foc_sensorless_f2837_B.Equal1);

        /* Switch: '<S69>/Switch' */
        if (mcb_pmsm_foc_sensorless_f2837_B.AND3) {
          /* Switch: '<S69>/Switch' incorporates:
           *  Constant: '<S69>/Constant1'
           */
          mcb_pmsm_foc_sensorless_f2837_B.Switch_fm = 0.0F;
        } else {
          /* Switch: '<S69>/Switch' */
          mcb_pmsm_foc_sensorless_f2837_B.Switch_fm =
            mcb_pmsm_foc_sensorless_f2837_B.IProdOut;
        }

        /* End of Switch: '<S69>/Switch' */

        /* DeadZone: '<S122>/DeadZone' */
        if (mcb_pmsm_foc_sensorless_f2837_B.Sum_l5 > 1.0F) {
          /* DeadZone: '<S122>/DeadZone' */
          mcb_pmsm_foc_sensorless_f2837_B.DeadZone_d =
            mcb_pmsm_foc_sensorless_f2837_B.Sum_l5 - 1.0F;
        } else if (mcb_pmsm_foc_sensorless_f2837_B.Sum_l5 >= -1.0F) {
          /* DeadZone: '<S122>/DeadZone' */
          mcb_pmsm_foc_sensorless_f2837_B.DeadZone_d = 0.0F;
        } else {
          /* DeadZone: '<S122>/DeadZone' */
          mcb_pmsm_foc_sensorless_f2837_B.DeadZone_d =
            mcb_pmsm_foc_sensorless_f2837_B.Sum_l5 - -1.0F;
        }

        /* End of DeadZone: '<S122>/DeadZone' */

        /* RelationalOperator: '<S120>/Relational Operator' incorporates:
         *  Constant: '<S120>/Clamping_zero'
         */
        mcb_pmsm_foc_sensorless_f2837_B.RelationalOperator_c =
          (mcb_pmsm_foc_sensorless_f2837_B.DeadZone_d != 0.0F);

        /* RelationalOperator: '<S120>/fix for DT propagation issue' incorporates:
         *  Constant: '<S120>/Clamping_zero'
         */
        mcb_pmsm_foc_sensorless_f2837_B.fixforDTpropagationissue_p =
          (mcb_pmsm_foc_sensorless_f2837_B.DeadZone_d > 0.0F);

        /* Switch: '<S120>/Switch1' */
        if (mcb_pmsm_foc_sensorless_f2837_B.fixforDTpropagationissue_p) {
          /* Switch: '<S120>/Switch1' incorporates:
           *  Constant: '<S120>/Constant'
           */
          mcb_pmsm_foc_sensorless_f2837_B.Switch1_l = 1;
        } else {
          /* Switch: '<S120>/Switch1' incorporates:
           *  Constant: '<S120>/Constant2'
           */
          mcb_pmsm_foc_sensorless_f2837_B.Switch1_l = -1;
        }

        /* End of Switch: '<S120>/Switch1' */

        /* Product: '<S126>/IProd Out' incorporates:
         *  Constant: '<S28>/Ki'
         */
        mcb_pmsm_foc_sensorless_f2837_B.IProdOut_h =
          mcb_pmsm_foc_sensorless_f2837_B.Sum_g * 5.0E-6F;

        /* RelationalOperator: '<S120>/fix for DT propagation issue1' incorporates:
         *  Constant: '<S120>/Clamping_zero'
         */
        mcb_pmsm_foc_sensorless_f2837_B.fixforDTpropagationissue1_o =
          (mcb_pmsm_foc_sensorless_f2837_B.IProdOut_h > 0.0F);

        /* Switch: '<S120>/Switch2' */
        if (mcb_pmsm_foc_sensorless_f2837_B.fixforDTpropagationissue1_o) {
          /* Switch: '<S120>/Switch2' incorporates:
           *  Constant: '<S120>/Constant3'
           */
          mcb_pmsm_foc_sensorless_f2837_B.Switch2_k = 1;
        } else {
          /* Switch: '<S120>/Switch2' incorporates:
           *  Constant: '<S120>/Constant4'
           */
          mcb_pmsm_foc_sensorless_f2837_B.Switch2_k = -1;
        }

        /* End of Switch: '<S120>/Switch2' */

        /* RelationalOperator: '<S120>/Equal1' incorporates:
         *  Switch: '<S120>/Switch1'
         *  Switch: '<S120>/Switch2'
         */
        mcb_pmsm_foc_sensorless_f2837_B.Equal1_b =
          (mcb_pmsm_foc_sensorless_f2837_B.Switch1_l ==
           mcb_pmsm_foc_sensorless_f2837_B.Switch2_k);

        /* Logic: '<S120>/AND3' */
        mcb_pmsm_foc_sensorless_f2837_B.AND3_b =
          (mcb_pmsm_foc_sensorless_f2837_B.RelationalOperator_c &&
           mcb_pmsm_foc_sensorless_f2837_B.Equal1_b);

        /* Switch: '<S120>/Switch' */
        if (mcb_pmsm_foc_sensorless_f2837_B.AND3_b) {
          /* Switch: '<S120>/Switch' incorporates:
           *  Constant: '<S120>/Constant1'
           */
          mcb_pmsm_foc_sensorless_f2837_B.Switch_m = 0.0F;
        } else {
          /* Switch: '<S120>/Switch' */
          mcb_pmsm_foc_sensorless_f2837_B.Switch_m =
            mcb_pmsm_foc_sensorless_f2837_B.IProdOut_h;
        }

        /* End of Switch: '<S120>/Switch' */

        /* DataStoreWrite: '<S175>/Data Store Write' incorporates:
         *  Constant: '<S175>/EstimatorSelector'
         */
        mcb_pmsm_foc_sensorless_f_DWork.EstimatorSelector = 2UL;

        /* DataStoreRead: '<S175>/Data Store Read' */
        mcb_pmsm_foc_sensorless_f2837_B.DataStoreRead_i = 2UL;

        /* UnitDelay: '<S406>/Output' */
        mcb_pmsm_foc_sensorless_f2837_B.Output =
          mcb_pmsm_foc_sensorless_f_DWork.Output_DSTATE;

        /* DataStoreRead: '<S11>/Data Store Read1' */
        mcb_pmsm_foc_sensorless_f2837_B.DataStoreRead1_p =
          mcb_pmsm_foc_sensorless_f_DWork.Speed_ref;

        /* DataTypeConversion: '<S11>/Cast To Single' */
        mcb_pmsm_foc_sensorless_f2837_B.CastToSingle =
          mcb_pmsm_foc_sensorless_f2837_B.RT8;

        /* SignalConversion generated from: '<S11>/Selector' */
        mcb_pmsm_foc_sensorless_f2837_B.TmpSignalConversionAtSelector_j[0] =
          mcb_pmsm_foc_sensorless_f2837_B.DataStoreRead1_p;
        mcb_pmsm_foc_sensorless_f2837_B.TmpSignalConversionAtSelector_j[1] =
          mcb_pmsm_foc_sensorless_f2837_B.Merge1_h;
        mcb_pmsm_foc_sensorless_f2837_B.TmpSignalConversionAtSelector_j[2] =
          mcb_pmsm_foc_sensorless_f2837_B.PU_Conversion[0];
        mcb_pmsm_foc_sensorless_f2837_B.TmpSignalConversionAtSelector_j[3] =
          mcb_pmsm_foc_sensorless_f2837_B.PU_Conversion[1];
        mcb_pmsm_foc_sensorless_f2837_B.TmpSignalConversionAtSelector_j[4] =
          mcb_pmsm_foc_sensorless_f2837_B.RT2[0];
        mcb_pmsm_foc_sensorless_f2837_B.TmpSignalConversionAtSelector_j[5] =
          mcb_pmsm_foc_sensorless_f2837_B.algDD_o1_h;
        mcb_pmsm_foc_sensorless_f2837_B.TmpSignalConversionAtSelector_j[6] =
          mcb_pmsm_foc_sensorless_f2837_B.RT2[1];
        mcb_pmsm_foc_sensorless_f2837_B.TmpSignalConversionAtSelector_j[7] =
          mcb_pmsm_foc_sensorless_f2837_B.algDD_o2_h;
        mcb_pmsm_foc_sensorless_f2837_B.TmpSignalConversionAtSelector_j[8] =
          mcb_pmsm_foc_sensorless_f2837_B.Merge_b;
        mcb_pmsm_foc_sensorless_f2837_B.TmpSignalConversionAtSelector_j[9] =
          mcb_pmsm_foc_sensorless_f2837_B.CastToSingle;
        mcb_pmsm_foc_sensorless_f2837_B.TmpSignalConversionAtSelector_j[10] =
          0.0F;
        mcb_pmsm_foc_sensorless_f2837_B.TmpSignalConversionAtSelector_j[11] =
          mcb_pmsm_foc_sensorless_f2837_B.Sum_mb;
        mcb_pmsm_foc_sensorless_f2837_B.TmpSignalConversionAtSelector_j[12] =
          mcb_pmsm_foc_sensorless_f2837_B.RT7;
        mcb_pmsm_foc_sensorless_f2837_B.TmpSignalConversionAtSelector_j[13] =
          mcb_pmsm_foc_sensorless_f2837_B.Saturation_g;
        mcb_pmsm_foc_sensorless_f2837_B.TmpSignalConversionAtSelector_j[14] =
          mcb_pmsm_foc_sensorless_f2837_B.RT6;

        /* DataStoreRead: '<S11>/Data Store Read' */
        mcb_pmsm_foc_sensorless_f2837_B.DataStoreRead_o =
          mcb_pmsm_foc_sensorless_f_DWork.Debug_signals;

        /* MultiPortSwitch: '<S11>/Multiport Switch' */
        switch (mcb_pmsm_foc_sensorless_f2837_B.DataStoreRead_o) {
         case 1:
          /* MultiPortSwitch: '<S11>/Multiport Switch' incorporates:
           *  Constant: '<S11>/speed_control'
           */
          mcb_pmsm_foc_sensorless_f2837_B.MultiportSwitch_n[0] = 1U;
          mcb_pmsm_foc_sensorless_f2837_B.MultiportSwitch_n[1] = 2U;
          break;

         case 2:
          /* MultiPortSwitch: '<S11>/Multiport Switch' incorporates:
           *  Constant: '<S11>/Id_control'
           */
          mcb_pmsm_foc_sensorless_f2837_B.MultiportSwitch_n[0] = 5U;
          mcb_pmsm_foc_sensorless_f2837_B.MultiportSwitch_n[1] = 6U;
          break;

         case 3:
          /* MultiPortSwitch: '<S11>/Multiport Switch' incorporates:
           *  Constant: '<S11>/Iq_control'
           */
          mcb_pmsm_foc_sensorless_f2837_B.MultiportSwitch_n[0] = 7U;
          mcb_pmsm_foc_sensorless_f2837_B.MultiportSwitch_n[1] = 8U;
          break;

         case 4:
          /* MultiPortSwitch: '<S11>/Multiport Switch' incorporates:
           *  Constant: '<S11>/Iab'
           */
          mcb_pmsm_foc_sensorless_f2837_B.MultiportSwitch_n[0] = 3U;
          mcb_pmsm_foc_sensorless_f2837_B.MultiportSwitch_n[1] = 4U;
          break;

         case 5:
          /* MultiPortSwitch: '<S11>/Multiport Switch' incorporates:
           *  Constant: '<S11>/State_Vq'
           */
          mcb_pmsm_foc_sensorless_f2837_B.MultiportSwitch_n[0] = 10U;
          mcb_pmsm_foc_sensorless_f2837_B.MultiportSwitch_n[1] = 11U;
          break;

         case 6:
          /* MultiPortSwitch: '<S11>/Multiport Switch' incorporates:
           *  Constant: '<S11>/Spead_Meas_virtual'
           */
          mcb_pmsm_foc_sensorless_f2837_B.MultiportSwitch_n[0] = 12U;
          mcb_pmsm_foc_sensorless_f2837_B.MultiportSwitch_n[1] = 13U;
          break;

         default:
          /* MultiPortSwitch: '<S11>/Multiport Switch' incorporates:
           *  Constant: '<S11>/Pos_Meas_virtual'
           */
          mcb_pmsm_foc_sensorless_f2837_B.MultiportSwitch_n[0] = 14U;
          mcb_pmsm_foc_sensorless_f2837_B.MultiportSwitch_n[1] = 15U;
          break;
        }

        /* End of MultiPortSwitch: '<S11>/Multiport Switch' */

        /* Selector: '<S11>/Selector' */
        mcb_pmsm_foc_sensorless_f2837_B.Selector_o[0] =
          mcb_pmsm_foc_sensorless_f2837_B.TmpSignalConversionAtSelector_j
          [(int16_T)mcb_pmsm_foc_sensorless_f2837_B.MultiportSwitch_n[0] - 1];
        mcb_pmsm_foc_sensorless_f2837_B.Selector_o[1] =
          mcb_pmsm_foc_sensorless_f2837_B.TmpSignalConversionAtSelector_j
          [(int16_T)mcb_pmsm_foc_sensorless_f2837_B.MultiportSwitch_n[1] - 1];

        /* S-Function (any2byte_svd): '<S405>/Byte Pack' */

        /* Pack: <S405>/Byte Pack */
        {
          uint32_T MW_outputPortOffset = 0;
          uint32_T MW_inputPortWidth = 0;
          uint32_T MW_remainder1 = 0;

          /* Packed output data type - uint32_T */
          /* Packing the values of Input 1 */
          /* Input data type - real32_T, size - 2 */
          {
            MW_inputPortWidth = 2 * sizeof(real32_T);
            memcpy((uint16_T*)&mcb_pmsm_foc_sensorless_f2837_B.BytePack[0] +
                   MW_outputPortOffset, (uint16_T*)
                   &mcb_pmsm_foc_sensorless_f2837_B.Selector_o[0],
                   MW_inputPortWidth);
          }
        }

        /* If: '<S403>/If' */
        if (mcb_pmsm_foc_sensorless_f2837_B.Output == 0U) {
          /* Outputs for IfAction SubSystem: '<S403>/Start' incorporates:
           *  ActionPort: '<S409>/Action Port'
           */
          /* Merge: '<S403>/Merge' incorporates:
           *  Constant: '<S409>/Start'
           *  SignalConversion generated from: '<S409>/Data_out'
           */
          mcb_pmsm_foc_sensorless_f2837_B.SCI_Tx_Data[0] = 1397969747UL;

          /* SignalConversion generated from: '<S409>/Data' */
          Sum_p = mcb_pmsm_foc_sensorless_f2837_B.BytePack[0];

          /* End of Outputs for SubSystem: '<S403>/Start' */
          mcb_pmsm_foc_sensorless_f2837_B.Data_fw[0] = Sum_p;

          /* Outputs for IfAction SubSystem: '<S403>/Start' incorporates:
           *  ActionPort: '<S409>/Action Port'
           */
          /* Merge: '<S403>/Merge' incorporates:
           *  SignalConversion generated from: '<S409>/Data_out'
           */
          mcb_pmsm_foc_sensorless_f2837_B.SCI_Tx_Data[1] = Sum_p;

          /* SignalConversion generated from: '<S409>/Data' */
          Sum_p = mcb_pmsm_foc_sensorless_f2837_B.BytePack[1];

          /* End of Outputs for SubSystem: '<S403>/Start' */
          mcb_pmsm_foc_sensorless_f2837_B.Data_fw[1] = Sum_p;

          /* Outputs for IfAction SubSystem: '<S403>/Start' incorporates:
           *  ActionPort: '<S409>/Action Port'
           */
          /* Merge: '<S403>/Merge' incorporates:
           *  SignalConversion generated from: '<S409>/Data_out'
           */
          mcb_pmsm_foc_sensorless_f2837_B.SCI_Tx_Data[2] = Sum_p;

          /* Merge: '<S403>/Merge1' incorporates:
           *  Bias: '<S409>/Bias'
           */
          mcb_pmsm_foc_sensorless_f2837_B.SCI_Tx_Iteration =
            mcb_pmsm_foc_sensorless__ConstB.Width + 1UL;

          /* End of Outputs for SubSystem: '<S403>/Start' */
        } else if (mcb_pmsm_foc_sensorless_f2837_B.Output == 599U) {
          /* Outputs for IfAction SubSystem: '<S403>/End' incorporates:
           *  ActionPort: '<S408>/Action Port'
           */
          /* SignalConversion generated from: '<S408>/Data' */
          Sum_p = mcb_pmsm_foc_sensorless_f2837_B.BytePack[0];

          /* End of Outputs for SubSystem: '<S403>/End' */
          mcb_pmsm_foc_sensorless_f2837_B.Data_f[0] = Sum_p;

          /* Outputs for IfAction SubSystem: '<S403>/End' incorporates:
           *  ActionPort: '<S408>/Action Port'
           */
          /* Merge: '<S403>/Merge' incorporates:
           *  SignalConversion generated from: '<S408>/Data_out'
           */
          mcb_pmsm_foc_sensorless_f2837_B.SCI_Tx_Data[0] = Sum_p;

          /* SignalConversion generated from: '<S408>/Data' */
          Sum_p = mcb_pmsm_foc_sensorless_f2837_B.BytePack[1];

          /* End of Outputs for SubSystem: '<S403>/End' */
          mcb_pmsm_foc_sensorless_f2837_B.Data_f[1] = Sum_p;

          /* Outputs for IfAction SubSystem: '<S403>/End' incorporates:
           *  ActionPort: '<S408>/Action Port'
           */
          /* Merge: '<S403>/Merge' incorporates:
           *  Constant: '<S408>/End'
           *  SignalConversion generated from: '<S408>/Data_out'
           */
          mcb_pmsm_foc_sensorless_f2837_B.SCI_Tx_Data[1] = Sum_p;
          mcb_pmsm_foc_sensorless_f2837_B.SCI_Tx_Data[2] = 1162167621UL;

          /* Merge: '<S403>/Merge1' incorporates:
           *  Bias: '<S408>/Bias'
           */
          mcb_pmsm_foc_sensorless_f2837_B.SCI_Tx_Iteration =
            mcb_pmsm_foc_sensorless__ConstB.Width + 1UL;

          /* End of Outputs for SubSystem: '<S403>/End' */
        } else {
          /* Outputs for IfAction SubSystem: '<S403>/Data' incorporates:
           *  ActionPort: '<S407>/Action Port'
           */
          /* SignalConversion generated from: '<S407>/Data' */
          Sum_p = mcb_pmsm_foc_sensorless_f2837_B.BytePack[0];

          /* End of Outputs for SubSystem: '<S403>/Data' */
          mcb_pmsm_foc_sensorless_f2837_B.Data[0] = Sum_p;

          /* Outputs for IfAction SubSystem: '<S403>/Data' incorporates:
           *  ActionPort: '<S407>/Action Port'
           */
          /* Merge: '<S403>/Merge' incorporates:
           *  SignalConversion generated from: '<S407>/Data_out'
           */
          mcb_pmsm_foc_sensorless_f2837_B.SCI_Tx_Data[0] = Sum_p;

          /* SignalConversion generated from: '<S407>/Data' */
          Sum_p = mcb_pmsm_foc_sensorless_f2837_B.BytePack[1];

          /* End of Outputs for SubSystem: '<S403>/Data' */
          mcb_pmsm_foc_sensorless_f2837_B.Data[1] = Sum_p;

          /* Outputs for IfAction SubSystem: '<S403>/Data' incorporates:
           *  ActionPort: '<S407>/Action Port'
           */
          /* Merge: '<S403>/Merge' incorporates:
           *  Constant: '<S407>/Dummy'
           *  SignalConversion generated from: '<S407>/Data_out'
           */
          mcb_pmsm_foc_sensorless_f2837_B.SCI_Tx_Data[1] = Sum_p;
          mcb_pmsm_foc_sensorless_f2837_B.SCI_Tx_Data[2] = 0UL;

          /* Merge: '<S403>/Merge1' incorporates:
           *  SignalConversion generated from: '<S407>/Data_width'
           */
          mcb_pmsm_foc_sensorless_f2837_B.SCI_Tx_Iteration =
            mcb_pmsm_foc_sensorless__ConstB.Width;

          /* End of Outputs for SubSystem: '<S403>/Data' */
        }

        /* End of If: '<S403>/If' */

        /* Outputs for Iterator SubSystem: '<S401>/While Iterator Subsystem' incorporates:
         *  WhileIterator: '<S404>/While Iterator'
         */
        s404_iter = 1;
        do {
          mcb_pmsm_foc_sensorless_f2837_B.WhileIterator = s404_iter;
          mcb_pmsm_foc_sensorless_f2837_B.IndexVector =
            mcb_pmsm_foc_sensorless_f2837_B.SCI_Tx_Data[mcb_pmsm_foc_sensorless_f2837_B.WhileIterator
            - 1];

          {
            if (checkSCITransmitInProgressA != 1U) {
              checkSCITransmitInProgressA = 1U;
              int16_T errFlgHeader = NOERROR;
              int16_T errFlgData = NOERROR;
              int16_T errFlgTail = NOERROR;
              errFlgData = scia_xmit((unsigned char*)
                &mcb_pmsm_foc_sensorless_f2837_B.IndexVector, 4, 4);
              checkSCITransmitInProgressA = 0U;
            }
          }

          mcb_pmsm_foc_sensorless_f2837_B.Add_c =
            mcb_pmsm_foc_sensorless_f2837_B.SCI_Tx_Iteration - (uint32_T)
            mcb_pmsm_foc_sensorless_f2837_B.WhileIterator;
          s404_iter++;
        } while (mcb_pmsm_foc_sensorless_f2837_B.Add_c != 0UL);

        /* End of Outputs for SubSystem: '<S401>/While Iterator Subsystem' */

        /* Sum: '<S410>/FixPt Sum1' incorporates:
         *  Constant: '<S410>/FixPt Constant'
         */
        mcb_pmsm_foc_sensorless_f2837_B.FixPtSum1 =
          mcb_pmsm_foc_sensorless_f2837_B.Output + 1U;

        /* Switch: '<S411>/FixPt Switch' */
        if (mcb_pmsm_foc_sensorless_f2837_B.FixPtSum1 > 599U) {
          /* Switch: '<S411>/FixPt Switch' incorporates:
           *  Constant: '<S411>/Constant'
           */
          mcb_pmsm_foc_sensorless_f2837_B.FixPtSwitch = 0U;
        } else {
          /* Switch: '<S411>/FixPt Switch' */
          mcb_pmsm_foc_sensorless_f2837_B.FixPtSwitch =
            mcb_pmsm_foc_sensorless_f2837_B.FixPtSum1;
        }

        /* End of Switch: '<S411>/FixPt Switch' */

        /* DataStoreRead: '<S15>/Enable' */
        mcb_pmsm_foc_sensorless_f2837_B.Enable =
          mcb_pmsm_foc_sensorless_f_DWork.Enable;

        /* DataTypeConversion: '<S15>/Data Type Conversion' */
        mcb_pmsm_foc_sensorless_f2837_B.DataTypeConversion_c =
          mcb_pmsm_foc_sensorless_f2837_B.Enable;

        /* Switch: '<S400>/Switch' */
        mcb_pmsm_foc_sensorless_f2837_B.Switch_p =
          mcb_pmsm_foc_sensorless_f2837_B.DataTypeConversion_c;

        /* S-Function (c280xgpio_do): '<S400>/DRV830x Enable' */
        {
          if (mcb_pmsm_foc_sensorless_f2837_B.Switch_p) {
            GpioDataRegs.GPDSET.bit.GPIO124 = 1U;
          } else {
            GpioDataRegs.GPDCLEAR.bit.GPIO124 = 1U;
          }
        }

        /* Switch: '<S400>/Switch1' */
        if (mcb_pmsm_foc_sensorless_f2837_B.DataTypeConversion_c >= 0.5F) {
          /* Gain: '<S172>/sqrt3_by_two' */
          mcb_pmsm_foc_sensorless_f2837_B.sqrt3_by_two = 0.8660254037844386 *
            mcb_pmsm_foc_sensorless_f2837_B.algDD_o2;

          /* Gain: '<S172>/one_by_two' */
          mcb_pmsm_foc_sensorless_f2837_B.one_by_two = 0.5 *
            mcb_pmsm_foc_sensorless_f2837_B.algDD_o1;

          /* Sum: '<S172>/add_c' */
          mcb_pmsm_foc_sensorless_f2837_B.add_c = (0.0 -
            mcb_pmsm_foc_sensorless_f2837_B.one_by_two) -
            mcb_pmsm_foc_sensorless_f2837_B.sqrt3_by_two;

          /* Sum: '<S172>/add_b' */
          mcb_pmsm_foc_sensorless_f2837_B.add_b =
            mcb_pmsm_foc_sensorless_f2837_B.sqrt3_by_two -
            mcb_pmsm_foc_sensorless_f2837_B.one_by_two;

          /* MinMax: '<S169>/Min' */
          Gain1_mj = mcb_pmsm_foc_sensorless_f2837_B.algDD_o1;
          Bias = mcb_pmsm_foc_sensorless_f2837_B.add_b;
          if ((Gain1_mj <= Bias) || rtIsNaN(Bias)) {
            Bias = Gain1_mj;
          }

          Gain1_mj = mcb_pmsm_foc_sensorless_f2837_B.add_c;
          if ((!(Bias <= Gain1_mj)) && (!rtIsNaN(Gain1_mj))) {
            Bias = Gain1_mj;
          }

          /* MinMax: '<S169>/Min' */
          mcb_pmsm_foc_sensorless_f2837_B.Min = Bias;

          /* MinMax: '<S169>/Max' */
          Gain1_mj = mcb_pmsm_foc_sensorless_f2837_B.algDD_o1;
          Bias = mcb_pmsm_foc_sensorless_f2837_B.add_b;
          if ((Gain1_mj >= Bias) || rtIsNaN(Bias)) {
            Bias = Gain1_mj;
          }

          Gain1_mj = mcb_pmsm_foc_sensorless_f2837_B.add_c;
          if ((!(Bias >= Gain1_mj)) && (!rtIsNaN(Gain1_mj))) {
            Bias = Gain1_mj;
          }

          /* MinMax: '<S169>/Max' */
          mcb_pmsm_foc_sensorless_f2837_B.Max = Bias;

          /* Sum: '<S169>/Add' */
          mcb_pmsm_foc_sensorless_f2837_B.Add =
            mcb_pmsm_foc_sensorless_f2837_B.Max +
            mcb_pmsm_foc_sensorless_f2837_B.Min;

          /* Gain: '<S169>/one_by_two' */
          mcb_pmsm_foc_sensorless_f2837_B.one_by_two_p = -0.5 *
            mcb_pmsm_foc_sensorless_f2837_B.Add;

          /* Sum: '<S168>/Add2' */
          mcb_pmsm_foc_sensorless_f2837_B.Add2 =
            mcb_pmsm_foc_sensorless_f2837_B.one_by_two_p +
            mcb_pmsm_foc_sensorless_f2837_B.add_c;

          /* Sum: '<S168>/Add1' */
          mcb_pmsm_foc_sensorless_f2837_B.Add1 =
            mcb_pmsm_foc_sensorless_f2837_B.add_b +
            mcb_pmsm_foc_sensorless_f2837_B.one_by_two_p;

          /* Sum: '<S168>/Add3' */
          mcb_pmsm_foc_sensorless_f2837_B.Add3 =
            mcb_pmsm_foc_sensorless_f2837_B.algDD_o1 +
            mcb_pmsm_foc_sensorless_f2837_B.one_by_two_p;

          /* Gain: '<S168>/Gain' */
          mcb_pmsm_foc_sensorless_f2837_B.Gain[0] = 1.1547005383792517 *
            mcb_pmsm_foc_sensorless_f2837_B.Add3;
          mcb_pmsm_foc_sensorless_f2837_B.Gain[1] = 1.1547005383792517 *
            mcb_pmsm_foc_sensorless_f2837_B.Add1;
          mcb_pmsm_foc_sensorless_f2837_B.Gain[2] = 1.1547005383792517 *
            mcb_pmsm_foc_sensorless_f2837_B.Add2;

          /* DataTypeConversion: '<S10>/Cast To Single' */
          u0 = (real32_T)mcb_pmsm_foc_sensorless_f2837_B.Gain[0];
          mcb_pmsm_foc_sensorless_f2837_B.CastToSingle_h[0] = u0;

          /* Gain: '<S15>/One_by_Two' */
          u0 *= 0.5F;
          mcb_pmsm_foc_sensorless_f2837_B.One_by_Two[0] = u0;

          /* Sum: '<S15>/Sum' incorporates:
           *  Constant: '<S15>/Constant'
           */
          u0 += 0.5F;
          mcb_pmsm_foc_sensorless_f2837_B.PWM_Duty_Cycles[0] = u0;

          /* Gain: '<S400>/Scale_to_PWM_Counter_PRD' */
          Scale_to_PWM_Counter_PRD = (uint16_T)(5000.0F * u0);
          mcb_pmsm_foc_sensorless_f2837_B.Scale_to_PWM_Counter_PRD[0] =
            Scale_to_PWM_Counter_PRD;

          /* Switch: '<S400>/Switch1' */
          mcb_pmsm_foc_sensorless_f2837_B.Switch1_nh[0] =
            Scale_to_PWM_Counter_PRD;

          /* DataTypeConversion: '<S10>/Cast To Single' */
          u0 = (real32_T)mcb_pmsm_foc_sensorless_f2837_B.Gain[1];
          mcb_pmsm_foc_sensorless_f2837_B.CastToSingle_h[1] = u0;

          /* Gain: '<S15>/One_by_Two' */
          u0 *= 0.5F;
          mcb_pmsm_foc_sensorless_f2837_B.One_by_Two[1] = u0;

          /* Sum: '<S15>/Sum' incorporates:
           *  Constant: '<S15>/Constant'
           */
          u0 += 0.5F;
          mcb_pmsm_foc_sensorless_f2837_B.PWM_Duty_Cycles[1] = u0;

          /* Gain: '<S400>/Scale_to_PWM_Counter_PRD' */
          Scale_to_PWM_Counter_PRD = (uint16_T)(5000.0F * u0);
          mcb_pmsm_foc_sensorless_f2837_B.Scale_to_PWM_Counter_PRD[1] =
            Scale_to_PWM_Counter_PRD;

          /* Switch: '<S400>/Switch1' */
          mcb_pmsm_foc_sensorless_f2837_B.Switch1_nh[1] =
            Scale_to_PWM_Counter_PRD;

          /* DataTypeConversion: '<S10>/Cast To Single' */
          u0 = (real32_T)mcb_pmsm_foc_sensorless_f2837_B.Gain[2];
          mcb_pmsm_foc_sensorless_f2837_B.CastToSingle_h[2] = u0;

          /* Gain: '<S15>/One_by_Two' */
          u0 *= 0.5F;
          mcb_pmsm_foc_sensorless_f2837_B.One_by_Two[2] = u0;

          /* Sum: '<S15>/Sum' incorporates:
           *  Constant: '<S15>/Constant'
           */
          u0 += 0.5F;
          mcb_pmsm_foc_sensorless_f2837_B.PWM_Duty_Cycles[2] = u0;

          /* Gain: '<S400>/Scale_to_PWM_Counter_PRD' */
          Scale_to_PWM_Counter_PRD = (uint16_T)(5000.0F * u0);
          mcb_pmsm_foc_sensorless_f2837_B.Scale_to_PWM_Counter_PRD[2] =
            Scale_to_PWM_Counter_PRD;

          /* Switch: '<S400>/Switch1' */
          mcb_pmsm_foc_sensorless_f2837_B.Switch1_nh[2] =
            Scale_to_PWM_Counter_PRD;
        } else {
          /* Switch: '<S400>/Switch1' incorporates:
           *  Constant: '<S400>/stop'
           */
          mcb_pmsm_foc_sensorless_f2837_B.Switch1_nh[0] = 0U;
          mcb_pmsm_foc_sensorless_f2837_B.Switch1_nh[1] = 0U;
          mcb_pmsm_foc_sensorless_f2837_B.Switch1_nh[2] = 0U;
        }

        /* End of Switch: '<S400>/Switch1' */

        /* S-Function (c2802xpwm): '<S400>/ePWM1' */

        /*-- Update CMPA value for ePWM1 --*/
        {
          EPwm1Regs.CMPA.bit.CMPA = (uint16_T)
            (mcb_pmsm_foc_sensorless_f2837_B.Switch1_nh[0]);
        }

        /* S-Function (c2802xpwm): '<S400>/ePWM2' */

        /*-- Update CMPA value for ePWM2 --*/
        {
          EPwm2Regs.CMPA.bit.CMPA = (uint16_T)
            (mcb_pmsm_foc_sensorless_f2837_B.Switch1_nh[1]);
        }

        /* S-Function (c2802xpwm): '<S400>/ePWM3' */

        /*-- Update CMPA value for ePWM3 --*/
        {
          EPwm3Regs.CMPA.bit.CMPA = (uint16_T)
            (mcb_pmsm_foc_sensorless_f2837_B.Switch1_nh[2]);
        }

        /* SignalConversion generated from: '<S1>/Delay5' */
        mcb_pmsm_foc_sensorless_f2837_B.TmpSignalConversionAtDelay5Inpo[0] =
          mcb_pmsm_foc_sensorless_f2837_B.algDD_o1;
        mcb_pmsm_foc_sensorless_f2837_B.TmpSignalConversionAtDelay5Inpo[1] =
          mcb_pmsm_foc_sensorless_f2837_B.algDD_o2;
        mcb_pmsm_foc_sensorless_f2837_B.TmpSignalConversionAtDelay5Inpo[2] =
          mcb_pmsm_foc_sensorless_f2837_B.CastToDouble;
        mcb_pmsm_foc_sensorless_f2837_B.TmpSignalConversionAtDelay5Inpo[3] =
          mcb_pmsm_foc_sensorless_f2837_B.CastToDouble1;

        /* Update for UnitDelay: '<S154>/Unit Delay' */
        mcb_pmsm_foc_sensorless_f_DWork.UnitDelay_DSTATE_h =
          mcb_pmsm_foc_sensorless_f2837_B.Add1_gv;

        /* Update for Delay: '<S1>/Delay5' */
        mcb_pmsm_foc_sensorless_f_DWork.Delay5_DSTATE[0] =
          mcb_pmsm_foc_sensorless_f2837_B.TmpSignalConversionAtDelay5Inpo[0];
        mcb_pmsm_foc_sensorless_f_DWork.Delay5_DSTATE[1] =
          mcb_pmsm_foc_sensorless_f2837_B.TmpSignalConversionAtDelay5Inpo[1];
        mcb_pmsm_foc_sensorless_f_DWork.Delay5_DSTATE[2] =
          mcb_pmsm_foc_sensorless_f2837_B.TmpSignalConversionAtDelay5Inpo[2];
        mcb_pmsm_foc_sensorless_f_DWork.Delay5_DSTATE[3] =
          mcb_pmsm_foc_sensorless_f2837_B.TmpSignalConversionAtDelay5Inpo[3];

        /* Update for UnitDelay: '<S183>/UD' */
        mcb_pmsm_foc_sensorless_f_DWork.UD_DSTATE =
          mcb_pmsm_foc_sensorless_f2837_B.Sum_mb;

        /* Update for UnitDelay: '<S28>/Unit Delay' */
        mcb_pmsm_foc_sensorless_f_DWork.UnitDelay_DSTATE_a =
          mcb_pmsm_foc_sensorless_f2837_B.Switch_h;

        /* Update for DiscreteIntegrator: '<S129>/Integrator' */
        mcb_pmsm_foc_sensorless_f_DWork.Integrator_IC_LOADING = 0U;
        mcb_pmsm_foc_sensorless_f_DWork.Integrator_DSTATE_m +=
          mcb_pmsm_foc_sensorless_f2837_B.Switch_m;
        mcb_pmsm_foc_sensorless_f_DWork.Integrator_PrevResetState = (int16_T)
          mcb_pmsm_foc_sensorless_f2837_B.LogicalOperator;

        /* Update for UnitDelay: '<S27>/Unit Delay' */
        mcb_pmsm_foc_sensorless_f_DWork.UnitDelay_DSTATE_p =
          mcb_pmsm_foc_sensorless_f2837_B.Switch_lw;

        /* Update for DiscreteIntegrator: '<S78>/Integrator' */
        mcb_pmsm_foc_sensorless_f_DWork.Integrator_IC_LOADING_b = 0U;
        mcb_pmsm_foc_sensorless_f_DWork.Integrator_DSTATE_a +=
          mcb_pmsm_foc_sensorless_f2837_B.Switch_fm;
        mcb_pmsm_foc_sensorless_f_DWork.Integrator_PrevResetState_e = (int16_T)
          mcb_pmsm_foc_sensorless_f2837_B.LogicalOperator_n;

        /* Update for UnitDelay: '<S406>/Output' */
        mcb_pmsm_foc_sensorless_f_DWork.Output_DSTATE =
          mcb_pmsm_foc_sensorless_f2837_B.FixPtSwitch;
      }

      /* End of Outputs for S-Function (HardwareInterrupt_sfun): '<S418>/Hardware Interrupt' */

      /* RateTransition: '<Root>/RT3' */
      mcb_pmsm_foc_sensorless_f_DWork.RT3_Buffer[mcb_pmsm_foc_sensorless_f_DWork.RT3_semaphoreTaken
        == 0] = mcb_pmsm_foc_sensorless_f2837_B.Sum_mb;
      mcb_pmsm_foc_sensorless_f_DWork.RT3_ActiveBufIdx =
        (mcb_pmsm_foc_sensorless_f_DWork.RT3_semaphoreTaken == 0);

      /* RateTransition: '<Root>/RT5' */
      mcb_pmsm_foc_sensorless_f_DWork.RT5_Buffer[mcb_pmsm_foc_sensorless_f_DWork.RT5_semaphoreTaken
        == 0] = mcb_pmsm_foc_sensorless_f2837_B.Sum_mb;
      mcb_pmsm_foc_sensorless_f_DWork.RT5_ActiveBufIdx =
        (mcb_pmsm_foc_sensorless_f_DWork.RT5_semaphoreTaken == 0);
    }
  }

  /* Clear occurred EOC event event */
  AdcbRegs.ADCINTFLGCLR.bit.ADCINT1= 1;

  /* Clear occurred Overflow event event */
  AdcbRegs.ADCINTOVFCLR.bit.ADCINT1= 1;
  DINT;
  /* disable global interrupts during context switch, CPU will enable global interrupts after exiting ISR */
  PieCtrlRegs.PIEIER1.all = PIEIER1_stack_save;
                                   /*restore PIEIER register that was modified*/
  PieCtrlRegs.PIEIER9.all = PIEIER9_stack_save;
                                   /*restore PIEIER register that was modified*/
  HWI_TIC28x_AcknowledgeIrq(33);
}

/* Hardware Interrupt Block: '<S420>/Hardware Interrupt' */
interrupt void SCIA_RX_INT(void)
{
  /* Event: Default Event */
  if (1 == runModel) {
    {
      /* S-Function (HardwareInterrupt_sfun): '<S420>/Hardware Interrupt' */

      /* Output and update for function-call system: '<Root>/Serial Receive' */

      /* S-Function (c28xsci_rx): '<S441>/SCI Receive' */
      {
        int16_T i;
        int16_T errFlg = NOERROR;
        uint16_T isHeadReceived = 1U;

        //get data as uint16 in recBuff
        uint16_T recbuff[4];
        for (i = 0; i < 4; i++) {
          recbuff[i] = 0U;
        }

        errFlg = NOERROR;

        /* Receiving data: For uint32 and uint16, rcvBuff will contain uint16 data */
        if (isHeadReceived) {
          errFlg = scia_rcv(recbuff, 8, 4);
          asm(" NOP");
          if ((errFlg == NOERROR) || (errFlg == PARTIALDATA)) {
            memcpy( &mcb_pmsm_foc_sensorless_f2837_B.SCIReceive[0], recbuff,4);
          }
        }
      }

      /* DataTypeConversion: '<S439>/Data Type Conversion2' */
      mcb_pmsm_foc_sensorless_f2837_B.DataTypeConversion2_b = (uint16_T)
        mcb_pmsm_foc_sensorless_f2837_B.SCIReceive[1];

      /* S-Function (sfix_bitop): '<S438>/Bitwise Operator' */
      mcb_pmsm_foc_sensorless_f2837_B.BitwiseOperator =
        mcb_pmsm_foc_sensorless_f2837_B.DataTypeConversion2_b & 1U;

      /* DataTypeConversion: '<S438>/Data Type Conversion3' */
      mcb_pmsm_foc_sensorless_f2837_B.DataTypeConversion3_m =
        (mcb_pmsm_foc_sensorless_f2837_B.BitwiseOperator != 0U);

      /* DataStoreWrite: '<S6>/Data Store Write' */
      mcb_pmsm_foc_sensorless_f_DWork.Enable =
        mcb_pmsm_foc_sensorless_f2837_B.DataTypeConversion3_m;

      /* S-Function (sfix_bitop): '<S438>/Bitwise Operator1' */
      mcb_pmsm_foc_sensorless_f2837_B.BitwiseOperator1 =
        mcb_pmsm_foc_sensorless_f2837_B.DataTypeConversion2_b & 240U;

      /* ArithShift: '<S438>/Shift Arithmetic1' incorporates:
       *  S-Function (sfix_bitop): '<S438>/Bitwise Operator1'
       */
      mcb_pmsm_foc_sensorless_f2837_B.ShiftArithmetic1 =
        mcb_pmsm_foc_sensorless_f2837_B.BitwiseOperator1 >> 4U;

      /* DataStoreWrite: '<S6>/Data Store Write2' */
      mcb_pmsm_foc_sensorless_f_DWork.Debug_signals =
        mcb_pmsm_foc_sensorless_f2837_B.ShiftArithmetic1;

      /* End of Outputs for S-Function (HardwareInterrupt_sfun): '<S420>/Hardware Interrupt' */

      /* RateTransition: '<Root>/RT' */
      mcb_pmsm_foc_sensorless_f_DWork.RT_Buffer[mcb_pmsm_foc_sensorless_f_DWork.RT_ActiveBufIdx
        == 0] = mcb_pmsm_foc_sensorless_f2837_B.SCIReceive[0];
      mcb_pmsm_foc_sensorless_f_DWork.RT_ActiveBufIdx =
        (mcb_pmsm_foc_sensorless_f_DWork.RT_ActiveBufIdx == 0);
    }
  }

  /* Clear occurred Rx FIFO complete event */
  EALLOW;
  SciaRegs.SCIFFRX.bit.RXFFINTCLR= 1;
  EDIS;

  /* Clear occurred Rx FIFO overflow event */
  EALLOW;
  SciaRegs.SCIFFRX.bit.RXFFOVRCLR= 1;
  EDIS;
  HWI_TIC28x_AcknowledgeIrq(96);
}

void mcb_pmsm_foc_sensorless_f28379d_unconfigure_interrupts (void)
{
  HWI_TIC28x_DisableIRQ(33);
  HWI_TIC28x_DisableIRQ(96);
}

/*
 * File trailer for generated code.
 *
 * [EOF]
 */
