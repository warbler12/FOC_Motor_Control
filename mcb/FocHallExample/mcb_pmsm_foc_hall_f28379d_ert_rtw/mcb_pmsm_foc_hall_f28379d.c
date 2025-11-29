/*
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * File: mcb_pmsm_foc_hall_f28379d.c
 *
 * Code generated for Simulink model 'mcb_pmsm_foc_hall_f28379d'.
 *
 * Model version                  : 29
 * Simulink Coder version         : 23.2 (R2023b) 01-Aug-2023
 * C/C++ source code generated on : Thu Nov 20 17:46:49 2025
 *
 * Target selection: ert.tlc
 * Embedded hardware selection: Texas Instruments->C2000
 * Code generation objectives: Unspecified
 * Validation result: Not run
 */

#include "mcb_pmsm_foc_hall_f28379d.h"
#include "rtwtypes.h"
#include "mcb_pmsm_foc_hall_f28379d_private.h"
#include <math.h>
#include "rt_nonfinite.h"
#include <string.h>

/* Block signals (default storage) */
BlockIO_mcb_pmsm_foc_hall_f2837 mcb_pmsm_foc_hall_f28379d_B;

/* Block states (default storage) */
D_Work_mcb_pmsm_foc_hall_f28379 mcb_pmsm_foc_hall_f28379d_DWork;

/* Real-time model */
static RT_MODEL_mcb_pmsm_foc_hall_f283 mcb_pmsm_foc_hall_f28379d_M_;
RT_MODEL_mcb_pmsm_foc_hall_f283 *const mcb_pmsm_foc_hall_f28379d_M =
  &mcb_pmsm_foc_hall_f28379d_M_;
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
void mcb_pmsm_foc_hall_f28379d_SetEventsForThisBaseStep(boolean_T *eventFlags)
{
  /* Task runs when its counter is zero, computed via rtmStepTask macro */
  eventFlags[1] = ((boolean_T)rtmStepTask(mcb_pmsm_foc_hall_f28379d_M, 1));
  eventFlags[2] = ((boolean_T)rtmStepTask(mcb_pmsm_foc_hall_f28379d_M, 2));
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
  (mcb_pmsm_foc_hall_f28379d_M->Timing.TaskCounters.TID[1])++;
  if ((mcb_pmsm_foc_hall_f28379d_M->Timing.TaskCounters.TID[1]) > 9999) {/* Sample time: [0.5s, 0.0s] */
    mcb_pmsm_foc_hall_f28379d_M->Timing.TaskCounters.TID[1] = 0;
  }

  (mcb_pmsm_foc_hall_f28379d_M->Timing.TaskCounters.TID[2])++;
  if ((mcb_pmsm_foc_hall_f28379d_M->Timing.TaskCounters.TID[2]) > 19999) {/* Sample time: [1.0s, 0.0s] */
    mcb_pmsm_foc_hall_f28379d_M->Timing.TaskCounters.TID[2] = 0;
  }
}

/*
 * Output and update for action system:
 *    '<S146>/If Action Subsystem'
 *    '<S155>/If Action Subsystem'
 */
void mcb_pmsm__IfActionSubsystem(real32_T rtu_In1, real32_T *rty_Out1,
  rtB_IfActionSubsystem_mcb_pmsm_ *localB)
{
  /* DataTypeConversion: '<S148>/Convert_uint16' */
  localB->Convert_uint16 = (int16_T)(real32_T)floor(rtu_In1);

  /* DataTypeConversion: '<S148>/Convert_back' */
  localB->Convert_back = localB->Convert_uint16;

  /* Sum: '<S148>/Sum' */
  *rty_Out1 = rtu_In1 - localB->Convert_back;
}

/*
 * Output and update for action system:
 *    '<S146>/If Action Subsystem1'
 *    '<S155>/If Action Subsystem1'
 */
void mcb_pmsm_IfActionSubsystem1(real32_T rtu_In1, real32_T *rty_Out1,
  rtB_IfActionSubsystem1_mcb_pmsm *localB)
{
  /* DataTypeConversion: '<S149>/Convert_uint16' */
  localB->Convert_uint16 = (int16_T)rtu_In1;

  /* DataTypeConversion: '<S149>/Convert_back' */
  localB->Convert_back = localB->Convert_uint16;

  /* Sum: '<S149>/Sum' */
  *rty_Out1 = rtu_In1 - localB->Convert_back;
}

/* Output and update for atomic system: '<S168>/Atomic Hall Reading' */
void mcb_pmsm__AtomicHallReading(void)
{
  uint32_T u0;
  uint32_T u1;

  /* user code (Output function Body for TID3) */

  /* System '<S168>/Atomic Hall Reading' */
  DINT;

  /* DataStoreRead: '<S170>/Data Store Read5' */
  mcb_pmsm_foc_hall_f28379d_B.DataStoreRead5 =
    mcb_pmsm_foc_hall_f28379d_DWork.HallStateChangeFlag;

  /* S-Function (fcgen): '<S170>/Function-Call Generator' incorporates:
   *  SubSystem: '<S170>/Function-Call Subsystem'
   */
  /* S-Function (memorycopy): '<S178>/Read GPIO DAT register' */
  {
    uint32_T *memindsrc1 = (uint32_T *) (&GpioDataRegs.GPBDAT.all);
    uint32_T *meminddst1 = (uint32_T *)
      (&mcb_pmsm_foc_hall_f28379d_B.ReadGPIODATregister_nt);
    *(uint32_T *) (meminddst1) = *(uint32_T *) (memindsrc1);
  }

  /* S-Function (sfix_bitop): '<S178>/Hall_C' */
  mcb_pmsm_foc_hall_f28379d_B.Hall_C_fc =
    mcb_pmsm_foc_hall_f28379d_B.ReadGPIODATregister_nt & 33554432UL;

  /* ArithShift: '<S178>/Shift Arithmetic' incorporates:
   *  S-Function (sfix_bitop): '<S178>/Hall_C'
   */
  mcb_pmsm_foc_hall_f28379d_B.ShiftArithmetic_p =
    mcb_pmsm_foc_hall_f28379d_B.Hall_C_fc >> 23U;

  /* S-Function (sfix_bitop): '<S178>/Hall_B' */
  mcb_pmsm_foc_hall_f28379d_B.Hall_B_f =
    mcb_pmsm_foc_hall_f28379d_B.ReadGPIODATregister_nt & 8388608UL;

  /* ArithShift: '<S178>/Shift Arithmetic1' incorporates:
   *  S-Function (sfix_bitop): '<S178>/Hall_B'
   */
  mcb_pmsm_foc_hall_f28379d_B.ShiftArithmetic1_h =
    mcb_pmsm_foc_hall_f28379d_B.Hall_B_f >> 22U;

  /* S-Function (sfix_bitop): '<S178>/Hall_A' */
  mcb_pmsm_foc_hall_f28379d_B.Hall_A_c =
    mcb_pmsm_foc_hall_f28379d_B.ReadGPIODATregister_nt & 4194304UL;

  /* ArithShift: '<S178>/Shift Arithmetic2' incorporates:
   *  S-Function (sfix_bitop): '<S178>/Hall_A'
   */
  mcb_pmsm_foc_hall_f28379d_B.ShiftArithmetic2_e =
    mcb_pmsm_foc_hall_f28379d_B.Hall_A_c >> 22U;

  /* S-Function (sfix_bitop): '<S178>/Bitwise Operator2' */
  mcb_pmsm_foc_hall_f28379d_B.BitwiseOperator2_p = (uint32_T)((int16_T)
    mcb_pmsm_foc_hall_f28379d_B.ShiftArithmetic_p | (int16_T)
    mcb_pmsm_foc_hall_f28379d_B.ShiftArithmetic1_h | (int16_T)
    mcb_pmsm_foc_hall_f28379d_B.ShiftArithmetic2_e);

  /* S-Function (fcgen): '<S170>/Function-Call Generator' incorporates:
   *  SubSystem: '<S170>/Function-Call Subsystem1'
   */
  /* S-Function (memorycopy): '<S176>/Memory Copy' */
  {
    uint32_T *memindsrc2 = (uint32_T *) (&ECap1Regs.TSCTR);
    uint32_T *meminddst2 = (uint32_T *) (&mcb_pmsm_foc_hall_f28379d_B.MemoryCopy);
    *(uint32_T *) (meminddst2) = *(uint32_T *) (memindsrc2);
  }

  /* S-Function (memorycopy): '<S176>/Memory Copy1' */
  {
    uint32_T *memindsrc3 = (uint32_T *) (&ECap2Regs.TSCTR);
    uint32_T *meminddst3 = (uint32_T *)
      (&mcb_pmsm_foc_hall_f28379d_B.MemoryCopy1);
    *(uint32_T *) (meminddst3) = *(uint32_T *) (memindsrc3);
  }

  /* S-Function (memorycopy): '<S176>/Memory Copy2' */
  {
    uint32_T *memindsrc4 = (uint32_T *) (&ECap3Regs.TSCTR);
    uint32_T *meminddst4 = (uint32_T *)
      (&mcb_pmsm_foc_hall_f28379d_B.MemoryCopy2);
    *(uint32_T *) (meminddst4) = *(uint32_T *) (memindsrc4);
  }

  /* MinMax: '<S176>/Min' */
  u0 = mcb_pmsm_foc_hall_f28379d_B.MemoryCopy;
  u1 = mcb_pmsm_foc_hall_f28379d_B.MemoryCopy1;
  if (u0 <= u1) {
    u1 = u0;
  }

  u0 = mcb_pmsm_foc_hall_f28379d_B.MemoryCopy2;
  if (u1 > u0) {
    u1 = u0;
  }

  /* MinMax: '<S176>/Min' */
  mcb_pmsm_foc_hall_f28379d_B.Min = u1;

  /* End of Outputs for S-Function (fcgen): '<S170>/Function-Call Generator' */

  /* RelationalOperator: '<S179>/Compare' incorporates:
   *  Constant: '<S179>/Constant'
   */
  mcb_pmsm_foc_hall_f28379d_B.Compare = (uint16_T)
    (mcb_pmsm_foc_hall_f28379d_B.Min < 500UL);

  /* UnitDelay: '<S177>/Unit Delay' */
  mcb_pmsm_foc_hall_f28379d_B.UnitDelay =
    mcb_pmsm_foc_hall_f28379d_DWork.UnitDelay_DSTATE;

  /* RelationalOperator: '<S177>/Relational Operator' */
  mcb_pmsm_foc_hall_f28379d_B.RelationalOperator_k =
    (mcb_pmsm_foc_hall_f28379d_B.BitwiseOperator2_p ==
     mcb_pmsm_foc_hall_f28379d_B.UnitDelay);

  /* Logic: '<S177>/NOT' incorporates:
   *  RelationalOperator: '<S179>/Compare'
   */
  mcb_pmsm_foc_hall_f28379d_B.NOT_b =
    (mcb_pmsm_foc_hall_f28379d_B.RelationalOperator_k &&
     (mcb_pmsm_foc_hall_f28379d_B.Compare != 0U));

  /* If: '<S177>/If' */
  if (!mcb_pmsm_foc_hall_f28379d_B.NOT_b) {
    /* Outputs for IfAction SubSystem: '<S177>/No_Integrity_issue' incorporates:
     *  ActionPort: '<S180>/Action Port'
     */
    /* Merge: '<S177>/Merge' incorporates:
     *  SignalConversion generated from: '<S180>/Counter'
     */
    mcb_pmsm_foc_hall_f28379d_B.Merge =
      mcb_pmsm_foc_hall_f28379d_B.BitwiseOperator2_p;

    /* End of Outputs for SubSystem: '<S177>/No_Integrity_issue' */
  } else {
    /* Outputs for IfAction SubSystem: '<S177>/Refresh_Halls' incorporates:
     *  ActionPort: '<S181>/Action Port'
     */
    /* S-Function (memorycopy): '<S182>/Read GPIO DAT register' */
    {
      uint32_T *memindsrc5 = (uint32_T *) (&GpioDataRegs.GPBDAT.all);
      uint32_T *meminddst5 = (uint32_T *)
        (&mcb_pmsm_foc_hall_f28379d_B.ReadGPIODATregister_p);
      *(uint32_T *) (meminddst5) = *(uint32_T *) (memindsrc5);
    }

    /* S-Function (sfix_bitop): '<S182>/Hall_C' */
    mcb_pmsm_foc_hall_f28379d_B.Hall_C_e =
      mcb_pmsm_foc_hall_f28379d_B.ReadGPIODATregister_p & 33554432UL;

    /* ArithShift: '<S182>/Shift Arithmetic' incorporates:
     *  S-Function (sfix_bitop): '<S182>/Hall_C'
     */
    mcb_pmsm_foc_hall_f28379d_B.ShiftArithmetic_l =
      mcb_pmsm_foc_hall_f28379d_B.Hall_C_e >> 23U;

    /* S-Function (sfix_bitop): '<S182>/Hall_B' */
    mcb_pmsm_foc_hall_f28379d_B.Hall_B_e =
      mcb_pmsm_foc_hall_f28379d_B.ReadGPIODATregister_p & 8388608UL;

    /* ArithShift: '<S182>/Shift Arithmetic1' incorporates:
     *  S-Function (sfix_bitop): '<S182>/Hall_B'
     */
    mcb_pmsm_foc_hall_f28379d_B.ShiftArithmetic1_c =
      mcb_pmsm_foc_hall_f28379d_B.Hall_B_e >> 22U;

    /* S-Function (sfix_bitop): '<S182>/Hall_A' */
    mcb_pmsm_foc_hall_f28379d_B.Hall_A_d =
      mcb_pmsm_foc_hall_f28379d_B.ReadGPIODATregister_p & 4194304UL;

    /* ArithShift: '<S182>/Shift Arithmetic2' incorporates:
     *  S-Function (sfix_bitop): '<S182>/Hall_A'
     */
    mcb_pmsm_foc_hall_f28379d_B.ShiftArithmetic2_kn =
      mcb_pmsm_foc_hall_f28379d_B.Hall_A_d >> 22U;

    /* S-Function (sfix_bitop): '<S182>/Bitwise Operator2' */
    mcb_pmsm_foc_hall_f28379d_B.BitwiseOperator2_g = (uint32_T)((int16_T)
      mcb_pmsm_foc_hall_f28379d_B.ShiftArithmetic_l | (int16_T)
      mcb_pmsm_foc_hall_f28379d_B.ShiftArithmetic1_c | (int16_T)
      mcb_pmsm_foc_hall_f28379d_B.ShiftArithmetic2_kn);

    /* Merge: '<S177>/Merge' incorporates:
     *  SignalConversion generated from: '<S181>/Out1'
     */
    mcb_pmsm_foc_hall_f28379d_B.Merge =
      mcb_pmsm_foc_hall_f28379d_B.BitwiseOperator2_g;

    /* End of Outputs for SubSystem: '<S177>/Refresh_Halls' */
  }

  /* End of If: '<S177>/If' */

  /* DataStoreRead: '<S170>/Data Store Read2' */
  mcb_pmsm_foc_hall_f28379d_B.DataStoreRead2 =
    mcb_pmsm_foc_hall_f28379d_DWork.GlobalSpeedCount;

  /* DataStoreRead: '<S170>/Data Store Read3' */
  mcb_pmsm_foc_hall_f28379d_B.DataStoreRead3 =
    mcb_pmsm_foc_hall_f28379d_DWork.GlobalDirection;

  /* DataStoreRead: '<S170>/Data Store Read4' */
  mcb_pmsm_foc_hall_f28379d_B.DataStoreRead4 =
    mcb_pmsm_foc_hall_f28379d_DWork.GlobalSpeedValidity;

  /* user code (Output function Trailer for TID3) */

  /* System '<S168>/Atomic Hall Reading' */
  EINT;

  /* Update for UnitDelay: '<S177>/Unit Delay' */
  mcb_pmsm_foc_hall_f28379d_DWork.UnitDelay_DSTATE =
    mcb_pmsm_foc_hall_f28379d_B.BitwiseOperator2_p;
}

/*
 * Output and update for action system:
 *    '<S201>/Hall Value of 1'
 *    '<S200>/Hall Value of 2'
 */
void mcb_pmsm_foc_h_HallValueof1(real32_T *rty_position)
{
  /* SignalConversion generated from: '<S211>/position' incorporates:
   *  Constant: '<S211>/Constant'
   */
  *rty_position = 0.16667F;
}

/*
 * Output and update for action system:
 *    '<S201>/Hall Value of 2'
 *    '<S200>/Hall Value of 3'
 */
void mcb_pmsm_foc_h_HallValueof2(real32_T *rty_position)
{
  /* SignalConversion generated from: '<S212>/position' incorporates:
   *  Constant: '<S212>/Constant'
   */
  *rty_position = 0.33333F;
}

/*
 * Output and update for action system:
 *    '<S201>/Hall Value of 3'
 *    '<S200>/Hall Value of 4'
 */
void mcb_pmsm_foc_h_HallValueof3(real32_T *rty_position)
{
  /* SignalConversion generated from: '<S213>/position' incorporates:
   *  Constant: '<S213>/Constant'
   */
  *rty_position = 0.5F;
}

/*
 * Output and update for action system:
 *    '<S201>/Hall Value of 4'
 *    '<S200>/Hall Value of 5'
 */
void mcb_pmsm_foc_h_HallValueof4(real32_T *rty_position)
{
  /* SignalConversion generated from: '<S214>/position' incorporates:
   *  Constant: '<S214>/Constant'
   */
  *rty_position = 0.66667F;
}

/*
 * Output and update for action system:
 *    '<S201>/Hall Value of 5'
 *    '<S200>/Hall Value of 6'
 */
void mcb_pmsm_foc_h_HallValueof5(real32_T *rty_position)
{
  /* SignalConversion generated from: '<S215>/position' incorporates:
   *  Constant: '<S215>/Constant'
   */
  *rty_position = 0.83333F;
}

/*
 * Output and update for action system:
 *    '<S201>/Hall Value of 7'
 *    '<S200>/Hall Value of 1'
 *    '<S200>/Hall Value of 7'
 *    '<S189>/Hall Value of 7'
 */
void mcb_pmsm_foc_h_HallValueof7(real32_T *rty_position)
{
  /* SignalConversion generated from: '<S217>/position' incorporates:
   *  Constant: '<S217>/Constant'
   */
  *rty_position = 0.0F;
}

/* System initialize for function-call system: '<Root>/Current Control' */
void mcb_pms_CurrentControl_Init(void)
{
  /* Start for Delay: '<S183>/validityDelay' */
  mcb_pmsm_foc_hall_f28379d_B.validityDelay = false;

  /* Start for Delay: '<S183>/speedCountDelay' */
  mcb_pmsm_foc_hall_f28379d_B.speedCountDelay = 0UL;

  /* Start for Delay: '<S184>/Delay One Step' */
  mcb_pmsm_foc_hall_f28379d_B.DelayOneStep = 0U;

  /* Start for S-Function (c2802xadc): '<S229>/ADC_C_IN2' */
  if (MW_adcCInitFlag == 0U) {
    InitAdcC();
    MW_adcCInitFlag = 1U;
  }

  config_ADCC_SOC0 ();

  /* Start for S-Function (c2802xadc): '<S229>/ADC_B_IN2' */
  if (MW_adcBInitFlag == 0U) {
    InitAdcB();
    MW_adcBInitFlag = 1U;
  }

  config_ADCB_SOC0 ();

  /* Start for Constant: '<S26>/Kp1' */
  mcb_pmsm_foc_hall_f28379d_B.Kp1 = 0.0F;

  /* Start for Constant: '<S25>/Ki1' */
  mcb_pmsm_foc_hall_f28379d_B.Ki1 = 0.0F;

  /* Start for S-Function (c280xgpio_do): '<S228>/Inverter Enable' */
  EALLOW;
  GpioCtrlRegs.GPDMUX2.all &= 0xFCFFFFFFU;
  GpioCtrlRegs.GPDDIR.all |= 0x10000000U;
  EDIS;

  /* Start for S-Function (c2802xpwm): '<S228>/ePWM1' */

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
    EPwm1Regs.TBPRD = 500U;            // Time Base Period Register

    /* // Time-Base Phase Register
       EPwm1Regs.TBPHS.bit.TBPHS               = 0U;          // Phase offset register
     */
    EPwm1Regs.TBPHS.all = (EPwm1Regs.TBPHS.all & ~0xFFFF0000U) | 0x0U;

    // Time Base Counter Register
    EPwm1Regs.TBCTR = 0x0000U;         /* Clear counter*/

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
    EPwm1Regs.CMPA.bit.CMPA = 251U;    // Counter Compare A Register
    EPwm1Regs.CMPB.bit.CMPB = 251U;    // Counter Compare B Register
    EPwm1Regs.CMPC = 32000U;           // Counter Compare C Register
    EPwm1Regs.CMPD = 32000U;           // Counter Compare D Register

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
    EPwm1Regs.TZSEL.all = 0U;          // Trip Zone Select Register

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
    EPwm1Regs.DCFOFFSET = 0U;          // Digital Compare Filter Offset Register
    EPwm1Regs.DCFWINDOW = 0U;          // Digital Compare Filter Window Register

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

  /* Start for S-Function (c2802xpwm): '<S228>/ePWM2' */

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
    EPwm2Regs.TBPRD = 500U;            // Time Base Period Register

    /* // Time-Base Phase Register
       EPwm2Regs.TBPHS.bit.TBPHS               = 0U;          // Phase offset register
     */
    EPwm2Regs.TBPHS.all = (EPwm2Regs.TBPHS.all & ~0xFFFF0000U) | 0x0U;

    // Time Base Counter Register
    EPwm2Regs.TBCTR = 0x0000U;         /* Clear counter*/

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
    EPwm2Regs.CMPA.bit.CMPA = 251U;    // Counter Compare A Register
    EPwm2Regs.CMPB.bit.CMPB = 251U;    // Counter Compare B Register
    EPwm2Regs.CMPC = 32000U;           // Counter Compare C Register
    EPwm2Regs.CMPD = 32000U;           // Counter Compare D Register

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
    EPwm2Regs.TZSEL.all = 0U;          // Trip Zone Select Register

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
    EPwm2Regs.DCFOFFSET = 0U;          // Digital Compare Filter Offset Register
    EPwm2Regs.DCFWINDOW = 0U;          // Digital Compare Filter Window Register

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

  /* Start for S-Function (c2802xpwm): '<S228>/ePWM3' */

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
    EPwm3Regs.TBPRD = 500U;            // Time Base Period Register

    /* // Time-Base Phase Register
       EPwm3Regs.TBPHS.bit.TBPHS               = 0U;          // Phase offset register
     */
    EPwm3Regs.TBPHS.all = (EPwm3Regs.TBPHS.all & ~0xFFFF0000U) | 0x0U;

    // Time Base Counter Register
    EPwm3Regs.TBCTR = 0x0000U;         /* Clear counter*/

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
    EPwm3Regs.CMPA.bit.CMPA = 251U;    // Counter Compare A Register
    EPwm3Regs.CMPB.bit.CMPB = 251U;    // Counter Compare B Register
    EPwm3Regs.CMPC = 32000U;           // Counter Compare C Register
    EPwm3Regs.CMPD = 32000U;           // Counter Compare D Register

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
    EPwm3Regs.TZSEL.all = 0U;          // Trip Zone Select Register

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
    EPwm3Regs.DCFOFFSET = 0U;          // Digital Compare Filter Offset Register
    EPwm3Regs.DCFWINDOW = 0U;          // Digital Compare Filter Window Register

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

  /* InitializeConditions for Delay: '<S184>/Delay One Step1' */
  mcb_pmsm_foc_hall_f28379d_DWork.DelayOneStep1_DSTATE = true;

  /* InitializeConditions for Delay: '<S184>/Delay One Step' */
  mcb_pmsm_foc_hall_f28379d_DWork.DelayOneStep_DSTATE = 8333U;

  /* InitializeConditions for DiscreteIntegrator: '<S126>/Integrator' */
  mcb_pmsm_foc_hall_f28379d_DWork.Integrator_DSTATE = 0.0F;
  mcb_pmsm_foc_hall_f28379d_DWork.Integrator_PrevResetState = 0;

  /* InitializeConditions for DiscreteIntegrator: '<S75>/Integrator' */
  mcb_pmsm_foc_hall_f28379d_DWork.Integrator_DSTATE_j = 0.0F;
  mcb_pmsm_foc_hall_f28379d_DWork.Integrator_PrevResetState_m = 0;

  /* SystemInitialize for IfAction SubSystem: '<S172>/Speed and direction are valid Use speed to extrapolate position' */
  /* SystemInitialize for Enabled SubSystem: '<S186>/Subsystem1' */
  /* SystemInitialize for Merge: '<S199>/Merge' */
  mcb_pmsm_foc_hall_f28379d_B.Merge_c = 0.0F;

  /* End of SystemInitialize for SubSystem: '<S186>/Subsystem1' */
  /* End of SystemInitialize for SubSystem: '<S172>/Speed and direction are valid Use speed to extrapolate position' */
}

