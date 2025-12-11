/*
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * File: mcb_pmsm_foc_sensorless_f28379d.c
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

#include "mcb_pmsm_foc_sensorless_f28379d.h"
#include "rtwtypes.h"
#include "mcb_pmsm_foc_sensorless_f28379d_private.h"
#include <math.h>
#include "rt_nonfinite.h"
#include "zero_crossing_types.h"
#include <string.h>

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
  if ((mcb_pmsm_foc_sensorless_f283_M->Timing.TaskCounters.TID[1]) > 499) {/* Sample time: [0.5s, 0.0s] */
    mcb_pmsm_foc_sensorless_f283_M->Timing.TaskCounters.TID[1] = 0;
  }
}

/*
 * Output and update for enable system:
 *    '<S145>/Accumulate'
 *    '<S303>/Accumulate'
 */
void mcb_pmsm_foc_sen_Accumulate(boolean_T rtu_Enable, real32_T rtu_Theta,
  real32_T rtu_Theta_e_prev, rtB_Accumulate_mcb_pmsm_foc_sen *localB,
  rtDW_Accumulate_mcb_pmsm_foc_se *localDW)
{
  /* Outputs for Enabled SubSystem: '<S145>/Accumulate' incorporates:
   *  EnablePort: '<S146>/Enable'
   */
  if (rtu_Enable) {
    /* Delay: '<S146>/Delay' */
    localB->Delay = localDW->Delay_DSTATE;

    /* Outputs for Enabled SubSystem: '<S146>/Subsystem' incorporates:
     *  EnablePort: '<S147>/Enable'
     */
    if (localB->Delay) {
      /* SignalConversion generated from: '<S147>/Input' */
      localB->Input = rtu_Theta;
    }

    /* End of Outputs for SubSystem: '<S146>/Subsystem' */

    /* Sum: '<S146>/Add' */
    localB->Add = localB->Input + rtu_Theta_e_prev;

    /* DataTypeConversion: '<S146>/Data Type Conversion' */
    localB->DataTypeConversion = (int16_T)(real32_T)floor(localB->Add);

    /* DataTypeConversion: '<S146>/Data Type Conversion1' */
    localB->DataTypeConversion1 = localB->DataTypeConversion;

    /* Sum: '<S146>/Add1' */
    localB->Add1 = localB->Add - localB->DataTypeConversion1;

    /* Update for Delay: '<S146>/Delay' incorporates:
     *  Constant: '<S146>/Constant'
     */
    localDW->Delay_DSTATE = true;
  }

  /* End of Outputs for SubSystem: '<S145>/Accumulate' */
}

/*
 * Output and update for action system:
 *    '<S151>/If Action Subsystem'
 *    '<S308>/If Action Subsystem'
 */
void mcb_pmsm__IfActionSubsystem(real32_T rtu_In1, real32_T *rty_Out1,
  rtB_IfActionSubsystem_mcb_pmsm_ *localB)
{
  /* DataTypeConversion: '<S153>/Convert_uint16' */
  localB->Convert_uint16 = (int16_T)(real32_T)floor(rtu_In1);

  /* DataTypeConversion: '<S153>/Convert_back' */
  localB->Convert_back = localB->Convert_uint16;

  /* Sum: '<S153>/Sum' */
  *rty_Out1 = rtu_In1 - localB->Convert_back;
}

/*
 * Output and update for action system:
 *    '<S151>/If Action Subsystem1'
 *    '<S308>/If Action Subsystem1'
 */
void mcb_pmsm_IfActionSubsystem1(real32_T rtu_In1, real32_T *rty_Out1,
  rtB_IfActionSubsystem1_mcb_pmsm *localB)
{
  /* DataTypeConversion: '<S154>/Convert_uint16' */
  localB->Convert_uint16 = (int16_T)rtu_In1;

  /* DataTypeConversion: '<S154>/Convert_back' */
  localB->Convert_back = localB->Convert_uint16;

  /* Sum: '<S154>/Sum' */
  *rty_Out1 = rtu_In1 - localB->Convert_back;
}

/*
 * Output and update for trigger system:
 *    '<S346>/Dir_Sense'
 *    '<S188>/Dir_Sense'
 */
void mcb_pmsm_foc_sens_Dir_Sense(boolean_T rtu_A, boolean_T rtu_B,
  rtB_Dir_Sense_mcb_pmsm_foc_sens *localB, rtZCE_Dir_Sense_mcb_pmsm_foc_se
  *localZCE)
{
  boolean_T zcEvent;

  /* Outputs for Triggered SubSystem: '<S346>/Dir_Sense' incorporates:
   *  TriggerPort: '<S354>/Trigger'
   */
  zcEvent = (rtu_A && (localZCE->Dir_Sense_Trig_ZCE != POS_ZCSIG));
  if (zcEvent) {
    /* Logic: '<S354>/Logical Operator' */
    localB->LogicalOperator = (rtu_A && rtu_B);

    /* Switch: '<S354>/Switch' */
    if (localB->LogicalOperator) {
      /* Switch: '<S354>/Switch' incorporates:
       *  Constant: '<S354>/Constant'
       */
      localB->Switch = -1;
    } else {
      /* Switch: '<S354>/Switch' incorporates:
       *  Constant: '<S354>/Constant1'
       */
      localB->Switch = 1;
    }

    /* End of Switch: '<S354>/Switch' */
  }

  localZCE->Dir_Sense_Trig_ZCE = rtu_A;

  /* End of Outputs for SubSystem: '<S346>/Dir_Sense' */
}

/*
 * Output and update for action system:
 *    '<S346>/Subsystem2'
 *    '<S188>/Subsystem2'
 */
void mcb_pmsm_foc_sen_Subsystem2(real32_T rtu_SigmaAlpha, real32_T rtu_SigmaBeta,
  real32_T *rty_Out1, real32_T *rty_Out2)
{
  /* UnaryMinus: '<S355>/Unary Minus' */
  *rty_Out1 = -rtu_SigmaAlpha;

  /* SignalConversion generated from: '<S355>/SigmaBeta' */
  *rty_Out2 = rtu_SigmaBeta;
}

/* System initialize for atomic system: */
void mcb__SPIMasterTransfer_Init(rtDW_SPIMasterTransfer_mcb_pmsm *localDW)
{
  uint32_T SPIPinsLoc;

  /* Start for MATLABSystem: '<S402>/SPI Master Transfer' */
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

  /* MATLABSystem: '<S402>/SPI Master Transfer' */
  MW_SPI_SetSlaveSelect(localDW->obj.MW_SPI_HANDLE, 0U, true);
  status = MW_SPI_SetFormat(localDW->obj.MW_SPI_HANDLE, 16U, MW_SPI_MODE_0,
    MW_SPI_MOST_SIGNIFICANT_BIT_FIRST);
  if (status == 0U) {
    MW_SPI_MasterWriteRead_8bits(localDW->obj.MW_SPI_HANDLE, &rtu_0, &rdDataRaw,
      1UL);
  }

  /* MATLABSystem: '<S402>/SPI Master Transfer' */
  localB->SPIMasterTransfer = rdDataRaw;
}

/* Termination for atomic system: */
void mcb__SPIMasterTransfer_Term(rtDW_SPIMasterTransfer_mcb_pmsm *localDW)
{
  uint32_T SPIPinsLoc;

  /* Terminate for MATLABSystem: '<S402>/SPI Master Transfer' */
  if (!localDW->obj.matlabCodegenIsDeleted) {
    localDW->obj.matlabCodegenIsDeleted = true;
    if ((localDW->obj.isInitialized == 1L) && localDW->obj.isSetupComplete) {
      SPIPinsLoc = MW_UNDEFINED_VALUE;
      MW_SPI_Close(localDW->obj.MW_SPI_HANDLE, SPIPinsLoc, SPIPinsLoc,
                   SPIPinsLoc, MW_UNDEFINED_VALUE);
    }
  }

  /* End of Terminate for MATLABSystem: '<S402>/SPI Master Transfer' */
}

/* System initialize for atomic system: '<Root>/Speed Control' */
void mcb_pmsm__SpeedControl_Init(rtB_SpeedControl_mcb_pmsm_foc_s *localB,
  rtDW_SpeedControl_mcb_pmsm_foc_ *localDW)
{
  /* Start for Constant: '<S412>/Ki2' */
  localB->Ki2 = 0.0F;

  /* InitializeConditions for RateLimiter: '<S413>/Rate Limiter' */
  localDW->PrevY = 0.1F;

  /* InitializeConditions for RateLimiter: '<S413>/Rate Limiter1' */
  localDW->PrevY_d = -0.1F;

  /* InitializeConditions for DiscreteIntegrator: '<S450>/Integrator' */
  localDW->Integrator_DSTATE = 0.0F;
  localDW->Integrator_PrevResetState = 0;
}

/* Output and update for atomic system: '<Root>/Speed Control' */
void mcb_pmsm_foc_s_SpeedControl(real32_T rtu_Speed_Ref_PU, real32_T
  rtu_Speed_Meas_PU, const boolean_T *rtd_EnClosedLoop, const boolean_T
  *rtd_Enable, const real32_T *rtd_Speed_ref, rtB_SpeedControl_mcb_pmsm_foc_s
  *localB, rtDW_SpeedControl_mcb_pmsm_foc_ *localDW)
{
  real32_T rateLimiterRate;

  /* Constant: '<S7>/Constant2' */
  localB->Constant2 = 0.0F;

  /* DataStoreRead: '<S412>/Data Store Read1' */
  localB->DataStoreRead1 = *rtd_Enable;

  /* DataStoreRead: '<S412>/Data Store Read2' */
  localB->DataStoreRead2 = *rtd_EnClosedLoop;

  /* Logic: '<S412>/AND' */
  localB->AND = (localB->DataStoreRead1 && localB->DataStoreRead2);

  /* RateLimiter: '<S413>/Rate Limiter' */
  rateLimiterRate = rtu_Speed_Ref_PU - localDW->PrevY;
  if (rateLimiterRate > 0.0041101519F) {
    /* RateLimiter: '<S413>/Rate Limiter' */
    localB->RateLimiter = localDW->PrevY + 0.0041101519F;
  } else if (rateLimiterRate < -0.0041101519F) {
    /* RateLimiter: '<S413>/Rate Limiter' */
    localB->RateLimiter = localDW->PrevY - 0.0041101519F;
  } else {
    /* RateLimiter: '<S413>/Rate Limiter' */
    localB->RateLimiter = rtu_Speed_Ref_PU;
  }

  localDW->PrevY = localB->RateLimiter;

  /* End of RateLimiter: '<S413>/Rate Limiter' */

  /* RateLimiter: '<S413>/Rate Limiter1' */
  rateLimiterRate = rtu_Speed_Ref_PU - localDW->PrevY_d;
  if (rateLimiterRate > 0.0041101519F) {
    /* RateLimiter: '<S413>/Rate Limiter1' */
    localB->RateLimiter1 = localDW->PrevY_d + 0.0041101519F;
  } else if (rateLimiterRate < -0.0041101519F) {
    /* RateLimiter: '<S413>/Rate Limiter1' */
    localB->RateLimiter1 = localDW->PrevY_d - 0.0041101519F;
  } else {
    /* RateLimiter: '<S413>/Rate Limiter1' */
    localB->RateLimiter1 = rtu_Speed_Ref_PU;
  }

  localDW->PrevY_d = localB->RateLimiter1;

  /* End of RateLimiter: '<S413>/Rate Limiter1' */

  /* DataStoreRead: '<S414>/Data Store Read1' */
  localB->DataStoreRead1_e = *rtd_EnClosedLoop;

  /* Switch: '<S414>/Switch' */
  if (localB->DataStoreRead1_e) {
    /* Switch: '<S413>/Switch' */
    if (rtu_Speed_Ref_PU >= 0.0F) {
      /* Switch: '<S413>/Switch' */
      localB->Switch_po = localB->RateLimiter;
    } else {
      /* Switch: '<S413>/Switch' */
      localB->Switch_po = localB->RateLimiter1;
    }

    /* End of Switch: '<S413>/Switch' */

    /* Switch: '<S414>/Switch' */
    localB->Switch = localB->Switch_po;
  } else {
    /* DataStoreRead: '<S414>/Data Store Read' */
    localB->DataStoreRead = *rtd_Speed_ref;

    /* Switch: '<S414>/Switch1' */
    if (localB->DataStoreRead > 0.0F) {
      /* Switch: '<S414>/Switch1' incorporates:
       *  Constant: '<S414>/Constant'
       */
      localB->Switch1 = 0.1F;
    } else {
      /* Switch: '<S414>/Switch1' incorporates:
       *  Constant: '<S414>/Constant1'
       */
      localB->Switch1 = -0.1F;
    }

    /* End of Switch: '<S414>/Switch1' */

    /* Switch: '<S414>/Switch' */
    localB->Switch = localB->Switch1;
  }

  /* End of Switch: '<S414>/Switch' */

  /* Product: '<S469>/Product' incorporates:
   *  Constant: '<S469>/Filter_Constant'
   */
  localB->Product = localB->Switch * 0.2F;

  /* UnitDelay: '<S469>/Unit Delay' */
  localB->UnitDelay = localDW->UnitDelay_DSTATE;

  /* Product: '<S469>/Product1' incorporates:
   *  Constant: '<S469>/One'
   */
  localB->Product1 = 0.8F * localB->UnitDelay;

  /* Sum: '<S469>/Add1' */
  localB->Add1 = localB->Product + localB->Product1;

  /* Sum: '<S412>/Sum' */
  localB->Sum = localB->Add1 - rtu_Speed_Meas_PU;

  /* Product: '<S455>/PProd Out' incorporates:
   *  Constant: '<S412>/Kp1'
   */
  localB->PProdOut = localB->Sum * 4.0F;

  /* Logic: '<S412>/Logical Operator' */
  localB->LogicalOperator = !localB->AND;

  /* Constant: '<S412>/Ki2' */
  localB->Ki2 = 0.0F;

  /* DiscreteIntegrator: '<S450>/Integrator' */
  if (localB->LogicalOperator || (localDW->Integrator_PrevResetState != 0)) {
    localDW->Integrator_DSTATE = 0.0F;
  }

  /* DiscreteIntegrator: '<S450>/Integrator' */
  localB->Integrator = localDW->Integrator_DSTATE;

  /* Sum: '<S459>/Sum' */
  localB->Sum_b = localB->PProdOut + localB->Integrator;

  /* DeadZone: '<S443>/DeadZone' */
  if (localB->Sum_b > 1.0F) {
    /* DeadZone: '<S443>/DeadZone' */
    localB->DeadZone = localB->Sum_b - 1.0F;
  } else if (localB->Sum_b >= -1.0F) {
    /* DeadZone: '<S443>/DeadZone' */
    localB->DeadZone = 0.0F;
  } else {
    /* DeadZone: '<S443>/DeadZone' */
    localB->DeadZone = localB->Sum_b - -1.0F;
  }

  /* End of DeadZone: '<S443>/DeadZone' */

  /* RelationalOperator: '<S441>/Relational Operator' incorporates:
   *  Constant: '<S441>/Clamping_zero'
   */
  localB->RelationalOperator = (localB->DeadZone != 0.0F);

  /* RelationalOperator: '<S441>/fix for DT propagation issue' incorporates:
   *  Constant: '<S441>/Clamping_zero'
   */
  localB->fixforDTpropagationissue = (localB->DeadZone > 0.0F);

  /* Switch: '<S441>/Switch1' */
  if (localB->fixforDTpropagationissue) {
    /* Switch: '<S441>/Switch1' incorporates:
     *  Constant: '<S441>/Constant'
     */
    localB->Switch1_o = 1;
  } else {
    /* Switch: '<S441>/Switch1' incorporates:
     *  Constant: '<S441>/Constant2'
     */
    localB->Switch1_o = -1;
  }

  /* End of Switch: '<S441>/Switch1' */

  /* Product: '<S447>/IProd Out' incorporates:
   *  Constant: '<S412>/Ki1'
   */
  localB->IProdOut = localB->Sum * 0.00015F;

  /* RelationalOperator: '<S441>/fix for DT propagation issue1' incorporates:
   *  Constant: '<S441>/Clamping_zero'
   */
  localB->fixforDTpropagationissue1 = (localB->IProdOut > 0.0F);

  /* Switch: '<S441>/Switch2' */
  if (localB->fixforDTpropagationissue1) {
    /* Switch: '<S441>/Switch2' incorporates:
     *  Constant: '<S441>/Constant3'
     */
    localB->Switch2 = 1;
  } else {
    /* Switch: '<S441>/Switch2' incorporates:
     *  Constant: '<S441>/Constant4'
     */
    localB->Switch2 = -1;
  }

  /* End of Switch: '<S441>/Switch2' */

  /* RelationalOperator: '<S441>/Equal1' incorporates:
   *  Switch: '<S441>/Switch1'
   *  Switch: '<S441>/Switch2'
   */
  localB->Equal1 = (localB->Switch1_o == localB->Switch2);

  /* Logic: '<S441>/AND3' */
  localB->AND3 = (localB->RelationalOperator && localB->Equal1);

  /* Switch: '<S441>/Switch' */
  if (localB->AND3) {
    /* Switch: '<S441>/Switch' incorporates:
     *  Constant: '<S441>/Constant1'
     */
    localB->Switch_p = 0.0F;
  } else {
    /* Switch: '<S441>/Switch' */
    localB->Switch_p = localB->IProdOut;
  }

  /* End of Switch: '<S441>/Switch' */

  /* Saturate: '<S457>/Saturation' */
  rateLimiterRate = localB->Sum_b;
  if (rateLimiterRate > 1.0F) {
    /* Saturate: '<S457>/Saturation' */
    localB->Saturation = 1.0F;
  } else if (rateLimiterRate < -1.0F) {
    /* Saturate: '<S457>/Saturation' */
    localB->Saturation = -1.0F;
  } else {
    /* Saturate: '<S457>/Saturation' */
    localB->Saturation = rateLimiterRate;
  }

  /* End of Saturate: '<S457>/Saturation' */

  /* Update for UnitDelay: '<S469>/Unit Delay' */
  localDW->UnitDelay_DSTATE = localB->Add1;

  /* Update for DiscreteIntegrator: '<S450>/Integrator' */
  localDW->Integrator_DSTATE += localB->Switch_p;
  localDW->Integrator_PrevResetState = (int16_T)localB->LogicalOperator;
}

