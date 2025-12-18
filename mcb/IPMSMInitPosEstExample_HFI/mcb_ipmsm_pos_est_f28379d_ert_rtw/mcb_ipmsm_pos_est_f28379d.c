/*
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * File: mcb_ipmsm_pos_est_f28379d.c
 *
 * Code generated for Simulink model 'mcb_ipmsm_pos_est_f28379d'.
 *
 * Model version                  : 7.2
 * Simulink Coder version         : 23.2 (R2023b) 01-Aug-2023
 * C/C++ source code generated on : Sat Dec 13 16:26:58 2025
 *
 * Target selection: ert.tlc
 * Embedded hardware selection: Texas Instruments->C2000
 * Code generation objectives: Unspecified
 * Validation result: Not run
 */

#include "mcb_ipmsm_pos_est_f28379d.h"
#include "rtwtypes.h"
#include "mcb_ipmsm_pos_est_f28379d_private.h"
#include <math.h>
#include "rt_nonfinite.h"
#include "zero_crossing_types.h"
#include <string.h>

/* Block signals (default storage) */
B_mcb_ipmsm_pos_est_f28379d_T mcb_ipmsm_pos_est_f28379d_B;

/* Block states (default storage) */
DW_mcb_ipmsm_pos_est_f28379d_T mcb_ipmsm_pos_est_f28379d_DW;

/* Previous zero-crossings (trigger) states */
PrevZCX_mcb_ipmsm_pos_est_f28_T mcb_ipmsm_pos_est_f2837_PrevZCX;

/* Real-time model */
static RT_MODEL_mcb_ipmsm_pos_est_f2_T mcb_ipmsm_pos_est_f28379d_M_;
RT_MODEL_mcb_ipmsm_pos_est_f2_T *const mcb_ipmsm_pos_est_f28379d_M =
  &mcb_ipmsm_pos_est_f28379d_M_;
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
void mcb_ipmsm_pos_est_f28379d_SetEventsForThisBaseStep(boolean_T *eventFlags)
{
  /* Task runs when its counter is zero, computed via rtmStepTask macro */
  eventFlags[1] = ((boolean_T)rtmStepTask(mcb_ipmsm_pos_est_f28379d_M, 1));
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
  (mcb_ipmsm_pos_est_f28379d_M->Timing.TaskCounters.TID[1])++;
  if ((mcb_ipmsm_pos_est_f28379d_M->Timing.TaskCounters.TID[1]) > 9999) {/* Sample time: [0.5s, 0.0s] */
    mcb_ipmsm_pos_est_f28379d_M->Timing.TaskCounters.TID[1] = 0;
  }
}