/* System reset for function-call system: '<Root>/Current Control' */
void mcb_pm_CurrentControl_Reset(void)
{
  /* InitializeConditions for Delay: '<S184>/Delay One Step1' */
  mcb_pmsm_foc_hall_f28379d_DWork.DelayOneStep1_DSTATE = true;

  /* InitializeConditions for Delay: '<S184>/Delay One Step' */
  mcb_pmsm_foc_hall_f28379d_DWork.DelayOneStep_DSTATE = 8333U;

  /* InitializeConditions for DiscreteIntegrator: '<S126>/Integrator' */
  mcb_pmsm_foc_hall_f28379d_DWork.Integrator_DSTATE =
    mcb_pmsm_foc_hall_f28379d_B.Kp1;
  mcb_pmsm_foc_hall_f28379d_DWork.Integrator_PrevResetState = 0;

  /* InitializeConditions for DiscreteIntegrator: '<S75>/Integrator' */
  mcb_pmsm_foc_hall_f28379d_DWork.Integrator_DSTATE_j =
    mcb_pmsm_foc_hall_f28379d_B.Ki1;
  mcb_pmsm_foc_hall_f28379d_DWork.Integrator_PrevResetState_m = 0;
}

/* Output and update for function-call system: '<Root>/Current Control' */
#pragma CODE_SECTION (mcb_pmsm_foc_CurrentControl, "ramfuncs")