/* Model step function for TID0 */
void mcb_pmsm_foc_sensorless_f28379d_step0(void) /* Sample time: [0.001s, 0.0s] */
{
  {                                    /* Sample time: [0.001s, 0.0s] */
    rate_monotonic_scheduler();
  }

  /* RateTransition: '<Root>/RT' */
  mcb_pmsm_foc_sensorless_f2837_B.RT_f =
    mcb_pmsm_foc_sensorless_f_DWork.RT_Buffer[mcb_pmsm_foc_sensorless_f_DWork.RT_ActiveBufIdx];

  /* RateTransition: '<Root>/RT3' */
  mcb_pmsm_foc_sensorless_f_DWork.RT3_semaphoreTaken =
    mcb_pmsm_foc_sensorless_f_DWork.RT3_ActiveBufIdx;

  /* RateTransition: '<Root>/RT3' */
  mcb_pmsm_foc_sensorless_f2837_B.RT3 =
    mcb_pmsm_foc_sensorless_f_DWork.RT3_Buffer[mcb_pmsm_foc_sensorless_f_DWork.RT3_semaphoreTaken];

  /* Outputs for Atomic SubSystem: '<Root>/Speed Control' */
  mcb_pmsm_foc_s_SpeedControl(mcb_pmsm_foc_sensorless_f2837_B.RT_f,
    mcb_pmsm_foc_sensorless_f2837_B.RT3,
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
    mcb_pmsm_foc_sensorless_f2837_B.SpeedControl.Saturation;
  mcb_pmsm_foc_sensorless_f_DWork.RT2_ActiveBufIdx =
    (mcb_pmsm_foc_sensorless_f_DWork.RT2_ActiveBufIdx == 0);
}

/* Model step function for TID1 */
void mcb_pmsm_foc_sensorless_f28379d_step1(void) /* Sample time: [0.5s, 0.0s] */
{
  /* Outputs for Atomic SubSystem: '<Root>/Heartbeat LED' */
  /* S-Function (c280xgpio_do): '<S404>/Digital Output' incorporates:
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
    for (i = 0; i < 9; i++) {
      mcb_pmsm_foc_sensorless_f2837_B.TmpSignalConversionAtSelectorIn[i] = 0.0F;
    }

    mcb_pmsm_foc_sensorless_f2837_B.RT_f = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.RT3 = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.RT2[0] = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.RT2[1] = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.SCIReceive[0] = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.SCIReceive[1] = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.DataStoreRead = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Abs = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Gain = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.UnitDelay = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Delay5[0] = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Delay5[1] = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Delay5[2] = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Delay5[3] = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Merge[0] = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Merge[1] = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Switch = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.GetADCVoltage[0] = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.GetADCVoltage[1] = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.GetCurrents[0] = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.GetCurrents[1] = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.PU_Conversion[0] = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.PU_Conversion[1] = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Merge_g = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.indexing = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Lookup[0] = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Lookup[1] = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Lookup[2] = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Lookup[3] = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Sum3 = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.DataTypeConversion1 = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Sum2 = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Product = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Sum4 = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Sum5 = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Product1 = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Sum6 = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Sum_g = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.PProdOut = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.UnitDelay_c = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Integrator = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Sum_l = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Switch_h = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Sum_k = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.PProdOut_a = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.UnitDelay_m = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Integrator_c = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Sum_kn = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Switch_l = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Switch_f = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Product_b = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Product_k = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Product1_n = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Sum1 = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Merge_e[0] = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Merge_e[1] = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.DeadZone = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.IProdOut = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Switch_fm = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.DeadZone_d = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.IProdOut_h = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Switch_m = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.DataStoreRead1 = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Selector[0] = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Selector[1] = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.DataTypeConversion_c = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Switch_p = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.OutportBufferForSpeed_fb = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.TmpSignalConversionAtDelay5Inpo[0] = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.TmpSignalConversionAtDelay5Inpo[1] = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.TmpSignalConversionAtDelay5Inpo[2] = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.TmpSignalConversionAtDelay5Inpo[3] = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.sqrt3_by_two = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.one_by_two = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.add_c = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.add_b = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Min = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Max = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Add_c = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.one_by_two_p = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Add3 = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Add2 = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Add1 = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Gain_f[0] = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Gain_f[1] = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Gain_f[2] = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.One_by_Two[0] = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.One_by_Two[1] = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.One_by_Two[2] = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.PWM_Duty_Cycles[0] = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.PWM_Duty_Cycles[1] = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.PWM_Duty_Cycles[2] = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Delay1 = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Delay_c[0] = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Delay_c[1] = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Gain_b = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.UnaryMinus = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Product1_i = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Gain1 = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Product2 = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Product_p = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Gain_m = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Product_m = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Sum_c = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Product1_j = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Product3 = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Sum1_e = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Product3_n = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Product1_o = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Product2_i = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Gain_fr = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Product3_i = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Sum1_c = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Product1_ja = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.UnaryMinus_k = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.UnaryMinus_g = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Product2_f = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Product_e = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Sum_n = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Product_d = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.UnaryMinus_a = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Gain1_d = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.UnaryMinus1 = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Product2_p = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Gain_p = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.UnaryMinus_b = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Product_kp = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Sum_f = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Product1_g = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Product3_p = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Sum1_k = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.UnaryMinus_a2 = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Product_o = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Product3_a = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.UnaryMinus1_c = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Product5 = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Sum1_h = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Product2_b = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Product4 = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Product1_l = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.UnaryMinus_j = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Product2_d = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Sum_b = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Product_h = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Sum_k1 = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Product1_b = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Product3_c = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Sum1_a = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Sum_ba[0] = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Sum_ba[1] = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Sum_m[0] = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Sum_m[1] = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Gain1_m[0] = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Gain1_m[1] = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Sum2_j[0] = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Sum2_j[1] = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Gain2[0] = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Gain2[1] = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Sum1_o[0] = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Sum1_o[1] = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Product_pr[0] = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Product_pr[1] = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Product_kb[0] = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Product_kb[1] = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.UnitDelay_i[0] = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.UnitDelay_i[1] = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Product1_oy[0] = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Product1_oy[1] = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Add1_a[0] = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Add1_a[1] = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Merge_k = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Merge1 = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Merge_l[0] = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Merge_l[1] = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Product_f = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Product1_nx = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Sum_k0 = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Merge_p = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Merge1_g = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Merge_i = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Product_k3 = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.UnitDelay_ik = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Product1_ls = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Add1_p = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Delay_i = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Merge_h = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.indexing_i = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Lookup_a[0] = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Lookup_a[1] = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Lookup_a[2] = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Lookup_a[3] = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Sum5_h = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.DataTypeConversion1_c = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Sum2_k = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Product1_e = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Sum6_l = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Product_oz = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Sum3_c = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Product_c = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Sum4_m = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Product1_m = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Sum_mt = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.ProportionalGain = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.IntegralGain = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Integrator_b = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Sum_o = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.speed = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Product_j = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.UnitDelay_e = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Product1_p = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Add1_l = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Gain_b3 = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.UnitDelay_g = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.In1 = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Delay2 = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Delay3 = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Product_ml = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.UnitDelay_gc = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Product1_k = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Add1_g = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Gain_a = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Sum1_p = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Gain1_p = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Delay2_h = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Delay3_h = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Product_fa = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.UnitDelay_e3 = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Product1_eu = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Add1_o = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Gain_n = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Sum1_ad = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Gain1_f = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Product_o0 = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Product1_nd = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Product_g = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.UnitDelay_n = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Product1_m1 = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Add1_h = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Delay1_b = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Sum_h = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Gain1_g = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Delay_a = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Gain2_p = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Sum1_m = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Product_g0 = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Product_co = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.UnitDelay_gt = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Product1_f = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Add1_oz = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Delay1_h = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Sum_n4 = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Gain1_pc = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Delay_l = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Gain2_h = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Sum1_i = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Product1_nm = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Sum_k2 = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.MathFunction = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Abs_n = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Delay2_g = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Delay3_l = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Product_bn = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.UnitDelay_k = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Product1_g1 = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Add1_m = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Gain_e = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Sum1_id = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Gain1_pv = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Delay2_l = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Delay3_n = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Product_ck = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.UnitDelay_nf = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Product1_kb = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Add1_h3 = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Gain_c = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Sum1_l = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Gain1_i = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Delay_n = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Delay1_p = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Switch1 = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Product_hj = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.UnitDelay_d = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Product1_m5 = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Add1_k = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Square = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Square1 = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Sum2_m = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Sqrt = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.UnaryMinus_i = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Sum_l5 = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Sqrt_b = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Divide = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Divide1 = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Product_ep[0] = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Product_ep[1] = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Product_ep[2] = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Product_ep[3] = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.UnitDelay_h[0] = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.UnitDelay_h[1] = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.UnitDelay_h[2] = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.UnitDelay_h[3] = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Product1_h[0] = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Product1_h[1] = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Product1_h[2] = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Product1_h[3] = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Add1_n[0] = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Add1_n[1] = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Add1_n[2] = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Add1_n[3] = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Sum6_i[0] = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Sum6_i[1] = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Sum6_i[2] = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Sum6_i[3] = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.ScalingR = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Sum3_b = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Delay1_px = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Sum_mm = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Gain1_k = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Delay_no = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Gain2_e = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Sum1_on = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.ScalingL = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Sum1_j = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Product_en = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.UnitDelay_er = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Product1_p3 = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Add1_d = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Switch_c = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.ScalingR_g = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Sum3_d = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Delay1_j = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Sum_c5 = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Gain1_k1 = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Delay_b = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Gain2_j = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Sum1_co = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.ScalingL_e = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Sum1_f = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Product_jy = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.UnitDelay_m1 = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Product1_kt = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Add1_ah = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Switch_i = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.DTC = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.SpeedGain = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Product_i = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.UnitDelay_my = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Product1_hz = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Add1_k1 = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.elect2mech = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Sum_i = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Sum_bi = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Atan2 = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Switch_c3 = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.algDD = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Gain_c2 = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Switch_k = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Bias = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.UnitDelay1 = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.UnitDelay_b = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.a = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Delay_g = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Sum2_p = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Sum3_g = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.b_invg = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Delay1_i = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Sum4_k = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Product_c4 = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.UnitDelay_o = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Product1_ei = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Add1_km = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.UnitDelay1_k = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.UnitDelay_ev = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.a_g = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Delay_cd = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Sum2_b = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Sum3_n = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.b_invg_n = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Delay1_n = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Sum4_g = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Product_ed = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.UnitDelay_l = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Product1_m1j = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Add1_i = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Merge_l1 = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Merge1_e = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Delay_f = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Sign = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Eta = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Sum_i4 = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.b = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.a_o = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Sum1_c0 = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Sign_m = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Eta_e = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Sum_iv = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.b_n = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.a_gy = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Sum1_hy = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.DTC_c = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.SpeedGain_h = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Product_my = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.UnitDelay_gq = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Product1_mm = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Add1_c = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Product_cp = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Product2_m = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Sum1_h1 = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Product1_fi = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Product3_pb = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Sum2_kb = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Switch_l4 = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Atan2_m = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Switch_ia = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.algDD_f = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Gain_nd = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Switch_b = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Bias_l = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Bias_e = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.acos_k = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.bsin = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.sum_Ds = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.bcos = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.asin_e = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.sum_Qs = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Switch_o[0] = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Switch_o[1] = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.algDD_o1 = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.algDD_o2 = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.qcos = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.dsin = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.sum_beta = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.dcos = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.qsin = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.sum_alpha = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Switch_ih[0] = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Switch_ih[1] = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.algDD_o1_o = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.algDD_o2_k = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Saturation = 0.0F;
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
    mcb_pmsm_foc_sensorless_f2837_B.Merge_gk = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Gain_d = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Switch_ps = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Switch1_n = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Sqrt_b5 = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Gain_du = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.a_plus_2b = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.one_by_sqrt3 = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.algDD_o1_n = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.algDD_o2_e = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.SpeedControl.Constant2 = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.SpeedControl.RateLimiter = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.SpeedControl.RateLimiter1 = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.SpeedControl.Switch = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.SpeedControl.Product = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.SpeedControl.UnitDelay = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.SpeedControl.Product1 = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.SpeedControl.Add1 = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.SpeedControl.Sum = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.SpeedControl.PProdOut = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.SpeedControl.Ki2 = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.SpeedControl.Integrator = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.SpeedControl.Sum_b = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.SpeedControl.DeadZone = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.SpeedControl.IProdOut = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.SpeedControl.Switch_p = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.SpeedControl.Saturation = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.SpeedControl.DataStoreRead = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.SpeedControl.Switch1 = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.SpeedControl.Switch_po = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.IfActionSubsystem1_f.Convert_back = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.IfActionSubsystem_f.Convert_back = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Accumulate_g.Add = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Accumulate_g.DataTypeConversion1 = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Accumulate_g.Add1 = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Accumulate_g.Input = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.IfActionSubsystem1.Convert_back = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.IfActionSubsystem.Convert_back = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Accumulate.Add = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Accumulate.DataTypeConversion1 = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Accumulate.Add1 = 0.0F;
    mcb_pmsm_foc_sensorless_f2837_B.Accumulate.Input = 0.0F;
  }

  /* states (dwork) */
  (void) memset((void *)&mcb_pmsm_foc_sensorless_f_DWork, 0,
                sizeof(D_Work_mcb_pmsm_foc_sensorless_));
  mcb_pmsm_foc_sensorless_f_DWork.UnitDelay_DSTATE = 0.0F;
  mcb_pmsm_foc_sensorless_f_DWork.Delay5_DSTATE[0] = 0.0F;
  mcb_pmsm_foc_sensorless_f_DWork.Delay5_DSTATE[1] = 0.0F;
  mcb_pmsm_foc_sensorless_f_DWork.Delay5_DSTATE[2] = 0.0F;
  mcb_pmsm_foc_sensorless_f_DWork.Delay5_DSTATE[3] = 0.0F;
  mcb_pmsm_foc_sensorless_f_DWork.UnitDelay_DSTATE_a = 0.0F;
  mcb_pmsm_foc_sensorless_f_DWork.Integrator_DSTATE = 0.0F;
  mcb_pmsm_foc_sensorless_f_DWork.UnitDelay_DSTATE_p = 0.0F;
  mcb_pmsm_foc_sensorless_f_DWork.Integrator_DSTATE_a = 0.0F;
  mcb_pmsm_foc_sensorless_f_DWork.Delay1_DSTATE = 0.0F;
  mcb_pmsm_foc_sensorless_f_DWork.Delay_DSTATE[0] = 0.0F;
  mcb_pmsm_foc_sensorless_f_DWork.Delay_DSTATE[1] = 0.0F;
  mcb_pmsm_foc_sensorless_f_DWork.UnitDelay_DSTATE_j[0] = 0.0F;
  mcb_pmsm_foc_sensorless_f_DWork.UnitDelay_DSTATE_j[1] = 0.0F;
  mcb_pmsm_foc_sensorless_f_DWork.UnitDelay_DSTATE_i = 0.0F;
  mcb_pmsm_foc_sensorless_f_DWork.Delay_DSTATE_n = 0.0F;
  mcb_pmsm_foc_sensorless_f_DWork.Integrator_DSTATE_m = 0.0F;
  mcb_pmsm_foc_sensorless_f_DWork.UnitDelay_DSTATE_l = 0.0F;
  mcb_pmsm_foc_sensorless_f_DWork.UnitDelay_DSTATE_f = 0.0F;
  mcb_pmsm_foc_sensorless_f_DWork.Delay2_DSTATE = 0.0F;
  mcb_pmsm_foc_sensorless_f_DWork.Delay3_DSTATE = 0.0F;
  mcb_pmsm_foc_sensorless_f_DWork.UnitDelay_DSTATE_m = 0.0F;
  mcb_pmsm_foc_sensorless_f_DWork.Delay2_DSTATE_p = 0.0F;
  mcb_pmsm_foc_sensorless_f_DWork.Delay3_DSTATE_g = 0.0F;
  mcb_pmsm_foc_sensorless_f_DWork.UnitDelay_DSTATE_fz = 0.0F;
  mcb_pmsm_foc_sensorless_f_DWork.Delay1_DSTATE_k = 0.0F;
  mcb_pmsm_foc_sensorless_f_DWork.Delay_DSTATE_l = 0.0F;
  mcb_pmsm_foc_sensorless_f_DWork.Delay1_DSTATE_f = 0.0F;
  mcb_pmsm_foc_sensorless_f_DWork.Delay_DSTATE_k = 0.0F;
  mcb_pmsm_foc_sensorless_f_DWork.Delay2_DSTATE_m = 0.0F;
  mcb_pmsm_foc_sensorless_f_DWork.Delay3_DSTATE_p = 0.0F;
  mcb_pmsm_foc_sensorless_f_DWork.Delay2_DSTATE_k = 0.0F;
  mcb_pmsm_foc_sensorless_f_DWork.Delay3_DSTATE_gs = 0.0F;
  mcb_pmsm_foc_sensorless_f_DWork.Delay1_DSTATE_h = 0.0F;
  mcb_pmsm_foc_sensorless_f_DWork.Delay_DSTATE_lq = 0.0F;
  mcb_pmsm_foc_sensorless_f_DWork.Delay1_DSTATE_p = 0.0F;
  mcb_pmsm_foc_sensorless_f_DWork.Delay_DSTATE_ka = 0.0F;
  mcb_pmsm_foc_sensorless_f_DWork.Delay_DSTATE_kar = 0.0F;
  mcb_pmsm_foc_sensorless_f_DWork.Delay1_DSTATE_m = 0.0F;
  mcb_pmsm_foc_sensorless_f_DWork.Delay_DSTATE_kb = 0.0F;
  mcb_pmsm_foc_sensorless_f_DWork.Delay1_DSTATE_e = 0.0F;
  mcb_pmsm_foc_sensorless_f_DWork.Delay_DSTATE_e = 0.0F;
  mcb_pmsm_foc_sensorless_f_DWork.RT_Buffer[0] = 0.0F;
  mcb_pmsm_foc_sensorless_f_DWork.RT_Buffer[1] = 0.0F;
  mcb_pmsm_foc_sensorless_f_DWork.RT3_Buffer[0] = 0.0F;
  mcb_pmsm_foc_sensorless_f_DWork.RT3_Buffer[1] = 0.0F;
  mcb_pmsm_foc_sensorless_f_DWork.RT2_Buffer[0] = 0.0F;
  mcb_pmsm_foc_sensorless_f_DWork.RT2_Buffer[1] = 0.0F;
  mcb_pmsm_foc_sensorless_f_DWork.RT2_Buffer[2] = 0.0F;
  mcb_pmsm_foc_sensorless_f_DWork.RT2_Buffer[3] = 0.0F;
  mcb_pmsm_foc_sensorless_f_DWork.Speed_ref = 0.0F;
  mcb_pmsm_foc_sensorless_f_DWork.SpeedControl.UnitDelay_DSTATE = 0.0F;
  mcb_pmsm_foc_sensorless_f_DWork.SpeedControl.Integrator_DSTATE = 0.0F;
  mcb_pmsm_foc_sensorless_f_DWork.SpeedControl.PrevY = 0.0F;
  mcb_pmsm_foc_sensorless_f_DWork.SpeedControl.PrevY_d = 0.0F;

  {
    uint16_T s396_iter;

    /* Start for DataStoreMemory: '<Root>/Data Store Memory3' */
    mcb_pmsm_foc_sensorless_f_DWork.Speed_ref = 0.1F;

    /* Start for DataStoreMemory: '<Root>/Data Store Memory1' */
    mcb_pmsm_foc_sensorless_f_DWork.IaOffset = 2295U;

    /* Start for DataStoreMemory: '<Root>/Data Store Memory2' */
    mcb_pmsm_foc_sensorless_f_DWork.IbOffset = 2286U;

    /* Start for DataStoreMemory: '<Root>/Data Store Memory4' */
    mcb_pmsm_foc_sensorless_f_DWork.Debug_signals = 5U;
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

    /* SystemInitialize for S-Function (HardwareInterrupt_sfun): '<S388>/Hardware Interrupt' incorporates:
     *  SubSystem: '<Root>/Current Control'
     */
    /* System initialize for function-call system: '<Root>/Current Control' */

    /* Start for S-Function (c2802xadc): '<S162>/ADC_C_IN2' */
    if (MW_adcCInitFlag == 0U) {
      InitAdcC();
      MW_adcCInitFlag = 1U;
    }

    config_ADCC_SOC0 ();

    /* Start for S-Function (c2802xadc): '<S162>/ADC_B_IN2' */
    if (MW_adcBInitFlag == 0U) {
      InitAdcB();
      MW_adcBInitFlag = 1U;
    }

    config_ADCB_SOC0 ();

    /* Start for S-Function (c280xgpio_do): '<S372>/DRV830x Enable' */
    EALLOW;
    GpioCtrlRegs.GPDMUX2.all &= 0xFCFFFFFFU;
    GpioCtrlRegs.GPDDIR.all |= 0x10000000U;
    EDIS;

    /* Start for S-Function (c2802xpwm): '<S372>/ePWM1' */

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

    /* Start for S-Function (c2802xpwm): '<S372>/ePWM2' */

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

    /* Start for S-Function (c2802xpwm): '<S372>/ePWM3' */

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

    /* InitializeConditions for DiscreteIntegrator: '<S126>/Integrator' */
    mcb_pmsm_foc_sensorless_f_DWork.Integrator_PrevResetState = 0;
    mcb_pmsm_foc_sensorless_f_DWork.Integrator_IC_LOADING = 1U;

    /* InitializeConditions for DiscreteIntegrator: '<S75>/Integrator' */
    mcb_pmsm_foc_sensorless_f_DWork.Integrator_PrevResetState_e = 0;
    mcb_pmsm_foc_sensorless_f_DWork.Integrator_IC_LOADING_b = 1U;

    /* SystemInitialize for IfAction SubSystem: '<S164>/Extended EMF Observer' */
    /* InitializeConditions for Delay: '<S170>/Delay1' */
    mcb_pmsm_foc_sensorless_f_DWork.Delay1_DSTATE = 0.0F;

    /* InitializeConditions for Delay: '<S302>/Delay' */
    mcb_pmsm_foc_sensorless_f_DWork.Delay_DSTATE_n = 0.0F;

    /* InitializeConditions for DiscreteIntegrator: '<S235>/Integrator' */
    mcb_pmsm_foc_sensorless_f_DWork.Integrator_PrevResetState_h = 0;

    /* SystemInitialize for IfAction SubSystem: '<S196>/DifferentiationMethod' */
    /* InitializeConditions for Delay: '<S256>/Delay2' */
    mcb_pmsm_foc_sensorless_f_DWork.Delay2_DSTATE_m = 0.0F;

    /* InitializeConditions for Delay: '<S256>/Delay3' */
    mcb_pmsm_foc_sensorless_f_DWork.Delay3_DSTATE_p = 0.0F;

    /* InitializeConditions for Delay: '<S257>/Delay2' */
    mcb_pmsm_foc_sensorless_f_DWork.Delay2_DSTATE_k = 0.0F;

    /* InitializeConditions for Delay: '<S257>/Delay3' */
    mcb_pmsm_foc_sensorless_f_DWork.Delay3_DSTATE_gs = 0.0F;

    /* End of SystemInitialize for SubSystem: '<S196>/DifferentiationMethod' */

    /* SystemInitialize for IfAction SubSystem: '<S196>/IntegralMethod' */
    /* InitializeConditions for Delay: '<S281>/Delay1' */
    mcb_pmsm_foc_sensorless_f_DWork.Delay1_DSTATE_k = 0.0F;

    /* InitializeConditions for Delay: '<S281>/Delay' */
    mcb_pmsm_foc_sensorless_f_DWork.Delay_DSTATE_l = 0.0F;

    /* InitializeConditions for Delay: '<S282>/Delay1' */
    mcb_pmsm_foc_sensorless_f_DWork.Delay1_DSTATE_f = 0.0F;

    /* InitializeConditions for Delay: '<S282>/Delay' */
    mcb_pmsm_foc_sensorless_f_DWork.Delay_DSTATE_k = 0.0F;

    /* End of SystemInitialize for SubSystem: '<S196>/IntegralMethod' */

    /* SystemInitialize for IfAction SubSystem: '<S196>/OptimizedDifferentiationMethod' */
    /* InitializeConditions for Delay: '<S289>/Delay2' */
    mcb_pmsm_foc_sensorless_f_DWork.Delay2_DSTATE = 0.0F;

    /* InitializeConditions for Delay: '<S289>/Delay3' */
    mcb_pmsm_foc_sensorless_f_DWork.Delay3_DSTATE = 0.0F;

    /* InitializeConditions for Delay: '<S290>/Delay2' */
    mcb_pmsm_foc_sensorless_f_DWork.Delay2_DSTATE_p = 0.0F;

    /* InitializeConditions for Delay: '<S290>/Delay3' */
    mcb_pmsm_foc_sensorless_f_DWork.Delay3_DSTATE_g = 0.0F;

    /* End of SystemInitialize for SubSystem: '<S196>/OptimizedDifferentiationMethod' */

    /* SystemInitialize for Merge: '<S196>/Merge' */
    mcb_pmsm_foc_sensorless_f2837_B.Merge_i = 0.0F;

    /* End of SystemInitialize for SubSystem: '<S164>/Extended EMF Observer' */

    /* SystemInitialize for IfAction SubSystem: '<S164>/Flux Observer' */
    /* InitializeConditions for Delay: '<S335>/Delay1' */
    mcb_pmsm_foc_sensorless_f_DWork.Delay1_DSTATE_h = 0.0F;

    /* InitializeConditions for Delay: '<S335>/Delay' */
    mcb_pmsm_foc_sensorless_f_DWork.Delay_DSTATE_lq = 0.0F;

    /* InitializeConditions for Delay: '<S328>/Delay1' */
    mcb_pmsm_foc_sensorless_f_DWork.Delay1_DSTATE_p = 0.0F;

    /* InitializeConditions for Delay: '<S328>/Delay' */
    mcb_pmsm_foc_sensorless_f_DWork.Delay_DSTATE_ka = 0.0F;

    /* InitializeConditions for Delay: '<S315>/Delay' */
    mcb_pmsm_foc_sensorless_f_DWork.CircBufIdx = 0U;

    /* End of SystemInitialize for SubSystem: '<S164>/Flux Observer' */

    /* SystemInitialize for IfAction SubSystem: '<S164>/Sliding Mode Observer' */
    /* InitializeConditions for Delay: '<S347>/Delay' */
    mcb_pmsm_foc_sensorless_f_DWork.Delay_DSTATE_kar = 0.0F;

    /* InitializeConditions for Delay: '<S357>/Delay1' */
    mcb_pmsm_foc_sensorless_f_DWork.Delay1_DSTATE_m = 0.0F;

    /* InitializeConditions for Delay: '<S348>/Delay' */
    mcb_pmsm_foc_sensorless_f_DWork.Delay_DSTATE_kb = 0.0F;

    /* InitializeConditions for Delay: '<S358>/Delay1' */
    mcb_pmsm_foc_sensorless_f_DWork.Delay1_DSTATE_e = 0.0F;

    /* InitializeConditions for Delay: '<S345>/Delay' */
    mcb_pmsm_foc_sensorless_f_DWork.Delay_DSTATE_e = 0.0F;

    /* InitializeConditions for Delay: '<S352>/Delay' */
    mcb_pmsm_foc_sensorless_f_DWork.CircBufIdx_g = 0U;

    /* End of SystemInitialize for SubSystem: '<S164>/Sliding Mode Observer' */

    /* SystemInitialize for IfAction SubSystem: '<S164>/Extended EMF Observer' */
    /* InitializeConditions for Delay: '<S171>/Delay' */
    mcb_pmsm_foc_sensorless_f_DWork.Delay_DSTATE[0] = 0.0F;

    /* End of SystemInitialize for SubSystem: '<S164>/Extended EMF Observer' */

    /* SystemInitialize for Merge: '<S164>/Merge' */
    mcb_pmsm_foc_sensorless_f2837_B.Merge[0] = 0.0F;

    /* SystemInitialize for IfAction SubSystem: '<S164>/Extended EMF Observer' */
    /* InitializeConditions for Delay: '<S171>/Delay' */
    mcb_pmsm_foc_sensorless_f_DWork.Delay_DSTATE[1] = 0.0F;

    /* End of SystemInitialize for SubSystem: '<S164>/Extended EMF Observer' */

    /* SystemInitialize for Merge: '<S164>/Merge' */
    mcb_pmsm_foc_sensorless_f2837_B.Merge[1] = 0.0F;

    /* SystemInitialize for S-Function (HardwareInterrupt_sfun): '<S390>/Hardware Interrupt' incorporates:
     *  SubSystem: '<Root>/Serial Receive'
     */
    /* System initialize for function-call system: '<Root>/Serial Receive' */

    /* Start for S-Function (c28xsci_rx): '<S411>/SCI Receive' */

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
    /* Start for S-Function (c280xgpio_do): '<S404>/Digital Output' */
    EALLOW;
    GpioCtrlRegs.GPBMUX1.all &= 0xFFFFFFCFU;
    GpioCtrlRegs.GPBDIR.all |= 0x4U;
    EDIS;

    /* End of SystemInitialize for SubSystem: '<Root>/Heartbeat LED' */

    /* SystemInitialize for Atomic SubSystem: '<Root>/Hardware Init' */
    /* Start for S-Function (c280xgpio_do): '<S394>/Digital Output' */
    EALLOW;
    GpioCtrlRegs.GPDMUX2.all &= 0xFCFFFFFFU;
    GpioCtrlRegs.GPDDIR.all |= 0x10000000U;
    EDIS;

    /* Start for S-Function (c280xgpio_do): '<S394>/Digital Output1' */
    EALLOW;
    GpioCtrlRegs.GPAMUX2.all &= 0xFFFFCFFFU;
    GpioCtrlRegs.GPADIR.all |= 0x400000U;
    EDIS;

    /* SystemInitialize for Enabled SubSystem: '<S394>/ADC Gain Setting' */
    mcb__SPIMasterTransfer_Init
      (&mcb_pmsm_foc_sensorless_f_DWork.SPIMasterTransfer);
    mcb__SPIMasterTransfer_Init
      (&mcb_pmsm_foc_sensorless_f_DWork.SPIMasterTransfer1);

    /* End of SystemInitialize for SubSystem: '<S394>/ADC Gain Setting' */

    /* SystemInitialize for Enabled SubSystem: '<S392>/Calculate ADC Offset ' */
    /* SystemInitialize for Iterator SubSystem: '<S393>/For Iterator Subsystem' */
    /* Start for S-Function (c2802xadc): '<S396>/ADC_B2' */
    if (MW_adcBInitFlag == 0U) {
      InitAdcB();
      MW_adcBInitFlag = 1U;
    }

    config_ADCB_SOC2 ();

    /* Start for S-Function (c2802xadc): '<S396>/ADC_C2' */
    if (MW_adcCInitFlag == 0U) {
      InitAdcC();
      MW_adcCInitFlag = 1U;
    }

    config_ADCC_SOC2 ();

    /* End of SystemInitialize for SubSystem: '<S393>/For Iterator Subsystem' */
    /* End of SystemInitialize for SubSystem: '<S392>/Calculate ADC Offset ' */
    /* End of SystemInitialize for SubSystem: '<Root>/Hardware Init' */

    /* Outputs for Atomic SubSystem: '<Root>/Hardware Init' */
    /* Outputs for Enabled SubSystem: '<S394>/ADC Gain Setting' incorporates:
     *  EnablePort: '<S402>/Enable'
     */
    /* Constant: '<S3>/6PWM_Mode' */
    mcb_pmsm__SPIMasterTransfer(14870U,
      &mcb_pmsm_foc_sensorless_f2837_B.SPIMasterTransfer,
      &mcb_pmsm_foc_sensorless_f_DWork.SPIMasterTransfer);

    /* Constant: '<S3>/ADC_Gain_Setting' */
    mcb_pmsm__SPIMasterTransfer(20522U,
      &mcb_pmsm_foc_sensorless_f2837_B.SPIMasterTransfer1,
      &mcb_pmsm_foc_sensorless_f_DWork.SPIMasterTransfer1);

    /* End of Outputs for SubSystem: '<S394>/ADC Gain Setting' */

    /* Switch: '<S394>/Switch' incorporates:
     *  Constant: '<S394>/Inverter Enable'
     */
    mcb_pmsm_foc_sensorless_f2837_B.Switch_e = 1U;

    /* S-Function (c280xgpio_do): '<S394>/Digital Output' */
    {
      if (mcb_pmsm_foc_sensorless_f2837_B.Switch_e) {
        GpioDataRegs.GPDSET.bit.GPIO124 = 1U;
      } else {
        GpioDataRegs.GPDCLEAR.bit.GPIO124 = 1U;
      }
    }

    /* S-Function (c280xgpio_do): '<S394>/Digital Output1' incorporates:
     *  Constant: '<S394>/RunTimeMeasurement'
     */
    {
      if ((1U)) {
        GpioDataRegs.GPASET.bit.GPIO22 = 1U;
      } else {
        GpioDataRegs.GPACLEAR.bit.GPIO22 = 1U;
      }
    }

    /* Outputs for Enabled SubSystem: '<S392>/Calculate ADC Offset ' incorporates:
     *  EnablePort: '<S393>/Enable'
     */
    /* Outputs for Iterator SubSystem: '<S393>/For Iterator Subsystem' incorporates:
     *  ForIterator: '<S396>/For Iterator'
     */
    for (s396_iter = 1U; s396_iter < 17U; s396_iter++) {
      /* Outputs for Iterator SubSystem: '<S393>/For Iterator Subsystem' incorporates:
       *  ForIterator: '<S396>/For Iterator'
       */
      mcb_pmsm_foc_sensorless_f2837_B.ForIterator = s396_iter;

      /* S-Function (c2802xadc): '<S396>/ADC_B2' */
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

      /* S-Function (c2802xadc): '<S396>/ADC_C2' */
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

      /* If: '<S396>/If' */
      if (mcb_pmsm_foc_sensorless_f2837_B.ForIterator > 8U) {
        /* Outputs for IfAction SubSystem: '<S396>/If Action Subsystem' incorporates:
         *  ActionPort: '<S401>/Action Port'
         */
        /* Memory: '<S401>/Memory' */
        mcb_pmsm_foc_sensorless_f2837_B.Memory =
          mcb_pmsm_foc_sensorless_f_DWork.Memory_PreviousInput;

        /* Sum: '<S401>/Sum' */
        mcb_pmsm_foc_sensorless_f2837_B.Sum_ij =
          mcb_pmsm_foc_sensorless_f2837_B.ADC_C2 +
          mcb_pmsm_foc_sensorless_f2837_B.Memory;

        /* Memory: '<S401>/Memory1' */
        mcb_pmsm_foc_sensorless_f2837_B.Memory1 =
          mcb_pmsm_foc_sensorless_f_DWork.Memory1_PreviousInput;

        /* Sum: '<S401>/Sum1' */
        mcb_pmsm_foc_sensorless_f2837_B.Sum1_jw =
          mcb_pmsm_foc_sensorless_f2837_B.ADC_B2 +
          mcb_pmsm_foc_sensorless_f2837_B.Memory1;

        /* Update for Memory: '<S401>/Memory' */
        mcb_pmsm_foc_sensorless_f_DWork.Memory_PreviousInput =
          mcb_pmsm_foc_sensorless_f2837_B.Sum_ij;

        /* Update for Memory: '<S401>/Memory1' */
        mcb_pmsm_foc_sensorless_f_DWork.Memory1_PreviousInput =
          mcb_pmsm_foc_sensorless_f2837_B.Sum1_jw;

        /* End of Outputs for SubSystem: '<S396>/If Action Subsystem' */
      }

      /* End of If: '<S396>/If' */
    }

    /* End of Outputs for SubSystem: '<S393>/For Iterator Subsystem' */

    /* Product: '<S393>/Divide' incorporates:
     *  Constant: '<S393>/Constant'
     */
    mcb_pmsm_foc_sensorless_f2837_B.Divide_p = (uint16_T)((real_T)
      mcb_pmsm_foc_sensorless_f2837_B.Sum_ij / 8.0);

    /* If: '<S393>/If' incorporates:
     *  Constant: '<S393>/Constant1'
     *  Constant: '<S393>/Constant2'
     */
    if ((mcb_pmsm_foc_sensorless_f2837_B.Divide_p > 1500U) &&
        (mcb_pmsm_foc_sensorless_f2837_B.Divide_p < 2500U)) {
      /* Outputs for IfAction SubSystem: '<S393>/If Action Subsystem' incorporates:
       *  ActionPort: '<S397>/Action Port'
       */
      /* DataStoreWrite: '<S397>/Data Store Write1' */
      mcb_pmsm_foc_sensorless_f_DWork.IaOffset =
        mcb_pmsm_foc_sensorless_f2837_B.Divide_p;

      /* End of Outputs for SubSystem: '<S393>/If Action Subsystem' */
    } else {
      /* Outputs for IfAction SubSystem: '<S393>/If Action Subsystem1' incorporates:
       *  ActionPort: '<S398>/Action Port'
       */
      /* DataStoreWrite: '<S398>/Data Store Write1' incorporates:
       *  Constant: '<S398>/Constant'
       */
      mcb_pmsm_foc_sensorless_f_DWork.IaOffset = 2295U;

      /* End of Outputs for SubSystem: '<S393>/If Action Subsystem1' */
    }

    /* End of If: '<S393>/If' */

    /* Product: '<S393>/Divide1' incorporates:
     *  Constant: '<S393>/Constant'
     */
    mcb_pmsm_foc_sensorless_f2837_B.Divide1_l = (uint16_T)((real_T)
      mcb_pmsm_foc_sensorless_f2837_B.Sum1_jw / 8.0);

    /* If: '<S393>/If1' incorporates:
     *  Constant: '<S393>/Constant1'
     *  Constant: '<S393>/Constant2'
     */
    if ((mcb_pmsm_foc_sensorless_f2837_B.Divide1_l > 1500U) &&
        (mcb_pmsm_foc_sensorless_f2837_B.Divide1_l < 2500U)) {
      /* Outputs for IfAction SubSystem: '<S393>/If Action Subsystem2' incorporates:
       *  ActionPort: '<S399>/Action Port'
       */
      /* DataStoreWrite: '<S399>/Data Store Write2' */
      mcb_pmsm_foc_sensorless_f_DWork.IbOffset =
        mcb_pmsm_foc_sensorless_f2837_B.Divide1_l;

      /* End of Outputs for SubSystem: '<S393>/If Action Subsystem2' */
    } else {
      /* Outputs for IfAction SubSystem: '<S393>/If Action Subsystem3' incorporates:
       *  ActionPort: '<S400>/Action Port'
       */
      /* DataStoreWrite: '<S400>/Data Store Write2' incorporates:
       *  Constant: '<S400>/Constant1'
       */
      mcb_pmsm_foc_sensorless_f_DWork.IbOffset = 2286U;

      /* End of Outputs for SubSystem: '<S393>/If Action Subsystem3' */
    }

    /* End of If: '<S393>/If1' */
    /* End of Outputs for SubSystem: '<S392>/Calculate ADC Offset ' */

    /* Logic: '<S392>/NOT' */
    mcb_pmsm_foc_sensorless_f2837_B.NOT = false;

    /* Outputs for Enabled SubSystem: '<S392>/Default ADC Offset' incorporates:
     *  EnablePort: '<S395>/Enable'
     */
    if (mcb_pmsm_foc_sensorless_f2837_B.NOT) {
      /* DataStoreWrite: '<S395>/Data Store Write1' incorporates:
       *  Constant: '<S395>/Constant'
       */
      mcb_pmsm_foc_sensorless_f_DWork.IaOffset = 2295U;

      /* DataStoreWrite: '<S395>/Data Store Write2' incorporates:
       *  Constant: '<S395>/Constant1'
       */
      mcb_pmsm_foc_sensorless_f_DWork.IbOffset = 2286U;
    }

    /* End of Outputs for SubSystem: '<S392>/Default ADC Offset' */
    /* End of Outputs for SubSystem: '<Root>/Hardware Init' */
  }
}

/* Model terminate function */
void mcb_pmsm_foc_sensorless_f28379d_terminate(void)
{
  /* Terminate for Atomic SubSystem: '<Root>/Hardware Init' */
  /* Terminate for Enabled SubSystem: '<S394>/ADC Gain Setting' */
  mcb__SPIMasterTransfer_Term(&mcb_pmsm_foc_sensorless_f_DWork.SPIMasterTransfer);
  mcb__SPIMasterTransfer_Term
    (&mcb_pmsm_foc_sensorless_f_DWork.SPIMasterTransfer1);

  /* End of Terminate for SubSystem: '<S394>/ADC Gain Setting' */
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

/* Hardware Interrupt Block: '<S388>/Hardware Interrupt' */
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

      /* S-Function (HardwareInterrupt_sfun): '<S388>/Hardware Interrupt' */

      /* Output and update for function-call system: '<Root>/Current Control' */
      {
        real32_T Bias;
        real32_T Gain1_m;
        uint32_T Sum_p;
        int16_T s376_iter;
        uint16_T Scale_to_PWM_Counter_PRD;
        boolean_T zcEvent;

        /* DataStoreRead: '<S18>/Data Store Read' */
        mcb_pmsm_foc_sensorless_f2837_B.DataStoreRead =
          mcb_pmsm_foc_sensorless_f_DWork.Speed_ref;

        /* Abs: '<S18>/Abs' */
        mcb_pmsm_foc_sensorless_f2837_B.Abs = fabsf
          (mcb_pmsm_foc_sensorless_f2837_B.DataStoreRead);

        /* Switch: '<S18>/Switch2' */
        mcb_pmsm_foc_sensorless_f2837_B.Switch2_c = (uint16_T)
          (mcb_pmsm_foc_sensorless_f2837_B.Abs > 0.1F);

        /* DataTypeConversion: '<S18>/Data Type Conversion' */
        mcb_pmsm_foc_sensorless_f2837_B.DataTypeConversion_o =
          (mcb_pmsm_foc_sensorless_f2837_B.Switch2_c != 0U);

        /* DataStoreWrite: '<S18>/Data Store Write' */
        mcb_pmsm_foc_sensorless_f_DWork.EnClosedLoop =
          mcb_pmsm_foc_sensorless_f2837_B.DataTypeConversion_o;

        /* Gain: '<S18>/Gain' */
        mcb_pmsm_foc_sensorless_f2837_B.Gain = 0.028385F *
          mcb_pmsm_foc_sensorless_f2837_B.DataStoreRead;

        /* UnitDelay: '<S145>/Unit Delay' */
        mcb_pmsm_foc_sensorless_f2837_B.UnitDelay =
          mcb_pmsm_foc_sensorless_f_DWork.UnitDelay_DSTATE;

        /* Logic: '<S145>/NOT' */
        mcb_pmsm_foc_sensorless_f2837_B.NOT_f = true;

        /* Outputs for Enabled SubSystem: '<S145>/Accumulate' */
        mcb_pmsm_foc_sen_Accumulate(true, mcb_pmsm_foc_sensorless_f2837_B.Gain,
          mcb_pmsm_foc_sensorless_f2837_B.UnitDelay,
          &mcb_pmsm_foc_sensorless_f2837_B.Accumulate,
          &mcb_pmsm_foc_sensorless_f_DWork.Accumulate);

        /* End of Outputs for SubSystem: '<S145>/Accumulate' */

        /* Delay: '<S1>/Delay5' */
        mcb_pmsm_foc_sensorless_f2837_B.Delay5[0] =
          mcb_pmsm_foc_sensorless_f_DWork.Delay5_DSTATE[0];
        mcb_pmsm_foc_sensorless_f2837_B.Delay5[1] =
          mcb_pmsm_foc_sensorless_f_DWork.Delay5_DSTATE[1];
        mcb_pmsm_foc_sensorless_f2837_B.Delay5[2] =
          mcb_pmsm_foc_sensorless_f_DWork.Delay5_DSTATE[2];
        mcb_pmsm_foc_sensorless_f2837_B.Delay5[3] =
          mcb_pmsm_foc_sensorless_f_DWork.Delay5_DSTATE[3];

        /* Outputs for IfAction SubSystem: '<S164>/Extended EMF Observer' incorporates:
         *  ActionPort: '<S167>/Action Port'
         */
        /* SwitchCase: '<S164>/Switch Case' incorporates:
         *  Constant: '<S173>/I_PU'
         *  Constant: '<S173>/V_PU'
         *  Constant: '<S177>/(Ld-Lq)//Ld'
         *  Constant: '<S177>/R//Ld'
         *  Constant: '<S180>/alpha'
         *  Constant: '<S181>/alpha'
         *  Constant: '<S182>/alpha'
         *  Constant: '<S184>/alpha'
         *  DataStoreRead: '<S167>/Data Store Read1'
         *  Delay: '<S170>/Delay1'
         *  Delay: '<S171>/Delay'
         *  Gain: '<S175>/Gain'
         *  Gain: '<S176>/Gain'
         *  Gain: '<S178>/Gain'
         *  Gain: '<S178>/Gain1'
         *  Gain: '<S183>/Gain'
         *  Gain: '<S183>/Gain1'
         *  Logic: '<S167>/Logical Operator'
         *  Product: '<S173>/Product'
         *  Product: '<S173>/Product1'
         *  Product: '<S173>/Product2'
         *  Product: '<S173>/Product3'
         *  Product: '<S177>/Product'
         *  Product: '<S177>/Product1'
         *  Product: '<S177>/Product2'
         *  Product: '<S177>/Product3'
         *  Product: '<S177>/Product4'
         *  Product: '<S177>/Product5'
         *  Product: '<S179>/Product'
         *  Product: '<S179>/Product1'
         *  Product: '<S180>/Product'
         *  Product: '<S180>/Product1'
         *  Product: '<S180>/Product2'
         *  Product: '<S180>/Product3'
         *  Product: '<S181>/Product'
         *  Product: '<S181>/Product1'
         *  Product: '<S181>/Product2'
         *  Product: '<S181>/Product3'
         *  Product: '<S182>/Product'
         *  Product: '<S182>/Product1'
         *  Product: '<S182>/Product2'
         *  Product: '<S182>/Product3'
         *  Product: '<S184>/Product'
         *  Product: '<S184>/Product1'
         *  Product: '<S184>/Product2'
         *  Product: '<S184>/Product3'
         *  Sum: '<S171>/Sum'
         *  Sum: '<S175>/Sum'
         *  Sum: '<S177>/Sum'
         *  Sum: '<S177>/Sum1'
         *  Sum: '<S180>/Sum'
         *  Sum: '<S180>/Sum1'
         *  Sum: '<S181>/Sum'
         *  Sum: '<S181>/Sum1'
         *  Sum: '<S182>/Sum'
         *  Sum: '<S182>/Sum1'
         *  Sum: '<S184>/Sum'
         *  Sum: '<S184>/Sum1'
         *  UnaryMinus: '<S177>/Unary Minus'
         *  UnaryMinus: '<S177>/Unary Minus1'
         *  UnaryMinus: '<S178>/Unary Minus'
         *  UnaryMinus: '<S178>/Unary Minus1'
         *  UnaryMinus: '<S179>/Unary Minus'
         *  UnaryMinus: '<S180>/Unary Minus'
         *  UnaryMinus: '<S181>/Unary Minus'
         *  UnaryMinus: '<S182>/Unary Minus'
         *  UnaryMinus: '<S184>/Unary Minus'
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
          mcb_pmsm_foc_sensorless_f_DWork.Delay1_DSTATE = 0.0F;
        }

        mcb_pmsm_foc_sen_PrevZCSigState.Delay1_Reset_ZCE =
          mcb_pmsm_foc_sensorless_f2837_B.LogicalOperator_g;
        mcb_pmsm_foc_sensorless_f2837_B.Delay1 =
          mcb_pmsm_foc_sensorless_f_DWork.Delay1_DSTATE;
        zcEvent = (((mcb_pmsm_foc_sen_PrevZCSigState.Delay_Reset_ZCE ==
                     POS_ZCSIG) != (int16_T)
                    mcb_pmsm_foc_sensorless_f2837_B.LogicalOperator_g) &&
                   (mcb_pmsm_foc_sen_PrevZCSigState.Delay_Reset_ZCE !=
                    UNINITIALIZED_ZCSIG));
        if (zcEvent || mcb_pmsm_foc_sensorless_f2837_B.LogicalOperator_g) {
          mcb_pmsm_foc_sensorless_f_DWork.Delay_DSTATE[0] = 0.0F;
          mcb_pmsm_foc_sensorless_f_DWork.Delay_DSTATE[1] = 0.0F;
        }

        mcb_pmsm_foc_sen_PrevZCSigState.Delay_Reset_ZCE =
          mcb_pmsm_foc_sensorless_f2837_B.LogicalOperator_g;
        mcb_pmsm_foc_sensorless_f2837_B.Gain_b = -0.00086F *
          mcb_pmsm_foc_sensorless_f2837_B.Delay1;
        mcb_pmsm_foc_sensorless_f2837_B.UnaryMinus =
          -mcb_pmsm_foc_sensorless_f2837_B.Gain_b;
        mcb_pmsm_foc_sensorless_f2837_B.Product1_i = 13.8564062F *
          mcb_pmsm_foc_sensorless_f2837_B.Delay5[1];
        mcb_pmsm_foc_sensorless_f2837_B.Gain1 = 1162.79065F *
          mcb_pmsm_foc_sensorless_f2837_B.Product1_i;
        mcb_pmsm_foc_sensorless_f2837_B.Product2 =
          mcb_pmsm_foc_sensorless_f2837_B.UnaryMinus *
          mcb_pmsm_foc_sensorless_f2837_B.Gain1;
        mcb_pmsm_foc_sensorless_f2837_B.Product_p = 13.8564062F *
          mcb_pmsm_foc_sensorless_f2837_B.Delay5[0];
        mcb_pmsm_foc_sensorless_f2837_B.Gain_m = 1162.79065F *
          mcb_pmsm_foc_sensorless_f2837_B.Product_p;
        mcb_pmsm_foc_sensorless_f2837_B.Product_m = -10.0F *
          mcb_pmsm_foc_sensorless_f2837_B.Gain_m;
        mcb_pmsm_foc_sensorless_f2837_B.Sum_c =
          mcb_pmsm_foc_sensorless_f2837_B.Product2 +
          mcb_pmsm_foc_sensorless_f2837_B.Product_m;
        mcb_pmsm_foc_sensorless_f2837_B.Product1_j =
          mcb_pmsm_foc_sensorless_f2837_B.Gain1 * -10.0F;
        mcb_pmsm_foc_sensorless_f2837_B.Product3 =
          mcb_pmsm_foc_sensorless_f2837_B.Gain_m *
          mcb_pmsm_foc_sensorless_f2837_B.Gain_b;
        mcb_pmsm_foc_sensorless_f2837_B.Sum1_e =
          mcb_pmsm_foc_sensorless_f2837_B.Product1_j +
          mcb_pmsm_foc_sensorless_f2837_B.Product3;
        mcb_pmsm_foc_sensorless_f2837_B.Product3_n = 5.35714293F *
          mcb_pmsm_foc_sensorless_f2837_B.Delay5[3];
        mcb_pmsm_foc_sensorless_f2837_B.Product1_o =
          mcb_pmsm_foc_sensorless_f2837_B.Product3_n * -10.0F;
        mcb_pmsm_foc_sensorless_f2837_B.Product2_i = 5.35714293F *
          mcb_pmsm_foc_sensorless_f2837_B.Delay5[2];
        mcb_pmsm_foc_sensorless_f2837_B.Gain_fr = -0.00086F *
          mcb_pmsm_foc_sensorless_f2837_B.Delay1;
        mcb_pmsm_foc_sensorless_f2837_B.Product3_i =
          mcb_pmsm_foc_sensorless_f2837_B.Product2_i *
          mcb_pmsm_foc_sensorless_f2837_B.Gain_fr;
        mcb_pmsm_foc_sensorless_f2837_B.Sum1_c =
          mcb_pmsm_foc_sensorless_f2837_B.Product1_o +
          mcb_pmsm_foc_sensorless_f2837_B.Product3_i;
        mcb_pmsm_foc_sensorless_f2837_B.Product1_ja =
          mcb_pmsm_foc_sensorless_f2837_B.Sum1_c *
          mcb_pmsm_foc_sensorless_f2837_B.Delay1;
        mcb_pmsm_foc_sensorless_f2837_B.UnaryMinus_k =
          -mcb_pmsm_foc_sensorless_f2837_B.Product1_ja;
        mcb_pmsm_foc_sensorless_f2837_B.UnaryMinus_g =
          -mcb_pmsm_foc_sensorless_f2837_B.Gain_fr;
        mcb_pmsm_foc_sensorless_f2837_B.Product2_f =
          mcb_pmsm_foc_sensorless_f2837_B.UnaryMinus_g *
          mcb_pmsm_foc_sensorless_f2837_B.Product3_n;
        mcb_pmsm_foc_sensorless_f2837_B.Product_e = -10.0F *
          mcb_pmsm_foc_sensorless_f2837_B.Product2_i;
        mcb_pmsm_foc_sensorless_f2837_B.Sum_n =
          mcb_pmsm_foc_sensorless_f2837_B.Product2_f +
          mcb_pmsm_foc_sensorless_f2837_B.Product_e;
        mcb_pmsm_foc_sensorless_f2837_B.Product_d =
          mcb_pmsm_foc_sensorless_f2837_B.Sum_n *
          mcb_pmsm_foc_sensorless_f2837_B.Delay1;
        mcb_pmsm_foc_sensorless_f2837_B.UnaryMinus_a =
          -mcb_pmsm_foc_sensorless_f2837_B.Gain_fr;
        mcb_pmsm_foc_sensorless_f2837_B.Gain1_d = 1162.79065F *
          mcb_pmsm_foc_sensorless_f2837_B.Sum1_c;
        mcb_pmsm_foc_sensorless_f2837_B.UnaryMinus1 =
          -mcb_pmsm_foc_sensorless_f2837_B.Gain1_d;
        mcb_pmsm_foc_sensorless_f2837_B.Product2_p =
          mcb_pmsm_foc_sensorless_f2837_B.UnaryMinus_a *
          mcb_pmsm_foc_sensorless_f2837_B.UnaryMinus1;
        mcb_pmsm_foc_sensorless_f2837_B.Gain_p = 1162.79065F *
          mcb_pmsm_foc_sensorless_f2837_B.Sum_n;
        mcb_pmsm_foc_sensorless_f2837_B.UnaryMinus_b =
          -mcb_pmsm_foc_sensorless_f2837_B.Gain_p;
        mcb_pmsm_foc_sensorless_f2837_B.Product_kp = -10.0F *
          mcb_pmsm_foc_sensorless_f2837_B.UnaryMinus_b;
        mcb_pmsm_foc_sensorless_f2837_B.Sum_f =
          mcb_pmsm_foc_sensorless_f2837_B.Product2_p +
          mcb_pmsm_foc_sensorless_f2837_B.Product_kp;
        mcb_pmsm_foc_sensorless_f2837_B.Product1_g =
          mcb_pmsm_foc_sensorless_f2837_B.UnaryMinus1 * -10.0F;
        mcb_pmsm_foc_sensorless_f2837_B.Product3_p =
          mcb_pmsm_foc_sensorless_f2837_B.UnaryMinus_b *
          mcb_pmsm_foc_sensorless_f2837_B.Gain_fr;
        mcb_pmsm_foc_sensorless_f2837_B.Sum1_k =
          mcb_pmsm_foc_sensorless_f2837_B.Product1_g +
          mcb_pmsm_foc_sensorless_f2837_B.Product3_p;
        mcb_pmsm_foc_sensorless_f2837_B.UnaryMinus_a2 =
          -mcb_pmsm_foc_sensorless_f2837_B.Gain_fr;
        mcb_pmsm_foc_sensorless_f2837_B.Product_o =
          mcb_pmsm_foc_sensorless_f2837_B.Product2_i *
          mcb_pmsm_foc_sensorless_f2837_B.Delay1;
        mcb_pmsm_foc_sensorless_f2837_B.Product3_a = 0.0F *
          mcb_pmsm_foc_sensorless_f2837_B.Product_o;
        mcb_pmsm_foc_sensorless_f2837_B.UnaryMinus1_c = -2965.11621F;
        mcb_pmsm_foc_sensorless_f2837_B.Product5 =
          mcb_pmsm_foc_sensorless_f2837_B.Product3_n * -2965.11621F;
        mcb_pmsm_foc_sensorless_f2837_B.Sum1_h =
          mcb_pmsm_foc_sensorless_f2837_B.Product3_a +
          mcb_pmsm_foc_sensorless_f2837_B.Product5;
        mcb_pmsm_foc_sensorless_f2837_B.Product2_b =
          mcb_pmsm_foc_sensorless_f2837_B.UnaryMinus_a2 *
          mcb_pmsm_foc_sensorless_f2837_B.Sum1_h;
        mcb_pmsm_foc_sensorless_f2837_B.Product4 =
          mcb_pmsm_foc_sensorless_f2837_B.Product2_i * -2965.11621F;
        mcb_pmsm_foc_sensorless_f2837_B.Product1_l =
          mcb_pmsm_foc_sensorless_f2837_B.Product3_n *
          mcb_pmsm_foc_sensorless_f2837_B.Delay1;
        mcb_pmsm_foc_sensorless_f2837_B.UnaryMinus_j =
          -mcb_pmsm_foc_sensorless_f2837_B.Product1_l;
        mcb_pmsm_foc_sensorless_f2837_B.Product2_d =
          mcb_pmsm_foc_sensorless_f2837_B.UnaryMinus_j * 0.0F;
        mcb_pmsm_foc_sensorless_f2837_B.Sum_b =
          mcb_pmsm_foc_sensorless_f2837_B.Product4 +
          mcb_pmsm_foc_sensorless_f2837_B.Product2_d;
        mcb_pmsm_foc_sensorless_f2837_B.Product_h = -10.0F *
          mcb_pmsm_foc_sensorless_f2837_B.Sum_b;
        mcb_pmsm_foc_sensorless_f2837_B.Sum_k1 =
          mcb_pmsm_foc_sensorless_f2837_B.Product2_b +
          mcb_pmsm_foc_sensorless_f2837_B.Product_h;
        mcb_pmsm_foc_sensorless_f2837_B.Product1_b =
          mcb_pmsm_foc_sensorless_f2837_B.Sum1_h * -10.0F;
        mcb_pmsm_foc_sensorless_f2837_B.Product3_c =
          mcb_pmsm_foc_sensorless_f2837_B.Sum_b *
          mcb_pmsm_foc_sensorless_f2837_B.Gain_fr;
        mcb_pmsm_foc_sensorless_f2837_B.Sum1_a =
          mcb_pmsm_foc_sensorless_f2837_B.Product1_b +
          mcb_pmsm_foc_sensorless_f2837_B.Product3_c;
        mcb_pmsm_foc_sensorless_f2837_B.Sum_ba[0] =
          (mcb_pmsm_foc_sensorless_f2837_B.UnaryMinus_k -
           mcb_pmsm_foc_sensorless_f2837_B.Sum_f) -
          mcb_pmsm_foc_sensorless_f2837_B.Sum_k1;
        mcb_pmsm_foc_sensorless_f2837_B.Sum_ba[1] =
          (mcb_pmsm_foc_sensorless_f2837_B.Product_d -
           mcb_pmsm_foc_sensorless_f2837_B.Sum1_k) -
          mcb_pmsm_foc_sensorless_f2837_B.Sum1_a;
        mcb_pmsm_foc_sensorless_f2837_B.Sum_m[0] =
          mcb_pmsm_foc_sensorless_f2837_B.Sum_ba[0] -
          mcb_pmsm_foc_sensorless_f2837_B.Sum_c;
        mcb_pmsm_foc_sensorless_f2837_B.Sum_m[1] =
          mcb_pmsm_foc_sensorless_f2837_B.Sum_ba[1] -
          mcb_pmsm_foc_sensorless_f2837_B.Sum1_e;
        Bias = mcb_pmsm_foc_sensorless_f_DWork.Delay_DSTATE[0];

        /* End of Outputs for SubSystem: '<S164>/Extended EMF Observer' */

        /* Delay: '<S171>/Delay' */
        mcb_pmsm_foc_sensorless_f2837_B.Delay_c[0] = Bias;

        /* Outputs for IfAction SubSystem: '<S164>/Extended EMF Observer' incorporates:
         *  ActionPort: '<S167>/Action Port'
         */
        /* SwitchCase: '<S164>/Switch Case' incorporates:
         *  Gain: '<S171>/Gain1'
         */
        Gain1_m = 5.0E-5F * mcb_pmsm_foc_sensorless_f2837_B.Sum_m[0];

        /* End of Outputs for SubSystem: '<S164>/Extended EMF Observer' */

        /* Gain: '<S171>/Gain1' */
        mcb_pmsm_foc_sensorless_f2837_B.Gain1_m[0] = Gain1_m;

        /* Outputs for IfAction SubSystem: '<S164>/Extended EMF Observer' incorporates:
         *  ActionPort: '<S167>/Action Port'
         */
        /* SwitchCase: '<S164>/Switch Case' incorporates:
         *  Sum: '<S171>/Sum2'
         */
        Bias += Gain1_m;

        /* End of Outputs for SubSystem: '<S164>/Extended EMF Observer' */

        /* Sum: '<S171>/Sum2' */
        mcb_pmsm_foc_sensorless_f2837_B.Sum2_j[0] = Bias;

        /* Outputs for IfAction SubSystem: '<S164>/Extended EMF Observer' incorporates:
         *  ActionPort: '<S167>/Action Port'
         */
        /* SwitchCase: '<S164>/Switch Case' incorporates:
         *  Delay: '<S171>/Delay'
         *  Gain: '<S171>/Gain2'
         */
        mcb_pmsm_foc_sensorless_f2837_B.Gain2[0] = 0.632352948F * Bias;
        Bias = mcb_pmsm_foc_sensorless_f_DWork.Delay_DSTATE[1];

        /* End of Outputs for SubSystem: '<S164>/Extended EMF Observer' */

        /* Delay: '<S171>/Delay' */
        mcb_pmsm_foc_sensorless_f2837_B.Delay_c[1] = Bias;

        /* Outputs for IfAction SubSystem: '<S164>/Extended EMF Observer' incorporates:
         *  ActionPort: '<S167>/Action Port'
         */
        /* SwitchCase: '<S164>/Switch Case' incorporates:
         *  Gain: '<S171>/Gain1'
         */
        Gain1_m = 5.0E-5F * mcb_pmsm_foc_sensorless_f2837_B.Sum_m[1];

        /* End of Outputs for SubSystem: '<S164>/Extended EMF Observer' */

        /* Gain: '<S171>/Gain1' */
        mcb_pmsm_foc_sensorless_f2837_B.Gain1_m[1] = Gain1_m;

        /* Outputs for IfAction SubSystem: '<S164>/Extended EMF Observer' incorporates:
         *  ActionPort: '<S167>/Action Port'
         */
        /* SwitchCase: '<S164>/Switch Case' incorporates:
         *  Sum: '<S171>/Sum2'
         */
        Bias += Gain1_m;

        /* End of Outputs for SubSystem: '<S164>/Extended EMF Observer' */

        /* Sum: '<S171>/Sum2' */
        mcb_pmsm_foc_sensorless_f2837_B.Sum2_j[1] = Bias;

        /* Outputs for IfAction SubSystem: '<S164>/Extended EMF Observer' incorporates:
         *  ActionPort: '<S167>/Action Port'
         */
        /* SwitchCase: '<S164>/Switch Case' incorporates:
         *  Constant: '<S170>/V_PU'
         *  Gain: '<S171>/Gain2'
         *  Product: '<S170>/Product'
         *  Sum: '<S171>/Sum1'
         */
        mcb_pmsm_foc_sensorless_f2837_B.Gain2[1] = 0.632352948F * Bias;
        mcb_pmsm_foc_sensorless_f2837_B.Sum1_o[0] =
          mcb_pmsm_foc_sensorless_f2837_B.Gain2[0] +
          mcb_pmsm_foc_sensorless_f2837_B.Sum_n;
        mcb_pmsm_foc_sensorless_f2837_B.Sum1_o[1] =
          mcb_pmsm_foc_sensorless_f2837_B.Gain2[1] +
          mcb_pmsm_foc_sensorless_f2837_B.Sum1_c;
        Bias = mcb_pmsm_foc_sensorless_f2837_B.Sum1_o[0] * 0.0721687824F;

        /* End of Outputs for SubSystem: '<S164>/Extended EMF Observer' */

        /* Product: '<S170>/Product' */
        mcb_pmsm_foc_sensorless_f2837_B.Product_pr[0] = Bias;

        /* Outputs for IfAction SubSystem: '<S164>/Extended EMF Observer' incorporates:
         *  ActionPort: '<S167>/Action Port'
         */
        /* SwitchCase: '<S164>/Switch Case' incorporates:
         *  Constant: '<S187>/Filter_Constant'
         *  Product: '<S187>/Product'
         */
        Bias *= 0.702707827F;

        /* End of Outputs for SubSystem: '<S164>/Extended EMF Observer' */

        /* Product: '<S187>/Product' */
        mcb_pmsm_foc_sensorless_f2837_B.Product_kb[0] = Bias;

        /* Outputs for IfAction SubSystem: '<S164>/Extended EMF Observer' incorporates:
         *  ActionPort: '<S167>/Action Port'
         */
        /* SwitchCase: '<S164>/Switch Case' incorporates:
         *  UnitDelay: '<S187>/Unit Delay'
         */
        Gain1_m = mcb_pmsm_foc_sensorless_f_DWork.UnitDelay_DSTATE_j[0];

        /* End of Outputs for SubSystem: '<S164>/Extended EMF Observer' */

        /* UnitDelay: '<S187>/Unit Delay' */
        mcb_pmsm_foc_sensorless_f2837_B.UnitDelay_i[0] = Gain1_m;

        /* Outputs for IfAction SubSystem: '<S164>/Extended EMF Observer' incorporates:
         *  ActionPort: '<S167>/Action Port'
         */
        /* SwitchCase: '<S164>/Switch Case' incorporates:
         *  Constant: '<S187>/One'
         *  Product: '<S187>/Product1'
         */
        Gain1_m *= 0.297292173F;

        /* End of Outputs for SubSystem: '<S164>/Extended EMF Observer' */

        /* Product: '<S187>/Product1' */
        mcb_pmsm_foc_sensorless_f2837_B.Product1_oy[0] = Gain1_m;

        /* Outputs for IfAction SubSystem: '<S164>/Extended EMF Observer' incorporates:
         *  ActionPort: '<S167>/Action Port'
         */
        /* SwitchCase: '<S164>/Switch Case' incorporates:
         *  Constant: '<S170>/V_PU'
         *  Product: '<S170>/Product'
         *  Sum: '<S187>/Add1'
         */
        mcb_pmsm_foc_sensorless_f2837_B.Add1_a[0] = Bias + Gain1_m;
        Bias = mcb_pmsm_foc_sensorless_f2837_B.Sum1_o[1] * 0.0721687824F;

        /* End of Outputs for SubSystem: '<S164>/Extended EMF Observer' */

        /* Product: '<S170>/Product' */
        mcb_pmsm_foc_sensorless_f2837_B.Product_pr[1] = Bias;

        /* Outputs for IfAction SubSystem: '<S164>/Extended EMF Observer' incorporates:
         *  ActionPort: '<S167>/Action Port'
         */
        /* SwitchCase: '<S164>/Switch Case' incorporates:
         *  Constant: '<S187>/Filter_Constant'
         *  Product: '<S187>/Product'
         */
        Bias *= 0.702707827F;

        /* End of Outputs for SubSystem: '<S164>/Extended EMF Observer' */

        /* Product: '<S187>/Product' */
        mcb_pmsm_foc_sensorless_f2837_B.Product_kb[1] = Bias;

        /* Outputs for IfAction SubSystem: '<S164>/Extended EMF Observer' incorporates:
         *  ActionPort: '<S167>/Action Port'
         */
        /* SwitchCase: '<S164>/Switch Case' incorporates:
         *  UnitDelay: '<S187>/Unit Delay'
         */
        Gain1_m = mcb_pmsm_foc_sensorless_f_DWork.UnitDelay_DSTATE_j[1];

        /* End of Outputs for SubSystem: '<S164>/Extended EMF Observer' */

        /* UnitDelay: '<S187>/Unit Delay' */
        mcb_pmsm_foc_sensorless_f2837_B.UnitDelay_i[1] = Gain1_m;

        /* Outputs for IfAction SubSystem: '<S164>/Extended EMF Observer' incorporates:
         *  ActionPort: '<S167>/Action Port'
         */
        /* SwitchCase: '<S164>/Switch Case' incorporates:
         *  Constant: '<S187>/One'
         *  Product: '<S187>/Product1'
         */
        Gain1_m *= 0.297292173F;

        /* End of Outputs for SubSystem: '<S164>/Extended EMF Observer' */

        /* Product: '<S187>/Product1' */
        mcb_pmsm_foc_sensorless_f2837_B.Product1_oy[1] = Gain1_m;

        /* Outputs for IfAction SubSystem: '<S164>/Extended EMF Observer' incorporates:
         *  ActionPort: '<S167>/Action Port'
         */
        /* SwitchCase: '<S164>/Switch Case' incorporates:
         *  Constant: '<S278>/Filter_Constant'
         *  Constant: '<S278>/One'
         *  Constant: '<S295>/Filter_Constant'
         *  Constant: '<S295>/One'
         *  Constant: '<S298>/Filter_Constant'
         *  Constant: '<S298>/One'
         *  Constant: '<S304>/offset'
         *  Constant: '<S309>/Constant'
         *  DataTypeConversion: '<S194>/Cast To Boolean'
         *  DataTypeConversion: '<S197>/Data Type Conversion'
         *  DataTypeConversion: '<S304>/Get_Integer'
         *  DataTypeConversion: '<S308>/Data Type Conversion'
         *  Delay: '<S289>/Delay2'
         *  Delay: '<S289>/Delay3'
         *  Delay: '<S290>/Delay2'
         *  Delay: '<S290>/Delay3'
         *  Delay: '<S302>/Delay'
         *  Gain: '<S289>/Gain'
         *  Gain: '<S289>/Gain1'
         *  Gain: '<S290>/Gain'
         *  Gain: '<S290>/Gain1'
         *  Gain: '<S304>/indexing'
         *  If: '<S188>/If'
         *  If: '<S194>/If'
         *  If: '<S308>/If'
         *  Merge: '<S196>/Merge'
         *  Product: '<S194>/Product'
         *  Product: '<S194>/Product1'
         *  Product: '<S255>/Product'
         *  Product: '<S255>/Product1'
         *  Product: '<S278>/Product'
         *  Product: '<S278>/Product1'
         *  Product: '<S295>/Product'
         *  Product: '<S295>/Product1'
         *  Product: '<S298>/Product'
         *  Product: '<S298>/Product1'
         *  RelationalOperator: '<S309>/Compare'
         *  Relay: '<S188>/AlphaRelay'
         *  Relay: '<S188>/BetaRelay'
         *  Sum: '<S187>/Add1'
         *  Sum: '<S194>/Sum'
         *  Sum: '<S255>/Sum'
         *  Sum: '<S278>/Add1'
         *  Sum: '<S289>/Sum1'
         *  Sum: '<S290>/Sum1'
         *  Sum: '<S295>/Add1'
         *  Sum: '<S298>/Add1'
         *  Sum: '<S304>/Sum'
         *  SwitchCase: '<S196>/Switch Case'
         *  SwitchCase: '<S197>/Switch Case'
         *  UnitDelay: '<S278>/Unit Delay'
         *  UnitDelay: '<S295>/Unit Delay'
         *  UnitDelay: '<S298>/Unit Delay'
         * */
        mcb_pmsm_foc_sensorless_f2837_B.Add1_a[1] = Bias + Gain1_m;
        Bias = mcb_pmsm_foc_sensorless_f2837_B.Add1_a[0];
        mcb_pmsm_foc_sensorless_f_DWork.AlphaRelay_Mode = ((Bias >= 0.02F) || ((
          !(Bias <= -0.02F)) && mcb_pmsm_foc_sensorless_f_DWork.AlphaRelay_Mode));
        mcb_pmsm_foc_sensorless_f2837_B.AlphaRelay =
          mcb_pmsm_foc_sensorless_f_DWork.AlphaRelay_Mode;
        Bias = mcb_pmsm_foc_sensorless_f2837_B.Add1_a[1];
        mcb_pmsm_foc_sensorless_f_DWork.BetaRelay_Mode = ((Bias >= 0.02F) ||
          ((!(Bias <= -0.02F)) && mcb_pmsm_foc_sensorless_f_DWork.BetaRelay_Mode));
        mcb_pmsm_foc_sensorless_f2837_B.BetaRelay =
          mcb_pmsm_foc_sensorless_f_DWork.BetaRelay_Mode;

        /* Outputs for Triggered SubSystem: '<S188>/Dir_Sense' */
        mcb_pmsm_foc_sens_Dir_Sense(mcb_pmsm_foc_sensorless_f2837_B.AlphaRelay,
          mcb_pmsm_foc_sensorless_f2837_B.BetaRelay,
          &mcb_pmsm_foc_sensorless_f2837_B.Dir_Sense_d,
          &mcb_pmsm_foc_sen_PrevZCSigState.Dir_Sense_d);

        /* End of Outputs for SubSystem: '<S188>/Dir_Sense' */
        if (mcb_pmsm_foc_sensorless_f2837_B.Dir_Sense_d.Switch > 0) {
          /* Outputs for IfAction SubSystem: '<S188>/Subsystem2' incorporates:
           *  ActionPort: '<S191>/Action Port'
           */
          mcb_pmsm_foc_sen_Subsystem2(mcb_pmsm_foc_sensorless_f2837_B.Add1_a[0],
            mcb_pmsm_foc_sensorless_f2837_B.Add1_a[1],
            &mcb_pmsm_foc_sensorless_f2837_B.Merge_k,
            &mcb_pmsm_foc_sensorless_f2837_B.Merge1);

          /* End of Outputs for SubSystem: '<S188>/Subsystem2' */
        } else {
          /* Outputs for IfAction SubSystem: '<S188>/Subsystem3' incorporates:
           *  ActionPort: '<S192>/Action Port'
           */
          mcb_pmsm_foc_sen_Subsystem2(mcb_pmsm_foc_sensorless_f2837_B.Add1_a[1],
            mcb_pmsm_foc_sensorless_f2837_B.Add1_a[0],
            &mcb_pmsm_foc_sensorless_f2837_B.Merge1,
            &mcb_pmsm_foc_sensorless_f2837_B.Merge_k);

          /* End of Outputs for SubSystem: '<S188>/Subsystem3' */
        }

        mcb_pmsm_foc_sensorless_f2837_B.DataTypeConversion =
          mcb_pmsm_foc_sensorless_f2837_B.LogicalOperator_g;
        if ((int16_T)mcb_pmsm_foc_sensorless_f2837_B.DataTypeConversion == 1) {
          /* Outputs for IfAction SubSystem: '<S197>/Switch Case Action Subsystem' incorporates:
           *  ActionPort: '<S299>/Action Port'
           */
          /* SignalConversion generated from: '<S299>/In1' incorporates:
           *  Constant: '<S197>/Constant'
           */
          mcb_pmsm_foc_sensorless_f2837_B.In1 = 0.0F;

          /* Merge: '<S197>/Merge' incorporates:
           *  SignalConversion generated from: '<S299>/Out1'
           */
          mcb_pmsm_foc_sensorless_f2837_B.Merge_l[0] = 0.0F;
          mcb_pmsm_foc_sensorless_f2837_B.Merge_l[1] = 0.0F;

          /* End of Outputs for SubSystem: '<S197>/Switch Case Action Subsystem' */
        } else {
          /* Outputs for IfAction SubSystem: '<S197>/Switch Case Action Subsystem1' incorporates:
           *  ActionPort: '<S300>/Action Port'
           */
          /* Merge: '<S197>/Merge' incorporates:
           *  SignalConversion generated from: '<S300>/In1'
           */
          mcb_pmsm_foc_sensorless_f2837_B.Merge_l[0] =
            mcb_pmsm_foc_sensorless_f2837_B.Merge_k;
          mcb_pmsm_foc_sensorless_f2837_B.Merge_l[1] =
            mcb_pmsm_foc_sensorless_f2837_B.Merge1;

          /* End of Outputs for SubSystem: '<S197>/Switch Case Action Subsystem1' */
        }

        mcb_pmsm_foc_sensorless_f2837_B.Product_f =
          mcb_pmsm_foc_sensorless_f2837_B.Merge_l[0] *
          mcb_pmsm_foc_sensorless_f2837_B.Merge_l[0];
        mcb_pmsm_foc_sensorless_f2837_B.Product1_nx =
          mcb_pmsm_foc_sensorless_f2837_B.Merge_l[1] *
          mcb_pmsm_foc_sensorless_f2837_B.Merge_l[1];
        mcb_pmsm_foc_sensorless_f2837_B.Sum_k0 =
          mcb_pmsm_foc_sensorless_f2837_B.Product_f +
          mcb_pmsm_foc_sensorless_f2837_B.Product1_nx;
        mcb_pmsm_foc_sensorless_f2837_B.CastToBoolean =
          (mcb_pmsm_foc_sensorless_f2837_B.Sum_k0 != 0.0F);
        if (mcb_pmsm_foc_sensorless_f2837_B.CastToBoolean) {
          /* Outputs for IfAction SubSystem: '<S194>/Subsystem' incorporates:
           *  ActionPort: '<S203>/Action Port'
           */
          /* Sqrt: '<S203>/Sqrt' */
          mcb_pmsm_foc_sensorless_f2837_B.Sqrt_b = (real32_T)sqrt
            (mcb_pmsm_foc_sensorless_f2837_B.Sum_k0);

          /* Product: '<S203>/Divide' */
          mcb_pmsm_foc_sensorless_f2837_B.Divide = 1.0F /
            mcb_pmsm_foc_sensorless_f2837_B.Sqrt_b *
            mcb_pmsm_foc_sensorless_f2837_B.Merge_l[1];

          /* Product: '<S203>/Divide1' */
          mcb_pmsm_foc_sensorless_f2837_B.Divide1 =
            mcb_pmsm_foc_sensorless_f2837_B.Merge_l[0] /
            mcb_pmsm_foc_sensorless_f2837_B.Sqrt_b;

          /* Merge: '<S194>/Merge' incorporates:
           *  SignalConversion generated from: '<S203>/Out1'
           */
          mcb_pmsm_foc_sensorless_f2837_B.Merge_p =
            mcb_pmsm_foc_sensorless_f2837_B.Divide1;

          /* Merge: '<S194>/Merge1' incorporates:
           *  SignalConversion generated from: '<S203>/Out2'
           */
          mcb_pmsm_foc_sensorless_f2837_B.Merge1_g =
            mcb_pmsm_foc_sensorless_f2837_B.Divide;

          /* End of Outputs for SubSystem: '<S194>/Subsystem' */
        } else {
          /* Outputs for IfAction SubSystem: '<S194>/If Action Subsystem' incorporates:
           *  ActionPort: '<S202>/Action Port'
           */
          /* Merge: '<S194>/Merge' incorporates:
           *  SignalConversion generated from: '<S202>/Out1'
           */
          mcb_pmsm_foc_sensorless_f2837_B.Merge_p =
            mcb_pmsm_foc_sensorless_f2837_B.Merge_l[0];

          /* Merge: '<S194>/Merge1' incorporates:
           *  SignalConversion generated from: '<S202>/Out2'
           */
          mcb_pmsm_foc_sensorless_f2837_B.Merge1_g =
            mcb_pmsm_foc_sensorless_f2837_B.Merge_l[1];

          /* End of Outputs for SubSystem: '<S194>/If Action Subsystem' */
        }

        /* Outputs for IfAction SubSystem: '<S196>/OptimizedDifferentiationMethod' incorporates:
         *  ActionPort: '<S255>/Action Port'
         */
        zcEvent = (((mcb_pmsm_foc_sen_PrevZCSigState.Delay2_Reset_ZCE ==
                     POS_ZCSIG) != (int16_T)
                    mcb_pmsm_foc_sensorless_f2837_B.LogicalOperator_g) &&
                   (mcb_pmsm_foc_sen_PrevZCSigState.Delay2_Reset_ZCE !=
                    UNINITIALIZED_ZCSIG));
        if (zcEvent || mcb_pmsm_foc_sensorless_f2837_B.LogicalOperator_g) {
          mcb_pmsm_foc_sensorless_f_DWork.Delay2_DSTATE = 0.0F;
        }

        mcb_pmsm_foc_sen_PrevZCSigState.Delay2_Reset_ZCE =
          mcb_pmsm_foc_sensorless_f2837_B.LogicalOperator_g;
        mcb_pmsm_foc_sensorless_f2837_B.Delay2 =
          mcb_pmsm_foc_sensorless_f_DWork.Delay2_DSTATE;
        zcEvent = (((mcb_pmsm_foc_sen_PrevZCSigState.Delay3_Reset_ZCE ==
                     POS_ZCSIG) != (int16_T)
                    mcb_pmsm_foc_sensorless_f2837_B.LogicalOperator_g) &&
                   (mcb_pmsm_foc_sen_PrevZCSigState.Delay3_Reset_ZCE !=
                    UNINITIALIZED_ZCSIG));
        if (zcEvent || mcb_pmsm_foc_sensorless_f2837_B.LogicalOperator_g) {
          mcb_pmsm_foc_sensorless_f_DWork.Delay3_DSTATE = 0.0F;
        }

        mcb_pmsm_foc_sen_PrevZCSigState.Delay3_Reset_ZCE =
          mcb_pmsm_foc_sensorless_f2837_B.LogicalOperator_g;
        mcb_pmsm_foc_sensorless_f2837_B.Delay3 =
          mcb_pmsm_foc_sensorless_f_DWork.Delay3_DSTATE;
        mcb_pmsm_foc_sensorless_f2837_B.Product_ml =
          mcb_pmsm_foc_sensorless_f2837_B.Merge_p * 0.947066426F;
        mcb_pmsm_foc_sensorless_f2837_B.UnitDelay_gc =
          mcb_pmsm_foc_sensorless_f_DWork.UnitDelay_DSTATE_m;
        mcb_pmsm_foc_sensorless_f2837_B.Product1_k = 0.0529336035F *
          mcb_pmsm_foc_sensorless_f2837_B.UnitDelay_gc;
        mcb_pmsm_foc_sensorless_f2837_B.Add1_g =
          mcb_pmsm_foc_sensorless_f2837_B.Product_ml +
          mcb_pmsm_foc_sensorless_f2837_B.Product1_k;
        mcb_pmsm_foc_sensorless_f2837_B.Gain_a = 1.78915912E+6F *
          mcb_pmsm_foc_sensorless_f2837_B.Add1_g;
        mcb_pmsm_foc_sensorless_f2837_B.Sum1_p =
          (mcb_pmsm_foc_sensorless_f2837_B.Delay3 +
           mcb_pmsm_foc_sensorless_f2837_B.Gain_a) -
          mcb_pmsm_foc_sensorless_f2837_B.Delay2;
        mcb_pmsm_foc_sensorless_f2837_B.Gain1_p = 0.0110548595F *
          mcb_pmsm_foc_sensorless_f2837_B.Sum1_p;
        zcEvent = (((mcb_pmsm_foc_sen_PrevZCSigState.Delay2_Reset_ZCE_j ==
                     POS_ZCSIG) != (int16_T)
                    mcb_pmsm_foc_sensorless_f2837_B.LogicalOperator_g) &&
                   (mcb_pmsm_foc_sen_PrevZCSigState.Delay2_Reset_ZCE_j !=
                    UNINITIALIZED_ZCSIG));
        if (zcEvent || mcb_pmsm_foc_sensorless_f2837_B.LogicalOperator_g) {
          mcb_pmsm_foc_sensorless_f_DWork.Delay2_DSTATE_p = 0.0F;
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
          mcb_pmsm_foc_sensorless_f_DWork.Delay3_DSTATE_g = 0.0F;
        }

        mcb_pmsm_foc_sen_PrevZCSigState.Delay3_Reset_ZCE_c =
          mcb_pmsm_foc_sensorless_f2837_B.LogicalOperator_g;
        mcb_pmsm_foc_sensorless_f2837_B.Delay3_h =
          mcb_pmsm_foc_sensorless_f_DWork.Delay3_DSTATE_g;
        mcb_pmsm_foc_sensorless_f2837_B.Product_fa =
          mcb_pmsm_foc_sensorless_f2837_B.Merge1_g * 0.947066426F;
        mcb_pmsm_foc_sensorless_f2837_B.UnitDelay_e3 =
          mcb_pmsm_foc_sensorless_f_DWork.UnitDelay_DSTATE_fz;
        mcb_pmsm_foc_sensorless_f2837_B.Product1_eu = 0.0529336035F *
          mcb_pmsm_foc_sensorless_f2837_B.UnitDelay_e3;
        mcb_pmsm_foc_sensorless_f2837_B.Add1_o =
          mcb_pmsm_foc_sensorless_f2837_B.Product_fa +
          mcb_pmsm_foc_sensorless_f2837_B.Product1_eu;
        mcb_pmsm_foc_sensorless_f2837_B.Gain_n = 1.78915912E+6F *
          mcb_pmsm_foc_sensorless_f2837_B.Add1_o;
        mcb_pmsm_foc_sensorless_f2837_B.Sum1_ad =
          (mcb_pmsm_foc_sensorless_f2837_B.Delay3_h +
           mcb_pmsm_foc_sensorless_f2837_B.Gain_n) -
          mcb_pmsm_foc_sensorless_f2837_B.Delay2_h;
        mcb_pmsm_foc_sensorless_f2837_B.Gain1_f = 0.0110548595F *
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
        mcb_pmsm_foc_sensorless_f_DWork.Delay2_DSTATE =
          mcb_pmsm_foc_sensorless_f2837_B.Gain_a;
        mcb_pmsm_foc_sensorless_f_DWork.Delay3_DSTATE =
          mcb_pmsm_foc_sensorless_f2837_B.Gain1_p;
        mcb_pmsm_foc_sensorless_f_DWork.UnitDelay_DSTATE_m =
          mcb_pmsm_foc_sensorless_f2837_B.Add1_g;
        mcb_pmsm_foc_sensorless_f_DWork.Delay2_DSTATE_p =
          mcb_pmsm_foc_sensorless_f2837_B.Gain_n;
        mcb_pmsm_foc_sensorless_f_DWork.Delay3_DSTATE_g =
          mcb_pmsm_foc_sensorless_f2837_B.Gain1_f;
        mcb_pmsm_foc_sensorless_f_DWork.UnitDelay_DSTATE_fz =
          mcb_pmsm_foc_sensorless_f2837_B.Add1_o;

        /* End of Outputs for SubSystem: '<S196>/OptimizedDifferentiationMethod' */
        mcb_pmsm_foc_sensorless_f2837_B.Product_k3 =
          mcb_pmsm_foc_sensorless_f2837_B.Merge_i * 0.00470514596F;
        mcb_pmsm_foc_sensorless_f2837_B.UnitDelay_ik =
          mcb_pmsm_foc_sensorless_f_DWork.UnitDelay_DSTATE_i;
        mcb_pmsm_foc_sensorless_f2837_B.Product1_ls = 0.995294869F *
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
          mcb_pmsm_foc_sensorless_f_DWork.Delay_DSTATE_n = 0.0F;
        }

        mcb_pmsm_foc_sen_PrevZCSigState.Delay_Reset_ZCE_h =
          mcb_pmsm_foc_sensorless_f2837_B.LogicalOperator_g;
        mcb_pmsm_foc_sensorless_f2837_B.Delay_i =
          mcb_pmsm_foc_sensorless_f_DWork.Delay_DSTATE_n;
        mcb_pmsm_foc_sensorless_f2837_B.Compare_h =
          (mcb_pmsm_foc_sensorless_f2837_B.Delay_i < 0.0F);
        mcb_pmsm_foc_sensorless_f2837_B.DataTypeConversion_b =
          mcb_pmsm_foc_sensorless_f2837_B.Compare_h;
        if (mcb_pmsm_foc_sensorless_f2837_B.DataTypeConversion_b > 0U) {
          /* Outputs for IfAction SubSystem: '<S308>/If Action Subsystem' incorporates:
           *  ActionPort: '<S310>/Action Port'
           */
          mcb_pmsm__IfActionSubsystem(mcb_pmsm_foc_sensorless_f2837_B.Delay_i,
            &mcb_pmsm_foc_sensorless_f2837_B.Merge_h,
            &mcb_pmsm_foc_sensorless_f2837_B.IfActionSubsystem_f);

          /* End of Outputs for SubSystem: '<S308>/If Action Subsystem' */
        } else {
          /* Outputs for IfAction SubSystem: '<S308>/If Action Subsystem1' incorporates:
           *  ActionPort: '<S311>/Action Port'
           */
          mcb_pmsm_IfActionSubsystem1(mcb_pmsm_foc_sensorless_f2837_B.Delay_i,
            &mcb_pmsm_foc_sensorless_f2837_B.Merge_h,
            &mcb_pmsm_foc_sensorless_f2837_B.IfActionSubsystem1_f);

          /* End of Outputs for SubSystem: '<S308>/If Action Subsystem1' */
        }

        mcb_pmsm_foc_sensorless_f2837_B.indexing_i = 800.0F *
          mcb_pmsm_foc_sensorless_f2837_B.Merge_h;
        mcb_pmsm_foc_sensorless_f2837_B.Get_Integer_n = (uint16_T)
          mcb_pmsm_foc_sensorless_f2837_B.indexing_i;
        Sum_p = mcb_pmsm_foc_sensorless_f2837_B.Get_Integer_n + 1UL;

        /* End of Outputs for SubSystem: '<S164>/Extended EMF Observer' */

        /* Sum: '<S304>/Sum' */
        mcb_pmsm_foc_sensorless_f2837_B.Sum_p[0] = Sum_p;

        /* Outputs for IfAction SubSystem: '<S164>/Extended EMF Observer' incorporates:
         *  ActionPort: '<S167>/Action Port'
         */
        /* SwitchCase: '<S164>/Switch Case' incorporates:
         *  Constant: '<S304>/sine_table_values'
         *  Selector: '<S304>/Lookup'
         *  Sum: '<S304>/Sum'
         */
        mcb_pmsm_foc_sensorless_f2837_B.Lookup_a[0] =
          mcb_pmsm_foc_sensorless__ConstP.pooled37[(int16_T)Sum_p];
        Sum_p = mcb_pmsm_foc_sensorless_f2837_B.Get_Integer_n;

        /* End of Outputs for SubSystem: '<S164>/Extended EMF Observer' */

        /* Sum: '<S304>/Sum' */
        mcb_pmsm_foc_sensorless_f2837_B.Sum_p[1] = Sum_p;

        /* Outputs for IfAction SubSystem: '<S164>/Extended EMF Observer' incorporates:
         *  ActionPort: '<S167>/Action Port'
         */
        /* SwitchCase: '<S164>/Switch Case' incorporates:
         *  Constant: '<S304>/offset'
         *  Constant: '<S304>/sine_table_values'
         *  Selector: '<S304>/Lookup'
         *  Sum: '<S304>/Sum'
         */
        mcb_pmsm_foc_sensorless_f2837_B.Lookup_a[1] =
          mcb_pmsm_foc_sensorless__ConstP.pooled37[(int16_T)Sum_p];
        Sum_p = mcb_pmsm_foc_sensorless_f2837_B.Get_Integer_n + 201UL;

        /* End of Outputs for SubSystem: '<S164>/Extended EMF Observer' */

        /* Sum: '<S304>/Sum' */
        mcb_pmsm_foc_sensorless_f2837_B.Sum_p[2] = Sum_p;

        /* Outputs for IfAction SubSystem: '<S164>/Extended EMF Observer' incorporates:
         *  ActionPort: '<S167>/Action Port'
         */
        /* SwitchCase: '<S164>/Switch Case' incorporates:
         *  Constant: '<S304>/offset'
         *  Constant: '<S304>/sine_table_values'
         *  Selector: '<S304>/Lookup'
         *  Sum: '<S304>/Sum'
         */
        mcb_pmsm_foc_sensorless_f2837_B.Lookup_a[2] =
          mcb_pmsm_foc_sensorless__ConstP.pooled37[(int16_T)Sum_p];
        Sum_p = mcb_pmsm_foc_sensorless_f2837_B.Get_Integer_n + 200UL;

        /* End of Outputs for SubSystem: '<S164>/Extended EMF Observer' */

        /* Sum: '<S304>/Sum' */
        mcb_pmsm_foc_sensorless_f2837_B.Sum_p[3] = Sum_p;

        /* Outputs for IfAction SubSystem: '<S164>/Extended EMF Observer' incorporates:
         *  ActionPort: '<S167>/Action Port'
         */
        /* SwitchCase: '<S164>/Switch Case' incorporates:
         *  Constant: '<S201>/Filter_Constant'
         *  Constant: '<S201>/One'
         *  Constant: '<S304>/sine_table_values'
         *  DataTypeConversion: '<S304>/Data Type Conversion1'
         *  Delay: '<S170>/Delay1'
         *  Delay: '<S171>/Delay'
         *  Delay: '<S302>/Delay'
         *  DiscreteIntegrator: '<S235>/Integrator'
         *  Gain: '<S170>/SpeedGain'
         *  Gain: '<S189>/PositionGain'
         *  Gain: '<S232>/Integral Gain'
         *  Gain: '<S240>/Proportional Gain'
         *  Gain: '<S302>/Gain'
         *  Logic: '<S303>/NOT'
         *  Merge: '<S164>/Merge'
         *  Product: '<S189>/Product'
         *  Product: '<S189>/Product1'
         *  Product: '<S201>/Product'
         *  Product: '<S201>/Product1'
         *  Product: '<S307>/Product'
         *  Product: '<S307>/Product1'
         *  Selector: '<S304>/Lookup'
         *  Sum: '<S189>/Sum'
         *  Sum: '<S189>/Sum1'
         *  Sum: '<S201>/Add1'
         *  Sum: '<S244>/Sum'
         *  Sum: '<S304>/Sum2'
         *  Sum: '<S307>/Sum3'
         *  Sum: '<S307>/Sum4'
         *  Sum: '<S307>/Sum5'
         *  Sum: '<S307>/Sum6'
         *  UnitDelay: '<S187>/Unit Delay'
         *  UnitDelay: '<S201>/Unit Delay'
         *  UnitDelay: '<S278>/Unit Delay'
         *  UnitDelay: '<S303>/Unit Delay'
         * */
        mcb_pmsm_foc_sensorless_f2837_B.Lookup_a[3] =
          mcb_pmsm_foc_sensorless__ConstP.pooled37[(int16_T)Sum_p];
        mcb_pmsm_foc_sensorless_f2837_B.Sum5_h =
          mcb_pmsm_foc_sensorless_f2837_B.Lookup_a[2] -
          mcb_pmsm_foc_sensorless_f2837_B.Lookup_a[3];
        mcb_pmsm_foc_sensorless_f2837_B.DataTypeConversion1_c =
          mcb_pmsm_foc_sensorless_f2837_B.Get_Integer_n;
        mcb_pmsm_foc_sensorless_f2837_B.Sum2_k =
          mcb_pmsm_foc_sensorless_f2837_B.indexing_i -
          mcb_pmsm_foc_sensorless_f2837_B.DataTypeConversion1_c;
        mcb_pmsm_foc_sensorless_f2837_B.Product1_e =
          mcb_pmsm_foc_sensorless_f2837_B.Sum5_h *
          mcb_pmsm_foc_sensorless_f2837_B.Sum2_k;
        mcb_pmsm_foc_sensorless_f2837_B.Sum6_l =
          mcb_pmsm_foc_sensorless_f2837_B.Product1_e +
          mcb_pmsm_foc_sensorless_f2837_B.Lookup_a[3];
        mcb_pmsm_foc_sensorless_f2837_B.Product_oz =
          mcb_pmsm_foc_sensorless_f2837_B.Merge_p *
          mcb_pmsm_foc_sensorless_f2837_B.Sum6_l;
        mcb_pmsm_foc_sensorless_f2837_B.Sum3_c =
          mcb_pmsm_foc_sensorless_f2837_B.Lookup_a[0] -
          mcb_pmsm_foc_sensorless_f2837_B.Lookup_a[1];
        mcb_pmsm_foc_sensorless_f2837_B.Product_c =
          mcb_pmsm_foc_sensorless_f2837_B.Sum3_c *
          mcb_pmsm_foc_sensorless_f2837_B.Sum2_k;
        mcb_pmsm_foc_sensorless_f2837_B.Sum4_m =
          mcb_pmsm_foc_sensorless_f2837_B.Product_c +
          mcb_pmsm_foc_sensorless_f2837_B.Lookup_a[1];
        mcb_pmsm_foc_sensorless_f2837_B.Product1_m =
          mcb_pmsm_foc_sensorless_f2837_B.Merge1_g *
          mcb_pmsm_foc_sensorless_f2837_B.Sum4_m;
        mcb_pmsm_foc_sensorless_f2837_B.Sum_mt =
          mcb_pmsm_foc_sensorless_f2837_B.Product_oz -
          mcb_pmsm_foc_sensorless_f2837_B.Product1_m;
        mcb_pmsm_foc_sensorless_f2837_B.ProportionalGain = 250.0F *
          mcb_pmsm_foc_sensorless_f2837_B.Sum_mt;
        mcb_pmsm_foc_sensorless_f2837_B.IntegralGain = 10.0F *
          mcb_pmsm_foc_sensorless_f2837_B.Sum_mt;
        if (mcb_pmsm_foc_sensorless_f2837_B.LogicalOperator_g ||
            (mcb_pmsm_foc_sensorless_f_DWork.Integrator_PrevResetState_h != 0))
        {
          mcb_pmsm_foc_sensorless_f_DWork.Integrator_DSTATE_m = 0.0F;
        }

        mcb_pmsm_foc_sensorless_f2837_B.Integrator_b =
          mcb_pmsm_foc_sensorless_f_DWork.Integrator_DSTATE_m +
          mcb_pmsm_foc_sensorless_f2837_B.IntegralGain;
        mcb_pmsm_foc_sensorless_f2837_B.Sum_o =
          mcb_pmsm_foc_sensorless_f2837_B.ProportionalGain +
          mcb_pmsm_foc_sensorless_f2837_B.Integrator_b;
        mcb_pmsm_foc_sensorless_f2837_B.speed =
          mcb_pmsm_foc_sensorless_f2837_B.Add1_p +
          mcb_pmsm_foc_sensorless_f2837_B.Sum_o;
        mcb_pmsm_foc_sensorless_f2837_B.Product_j =
          mcb_pmsm_foc_sensorless_f2837_B.speed * 0.00470514596F;
        mcb_pmsm_foc_sensorless_f2837_B.UnitDelay_e =
          mcb_pmsm_foc_sensorless_f_DWork.UnitDelay_DSTATE_l;
        mcb_pmsm_foc_sensorless_f2837_B.Product1_p = 0.995294869F *
          mcb_pmsm_foc_sensorless_f2837_B.UnitDelay_e;
        mcb_pmsm_foc_sensorless_f2837_B.Add1_l =
          mcb_pmsm_foc_sensorless_f2837_B.Product_j +
          mcb_pmsm_foc_sensorless_f2837_B.Product1_p;
        mcb_pmsm_foc_sensorless_f2837_B.Gain_b3 = 7.93249728E-6F *
          mcb_pmsm_foc_sensorless_f2837_B.speed;
        mcb_pmsm_foc_sensorless_f2837_B.UnitDelay_g =
          mcb_pmsm_foc_sensorless_f_DWork.UnitDelay_DSTATE_f;
        mcb_pmsm_foc_sensorless_f2837_B.NOT_fg = true;

        /* Outputs for Enabled SubSystem: '<S303>/Accumulate' */
        mcb_pmsm_foc_sen_Accumulate(true,
          mcb_pmsm_foc_sensorless_f2837_B.Gain_b3,
          mcb_pmsm_foc_sensorless_f2837_B.UnitDelay_g,
          &mcb_pmsm_foc_sensorless_f2837_B.Accumulate_g,
          &mcb_pmsm_foc_sensorless_f_DWork.Accumulate_g);

        /* End of Outputs for SubSystem: '<S303>/Accumulate' */
        mcb_pmsm_foc_sensorless_f2837_B.Merge[0] =
          mcb_pmsm_foc_sensorless_f2837_B.Accumulate_g.Add1;
        mcb_pmsm_foc_sensorless_f2837_B.Merge[1] = 0.000279460888F *
          mcb_pmsm_foc_sensorless_f2837_B.Add1_l;
        mcb_pmsm_foc_sensorless_f_DWork.Delay1_DSTATE =
          mcb_pmsm_foc_sensorless_f2837_B.Add1_l;
        mcb_pmsm_foc_sensorless_f_DWork.Delay_DSTATE[0] =
          mcb_pmsm_foc_sensorless_f2837_B.Gain2[0];
        mcb_pmsm_foc_sensorless_f_DWork.UnitDelay_DSTATE_j[0] =
          mcb_pmsm_foc_sensorless_f2837_B.Add1_a[0];
        mcb_pmsm_foc_sensorless_f_DWork.Delay_DSTATE[1] =
          mcb_pmsm_foc_sensorless_f2837_B.Gain2[1];
        mcb_pmsm_foc_sensorless_f_DWork.UnitDelay_DSTATE_j[1] =
          mcb_pmsm_foc_sensorless_f2837_B.Add1_a[1];
        mcb_pmsm_foc_sensorless_f_DWork.UnitDelay_DSTATE_i =
          mcb_pmsm_foc_sensorless_f2837_B.Add1_p;
        mcb_pmsm_foc_sensorless_f_DWork.Delay_DSTATE_n =
          mcb_pmsm_foc_sensorless_f2837_B.Accumulate_g.Add1;
        mcb_pmsm_foc_sensorless_f_DWork.Integrator_DSTATE_m =
          mcb_pmsm_foc_sensorless_f2837_B.Integrator_b;
        mcb_pmsm_foc_sensorless_f_DWork.Integrator_PrevResetState_h = (int16_T)
          mcb_pmsm_foc_sensorless_f2837_B.LogicalOperator_g;
        mcb_pmsm_foc_sensorless_f_DWork.UnitDelay_DSTATE_l =
          mcb_pmsm_foc_sensorless_f2837_B.Add1_l;
        mcb_pmsm_foc_sensorless_f_DWork.UnitDelay_DSTATE_f =
          mcb_pmsm_foc_sensorless_f2837_B.Accumulate_g.Add1;

        /* End of Outputs for SubSystem: '<S164>/Extended EMF Observer' */

        /* Switch: '<S18>/Switch' */
        if (mcb_pmsm_foc_sensorless_f2837_B.Switch2_c != 0U) {
          /* Switch: '<S18>/Switch' */
          mcb_pmsm_foc_sensorless_f2837_B.Switch =
            mcb_pmsm_foc_sensorless_f2837_B.Merge[0];
        } else {
          /* Switch: '<S18>/Switch' */
          mcb_pmsm_foc_sensorless_f2837_B.Switch =
            mcb_pmsm_foc_sensorless_f2837_B.Accumulate.Add1;
        }

        /* End of Switch: '<S18>/Switch' */

        /* DataStoreRead: '<S163>/Data Store Read1' */
        mcb_pmsm_foc_sensorless_f2837_B.DataStoreRead1_f =
          mcb_pmsm_foc_sensorless_f_DWork.IaOffset;

        /* DataStoreRead: '<S163>/Data Store Read2' */
        mcb_pmsm_foc_sensorless_f2837_B.DataStoreRead2 =
          mcb_pmsm_foc_sensorless_f_DWork.IbOffset;

        /* S-Function (c2802xadc): '<S162>/ADC_C_IN2' */
        {
          /*  Internal Reference Voltage : Fixed scale 0 to 3.3 V range.  */
          /*  External Reference Voltage : Allowable ranges of VREFHI(ADCINA0) = 3.3 and VREFLO(tied to ground) = 0  */
          mcb_pmsm_foc_sensorless_f2837_B.ADC_C_IN2 = (AdccResultRegs.ADCRESULT0);
        }

        /* S-Function (c2802xadc): '<S162>/ADC_B_IN2' */
        {
          /*  Internal Reference Voltage : Fixed scale 0 to 3.3 V range.  */
          /*  External Reference Voltage : Allowable ranges of VREFHI(ADCINA0) = 3.3 and VREFLO(tied to ground) = 0  */
          mcb_pmsm_foc_sensorless_f2837_B.ADC_B_IN2 = (AdcbResultRegs.ADCRESULT0);
        }

        /* DataTypeConversion: '<S163>/Data Type Conversion' */
        mcb_pmsm_foc_sensorless_f2837_B.DataTypeConversion_j[0] =
          mcb_pmsm_foc_sensorless_f2837_B.ADC_C_IN2;
        mcb_pmsm_foc_sensorless_f2837_B.DataTypeConversion_j[1] =
          mcb_pmsm_foc_sensorless_f2837_B.ADC_B_IN2;

        /* Sum: '<S163>/Add' */
        mcb_pmsm_foc_sensorless_f2837_B.Add_p[0] =
          mcb_pmsm_foc_sensorless_f2837_B.DataTypeConversion_j[0] -
          mcb_pmsm_foc_sensorless_f2837_B.DataStoreRead1_f;
        mcb_pmsm_foc_sensorless_f2837_B.Add_p[1] =
          mcb_pmsm_foc_sensorless_f2837_B.DataTypeConversion_j[1] -
          mcb_pmsm_foc_sensorless_f2837_B.DataStoreRead2;

        /* Gain: '<S166>/Get ADC Voltage' */
        Bias = 0.000732600747F * (real32_T)
          mcb_pmsm_foc_sensorless_f2837_B.Add_p[0];
        mcb_pmsm_foc_sensorless_f2837_B.GetADCVoltage[0] = Bias;

        /* Gain: '<S166>/Get Currents' */
        Bias *= 3.57142854F;
        mcb_pmsm_foc_sensorless_f2837_B.GetCurrents[0] = Bias;

        /* Gain: '<S166>/PU_Conversion' */
        mcb_pmsm_foc_sensorless_f2837_B.PU_Conversion[0] = 0.186666667F * Bias;

        /* Gain: '<S166>/Get ADC Voltage' */
        Bias = 0.000732600747F * (real32_T)
          mcb_pmsm_foc_sensorless_f2837_B.Add_p[1];
        mcb_pmsm_foc_sensorless_f2837_B.GetADCVoltage[1] = Bias;

        /* Gain: '<S166>/Get Currents' */
        Bias *= 3.57142854F;
        mcb_pmsm_foc_sensorless_f2837_B.GetCurrents[1] = Bias;

        /* Gain: '<S166>/PU_Conversion' */
        mcb_pmsm_foc_sensorless_f2837_B.PU_Conversion[1] = 0.186666667F * Bias;

        /* Outputs for Atomic SubSystem: '<S22>/Two phase CRL wrap' */
        /* Sum: '<S23>/a_plus_2b' */
        mcb_pmsm_foc_sensorless_f2837_B.a_plus_2b =
          (mcb_pmsm_foc_sensorless_f2837_B.PU_Conversion[0] +
           mcb_pmsm_foc_sensorless_f2837_B.PU_Conversion[1]) +
          mcb_pmsm_foc_sensorless_f2837_B.PU_Conversion[1];

        /* Gain: '<S23>/one_by_sqrt3' */
        mcb_pmsm_foc_sensorless_f2837_B.one_by_sqrt3 = 0.577350259F *
          mcb_pmsm_foc_sensorless_f2837_B.a_plus_2b;

        /* AlgorithmDescriptorDelegate generated from: '<S23>/a16' */
        mcb_pmsm_foc_sensorless_f2837_B.algDD_o1_n =
          mcb_pmsm_foc_sensorless_f2837_B.PU_Conversion[0];

        /* AlgorithmDescriptorDelegate generated from: '<S23>/a16' */
        mcb_pmsm_foc_sensorless_f2837_B.algDD_o2_e =
          mcb_pmsm_foc_sensorless_f2837_B.one_by_sqrt3;

        /* End of Outputs for SubSystem: '<S22>/Two phase CRL wrap' */

        /* Switch: '<S29>/Switch1' incorporates:
         *  Constant: '<S29>/ChosenMethod'
         */
        mcb_pmsm_foc_sensorless_f2837_B.Switch1_h = 3U;

        /* RelationalOperator: '<S152>/Compare' incorporates:
         *  Constant: '<S152>/Constant'
         */
        mcb_pmsm_foc_sensorless_f2837_B.Compare =
          (mcb_pmsm_foc_sensorless_f2837_B.Switch < 0.0F);

        /* DataTypeConversion: '<S151>/Data Type Conversion' */
        mcb_pmsm_foc_sensorless_f2837_B.DataTypeConversion_jp =
          mcb_pmsm_foc_sensorless_f2837_B.Compare;

        /* If: '<S151>/If' */
        if (mcb_pmsm_foc_sensorless_f2837_B.DataTypeConversion_jp > 0U) {
          /* Outputs for IfAction SubSystem: '<S151>/If Action Subsystem' incorporates:
           *  ActionPort: '<S153>/Action Port'
           */
          mcb_pmsm__IfActionSubsystem(mcb_pmsm_foc_sensorless_f2837_B.Switch,
            &mcb_pmsm_foc_sensorless_f2837_B.Merge_g,
            &mcb_pmsm_foc_sensorless_f2837_B.IfActionSubsystem);

          /* End of Outputs for SubSystem: '<S151>/If Action Subsystem' */
        } else {
          /* Outputs for IfAction SubSystem: '<S151>/If Action Subsystem1' incorporates:
           *  ActionPort: '<S154>/Action Port'
           */
          mcb_pmsm_IfActionSubsystem1(mcb_pmsm_foc_sensorless_f2837_B.Switch,
            &mcb_pmsm_foc_sensorless_f2837_B.Merge_g,
            &mcb_pmsm_foc_sensorless_f2837_B.IfActionSubsystem1);

          /* End of Outputs for SubSystem: '<S151>/If Action Subsystem1' */
        }

        /* End of If: '<S151>/If' */

        /* Gain: '<S20>/indexing' */
        mcb_pmsm_foc_sensorless_f2837_B.indexing = 800.0F *
          mcb_pmsm_foc_sensorless_f2837_B.Merge_g;

        /* DataTypeConversion: '<S20>/Get_Integer' */
        mcb_pmsm_foc_sensorless_f2837_B.Get_Integer = (uint16_T)
          mcb_pmsm_foc_sensorless_f2837_B.indexing;

        /* Sum: '<S20>/Sum' incorporates:
         *  Constant: '<S20>/offset'
         */
        Sum_p = mcb_pmsm_foc_sensorless_f2837_B.Get_Integer + 1UL;
        mcb_pmsm_foc_sensorless_f2837_B.Sum[0] = Sum_p;

        /* Selector: '<S20>/Lookup' incorporates:
         *  Constant: '<S20>/sine_table_values'
         */
        mcb_pmsm_foc_sensorless_f2837_B.Lookup[0] =
          mcb_pmsm_foc_sensorless__ConstP.pooled37[(int16_T)Sum_p];

        /* Sum: '<S20>/Sum' */
        Sum_p = mcb_pmsm_foc_sensorless_f2837_B.Get_Integer;
        mcb_pmsm_foc_sensorless_f2837_B.Sum[1] = Sum_p;

        /* Selector: '<S20>/Lookup' incorporates:
         *  Constant: '<S20>/sine_table_values'
         */
        mcb_pmsm_foc_sensorless_f2837_B.Lookup[1] =
          mcb_pmsm_foc_sensorless__ConstP.pooled37[(int16_T)Sum_p];

        /* Sum: '<S20>/Sum' incorporates:
         *  Constant: '<S20>/offset'
         */
        Sum_p = mcb_pmsm_foc_sensorless_f2837_B.Get_Integer + 201UL;
        mcb_pmsm_foc_sensorless_f2837_B.Sum[2] = Sum_p;

        /* Selector: '<S20>/Lookup' incorporates:
         *  Constant: '<S20>/sine_table_values'
         */
        mcb_pmsm_foc_sensorless_f2837_B.Lookup[2] =
          mcb_pmsm_foc_sensorless__ConstP.pooled37[(int16_T)Sum_p];

        /* Sum: '<S20>/Sum' incorporates:
         *  Constant: '<S20>/offset'
         */
        Sum_p = mcb_pmsm_foc_sensorless_f2837_B.Get_Integer + 200UL;
        mcb_pmsm_foc_sensorless_f2837_B.Sum[3] = Sum_p;

        /* Selector: '<S20>/Lookup' incorporates:
         *  Constant: '<S20>/sine_table_values'
         */
        mcb_pmsm_foc_sensorless_f2837_B.Lookup[3] =
          mcb_pmsm_foc_sensorless__ConstP.pooled37[(int16_T)Sum_p];

        /* Sum: '<S150>/Sum3' */
        mcb_pmsm_foc_sensorless_f2837_B.Sum3 =
          mcb_pmsm_foc_sensorless_f2837_B.Lookup[0] -
          mcb_pmsm_foc_sensorless_f2837_B.Lookup[1];

        /* DataTypeConversion: '<S20>/Data Type Conversion1' */
        mcb_pmsm_foc_sensorless_f2837_B.DataTypeConversion1 =
          mcb_pmsm_foc_sensorless_f2837_B.Get_Integer;

        /* Sum: '<S20>/Sum2' */
        mcb_pmsm_foc_sensorless_f2837_B.Sum2 =
          mcb_pmsm_foc_sensorless_f2837_B.indexing -
          mcb_pmsm_foc_sensorless_f2837_B.DataTypeConversion1;

        /* Product: '<S150>/Product' */
        mcb_pmsm_foc_sensorless_f2837_B.Product =
          mcb_pmsm_foc_sensorless_f2837_B.Sum3 *
          mcb_pmsm_foc_sensorless_f2837_B.Sum2;

        /* Sum: '<S150>/Sum4' */
        mcb_pmsm_foc_sensorless_f2837_B.Sum4 =
          mcb_pmsm_foc_sensorless_f2837_B.Product +
          mcb_pmsm_foc_sensorless_f2837_B.Lookup[1];

        /* Sum: '<S150>/Sum5' */
        mcb_pmsm_foc_sensorless_f2837_B.Sum5 =
          mcb_pmsm_foc_sensorless_f2837_B.Lookup[2] -
          mcb_pmsm_foc_sensorless_f2837_B.Lookup[3];

        /* Product: '<S150>/Product1' */
        mcb_pmsm_foc_sensorless_f2837_B.Product1 =
          mcb_pmsm_foc_sensorless_f2837_B.Sum5 *
          mcb_pmsm_foc_sensorless_f2837_B.Sum2;

        /* Sum: '<S150>/Sum6' */
        mcb_pmsm_foc_sensorless_f2837_B.Sum6 =
          mcb_pmsm_foc_sensorless_f2837_B.Product1 +
          mcb_pmsm_foc_sensorless_f2837_B.Lookup[3];

        /* Outputs for Atomic SubSystem: '<S19>/Two inputs CRL' */
        /* Product: '<S148>/acos' */
        mcb_pmsm_foc_sensorless_f2837_B.acos_k =
          mcb_pmsm_foc_sensorless_f2837_B.algDD_o1_n *
          mcb_pmsm_foc_sensorless_f2837_B.Sum6;

        /* Product: '<S148>/bsin' */
        mcb_pmsm_foc_sensorless_f2837_B.bsin =
          mcb_pmsm_foc_sensorless_f2837_B.algDD_o2_e *
          mcb_pmsm_foc_sensorless_f2837_B.Sum4;

        /* Sum: '<S148>/sum_Ds' */
        mcb_pmsm_foc_sensorless_f2837_B.sum_Ds =
          mcb_pmsm_foc_sensorless_f2837_B.acos_k +
          mcb_pmsm_foc_sensorless_f2837_B.bsin;

        /* Product: '<S148>/bcos' */
        mcb_pmsm_foc_sensorless_f2837_B.bcos =
          mcb_pmsm_foc_sensorless_f2837_B.algDD_o2_e *
          mcb_pmsm_foc_sensorless_f2837_B.Sum6;

        /* Product: '<S148>/asin' */
        mcb_pmsm_foc_sensorless_f2837_B.asin_e =
          mcb_pmsm_foc_sensorless_f2837_B.algDD_o1_n *
          mcb_pmsm_foc_sensorless_f2837_B.Sum4;

        /* Sum: '<S148>/sum_Qs' */
        mcb_pmsm_foc_sensorless_f2837_B.sum_Qs =
          mcb_pmsm_foc_sensorless_f2837_B.bcos -
          mcb_pmsm_foc_sensorless_f2837_B.asin_e;

        /* Switch: '<S149>/Switch' */
        mcb_pmsm_foc_sensorless_f2837_B.Switch_o[0] =
          mcb_pmsm_foc_sensorless_f2837_B.sum_Ds;
        mcb_pmsm_foc_sensorless_f2837_B.Switch_o[1] =
          mcb_pmsm_foc_sensorless_f2837_B.sum_Qs;

        /* AlgorithmDescriptorDelegate generated from: '<S148>/a16' */
        mcb_pmsm_foc_sensorless_f2837_B.algDD_o1 =
          mcb_pmsm_foc_sensorless_f2837_B.Switch_o[0];

        /* AlgorithmDescriptorDelegate generated from: '<S148>/a16' */
        mcb_pmsm_foc_sensorless_f2837_B.algDD_o2 =
          mcb_pmsm_foc_sensorless_f2837_B.Switch_o[1];

        /* End of Outputs for SubSystem: '<S19>/Two inputs CRL' */

        /* Sum: '<S26>/Sum' */
        mcb_pmsm_foc_sensorless_f2837_B.Sum_g =
          mcb_pmsm_foc_sensorless_f2837_B.RT2[1] -
          mcb_pmsm_foc_sensorless_f2837_B.algDD_o2;

        /* Product: '<S131>/PProd Out' incorporates:
         *  Constant: '<S26>/Kp'
         */
        mcb_pmsm_foc_sensorless_f2837_B.PProdOut =
          mcb_pmsm_foc_sensorless_f2837_B.Sum_g * 3.0F;

        /* DataStoreRead: '<S26>/Data Store Read1' */
        mcb_pmsm_foc_sensorless_f2837_B.DataStoreRead1_h =
          mcb_pmsm_foc_sensorless_f_DWork.EnClosedLoop;

        /* Logic: '<S26>/Logical Operator' */
        mcb_pmsm_foc_sensorless_f2837_B.LogicalOperator =
          !mcb_pmsm_foc_sensorless_f2837_B.DataStoreRead1_h;

        /* UnitDelay: '<S26>/Unit Delay' */
        mcb_pmsm_foc_sensorless_f2837_B.UnitDelay_c =
          mcb_pmsm_foc_sensorless_f_DWork.UnitDelay_DSTATE_a;

        /* DiscreteIntegrator: '<S126>/Integrator' */
        if (mcb_pmsm_foc_sensorless_f_DWork.Integrator_IC_LOADING != 0U) {
          mcb_pmsm_foc_sensorless_f_DWork.Integrator_DSTATE =
            mcb_pmsm_foc_sensorless_f2837_B.UnitDelay_c;
        }

        if (mcb_pmsm_foc_sensorless_f2837_B.LogicalOperator ||
            (mcb_pmsm_foc_sensorless_f_DWork.Integrator_PrevResetState != 0)) {
          mcb_pmsm_foc_sensorless_f_DWork.Integrator_DSTATE =
            mcb_pmsm_foc_sensorless_f2837_B.UnitDelay_c;
        }

        /* DiscreteIntegrator: '<S126>/Integrator' */
        mcb_pmsm_foc_sensorless_f2837_B.Integrator =
          mcb_pmsm_foc_sensorless_f_DWork.Integrator_DSTATE;

        /* Sum: '<S135>/Sum' */
        mcb_pmsm_foc_sensorless_f2837_B.Sum_l =
          mcb_pmsm_foc_sensorless_f2837_B.PProdOut +
          mcb_pmsm_foc_sensorless_f2837_B.Integrator;

        /* Switch: '<S26>/Switch' */
        if (mcb_pmsm_foc_sensorless_f2837_B.DataStoreRead1_h) {
          /* Saturate: '<S133>/Saturation' */
          Gain1_m = mcb_pmsm_foc_sensorless_f2837_B.Sum_l;
          if (Gain1_m > 1.0F) {
            /* Saturate: '<S133>/Saturation' */
            mcb_pmsm_foc_sensorless_f2837_B.Saturation = 1.0F;
          } else if (Gain1_m < -1.0F) {
            /* Saturate: '<S133>/Saturation' */
            mcb_pmsm_foc_sensorless_f2837_B.Saturation = -1.0F;
          } else {
            /* Saturate: '<S133>/Saturation' */
            mcb_pmsm_foc_sensorless_f2837_B.Saturation = Gain1_m;
          }

          /* End of Saturate: '<S133>/Saturation' */

          /* Switch: '<S26>/Switch' */
          mcb_pmsm_foc_sensorless_f2837_B.Switch_h =
            mcb_pmsm_foc_sensorless_f2837_B.Saturation;
        } else {
          /* Switch: '<S26>/Switch' incorporates:
           *  Constant: '<S26>/Vq_OpenLoop'
           */
          mcb_pmsm_foc_sensorless_f2837_B.Switch_h = 0.0F;
        }

        /* End of Switch: '<S26>/Switch' */

        /* Sum: '<S25>/Sum' */
        mcb_pmsm_foc_sensorless_f2837_B.Sum_k =
          mcb_pmsm_foc_sensorless_f2837_B.RT2[0] -
          mcb_pmsm_foc_sensorless_f2837_B.algDD_o1;

        /* Product: '<S80>/PProd Out' incorporates:
         *  Constant: '<S25>/Kp'
         */
        mcb_pmsm_foc_sensorless_f2837_B.PProdOut_a =
          mcb_pmsm_foc_sensorless_f2837_B.Sum_k * 3.0F;

        /* DataStoreRead: '<S25>/Data Store Read1' */
        mcb_pmsm_foc_sensorless_f2837_B.DataStoreRead1_o =
          mcb_pmsm_foc_sensorless_f_DWork.EnClosedLoop;

        /* Logic: '<S25>/Logical Operator' */
        mcb_pmsm_foc_sensorless_f2837_B.LogicalOperator_n =
          !mcb_pmsm_foc_sensorless_f2837_B.DataStoreRead1_o;

        /* UnitDelay: '<S25>/Unit Delay' */
        mcb_pmsm_foc_sensorless_f2837_B.UnitDelay_m =
          mcb_pmsm_foc_sensorless_f_DWork.UnitDelay_DSTATE_p;

        /* DiscreteIntegrator: '<S75>/Integrator' */
        if (mcb_pmsm_foc_sensorless_f_DWork.Integrator_IC_LOADING_b != 0U) {
          mcb_pmsm_foc_sensorless_f_DWork.Integrator_DSTATE_a =
            mcb_pmsm_foc_sensorless_f2837_B.UnitDelay_m;
        }

        if (mcb_pmsm_foc_sensorless_f2837_B.LogicalOperator_n ||
            (mcb_pmsm_foc_sensorless_f_DWork.Integrator_PrevResetState_e != 0))
        {
          mcb_pmsm_foc_sensorless_f_DWork.Integrator_DSTATE_a =
            mcb_pmsm_foc_sensorless_f2837_B.UnitDelay_m;
        }

        /* DiscreteIntegrator: '<S75>/Integrator' */
        mcb_pmsm_foc_sensorless_f2837_B.Integrator_c =
          mcb_pmsm_foc_sensorless_f_DWork.Integrator_DSTATE_a;

        /* Sum: '<S84>/Sum' */
        mcb_pmsm_foc_sensorless_f2837_B.Sum_kn =
          mcb_pmsm_foc_sensorless_f2837_B.PProdOut_a +
          mcb_pmsm_foc_sensorless_f2837_B.Integrator_c;

        /* Switch: '<S25>/Switch' */
        if (mcb_pmsm_foc_sensorless_f2837_B.DataStoreRead1_o) {
          /* Saturate: '<S82>/Saturation' */
          Gain1_m = mcb_pmsm_foc_sensorless_f2837_B.Sum_kn;
          if (Gain1_m > 1.0F) {
            /* Saturate: '<S82>/Saturation' */
            mcb_pmsm_foc_sensorless_f2837_B.Saturation_i = 1.0F;
          } else if (Gain1_m < -1.0F) {
            /* Saturate: '<S82>/Saturation' */
            mcb_pmsm_foc_sensorless_f2837_B.Saturation_i = -1.0F;
          } else {
            /* Saturate: '<S82>/Saturation' */
            mcb_pmsm_foc_sensorless_f2837_B.Saturation_i = Gain1_m;
          }

          /* End of Saturate: '<S82>/Saturation' */

          /* Switch: '<S25>/Switch' */
          mcb_pmsm_foc_sensorless_f2837_B.Switch_l =
            mcb_pmsm_foc_sensorless_f2837_B.Saturation_i;
        } else {
          /* DataStoreRead: '<S25>/Vd_OpenLoop' */
          mcb_pmsm_foc_sensorless_f2837_B.Vd_OpenLoop =
            mcb_pmsm_foc_sensorless_f_DWork.Speed_ref;

          /* Abs: '<S25>/Abs' */
          mcb_pmsm_foc_sensorless_f2837_B.Abs_f = fabsf
            (mcb_pmsm_foc_sensorless_f2837_B.Vd_OpenLoop);

          /* Saturate: '<S25>/Saturation' */
          Gain1_m = mcb_pmsm_foc_sensorless_f2837_B.Abs_f;
          if (Gain1_m > 0.5F) {
            /* Saturate: '<S25>/Saturation' */
            mcb_pmsm_foc_sensorless_f2837_B.Saturation_h = 0.5F;
          } else if (Gain1_m < 0.15F) {
            /* Saturate: '<S25>/Saturation' */
            mcb_pmsm_foc_sensorless_f2837_B.Saturation_h = 0.15F;
          } else {
            /* Saturate: '<S25>/Saturation' */
            mcb_pmsm_foc_sensorless_f2837_B.Saturation_h = Gain1_m;
          }

          /* End of Saturate: '<S25>/Saturation' */

          /* Switch: '<S25>/Switch' */
          mcb_pmsm_foc_sensorless_f2837_B.Switch_l =
            mcb_pmsm_foc_sensorless_f2837_B.Saturation_h;
        }

        /* End of Switch: '<S25>/Switch' */

        /* Switch: '<S29>/Switch' incorporates:
         *  Constant: '<S29>/Constant3'
         */
        mcb_pmsm_foc_sensorless_f2837_B.Switch_f = 0.95F;

        /* Product: '<S29>/Product' */
        mcb_pmsm_foc_sensorless_f2837_B.Product_b = 0.9025F;

        /* Product: '<S30>/Product' */
        mcb_pmsm_foc_sensorless_f2837_B.Product_k =
          mcb_pmsm_foc_sensorless_f2837_B.Switch_l *
          mcb_pmsm_foc_sensorless_f2837_B.Switch_l;

        /* Product: '<S30>/Product1' */
        mcb_pmsm_foc_sensorless_f2837_B.Product1_n =
          mcb_pmsm_foc_sensorless_f2837_B.Switch_h *
          mcb_pmsm_foc_sensorless_f2837_B.Switch_h;

        /* Sum: '<S30>/Sum1' */
        mcb_pmsm_foc_sensorless_f2837_B.Sum1 =
          mcb_pmsm_foc_sensorless_f2837_B.Product_k +
          mcb_pmsm_foc_sensorless_f2837_B.Product1_n;

        /* Outputs for IfAction SubSystem: '<S24>/D-Q Equivalence' incorporates:
         *  ActionPort: '<S27>/Action Port'
         */
        /* If: '<S24>/If' incorporates:
         *  DataTypeConversion: '<S27>/Data Type Conversion'
         *  RelationalOperator: '<S27>/Relational Operator'
         */
        mcb_pmsm_foc_sensorless_f2837_B.RelationalOperator_e =
          (mcb_pmsm_foc_sensorless_f2837_B.Sum1 > 0.9025F);
        mcb_pmsm_foc_sensorless_f2837_B.DataTypeConversion_m =
          mcb_pmsm_foc_sensorless_f2837_B.RelationalOperator_e;

        /* If: '<S27>/If' incorporates:
         *  If: '<S24>/If'
         */
        if (mcb_pmsm_foc_sensorless_f2837_B.DataTypeConversion_m != 0U) {
          /* Outputs for IfAction SubSystem: '<S27>/Limiter' incorporates:
           *  ActionPort: '<S31>/Action Port'
           */
          /* Product: '<S31>/Product' */
          mcb_pmsm_foc_sensorless_f2837_B.Product_l[0] =
            mcb_pmsm_foc_sensorless_f2837_B.Switch_l * 0.95F;
          mcb_pmsm_foc_sensorless_f2837_B.Product_l[1] =
            mcb_pmsm_foc_sensorless_f2837_B.Switch_h * 0.95F;

          /* Sqrt: '<S31>/Square Root' */
          mcb_pmsm_foc_sensorless_f2837_B.SquareRoot = (real32_T)sqrt
            (mcb_pmsm_foc_sensorless_f2837_B.Sum1);

          /* Switch: '<S31>/Switch' */
          if (mcb_pmsm_foc_sensorless_f2837_B.SquareRoot != 0.0F) {
            /* Switch: '<S31>/Switch' */
            mcb_pmsm_foc_sensorless_f2837_B.Switch_a =
              mcb_pmsm_foc_sensorless_f2837_B.SquareRoot;
          } else {
            /* Switch: '<S31>/Switch' incorporates:
             *  Constant: '<S31>/Constant'
             */
            mcb_pmsm_foc_sensorless_f2837_B.Switch_a = 1.0F;
          }

          /* End of Switch: '<S31>/Switch' */

          /* Product: '<S31>/Reciprocal' */
          mcb_pmsm_foc_sensorless_f2837_B.Reciprocal = 1.0F /
            mcb_pmsm_foc_sensorless_f2837_B.Switch_a;

          /* Merge: '<S24>/Merge' incorporates:
           *  Product: '<S31>/Product1'
           */
          mcb_pmsm_foc_sensorless_f2837_B.Merge_e[0] =
            mcb_pmsm_foc_sensorless_f2837_B.Product_l[0] *
            mcb_pmsm_foc_sensorless_f2837_B.Reciprocal;
          mcb_pmsm_foc_sensorless_f2837_B.Merge_e[1] =
            mcb_pmsm_foc_sensorless_f2837_B.Product_l[1] *
            mcb_pmsm_foc_sensorless_f2837_B.Reciprocal;

          /* End of Outputs for SubSystem: '<S27>/Limiter' */
        } else {
          /* Outputs for IfAction SubSystem: '<S27>/Passthrough' incorporates:
           *  ActionPort: '<S32>/Action Port'
           */
          /* Merge: '<S24>/Merge' incorporates:
           *  SignalConversion generated from: '<S32>/dqRef'
           */
          mcb_pmsm_foc_sensorless_f2837_B.Merge_e[0] =
            mcb_pmsm_foc_sensorless_f2837_B.Switch_l;
          mcb_pmsm_foc_sensorless_f2837_B.Merge_e[1] =
            mcb_pmsm_foc_sensorless_f2837_B.Switch_h;

          /* End of Outputs for SubSystem: '<S27>/Passthrough' */
        }

        /* End of If: '<S27>/If' */
        /* End of Outputs for SubSystem: '<S24>/D-Q Equivalence' */

        /* DeadZone: '<S68>/DeadZone' */
        if (mcb_pmsm_foc_sensorless_f2837_B.Sum_kn > 1.0F) {
          /* DeadZone: '<S68>/DeadZone' */
          mcb_pmsm_foc_sensorless_f2837_B.DeadZone =
            mcb_pmsm_foc_sensorless_f2837_B.Sum_kn - 1.0F;
        } else if (mcb_pmsm_foc_sensorless_f2837_B.Sum_kn >= -1.0F) {
          /* DeadZone: '<S68>/DeadZone' */
          mcb_pmsm_foc_sensorless_f2837_B.DeadZone = 0.0F;
        } else {
          /* DeadZone: '<S68>/DeadZone' */
          mcb_pmsm_foc_sensorless_f2837_B.DeadZone =
            mcb_pmsm_foc_sensorless_f2837_B.Sum_kn - -1.0F;
        }

        /* End of DeadZone: '<S68>/DeadZone' */

        /* RelationalOperator: '<S66>/Relational Operator' incorporates:
         *  Constant: '<S66>/Clamping_zero'
         */
        mcb_pmsm_foc_sensorless_f2837_B.RelationalOperator =
          (mcb_pmsm_foc_sensorless_f2837_B.DeadZone != 0.0F);

        /* RelationalOperator: '<S66>/fix for DT propagation issue' incorporates:
         *  Constant: '<S66>/Clamping_zero'
         */
        mcb_pmsm_foc_sensorless_f2837_B.fixforDTpropagationissue =
          (mcb_pmsm_foc_sensorless_f2837_B.DeadZone > 0.0F);

        /* Switch: '<S66>/Switch1' */
        if (mcb_pmsm_foc_sensorless_f2837_B.fixforDTpropagationissue) {
          /* Switch: '<S66>/Switch1' incorporates:
           *  Constant: '<S66>/Constant'
           */
          mcb_pmsm_foc_sensorless_f2837_B.Switch1_m = 1;
        } else {
          /* Switch: '<S66>/Switch1' incorporates:
           *  Constant: '<S66>/Constant2'
           */
          mcb_pmsm_foc_sensorless_f2837_B.Switch1_m = -1;
        }

        /* End of Switch: '<S66>/Switch1' */

        /* Product: '<S72>/IProd Out' incorporates:
         *  Constant: '<S25>/Ki'
         */
        mcb_pmsm_foc_sensorless_f2837_B.IProdOut =
          mcb_pmsm_foc_sensorless_f2837_B.Sum_k * 5.0E-6F;

        /* RelationalOperator: '<S66>/fix for DT propagation issue1' incorporates:
         *  Constant: '<S66>/Clamping_zero'
         */
        mcb_pmsm_foc_sensorless_f2837_B.fixforDTpropagationissue1 =
          (mcb_pmsm_foc_sensorless_f2837_B.IProdOut > 0.0F);

        /* Switch: '<S66>/Switch2' */
        if (mcb_pmsm_foc_sensorless_f2837_B.fixforDTpropagationissue1) {
          /* Switch: '<S66>/Switch2' incorporates:
           *  Constant: '<S66>/Constant3'
           */
          mcb_pmsm_foc_sensorless_f2837_B.Switch2_p = 1;
        } else {
          /* Switch: '<S66>/Switch2' incorporates:
           *  Constant: '<S66>/Constant4'
           */
          mcb_pmsm_foc_sensorless_f2837_B.Switch2_p = -1;
        }

        /* End of Switch: '<S66>/Switch2' */

        /* RelationalOperator: '<S66>/Equal1' incorporates:
         *  Switch: '<S66>/Switch1'
         *  Switch: '<S66>/Switch2'
         */
        mcb_pmsm_foc_sensorless_f2837_B.Equal1 =
          (mcb_pmsm_foc_sensorless_f2837_B.Switch1_m ==
           mcb_pmsm_foc_sensorless_f2837_B.Switch2_p);

        /* Logic: '<S66>/AND3' */
        mcb_pmsm_foc_sensorless_f2837_B.AND3 =
          (mcb_pmsm_foc_sensorless_f2837_B.RelationalOperator &&
           mcb_pmsm_foc_sensorless_f2837_B.Equal1);

        /* Switch: '<S66>/Switch' */
        if (mcb_pmsm_foc_sensorless_f2837_B.AND3) {
          /* Switch: '<S66>/Switch' incorporates:
           *  Constant: '<S66>/Constant1'
           */
          mcb_pmsm_foc_sensorless_f2837_B.Switch_fm = 0.0F;
        } else {
          /* Switch: '<S66>/Switch' */
          mcb_pmsm_foc_sensorless_f2837_B.Switch_fm =
            mcb_pmsm_foc_sensorless_f2837_B.IProdOut;
        }

        /* End of Switch: '<S66>/Switch' */

        /* DeadZone: '<S119>/DeadZone' */
        if (mcb_pmsm_foc_sensorless_f2837_B.Sum_l > 1.0F) {
          /* DeadZone: '<S119>/DeadZone' */
          mcb_pmsm_foc_sensorless_f2837_B.DeadZone_d =
            mcb_pmsm_foc_sensorless_f2837_B.Sum_l - 1.0F;
        } else if (mcb_pmsm_foc_sensorless_f2837_B.Sum_l >= -1.0F) {
          /* DeadZone: '<S119>/DeadZone' */
          mcb_pmsm_foc_sensorless_f2837_B.DeadZone_d = 0.0F;
        } else {
          /* DeadZone: '<S119>/DeadZone' */
          mcb_pmsm_foc_sensorless_f2837_B.DeadZone_d =
            mcb_pmsm_foc_sensorless_f2837_B.Sum_l - -1.0F;
        }

        /* End of DeadZone: '<S119>/DeadZone' */

        /* RelationalOperator: '<S117>/Relational Operator' incorporates:
         *  Constant: '<S117>/Clamping_zero'
         */
        mcb_pmsm_foc_sensorless_f2837_B.RelationalOperator_c =
          (mcb_pmsm_foc_sensorless_f2837_B.DeadZone_d != 0.0F);

        /* RelationalOperator: '<S117>/fix for DT propagation issue' incorporates:
         *  Constant: '<S117>/Clamping_zero'
         */
        mcb_pmsm_foc_sensorless_f2837_B.fixforDTpropagationissue_p =
          (mcb_pmsm_foc_sensorless_f2837_B.DeadZone_d > 0.0F);

        /* Switch: '<S117>/Switch1' */
        if (mcb_pmsm_foc_sensorless_f2837_B.fixforDTpropagationissue_p) {
          /* Switch: '<S117>/Switch1' incorporates:
           *  Constant: '<S117>/Constant'
           */
          mcb_pmsm_foc_sensorless_f2837_B.Switch1_l = 1;
        } else {
          /* Switch: '<S117>/Switch1' incorporates:
           *  Constant: '<S117>/Constant2'
           */
          mcb_pmsm_foc_sensorless_f2837_B.Switch1_l = -1;
        }

        /* End of Switch: '<S117>/Switch1' */

        /* Product: '<S123>/IProd Out' incorporates:
         *  Constant: '<S26>/Ki'
         */
        mcb_pmsm_foc_sensorless_f2837_B.IProdOut_h =
          mcb_pmsm_foc_sensorless_f2837_B.Sum_g * 5.0E-6F;

        /* RelationalOperator: '<S117>/fix for DT propagation issue1' incorporates:
         *  Constant: '<S117>/Clamping_zero'
         */
        mcb_pmsm_foc_sensorless_f2837_B.fixforDTpropagationissue1_o =
          (mcb_pmsm_foc_sensorless_f2837_B.IProdOut_h > 0.0F);

        /* Switch: '<S117>/Switch2' */
        if (mcb_pmsm_foc_sensorless_f2837_B.fixforDTpropagationissue1_o) {
          /* Switch: '<S117>/Switch2' incorporates:
           *  Constant: '<S117>/Constant3'
           */
          mcb_pmsm_foc_sensorless_f2837_B.Switch2_k = 1;
        } else {
          /* Switch: '<S117>/Switch2' incorporates:
           *  Constant: '<S117>/Constant4'
           */
          mcb_pmsm_foc_sensorless_f2837_B.Switch2_k = -1;
        }

        /* End of Switch: '<S117>/Switch2' */

        /* RelationalOperator: '<S117>/Equal1' incorporates:
         *  Switch: '<S117>/Switch1'
         *  Switch: '<S117>/Switch2'
         */
        mcb_pmsm_foc_sensorless_f2837_B.Equal1_b =
          (mcb_pmsm_foc_sensorless_f2837_B.Switch1_l ==
           mcb_pmsm_foc_sensorless_f2837_B.Switch2_k);

        /* Logic: '<S117>/AND3' */
        mcb_pmsm_foc_sensorless_f2837_B.AND3_b =
          (mcb_pmsm_foc_sensorless_f2837_B.RelationalOperator_c &&
           mcb_pmsm_foc_sensorless_f2837_B.Equal1_b);

        /* Switch: '<S117>/Switch' */
        if (mcb_pmsm_foc_sensorless_f2837_B.AND3_b) {
          /* Switch: '<S117>/Switch' incorporates:
           *  Constant: '<S117>/Constant1'
           */
          mcb_pmsm_foc_sensorless_f2837_B.Switch_m = 0.0F;
        } else {
          /* Switch: '<S117>/Switch' */
          mcb_pmsm_foc_sensorless_f2837_B.Switch_m =
            mcb_pmsm_foc_sensorless_f2837_B.IProdOut_h;
        }

        /* End of Switch: '<S117>/Switch' */

        /* Outputs for Atomic SubSystem: '<S17>/Two inputs CRL' */
        /* Product: '<S143>/qcos' */
        mcb_pmsm_foc_sensorless_f2837_B.qcos =
          mcb_pmsm_foc_sensorless_f2837_B.Merge_e[1] *
          mcb_pmsm_foc_sensorless_f2837_B.Sum6;

        /* Product: '<S143>/dsin' */
        mcb_pmsm_foc_sensorless_f2837_B.dsin =
          mcb_pmsm_foc_sensorless_f2837_B.Merge_e[0] *
          mcb_pmsm_foc_sensorless_f2837_B.Sum4;

        /* Sum: '<S143>/sum_beta' */
        mcb_pmsm_foc_sensorless_f2837_B.sum_beta =
          mcb_pmsm_foc_sensorless_f2837_B.qcos +
          mcb_pmsm_foc_sensorless_f2837_B.dsin;

        /* Product: '<S143>/dcos' */
        mcb_pmsm_foc_sensorless_f2837_B.dcos =
          mcb_pmsm_foc_sensorless_f2837_B.Merge_e[0] *
          mcb_pmsm_foc_sensorless_f2837_B.Sum6;

        /* Product: '<S143>/qsin' */
        mcb_pmsm_foc_sensorless_f2837_B.qsin =
          mcb_pmsm_foc_sensorless_f2837_B.Merge_e[1] *
          mcb_pmsm_foc_sensorless_f2837_B.Sum4;

        /* Sum: '<S143>/sum_alpha' */
        mcb_pmsm_foc_sensorless_f2837_B.sum_alpha =
          mcb_pmsm_foc_sensorless_f2837_B.dcos -
          mcb_pmsm_foc_sensorless_f2837_B.qsin;

        /* Switch: '<S144>/Switch' */
        mcb_pmsm_foc_sensorless_f2837_B.Switch_ih[0] =
          mcb_pmsm_foc_sensorless_f2837_B.sum_alpha;
        mcb_pmsm_foc_sensorless_f2837_B.Switch_ih[1] =
          mcb_pmsm_foc_sensorless_f2837_B.sum_beta;

        /* AlgorithmDescriptorDelegate generated from: '<S143>/a16' */
        mcb_pmsm_foc_sensorless_f2837_B.algDD_o1_o =
          mcb_pmsm_foc_sensorless_f2837_B.Switch_ih[0];

        /* AlgorithmDescriptorDelegate generated from: '<S143>/a16' */
        mcb_pmsm_foc_sensorless_f2837_B.algDD_o2_k =
          mcb_pmsm_foc_sensorless_f2837_B.Switch_ih[1];

        /* End of Outputs for SubSystem: '<S17>/Two inputs CRL' */

        /* UnitDelay: '<S378>/Output' */
        mcb_pmsm_foc_sensorless_f2837_B.Output =
          mcb_pmsm_foc_sensorless_f_DWork.Output_DSTATE;

        /* DataStoreRead: '<S9>/Data Store Read1' */
        mcb_pmsm_foc_sensorless_f2837_B.DataStoreRead1 =
          mcb_pmsm_foc_sensorless_f_DWork.Speed_ref;

        /* SignalConversion generated from: '<S9>/Selector' */
        mcb_pmsm_foc_sensorless_f2837_B.TmpSignalConversionAtSelectorIn[0] =
          mcb_pmsm_foc_sensorless_f2837_B.Merge[1];
        mcb_pmsm_foc_sensorless_f2837_B.TmpSignalConversionAtSelectorIn[1] =
          mcb_pmsm_foc_sensorless_f2837_B.DataStoreRead1;
        mcb_pmsm_foc_sensorless_f2837_B.TmpSignalConversionAtSelectorIn[2] =
          mcb_pmsm_foc_sensorless_f2837_B.PU_Conversion[0];
        mcb_pmsm_foc_sensorless_f2837_B.TmpSignalConversionAtSelectorIn[3] =
          mcb_pmsm_foc_sensorless_f2837_B.PU_Conversion[1];
        mcb_pmsm_foc_sensorless_f2837_B.TmpSignalConversionAtSelectorIn[4] =
          mcb_pmsm_foc_sensorless_f2837_B.RT2[0];
        mcb_pmsm_foc_sensorless_f2837_B.TmpSignalConversionAtSelectorIn[5] =
          mcb_pmsm_foc_sensorless_f2837_B.algDD_o1;
        mcb_pmsm_foc_sensorless_f2837_B.TmpSignalConversionAtSelectorIn[6] =
          mcb_pmsm_foc_sensorless_f2837_B.RT2[1];
        mcb_pmsm_foc_sensorless_f2837_B.TmpSignalConversionAtSelectorIn[7] =
          mcb_pmsm_foc_sensorless_f2837_B.algDD_o2;
        mcb_pmsm_foc_sensorless_f2837_B.TmpSignalConversionAtSelectorIn[8] =
          mcb_pmsm_foc_sensorless_f2837_B.Merge[0];

        /* DataStoreRead: '<S9>/Data Store Read' */
        mcb_pmsm_foc_sensorless_f2837_B.DataStoreRead_f =
          mcb_pmsm_foc_sensorless_f_DWork.Debug_signals;

        /* MultiPortSwitch: '<S9>/Multiport Switch' */
        switch (mcb_pmsm_foc_sensorless_f2837_B.DataStoreRead_f) {
         case 1:
          /* MultiPortSwitch: '<S9>/Multiport Switch' incorporates:
           *  Constant: '<S9>/speed_control'
           */
          mcb_pmsm_foc_sensorless_f2837_B.MultiportSwitch[0] = 1U;
          mcb_pmsm_foc_sensorless_f2837_B.MultiportSwitch[1] = 2U;
          break;

         case 2:
          /* MultiPortSwitch: '<S9>/Multiport Switch' incorporates:
           *  Constant: '<S9>/Id_control'
           */
          mcb_pmsm_foc_sensorless_f2837_B.MultiportSwitch[0] = 5U;
          mcb_pmsm_foc_sensorless_f2837_B.MultiportSwitch[1] = 6U;
          break;

         case 3:
          /* MultiPortSwitch: '<S9>/Multiport Switch' incorporates:
           *  Constant: '<S9>/Iq_control'
           */
          mcb_pmsm_foc_sensorless_f2837_B.MultiportSwitch[0] = 7U;
          mcb_pmsm_foc_sensorless_f2837_B.MultiportSwitch[1] = 8U;
          break;

         case 4:
          /* MultiPortSwitch: '<S9>/Multiport Switch' incorporates:
           *  Constant: '<S9>/Iab'
           */
          mcb_pmsm_foc_sensorless_f2837_B.MultiportSwitch[0] = 3U;
          mcb_pmsm_foc_sensorless_f2837_B.MultiportSwitch[1] = 4U;
          break;

         default:
          /* MultiPortSwitch: '<S9>/Multiport Switch' incorporates:
           *  Constant: '<S9>/Ia_Pos'
           */
          mcb_pmsm_foc_sensorless_f2837_B.MultiportSwitch[0] = 3U;
          mcb_pmsm_foc_sensorless_f2837_B.MultiportSwitch[1] = 9U;
          break;
        }

        /* End of MultiPortSwitch: '<S9>/Multiport Switch' */

        /* Selector: '<S9>/Selector' */
        mcb_pmsm_foc_sensorless_f2837_B.Selector[0] =
          mcb_pmsm_foc_sensorless_f2837_B.TmpSignalConversionAtSelectorIn
          [(int16_T)mcb_pmsm_foc_sensorless_f2837_B.MultiportSwitch[0] - 1];
        mcb_pmsm_foc_sensorless_f2837_B.Selector[1] =
          mcb_pmsm_foc_sensorless_f2837_B.TmpSignalConversionAtSelectorIn
          [(int16_T)mcb_pmsm_foc_sensorless_f2837_B.MultiportSwitch[1] - 1];

        /* S-Function (any2byte_svd): '<S377>/Byte Pack' */

        /* Pack: <S377>/Byte Pack */
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
                   &mcb_pmsm_foc_sensorless_f2837_B.Selector[0],
                   MW_inputPortWidth);
          }
        }

        /* If: '<S375>/If' */
        if (mcb_pmsm_foc_sensorless_f2837_B.Output == 0U) {
          /* Outputs for IfAction SubSystem: '<S375>/Start' incorporates:
           *  ActionPort: '<S381>/Action Port'
           */
          /* Merge: '<S375>/Merge' incorporates:
           *  Constant: '<S381>/Start'
           *  SignalConversion generated from: '<S381>/Data_out'
           */
          mcb_pmsm_foc_sensorless_f2837_B.SCI_Tx_Data[0] = 1397969747UL;

          /* SignalConversion generated from: '<S381>/Data' */
          Sum_p = mcb_pmsm_foc_sensorless_f2837_B.BytePack[0];

          /* End of Outputs for SubSystem: '<S375>/Start' */
          mcb_pmsm_foc_sensorless_f2837_B.Data_fw[0] = Sum_p;

          /* Outputs for IfAction SubSystem: '<S375>/Start' incorporates:
           *  ActionPort: '<S381>/Action Port'
           */
          /* Merge: '<S375>/Merge' incorporates:
           *  SignalConversion generated from: '<S381>/Data_out'
           */
          mcb_pmsm_foc_sensorless_f2837_B.SCI_Tx_Data[1] = Sum_p;

          /* SignalConversion generated from: '<S381>/Data' */
          Sum_p = mcb_pmsm_foc_sensorless_f2837_B.BytePack[1];

          /* End of Outputs for SubSystem: '<S375>/Start' */
          mcb_pmsm_foc_sensorless_f2837_B.Data_fw[1] = Sum_p;

          /* Outputs for IfAction SubSystem: '<S375>/Start' incorporates:
           *  ActionPort: '<S381>/Action Port'
           */
          /* Merge: '<S375>/Merge' incorporates:
           *  SignalConversion generated from: '<S381>/Data_out'
           */
          mcb_pmsm_foc_sensorless_f2837_B.SCI_Tx_Data[2] = Sum_p;

          /* Merge: '<S375>/Merge1' incorporates:
           *  Bias: '<S381>/Bias'
           */
          mcb_pmsm_foc_sensorless_f2837_B.SCI_Tx_Iteration =
            mcb_pmsm_foc_sensorless__ConstB.Width + 1UL;

          /* End of Outputs for SubSystem: '<S375>/Start' */
        } else if (mcb_pmsm_foc_sensorless_f2837_B.Output == 599U) {
          /* Outputs for IfAction SubSystem: '<S375>/End' incorporates:
           *  ActionPort: '<S380>/Action Port'
           */
          /* SignalConversion generated from: '<S380>/Data' */
          Sum_p = mcb_pmsm_foc_sensorless_f2837_B.BytePack[0];

          /* End of Outputs for SubSystem: '<S375>/End' */
          mcb_pmsm_foc_sensorless_f2837_B.Data_f[0] = Sum_p;

          /* Outputs for IfAction SubSystem: '<S375>/End' incorporates:
           *  ActionPort: '<S380>/Action Port'
           */
          /* Merge: '<S375>/Merge' incorporates:
           *  SignalConversion generated from: '<S380>/Data_out'
           */
          mcb_pmsm_foc_sensorless_f2837_B.SCI_Tx_Data[0] = Sum_p;

          /* SignalConversion generated from: '<S380>/Data' */
          Sum_p = mcb_pmsm_foc_sensorless_f2837_B.BytePack[1];

          /* End of Outputs for SubSystem: '<S375>/End' */
          mcb_pmsm_foc_sensorless_f2837_B.Data_f[1] = Sum_p;

          /* Outputs for IfAction SubSystem: '<S375>/End' incorporates:
           *  ActionPort: '<S380>/Action Port'
           */
          /* Merge: '<S375>/Merge' incorporates:
           *  Constant: '<S380>/End'
           *  SignalConversion generated from: '<S380>/Data_out'
           */
          mcb_pmsm_foc_sensorless_f2837_B.SCI_Tx_Data[1] = Sum_p;
          mcb_pmsm_foc_sensorless_f2837_B.SCI_Tx_Data[2] = 1162167621UL;

          /* Merge: '<S375>/Merge1' incorporates:
           *  Bias: '<S380>/Bias'
           */
          mcb_pmsm_foc_sensorless_f2837_B.SCI_Tx_Iteration =
            mcb_pmsm_foc_sensorless__ConstB.Width + 1UL;

          /* End of Outputs for SubSystem: '<S375>/End' */
        } else {
          /* Outputs for IfAction SubSystem: '<S375>/Data' incorporates:
           *  ActionPort: '<S379>/Action Port'
           */
          /* SignalConversion generated from: '<S379>/Data' */
          Sum_p = mcb_pmsm_foc_sensorless_f2837_B.BytePack[0];

          /* End of Outputs for SubSystem: '<S375>/Data' */
          mcb_pmsm_foc_sensorless_f2837_B.Data[0] = Sum_p;

          /* Outputs for IfAction SubSystem: '<S375>/Data' incorporates:
           *  ActionPort: '<S379>/Action Port'
           */
          /* Merge: '<S375>/Merge' incorporates:
           *  SignalConversion generated from: '<S379>/Data_out'
           */
          mcb_pmsm_foc_sensorless_f2837_B.SCI_Tx_Data[0] = Sum_p;

          /* SignalConversion generated from: '<S379>/Data' */
          Sum_p = mcb_pmsm_foc_sensorless_f2837_B.BytePack[1];

          /* End of Outputs for SubSystem: '<S375>/Data' */
          mcb_pmsm_foc_sensorless_f2837_B.Data[1] = Sum_p;

          /* Outputs for IfAction SubSystem: '<S375>/Data' incorporates:
           *  ActionPort: '<S379>/Action Port'
           */
          /* Merge: '<S375>/Merge' incorporates:
           *  Constant: '<S379>/Dummy'
           *  SignalConversion generated from: '<S379>/Data_out'
           */
          mcb_pmsm_foc_sensorless_f2837_B.SCI_Tx_Data[1] = Sum_p;
          mcb_pmsm_foc_sensorless_f2837_B.SCI_Tx_Data[2] = 0UL;

          /* Merge: '<S375>/Merge1' incorporates:
           *  SignalConversion generated from: '<S379>/Data_width'
           */
          mcb_pmsm_foc_sensorless_f2837_B.SCI_Tx_Iteration =
            mcb_pmsm_foc_sensorless__ConstB.Width;

          /* End of Outputs for SubSystem: '<S375>/Data' */
        }

        /* End of If: '<S375>/If' */

        /* Outputs for Iterator SubSystem: '<S373>/While Iterator Subsystem' incorporates:
         *  WhileIterator: '<S376>/While Iterator'
         */
        s376_iter = 1;
        do {
          mcb_pmsm_foc_sensorless_f2837_B.WhileIterator = s376_iter;
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

          mcb_pmsm_foc_sensorless_f2837_B.Add =
            mcb_pmsm_foc_sensorless_f2837_B.SCI_Tx_Iteration - (uint32_T)
            mcb_pmsm_foc_sensorless_f2837_B.WhileIterator;
          s376_iter++;
        } while (mcb_pmsm_foc_sensorless_f2837_B.Add != 0UL);

        /* End of Outputs for SubSystem: '<S373>/While Iterator Subsystem' */

        /* Sum: '<S382>/FixPt Sum1' incorporates:
         *  Constant: '<S382>/FixPt Constant'
         */
        mcb_pmsm_foc_sensorless_f2837_B.FixPtSum1 =
          mcb_pmsm_foc_sensorless_f2837_B.Output + 1U;

        /* Switch: '<S383>/FixPt Switch' */
        if (mcb_pmsm_foc_sensorless_f2837_B.FixPtSum1 > 599U) {
          /* Switch: '<S383>/FixPt Switch' incorporates:
           *  Constant: '<S383>/Constant'
           */
          mcb_pmsm_foc_sensorless_f2837_B.FixPtSwitch = 0U;
        } else {
          /* Switch: '<S383>/FixPt Switch' */
          mcb_pmsm_foc_sensorless_f2837_B.FixPtSwitch =
            mcb_pmsm_foc_sensorless_f2837_B.FixPtSum1;
        }

        /* End of Switch: '<S383>/FixPt Switch' */

        /* DataStoreRead: '<S13>/Enable' */
        mcb_pmsm_foc_sensorless_f2837_B.Enable =
          mcb_pmsm_foc_sensorless_f_DWork.Enable;

        /* DataTypeConversion: '<S13>/Data Type Conversion' */
        mcb_pmsm_foc_sensorless_f2837_B.DataTypeConversion_c =
          mcb_pmsm_foc_sensorless_f2837_B.Enable;

        /* Switch: '<S372>/Switch' */
        mcb_pmsm_foc_sensorless_f2837_B.Switch_p =
          mcb_pmsm_foc_sensorless_f2837_B.DataTypeConversion_c;

        /* S-Function (c280xgpio_do): '<S372>/DRV830x Enable' */
        {
          if (mcb_pmsm_foc_sensorless_f2837_B.Switch_p) {
            GpioDataRegs.GPDSET.bit.GPIO124 = 1U;
          } else {
            GpioDataRegs.GPDCLEAR.bit.GPIO124 = 1U;
          }
        }

        /* Switch: '<S372>/Switch1' */
        if (mcb_pmsm_foc_sensorless_f2837_B.DataTypeConversion_c >= 0.5F) {
          /* Gain: '<S161>/sqrt3_by_two' */
          mcb_pmsm_foc_sensorless_f2837_B.sqrt3_by_two = 0.866025388F *
            mcb_pmsm_foc_sensorless_f2837_B.algDD_o2_k;

          /* Gain: '<S161>/one_by_two' */
          mcb_pmsm_foc_sensorless_f2837_B.one_by_two = 0.5F *
            mcb_pmsm_foc_sensorless_f2837_B.algDD_o1_o;

          /* Sum: '<S161>/add_c' */
          mcb_pmsm_foc_sensorless_f2837_B.add_c = (0.0F -
            mcb_pmsm_foc_sensorless_f2837_B.one_by_two) -
            mcb_pmsm_foc_sensorless_f2837_B.sqrt3_by_two;

          /* Sum: '<S161>/add_b' */
          mcb_pmsm_foc_sensorless_f2837_B.add_b =
            mcb_pmsm_foc_sensorless_f2837_B.sqrt3_by_two -
            mcb_pmsm_foc_sensorless_f2837_B.one_by_two;

          /* MinMax: '<S158>/Min' */
          Gain1_m = mcb_pmsm_foc_sensorless_f2837_B.algDD_o1_o;
          Bias = mcb_pmsm_foc_sensorless_f2837_B.add_b;
          if ((Gain1_m <= Bias) || rtIsNaNF(Bias)) {
            Bias = Gain1_m;
          }

          Gain1_m = mcb_pmsm_foc_sensorless_f2837_B.add_c;
          if ((!(Bias <= Gain1_m)) && (!rtIsNaNF(Gain1_m))) {
            Bias = Gain1_m;
          }

          /* MinMax: '<S158>/Min' */
          mcb_pmsm_foc_sensorless_f2837_B.Min = Bias;

          /* MinMax: '<S158>/Max' */
          Gain1_m = mcb_pmsm_foc_sensorless_f2837_B.algDD_o1_o;
          Bias = mcb_pmsm_foc_sensorless_f2837_B.add_b;
          if ((Gain1_m >= Bias) || rtIsNaNF(Bias)) {
            Bias = Gain1_m;
          }

          Gain1_m = mcb_pmsm_foc_sensorless_f2837_B.add_c;
          if ((!(Bias >= Gain1_m)) && (!rtIsNaNF(Gain1_m))) {
            Bias = Gain1_m;
          }

          /* MinMax: '<S158>/Max' */
          mcb_pmsm_foc_sensorless_f2837_B.Max = Bias;

          /* Sum: '<S158>/Add' */
          mcb_pmsm_foc_sensorless_f2837_B.Add_c =
            mcb_pmsm_foc_sensorless_f2837_B.Max +
            mcb_pmsm_foc_sensorless_f2837_B.Min;

          /* Gain: '<S158>/one_by_two' */
          mcb_pmsm_foc_sensorless_f2837_B.one_by_two_p = -0.5F *
            mcb_pmsm_foc_sensorless_f2837_B.Add_c;

          /* Sum: '<S157>/Add3' */
          mcb_pmsm_foc_sensorless_f2837_B.Add3 =
            mcb_pmsm_foc_sensorless_f2837_B.algDD_o1_o +
            mcb_pmsm_foc_sensorless_f2837_B.one_by_two_p;

          /* Sum: '<S157>/Add2' */
          mcb_pmsm_foc_sensorless_f2837_B.Add2 =
            mcb_pmsm_foc_sensorless_f2837_B.one_by_two_p +
            mcb_pmsm_foc_sensorless_f2837_B.add_c;

          /* Sum: '<S157>/Add1' */
          mcb_pmsm_foc_sensorless_f2837_B.Add1 =
            mcb_pmsm_foc_sensorless_f2837_B.add_b +
            mcb_pmsm_foc_sensorless_f2837_B.one_by_two_p;

          /* Gain: '<S157>/Gain' */
          mcb_pmsm_foc_sensorless_f2837_B.Gain_f[0] = 1.15470052F *
            mcb_pmsm_foc_sensorless_f2837_B.Add3;
          mcb_pmsm_foc_sensorless_f2837_B.Gain_f[1] = 1.15470052F *
            mcb_pmsm_foc_sensorless_f2837_B.Add1;
          mcb_pmsm_foc_sensorless_f2837_B.Gain_f[2] = 1.15470052F *
            mcb_pmsm_foc_sensorless_f2837_B.Add2;

          /* Gain: '<S13>/One_by_Two' */
          Bias = 0.5F * mcb_pmsm_foc_sensorless_f2837_B.Gain_f[0];
          mcb_pmsm_foc_sensorless_f2837_B.One_by_Two[0] = Bias;

          /* Sum: '<S13>/Sum' incorporates:
           *  Constant: '<S13>/Constant'
           */
          Bias += 0.5F;
          mcb_pmsm_foc_sensorless_f2837_B.PWM_Duty_Cycles[0] = Bias;

          /* Gain: '<S372>/Scale_to_PWM_Counter_PRD' */
          Scale_to_PWM_Counter_PRD = (uint16_T)(5000.0F * Bias);
          mcb_pmsm_foc_sensorless_f2837_B.Scale_to_PWM_Counter_PRD[0] =
            Scale_to_PWM_Counter_PRD;

          /* Switch: '<S372>/Switch1' */
          mcb_pmsm_foc_sensorless_f2837_B.Switch1_nh[0] =
            Scale_to_PWM_Counter_PRD;

          /* Gain: '<S13>/One_by_Two' */
          Bias = 0.5F * mcb_pmsm_foc_sensorless_f2837_B.Gain_f[1];
          mcb_pmsm_foc_sensorless_f2837_B.One_by_Two[1] = Bias;

          /* Sum: '<S13>/Sum' incorporates:
           *  Constant: '<S13>/Constant'
           */
          Bias += 0.5F;
          mcb_pmsm_foc_sensorless_f2837_B.PWM_Duty_Cycles[1] = Bias;

          /* Gain: '<S372>/Scale_to_PWM_Counter_PRD' */
          Scale_to_PWM_Counter_PRD = (uint16_T)(5000.0F * Bias);
          mcb_pmsm_foc_sensorless_f2837_B.Scale_to_PWM_Counter_PRD[1] =
            Scale_to_PWM_Counter_PRD;

          /* Switch: '<S372>/Switch1' */
          mcb_pmsm_foc_sensorless_f2837_B.Switch1_nh[1] =
            Scale_to_PWM_Counter_PRD;

          /* Gain: '<S13>/One_by_Two' */
          Bias = 0.5F * mcb_pmsm_foc_sensorless_f2837_B.Gain_f[2];
          mcb_pmsm_foc_sensorless_f2837_B.One_by_Two[2] = Bias;

          /* Sum: '<S13>/Sum' incorporates:
           *  Constant: '<S13>/Constant'
           */
          Bias += 0.5F;
          mcb_pmsm_foc_sensorless_f2837_B.PWM_Duty_Cycles[2] = Bias;

          /* Gain: '<S372>/Scale_to_PWM_Counter_PRD' */
          Scale_to_PWM_Counter_PRD = (uint16_T)(5000.0F * Bias);
          mcb_pmsm_foc_sensorless_f2837_B.Scale_to_PWM_Counter_PRD[2] =
            Scale_to_PWM_Counter_PRD;

          /* Switch: '<S372>/Switch1' */
          mcb_pmsm_foc_sensorless_f2837_B.Switch1_nh[2] =
            Scale_to_PWM_Counter_PRD;
        } else {
          /* Switch: '<S372>/Switch1' incorporates:
           *  Constant: '<S372>/stop'
           */
          mcb_pmsm_foc_sensorless_f2837_B.Switch1_nh[0] = 0U;
          mcb_pmsm_foc_sensorless_f2837_B.Switch1_nh[1] = 0U;
          mcb_pmsm_foc_sensorless_f2837_B.Switch1_nh[2] = 0U;
        }

        /* End of Switch: '<S372>/Switch1' */

        /* S-Function (c2802xpwm): '<S372>/ePWM1' */

        /*-- Update CMPA value for ePWM1 --*/
        {
          EPwm1Regs.CMPA.bit.CMPA = (uint16_T)
            (mcb_pmsm_foc_sensorless_f2837_B.Switch1_nh[0]);
        }

        /* S-Function (c2802xpwm): '<S372>/ePWM2' */

        /*-- Update CMPA value for ePWM2 --*/
        {
          EPwm2Regs.CMPA.bit.CMPA = (uint16_T)
            (mcb_pmsm_foc_sensorless_f2837_B.Switch1_nh[1]);
        }

        /* S-Function (c2802xpwm): '<S372>/ePWM3' */

        /*-- Update CMPA value for ePWM3 --*/
        {
          EPwm3Regs.CMPA.bit.CMPA = (uint16_T)
            (mcb_pmsm_foc_sensorless_f2837_B.Switch1_nh[2]);
        }

        /* SignalConversion generated from: '<S1>/Speed_fb' */
        mcb_pmsm_foc_sensorless_f2837_B.OutportBufferForSpeed_fb =
          mcb_pmsm_foc_sensorless_f2837_B.Merge[1];

        /* SignalConversion generated from: '<S1>/Delay5' */
        mcb_pmsm_foc_sensorless_f2837_B.TmpSignalConversionAtDelay5Inpo[0] =
          mcb_pmsm_foc_sensorless_f2837_B.algDD_o1_o;
        mcb_pmsm_foc_sensorless_f2837_B.TmpSignalConversionAtDelay5Inpo[1] =
          mcb_pmsm_foc_sensorless_f2837_B.algDD_o2_k;
        mcb_pmsm_foc_sensorless_f2837_B.TmpSignalConversionAtDelay5Inpo[2] =
          mcb_pmsm_foc_sensorless_f2837_B.algDD_o1_n;
        mcb_pmsm_foc_sensorless_f2837_B.TmpSignalConversionAtDelay5Inpo[3] =
          mcb_pmsm_foc_sensorless_f2837_B.algDD_o2_e;

        /* Update for UnitDelay: '<S145>/Unit Delay' */
        mcb_pmsm_foc_sensorless_f_DWork.UnitDelay_DSTATE =
          mcb_pmsm_foc_sensorless_f2837_B.Accumulate.Add1;

        /* Update for Delay: '<S1>/Delay5' */
        mcb_pmsm_foc_sensorless_f_DWork.Delay5_DSTATE[0] =
          mcb_pmsm_foc_sensorless_f2837_B.TmpSignalConversionAtDelay5Inpo[0];
        mcb_pmsm_foc_sensorless_f_DWork.Delay5_DSTATE[1] =
          mcb_pmsm_foc_sensorless_f2837_B.TmpSignalConversionAtDelay5Inpo[1];
        mcb_pmsm_foc_sensorless_f_DWork.Delay5_DSTATE[2] =
          mcb_pmsm_foc_sensorless_f2837_B.TmpSignalConversionAtDelay5Inpo[2];
        mcb_pmsm_foc_sensorless_f_DWork.Delay5_DSTATE[3] =
          mcb_pmsm_foc_sensorless_f2837_B.TmpSignalConversionAtDelay5Inpo[3];

        /* Update for UnitDelay: '<S26>/Unit Delay' */
        mcb_pmsm_foc_sensorless_f_DWork.UnitDelay_DSTATE_a =
          mcb_pmsm_foc_sensorless_f2837_B.Switch_h;

        /* Update for DiscreteIntegrator: '<S126>/Integrator' */
        mcb_pmsm_foc_sensorless_f_DWork.Integrator_IC_LOADING = 0U;
        mcb_pmsm_foc_sensorless_f_DWork.Integrator_DSTATE +=
          mcb_pmsm_foc_sensorless_f2837_B.Switch_m;
        mcb_pmsm_foc_sensorless_f_DWork.Integrator_PrevResetState = (int16_T)
          mcb_pmsm_foc_sensorless_f2837_B.LogicalOperator;

        /* Update for UnitDelay: '<S25>/Unit Delay' */
        mcb_pmsm_foc_sensorless_f_DWork.UnitDelay_DSTATE_p =
          mcb_pmsm_foc_sensorless_f2837_B.Switch_l;

        /* Update for DiscreteIntegrator: '<S75>/Integrator' */
        mcb_pmsm_foc_sensorless_f_DWork.Integrator_IC_LOADING_b = 0U;
        mcb_pmsm_foc_sensorless_f_DWork.Integrator_DSTATE_a +=
          mcb_pmsm_foc_sensorless_f2837_B.Switch_fm;
        mcb_pmsm_foc_sensorless_f_DWork.Integrator_PrevResetState_e = (int16_T)
          mcb_pmsm_foc_sensorless_f2837_B.LogicalOperator_n;

        /* Update for UnitDelay: '<S378>/Output' */
        mcb_pmsm_foc_sensorless_f_DWork.Output_DSTATE =
          mcb_pmsm_foc_sensorless_f2837_B.FixPtSwitch;
      }

      /* End of Outputs for S-Function (HardwareInterrupt_sfun): '<S388>/Hardware Interrupt' */

      /* RateTransition: '<Root>/RT3' */
      mcb_pmsm_foc_sensorless_f_DWork.RT3_Buffer[mcb_pmsm_foc_sensorless_f_DWork.RT3_semaphoreTaken
        == 0] = mcb_pmsm_foc_sensorless_f2837_B.OutportBufferForSpeed_fb;
      mcb_pmsm_foc_sensorless_f_DWork.RT3_ActiveBufIdx =
        (mcb_pmsm_foc_sensorless_f_DWork.RT3_semaphoreTaken == 0);
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