/* System initialize for atomic system: */
void mcb__SPIMasterTransfer_Init(DW_SPIMasterTransfer_mcb_ipms_T *localDW)
{
  uint32_T SPIPinsLoc;

  /* Start for MATLABSystem: '<S23>/SPI Master Transfer' */
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
void mcb_ipmsm_SPIMasterTransfer(uint16_T rtu_0, B_SPIMasterTransfer_mcb_ipmsm_T
  *localB, DW_SPIMasterTransfer_mcb_ipms_T *localDW)
{
  uint16_T rdDataRaw;
  uint16_T status;

  /* MATLABSystem: '<S23>/SPI Master Transfer' */
  MW_SPI_SetSlaveSelect(localDW->obj.MW_SPI_HANDLE, 0U, true);
  status = MW_SPI_SetFormat(localDW->obj.MW_SPI_HANDLE, 16U, MW_SPI_MODE_0,
    MW_SPI_MOST_SIGNIFICANT_BIT_FIRST);
  if (status == 0U) {
    MW_SPI_MasterWriteRead_8bits(localDW->obj.MW_SPI_HANDLE, &rtu_0, &rdDataRaw,
      1UL);
  }

  /* MATLABSystem: '<S23>/SPI Master Transfer' */
  localB->SPIMasterTransfer = rdDataRaw;
}

/* Termination for atomic system: */
void mcb__SPIMasterTransfer_Term(DW_SPIMasterTransfer_mcb_ipms_T *localDW)
{
  uint32_T SPIPinsLoc;

  /* Terminate for MATLABSystem: '<S23>/SPI Master Transfer' */
  if (!localDW->obj.matlabCodegenIsDeleted) {
    localDW->obj.matlabCodegenIsDeleted = true;
    if ((localDW->obj.isInitialized == 1L) && localDW->obj.isSetupComplete) {
      SPIPinsLoc = MW_UNDEFINED_VALUE;
      MW_SPI_Close(localDW->obj.MW_SPI_HANDLE, SPIPinsLoc, SPIPinsLoc,
                   SPIPinsLoc, MW_UNDEFINED_VALUE);
    }
  }

  /* End of Terminate for MATLABSystem: '<S23>/SPI Master Transfer' */
}

/*
 * Output and update for atomic system:
 *    '<S64>/Two inputs CRL'
 *    '<S73>/Two inputs CRL'
 */
void mcb_ipmsm_pos__TwoinputsCRL(real32_T rtu_Ds, real32_T rtu_Qs, real32_T
  rtu_sin, real32_T rtu_cos, B_TwoinputsCRL_mcb_ipmsm_pos__T *localB)
{
  /* Product: '<S65>/qcos' */
  localB->qcos = rtu_Qs * rtu_cos;

  /* Product: '<S65>/dsin' */
  localB->dsin = rtu_Ds * rtu_sin;

  /* Sum: '<S65>/sum_beta' */
  localB->sum_beta = localB->qcos + localB->dsin;

  /* Product: '<S65>/dcos' */
  localB->dcos = rtu_Ds * rtu_cos;

  /* Product: '<S65>/qsin' */
  localB->qsin = rtu_Qs * rtu_sin;

  /* Sum: '<S65>/sum_alpha' */
  localB->sum_alpha = localB->dcos - localB->qsin;

  /* Switch: '<S66>/Switch' */
  localB->Switch[0] = localB->sum_alpha;
  localB->Switch[1] = localB->sum_beta;

  /* AlgorithmDescriptorDelegate generated from: '<S65>/a16' */
  localB->algDD_o1 = localB->Switch[0];

  /* AlgorithmDescriptorDelegate generated from: '<S65>/a16' */
  localB->algDD_o2 = localB->Switch[1];
}

/* Model step function for TID0 */
void mcb_ipmsm_pos_est_f28379d_step0(void) /* Sample time: [5.0E-5s, 0.0s] */
{
  real32_T Bias;
  real32_T MatrixMultiply;
  real32_T tmp;
  uint32_T q0;
  uint32_T qY;
  int16_T i;
  uint16_T Scale_to_PWM_Counter_PRD;
  boolean_T zcEvent;

  {                                    /* Sample time: [5.0E-5s, 0.0s] */
    rate_monotonic_scheduler();
  }

  /* UnitDelay: '<S222>/Output' */
  mcb_ipmsm_pos_est_f28379d_B.Output =
    mcb_ipmsm_pos_est_f28379d_DW.Output_DSTATE;

  /* RateTransition: '<S1>/RT1' */
  mcb_ipmsm_pos_est_f28379d_B.RT1 = mcb_ipmsm_pos_est_f28379d_DW.RT1_Buffer0;

  /* UnitDelay: '<S30>/Unit Delay1' */
  mcb_ipmsm_pos_est_f28379d_B.UnitDelay1_m =
    mcb_ipmsm_pos_est_f28379d_DW.UnitDelay1_DSTATE_p;

  /* Logic: '<S30>/NOT1' */
  mcb_ipmsm_pos_est_f28379d_B.NOT1 = !mcb_ipmsm_pos_est_f28379d_B.UnitDelay1_m;

  /* Logic: '<S30>/AND1' */
  mcb_ipmsm_pos_est_f28379d_B.AND1 = (mcb_ipmsm_pos_est_f28379d_B.RT1 &&
    mcb_ipmsm_pos_est_f28379d_B.NOT1);

  /* UnitDelay: '<S30>/Unit Delay2' */
  mcb_ipmsm_pos_est_f28379d_B.UnitDelay2 =
    mcb_ipmsm_pos_est_f28379d_DW.UnitDelay2_DSTATE;

  /* Logic: '<S30>/AND' */
  mcb_ipmsm_pos_est_f28379d_B.AND = (mcb_ipmsm_pos_est_f28379d_B.UnitDelay1_m &&
    mcb_ipmsm_pos_est_f28379d_B.RT1 && mcb_ipmsm_pos_est_f28379d_B.UnitDelay2);

  /* Logic: '<S30>/OR' */
  mcb_ipmsm_pos_est_f28379d_B.OR = (mcb_ipmsm_pos_est_f28379d_B.AND1 ||
    mcb_ipmsm_pos_est_f28379d_B.AND);

  /* Delay: '<S164>/Delay1' */
  zcEvent = (mcb_ipmsm_pos_est_f28379d_B.OR &&
             (mcb_ipmsm_pos_est_f2837_PrevZCX.Delay1_Reset_ZCE != POS_ZCSIG));
  if (zcEvent) {
    mcb_ipmsm_pos_est_f28379d_DW.Delay1_DSTATE_e = 0UL;
  }

  mcb_ipmsm_pos_est_f2837_PrevZCX.Delay1_Reset_ZCE =
    mcb_ipmsm_pos_est_f28379d_B.OR;

  /* Delay: '<S164>/Delay1' */
  mcb_ipmsm_pos_est_f28379d_B.Delay1 =
    mcb_ipmsm_pos_est_f28379d_DW.Delay1_DSTATE_e;

  /* Sum: '<S164>/Add2' */
  qY = mcb_ipmsm_pos_est_f28379d_B.Delay1 + 1UL;
  if (qY < 1UL) {
    qY = MAX_uint32_T;
  }

  /* Sum: '<S164>/Add2' */
  mcb_ipmsm_pos_est_f28379d_B.Add2 = qY;

  /* RelationalOperator: '<S180>/Compare' incorporates:
   *  Constant: '<S180>/Constant'
   */
  mcb_ipmsm_pos_est_f28379d_B.Compare = (mcb_ipmsm_pos_est_f28379d_B.Add2 <=
    134UL);

  /* RelationalOperator: '<S183>/Compare' incorporates:
   *  Constant: '<S183>/Constant'
   */
  mcb_ipmsm_pos_est_f28379d_B.Compare_c = (mcb_ipmsm_pos_est_f28379d_B.Add2 >=
    268UL);

  /* RelationalOperator: '<S182>/Compare' incorporates:
   *  Constant: '<S182>/Constant'
   */
  mcb_ipmsm_pos_est_f28379d_B.Compare_l = (mcb_ipmsm_pos_est_f28379d_B.Add2 <=
    402UL);

  /* Logic: '<S175>/AND1' */
  mcb_ipmsm_pos_est_f28379d_B.AND1_c = (mcb_ipmsm_pos_est_f28379d_B.Compare_c &&
    mcb_ipmsm_pos_est_f28379d_B.Compare_l);

  /* RelationalOperator: '<S186>/Compare' incorporates:
   *  Constant: '<S186>/Constant'
   */
  mcb_ipmsm_pos_est_f28379d_B.Compare_lz = (mcb_ipmsm_pos_est_f28379d_B.Add2 >=
    536UL);

  /* RelationalOperator: '<S185>/Compare' incorporates:
   *  Constant: '<S185>/Constant'
   */
  mcb_ipmsm_pos_est_f28379d_B.Compare_e = (mcb_ipmsm_pos_est_f28379d_B.Add2 <=
    670UL);

  /* Logic: '<S176>/AND1' */
  mcb_ipmsm_pos_est_f28379d_B.AND1_b = (mcb_ipmsm_pos_est_f28379d_B.Compare_lz &&
    mcb_ipmsm_pos_est_f28379d_B.Compare_e);

  /* RelationalOperator: '<S177>/Compare' incorporates:
   *  Constant: '<S177>/Constant'
   */
  mcb_ipmsm_pos_est_f28379d_B.Compare_ew = (mcb_ipmsm_pos_est_f28379d_B.Add2 <=
    14163UL);

  /* RelationalOperator: '<S178>/Compare' incorporates:
   *  Constant: '<S178>/Constant'
   */
  mcb_ipmsm_pos_est_f28379d_B.Compare_j = (mcb_ipmsm_pos_est_f28379d_B.Add2 >=
    804UL);

  /* Logic: '<S173>/AND' */
  mcb_ipmsm_pos_est_f28379d_B.AND_j = (mcb_ipmsm_pos_est_f28379d_B.Compare_ew &&
    mcb_ipmsm_pos_est_f28379d_B.Compare_j);

  /* Switch: '<S162>/Switch' */
  if (mcb_ipmsm_pos_est_f28379_ConstB.NOT) {
    /* RelationalOperator: '<S188>/Compare' incorporates:
     *  Constant: '<S188>/Constant'
     */
    mcb_ipmsm_pos_est_f28379d_B.Compare_n = (mcb_ipmsm_pos_est_f28379d_B.Add2 ==
      2UL);

    /* Switch: '<S162>/Switch' */
    mcb_ipmsm_pos_est_f28379d_B.Switch_p = mcb_ipmsm_pos_est_f28379d_B.Compare_n;
  } else {
    /* RelationalOperator: '<S187>/Compare' incorporates:
     *  Constant: '<S187>/Constant'
     */
    mcb_ipmsm_pos_est_f28379d_B.Compare_l4 = (mcb_ipmsm_pos_est_f28379d_B.Add2 ==
      17327UL);

    /* Switch: '<S162>/Switch' */
    mcb_ipmsm_pos_est_f28379d_B.Switch_p =
      mcb_ipmsm_pos_est_f28379d_B.Compare_l4;
  }

  /* End of Switch: '<S162>/Switch' */

  /* Logic: '<S67>/OR' */
  mcb_ipmsm_pos_est_f28379d_B.OR_j = (mcb_ipmsm_pos_est_f28379d_B.Compare ||
    mcb_ipmsm_pos_est_f28379d_B.AND1_c || mcb_ipmsm_pos_est_f28379d_B.AND1_b ||
    mcb_ipmsm_pos_est_f28379d_B.AND_j || mcb_ipmsm_pos_est_f28379d_B.Switch_p);

  /* Logic: '<S67>/AND' */
  mcb_ipmsm_pos_est_f28379d_B.AND_b = (mcb_ipmsm_pos_est_f28379d_B.OR_j &&
    mcb_ipmsm_pos_est_f28379d_B.OR);

  /* Switch: '<S67>/Switch' */
  if (mcb_ipmsm_pos_est_f28379d_B.AND_b) {
    /* Switch: '<S67>/Switch' incorporates:
     *  Constant: '<S67>/Constant7'
     */
    mcb_ipmsm_pos_est_f28379d_B.Switch = 0.5F;
  } else {
    /* Switch: '<S67>/Switch' incorporates:
     *  Constant: '<S67>/Constant3'
     */
    mcb_ipmsm_pos_est_f28379d_B.Switch = 0.0F;
  }

  /* End of Switch: '<S67>/Switch' */

  /* UnitDelay: '<S67>/Unit Delay' */
  Bias = mcb_ipmsm_pos_est_f28379d_DW.UnitDelay_DSTATE[0];
  mcb_ipmsm_pos_est_f28379d_B.UnitDelay_j[0] = Bias;

  /* Product: '<S67>/Matrix Multiply' incorporates:
   *  UnitDelay: '<S67>/Unit Delay'
   */
  tmp = Bias;

  /* UnitDelay: '<S67>/Unit Delay' */
  Bias = mcb_ipmsm_pos_est_f28379d_DW.UnitDelay_DSTATE[1];
  mcb_ipmsm_pos_est_f28379d_B.UnitDelay_j[1] = Bias;

  /* Product: '<S67>/Matrix Multiply' */
  MatrixMultiply = tmp * 0.809017F;
  MatrixMultiply += Bias * 0.587785244F;
  mcb_ipmsm_pos_est_f28379d_B.MatrixMultiply[0] = MatrixMultiply;
  MatrixMultiply = tmp * -0.587785244F;
  MatrixMultiply += Bias * 0.809017F;
  mcb_ipmsm_pos_est_f28379d_B.MatrixMultiply[1] = MatrixMultiply;

  /* Product: '<S67>/Product' */
  mcb_ipmsm_pos_est_f28379d_B.Product = mcb_ipmsm_pos_est_f28379d_B.Switch *
    mcb_ipmsm_pos_est_f28379d_B.MatrixMultiply[0];

  /* Switch: '<S69>/Switch1' */
  if (mcb_ipmsm_pos_est_f28379_ConstB.NOT1) {
    /* Switch: '<S69>/Switch1' */
    mcb_ipmsm_pos_est_f28379d_B.Switch1_m = mcb_ipmsm_pos_est_f28379d_B.OR;
  } else {
    /* Logic: '<S69>/NOT2' */
    mcb_ipmsm_pos_est_f28379d_B.NOT2_e = !mcb_ipmsm_pos_est_f28379d_B.Compare_ew;

    /* Logic: '<S69>/AND2' */
    mcb_ipmsm_pos_est_f28379d_B.AND2 = (mcb_ipmsm_pos_est_f28379d_B.NOT2_e ||
      mcb_ipmsm_pos_est_f28379d_B.AND_j);

    /* Logic: '<S69>/AND3' */
    mcb_ipmsm_pos_est_f28379d_B.AND3 = (mcb_ipmsm_pos_est_f28379d_B.AND2 &&
      mcb_ipmsm_pos_est_f28379d_B.OR);

    /* Switch: '<S69>/Switch1' */
    mcb_ipmsm_pos_est_f28379d_B.Switch1_m = mcb_ipmsm_pos_est_f28379d_B.AND3;
  }

  /* End of Switch: '<S69>/Switch1' */

  /* Switch: '<S201>/Switch' incorporates:
   *  Constant: '<S201>/Constant1'
   */
  mcb_ipmsm_pos_est_f28379d_B.Switch_a = 0.0F;

  /* If: '<S202>/If' incorporates:
   *  Constant: '<S6>/Constant'
   */
  if (mcb_ipmsm_pos_est_f28379d_B.Switch_a >= 0.0F) {
    /* Outputs for IfAction SubSystem: '<S202>/If Action Subsystem' incorporates:
     *  ActionPort: '<S204>/Action Port'
     */
    /* Merge: '<S202>/Merge' incorporates:
     *  Constant: '<S204>/Constant'
     *  Sum: '<S204>/Add'
     */
    mcb_ipmsm_pos_est_f28379d_B.Merge = 1.0F -
      mcb_ipmsm_pos_est_f28379d_B.Switch_a;

    /* End of Outputs for SubSystem: '<S202>/If Action Subsystem' */
  } else {
    /* Outputs for IfAction SubSystem: '<S202>/If Action Subsystem1' incorporates:
     *  ActionPort: '<S205>/Action Port'
     */
    /* Merge: '<S202>/Merge' incorporates:
     *  Sum: '<S205>/Add'
     */
    mcb_ipmsm_pos_est_f28379d_B.Merge = 0.0F -
      mcb_ipmsm_pos_est_f28379d_B.Switch_a;

    /* End of Outputs for SubSystem: '<S202>/If Action Subsystem1' */
  }

  /* End of If: '<S202>/If' */

  /* UnitDelay: '<S69>/Unit Delay1' */
  mcb_ipmsm_pos_est_f28379d_B.UnitDelay1 =
    mcb_ipmsm_pos_est_f28379d_DW.UnitDelay1_DSTATE;

  /* Switch: '<S69>/Switch' */
  if (mcb_ipmsm_pos_est_f28379_ConstB.NOT1) {
    /* Rounding: '<S203>/Floor' */
    mcb_ipmsm_pos_est_f28379d_B.Floor_i = (real32_T)floor
      (mcb_ipmsm_pos_est_f28379d_B.Merge);

    /* Sum: '<S203>/Add' */
    mcb_ipmsm_pos_est_f28379d_B.Add_p = mcb_ipmsm_pos_est_f28379d_B.Merge -
      mcb_ipmsm_pos_est_f28379d_B.Floor_i;

    /* Gain: '<S29>/PositionGainIn' */
    mcb_ipmsm_pos_est_f28379d_B.PositionGainIn = 6.28318548F *
      mcb_ipmsm_pos_est_f28379d_B.Add_p;

    /* Switch: '<S69>/Switch' */
    mcb_ipmsm_pos_est_f28379d_B.Switch_n =
      mcb_ipmsm_pos_est_f28379d_B.PositionGainIn;
  } else {
    /* Switch: '<S69>/Switch' */
    mcb_ipmsm_pos_est_f28379d_B.Switch_n =
      mcb_ipmsm_pos_est_f28379d_B.UnitDelay1;
  }

  /* End of Switch: '<S69>/Switch' */

  /* Delay: '<S44>/Delay' */
  zcEvent = (mcb_ipmsm_pos_est_f28379d_B.Switch1_m &&
             (mcb_ipmsm_pos_est_f2837_PrevZCX.Delay_Reset_ZCE != POS_ZCSIG));
  mcb_ipmsm_pos_est_f28379d_DW.icLoad = (zcEvent ||
    mcb_ipmsm_pos_est_f28379d_DW.icLoad);
  mcb_ipmsm_pos_est_f2837_PrevZCX.Delay_Reset_ZCE =
    mcb_ipmsm_pos_est_f28379d_B.Switch1_m;
  if (mcb_ipmsm_pos_est_f28379d_DW.icLoad) {
    mcb_ipmsm_pos_est_f28379d_DW.Delay_DSTATE =
      mcb_ipmsm_pos_est_f28379d_B.Switch_n;
  }

  /* Delay: '<S44>/Delay' */
  mcb_ipmsm_pos_est_f28379d_B.Delay = mcb_ipmsm_pos_est_f28379d_DW.Delay_DSTATE;

  /* Switch: '<S67>/Switch1' */
  if (mcb_ipmsm_pos_est_f28379d_B.OR) {
    /* Switch: '<S67>/Switch1' */
    mcb_ipmsm_pos_est_f28379d_B.Switch1 = mcb_ipmsm_pos_est_f28379d_B.Delay;
  } else {
    /* Switch: '<S67>/Switch1' incorporates:
     *  Constant: '<S67>/Constant1'
     */
    mcb_ipmsm_pos_est_f28379d_B.Switch1 = 0.0F;
  }

  /* End of Switch: '<S67>/Switch1' */

  /* If: '<S72>/If1' */
  if (mcb_ipmsm_pos_est_f28379d_B.Compare) {
    /* Outputs for IfAction SubSystem: '<S72>/If Action Subsystem' incorporates:
     *  ActionPort: '<S75>/Action Port'
     */
    /* Merge: '<S72>/Merge' incorporates:
     *  Constant: '<S75>/Constant4'
     */
    mcb_ipmsm_pos_est_f28379d_B.Merge_j = 0.0F;

    /* End of Outputs for SubSystem: '<S72>/If Action Subsystem' */
  } else if (mcb_ipmsm_pos_est_f28379d_B.Compare_l) {
    /* Outputs for IfAction SubSystem: '<S72>/If Action Subsystem1' incorporates:
     *  ActionPort: '<S76>/Action Port'
     */
    /* Merge: '<S72>/Merge' incorporates:
     *  Constant: '<S76>/Constant4'
     */
    mcb_ipmsm_pos_est_f28379d_B.Merge_j = 2.09439516F;

    /* End of Outputs for SubSystem: '<S72>/If Action Subsystem1' */
  } else if (mcb_ipmsm_pos_est_f28379d_B.Compare_e) {
    /* Outputs for IfAction SubSystem: '<S72>/If Action Subsystem2' incorporates:
     *  ActionPort: '<S77>/Action Port'
     */
    /* Merge: '<S72>/Merge' incorporates:
     *  Constant: '<S77>/Constant4'
     */
    mcb_ipmsm_pos_est_f28379d_B.Merge_j = -2.09439516F;

    /* End of Outputs for SubSystem: '<S72>/If Action Subsystem2' */
  } else {
    /* Outputs for IfAction SubSystem: '<S72>/If Action Subsystem3' incorporates:
     *  ActionPort: '<S78>/Action Port'
     */
    /* Merge: '<S72>/Merge' incorporates:
     *  SignalConversion generated from: '<S78>/Th_In'
     */
    mcb_ipmsm_pos_est_f28379d_B.Merge_j = mcb_ipmsm_pos_est_f28379d_B.Switch1;

    /* End of Outputs for SubSystem: '<S72>/If Action Subsystem3' */
  }

  /* End of If: '<S72>/If1' */

  /* Switch: '<S67>/Switch2' */
  if (mcb_ipmsm_pos_est_f28379_ConstB.NOT1) {
    /* Switch: '<S67>/Switch2' */
    mcb_ipmsm_pos_est_f28379d_B.Switch2_k = mcb_ipmsm_pos_est_f28379d_B.Switch1;
  } else {
    /* Switch: '<S67>/Switch2' */
    mcb_ipmsm_pos_est_f28379d_B.Switch2_k = mcb_ipmsm_pos_est_f28379d_B.Merge_j;
  }

  /* End of Switch: '<S67>/Switch2' */

  /* Gain: '<S82>/convert_pu' */
  mcb_ipmsm_pos_est_f28379d_B.convert_pu = 0.159154937F *
    mcb_ipmsm_pos_est_f28379d_B.Switch2_k;

  /* RelationalOperator: '<S83>/Compare' incorporates:
   *  Constant: '<S83>/Constant'
   */
  mcb_ipmsm_pos_est_f28379d_B.Compare_g =
    (mcb_ipmsm_pos_est_f28379d_B.convert_pu < 0.0F);

  /* DataTypeConversion: '<S82>/Data Type Conversion' */
  mcb_ipmsm_pos_est_f28379d_B.DataTypeConversion_m =
    mcb_ipmsm_pos_est_f28379d_B.Compare_g;

  /* If: '<S82>/If' */
  if (mcb_ipmsm_pos_est_f28379d_B.DataTypeConversion_m > 0U) {
    /* Outputs for IfAction SubSystem: '<S82>/If Action Subsystem' incorporates:
     *  ActionPort: '<S84>/Action Port'
     */
    /* DataTypeConversion: '<S84>/Convert_uint16' */
    mcb_ipmsm_pos_est_f28379d_B.Convert_uint16_f = (int16_T)(real32_T)floor
      (mcb_ipmsm_pos_est_f28379d_B.convert_pu);

    /* DataTypeConversion: '<S84>/Convert_back' */
    mcb_ipmsm_pos_est_f28379d_B.Convert_back_k =
      mcb_ipmsm_pos_est_f28379d_B.Convert_uint16_f;

    /* Merge: '<S82>/Merge' incorporates:
     *  Sum: '<S84>/Sum'
     */
    mcb_ipmsm_pos_est_f28379d_B.Merge_k = mcb_ipmsm_pos_est_f28379d_B.convert_pu
      - mcb_ipmsm_pos_est_f28379d_B.Convert_back_k;

    /* End of Outputs for SubSystem: '<S82>/If Action Subsystem' */
  } else {
    /* Outputs for IfAction SubSystem: '<S82>/If Action Subsystem1' incorporates:
     *  ActionPort: '<S85>/Action Port'
     */
    /* DataTypeConversion: '<S85>/Convert_uint16' */
    mcb_ipmsm_pos_est_f28379d_B.Convert_uint16 = (int16_T)
      mcb_ipmsm_pos_est_f28379d_B.convert_pu;

    /* DataTypeConversion: '<S85>/Convert_back' */
    mcb_ipmsm_pos_est_f28379d_B.Convert_back =
      mcb_ipmsm_pos_est_f28379d_B.Convert_uint16;

    /* Merge: '<S82>/Merge' incorporates:
     *  Sum: '<S85>/Sum'
     */
    mcb_ipmsm_pos_est_f28379d_B.Merge_k = mcb_ipmsm_pos_est_f28379d_B.convert_pu
      - mcb_ipmsm_pos_est_f28379d_B.Convert_back;

    /* End of Outputs for SubSystem: '<S82>/If Action Subsystem1' */
  }

  /* End of If: '<S82>/If' */

  /* Gain: '<S74>/indexing' */
  mcb_ipmsm_pos_est_f28379d_B.indexing = 800.0F *
    mcb_ipmsm_pos_est_f28379d_B.Merge_k;

  /* DataTypeConversion: '<S74>/Get_Integer' */
  mcb_ipmsm_pos_est_f28379d_B.Get_Integer = (uint16_T)
    mcb_ipmsm_pos_est_f28379d_B.indexing;

  /* Sum: '<S74>/Sum' incorporates:
   *  Constant: '<S74>/offset'
   */
  qY = mcb_ipmsm_pos_est_f28379d_B.Get_Integer + 1UL;
  mcb_ipmsm_pos_est_f28379d_B.Sum[0] = qY;

  /* Selector: '<S74>/Lookup' incorporates:
   *  Constant: '<S74>/sine_table_values'
   */
  mcb_ipmsm_pos_est_f28379d_B.Lookup[0] =
    mcb_ipmsm_pos_est_f28379_ConstP.sine_table_values_Value[(int16_T)qY];

  /* Sum: '<S74>/Sum' */
  qY = mcb_ipmsm_pos_est_f28379d_B.Get_Integer;
  mcb_ipmsm_pos_est_f28379d_B.Sum[1] = qY;

  /* Selector: '<S74>/Lookup' incorporates:
   *  Constant: '<S74>/sine_table_values'
   */
  mcb_ipmsm_pos_est_f28379d_B.Lookup[1] =
    mcb_ipmsm_pos_est_f28379_ConstP.sine_table_values_Value[(int16_T)qY];

  /* Sum: '<S74>/Sum' incorporates:
   *  Constant: '<S74>/offset'
   */
  qY = mcb_ipmsm_pos_est_f28379d_B.Get_Integer + 201UL;
  mcb_ipmsm_pos_est_f28379d_B.Sum[2] = qY;

  /* Selector: '<S74>/Lookup' incorporates:
   *  Constant: '<S74>/sine_table_values'
   */
  mcb_ipmsm_pos_est_f28379d_B.Lookup[2] =
    mcb_ipmsm_pos_est_f28379_ConstP.sine_table_values_Value[(int16_T)qY];

  /* Sum: '<S74>/Sum' incorporates:
   *  Constant: '<S74>/offset'
   */
  qY = mcb_ipmsm_pos_est_f28379d_B.Get_Integer + 200UL;
  mcb_ipmsm_pos_est_f28379d_B.Sum[3] = qY;

  /* Selector: '<S74>/Lookup' incorporates:
   *  Constant: '<S74>/sine_table_values'
   */
  mcb_ipmsm_pos_est_f28379d_B.Lookup[3] =
    mcb_ipmsm_pos_est_f28379_ConstP.sine_table_values_Value[(int16_T)qY];

  /* Sum: '<S81>/Sum3' */
  mcb_ipmsm_pos_est_f28379d_B.Sum3 = mcb_ipmsm_pos_est_f28379d_B.Lookup[0] -
    mcb_ipmsm_pos_est_f28379d_B.Lookup[1];

  /* DataTypeConversion: '<S74>/Data Type Conversion1' */
  mcb_ipmsm_pos_est_f28379d_B.DataTypeConversion1 =
    mcb_ipmsm_pos_est_f28379d_B.Get_Integer;

  /* Sum: '<S74>/Sum2' */
  mcb_ipmsm_pos_est_f28379d_B.Sum2 = mcb_ipmsm_pos_est_f28379d_B.indexing -
    mcb_ipmsm_pos_est_f28379d_B.DataTypeConversion1;

  /* Product: '<S81>/Product' */
  mcb_ipmsm_pos_est_f28379d_B.Product_b = mcb_ipmsm_pos_est_f28379d_B.Sum3 *
    mcb_ipmsm_pos_est_f28379d_B.Sum2;

  /* Sum: '<S81>/Sum4' */
  mcb_ipmsm_pos_est_f28379d_B.Sum4 = mcb_ipmsm_pos_est_f28379d_B.Product_b +
    mcb_ipmsm_pos_est_f28379d_B.Lookup[1];

  /* Sum: '<S81>/Sum5' */
  mcb_ipmsm_pos_est_f28379d_B.Sum5 = mcb_ipmsm_pos_est_f28379d_B.Lookup[2] -
    mcb_ipmsm_pos_est_f28379d_B.Lookup[3];

  /* Product: '<S81>/Product1' */
  mcb_ipmsm_pos_est_f28379d_B.Product1 = mcb_ipmsm_pos_est_f28379d_B.Sum5 *
    mcb_ipmsm_pos_est_f28379d_B.Sum2;

  /* Sum: '<S81>/Sum6' */
  mcb_ipmsm_pos_est_f28379d_B.Sum6 = mcb_ipmsm_pos_est_f28379d_B.Product1 +
    mcb_ipmsm_pos_est_f28379d_B.Lookup[3];

  /* Outputs for Atomic SubSystem: '<S73>/Two inputs CRL' */
  /* Constant: '<S67>/Constant6' */
  mcb_ipmsm_pos__TwoinputsCRL(mcb_ipmsm_pos_est_f28379d_B.Product, 0.0F,
    mcb_ipmsm_pos_est_f28379d_B.Sum4, mcb_ipmsm_pos_est_f28379d_B.Sum6,
    &mcb_ipmsm_pos_est_f28379d_B.TwoinputsCRL_n);

  /* End of Outputs for SubSystem: '<S73>/Two inputs CRL' */

  /* RelationalOperator: '<S170>/Compare' incorporates:
   *  Constant: '<S170>/Constant'
   */
  mcb_ipmsm_pos_est_f28379d_B.Compare_f = (mcb_ipmsm_pos_est_f28379d_B.Add2 >=
    14297UL);

  /* RelationalOperator: '<S169>/Compare' incorporates:
   *  Constant: '<S169>/Constant'
   */
  mcb_ipmsm_pos_est_f28379d_B.Compare_fx = (mcb_ipmsm_pos_est_f28379d_B.Add2 <=
    14311UL);

  /* Logic: '<S167>/AND1' */
  mcb_ipmsm_pos_est_f28379d_B.FirstPulse =
    (mcb_ipmsm_pos_est_f28379d_B.Compare_f &&
     mcb_ipmsm_pos_est_f28379d_B.Compare_fx);

  /* DataTypeConversion: '<S54>/Data Type Conversion' */
  mcb_ipmsm_pos_est_f28379d_B.DataTypeConversion =
    mcb_ipmsm_pos_est_f28379d_B.FirstPulse;

  /* Product: '<S54>/Product' incorporates:
   *  Constant: '<S54>/Constant2'
   */
  mcb_ipmsm_pos_est_f28379d_B.Product_h =
    mcb_ipmsm_pos_est_f28379d_B.DataTypeConversion * 0.5F;

  /* RelationalOperator: '<S172>/Compare' incorporates:
   *  Constant: '<S172>/Constant'
   */
  mcb_ipmsm_pos_est_f28379d_B.Compare_m = (mcb_ipmsm_pos_est_f28379d_B.Add2 >=
    15311UL);

  /* RelationalOperator: '<S171>/Compare' incorporates:
   *  Constant: '<S171>/Constant'
   */
  mcb_ipmsm_pos_est_f28379d_B.Compare_k = (mcb_ipmsm_pos_est_f28379d_B.Add2 <=
    15325UL);

  /* Logic: '<S168>/AND2' */
  mcb_ipmsm_pos_est_f28379d_B.SecondPulse =
    (mcb_ipmsm_pos_est_f28379d_B.Compare_m &&
     mcb_ipmsm_pos_est_f28379d_B.Compare_k);

  /* DataTypeConversion: '<S54>/Data Type Conversion1' */
  mcb_ipmsm_pos_est_f28379d_B.DataTypeConversion1_p =
    mcb_ipmsm_pos_est_f28379d_B.SecondPulse;

  /* Product: '<S54>/Product1' incorporates:
   *  Constant: '<S54>/Constant2'
   */
  mcb_ipmsm_pos_est_f28379d_B.Product1_m = 0.5F *
    mcb_ipmsm_pos_est_f28379d_B.DataTypeConversion1_p;

  /* Sum: '<S54>/Add' */
  mcb_ipmsm_pos_est_f28379d_B.Add_e = mcb_ipmsm_pos_est_f28379d_B.Product_h +
    mcb_ipmsm_pos_est_f28379d_B.Product1_m;

  /* RelationalOperator: '<S166>/Compare' incorporates:
   *  Constant: '<S166>/Constant'
   */
  mcb_ipmsm_pos_est_f28379d_B.Compare_f2 = (mcb_ipmsm_pos_est_f28379d_B.Add2 >=
    15310UL);

  /* If: '<S54>/If' */
  if (mcb_ipmsm_pos_est_f28379d_B.Compare_f2) {
    /* Outputs for IfAction SubSystem: '<S54>/If Action Subsystem' incorporates:
     *  ActionPort: '<S62>/Action Port'
     */
    /* Merge: '<S54>/Merge' incorporates:
     *  Gain: '<S62>/Gain'
     */
    mcb_ipmsm_pos_est_f28379d_B.Merge_d[0] = -mcb_ipmsm_pos_est_f28379d_B.Sum4;
    mcb_ipmsm_pos_est_f28379d_B.Merge_d[1] = -mcb_ipmsm_pos_est_f28379d_B.Sum6;

    /* End of Outputs for SubSystem: '<S54>/If Action Subsystem' */
  } else {
    /* Outputs for IfAction SubSystem: '<S54>/If Action Subsystem1' incorporates:
     *  ActionPort: '<S63>/Action Port'
     */
    /* Merge: '<S54>/Merge' incorporates:
     *  SignalConversion generated from: '<S63>/Th_In'
     */
    mcb_ipmsm_pos_est_f28379d_B.Merge_d[0] = mcb_ipmsm_pos_est_f28379d_B.Sum4;
    mcb_ipmsm_pos_est_f28379d_B.Merge_d[1] = mcb_ipmsm_pos_est_f28379d_B.Sum6;

    /* End of Outputs for SubSystem: '<S54>/If Action Subsystem1' */
  }

  /* End of If: '<S54>/If' */

  /* Outputs for Atomic SubSystem: '<S64>/Two inputs CRL' */
  /* Constant: '<S54>/Constant1' */
  mcb_ipmsm_pos__TwoinputsCRL(mcb_ipmsm_pos_est_f28379d_B.Add_e, 0.0F,
    mcb_ipmsm_pos_est_f28379d_B.Merge_d[0], mcb_ipmsm_pos_est_f28379d_B.Merge_d
    [1], &mcb_ipmsm_pos_est_f28379d_B.TwoinputsCRL);

  /* End of Outputs for SubSystem: '<S64>/Two inputs CRL' */

  /* Sum: '<S29>/Add' */
  mcb_ipmsm_pos_est_f28379d_B.Add_n[0] =
    mcb_ipmsm_pos_est_f28379d_B.TwoinputsCRL_n.algDD_o1 +
    mcb_ipmsm_pos_est_f28379d_B.TwoinputsCRL.algDD_o1;
  mcb_ipmsm_pos_est_f28379d_B.Add_n[1] =
    mcb_ipmsm_pos_est_f28379d_B.TwoinputsCRL_n.algDD_o2 +
    mcb_ipmsm_pos_est_f28379d_B.TwoinputsCRL.algDD_o2;

  /* Delay: '<S56>/Delay' */
  zcEvent = (((mcb_ipmsm_pos_est_f2837_PrevZCX.Delay_Reset_ZCE_d == POS_ZCSIG)
              != (int16_T)mcb_ipmsm_pos_est_f28379d_B.Compare_f2) &&
             (mcb_ipmsm_pos_est_f2837_PrevZCX.Delay_Reset_ZCE_d !=
              UNINITIALIZED_ZCSIG));
  if (zcEvent) {
    mcb_ipmsm_pos_est_f28379d_DW.Delay_DSTATE_k = 0.0F;
  }

  mcb_ipmsm_pos_est_f2837_PrevZCX.Delay_Reset_ZCE_d =
    mcb_ipmsm_pos_est_f28379d_B.Compare_f2;

  /* Delay: '<S56>/Delay' */
  mcb_ipmsm_pos_est_f28379d_B.Delay_j =
    mcb_ipmsm_pos_est_f28379d_DW.Delay_DSTATE_k;

  /* DataStoreRead: '<S36>/Data Store Read1' */
  mcb_ipmsm_pos_est_f28379d_B.DataStoreRead1 =
    mcb_ipmsm_pos_est_f28379d_DW.IaOffset;

  /* DataStoreRead: '<S36>/Data Store Read2' */
  mcb_ipmsm_pos_est_f28379d_B.DataStoreRead2 =
    mcb_ipmsm_pos_est_f28379d_DW.IbOffset;

  /* S-Function (c2802xadc): '<S35>/ADC_C_IN2' */
  {
    /*  Internal Reference Voltage : Fixed scale 0 to 3.3 V range.  */
    /*  External Reference Voltage : Allowable ranges of VREFHI(ADCINA0) = 3.3 and VREFLO(tied to ground) = 0  */
    mcb_ipmsm_pos_est_f28379d_B.ADC_C_IN2 = (AdccResultRegs.ADCRESULT0);
  }

  /* S-Function (c2802xadc): '<S35>/ADC_B_IN2' */
  {
    /*  Internal Reference Voltage : Fixed scale 0 to 3.3 V range.  */
    /*  External Reference Voltage : Allowable ranges of VREFHI(ADCINA0) = 3.3 and VREFLO(tied to ground) = 0  */
    mcb_ipmsm_pos_est_f28379d_B.ADC_B_IN2 = (AdcbResultRegs.ADCRESULT0);
  }

  /* DataTypeConversion: '<S36>/Data Type Conversion' */
  mcb_ipmsm_pos_est_f28379d_B.DataTypeConversion_e4[0] =
    mcb_ipmsm_pos_est_f28379d_B.ADC_C_IN2;
  mcb_ipmsm_pos_est_f28379d_B.DataTypeConversion_e4[1] =
    mcb_ipmsm_pos_est_f28379d_B.ADC_B_IN2;

  /* Sum: '<S36>/Add' */
  mcb_ipmsm_pos_est_f28379d_B.Add_h[0] =
    mcb_ipmsm_pos_est_f28379d_B.DataTypeConversion_e4[0] -
    mcb_ipmsm_pos_est_f28379d_B.DataStoreRead1;
  mcb_ipmsm_pos_est_f28379d_B.Add_h[1] =
    mcb_ipmsm_pos_est_f28379d_B.DataTypeConversion_e4[1] -
    mcb_ipmsm_pos_est_f28379d_B.DataStoreRead2;

  /* Gain: '<S38>/Get ADC Voltage' */
  Bias = 0.000732600747F * (real32_T)mcb_ipmsm_pos_est_f28379d_B.Add_h[0];
  mcb_ipmsm_pos_est_f28379d_B.GetADCVoltage[0] = Bias;

  /* Gain: '<S38>/Get Currents' */
  Bias *= 14.2857141F;
  mcb_ipmsm_pos_est_f28379d_B.GetCurrents[0] = Bias;

  /* Gain: '<S38>/PU_Conversion' */
  mcb_ipmsm_pos_est_f28379d_B.PU_Conversion[0] = 0.0466666669F * Bias;

  /* Gain: '<S38>/Get ADC Voltage' */
  Bias = 0.000732600747F * (real32_T)mcb_ipmsm_pos_est_f28379d_B.Add_h[1];
  mcb_ipmsm_pos_est_f28379d_B.GetADCVoltage[1] = Bias;

  /* Gain: '<S38>/Get Currents' */
  Bias *= 14.2857141F;
  mcb_ipmsm_pos_est_f28379d_B.GetCurrents[1] = Bias;

  /* Gain: '<S38>/PU_Conversion' */
  mcb_ipmsm_pos_est_f28379d_B.PU_Conversion[1] = 0.0466666669F * Bias;

  /* Outputs for Enabled SubSystem: '<S29>/Input Switch' incorporates:
   *  EnablePort: '<S42>/Enable'
   */
  if (mcb_ipmsm_pos_est_f28379d_B.OR) {
    mcb_ipmsm_pos_est_f28379d_DW.InputSwitch_MODE = true;

    /* Gain: '<S42>/CurrentGainIn' */
    mcb_ipmsm_pos_est_f28379d_B.CurrentGainIn[0] =
      mcb_ipmsm_pos_est_f28379d_B.PU_Conversion[0];
    mcb_ipmsm_pos_est_f28379d_B.CurrentGainIn[1] =
      mcb_ipmsm_pos_est_f28379d_B.PU_Conversion[1];
  } else if (mcb_ipmsm_pos_est_f28379d_DW.InputSwitch_MODE) {
    /* Disable for Gain: '<S42>/CurrentGainIn' incorporates:
     *  Outport: '<S42>/Iab_pu_out'
     */
    mcb_ipmsm_pos_est_f28379d_B.CurrentGainIn[0] = 0.0F;
    mcb_ipmsm_pos_est_f28379d_B.CurrentGainIn[1] = 0.0F;
    mcb_ipmsm_pos_est_f28379d_DW.InputSwitch_MODE = false;
  }

  /* End of Outputs for SubSystem: '<S29>/Input Switch' */

  /* Outputs for Atomic SubSystem: '<S156>/Two phase CRL wrap' */
  /* Sum: '<S157>/a_plus_2b' */
  mcb_ipmsm_pos_est_f28379d_B.a_plus_2b =
    (mcb_ipmsm_pos_est_f28379d_B.CurrentGainIn[0] +
     mcb_ipmsm_pos_est_f28379d_B.CurrentGainIn[1]) +
    mcb_ipmsm_pos_est_f28379d_B.CurrentGainIn[1];

  /* Gain: '<S157>/one_by_sqrt3' */
  mcb_ipmsm_pos_est_f28379d_B.one_by_sqrt3 = 0.577350259F *
    mcb_ipmsm_pos_est_f28379d_B.a_plus_2b;

  /* AlgorithmDescriptorDelegate generated from: '<S157>/a16' */
  mcb_ipmsm_pos_est_f28379d_B.algDD_o1_i =
    mcb_ipmsm_pos_est_f28379d_B.CurrentGainIn[0];

  /* AlgorithmDescriptorDelegate generated from: '<S157>/a16' */
  mcb_ipmsm_pos_est_f28379d_B.algDD_o2_n =
    mcb_ipmsm_pos_est_f28379d_B.one_by_sqrt3;

  /* End of Outputs for SubSystem: '<S156>/Two phase CRL wrap' */

  /* Outputs for Atomic SubSystem: '<S155>/Two inputs CRL' */
  /* Product: '<S158>/acos' */
  mcb_ipmsm_pos_est_f28379d_B.acos_c = mcb_ipmsm_pos_est_f28379d_B.algDD_o1_i *
    mcb_ipmsm_pos_est_f28379d_B.Sum6;

  /* Product: '<S158>/bsin' */
  mcb_ipmsm_pos_est_f28379d_B.bsin = mcb_ipmsm_pos_est_f28379d_B.algDD_o2_n *
    mcb_ipmsm_pos_est_f28379d_B.Sum4;

  /* Sum: '<S158>/sum_Ds' */
  mcb_ipmsm_pos_est_f28379d_B.sum_Ds = mcb_ipmsm_pos_est_f28379d_B.acos_c +
    mcb_ipmsm_pos_est_f28379d_B.bsin;

  /* Product: '<S158>/bcos' */
  mcb_ipmsm_pos_est_f28379d_B.bcos = mcb_ipmsm_pos_est_f28379d_B.algDD_o2_n *
    mcb_ipmsm_pos_est_f28379d_B.Sum6;

  /* Product: '<S158>/asin' */
  mcb_ipmsm_pos_est_f28379d_B.asin_m = mcb_ipmsm_pos_est_f28379d_B.algDD_o1_i *
    mcb_ipmsm_pos_est_f28379d_B.Sum4;

  /* Sum: '<S158>/sum_Qs' */
  mcb_ipmsm_pos_est_f28379d_B.sum_Qs = mcb_ipmsm_pos_est_f28379d_B.bcos -
    mcb_ipmsm_pos_est_f28379d_B.asin_m;

  /* Switch: '<S159>/Switch' */
  mcb_ipmsm_pos_est_f28379d_B.Switch_nu[0] = mcb_ipmsm_pos_est_f28379d_B.sum_Ds;
  mcb_ipmsm_pos_est_f28379d_B.Switch_nu[1] = mcb_ipmsm_pos_est_f28379d_B.sum_Qs;

  /* AlgorithmDescriptorDelegate generated from: '<S158>/a16' */
  mcb_ipmsm_pos_est_f28379d_B.algDD_o1 = mcb_ipmsm_pos_est_f28379d_B.Switch_nu[0];

  /* AlgorithmDescriptorDelegate generated from: '<S158>/a16' */
  mcb_ipmsm_pos_est_f28379d_B.algDD_o2 = mcb_ipmsm_pos_est_f28379d_B.Switch_nu[1];

  /* End of Outputs for SubSystem: '<S155>/Two inputs CRL' */

  /* Logic: '<S51>/AND' */
  mcb_ipmsm_pos_est_f28379d_B.AND_h = (mcb_ipmsm_pos_est_f28379d_B.OR &&
    mcb_ipmsm_pos_est_f28379d_B.Compare_f);

  /* Switch: '<S51>/Switch2' */
  if (mcb_ipmsm_pos_est_f28379d_B.AND_h) {
    /* Switch: '<S51>/Switch2' */
    mcb_ipmsm_pos_est_f28379d_B.Switch2_e = mcb_ipmsm_pos_est_f28379d_B.algDD_o1;
  } else {
    /* Switch: '<S51>/Switch2' incorporates:
     *  Constant: '<S51>/Constant3'
     */
    mcb_ipmsm_pos_est_f28379d_B.Switch2_e = 0.0F;
  }

  /* End of Switch: '<S51>/Switch2' */

  /* Abs: '<S51>/Abs' */
  mcb_ipmsm_pos_est_f28379d_B.Abs = fabsf(mcb_ipmsm_pos_est_f28379d_B.Switch2_e);

  /* Sum: '<S56>/Subtract1' */
  mcb_ipmsm_pos_est_f28379d_B.Subtract1 = mcb_ipmsm_pos_est_f28379d_B.Abs -
    mcb_ipmsm_pos_est_f28379d_B.Delay_j;

  /* RelationalOperator: '<S59>/Compare' incorporates:
   *  Constant: '<S59>/Constant'
   */
  mcb_ipmsm_pos_est_f28379d_B.Compare_ej =
    (mcb_ipmsm_pos_est_f28379d_B.Subtract1 <= 0.0F);

  /* Switch: '<S56>/Switch3' */
  if (mcb_ipmsm_pos_est_f28379d_B.Compare_ej) {
    /* Switch: '<S56>/Switch3' */
    mcb_ipmsm_pos_est_f28379d_B.Switch3 = mcb_ipmsm_pos_est_f28379d_B.Delay_j;
  } else {
    /* Switch: '<S56>/Switch3' */
    mcb_ipmsm_pos_est_f28379d_B.Switch3 = mcb_ipmsm_pos_est_f28379d_B.Abs;
  }

  /* End of Switch: '<S56>/Switch3' */

  /* RelationalOperator: '<S57>/Compare' */
  mcb_ipmsm_pos_est_f28379d_B.Compare_mh =
    !mcb_ipmsm_pos_est_f28379d_B.Compare_f2;

  /* Outputs for Enabled SubSystem: '<S56>/Save First Pulse Peak' incorporates:
   *  EnablePort: '<S60>/Enable'
   */
  if (mcb_ipmsm_pos_est_f28379d_B.Compare_mh) {
    /* SignalConversion generated from: '<S60>/Peaks' */
    mcb_ipmsm_pos_est_f28379d_B.first = mcb_ipmsm_pos_est_f28379d_B.Switch3;
  }

  /* End of Outputs for SubSystem: '<S56>/Save First Pulse Peak' */

  /* RelationalOperator: '<S58>/Compare' */
  mcb_ipmsm_pos_est_f28379d_B.Compare_a = mcb_ipmsm_pos_est_f28379d_B.Compare_f2;

  /* Outputs for Enabled SubSystem: '<S56>/Save Second Pulse Peak' incorporates:
   *  EnablePort: '<S61>/Enable'
   */
  if (mcb_ipmsm_pos_est_f28379d_B.Compare_a) {
    /* SignalConversion generated from: '<S61>/Peaks' */
    mcb_ipmsm_pos_est_f28379d_B.second = mcb_ipmsm_pos_est_f28379d_B.Switch3;
  }

  /* End of Outputs for SubSystem: '<S56>/Save Second Pulse Peak' */

  /* RelationalOperator: '<S165>/Compare' incorporates:
   *  Constant: '<S165>/Constant'
   */
  mcb_ipmsm_pos_est_f28379d_B.Compare_p = (mcb_ipmsm_pos_est_f28379d_B.Add2 >=
    16325UL);

  /* Logic: '<S51>/AND1' */
  mcb_ipmsm_pos_est_f28379d_B.AND1_j = (mcb_ipmsm_pos_est_f28379d_B.OR &&
    mcb_ipmsm_pos_est_f28379d_B.Compare_p);

  /* Switch: '<S51>/Switch1' */
  if (mcb_ipmsm_pos_est_f28379d_B.AND1_j) {
    /* Sum: '<S55>/Add4' */
    mcb_ipmsm_pos_est_f28379d_B.Add4 = mcb_ipmsm_pos_est_f28379d_B.first -
      mcb_ipmsm_pos_est_f28379d_B.second;

    /* Switch: '<S55>/Switch' */
    if (mcb_ipmsm_pos_est_f28379d_B.Add4 >= 0.0F) {
      /* Switch: '<S55>/Switch' incorporates:
       *  Constant: '<S55>/Constant'
       */
      mcb_ipmsm_pos_est_f28379d_B.Switch_j = 0.0F;
    } else {
      /* Switch: '<S55>/Switch' incorporates:
       *  Constant: '<S55>/Constant1'
       */
      mcb_ipmsm_pos_est_f28379d_B.Switch_j = 3.14159274F;
    }

    /* End of Switch: '<S55>/Switch' */

    /* Switch: '<S51>/Switch1' */
    mcb_ipmsm_pos_est_f28379d_B.Switch1_p = mcb_ipmsm_pos_est_f28379d_B.Switch_j;
  } else {
    /* Switch: '<S51>/Switch1' incorporates:
     *  Constant: '<S51>/Constant1'
     */
    mcb_ipmsm_pos_est_f28379d_B.Switch1_p = 0.0F;
  }

  /* End of Switch: '<S51>/Switch1' */

  /* If: '<S41>/If' */
  if (mcb_ipmsm_pos_est_f28379d_B.Switch1_p > 0.0F) {
    /* Outputs for IfAction SubSystem: '<S41>/If Action Subsystem' incorporates:
     *  ActionPort: '<S52>/Action Port'
     */
    /* Merge: '<S41>/Merge' incorporates:
     *  Constant: '<S52>/Constant'
     *  Sum: '<S52>/Add'
     */
    mcb_ipmsm_pos_est_f28379d_B.Merge_b = mcb_ipmsm_pos_est_f28379d_B.Switch2_k
      + 3.14159274F;

    /* Merge: '<S41>/Merge1' incorporates:
     *  Gain: '<S52>/Gain'
     */
    mcb_ipmsm_pos_est_f28379d_B.Merge1_g[0] = -mcb_ipmsm_pos_est_f28379d_B.Sum4;
    mcb_ipmsm_pos_est_f28379d_B.Merge1_g[1] = -mcb_ipmsm_pos_est_f28379d_B.Sum6;

    /* End of Outputs for SubSystem: '<S41>/If Action Subsystem' */
  } else {
    /* Outputs for IfAction SubSystem: '<S41>/If Action Subsystem1' incorporates:
     *  ActionPort: '<S53>/Action Port'
     */
    /* SignalConversion generated from: '<S53>/In' */
    mcb_ipmsm_pos_est_f28379d_B.In_f[0] = mcb_ipmsm_pos_est_f28379d_B.Sum4;
    mcb_ipmsm_pos_est_f28379d_B.In_f[1] = mcb_ipmsm_pos_est_f28379d_B.Sum6;
    mcb_ipmsm_pos_est_f28379d_B.In_f[2] = mcb_ipmsm_pos_est_f28379d_B.Switch2_k;

    /* Merge: '<S41>/Merge1' incorporates:
     *  SignalConversion generated from: '<S53>/SC_Th'
     */
    mcb_ipmsm_pos_est_f28379d_B.Merge1_g[0] = mcb_ipmsm_pos_est_f28379d_B.In_f[0];
    mcb_ipmsm_pos_est_f28379d_B.Merge1_g[1] = mcb_ipmsm_pos_est_f28379d_B.In_f[1];

    /* Merge: '<S41>/Merge' incorporates:
     *  SignalConversion generated from: '<S53>/Th'
     */
    mcb_ipmsm_pos_est_f28379d_B.Merge_b = mcb_ipmsm_pos_est_f28379d_B.In_f[2];

    /* End of Outputs for SubSystem: '<S41>/If Action Subsystem1' */
  }

  /* End of If: '<S41>/If' */

  /* Switch: '<S210>/Switch' incorporates:
   *  Constant: '<S210>/Constant1'
   */
  mcb_ipmsm_pos_est_f28379d_B.Switch_f = 0.0F;

  /* If: '<S211>/If' */
  if (mcb_ipmsm_pos_est_f28379d_B.Merge_b <=
      mcb_ipmsm_pos_est_f28379d_B.Switch_f) {
    /* Outputs for IfAction SubSystem: '<S211>/If Action Subsystem' incorporates:
     *  ActionPort: '<S213>/Action Port'
     */
    /* Merge: '<S211>/Merge' incorporates:
     *  Constant: '<S213>/Constant'
     *  Sum: '<S213>/Add'
     */
    mcb_ipmsm_pos_est_f28379d_B.Merge_o = (mcb_ipmsm_pos_est_f28379d_B.Merge_b +
      6.28318548F) - mcb_ipmsm_pos_est_f28379d_B.Switch_f;

    /* End of Outputs for SubSystem: '<S211>/If Action Subsystem' */
  } else {
    /* Outputs for IfAction SubSystem: '<S211>/If Action Subsystem1' incorporates:
     *  ActionPort: '<S214>/Action Port'
     */
    /* Merge: '<S211>/Merge' incorporates:
     *  Sum: '<S214>/Add'
     */
    mcb_ipmsm_pos_est_f28379d_B.Merge_o = mcb_ipmsm_pos_est_f28379d_B.Merge_b -
      mcb_ipmsm_pos_est_f28379d_B.Switch_f;

    /* End of Outputs for SubSystem: '<S211>/If Action Subsystem1' */
  }

  /* End of If: '<S211>/If' */

  /* Gain: '<S212>/Multiply' */
  mcb_ipmsm_pos_est_f28379d_B.Multiply = 0.159154937F *
    mcb_ipmsm_pos_est_f28379d_B.Merge_o;

  /* Rounding: '<S212>/Floor' */
  mcb_ipmsm_pos_est_f28379d_B.Floor = (real32_T)floor
    (mcb_ipmsm_pos_est_f28379d_B.Multiply);

  /* Gain: '<S212>/Multiply1' */
  mcb_ipmsm_pos_est_f28379d_B.Multiply1 = 6.28318548F *
    mcb_ipmsm_pos_est_f28379d_B.Floor;

  /* Sum: '<S212>/Add' */
  mcb_ipmsm_pos_est_f28379d_B.Add_k = mcb_ipmsm_pos_est_f28379d_B.Merge_o -
    mcb_ipmsm_pos_est_f28379d_B.Multiply1;

  /* Gain: '<S29>/PositionGainOut' */
  mcb_ipmsm_pos_est_f28379d_B.PositionGainOut = 0.159154937F *
    mcb_ipmsm_pos_est_f28379d_B.Add_k;

  /* UnitDelay: '<S40>/Unit Delay' */
  mcb_ipmsm_pos_est_f28379d_B.UnitDelay =
    mcb_ipmsm_pos_est_f28379d_DW.UnitDelay_DSTATE_n;

  /* RelationalOperator: '<S49>/Compare' incorporates:
   *  Constant: '<S49>/Constant'
   */
  mcb_ipmsm_pos_est_f28379d_B.Compare_i = (mcb_ipmsm_pos_est_f28379d_B.UnitDelay
    < 100UL);

  /* Switch: '<S40>/Switch2' */
  mcb_ipmsm_pos_est_f28379d_B.Switch2 = mcb_ipmsm_pos_est_f28379d_B.Compare_i;

  /* Sum: '<S40>/Sum of Elements' */
  Bias = -0.0F;
  for (i = 0; i < 50; i++) {
    /* S-Function (sfix_udelay): '<S40>/Tapped Delay1' */
    tmp = mcb_ipmsm_pos_est_f28379d_DW.TappedDelay1_X[i];
    mcb_ipmsm_pos_est_f28379d_B.TappedDelay1[i] = tmp;

    /* Sum: '<S40>/Sum of Elements' */
    Bias += tmp;
  }

  /* Sum: '<S40>/Sum of Elements' */
  mcb_ipmsm_pos_est_f28379d_B.SumofElements = Bias;

  /* Abs: '<S40>/Abs1' */
  mcb_ipmsm_pos_est_f28379d_B.Abs1 = fabsf
    (mcb_ipmsm_pos_est_f28379d_B.SumofElements);

  /* Outputs for Enabled SubSystem: '<S40>/Switch' incorporates:
   *  EnablePort: '<S50>/Enable'
   */
  if (mcb_ipmsm_pos_est_f28379d_B.AND_j) {
    /* SignalConversion generated from: '<S50>/In' */
    mcb_ipmsm_pos_est_f28379d_B.In_k = mcb_ipmsm_pos_est_f28379d_B.Abs1;
  }

  /* End of Outputs for SubSystem: '<S40>/Switch' */

  /* RelationalOperator: '<S48>/Compare' incorporates:
   *  Constant: '<S48>/Constant'
   */
  mcb_ipmsm_pos_est_f28379d_B.Compare_fe = (mcb_ipmsm_pos_est_f28379d_B.In_k <=
    0.02F);

  /* Logic: '<S40>/AND' */
  mcb_ipmsm_pos_est_f28379d_B.AND_k = (mcb_ipmsm_pos_est_f28379d_B.Compare_fe &&
    mcb_ipmsm_pos_est_f28379d_B.AND_j);

  /* UnitDelay: '<S40>/Unit Delay1' */
  mcb_ipmsm_pos_est_f28379d_B.UnitDelay1_p =
    mcb_ipmsm_pos_est_f28379d_DW.UnitDelay1_DSTATE_n;

  /* Delay: '<S40>/Delay1' */
  zcEvent = (mcb_ipmsm_pos_est_f28379d_B.UnitDelay1_p &&
             (mcb_ipmsm_pos_est_f2837_PrevZCX.Delay1_Reset_ZCE_o != POS_ZCSIG));
  mcb_ipmsm_pos_est_f2837_PrevZCX.Delay1_Reset_ZCE_o =
    mcb_ipmsm_pos_est_f28379d_B.UnitDelay1_p;
  if (mcb_ipmsm_pos_est_f28379d_B.AND_k) {
    if (zcEvent) {
      mcb_ipmsm_pos_est_f28379d_DW.Delay1_DSTATE_a = 0UL;
    }

    /* Delay: '<S40>/Delay1' */
    mcb_ipmsm_pos_est_f28379d_B.Delay1_k =
      mcb_ipmsm_pos_est_f28379d_DW.Delay1_DSTATE_a;
  }

  /* End of Delay: '<S40>/Delay1' */

  /* Sum: '<S40>/Add2' */
  q0 = mcb_ipmsm_pos_est_f28379d_B.Switch2;
  qY = q0 + mcb_ipmsm_pos_est_f28379d_B.Delay1_k;
  if (qY < q0) {
    qY = MAX_uint32_T;
  }

  /* Sum: '<S40>/Add2' */
  mcb_ipmsm_pos_est_f28379d_B.Add2_l = qY;

  /* If: '<S163>/Count check' */
  if (mcb_ipmsm_pos_est_f28379d_B.Add2 < 2UL) {
    /* Outputs for IfAction SubSystem: '<S163>/If Action Subsystem' incorporates:
     *  ActionPort: '<S189>/Action Port'
     */
    /* Merge: '<S163>/Merge' incorporates:
     *  Constant: '<S189>/Constant'
     */
    mcb_ipmsm_pos_est_f28379d_B.Merge_l = 0.0F;

    /* End of Outputs for SubSystem: '<S163>/If Action Subsystem' */
  } else if (mcb_ipmsm_pos_est_f28379d_B.Add2 < 804UL) {
    /* Outputs for IfAction SubSystem: '<S163>/If Action Subsystem1' incorporates:
     *  ActionPort: '<S190>/Action Port'
     */
    /* Merge: '<S163>/Merge' incorporates:
     *  Constant: '<S190>/Constant'
     */
    mcb_ipmsm_pos_est_f28379d_B.Merge_l = 1.0F;

    /* End of Outputs for SubSystem: '<S163>/If Action Subsystem1' */
  } else if (mcb_ipmsm_pos_est_f28379d_B.Add2 < 14297UL) {
    /* Outputs for IfAction SubSystem: '<S163>/If Action Subsystem2' incorporates:
     *  ActionPort: '<S191>/Action Port'
     */
    /* Merge: '<S163>/Merge' incorporates:
     *  Constant: '<S191>/Constant'
     */
    mcb_ipmsm_pos_est_f28379d_B.Merge_l = 2.0F;

    /* End of Outputs for SubSystem: '<S163>/If Action Subsystem2' */
  } else if (mcb_ipmsm_pos_est_f28379d_B.Add2 < 17327UL) {
    /* Outputs for IfAction SubSystem: '<S163>/If Action Subsystem3' incorporates:
     *  ActionPort: '<S192>/Action Port'
     */
    /* Merge: '<S163>/Merge' incorporates:
     *  Constant: '<S192>/Constant'
     */
    mcb_ipmsm_pos_est_f28379d_B.Merge_l = 3.0F;

    /* End of Outputs for SubSystem: '<S163>/If Action Subsystem3' */
  } else {
    /* Outputs for IfAction SubSystem: '<S163>/If Action Subsystem4' incorporates:
     *  ActionPort: '<S193>/Action Port'
     */
    /* Merge: '<S163>/Merge' incorporates:
     *  Constant: '<S193>/Constant'
     */
    mcb_ipmsm_pos_est_f28379d_B.Merge_l = 4.0F;

    /* End of Outputs for SubSystem: '<S163>/If Action Subsystem4' */
  }

  /* End of If: '<S163>/Count check' */

  /* If: '<S163>/If2' */
  if (mcb_ipmsm_pos_est_f28379_ConstB.NOT) {
    /* Outputs for IfAction SubSystem: '<S163>/If Action Subsystem5' incorporates:
     *  ActionPort: '<S194>/Action Port'
     */
    /* Merge: '<S163>/Merge1' incorporates:
     *  Constant: '<S194>/Constant'
     */
    mcb_ipmsm_pos_est_f28379d_B.Merge1 = 4.0F;

    /* End of Outputs for SubSystem: '<S163>/If Action Subsystem5' */
  } else {
    /* Outputs for IfAction SubSystem: '<S163>/If Action Subsystem6' incorporates:
     *  ActionPort: '<S195>/Action Port'
     */
    /* Merge: '<S163>/Merge1' incorporates:
     *  SignalConversion generated from: '<S195>/In1'
     */
    mcb_ipmsm_pos_est_f28379d_B.Merge1 = mcb_ipmsm_pos_est_f28379d_B.Merge_l;

    /* End of Outputs for SubSystem: '<S163>/If Action Subsystem6' */
  }

  /* End of If: '<S163>/If2' */

  /* Switch: '<S29>/Switch' */
  if (mcb_ipmsm_pos_est_f28379d_B.Switch_p) {
    /* Switch: '<S40>/Switch1' */
    if (mcb_ipmsm_pos_est_f28379d_B.Add2_l > 0UL) {
      /* Switch: '<S40>/Switch1' incorporates:
       *  Constant: '<S40>/Constant'
       */
      mcb_ipmsm_pos_est_f28379d_B.Switch1_c = 4.0F;
    } else {
      /* Switch: '<S40>/Switch1' incorporates:
       *  Constant: '<S40>/Constant1'
       */
      mcb_ipmsm_pos_est_f28379d_B.Switch1_c = 5.0F;
    }

    /* End of Switch: '<S40>/Switch1' */

    /* Switch: '<S29>/Switch' */
    mcb_ipmsm_pos_est_f28379d_B.Status = mcb_ipmsm_pos_est_f28379d_B.Switch1_c;
  } else {
    /* Switch: '<S29>/Switch' */
    mcb_ipmsm_pos_est_f28379d_B.Status = mcb_ipmsm_pos_est_f28379d_B.Merge1;
  }

  /* End of Switch: '<S29>/Switch' */

  /* Outputs for Enabled SubSystem: '<S29>/Output Switch' incorporates:
   *  EnablePort: '<S43>/Enable'
   */
  if (mcb_ipmsm_pos_est_f28379d_B.OR) {
    mcb_ipmsm_pos_est_f28379d_DW.OutputSwitch_MODE = true;

    /* SignalConversion generated from: '<S43>/V_In' */
    mcb_ipmsm_pos_est_f28379d_B.V_In[0] = mcb_ipmsm_pos_est_f28379d_B.Add_n[0];
    mcb_ipmsm_pos_est_f28379d_B.V_In[1] = mcb_ipmsm_pos_est_f28379d_B.Add_n[1];

    /* SignalConversion generated from: '<S43>/Th_In' */
    mcb_ipmsm_pos_est_f28379d_B.Th_In =
      mcb_ipmsm_pos_est_f28379d_B.PositionGainOut;

    /* SignalConversion generated from: '<S43>/Info_out' */
    mcb_ipmsm_pos_est_f28379d_B.Idq[0] = mcb_ipmsm_pos_est_f28379d_B.algDD_o1;
    mcb_ipmsm_pos_est_f28379d_B.Idq[1] = mcb_ipmsm_pos_est_f28379d_B.algDD_o2;

    /* SignalConversion generated from: '<S43>/Info_out' */
    mcb_ipmsm_pos_est_f28379d_B.Status_j = mcb_ipmsm_pos_est_f28379d_B.Status;
  } else if (mcb_ipmsm_pos_est_f28379d_DW.OutputSwitch_MODE) {
    /* Disable for SignalConversion generated from: '<S43>/Th_In' incorporates:
     *  Outport: '<S43>/Th_out'
     */
    mcb_ipmsm_pos_est_f28379d_B.Th_In = 0.0F;

    /* Disable for SignalConversion generated from: '<S43>/V_In' incorporates:
     *  Outport: '<S43>/V_out'
     */
    mcb_ipmsm_pos_est_f28379d_B.V_In[0] = 0.0F;

    /* Disable for SignalConversion generated from: '<S43>/Info_out' incorporates:
     *  Outport: '<S43>/Info_out'
     */
    mcb_ipmsm_pos_est_f28379d_B.Idq[0] = 0.0F;

    /* Disable for SignalConversion generated from: '<S43>/V_In' incorporates:
     *  Outport: '<S43>/V_out'
     */
    mcb_ipmsm_pos_est_f28379d_B.V_In[1] = 0.0F;

    /* Disable for SignalConversion generated from: '<S43>/Info_out' incorporates:
     *  Outport: '<S43>/Info_out'
     */
    mcb_ipmsm_pos_est_f28379d_B.Idq[1] = 0.0F;

    /* Disable for SignalConversion generated from: '<S43>/Info_out' incorporates:
     *  Outport: '<S43>/Info_out'
     */
    mcb_ipmsm_pos_est_f28379d_B.Status_j = 0.0F;
    mcb_ipmsm_pos_est_f28379d_DW.OutputSwitch_MODE = false;
  }

  /* End of Outputs for SubSystem: '<S29>/Output Switch' */

  /* Gain: '<S6>/PUtoRad' */
  mcb_ipmsm_pos_est_f28379d_B.PUtoRad = 6.28318548F *
    mcb_ipmsm_pos_est_f28379d_B.Th_In;

  /* UnitDelay: '<S6>/Unit Delay1' */
  mcb_ipmsm_pos_est_f28379d_B.UnitDelay1_e =
    mcb_ipmsm_pos_est_f28379d_DW.UnitDelay1_DSTATE_k;

  /* Logic: '<S6>/NOT' */
  mcb_ipmsm_pos_est_f28379d_B.NOT = !mcb_ipmsm_pos_est_f28379d_B.UnitDelay1_e;

  /* Outputs for Enabled SubSystem: '<S6>/Hold' incorporates:
   *  EnablePort: '<S26>/Enable'
   */
  if (mcb_ipmsm_pos_est_f28379d_B.NOT) {
    /* SignalConversion generated from: '<S26>/ThIn' */
    mcb_ipmsm_pos_est_f28379d_B.ThIn = mcb_ipmsm_pos_est_f28379d_B.PUtoRad;

    /* SignalConversion generated from: '<S26>/CurrIn' */
    mcb_ipmsm_pos_est_f28379d_B.CurrIn[0] = mcb_ipmsm_pos_est_f28379d_B.Idq[0];
    mcb_ipmsm_pos_est_f28379d_B.CurrIn[1] = mcb_ipmsm_pos_est_f28379d_B.Idq[1];

    /* SignalConversion generated from: '<S26>/StatusIn' */
    mcb_ipmsm_pos_est_f28379d_B.StatusIn = mcb_ipmsm_pos_est_f28379d_B.Status_j;
  }

  /* End of Outputs for SubSystem: '<S6>/Hold' */

  /* SignalConversion generated from: '<S221>/Byte Pack' */
  mcb_ipmsm_pos_est_f28379d_B.TmpSignalConversionAtBytePackIn[0] =
    mcb_ipmsm_pos_est_f28379d_B.ThIn;
  mcb_ipmsm_pos_est_f28379d_B.TmpSignalConversionAtBytePackIn[1] =
    mcb_ipmsm_pos_est_f28379d_B.CurrIn[0];
  mcb_ipmsm_pos_est_f28379d_B.TmpSignalConversionAtBytePackIn[2] =
    mcb_ipmsm_pos_est_f28379d_B.CurrIn[1];
  mcb_ipmsm_pos_est_f28379d_B.TmpSignalConversionAtBytePackIn[3] =
    mcb_ipmsm_pos_est_f28379d_B.StatusIn;

  /* S-Function (any2byte_svd): '<S221>/Byte Pack' */

  /* Pack: <S221>/Byte Pack */
  {
    uint32_T MW_outputPortOffset = 0;
    uint32_T MW_inputPortWidth = 0;
    uint32_T MW_remainder1 = 0;

    /* Packed output data type - uint32_T */
    /* Packing the values of Input 1 */
    /* Input data type - real32_T, size - 4 */
    {
      MW_inputPortWidth = 4 * sizeof(real32_T);
      memcpy((uint16_T*)&mcb_ipmsm_pos_est_f28379d_B.BytePack[0] +
             MW_outputPortOffset, (uint16_T*)
             &mcb_ipmsm_pos_est_f28379d_B.TmpSignalConversionAtBytePackIn[0],
             MW_inputPortWidth);
    }
  }

  /* If: '<S219>/If' */
  if (mcb_ipmsm_pos_est_f28379d_B.Output == 0U) {
    /* Outputs for IfAction SubSystem: '<S219>/Start' incorporates:
     *  ActionPort: '<S225>/Action Port'
     */
    /* Merge: '<S219>/Merge' incorporates:
     *  Constant: '<S225>/Start'
     *  SignalConversion generated from: '<S225>/Data_out'
     */
    mcb_ipmsm_pos_est_f28379d_B.SCI_Tx_Data[0] = 1397969747UL;

    /* SignalConversion generated from: '<S225>/Data' */
    qY = mcb_ipmsm_pos_est_f28379d_B.BytePack[0];

    /* End of Outputs for SubSystem: '<S219>/Start' */
    mcb_ipmsm_pos_est_f28379d_B.Data_fw[0] = qY;

    /* Outputs for IfAction SubSystem: '<S219>/Start' incorporates:
     *  ActionPort: '<S225>/Action Port'
     */
    /* Merge: '<S219>/Merge' incorporates:
     *  SignalConversion generated from: '<S225>/Data_out'
     */
    mcb_ipmsm_pos_est_f28379d_B.SCI_Tx_Data[1] = qY;

    /* SignalConversion generated from: '<S225>/Data' */
    qY = mcb_ipmsm_pos_est_f28379d_B.BytePack[1];

    /* End of Outputs for SubSystem: '<S219>/Start' */
    mcb_ipmsm_pos_est_f28379d_B.Data_fw[1] = qY;

    /* Outputs for IfAction SubSystem: '<S219>/Start' incorporates:
     *  ActionPort: '<S225>/Action Port'
     */
    /* Merge: '<S219>/Merge' incorporates:
     *  SignalConversion generated from: '<S225>/Data_out'
     */
    mcb_ipmsm_pos_est_f28379d_B.SCI_Tx_Data[2] = qY;

    /* SignalConversion generated from: '<S225>/Data' */
    qY = mcb_ipmsm_pos_est_f28379d_B.BytePack[2];

    /* End of Outputs for SubSystem: '<S219>/Start' */
    mcb_ipmsm_pos_est_f28379d_B.Data_fw[2] = qY;

    /* Outputs for IfAction SubSystem: '<S219>/Start' incorporates:
     *  ActionPort: '<S225>/Action Port'
     */
    /* Merge: '<S219>/Merge' incorporates:
     *  SignalConversion generated from: '<S225>/Data_out'
     */
    mcb_ipmsm_pos_est_f28379d_B.SCI_Tx_Data[3] = qY;

    /* SignalConversion generated from: '<S225>/Data' */
    qY = mcb_ipmsm_pos_est_f28379d_B.BytePack[3];

    /* End of Outputs for SubSystem: '<S219>/Start' */
    mcb_ipmsm_pos_est_f28379d_B.Data_fw[3] = qY;

    /* Outputs for IfAction SubSystem: '<S219>/Start' incorporates:
     *  ActionPort: '<S225>/Action Port'
     */
    /* Merge: '<S219>/Merge' incorporates:
     *  SignalConversion generated from: '<S225>/Data_out'
     */
    mcb_ipmsm_pos_est_f28379d_B.SCI_Tx_Data[4] = qY;

    /* Merge: '<S219>/Merge1' incorporates:
     *  Bias: '<S225>/Bias'
     */
    mcb_ipmsm_pos_est_f28379d_B.SCI_Tx_Iteration =
      mcb_ipmsm_pos_est_f28379_ConstB.Width + 1UL;

    /* End of Outputs for SubSystem: '<S219>/Start' */
  } else if (mcb_ipmsm_pos_est_f28379d_B.Output == 599U) {
    /* Outputs for IfAction SubSystem: '<S219>/End' incorporates:
     *  ActionPort: '<S224>/Action Port'
     */
    /* SignalConversion generated from: '<S224>/Data' */
    qY = mcb_ipmsm_pos_est_f28379d_B.BytePack[0];

    /* End of Outputs for SubSystem: '<S219>/End' */
    mcb_ipmsm_pos_est_f28379d_B.Data_f[0] = qY;

    /* Outputs for IfAction SubSystem: '<S219>/End' incorporates:
     *  ActionPort: '<S224>/Action Port'
     */
    /* Merge: '<S219>/Merge' incorporates:
     *  SignalConversion generated from: '<S224>/Data_out'
     */
    mcb_ipmsm_pos_est_f28379d_B.SCI_Tx_Data[0] = qY;

    /* SignalConversion generated from: '<S224>/Data' */
    qY = mcb_ipmsm_pos_est_f28379d_B.BytePack[1];

    /* End of Outputs for SubSystem: '<S219>/End' */
    mcb_ipmsm_pos_est_f28379d_B.Data_f[1] = qY;

    /* Outputs for IfAction SubSystem: '<S219>/End' incorporates:
     *  ActionPort: '<S224>/Action Port'
     */
    /* Merge: '<S219>/Merge' incorporates:
     *  SignalConversion generated from: '<S224>/Data_out'
     */
    mcb_ipmsm_pos_est_f28379d_B.SCI_Tx_Data[1] = qY;

    /* SignalConversion generated from: '<S224>/Data' */
    qY = mcb_ipmsm_pos_est_f28379d_B.BytePack[2];

    /* End of Outputs for SubSystem: '<S219>/End' */
    mcb_ipmsm_pos_est_f28379d_B.Data_f[2] = qY;

    /* Outputs for IfAction SubSystem: '<S219>/End' incorporates:
     *  ActionPort: '<S224>/Action Port'
     */
    /* Merge: '<S219>/Merge' incorporates:
     *  SignalConversion generated from: '<S224>/Data_out'
     */
    mcb_ipmsm_pos_est_f28379d_B.SCI_Tx_Data[2] = qY;

    /* SignalConversion generated from: '<S224>/Data' */
    qY = mcb_ipmsm_pos_est_f28379d_B.BytePack[3];

    /* End of Outputs for SubSystem: '<S219>/End' */
    mcb_ipmsm_pos_est_f28379d_B.Data_f[3] = qY;

    /* Outputs for IfAction SubSystem: '<S219>/End' incorporates:
     *  ActionPort: '<S224>/Action Port'
     */
    /* Merge: '<S219>/Merge' incorporates:
     *  Constant: '<S224>/End'
     *  SignalConversion generated from: '<S224>/Data_out'
     */
    mcb_ipmsm_pos_est_f28379d_B.SCI_Tx_Data[3] = qY;
    mcb_ipmsm_pos_est_f28379d_B.SCI_Tx_Data[4] = 1162167621UL;

    /* Merge: '<S219>/Merge1' incorporates:
     *  Bias: '<S224>/Bias'
     */
    mcb_ipmsm_pos_est_f28379d_B.SCI_Tx_Iteration =
      mcb_ipmsm_pos_est_f28379_ConstB.Width + 1UL;

    /* End of Outputs for SubSystem: '<S219>/End' */
  } else {
    /* Outputs for IfAction SubSystem: '<S219>/Data' incorporates:
     *  ActionPort: '<S223>/Action Port'
     */
    /* SignalConversion generated from: '<S223>/Data' */
    qY = mcb_ipmsm_pos_est_f28379d_B.BytePack[0];

    /* End of Outputs for SubSystem: '<S219>/Data' */
    mcb_ipmsm_pos_est_f28379d_B.Data[0] = qY;

    /* Outputs for IfAction SubSystem: '<S219>/Data' incorporates:
     *  ActionPort: '<S223>/Action Port'
     */
    /* Merge: '<S219>/Merge' incorporates:
     *  SignalConversion generated from: '<S223>/Data_out'
     */
    mcb_ipmsm_pos_est_f28379d_B.SCI_Tx_Data[0] = qY;

    /* SignalConversion generated from: '<S223>/Data' */
    qY = mcb_ipmsm_pos_est_f28379d_B.BytePack[1];

    /* End of Outputs for SubSystem: '<S219>/Data' */
    mcb_ipmsm_pos_est_f28379d_B.Data[1] = qY;

    /* Outputs for IfAction SubSystem: '<S219>/Data' incorporates:
     *  ActionPort: '<S223>/Action Port'
     */
    /* Merge: '<S219>/Merge' incorporates:
     *  SignalConversion generated from: '<S223>/Data_out'
     */
    mcb_ipmsm_pos_est_f28379d_B.SCI_Tx_Data[1] = qY;

    /* SignalConversion generated from: '<S223>/Data' */
    qY = mcb_ipmsm_pos_est_f28379d_B.BytePack[2];

    /* End of Outputs for SubSystem: '<S219>/Data' */
    mcb_ipmsm_pos_est_f28379d_B.Data[2] = qY;

    /* Outputs for IfAction SubSystem: '<S219>/Data' incorporates:
     *  ActionPort: '<S223>/Action Port'
     */
    /* Merge: '<S219>/Merge' incorporates:
     *  SignalConversion generated from: '<S223>/Data_out'
     */
    mcb_ipmsm_pos_est_f28379d_B.SCI_Tx_Data[2] = qY;

    /* SignalConversion generated from: '<S223>/Data' */
    qY = mcb_ipmsm_pos_est_f28379d_B.BytePack[3];

    /* End of Outputs for SubSystem: '<S219>/Data' */
    mcb_ipmsm_pos_est_f28379d_B.Data[3] = qY;

    /* Outputs for IfAction SubSystem: '<S219>/Data' incorporates:
     *  ActionPort: '<S223>/Action Port'
     */
    /* Merge: '<S219>/Merge' incorporates:
     *  Constant: '<S223>/Dummy'
     *  SignalConversion generated from: '<S223>/Data_out'
     */
    mcb_ipmsm_pos_est_f28379d_B.SCI_Tx_Data[3] = qY;
    mcb_ipmsm_pos_est_f28379d_B.SCI_Tx_Data[4] = 0UL;

    /* Merge: '<S219>/Merge1' incorporates:
     *  SignalConversion generated from: '<S223>/Data_width'
     */
    mcb_ipmsm_pos_est_f28379d_B.SCI_Tx_Iteration =
      mcb_ipmsm_pos_est_f28379_ConstB.Width;

    /* End of Outputs for SubSystem: '<S219>/Data' */
  }

  /* End of If: '<S219>/If' */

  /* Outputs for Iterator SubSystem: '<S217>/While Iterator Subsystem' incorporates:
   *  WhileIterator: '<S220>/While Iterator'
   */
  i = 1;
  do {
    mcb_ipmsm_pos_est_f28379d_B.WhileIterator = i;
    mcb_ipmsm_pos_est_f28379d_B.IndexVector =
      mcb_ipmsm_pos_est_f28379d_B.SCI_Tx_Data[mcb_ipmsm_pos_est_f28379d_B.WhileIterator
      - 1];

    {
      if (checkSCITransmitInProgressA != 1U) {
        checkSCITransmitInProgressA = 1U;
        int16_T errFlgHeader = NOERROR;
        int16_T errFlgData = NOERROR;
        int16_T errFlgTail = NOERROR;
        errFlgData = scia_xmit((unsigned char*)
          &mcb_ipmsm_pos_est_f28379d_B.IndexVector, 4, 4);
        checkSCITransmitInProgressA = 0U;
      }
    }

    mcb_ipmsm_pos_est_f28379d_B.Add =
      mcb_ipmsm_pos_est_f28379d_B.SCI_Tx_Iteration - (uint32_T)
      mcb_ipmsm_pos_est_f28379d_B.WhileIterator;
    i++;
  } while (mcb_ipmsm_pos_est_f28379d_B.Add != 0UL);

  /* End of Outputs for SubSystem: '<S217>/While Iterator Subsystem' */

  /* Sum: '<S226>/FixPt Sum1' incorporates:
   *  Constant: '<S226>/FixPt Constant'
   */
  mcb_ipmsm_pos_est_f28379d_B.FixPtSum1 = mcb_ipmsm_pos_est_f28379d_B.Output +
    1U;

  /* Switch: '<S227>/FixPt Switch' */
  if (mcb_ipmsm_pos_est_f28379d_B.FixPtSum1 > 599U) {
    /* Switch: '<S227>/FixPt Switch' incorporates:
     *  Constant: '<S227>/Constant'
     */
    mcb_ipmsm_pos_est_f28379d_B.FixPtSwitch = 0U;
  } else {
    /* Switch: '<S227>/FixPt Switch' */
    mcb_ipmsm_pos_est_f28379d_B.FixPtSwitch =
      mcb_ipmsm_pos_est_f28379d_B.FixPtSum1;
  }

  /* End of Switch: '<S227>/FixPt Switch' */

  /* Product: '<S71>/Product' */
  mcb_ipmsm_pos_est_f28379d_B.Product_p = mcb_ipmsm_pos_est_f28379d_B.algDD_o2 *
    mcb_ipmsm_pos_est_f28379d_B.MatrixMultiply[1];

  /* Gain: '<S71>/Gain' */
  mcb_ipmsm_pos_est_f28379d_B.Gain = -mcb_ipmsm_pos_est_f28379d_B.Product_p;

  /* Product: '<S88>/Product' incorporates:
   *  Constant: '<S88>/Filter_Constant'
   */
  mcb_ipmsm_pos_est_f28379d_B.Product_j = mcb_ipmsm_pos_est_f28379d_B.Gain *
    0.0397899225F;

  /* UnitDelay: '<S88>/Unit Delay' */
  mcb_ipmsm_pos_est_f28379d_B.UnitDelay_o =
    mcb_ipmsm_pos_est_f28379d_DW.UnitDelay_DSTATE_m;

  /* Product: '<S88>/Product1' incorporates:
   *  Constant: '<S88>/One'
   */
  mcb_ipmsm_pos_est_f28379d_B.Product1_n = 0.960210085F *
    mcb_ipmsm_pos_est_f28379d_B.UnitDelay_o;

  /* Sum: '<S88>/Add1' */
  mcb_ipmsm_pos_est_f28379d_B.Add1 = mcb_ipmsm_pos_est_f28379d_B.Product_j +
    mcb_ipmsm_pos_est_f28379d_B.Product1_n;

  /* Logic: '<S69>/AND' */
  mcb_ipmsm_pos_est_f28379d_B.AND_c = (mcb_ipmsm_pos_est_f28379d_B.Switch_p ||
    mcb_ipmsm_pos_est_f28379d_B.AND_j);

  /* Logic: '<S69>/AND1' */
  mcb_ipmsm_pos_est_f28379d_B.AND1_f = (mcb_ipmsm_pos_est_f28379d_B.OR &&
    mcb_ipmsm_pos_est_f28379d_B.AND_c);

  /* RelationalOperator: '<S179>/Compare' incorporates:
   *  Constant: '<S179>/Constant'
   */
  mcb_ipmsm_pos_est_f28379d_B.Compare_gm = (mcb_ipmsm_pos_est_f28379d_B.Add2 >=
    124UL);

  /* Logic: '<S174>/AND' */
  mcb_ipmsm_pos_est_f28379d_B.AND_o = (mcb_ipmsm_pos_est_f28379d_B.Compare &&
    mcb_ipmsm_pos_est_f28379d_B.Compare_gm);

  /* Outputs for Enabled SubSystem: '<S69>/First Openloop' incorporates:
   *  EnablePort: '<S89>/Enable'
   */
  if (mcb_ipmsm_pos_est_f28379d_B.AND_o) {
    mcb_ipmsm_pos_est_f28379d_DW.FirstOpenloop_MODE = true;

    /* SignalConversion generated from: '<S89>/In' */
    mcb_ipmsm_pos_est_f28379d_B.In_l = mcb_ipmsm_pos_est_f28379d_B.algDD_o2;
  } else if (mcb_ipmsm_pos_est_f28379d_DW.FirstOpenloop_MODE) {
    /* Disable for SignalConversion generated from: '<S89>/In' incorporates:
     *  Outport: '<S89>/Out'
     */
    mcb_ipmsm_pos_est_f28379d_B.In_l = 0.0F;
    mcb_ipmsm_pos_est_f28379d_DW.FirstOpenloop_MODE = false;
  }

  /* End of Outputs for SubSystem: '<S69>/First Openloop' */

  /* Delay: '<S90>/Delay' */
  zcEvent = (((mcb_ipmsm_pos_est_f2837_PrevZCX.Delay_Reset_ZCE_a == POS_ZCSIG)
              != (int16_T)mcb_ipmsm_pos_est_f28379d_B.Compare_ew) &&
             (mcb_ipmsm_pos_est_f2837_PrevZCX.Delay_Reset_ZCE_a !=
              UNINITIALIZED_ZCSIG));
  if (zcEvent) {
    mcb_ipmsm_pos_est_f28379d_DW.Delay_DSTATE_j = 0.0F;
  }

  mcb_ipmsm_pos_est_f2837_PrevZCX.Delay_Reset_ZCE_a =
    mcb_ipmsm_pos_est_f28379d_B.Compare_ew;

  /* Delay: '<S90>/Delay' */
  mcb_ipmsm_pos_est_f28379d_B.Delay_n =
    mcb_ipmsm_pos_est_f28379d_DW.Delay_DSTATE_j;

  /* Sum: '<S90>/Subtract1' */
  mcb_ipmsm_pos_est_f28379d_B.Subtract1_b = mcb_ipmsm_pos_est_f28379d_B.In_l -
    mcb_ipmsm_pos_est_f28379d_B.Delay_n;

  /* RelationalOperator: '<S96>/Compare' incorporates:
   *  Constant: '<S96>/Constant'
   */
  mcb_ipmsm_pos_est_f28379d_B.Compare_gp =
    (mcb_ipmsm_pos_est_f28379d_B.Subtract1_b <= 0.0F);

  /* Delay: '<S90>/Delay1' */
  zcEvent = (((mcb_ipmsm_pos_est_f2837_PrevZCX.Delay1_Reset_ZCE_b == POS_ZCSIG)
              != (int16_T)mcb_ipmsm_pos_est_f28379d_B.Compare_ew) &&
             (mcb_ipmsm_pos_est_f2837_PrevZCX.Delay1_Reset_ZCE_b !=
              UNINITIALIZED_ZCSIG));
  if (zcEvent) {
    mcb_ipmsm_pos_est_f28379d_DW.Delay1_DSTATE = 0.0F;
  }

  mcb_ipmsm_pos_est_f2837_PrevZCX.Delay1_Reset_ZCE_b =
    mcb_ipmsm_pos_est_f28379d_B.Compare_ew;

  /* Delay: '<S90>/Delay1' */
  mcb_ipmsm_pos_est_f28379d_B.Delay1_kh =
    mcb_ipmsm_pos_est_f28379d_DW.Delay1_DSTATE;

  /* Sum: '<S90>/Subtract2' */
  mcb_ipmsm_pos_est_f28379d_B.Subtract2 = mcb_ipmsm_pos_est_f28379d_B.In_l -
    mcb_ipmsm_pos_est_f28379d_B.Delay1_kh;

  /* RelationalOperator: '<S97>/Compare' incorporates:
   *  Constant: '<S97>/Constant'
   */
  mcb_ipmsm_pos_est_f28379d_B.Compare_mg =
    (mcb_ipmsm_pos_est_f28379d_B.Subtract2 >= 0.0F);

  /* Switch: '<S90>/Switch3' */
  if (mcb_ipmsm_pos_est_f28379d_B.Compare_gp) {
    /* Switch: '<S90>/Switch3' */
    mcb_ipmsm_pos_est_f28379d_B.Switch3_o = mcb_ipmsm_pos_est_f28379d_B.Delay_n;
  } else {
    /* Switch: '<S90>/Switch3' */
    mcb_ipmsm_pos_est_f28379d_B.Switch3_o = mcb_ipmsm_pos_est_f28379d_B.In_l;
  }

  /* End of Switch: '<S90>/Switch3' */

  /* Switch: '<S90>/Switch1' */
  if (mcb_ipmsm_pos_est_f28379d_B.Compare_mg) {
    /* Switch: '<S90>/Switch1' */
    mcb_ipmsm_pos_est_f28379d_B.Switch1_o =
      mcb_ipmsm_pos_est_f28379d_B.Delay1_kh;
  } else {
    /* Switch: '<S90>/Switch1' */
    mcb_ipmsm_pos_est_f28379d_B.Switch1_o = mcb_ipmsm_pos_est_f28379d_B.In_l;
  }

  /* End of Switch: '<S90>/Switch1' */

  /* Sum: '<S90>/Subtract' */
  mcb_ipmsm_pos_est_f28379d_B.Subtract = mcb_ipmsm_pos_est_f28379d_B.Switch3_o -
    mcb_ipmsm_pos_est_f28379d_B.Switch1_o;

  /* UnitDelay: '<S91>/Unit Delay' */
  mcb_ipmsm_pos_est_f28379d_B.UnitDelay_k =
    mcb_ipmsm_pos_est_f28379d_DW.UnitDelay_DSTATE_o;

  /* RelationalOperator: '<S91>/Relational Operator' */
  mcb_ipmsm_pos_est_f28379d_B.RelationalOperator =
    (mcb_ipmsm_pos_est_f28379d_B.Subtract ==
     mcb_ipmsm_pos_est_f28379d_B.UnitDelay_k);

  /* Delay: '<S93>/Delay' */
  zcEvent = (((mcb_ipmsm_pos_est_f2837_PrevZCX.Delay_Reset_ZCE_a2 == POS_ZCSIG)
              != (int16_T)mcb_ipmsm_pos_est_f28379d_B.Compare_ew) &&
             (mcb_ipmsm_pos_est_f2837_PrevZCX.Delay_Reset_ZCE_a2 !=
              UNINITIALIZED_ZCSIG));
  if (zcEvent) {
    mcb_ipmsm_pos_est_f28379d_DW.Delay_DSTATE_f = 0.0F;
  }

  mcb_ipmsm_pos_est_f2837_PrevZCX.Delay_Reset_ZCE_a2 =
    mcb_ipmsm_pos_est_f28379d_B.Compare_ew;

  /* Delay: '<S93>/Delay' */
  mcb_ipmsm_pos_est_f28379d_B.Delay_c =
    mcb_ipmsm_pos_est_f28379d_DW.Delay_DSTATE_f;

  /* RelationalOperator: '<S181>/Compare' incorporates:
   *  Constant: '<S181>/Constant'
   */
  mcb_ipmsm_pos_est_f28379d_B.Compare_h = (mcb_ipmsm_pos_est_f28379d_B.Add2 >=
    392UL);

  /* Logic: '<S175>/AND' */
  mcb_ipmsm_pos_est_f28379d_B.AND_d = (mcb_ipmsm_pos_est_f28379d_B.Compare_l &&
    mcb_ipmsm_pos_est_f28379d_B.Compare_h);

  /* Outputs for Enabled SubSystem: '<S69>/Second Openloop' incorporates:
   *  EnablePort: '<S92>/Enable'
   */
  if (mcb_ipmsm_pos_est_f28379d_B.AND_d) {
    mcb_ipmsm_pos_est_f28379d_DW.SecondOpenloop_MODE = true;

    /* SignalConversion generated from: '<S92>/In' */
    mcb_ipmsm_pos_est_f28379d_B.In_j = mcb_ipmsm_pos_est_f28379d_B.algDD_o2;
  } else if (mcb_ipmsm_pos_est_f28379d_DW.SecondOpenloop_MODE) {
    /* Disable for SignalConversion generated from: '<S92>/In' incorporates:
     *  Outport: '<S92>/Out'
     */
    mcb_ipmsm_pos_est_f28379d_B.In_j = 0.0F;
    mcb_ipmsm_pos_est_f28379d_DW.SecondOpenloop_MODE = false;
  }

  /* End of Outputs for SubSystem: '<S69>/Second Openloop' */

  /* Sum: '<S93>/Subtract1' */
  mcb_ipmsm_pos_est_f28379d_B.Subtract1_i = mcb_ipmsm_pos_est_f28379d_B.In_j -
    mcb_ipmsm_pos_est_f28379d_B.Delay_c;

  /* RelationalOperator: '<S101>/Compare' incorporates:
   *  Constant: '<S101>/Constant'
   */
  mcb_ipmsm_pos_est_f28379d_B.Compare_jw =
    (mcb_ipmsm_pos_est_f28379d_B.Subtract1_i <= 0.0F);

  /* Switch: '<S93>/Switch3' */
  if (mcb_ipmsm_pos_est_f28379d_B.Compare_jw) {
    /* Switch: '<S93>/Switch3' */
    mcb_ipmsm_pos_est_f28379d_B.Switch3_h = mcb_ipmsm_pos_est_f28379d_B.Delay_c;
  } else {
    /* Switch: '<S93>/Switch3' */
    mcb_ipmsm_pos_est_f28379d_B.Switch3_h = mcb_ipmsm_pos_est_f28379d_B.In_j;
  }

  /* End of Switch: '<S93>/Switch3' */

  /* Delay: '<S93>/Delay1' */
  zcEvent = (((mcb_ipmsm_pos_est_f2837_PrevZCX.Delay1_Reset_ZCE_p == POS_ZCSIG)
              != (int16_T)mcb_ipmsm_pos_est_f28379d_B.Compare_ew) &&
             (mcb_ipmsm_pos_est_f2837_PrevZCX.Delay1_Reset_ZCE_p !=
              UNINITIALIZED_ZCSIG));
  if (zcEvent) {
    mcb_ipmsm_pos_est_f28379d_DW.Delay1_DSTATE_p = 0.0F;
  }

  mcb_ipmsm_pos_est_f2837_PrevZCX.Delay1_Reset_ZCE_p =
    mcb_ipmsm_pos_est_f28379d_B.Compare_ew;

  /* Delay: '<S93>/Delay1' */
  mcb_ipmsm_pos_est_f28379d_B.Delay1_f =
    mcb_ipmsm_pos_est_f28379d_DW.Delay1_DSTATE_p;

  /* Sum: '<S93>/Subtract2' */
  mcb_ipmsm_pos_est_f28379d_B.Subtract2_k = mcb_ipmsm_pos_est_f28379d_B.In_j -
    mcb_ipmsm_pos_est_f28379d_B.Delay1_f;

  /* RelationalOperator: '<S102>/Compare' incorporates:
   *  Constant: '<S102>/Constant'
   */
  mcb_ipmsm_pos_est_f28379d_B.Compare_li =
    (mcb_ipmsm_pos_est_f28379d_B.Subtract2_k >= 0.0F);

  /* Switch: '<S93>/Switch1' */
  if (mcb_ipmsm_pos_est_f28379d_B.Compare_li) {
    /* Switch: '<S93>/Switch1' */
    mcb_ipmsm_pos_est_f28379d_B.Switch1_f = mcb_ipmsm_pos_est_f28379d_B.Delay1_f;
  } else {
    /* Switch: '<S93>/Switch1' */
    mcb_ipmsm_pos_est_f28379d_B.Switch1_f = mcb_ipmsm_pos_est_f28379d_B.In_j;
  }

  /* End of Switch: '<S93>/Switch1' */

  /* Sum: '<S93>/Subtract' */
  mcb_ipmsm_pos_est_f28379d_B.Subtract_d = mcb_ipmsm_pos_est_f28379d_B.Switch3_h
    - mcb_ipmsm_pos_est_f28379d_B.Switch1_f;

  /* RelationalOperator: '<S91>/Relational Operator1' */
  mcb_ipmsm_pos_est_f28379d_B.RelationalOperator1 =
    (mcb_ipmsm_pos_est_f28379d_B.Subtract_d ==
     mcb_ipmsm_pos_est_f28379d_B.UnitDelay_k);

  /* Delay: '<S95>/Delay' */
  zcEvent = (((mcb_ipmsm_pos_est_f2837_PrevZCX.Delay_Reset_ZCE_m == POS_ZCSIG)
              != (int16_T)mcb_ipmsm_pos_est_f28379d_B.Compare_ew) &&
             (mcb_ipmsm_pos_est_f2837_PrevZCX.Delay_Reset_ZCE_m !=
              UNINITIALIZED_ZCSIG));
  if (zcEvent) {
    mcb_ipmsm_pos_est_f28379d_DW.Delay_DSTATE_d = 0.0F;
  }

  mcb_ipmsm_pos_est_f2837_PrevZCX.Delay_Reset_ZCE_m =
    mcb_ipmsm_pos_est_f28379d_B.Compare_ew;

  /* Delay: '<S95>/Delay' */
  mcb_ipmsm_pos_est_f28379d_B.Delay_p =
    mcb_ipmsm_pos_est_f28379d_DW.Delay_DSTATE_d;

  /* RelationalOperator: '<S184>/Compare' incorporates:
   *  Constant: '<S184>/Constant'
   */
  mcb_ipmsm_pos_est_f28379d_B.Compare_lx = (mcb_ipmsm_pos_est_f28379d_B.Add2 >=
    660UL);

  /* Logic: '<S176>/AND' */
  mcb_ipmsm_pos_est_f28379d_B.AND_k4 = (mcb_ipmsm_pos_est_f28379d_B.Compare_e &&
    mcb_ipmsm_pos_est_f28379d_B.Compare_lx);

  /* Outputs for Enabled SubSystem: '<S69>/Third Openloop' incorporates:
   *  EnablePort: '<S94>/Enable'
   */
  if (mcb_ipmsm_pos_est_f28379d_B.AND_k4) {
    mcb_ipmsm_pos_est_f28379d_DW.ThirdOpenloop_MODE = true;

    /* SignalConversion generated from: '<S94>/In' */
    mcb_ipmsm_pos_est_f28379d_B.In = mcb_ipmsm_pos_est_f28379d_B.algDD_o2;
  } else if (mcb_ipmsm_pos_est_f28379d_DW.ThirdOpenloop_MODE) {
    /* Disable for SignalConversion generated from: '<S94>/In' incorporates:
     *  Outport: '<S94>/Out'
     */
    mcb_ipmsm_pos_est_f28379d_B.In = 0.0F;
    mcb_ipmsm_pos_est_f28379d_DW.ThirdOpenloop_MODE = false;
  }

  /* End of Outputs for SubSystem: '<S69>/Third Openloop' */

  /* Sum: '<S95>/Subtract1' */
  mcb_ipmsm_pos_est_f28379d_B.Subtract1_l = mcb_ipmsm_pos_est_f28379d_B.In -
    mcb_ipmsm_pos_est_f28379d_B.Delay_p;

  /* RelationalOperator: '<S103>/Compare' incorporates:
   *  Constant: '<S103>/Constant'
   */
  mcb_ipmsm_pos_est_f28379d_B.Compare_lp =
    (mcb_ipmsm_pos_est_f28379d_B.Subtract1_l <= 0.0F);

  /* Switch: '<S95>/Switch3' */
  if (mcb_ipmsm_pos_est_f28379d_B.Compare_lp) {
    /* Switch: '<S95>/Switch3' */
    mcb_ipmsm_pos_est_f28379d_B.Switch3_e = mcb_ipmsm_pos_est_f28379d_B.Delay_p;
  } else {
    /* Switch: '<S95>/Switch3' */
    mcb_ipmsm_pos_est_f28379d_B.Switch3_e = mcb_ipmsm_pos_est_f28379d_B.In;
  }

  /* End of Switch: '<S95>/Switch3' */

  /* Delay: '<S95>/Delay1' */
  zcEvent = (((mcb_ipmsm_pos_est_f2837_PrevZCX.Delay1_Reset_ZCE_od == POS_ZCSIG)
              != (int16_T)mcb_ipmsm_pos_est_f28379d_B.Compare_ew) &&
             (mcb_ipmsm_pos_est_f2837_PrevZCX.Delay1_Reset_ZCE_od !=
              UNINITIALIZED_ZCSIG));
  if (zcEvent) {
    mcb_ipmsm_pos_est_f28379d_DW.Delay1_DSTATE_h = 0.0F;
  }

  mcb_ipmsm_pos_est_f2837_PrevZCX.Delay1_Reset_ZCE_od =
    mcb_ipmsm_pos_est_f28379d_B.Compare_ew;

  /* Delay: '<S95>/Delay1' */
  mcb_ipmsm_pos_est_f28379d_B.Delay1_d =
    mcb_ipmsm_pos_est_f28379d_DW.Delay1_DSTATE_h;

  /* Sum: '<S95>/Subtract2' */
  mcb_ipmsm_pos_est_f28379d_B.Subtract2_j = mcb_ipmsm_pos_est_f28379d_B.In -
    mcb_ipmsm_pos_est_f28379d_B.Delay1_d;

  /* RelationalOperator: '<S104>/Compare' incorporates:
   *  Constant: '<S104>/Constant'
   */
  mcb_ipmsm_pos_est_f28379d_B.Compare_k5 =
    (mcb_ipmsm_pos_est_f28379d_B.Subtract2_j >= 0.0F);

  /* Switch: '<S95>/Switch1' */
  if (mcb_ipmsm_pos_est_f28379d_B.Compare_k5) {
    /* Switch: '<S95>/Switch1' */
    mcb_ipmsm_pos_est_f28379d_B.Switch1_e = mcb_ipmsm_pos_est_f28379d_B.Delay1_d;
  } else {
    /* Switch: '<S95>/Switch1' */
    mcb_ipmsm_pos_est_f28379d_B.Switch1_e = mcb_ipmsm_pos_est_f28379d_B.In;
  }

  /* End of Switch: '<S95>/Switch1' */

  /* Sum: '<S95>/Subtract' */
  mcb_ipmsm_pos_est_f28379d_B.Subtract_i = mcb_ipmsm_pos_est_f28379d_B.Switch3_e
    - mcb_ipmsm_pos_est_f28379d_B.Switch1_e;

  /* RelationalOperator: '<S91>/Relational Operator2' */
  mcb_ipmsm_pos_est_f28379d_B.RelationalOperator2 =
    (mcb_ipmsm_pos_est_f28379d_B.UnitDelay_k ==
     mcb_ipmsm_pos_est_f28379d_B.Subtract_i);

  /* If: '<S91>/If' */
  if (mcb_ipmsm_pos_est_f28379d_B.RelationalOperator) {
    /* Outputs for IfAction SubSystem: '<S91>/First IC' incorporates:
     *  ActionPort: '<S98>/Action Port'
     */
    /* Merge: '<S91>/Merge' incorporates:
     *  Constant: '<S98>/Constant4'
     */
    mcb_ipmsm_pos_est_f28379d_B.Merge_kr = 0.0F;

    /* End of Outputs for SubSystem: '<S91>/First IC' */
  } else if (mcb_ipmsm_pos_est_f28379d_B.RelationalOperator1) {
    /* Outputs for IfAction SubSystem: '<S91>/Second IC' incorporates:
     *  ActionPort: '<S99>/Action Port'
     */
    /* Merge: '<S91>/Merge' incorporates:
     *  Constant: '<S99>/Constant4'
     */
    mcb_ipmsm_pos_est_f28379d_B.Merge_kr = 2.09439516F;

    /* End of Outputs for SubSystem: '<S91>/Second IC' */
  } else if (mcb_ipmsm_pos_est_f28379d_B.RelationalOperator2) {
    /* Outputs for IfAction SubSystem: '<S91>/Third IC' incorporates:
     *  ActionPort: '<S100>/Action Port'
     */
    /* Merge: '<S91>/Merge' incorporates:
     *  Constant: '<S100>/Constant4'
     */
    mcb_ipmsm_pos_est_f28379d_B.Merge_kr = -2.09439516F;

    /* End of Outputs for SubSystem: '<S91>/Third IC' */
  }

  /* End of If: '<S91>/If' */

  /* MinMax: '<S91>/Max' */
  tmp = mcb_ipmsm_pos_est_f28379d_B.Subtract;
  Bias = mcb_ipmsm_pos_est_f28379d_B.Subtract_d;
  if ((tmp >= Bias) || rtIsNaNF(Bias)) {
    Bias = tmp;
  }

  tmp = mcb_ipmsm_pos_est_f28379d_B.Subtract_i;
  if ((!(Bias >= tmp)) && (!rtIsNaNF(tmp))) {
    Bias = tmp;
  }

  /* MinMax: '<S91>/Max' */
  mcb_ipmsm_pos_est_f28379d_B.Max = Bias;

  /* Product: '<S134>/IProd Out' */
  mcb_ipmsm_pos_est_f28379d_B.IProdOut = mcb_ipmsm_pos_est_f28379d_B.Add1 * 0.0F;

  /* DiscreteIntegrator: '<S137>/Integrator' */
  if (mcb_ipmsm_pos_est_f28379d_B.Switch1_m &&
      (mcb_ipmsm_pos_est_f28379d_DW.Integrator_PrevResetState <= 0)) {
    mcb_ipmsm_pos_est_f28379d_DW.Integrator_DSTATE = 0.0F;
  }

  /* DiscreteIntegrator: '<S137>/Integrator' */
  mcb_ipmsm_pos_est_f28379d_B.Integrator =
    mcb_ipmsm_pos_est_f28379d_DW.Integrator_DSTATE;

  /* DiscreteIntegrator: '<S70>/Discrete-Time Integrator' */
  if (mcb_ipmsm_pos_est_f28379d_DW.DiscreteTimeIntegrator_IC_LOADI != 0U) {
    mcb_ipmsm_pos_est_f28379d_DW.DiscreteTimeIntegrator_DSTATE =
      mcb_ipmsm_pos_est_f28379d_B.Switch_n;
  }

  if (mcb_ipmsm_pos_est_f28379d_B.Switch1_m &&
      (mcb_ipmsm_pos_est_f28379d_DW.DiscreteTimeIntegrator_PrevRese <= 0)) {
    mcb_ipmsm_pos_est_f28379d_DW.DiscreteTimeIntegrator_DSTATE =
      mcb_ipmsm_pos_est_f28379d_B.Switch_n;
  }

  /* DiscreteIntegrator: '<S70>/Discrete-Time Integrator' */
  mcb_ipmsm_pos_est_f28379d_B.DiscreteTimeIntegrator =
    mcb_ipmsm_pos_est_f28379d_DW.DiscreteTimeIntegrator_DSTATE;

  /* Switch: '<S70>/Switch2' */
  if (mcb_ipmsm_pos_est_f28379d_B.AND1_f) {
    /* Product: '<S142>/PProd Out' incorporates:
     *  Constant: '<S70>/Constant2'
     */
    mcb_ipmsm_pos_est_f28379d_B.PProdOut = mcb_ipmsm_pos_est_f28379d_B.Add1 *
      1955.0F;

    /* Sum: '<S146>/Sum' */
    mcb_ipmsm_pos_est_f28379d_B.Sum_n = mcb_ipmsm_pos_est_f28379d_B.PProdOut +
      mcb_ipmsm_pos_est_f28379d_B.Integrator;

    /* Switch: '<S70>/Switch2' */
    mcb_ipmsm_pos_est_f28379d_B.Switch2_c = mcb_ipmsm_pos_est_f28379d_B.Sum_n;
  } else {
    /* Switch: '<S70>/Switch2' incorporates:
     *  Constant: '<S70>/Constant5'
     */
    mcb_ipmsm_pos_est_f28379d_B.Switch2_c = 0.0F;
  }

  /* End of Switch: '<S70>/Switch2' */

  /* Switch: '<S164>/Switch' */
  if (mcb_ipmsm_pos_est_f28379_ConstB.NOT) {
    /* RelationalOperator: '<S198>/Compare' incorporates:
     *  Constant: '<S198>/Constant'
     */
    mcb_ipmsm_pos_est_f28379d_B.Compare_o = (mcb_ipmsm_pos_est_f28379d_B.Add2 <=
      1UL);

    /* Switch: '<S164>/Switch' */
    mcb_ipmsm_pos_est_f28379d_B.Switch_ck =
      mcb_ipmsm_pos_est_f28379d_B.Compare_o;
  } else {
    /* RelationalOperator: '<S197>/Compare' incorporates:
     *  Constant: '<S197>/Constant'
     */
    mcb_ipmsm_pos_est_f28379d_B.Compare_kr = (mcb_ipmsm_pos_est_f28379d_B.Add2 <=
      17326UL);

    /* Switch: '<S164>/Switch' */
    mcb_ipmsm_pos_est_f28379d_B.Switch_ck =
      mcb_ipmsm_pos_est_f28379d_B.Compare_kr;
  }

  /* End of Switch: '<S164>/Switch' */

  /* Logic: '<S164>/AND' */
  mcb_ipmsm_pos_est_f28379d_B.AND_hb = (mcb_ipmsm_pos_est_f28379d_B.Switch_ck &&
    mcb_ipmsm_pos_est_f28379d_B.OR);

  /* Outputs for Enabled SubSystem: '<S164>/Count hold' incorporates:
   *  EnablePort: '<S196>/Enable'
   */
  if (mcb_ipmsm_pos_est_f28379d_B.AND_hb) {
    /* SignalConversion generated from: '<S196>/CounIn' */
    mcb_ipmsm_pos_est_f28379d_B.CounIn = mcb_ipmsm_pos_est_f28379d_B.Add2;
  }

  /* End of Outputs for SubSystem: '<S164>/Count hold' */

  /* Logic: '<S30>/NOT2' */
  mcb_ipmsm_pos_est_f28379d_B.NOT2 = !mcb_ipmsm_pos_est_f28379d_B.Switch_p;

  /* DataTypeConversion: '<S229>/Data Type Conversion' */
  mcb_ipmsm_pos_est_f28379d_B.DataTypeConversion_e =
    mcb_ipmsm_pos_est_f28379d_B.OR;

  /* Switch: '<S230>/Switch' */
  mcb_ipmsm_pos_est_f28379d_B.Switch_o =
    mcb_ipmsm_pos_est_f28379d_B.DataTypeConversion_e;

  /* S-Function (c280xgpio_do): '<S230>/DRV830x Enable' */
  {
    if (mcb_ipmsm_pos_est_f28379d_B.Switch_o) {
      GpioDataRegs.GPDSET.bit.GPIO124 = 1U;
    } else {
      GpioDataRegs.GPDCLEAR.bit.GPIO124 = 1U;
    }
  }

  /* Switch: '<S230>/Switch1' */
  if (mcb_ipmsm_pos_est_f28379d_B.DataTypeConversion_e >= 0.5F) {
    /* Gain: '<S39>/sqrt3_by_two' */
    mcb_ipmsm_pos_est_f28379d_B.sqrt3_by_two = 0.866025388F *
      mcb_ipmsm_pos_est_f28379d_B.V_In[1];

    /* Gain: '<S39>/one_by_two' */
    mcb_ipmsm_pos_est_f28379d_B.one_by_two = 0.5F *
      mcb_ipmsm_pos_est_f28379d_B.V_In[0];

    /* Sum: '<S39>/add_c' */
    mcb_ipmsm_pos_est_f28379d_B.add_c = (0.0F -
      mcb_ipmsm_pos_est_f28379d_B.one_by_two) -
      mcb_ipmsm_pos_est_f28379d_B.sqrt3_by_two;

    /* Sum: '<S39>/add_b' */
    mcb_ipmsm_pos_est_f28379d_B.add_b = mcb_ipmsm_pos_est_f28379d_B.sqrt3_by_two
      - mcb_ipmsm_pos_est_f28379d_B.one_by_two;

    /* Gain: '<S229>/One_by_Two' */
    mcb_ipmsm_pos_est_f28379d_B.One_by_Two[0] = 0.5F *
      mcb_ipmsm_pos_est_f28379d_B.V_In[0];
    mcb_ipmsm_pos_est_f28379d_B.One_by_Two[1] = 0.5F *
      mcb_ipmsm_pos_est_f28379d_B.add_b;
    mcb_ipmsm_pos_est_f28379d_B.One_by_Two[2] = 0.5F *
      mcb_ipmsm_pos_est_f28379d_B.add_c;

    /* Sum: '<S229>/Sum' incorporates:
     *  Constant: '<S229>/Constant'
     */
    Bias = mcb_ipmsm_pos_est_f28379d_B.One_by_Two[0] + 0.5F;
    mcb_ipmsm_pos_est_f28379d_B.PWM_Duty_Cycles[0] = Bias;

    /* Gain: '<S230>/Scale_to_PWM_Counter_PRD' */
    Scale_to_PWM_Counter_PRD = (uint16_T)(5000.0F * Bias);
    mcb_ipmsm_pos_est_f28379d_B.Scale_to_PWM_Counter_PRD[0] =
      Scale_to_PWM_Counter_PRD;

    /* Switch: '<S230>/Switch1' */
    mcb_ipmsm_pos_est_f28379d_B.Switch1_n[0] = Scale_to_PWM_Counter_PRD;

    /* Sum: '<S229>/Sum' incorporates:
     *  Constant: '<S229>/Constant'
     */
    Bias = mcb_ipmsm_pos_est_f28379d_B.One_by_Two[1] + 0.5F;
    mcb_ipmsm_pos_est_f28379d_B.PWM_Duty_Cycles[1] = Bias;

    /* Gain: '<S230>/Scale_to_PWM_Counter_PRD' */
    Scale_to_PWM_Counter_PRD = (uint16_T)(5000.0F * Bias);
    mcb_ipmsm_pos_est_f28379d_B.Scale_to_PWM_Counter_PRD[1] =
      Scale_to_PWM_Counter_PRD;

    /* Switch: '<S230>/Switch1' */
    mcb_ipmsm_pos_est_f28379d_B.Switch1_n[1] = Scale_to_PWM_Counter_PRD;

    /* Sum: '<S229>/Sum' incorporates:
     *  Constant: '<S229>/Constant'
     */
    Bias = mcb_ipmsm_pos_est_f28379d_B.One_by_Two[2] + 0.5F;
    mcb_ipmsm_pos_est_f28379d_B.PWM_Duty_Cycles[2] = Bias;

    /* Gain: '<S230>/Scale_to_PWM_Counter_PRD' */
    Scale_to_PWM_Counter_PRD = (uint16_T)(5000.0F * Bias);
    mcb_ipmsm_pos_est_f28379d_B.Scale_to_PWM_Counter_PRD[2] =
      Scale_to_PWM_Counter_PRD;

    /* Switch: '<S230>/Switch1' */
    mcb_ipmsm_pos_est_f28379d_B.Switch1_n[2] = Scale_to_PWM_Counter_PRD;
  } else {
    /* Switch: '<S230>/Switch1' incorporates:
     *  Constant: '<S230>/stop'
     */
    mcb_ipmsm_pos_est_f28379d_B.Switch1_n[0] = 0U;
    mcb_ipmsm_pos_est_f28379d_B.Switch1_n[1] = 0U;
    mcb_ipmsm_pos_est_f28379d_B.Switch1_n[2] = 0U;
  }

  /* End of Switch: '<S230>/Switch1' */

  /* S-Function (c2802xpwm): '<S230>/ePWM1' */

  /*-- Update CMPA value for ePWM1 --*/
  {
    EPwm1Regs.CMPA.bit.CMPA = (uint16_T)(mcb_ipmsm_pos_est_f28379d_B.Switch1_n[0]);
  }

  /* S-Function (c2802xpwm): '<S230>/ePWM2' */

  /*-- Update CMPA value for ePWM2 --*/
  {
    EPwm2Regs.CMPA.bit.CMPA = (uint16_T)(mcb_ipmsm_pos_est_f28379d_B.Switch1_n[1]);
  }

  /* S-Function (c2802xpwm): '<S230>/ePWM3' */

  /*-- Update CMPA value for ePWM3 --*/
  {
    EPwm3Regs.CMPA.bit.CMPA = (uint16_T)(mcb_ipmsm_pos_est_f28379d_B.Switch1_n[2]);
  }

  /* Update for UnitDelay: '<S222>/Output' */
  mcb_ipmsm_pos_est_f28379d_DW.Output_DSTATE =
    mcb_ipmsm_pos_est_f28379d_B.FixPtSwitch;

  /* Update for UnitDelay: '<S30>/Unit Delay1' */
  mcb_ipmsm_pos_est_f28379d_DW.UnitDelay1_DSTATE_p =
    mcb_ipmsm_pos_est_f28379d_B.RT1;

  /* Update for UnitDelay: '<S30>/Unit Delay2' */
  mcb_ipmsm_pos_est_f28379d_DW.UnitDelay2_DSTATE =
    mcb_ipmsm_pos_est_f28379d_B.NOT2;

  /* Update for Delay: '<S164>/Delay1' */
  mcb_ipmsm_pos_est_f28379d_DW.Delay1_DSTATE_e =
    mcb_ipmsm_pos_est_f28379d_B.CounIn;

  /* Update for UnitDelay: '<S67>/Unit Delay' incorporates:
   *  Product: '<S67>/Matrix Multiply'
   */
  mcb_ipmsm_pos_est_f28379d_DW.UnitDelay_DSTATE[0] =
    mcb_ipmsm_pos_est_f28379d_B.MatrixMultiply[0];
  mcb_ipmsm_pos_est_f28379d_DW.UnitDelay_DSTATE[1] =
    mcb_ipmsm_pos_est_f28379d_B.MatrixMultiply[1];

  /* Update for UnitDelay: '<S69>/Unit Delay1' */
  mcb_ipmsm_pos_est_f28379d_DW.UnitDelay1_DSTATE =
    mcb_ipmsm_pos_est_f28379d_B.Merge_kr;

  /* Update for Delay: '<S44>/Delay' */
  mcb_ipmsm_pos_est_f28379d_DW.icLoad = false;
  mcb_ipmsm_pos_est_f28379d_DW.Delay_DSTATE =
    mcb_ipmsm_pos_est_f28379d_B.DiscreteTimeIntegrator;

  /* Update for Delay: '<S56>/Delay' */
  mcb_ipmsm_pos_est_f28379d_DW.Delay_DSTATE_k =
    mcb_ipmsm_pos_est_f28379d_B.Switch3;

  /* Update for UnitDelay: '<S40>/Unit Delay' */
  mcb_ipmsm_pos_est_f28379d_DW.UnitDelay_DSTATE_n =
    mcb_ipmsm_pos_est_f28379d_B.Add2_l;

  /* Update for S-Function (sfix_udelay): '<S40>/Tapped Delay1' */
  for (i = 0; i < 49; i++) {
    mcb_ipmsm_pos_est_f28379d_DW.TappedDelay1_X[i] =
      mcb_ipmsm_pos_est_f28379d_DW.TappedDelay1_X[i + 1];
  }

  mcb_ipmsm_pos_est_f28379d_DW.TappedDelay1_X[49] =
    mcb_ipmsm_pos_est_f28379d_B.Add1;

  /* End of Update for S-Function (sfix_udelay): '<S40>/Tapped Delay1' */

  /* Update for UnitDelay: '<S40>/Unit Delay1' */
  mcb_ipmsm_pos_est_f28379d_DW.UnitDelay1_DSTATE_n =
    mcb_ipmsm_pos_est_f28379d_B.AND_k;

  /* Update for Delay: '<S40>/Delay1' */
  if (mcb_ipmsm_pos_est_f28379d_B.AND_k) {
    mcb_ipmsm_pos_est_f28379d_DW.Delay1_DSTATE_a =
      mcb_ipmsm_pos_est_f28379d_B.Add2_l;
  }

  /* End of Update for Delay: '<S40>/Delay1' */

  /* Update for UnitDelay: '<S6>/Unit Delay1' */
  mcb_ipmsm_pos_est_f28379d_DW.UnitDelay1_DSTATE_k =
    mcb_ipmsm_pos_est_f28379d_B.Switch_p;

  /* Update for UnitDelay: '<S88>/Unit Delay' */
  mcb_ipmsm_pos_est_f28379d_DW.UnitDelay_DSTATE_m =
    mcb_ipmsm_pos_est_f28379d_B.Add1;

  /* Update for Delay: '<S90>/Delay' */
  mcb_ipmsm_pos_est_f28379d_DW.Delay_DSTATE_j =
    mcb_ipmsm_pos_est_f28379d_B.Switch3_o;

  /* Update for Delay: '<S90>/Delay1' */
  mcb_ipmsm_pos_est_f28379d_DW.Delay1_DSTATE =
    mcb_ipmsm_pos_est_f28379d_B.Switch1_o;

  /* Update for UnitDelay: '<S91>/Unit Delay' */
  mcb_ipmsm_pos_est_f28379d_DW.UnitDelay_DSTATE_o =
    mcb_ipmsm_pos_est_f28379d_B.Max;

  /* Update for Delay: '<S93>/Delay' */
  mcb_ipmsm_pos_est_f28379d_DW.Delay_DSTATE_f =
    mcb_ipmsm_pos_est_f28379d_B.Switch3_h;

  /* Update for Delay: '<S93>/Delay1' */
  mcb_ipmsm_pos_est_f28379d_DW.Delay1_DSTATE_p =
    mcb_ipmsm_pos_est_f28379d_B.Switch1_f;

  /* Update for Delay: '<S95>/Delay' */
  mcb_ipmsm_pos_est_f28379d_DW.Delay_DSTATE_d =
    mcb_ipmsm_pos_est_f28379d_B.Switch3_e;

  /* Update for Delay: '<S95>/Delay1' */
  mcb_ipmsm_pos_est_f28379d_DW.Delay1_DSTATE_h =
    mcb_ipmsm_pos_est_f28379d_B.Switch1_e;

  /* Update for DiscreteIntegrator: '<S137>/Integrator' */
  mcb_ipmsm_pos_est_f28379d_DW.Integrator_DSTATE +=
    mcb_ipmsm_pos_est_f28379d_B.IProdOut;
  mcb_ipmsm_pos_est_f28379d_DW.Integrator_PrevResetState = (int16_T)
    mcb_ipmsm_pos_est_f28379d_B.Switch1_m;

  /* Update for DiscreteIntegrator: '<S70>/Discrete-Time Integrator' */
  mcb_ipmsm_pos_est_f28379d_DW.DiscreteTimeIntegrator_IC_LOADI = 0U;
  mcb_ipmsm_pos_est_f28379d_DW.DiscreteTimeIntegrator_DSTATE += 5.0E-5F *
    mcb_ipmsm_pos_est_f28379d_B.Switch2_c;
  mcb_ipmsm_pos_est_f28379d_DW.DiscreteTimeIntegrator_PrevRese = (int16_T)
    mcb_ipmsm_pos_est_f28379d_B.Switch1_m;
}

/* Model step function for TID1 */
void mcb_ipmsm_pos_est_f28379d_step1(void) /* Sample time: [0.5s, 0.0s] */
{
  /* Outputs for Atomic SubSystem: '<S1>/Heartbeat LED' */
  /* S-Function (c280xgpio_do): '<S25>/Digital Output' incorporates:
   *  Constant: '<S5>/RED_LED'
   */
  {
    GpioDataRegs.GPBTOGGLE.bit.GPIO34 = (uint16_T)((1U) != 0);
  }

  /* End of Outputs for SubSystem: '<S1>/Heartbeat LED' */
}

/* Model initialize function */
void mcb_ipmsm_pos_est_f28379d_initialize(void)
{
  /* Registration code */

  /* initialize non-finites */
  rt_InitInfAndNaN(sizeof(real_T));

  /* initialize real-time model */
  (void) memset((void *)mcb_ipmsm_pos_est_f28379d_M, 0,
                sizeof(RT_MODEL_mcb_ipmsm_pos_est_f2_T));

  /* block I/O */
  (void) memset(((void *) &mcb_ipmsm_pos_est_f28379d_B), 0,
                sizeof(B_mcb_ipmsm_pos_est_f28379d_T));

  {
    int16_T i;
    for (i = 0; i < 50; i++) {
      mcb_ipmsm_pos_est_f28379d_B.TappedDelay1[i] = 0.0F;
    }

    mcb_ipmsm_pos_est_f28379d_B.Switch = 0.0F;
    mcb_ipmsm_pos_est_f28379d_B.UnitDelay_j[0] = 0.0F;
    mcb_ipmsm_pos_est_f28379d_B.UnitDelay_j[1] = 0.0F;
    mcb_ipmsm_pos_est_f28379d_B.MatrixMultiply[0] = 0.0F;
    mcb_ipmsm_pos_est_f28379d_B.MatrixMultiply[1] = 0.0F;
    mcb_ipmsm_pos_est_f28379d_B.Product = 0.0F;
    mcb_ipmsm_pos_est_f28379d_B.Switch_a = 0.0F;
    mcb_ipmsm_pos_est_f28379d_B.Merge = 0.0F;
    mcb_ipmsm_pos_est_f28379d_B.UnitDelay1 = 0.0F;
    mcb_ipmsm_pos_est_f28379d_B.Switch_n = 0.0F;
    mcb_ipmsm_pos_est_f28379d_B.Delay = 0.0F;
    mcb_ipmsm_pos_est_f28379d_B.Switch1 = 0.0F;
    mcb_ipmsm_pos_est_f28379d_B.Merge_j = 0.0F;
    mcb_ipmsm_pos_est_f28379d_B.Switch2_k = 0.0F;
    mcb_ipmsm_pos_est_f28379d_B.convert_pu = 0.0F;
    mcb_ipmsm_pos_est_f28379d_B.Merge_k = 0.0F;
    mcb_ipmsm_pos_est_f28379d_B.indexing = 0.0F;
    mcb_ipmsm_pos_est_f28379d_B.Lookup[0] = 0.0F;
    mcb_ipmsm_pos_est_f28379d_B.Lookup[1] = 0.0F;
    mcb_ipmsm_pos_est_f28379d_B.Lookup[2] = 0.0F;
    mcb_ipmsm_pos_est_f28379d_B.Lookup[3] = 0.0F;
    mcb_ipmsm_pos_est_f28379d_B.Sum3 = 0.0F;
    mcb_ipmsm_pos_est_f28379d_B.DataTypeConversion1 = 0.0F;
    mcb_ipmsm_pos_est_f28379d_B.Sum2 = 0.0F;
    mcb_ipmsm_pos_est_f28379d_B.Product_b = 0.0F;
    mcb_ipmsm_pos_est_f28379d_B.Sum4 = 0.0F;
    mcb_ipmsm_pos_est_f28379d_B.Sum5 = 0.0F;
    mcb_ipmsm_pos_est_f28379d_B.Product1 = 0.0F;
    mcb_ipmsm_pos_est_f28379d_B.Sum6 = 0.0F;
    mcb_ipmsm_pos_est_f28379d_B.DataTypeConversion = 0.0F;
    mcb_ipmsm_pos_est_f28379d_B.Product_h = 0.0F;
    mcb_ipmsm_pos_est_f28379d_B.DataTypeConversion1_p = 0.0F;
    mcb_ipmsm_pos_est_f28379d_B.Product1_m = 0.0F;
    mcb_ipmsm_pos_est_f28379d_B.Add_e = 0.0F;
    mcb_ipmsm_pos_est_f28379d_B.Merge_d[0] = 0.0F;
    mcb_ipmsm_pos_est_f28379d_B.Merge_d[1] = 0.0F;
    mcb_ipmsm_pos_est_f28379d_B.Add_n[0] = 0.0F;
    mcb_ipmsm_pos_est_f28379d_B.Add_n[1] = 0.0F;
    mcb_ipmsm_pos_est_f28379d_B.Delay_j = 0.0F;
    mcb_ipmsm_pos_est_f28379d_B.GetADCVoltage[0] = 0.0F;
    mcb_ipmsm_pos_est_f28379d_B.GetADCVoltage[1] = 0.0F;
    mcb_ipmsm_pos_est_f28379d_B.GetCurrents[0] = 0.0F;
    mcb_ipmsm_pos_est_f28379d_B.GetCurrents[1] = 0.0F;
    mcb_ipmsm_pos_est_f28379d_B.PU_Conversion[0] = 0.0F;
    mcb_ipmsm_pos_est_f28379d_B.PU_Conversion[1] = 0.0F;
    mcb_ipmsm_pos_est_f28379d_B.Switch2_e = 0.0F;
    mcb_ipmsm_pos_est_f28379d_B.Abs = 0.0F;
    mcb_ipmsm_pos_est_f28379d_B.Subtract1 = 0.0F;
    mcb_ipmsm_pos_est_f28379d_B.Switch3 = 0.0F;
    mcb_ipmsm_pos_est_f28379d_B.Switch1_p = 0.0F;
    mcb_ipmsm_pos_est_f28379d_B.Merge_b = 0.0F;
    mcb_ipmsm_pos_est_f28379d_B.Switch_f = 0.0F;
    mcb_ipmsm_pos_est_f28379d_B.Merge_o = 0.0F;
    mcb_ipmsm_pos_est_f28379d_B.Multiply = 0.0F;
    mcb_ipmsm_pos_est_f28379d_B.Floor = 0.0F;
    mcb_ipmsm_pos_est_f28379d_B.Multiply1 = 0.0F;
    mcb_ipmsm_pos_est_f28379d_B.Add_k = 0.0F;
    mcb_ipmsm_pos_est_f28379d_B.PositionGainOut = 0.0F;
    mcb_ipmsm_pos_est_f28379d_B.SumofElements = 0.0F;
    mcb_ipmsm_pos_est_f28379d_B.Abs1 = 0.0F;
    mcb_ipmsm_pos_est_f28379d_B.Merge_l = 0.0F;
    mcb_ipmsm_pos_est_f28379d_B.Merge1 = 0.0F;
    mcb_ipmsm_pos_est_f28379d_B.Status = 0.0F;
    mcb_ipmsm_pos_est_f28379d_B.PUtoRad = 0.0F;
    mcb_ipmsm_pos_est_f28379d_B.TmpSignalConversionAtBytePackIn[0] = 0.0F;
    mcb_ipmsm_pos_est_f28379d_B.TmpSignalConversionAtBytePackIn[1] = 0.0F;
    mcb_ipmsm_pos_est_f28379d_B.TmpSignalConversionAtBytePackIn[2] = 0.0F;
    mcb_ipmsm_pos_est_f28379d_B.TmpSignalConversionAtBytePackIn[3] = 0.0F;
    mcb_ipmsm_pos_est_f28379d_B.Merge1_g[0] = 0.0F;
    mcb_ipmsm_pos_est_f28379d_B.Merge1_g[1] = 0.0F;
    mcb_ipmsm_pos_est_f28379d_B.Product_p = 0.0F;
    mcb_ipmsm_pos_est_f28379d_B.Gain = 0.0F;
    mcb_ipmsm_pos_est_f28379d_B.Product_j = 0.0F;
    mcb_ipmsm_pos_est_f28379d_B.UnitDelay_o = 0.0F;
    mcb_ipmsm_pos_est_f28379d_B.Product1_n = 0.0F;
    mcb_ipmsm_pos_est_f28379d_B.Add1 = 0.0F;
    mcb_ipmsm_pos_est_f28379d_B.Delay_n = 0.0F;
    mcb_ipmsm_pos_est_f28379d_B.Subtract1_b = 0.0F;
    mcb_ipmsm_pos_est_f28379d_B.Delay1_kh = 0.0F;
    mcb_ipmsm_pos_est_f28379d_B.Subtract2 = 0.0F;
    mcb_ipmsm_pos_est_f28379d_B.Switch3_o = 0.0F;
    mcb_ipmsm_pos_est_f28379d_B.Switch1_o = 0.0F;
    mcb_ipmsm_pos_est_f28379d_B.Subtract = 0.0F;
    mcb_ipmsm_pos_est_f28379d_B.UnitDelay_k = 0.0F;
    mcb_ipmsm_pos_est_f28379d_B.Delay_c = 0.0F;
    mcb_ipmsm_pos_est_f28379d_B.Subtract1_i = 0.0F;
    mcb_ipmsm_pos_est_f28379d_B.Switch3_h = 0.0F;
    mcb_ipmsm_pos_est_f28379d_B.Delay1_f = 0.0F;
    mcb_ipmsm_pos_est_f28379d_B.Subtract2_k = 0.0F;
    mcb_ipmsm_pos_est_f28379d_B.Switch1_f = 0.0F;
    mcb_ipmsm_pos_est_f28379d_B.Subtract_d = 0.0F;
    mcb_ipmsm_pos_est_f28379d_B.Delay_p = 0.0F;
    mcb_ipmsm_pos_est_f28379d_B.Subtract1_l = 0.0F;
    mcb_ipmsm_pos_est_f28379d_B.Switch3_e = 0.0F;
    mcb_ipmsm_pos_est_f28379d_B.Delay1_d = 0.0F;
    mcb_ipmsm_pos_est_f28379d_B.Subtract2_j = 0.0F;
    mcb_ipmsm_pos_est_f28379d_B.Switch1_e = 0.0F;
    mcb_ipmsm_pos_est_f28379d_B.Subtract_i = 0.0F;
    mcb_ipmsm_pos_est_f28379d_B.Max = 0.0F;
    mcb_ipmsm_pos_est_f28379d_B.Merge_kr = 0.0F;
    mcb_ipmsm_pos_est_f28379d_B.IProdOut = 0.0F;
    mcb_ipmsm_pos_est_f28379d_B.Integrator = 0.0F;
    mcb_ipmsm_pos_est_f28379d_B.DiscreteTimeIntegrator = 0.0F;
    mcb_ipmsm_pos_est_f28379d_B.Switch2_c = 0.0F;
    mcb_ipmsm_pos_est_f28379d_B.DataTypeConversion_e = 0.0F;
    mcb_ipmsm_pos_est_f28379d_B.Switch_o = 0.0F;
    mcb_ipmsm_pos_est_f28379d_B.sqrt3_by_two = 0.0F;
    mcb_ipmsm_pos_est_f28379d_B.one_by_two = 0.0F;
    mcb_ipmsm_pos_est_f28379d_B.add_c = 0.0F;
    mcb_ipmsm_pos_est_f28379d_B.add_b = 0.0F;
    mcb_ipmsm_pos_est_f28379d_B.One_by_Two[0] = 0.0F;
    mcb_ipmsm_pos_est_f28379d_B.One_by_Two[1] = 0.0F;
    mcb_ipmsm_pos_est_f28379d_B.One_by_Two[2] = 0.0F;
    mcb_ipmsm_pos_est_f28379d_B.PWM_Duty_Cycles[0] = 0.0F;
    mcb_ipmsm_pos_est_f28379d_B.PWM_Duty_Cycles[1] = 0.0F;
    mcb_ipmsm_pos_est_f28379d_B.PWM_Duty_Cycles[2] = 0.0F;
    mcb_ipmsm_pos_est_f28379d_B.Switch1_c = 0.0F;
    mcb_ipmsm_pos_est_f28379d_B.acos_c = 0.0F;
    mcb_ipmsm_pos_est_f28379d_B.bsin = 0.0F;
    mcb_ipmsm_pos_est_f28379d_B.sum_Ds = 0.0F;
    mcb_ipmsm_pos_est_f28379d_B.bcos = 0.0F;
    mcb_ipmsm_pos_est_f28379d_B.asin_m = 0.0F;
    mcb_ipmsm_pos_est_f28379d_B.sum_Qs = 0.0F;
    mcb_ipmsm_pos_est_f28379d_B.Switch_nu[0] = 0.0F;
    mcb_ipmsm_pos_est_f28379d_B.Switch_nu[1] = 0.0F;
    mcb_ipmsm_pos_est_f28379d_B.algDD_o1 = 0.0F;
    mcb_ipmsm_pos_est_f28379d_B.algDD_o2 = 0.0F;
    mcb_ipmsm_pos_est_f28379d_B.a_plus_2b = 0.0F;
    mcb_ipmsm_pos_est_f28379d_B.one_by_sqrt3 = 0.0F;
    mcb_ipmsm_pos_est_f28379d_B.algDD_o1_i = 0.0F;
    mcb_ipmsm_pos_est_f28379d_B.algDD_o2_n = 0.0F;
    mcb_ipmsm_pos_est_f28379d_B.PProdOut = 0.0F;
    mcb_ipmsm_pos_est_f28379d_B.Sum_n = 0.0F;
    mcb_ipmsm_pos_est_f28379d_B.Floor_i = 0.0F;
    mcb_ipmsm_pos_est_f28379d_B.Add_p = 0.0F;
    mcb_ipmsm_pos_est_f28379d_B.PositionGainIn = 0.0F;
    mcb_ipmsm_pos_est_f28379d_B.In = 0.0F;
    mcb_ipmsm_pos_est_f28379d_B.In_j = 0.0F;
    mcb_ipmsm_pos_est_f28379d_B.In_l = 0.0F;
    mcb_ipmsm_pos_est_f28379d_B.Convert_back = 0.0F;
    mcb_ipmsm_pos_est_f28379d_B.Convert_back_k = 0.0F;
    mcb_ipmsm_pos_est_f28379d_B.V_In[0] = 0.0F;
    mcb_ipmsm_pos_est_f28379d_B.V_In[1] = 0.0F;
    mcb_ipmsm_pos_est_f28379d_B.Th_In = 0.0F;
    mcb_ipmsm_pos_est_f28379d_B.Idq[0] = 0.0F;
    mcb_ipmsm_pos_est_f28379d_B.Idq[1] = 0.0F;
    mcb_ipmsm_pos_est_f28379d_B.Status_j = 0.0F;
    mcb_ipmsm_pos_est_f28379d_B.CurrentGainIn[0] = 0.0F;
    mcb_ipmsm_pos_est_f28379d_B.CurrentGainIn[1] = 0.0F;
    mcb_ipmsm_pos_est_f28379d_B.In_f[0] = 0.0F;
    mcb_ipmsm_pos_est_f28379d_B.In_f[1] = 0.0F;
    mcb_ipmsm_pos_est_f28379d_B.In_f[2] = 0.0F;
    mcb_ipmsm_pos_est_f28379d_B.Add4 = 0.0F;
    mcb_ipmsm_pos_est_f28379d_B.Switch_j = 0.0F;
    mcb_ipmsm_pos_est_f28379d_B.second = 0.0F;
    mcb_ipmsm_pos_est_f28379d_B.first = 0.0F;
    mcb_ipmsm_pos_est_f28379d_B.In_k = 0.0F;
    mcb_ipmsm_pos_est_f28379d_B.ThIn = 0.0F;
    mcb_ipmsm_pos_est_f28379d_B.CurrIn[0] = 0.0F;
    mcb_ipmsm_pos_est_f28379d_B.CurrIn[1] = 0.0F;
    mcb_ipmsm_pos_est_f28379d_B.StatusIn = 0.0F;
    mcb_ipmsm_pos_est_f28379d_B.SCIReceive = 0.0F;
    mcb_ipmsm_pos_est_f28379d_B.TwoinputsCRL_n.qcos = 0.0F;
    mcb_ipmsm_pos_est_f28379d_B.TwoinputsCRL_n.dsin = 0.0F;
    mcb_ipmsm_pos_est_f28379d_B.TwoinputsCRL_n.sum_beta = 0.0F;
    mcb_ipmsm_pos_est_f28379d_B.TwoinputsCRL_n.dcos = 0.0F;
    mcb_ipmsm_pos_est_f28379d_B.TwoinputsCRL_n.qsin = 0.0F;
    mcb_ipmsm_pos_est_f28379d_B.TwoinputsCRL_n.sum_alpha = 0.0F;
    mcb_ipmsm_pos_est_f28379d_B.TwoinputsCRL_n.Switch[0] = 0.0F;
    mcb_ipmsm_pos_est_f28379d_B.TwoinputsCRL_n.Switch[1] = 0.0F;
    mcb_ipmsm_pos_est_f28379d_B.TwoinputsCRL_n.algDD_o1 = 0.0F;
    mcb_ipmsm_pos_est_f28379d_B.TwoinputsCRL_n.algDD_o2 = 0.0F;
    mcb_ipmsm_pos_est_f28379d_B.TwoinputsCRL.qcos = 0.0F;
    mcb_ipmsm_pos_est_f28379d_B.TwoinputsCRL.dsin = 0.0F;
    mcb_ipmsm_pos_est_f28379d_B.TwoinputsCRL.sum_beta = 0.0F;
    mcb_ipmsm_pos_est_f28379d_B.TwoinputsCRL.dcos = 0.0F;
    mcb_ipmsm_pos_est_f28379d_B.TwoinputsCRL.qsin = 0.0F;
    mcb_ipmsm_pos_est_f28379d_B.TwoinputsCRL.sum_alpha = 0.0F;
    mcb_ipmsm_pos_est_f28379d_B.TwoinputsCRL.Switch[0] = 0.0F;
    mcb_ipmsm_pos_est_f28379d_B.TwoinputsCRL.Switch[1] = 0.0F;
    mcb_ipmsm_pos_est_f28379d_B.TwoinputsCRL.algDD_o1 = 0.0F;
    mcb_ipmsm_pos_est_f28379d_B.TwoinputsCRL.algDD_o2 = 0.0F;
  }

  /* states (dwork) */
  (void) memset((void *)&mcb_ipmsm_pos_est_f28379d_DW, 0,
                sizeof(DW_mcb_ipmsm_pos_est_f28379d_T));
  mcb_ipmsm_pos_est_f28379d_DW.UnitDelay_DSTATE[0] = 0.0F;
  mcb_ipmsm_pos_est_f28379d_DW.UnitDelay_DSTATE[1] = 0.0F;
  mcb_ipmsm_pos_est_f28379d_DW.UnitDelay1_DSTATE = 0.0F;
  mcb_ipmsm_pos_est_f28379d_DW.Delay_DSTATE = 0.0F;
  mcb_ipmsm_pos_est_f28379d_DW.Delay_DSTATE_k = 0.0F;

  {
    int16_T i;
    for (i = 0; i < 50; i++) {
      mcb_ipmsm_pos_est_f28379d_DW.TappedDelay1_X[i] = 0.0F;
    }
  }

  mcb_ipmsm_pos_est_f28379d_DW.UnitDelay_DSTATE_m = 0.0F;
  mcb_ipmsm_pos_est_f28379d_DW.Delay_DSTATE_j = 0.0F;
  mcb_ipmsm_pos_est_f28379d_DW.Delay1_DSTATE = 0.0F;
  mcb_ipmsm_pos_est_f28379d_DW.UnitDelay_DSTATE_o = 0.0F;
  mcb_ipmsm_pos_est_f28379d_DW.Delay_DSTATE_f = 0.0F;
  mcb_ipmsm_pos_est_f28379d_DW.Delay1_DSTATE_p = 0.0F;
  mcb_ipmsm_pos_est_f28379d_DW.Delay_DSTATE_d = 0.0F;
  mcb_ipmsm_pos_est_f28379d_DW.Delay1_DSTATE_h = 0.0F;
  mcb_ipmsm_pos_est_f28379d_DW.Integrator_DSTATE = 0.0F;
  mcb_ipmsm_pos_est_f28379d_DW.DiscreteTimeIntegrator_DSTATE = 0.0F;

  {
    int16_T i;
    uint16_T s17_iter;

    /* Start for S-Function (c2802xadc): '<S35>/ADC_C_IN2' */
    if (MW_adcCInitFlag == 0U) {
      InitAdcC();
      MW_adcCInitFlag = 1U;
    }

    config_ADCC_SOC0 ();

    /* Start for S-Function (c2802xadc): '<S35>/ADC_B_IN2' */
    if (MW_adcBInitFlag == 0U) {
      InitAdcB();
      MW_adcBInitFlag = 1U;
    }

    config_ADCB_SOC0 ();

    /* Start for Delay: '<S40>/Delay1' */
    mcb_ipmsm_pos_est_f28379d_B.Delay1_k = 0UL;

    /* Start for S-Function (c280xgpio_do): '<S230>/DRV830x Enable' */
    EALLOW;
    GpioCtrlRegs.GPDMUX2.all &= 0xFCFFFFFFU;
    GpioCtrlRegs.GPDDIR.all |= 0x10000000U;
    EDIS;

    /* Start for S-Function (c2802xpwm): '<S230>/ePWM1' */

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

    /* Start for S-Function (c2802xpwm): '<S230>/ePWM2' */

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

    /* Start for S-Function (c2802xpwm): '<S230>/ePWM3' */

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

    /* Start for DataStoreMemory: '<Root>/Data Store Memory1' */
    mcb_ipmsm_pos_est_f28379d_DW.IaOffset = 2295U;

    /* Start for DataStoreMemory: '<Root>/Data Store Memory2' */
    mcb_ipmsm_pos_est_f28379d_DW.IbOffset = 2286U;
    mcb_ipmsm_pos_est_f2837_PrevZCX.Delay1_Reset_ZCE = POS_ZCSIG;
    mcb_ipmsm_pos_est_f2837_PrevZCX.Delay_Reset_ZCE = POS_ZCSIG;
    mcb_ipmsm_pos_est_f2837_PrevZCX.Delay_Reset_ZCE_d = UNINITIALIZED_ZCSIG;
    mcb_ipmsm_pos_est_f2837_PrevZCX.Delay1_Reset_ZCE_o = POS_ZCSIG;
    mcb_ipmsm_pos_est_f2837_PrevZCX.Delay_Reset_ZCE_a = UNINITIALIZED_ZCSIG;
    mcb_ipmsm_pos_est_f2837_PrevZCX.Delay1_Reset_ZCE_b = UNINITIALIZED_ZCSIG;
    mcb_ipmsm_pos_est_f2837_PrevZCX.Delay_Reset_ZCE_a2 = UNINITIALIZED_ZCSIG;
    mcb_ipmsm_pos_est_f2837_PrevZCX.Delay1_Reset_ZCE_p = UNINITIALIZED_ZCSIG;
    mcb_ipmsm_pos_est_f2837_PrevZCX.Delay_Reset_ZCE_m = UNINITIALIZED_ZCSIG;
    mcb_ipmsm_pos_est_f2837_PrevZCX.Delay1_Reset_ZCE_od = UNINITIALIZED_ZCSIG;

    /* InitializeConditions for Delay: '<S164>/Delay1' */
    mcb_ipmsm_pos_est_f28379d_DW.Delay1_DSTATE_e = 0UL;

    /* InitializeConditions for UnitDelay: '<S67>/Unit Delay' */
    mcb_ipmsm_pos_est_f28379d_DW.UnitDelay_DSTATE[0] = 0.0F;
    mcb_ipmsm_pos_est_f28379d_DW.UnitDelay_DSTATE[1] = 1.0F;

    /* InitializeConditions for Delay: '<S44>/Delay' */
    mcb_ipmsm_pos_est_f28379d_DW.icLoad = true;

    /* InitializeConditions for Delay: '<S56>/Delay' */
    mcb_ipmsm_pos_est_f28379d_DW.Delay_DSTATE_k = 0.0F;

    /* InitializeConditions for S-Function (sfix_udelay): '<S40>/Tapped Delay1' */
    for (i = 0; i < 50; i++) {
      mcb_ipmsm_pos_est_f28379d_DW.TappedDelay1_X[i] = 0.0F;
    }

    /* End of InitializeConditions for S-Function (sfix_udelay): '<S40>/Tapped Delay1' */

    /* InitializeConditions for Delay: '<S40>/Delay1' */
    mcb_ipmsm_pos_est_f28379d_DW.Delay1_DSTATE_a = 0UL;

    /* InitializeConditions for Delay: '<S90>/Delay' */
    mcb_ipmsm_pos_est_f28379d_DW.Delay_DSTATE_j = 0.0F;

    /* InitializeConditions for Delay: '<S90>/Delay1' */
    mcb_ipmsm_pos_est_f28379d_DW.Delay1_DSTATE = 0.0F;

    /* InitializeConditions for Delay: '<S93>/Delay' */
    mcb_ipmsm_pos_est_f28379d_DW.Delay_DSTATE_f = 0.0F;

    /* InitializeConditions for Delay: '<S93>/Delay1' */
    mcb_ipmsm_pos_est_f28379d_DW.Delay1_DSTATE_p = 0.0F;

    /* InitializeConditions for Delay: '<S95>/Delay' */
    mcb_ipmsm_pos_est_f28379d_DW.Delay_DSTATE_d = 0.0F;

    /* InitializeConditions for Delay: '<S95>/Delay1' */
    mcb_ipmsm_pos_est_f28379d_DW.Delay1_DSTATE_h = 0.0F;

    /* InitializeConditions for DiscreteIntegrator: '<S137>/Integrator' */
    mcb_ipmsm_pos_est_f28379d_DW.Integrator_PrevResetState = 2;

    /* InitializeConditions for DiscreteIntegrator: '<S70>/Discrete-Time Integrator' */
    mcb_ipmsm_pos_est_f28379d_DW.DiscreteTimeIntegrator_PrevRese = 2;
    mcb_ipmsm_pos_est_f28379d_DW.DiscreteTimeIntegrator_IC_LOADI = 1U;

    /* SystemInitialize for S-Function (HardwareInterrupt_sfun): '<S11>/Hardware Interrupt' incorporates:
     *  SubSystem: '<S1>/Serial Receive'
     */
    /* System initialize for function-call system: '<S1>/Serial Receive' */

    /* Start for S-Function (c28xsci_rx): '<S235>/SCI Receive' */

    /* Initialize out port */
    {
      mcb_ipmsm_pos_est_f28379d_B.SCIReceive = (real32_T)0.0;
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

    /* SystemInitialize for Merge: '<S91>/Merge' */
    mcb_ipmsm_pos_est_f28379d_B.Merge_kr = 0.0F;

    /* SystemInitialize for Atomic SubSystem: '<S1>/Heartbeat LED' */
    /* Start for S-Function (c280xgpio_do): '<S25>/Digital Output' */
    EALLOW;
    GpioCtrlRegs.GPBMUX1.all &= 0xFFFFFFCFU;
    GpioCtrlRegs.GPBDIR.all |= 0x4U;
    EDIS;

    /* End of SystemInitialize for SubSystem: '<S1>/Heartbeat LED' */

    /* SystemInitialize for Atomic SubSystem: '<S1>/Hardware Init' */
    /* Start for S-Function (c280xgpio_do): '<S15>/Digital Output' */
    EALLOW;
    GpioCtrlRegs.GPDMUX2.all &= 0xFCFFFFFFU;
    GpioCtrlRegs.GPDDIR.all |= 0x10000000U;
    EDIS;

    /* Start for S-Function (c280xgpio_do): '<S15>/Digital Output1' */
    EALLOW;
    GpioCtrlRegs.GPAMUX2.all &= 0xFFFFCFFFU;
    GpioCtrlRegs.GPADIR.all |= 0x400000U;
    EDIS;

    /* SystemInitialize for Enabled SubSystem: '<S15>/ADC Gain setting' */
    mcb__SPIMasterTransfer_Init(&mcb_ipmsm_pos_est_f28379d_DW.SPIMasterTransfer);
    mcb__SPIMasterTransfer_Init(&mcb_ipmsm_pos_est_f28379d_DW.SPIMasterTransfer1);

    /* End of SystemInitialize for SubSystem: '<S15>/ADC Gain setting' */

    /* SystemInitialize for Enabled SubSystem: '<S13>/Calculate ADC Offset ' */
    /* SystemInitialize for Iterator SubSystem: '<S14>/For Iterator Subsystem' */
    /* Start for S-Function (c2802xadc): '<S17>/ADC_A_IN0' */
    if (MW_adcCInitFlag == 0U) {
      InitAdcC();
      MW_adcCInitFlag = 1U;
    }

    config_ADCC_SOC2 ();

    /* Start for S-Function (c2802xadc): '<S17>/ADC_B_IN0' */
    if (MW_adcBInitFlag == 0U) {
      InitAdcB();
      MW_adcBInitFlag = 1U;
    }

    config_ADCB_SOC2 ();

    /* End of SystemInitialize for SubSystem: '<S14>/For Iterator Subsystem' */
    /* End of SystemInitialize for SubSystem: '<S13>/Calculate ADC Offset ' */
    /* End of SystemInitialize for SubSystem: '<S1>/Hardware Init' */

    /* Outputs for Atomic SubSystem: '<S1>/Hardware Init' */
    /* Outputs for Enabled SubSystem: '<S15>/ADC Gain setting' incorporates:
     *  EnablePort: '<S23>/Enable'
     */
    /* Constant: '<S4>/6PWM_Mode' */
    mcb_ipmsm_SPIMasterTransfer(14870U,
      &mcb_ipmsm_pos_est_f28379d_B.SPIMasterTransfer,
      &mcb_ipmsm_pos_est_f28379d_DW.SPIMasterTransfer);

    /* Constant: '<S4>/ADC_Gain_Setting' */
    mcb_ipmsm_SPIMasterTransfer(20480U,
      &mcb_ipmsm_pos_est_f28379d_B.SPIMasterTransfer1,
      &mcb_ipmsm_pos_est_f28379d_DW.SPIMasterTransfer1);

    /* End of Outputs for SubSystem: '<S15>/ADC Gain setting' */

    /* Switch: '<S15>/Switch' incorporates:
     *  Constant: '<S15>/Inverter Enable'
     */
    mcb_ipmsm_pos_est_f28379d_B.Switch_c = 1U;

    /* S-Function (c280xgpio_do): '<S15>/Digital Output' */
    {
      if (mcb_ipmsm_pos_est_f28379d_B.Switch_c) {
        GpioDataRegs.GPDSET.bit.GPIO124 = 1U;
      } else {
        GpioDataRegs.GPDCLEAR.bit.GPIO124 = 1U;
      }
    }

    /* S-Function (c280xgpio_do): '<S15>/Digital Output1' incorporates:
     *  Constant: '<S15>/RunTimeMeasurement'
     */
    {
      if ((1U)) {
        GpioDataRegs.GPASET.bit.GPIO22 = 1U;
      } else {
        GpioDataRegs.GPACLEAR.bit.GPIO22 = 1U;
      }
    }

    /* Outputs for Enabled SubSystem: '<S13>/Calculate ADC Offset ' incorporates:
     *  EnablePort: '<S14>/Enable'
     */
    /* Outputs for Iterator SubSystem: '<S14>/For Iterator Subsystem' incorporates:
     *  ForIterator: '<S17>/For Iterator'
     */
    for (s17_iter = 1U; s17_iter < 17U; s17_iter++) {
      /* Outputs for Iterator SubSystem: '<S14>/For Iterator Subsystem' incorporates:
       *  ForIterator: '<S17>/For Iterator'
       */
      mcb_ipmsm_pos_est_f28379d_B.ForIterator = s17_iter;

      /* S-Function (c2802xadc): '<S17>/ADC_A_IN0' */
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

        mcb_ipmsm_pos_est_f28379d_B.ADC_A_IN0 = (AdccResultRegs.ADCRESULT2);
      }

      /* S-Function (c2802xadc): '<S17>/ADC_B_IN0' */
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

        mcb_ipmsm_pos_est_f28379d_B.ADC_B_IN0 = (AdcbResultRegs.ADCRESULT2);
      }

      /* If: '<S17>/If' */
      if (mcb_ipmsm_pos_est_f28379d_B.ForIterator > 8U) {
        /* Outputs for IfAction SubSystem: '<S17>/If Action Subsystem' incorporates:
         *  ActionPort: '<S22>/Action Port'
         */
        /* Memory: '<S22>/Memory' */
        mcb_ipmsm_pos_est_f28379d_B.Memory =
          mcb_ipmsm_pos_est_f28379d_DW.Memory_PreviousInput;

        /* Sum: '<S22>/Sum' */
        mcb_ipmsm_pos_est_f28379d_B.Sum_h =
          mcb_ipmsm_pos_est_f28379d_B.ADC_A_IN0 +
          mcb_ipmsm_pos_est_f28379d_B.Memory;

        /* Memory: '<S22>/Memory1' */
        mcb_ipmsm_pos_est_f28379d_B.Memory1 =
          mcb_ipmsm_pos_est_f28379d_DW.Memory1_PreviousInput;

        /* Sum: '<S22>/Sum1' */
        mcb_ipmsm_pos_est_f28379d_B.Sum1 = mcb_ipmsm_pos_est_f28379d_B.ADC_B_IN0
          + mcb_ipmsm_pos_est_f28379d_B.Memory1;

        /* Update for Memory: '<S22>/Memory' */
        mcb_ipmsm_pos_est_f28379d_DW.Memory_PreviousInput =
          mcb_ipmsm_pos_est_f28379d_B.Sum_h;

        /* Update for Memory: '<S22>/Memory1' */
        mcb_ipmsm_pos_est_f28379d_DW.Memory1_PreviousInput =
          mcb_ipmsm_pos_est_f28379d_B.Sum1;

        /* End of Outputs for SubSystem: '<S17>/If Action Subsystem' */
      }

      /* End of If: '<S17>/If' */
    }

    /* End of Outputs for SubSystem: '<S14>/For Iterator Subsystem' */

    /* Product: '<S14>/Divide' incorporates:
     *  Constant: '<S14>/Constant'
     */
    mcb_ipmsm_pos_est_f28379d_B.Divide = (uint16_T)((real_T)
      mcb_ipmsm_pos_est_f28379d_B.Sum_h / 8.0);

    /* If: '<S14>/If' */
    if ((mcb_ipmsm_pos_est_f28379d_B.Divide > 1500U) &&
        (mcb_ipmsm_pos_est_f28379d_B.Divide < 2500U)) {
      /* Outputs for IfAction SubSystem: '<S14>/If Action Subsystem' incorporates:
       *  ActionPort: '<S18>/Action Port'
       */
      /* DataStoreWrite: '<S18>/Data Store Write1' */
      mcb_ipmsm_pos_est_f28379d_DW.IaOffset = mcb_ipmsm_pos_est_f28379d_B.Divide;

      /* End of Outputs for SubSystem: '<S14>/If Action Subsystem' */
    } else {
      /* Outputs for IfAction SubSystem: '<S14>/If Action Subsystem1' incorporates:
       *  ActionPort: '<S19>/Action Port'
       */
      /* DataStoreWrite: '<S19>/Data Store Write1' incorporates:
       *  Constant: '<S19>/Constant'
       */
      mcb_ipmsm_pos_est_f28379d_DW.IaOffset = 2295U;

      /* End of Outputs for SubSystem: '<S14>/If Action Subsystem1' */
    }

    /* End of If: '<S14>/If' */

    /* Product: '<S14>/Divide1' incorporates:
     *  Constant: '<S14>/Constant'
     */
    mcb_ipmsm_pos_est_f28379d_B.Divide1 = (uint16_T)((real_T)
      mcb_ipmsm_pos_est_f28379d_B.Sum1 / 8.0);

    /* If: '<S14>/If1' */
    if ((mcb_ipmsm_pos_est_f28379d_B.Divide1 > 1500U) &&
        (mcb_ipmsm_pos_est_f28379d_B.Divide1 < 2500U)) {
      /* Outputs for IfAction SubSystem: '<S14>/If Action Subsystem2' incorporates:
       *  ActionPort: '<S20>/Action Port'
       */
      /* DataStoreWrite: '<S20>/Data Store Write2' */
      mcb_ipmsm_pos_est_f28379d_DW.IbOffset =
        mcb_ipmsm_pos_est_f28379d_B.Divide1;

      /* End of Outputs for SubSystem: '<S14>/If Action Subsystem2' */
    } else {
      /* Outputs for IfAction SubSystem: '<S14>/If Action Subsystem3' incorporates:
       *  ActionPort: '<S21>/Action Port'
       */
      /* DataStoreWrite: '<S21>/Data Store Write2' incorporates:
       *  Constant: '<S21>/Constant1'
       */
      mcb_ipmsm_pos_est_f28379d_DW.IbOffset = 2286U;

      /* End of Outputs for SubSystem: '<S14>/If Action Subsystem3' */
    }

    /* End of If: '<S14>/If1' */
    /* End of Outputs for SubSystem: '<S13>/Calculate ADC Offset ' */

    /* Logic: '<S13>/NOT' */
    mcb_ipmsm_pos_est_f28379d_B.NOT_i = false;

    /* Outputs for Enabled SubSystem: '<S13>/Default ADC Offset' incorporates:
     *  EnablePort: '<S16>/Enable'
     */
    if (mcb_ipmsm_pos_est_f28379d_B.NOT_i) {
      /* DataStoreWrite: '<S16>/Data Store Write1' incorporates:
       *  Constant: '<S16>/Constant'
       */
      mcb_ipmsm_pos_est_f28379d_DW.IaOffset = 2295U;

      /* DataStoreWrite: '<S16>/Data Store Write2' incorporates:
       *  Constant: '<S16>/Constant1'
       */
      mcb_ipmsm_pos_est_f28379d_DW.IbOffset = 2286U;
    }

    /* End of Outputs for SubSystem: '<S13>/Default ADC Offset' */
    /* End of Outputs for SubSystem: '<S1>/Hardware Init' */
  }
}