void mcb_pmsm_foc_CurrentControl(void)
{
  real32_T Bias;
  real32_T u0_0;
  uint32_T u0;
  uint32_T u1;
  uint16_T Scale_to_PWM_Counter_PRD;
  boolean_T doReset;

  /* Outputs for Atomic SubSystem: '<S168>/Atomic Hall Reading' */
  mcb_pmsm__AtomicHallReading();

  /* End of Outputs for SubSystem: '<S168>/Atomic Hall Reading' */

  /* Switch: '<S172>/Switch' incorporates:
   *  Constant: '<S172>/WatchDog'
   */
  mcb_pmsm_foc_hall_f28379d_B.Switch_a = 0U;

  /* DataStoreWrite: '<S168>/Data Store Write2' */
  mcb_pmsm_foc_hall_f28379d_DWork.HallStateChangeFlag = 0U;

  /* RelationalOperator: '<S171>/Compare' incorporates:
   *  Constant: '<S171>/Constant'
   */
  mcb_pmsm_foc_hall_f28379d_B.Compare_e =
    (mcb_pmsm_foc_hall_f28379d_B.DataStoreRead2 >= 208333UL);

  /* DataTypeConversion: '<S172>/Data Type Conversion4' */
  mcb_pmsm_foc_hall_f28379d_B.DataTypeConversion4 =
    (mcb_pmsm_foc_hall_f28379d_B.DataStoreRead5 != 0U);

  /* DataTypeConversion: '<S183>/Data Type Conversion' */
  mcb_pmsm_foc_hall_f28379d_B.DataTypeConversion_nh =
    (mcb_pmsm_foc_hall_f28379d_B.DataStoreRead4 != 0U);

  /* Switch: '<S183>/Switch' incorporates:
   *  Constant: '<S183>/Order'
   */
  mcb_pmsm_foc_hall_f28379d_B.Switch_m = 0U;

  /* Outputs for Enabled SubSystem: '<S168>/Subsystem' incorporates:
   *  EnablePort: '<S174>/Enable'
   */
  if (mcb_pmsm_foc_hall_f28379d_B.Compare_e) {
    /* SignalConversion generated from: '<S174>/Input' */
    mcb_pmsm_foc_hall_f28379d_B.Input =
      mcb_pmsm_foc_hall_f28379d_B.DataStoreRead2;
  }

  /* End of Outputs for SubSystem: '<S168>/Subsystem' */

  /* Delay: '<S184>/Delay One Step1' */
  mcb_pmsm_foc_hall_f28379d_B.DelayOneStep1 =
    mcb_pmsm_foc_hall_f28379d_DWork.DelayOneStep1_DSTATE;

  /* Logic: '<S184>/OR' */
  mcb_pmsm_foc_hall_f28379d_B.OR = (mcb_pmsm_foc_hall_f28379d_B.DelayOneStep1 ||
    mcb_pmsm_foc_hall_f28379d_B.DataTypeConversion4);

  /* Delay: '<S184>/Delay One Step' */
  doReset = mcb_pmsm_foc_hall_f28379d_B.DataTypeConversion4;
  if (mcb_pmsm_foc_hall_f28379d_B.OR) {
    if (doReset) {
      mcb_pmsm_foc_hall_f28379d_DWork.DelayOneStep_DSTATE = 8333U;
    }

    /* Delay: '<S184>/Delay One Step' */
    mcb_pmsm_foc_hall_f28379d_B.DelayOneStep =
      mcb_pmsm_foc_hall_f28379d_DWork.DelayOneStep_DSTATE;
  }

  /* End of Delay: '<S184>/Delay One Step' */

  /* RelationalOperator: '<S188>/Compare' incorporates:
   *  Constant: '<S188>/Constant'
   */
  mcb_pmsm_foc_hall_f28379d_B.Compare_n =
    (mcb_pmsm_foc_hall_f28379d_B.DelayOneStep > 0U);

  /* Switch: '<S187>/watchdog check' */
  if (mcb_pmsm_foc_hall_f28379d_B.Compare_n) {
    /* MinMax: '<S187>/Max' */
    u0 = mcb_pmsm_foc_hall_f28379d_B.Input;
    u1 = mcb_pmsm_foc_hall_f28379d_B.Min;
    if (u0 >= u1) {
      u1 = u0;
    }

    /* MinMax: '<S187>/Max' */
    mcb_pmsm_foc_hall_f28379d_B.Max = u1;

    /* Switch: '<S187>/speed check' */
    if (mcb_pmsm_foc_hall_f28379d_B.Max >= 25000000UL) {
      /* Switch: '<S187>/speed check' incorporates:
       *  Constant: '<S187>/Constant'
       */
      mcb_pmsm_foc_hall_f28379d_B.speedcheck = 0U;
    } else {
      /* Logic: '<S183>/Logical Operator' */
      mcb_pmsm_foc_hall_f28379d_B.LogicalOperator_a =
        (mcb_pmsm_foc_hall_f28379d_B.DataTypeConversion_nh ||
         mcb_pmsm_foc_hall_f28379d_B.validityDelay);

      /* Switch: '<S187>/speed check' */
      mcb_pmsm_foc_hall_f28379d_B.speedcheck =
        mcb_pmsm_foc_hall_f28379d_B.LogicalOperator_a;
    }

    /* End of Switch: '<S187>/speed check' */

    /* Switch: '<S187>/watchdog check' */
    mcb_pmsm_foc_hall_f28379d_B.watchdogcheck =
      mcb_pmsm_foc_hall_f28379d_B.speedcheck;
  } else {
    /* Switch: '<S187>/watchdog check' incorporates:
     *  Constant: '<S187>/Constant'
     */
    mcb_pmsm_foc_hall_f28379d_B.watchdogcheck = 0U;
  }

  /* End of Switch: '<S187>/watchdog check' */

  /* If: '<S172>/If' */
  if (mcb_pmsm_foc_hall_f28379d_B.watchdogcheck != 0U) {
    /* Outputs for IfAction SubSystem: '<S172>/Speed and direction are valid Use speed to extrapolate position' incorporates:
     *  ActionPort: '<S186>/Action Port'
     */
    /* DataTypeConversion: '<S186>/currentSpeedData' */
    mcb_pmsm_foc_hall_f28379d_B.currentSpeedData = (real32_T)
      mcb_pmsm_foc_hall_f28379d_B.Input;

    /* Product: '<S186>/Divide' */
    mcb_pmsm_foc_hall_f28379d_B.Divide =
      mcb_pmsm_foc_hall_f28379_ConstB.SpeedConstData /
      mcb_pmsm_foc_hall_f28379d_B.currentSpeedData;

    /* Gain: '<S186>/SpeedGain' */
    mcb_pmsm_foc_hall_f28379d_B.SpeedGain = 0.0833333358F *
      mcb_pmsm_foc_hall_f28379d_B.Divide;

    /* If: '<S186>/If' */
    if (mcb_pmsm_foc_hall_f28379d_B.DataStoreRead3 > 0) {
      /* Outputs for IfAction SubSystem: '<S186>/If Action Subsystem' incorporates:
       *  ActionPort: '<S197>/Action Port'
       */
      /* Merge: '<S172>/Merge' incorporates:
       *  SignalConversion generated from: '<S197>/In1'
       */
      mcb_pmsm_foc_hall_f28379d_B.Merge_d =
        mcb_pmsm_foc_hall_f28379d_B.SpeedGain;

      /* End of Outputs for SubSystem: '<S186>/If Action Subsystem' */
    } else {
      /* Outputs for IfAction SubSystem: '<S186>/If Action Subsystem1' incorporates:
       *  ActionPort: '<S198>/Action Port'
       */
      /* Merge: '<S172>/Merge' incorporates:
       *  UnaryMinus: '<S198>/Unary Minus'
       */
      mcb_pmsm_foc_hall_f28379d_B.Merge_d =
        -mcb_pmsm_foc_hall_f28379d_B.SpeedGain;

      /* End of Outputs for SubSystem: '<S186>/If Action Subsystem1' */
    }

    /* End of If: '<S186>/If' */

    /* Outputs for Enabled SubSystem: '<S186>/Subsystem1' incorporates:
     *  EnablePort: '<S199>/Enable'
     */
    /* Outputs for IfAction SubSystem: '<S199>/first_order' incorporates:
     *  ActionPort: '<S202>/Action Port'
     */
    /* If: '<S199>/If1' incorporates:
     *  DataTypeConversion: '<S202>/countData'
     *  DataTypeConversion: '<S202>/currentSpeedData'
     *  Gain: '<S202>/Gain'
     *  Merge: '<S199>/Merge1'
     *  Product: '<S202>/Divide'
     */
    mcb_pmsm_foc_hall_f28379d_B.countData = (real32_T)
      mcb_pmsm_foc_hall_f28379d_B.Min;
    mcb_pmsm_foc_hall_f28379d_B.currentSpeedData_k = (real32_T)
      mcb_pmsm_foc_hall_f28379d_B.Input;
    mcb_pmsm_foc_hall_f28379d_B.Divide_f = mcb_pmsm_foc_hall_f28379d_B.countData
      / mcb_pmsm_foc_hall_f28379d_B.currentSpeedData_k;
    mcb_pmsm_foc_hall_f28379d_B.Merge1_l = 0.5F *
      mcb_pmsm_foc_hall_f28379d_B.Divide_f;

    /* End of Outputs for SubSystem: '<S199>/first_order' */

    /* Saturate: '<S199>/Saturation' */
    u0_0 = mcb_pmsm_foc_hall_f28379d_B.Merge1_l;
    if (u0_0 > 0.16667F) {
      /* Saturate: '<S199>/Saturation' */
      mcb_pmsm_foc_hall_f28379d_B.Saturation_k = 0.16667F;
    } else {
      /* Saturate: '<S199>/Saturation' */
      mcb_pmsm_foc_hall_f28379d_B.Saturation_k = u0_0;
    }

    /* End of Saturate: '<S199>/Saturation' */

    /* If: '<S199>/If' */
    if (mcb_pmsm_foc_hall_f28379d_B.DataStoreRead3 != 1) {
      /* Outputs for IfAction SubSystem: '<S199>/-ve Direction' incorporates:
       *  ActionPort: '<S201>/Action Port'
       */
      /* SwitchCase: '<S201>/Switch Case' */
      switch ((int32_T)mcb_pmsm_foc_hall_f28379d_B.Merge) {
       case 5L:
        /* Outputs for IfAction SubSystem: '<S201>/Hall Value of 1' incorporates:
         *  ActionPort: '<S211>/Action Port'
         */
        mcb_pmsm_foc_h_HallValueof1(&mcb_pmsm_foc_hall_f28379d_B.Merge1_d);

        /* End of Outputs for SubSystem: '<S201>/Hall Value of 1' */
        break;

       case 4L:
        /* Outputs for IfAction SubSystem: '<S201>/Hall Value of 2' incorporates:
         *  ActionPort: '<S212>/Action Port'
         */
        mcb_pmsm_foc_h_HallValueof2(&mcb_pmsm_foc_hall_f28379d_B.Merge1_d);

        /* End of Outputs for SubSystem: '<S201>/Hall Value of 2' */
        break;

       case 6L:
        /* Outputs for IfAction SubSystem: '<S201>/Hall Value of 3' incorporates:
         *  ActionPort: '<S213>/Action Port'
         */
        mcb_pmsm_foc_h_HallValueof3(&mcb_pmsm_foc_hall_f28379d_B.Merge1_d);

        /* End of Outputs for SubSystem: '<S201>/Hall Value of 3' */
        break;

       case 2L:
        /* Outputs for IfAction SubSystem: '<S201>/Hall Value of 4' incorporates:
         *  ActionPort: '<S214>/Action Port'
         */
        mcb_pmsm_foc_h_HallValueof4(&mcb_pmsm_foc_hall_f28379d_B.Merge1_d);

        /* End of Outputs for SubSystem: '<S201>/Hall Value of 4' */
        break;

       case 3L:
        /* Outputs for IfAction SubSystem: '<S201>/Hall Value of 5' incorporates:
         *  ActionPort: '<S215>/Action Port'
         */
        mcb_pmsm_foc_h_HallValueof5(&mcb_pmsm_foc_hall_f28379d_B.Merge1_d);

        /* End of Outputs for SubSystem: '<S201>/Hall Value of 5' */
        break;

       case 1L:
        /* Outputs for IfAction SubSystem: '<S201>/Hall Value of 6' incorporates:
         *  ActionPort: '<S216>/Action Port'
         */
        /* Merge: '<S201>/Merge1' incorporates:
         *  Constant: '<S216>/Constant'
         *  SignalConversion generated from: '<S216>/position'
         */
        mcb_pmsm_foc_hall_f28379d_B.Merge1_d = 1.0F;

        /* End of Outputs for SubSystem: '<S201>/Hall Value of 6' */
        break;

       default:
        /* Outputs for IfAction SubSystem: '<S201>/Hall Value of 7' incorporates:
         *  ActionPort: '<S217>/Action Port'
         */
        mcb_pmsm_foc_h_HallValueof7(&mcb_pmsm_foc_hall_f28379d_B.Merge1_d);

        /* End of Outputs for SubSystem: '<S201>/Hall Value of 7' */
        break;
      }

      /* End of SwitchCase: '<S201>/Switch Case' */

      /* Merge: '<S199>/Merge' incorporates:
       *  Sum: '<S201>/Sum'
       */
      mcb_pmsm_foc_hall_f28379d_B.Merge_c = mcb_pmsm_foc_hall_f28379d_B.Merge1_d
        - mcb_pmsm_foc_hall_f28379d_B.Saturation_k;

      /* End of Outputs for SubSystem: '<S199>/-ve Direction' */
    } else {
      /* Outputs for IfAction SubSystem: '<S199>/+ve Direction' incorporates:
       *  ActionPort: '<S200>/Action Port'
       */
      /* SwitchCase: '<S200>/Switch Case' */
      switch ((int32_T)mcb_pmsm_foc_hall_f28379d_B.Merge) {
       case 5L:
        /* Outputs for IfAction SubSystem: '<S200>/Hall Value of 1' incorporates:
         *  ActionPort: '<S204>/Action Port'
         */
        mcb_pmsm_foc_h_HallValueof7(&mcb_pmsm_foc_hall_f28379d_B.Merge1_la);

        /* End of Outputs for SubSystem: '<S200>/Hall Value of 1' */
        break;

       case 4L:
        /* Outputs for IfAction SubSystem: '<S200>/Hall Value of 2' incorporates:
         *  ActionPort: '<S205>/Action Port'
         */
        mcb_pmsm_foc_h_HallValueof1(&mcb_pmsm_foc_hall_f28379d_B.Merge1_la);

        /* End of Outputs for SubSystem: '<S200>/Hall Value of 2' */
        break;

       case 6L:
        /* Outputs for IfAction SubSystem: '<S200>/Hall Value of 3' incorporates:
         *  ActionPort: '<S206>/Action Port'
         */
        mcb_pmsm_foc_h_HallValueof2(&mcb_pmsm_foc_hall_f28379d_B.Merge1_la);

        /* End of Outputs for SubSystem: '<S200>/Hall Value of 3' */
        break;

       case 2L:
        /* Outputs for IfAction SubSystem: '<S200>/Hall Value of 4' incorporates:
         *  ActionPort: '<S207>/Action Port'
         */
        mcb_pmsm_foc_h_HallValueof3(&mcb_pmsm_foc_hall_f28379d_B.Merge1_la);

        /* End of Outputs for SubSystem: '<S200>/Hall Value of 4' */
        break;

       case 3L:
        /* Outputs for IfAction SubSystem: '<S200>/Hall Value of 5' incorporates:
         *  ActionPort: '<S208>/Action Port'
         */
        mcb_pmsm_foc_h_HallValueof4(&mcb_pmsm_foc_hall_f28379d_B.Merge1_la);

        /* End of Outputs for SubSystem: '<S200>/Hall Value of 5' */
        break;

       case 1L:
        /* Outputs for IfAction SubSystem: '<S200>/Hall Value of 6' incorporates:
         *  ActionPort: '<S209>/Action Port'
         */
        mcb_pmsm_foc_h_HallValueof5(&mcb_pmsm_foc_hall_f28379d_B.Merge1_la);

        /* End of Outputs for SubSystem: '<S200>/Hall Value of 6' */
        break;

       default:
        /* Outputs for IfAction SubSystem: '<S200>/Hall Value of 7' incorporates:
         *  ActionPort: '<S210>/Action Port'
         */
        mcb_pmsm_foc_h_HallValueof7(&mcb_pmsm_foc_hall_f28379d_B.Merge1_la);

        /* End of Outputs for SubSystem: '<S200>/Hall Value of 7' */
        break;
      }

      /* End of SwitchCase: '<S200>/Switch Case' */

      /* Merge: '<S199>/Merge' incorporates:
       *  Sum: '<S200>/Sum'
       */
      mcb_pmsm_foc_hall_f28379d_B.Merge_c =
        mcb_pmsm_foc_hall_f28379d_B.Merge1_la +
        mcb_pmsm_foc_hall_f28379d_B.Saturation_k;

      /* End of Outputs for SubSystem: '<S199>/+ve Direction' */
    }

    /* End of If: '<S199>/If' */
    /* End of Outputs for SubSystem: '<S186>/Subsystem1' */

    /* Merge: '<S172>/Merge1' incorporates:
     *  SignalConversion generated from: '<S186>/rawPosition'
     */
    mcb_pmsm_foc_hall_f28379d_B.Merge1 = mcb_pmsm_foc_hall_f28379d_B.Merge_c;

    /* End of Outputs for SubSystem: '<S172>/Speed and direction are valid Use speed to extrapolate position' */
  } else {
    /* Outputs for IfAction SubSystem: '<S172>/Speed and direction are not valid Position will be set to the middle of the Hall quadrant' incorporates:
     *  ActionPort: '<S185>/Action Port'
     */
    /* SwitchCase: '<S189>/Switch Case' */
    switch ((int32_T)mcb_pmsm_foc_hall_f28379d_B.Merge) {
     case 5L:
      /* Outputs for IfAction SubSystem: '<S189>/Hall Value of 1' incorporates:
       *  ActionPort: '<S190>/Action Port'
       */
      /* Merge: '<S172>/Merge1' incorporates:
       *  Constant: '<S190>/Constant'
       *  SignalConversion generated from: '<S190>/position'
       */
      mcb_pmsm_foc_hall_f28379d_B.Merge1 = 0.083333F;

      /* End of Outputs for SubSystem: '<S189>/Hall Value of 1' */
      break;

     case 4L:
      /* Outputs for IfAction SubSystem: '<S189>/Hall Value of 2' incorporates:
       *  ActionPort: '<S191>/Action Port'
       */
      /* Merge: '<S172>/Merge1' incorporates:
       *  Constant: '<S191>/Constant'
       *  SignalConversion generated from: '<S191>/position'
       */
      mcb_pmsm_foc_hall_f28379d_B.Merge1 = 0.25F;

      /* End of Outputs for SubSystem: '<S189>/Hall Value of 2' */
      break;

     case 6L:
      /* Outputs for IfAction SubSystem: '<S189>/Hall Value of 3' incorporates:
       *  ActionPort: '<S192>/Action Port'
       */
      /* Merge: '<S172>/Merge1' incorporates:
       *  Constant: '<S192>/Constant'
       *  SignalConversion generated from: '<S192>/position'
       */
      mcb_pmsm_foc_hall_f28379d_B.Merge1 = 0.41667F;

      /* End of Outputs for SubSystem: '<S189>/Hall Value of 3' */
      break;

     case 2L:
      /* Outputs for IfAction SubSystem: '<S189>/Hall Value of 4' incorporates:
       *  ActionPort: '<S193>/Action Port'
       */
      /* Merge: '<S172>/Merge1' incorporates:
       *  Constant: '<S193>/Constant'
       *  SignalConversion generated from: '<S193>/position'
       */
      mcb_pmsm_foc_hall_f28379d_B.Merge1 = 0.58333F;

      /* End of Outputs for SubSystem: '<S189>/Hall Value of 4' */
      break;

     case 3L:
      /* Outputs for IfAction SubSystem: '<S189>/Hall Value of 5' incorporates:
       *  ActionPort: '<S194>/Action Port'
       */
      /* Merge: '<S172>/Merge1' incorporates:
       *  Constant: '<S194>/Constant'
       *  SignalConversion generated from: '<S194>/position'
       */
      mcb_pmsm_foc_hall_f28379d_B.Merge1 = 0.75F;

      /* End of Outputs for SubSystem: '<S189>/Hall Value of 5' */
      break;

     case 1L:
      /* Outputs for IfAction SubSystem: '<S189>/Hall Value of 6' incorporates:
       *  ActionPort: '<S195>/Action Port'
       */
      /* Merge: '<S172>/Merge1' incorporates:
       *  Constant: '<S195>/Constant'
       *  SignalConversion generated from: '<S195>/position'
       */
      mcb_pmsm_foc_hall_f28379d_B.Merge1 = 0.91667F;

      /* End of Outputs for SubSystem: '<S189>/Hall Value of 6' */
      break;

     default:
      /* Outputs for IfAction SubSystem: '<S189>/Hall Value of 7' incorporates:
       *  ActionPort: '<S196>/Action Port'
       */
      mcb_pmsm_foc_h_HallValueof7(&mcb_pmsm_foc_hall_f28379d_B.Merge1);

      /* End of Outputs for SubSystem: '<S189>/Hall Value of 7' */
      break;
    }

    /* End of SwitchCase: '<S189>/Switch Case' */

    /* Merge: '<S172>/Merge' incorporates:
     *  Constant: '<S185>/Constant'
     *  SignalConversion generated from: '<S185>/Speed(r.p.m)'
     */
    mcb_pmsm_foc_hall_f28379d_B.Merge_d = 0.0F;

    /* End of Outputs for SubSystem: '<S172>/Speed and direction are not valid Position will be set to the middle of the Hall quadrant' */
  }

  /* End of If: '<S172>/If' */

  /* Sum: '<S184>/Sum' incorporates:
   *  Constant: '<S184>/Constant2'
   */
  mcb_pmsm_foc_hall_f28379d_B.Sum_m3 = mcb_pmsm_foc_hall_f28379d_B.DelayOneStep
    - 1U;

  /* Switch: '<S219>/Switch' incorporates:
   *  Constant: '<S219>/Constant1'
   */
  mcb_pmsm_foc_hall_f28379d_B.Switch_h = 0.0534F;

  /* If: '<S220>/If' */
  if (mcb_pmsm_foc_hall_f28379d_B.Merge1 <= 0.0534F) {
    /* Outputs for IfAction SubSystem: '<S220>/If Action Subsystem' incorporates:
     *  ActionPort: '<S222>/Action Port'
     */
    /* Merge: '<S220>/Merge' incorporates:
     *  Constant: '<S222>/Constant'
     *  Sum: '<S222>/Add'
     */
    mcb_pmsm_foc_hall_f28379d_B.Merge_m = (mcb_pmsm_foc_hall_f28379d_B.Merge1 +
      1.0F) - 0.0534F;

    /* End of Outputs for SubSystem: '<S220>/If Action Subsystem' */
  } else {
    /* Outputs for IfAction SubSystem: '<S220>/If Action Subsystem1' incorporates:
     *  ActionPort: '<S223>/Action Port'
     */
    /* Merge: '<S220>/Merge' incorporates:
     *  Sum: '<S223>/Add'
     */
    mcb_pmsm_foc_hall_f28379d_B.Merge_m = mcb_pmsm_foc_hall_f28379d_B.Merge1 -
      0.0534F;

    /* End of Outputs for SubSystem: '<S220>/If Action Subsystem1' */
  }

  /* End of If: '<S220>/If' */

  /* Rounding: '<S221>/Floor' */
  mcb_pmsm_foc_hall_f28379d_B.Floor = (real32_T)floor
    (mcb_pmsm_foc_hall_f28379d_B.Merge_m);

  /* Sum: '<S221>/Add' */
  mcb_pmsm_foc_hall_f28379d_B.Add = mcb_pmsm_foc_hall_f28379d_B.Merge_m -
    mcb_pmsm_foc_hall_f28379d_B.Floor;

  /* DataStoreRead: '<S169>/Data Store Read' */
  mcb_pmsm_foc_hall_f28379d_B.DataStoreRead_k =
    mcb_pmsm_foc_hall_f28379d_DWork.IaOffset;

  /* DataStoreRead: '<S169>/Data Store Read1' */
  mcb_pmsm_foc_hall_f28379d_B.DataStoreRead1 =
    mcb_pmsm_foc_hall_f28379d_DWork.IbOffset;

  /* S-Function (c2802xadc): '<S229>/ADC_C_IN2' */
  {
    /*  Internal Reference Voltage : Fixed scale 0 to 3.3 V range.  */
    /*  External Reference Voltage : Allowable ranges of VREFHI(ADCINA0) = 3.3 and VREFLO(tied to ground) = 0  */
    mcb_pmsm_foc_hall_f28379d_B.ADC_C_IN2 = (AdccResultRegs.ADCRESULT0);
  }

  /* S-Function (c2802xadc): '<S229>/ADC_B_IN2' */
  {
    /*  Internal Reference Voltage : Fixed scale 0 to 3.3 V range.  */
    /*  External Reference Voltage : Allowable ranges of VREFHI(ADCINA0) = 3.3 and VREFLO(tied to ground) = 0  */
    mcb_pmsm_foc_hall_f28379d_B.ADC_B_IN2 = (AdcbResultRegs.ADCRESULT0);
  }

  /* DataTypeConversion: '<S169>/Data Type Conversion' */
  mcb_pmsm_foc_hall_f28379d_B.DataTypeConversion_f[0] =
    mcb_pmsm_foc_hall_f28379d_B.ADC_C_IN2;
  mcb_pmsm_foc_hall_f28379d_B.DataTypeConversion_f[1] =
    mcb_pmsm_foc_hall_f28379d_B.ADC_B_IN2;

  /* Sum: '<S169>/Add' */
  mcb_pmsm_foc_hall_f28379d_B.Add_f[0] =
    mcb_pmsm_foc_hall_f28379d_B.DataTypeConversion_f[0] -
    mcb_pmsm_foc_hall_f28379d_B.DataStoreRead_k;
  mcb_pmsm_foc_hall_f28379d_B.Add_f[1] =
    mcb_pmsm_foc_hall_f28379d_B.DataTypeConversion_f[1] -
    mcb_pmsm_foc_hall_f28379d_B.DataStoreRead1;

  /* Gain: '<S227>/Get ADC Voltage' */
  Bias = 0.000732600747F * (real32_T)mcb_pmsm_foc_hall_f28379d_B.Add_f[0];
  mcb_pmsm_foc_hall_f28379d_B.GetADCVoltage[0] = Bias;

  /* Gain: '<S227>/Get Currents' */
  Bias *= 7.14285707F;
  mcb_pmsm_foc_hall_f28379d_B.GetCurrents[0] = Bias;

  /* Gain: '<S227>/PU_Conversion' */
  mcb_pmsm_foc_hall_f28379d_B.PU_Conversion[0] = 0.0933333337F * Bias;

  /* Gain: '<S227>/Get ADC Voltage' */
  Bias = 0.000732600747F * (real32_T)mcb_pmsm_foc_hall_f28379d_B.Add_f[1];
  mcb_pmsm_foc_hall_f28379d_B.GetADCVoltage[1] = Bias;

  /* Gain: '<S227>/Get Currents' */
  Bias *= 7.14285707F;
  mcb_pmsm_foc_hall_f28379d_B.GetCurrents[1] = Bias;

  /* Gain: '<S227>/PU_Conversion' */
  mcb_pmsm_foc_hall_f28379d_B.PU_Conversion[1] = 0.0933333337F * Bias;

  /* Outputs for Atomic SubSystem: '<S22>/Two phase CRL wrap' */
  /* Sum: '<S23>/a_plus_2b' */
  mcb_pmsm_foc_hall_f28379d_B.a_plus_2b =
    (mcb_pmsm_foc_hall_f28379d_B.PU_Conversion[0] +
     mcb_pmsm_foc_hall_f28379d_B.PU_Conversion[1]) +
    mcb_pmsm_foc_hall_f28379d_B.PU_Conversion[1];

  /* Gain: '<S23>/one_by_sqrt3' */
  mcb_pmsm_foc_hall_f28379d_B.one_by_sqrt3 = 0.577350259F *
    mcb_pmsm_foc_hall_f28379d_B.a_plus_2b;

  /* AlgorithmDescriptorDelegate generated from: '<S23>/a16' */
  mcb_pmsm_foc_hall_f28379d_B.algDD_o1_a =
    mcb_pmsm_foc_hall_f28379d_B.PU_Conversion[0];

  /* AlgorithmDescriptorDelegate generated from: '<S23>/a16' */
  mcb_pmsm_foc_hall_f28379d_B.algDD_o2_n =
    mcb_pmsm_foc_hall_f28379d_B.one_by_sqrt3;

  /* End of Outputs for SubSystem: '<S22>/Two phase CRL wrap' */

  /* Switch: '<S29>/Switch1' incorporates:
   *  Constant: '<S29>/ChosenMethod'
   */
  mcb_pmsm_foc_hall_f28379d_B.Switch1_o = 3U;

  /* RelationalOperator: '<S156>/Compare' incorporates:
   *  Constant: '<S156>/Constant'
   */
  mcb_pmsm_foc_hall_f28379d_B.Compare_d = (mcb_pmsm_foc_hall_f28379d_B.Add <
    0.0F);

  /* DataTypeConversion: '<S155>/Data Type Conversion' */
  mcb_pmsm_foc_hall_f28379d_B.DataTypeConversion_m =
    mcb_pmsm_foc_hall_f28379d_B.Compare_d;

  /* If: '<S155>/If' */
  if (mcb_pmsm_foc_hall_f28379d_B.DataTypeConversion_m > 0U) {
    /* Outputs for IfAction SubSystem: '<S155>/If Action Subsystem' incorporates:
     *  ActionPort: '<S157>/Action Port'
     */
    mcb_pmsm__IfActionSubsystem(mcb_pmsm_foc_hall_f28379d_B.Add,
      &mcb_pmsm_foc_hall_f28379d_B.Merge_mm,
      &mcb_pmsm_foc_hall_f28379d_B.IfActionSubsystem_n);

    /* End of Outputs for SubSystem: '<S155>/If Action Subsystem' */
  } else {
    /* Outputs for IfAction SubSystem: '<S155>/If Action Subsystem1' incorporates:
     *  ActionPort: '<S158>/Action Port'
     */
    mcb_pmsm_IfActionSubsystem1(mcb_pmsm_foc_hall_f28379d_B.Add,
      &mcb_pmsm_foc_hall_f28379d_B.Merge_mm,
      &mcb_pmsm_foc_hall_f28379d_B.IfActionSubsystem1_i);

    /* End of Outputs for SubSystem: '<S155>/If Action Subsystem1' */
  }

  /* End of If: '<S155>/If' */

  /* Gain: '<S153>/indexing' */
  mcb_pmsm_foc_hall_f28379d_B.indexing = 800.0F *
    mcb_pmsm_foc_hall_f28379d_B.Merge_mm;

  /* DataTypeConversion: '<S153>/Get_Integer' */
  mcb_pmsm_foc_hall_f28379d_B.Get_Integer = (uint16_T)
    mcb_pmsm_foc_hall_f28379d_B.indexing;

  /* Sum: '<S153>/Sum' incorporates:
   *  Constant: '<S153>/offset'
   */
  u0 = mcb_pmsm_foc_hall_f28379d_B.Get_Integer + 1UL;
  mcb_pmsm_foc_hall_f28379d_B.Sum[0] = u0;

  /* Selector: '<S153>/Lookup' incorporates:
   *  Constant: '<S153>/sine_table_values'
   */
  mcb_pmsm_foc_hall_f28379d_B.Lookup[0] =
    mcb_pmsm_foc_hall_f28379_ConstP.pooled11[(int16_T)u0];

  /* Sum: '<S153>/Sum' */
  u0 = mcb_pmsm_foc_hall_f28379d_B.Get_Integer;
  mcb_pmsm_foc_hall_f28379d_B.Sum[1] = u0;

  /* Selector: '<S153>/Lookup' incorporates:
   *  Constant: '<S153>/sine_table_values'
   */
  mcb_pmsm_foc_hall_f28379d_B.Lookup[1] =
    mcb_pmsm_foc_hall_f28379_ConstP.pooled11[(int16_T)u0];

  /* Sum: '<S153>/Sum' incorporates:
   *  Constant: '<S153>/offset'
   */
  u0 = mcb_pmsm_foc_hall_f28379d_B.Get_Integer + 201UL;
  mcb_pmsm_foc_hall_f28379d_B.Sum[2] = u0;

  /* Selector: '<S153>/Lookup' incorporates:
   *  Constant: '<S153>/sine_table_values'
   */
  mcb_pmsm_foc_hall_f28379d_B.Lookup[2] =
    mcb_pmsm_foc_hall_f28379_ConstP.pooled11[(int16_T)u0];

  /* Sum: '<S153>/Sum' incorporates:
   *  Constant: '<S153>/offset'
   */
  u0 = mcb_pmsm_foc_hall_f28379d_B.Get_Integer + 200UL;
  mcb_pmsm_foc_hall_f28379d_B.Sum[3] = u0;

  /* Selector: '<S153>/Lookup' incorporates:
   *  Constant: '<S153>/sine_table_values'
   */
  mcb_pmsm_foc_hall_f28379d_B.Lookup[3] =
    mcb_pmsm_foc_hall_f28379_ConstP.pooled11[(int16_T)u0];

  /* Sum: '<S154>/Sum3' */
  mcb_pmsm_foc_hall_f28379d_B.Sum3 = mcb_pmsm_foc_hall_f28379d_B.Lookup[0] -
    mcb_pmsm_foc_hall_f28379d_B.Lookup[1];

  /* DataTypeConversion: '<S153>/Data Type Conversion1' */
  mcb_pmsm_foc_hall_f28379d_B.DataTypeConversion1 =
    mcb_pmsm_foc_hall_f28379d_B.Get_Integer;

  /* Sum: '<S153>/Sum2' */
  mcb_pmsm_foc_hall_f28379d_B.Sum2 = mcb_pmsm_foc_hall_f28379d_B.indexing -
    mcb_pmsm_foc_hall_f28379d_B.DataTypeConversion1;

  /* Product: '<S154>/Product' */
  mcb_pmsm_foc_hall_f28379d_B.Product = mcb_pmsm_foc_hall_f28379d_B.Sum3 *
    mcb_pmsm_foc_hall_f28379d_B.Sum2;

  /* Sum: '<S154>/Sum4' */
  mcb_pmsm_foc_hall_f28379d_B.Sum4 = mcb_pmsm_foc_hall_f28379d_B.Product +
    mcb_pmsm_foc_hall_f28379d_B.Lookup[1];

  /* Sum: '<S154>/Sum5' */
  mcb_pmsm_foc_hall_f28379d_B.Sum5 = mcb_pmsm_foc_hall_f28379d_B.Lookup[2] -
    mcb_pmsm_foc_hall_f28379d_B.Lookup[3];

  /* Product: '<S154>/Product1' */
  mcb_pmsm_foc_hall_f28379d_B.Product1 = mcb_pmsm_foc_hall_f28379d_B.Sum5 *
    mcb_pmsm_foc_hall_f28379d_B.Sum2;

  /* Sum: '<S154>/Sum6' */
  mcb_pmsm_foc_hall_f28379d_B.Sum6 = mcb_pmsm_foc_hall_f28379d_B.Product1 +
    mcb_pmsm_foc_hall_f28379d_B.Lookup[3];

  /* Outputs for Atomic SubSystem: '<S20>/Two inputs CRL' */
  /* Product: '<S152>/acos' */
  mcb_pmsm_foc_hall_f28379d_B.acos_e = mcb_pmsm_foc_hall_f28379d_B.algDD_o1_a *
    mcb_pmsm_foc_hall_f28379d_B.Sum6;

  /* Product: '<S152>/bsin' */
  mcb_pmsm_foc_hall_f28379d_B.bsin = mcb_pmsm_foc_hall_f28379d_B.algDD_o2_n *
    mcb_pmsm_foc_hall_f28379d_B.Sum4;

  /* Sum: '<S152>/sum_Ds' */
  mcb_pmsm_foc_hall_f28379d_B.sum_Ds = mcb_pmsm_foc_hall_f28379d_B.acos_e +
    mcb_pmsm_foc_hall_f28379d_B.bsin;

  /* Product: '<S152>/bcos' */
  mcb_pmsm_foc_hall_f28379d_B.bcos = mcb_pmsm_foc_hall_f28379d_B.algDD_o2_n *
    mcb_pmsm_foc_hall_f28379d_B.Sum6;

  /* Product: '<S152>/asin' */
  mcb_pmsm_foc_hall_f28379d_B.asin_j = mcb_pmsm_foc_hall_f28379d_B.algDD_o1_a *
    mcb_pmsm_foc_hall_f28379d_B.Sum4;

  /* Sum: '<S152>/sum_Qs' */
  mcb_pmsm_foc_hall_f28379d_B.sum_Qs = mcb_pmsm_foc_hall_f28379d_B.bcos -
    mcb_pmsm_foc_hall_f28379d_B.asin_j;

  /* Switch: '<S159>/Switch' */
  mcb_pmsm_foc_hall_f28379d_B.Switch_fd[0] = mcb_pmsm_foc_hall_f28379d_B.sum_Ds;
  mcb_pmsm_foc_hall_f28379d_B.Switch_fd[1] = mcb_pmsm_foc_hall_f28379d_B.sum_Qs;

  /* AlgorithmDescriptorDelegate generated from: '<S152>/a16' */
  mcb_pmsm_foc_hall_f28379d_B.algDD_o1 = mcb_pmsm_foc_hall_f28379d_B.Switch_fd[0];

  /* AlgorithmDescriptorDelegate generated from: '<S152>/a16' */
  mcb_pmsm_foc_hall_f28379d_B.algDD_o2 = mcb_pmsm_foc_hall_f28379d_B.Switch_fd[1];

  /* End of Outputs for SubSystem: '<S20>/Two inputs CRL' */

  /* Sum: '<S26>/Sum' */
  mcb_pmsm_foc_hall_f28379d_B.Sum_g = mcb_pmsm_foc_hall_f28379d_B.RT2[1] -
    mcb_pmsm_foc_hall_f28379d_B.algDD_o2;

  /* Product: '<S131>/PProd Out' incorporates:
   *  Constant: '<S26>/Kp'
   */
  mcb_pmsm_foc_hall_f28379d_B.PProdOut = mcb_pmsm_foc_hall_f28379d_B.Sum_g *
    2.0F;

  /* DataStoreRead: '<S26>/Data Store Read1' */
  mcb_pmsm_foc_hall_f28379d_B.DataStoreRead1_b =
    mcb_pmsm_foc_hall_f28379d_DWork.Enable;

  /* Logic: '<S26>/Logical Operator' */
  mcb_pmsm_foc_hall_f28379d_B.LogicalOperator =
    !mcb_pmsm_foc_hall_f28379d_B.DataStoreRead1_b;

  /* Constant: '<S26>/Kp1' */
  mcb_pmsm_foc_hall_f28379d_B.Kp1 = 0.0F;

  /* DiscreteIntegrator: '<S126>/Integrator' */
  if (mcb_pmsm_foc_hall_f28379d_B.LogicalOperator ||
      (mcb_pmsm_foc_hall_f28379d_DWork.Integrator_PrevResetState != 0)) {
    mcb_pmsm_foc_hall_f28379d_DWork.Integrator_DSTATE = 0.0F;
  }

  /* DiscreteIntegrator: '<S126>/Integrator' */
  mcb_pmsm_foc_hall_f28379d_B.Integrator =
    mcb_pmsm_foc_hall_f28379d_DWork.Integrator_DSTATE;

  /* Sum: '<S135>/Sum' */
  mcb_pmsm_foc_hall_f28379d_B.Sum_m = mcb_pmsm_foc_hall_f28379d_B.PProdOut +
    mcb_pmsm_foc_hall_f28379d_B.Integrator;

  /* Saturate: '<S133>/Saturation' */
  u0_0 = mcb_pmsm_foc_hall_f28379d_B.Sum_m;
  if (u0_0 > 1.0F) {
    /* Saturate: '<S133>/Saturation' */
    mcb_pmsm_foc_hall_f28379d_B.Saturation = 1.0F;
  } else if (u0_0 < -1.0F) {
    /* Saturate: '<S133>/Saturation' */
    mcb_pmsm_foc_hall_f28379d_B.Saturation = -1.0F;
  } else {
    /* Saturate: '<S133>/Saturation' */
    mcb_pmsm_foc_hall_f28379d_B.Saturation = u0_0;
  }

  /* End of Saturate: '<S133>/Saturation' */

  /* Sum: '<S25>/Sum' */
  mcb_pmsm_foc_hall_f28379d_B.Sum_b = mcb_pmsm_foc_hall_f28379d_B.RT2[0] -
    mcb_pmsm_foc_hall_f28379d_B.algDD_o1;

  /* Product: '<S80>/PProd Out' incorporates:
   *  Constant: '<S25>/Kp'
   */
  mcb_pmsm_foc_hall_f28379d_B.PProdOut_b = mcb_pmsm_foc_hall_f28379d_B.Sum_b *
    2.0F;

  /* DataStoreRead: '<S25>/Data Store Read1' */
  mcb_pmsm_foc_hall_f28379d_B.DataStoreRead1_g =
    mcb_pmsm_foc_hall_f28379d_DWork.Enable;

  /* Logic: '<S25>/Logical Operator' */
  mcb_pmsm_foc_hall_f28379d_B.LogicalOperator_j =
    !mcb_pmsm_foc_hall_f28379d_B.DataStoreRead1_g;

  /* Constant: '<S25>/Ki1' */
  mcb_pmsm_foc_hall_f28379d_B.Ki1 = 0.0F;

  /* DiscreteIntegrator: '<S75>/Integrator' */
  if (mcb_pmsm_foc_hall_f28379d_B.LogicalOperator_j ||
      (mcb_pmsm_foc_hall_f28379d_DWork.Integrator_PrevResetState_m != 0)) {
    mcb_pmsm_foc_hall_f28379d_DWork.Integrator_DSTATE_j = 0.0F;
  }

  /* DiscreteIntegrator: '<S75>/Integrator' */
  mcb_pmsm_foc_hall_f28379d_B.Integrator_o =
    mcb_pmsm_foc_hall_f28379d_DWork.Integrator_DSTATE_j;

  /* Sum: '<S84>/Sum' */
  mcb_pmsm_foc_hall_f28379d_B.Sum_h = mcb_pmsm_foc_hall_f28379d_B.PProdOut_b +
    mcb_pmsm_foc_hall_f28379d_B.Integrator_o;

  /* Saturate: '<S82>/Saturation' */
  u0_0 = mcb_pmsm_foc_hall_f28379d_B.Sum_h;
  if (u0_0 > 1.0F) {
    /* Saturate: '<S82>/Saturation' */
    mcb_pmsm_foc_hall_f28379d_B.Saturation_j = 1.0F;
  } else if (u0_0 < -1.0F) {
    /* Saturate: '<S82>/Saturation' */
    mcb_pmsm_foc_hall_f28379d_B.Saturation_j = -1.0F;
  } else {
    /* Saturate: '<S82>/Saturation' */
    mcb_pmsm_foc_hall_f28379d_B.Saturation_j = u0_0;
  }

  /* End of Saturate: '<S82>/Saturation' */

  /* Switch: '<S29>/Switch' incorporates:
   *  Constant: '<S29>/Constant3'
   */
  mcb_pmsm_foc_hall_f28379d_B.Switch_j = 0.95F;

  /* Product: '<S29>/Product' */
  mcb_pmsm_foc_hall_f28379d_B.Product_b = 0.9025F;

  /* Product: '<S30>/Product' */
  mcb_pmsm_foc_hall_f28379d_B.Product_e =
    mcb_pmsm_foc_hall_f28379d_B.Saturation_j *
    mcb_pmsm_foc_hall_f28379d_B.Saturation_j;

  /* Product: '<S30>/Product1' */
  mcb_pmsm_foc_hall_f28379d_B.Product1_b =
    mcb_pmsm_foc_hall_f28379d_B.Saturation *
    mcb_pmsm_foc_hall_f28379d_B.Saturation;

  /* Sum: '<S30>/Sum1' */
  mcb_pmsm_foc_hall_f28379d_B.Sum1 = mcb_pmsm_foc_hall_f28379d_B.Product_e +
    mcb_pmsm_foc_hall_f28379d_B.Product1_b;

  /* Outputs for IfAction SubSystem: '<S24>/D-Q Equivalence' incorporates:
   *  ActionPort: '<S27>/Action Port'
   */
  /* If: '<S24>/If' incorporates:
   *  DataTypeConversion: '<S27>/Data Type Conversion'
   *  RelationalOperator: '<S27>/Relational Operator'
   */
  mcb_pmsm_foc_hall_f28379d_B.RelationalOperator_h =
    (mcb_pmsm_foc_hall_f28379d_B.Sum1 > 0.9025F);
  mcb_pmsm_foc_hall_f28379d_B.DataTypeConversion_jg =
    mcb_pmsm_foc_hall_f28379d_B.RelationalOperator_h;

  /* If: '<S27>/If' incorporates:
   *  If: '<S24>/If'
   */
  if (mcb_pmsm_foc_hall_f28379d_B.DataTypeConversion_jg != 0U) {
    /* Outputs for IfAction SubSystem: '<S27>/Limiter' incorporates:
     *  ActionPort: '<S31>/Action Port'
     */
    /* Product: '<S31>/Product' */
    mcb_pmsm_foc_hall_f28379d_B.Product_ie[0] =
      mcb_pmsm_foc_hall_f28379d_B.Saturation_j * 0.95F;
    mcb_pmsm_foc_hall_f28379d_B.Product_ie[1] =
      mcb_pmsm_foc_hall_f28379d_B.Saturation * 0.95F;

    /* Sqrt: '<S31>/Square Root' */
    mcb_pmsm_foc_hall_f28379d_B.SquareRoot = (real32_T)sqrt
      (mcb_pmsm_foc_hall_f28379d_B.Sum1);

    /* Switch: '<S31>/Switch' */
    if (mcb_pmsm_foc_hall_f28379d_B.SquareRoot != 0.0F) {
      /* Switch: '<S31>/Switch' */
      mcb_pmsm_foc_hall_f28379d_B.Switch_o =
        mcb_pmsm_foc_hall_f28379d_B.SquareRoot;
    } else {
      /* Switch: '<S31>/Switch' incorporates:
       *  Constant: '<S31>/Constant'
       */
      mcb_pmsm_foc_hall_f28379d_B.Switch_o = 1.0F;
    }

    /* End of Switch: '<S31>/Switch' */

    /* Product: '<S31>/Reciprocal' */
    mcb_pmsm_foc_hall_f28379d_B.Reciprocal = 1.0F /
      mcb_pmsm_foc_hall_f28379d_B.Switch_o;

    /* Merge: '<S24>/Merge' incorporates:
     *  Product: '<S31>/Product1'
     */
    mcb_pmsm_foc_hall_f28379d_B.Merge_do[0] =
      mcb_pmsm_foc_hall_f28379d_B.Product_ie[0] *
      mcb_pmsm_foc_hall_f28379d_B.Reciprocal;
    mcb_pmsm_foc_hall_f28379d_B.Merge_do[1] =
      mcb_pmsm_foc_hall_f28379d_B.Product_ie[1] *
      mcb_pmsm_foc_hall_f28379d_B.Reciprocal;

    /* End of Outputs for SubSystem: '<S27>/Limiter' */
  } else {
    /* Outputs for IfAction SubSystem: '<S27>/Passthrough' incorporates:
     *  ActionPort: '<S32>/Action Port'
     */
    /* Merge: '<S24>/Merge' incorporates:
     *  SignalConversion generated from: '<S32>/dqRef'
     */
    mcb_pmsm_foc_hall_f28379d_B.Merge_do[0] =
      mcb_pmsm_foc_hall_f28379d_B.Saturation_j;
    mcb_pmsm_foc_hall_f28379d_B.Merge_do[1] =
      mcb_pmsm_foc_hall_f28379d_B.Saturation;

    /* End of Outputs for SubSystem: '<S27>/Passthrough' */
  }

  /* End of If: '<S27>/If' */
  /* End of Outputs for SubSystem: '<S24>/D-Q Equivalence' */

  /* DeadZone: '<S68>/DeadZone' */
  if (mcb_pmsm_foc_hall_f28379d_B.Sum_h > 1.0F) {
    /* DeadZone: '<S68>/DeadZone' */
    mcb_pmsm_foc_hall_f28379d_B.DeadZone = mcb_pmsm_foc_hall_f28379d_B.Sum_h -
      1.0F;
  } else if (mcb_pmsm_foc_hall_f28379d_B.Sum_h >= -1.0F) {
    /* DeadZone: '<S68>/DeadZone' */
    mcb_pmsm_foc_hall_f28379d_B.DeadZone = 0.0F;
  } else {
    /* DeadZone: '<S68>/DeadZone' */
    mcb_pmsm_foc_hall_f28379d_B.DeadZone = mcb_pmsm_foc_hall_f28379d_B.Sum_h -
      -1.0F;
  }

  /* End of DeadZone: '<S68>/DeadZone' */

  /* RelationalOperator: '<S66>/Relational Operator' incorporates:
   *  Constant: '<S66>/Clamping_zero'
   */
  mcb_pmsm_foc_hall_f28379d_B.RelationalOperator =
    (mcb_pmsm_foc_hall_f28379d_B.DeadZone != 0.0F);

  /* RelationalOperator: '<S66>/fix for DT propagation issue' incorporates:
   *  Constant: '<S66>/Clamping_zero'
   */
  mcb_pmsm_foc_hall_f28379d_B.fixforDTpropagationissue =
    (mcb_pmsm_foc_hall_f28379d_B.DeadZone > 0.0F);

  /* Switch: '<S66>/Switch1' */
  if (mcb_pmsm_foc_hall_f28379d_B.fixforDTpropagationissue) {
    /* Switch: '<S66>/Switch1' incorporates:
     *  Constant: '<S66>/Constant'
     */
    mcb_pmsm_foc_hall_f28379d_B.Switch1_i = 1;
  } else {
    /* Switch: '<S66>/Switch1' incorporates:
     *  Constant: '<S66>/Constant2'
     */
    mcb_pmsm_foc_hall_f28379d_B.Switch1_i = -1;
  }

  /* End of Switch: '<S66>/Switch1' */

  /* Product: '<S72>/IProd Out' incorporates:
   *  Constant: '<S25>/Ki'
   */
  mcb_pmsm_foc_hall_f28379d_B.IProdOut = mcb_pmsm_foc_hall_f28379d_B.Sum_b *
    5.0E-7F;

  /* RelationalOperator: '<S66>/fix for DT propagation issue1' incorporates:
   *  Constant: '<S66>/Clamping_zero'
   */
  mcb_pmsm_foc_hall_f28379d_B.fixforDTpropagationissue1 =
    (mcb_pmsm_foc_hall_f28379d_B.IProdOut > 0.0F);

  /* Switch: '<S66>/Switch2' */
  if (mcb_pmsm_foc_hall_f28379d_B.fixforDTpropagationissue1) {
    /* Switch: '<S66>/Switch2' incorporates:
     *  Constant: '<S66>/Constant3'
     */
    mcb_pmsm_foc_hall_f28379d_B.Switch2_a = 1;
  } else {
    /* Switch: '<S66>/Switch2' incorporates:
     *  Constant: '<S66>/Constant4'
     */
    mcb_pmsm_foc_hall_f28379d_B.Switch2_a = -1;
  }

  /* End of Switch: '<S66>/Switch2' */

  /* RelationalOperator: '<S66>/Equal1' incorporates:
   *  Switch: '<S66>/Switch1'
   *  Switch: '<S66>/Switch2'
   */
  mcb_pmsm_foc_hall_f28379d_B.Equal1 = (mcb_pmsm_foc_hall_f28379d_B.Switch1_i ==
    mcb_pmsm_foc_hall_f28379d_B.Switch2_a);

  /* Logic: '<S66>/AND3' */
  mcb_pmsm_foc_hall_f28379d_B.AND3 =
    (mcb_pmsm_foc_hall_f28379d_B.RelationalOperator &&
     mcb_pmsm_foc_hall_f28379d_B.Equal1);

  /* Switch: '<S66>/Switch' */
  if (mcb_pmsm_foc_hall_f28379d_B.AND3) {
    /* Switch: '<S66>/Switch' incorporates:
     *  Constant: '<S66>/Constant1'
     */
    mcb_pmsm_foc_hall_f28379d_B.Switch_b = 0.0F;
  } else {
    /* Switch: '<S66>/Switch' */
    mcb_pmsm_foc_hall_f28379d_B.Switch_b = mcb_pmsm_foc_hall_f28379d_B.IProdOut;
  }

  /* End of Switch: '<S66>/Switch' */

  /* DeadZone: '<S119>/DeadZone' */
  if (mcb_pmsm_foc_hall_f28379d_B.Sum_m > 1.0F) {
    /* DeadZone: '<S119>/DeadZone' */
    mcb_pmsm_foc_hall_f28379d_B.DeadZone_g = mcb_pmsm_foc_hall_f28379d_B.Sum_m -
      1.0F;
  } else if (mcb_pmsm_foc_hall_f28379d_B.Sum_m >= -1.0F) {
    /* DeadZone: '<S119>/DeadZone' */
    mcb_pmsm_foc_hall_f28379d_B.DeadZone_g = 0.0F;
  } else {
    /* DeadZone: '<S119>/DeadZone' */
    mcb_pmsm_foc_hall_f28379d_B.DeadZone_g = mcb_pmsm_foc_hall_f28379d_B.Sum_m -
      -1.0F;
  }

  /* End of DeadZone: '<S119>/DeadZone' */

  /* RelationalOperator: '<S117>/Relational Operator' incorporates:
   *  Constant: '<S117>/Clamping_zero'
   */
  mcb_pmsm_foc_hall_f28379d_B.RelationalOperator_m =
    (mcb_pmsm_foc_hall_f28379d_B.DeadZone_g != 0.0F);

  /* RelationalOperator: '<S117>/fix for DT propagation issue' incorporates:
   *  Constant: '<S117>/Clamping_zero'
   */
  mcb_pmsm_foc_hall_f28379d_B.fixforDTpropagationissue_b =
    (mcb_pmsm_foc_hall_f28379d_B.DeadZone_g > 0.0F);

  /* Switch: '<S117>/Switch1' */
  if (mcb_pmsm_foc_hall_f28379d_B.fixforDTpropagationissue_b) {
    /* Switch: '<S117>/Switch1' incorporates:
     *  Constant: '<S117>/Constant'
     */
    mcb_pmsm_foc_hall_f28379d_B.Switch1_j = 1;
  } else {
    /* Switch: '<S117>/Switch1' incorporates:
     *  Constant: '<S117>/Constant2'
     */
    mcb_pmsm_foc_hall_f28379d_B.Switch1_j = -1;
  }

  /* End of Switch: '<S117>/Switch1' */

  /* Product: '<S123>/IProd Out' incorporates:
   *  Constant: '<S26>/Ki'
   */
  mcb_pmsm_foc_hall_f28379d_B.IProdOut_h = mcb_pmsm_foc_hall_f28379d_B.Sum_g *
    5.0E-7F;

  /* RelationalOperator: '<S117>/fix for DT propagation issue1' incorporates:
   *  Constant: '<S117>/Clamping_zero'
   */
  mcb_pmsm_foc_hall_f28379d_B.fixforDTpropagationissue1_h =
    (mcb_pmsm_foc_hall_f28379d_B.IProdOut_h > 0.0F);

  /* Switch: '<S117>/Switch2' */
  if (mcb_pmsm_foc_hall_f28379d_B.fixforDTpropagationissue1_h) {
    /* Switch: '<S117>/Switch2' incorporates:
     *  Constant: '<S117>/Constant3'
     */
    mcb_pmsm_foc_hall_f28379d_B.Switch2_b = 1;
  } else {
    /* Switch: '<S117>/Switch2' incorporates:
     *  Constant: '<S117>/Constant4'
     */
    mcb_pmsm_foc_hall_f28379d_B.Switch2_b = -1;
  }

  /* End of Switch: '<S117>/Switch2' */

  /* RelationalOperator: '<S117>/Equal1' incorporates:
   *  Switch: '<S117>/Switch1'
   *  Switch: '<S117>/Switch2'
   */
  mcb_pmsm_foc_hall_f28379d_B.Equal1_d = (mcb_pmsm_foc_hall_f28379d_B.Switch1_j ==
    mcb_pmsm_foc_hall_f28379d_B.Switch2_b);

  /* Logic: '<S117>/AND3' */
  mcb_pmsm_foc_hall_f28379d_B.AND3_f =
    (mcb_pmsm_foc_hall_f28379d_B.RelationalOperator_m &&
     mcb_pmsm_foc_hall_f28379d_B.Equal1_d);

  /* Switch: '<S117>/Switch' */
  if (mcb_pmsm_foc_hall_f28379d_B.AND3_f) {
    /* Switch: '<S117>/Switch' incorporates:
     *  Constant: '<S117>/Constant1'
     */
    mcb_pmsm_foc_hall_f28379d_B.Switch_ls = 0.0F;
  } else {
    /* Switch: '<S117>/Switch' */
    mcb_pmsm_foc_hall_f28379d_B.Switch_ls =
      mcb_pmsm_foc_hall_f28379d_B.IProdOut_h;
  }

  /* End of Switch: '<S117>/Switch' */

  /* RelationalOperator: '<S147>/Compare' incorporates:
   *  Constant: '<S147>/Constant'
   */
  mcb_pmsm_foc_hall_f28379d_B.Compare_nf = (mcb_pmsm_foc_hall_f28379d_B.Add <
    0.0F);

  /* DataTypeConversion: '<S146>/Data Type Conversion' */
  mcb_pmsm_foc_hall_f28379d_B.DataTypeConversion_e =
    mcb_pmsm_foc_hall_f28379d_B.Compare_nf;

  /* If: '<S146>/If' */
  if (mcb_pmsm_foc_hall_f28379d_B.DataTypeConversion_e > 0U) {
    /* Outputs for IfAction SubSystem: '<S146>/If Action Subsystem' incorporates:
     *  ActionPort: '<S148>/Action Port'
     */
    mcb_pmsm__IfActionSubsystem(mcb_pmsm_foc_hall_f28379d_B.Add,
      &mcb_pmsm_foc_hall_f28379d_B.Merge_p,
      &mcb_pmsm_foc_hall_f28379d_B.IfActionSubsystem);

    /* End of Outputs for SubSystem: '<S146>/If Action Subsystem' */
  } else {
    /* Outputs for IfAction SubSystem: '<S146>/If Action Subsystem1' incorporates:
     *  ActionPort: '<S149>/Action Port'
     */
    mcb_pmsm_IfActionSubsystem1(mcb_pmsm_foc_hall_f28379d_B.Add,
      &mcb_pmsm_foc_hall_f28379d_B.Merge_p,
      &mcb_pmsm_foc_hall_f28379d_B.IfActionSubsystem1);

    /* End of Outputs for SubSystem: '<S146>/If Action Subsystem1' */
  }

  /* End of If: '<S146>/If' */

  /* Gain: '<S143>/indexing' */
  mcb_pmsm_foc_hall_f28379d_B.indexing_i = 800.0F *
    mcb_pmsm_foc_hall_f28379d_B.Merge_p;

  /* DataTypeConversion: '<S143>/Get_Integer' */
  mcb_pmsm_foc_hall_f28379d_B.Get_Integer_f = (uint16_T)
    mcb_pmsm_foc_hall_f28379d_B.indexing_i;

  /* DataTypeConversion: '<S143>/Data Type Conversion1' */
  mcb_pmsm_foc_hall_f28379d_B.DataTypeConversion1_f =
    mcb_pmsm_foc_hall_f28379d_B.Get_Integer_f;

  /* Sum: '<S143>/Sum' incorporates:
   *  Constant: '<S143>/offset'
   */
  u0 = mcb_pmsm_foc_hall_f28379d_B.Get_Integer_f + 1UL;
  mcb_pmsm_foc_hall_f28379d_B.Sum_k[0] = u0;

  /* Selector: '<S143>/Lookup' incorporates:
   *  Constant: '<S143>/sine_table_values'
   */
  mcb_pmsm_foc_hall_f28379d_B.Lookup_f[0] =
    mcb_pmsm_foc_hall_f28379_ConstP.pooled11[(int16_T)u0];

  /* Sum: '<S143>/Sum' */
  u0 = mcb_pmsm_foc_hall_f28379d_B.Get_Integer_f;
  mcb_pmsm_foc_hall_f28379d_B.Sum_k[1] = u0;

  /* Selector: '<S143>/Lookup' incorporates:
   *  Constant: '<S143>/sine_table_values'
   */
  mcb_pmsm_foc_hall_f28379d_B.Lookup_f[1] =
    mcb_pmsm_foc_hall_f28379_ConstP.pooled11[(int16_T)u0];

  /* Sum: '<S143>/Sum' incorporates:
   *  Constant: '<S143>/offset'
   */
  u0 = mcb_pmsm_foc_hall_f28379d_B.Get_Integer_f + 201UL;
  mcb_pmsm_foc_hall_f28379d_B.Sum_k[2] = u0;

  /* Selector: '<S143>/Lookup' incorporates:
   *  Constant: '<S143>/sine_table_values'
   */
  mcb_pmsm_foc_hall_f28379d_B.Lookup_f[2] =
    mcb_pmsm_foc_hall_f28379_ConstP.pooled11[(int16_T)u0];

  /* Sum: '<S143>/Sum' incorporates:
   *  Constant: '<S143>/offset'
   */
  u0 = mcb_pmsm_foc_hall_f28379d_B.Get_Integer_f + 200UL;
  mcb_pmsm_foc_hall_f28379d_B.Sum_k[3] = u0;

  /* Selector: '<S143>/Lookup' incorporates:
   *  Constant: '<S143>/sine_table_values'
   */
  mcb_pmsm_foc_hall_f28379d_B.Lookup_f[3] =
    mcb_pmsm_foc_hall_f28379_ConstP.pooled11[(int16_T)u0];

  /* Sum: '<S145>/Sum3' */
  mcb_pmsm_foc_hall_f28379d_B.Sum3_c = mcb_pmsm_foc_hall_f28379d_B.Lookup_f[0] -
    mcb_pmsm_foc_hall_f28379d_B.Lookup_f[1];

  /* Sum: '<S143>/Sum2' */
  mcb_pmsm_foc_hall_f28379d_B.Sum2_p = mcb_pmsm_foc_hall_f28379d_B.indexing_i -
    mcb_pmsm_foc_hall_f28379d_B.DataTypeConversion1_f;

  /* Product: '<S145>/Product' */
  mcb_pmsm_foc_hall_f28379d_B.Product_d = mcb_pmsm_foc_hall_f28379d_B.Sum3_c *
    mcb_pmsm_foc_hall_f28379d_B.Sum2_p;

  /* Sum: '<S145>/Sum5' */
  mcb_pmsm_foc_hall_f28379d_B.Sum5_k = mcb_pmsm_foc_hall_f28379d_B.Lookup_f[2] -
    mcb_pmsm_foc_hall_f28379d_B.Lookup_f[3];

  /* Product: '<S145>/Product1' */
  mcb_pmsm_foc_hall_f28379d_B.Product1_p = mcb_pmsm_foc_hall_f28379d_B.Sum5_k *
    mcb_pmsm_foc_hall_f28379d_B.Sum2_p;

  /* Sum: '<S145>/Sum4' */
  mcb_pmsm_foc_hall_f28379d_B.Sum4_j = mcb_pmsm_foc_hall_f28379d_B.Product_d +
    mcb_pmsm_foc_hall_f28379d_B.Lookup_f[1];

  /* Sum: '<S145>/Sum6' */
  mcb_pmsm_foc_hall_f28379d_B.Sum6_e = mcb_pmsm_foc_hall_f28379d_B.Product1_p +
    mcb_pmsm_foc_hall_f28379d_B.Lookup_f[3];

  /* Outputs for Atomic SubSystem: '<S19>/Two inputs CRL' */
  /* Product: '<S144>/qcos' */
  mcb_pmsm_foc_hall_f28379d_B.qcos = mcb_pmsm_foc_hall_f28379d_B.Merge_do[1] *
    mcb_pmsm_foc_hall_f28379d_B.Sum6_e;

  /* Product: '<S144>/dsin' */
  mcb_pmsm_foc_hall_f28379d_B.dsin = mcb_pmsm_foc_hall_f28379d_B.Merge_do[0] *
    mcb_pmsm_foc_hall_f28379d_B.Sum4_j;

  /* Sum: '<S144>/sum_beta' */
  mcb_pmsm_foc_hall_f28379d_B.sum_beta = mcb_pmsm_foc_hall_f28379d_B.qcos +
    mcb_pmsm_foc_hall_f28379d_B.dsin;

  /* Product: '<S144>/dcos' */
  mcb_pmsm_foc_hall_f28379d_B.dcos = mcb_pmsm_foc_hall_f28379d_B.Merge_do[0] *
    mcb_pmsm_foc_hall_f28379d_B.Sum6_e;

  /* Product: '<S144>/qsin' */
  mcb_pmsm_foc_hall_f28379d_B.qsin = mcb_pmsm_foc_hall_f28379d_B.Merge_do[1] *
    mcb_pmsm_foc_hall_f28379d_B.Sum4_j;

  /* Sum: '<S144>/sum_alpha' */
  mcb_pmsm_foc_hall_f28379d_B.sum_alpha = mcb_pmsm_foc_hall_f28379d_B.dcos -
    mcb_pmsm_foc_hall_f28379d_B.qsin;

  /* Switch: '<S150>/Switch' */
  mcb_pmsm_foc_hall_f28379d_B.Switch_k[0] =
    mcb_pmsm_foc_hall_f28379d_B.sum_alpha;
  mcb_pmsm_foc_hall_f28379d_B.Switch_k[1] = mcb_pmsm_foc_hall_f28379d_B.sum_beta;

  /* AlgorithmDescriptorDelegate generated from: '<S144>/a16' */
  mcb_pmsm_foc_hall_f28379d_B.algDD_o1_c = mcb_pmsm_foc_hall_f28379d_B.Switch_k
    [0];

  /* AlgorithmDescriptorDelegate generated from: '<S144>/a16' */
  mcb_pmsm_foc_hall_f28379d_B.algDD_o2_e = mcb_pmsm_foc_hall_f28379d_B.Switch_k
    [1];

  /* End of Outputs for SubSystem: '<S19>/Two inputs CRL' */

  /* DataStoreRead: '<S15>/Enable' */
  mcb_pmsm_foc_hall_f28379d_B.Enable = mcb_pmsm_foc_hall_f28379d_DWork.Enable;

  /* DataTypeConversion: '<S15>/Data Type Conversion' */
  mcb_pmsm_foc_hall_f28379d_B.DataTypeConversion =
    mcb_pmsm_foc_hall_f28379d_B.Enable;

  /* Switch: '<S228>/Switch' */
  mcb_pmsm_foc_hall_f28379d_B.Switch_f =
    mcb_pmsm_foc_hall_f28379d_B.DataTypeConversion;

  /* S-Function (c280xgpio_do): '<S228>/Inverter Enable' */
  {
    if (mcb_pmsm_foc_hall_f28379d_B.Switch_f) {
      GpioDataRegs.GPDSET.bit.GPIO124 = 1U;
    } else {
      GpioDataRegs.GPDCLEAR.bit.GPIO124 = 1U;
    }
  }

  /* Switch: '<S228>/Switch1' */
  if (mcb_pmsm_foc_hall_f28379d_B.DataTypeConversion >= 0.5F) {
    /* Gain: '<S166>/sqrt3_by_two' */
    mcb_pmsm_foc_hall_f28379d_B.sqrt3_by_two = 0.866025388F *
      mcb_pmsm_foc_hall_f28379d_B.algDD_o2_e;

    /* Gain: '<S166>/one_by_two' */
    mcb_pmsm_foc_hall_f28379d_B.one_by_two = 0.5F *
      mcb_pmsm_foc_hall_f28379d_B.algDD_o1_c;

    /* Sum: '<S166>/add_c' */
    mcb_pmsm_foc_hall_f28379d_B.add_c = (0.0F -
      mcb_pmsm_foc_hall_f28379d_B.one_by_two) -
      mcb_pmsm_foc_hall_f28379d_B.sqrt3_by_two;

    /* Sum: '<S166>/add_b' */
    mcb_pmsm_foc_hall_f28379d_B.add_b = mcb_pmsm_foc_hall_f28379d_B.sqrt3_by_two
      - mcb_pmsm_foc_hall_f28379d_B.one_by_two;

    /* MinMax: '<S163>/Min' */
    u0_0 = mcb_pmsm_foc_hall_f28379d_B.algDD_o1_c;
    Bias = mcb_pmsm_foc_hall_f28379d_B.add_b;
    if ((u0_0 <= Bias) || rtIsNaNF(Bias)) {
      Bias = u0_0;
    }

    u0_0 = mcb_pmsm_foc_hall_f28379d_B.add_c;
    if ((!(Bias <= u0_0)) && (!rtIsNaNF(u0_0))) {
      Bias = u0_0;
    }

    /* MinMax: '<S163>/Min' */
    mcb_pmsm_foc_hall_f28379d_B.Min_a = Bias;

    /* MinMax: '<S163>/Max' */
    u0_0 = mcb_pmsm_foc_hall_f28379d_B.algDD_o1_c;
    Bias = mcb_pmsm_foc_hall_f28379d_B.add_b;
    if ((u0_0 >= Bias) || rtIsNaNF(Bias)) {
      Bias = u0_0;
    }

    u0_0 = mcb_pmsm_foc_hall_f28379d_B.add_c;
    if ((!(Bias >= u0_0)) && (!rtIsNaNF(u0_0))) {
      Bias = u0_0;
    }

    /* MinMax: '<S163>/Max' */
    mcb_pmsm_foc_hall_f28379d_B.Max_h = Bias;

    /* Sum: '<S163>/Add' */
    mcb_pmsm_foc_hall_f28379d_B.Add_i = mcb_pmsm_foc_hall_f28379d_B.Max_h +
      mcb_pmsm_foc_hall_f28379d_B.Min_a;

    /* Gain: '<S163>/one_by_two' */
    mcb_pmsm_foc_hall_f28379d_B.one_by_two_b = -0.5F *
      mcb_pmsm_foc_hall_f28379d_B.Add_i;

    /* Sum: '<S162>/Add3' */
    mcb_pmsm_foc_hall_f28379d_B.Add3 = mcb_pmsm_foc_hall_f28379d_B.algDD_o1_c +
      mcb_pmsm_foc_hall_f28379d_B.one_by_two_b;

    /* Sum: '<S162>/Add2' */
    mcb_pmsm_foc_hall_f28379d_B.Add2 = mcb_pmsm_foc_hall_f28379d_B.one_by_two_b
      + mcb_pmsm_foc_hall_f28379d_B.add_c;

    /* Sum: '<S162>/Add1' */
    mcb_pmsm_foc_hall_f28379d_B.Add1 = mcb_pmsm_foc_hall_f28379d_B.add_b +
      mcb_pmsm_foc_hall_f28379d_B.one_by_two_b;

    /* Gain: '<S162>/Gain' */
    mcb_pmsm_foc_hall_f28379d_B.Gain[0] = 1.15470052F *
      mcb_pmsm_foc_hall_f28379d_B.Add3;
    mcb_pmsm_foc_hall_f28379d_B.Gain[1] = 1.15470052F *
      mcb_pmsm_foc_hall_f28379d_B.Add1;
    mcb_pmsm_foc_hall_f28379d_B.Gain[2] = 1.15470052F *
      mcb_pmsm_foc_hall_f28379d_B.Add2;

    /* Gain: '<S15>/Gain' */
    Bias = 0.5F * mcb_pmsm_foc_hall_f28379d_B.Gain[0];
    mcb_pmsm_foc_hall_f28379d_B.Gain_m[0] = Bias;

    /* Sum: '<S15>/Sum' incorporates:
     *  Constant: '<S15>/Constant'
     */
    Bias += 0.5F;
    mcb_pmsm_foc_hall_f28379d_B.PWM_Duty_Cycles[0] = Bias;

    /* Gain: '<S228>/Scale_to_PWM_Counter_PRD' */
    Scale_to_PWM_Counter_PRD = (uint16_T)(500.0F * Bias);
    mcb_pmsm_foc_hall_f28379d_B.Scale_to_PWM_Counter_PRD[0] =
      Scale_to_PWM_Counter_PRD;

    /* Switch: '<S228>/Switch1' */
    mcb_pmsm_foc_hall_f28379d_B.Switch1_f[0] = Scale_to_PWM_Counter_PRD;

    /* Gain: '<S15>/Gain' */
    Bias = 0.5F * mcb_pmsm_foc_hall_f28379d_B.Gain[1];
    mcb_pmsm_foc_hall_f28379d_B.Gain_m[1] = Bias;

    /* Sum: '<S15>/Sum' incorporates:
     *  Constant: '<S15>/Constant'
     */
    Bias += 0.5F;
    mcb_pmsm_foc_hall_f28379d_B.PWM_Duty_Cycles[1] = Bias;

    /* Gain: '<S228>/Scale_to_PWM_Counter_PRD' */
    Scale_to_PWM_Counter_PRD = (uint16_T)(500.0F * Bias);
    mcb_pmsm_foc_hall_f28379d_B.Scale_to_PWM_Counter_PRD[1] =
      Scale_to_PWM_Counter_PRD;

    /* Switch: '<S228>/Switch1' */
    mcb_pmsm_foc_hall_f28379d_B.Switch1_f[1] = Scale_to_PWM_Counter_PRD;

    /* Gain: '<S15>/Gain' */
    Bias = 0.5F * mcb_pmsm_foc_hall_f28379d_B.Gain[2];
    mcb_pmsm_foc_hall_f28379d_B.Gain_m[2] = Bias;

    /* Sum: '<S15>/Sum' incorporates:
     *  Constant: '<S15>/Constant'
     */
    Bias += 0.5F;
    mcb_pmsm_foc_hall_f28379d_B.PWM_Duty_Cycles[2] = Bias;

    /* Gain: '<S228>/Scale_to_PWM_Counter_PRD' */
    Scale_to_PWM_Counter_PRD = (uint16_T)(500.0F * Bias);
    mcb_pmsm_foc_hall_f28379d_B.Scale_to_PWM_Counter_PRD[2] =
      Scale_to_PWM_Counter_PRD;

    /* Switch: '<S228>/Switch1' */
    mcb_pmsm_foc_hall_f28379d_B.Switch1_f[2] = Scale_to_PWM_Counter_PRD;
  } else {
    /* Switch: '<S228>/Switch1' incorporates:
     *  Constant: '<S228>/stop'
     */
    mcb_pmsm_foc_hall_f28379d_B.Switch1_f[0] = 0U;
    mcb_pmsm_foc_hall_f28379d_B.Switch1_f[1] = 0U;
    mcb_pmsm_foc_hall_f28379d_B.Switch1_f[2] = 0U;
  }

  /* End of Switch: '<S228>/Switch1' */

  /* S-Function (c2802xpwm): '<S228>/ePWM1' */

  /*-- Update CMPA value for ePWM1 --*/
  {
    EPwm1Regs.CMPA.bit.CMPA = (uint16_T)(mcb_pmsm_foc_hall_f28379d_B.Switch1_f[0]);
  }

  /* S-Function (c2802xpwm): '<S228>/ePWM2' */

  /*-- Update CMPA value for ePWM2 --*/
  {
    EPwm2Regs.CMPA.bit.CMPA = (uint16_T)(mcb_pmsm_foc_hall_f28379d_B.Switch1_f[1]);
  }

  /* S-Function (c2802xpwm): '<S228>/ePWM3' */

  /*-- Update CMPA value for ePWM3 --*/
  {
    EPwm3Regs.CMPA.bit.CMPA = (uint16_T)(mcb_pmsm_foc_hall_f28379d_B.Switch1_f[2]);
  }

  /* SignalConversion generated from: '<S2>/Speed_fb' */
  mcb_pmsm_foc_hall_f28379d_B.Speed_PU = mcb_pmsm_foc_hall_f28379d_B.Merge_d;

  /* Update for Delay: '<S184>/Delay One Step1' */
  mcb_pmsm_foc_hall_f28379d_DWork.DelayOneStep1_DSTATE =
    mcb_pmsm_foc_hall_f28379d_B.Compare_n;

  /* Update for Delay: '<S184>/Delay One Step' */
  if (mcb_pmsm_foc_hall_f28379d_B.OR) {
    mcb_pmsm_foc_hall_f28379d_DWork.DelayOneStep_DSTATE =
      mcb_pmsm_foc_hall_f28379d_B.Sum_m3;
  }

  /* End of Update for Delay: '<S184>/Delay One Step' */

  /* Update for DiscreteIntegrator: '<S126>/Integrator' */
  mcb_pmsm_foc_hall_f28379d_DWork.Integrator_DSTATE +=
    mcb_pmsm_foc_hall_f28379d_B.Switch_ls;
  mcb_pmsm_foc_hall_f28379d_DWork.Integrator_PrevResetState = (int16_T)
    mcb_pmsm_foc_hall_f28379d_B.LogicalOperator;

  /* Update for DiscreteIntegrator: '<S75>/Integrator' */
  mcb_pmsm_foc_hall_f28379d_DWork.Integrator_DSTATE_j +=
    mcb_pmsm_foc_hall_f28379d_B.Switch_b;
  mcb_pmsm_foc_hall_f28379d_DWork.Integrator_PrevResetState_m = (int16_T)
    mcb_pmsm_foc_hall_f28379d_B.LogicalOperator_j;
}