/* Hardware Interrupt Block: '<S390>/Hardware Interrupt' */
interrupt void SCIA_RX_INT(void)
{
  /* Event: Default Event */
  if (1 == runModel) {
    {
      /* S-Function (HardwareInterrupt_sfun): '<S390>/Hardware Interrupt' */

      /* Output and update for function-call system: '<Root>/Serial Receive' */

      /* S-Function (c28xsci_rx): '<S411>/SCI Receive' */
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

      /* DataTypeConversion: '<S409>/Data Type Conversion2' */
      mcb_pmsm_foc_sensorless_f2837_B.DataTypeConversion2 = (uint16_T)
        mcb_pmsm_foc_sensorless_f2837_B.SCIReceive[1];

      /* S-Function (sfix_bitop): '<S408>/Bitwise Operator' */
      mcb_pmsm_foc_sensorless_f2837_B.BitwiseOperator =
        mcb_pmsm_foc_sensorless_f2837_B.DataTypeConversion2 & 1U;

      /* DataTypeConversion: '<S408>/Data Type Conversion3' */
      mcb_pmsm_foc_sensorless_f2837_B.DataTypeConversion3 =
        (mcb_pmsm_foc_sensorless_f2837_B.BitwiseOperator != 0U);

      /* DataStoreWrite: '<S6>/Data Store Write' */
      mcb_pmsm_foc_sensorless_f_DWork.Enable =
        mcb_pmsm_foc_sensorless_f2837_B.DataTypeConversion3;

      /* DataStoreWrite: '<S6>/Data Store Write1' */
      mcb_pmsm_foc_sensorless_f_DWork.Speed_ref =
        mcb_pmsm_foc_sensorless_f2837_B.SCIReceive[0];

      /* S-Function (sfix_bitop): '<S408>/Bitwise Operator1' */
      mcb_pmsm_foc_sensorless_f2837_B.BitwiseOperator1 =
        mcb_pmsm_foc_sensorless_f2837_B.DataTypeConversion2 & 240U;

      /* ArithShift: '<S408>/Shift Arithmetic1' incorporates:
       *  S-Function (sfix_bitop): '<S408>/Bitwise Operator1'
       */
      mcb_pmsm_foc_sensorless_f2837_B.ShiftArithmetic1 =
        mcb_pmsm_foc_sensorless_f2837_B.BitwiseOperator1 >> 4U;

      /* DataStoreWrite: '<S6>/Data Store Write2' */
      mcb_pmsm_foc_sensorless_f_DWork.Debug_signals =
        mcb_pmsm_foc_sensorless_f2837_B.ShiftArithmetic1;

      /* End of Outputs for S-Function (HardwareInterrupt_sfun): '<S390>/Hardware Interrupt' */

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