/* Model terminate function */
void mcb_ipmsm_pos_est_f28379d_terminate(void)
{
  /* Terminate for Atomic SubSystem: '<S1>/Hardware Init' */
  /* Terminate for Enabled SubSystem: '<S15>/ADC Gain setting' */
  mcb__SPIMasterTransfer_Term(&mcb_ipmsm_pos_est_f28379d_DW.SPIMasterTransfer);
  mcb__SPIMasterTransfer_Term(&mcb_ipmsm_pos_est_f28379d_DW.SPIMasterTransfer1);

  /* End of Terminate for SubSystem: '<S15>/ADC Gain setting' */
  /* End of Terminate for SubSystem: '<S1>/Hardware Init' */
}

void mcb_ipmsm_pos_est_f28379d_configure_interrupts(void)
{
  /* Register interrupt service routine */
  HWI_TIC28x_ConfigureIRQ(96,&SCIA_RX_INT,1);
  HWI_TIC28x_EnableIRQ(96);
}

/* Hardware Interrupt Block: '<S11>/Hardware Interrupt' */
interrupt void SCIA_RX_INT(void)
{
  /* Event: Rx FIFO complete */
  /* Check event Rx FIFO complete occurred */
  if (0 != (SciaRegs.SCIFFRX.bit.RXFFINT==1)) {
    if (1 == runModel) {
      {
        /* S-Function (HardwareInterrupt_sfun): '<S11>/Hardware Interrupt' */

        /* Output and update for function-call system: '<S1>/Serial Receive' */

        /* S-Function (c28xsci_rx): '<S235>/SCI Receive' */
        {
          int16_T i;
          int16_T errFlg = NOERROR;
          uint16_T isHeadReceived = 1U;

          //get data as uint16 in recBuff
          uint16_T recbuff[2];
          for (i = 0; i < 2; i++) {
            recbuff[i] = 0U;
          }

          errFlg = NOERROR;

          /* Receiving data: For uint32 and uint16, rcvBuff will contain uint16 data */
          if (isHeadReceived) {
            errFlg = scia_rcv(recbuff, 4, 4);
            asm(" NOP");
            if ((errFlg == NOERROR) || (errFlg == PARTIALDATA)) {
              memcpy( &mcb_ipmsm_pos_est_f28379d_B.SCIReceive, recbuff,2);
            }
          }
        }

        /* DataTypeConversion: '<S233>/Data Type Conversion3' */
        mcb_ipmsm_pos_est_f28379d_B.DataTypeConversion3 = (uint16_T)
          mcb_ipmsm_pos_est_f28379d_B.SCIReceive;

        /* DataTypeConversion: '<S7>/Data Type Conversion1' */
        mcb_ipmsm_pos_est_f28379d_B.DataTypeConversion1_o =
          (mcb_ipmsm_pos_est_f28379d_B.DataTypeConversion3 != 0U);

        /* End of Outputs for S-Function (HardwareInterrupt_sfun): '<S11>/Hardware Interrupt' */

        /* RateTransition: '<S1>/RT1' */
        mcb_ipmsm_pos_est_f28379d_DW.RT1_Buffer0 =
          mcb_ipmsm_pos_est_f28379d_B.DataTypeConversion1_o;
      }
    }

    /* Clear occurred Rx FIFO complete event */
    EALLOW;
    SciaRegs.SCIFFRX.bit.RXFFINTCLR= 1;
    EDIS;
  }

  HWI_TIC28x_AcknowledgeIrq(96);
}

void mcb_ipmsm_pos_est_f28379d_unconfigure_interrupts (void)
{
  HWI_TIC28x_DisableIRQ(96);
}

/*
 * File trailer for generated code.
 *
 * [EOF]
 */