/*
 * Output and update for action system:
 *    '<S246>/Output 1'
 *    '<S268>/Output 1'
 *    '<S290>/Output 1'
 */
void mcb_pmsm_foc_hall_f_Output1(boolean_T *rty_Out1)
{
  /* SignalConversion generated from: '<S251>/Out1' incorporates:
   *  Constant: '<S251>/Constant'
   */
  *rty_Out1 = true;
}

/*
 * Output and update for action system:
 *    '<S246>/Output 0'
 *    '<S268>/Output 0'
 *    '<S290>/Output 0'
 */
void mcb_pmsm_foc_hall_f_Output0(boolean_T *rty_Out1)
{
  /* SignalConversion generated from: '<S250>/Out1' incorporates:
   *  Constant: '<S250>/Constant'
   */
  *rty_Out1 = false;
}

/*
 * System initialize for action system:
 *    '<S252>/Valid Halls'
 *    '<S274>/Valid Halls'
 *    '<S296>/Valid Halls'
 */
void mcb_pmsm_fo_ValidHalls_Init(rtB_ValidHalls_mcb_pmsm_foc_hal *localB)
{
  /* SystemInitialize for Merge: '<S254>/Merge' */
  localB->Merge = 0U;

  /* SystemInitialize for Merge: '<S254>/Merge1' */
  localB->Merge1 = 0U;

  /* SystemInitialize for Merge: '<S254>/Merge2' */
  localB->Merge2 = 0;

  /* SystemInitialize for Merge: '<S254>/Merge3' */
  localB->Merge3 = 0U;
}

/*
 * Output and update for action system:
 *    '<S252>/Valid Halls'
 *    '<S274>/Valid Halls'
 *    '<S296>/Valid Halls'
 */
void mcb_pmsm_foc_hal_ValidHalls(uint16_T rtu_hallReading, uint16_T
  rtu_previousState, int16_T rtu_previous_direction, boolean_T
  *rty_directional_speed_valid_fla, int16_T *rty_direction, uint16_T
  *rty_inValidHall, rtB_ValidHalls_mcb_pmsm_foc_hal *localB)
{
  /* SwitchCase: '<S254>/Switch Case' */
  switch ((int32_T)rtu_hallReading) {
   case 5L:
    /* Outputs for IfAction SubSystem: '<S254>/If Action Subsystem' incorporates:
     *  ActionPort: '<S255>/Action Port'
     */
    /* Merge: '<S254>/Merge' incorporates:
     *  Constant: '<S255>/previous'
     *  SignalConversion generated from: '<S255>/Out1'
     */
    localB->Merge = 1U;

    /* Merge: '<S254>/Merge1' incorporates:
     *  Constant: '<S255>/next'
     *  SignalConversion generated from: '<S255>/Out2'
     */
    localB->Merge1 = 4U;

    /* End of Outputs for SubSystem: '<S254>/If Action Subsystem' */
    break;

   case 4L:
    /* Outputs for IfAction SubSystem: '<S254>/If Action Subsystem1' incorporates:
     *  ActionPort: '<S256>/Action Port'
     */
    /* Merge: '<S254>/Merge' incorporates:
     *  Constant: '<S256>/previous'
     *  SignalConversion generated from: '<S256>/Out1'
     */
    localB->Merge = 5U;

    /* Merge: '<S254>/Merge1' incorporates:
     *  Constant: '<S256>/next'
     *  SignalConversion generated from: '<S256>/Out2'
     */
    localB->Merge1 = 6U;

    /* End of Outputs for SubSystem: '<S254>/If Action Subsystem1' */
    break;

   case 6L:
    /* Outputs for IfAction SubSystem: '<S254>/If Action Subsystem2' incorporates:
     *  ActionPort: '<S257>/Action Port'
     */
    /* Merge: '<S254>/Merge' incorporates:
     *  Constant: '<S257>/previous'
     *  SignalConversion generated from: '<S257>/Out1'
     */
    localB->Merge = 4U;

    /* Merge: '<S254>/Merge1' incorporates:
     *  Constant: '<S257>/next'
     *  SignalConversion generated from: '<S257>/Out2'
     */
    localB->Merge1 = 2U;

    /* End of Outputs for SubSystem: '<S254>/If Action Subsystem2' */
    break;

   case 2L:
    /* Outputs for IfAction SubSystem: '<S254>/If Action Subsystem3' incorporates:
     *  ActionPort: '<S258>/Action Port'
     */
    /* Merge: '<S254>/Merge' incorporates:
     *  Constant: '<S258>/previous'
     *  SignalConversion generated from: '<S258>/Out1'
     */
    localB->Merge = 6U;

    /* Merge: '<S254>/Merge1' incorporates:
     *  Constant: '<S258>/next'
     *  SignalConversion generated from: '<S258>/Out2'
     */
    localB->Merge1 = 3U;

    /* End of Outputs for SubSystem: '<S254>/If Action Subsystem3' */
    break;

   case 3L:
    /* Outputs for IfAction SubSystem: '<S254>/If Action Subsystem4' incorporates:
     *  ActionPort: '<S259>/Action Port'
     */
    /* Merge: '<S254>/Merge' incorporates:
     *  Constant: '<S259>/previous'
     *  SignalConversion generated from: '<S259>/Out1'
     */
    localB->Merge = 2U;

    /* Merge: '<S254>/Merge1' incorporates:
     *  Constant: '<S259>/next'
     *  SignalConversion generated from: '<S259>/Out2'
     */
    localB->Merge1 = 1U;

    /* End of Outputs for SubSystem: '<S254>/If Action Subsystem4' */
    break;

   case 1L:
    /* Outputs for IfAction SubSystem: '<S254>/If Action Subsystem5' incorporates:
     *  ActionPort: '<S260>/Action Port'
     */
    /* Merge: '<S254>/Merge' incorporates:
     *  Constant: '<S260>/previous'
     *  SignalConversion generated from: '<S260>/Out1'
     */
    localB->Merge = 3U;

    /* Merge: '<S254>/Merge1' incorporates:
     *  Constant: '<S260>/next'
     *  SignalConversion generated from: '<S260>/Out2'
     */
    localB->Merge1 = 5U;

    /* End of Outputs for SubSystem: '<S254>/If Action Subsystem5' */
    break;

   default:
    /* no actions */
    break;
  }

  /* End of SwitchCase: '<S254>/Switch Case' */

  /* If: '<S254>/If' */
  if (rtu_previousState == localB->Merge) {
    /* Outputs for IfAction SubSystem: '<S254>/If Action Subsystem6' incorporates:
     *  ActionPort: '<S261>/Action Port'
     */
    /* Merge: '<S254>/Merge2' incorporates:
     *  Constant: '<S261>/Constant'
     *  SignalConversion generated from: '<S261>/direction'
     */
    localB->Merge2 = 1;

    /* Merge: '<S254>/Merge3' incorporates:
     *  Constant: '<S261>/Constant1'
     *  SignalConversion generated from: '<S261>/sequence_check'
     */
    localB->Merge3 = 0U;

    /* End of Outputs for SubSystem: '<S254>/If Action Subsystem6' */
  } else if (rtu_previousState == localB->Merge1) {
    /* Outputs for IfAction SubSystem: '<S254>/If Action Subsystem7' incorporates:
     *  ActionPort: '<S262>/Action Port'
     */
    /* Merge: '<S254>/Merge2' incorporates:
     *  Constant: '<S262>/Constant'
     *  SignalConversion generated from: '<S262>/direction'
     */
    localB->Merge2 = -1;

    /* Merge: '<S254>/Merge3' incorporates:
     *  Constant: '<S262>/Constant1'
     *  SignalConversion generated from: '<S262>/sequence_check'
     */
    localB->Merge3 = 0U;

    /* End of Outputs for SubSystem: '<S254>/If Action Subsystem7' */
  } else {
    /* Outputs for IfAction SubSystem: '<S254>/If Action Subsystem8' incorporates:
     *  ActionPort: '<S263>/Action Port'
     */
    /* Merge: '<S254>/Merge3' incorporates:
     *  Constant: '<S263>/Constant'
     *  SignalConversion generated from: '<S263>/sequence_check'
     */
    localB->Merge3 = 1U;

    /* End of Outputs for SubSystem: '<S254>/If Action Subsystem8' */
  }

  /* End of If: '<S254>/If' */

  /* SignalConversion: '<S254>/Signal Conversion' */
  *rty_inValidHall = localB->Merge3;

  /* SignalConversion: '<S254>/Signal Conversion1' */
  *rty_direction = localB->Merge2;

  /* Switch: '<S254>/Switch' incorporates:
   *  Constant: '<S254>/Constant'
   */
  if (localB->Merge3 != 0U) {
    *rty_directional_speed_valid_fla = false;
  } else {
    /* RelationalOperator: '<S254>/Relational Operator' */
    localB->RelationalOperator = (localB->Merge2 == rtu_previous_direction);
    *rty_directional_speed_valid_fla = localB->RelationalOperator;
  }

  /* End of Switch: '<S254>/Switch' */
}

/*
 * Output and update for action system:
 *    '<S252>/Bad hall (glitch or wrong connection)'
 *    '<S274>/Bad hall (glitch or wrong connection)'
 *    '<S296>/Bad hall (glitch or wrong connection)'
 */
void Badhallglitchorwrongconnect(int16_T rtu_previous_direction, uint16_T
  *rty_inValidHall, int16_T *rty_direction, boolean_T
  *rty_directional_speed_valid_fla)
{
  /* SignalConversion generated from: '<S253>/inValidHall' incorporates:
   *  Constant: '<S253>/Constant'
   */
  *rty_inValidHall = 1U;

  /* SignalConversion: '<S253>/Signal Conversion' */
  *rty_direction = rtu_previous_direction;

  /* SignalConversion generated from: '<S253>/directional_speed_valid_flag' incorporates:
   *  Constant: '<S253>/Constant1'
   */
  *rty_directional_speed_valid_fla = false;
}

/* System initialize for atomic system: */
void mcb_SPIMasterTransfer2_Init(rtDW_SPIMasterTransfer2_mcb_pms *localDW)
{
  uint32_T SPIPinsLoc;

  /* Start for MATLABSystem: '<S323>/SPI Master Transfer2' */
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
void mcb_pmsm_SPIMasterTransfer2(uint16_T rtu_0, rtB_SPIMasterTransfer2_mcb_pmsm
  *localB, rtDW_SPIMasterTransfer2_mcb_pms *localDW)
{
  uint16_T rdDataRaw;
  uint16_T status;

  /* MATLABSystem: '<S323>/SPI Master Transfer2' */
  MW_SPI_SetSlaveSelect(localDW->obj.MW_SPI_HANDLE, 0U, true);
  status = MW_SPI_SetFormat(localDW->obj.MW_SPI_HANDLE, 16U, MW_SPI_MODE_0,
    MW_SPI_MOST_SIGNIFICANT_BIT_FIRST);
  if (status == 0U) {
    MW_SPI_MasterWriteRead_8bits(localDW->obj.MW_SPI_HANDLE, &rtu_0, &rdDataRaw,
      1UL);
  }

  /* MATLABSystem: '<S323>/SPI Master Transfer2' */
  localB->SPIMasterTransfer2 = rdDataRaw;
}

/* Termination for atomic system: */
void mcb_SPIMasterTransfer2_Term(rtDW_SPIMasterTransfer2_mcb_pms *localDW)
{
  uint32_T SPIPinsLoc;

  /* Terminate for MATLABSystem: '<S323>/SPI Master Transfer2' */
  if (!localDW->obj.matlabCodegenIsDeleted) {
    localDW->obj.matlabCodegenIsDeleted = true;
    if ((localDW->obj.isInitialized == 1L) && localDW->obj.isSetupComplete) {
      SPIPinsLoc = MW_UNDEFINED_VALUE;
      MW_SPI_Close(localDW->obj.MW_SPI_HANDLE, SPIPinsLoc, SPIPinsLoc,
                   SPIPinsLoc, MW_UNDEFINED_VALUE);
    }
  }

  /* End of Terminate for MATLABSystem: '<S323>/SPI Master Transfer2' */
}

/* System initialize for atomic system: '<Root>/Speed Control' */
void mcb_pmsm__SpeedControl_Init(rtB_SpeedControl_mcb_pmsm_foc_h *localB,
  rtDW_SpeedControl_mcb_pmsm_foc_ *localDW)
{
  /* Start for Constant: '<S333>/Ki2' */
  localB->Ki2 = 0.0F;

  /* InitializeConditions for DiscreteIntegrator: '<S370>/Integrator' */
  localDW->Integrator_DSTATE = 0.0F;
  localDW->Integrator_PrevResetState = 0;
}

/* Output and update for atomic system: '<Root>/Speed Control' */
void mcb_pmsm_foc_h_SpeedControl(real32_T rtu_Speed_Ref_PU, real32_T
  rtu_Speed_Meas_PU, const boolean_T *rtd_Enable,
  rtB_SpeedControl_mcb_pmsm_foc_h *localB, rtDW_SpeedControl_mcb_pmsm_foc_
  *localDW)
{
  real32_T u0;

  /* Constant: '<S11>/Id_ref' */
  localB->Id_ref = 0.0F;

  /* DataStoreRead: '<S333>/Data Store Read2' */
  localB->DataStoreRead2 = *rtd_Enable;

  /* DataStoreRead: '<S334>/Data Store Read1' */
  localB->DataStoreRead1 = *rtd_Enable;

  /* Switch: '<S334>/Switch' */
  if (localB->DataStoreRead1) {
    /* Switch: '<S334>/Switch' */
    localB->Switch = rtu_Speed_Ref_PU;
  } else {
    /* Switch: '<S334>/Switch' */
    localB->Switch = rtu_Speed_Meas_PU;
  }

  /* End of Switch: '<S334>/Switch' */

  /* Product: '<S389>/Product' incorporates:
   *  Constant: '<S389>/Filter_Constant'
   */
  localB->Product = localB->Switch * 0.1F;

  /* UnitDelay: '<S389>/Unit Delay' */
  localB->UnitDelay = localDW->UnitDelay_DSTATE;

  /* Product: '<S389>/Product1' incorporates:
   *  Constant: '<S389>/One'
   */
  localB->Product1 = 0.9F * localB->UnitDelay;

  /* Sum: '<S389>/Add1' */
  localB->Add1 = localB->Product + localB->Product1;

  /* Sum: '<S333>/Sum' */
  localB->Sum = localB->Add1 - rtu_Speed_Meas_PU;

  /* Product: '<S375>/PProd Out' incorporates:
   *  Constant: '<S333>/Kp1'
   */
  localB->PProdOut = localB->Sum * 0.3F;

  /* Logic: '<S333>/Logical Operator' */
  localB->LogicalOperator = !localB->DataStoreRead2;

  /* Constant: '<S333>/Ki2' */
  localB->Ki2 = 0.0F;

  /* DiscreteIntegrator: '<S370>/Integrator' */
  if (localB->LogicalOperator || (localDW->Integrator_PrevResetState != 0)) {
    localDW->Integrator_DSTATE = 0.0F;
  }

  /* DiscreteIntegrator: '<S370>/Integrator' */
  localB->Integrator = localDW->Integrator_DSTATE;

  /* Sum: '<S379>/Sum' */
  localB->Sum_i = localB->PProdOut + localB->Integrator;

  /* DeadZone: '<S363>/DeadZone' */
  if (localB->Sum_i > 1.0F) {
    /* DeadZone: '<S363>/DeadZone' */
    localB->DeadZone = localB->Sum_i - 1.0F;
  } else if (localB->Sum_i >= -1.0F) {
    /* DeadZone: '<S363>/DeadZone' */
    localB->DeadZone = 0.0F;
  } else {
    /* DeadZone: '<S363>/DeadZone' */
    localB->DeadZone = localB->Sum_i - -1.0F;
  }

  /* End of DeadZone: '<S363>/DeadZone' */

  /* RelationalOperator: '<S361>/Relational Operator' incorporates:
   *  Constant: '<S361>/Clamping_zero'
   */
  localB->RelationalOperator = (localB->DeadZone != 0.0F);

  /* RelationalOperator: '<S361>/fix for DT propagation issue' incorporates:
   *  Constant: '<S361>/Clamping_zero'
   */
  localB->fixforDTpropagationissue = (localB->DeadZone > 0.0F);

  /* Switch: '<S361>/Switch1' */
  if (localB->fixforDTpropagationissue) {
    /* Switch: '<S361>/Switch1' incorporates:
     *  Constant: '<S361>/Constant'
     */
    localB->Switch1 = 1;
  } else {
    /* Switch: '<S361>/Switch1' incorporates:
     *  Constant: '<S361>/Constant2'
     */
    localB->Switch1 = -1;
  }

  /* End of Switch: '<S361>/Switch1' */

  /* Product: '<S367>/IProd Out' incorporates:
   *  Constant: '<S333>/Ki1'
   */
  localB->IProdOut = localB->Sum * 5.0E-6F;

  /* RelationalOperator: '<S361>/fix for DT propagation issue1' incorporates:
   *  Constant: '<S361>/Clamping_zero'
   */
  localB->fixforDTpropagationissue1 = (localB->IProdOut > 0.0F);

  /* Switch: '<S361>/Switch2' */
  if (localB->fixforDTpropagationissue1) {
    /* Switch: '<S361>/Switch2' incorporates:
     *  Constant: '<S361>/Constant3'
     */
    localB->Switch2 = 1;
  } else {
    /* Switch: '<S361>/Switch2' incorporates:
     *  Constant: '<S361>/Constant4'
     */
    localB->Switch2 = -1;
  }

  /* End of Switch: '<S361>/Switch2' */

  /* RelationalOperator: '<S361>/Equal1' incorporates:
   *  Switch: '<S361>/Switch1'
   *  Switch: '<S361>/Switch2'
   */
  localB->Equal1 = (localB->Switch1 == localB->Switch2);

  /* Logic: '<S361>/AND3' */
  localB->AND3 = (localB->RelationalOperator && localB->Equal1);

  /* Switch: '<S361>/Switch' */
  if (localB->AND3) {
    /* Switch: '<S361>/Switch' incorporates:
     *  Constant: '<S361>/Constant1'
     */
    localB->Switch_b = 0.0F;
  } else {
    /* Switch: '<S361>/Switch' */
    localB->Switch_b = localB->IProdOut;
  }

  /* End of Switch: '<S361>/Switch' */

  /* Saturate: '<S377>/Saturation' */
  u0 = localB->Sum_i;
  if (u0 > 1.0F) {
    /* Saturate: '<S377>/Saturation' */
    localB->Saturation = 1.0F;
  } else if (u0 < -1.0F) {
    /* Saturate: '<S377>/Saturation' */
    localB->Saturation = -1.0F;
  } else {
    /* Saturate: '<S377>/Saturation' */
    localB->Saturation = u0;
  }

  /* End of Saturate: '<S377>/Saturation' */

  /* Update for UnitDelay: '<S389>/Unit Delay' */
  localDW->UnitDelay_DSTATE = localB->Add1;

  /* Update for DiscreteIntegrator: '<S370>/Integrator' */
  localDW->Integrator_DSTATE += localB->Switch_b;
  localDW->Integrator_PrevResetState = (int16_T)localB->LogicalOperator;
}

/* Model step function for TID0 */
void mcb_pmsm_foc_hall_f28379d_step0(void) /* Sample time: [5.0E-5s, 0.0s] */
{
  {                                    /* Sample time: [5.0E-5s, 0.0s] */
    rate_monotonic_scheduler();
  }

  /* RateTransition: '<Root>/RT1' */
  mcb_pmsm_foc_hall_f28379d_DWork.RT1_semaphoreTaken =
    mcb_pmsm_foc_hall_f28379d_DWork.RT1_ActiveBufIdx;

  /* RateTransition: '<Root>/RT1' */
  mcb_pmsm_foc_hall_f28379d_B.RT1 =
    mcb_pmsm_foc_hall_f28379d_DWork.RT1_Buffer[mcb_pmsm_foc_hall_f28379d_DWork.RT1_semaphoreTaken];

  /* RateTransition: '<Root>/RT6' */
  mcb_pmsm_foc_hall_f28379d_DWork.RT6_semaphoreTaken =
    mcb_pmsm_foc_hall_f28379d_DWork.RT6_ActiveBufIdx;

  /* RateTransition: '<Root>/RT6' */
  mcb_pmsm_foc_hall_f28379d_B.RT6 =
    mcb_pmsm_foc_hall_f28379d_DWork.RT6_Buffer[mcb_pmsm_foc_hall_f28379d_DWork.RT6_semaphoreTaken];

  /* RateTransition: '<Root>/RT7' */
  mcb_pmsm_foc_hall_f28379d_B.RT7 = mcb_pmsm_foc_hall_f28379d_B.RT1;

  /* Outputs for Atomic SubSystem: '<Root>/Speed Control' */
  mcb_pmsm_foc_h_SpeedControl(mcb_pmsm_foc_hall_f28379d_B.RT6,
    mcb_pmsm_foc_hall_f28379d_B.RT7, &mcb_pmsm_foc_hall_f28379d_DWork.Enable,
    &mcb_pmsm_foc_hall_f28379d_B.SpeedControl,
    &mcb_pmsm_foc_hall_f28379d_DWork.SpeedControl);

  /* End of Outputs for SubSystem: '<Root>/Speed Control' */

  /* RateTransition: '<Root>/RT2' */
  mcb_pmsm_foc_hall_f28379d_DWork.RT2_Buffer
    [(mcb_pmsm_foc_hall_f28379d_DWork.RT2_ActiveBufIdx == 0) << 1U] =
    mcb_pmsm_foc_hall_f28379d_B.SpeedControl.Id_ref;
  mcb_pmsm_foc_hall_f28379d_DWork.RT2_Buffer[1 +
    ((mcb_pmsm_foc_hall_f28379d_DWork.RT2_ActiveBufIdx == 0) << 1U)] =
    mcb_pmsm_foc_hall_f28379d_B.SpeedControl.Saturation;
  mcb_pmsm_foc_hall_f28379d_DWork.RT2_ActiveBufIdx =
    (mcb_pmsm_foc_hall_f28379d_DWork.RT2_ActiveBufIdx == 0);
}

/* Model step function for TID1 */
void mcb_pmsm_foc_hall_f28379d_step1(void) /* Sample time: [0.5s, 0.0s] */
{
  /* Outputs for Atomic SubSystem: '<Root>/Heartbeat LED' */
  /* S-Function (c280xgpio_do): '<S325>/Digital Output2' incorporates:
   *  Constant: '<S8>/RED_LED'
   */
  {
    GpioDataRegs.GPBTOGGLE.bit.GPIO34 = (uint16_T)((1U) != 0);
  }

  /* End of Outputs for SubSystem: '<Root>/Heartbeat LED' */
}

/* Model step function for TID2 */
void mcb_pmsm_foc_hall_f28379d_step2(void) /* Sample time: [1.0s, 0.0s] */
{
  /* (no output/update code required) */
}

/* Model initialize function */
void mcb_pmsm_foc_hall_f28379d_initialize(void)
{
  /* Registration code */

  /* initialize non-finites */
  rt_InitInfAndNaN(sizeof(real_T));

  /* initialize real-time model */
  (void) memset((void *)mcb_pmsm_foc_hall_f28379d_M, 0,
                sizeof(RT_MODEL_mcb_pmsm_foc_hall_f283));

  /* block I/O */
  (void) memset(((void *) &mcb_pmsm_foc_hall_f28379d_B), 0,
                sizeof(BlockIO_mcb_pmsm_foc_hall_f2837));

  {
    mcb_pmsm_foc_hall_f28379d_B.RT1 = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.RT6 = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.RT7 = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.RT2[0] = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.RT2[1] = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.SCIReceive[0] = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.SCIReceive[1] = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.Merge_d = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.Merge1 = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.Switch_h = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.Merge_m = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.Floor = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.Add = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.GetADCVoltage[0] = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.GetADCVoltage[1] = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.GetCurrents[0] = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.GetCurrents[1] = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.PU_Conversion[0] = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.PU_Conversion[1] = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.Merge_mm = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.indexing = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.Lookup[0] = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.Lookup[1] = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.Lookup[2] = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.Lookup[3] = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.Sum3 = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.DataTypeConversion1 = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.Sum2 = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.Product = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.Sum4 = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.Sum5 = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.Product1 = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.Sum6 = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.Sum_g = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.PProdOut = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.Kp1 = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.Integrator = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.Sum_m = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.Saturation = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.Sum_b = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.PProdOut_b = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.Ki1 = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.Integrator_o = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.Sum_h = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.Saturation_j = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.Switch_j = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.Product_b = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.Product_e = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.Product1_b = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.Sum1 = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.Merge_do[0] = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.Merge_do[1] = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.DeadZone = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.IProdOut = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.Switch_b = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.DeadZone_g = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.IProdOut_h = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.Switch_ls = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.Merge_p = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.indexing_i = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.DataTypeConversion1_f = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.Lookup_f[0] = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.Lookup_f[1] = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.Lookup_f[2] = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.Lookup_f[3] = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.Sum3_c = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.Sum2_p = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.Product_d = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.Sum5_k = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.Product1_p = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.Sum4_j = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.Sum6_e = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.DataTypeConversion = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.Switch_f = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.Speed_PU = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.sqrt3_by_two = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.one_by_two = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.add_c = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.add_b = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.Min_a = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.Max_h = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.Add_i = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.one_by_two_b = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.Add3 = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.Add2 = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.Add1 = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.Gain[0] = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.Gain[1] = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.Gain[2] = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.Gain_m[0] = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.Gain_m[1] = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.Gain_m[2] = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.PWM_Duty_Cycles[0] = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.PWM_Duty_Cycles[1] = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.PWM_Duty_Cycles[2] = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.currentSpeedData = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.Divide = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.SpeedGain = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.Merge1_l = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.Saturation_k = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.Merge_c = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.countData = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.currentSpeedData_k = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.Divide_f = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.countData_o = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.previousSpeedData = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.Divide_i = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.currentSpeedData_o = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.Divide1 = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.Sum_n = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.Gain1 = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.Sum1_i = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.Product_i = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.Merge1_la = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.Merge1_d = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.acos_e = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.bsin = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.sum_Ds = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.bcos = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.asin_j = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.sum_Qs = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.Switch_fd[0] = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.Switch_fd[1] = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.algDD_o1 = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.algDD_o2 = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.qcos = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.dsin = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.sum_beta = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.dcos = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.qsin = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.sum_alpha = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.Switch_k[0] = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.Switch_k[1] = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.algDD_o1_c = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.algDD_o2_e = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.Product_ie[0] = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.Product_ie[1] = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.SquareRoot = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.Switch_o = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.Reciprocal = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.Switch_hp[0] = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.Switch_hp[1] = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.Switch2 = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.Product_a = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.Sum_nl = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.Product2 = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.Merge_me = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.Gain_e = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.Switch_c = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.Switch1 = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.Sqrt = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.Gain_c = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.a_plus_2b = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.one_by_sqrt3 = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.algDD_o1_a = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.algDD_o2_n = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.SpeedControl.Id_ref = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.SpeedControl.Switch = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.SpeedControl.Product = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.SpeedControl.UnitDelay = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.SpeedControl.Product1 = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.SpeedControl.Add1 = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.SpeedControl.Sum = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.SpeedControl.PProdOut = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.SpeedControl.Ki2 = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.SpeedControl.Integrator = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.SpeedControl.Sum_i = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.SpeedControl.DeadZone = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.SpeedControl.IProdOut = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.SpeedControl.Switch_b = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.SpeedControl.Saturation = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.IfActionSubsystem1_i.Convert_back = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.IfActionSubsystem_n.Convert_back = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.IfActionSubsystem1.Convert_back = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.IfActionSubsystem.Convert_back = 0.0F;
  }

  /* states (dwork) */
  (void) memset((void *)&mcb_pmsm_foc_hall_f28379d_DWork, 0,
                sizeof(D_Work_mcb_pmsm_foc_hall_f28379));
  mcb_pmsm_foc_hall_f28379d_DWork.Integrator_DSTATE = 0.0F;
  mcb_pmsm_foc_hall_f28379d_DWork.Integrator_DSTATE_j = 0.0F;
  mcb_pmsm_foc_hall_f28379d_DWork.RT1_Buffer[0] = 0.0F;
  mcb_pmsm_foc_hall_f28379d_DWork.RT1_Buffer[1] = 0.0F;
  mcb_pmsm_foc_hall_f28379d_DWork.RT6_Buffer[0] = 0.0F;
  mcb_pmsm_foc_hall_f28379d_DWork.RT6_Buffer[1] = 0.0F;
  mcb_pmsm_foc_hall_f28379d_DWork.RT2_Buffer[0] = 0.0F;
  mcb_pmsm_foc_hall_f28379d_DWork.RT2_Buffer[1] = 0.0F;
  mcb_pmsm_foc_hall_f28379d_DWork.RT2_Buffer[2] = 0.0F;
  mcb_pmsm_foc_hall_f28379d_DWork.RT2_Buffer[3] = 0.0F;
  mcb_pmsm_foc_hall_f28379d_DWork.Speed_ref = 0.0F;
  mcb_pmsm_foc_hall_f28379d_DWork.SpeedControl.UnitDelay_DSTATE = 0.0F;
  mcb_pmsm_foc_hall_f28379d_DWork.SpeedControl.Integrator_DSTATE = 0.0F;

  {
    uint16_T s317_iter;

    /* Start for DataStoreMemory: '<Root>/Data Store Memory5' */
    mcb_pmsm_foc_hall_f28379d_DWork.IaOffset = 2295U;

    /* Start for DataStoreMemory: '<Root>/Data Store Memory6' */
    mcb_pmsm_foc_hall_f28379d_DWork.IbOffset = 2286U;

    /* Start for DataStoreMemory: '<Root>/Data Store Memory7' */
    mcb_pmsm_foc_hall_f28379d_DWork.Debug_signals = 5U;

    /* SystemInitialize for S-Function (HardwareInterrupt_sfun): '<S239>/Hardware Interrupt' incorporates:
     *  SubSystem: '<Root>/Hall Sensor A'
     */
    /* System initialize for function-call system: '<Root>/Hall Sensor A' */

    /* SystemInitialize for IfAction SubSystem: '<S252>/Valid Halls' */
    mcb_pmsm_fo_ValidHalls_Init(&mcb_pmsm_foc_hall_f28379d_B.ValidHalls);

    /* End of SystemInitialize for SubSystem: '<S252>/Valid Halls' */

    /* SystemInitialize for S-Function (HardwareInterrupt_sfun): '<S241>/Hardware Interrupt' incorporates:
     *  SubSystem: '<Root>/Hall Sensor B'
     */
    /* System initialize for function-call system: '<Root>/Hall Sensor B' */

    /* SystemInitialize for IfAction SubSystem: '<S274>/Valid Halls' */
    mcb_pmsm_fo_ValidHalls_Init(&mcb_pmsm_foc_hall_f28379d_B.ValidHalls_h);

    /* End of SystemInitialize for SubSystem: '<S274>/Valid Halls' */

    /* SystemInitialize for S-Function (HardwareInterrupt_sfun): '<S243>/Hardware Interrupt' incorporates:
     *  SubSystem: '<Root>/Hall Sensor C'
     */
    /* System initialize for function-call system: '<Root>/Hall Sensor C' */

    /* SystemInitialize for IfAction SubSystem: '<S296>/Valid Halls' */
    mcb_pmsm_fo_ValidHalls_Init(&mcb_pmsm_foc_hall_f28379d_B.ValidHalls_hi);

    /* End of SystemInitialize for SubSystem: '<S296>/Valid Halls' */

    /* SystemInitialize for S-Function (HardwareInterrupt_sfun): '<S237>/Hardware Interrupt' incorporates:
     *  SubSystem: '<Root>/Current Control'
     */
    mcb_pms_CurrentControl_Init();

    /* SystemInitialize for S-Function (HardwareInterrupt_sfun): '<S245>/Hardware Interrupt' incorporates:
     *  SubSystem: '<Root>/Serial Receive'
     */
    /* System initialize for function-call system: '<Root>/Serial Receive' */

    /* Start for S-Function (c28xsci_rx): '<S332>/SCI Receive' */

    /* Initialize out port */
    {
      mcb_pmsm_foc_hall_f28379d_B.SCIReceive[0] = (real32_T)0.0;
      mcb_pmsm_foc_hall_f28379d_B.SCIReceive[1] = (real32_T)0.0;
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
    mcb_pmsm__SpeedControl_Init(&mcb_pmsm_foc_hall_f28379d_B.SpeedControl,
      &mcb_pmsm_foc_hall_f28379d_DWork.SpeedControl);

    /* End of SystemInitialize for SubSystem: '<Root>/Speed Control' */

    /* SystemInitialize for Atomic SubSystem: '<Root>/Heartbeat LED' */
    /* Start for S-Function (c280xgpio_do): '<S325>/Digital Output2' */
    EALLOW;
    GpioCtrlRegs.GPBMUX1.all &= 0xFFFFFFCFU;
    GpioCtrlRegs.GPBDIR.all |= 0x4U;
    EDIS;

    /* End of SystemInitialize for SubSystem: '<Root>/Heartbeat LED' */

    /* SystemInitialize for Atomic SubSystem: '<Root>/Hardware Init' */
    /* Start for S-Function (c280xgpio_do): '<S315>/DRV830x Enable' */
    EALLOW;
    GpioCtrlRegs.GPDMUX2.all &= 0xFCFFFFFFU;
    GpioCtrlRegs.GPDDIR.all |= 0x10000000U;
    EDIS;

    /* SystemInitialize for Enabled SubSystem: '<S315>/ADC Gain Setting' */
    mcb_SPIMasterTransfer2_Init
      (&mcb_pmsm_foc_hall_f28379d_DWork.SPIMasterTransfer2);
    mcb_SPIMasterTransfer2_Init
      (&mcb_pmsm_foc_hall_f28379d_DWork.SPIMasterTransfer3);

    /* End of SystemInitialize for SubSystem: '<S315>/ADC Gain Setting' */

    /* SystemInitialize for Enabled SubSystem: '<S313>/Calculate ADC Offset ' */
    /* SystemInitialize for Iterator SubSystem: '<S314>/For Iterator Subsystem' */
    /* Start for S-Function (c2802xadc): '<S317>/ADC_A_IN0' */
    if (MW_adcCInitFlag == 0U) {
      InitAdcC();
      MW_adcCInitFlag = 1U;
    }

    config_ADCC_SOC2 ();

    /* Start for S-Function (c2802xadc): '<S317>/ADC_B_IN0' */
    if (MW_adcBInitFlag == 0U) {
      InitAdcB();
      MW_adcBInitFlag = 1U;
    }

    config_ADCB_SOC2 ();

    /* End of SystemInitialize for SubSystem: '<S314>/For Iterator Subsystem' */
    /* End of SystemInitialize for SubSystem: '<S313>/Calculate ADC Offset ' */
    /* End of SystemInitialize for SubSystem: '<Root>/Hardware Init' */

    /* Outputs for Atomic SubSystem: '<Root>/Hardware Init' */
    /* Outputs for Enabled SubSystem: '<S315>/ADC Gain Setting' incorporates:
     *  EnablePort: '<S323>/Enable'
     */
    /* Constant: '<S7>/6PWM_Mode' */
    mcb_pmsm_SPIMasterTransfer2(14870U,
      &mcb_pmsm_foc_hall_f28379d_B.SPIMasterTransfer2,
      &mcb_pmsm_foc_hall_f28379d_DWork.SPIMasterTransfer2);

    /* Constant: '<S7>/ADC_Gain_Setting' */
    mcb_pmsm_SPIMasterTransfer2(20501U,
      &mcb_pmsm_foc_hall_f28379d_B.SPIMasterTransfer3,
      &mcb_pmsm_foc_hall_f28379d_DWork.SPIMasterTransfer3);

    /* End of Outputs for SubSystem: '<S315>/ADC Gain Setting' */

    /* Switch: '<S315>/Switch' incorporates:
     *  Constant: '<S315>/Constant'
     */
    mcb_pmsm_foc_hall_f28379d_B.Switch_bt = true;

    /* S-Function (c280xgpio_do): '<S315>/DRV830x Enable' */
    {
      if (mcb_pmsm_foc_hall_f28379d_B.Switch_bt) {
        GpioDataRegs.GPDSET.bit.GPIO124 = 1U;
      } else {
        GpioDataRegs.GPDCLEAR.bit.GPIO124 = 1U;
      }
    }

    /* Outputs for Enabled SubSystem: '<S313>/Calculate ADC Offset ' incorporates:
     *  EnablePort: '<S314>/Enable'
     */
    /* Outputs for Iterator SubSystem: '<S314>/For Iterator Subsystem' incorporates:
     *  ForIterator: '<S317>/For Iterator'
     */
    for (s317_iter = 1U; s317_iter < 17U; s317_iter++) {
      /* Outputs for Iterator SubSystem: '<S314>/For Iterator Subsystem' incorporates:
       *  ForIterator: '<S317>/For Iterator'
       */
      mcb_pmsm_foc_hall_f28379d_B.ForIterator = s317_iter;

      /* S-Function (c2802xadc): '<S317>/ADC_A_IN0' */
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

        mcb_pmsm_foc_hall_f28379d_B.ADC_A_IN0 = (AdccResultRegs.ADCRESULT2);
      }

      /* S-Function (c2802xadc): '<S317>/ADC_B_IN0' */
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

        mcb_pmsm_foc_hall_f28379d_B.ADC_B_IN0 = (AdcbResultRegs.ADCRESULT2);
      }

      /* If: '<S317>/If' */
      if (mcb_pmsm_foc_hall_f28379d_B.ForIterator > 8U) {
        /* Outputs for IfAction SubSystem: '<S317>/If Action Subsystem' incorporates:
         *  ActionPort: '<S322>/Action Port'
         */
        /* Memory: '<S322>/Memory' */
        mcb_pmsm_foc_hall_f28379d_B.Memory =
          mcb_pmsm_foc_hall_f28379d_DWork.Memory_PreviousInput;

        /* Sum: '<S322>/Sum' */
        mcb_pmsm_foc_hall_f28379d_B.Sum_i =
          mcb_pmsm_foc_hall_f28379d_B.ADC_A_IN0 +
          mcb_pmsm_foc_hall_f28379d_B.Memory;

        /* Memory: '<S322>/Memory1' */
        mcb_pmsm_foc_hall_f28379d_B.Memory1 =
          mcb_pmsm_foc_hall_f28379d_DWork.Memory1_PreviousInput;

        /* Sum: '<S322>/Sum1' */
        mcb_pmsm_foc_hall_f28379d_B.Sum1_j =
          mcb_pmsm_foc_hall_f28379d_B.ADC_B_IN0 +
          mcb_pmsm_foc_hall_f28379d_B.Memory1;

        /* Update for Memory: '<S322>/Memory' */
        mcb_pmsm_foc_hall_f28379d_DWork.Memory_PreviousInput =
          mcb_pmsm_foc_hall_f28379d_B.Sum_i;

        /* Update for Memory: '<S322>/Memory1' */
        mcb_pmsm_foc_hall_f28379d_DWork.Memory1_PreviousInput =
          mcb_pmsm_foc_hall_f28379d_B.Sum1_j;

        /* End of Outputs for SubSystem: '<S317>/If Action Subsystem' */
      }

      /* End of If: '<S317>/If' */
    }

    /* End of Outputs for SubSystem: '<S314>/For Iterator Subsystem' */

    /* Product: '<S314>/Divide' incorporates:
     *  Constant: '<S314>/Constant'
     */
    mcb_pmsm_foc_hall_f28379d_B.Divide_ir = (uint16_T)((real_T)
      mcb_pmsm_foc_hall_f28379d_B.Sum_i / 8.0);

    /* If: '<S314>/If' incorporates:
     *  Constant: '<S314>/Constant1'
     *  Constant: '<S314>/Constant2'
     */
    if ((mcb_pmsm_foc_hall_f28379d_B.Divide_ir > 1500U) &&
        (mcb_pmsm_foc_hall_f28379d_B.Divide_ir < 2500U)) {
      /* Outputs for IfAction SubSystem: '<S314>/If Action Subsystem' incorporates:
       *  ActionPort: '<S318>/Action Port'
       */
      /* DataStoreWrite: '<S318>/Data Store Write1' */
      mcb_pmsm_foc_hall_f28379d_DWork.IaOffset =
        mcb_pmsm_foc_hall_f28379d_B.Divide_ir;

      /* End of Outputs for SubSystem: '<S314>/If Action Subsystem' */
    } else {
      /* Outputs for IfAction SubSystem: '<S314>/If Action Subsystem1' incorporates:
       *  ActionPort: '<S319>/Action Port'
       */
      /* DataStoreWrite: '<S319>/Data Store Write1' incorporates:
       *  Constant: '<S319>/Constant'
       */
      mcb_pmsm_foc_hall_f28379d_DWork.IaOffset = 2295U;

      /* End of Outputs for SubSystem: '<S314>/If Action Subsystem1' */
    }

    /* End of If: '<S314>/If' */

    /* Product: '<S314>/Divide1' incorporates:
     *  Constant: '<S314>/Constant'
     */
    mcb_pmsm_foc_hall_f28379d_B.Divide1_e = (uint16_T)((real_T)
      mcb_pmsm_foc_hall_f28379d_B.Sum1_j / 8.0);

    /* If: '<S314>/If1' incorporates:
     *  Constant: '<S314>/Constant1'
     *  Constant: '<S314>/Constant2'
     */
    if ((mcb_pmsm_foc_hall_f28379d_B.Divide1_e > 1500U) &&
        (mcb_pmsm_foc_hall_f28379d_B.Divide1_e < 2500U)) {
      /* Outputs for IfAction SubSystem: '<S314>/If Action Subsystem2' incorporates:
       *  ActionPort: '<S320>/Action Port'
       */
      /* DataStoreWrite: '<S320>/Data Store Write2' */
      mcb_pmsm_foc_hall_f28379d_DWork.IbOffset =
        mcb_pmsm_foc_hall_f28379d_B.Divide1_e;

      /* End of Outputs for SubSystem: '<S314>/If Action Subsystem2' */
    } else {
      /* Outputs for IfAction SubSystem: '<S314>/If Action Subsystem3' incorporates:
       *  ActionPort: '<S321>/Action Port'
       */
      /* DataStoreWrite: '<S321>/Data Store Write2' incorporates:
       *  Constant: '<S321>/Constant1'
       */
      mcb_pmsm_foc_hall_f28379d_DWork.IbOffset = 2286U;

      /* End of Outputs for SubSystem: '<S314>/If Action Subsystem3' */
    }

    /* End of If: '<S314>/If1' */
    /* End of Outputs for SubSystem: '<S313>/Calculate ADC Offset ' */

    /* Logic: '<S313>/NOT' */
    mcb_pmsm_foc_hall_f28379d_B.NOT = false;

    /* Outputs for Enabled SubSystem: '<S313>/Default ADC Offset' incorporates:
     *  EnablePort: '<S316>/Enable'
     */
    if (mcb_pmsm_foc_hall_f28379d_B.NOT) {
      /* DataStoreWrite: '<S316>/Data Store Write1' incorporates:
       *  Constant: '<S316>/Constant'
       */
      mcb_pmsm_foc_hall_f28379d_DWork.IaOffset = 2295U;

      /* DataStoreWrite: '<S316>/Data Store Write2' incorporates:
       *  Constant: '<S316>/Constant1'
       */
      mcb_pmsm_foc_hall_f28379d_DWork.IbOffset = 2286U;
    }

    /* End of Outputs for SubSystem: '<S313>/Default ADC Offset' */
    /* End of Outputs for SubSystem: '<Root>/Hardware Init' */
  }
}

/* Model terminate function */
void mcb_pmsm_foc_hall_f28379d_terminate(void)
{
  /* Terminate for Atomic SubSystem: '<Root>/Hardware Init' */
  /* Terminate for Enabled SubSystem: '<S315>/ADC Gain Setting' */
  mcb_SPIMasterTransfer2_Term
    (&mcb_pmsm_foc_hall_f28379d_DWork.SPIMasterTransfer2);
  mcb_SPIMasterTransfer2_Term
    (&mcb_pmsm_foc_hall_f28379d_DWork.SPIMasterTransfer3);

  /* End of Terminate for SubSystem: '<S315>/ADC Gain Setting' */
  /* End of Terminate for SubSystem: '<Root>/Hardware Init' */
}

void mcb_pmsm_foc_hall_f28379d_configure_interrupts(void)
{
  /* Register interrupt service routine */
  HWI_TIC28x_ConfigureIRQ(56,&ECAP1_INT,0);
  HWI_TIC28x_EnableIRQ(56);

  /* Register interrupt service routine */
  HWI_TIC28x_ConfigureIRQ(57,&ECAP2_INT,0);
  HWI_TIC28x_EnableIRQ(57);

  /* Register interrupt service routine */
  HWI_TIC28x_ConfigureIRQ(58,&ECAP3_INT,0);
  HWI_TIC28x_EnableIRQ(58);

  /* Register interrupt service routine */
  HWI_TIC28x_ConfigureIRQ(33,&ADCB1_INT,1);
  HWI_TIC28x_EnableIRQ(33);

  /* Register interrupt service routine */
  HWI_TIC28x_ConfigureIRQ(96,&SCIA_RX_INT,1);
  HWI_TIC28x_EnableIRQ(96);
}

/* Hardware Interrupt Block: '<S237>/Hardware Interrupt' */
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
      tmp = mcb_pmsm_foc_hall_f28379d_DWork.RT2_ActiveBufIdx << 1U;
      mcb_pmsm_foc_hall_f28379d_B.RT2[0] =
        mcb_pmsm_foc_hall_f28379d_DWork.RT2_Buffer[tmp];
      mcb_pmsm_foc_hall_f28379d_B.RT2[1] =
        mcb_pmsm_foc_hall_f28379d_DWork.RT2_Buffer[tmp + 1];

      /* S-Function (HardwareInterrupt_sfun): '<S237>/Hardware Interrupt' */
      mcb_pmsm_foc_CurrentControl();

      /* End of Outputs for S-Function (HardwareInterrupt_sfun): '<S237>/Hardware Interrupt' */

      /* RateTransition: '<Root>/RT1' */
      mcb_pmsm_foc_hall_f28379d_DWork.RT1_Buffer[mcb_pmsm_foc_hall_f28379d_DWork.RT1_semaphoreTaken
        == 0] = mcb_pmsm_foc_hall_f28379d_B.Speed_PU;
      mcb_pmsm_foc_hall_f28379d_DWork.RT1_ActiveBufIdx =
        (mcb_pmsm_foc_hall_f28379d_DWork.RT1_semaphoreTaken == 0);
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

/* Hardware Interrupt Block: '<S239>/Hardware Interrupt' */
interrupt void ECAP1_INT(void)
{
  /* Event: Default Event */
  if (1 == runModel) {
    {
      /* S-Function (HardwareInterrupt_sfun): '<S239>/Hardware Interrupt' */

      /* Output and update for function-call system: '<Root>/Hall Sensor A' */

      /* DataStoreRead: '<S4>/Data Store Read' */
      mcb_pmsm_foc_hall_f28379d_B.DataStoreRead_p =
        mcb_pmsm_foc_hall_f28379d_DWork.GlobalHallState;

      /* S-Function (memorycopy): '<S266>/Read GPIO DAT register' */
      {
        uint32_T *memindsrc6 = (uint32_T *) (&GpioDataRegs.GPBDAT.all);
        uint32_T *meminddst6 = (uint32_T *)
          (&mcb_pmsm_foc_hall_f28379d_B.ReadGPIODATregister_g);
        *(uint32_T *) (meminddst6) = *(uint32_T *) (memindsrc6);
      }

      /* S-Function (sfix_bitop): '<S266>/Hall_C' */
      mcb_pmsm_foc_hall_f28379d_B.Hall_C_n =
        mcb_pmsm_foc_hall_f28379d_B.ReadGPIODATregister_g & 33554432UL;

      /* ArithShift: '<S266>/Shift Arithmetic' incorporates:
       *  S-Function (sfix_bitop): '<S266>/Hall_C'
       */
      mcb_pmsm_foc_hall_f28379d_B.ShiftArithmetic_e =
        mcb_pmsm_foc_hall_f28379d_B.Hall_C_n >> 23U;

      /* S-Function (sfix_bitop): '<S266>/Hall_B' */
      mcb_pmsm_foc_hall_f28379d_B.Hall_B_i =
        mcb_pmsm_foc_hall_f28379d_B.ReadGPIODATregister_g & 8388608UL;

      /* ArithShift: '<S266>/Shift Arithmetic1' incorporates:
       *  S-Function (sfix_bitop): '<S266>/Hall_B'
       */
      mcb_pmsm_foc_hall_f28379d_B.ShiftArithmetic1_jb =
        mcb_pmsm_foc_hall_f28379d_B.Hall_B_i >> 22U;

      /* S-Function (sfix_bitop): '<S266>/Hall_A' */
      mcb_pmsm_foc_hall_f28379d_B.Hall_A_k =
        mcb_pmsm_foc_hall_f28379d_B.ReadGPIODATregister_g & 4194304UL;

      /* ArithShift: '<S266>/Shift Arithmetic2' incorporates:
       *  S-Function (sfix_bitop): '<S266>/Hall_A'
       */
      mcb_pmsm_foc_hall_f28379d_B.ShiftArithmetic2_i =
        mcb_pmsm_foc_hall_f28379d_B.Hall_A_k >> 22U;

      /* S-Function (sfix_bitop): '<S266>/Bitwise Operator2' */
      mcb_pmsm_foc_hall_f28379d_B.BitwiseOperator2_n = (uint32_T)((int16_T)
        mcb_pmsm_foc_hall_f28379d_B.ShiftArithmetic_e | (int16_T)
        mcb_pmsm_foc_hall_f28379d_B.ShiftArithmetic1_jb | (int16_T)
        mcb_pmsm_foc_hall_f28379d_B.ShiftArithmetic2_i);

      /* DataTypeConversion: '<S247>/Data Type Conversion1' */
      mcb_pmsm_foc_hall_f28379d_B.DataTypeConversion1_d = (uint16_T)
        mcb_pmsm_foc_hall_f28379d_B.BitwiseOperator2_n;

      /* DataTypeConversion: '<S247>/Data Type Conversion2' */
      mcb_pmsm_foc_hall_f28379d_B.DataTypeConversion2_c = (uint16_T)
        mcb_pmsm_foc_hall_f28379d_B.DataStoreRead_p;

      /* DataStoreRead: '<S4>/Data Store Read1' */
      mcb_pmsm_foc_hall_f28379d_B.DataStoreRead1_o =
        mcb_pmsm_foc_hall_f28379d_DWork.GlobalDirection;

      /* SwitchCase: '<S247>/Detects if the halls reading is valid' */
      switch ((int32_T)mcb_pmsm_foc_hall_f28379d_B.DataTypeConversion1_d) {
       case 5L:
       case 4L:
       case 6L:
       case 2L:
       case 3L:
       case 1L:
        /* Outputs for IfAction SubSystem: '<S252>/Valid Halls' incorporates:
         *  ActionPort: '<S254>/Action Port'
         */
        mcb_pmsm_foc_hal_ValidHalls
          (mcb_pmsm_foc_hall_f28379d_B.DataTypeConversion1_d,
           mcb_pmsm_foc_hall_f28379d_B.DataTypeConversion2_c,
           mcb_pmsm_foc_hall_f28379d_B.DataStoreRead1_o,
           &mcb_pmsm_foc_hall_f28379d_B.Merge3_m,
           &mcb_pmsm_foc_hall_f28379d_B.Merge1_kl,
           &mcb_pmsm_foc_hall_f28379d_B.Merge_k,
           &mcb_pmsm_foc_hall_f28379d_B.ValidHalls);

        /* End of Outputs for SubSystem: '<S252>/Valid Halls' */
        break;

       default:
        /* Outputs for IfAction SubSystem: '<S252>/Bad hall (glitch or wrong connection)' incorporates:
         *  ActionPort: '<S253>/Action Port'
         */
        Badhallglitchorwrongconnect(mcb_pmsm_foc_hall_f28379d_B.DataStoreRead1_o,
          &mcb_pmsm_foc_hall_f28379d_B.Merge_k,
          &mcb_pmsm_foc_hall_f28379d_B.Merge1_kl,
          &mcb_pmsm_foc_hall_f28379d_B.Merge3_m);

        /* End of Outputs for SubSystem: '<S252>/Bad hall (glitch or wrong connection)' */
        break;
      }

      /* End of SwitchCase: '<S247>/Detects if the halls reading is valid' */

      /* DataTypeConversion: '<S252>/Data Type Conversion' */
      mcb_pmsm_foc_hall_f28379d_B.DataTypeConversion_p =
        mcb_pmsm_foc_hall_f28379d_B.Merge3_m;

      /* DataStoreWrite: '<S4>/Data Store Write' */
      mcb_pmsm_foc_hall_f28379d_DWork.GlobalSpeedValidity =
        mcb_pmsm_foc_hall_f28379d_B.DataTypeConversion_p;

      /* DataStoreWrite: '<S4>/Data Store Write1' */
      mcb_pmsm_foc_hall_f28379d_DWork.GlobalDirection =
        mcb_pmsm_foc_hall_f28379d_B.Merge1_kl;

      /* DataStoreWrite: '<S4>/Data Store Write2' incorporates:
       *  Constant: '<S247>/Constant'
       */
      mcb_pmsm_foc_hall_f28379d_DWork.HallStateChangeFlag = 1U;

      /* S-Function (c280xcap): '<S267>/eCAP' */
      mcb_pmsm_foc_hall_f28379d_B.eCAP_l[0] = ECap1Regs.CAP1;
      mcb_pmsm_foc_hall_f28379d_B.eCAP_l[1] = ECap1Regs.CAP2;

      /* If: '<S246>/If' */
      if (((uint16_T)mcb_pmsm_foc_hall_f28379d_B.BitwiseOperator2_n == 5U) ||
          ((uint16_T)mcb_pmsm_foc_hall_f28379d_B.BitwiseOperator2_n == 3U)) {
        /* Outputs for IfAction SubSystem: '<S246>/Output 1' incorporates:
         *  ActionPort: '<S251>/Action Port'
         */
        mcb_pmsm_foc_hall_f_Output1(&mcb_pmsm_foc_hall_f28379d_B.Merge_n);

        /* End of Outputs for SubSystem: '<S246>/Output 1' */
      } else {
        /* Outputs for IfAction SubSystem: '<S246>/Output 0' incorporates:
         *  ActionPort: '<S250>/Action Port'
         */
        mcb_pmsm_foc_hall_f_Output0(&mcb_pmsm_foc_hall_f28379d_B.Merge_n);

        /* End of Outputs for SubSystem: '<S246>/Output 0' */
      }

      /* End of If: '<S246>/If' */

      /* Switch: '<S4>/Switch' */
      if (mcb_pmsm_foc_hall_f28379d_B.Merge_n) {
        /* Switch: '<S4>/Switch' */
        mcb_pmsm_foc_hall_f28379d_B.Switch_e =
          mcb_pmsm_foc_hall_f28379d_B.eCAP_l[0];
      } else {
        /* Switch: '<S4>/Switch' */
        mcb_pmsm_foc_hall_f28379d_B.Switch_e =
          mcb_pmsm_foc_hall_f28379d_B.eCAP_l[1];
      }

      /* End of Switch: '<S4>/Switch' */

      /* DataStoreWrite: '<S4>/Data Store Write3' */
      mcb_pmsm_foc_hall_f28379d_DWork.GlobalSpeedCount =
        mcb_pmsm_foc_hall_f28379d_B.Switch_e;

      /* DataStoreWrite: '<S4>/Data Store Write4' */
      mcb_pmsm_foc_hall_f28379d_DWork.GlobalHallState =
        mcb_pmsm_foc_hall_f28379d_B.BitwiseOperator2_n;

      /* End of Outputs for S-Function (HardwareInterrupt_sfun): '<S239>/Hardware Interrupt' */
    }
  }

  /* Clear occurred CEVT1 event */
  ECap1Regs.ECCLR.bit.CEVT1= 1;

  /* Clear occurred CEVT2 event */
  ECap1Regs.ECCLR.bit.CEVT2= 1;

  /* Clear occurred CEVT3 event */
  ECap1Regs.ECCLR.bit.CEVT3= 1;

  /* Clear occurred CEVT4 event */
  ECap1Regs.ECCLR.bit.CEVT4= 1;

  /* Clear occurred CTROVF event */
  ECap1Regs.ECCLR.bit.CTROVF= 1;

  /* Clear occurred CTR_PRD event */
  ECap1Regs.ECCLR.bit.CTR_PRD= 1;

  /* Clear occurred CTR_CMP event */
  ECap1Regs.ECCLR.bit.CTR_CMP= 1;
  ECap1Regs.ECCLR.bit.INT= 1;
  HWI_TIC28x_AcknowledgeIrq(56);
}

/* Hardware Interrupt Block: '<S241>/Hardware Interrupt' */
interrupt void ECAP2_INT(void)
{
  /* Event: Default Event */
  if (1 == runModel) {
    {
      /* S-Function (HardwareInterrupt_sfun): '<S241>/Hardware Interrupt' */

      /* Output and update for function-call system: '<Root>/Hall Sensor B' */

      /* DataStoreRead: '<S5>/Data Store Read' */
      mcb_pmsm_foc_hall_f28379d_B.DataStoreRead_o =
        mcb_pmsm_foc_hall_f28379d_DWork.GlobalHallState;

      /* S-Function (memorycopy): '<S288>/Read GPIO DAT register' */
      {
        uint32_T *memindsrc7 = (uint32_T *) (&GpioDataRegs.GPBDAT.all);
        uint32_T *meminddst7 = (uint32_T *)
          (&mcb_pmsm_foc_hall_f28379d_B.ReadGPIODATregister_n);
        *(uint32_T *) (meminddst7) = *(uint32_T *) (memindsrc7);
      }

      /* S-Function (sfix_bitop): '<S288>/Hall_C' */
      mcb_pmsm_foc_hall_f28379d_B.Hall_C_f =
        mcb_pmsm_foc_hall_f28379d_B.ReadGPIODATregister_n & 33554432UL;

      /* ArithShift: '<S288>/Shift Arithmetic' incorporates:
       *  S-Function (sfix_bitop): '<S288>/Hall_C'
       */
      mcb_pmsm_foc_hall_f28379d_B.ShiftArithmetic_b =
        mcb_pmsm_foc_hall_f28379d_B.Hall_C_f >> 23U;

      /* S-Function (sfix_bitop): '<S288>/Hall_B' */
      mcb_pmsm_foc_hall_f28379d_B.Hall_B_m =
        mcb_pmsm_foc_hall_f28379d_B.ReadGPIODATregister_n & 8388608UL;

      /* ArithShift: '<S288>/Shift Arithmetic1' incorporates:
       *  S-Function (sfix_bitop): '<S288>/Hall_B'
       */
      mcb_pmsm_foc_hall_f28379d_B.ShiftArithmetic1_j =
        mcb_pmsm_foc_hall_f28379d_B.Hall_B_m >> 22U;

      /* S-Function (sfix_bitop): '<S288>/Hall_A' */
      mcb_pmsm_foc_hall_f28379d_B.Hall_A_e =
        mcb_pmsm_foc_hall_f28379d_B.ReadGPIODATregister_n & 4194304UL;

      /* ArithShift: '<S288>/Shift Arithmetic2' incorporates:
       *  S-Function (sfix_bitop): '<S288>/Hall_A'
       */
      mcb_pmsm_foc_hall_f28379d_B.ShiftArithmetic2_k =
        mcb_pmsm_foc_hall_f28379d_B.Hall_A_e >> 22U;

      /* S-Function (sfix_bitop): '<S288>/Bitwise Operator2' */
      mcb_pmsm_foc_hall_f28379d_B.BitwiseOperator2_m = (uint32_T)((int16_T)
        mcb_pmsm_foc_hall_f28379d_B.ShiftArithmetic_b | (int16_T)
        mcb_pmsm_foc_hall_f28379d_B.ShiftArithmetic1_j | (int16_T)
        mcb_pmsm_foc_hall_f28379d_B.ShiftArithmetic2_k);

      /* DataTypeConversion: '<S269>/Data Type Conversion1' */
      mcb_pmsm_foc_hall_f28379d_B.DataTypeConversion1_n = (uint16_T)
        mcb_pmsm_foc_hall_f28379d_B.BitwiseOperator2_m;

      /* DataTypeConversion: '<S269>/Data Type Conversion2' */
      mcb_pmsm_foc_hall_f28379d_B.DataTypeConversion2_g = (uint16_T)
        mcb_pmsm_foc_hall_f28379d_B.DataStoreRead_o;

      /* DataStoreRead: '<S5>/Data Store Read1' */
      mcb_pmsm_foc_hall_f28379d_B.DataStoreRead1_kl =
        mcb_pmsm_foc_hall_f28379d_DWork.GlobalDirection;

      /* SwitchCase: '<S269>/Detects if the halls reading is valid' */
      switch ((int32_T)mcb_pmsm_foc_hall_f28379d_B.DataTypeConversion1_n) {
       case 5L:
       case 4L:
       case 6L:
       case 2L:
       case 3L:
       case 1L:
        /* Outputs for IfAction SubSystem: '<S274>/Valid Halls' incorporates:
         *  ActionPort: '<S276>/Action Port'
         */
        mcb_pmsm_foc_hal_ValidHalls
          (mcb_pmsm_foc_hall_f28379d_B.DataTypeConversion1_n,
           mcb_pmsm_foc_hall_f28379d_B.DataTypeConversion2_g,
           mcb_pmsm_foc_hall_f28379d_B.DataStoreRead1_kl,
           &mcb_pmsm_foc_hall_f28379d_B.Merge3_o,
           &mcb_pmsm_foc_hall_f28379d_B.Merge1_a,
           &mcb_pmsm_foc_hall_f28379d_B.Merge_j,
           &mcb_pmsm_foc_hall_f28379d_B.ValidHalls_h);

        /* End of Outputs for SubSystem: '<S274>/Valid Halls' */
        break;

       default:
        /* Outputs for IfAction SubSystem: '<S274>/Bad hall (glitch or wrong connection)' incorporates:
         *  ActionPort: '<S275>/Action Port'
         */
        Badhallglitchorwrongconnect
          (mcb_pmsm_foc_hall_f28379d_B.DataStoreRead1_kl,
           &mcb_pmsm_foc_hall_f28379d_B.Merge_j,
           &mcb_pmsm_foc_hall_f28379d_B.Merge1_a,
           &mcb_pmsm_foc_hall_f28379d_B.Merge3_o);

        /* End of Outputs for SubSystem: '<S274>/Bad hall (glitch or wrong connection)' */
        break;
      }

      /* End of SwitchCase: '<S269>/Detects if the halls reading is valid' */

      /* DataTypeConversion: '<S274>/Data Type Conversion' */
      mcb_pmsm_foc_hall_f28379d_B.DataTypeConversion_j =
        mcb_pmsm_foc_hall_f28379d_B.Merge3_o;

      /* DataStoreWrite: '<S5>/Data Store Write' */
      mcb_pmsm_foc_hall_f28379d_DWork.GlobalSpeedValidity =
        mcb_pmsm_foc_hall_f28379d_B.DataTypeConversion_j;

      /* DataStoreWrite: '<S5>/Data Store Write1' */
      mcb_pmsm_foc_hall_f28379d_DWork.GlobalDirection =
        mcb_pmsm_foc_hall_f28379d_B.Merge1_a;

      /* DataStoreWrite: '<S5>/Data Store Write2' incorporates:
       *  Constant: '<S269>/Constant'
       */
      mcb_pmsm_foc_hall_f28379d_DWork.HallStateChangeFlag = 1U;

      /* S-Function (c280xcap): '<S289>/eCAP' */
      mcb_pmsm_foc_hall_f28379d_B.eCAP_c[0] = ECap2Regs.CAP1;
      mcb_pmsm_foc_hall_f28379d_B.eCAP_c[1] = ECap2Regs.CAP2;

      /* If: '<S268>/If' */
      if (((uint16_T)mcb_pmsm_foc_hall_f28379d_B.BitwiseOperator2_m == 3U) ||
          ((uint16_T)mcb_pmsm_foc_hall_f28379d_B.BitwiseOperator2_m == 6U)) {
        /* Outputs for IfAction SubSystem: '<S268>/Output 1' incorporates:
         *  ActionPort: '<S273>/Action Port'
         */
        mcb_pmsm_foc_hall_f_Output1(&mcb_pmsm_foc_hall_f28379d_B.Merge_f);

        /* End of Outputs for SubSystem: '<S268>/Output 1' */
      } else {
        /* Outputs for IfAction SubSystem: '<S268>/Output 0' incorporates:
         *  ActionPort: '<S272>/Action Port'
         */
        mcb_pmsm_foc_hall_f_Output0(&mcb_pmsm_foc_hall_f28379d_B.Merge_f);

        /* End of Outputs for SubSystem: '<S268>/Output 0' */
      }

      /* End of If: '<S268>/If' */

      /* Switch: '<S5>/Switch' */
      if (mcb_pmsm_foc_hall_f28379d_B.Merge_f) {
        /* Switch: '<S5>/Switch' */
        mcb_pmsm_foc_hall_f28379d_B.Switch_l =
          mcb_pmsm_foc_hall_f28379d_B.eCAP_c[0];
      } else {
        /* Switch: '<S5>/Switch' */
        mcb_pmsm_foc_hall_f28379d_B.Switch_l =
          mcb_pmsm_foc_hall_f28379d_B.eCAP_c[1];
      }

      /* End of Switch: '<S5>/Switch' */

      /* DataStoreWrite: '<S5>/Data Store Write3' */
      mcb_pmsm_foc_hall_f28379d_DWork.GlobalSpeedCount =
        mcb_pmsm_foc_hall_f28379d_B.Switch_l;

      /* DataStoreWrite: '<S5>/Data Store Write4' */
      mcb_pmsm_foc_hall_f28379d_DWork.GlobalHallState =
        mcb_pmsm_foc_hall_f28379d_B.BitwiseOperator2_m;

      /* End of Outputs for S-Function (HardwareInterrupt_sfun): '<S241>/Hardware Interrupt' */
    }
  }

  /* Clear occurred CEVT1 event */
  ECap2Regs.ECCLR.bit.CEVT1= 1;

  /* Clear occurred CEVT2 event */
  ECap2Regs.ECCLR.bit.CEVT2= 1;

  /* Clear occurred CEVT3 event */
  ECap2Regs.ECCLR.bit.CEVT3= 1;

  /* Clear occurred CEVT4 event */
  ECap2Regs.ECCLR.bit.CEVT4= 1;

  /* Clear occurred CTROVF event */
  ECap2Regs.ECCLR.bit.CTROVF= 1;

  /* Clear occurred CTR_PRD event */
  ECap2Regs.ECCLR.bit.CTR_PRD= 1;

  /* Clear occurred CTR_CMP event */
  ECap2Regs.ECCLR.bit.CTR_CMP= 1;
  ECap2Regs.ECCLR.bit.INT= 1;
  HWI_TIC28x_AcknowledgeIrq(57);
}

/* Hardware Interrupt Block: '<S243>/Hardware Interrupt' */
interrupt void ECAP3_INT(void)
{
  /* Event: Default Event */
  if (1 == runModel) {
    {
      /* S-Function (HardwareInterrupt_sfun): '<S243>/Hardware Interrupt' */

      /* Output and update for function-call system: '<Root>/Hall Sensor C' */

      /* DataStoreRead: '<S6>/Data Store Read' */
      mcb_pmsm_foc_hall_f28379d_B.DataStoreRead =
        mcb_pmsm_foc_hall_f28379d_DWork.GlobalHallState;

      /* S-Function (memorycopy): '<S310>/Read GPIO DAT register' */
      {
        uint32_T *memindsrc8 = (uint32_T *) (&GpioDataRegs.GPBDAT.all);
        uint32_T *meminddst8 = (uint32_T *)
          (&mcb_pmsm_foc_hall_f28379d_B.ReadGPIODATregister);
        *(uint32_T *) (meminddst8) = *(uint32_T *) (memindsrc8);
      }

      /* S-Function (sfix_bitop): '<S310>/Hall_C' */
      mcb_pmsm_foc_hall_f28379d_B.Hall_C =
        mcb_pmsm_foc_hall_f28379d_B.ReadGPIODATregister & 33554432UL;

      /* ArithShift: '<S310>/Shift Arithmetic' incorporates:
       *  S-Function (sfix_bitop): '<S310>/Hall_C'
       */
      mcb_pmsm_foc_hall_f28379d_B.ShiftArithmetic =
        mcb_pmsm_foc_hall_f28379d_B.Hall_C >> 23U;

      /* S-Function (sfix_bitop): '<S310>/Hall_B' */
      mcb_pmsm_foc_hall_f28379d_B.Hall_B =
        mcb_pmsm_foc_hall_f28379d_B.ReadGPIODATregister & 8388608UL;

      /* ArithShift: '<S310>/Shift Arithmetic1' incorporates:
       *  S-Function (sfix_bitop): '<S310>/Hall_B'
       */
      mcb_pmsm_foc_hall_f28379d_B.ShiftArithmetic1 =
        mcb_pmsm_foc_hall_f28379d_B.Hall_B >> 22U;

      /* S-Function (sfix_bitop): '<S310>/Hall_A' */
      mcb_pmsm_foc_hall_f28379d_B.Hall_A =
        mcb_pmsm_foc_hall_f28379d_B.ReadGPIODATregister & 4194304UL;

      /* ArithShift: '<S310>/Shift Arithmetic2' incorporates:
       *  S-Function (sfix_bitop): '<S310>/Hall_A'
       */
      mcb_pmsm_foc_hall_f28379d_B.ShiftArithmetic2 =
        mcb_pmsm_foc_hall_f28379d_B.Hall_A >> 22U;

      /* S-Function (sfix_bitop): '<S310>/Bitwise Operator2' */
      mcb_pmsm_foc_hall_f28379d_B.BitwiseOperator2 = (uint32_T)((int16_T)
        mcb_pmsm_foc_hall_f28379d_B.ShiftArithmetic | (int16_T)
        mcb_pmsm_foc_hall_f28379d_B.ShiftArithmetic1 | (int16_T)
        mcb_pmsm_foc_hall_f28379d_B.ShiftArithmetic2);

      /* DataTypeConversion: '<S291>/Data Type Conversion1' */
      mcb_pmsm_foc_hall_f28379d_B.DataTypeConversion1_o = (uint16_T)
        mcb_pmsm_foc_hall_f28379d_B.BitwiseOperator2;

      /* DataTypeConversion: '<S291>/Data Type Conversion2' */
      mcb_pmsm_foc_hall_f28379d_B.DataTypeConversion2_p = (uint16_T)
        mcb_pmsm_foc_hall_f28379d_B.DataStoreRead;

      /* DataStoreRead: '<S6>/Data Store Read1' */
      mcb_pmsm_foc_hall_f28379d_B.DataStoreRead1_k =
        mcb_pmsm_foc_hall_f28379d_DWork.GlobalDirection;

      /* SwitchCase: '<S291>/Detects if the halls reading is valid' */
      switch ((int32_T)mcb_pmsm_foc_hall_f28379d_B.DataTypeConversion1_o) {
       case 5L:
       case 4L:
       case 6L:
       case 2L:
       case 3L:
       case 1L:
        /* Outputs for IfAction SubSystem: '<S296>/Valid Halls' incorporates:
         *  ActionPort: '<S298>/Action Port'
         */
        mcb_pmsm_foc_hal_ValidHalls
          (mcb_pmsm_foc_hall_f28379d_B.DataTypeConversion1_o,
           mcb_pmsm_foc_hall_f28379d_B.DataTypeConversion2_p,
           mcb_pmsm_foc_hall_f28379d_B.DataStoreRead1_k,
           &mcb_pmsm_foc_hall_f28379d_B.Merge3,
           &mcb_pmsm_foc_hall_f28379d_B.Merge1_k,
           &mcb_pmsm_foc_hall_f28379d_B.Merge_pc,
           &mcb_pmsm_foc_hall_f28379d_B.ValidHalls_hi);

        /* End of Outputs for SubSystem: '<S296>/Valid Halls' */
        break;

       default:
        /* Outputs for IfAction SubSystem: '<S296>/Bad hall (glitch or wrong connection)' incorporates:
         *  ActionPort: '<S297>/Action Port'
         */
        Badhallglitchorwrongconnect(mcb_pmsm_foc_hall_f28379d_B.DataStoreRead1_k,
          &mcb_pmsm_foc_hall_f28379d_B.Merge_pc,
          &mcb_pmsm_foc_hall_f28379d_B.Merge1_k,
          &mcb_pmsm_foc_hall_f28379d_B.Merge3);

        /* End of Outputs for SubSystem: '<S296>/Bad hall (glitch or wrong connection)' */
        break;
      }

      /* End of SwitchCase: '<S291>/Detects if the halls reading is valid' */

      /* DataTypeConversion: '<S296>/Data Type Conversion' */
      mcb_pmsm_foc_hall_f28379d_B.DataTypeConversion_n =
        mcb_pmsm_foc_hall_f28379d_B.Merge3;

      /* DataStoreWrite: '<S6>/Data Store Write' */
      mcb_pmsm_foc_hall_f28379d_DWork.GlobalSpeedValidity =
        mcb_pmsm_foc_hall_f28379d_B.DataTypeConversion_n;

      /* DataStoreWrite: '<S6>/Data Store Write1' */
      mcb_pmsm_foc_hall_f28379d_DWork.GlobalDirection =
        mcb_pmsm_foc_hall_f28379d_B.Merge1_k;

      /* DataStoreWrite: '<S6>/Data Store Write2' incorporates:
       *  Constant: '<S291>/Constant'
       */
      mcb_pmsm_foc_hall_f28379d_DWork.HallStateChangeFlag = 1U;

      /* S-Function (c280xcap): '<S311>/eCAP' */
      mcb_pmsm_foc_hall_f28379d_B.eCAP[0] = ECap3Regs.CAP1;
      mcb_pmsm_foc_hall_f28379d_B.eCAP[1] = ECap3Regs.CAP2;

      /* If: '<S290>/If' */
      if (((uint16_T)mcb_pmsm_foc_hall_f28379d_B.BitwiseOperator2 == 5U) ||
          ((uint16_T)mcb_pmsm_foc_hall_f28379d_B.BitwiseOperator2 == 6U)) {
        /* Outputs for IfAction SubSystem: '<S290>/Output 1' incorporates:
         *  ActionPort: '<S295>/Action Port'
         */
        mcb_pmsm_foc_hall_f_Output1(&mcb_pmsm_foc_hall_f28379d_B.Merge_pt);

        /* End of Outputs for SubSystem: '<S290>/Output 1' */
      } else {
        /* Outputs for IfAction SubSystem: '<S290>/Output 0' incorporates:
         *  ActionPort: '<S294>/Action Port'
         */
        mcb_pmsm_foc_hall_f_Output0(&mcb_pmsm_foc_hall_f28379d_B.Merge_pt);

        /* End of Outputs for SubSystem: '<S290>/Output 0' */
      }

      /* End of If: '<S290>/If' */

      /* Switch: '<S6>/Switch' */
      if (mcb_pmsm_foc_hall_f28379d_B.Merge_pt) {
        /* Switch: '<S6>/Switch' */
        mcb_pmsm_foc_hall_f28379d_B.Switch = mcb_pmsm_foc_hall_f28379d_B.eCAP[0];
      } else {
        /* Switch: '<S6>/Switch' */
        mcb_pmsm_foc_hall_f28379d_B.Switch = mcb_pmsm_foc_hall_f28379d_B.eCAP[1];
      }

      /* End of Switch: '<S6>/Switch' */

      /* DataStoreWrite: '<S6>/Data Store Write3' */
      mcb_pmsm_foc_hall_f28379d_DWork.GlobalSpeedCount =
        mcb_pmsm_foc_hall_f28379d_B.Switch;

      /* DataStoreWrite: '<S6>/Data Store Write4' */
      mcb_pmsm_foc_hall_f28379d_DWork.GlobalHallState =
        mcb_pmsm_foc_hall_f28379d_B.BitwiseOperator2;

      /* End of Outputs for S-Function (HardwareInterrupt_sfun): '<S243>/Hardware Interrupt' */
    }
  }

  /* Clear occurred CEVT1 event */
  ECap3Regs.ECCLR.bit.CEVT1= 1;

  /* Clear occurred CEVT2 event */
  ECap3Regs.ECCLR.bit.CEVT2= 1;

  /* Clear occurred CEVT3 event */
  ECap3Regs.ECCLR.bit.CEVT3= 1;

  /* Clear occurred CEVT4 event */
  ECap3Regs.ECCLR.bit.CEVT4= 1;

  /* Clear occurred CTROVF event */
  ECap3Regs.ECCLR.bit.CTROVF= 1;

  /* Clear occurred CTR_PRD event */
  ECap3Regs.ECCLR.bit.CTR_PRD= 1;

  /* Clear occurred CTR_CMP event */
  ECap3Regs.ECCLR.bit.CTR_CMP= 1;
  ECap3Regs.ECCLR.bit.INT= 1;
  HWI_TIC28x_AcknowledgeIrq(58);
}

/* Hardware Interrupt Block: '<S245>/Hardware Interrupt' */
interrupt void SCIA_RX_INT(void)
{
  /* Event: Default Event */
  if (1 == runModel) {
    {
      /* S-Function (HardwareInterrupt_sfun): '<S245>/Hardware Interrupt' */

      /* Output and update for function-call system: '<Root>/Serial Receive' */

      /* S-Function (c28xsci_rx): '<S332>/SCI Receive' */
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
            memcpy( &mcb_pmsm_foc_hall_f28379d_B.SCIReceive[0], recbuff,4);
          }
        }
      }

      /* DataTypeConversion: '<S330>/Data Type Conversion2' */
      mcb_pmsm_foc_hall_f28379d_B.DataTypeConversion2 = (uint16_T)
        mcb_pmsm_foc_hall_f28379d_B.SCIReceive[1];

      /* S-Function (sfix_bitop): '<S329>/Bitwise Operator' */
      mcb_pmsm_foc_hall_f28379d_B.BitwiseOperator =
        mcb_pmsm_foc_hall_f28379d_B.DataTypeConversion2 & 1U;

      /* DataTypeConversion: '<S329>/Data Type Conversion3' */
      mcb_pmsm_foc_hall_f28379d_B.DataTypeConversion3 =
        (mcb_pmsm_foc_hall_f28379d_B.BitwiseOperator != 0U);

      /* DataStoreWrite: '<S10>/Data Store Write' */
      mcb_pmsm_foc_hall_f28379d_DWork.Enable =
        mcb_pmsm_foc_hall_f28379d_B.DataTypeConversion3;

      /* DataStoreWrite: '<S10>/Data Store Write1' */
      mcb_pmsm_foc_hall_f28379d_DWork.Speed_ref =
        mcb_pmsm_foc_hall_f28379d_B.SCIReceive[0];

      /* S-Function (sfix_bitop): '<S329>/Bitwise Operator1' */
      mcb_pmsm_foc_hall_f28379d_B.BitwiseOperator1 =
        mcb_pmsm_foc_hall_f28379d_B.DataTypeConversion2 & 240U;

      /* ArithShift: '<S329>/Shift Arithmetic1' incorporates:
       *  S-Function (sfix_bitop): '<S329>/Bitwise Operator1'
       */
      mcb_pmsm_foc_hall_f28379d_B.ShiftArithmetic1_d =
        mcb_pmsm_foc_hall_f28379d_B.BitwiseOperator1 >> 4U;

      /* DataStoreWrite: '<S10>/Data Store Write2' */
      mcb_pmsm_foc_hall_f28379d_DWork.Debug_signals =
        mcb_pmsm_foc_hall_f28379d_B.ShiftArithmetic1_d;

      /* End of Outputs for S-Function (HardwareInterrupt_sfun): '<S245>/Hardware Interrupt' */

      /* RateTransition: '<Root>/RT6' */
      mcb_pmsm_foc_hall_f28379d_DWork.RT6_Buffer[mcb_pmsm_foc_hall_f28379d_DWork.RT6_semaphoreTaken
        == 0] = mcb_pmsm_foc_hall_f28379d_B.SCIReceive[0];
      mcb_pmsm_foc_hall_f28379d_DWork.RT6_ActiveBufIdx =
        (mcb_pmsm_foc_hall_f28379d_DWork.RT6_semaphoreTaken == 0);
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

void mcb_pmsm_foc_hall_f28379d_unconfigure_interrupts (void)
{
  HWI_TIC28x_DisableIRQ(56);
  HWI_TIC28x_DisableIRQ(57);
  HWI_TIC28x_DisableIRQ(58);
  HWI_TIC28x_DisableIRQ(33);
  HWI_TIC28x_DisableIRQ(96);
}

/*
 * File trailer for generated code.
 *
 * [EOF]
 */
