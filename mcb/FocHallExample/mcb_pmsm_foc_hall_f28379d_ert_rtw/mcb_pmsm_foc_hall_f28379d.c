/*
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * File: mcb_pmsm_foc_hall_f28379d.c
 *
 * Code generated for Simulink model 'mcb_pmsm_foc_hall_f28379d'.
 *
 * Model version                  : 20
 * Simulink Coder version         : 23.2 (R2023b) 01-Aug-2023
 * C/C++ source code generated on : Mon Dec 15 22:31:57 2025
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
#include <float.h>
#define mcb_pmsm_foc_IN_NO_ACTIVE_CHILD (0U)
#define mcb_pmsm_foc_hall_IN_AlignStage (1U)
#define mcb_pmsm_foc_hall__IN_OpenStage (3U)
#define mcb_pmsm_foc_hall_f2837_IN_IDLE (2U)
#define mcb_pmsm_foc_hall_f_IN_RunStage (4U)

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
  if ((mcb_pmsm_foc_hall_f28379d_M->Timing.TaskCounters.TID[1]) > 999) {/* Sample time: [0.5s, 0.0s] */
    mcb_pmsm_foc_hall_f28379d_M->Timing.TaskCounters.TID[1] = 0;
  }
}

/*
 * Output and update for action system:
 *    '<S149>/If Action Subsystem'
 *    '<S158>/If Action Subsystem'
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
 *    '<S158>/If Action Subsystem1'
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

/* Output and update for atomic system: '<S173>/Atomic Hall Reading' */
void mcb_pmsm__AtomicHallReading(void)
{
  uint32_T u0;
  uint32_T u1;

  /* user code (Output function Body for TID2) */

  /* System '<S173>/Atomic Hall Reading' */
  DINT;

  /* DataStoreRead: '<S175>/Data Store Read5' */
  mcb_pmsm_foc_hall_f28379d_B.DataStoreRead5 =
    mcb_pmsm_foc_hall_f28379d_DWork.HallStateChangeFlag;

  /* S-Function (fcgen): '<S175>/Function-Call Generator' incorporates:
   *  SubSystem: '<S175>/Function-Call Subsystem'
   */
  /* S-Function (memorycopy): '<S183>/Read GPIO DAT register' */
  {
    uint32_T *memindsrc1 = (uint32_T *) (&GpioDataRegs.GPBDAT.all);
    uint32_T *meminddst1 = (uint32_T *)
      (&mcb_pmsm_foc_hall_f28379d_B.ReadGPIODATregister_nt);
    *(uint32_T *) (meminddst1) = *(uint32_T *) (memindsrc1);
  }

  /* S-Function (sfix_bitop): '<S183>/Hall_C' */
  mcb_pmsm_foc_hall_f28379d_B.Hall_C_fc =
    mcb_pmsm_foc_hall_f28379d_B.ReadGPIODATregister_nt & 33554432UL;

  /* ArithShift: '<S183>/Shift Arithmetic' incorporates:
   *  S-Function (sfix_bitop): '<S183>/Hall_C'
   */
  mcb_pmsm_foc_hall_f28379d_B.ShiftArithmetic_p =
    mcb_pmsm_foc_hall_f28379d_B.Hall_C_fc >> 23U;

  /* S-Function (sfix_bitop): '<S183>/Hall_B' */
  mcb_pmsm_foc_hall_f28379d_B.Hall_B_f =
    mcb_pmsm_foc_hall_f28379d_B.ReadGPIODATregister_nt & 8388608UL;

  /* ArithShift: '<S183>/Shift Arithmetic1' incorporates:
   *  S-Function (sfix_bitop): '<S183>/Hall_B'
   */
  mcb_pmsm_foc_hall_f28379d_B.ShiftArithmetic1_h =
    mcb_pmsm_foc_hall_f28379d_B.Hall_B_f >> 22U;

  /* S-Function (sfix_bitop): '<S183>/Hall_A' */
  mcb_pmsm_foc_hall_f28379d_B.Hall_A_c =
    mcb_pmsm_foc_hall_f28379d_B.ReadGPIODATregister_nt & 4194304UL;

  /* ArithShift: '<S183>/Shift Arithmetic2' incorporates:
   *  S-Function (sfix_bitop): '<S183>/Hall_A'
   */
  mcb_pmsm_foc_hall_f28379d_B.ShiftArithmetic2_e =
    mcb_pmsm_foc_hall_f28379d_B.Hall_A_c >> 22U;

  /* S-Function (sfix_bitop): '<S183>/Bitwise Operator2' */
  mcb_pmsm_foc_hall_f28379d_B.BitwiseOperator2_p = (uint32_T)((int16_T)
    mcb_pmsm_foc_hall_f28379d_B.ShiftArithmetic_p | (int16_T)
    mcb_pmsm_foc_hall_f28379d_B.ShiftArithmetic1_h | (int16_T)
    mcb_pmsm_foc_hall_f28379d_B.ShiftArithmetic2_e);

  /* S-Function (fcgen): '<S175>/Function-Call Generator' incorporates:
   *  SubSystem: '<S175>/Function-Call Subsystem1'
   */
  /* S-Function (memorycopy): '<S181>/Memory Copy' */
  {
    uint32_T *memindsrc2 = (uint32_T *) (&ECap1Regs.TSCTR);
    uint32_T *meminddst2 = (uint32_T *) (&mcb_pmsm_foc_hall_f28379d_B.MemoryCopy);
    *(uint32_T *) (meminddst2) = *(uint32_T *) (memindsrc2);
  }

  /* S-Function (memorycopy): '<S181>/Memory Copy1' */
  {
    uint32_T *memindsrc3 = (uint32_T *) (&ECap2Regs.TSCTR);
    uint32_T *meminddst3 = (uint32_T *)
      (&mcb_pmsm_foc_hall_f28379d_B.MemoryCopy1);
    *(uint32_T *) (meminddst3) = *(uint32_T *) (memindsrc3);
  }

  /* S-Function (memorycopy): '<S181>/Memory Copy2' */
  {
    uint32_T *memindsrc4 = (uint32_T *) (&ECap3Regs.TSCTR);
    uint32_T *meminddst4 = (uint32_T *)
      (&mcb_pmsm_foc_hall_f28379d_B.MemoryCopy2);
    *(uint32_T *) (meminddst4) = *(uint32_T *) (memindsrc4);
  }

  /* MinMax: '<S181>/Min' */
  u0 = mcb_pmsm_foc_hall_f28379d_B.MemoryCopy;
  u1 = mcb_pmsm_foc_hall_f28379d_B.MemoryCopy1;
  if (u0 <= u1) {
    u1 = u0;
  }

  u0 = mcb_pmsm_foc_hall_f28379d_B.MemoryCopy2;
  if (u1 > u0) {
    u1 = u0;
  }

  /* MinMax: '<S181>/Min' */
  mcb_pmsm_foc_hall_f28379d_B.Min_h = u1;

  /* End of Outputs for S-Function (fcgen): '<S175>/Function-Call Generator' */

  /* RelationalOperator: '<S184>/Compare' incorporates:
   *  Constant: '<S184>/Constant'
   */
  mcb_pmsm_foc_hall_f28379d_B.Compare = (uint16_T)
    (mcb_pmsm_foc_hall_f28379d_B.Min_h < 5000UL);

  /* UnitDelay: '<S182>/Unit Delay' */
  mcb_pmsm_foc_hall_f28379d_B.UnitDelay =
    mcb_pmsm_foc_hall_f28379d_DWork.UnitDelay_DSTATE;

  /* RelationalOperator: '<S182>/Relational Operator' */
  mcb_pmsm_foc_hall_f28379d_B.RelationalOperator_k =
    (mcb_pmsm_foc_hall_f28379d_B.BitwiseOperator2_p ==
     mcb_pmsm_foc_hall_f28379d_B.UnitDelay);

  /* Logic: '<S182>/NOT' incorporates:
   *  RelationalOperator: '<S184>/Compare'
   */
  mcb_pmsm_foc_hall_f28379d_B.NOT_b =
    (mcb_pmsm_foc_hall_f28379d_B.RelationalOperator_k &&
     (mcb_pmsm_foc_hall_f28379d_B.Compare != 0U));

  /* If: '<S182>/If' */
  if (!mcb_pmsm_foc_hall_f28379d_B.NOT_b) {
    /* Outputs for IfAction SubSystem: '<S182>/No_Integrity_issue' incorporates:
     *  ActionPort: '<S185>/Action Port'
     */
    /* Merge: '<S182>/Merge' incorporates:
     *  SignalConversion generated from: '<S185>/Counter'
     */
    mcb_pmsm_foc_hall_f28379d_B.Merge_i =
      mcb_pmsm_foc_hall_f28379d_B.BitwiseOperator2_p;

    /* End of Outputs for SubSystem: '<S182>/No_Integrity_issue' */
  } else {
    /* Outputs for IfAction SubSystem: '<S182>/Refresh_Halls' incorporates:
     *  ActionPort: '<S186>/Action Port'
     */
    /* S-Function (memorycopy): '<S187>/Read GPIO DAT register' */
    {
      uint32_T *memindsrc5 = (uint32_T *) (&GpioDataRegs.GPBDAT.all);
      uint32_T *meminddst5 = (uint32_T *)
        (&mcb_pmsm_foc_hall_f28379d_B.ReadGPIODATregister_p);
      *(uint32_T *) (meminddst5) = *(uint32_T *) (memindsrc5);
    }

    /* S-Function (sfix_bitop): '<S187>/Hall_C' */
    mcb_pmsm_foc_hall_f28379d_B.Hall_C_e =
      mcb_pmsm_foc_hall_f28379d_B.ReadGPIODATregister_p & 33554432UL;

    /* ArithShift: '<S187>/Shift Arithmetic' incorporates:
     *  S-Function (sfix_bitop): '<S187>/Hall_C'
     */
    mcb_pmsm_foc_hall_f28379d_B.ShiftArithmetic_l =
      mcb_pmsm_foc_hall_f28379d_B.Hall_C_e >> 23U;

    /* S-Function (sfix_bitop): '<S187>/Hall_B' */
    mcb_pmsm_foc_hall_f28379d_B.Hall_B_e =
      mcb_pmsm_foc_hall_f28379d_B.ReadGPIODATregister_p & 8388608UL;

    /* ArithShift: '<S187>/Shift Arithmetic1' incorporates:
     *  S-Function (sfix_bitop): '<S187>/Hall_B'
     */
    mcb_pmsm_foc_hall_f28379d_B.ShiftArithmetic1_c =
      mcb_pmsm_foc_hall_f28379d_B.Hall_B_e >> 22U;

    /* S-Function (sfix_bitop): '<S187>/Hall_A' */
    mcb_pmsm_foc_hall_f28379d_B.Hall_A_d =
      mcb_pmsm_foc_hall_f28379d_B.ReadGPIODATregister_p & 4194304UL;

    /* ArithShift: '<S187>/Shift Arithmetic2' incorporates:
     *  S-Function (sfix_bitop): '<S187>/Hall_A'
     */
    mcb_pmsm_foc_hall_f28379d_B.ShiftArithmetic2_kn =
      mcb_pmsm_foc_hall_f28379d_B.Hall_A_d >> 22U;

    /* S-Function (sfix_bitop): '<S187>/Bitwise Operator2' */
    mcb_pmsm_foc_hall_f28379d_B.BitwiseOperator2_g = (uint32_T)((int16_T)
      mcb_pmsm_foc_hall_f28379d_B.ShiftArithmetic_l | (int16_T)
      mcb_pmsm_foc_hall_f28379d_B.ShiftArithmetic1_c | (int16_T)
      mcb_pmsm_foc_hall_f28379d_B.ShiftArithmetic2_kn);

    /* Merge: '<S182>/Merge' incorporates:
     *  SignalConversion generated from: '<S186>/Out1'
     */
    mcb_pmsm_foc_hall_f28379d_B.Merge_i =
      mcb_pmsm_foc_hall_f28379d_B.BitwiseOperator2_g;

    /* End of Outputs for SubSystem: '<S182>/Refresh_Halls' */
  }

  /* End of If: '<S182>/If' */

  /* DataStoreRead: '<S175>/Data Store Read2' */
  mcb_pmsm_foc_hall_f28379d_B.DataStoreRead2 =
    mcb_pmsm_foc_hall_f28379d_DWork.GlobalSpeedCount;

  /* DataStoreRead: '<S175>/Data Store Read3' */
  mcb_pmsm_foc_hall_f28379d_B.DataStoreRead3 =
    mcb_pmsm_foc_hall_f28379d_DWork.GlobalDirection;

  /* DataStoreRead: '<S175>/Data Store Read4' */
  mcb_pmsm_foc_hall_f28379d_B.DataStoreRead4 =
    mcb_pmsm_foc_hall_f28379d_DWork.GlobalSpeedValidity;

  /* user code (Output function Trailer for TID2) */

  /* System '<S173>/Atomic Hall Reading' */
  EINT;

  /* Update for UnitDelay: '<S182>/Unit Delay' */
  mcb_pmsm_foc_hall_f28379d_DWork.UnitDelay_DSTATE =
    mcb_pmsm_foc_hall_f28379d_B.BitwiseOperator2_p;
}

/*
 * Output and update for action system:
 *    '<S206>/Hall Value of 1'
 *    '<S205>/Hall Value of 2'
 */
void mcb_pmsm_foc_h_HallValueof1(real32_T *rty_position)
{
  /* SignalConversion generated from: '<S216>/position' incorporates:
   *  Constant: '<S216>/Constant'
   */
  *rty_position = 0.16667F;
}

/*
 * Output and update for action system:
 *    '<S206>/Hall Value of 2'
 *    '<S205>/Hall Value of 3'
 */
void mcb_pmsm_foc_h_HallValueof2(real32_T *rty_position)
{
  /* SignalConversion generated from: '<S217>/position' incorporates:
   *  Constant: '<S217>/Constant'
   */
  *rty_position = 0.33333F;
}

/*
 * Output and update for action system:
 *    '<S206>/Hall Value of 3'
 *    '<S205>/Hall Value of 4'
 */
void mcb_pmsm_foc_h_HallValueof3(real32_T *rty_position)
{
  /* SignalConversion generated from: '<S218>/position' incorporates:
   *  Constant: '<S218>/Constant'
   */
  *rty_position = 0.5F;
}

/*
 * Output and update for action system:
 *    '<S206>/Hall Value of 4'
 *    '<S205>/Hall Value of 5'
 */
void mcb_pmsm_foc_h_HallValueof4(real32_T *rty_position)
{
  /* SignalConversion generated from: '<S219>/position' incorporates:
   *  Constant: '<S219>/Constant'
   */
  *rty_position = 0.66667F;
}

/*
 * Output and update for action system:
 *    '<S206>/Hall Value of 5'
 *    '<S205>/Hall Value of 6'
 */
void mcb_pmsm_foc_h_HallValueof5(real32_T *rty_position)
{
  /* SignalConversion generated from: '<S220>/position' incorporates:
   *  Constant: '<S220>/Constant'
   */
  *rty_position = 0.83333F;
}

/*
 * Output and update for action system:
 *    '<S206>/Hall Value of 7'
 *    '<S205>/Hall Value of 1'
 *    '<S205>/Hall Value of 7'
 *    '<S194>/Hall Value of 7'
 */
void mcb_pmsm_foc_h_HallValueof7(real32_T *rty_position)
{
  /* SignalConversion generated from: '<S222>/position' incorporates:
   *  Constant: '<S222>/Constant'
   */
  *rty_position = 0.0F;
}

/*
 * Output and update for action system:
 *    '<S225>/If Action Subsystem'
 *    '<S253>/If Action Subsystem'
 *    '<S262>/If Action Subsystem'
 *    '<S271>/If Action Subsystem'
 *    '<S458>/If Action Subsystem'
 */
void mcb_pms_IfActionSubsystem_n(real32_T rtu_m, real32_T rtu_Offset, real32_T
  *rty_m_out)
{
  /* Sum: '<S227>/Add' incorporates:
   *  Constant: '<S227>/Constant'
   */
  *rty_m_out = (rtu_m + 1.0F) - rtu_Offset;
}

/*
 * Output and update for action system:
 *    '<S19>/If Action Subsystem'
 *    '<S19>/If Action Subsystem2'
 *    '<S19>/If Action Subsystem3'
 */
void mcb_pms_IfActionSubsystem_e(real32_T rtu_Pos_virtual, real32_T
  rtu_Vel_virtual, real32_T *rty_Pos_PU, real32_T *rty_Speed_PU,
  rtB_IfActionSubsystem_mcb_pms_g *localB)
{
  /* Switch: '<S252>/Switch' incorporates:
   *  Constant: '<S252>/Constant1'
   */
  localB->Switch = 0.0523F;

  /* If: '<S253>/If' */
  if (rtu_Pos_virtual <= 0.0523F) {
    /* Outputs for IfAction SubSystem: '<S253>/If Action Subsystem' incorporates:
     *  ActionPort: '<S255>/Action Port'
     */
    mcb_pms_IfActionSubsystem_n(rtu_Pos_virtual, 0.0523F, &localB->Merge);

    /* End of Outputs for SubSystem: '<S253>/If Action Subsystem' */
  } else {
    /* Outputs for IfAction SubSystem: '<S253>/If Action Subsystem1' incorporates:
     *  ActionPort: '<S256>/Action Port'
     */
    /* Merge: '<S253>/Merge' incorporates:
     *  Sum: '<S256>/Add'
     */
    localB->Merge = rtu_Pos_virtual - 0.0523F;

    /* End of Outputs for SubSystem: '<S253>/If Action Subsystem1' */
  }

  /* End of If: '<S253>/If' */

  /* Rounding: '<S254>/Floor' */
  localB->Floor = (real32_T)floor(localB->Merge);

  /* Sum: '<S254>/Add' */
  localB->Add = localB->Merge - localB->Floor;

  /* SignalConversion generated from: '<S246>/Pos_PU' */
  *rty_Pos_PU = localB->Add;

  /* SignalConversion generated from: '<S246>/Vel_virtual' */
  *rty_Speed_PU = rtu_Vel_virtual;
}

/* System initialize for function-call system: '<Root>/Current Control' */
void mcb_pms_CurrentControl_Init(void)
{
  /* Start for Delay: '<S188>/validityDelay' */
  mcb_pmsm_foc_hall_f28379d_B.validityDelay = false;

  /* Start for Delay: '<S189>/Delay One Step' */
  mcb_pmsm_foc_hall_f28379d_B.DelayOneStep = 0U;

  /* Start for Delay: '<S188>/speedCountDelay' */
  mcb_pmsm_foc_hall_f28379d_B.speedCountDelay = 0UL;

  /* Start for S-Function (c2802xadc): '<S245>/ADC_C_IN2' */
  if (MW_adcCInitFlag == 0U) {
    InitAdcC();
    MW_adcCInitFlag = 1U;
  }

  config_ADCC_SOC0 ();

  /* Start for S-Function (c2802xadc): '<S245>/ADC_B_IN2' */
  if (MW_adcBInitFlag == 0U) {
    InitAdcB();
    MW_adcBInitFlag = 1U;
  }

  config_ADCB_SOC0 ();

  /* Start for Constant: '<S29>/Kp1' */
  mcb_pmsm_foc_hall_f28379d_B.Kp1 = 0.0F;

  /* Start for Constant: '<S28>/Ki1' */
  mcb_pmsm_foc_hall_f28379d_B.Ki1 = 0.0F;

  /* Start for S-Function (c280xgpio_do): '<S233>/Inverter Enable' */
  EALLOW;
  GpioCtrlRegs.GPDMUX2.all &= 0xFCFFFFFFU;
  GpioCtrlRegs.GPDDIR.all |= 0x10000000U;
  EDIS;

  /* Start for S-Function (c2802xpwm): '<S233>/ePWM1' */

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
    EPwm1Regs.TBPRD = 5000U;           // Time Base Period Register

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
    EPwm1Regs.CMPA.bit.CMPA = 2501U;   // Counter Compare A Register
    EPwm1Regs.CMPB.bit.CMPB = 2501U;   // Counter Compare B Register
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

  /* Start for S-Function (c2802xpwm): '<S233>/ePWM2' */

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
    EPwm2Regs.TBPRD = 5000U;           // Time Base Period Register

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
    EPwm2Regs.CMPA.bit.CMPA = 2501U;   // Counter Compare A Register
    EPwm2Regs.CMPB.bit.CMPB = 2501U;   // Counter Compare B Register
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

  /* Start for S-Function (c2802xpwm): '<S233>/ePWM3' */

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
    EPwm3Regs.TBPRD = 5000U;           // Time Base Period Register

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
    EPwm3Regs.CMPA.bit.CMPA = 2501U;   // Counter Compare A Register
    EPwm3Regs.CMPB.bit.CMPB = 2501U;   // Counter Compare B Register
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

  /* InitializeConditions for Delay: '<S189>/Delay One Step1' */
  mcb_pmsm_foc_hall_f28379d_DWork.DelayOneStep1_DSTATE = true;

  /* InitializeConditions for Delay: '<S189>/Delay One Step' */
  mcb_pmsm_foc_hall_f28379d_DWork.DelayOneStep_DSTATE = 833U;

  /* InitializeConditions for DiscreteIntegrator: '<S129>/Integrator' */
  mcb_pmsm_foc_hall_f28379d_DWork.Integrator_DSTATE = 0.0F;
  mcb_pmsm_foc_hall_f28379d_DWork.Integrator_PrevResetState = 0;

  /* InitializeConditions for DiscreteIntegrator: '<S78>/Integrator' */
  mcb_pmsm_foc_hall_f28379d_DWork.Integrator_DSTATE_j = 0.0F;
  mcb_pmsm_foc_hall_f28379d_DWork.Integrator_PrevResetState_m = 0;

  /* SystemInitialize for IfAction SubSystem: '<S13>/堵转' */
  /* InitializeConditions for DiscretePulseGenerator: '<S170>/Discrete Pulse Generator' */
  mcb_pmsm_foc_hall_f28379d_DWork.clockTickCounter = 0L;

  /* End of SystemInitialize for SubSystem: '<S13>/堵转' */
  /* SystemInitialize for IfAction SubSystem: '<S177>/Speed and direction are valid Use speed to extrapolate position' */
  /* SystemInitialize for Enabled SubSystem: '<S191>/Subsystem1' */
  /* SystemInitialize for Merge: '<S204>/Merge' */
  mcb_pmsm_foc_hall_f28379d_B.Merge_c = 0.0F;

  /* End of SystemInitialize for SubSystem: '<S191>/Subsystem1' */
  /* End of SystemInitialize for SubSystem: '<S177>/Speed and direction are valid Use speed to extrapolate position' */
  /* SystemInitialize for Merge: '<S19>/Merge' */
  mcb_pmsm_foc_hall_f28379d_B.Merge_o = 0.0F;

  /* SystemInitialize for Merge: '<S19>/Merge1' */
  mcb_pmsm_foc_hall_f28379d_B.Merge1_m = 0.0F;
}

/* System reset for function-call system: '<Root>/Current Control' */
void mcb_pm_CurrentControl_Reset(void)
{
  /* InitializeConditions for Delay: '<S189>/Delay One Step1' */
  mcb_pmsm_foc_hall_f28379d_DWork.DelayOneStep1_DSTATE = true;

  /* InitializeConditions for Delay: '<S189>/Delay One Step' */
  mcb_pmsm_foc_hall_f28379d_DWork.DelayOneStep_DSTATE = 833U;

  /* InitializeConditions for DiscreteIntegrator: '<S129>/Integrator' */
  mcb_pmsm_foc_hall_f28379d_DWork.Integrator_DSTATE =
    mcb_pmsm_foc_hall_f28379d_B.Kp1;
  mcb_pmsm_foc_hall_f28379d_DWork.Integrator_PrevResetState = 0;

  /* InitializeConditions for DiscreteIntegrator: '<S78>/Integrator' */
  mcb_pmsm_foc_hall_f28379d_DWork.Integrator_DSTATE_j =
    mcb_pmsm_foc_hall_f28379d_B.Ki1;
  mcb_pmsm_foc_hall_f28379d_DWork.Integrator_PrevResetState_m = 0;
}

/* Output and update for function-call system: '<Root>/Current Control' */
#pragma CODE_SECTION (mcb_pmsm_foc_CurrentControl, "ramfuncs")

void mcb_pmsm_foc_CurrentControl(void)
{
  real_T Bias;
  real_T u0_1;
  real32_T u0_0;
  uint32_T u0;
  uint32_T u1;
  int16_T s237_iter;
  uint16_T TmpSignalConversionAtGainInport;
  boolean_T doReset;

  /* DataStoreRead: '<S13>/Data Store Read1' */
  mcb_pmsm_foc_hall_f28379d_B.DataStoreRead1_f =
    mcb_pmsm_foc_hall_f28379d_DWork.Enable;

  /* DataTypeConversion: '<S13>/Cast To Single' */
  mcb_pmsm_foc_hall_f28379d_B.CastToSingle =
    mcb_pmsm_foc_hall_f28379d_B.DataStoreRead1_f;

  /* DataStoreRead: '<S13>/Data Store Read2' */
  mcb_pmsm_foc_hall_f28379d_B.DataStoreRead2_l =
    mcb_pmsm_foc_hall_f28379d_DWork.Speed_ref;

  /* Outputs for Atomic SubSystem: '<S173>/Atomic Hall Reading' */
  mcb_pmsm__AtomicHallReading();

  /* End of Outputs for SubSystem: '<S173>/Atomic Hall Reading' */

  /* RelationalOperator: '<S176>/Compare' incorporates:
   *  Constant: '<S176>/Constant'
   */
  mcb_pmsm_foc_hall_f28379d_B.Compare_e =
    (mcb_pmsm_foc_hall_f28379d_B.DataStoreRead2 >= 208333UL);

  /* Outputs for Enabled SubSystem: '<S173>/Subsystem' incorporates:
   *  EnablePort: '<S179>/Enable'
   */
  if (mcb_pmsm_foc_hall_f28379d_B.Compare_e) {
    /* SignalConversion generated from: '<S179>/Input' */
    mcb_pmsm_foc_hall_f28379d_B.Input =
      mcb_pmsm_foc_hall_f28379d_B.DataStoreRead2;
  }

  /* End of Outputs for SubSystem: '<S173>/Subsystem' */

  /* DataTypeConversion: '<S188>/Data Type Conversion' */
  mcb_pmsm_foc_hall_f28379d_B.DataTypeConversion_nh =
    (mcb_pmsm_foc_hall_f28379d_B.DataStoreRead4 != 0U);

  /* Switch: '<S188>/Switch' incorporates:
   *  Constant: '<S188>/Order'
   */
  mcb_pmsm_foc_hall_f28379d_B.Switch_m = 0U;

  /* Delay: '<S189>/Delay One Step1' */
  mcb_pmsm_foc_hall_f28379d_B.DelayOneStep1 =
    mcb_pmsm_foc_hall_f28379d_DWork.DelayOneStep1_DSTATE;

  /* DataTypeConversion: '<S177>/Data Type Conversion4' */
  mcb_pmsm_foc_hall_f28379d_B.DataTypeConversion4 =
    (mcb_pmsm_foc_hall_f28379d_B.DataStoreRead5 != 0U);

  /* Logic: '<S189>/OR' */
  mcb_pmsm_foc_hall_f28379d_B.OR = (mcb_pmsm_foc_hall_f28379d_B.DelayOneStep1 ||
    mcb_pmsm_foc_hall_f28379d_B.DataTypeConversion4);

  /* Delay: '<S189>/Delay One Step' */
  doReset = mcb_pmsm_foc_hall_f28379d_B.DataTypeConversion4;
  if (mcb_pmsm_foc_hall_f28379d_B.OR) {
    if (doReset) {
      mcb_pmsm_foc_hall_f28379d_DWork.DelayOneStep_DSTATE = 833U;
    }

    /* Delay: '<S189>/Delay One Step' */
    mcb_pmsm_foc_hall_f28379d_B.DelayOneStep =
      mcb_pmsm_foc_hall_f28379d_DWork.DelayOneStep_DSTATE;
  }

  /* End of Delay: '<S189>/Delay One Step' */

  /* RelationalOperator: '<S193>/Compare' incorporates:
   *  Constant: '<S193>/Constant'
   */
  mcb_pmsm_foc_hall_f28379d_B.Compare_n =
    (mcb_pmsm_foc_hall_f28379d_B.DelayOneStep > 0U);

  /* Switch: '<S192>/watchdog check' */
  if (mcb_pmsm_foc_hall_f28379d_B.Compare_n) {
    /* MinMax: '<S192>/Max' */
    u0 = mcb_pmsm_foc_hall_f28379d_B.Input;
    u1 = mcb_pmsm_foc_hall_f28379d_B.Min_h;
    if (u0 >= u1) {
      u1 = u0;
    }

    /* MinMax: '<S192>/Max' */
    mcb_pmsm_foc_hall_f28379d_B.Max_i = u1;

    /* Switch: '<S192>/speed check' */
    if (mcb_pmsm_foc_hall_f28379d_B.Max_i >= 25000000UL) {
      /* Switch: '<S192>/speed check' incorporates:
       *  Constant: '<S192>/Constant'
       */
      mcb_pmsm_foc_hall_f28379d_B.speedcheck = 0U;
    } else {
      /* Logic: '<S188>/Logical Operator' */
      mcb_pmsm_foc_hall_f28379d_B.LogicalOperator_a =
        (mcb_pmsm_foc_hall_f28379d_B.DataTypeConversion_nh ||
         mcb_pmsm_foc_hall_f28379d_B.validityDelay);

      /* Switch: '<S192>/speed check' */
      mcb_pmsm_foc_hall_f28379d_B.speedcheck =
        mcb_pmsm_foc_hall_f28379d_B.LogicalOperator_a;
    }

    /* End of Switch: '<S192>/speed check' */

    /* Switch: '<S192>/watchdog check' */
    mcb_pmsm_foc_hall_f28379d_B.watchdogcheck =
      mcb_pmsm_foc_hall_f28379d_B.speedcheck;
  } else {
    /* Switch: '<S192>/watchdog check' incorporates:
     *  Constant: '<S192>/Constant'
     */
    mcb_pmsm_foc_hall_f28379d_B.watchdogcheck = 0U;
  }

  /* End of Switch: '<S192>/watchdog check' */

  /* If: '<S177>/If' */
  if (mcb_pmsm_foc_hall_f28379d_B.watchdogcheck != 0U) {
    /* Outputs for IfAction SubSystem: '<S177>/Speed and direction are valid Use speed to extrapolate position' incorporates:
     *  ActionPort: '<S191>/Action Port'
     */
    /* DataTypeConversion: '<S191>/currentSpeedData' */
    mcb_pmsm_foc_hall_f28379d_B.currentSpeedData = (real32_T)
      mcb_pmsm_foc_hall_f28379d_B.Input;

    /* Product: '<S191>/Divide' */
    mcb_pmsm_foc_hall_f28379d_B.Divide =
      mcb_pmsm_foc_hall_f28379_ConstB.SpeedConstData /
      mcb_pmsm_foc_hall_f28379d_B.currentSpeedData;

    /* Gain: '<S191>/SpeedGain' */
    mcb_pmsm_foc_hall_f28379d_B.SpeedGain = 0.0833333358F *
      mcb_pmsm_foc_hall_f28379d_B.Divide;

    /* If: '<S191>/If' */
    if (mcb_pmsm_foc_hall_f28379d_B.DataStoreRead3 > 0) {
      /* Outputs for IfAction SubSystem: '<S191>/If Action Subsystem' incorporates:
       *  ActionPort: '<S202>/Action Port'
       */
      /* Merge: '<S177>/Merge' incorporates:
       *  SignalConversion generated from: '<S202>/In1'
       */
      mcb_pmsm_foc_hall_f28379d_B.Merge_d =
        mcb_pmsm_foc_hall_f28379d_B.SpeedGain;

      /* End of Outputs for SubSystem: '<S191>/If Action Subsystem' */
    } else {
      /* Outputs for IfAction SubSystem: '<S191>/If Action Subsystem1' incorporates:
       *  ActionPort: '<S203>/Action Port'
       */
      /* Merge: '<S177>/Merge' incorporates:
       *  UnaryMinus: '<S203>/Unary Minus'
       */
      mcb_pmsm_foc_hall_f28379d_B.Merge_d =
        -mcb_pmsm_foc_hall_f28379d_B.SpeedGain;

      /* End of Outputs for SubSystem: '<S191>/If Action Subsystem1' */
    }

    /* End of If: '<S191>/If' */

    /* Outputs for Enabled SubSystem: '<S191>/Subsystem1' incorporates:
     *  EnablePort: '<S204>/Enable'
     */
    /* Outputs for IfAction SubSystem: '<S204>/first_order' incorporates:
     *  ActionPort: '<S207>/Action Port'
     */
    /* If: '<S204>/If1' incorporates:
     *  DataTypeConversion: '<S207>/countData'
     *  DataTypeConversion: '<S207>/currentSpeedData'
     *  Gain: '<S207>/Gain'
     *  Merge: '<S204>/Merge1'
     *  Product: '<S207>/Divide'
     */
    mcb_pmsm_foc_hall_f28379d_B.countData = (real32_T)
      mcb_pmsm_foc_hall_f28379d_B.Min_h;
    mcb_pmsm_foc_hall_f28379d_B.currentSpeedData_k = (real32_T)
      mcb_pmsm_foc_hall_f28379d_B.Input;
    mcb_pmsm_foc_hall_f28379d_B.Divide_f = mcb_pmsm_foc_hall_f28379d_B.countData
      / mcb_pmsm_foc_hall_f28379d_B.currentSpeedData_k;
    mcb_pmsm_foc_hall_f28379d_B.Merge1_l = 0.5F *
      mcb_pmsm_foc_hall_f28379d_B.Divide_f;

    /* End of Outputs for SubSystem: '<S204>/first_order' */

    /* Saturate: '<S204>/Saturation' */
    u0_0 = mcb_pmsm_foc_hall_f28379d_B.Merge1_l;
    if (u0_0 > 0.16667F) {
      /* Saturate: '<S204>/Saturation' */
      mcb_pmsm_foc_hall_f28379d_B.Saturation_k = 0.16667F;
    } else {
      /* Saturate: '<S204>/Saturation' */
      mcb_pmsm_foc_hall_f28379d_B.Saturation_k = u0_0;
    }

    /* End of Saturate: '<S204>/Saturation' */

    /* If: '<S204>/If' */
    if (mcb_pmsm_foc_hall_f28379d_B.DataStoreRead3 != 1) {
      /* Outputs for IfAction SubSystem: '<S204>/-ve Direction' incorporates:
       *  ActionPort: '<S206>/Action Port'
       */
      /* SwitchCase: '<S206>/Switch Case' */
      switch ((int32_T)mcb_pmsm_foc_hall_f28379d_B.Merge_i) {
       case 5L:
        /* Outputs for IfAction SubSystem: '<S206>/Hall Value of 1' incorporates:
         *  ActionPort: '<S216>/Action Port'
         */
        mcb_pmsm_foc_h_HallValueof1(&mcb_pmsm_foc_hall_f28379d_B.Merge1_d);

        /* End of Outputs for SubSystem: '<S206>/Hall Value of 1' */
        break;

       case 4L:
        /* Outputs for IfAction SubSystem: '<S206>/Hall Value of 2' incorporates:
         *  ActionPort: '<S217>/Action Port'
         */
        mcb_pmsm_foc_h_HallValueof2(&mcb_pmsm_foc_hall_f28379d_B.Merge1_d);

        /* End of Outputs for SubSystem: '<S206>/Hall Value of 2' */
        break;

       case 6L:
        /* Outputs for IfAction SubSystem: '<S206>/Hall Value of 3' incorporates:
         *  ActionPort: '<S218>/Action Port'
         */
        mcb_pmsm_foc_h_HallValueof3(&mcb_pmsm_foc_hall_f28379d_B.Merge1_d);

        /* End of Outputs for SubSystem: '<S206>/Hall Value of 3' */
        break;

       case 2L:
        /* Outputs for IfAction SubSystem: '<S206>/Hall Value of 4' incorporates:
         *  ActionPort: '<S219>/Action Port'
         */
        mcb_pmsm_foc_h_HallValueof4(&mcb_pmsm_foc_hall_f28379d_B.Merge1_d);

        /* End of Outputs for SubSystem: '<S206>/Hall Value of 4' */
        break;

       case 3L:
        /* Outputs for IfAction SubSystem: '<S206>/Hall Value of 5' incorporates:
         *  ActionPort: '<S220>/Action Port'
         */
        mcb_pmsm_foc_h_HallValueof5(&mcb_pmsm_foc_hall_f28379d_B.Merge1_d);

        /* End of Outputs for SubSystem: '<S206>/Hall Value of 5' */
        break;

       case 1L:
        /* Outputs for IfAction SubSystem: '<S206>/Hall Value of 6' incorporates:
         *  ActionPort: '<S221>/Action Port'
         */
        /* Merge: '<S206>/Merge1' incorporates:
         *  Constant: '<S221>/Constant'
         *  SignalConversion generated from: '<S221>/position'
         */
        mcb_pmsm_foc_hall_f28379d_B.Merge1_d = 1.0F;

        /* End of Outputs for SubSystem: '<S206>/Hall Value of 6' */
        break;

       default:
        /* Outputs for IfAction SubSystem: '<S206>/Hall Value of 7' incorporates:
         *  ActionPort: '<S222>/Action Port'
         */
        mcb_pmsm_foc_h_HallValueof7(&mcb_pmsm_foc_hall_f28379d_B.Merge1_d);

        /* End of Outputs for SubSystem: '<S206>/Hall Value of 7' */
        break;
      }

      /* End of SwitchCase: '<S206>/Switch Case' */

      /* Merge: '<S204>/Merge' incorporates:
       *  Sum: '<S206>/Sum'
       */
      mcb_pmsm_foc_hall_f28379d_B.Merge_c = mcb_pmsm_foc_hall_f28379d_B.Merge1_d
        - mcb_pmsm_foc_hall_f28379d_B.Saturation_k;

      /* End of Outputs for SubSystem: '<S204>/-ve Direction' */
    } else {
      /* Outputs for IfAction SubSystem: '<S204>/+ve Direction' incorporates:
       *  ActionPort: '<S205>/Action Port'
       */
      /* SwitchCase: '<S205>/Switch Case' */
      switch ((int32_T)mcb_pmsm_foc_hall_f28379d_B.Merge_i) {
       case 5L:
        /* Outputs for IfAction SubSystem: '<S205>/Hall Value of 1' incorporates:
         *  ActionPort: '<S209>/Action Port'
         */
        mcb_pmsm_foc_h_HallValueof7(&mcb_pmsm_foc_hall_f28379d_B.Merge1_la);

        /* End of Outputs for SubSystem: '<S205>/Hall Value of 1' */
        break;

       case 4L:
        /* Outputs for IfAction SubSystem: '<S205>/Hall Value of 2' incorporates:
         *  ActionPort: '<S210>/Action Port'
         */
        mcb_pmsm_foc_h_HallValueof1(&mcb_pmsm_foc_hall_f28379d_B.Merge1_la);

        /* End of Outputs for SubSystem: '<S205>/Hall Value of 2' */
        break;

       case 6L:
        /* Outputs for IfAction SubSystem: '<S205>/Hall Value of 3' incorporates:
         *  ActionPort: '<S211>/Action Port'
         */
        mcb_pmsm_foc_h_HallValueof2(&mcb_pmsm_foc_hall_f28379d_B.Merge1_la);

        /* End of Outputs for SubSystem: '<S205>/Hall Value of 3' */
        break;

       case 2L:
        /* Outputs for IfAction SubSystem: '<S205>/Hall Value of 4' incorporates:
         *  ActionPort: '<S212>/Action Port'
         */
        mcb_pmsm_foc_h_HallValueof3(&mcb_pmsm_foc_hall_f28379d_B.Merge1_la);

        /* End of Outputs for SubSystem: '<S205>/Hall Value of 4' */
        break;

       case 3L:
        /* Outputs for IfAction SubSystem: '<S205>/Hall Value of 5' incorporates:
         *  ActionPort: '<S213>/Action Port'
         */
        mcb_pmsm_foc_h_HallValueof4(&mcb_pmsm_foc_hall_f28379d_B.Merge1_la);

        /* End of Outputs for SubSystem: '<S205>/Hall Value of 5' */
        break;

       case 1L:
        /* Outputs for IfAction SubSystem: '<S205>/Hall Value of 6' incorporates:
         *  ActionPort: '<S214>/Action Port'
         */
        mcb_pmsm_foc_h_HallValueof5(&mcb_pmsm_foc_hall_f28379d_B.Merge1_la);

        /* End of Outputs for SubSystem: '<S205>/Hall Value of 6' */
        break;

       default:
        /* Outputs for IfAction SubSystem: '<S205>/Hall Value of 7' incorporates:
         *  ActionPort: '<S215>/Action Port'
         */
        mcb_pmsm_foc_h_HallValueof7(&mcb_pmsm_foc_hall_f28379d_B.Merge1_la);

        /* End of Outputs for SubSystem: '<S205>/Hall Value of 7' */
        break;
      }

      /* End of SwitchCase: '<S205>/Switch Case' */

      /* Merge: '<S204>/Merge' incorporates:
       *  Sum: '<S205>/Sum'
       */
      mcb_pmsm_foc_hall_f28379d_B.Merge_c =
        mcb_pmsm_foc_hall_f28379d_B.Merge1_la +
        mcb_pmsm_foc_hall_f28379d_B.Saturation_k;

      /* End of Outputs for SubSystem: '<S204>/+ve Direction' */
    }

    /* End of If: '<S204>/If' */
    /* End of Outputs for SubSystem: '<S191>/Subsystem1' */

    /* Merge: '<S177>/Merge1' incorporates:
     *  SignalConversion generated from: '<S191>/rawPosition'
     */
    mcb_pmsm_foc_hall_f28379d_B.Merge1_f = mcb_pmsm_foc_hall_f28379d_B.Merge_c;

    /* End of Outputs for SubSystem: '<S177>/Speed and direction are valid Use speed to extrapolate position' */
  } else {
    /* Outputs for IfAction SubSystem: '<S177>/Speed and direction are not valid Position will be set to the middle of the Hall quadrant' incorporates:
     *  ActionPort: '<S190>/Action Port'
     */
    /* SwitchCase: '<S194>/Switch Case' */
    switch ((int32_T)mcb_pmsm_foc_hall_f28379d_B.Merge_i) {
     case 5L:
      /* Outputs for IfAction SubSystem: '<S194>/Hall Value of 1' incorporates:
       *  ActionPort: '<S195>/Action Port'
       */
      /* Merge: '<S177>/Merge1' incorporates:
       *  Constant: '<S195>/Constant'
       *  SignalConversion generated from: '<S195>/position'
       */
      mcb_pmsm_foc_hall_f28379d_B.Merge1_f = 0.083333F;

      /* End of Outputs for SubSystem: '<S194>/Hall Value of 1' */
      break;

     case 4L:
      /* Outputs for IfAction SubSystem: '<S194>/Hall Value of 2' incorporates:
       *  ActionPort: '<S196>/Action Port'
       */
      /* Merge: '<S177>/Merge1' incorporates:
       *  Constant: '<S196>/Constant'
       *  SignalConversion generated from: '<S196>/position'
       */
      mcb_pmsm_foc_hall_f28379d_B.Merge1_f = 0.25F;

      /* End of Outputs for SubSystem: '<S194>/Hall Value of 2' */
      break;

     case 6L:
      /* Outputs for IfAction SubSystem: '<S194>/Hall Value of 3' incorporates:
       *  ActionPort: '<S197>/Action Port'
       */
      /* Merge: '<S177>/Merge1' incorporates:
       *  Constant: '<S197>/Constant'
       *  SignalConversion generated from: '<S197>/position'
       */
      mcb_pmsm_foc_hall_f28379d_B.Merge1_f = 0.41667F;

      /* End of Outputs for SubSystem: '<S194>/Hall Value of 3' */
      break;

     case 2L:
      /* Outputs for IfAction SubSystem: '<S194>/Hall Value of 4' incorporates:
       *  ActionPort: '<S198>/Action Port'
       */
      /* Merge: '<S177>/Merge1' incorporates:
       *  Constant: '<S198>/Constant'
       *  SignalConversion generated from: '<S198>/position'
       */
      mcb_pmsm_foc_hall_f28379d_B.Merge1_f = 0.58333F;

      /* End of Outputs for SubSystem: '<S194>/Hall Value of 4' */
      break;

     case 3L:
      /* Outputs for IfAction SubSystem: '<S194>/Hall Value of 5' incorporates:
       *  ActionPort: '<S199>/Action Port'
       */
      /* Merge: '<S177>/Merge1' incorporates:
       *  Constant: '<S199>/Constant'
       *  SignalConversion generated from: '<S199>/position'
       */
      mcb_pmsm_foc_hall_f28379d_B.Merge1_f = 0.75F;

      /* End of Outputs for SubSystem: '<S194>/Hall Value of 5' */
      break;

     case 1L:
      /* Outputs for IfAction SubSystem: '<S194>/Hall Value of 6' incorporates:
       *  ActionPort: '<S200>/Action Port'
       */
      /* Merge: '<S177>/Merge1' incorporates:
       *  Constant: '<S200>/Constant'
       *  SignalConversion generated from: '<S200>/position'
       */
      mcb_pmsm_foc_hall_f28379d_B.Merge1_f = 0.91667F;

      /* End of Outputs for SubSystem: '<S194>/Hall Value of 6' */
      break;

     default:
      /* Outputs for IfAction SubSystem: '<S194>/Hall Value of 7' incorporates:
       *  ActionPort: '<S201>/Action Port'
       */
      mcb_pmsm_foc_h_HallValueof7(&mcb_pmsm_foc_hall_f28379d_B.Merge1_f);

      /* End of Outputs for SubSystem: '<S194>/Hall Value of 7' */
      break;
    }

    /* End of SwitchCase: '<S194>/Switch Case' */

    /* Merge: '<S177>/Merge' incorporates:
     *  Constant: '<S190>/Constant'
     *  SignalConversion generated from: '<S190>/Speed(r.p.m)'
     */
    mcb_pmsm_foc_hall_f28379d_B.Merge_d = 0.0F;

    /* End of Outputs for SubSystem: '<S177>/Speed and direction are not valid Position will be set to the middle of the Hall quadrant' */
  }

  /* End of If: '<S177>/If' */

  /* Switch: '<S224>/Switch' incorporates:
   *  Constant: '<S224>/Constant1'
   */
  mcb_pmsm_foc_hall_f28379d_B.Switch_hp = 0.0523F;

  /* If: '<S225>/If' */
  if (mcb_pmsm_foc_hall_f28379d_B.Merge1_f <= 0.0523F) {
    /* Outputs for IfAction SubSystem: '<S225>/If Action Subsystem' incorporates:
     *  ActionPort: '<S227>/Action Port'
     */
    mcb_pms_IfActionSubsystem_n(mcb_pmsm_foc_hall_f28379d_B.Merge1_f, 0.0523F,
      &mcb_pmsm_foc_hall_f28379d_B.Merge_me);

    /* End of Outputs for SubSystem: '<S225>/If Action Subsystem' */
  } else {
    /* Outputs for IfAction SubSystem: '<S225>/If Action Subsystem1' incorporates:
     *  ActionPort: '<S228>/Action Port'
     */
    /* Merge: '<S225>/Merge' incorporates:
     *  Sum: '<S228>/Add'
     */
    mcb_pmsm_foc_hall_f28379d_B.Merge_me = mcb_pmsm_foc_hall_f28379d_B.Merge1_f
      - 0.0523F;

    /* End of Outputs for SubSystem: '<S225>/If Action Subsystem1' */
  }

  /* End of If: '<S225>/If' */

  /* Rounding: '<S226>/Floor' */
  mcb_pmsm_foc_hall_f28379d_B.Floor = (real32_T)floor
    (mcb_pmsm_foc_hall_f28379d_B.Merge_me);

  /* Sum: '<S226>/Add' */
  mcb_pmsm_foc_hall_f28379d_B.Add_e = mcb_pmsm_foc_hall_f28379d_B.Merge_me -
    mcb_pmsm_foc_hall_f28379d_B.Floor;

  /* SwitchCase: '<S19>/Switch Case' */
  switch ((int32_T)mcb_pmsm_foc_hall_f28379d_B.RT9) {
   case 1L:
    /* Outputs for IfAction SubSystem: '<S19>/If Action Subsystem' incorporates:
     *  ActionPort: '<S246>/Action Port'
     */
    mcb_pms_IfActionSubsystem_e(mcb_pmsm_foc_hall_f28379d_B.RT11,
      mcb_pmsm_foc_hall_f28379d_B.RT13, &mcb_pmsm_foc_hall_f28379d_B.Merge_o,
      &mcb_pmsm_foc_hall_f28379d_B.Merge1_m,
      &mcb_pmsm_foc_hall_f28379d_B.IfActionSubsystem_e);

    /* End of Outputs for SubSystem: '<S19>/If Action Subsystem' */
    break;

   case 2L:
    /* Outputs for IfAction SubSystem: '<S19>/If Action Subsystem2' incorporates:
     *  ActionPort: '<S248>/Action Port'
     */
    mcb_pms_IfActionSubsystem_e(mcb_pmsm_foc_hall_f28379d_B.RT11,
      mcb_pmsm_foc_hall_f28379d_B.RT13, &mcb_pmsm_foc_hall_f28379d_B.Merge_o,
      &mcb_pmsm_foc_hall_f28379d_B.Merge1_m,
      &mcb_pmsm_foc_hall_f28379d_B.IfActionSubsystem2);

    /* End of Outputs for SubSystem: '<S19>/If Action Subsystem2' */
    break;

   case 3L:
    /* Outputs for IfAction SubSystem: '<S19>/If Action Subsystem3' incorporates:
     *  ActionPort: '<S249>/Action Port'
     */
    mcb_pms_IfActionSubsystem_e(mcb_pmsm_foc_hall_f28379d_B.RT11,
      mcb_pmsm_foc_hall_f28379d_B.RT13, &mcb_pmsm_foc_hall_f28379d_B.Merge_o,
      &mcb_pmsm_foc_hall_f28379d_B.Merge1_m,
      &mcb_pmsm_foc_hall_f28379d_B.IfActionSubsystem3);

    /* End of Outputs for SubSystem: '<S19>/If Action Subsystem3' */
    break;

   case 4L:
    /* Outputs for IfAction SubSystem: '<S19>/If Action Subsystem1' incorporates:
     *  ActionPort: '<S247>/Action Port'
     */
    /* Merge: '<S19>/Merge' incorporates:
     *  SignalConversion generated from: '<S247>/Pos_Meas'
     */
    mcb_pmsm_foc_hall_f28379d_B.Merge_o = mcb_pmsm_foc_hall_f28379d_B.Add_e;

    /* Merge: '<S19>/Merge1' incorporates:
     *  SignalConversion generated from: '<S247>/speed_Meas'
     */
    mcb_pmsm_foc_hall_f28379d_B.Merge1_m = mcb_pmsm_foc_hall_f28379d_B.Merge_d;

    /* End of Outputs for SubSystem: '<S19>/If Action Subsystem1' */
    break;

   default:
    /* no actions */
    break;
  }

  /* End of SwitchCase: '<S19>/Switch Case' */

  /* If: '<S13>/If' */
  if ((mcb_pmsm_foc_hall_f28379d_B.CastToSingle > 0.0F) &&
      (mcb_pmsm_foc_hall_f28379d_B.DataStoreRead2_l >
       mcb_pmsm_foc_hall_f28379_ConstB.Gain1) &&
      (mcb_pmsm_foc_hall_f28379d_B.Merge1_m == 0.0F)) {
    /* Outputs for IfAction SubSystem: '<S13>/堵转' incorporates:
     *  ActionPort: '<S170>/Action Port'
     */
    /* Merge: '<S13>/Merge' incorporates:
     *  Constant: '<S13>/Constant'
     *  SignalConversion generated from: '<S170>/In1'
     */
    mcb_pmsm_foc_hall_f28379d_B.Merge_l = 1U;

    /* DiscretePulseGenerator: '<S170>/Discrete Pulse Generator' */
    mcb_pmsm_foc_hall_f28379d_B.DiscretePulseGenerator =
      (mcb_pmsm_foc_hall_f28379d_DWork.clockTickCounter < 19L) &&
      (mcb_pmsm_foc_hall_f28379d_DWork.clockTickCounter >= 0L) ? 0.2 : 0.0;

    /* DiscretePulseGenerator: '<S170>/Discrete Pulse Generator' */
    if (mcb_pmsm_foc_hall_f28379d_DWork.clockTickCounter >= 37L) {
      mcb_pmsm_foc_hall_f28379d_DWork.clockTickCounter = 0L;
    } else {
      mcb_pmsm_foc_hall_f28379d_DWork.clockTickCounter++;
    }

    /* Merge: '<S13>/Merge1' incorporates:
     *  Constant: '<S170>/Constant1'
     *  Sum: '<S170>/Subtract'
     */
    mcb_pmsm_foc_hall_f28379d_B.Merge1 =
      mcb_pmsm_foc_hall_f28379d_B.DiscretePulseGenerator - 0.1;

    /* End of Outputs for SubSystem: '<S13>/堵转' */
  } else {
    /* Outputs for IfAction SubSystem: '<S13>/正常运行' incorporates:
     *  ActionPort: '<S171>/Action Port'
     */
    /* Merge: '<S13>/Merge' incorporates:
     *  Constant: '<S13>/Constant1'
     *  SignalConversion generated from: '<S171>/In1'
     */
    mcb_pmsm_foc_hall_f28379d_B.Merge_l = 0U;

    /* Merge: '<S13>/Merge1' incorporates:
     *  Constant: '<S171>/Constant'
     *  SignalConversion generated from: '<S171>/Vd'
     */
    mcb_pmsm_foc_hall_f28379d_B.Merge1 = 0.0;

    /* End of Outputs for SubSystem: '<S13>/正常运行' */
  }

  /* End of If: '<S13>/If' */

  /* DataStoreWrite: '<S13>/Data Store Write' incorporates:
   *  Merge: '<S13>/Merge'
   */
  mcb_pmsm_foc_hall_f28379d_DWork.ERROR = mcb_pmsm_foc_hall_f28379d_B.Merge_l;

  /* Switch: '<S177>/Switch' incorporates:
   *  Constant: '<S177>/WatchDog'
   */
  mcb_pmsm_foc_hall_f28379d_B.Switch_a = 0U;

  /* DataStoreWrite: '<S173>/Data Store Write2' */
  mcb_pmsm_foc_hall_f28379d_DWork.HallStateChangeFlag = 0U;

  /* Sum: '<S189>/Sum' incorporates:
   *  Constant: '<S189>/Constant2'
   */
  mcb_pmsm_foc_hall_f28379d_B.Sum_m3 = mcb_pmsm_foc_hall_f28379d_B.DelayOneStep
    - 1U;

  /* DataStoreRead: '<S174>/Data Store Read' */
  mcb_pmsm_foc_hall_f28379d_B.DataStoreRead_k =
    mcb_pmsm_foc_hall_f28379d_DWork.IaOffset;

  /* DataStoreRead: '<S174>/Data Store Read1' */
  mcb_pmsm_foc_hall_f28379d_B.DataStoreRead1_h =
    mcb_pmsm_foc_hall_f28379d_DWork.IbOffset;

  /* S-Function (c2802xadc): '<S245>/ADC_C_IN2' */
  {
    /*  Internal Reference Voltage : Fixed scale 0 to 3.3 V range.  */
    /*  External Reference Voltage : Allowable ranges of VREFHI(ADCINA0) = 3.3 and VREFLO(tied to ground) = 0  */
    mcb_pmsm_foc_hall_f28379d_B.ADC_C_IN2 = (AdccResultRegs.ADCRESULT0);
  }

  /* S-Function (c2802xadc): '<S245>/ADC_B_IN2' */
  {
    /*  Internal Reference Voltage : Fixed scale 0 to 3.3 V range.  */
    /*  External Reference Voltage : Allowable ranges of VREFHI(ADCINA0) = 3.3 and VREFLO(tied to ground) = 0  */
    mcb_pmsm_foc_hall_f28379d_B.ADC_B_IN2 = (AdcbResultRegs.ADCRESULT0);
  }

  /* SignalConversion generated from: '<S174>/Gain' */
  mcb_pmsm_foc_hall_f28379d_B.TmpSignalConversionAtGainInport[0] =
    mcb_pmsm_foc_hall_f28379d_B.ADC_C_IN2;
  mcb_pmsm_foc_hall_f28379d_B.TmpSignalConversionAtGainInport[1] =
    mcb_pmsm_foc_hall_f28379d_B.ADC_B_IN2;

  /* DataTypeConversion: '<S174>/Data Type Conversion' */
  TmpSignalConversionAtGainInport =
    mcb_pmsm_foc_hall_f28379d_B.TmpSignalConversionAtGainInport[0];

  /* DataTypeConversion: '<S174>/Data Type Conversion' */
  mcb_pmsm_foc_hall_f28379d_B.DataTypeConversion_f[0] =
    TmpSignalConversionAtGainInport;

  /* Gain: '<S174>/Gain' */
  u0 = (uint32_T)TmpSignalConversionAtGainInport << 15U;
  mcb_pmsm_foc_hall_f28379d_B.Gain_o[0] = u0;

  /* DataTypeConversion: '<S174>/Cast To Single' incorporates:
   *  Gain: '<S174>/Gain'
   */
  mcb_pmsm_foc_hall_f28379d_B.CastToSingle_e[0] = (real32_T)u0 * 7.4505806E-9F;

  /* DataTypeConversion: '<S174>/Data Type Conversion' */
  TmpSignalConversionAtGainInport =
    mcb_pmsm_foc_hall_f28379d_B.TmpSignalConversionAtGainInport[1];

  /* DataTypeConversion: '<S174>/Data Type Conversion' */
  mcb_pmsm_foc_hall_f28379d_B.DataTypeConversion_f[1] =
    TmpSignalConversionAtGainInport;

  /* Gain: '<S174>/Gain' */
  u0 = (uint32_T)TmpSignalConversionAtGainInport << 15U;
  mcb_pmsm_foc_hall_f28379d_B.Gain_o[1] = u0;

  /* DataTypeConversion: '<S174>/Cast To Single' incorporates:
   *  Gain: '<S174>/Gain'
   */
  mcb_pmsm_foc_hall_f28379d_B.CastToSingle_e[1] = (real32_T)u0 * 7.4505806E-9F;

  /* Sum: '<S174>/Add' */
  mcb_pmsm_foc_hall_f28379d_B.Add_fi[0] =
    mcb_pmsm_foc_hall_f28379d_B.DataTypeConversion_f[0] -
    mcb_pmsm_foc_hall_f28379d_B.DataStoreRead_k;
  mcb_pmsm_foc_hall_f28379d_B.Add_fi[1] =
    mcb_pmsm_foc_hall_f28379d_B.DataTypeConversion_f[1] -
    mcb_pmsm_foc_hall_f28379d_B.DataStoreRead1_h;

  /* Gain: '<S232>/Get ADC Voltage' */
  u0_0 = 0.000732600747F * (real32_T)mcb_pmsm_foc_hall_f28379d_B.Add_fi[0];
  mcb_pmsm_foc_hall_f28379d_B.GetADCVoltage[0] = u0_0;

  /* Gain: '<S232>/Get Currents' */
  u0_0 *= 7.14285707F;
  mcb_pmsm_foc_hall_f28379d_B.GetCurrents[0] = u0_0;

  /* Gain: '<S232>/PU_Conversion' */
  mcb_pmsm_foc_hall_f28379d_B.PU_Conversion[0] = 0.0933333337F * u0_0;

  /* Gain: '<S232>/Get ADC Voltage' */
  u0_0 = 0.000732600747F * (real32_T)mcb_pmsm_foc_hall_f28379d_B.Add_fi[1];
  mcb_pmsm_foc_hall_f28379d_B.GetADCVoltage[1] = u0_0;

  /* Gain: '<S232>/Get Currents' */
  u0_0 *= 7.14285707F;
  mcb_pmsm_foc_hall_f28379d_B.GetCurrents[1] = u0_0;

  /* Gain: '<S232>/PU_Conversion' */
  mcb_pmsm_foc_hall_f28379d_B.PU_Conversion[1] = 0.0933333337F * u0_0;

  /* UnitDelay: '<S239>/Output' */
  mcb_pmsm_foc_hall_f28379d_B.Output =
    mcb_pmsm_foc_hall_f28379d_DWork.Output_DSTATE;

  /* DataStoreRead: '<S12>/Data Store Read1' */
  mcb_pmsm_foc_hall_f28379d_B.DataStoreRead1 =
    mcb_pmsm_foc_hall_f28379d_DWork.Speed_ref;

  /* Outputs for Atomic SubSystem: '<S25>/Two phase CRL wrap' */
  /* Sum: '<S26>/a_plus_2b' */
  mcb_pmsm_foc_hall_f28379d_B.a_plus_2b =
    (mcb_pmsm_foc_hall_f28379d_B.PU_Conversion[0] +
     mcb_pmsm_foc_hall_f28379d_B.PU_Conversion[1]) +
    mcb_pmsm_foc_hall_f28379d_B.PU_Conversion[1];

  /* Gain: '<S26>/one_by_sqrt3' */
  mcb_pmsm_foc_hall_f28379d_B.one_by_sqrt3 = 0.577350259F *
    mcb_pmsm_foc_hall_f28379d_B.a_plus_2b;

  /* AlgorithmDescriptorDelegate generated from: '<S26>/a16' */
  mcb_pmsm_foc_hall_f28379d_B.algDD_o1_a =
    mcb_pmsm_foc_hall_f28379d_B.PU_Conversion[0];

  /* AlgorithmDescriptorDelegate generated from: '<S26>/a16' */
  mcb_pmsm_foc_hall_f28379d_B.algDD_o2_n =
    mcb_pmsm_foc_hall_f28379d_B.one_by_sqrt3;

  /* End of Outputs for SubSystem: '<S25>/Two phase CRL wrap' */

  /* RelationalOperator: '<S159>/Compare' incorporates:
   *  Constant: '<S159>/Constant'
   */
  mcb_pmsm_foc_hall_f28379d_B.Compare_d = (mcb_pmsm_foc_hall_f28379d_B.Merge_o <
    0.0F);

  /* DataTypeConversion: '<S158>/Data Type Conversion' */
  mcb_pmsm_foc_hall_f28379d_B.DataTypeConversion_m =
    mcb_pmsm_foc_hall_f28379d_B.Compare_d;

  /* If: '<S158>/If' */
  if (mcb_pmsm_foc_hall_f28379d_B.DataTypeConversion_m > 0U) {
    /* Outputs for IfAction SubSystem: '<S158>/If Action Subsystem' incorporates:
     *  ActionPort: '<S160>/Action Port'
     */
    mcb_pmsm__IfActionSubsystem(mcb_pmsm_foc_hall_f28379d_B.Merge_o,
      &mcb_pmsm_foc_hall_f28379d_B.Merge_mm,
      &mcb_pmsm_foc_hall_f28379d_B.IfActionSubsystem_n);

    /* End of Outputs for SubSystem: '<S158>/If Action Subsystem' */
  } else {
    /* Outputs for IfAction SubSystem: '<S158>/If Action Subsystem1' incorporates:
     *  ActionPort: '<S161>/Action Port'
     */
    mcb_pmsm_IfActionSubsystem1(mcb_pmsm_foc_hall_f28379d_B.Merge_o,
      &mcb_pmsm_foc_hall_f28379d_B.Merge_mm,
      &mcb_pmsm_foc_hall_f28379d_B.IfActionSubsystem1_i);

    /* End of Outputs for SubSystem: '<S158>/If Action Subsystem1' */
  }

  /* End of If: '<S158>/If' */

  /* Gain: '<S156>/indexing' */
  mcb_pmsm_foc_hall_f28379d_B.indexing = 800.0F *
    mcb_pmsm_foc_hall_f28379d_B.Merge_mm;

  /* DataTypeConversion: '<S156>/Get_Integer' */
  mcb_pmsm_foc_hall_f28379d_B.Get_Integer = (uint16_T)
    mcb_pmsm_foc_hall_f28379d_B.indexing;

  /* Sum: '<S156>/Sum' incorporates:
   *  Constant: '<S156>/offset'
   */
  u0 = mcb_pmsm_foc_hall_f28379d_B.Get_Integer + 1UL;
  mcb_pmsm_foc_hall_f28379d_B.Sum_g[0] = u0;

  /* Selector: '<S156>/Lookup' incorporates:
   *  Constant: '<S156>/sine_table_values'
   */
  mcb_pmsm_foc_hall_f28379d_B.Lookup[0] =
    mcb_pmsm_foc_hall_f28379_ConstP.pooled14[(int16_T)u0];

  /* Sum: '<S156>/Sum' */
  u0 = mcb_pmsm_foc_hall_f28379d_B.Get_Integer;
  mcb_pmsm_foc_hall_f28379d_B.Sum_g[1] = u0;

  /* Selector: '<S156>/Lookup' incorporates:
   *  Constant: '<S156>/sine_table_values'
   */
  mcb_pmsm_foc_hall_f28379d_B.Lookup[1] =
    mcb_pmsm_foc_hall_f28379_ConstP.pooled14[(int16_T)u0];

  /* Sum: '<S156>/Sum' incorporates:
   *  Constant: '<S156>/offset'
   */
  u0 = mcb_pmsm_foc_hall_f28379d_B.Get_Integer + 201UL;
  mcb_pmsm_foc_hall_f28379d_B.Sum_g[2] = u0;

  /* Selector: '<S156>/Lookup' incorporates:
   *  Constant: '<S156>/sine_table_values'
   */
  mcb_pmsm_foc_hall_f28379d_B.Lookup[2] =
    mcb_pmsm_foc_hall_f28379_ConstP.pooled14[(int16_T)u0];

  /* Sum: '<S156>/Sum' incorporates:
   *  Constant: '<S156>/offset'
   */
  u0 = mcb_pmsm_foc_hall_f28379d_B.Get_Integer + 200UL;
  mcb_pmsm_foc_hall_f28379d_B.Sum_g[3] = u0;

  /* Selector: '<S156>/Lookup' incorporates:
   *  Constant: '<S156>/sine_table_values'
   */
  mcb_pmsm_foc_hall_f28379d_B.Lookup[3] =
    mcb_pmsm_foc_hall_f28379_ConstP.pooled14[(int16_T)u0];

  /* Sum: '<S157>/Sum3' */
  mcb_pmsm_foc_hall_f28379d_B.Sum3 = mcb_pmsm_foc_hall_f28379d_B.Lookup[0] -
    mcb_pmsm_foc_hall_f28379d_B.Lookup[1];

  /* DataTypeConversion: '<S156>/Data Type Conversion1' */
  mcb_pmsm_foc_hall_f28379d_B.DataTypeConversion1 =
    mcb_pmsm_foc_hall_f28379d_B.Get_Integer;

  /* Sum: '<S156>/Sum2' */
  mcb_pmsm_foc_hall_f28379d_B.Sum2 = mcb_pmsm_foc_hall_f28379d_B.indexing -
    mcb_pmsm_foc_hall_f28379d_B.DataTypeConversion1;

  /* Product: '<S157>/Product' */
  mcb_pmsm_foc_hall_f28379d_B.Product_m = mcb_pmsm_foc_hall_f28379d_B.Sum3 *
    mcb_pmsm_foc_hall_f28379d_B.Sum2;

  /* Sum: '<S157>/Sum4' */
  mcb_pmsm_foc_hall_f28379d_B.Sum4 = mcb_pmsm_foc_hall_f28379d_B.Product_m +
    mcb_pmsm_foc_hall_f28379d_B.Lookup[1];

  /* Sum: '<S157>/Sum5' */
  mcb_pmsm_foc_hall_f28379d_B.Sum5 = mcb_pmsm_foc_hall_f28379d_B.Lookup[2] -
    mcb_pmsm_foc_hall_f28379d_B.Lookup[3];

  /* Product: '<S157>/Product1' */
  mcb_pmsm_foc_hall_f28379d_B.Product1_k = mcb_pmsm_foc_hall_f28379d_B.Sum5 *
    mcb_pmsm_foc_hall_f28379d_B.Sum2;

  /* Sum: '<S157>/Sum6' */
  mcb_pmsm_foc_hall_f28379d_B.Sum6 = mcb_pmsm_foc_hall_f28379d_B.Product1_k +
    mcb_pmsm_foc_hall_f28379d_B.Lookup[3];

  /* Outputs for Atomic SubSystem: '<S23>/Two inputs CRL' */
  /* Product: '<S155>/acos' */
  mcb_pmsm_foc_hall_f28379d_B.acos_e = mcb_pmsm_foc_hall_f28379d_B.algDD_o1_a *
    mcb_pmsm_foc_hall_f28379d_B.Sum6;

  /* Product: '<S155>/bsin' */
  mcb_pmsm_foc_hall_f28379d_B.bsin = mcb_pmsm_foc_hall_f28379d_B.algDD_o2_n *
    mcb_pmsm_foc_hall_f28379d_B.Sum4;

  /* Sum: '<S155>/sum_Ds' */
  mcb_pmsm_foc_hall_f28379d_B.sum_Ds = mcb_pmsm_foc_hall_f28379d_B.acos_e +
    mcb_pmsm_foc_hall_f28379d_B.bsin;

  /* Product: '<S155>/bcos' */
  mcb_pmsm_foc_hall_f28379d_B.bcos = mcb_pmsm_foc_hall_f28379d_B.algDD_o2_n *
    mcb_pmsm_foc_hall_f28379d_B.Sum6;

  /* Product: '<S155>/asin' */
  mcb_pmsm_foc_hall_f28379d_B.asin_j = mcb_pmsm_foc_hall_f28379d_B.algDD_o1_a *
    mcb_pmsm_foc_hall_f28379d_B.Sum4;

  /* Sum: '<S155>/sum_Qs' */
  mcb_pmsm_foc_hall_f28379d_B.sum_Qs = mcb_pmsm_foc_hall_f28379d_B.bcos -
    mcb_pmsm_foc_hall_f28379d_B.asin_j;

  /* Switch: '<S162>/Switch' */
  mcb_pmsm_foc_hall_f28379d_B.Switch_fd[0] = mcb_pmsm_foc_hall_f28379d_B.sum_Ds;
  mcb_pmsm_foc_hall_f28379d_B.Switch_fd[1] = mcb_pmsm_foc_hall_f28379d_B.sum_Qs;

  /* AlgorithmDescriptorDelegate generated from: '<S155>/a16' */
  mcb_pmsm_foc_hall_f28379d_B.algDD_o1_h =
    mcb_pmsm_foc_hall_f28379d_B.Switch_fd[0];

  /* AlgorithmDescriptorDelegate generated from: '<S155>/a16' */
  mcb_pmsm_foc_hall_f28379d_B.algDD_o2_l =
    mcb_pmsm_foc_hall_f28379d_B.Switch_fd[1];

  /* End of Outputs for SubSystem: '<S23>/Two inputs CRL' */

  /* DataTypeConversion: '<S12>/Cast To Single' */
  mcb_pmsm_foc_hall_f28379d_B.CastToSingle_f = mcb_pmsm_foc_hall_f28379d_B.RT9;

  /* Switch: '<S32>/Switch1' incorporates:
   *  Constant: '<S32>/ChosenMethod'
   */
  mcb_pmsm_foc_hall_f28379d_B.Switch1_o = 3U;

  /* Sum: '<S29>/Sum' */
  mcb_pmsm_foc_hall_f28379d_B.Sum_gs = mcb_pmsm_foc_hall_f28379d_B.RT2[1] -
    mcb_pmsm_foc_hall_f28379d_B.algDD_o2_l;

  /* Product: '<S134>/PProd Out' incorporates:
   *  Constant: '<S29>/Kp'
   */
  mcb_pmsm_foc_hall_f28379d_B.PProdOut = mcb_pmsm_foc_hall_f28379d_B.Sum_gs *
    2.0F;

  /* DataStoreRead: '<S29>/Data Store Read1' */
  mcb_pmsm_foc_hall_f28379d_B.DataStoreRead1_b =
    mcb_pmsm_foc_hall_f28379d_DWork.Enable;

  /* Logic: '<S29>/Logical Operator' */
  mcb_pmsm_foc_hall_f28379d_B.LogicalOperator =
    !mcb_pmsm_foc_hall_f28379d_B.DataStoreRead1_b;

  /* Constant: '<S29>/Kp1' */
  mcb_pmsm_foc_hall_f28379d_B.Kp1 = 0.0F;

  /* DiscreteIntegrator: '<S129>/Integrator' */
  if (mcb_pmsm_foc_hall_f28379d_B.LogicalOperator ||
      (mcb_pmsm_foc_hall_f28379d_DWork.Integrator_PrevResetState != 0)) {
    mcb_pmsm_foc_hall_f28379d_DWork.Integrator_DSTATE = 0.0F;
  }

  /* DiscreteIntegrator: '<S129>/Integrator' */
  mcb_pmsm_foc_hall_f28379d_B.Integrator =
    mcb_pmsm_foc_hall_f28379d_DWork.Integrator_DSTATE;

  /* Sum: '<S138>/Sum' */
  mcb_pmsm_foc_hall_f28379d_B.Sum_m = mcb_pmsm_foc_hall_f28379d_B.PProdOut +
    mcb_pmsm_foc_hall_f28379d_B.Integrator;

  /* Saturate: '<S136>/Saturation' */
  u0_1 = mcb_pmsm_foc_hall_f28379d_B.Sum_m;
  if (u0_1 > 1.0) {
    /* Saturate: '<S136>/Saturation' */
    mcb_pmsm_foc_hall_f28379d_B.Saturation = 1.0;
  } else if (u0_1 < -1.0) {
    /* Saturate: '<S136>/Saturation' */
    mcb_pmsm_foc_hall_f28379d_B.Saturation = -1.0;
  } else {
    /* Saturate: '<S136>/Saturation' */
    mcb_pmsm_foc_hall_f28379d_B.Saturation = u0_1;
  }

  /* End of Saturate: '<S136>/Saturation' */

  /* Sum: '<S28>/Sum' */
  mcb_pmsm_foc_hall_f28379d_B.Sum_b = mcb_pmsm_foc_hall_f28379d_B.RT2[0] -
    mcb_pmsm_foc_hall_f28379d_B.algDD_o1_h;

  /* Product: '<S83>/PProd Out' incorporates:
   *  Constant: '<S28>/Kp'
   */
  mcb_pmsm_foc_hall_f28379d_B.PProdOut_b = mcb_pmsm_foc_hall_f28379d_B.Sum_b *
    2.0F;

  /* DataStoreRead: '<S28>/Data Store Read1' */
  mcb_pmsm_foc_hall_f28379d_B.DataStoreRead1_g =
    mcb_pmsm_foc_hall_f28379d_DWork.Enable;

  /* Logic: '<S28>/Logical Operator' */
  mcb_pmsm_foc_hall_f28379d_B.LogicalOperator_j =
    !mcb_pmsm_foc_hall_f28379d_B.DataStoreRead1_g;

  /* Constant: '<S28>/Ki1' */
  mcb_pmsm_foc_hall_f28379d_B.Ki1 = 0.0F;

  /* DiscreteIntegrator: '<S78>/Integrator' */
  if (mcb_pmsm_foc_hall_f28379d_B.LogicalOperator_j ||
      (mcb_pmsm_foc_hall_f28379d_DWork.Integrator_PrevResetState_m != 0)) {
    mcb_pmsm_foc_hall_f28379d_DWork.Integrator_DSTATE_j = 0.0F;
  }

  /* DiscreteIntegrator: '<S78>/Integrator' */
  mcb_pmsm_foc_hall_f28379d_B.Integrator_o =
    mcb_pmsm_foc_hall_f28379d_DWork.Integrator_DSTATE_j;

  /* Sum: '<S87>/Sum' */
  mcb_pmsm_foc_hall_f28379d_B.Sum_h = mcb_pmsm_foc_hall_f28379d_B.PProdOut_b +
    mcb_pmsm_foc_hall_f28379d_B.Integrator_o;

  /* Saturate: '<S85>/Saturation' */
  u0_1 = mcb_pmsm_foc_hall_f28379d_B.Sum_h;
  if (u0_1 > 1.0) {
    /* Saturate: '<S85>/Saturation' */
    mcb_pmsm_foc_hall_f28379d_B.Saturation_j = 1.0;
  } else if (u0_1 < -1.0) {
    /* Saturate: '<S85>/Saturation' */
    mcb_pmsm_foc_hall_f28379d_B.Saturation_j = -1.0;
  } else {
    /* Saturate: '<S85>/Saturation' */
    mcb_pmsm_foc_hall_f28379d_B.Saturation_j = u0_1;
  }

  /* End of Saturate: '<S85>/Saturation' */

  /* Switch: '<S32>/Switch' incorporates:
   *  Constant: '<S32>/Constant3'
   */
  mcb_pmsm_foc_hall_f28379d_B.Switch = 0.95;

  /* Product: '<S32>/Product' */
  mcb_pmsm_foc_hall_f28379d_B.Product = 0.9025;

  /* Product: '<S33>/Product' */
  mcb_pmsm_foc_hall_f28379d_B.Product_e =
    mcb_pmsm_foc_hall_f28379d_B.Saturation_j *
    mcb_pmsm_foc_hall_f28379d_B.Saturation_j;

  /* Product: '<S33>/Product1' */
  mcb_pmsm_foc_hall_f28379d_B.Product1 = mcb_pmsm_foc_hall_f28379d_B.Saturation *
    mcb_pmsm_foc_hall_f28379d_B.Saturation;

  /* Sum: '<S33>/Sum1' */
  mcb_pmsm_foc_hall_f28379d_B.Sum1 = mcb_pmsm_foc_hall_f28379d_B.Product_e +
    mcb_pmsm_foc_hall_f28379d_B.Product1;

  /* Outputs for IfAction SubSystem: '<S27>/D-Q Equivalence' incorporates:
   *  ActionPort: '<S30>/Action Port'
   */
  /* If: '<S27>/If' incorporates:
   *  DataTypeConversion: '<S30>/Data Type Conversion'
   *  RelationalOperator: '<S30>/Relational Operator'
   */
  mcb_pmsm_foc_hall_f28379d_B.RelationalOperator_h =
    (mcb_pmsm_foc_hall_f28379d_B.Sum1 > 0.9025);
  mcb_pmsm_foc_hall_f28379d_B.DataTypeConversion_jg =
    mcb_pmsm_foc_hall_f28379d_B.RelationalOperator_h;

  /* If: '<S30>/If' incorporates:
   *  If: '<S27>/If'
   */
  if (mcb_pmsm_foc_hall_f28379d_B.DataTypeConversion_jg != 0U) {
    /* Outputs for IfAction SubSystem: '<S30>/Limiter' incorporates:
     *  ActionPort: '<S34>/Action Port'
     */
    /* Product: '<S34>/Product' */
    mcb_pmsm_foc_hall_f28379d_B.Product_i[0] =
      mcb_pmsm_foc_hall_f28379d_B.Saturation_j * 0.95;
    mcb_pmsm_foc_hall_f28379d_B.Product_i[1] =
      mcb_pmsm_foc_hall_f28379d_B.Saturation * 0.95;

    /* Sqrt: '<S34>/Square Root' */
    mcb_pmsm_foc_hall_f28379d_B.SquareRoot = sqrt
      (mcb_pmsm_foc_hall_f28379d_B.Sum1);

    /* Switch: '<S34>/Switch' */
    if (mcb_pmsm_foc_hall_f28379d_B.SquareRoot != 0.0) {
      /* Switch: '<S34>/Switch' */
      mcb_pmsm_foc_hall_f28379d_B.Switch_o =
        mcb_pmsm_foc_hall_f28379d_B.SquareRoot;
    } else {
      /* Switch: '<S34>/Switch' incorporates:
       *  Constant: '<S34>/Constant'
       */
      mcb_pmsm_foc_hall_f28379d_B.Switch_o = 1.0;
    }

    /* End of Switch: '<S34>/Switch' */

    /* Product: '<S34>/Reciprocal' */
    mcb_pmsm_foc_hall_f28379d_B.Reciprocal = 1.0 /
      mcb_pmsm_foc_hall_f28379d_B.Switch_o;

    /* Merge: '<S27>/Merge' incorporates:
     *  Product: '<S34>/Product1'
     */
    mcb_pmsm_foc_hall_f28379d_B.Merge[0] =
      mcb_pmsm_foc_hall_f28379d_B.Product_i[0] *
      mcb_pmsm_foc_hall_f28379d_B.Reciprocal;
    mcb_pmsm_foc_hall_f28379d_B.Merge[1] =
      mcb_pmsm_foc_hall_f28379d_B.Product_i[1] *
      mcb_pmsm_foc_hall_f28379d_B.Reciprocal;

    /* End of Outputs for SubSystem: '<S30>/Limiter' */
  } else {
    /* Outputs for IfAction SubSystem: '<S30>/Passthrough' incorporates:
     *  ActionPort: '<S35>/Action Port'
     */
    /* Merge: '<S27>/Merge' incorporates:
     *  SignalConversion generated from: '<S35>/dqRef'
     */
    mcb_pmsm_foc_hall_f28379d_B.Merge[0] =
      mcb_pmsm_foc_hall_f28379d_B.Saturation_j;
    mcb_pmsm_foc_hall_f28379d_B.Merge[1] =
      mcb_pmsm_foc_hall_f28379d_B.Saturation;

    /* End of Outputs for SubSystem: '<S30>/Passthrough' */
  }

  /* End of If: '<S30>/If' */
  /* End of Outputs for SubSystem: '<S27>/D-Q Equivalence' */

  /* DataTypeConversion: '<S12>/Cast To Single1' */
  mcb_pmsm_foc_hall_f28379d_B.CastToSingle1 = (real32_T)
    mcb_pmsm_foc_hall_f28379d_B.Merge[1];

  /* DataTypeConversion: '<S12>/Cast To Single2' incorporates:
   *  Merge: '<S13>/Merge'
   */
  mcb_pmsm_foc_hall_f28379d_B.CastToSingle2 =
    mcb_pmsm_foc_hall_f28379d_B.Merge_l;

  /* SignalConversion generated from: '<S12>/Selector' */
  mcb_pmsm_foc_hall_f28379d_B.TmpSignalConversionAtSelectorIn[0] =
    mcb_pmsm_foc_hall_f28379d_B.DataStoreRead1;
  mcb_pmsm_foc_hall_f28379d_B.TmpSignalConversionAtSelectorIn[1] =
    mcb_pmsm_foc_hall_f28379d_B.Merge1_m;
  mcb_pmsm_foc_hall_f28379d_B.TmpSignalConversionAtSelectorIn[2] =
    mcb_pmsm_foc_hall_f28379d_B.CastToSingle_e[0];
  mcb_pmsm_foc_hall_f28379d_B.TmpSignalConversionAtSelectorIn[3] =
    mcb_pmsm_foc_hall_f28379d_B.CastToSingle_e[1];
  mcb_pmsm_foc_hall_f28379d_B.TmpSignalConversionAtSelectorIn[4] =
    mcb_pmsm_foc_hall_f28379d_B.RT2[0];
  mcb_pmsm_foc_hall_f28379d_B.TmpSignalConversionAtSelectorIn[5] =
    mcb_pmsm_foc_hall_f28379d_B.algDD_o1_h;
  mcb_pmsm_foc_hall_f28379d_B.TmpSignalConversionAtSelectorIn[6] =
    mcb_pmsm_foc_hall_f28379d_B.RT2[1];
  mcb_pmsm_foc_hall_f28379d_B.TmpSignalConversionAtSelectorIn[7] =
    mcb_pmsm_foc_hall_f28379d_B.algDD_o2_l;
  mcb_pmsm_foc_hall_f28379d_B.TmpSignalConversionAtSelectorIn[8] =
    mcb_pmsm_foc_hall_f28379d_B.Merge_o;
  mcb_pmsm_foc_hall_f28379d_B.TmpSignalConversionAtSelectorIn[9] =
    mcb_pmsm_foc_hall_f28379d_B.CastToSingle_f;
  mcb_pmsm_foc_hall_f28379d_B.TmpSignalConversionAtSelectorIn[10] =
    mcb_pmsm_foc_hall_f28379d_B.CastToSingle1;
  mcb_pmsm_foc_hall_f28379d_B.TmpSignalConversionAtSelectorIn[11] =
    mcb_pmsm_foc_hall_f28379d_B.Merge_d;
  mcb_pmsm_foc_hall_f28379d_B.TmpSignalConversionAtSelectorIn[12] =
    mcb_pmsm_foc_hall_f28379d_B.RT13;
  mcb_pmsm_foc_hall_f28379d_B.TmpSignalConversionAtSelectorIn[13] =
    mcb_pmsm_foc_hall_f28379d_B.Add_e;
  mcb_pmsm_foc_hall_f28379d_B.TmpSignalConversionAtSelectorIn[14] =
    mcb_pmsm_foc_hall_f28379d_B.RT11;
  mcb_pmsm_foc_hall_f28379d_B.TmpSignalConversionAtSelectorIn[15] =
    mcb_pmsm_foc_hall_f28379d_B.CastToSingle2;

  /* DataStoreRead: '<S12>/Data Store Read' */
  mcb_pmsm_foc_hall_f28379d_B.DataStoreRead_g =
    mcb_pmsm_foc_hall_f28379d_DWork.Debug_signals;

  /* MultiPortSwitch: '<S12>/Multiport Switch' */
  switch (mcb_pmsm_foc_hall_f28379d_B.DataStoreRead_g) {
   case 1:
    /* MultiPortSwitch: '<S12>/Multiport Switch' incorporates:
     *  Constant: '<S12>/speed_control'
     */
    mcb_pmsm_foc_hall_f28379d_B.MultiportSwitch[0] = 1U;
    mcb_pmsm_foc_hall_f28379d_B.MultiportSwitch[1] = 2U;
    break;

   case 2:
    /* MultiPortSwitch: '<S12>/Multiport Switch' incorporates:
     *  Constant: '<S12>/Id_control'
     */
    mcb_pmsm_foc_hall_f28379d_B.MultiportSwitch[0] = 5U;
    mcb_pmsm_foc_hall_f28379d_B.MultiportSwitch[1] = 6U;
    break;

   case 3:
    /* MultiPortSwitch: '<S12>/Multiport Switch' incorporates:
     *  Constant: '<S12>/Iq_control'
     */
    mcb_pmsm_foc_hall_f28379d_B.MultiportSwitch[0] = 7U;
    mcb_pmsm_foc_hall_f28379d_B.MultiportSwitch[1] = 8U;
    break;

   case 4:
    /* MultiPortSwitch: '<S12>/Multiport Switch' incorporates:
     *  Constant: '<S12>/Iab'
     */
    mcb_pmsm_foc_hall_f28379d_B.MultiportSwitch[0] = 3U;
    mcb_pmsm_foc_hall_f28379d_B.MultiportSwitch[1] = 4U;
    break;

   case 5:
    /* MultiPortSwitch: '<S12>/Multiport Switch' incorporates:
     *  Constant: '<S12>/State_Vq'
     */
    mcb_pmsm_foc_hall_f28379d_B.MultiportSwitch[0] = 10U;
    mcb_pmsm_foc_hall_f28379d_B.MultiportSwitch[1] = 16U;
    break;

   case 6:
    /* MultiPortSwitch: '<S12>/Multiport Switch' incorporates:
     *  Constant: '<S12>/Spead_Meas_virtual'
     */
    mcb_pmsm_foc_hall_f28379d_B.MultiportSwitch[0] = 12U;
    mcb_pmsm_foc_hall_f28379d_B.MultiportSwitch[1] = 13U;
    break;

   default:
    /* MultiPortSwitch: '<S12>/Multiport Switch' incorporates:
     *  Constant: '<S12>/Pos_Meas_virtual'
     */
    mcb_pmsm_foc_hall_f28379d_B.MultiportSwitch[0] = 14U;
    mcb_pmsm_foc_hall_f28379d_B.MultiportSwitch[1] = 15U;
    break;
  }

  /* End of MultiPortSwitch: '<S12>/Multiport Switch' */

  /* Selector: '<S12>/Selector' */
  mcb_pmsm_foc_hall_f28379d_B.Selector[0] =
    mcb_pmsm_foc_hall_f28379d_B.TmpSignalConversionAtSelectorIn[(int16_T)
    mcb_pmsm_foc_hall_f28379d_B.MultiportSwitch[0] - 1];
  mcb_pmsm_foc_hall_f28379d_B.Selector[1] =
    mcb_pmsm_foc_hall_f28379d_B.TmpSignalConversionAtSelectorIn[(int16_T)
    mcb_pmsm_foc_hall_f28379d_B.MultiportSwitch[1] - 1];

  /* S-Function (any2byte_svd): '<S238>/Byte Pack' */

  /* Pack: <S238>/Byte Pack */
  {
    uint32_T MW_outputPortOffset = 0;
    uint32_T MW_inputPortWidth = 0;
    uint32_T MW_remainder1 = 0;

    /* Packed output data type - uint32_T */
    /* Packing the values of Input 1 */
    /* Input data type - real32_T, size - 2 */
    {
      MW_inputPortWidth = 2 * sizeof(real32_T);
      memcpy((uint16_T*)&mcb_pmsm_foc_hall_f28379d_B.BytePack[0] +
             MW_outputPortOffset, (uint16_T*)
             &mcb_pmsm_foc_hall_f28379d_B.Selector[0], MW_inputPortWidth);
    }
  }

  /* If: '<S236>/If' */
  if (mcb_pmsm_foc_hall_f28379d_B.Output == 0U) {
    /* Outputs for IfAction SubSystem: '<S236>/Start' incorporates:
     *  ActionPort: '<S242>/Action Port'
     */
    /* Merge: '<S236>/Merge' incorporates:
     *  Constant: '<S242>/Start'
     *  SignalConversion generated from: '<S242>/Data_out'
     */
    mcb_pmsm_foc_hall_f28379d_B.SCI_Tx_Data[0] = 1397969747UL;

    /* SignalConversion generated from: '<S242>/Data' */
    u0 = mcb_pmsm_foc_hall_f28379d_B.BytePack[0];

    /* End of Outputs for SubSystem: '<S236>/Start' */
    mcb_pmsm_foc_hall_f28379d_B.Data_fw[0] = u0;

    /* Outputs for IfAction SubSystem: '<S236>/Start' incorporates:
     *  ActionPort: '<S242>/Action Port'
     */
    /* Merge: '<S236>/Merge' incorporates:
     *  SignalConversion generated from: '<S242>/Data_out'
     */
    mcb_pmsm_foc_hall_f28379d_B.SCI_Tx_Data[1] = u0;

    /* SignalConversion generated from: '<S242>/Data' */
    u0 = mcb_pmsm_foc_hall_f28379d_B.BytePack[1];

    /* End of Outputs for SubSystem: '<S236>/Start' */
    mcb_pmsm_foc_hall_f28379d_B.Data_fw[1] = u0;

    /* Outputs for IfAction SubSystem: '<S236>/Start' incorporates:
     *  ActionPort: '<S242>/Action Port'
     */
    /* Merge: '<S236>/Merge' incorporates:
     *  SignalConversion generated from: '<S242>/Data_out'
     */
    mcb_pmsm_foc_hall_f28379d_B.SCI_Tx_Data[2] = u0;

    /* Merge: '<S236>/Merge1' incorporates:
     *  Bias: '<S242>/Bias'
     */
    mcb_pmsm_foc_hall_f28379d_B.SCI_Tx_Iteration =
      mcb_pmsm_foc_hall_f28379_ConstB.Width + 1UL;

    /* End of Outputs for SubSystem: '<S236>/Start' */
  } else if (mcb_pmsm_foc_hall_f28379d_B.Output == 599U) {
    /* Outputs for IfAction SubSystem: '<S236>/End' incorporates:
     *  ActionPort: '<S241>/Action Port'
     */
    /* SignalConversion generated from: '<S241>/Data' */
    u0 = mcb_pmsm_foc_hall_f28379d_B.BytePack[0];

    /* End of Outputs for SubSystem: '<S236>/End' */
    mcb_pmsm_foc_hall_f28379d_B.Data_f[0] = u0;

    /* Outputs for IfAction SubSystem: '<S236>/End' incorporates:
     *  ActionPort: '<S241>/Action Port'
     */
    /* Merge: '<S236>/Merge' incorporates:
     *  SignalConversion generated from: '<S241>/Data_out'
     */
    mcb_pmsm_foc_hall_f28379d_B.SCI_Tx_Data[0] = u0;

    /* SignalConversion generated from: '<S241>/Data' */
    u0 = mcb_pmsm_foc_hall_f28379d_B.BytePack[1];

    /* End of Outputs for SubSystem: '<S236>/End' */
    mcb_pmsm_foc_hall_f28379d_B.Data_f[1] = u0;

    /* Outputs for IfAction SubSystem: '<S236>/End' incorporates:
     *  ActionPort: '<S241>/Action Port'
     */
    /* Merge: '<S236>/Merge' incorporates:
     *  Constant: '<S241>/End'
     *  SignalConversion generated from: '<S241>/Data_out'
     */
    mcb_pmsm_foc_hall_f28379d_B.SCI_Tx_Data[1] = u0;
    mcb_pmsm_foc_hall_f28379d_B.SCI_Tx_Data[2] = 1162167621UL;

    /* Merge: '<S236>/Merge1' incorporates:
     *  Bias: '<S241>/Bias'
     */
    mcb_pmsm_foc_hall_f28379d_B.SCI_Tx_Iteration =
      mcb_pmsm_foc_hall_f28379_ConstB.Width + 1UL;

    /* End of Outputs for SubSystem: '<S236>/End' */
  } else {
    /* Outputs for IfAction SubSystem: '<S236>/Data' incorporates:
     *  ActionPort: '<S240>/Action Port'
     */
    /* SignalConversion generated from: '<S240>/Data' */
    u0 = mcb_pmsm_foc_hall_f28379d_B.BytePack[0];

    /* End of Outputs for SubSystem: '<S236>/Data' */
    mcb_pmsm_foc_hall_f28379d_B.Data[0] = u0;

    /* Outputs for IfAction SubSystem: '<S236>/Data' incorporates:
     *  ActionPort: '<S240>/Action Port'
     */
    /* Merge: '<S236>/Merge' incorporates:
     *  SignalConversion generated from: '<S240>/Data_out'
     */
    mcb_pmsm_foc_hall_f28379d_B.SCI_Tx_Data[0] = u0;

    /* SignalConversion generated from: '<S240>/Data' */
    u0 = mcb_pmsm_foc_hall_f28379d_B.BytePack[1];

    /* End of Outputs for SubSystem: '<S236>/Data' */
    mcb_pmsm_foc_hall_f28379d_B.Data[1] = u0;

    /* Outputs for IfAction SubSystem: '<S236>/Data' incorporates:
     *  ActionPort: '<S240>/Action Port'
     */
    /* Merge: '<S236>/Merge' incorporates:
     *  Constant: '<S240>/Dummy'
     *  SignalConversion generated from: '<S240>/Data_out'
     */
    mcb_pmsm_foc_hall_f28379d_B.SCI_Tx_Data[1] = u0;
    mcb_pmsm_foc_hall_f28379d_B.SCI_Tx_Data[2] = 0UL;

    /* Merge: '<S236>/Merge1' incorporates:
     *  SignalConversion generated from: '<S240>/Data_width'
     */
    mcb_pmsm_foc_hall_f28379d_B.SCI_Tx_Iteration =
      mcb_pmsm_foc_hall_f28379_ConstB.Width;

    /* End of Outputs for SubSystem: '<S236>/Data' */
  }

  /* End of If: '<S236>/If' */

  /* Outputs for Iterator SubSystem: '<S234>/While Iterator Subsystem' incorporates:
   *  WhileIterator: '<S237>/While Iterator'
   */
  s237_iter = 1;
  do {
    mcb_pmsm_foc_hall_f28379d_B.WhileIterator = s237_iter;
    mcb_pmsm_foc_hall_f28379d_B.IndexVector =
      mcb_pmsm_foc_hall_f28379d_B.SCI_Tx_Data[mcb_pmsm_foc_hall_f28379d_B.WhileIterator
      - 1];

    {
      if (checkSCITransmitInProgressA != 1U) {
        checkSCITransmitInProgressA = 1U;
        int16_T errFlgHeader = NOERROR;
        int16_T errFlgData = NOERROR;
        int16_T errFlgTail = NOERROR;
        errFlgData = scia_xmit((unsigned char*)
          &mcb_pmsm_foc_hall_f28379d_B.IndexVector, 4, 4);
        checkSCITransmitInProgressA = 0U;
      }
    }

    mcb_pmsm_foc_hall_f28379d_B.Add_f =
      mcb_pmsm_foc_hall_f28379d_B.SCI_Tx_Iteration - (uint32_T)
      mcb_pmsm_foc_hall_f28379d_B.WhileIterator;
    s237_iter++;
  } while (mcb_pmsm_foc_hall_f28379d_B.Add_f != 0UL);

  /* End of Outputs for SubSystem: '<S234>/While Iterator Subsystem' */

  /* Sum: '<S243>/FixPt Sum1' incorporates:
   *  Constant: '<S243>/FixPt Constant'
   */
  mcb_pmsm_foc_hall_f28379d_B.FixPtSum1 = mcb_pmsm_foc_hall_f28379d_B.Output +
    1U;

  /* Switch: '<S244>/FixPt Switch' */
  if (mcb_pmsm_foc_hall_f28379d_B.FixPtSum1 > 599U) {
    /* Switch: '<S244>/FixPt Switch' incorporates:
     *  Constant: '<S244>/Constant'
     */
    mcb_pmsm_foc_hall_f28379d_B.FixPtSwitch = 0U;
  } else {
    /* Switch: '<S244>/FixPt Switch' */
    mcb_pmsm_foc_hall_f28379d_B.FixPtSwitch =
      mcb_pmsm_foc_hall_f28379d_B.FixPtSum1;
  }

  /* End of Switch: '<S244>/FixPt Switch' */

  /* DeadZone: '<S71>/DeadZone' */
  if (mcb_pmsm_foc_hall_f28379d_B.Sum_h > 1.0F) {
    /* DeadZone: '<S71>/DeadZone' */
    mcb_pmsm_foc_hall_f28379d_B.DeadZone = mcb_pmsm_foc_hall_f28379d_B.Sum_h -
      1.0F;
  } else if (mcb_pmsm_foc_hall_f28379d_B.Sum_h >= -1.0F) {
    /* DeadZone: '<S71>/DeadZone' */
    mcb_pmsm_foc_hall_f28379d_B.DeadZone = 0.0F;
  } else {
    /* DeadZone: '<S71>/DeadZone' */
    mcb_pmsm_foc_hall_f28379d_B.DeadZone = mcb_pmsm_foc_hall_f28379d_B.Sum_h -
      -1.0F;
  }

  /* End of DeadZone: '<S71>/DeadZone' */

  /* RelationalOperator: '<S69>/Relational Operator' incorporates:
   *  Constant: '<S69>/Clamping_zero'
   */
  mcb_pmsm_foc_hall_f28379d_B.RelationalOperator =
    (mcb_pmsm_foc_hall_f28379d_B.DeadZone != 0.0F);

  /* RelationalOperator: '<S69>/fix for DT propagation issue' incorporates:
   *  Constant: '<S69>/Clamping_zero'
   */
  mcb_pmsm_foc_hall_f28379d_B.fixforDTpropagationissue =
    (mcb_pmsm_foc_hall_f28379d_B.DeadZone > 0.0F);

  /* Switch: '<S69>/Switch1' */
  if (mcb_pmsm_foc_hall_f28379d_B.fixforDTpropagationissue) {
    /* Switch: '<S69>/Switch1' incorporates:
     *  Constant: '<S69>/Constant'
     */
    mcb_pmsm_foc_hall_f28379d_B.Switch1_i = 1;
  } else {
    /* Switch: '<S69>/Switch1' incorporates:
     *  Constant: '<S69>/Constant2'
     */
    mcb_pmsm_foc_hall_f28379d_B.Switch1_i = -1;
  }

  /* End of Switch: '<S69>/Switch1' */

  /* Product: '<S75>/IProd Out' incorporates:
   *  Constant: '<S28>/Ki'
   */
  mcb_pmsm_foc_hall_f28379d_B.IProdOut = mcb_pmsm_foc_hall_f28379d_B.Sum_b *
    5.0E-6F;

  /* RelationalOperator: '<S69>/fix for DT propagation issue1' incorporates:
   *  Constant: '<S69>/Clamping_zero'
   */
  mcb_pmsm_foc_hall_f28379d_B.fixforDTpropagationissue1 =
    (mcb_pmsm_foc_hall_f28379d_B.IProdOut > 0.0F);

  /* Switch: '<S69>/Switch2' */
  if (mcb_pmsm_foc_hall_f28379d_B.fixforDTpropagationissue1) {
    /* Switch: '<S69>/Switch2' incorporates:
     *  Constant: '<S69>/Constant3'
     */
    mcb_pmsm_foc_hall_f28379d_B.Switch2_a = 1;
  } else {
    /* Switch: '<S69>/Switch2' incorporates:
     *  Constant: '<S69>/Constant4'
     */
    mcb_pmsm_foc_hall_f28379d_B.Switch2_a = -1;
  }

  /* End of Switch: '<S69>/Switch2' */

  /* RelationalOperator: '<S69>/Equal1' incorporates:
   *  Switch: '<S69>/Switch1'
   *  Switch: '<S69>/Switch2'
   */
  mcb_pmsm_foc_hall_f28379d_B.Equal1 = (mcb_pmsm_foc_hall_f28379d_B.Switch1_i ==
    mcb_pmsm_foc_hall_f28379d_B.Switch2_a);

  /* Logic: '<S69>/AND3' */
  mcb_pmsm_foc_hall_f28379d_B.AND3 =
    (mcb_pmsm_foc_hall_f28379d_B.RelationalOperator &&
     mcb_pmsm_foc_hall_f28379d_B.Equal1);

  /* Switch: '<S69>/Switch' */
  if (mcb_pmsm_foc_hall_f28379d_B.AND3) {
    /* Switch: '<S69>/Switch' incorporates:
     *  Constant: '<S69>/Constant1'
     */
    mcb_pmsm_foc_hall_f28379d_B.Switch_b = 0.0F;
  } else {
    /* Switch: '<S69>/Switch' */
    mcb_pmsm_foc_hall_f28379d_B.Switch_b = mcb_pmsm_foc_hall_f28379d_B.IProdOut;
  }

  /* End of Switch: '<S69>/Switch' */

  /* DeadZone: '<S122>/DeadZone' */
  if (mcb_pmsm_foc_hall_f28379d_B.Sum_m > 1.0F) {
    /* DeadZone: '<S122>/DeadZone' */
    mcb_pmsm_foc_hall_f28379d_B.DeadZone_g = mcb_pmsm_foc_hall_f28379d_B.Sum_m -
      1.0F;
  } else if (mcb_pmsm_foc_hall_f28379d_B.Sum_m >= -1.0F) {
    /* DeadZone: '<S122>/DeadZone' */
    mcb_pmsm_foc_hall_f28379d_B.DeadZone_g = 0.0F;
  } else {
    /* DeadZone: '<S122>/DeadZone' */
    mcb_pmsm_foc_hall_f28379d_B.DeadZone_g = mcb_pmsm_foc_hall_f28379d_B.Sum_m -
      -1.0F;
  }

  /* End of DeadZone: '<S122>/DeadZone' */

  /* RelationalOperator: '<S120>/Relational Operator' incorporates:
   *  Constant: '<S120>/Clamping_zero'
   */
  mcb_pmsm_foc_hall_f28379d_B.RelationalOperator_m =
    (mcb_pmsm_foc_hall_f28379d_B.DeadZone_g != 0.0F);

  /* RelationalOperator: '<S120>/fix for DT propagation issue' incorporates:
   *  Constant: '<S120>/Clamping_zero'
   */
  mcb_pmsm_foc_hall_f28379d_B.fixforDTpropagationissue_b =
    (mcb_pmsm_foc_hall_f28379d_B.DeadZone_g > 0.0F);

  /* Switch: '<S120>/Switch1' */
  if (mcb_pmsm_foc_hall_f28379d_B.fixforDTpropagationissue_b) {
    /* Switch: '<S120>/Switch1' incorporates:
     *  Constant: '<S120>/Constant'
     */
    mcb_pmsm_foc_hall_f28379d_B.Switch1_j = 1;
  } else {
    /* Switch: '<S120>/Switch1' incorporates:
     *  Constant: '<S120>/Constant2'
     */
    mcb_pmsm_foc_hall_f28379d_B.Switch1_j = -1;
  }

  /* End of Switch: '<S120>/Switch1' */

  /* Product: '<S126>/IProd Out' incorporates:
   *  Constant: '<S29>/Ki'
   */
  mcb_pmsm_foc_hall_f28379d_B.IProdOut_h = mcb_pmsm_foc_hall_f28379d_B.Sum_gs *
    5.0E-6F;

  /* RelationalOperator: '<S120>/fix for DT propagation issue1' incorporates:
   *  Constant: '<S120>/Clamping_zero'
   */
  mcb_pmsm_foc_hall_f28379d_B.fixforDTpropagationissue1_h =
    (mcb_pmsm_foc_hall_f28379d_B.IProdOut_h > 0.0F);

  /* Switch: '<S120>/Switch2' */
  if (mcb_pmsm_foc_hall_f28379d_B.fixforDTpropagationissue1_h) {
    /* Switch: '<S120>/Switch2' incorporates:
     *  Constant: '<S120>/Constant3'
     */
    mcb_pmsm_foc_hall_f28379d_B.Switch2_b = 1;
  } else {
    /* Switch: '<S120>/Switch2' incorporates:
     *  Constant: '<S120>/Constant4'
     */
    mcb_pmsm_foc_hall_f28379d_B.Switch2_b = -1;
  }

  /* End of Switch: '<S120>/Switch2' */

  /* RelationalOperator: '<S120>/Equal1' incorporates:
   *  Switch: '<S120>/Switch1'
   *  Switch: '<S120>/Switch2'
   */
  mcb_pmsm_foc_hall_f28379d_B.Equal1_d = (mcb_pmsm_foc_hall_f28379d_B.Switch1_j ==
    mcb_pmsm_foc_hall_f28379d_B.Switch2_b);

  /* Logic: '<S120>/AND3' */
  mcb_pmsm_foc_hall_f28379d_B.AND3_f =
    (mcb_pmsm_foc_hall_f28379d_B.RelationalOperator_m &&
     mcb_pmsm_foc_hall_f28379d_B.Equal1_d);

  /* Switch: '<S120>/Switch' */
  if (mcb_pmsm_foc_hall_f28379d_B.AND3_f) {
    /* Switch: '<S120>/Switch' incorporates:
     *  Constant: '<S120>/Constant1'
     */
    mcb_pmsm_foc_hall_f28379d_B.Switch_ls = 0.0F;
  } else {
    /* Switch: '<S120>/Switch' */
    mcb_pmsm_foc_hall_f28379d_B.Switch_ls =
      mcb_pmsm_foc_hall_f28379d_B.IProdOut_h;
  }

  /* End of Switch: '<S120>/Switch' */

  /* RelationalOperator: '<S150>/Compare' incorporates:
   *  Constant: '<S150>/Constant'
   */
  mcb_pmsm_foc_hall_f28379d_B.Compare_nf = (mcb_pmsm_foc_hall_f28379d_B.Merge_o <
    0.0F);

  /* DataTypeConversion: '<S149>/Data Type Conversion' */
  mcb_pmsm_foc_hall_f28379d_B.DataTypeConversion_e =
    mcb_pmsm_foc_hall_f28379d_B.Compare_nf;

  /* If: '<S149>/If' */
  if (mcb_pmsm_foc_hall_f28379d_B.DataTypeConversion_e > 0U) {
    /* Outputs for IfAction SubSystem: '<S149>/If Action Subsystem' incorporates:
     *  ActionPort: '<S151>/Action Port'
     */
    mcb_pmsm__IfActionSubsystem(mcb_pmsm_foc_hall_f28379d_B.Merge_o,
      &mcb_pmsm_foc_hall_f28379d_B.Merge_p,
      &mcb_pmsm_foc_hall_f28379d_B.IfActionSubsystem);

    /* End of Outputs for SubSystem: '<S149>/If Action Subsystem' */
  } else {
    /* Outputs for IfAction SubSystem: '<S149>/If Action Subsystem1' incorporates:
     *  ActionPort: '<S152>/Action Port'
     */
    mcb_pmsm_IfActionSubsystem1(mcb_pmsm_foc_hall_f28379d_B.Merge_o,
      &mcb_pmsm_foc_hall_f28379d_B.Merge_p,
      &mcb_pmsm_foc_hall_f28379d_B.IfActionSubsystem1);

    /* End of Outputs for SubSystem: '<S149>/If Action Subsystem1' */
  }

  /* End of If: '<S149>/If' */

  /* Gain: '<S146>/indexing' */
  mcb_pmsm_foc_hall_f28379d_B.indexing_i = 800.0F *
    mcb_pmsm_foc_hall_f28379d_B.Merge_p;

  /* DataTypeConversion: '<S146>/Get_Integer' */
  mcb_pmsm_foc_hall_f28379d_B.Get_Integer_f = (uint16_T)
    mcb_pmsm_foc_hall_f28379d_B.indexing_i;

  /* DataTypeConversion: '<S146>/Data Type Conversion1' */
  mcb_pmsm_foc_hall_f28379d_B.DataTypeConversion1_f =
    mcb_pmsm_foc_hall_f28379d_B.Get_Integer_f;

  /* Sum: '<S146>/Sum' incorporates:
   *  Constant: '<S146>/offset'
   */
  u0 = mcb_pmsm_foc_hall_f28379d_B.Get_Integer_f + 1UL;
  mcb_pmsm_foc_hall_f28379d_B.Sum_k[0] = u0;

  /* Selector: '<S146>/Lookup' incorporates:
   *  Constant: '<S146>/sine_table_values'
   */
  mcb_pmsm_foc_hall_f28379d_B.Lookup_f[0] =
    mcb_pmsm_foc_hall_f28379_ConstP.pooled14[(int16_T)u0];

  /* Sum: '<S146>/Sum' */
  u0 = mcb_pmsm_foc_hall_f28379d_B.Get_Integer_f;
  mcb_pmsm_foc_hall_f28379d_B.Sum_k[1] = u0;

  /* Selector: '<S146>/Lookup' incorporates:
   *  Constant: '<S146>/sine_table_values'
   */
  mcb_pmsm_foc_hall_f28379d_B.Lookup_f[1] =
    mcb_pmsm_foc_hall_f28379_ConstP.pooled14[(int16_T)u0];

  /* Sum: '<S146>/Sum' incorporates:
   *  Constant: '<S146>/offset'
   */
  u0 = mcb_pmsm_foc_hall_f28379d_B.Get_Integer_f + 201UL;
  mcb_pmsm_foc_hall_f28379d_B.Sum_k[2] = u0;

  /* Selector: '<S146>/Lookup' incorporates:
   *  Constant: '<S146>/sine_table_values'
   */
  mcb_pmsm_foc_hall_f28379d_B.Lookup_f[2] =
    mcb_pmsm_foc_hall_f28379_ConstP.pooled14[(int16_T)u0];

  /* Sum: '<S146>/Sum' incorporates:
   *  Constant: '<S146>/offset'
   */
  u0 = mcb_pmsm_foc_hall_f28379d_B.Get_Integer_f + 200UL;
  mcb_pmsm_foc_hall_f28379d_B.Sum_k[3] = u0;

  /* Selector: '<S146>/Lookup' incorporates:
   *  Constant: '<S146>/sine_table_values'
   */
  mcb_pmsm_foc_hall_f28379d_B.Lookup_f[3] =
    mcb_pmsm_foc_hall_f28379_ConstP.pooled14[(int16_T)u0];

  /* Sum: '<S148>/Sum3' */
  mcb_pmsm_foc_hall_f28379d_B.Sum3_c = mcb_pmsm_foc_hall_f28379d_B.Lookup_f[0] -
    mcb_pmsm_foc_hall_f28379d_B.Lookup_f[1];

  /* Sum: '<S146>/Sum2' */
  mcb_pmsm_foc_hall_f28379d_B.Sum2_p = mcb_pmsm_foc_hall_f28379d_B.indexing_i -
    mcb_pmsm_foc_hall_f28379d_B.DataTypeConversion1_f;

  /* Product: '<S148>/Product' */
  mcb_pmsm_foc_hall_f28379d_B.Product_d = mcb_pmsm_foc_hall_f28379d_B.Sum3_c *
    mcb_pmsm_foc_hall_f28379d_B.Sum2_p;

  /* Sum: '<S148>/Sum5' */
  mcb_pmsm_foc_hall_f28379d_B.Sum5_k = mcb_pmsm_foc_hall_f28379d_B.Lookup_f[2] -
    mcb_pmsm_foc_hall_f28379d_B.Lookup_f[3];

  /* Product: '<S148>/Product1' */
  mcb_pmsm_foc_hall_f28379d_B.Product1_p = mcb_pmsm_foc_hall_f28379d_B.Sum5_k *
    mcb_pmsm_foc_hall_f28379d_B.Sum2_p;

  /* Sum: '<S148>/Sum4' */
  mcb_pmsm_foc_hall_f28379d_B.Sum4_j = mcb_pmsm_foc_hall_f28379d_B.Product_d +
    mcb_pmsm_foc_hall_f28379d_B.Lookup_f[1];

  /* Sum: '<S148>/Sum6' */
  mcb_pmsm_foc_hall_f28379d_B.Sum6_e = mcb_pmsm_foc_hall_f28379d_B.Product1_p +
    mcb_pmsm_foc_hall_f28379d_B.Lookup_f[3];

  /* Sum: '<S11>/Sum' */
  mcb_pmsm_foc_hall_f28379d_B.Sum = mcb_pmsm_foc_hall_f28379d_B.Merge1 +
    mcb_pmsm_foc_hall_f28379d_B.Merge[0];

  /* Outputs for Atomic SubSystem: '<S22>/Two inputs CRL' */
  /* Product: '<S147>/qcos' */
  mcb_pmsm_foc_hall_f28379d_B.qcos = mcb_pmsm_foc_hall_f28379d_B.Merge[1] *
    mcb_pmsm_foc_hall_f28379d_B.Sum6_e;

  /* Product: '<S147>/dsin' */
  mcb_pmsm_foc_hall_f28379d_B.dsin = mcb_pmsm_foc_hall_f28379d_B.Sum *
    mcb_pmsm_foc_hall_f28379d_B.Sum4_j;

  /* Sum: '<S147>/sum_beta' */
  mcb_pmsm_foc_hall_f28379d_B.sum_beta = mcb_pmsm_foc_hall_f28379d_B.qcos +
    mcb_pmsm_foc_hall_f28379d_B.dsin;

  /* Product: '<S147>/dcos' */
  mcb_pmsm_foc_hall_f28379d_B.dcos = mcb_pmsm_foc_hall_f28379d_B.Sum *
    mcb_pmsm_foc_hall_f28379d_B.Sum6_e;

  /* Product: '<S147>/qsin' */
  mcb_pmsm_foc_hall_f28379d_B.qsin = mcb_pmsm_foc_hall_f28379d_B.Merge[1] *
    mcb_pmsm_foc_hall_f28379d_B.Sum4_j;

  /* Sum: '<S147>/sum_alpha' */
  mcb_pmsm_foc_hall_f28379d_B.sum_alpha = mcb_pmsm_foc_hall_f28379d_B.dcos -
    mcb_pmsm_foc_hall_f28379d_B.qsin;

  /* Switch: '<S153>/Switch' */
  mcb_pmsm_foc_hall_f28379d_B.Switch_k[0] =
    mcb_pmsm_foc_hall_f28379d_B.sum_alpha;
  mcb_pmsm_foc_hall_f28379d_B.Switch_k[1] = mcb_pmsm_foc_hall_f28379d_B.sum_beta;

  /* AlgorithmDescriptorDelegate generated from: '<S147>/a16' */
  mcb_pmsm_foc_hall_f28379d_B.algDD_o1 = mcb_pmsm_foc_hall_f28379d_B.Switch_k[0];

  /* AlgorithmDescriptorDelegate generated from: '<S147>/a16' */
  mcb_pmsm_foc_hall_f28379d_B.algDD_o2 = mcb_pmsm_foc_hall_f28379d_B.Switch_k[1];

  /* End of Outputs for SubSystem: '<S22>/Two inputs CRL' */

  /* DataStoreRead: '<S16>/Enable' */
  mcb_pmsm_foc_hall_f28379d_B.Enable = mcb_pmsm_foc_hall_f28379d_DWork.Enable;

  /* DataTypeConversion: '<S16>/Data Type Conversion' */
  mcb_pmsm_foc_hall_f28379d_B.DataTypeConversion =
    mcb_pmsm_foc_hall_f28379d_B.Enable;

  /* Switch: '<S233>/Switch' */
  mcb_pmsm_foc_hall_f28379d_B.Switch_f =
    mcb_pmsm_foc_hall_f28379d_B.DataTypeConversion;

  /* S-Function (c280xgpio_do): '<S233>/Inverter Enable' */
  {
    if (mcb_pmsm_foc_hall_f28379d_B.Switch_f) {
      GpioDataRegs.GPDSET.bit.GPIO124 = 1U;
    } else {
      GpioDataRegs.GPDCLEAR.bit.GPIO124 = 1U;
    }
  }

  /* Switch: '<S233>/Switch1' */
  if (mcb_pmsm_foc_hall_f28379d_B.DataTypeConversion >= 0.5F) {
    /* Gain: '<S169>/sqrt3_by_two' */
    mcb_pmsm_foc_hall_f28379d_B.sqrt3_by_two = 0.8660254037844386 *
      mcb_pmsm_foc_hall_f28379d_B.algDD_o2;

    /* Gain: '<S169>/one_by_two' */
    mcb_pmsm_foc_hall_f28379d_B.one_by_two = 0.5 *
      mcb_pmsm_foc_hall_f28379d_B.algDD_o1;

    /* Sum: '<S169>/add_c' */
    mcb_pmsm_foc_hall_f28379d_B.add_c = (0.0 -
      mcb_pmsm_foc_hall_f28379d_B.one_by_two) -
      mcb_pmsm_foc_hall_f28379d_B.sqrt3_by_two;

    /* Sum: '<S169>/add_b' */
    mcb_pmsm_foc_hall_f28379d_B.add_b = mcb_pmsm_foc_hall_f28379d_B.sqrt3_by_two
      - mcb_pmsm_foc_hall_f28379d_B.one_by_two;

    /* MinMax: '<S166>/Min' */
    u0_1 = mcb_pmsm_foc_hall_f28379d_B.algDD_o1;
    Bias = mcb_pmsm_foc_hall_f28379d_B.add_b;
    if ((u0_1 <= Bias) || rtIsNaN(Bias)) {
      Bias = u0_1;
    }

    u0_1 = mcb_pmsm_foc_hall_f28379d_B.add_c;
    if ((!(Bias <= u0_1)) && (!rtIsNaN(u0_1))) {
      Bias = u0_1;
    }

    /* MinMax: '<S166>/Min' */
    mcb_pmsm_foc_hall_f28379d_B.Min = Bias;

    /* MinMax: '<S166>/Max' */
    u0_1 = mcb_pmsm_foc_hall_f28379d_B.algDD_o1;
    Bias = mcb_pmsm_foc_hall_f28379d_B.add_b;
    if ((u0_1 >= Bias) || rtIsNaN(Bias)) {
      Bias = u0_1;
    }

    u0_1 = mcb_pmsm_foc_hall_f28379d_B.add_c;
    if ((!(Bias >= u0_1)) && (!rtIsNaN(u0_1))) {
      Bias = u0_1;
    }

    /* MinMax: '<S166>/Max' */
    mcb_pmsm_foc_hall_f28379d_B.Max = Bias;

    /* Sum: '<S166>/Add' */
    mcb_pmsm_foc_hall_f28379d_B.Add = mcb_pmsm_foc_hall_f28379d_B.Max +
      mcb_pmsm_foc_hall_f28379d_B.Min;

    /* Gain: '<S166>/one_by_two' */
    mcb_pmsm_foc_hall_f28379d_B.one_by_two_b = -0.5 *
      mcb_pmsm_foc_hall_f28379d_B.Add;

    /* Sum: '<S165>/Add3' */
    mcb_pmsm_foc_hall_f28379d_B.Add3 = mcb_pmsm_foc_hall_f28379d_B.algDD_o1 +
      mcb_pmsm_foc_hall_f28379d_B.one_by_two_b;

    /* Sum: '<S165>/Add2' */
    mcb_pmsm_foc_hall_f28379d_B.Add2 = mcb_pmsm_foc_hall_f28379d_B.one_by_two_b
      + mcb_pmsm_foc_hall_f28379d_B.add_c;

    /* Sum: '<S165>/Add1' */
    mcb_pmsm_foc_hall_f28379d_B.Add1 = mcb_pmsm_foc_hall_f28379d_B.add_b +
      mcb_pmsm_foc_hall_f28379d_B.one_by_two_b;

    /* Gain: '<S165>/Gain' */
    mcb_pmsm_foc_hall_f28379d_B.Gain[0] = 1.1547005383792517 *
      mcb_pmsm_foc_hall_f28379d_B.Add3;
    mcb_pmsm_foc_hall_f28379d_B.Gain[1] = 1.1547005383792517 *
      mcb_pmsm_foc_hall_f28379d_B.Add1;
    mcb_pmsm_foc_hall_f28379d_B.Gain[2] = 1.1547005383792517 *
      mcb_pmsm_foc_hall_f28379d_B.Add2;

    /* Gain: '<S16>/Gain' */
    u0_0 = (real32_T)(0.5 * mcb_pmsm_foc_hall_f28379d_B.Gain[0]);
    mcb_pmsm_foc_hall_f28379d_B.Gain_m[0] = u0_0;

    /* Sum: '<S16>/Sum' incorporates:
     *  Constant: '<S16>/Constant'
     */
    u0_0 += 0.5F;
    mcb_pmsm_foc_hall_f28379d_B.PWM_Duty_Cycles[0] = u0_0;

    /* Gain: '<S233>/Scale_to_PWM_Counter_PRD' */
    TmpSignalConversionAtGainInport = (uint16_T)(5000.0F * u0_0);
    mcb_pmsm_foc_hall_f28379d_B.Scale_to_PWM_Counter_PRD[0] =
      TmpSignalConversionAtGainInport;

    /* Switch: '<S233>/Switch1' */
    mcb_pmsm_foc_hall_f28379d_B.Switch1_f[0] = TmpSignalConversionAtGainInport;

    /* Gain: '<S16>/Gain' */
    u0_0 = (real32_T)(0.5 * mcb_pmsm_foc_hall_f28379d_B.Gain[1]);
    mcb_pmsm_foc_hall_f28379d_B.Gain_m[1] = u0_0;

    /* Sum: '<S16>/Sum' incorporates:
     *  Constant: '<S16>/Constant'
     */
    u0_0 += 0.5F;
    mcb_pmsm_foc_hall_f28379d_B.PWM_Duty_Cycles[1] = u0_0;

    /* Gain: '<S233>/Scale_to_PWM_Counter_PRD' */
    TmpSignalConversionAtGainInport = (uint16_T)(5000.0F * u0_0);
    mcb_pmsm_foc_hall_f28379d_B.Scale_to_PWM_Counter_PRD[1] =
      TmpSignalConversionAtGainInport;

    /* Switch: '<S233>/Switch1' */
    mcb_pmsm_foc_hall_f28379d_B.Switch1_f[1] = TmpSignalConversionAtGainInport;

    /* Gain: '<S16>/Gain' */
    u0_0 = (real32_T)(0.5 * mcb_pmsm_foc_hall_f28379d_B.Gain[2]);
    mcb_pmsm_foc_hall_f28379d_B.Gain_m[2] = u0_0;

    /* Sum: '<S16>/Sum' incorporates:
     *  Constant: '<S16>/Constant'
     */
    u0_0 += 0.5F;
    mcb_pmsm_foc_hall_f28379d_B.PWM_Duty_Cycles[2] = u0_0;

    /* Gain: '<S233>/Scale_to_PWM_Counter_PRD' */
    TmpSignalConversionAtGainInport = (uint16_T)(5000.0F * u0_0);
    mcb_pmsm_foc_hall_f28379d_B.Scale_to_PWM_Counter_PRD[2] =
      TmpSignalConversionAtGainInport;

    /* Switch: '<S233>/Switch1' */
    mcb_pmsm_foc_hall_f28379d_B.Switch1_f[2] = TmpSignalConversionAtGainInport;
  } else {
    /* Switch: '<S233>/Switch1' incorporates:
     *  Constant: '<S233>/stop'
     */
    mcb_pmsm_foc_hall_f28379d_B.Switch1_f[0] = 0U;
    mcb_pmsm_foc_hall_f28379d_B.Switch1_f[1] = 0U;
    mcb_pmsm_foc_hall_f28379d_B.Switch1_f[2] = 0U;
  }

  /* End of Switch: '<S233>/Switch1' */

  /* S-Function (c2802xpwm): '<S233>/ePWM1' */

  /*-- Update CMPA value for ePWM1 --*/
  {
    EPwm1Regs.CMPA.bit.CMPA = (uint16_T)(mcb_pmsm_foc_hall_f28379d_B.Switch1_f[0]);
  }

  /* S-Function (c2802xpwm): '<S233>/ePWM2' */

  /*-- Update CMPA value for ePWM2 --*/
  {
    EPwm2Regs.CMPA.bit.CMPA = (uint16_T)(mcb_pmsm_foc_hall_f28379d_B.Switch1_f[1]);
  }

  /* S-Function (c2802xpwm): '<S233>/ePWM3' */

  /*-- Update CMPA value for ePWM3 --*/
  {
    EPwm3Regs.CMPA.bit.CMPA = (uint16_T)(mcb_pmsm_foc_hall_f28379d_B.Switch1_f[2]);
  }

  /* SignalConversion generated from: '<S1>/Speed_fb' */
  mcb_pmsm_foc_hall_f28379d_B.Speed_PU = mcb_pmsm_foc_hall_f28379d_B.Merge_d;

  /* Update for Delay: '<S189>/Delay One Step1' */
  mcb_pmsm_foc_hall_f28379d_DWork.DelayOneStep1_DSTATE =
    mcb_pmsm_foc_hall_f28379d_B.Compare_n;

  /* Update for Delay: '<S189>/Delay One Step' */
  if (mcb_pmsm_foc_hall_f28379d_B.OR) {
    mcb_pmsm_foc_hall_f28379d_DWork.DelayOneStep_DSTATE =
      mcb_pmsm_foc_hall_f28379d_B.Sum_m3;
  }

  /* End of Update for Delay: '<S189>/Delay One Step' */

  /* Update for UnitDelay: '<S239>/Output' */
  mcb_pmsm_foc_hall_f28379d_DWork.Output_DSTATE =
    mcb_pmsm_foc_hall_f28379d_B.FixPtSwitch;

  /* Update for DiscreteIntegrator: '<S129>/Integrator' */
  mcb_pmsm_foc_hall_f28379d_DWork.Integrator_DSTATE +=
    mcb_pmsm_foc_hall_f28379d_B.Switch_ls;
  mcb_pmsm_foc_hall_f28379d_DWork.Integrator_PrevResetState = (int16_T)
    mcb_pmsm_foc_hall_f28379d_B.LogicalOperator;

  /* Update for DiscreteIntegrator: '<S78>/Integrator' */
  mcb_pmsm_foc_hall_f28379d_DWork.Integrator_DSTATE_j +=
    mcb_pmsm_foc_hall_f28379d_B.Switch_b;
  mcb_pmsm_foc_hall_f28379d_DWork.Integrator_PrevResetState_m = (int16_T)
    mcb_pmsm_foc_hall_f28379d_B.LogicalOperator_j;
}

/*
 * Output and update for action system:
 *    '<S293>/Output 1'
 *    '<S315>/Output 1'
 *    '<S337>/Output 1'
 */
void mcb_pmsm_foc_hall_f_Output1(boolean_T *rty_Out1)
{
  /* SignalConversion generated from: '<S298>/Out1' incorporates:
   *  Constant: '<S298>/Constant'
   */
  *rty_Out1 = true;
}

/*
 * Output and update for action system:
 *    '<S293>/Output 0'
 *    '<S315>/Output 0'
 *    '<S337>/Output 0'
 */
void mcb_pmsm_foc_hall_f_Output0(boolean_T *rty_Out1)
{
  /* SignalConversion generated from: '<S297>/Out1' incorporates:
   *  Constant: '<S297>/Constant'
   */
  *rty_Out1 = false;
}

/*
 * System initialize for action system:
 *    '<S299>/Valid Halls'
 *    '<S321>/Valid Halls'
 *    '<S343>/Valid Halls'
 */
void mcb_pmsm_fo_ValidHalls_Init(rtB_ValidHalls_mcb_pmsm_foc_hal *localB)
{
  /* SystemInitialize for Merge: '<S301>/Merge' */
  localB->Merge = 0U;

  /* SystemInitialize for Merge: '<S301>/Merge1' */
  localB->Merge1 = 0U;

  /* SystemInitialize for Merge: '<S301>/Merge2' */
  localB->Merge2 = 0;

  /* SystemInitialize for Merge: '<S301>/Merge3' */
  localB->Merge3 = 0U;
}

/*
 * Output and update for action system:
 *    '<S299>/Valid Halls'
 *    '<S321>/Valid Halls'
 *    '<S343>/Valid Halls'
 */
void mcb_pmsm_foc_hal_ValidHalls(uint16_T rtu_hallReading, uint16_T
  rtu_previousState, int16_T rtu_previous_direction, boolean_T
  *rty_directional_speed_valid_fla, int16_T *rty_direction, uint16_T
  *rty_inValidHall, rtB_ValidHalls_mcb_pmsm_foc_hal *localB)
{
  /* SwitchCase: '<S301>/Switch Case' */
  switch ((int32_T)rtu_hallReading) {
   case 5L:
    /* Outputs for IfAction SubSystem: '<S301>/If Action Subsystem' incorporates:
     *  ActionPort: '<S302>/Action Port'
     */
    /* Merge: '<S301>/Merge' incorporates:
     *  Constant: '<S302>/previous'
     *  SignalConversion generated from: '<S302>/Out1'
     */
    localB->Merge = 1U;

    /* Merge: '<S301>/Merge1' incorporates:
     *  Constant: '<S302>/next'
     *  SignalConversion generated from: '<S302>/Out2'
     */
    localB->Merge1 = 4U;

    /* End of Outputs for SubSystem: '<S301>/If Action Subsystem' */
    break;

   case 4L:
    /* Outputs for IfAction SubSystem: '<S301>/If Action Subsystem1' incorporates:
     *  ActionPort: '<S303>/Action Port'
     */
    /* Merge: '<S301>/Merge' incorporates:
     *  Constant: '<S303>/previous'
     *  SignalConversion generated from: '<S303>/Out1'
     */
    localB->Merge = 5U;

    /* Merge: '<S301>/Merge1' incorporates:
     *  Constant: '<S303>/next'
     *  SignalConversion generated from: '<S303>/Out2'
     */
    localB->Merge1 = 6U;

    /* End of Outputs for SubSystem: '<S301>/If Action Subsystem1' */
    break;

   case 6L:
    /* Outputs for IfAction SubSystem: '<S301>/If Action Subsystem2' incorporates:
     *  ActionPort: '<S304>/Action Port'
     */
    /* Merge: '<S301>/Merge' incorporates:
     *  Constant: '<S304>/previous'
     *  SignalConversion generated from: '<S304>/Out1'
     */
    localB->Merge = 4U;

    /* Merge: '<S301>/Merge1' incorporates:
     *  Constant: '<S304>/next'
     *  SignalConversion generated from: '<S304>/Out2'
     */
    localB->Merge1 = 2U;

    /* End of Outputs for SubSystem: '<S301>/If Action Subsystem2' */
    break;

   case 2L:
    /* Outputs for IfAction SubSystem: '<S301>/If Action Subsystem3' incorporates:
     *  ActionPort: '<S305>/Action Port'
     */
    /* Merge: '<S301>/Merge' incorporates:
     *  Constant: '<S305>/previous'
     *  SignalConversion generated from: '<S305>/Out1'
     */
    localB->Merge = 6U;

    /* Merge: '<S301>/Merge1' incorporates:
     *  Constant: '<S305>/next'
     *  SignalConversion generated from: '<S305>/Out2'
     */
    localB->Merge1 = 3U;

    /* End of Outputs for SubSystem: '<S301>/If Action Subsystem3' */
    break;

   case 3L:
    /* Outputs for IfAction SubSystem: '<S301>/If Action Subsystem4' incorporates:
     *  ActionPort: '<S306>/Action Port'
     */
    /* Merge: '<S301>/Merge' incorporates:
     *  Constant: '<S306>/previous'
     *  SignalConversion generated from: '<S306>/Out1'
     */
    localB->Merge = 2U;

    /* Merge: '<S301>/Merge1' incorporates:
     *  Constant: '<S306>/next'
     *  SignalConversion generated from: '<S306>/Out2'
     */
    localB->Merge1 = 1U;

    /* End of Outputs for SubSystem: '<S301>/If Action Subsystem4' */
    break;

   case 1L:
    /* Outputs for IfAction SubSystem: '<S301>/If Action Subsystem5' incorporates:
     *  ActionPort: '<S307>/Action Port'
     */
    /* Merge: '<S301>/Merge' incorporates:
     *  Constant: '<S307>/previous'
     *  SignalConversion generated from: '<S307>/Out1'
     */
    localB->Merge = 3U;

    /* Merge: '<S301>/Merge1' incorporates:
     *  Constant: '<S307>/next'
     *  SignalConversion generated from: '<S307>/Out2'
     */
    localB->Merge1 = 5U;

    /* End of Outputs for SubSystem: '<S301>/If Action Subsystem5' */
    break;

   default:
    /* no actions */
    break;
  }

  /* End of SwitchCase: '<S301>/Switch Case' */

  /* If: '<S301>/If' */
  if (rtu_previousState == localB->Merge) {
    /* Outputs for IfAction SubSystem: '<S301>/If Action Subsystem6' incorporates:
     *  ActionPort: '<S308>/Action Port'
     */
    /* Merge: '<S301>/Merge2' incorporates:
     *  Constant: '<S308>/Constant'
     *  SignalConversion generated from: '<S308>/direction'
     */
    localB->Merge2 = 1;

    /* Merge: '<S301>/Merge3' incorporates:
     *  Constant: '<S308>/Constant1'
     *  SignalConversion generated from: '<S308>/sequence_check'
     */
    localB->Merge3 = 0U;

    /* End of Outputs for SubSystem: '<S301>/If Action Subsystem6' */
  } else if (rtu_previousState == localB->Merge1) {
    /* Outputs for IfAction SubSystem: '<S301>/If Action Subsystem7' incorporates:
     *  ActionPort: '<S309>/Action Port'
     */
    /* Merge: '<S301>/Merge2' incorporates:
     *  Constant: '<S309>/Constant'
     *  SignalConversion generated from: '<S309>/direction'
     */
    localB->Merge2 = -1;

    /* Merge: '<S301>/Merge3' incorporates:
     *  Constant: '<S309>/Constant1'
     *  SignalConversion generated from: '<S309>/sequence_check'
     */
    localB->Merge3 = 0U;

    /* End of Outputs for SubSystem: '<S301>/If Action Subsystem7' */
  } else {
    /* Outputs for IfAction SubSystem: '<S301>/If Action Subsystem8' incorporates:
     *  ActionPort: '<S310>/Action Port'
     */
    /* Merge: '<S301>/Merge3' incorporates:
     *  Constant: '<S310>/Constant'
     *  SignalConversion generated from: '<S310>/sequence_check'
     */
    localB->Merge3 = 1U;

    /* End of Outputs for SubSystem: '<S301>/If Action Subsystem8' */
  }

  /* End of If: '<S301>/If' */

  /* SignalConversion: '<S301>/Signal Conversion' */
  *rty_inValidHall = localB->Merge3;

  /* SignalConversion: '<S301>/Signal Conversion1' */
  *rty_direction = localB->Merge2;

  /* Switch: '<S301>/Switch' incorporates:
   *  Constant: '<S301>/Constant'
   */
  if (localB->Merge3 != 0U) {
    *rty_directional_speed_valid_fla = false;
  } else {
    /* RelationalOperator: '<S301>/Relational Operator' */
    localB->RelationalOperator = (localB->Merge2 == rtu_previous_direction);
    *rty_directional_speed_valid_fla = localB->RelationalOperator;
  }

  /* End of Switch: '<S301>/Switch' */
}

/*
 * Output and update for action system:
 *    '<S299>/Bad hall (glitch or wrong connection)'
 *    '<S321>/Bad hall (glitch or wrong connection)'
 *    '<S343>/Bad hall (glitch or wrong connection)'
 */
void Badhallglitchorwrongconnect(int16_T rtu_previous_direction, uint16_T
  *rty_inValidHall, int16_T *rty_direction, boolean_T
  *rty_directional_speed_valid_fla)
{
  /* SignalConversion generated from: '<S300>/inValidHall' incorporates:
   *  Constant: '<S300>/Constant'
   */
  *rty_inValidHall = 1U;

  /* SignalConversion: '<S300>/Signal Conversion' */
  *rty_direction = rtu_previous_direction;

  /* SignalConversion generated from: '<S300>/directional_speed_valid_flag' incorporates:
   *  Constant: '<S300>/Constant1'
   */
  *rty_directional_speed_valid_fla = false;
}

/* System initialize for atomic system: */
void mcb_SPIMasterTransfer2_Init(rtDW_SPIMasterTransfer2_mcb_pms *localDW)
{
  uint32_T SPIPinsLoc;

  /* Start for MATLABSystem: '<S370>/SPI Master Transfer2' */
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

  /* MATLABSystem: '<S370>/SPI Master Transfer2' */
  MW_SPI_SetSlaveSelect(localDW->obj.MW_SPI_HANDLE, 0U, true);
  status = MW_SPI_SetFormat(localDW->obj.MW_SPI_HANDLE, 16U, MW_SPI_MODE_0,
    MW_SPI_MOST_SIGNIFICANT_BIT_FIRST);
  if (status == 0U) {
    MW_SPI_MasterWriteRead_8bits(localDW->obj.MW_SPI_HANDLE, &rtu_0, &rdDataRaw,
      1UL);
  }

  /* MATLABSystem: '<S370>/SPI Master Transfer2' */
  localB->SPIMasterTransfer2 = rdDataRaw;
}

/* Termination for atomic system: */
void mcb_SPIMasterTransfer2_Term(rtDW_SPIMasterTransfer2_mcb_pms *localDW)
{
  uint32_T SPIPinsLoc;

  /* Terminate for MATLABSystem: '<S370>/SPI Master Transfer2' */
  if (!localDW->obj.matlabCodegenIsDeleted) {
    localDW->obj.matlabCodegenIsDeleted = true;
    if ((localDW->obj.isInitialized == 1L) && localDW->obj.isSetupComplete) {
      SPIPinsLoc = MW_UNDEFINED_VALUE;
      MW_SPI_Close(localDW->obj.MW_SPI_HANDLE, SPIPinsLoc, SPIPinsLoc,
                   SPIPinsLoc, MW_UNDEFINED_VALUE);
    }
  }

  /* End of Terminate for MATLABSystem: '<S370>/SPI Master Transfer2' */
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
void mcb_pmsm__SpeedControl_Init(rtB_SpeedControl_mcb_pmsm_foc_h *localB,
  rtDW_SpeedControl_mcb_pmsm_foc_ *localDW)
{
  /* Start for Constant: '<S380>/Ki2' */
  localB->Ki2 = 0.0F;

  /* InitializeConditions for DiscreteIntegrator: '<S423>/Integrator' */
  localDW->Integrator_DSTATE = 0.0F;
  localDW->Integrator_PrevResetState = 0;

  /* InitializeConditions for S-Function (sdspunwrap2): '<S384>/Unwrap' */
  localDW->Unwrap_FirstStep = true;
  localDW->Unwrap_Cumsum = 0.0F;

  /* InitializeConditions for Delay: '<S441>/Delay' */
  localDW->CircBufIdx = 0U;

  /* SystemInitialize for Chart: '<S380>/Chart' */
  localDW->temporalCounter_i1 = 0U;
  localDW->is_active_c3_mcb_pmsm_foc_hall_ = 0U;
  localDW->is_c3_mcb_pmsm_foc_hall_f28379d = mcb_pmsm_foc_IN_NO_ACTIVE_CHILD;
  localB->Motor_State = 0U;

  /* SystemInitialize for Merge: '<S380>/Merge' */
  localB->Merge = 0.0F;

  /* SystemInitialize for Merge: '<S380>/Merge1' */
  localB->Merge1 = 0.0F;

  /* SystemInitialize for Merge: '<S380>/Merge2' */
  localB->Merge2 = false;
}

/* Output and update for atomic system: '<Root>/Speed Control' */
void mcb_pmsm_foc_h_SpeedControl(real32_T rtu_Speed_Ref_PU, real32_T
  rtu_Speed_Meas_PU, real32_T rtu_Pos_Meas_PU, const boolean_T *rtd_EnClosedLoop,
  const boolean_T *rtd_Enable, rtB_SpeedControl_mcb_pmsm_foc_h *localB,
  rtDW_SpeedControl_mcb_pmsm_foc_ *localDW)
{
  real_T u1;
  real32_T dpTmp;
  real32_T u0;
  real32_T uPrev;
  boolean_T out;

  /* Constant: '<S10>/Id_ref' */
  localB->Id_ref = 0.0F;

  /* DataStoreRead: '<S380>/Data Store Read1' */
  localB->DataStoreRead1 = *rtd_Enable;

  /* DataStoreRead: '<S380>/Data Store Read2' */
  localB->DataStoreRead2 = *rtd_EnClosedLoop;

  /* Logic: '<S380>/AND' */
  localB->AND = (localB->DataStoreRead1 && localB->DataStoreRead2);

  /* DataStoreRead: '<S380>/Data Store Read3' */
  localB->DataStoreRead3 = *rtd_Enable;

  /* UnitDelay: '<S380>/Unit Delay' */
  localB->UnitDelay_e = localDW->UnitDelay_DSTATE_a;

  /* Chart: '<S380>/Chart' */
  /* Gateway: Speed Control/PI_Controller_Speed2/Chart */
  if (localDW->temporalCounter_i1 < 4095U) {
    localDW->temporalCounter_i1 = (uint16_T)((int16_T)
      localDW->temporalCounter_i1 + 1);
  }

  /* During: Speed Control/PI_Controller_Speed2/Chart */
  if (localDW->is_active_c3_mcb_pmsm_foc_hall_ == 0U) {
    /* Entry: Speed Control/PI_Controller_Speed2/Chart */
    localDW->is_active_c3_mcb_pmsm_foc_hall_ = 1U;

    /* Entry Internal: Speed Control/PI_Controller_Speed2/Chart */
    /* Transition: '<S382>:2' */
    localDW->is_c3_mcb_pmsm_foc_hall_f28379d = mcb_pmsm_foc_hall_f2837_IN_IDLE;

    /* Entry 'IDLE': '<S382>:1' */
    localB->Motor_State = 1U;
  } else {
    switch (localDW->is_c3_mcb_pmsm_foc_hall_f28379d) {
     case mcb_pmsm_foc_hall_IN_AlignStage:
      /* During 'AlignStage': '<S382>:3' */
      if (!localB->DataStoreRead3) {
        /* Transition: '<S382>:14' */
        localDW->is_c3_mcb_pmsm_foc_hall_f28379d =
          mcb_pmsm_foc_hall_f2837_IN_IDLE;

        /* Entry 'IDLE': '<S382>:1' */
        localB->Motor_State = 1U;
      } else if (localDW->temporalCounter_i1 >= 1000U) {
        /* Transition: '<S382>:18' */
        localDW->temporalCounter_i1 = 0U;
        localDW->is_c3_mcb_pmsm_foc_hall_f28379d =
          mcb_pmsm_foc_hall__IN_OpenStage;

        /* Entry 'OpenStage': '<S382>:4' */
        localB->Motor_State = 3U;
      } else {
        localB->Motor_State = 2U;
      }
      break;

     case mcb_pmsm_foc_hall_f2837_IN_IDLE:
      /* During 'IDLE': '<S382>:1' */
      if (localB->DataStoreRead3) {
        /* Transition: '<S382>:7' */
        localDW->temporalCounter_i1 = 0U;
        localDW->is_c3_mcb_pmsm_foc_hall_f28379d =
          mcb_pmsm_foc_hall_IN_AlignStage;

        /* Entry 'AlignStage': '<S382>:3' */
        localB->Motor_State = 2U;
      } else {
        localB->Motor_State = 1U;
      }
      break;

     case mcb_pmsm_foc_hall__IN_OpenStage:
      /* During 'OpenStage': '<S382>:4' */
      out = ((localDW->temporalCounter_i1 >= 3000U) && localB->UnitDelay_e);
      if (out) {
        /* Transition: '<S382>:13' */
        localDW->is_c3_mcb_pmsm_foc_hall_f28379d =
          mcb_pmsm_foc_hall_f_IN_RunStage;

        /* Entry 'RunStage': '<S382>:5' */
        localB->Motor_State = 4U;
      } else if (!localB->DataStoreRead3) {
        /* Transition: '<S382>:15' */
        localDW->is_c3_mcb_pmsm_foc_hall_f28379d =
          mcb_pmsm_foc_hall_f2837_IN_IDLE;

        /* Entry 'IDLE': '<S382>:1' */
        localB->Motor_State = 1U;
      } else {
        localB->Motor_State = 3U;
      }
      break;

     default:
      /* During 'RunStage': '<S382>:5' */
      if (!localB->DataStoreRead3) {
        /* Transition: '<S382>:16' */
        localDW->is_c3_mcb_pmsm_foc_hall_f28379d =
          mcb_pmsm_foc_hall_f2837_IN_IDLE;

        /* Entry 'IDLE': '<S382>:1' */
        localB->Motor_State = 1U;
      } else {
        localB->Motor_State = 4U;
      }
      break;
    }
  }

  /* End of Chart: '<S380>/Chart' */

  /* DataStoreRead: '<S381>/Data Store Read1' */
  localB->DataStoreRead1_e = *rtd_Enable;

  /* Switch: '<S381>/Switch' */
  if (localB->DataStoreRead1_e) {
    /* Switch: '<S381>/Switch' */
    localB->Switch = rtu_Speed_Ref_PU;
  } else {
    /* Switch: '<S381>/Switch' */
    localB->Switch = rtu_Speed_Meas_PU;
  }

  /* End of Switch: '<S381>/Switch' */

  /* Product: '<S466>/Product' incorporates:
   *  Constant: '<S466>/Filter_Constant'
   */
  localB->Product = localB->Switch * 0.1F;

  /* UnitDelay: '<S466>/Unit Delay' */
  localB->UnitDelay = localDW->UnitDelay_DSTATE;

  /* Product: '<S466>/Product1' incorporates:
   *  Constant: '<S466>/One'
   */
  localB->Product1 = 0.9F * localB->UnitDelay;

  /* Sum: '<S466>/Add1' */
  localB->Add1 = localB->Product + localB->Product1;

  /* Sum: '<S380>/Sum' */
  localB->Sum = localB->Add1 - rtu_Speed_Meas_PU;

  /* Product: '<S428>/PProd Out' incorporates:
   *  Constant: '<S380>/Kp1'
   */
  localB->PProdOut = localB->Sum * 0.3F;

  /* Logic: '<S380>/Logical Operator' */
  localB->LogicalOperator = !localB->AND;

  /* Constant: '<S380>/Ki2' */
  localB->Ki2 = 0.0F;

  /* DiscreteIntegrator: '<S423>/Integrator' */
  if (localB->LogicalOperator || (localDW->Integrator_PrevResetState != 0)) {
    localDW->Integrator_DSTATE = 0.0F;
  }

  /* DiscreteIntegrator: '<S423>/Integrator' */
  localB->Integrator = localDW->Integrator_DSTATE;

  /* Sum: '<S432>/Sum' */
  localB->Sum_e = localB->PProdOut + localB->Integrator;

  /* DeadZone: '<S416>/DeadZone' */
  if (localB->Sum_e > 1.0F) {
    /* DeadZone: '<S416>/DeadZone' */
    localB->DeadZone = localB->Sum_e - 1.0F;
  } else if (localB->Sum_e >= -1.0F) {
    /* DeadZone: '<S416>/DeadZone' */
    localB->DeadZone = 0.0F;
  } else {
    /* DeadZone: '<S416>/DeadZone' */
    localB->DeadZone = localB->Sum_e - -1.0F;
  }

  /* End of DeadZone: '<S416>/DeadZone' */

  /* RelationalOperator: '<S414>/Relational Operator' incorporates:
   *  Constant: '<S414>/Clamping_zero'
   */
  localB->RelationalOperator = (localB->DeadZone != 0.0F);

  /* RelationalOperator: '<S414>/fix for DT propagation issue' incorporates:
   *  Constant: '<S414>/Clamping_zero'
   */
  localB->fixforDTpropagationissue = (localB->DeadZone > 0.0F);

  /* Switch: '<S414>/Switch1' */
  if (localB->fixforDTpropagationissue) {
    /* Switch: '<S414>/Switch1' incorporates:
     *  Constant: '<S414>/Constant'
     */
    localB->Switch1 = 1;
  } else {
    /* Switch: '<S414>/Switch1' incorporates:
     *  Constant: '<S414>/Constant2'
     */
    localB->Switch1 = -1;
  }

  /* End of Switch: '<S414>/Switch1' */

  /* Product: '<S420>/IProd Out' incorporates:
   *  Constant: '<S380>/Ki1'
   */
  localB->IProdOut = localB->Sum * 5.0E-5F;

  /* RelationalOperator: '<S414>/fix for DT propagation issue1' incorporates:
   *  Constant: '<S414>/Clamping_zero'
   */
  localB->fixforDTpropagationissue1 = (localB->IProdOut > 0.0F);

  /* Switch: '<S414>/Switch2' */
  if (localB->fixforDTpropagationissue1) {
    /* Switch: '<S414>/Switch2' incorporates:
     *  Constant: '<S414>/Constant3'
     */
    localB->Switch2_f = 1;
  } else {
    /* Switch: '<S414>/Switch2' incorporates:
     *  Constant: '<S414>/Constant4'
     */
    localB->Switch2_f = -1;
  }

  /* End of Switch: '<S414>/Switch2' */

  /* RelationalOperator: '<S414>/Equal1' incorporates:
   *  Switch: '<S414>/Switch1'
   *  Switch: '<S414>/Switch2'
   */
  localB->Equal1 = (localB->Switch1 == localB->Switch2_f);

  /* Logic: '<S414>/AND3' */
  localB->AND3 = (localB->RelationalOperator && localB->Equal1);

  /* Switch: '<S414>/Switch' */
  if (localB->AND3) {
    /* Switch: '<S414>/Switch' incorporates:
     *  Constant: '<S414>/Constant1'
     */
    localB->Switch_k = 0.0F;
  } else {
    /* Switch: '<S414>/Switch' */
    localB->Switch_k = localB->IProdOut;
  }

  /* End of Switch: '<S414>/Switch' */

  /* Saturate: '<S430>/Saturation' */
  u0 = localB->Sum_e;
  if (u0 > 1.0F) {
    /* Saturate: '<S430>/Saturation' */
    localB->Saturation = 1.0F;
  } else if (u0 < -1.0F) {
    /* Saturate: '<S430>/Saturation' */
    localB->Saturation = -1.0F;
  } else {
    /* Saturate: '<S430>/Saturation' */
    localB->Saturation = u0;
  }

  /* End of Saturate: '<S430>/Saturation' */

  /* Gain: '<S380>/Gain1' incorporates:
   *  Constant: '<S380>/speed_ref_rpm'
   */
  localB->Gain1 = 0.083333333333333329;

  /* SwitchCase: '<S380>/Switch Case' */
  switch ((int32_T)localB->Motor_State) {
   case 1L:
    /* Outputs for IfAction SubSystem: '<S380>/Switch Case Action Subsystem' incorporates:
     *  ActionPort: '<S385>/Action Port'
     */
    /* Merge: '<S380>/Merge' incorporates:
     *  Constant: '<S385>/Constant'
     *  SignalConversion generated from: '<S385>/theta_virtual'
     */
    localB->Merge = 0.0F;

    /* Merge: '<S380>/Merge1' incorporates:
     *  Constant: '<S385>/Constant1'
     *  SignalConversion generated from: '<S385>/Iq_ref+'
     */
    localB->Merge1 = 0.0F;

    /* Merge: '<S380>/Merge2' incorporates:
     *  Constant: '<S385>/Constant2'
     *  SignalConversion generated from: '<S385>/CloseLoop_Enable'
     */
    localB->Merge2 = false;

    /* End of Outputs for SubSystem: '<S380>/Switch Case Action Subsystem' */
    break;

   case 2L:
    /* Outputs for IfAction SubSystem: '<S380>/Switch Case Action Subsystem1' incorporates:
     *  ActionPort: '<S386>/Action Port'
     */
    /* Merge: '<S380>/Merge' incorporates:
     *  Constant: '<S386>/Constant'
     *  SignalConversion generated from: '<S386>/theta_virtual'
     */
    localB->Merge = 0.0F;

    /* Merge: '<S380>/Merge1' incorporates:
     *  Constant: '<S380>/Constant1'
     *  SignalConversion generated from: '<S386>/Iq_ref'
     */
    localB->Merge1 = 0.1F;

    /* Merge: '<S380>/Merge2' incorporates:
     *  Constant: '<S386>/Constant2'
     *  SignalConversion generated from: '<S386>/CloseLoop_Enable'
     */
    localB->Merge2 = false;

    /* End of Outputs for SubSystem: '<S380>/Switch Case Action Subsystem1' */
    break;

   case 3L:
    /* Outputs for IfAction SubSystem: '<S380>/Switch Case Action Subsystem2' incorporates:
     *  ActionPort: '<S387>/Action Port'
     */
    /* DiscreteIntegrator: '<S449>/Discrete-Time Integrator1' */
    localB->DiscreteTimeIntegrator1 = localDW->DiscreteTimeIntegrator1_DSTATE;

    /* Sum: '<S447>/Sum' */
    localB->Sum_k = rtu_Pos_Meas_PU - localB->DiscreteTimeIntegrator1;

    /* Delay: '<S447>/Delay' */
    localB->Delay_c = localDW->Delay_DSTATE;

    /* Sum: '<S447>/Sum1' */
    localB->Sum1 = localB->Delay_c - localB->Sum_k;

    /* Abs: '<S447>/Abs' */
    localB->Abs = fabsf(localB->Sum1);

    /* MinMax: '<S449>/MinMax' */
    u1 = localB->Switch;
    if ((u1 >= 0.083333333333333329) || rtIsNaN(u1)) {
      u1 = 0.083333333333333329;
    }

    /* MinMax: '<S449>/MinMax' */
    localB->MinMax = u1;

    /* Abs: '<S447>/Abs1' */
    localB->Abs1 = fabs(localB->MinMax);

    /* Abs: '<S447>/Abs2' */
    localB->Abs2 = fabsf(rtu_Speed_Meas_PU);

    /* Switch: '<S447>/Switch' */
    localB->Switch_o = (localB->Abs != 0.0F);

    /* Sum: '<S447>/Sum2' */
    localB->Sum2 = localB->Abs2 - localB->Abs1;

    /* Switch: '<S447>/Switch1' */
    localB->Switch1_d = (localB->Sum2 > 0.0);

    /* Logic: '<S447>/Logical Operator' */
    localB->LogicalOperator_p = (localB->Switch_o && localB->Switch1_d);

    /* Logic: '<S447>/Logical Operator2' */
    localB->LogicalOperator2 = true;

    /* Merge: '<S380>/Merge2' incorporates:
     *  Logic: '<S447>/Logical Operator1'
     */
    localB->Merge2 = localB->LogicalOperator_p;

    /* DiscreteIntegrator: '<S448>/Discrete-Time Integrator2' */
    localB->DiscreteTimeIntegrator2 = localDW->DiscreteTimeIntegrator2_DSTATE;

    /* Product: '<S448>/Divide1' incorporates:
     *  Constant: '<S380>/RampTime'
     *  Constant: '<S448>/Constant5'
     */
    localB->Divide1 = 0.33333333333333331;

    /* Gain: '<S448>/Gain1' incorporates:
     *  Constant: '<S380>/Constant1'
     */
    localB->Gain1_h = 0.0333333351F;

    /* Product: '<S448>/Product1' */
    localB->Product1_i = 0.0333333351F;

    /* RelationalOperator: '<S450>/LowerRelop1' */
    localB->LowerRelop1 = (localB->DiscreteTimeIntegrator2 > 0.0333333351F);

    /* Switch: '<S450>/Switch2' */
    if (localB->LowerRelop1) {
      /* Switch: '<S450>/Switch2' */
      localB->Switch2 = 0.0333333351F;
    } else {
      /* RelationalOperator: '<S450>/UpperRelop' incorporates:
       *  Constant: '<S448>/Constant6'
       */
      localB->UpperRelop_i = (localB->DiscreteTimeIntegrator2 < 0.0F);

      /* Switch: '<S450>/Switch' */
      if (localB->UpperRelop_i) {
        /* Switch: '<S450>/Switch' incorporates:
         *  Constant: '<S448>/Constant6'
         */
        localB->Switch_m = 0.0F;
      } else {
        /* Switch: '<S450>/Switch' */
        localB->Switch_m = localB->DiscreteTimeIntegrator2;
      }

      /* End of Switch: '<S450>/Switch' */

      /* Switch: '<S450>/Switch2' */
      localB->Switch2 = localB->Switch_m;
    }

    /* End of Switch: '<S450>/Switch2' */

    /* Merge: '<S380>/Merge1' incorporates:
     *  Constant: '<S380>/Constant1'
     *  Sum: '<S448>/Sum4'
     */
    localB->Merge1 = 0.1F - localB->Switch2;

    /* DiscreteIntegrator: '<S449>/Discrete-Time Integrator' */
    localB->DiscreteTimeIntegrator = localDW->DiscreteTimeIntegrator_DSTATE;

    /* Product: '<S449>/Divide' incorporates:
     *  Constant: '<S380>/RampTime'
     *  Constant: '<S449>/Constant'
     */
    localB->Divide = 0.33333333333333331;

    /* Gain: '<S449>/Gain4' */
    localB->Gain4 = 4.0 * localB->MinMax;

    /* Switch: '<S457>/Switch' incorporates:
     *  Constant: '<S457>/Constant1'
     */
    localB->Switch_ki = 0.0F;

    /* If: '<S458>/If' */
    if (localB->DiscreteTimeIntegrator1 <= 0.0F) {
      /* Outputs for IfAction SubSystem: '<S458>/If Action Subsystem' incorporates:
       *  ActionPort: '<S460>/Action Port'
       */
      mcb_pms_IfActionSubsystem_n(localB->DiscreteTimeIntegrator1, 0.0F,
        &localB->Merge_h);

      /* End of Outputs for SubSystem: '<S458>/If Action Subsystem' */
    } else {
      /* Outputs for IfAction SubSystem: '<S458>/If Action Subsystem1' incorporates:
       *  ActionPort: '<S461>/Action Port'
       */
      /* Merge: '<S458>/Merge' incorporates:
       *  Sum: '<S461>/Add'
       */
      localB->Merge_h = localB->DiscreteTimeIntegrator1;

      /* End of Outputs for SubSystem: '<S458>/If Action Subsystem1' */
    }

    /* End of If: '<S458>/If' */

    /* Gain: '<S463>/Number of pole pairs' */
    localB->Numberofpolepairs = 12.0F * localB->Merge_h;

    /* Rounding: '<S459>/Floor' */
    localB->Floor = (real32_T)floor(localB->Numberofpolepairs);

    /* Sum: '<S459>/Add' */
    localB->Add = localB->Numberofpolepairs - localB->Floor;

    /* Merge: '<S380>/Merge' incorporates:
     *  Constant: '<S449>/Constant3'
     *  Math: '<S449>/Math Function'
     */
    localB->Merge = rt_modf_snf(localB->Add, 1.0F);

    /* Product: '<S449>/Product' */
    localB->Product_l = (real32_T)(localB->Gain4 * 0.33333333333333331);

    /* RelationalOperator: '<S455>/LowerRelop1' */
    localB->LowerRelop1_l = (localB->DiscreteTimeIntegrator > localB->Gain4);

    /* Switch: '<S455>/Switch2' */
    if (localB->LowerRelop1_l) {
      /* Switch: '<S455>/Switch2' */
      localB->Switch2_i = (real32_T)localB->Gain4;
    } else {
      /* Gain: '<S449>/Gain2' */
      localB->Gain2 = -localB->Gain4;

      /* RelationalOperator: '<S455>/UpperRelop' */
      localB->UpperRelop = (localB->DiscreteTimeIntegrator < localB->Gain2);

      /* Switch: '<S455>/Switch' */
      if (localB->UpperRelop) {
        /* Switch: '<S455>/Switch' */
        localB->Switch_a = (real32_T)localB->Gain2;
      } else {
        /* Switch: '<S455>/Switch' */
        localB->Switch_a = localB->DiscreteTimeIntegrator;
      }

      /* End of Switch: '<S455>/Switch' */

      /* Switch: '<S455>/Switch2' */
      localB->Switch2_i = localB->Switch_a;
    }

    /* End of Switch: '<S455>/Switch2' */

    /* Update for DiscreteIntegrator: '<S449>/Discrete-Time Integrator1' */
    localDW->DiscreteTimeIntegrator1_DSTATE += 0.0005F * localB->Switch2_i;

    /* Update for Delay: '<S447>/Delay' */
    localDW->Delay_DSTATE = localB->Sum_k;

    /* Update for DiscreteIntegrator: '<S448>/Discrete-Time Integrator2' */
    localDW->DiscreteTimeIntegrator2_DSTATE += 1.66666687E-5F;

    /* Update for DiscreteIntegrator: '<S449>/Discrete-Time Integrator' */
    localDW->DiscreteTimeIntegrator_DSTATE += 0.0005F * localB->Product_l;

    /* End of Outputs for SubSystem: '<S380>/Switch Case Action Subsystem2' */
    break;

   case 4L:
    /* Outputs for IfAction SubSystem: '<S380>/Switch Case Action Subsystem3' incorporates:
     *  ActionPort: '<S388>/Action Port'
     */
    /* Merge: '<S380>/Merge' incorporates:
     *  Constant: '<S388>/Constant1'
     *  SignalConversion generated from: '<S388>/theta_virtual'
     */
    localB->Merge = 0.0F;

    /* Merge: '<S380>/Merge1' incorporates:
     *  SignalConversion generated from: '<S388>/Iq_ref'
     */
    localB->Merge1 = localB->Saturation;

    /* Merge: '<S380>/Merge2' incorporates:
     *  Constant: '<S388>/Constant2'
     *  SignalConversion generated from: '<S388>/CloseLoop_Enable'
     */
    localB->Merge2 = false;

    /* End of Outputs for SubSystem: '<S380>/Switch Case Action Subsystem3' */
    break;

   default:
    /* no actions */
    break;
  }

  /* End of SwitchCase: '<S380>/Switch Case' */

  /* S-Function (sdspunwrap2): '<S384>/Unwrap' */
  if (localDW->Unwrap_FirstStep) {
    localDW->Unwrap_Prev = localB->Merge;
    localDW->Unwrap_FirstStep = false;
  }

  u0 = localDW->Unwrap_Cumsum;
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
    u0 += uPrev;
  }

  uPrev = localB->Merge;

  /* S-Function (sdspunwrap2): '<S384>/Unwrap' */
  localB->Unwrap = localB->Merge + u0;

  /* S-Function (sdspunwrap2): '<S384>/Unwrap' */
  localDW->Unwrap_Prev = uPrev;
  localDW->Unwrap_Cumsum = u0;

  /* Gain: '<S441>/PositionToCount' */
  localB->PositionToCount = (uint32_T)(4.2949673E+9F * localB->Unwrap);

  /* Delay: '<S441>/Delay' */
  localB->Delay = localDW->Delay_DSTATE_a[localDW->CircBufIdx];

  /* Sum: '<S441>/SpeedCount' */
  localB->SpeedCount = (int32_T)localB->PositionToCount - (int32_T)localB->Delay;

  /* DataTypeConversion: '<S446>/DTC' */
  localB->DTC = (real32_T)localB->SpeedCount;

  /* Gain: '<S441>/SpeedGain' */
  localB->SpeedGain = 5.82076609E-9F * localB->DTC;

  /* Product: '<S444>/Product' incorporates:
   *  Constant: '<S444>/Filter_Constant'
   */
  localB->Product_c = localB->SpeedGain * 0.001F;

  /* UnitDelay: '<S444>/Unit Delay' */
  localB->UnitDelay_m = localDW->UnitDelay_DSTATE_p;

  /* Product: '<S444>/Product1' incorporates:
   *  Constant: '<S444>/One'
   */
  localB->Product1_h = 0.999F * localB->UnitDelay_m;

  /* Sum: '<S444>/Add1' */
  localB->Add1_k = localB->Product_c + localB->Product1_h;

  /* Gain: '<S380>/Gain2' */
  localB->Gain2_g = 0.0833333358F * localB->Add1_k;

  /* Update for UnitDelay: '<S380>/Unit Delay' */
  localDW->UnitDelay_DSTATE_a = localB->Merge2;

  /* Update for UnitDelay: '<S466>/Unit Delay' */
  localDW->UnitDelay_DSTATE = localB->Add1;

  /* Update for DiscreteIntegrator: '<S423>/Integrator' */
  localDW->Integrator_DSTATE += localB->Switch_k;
  localDW->Integrator_PrevResetState = (int16_T)localB->LogicalOperator;

  /* Update for Delay: '<S441>/Delay' */
  localDW->Delay_DSTATE_a[localDW->CircBufIdx] = localB->PositionToCount;
  if (localDW->CircBufIdx < 19U) {
    localDW->CircBufIdx++;
  } else {
    localDW->CircBufIdx = 0U;
  }

  /* End of Update for Delay: '<S441>/Delay' */

  /* Update for UnitDelay: '<S444>/Unit Delay' */
  localDW->UnitDelay_DSTATE_p = localB->Add1_k;
}

/* Model step function for TID0 */
void mcb_pmsm_foc_hall_f28379d_step0(void) /* Sample time: [0.0005s, 0.0s] */
{
  {                                    /* Sample time: [0.0005s, 0.0s] */
    rate_monotonic_scheduler();
  }

  /* RateTransition: '<Root>/RT6' */
  mcb_pmsm_foc_hall_f28379d_B.RT6 =
    mcb_pmsm_foc_hall_f28379d_DWork.RT6_Buffer[mcb_pmsm_foc_hall_f28379d_DWork.RT6_ActiveBufIdx];

  /* RateTransition: '<Root>/RT7' */
  mcb_pmsm_foc_hall_f28379d_DWork.RT7_semaphoreTaken =
    mcb_pmsm_foc_hall_f28379d_DWork.RT7_ActiveBufIdx;

  /* RateTransition: '<Root>/RT7' */
  mcb_pmsm_foc_hall_f28379d_B.RT7 =
    mcb_pmsm_foc_hall_f28379d_DWork.RT7_Buffer[mcb_pmsm_foc_hall_f28379d_DWork.RT7_semaphoreTaken];

  /* RateTransition: '<Root>/RT12' */
  mcb_pmsm_foc_hall_f28379d_DWork.RT12_semaphoreTaken =
    mcb_pmsm_foc_hall_f28379d_DWork.RT12_ActiveBufIdx;

  /* RateTransition: '<Root>/RT12' */
  mcb_pmsm_foc_hall_f28379d_B.RT12 =
    mcb_pmsm_foc_hall_f28379d_DWork.RT12_Buffer[mcb_pmsm_foc_hall_f28379d_DWork.RT12_semaphoreTaken];

  /* Outputs for Atomic SubSystem: '<Root>/Speed Control' */
  mcb_pmsm_foc_h_SpeedControl(mcb_pmsm_foc_hall_f28379d_B.RT6,
    mcb_pmsm_foc_hall_f28379d_B.RT7, mcb_pmsm_foc_hall_f28379d_B.RT12,
    &mcb_pmsm_foc_hall_f28379d_DWork.EnClosedLoop,
    &mcb_pmsm_foc_hall_f28379d_DWork.Enable,
    &mcb_pmsm_foc_hall_f28379d_B.SpeedControl,
    &mcb_pmsm_foc_hall_f28379d_DWork.SpeedControl);

  /* End of Outputs for SubSystem: '<Root>/Speed Control' */

  /* RateTransition: '<Root>/RT11' */
  mcb_pmsm_foc_hall_f28379d_DWork.RT11_Buffer[mcb_pmsm_foc_hall_f28379d_DWork.RT11_ActiveBufIdx
    == 0] = mcb_pmsm_foc_hall_f28379d_B.SpeedControl.Merge;
  mcb_pmsm_foc_hall_f28379d_DWork.RT11_ActiveBufIdx =
    (mcb_pmsm_foc_hall_f28379d_DWork.RT11_ActiveBufIdx == 0);

  /* RateTransition: '<Root>/RT13' */
  mcb_pmsm_foc_hall_f28379d_DWork.RT13_Buffer[mcb_pmsm_foc_hall_f28379d_DWork.RT13_ActiveBufIdx
    == 0] = mcb_pmsm_foc_hall_f28379d_B.SpeedControl.Gain2_g;
  mcb_pmsm_foc_hall_f28379d_DWork.RT13_ActiveBufIdx =
    (mcb_pmsm_foc_hall_f28379d_DWork.RT13_ActiveBufIdx == 0);

  /* RateTransition: '<Root>/RT2' */
  mcb_pmsm_foc_hall_f28379d_DWork.RT2_Buffer
    [(mcb_pmsm_foc_hall_f28379d_DWork.RT2_ActiveBufIdx == 0) << 1U] =
    mcb_pmsm_foc_hall_f28379d_B.SpeedControl.Id_ref;
  mcb_pmsm_foc_hall_f28379d_DWork.RT2_Buffer[1 +
    ((mcb_pmsm_foc_hall_f28379d_DWork.RT2_ActiveBufIdx == 0) << 1U)] =
    mcb_pmsm_foc_hall_f28379d_B.SpeedControl.Merge1;
  mcb_pmsm_foc_hall_f28379d_DWork.RT2_ActiveBufIdx =
    (mcb_pmsm_foc_hall_f28379d_DWork.RT2_ActiveBufIdx == 0);

  /* RateTransition: '<Root>/RT9' */
  mcb_pmsm_foc_hall_f28379d_DWork.RT9_Buffer0 =
    mcb_pmsm_foc_hall_f28379d_B.SpeedControl.Motor_State;
}

/* Model step function for TID1 */
void mcb_pmsm_foc_hall_f28379d_step1(void) /* Sample time: [0.5s, 0.0s] */
{
  /* Outputs for Atomic SubSystem: '<Root>/Heartbeat LED' */
  /* S-Function (c280xgpio_do): '<S372>/Digital Output2' incorporates:
   *  Constant: '<S7>/RED_LED'
   */
  {
    GpioDataRegs.GPBTOGGLE.bit.GPIO34 = (uint16_T)((1U) != 0);
  }

  /* End of Outputs for SubSystem: '<Root>/Heartbeat LED' */
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
    int16_T i;
    for (i = 0; i < 16; i++) {
      mcb_pmsm_foc_hall_f28379d_B.TmpSignalConversionAtSelectorIn[i] = 0.0F;
    }

    mcb_pmsm_foc_hall_f28379d_B.Merge1 = 0.0;
    mcb_pmsm_foc_hall_f28379d_B.Saturation = 0.0;
    mcb_pmsm_foc_hall_f28379d_B.Saturation_j = 0.0;
    mcb_pmsm_foc_hall_f28379d_B.Switch = 0.0;
    mcb_pmsm_foc_hall_f28379d_B.Product = 0.0;
    mcb_pmsm_foc_hall_f28379d_B.Product_e = 0.0;
    mcb_pmsm_foc_hall_f28379d_B.Product1 = 0.0;
    mcb_pmsm_foc_hall_f28379d_B.Sum1 = 0.0;
    mcb_pmsm_foc_hall_f28379d_B.Merge[0] = 0.0;
    mcb_pmsm_foc_hall_f28379d_B.Merge[1] = 0.0;
    mcb_pmsm_foc_hall_f28379d_B.Sum = 0.0;
    mcb_pmsm_foc_hall_f28379d_B.sqrt3_by_two = 0.0;
    mcb_pmsm_foc_hall_f28379d_B.one_by_two = 0.0;
    mcb_pmsm_foc_hall_f28379d_B.add_c = 0.0;
    mcb_pmsm_foc_hall_f28379d_B.add_b = 0.0;
    mcb_pmsm_foc_hall_f28379d_B.Min = 0.0;
    mcb_pmsm_foc_hall_f28379d_B.Max = 0.0;
    mcb_pmsm_foc_hall_f28379d_B.Add = 0.0;
    mcb_pmsm_foc_hall_f28379d_B.one_by_two_b = 0.0;
    mcb_pmsm_foc_hall_f28379d_B.Add3 = 0.0;
    mcb_pmsm_foc_hall_f28379d_B.Add2 = 0.0;
    mcb_pmsm_foc_hall_f28379d_B.Add1 = 0.0;
    mcb_pmsm_foc_hall_f28379d_B.Gain[0] = 0.0;
    mcb_pmsm_foc_hall_f28379d_B.Gain[1] = 0.0;
    mcb_pmsm_foc_hall_f28379d_B.Gain[2] = 0.0;
    mcb_pmsm_foc_hall_f28379d_B.DiscretePulseGenerator = 0.0;
    mcb_pmsm_foc_hall_f28379d_B.qcos = 0.0;
    mcb_pmsm_foc_hall_f28379d_B.dsin = 0.0;
    mcb_pmsm_foc_hall_f28379d_B.sum_beta = 0.0;
    mcb_pmsm_foc_hall_f28379d_B.dcos = 0.0;
    mcb_pmsm_foc_hall_f28379d_B.qsin = 0.0;
    mcb_pmsm_foc_hall_f28379d_B.sum_alpha = 0.0;
    mcb_pmsm_foc_hall_f28379d_B.Switch_k[0] = 0.0;
    mcb_pmsm_foc_hall_f28379d_B.Switch_k[1] = 0.0;
    mcb_pmsm_foc_hall_f28379d_B.algDD_o1 = 0.0;
    mcb_pmsm_foc_hall_f28379d_B.algDD_o2 = 0.0;
    mcb_pmsm_foc_hall_f28379d_B.Product_i[0] = 0.0;
    mcb_pmsm_foc_hall_f28379d_B.Product_i[1] = 0.0;
    mcb_pmsm_foc_hall_f28379d_B.SquareRoot = 0.0;
    mcb_pmsm_foc_hall_f28379d_B.Switch_o = 0.0;
    mcb_pmsm_foc_hall_f28379d_B.Reciprocal = 0.0;
    mcb_pmsm_foc_hall_f28379d_B.Switch_h[0] = 0.0;
    mcb_pmsm_foc_hall_f28379d_B.Switch_h[1] = 0.0;
    mcb_pmsm_foc_hall_f28379d_B.Switch2 = 0.0;
    mcb_pmsm_foc_hall_f28379d_B.Product_a = 0.0;
    mcb_pmsm_foc_hall_f28379d_B.Sum_n = 0.0;
    mcb_pmsm_foc_hall_f28379d_B.Product2 = 0.0;
    mcb_pmsm_foc_hall_f28379d_B.Merge_m = 0.0;
    mcb_pmsm_foc_hall_f28379d_B.Gain_e = 0.0;
    mcb_pmsm_foc_hall_f28379d_B.Switch_c = 0.0;
    mcb_pmsm_foc_hall_f28379d_B.Switch1 = 0.0;
    mcb_pmsm_foc_hall_f28379d_B.Sqrt = 0.0;
    mcb_pmsm_foc_hall_f28379d_B.Gain_c = 0.0;
    mcb_pmsm_foc_hall_f28379d_B.RT6 = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.RT7 = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.RT12 = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.RT2[0] = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.RT2[1] = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.RT11 = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.RT13 = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.SCIReceive[0] = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.SCIReceive[1] = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.CastToSingle = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.DataStoreRead2_l = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.Merge1_f = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.Switch_hp = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.Merge_me = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.Floor = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.Add_e = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.Merge_d = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.Merge1_m = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.CastToSingle_e[0] = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.CastToSingle_e[1] = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.GetADCVoltage[0] = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.GetADCVoltage[1] = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.GetCurrents[0] = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.GetCurrents[1] = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.PU_Conversion[0] = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.PU_Conversion[1] = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.DataStoreRead1 = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.Merge_o = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.Merge_mm = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.indexing = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.Lookup[0] = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.Lookup[1] = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.Lookup[2] = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.Lookup[3] = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.Sum3 = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.DataTypeConversion1 = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.Sum2 = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.Product_m = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.Sum4 = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.Sum5 = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.Product1_k = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.Sum6 = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.CastToSingle_f = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.Sum_gs = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.PProdOut = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.Kp1 = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.Integrator = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.Sum_m = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.Sum_b = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.PProdOut_b = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.Ki1 = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.Integrator_o = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.Sum_h = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.CastToSingle1 = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.CastToSingle2 = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.Selector[0] = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.Selector[1] = 0.0F;
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
    mcb_pmsm_foc_hall_f28379d_B.Sum_nl = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.Gain1 = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.Sum1_i = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.Product_ii = 0.0F;
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
    mcb_pmsm_foc_hall_f28379d_B.algDD_o1_h = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.algDD_o2_l = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.a_plus_2b = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.one_by_sqrt3 = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.algDD_o1_a = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.algDD_o2_n = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.SpeedControl.Gain1 = 0.0;
    mcb_pmsm_foc_hall_f28379d_B.SpeedControl.MinMax = 0.0;
    mcb_pmsm_foc_hall_f28379d_B.SpeedControl.Abs1 = 0.0;
    mcb_pmsm_foc_hall_f28379d_B.SpeedControl.Sum2 = 0.0;
    mcb_pmsm_foc_hall_f28379d_B.SpeedControl.Divide1 = 0.0;
    mcb_pmsm_foc_hall_f28379d_B.SpeedControl.Divide = 0.0;
    mcb_pmsm_foc_hall_f28379d_B.SpeedControl.Gain4 = 0.0;
    mcb_pmsm_foc_hall_f28379d_B.SpeedControl.Gain2 = 0.0;
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
    mcb_pmsm_foc_hall_f28379d_B.SpeedControl.Sum_e = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.SpeedControl.DeadZone = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.SpeedControl.IProdOut = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.SpeedControl.Switch_k = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.SpeedControl.Saturation = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.SpeedControl.Merge = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.SpeedControl.Unwrap = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.SpeedControl.DTC = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.SpeedControl.SpeedGain = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.SpeedControl.Product_c = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.SpeedControl.UnitDelay_m = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.SpeedControl.Product1_h = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.SpeedControl.Add1_k = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.SpeedControl.Gain2_g = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.SpeedControl.Merge1 = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.SpeedControl.DiscreteTimeIntegrator1 = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.SpeedControl.Sum_k = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.SpeedControl.Delay_c = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.SpeedControl.Sum1 = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.SpeedControl.Abs = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.SpeedControl.Abs2 = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.SpeedControl.DiscreteTimeIntegrator2 = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.SpeedControl.Gain1_h = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.SpeedControl.Product1_i = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.SpeedControl.Switch2 = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.SpeedControl.DiscreteTimeIntegrator = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.SpeedControl.Switch_ki = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.SpeedControl.Merge_h = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.SpeedControl.Numberofpolepairs = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.SpeedControl.Floor = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.SpeedControl.Add = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.SpeedControl.Product_l = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.SpeedControl.Switch2_i = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.SpeedControl.Switch_a = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.SpeedControl.Switch_m = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.IfActionSubsystem3.Switch = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.IfActionSubsystem3.Merge = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.IfActionSubsystem3.Floor = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.IfActionSubsystem3.Add = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.IfActionSubsystem2.Switch = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.IfActionSubsystem2.Merge = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.IfActionSubsystem2.Floor = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.IfActionSubsystem2.Add = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.IfActionSubsystem_e.Switch = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.IfActionSubsystem_e.Merge = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.IfActionSubsystem_e.Floor = 0.0F;
    mcb_pmsm_foc_hall_f28379d_B.IfActionSubsystem_e.Add = 0.0F;
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
  mcb_pmsm_foc_hall_f28379d_DWork.RT6_Buffer[0] = 0.0F;
  mcb_pmsm_foc_hall_f28379d_DWork.RT6_Buffer[1] = 0.0F;
  mcb_pmsm_foc_hall_f28379d_DWork.RT7_Buffer[0] = 0.0F;
  mcb_pmsm_foc_hall_f28379d_DWork.RT7_Buffer[1] = 0.0F;
  mcb_pmsm_foc_hall_f28379d_DWork.RT12_Buffer[0] = 0.0F;
  mcb_pmsm_foc_hall_f28379d_DWork.RT12_Buffer[1] = 0.0F;
  mcb_pmsm_foc_hall_f28379d_DWork.RT11_Buffer[0] = 0.0F;
  mcb_pmsm_foc_hall_f28379d_DWork.RT11_Buffer[1] = 0.0F;
  mcb_pmsm_foc_hall_f28379d_DWork.RT13_Buffer[0] = 0.0F;
  mcb_pmsm_foc_hall_f28379d_DWork.RT13_Buffer[1] = 0.0F;
  mcb_pmsm_foc_hall_f28379d_DWork.RT2_Buffer[0] = 0.0F;
  mcb_pmsm_foc_hall_f28379d_DWork.RT2_Buffer[1] = 0.0F;
  mcb_pmsm_foc_hall_f28379d_DWork.RT2_Buffer[2] = 0.0F;
  mcb_pmsm_foc_hall_f28379d_DWork.RT2_Buffer[3] = 0.0F;
  mcb_pmsm_foc_hall_f28379d_DWork.Speed_ref = 0.0F;
  mcb_pmsm_foc_hall_f28379d_DWork.SpeedControl.Sum2_DWORK1 = 0.0;
  mcb_pmsm_foc_hall_f28379d_DWork.SpeedControl.UnitDelay_DSTATE = 0.0F;
  mcb_pmsm_foc_hall_f28379d_DWork.SpeedControl.Integrator_DSTATE = 0.0F;
  mcb_pmsm_foc_hall_f28379d_DWork.SpeedControl.UnitDelay_DSTATE_p = 0.0F;
  mcb_pmsm_foc_hall_f28379d_DWork.SpeedControl.DiscreteTimeIntegrator1_DSTATE =
    0.0F;
  mcb_pmsm_foc_hall_f28379d_DWork.SpeedControl.Delay_DSTATE = 0.0F;
  mcb_pmsm_foc_hall_f28379d_DWork.SpeedControl.DiscreteTimeIntegrator2_DSTATE =
    0.0F;
  mcb_pmsm_foc_hall_f28379d_DWork.SpeedControl.DiscreteTimeIntegrator_DSTATE =
    0.0F;
  mcb_pmsm_foc_hall_f28379d_DWork.SpeedControl.Unwrap_Prev = 0.0F;
  mcb_pmsm_foc_hall_f28379d_DWork.SpeedControl.Unwrap_Cumsum = 0.0F;

  {
    uint16_T s364_iter;

    /* Start for DataStoreMemory: '<Root>/Data Store Memory5' */
    mcb_pmsm_foc_hall_f28379d_DWork.IaOffset = 2295U;

    /* Start for DataStoreMemory: '<Root>/Data Store Memory6' */
    mcb_pmsm_foc_hall_f28379d_DWork.IbOffset = 2286U;

    /* Start for DataStoreMemory: '<Root>/Data Store Memory7' */
    mcb_pmsm_foc_hall_f28379d_DWork.Debug_signals = 5U;

    /* SystemInitialize for S-Function (HardwareInterrupt_sfun): '<S286>/Hardware Interrupt' incorporates:
     *  SubSystem: '<Root>/Hall Sensor A'
     */
    /* System initialize for function-call system: '<Root>/Hall Sensor A' */

    /* SystemInitialize for IfAction SubSystem: '<S299>/Valid Halls' */
    mcb_pmsm_fo_ValidHalls_Init(&mcb_pmsm_foc_hall_f28379d_B.ValidHalls);

    /* End of SystemInitialize for SubSystem: '<S299>/Valid Halls' */

    /* SystemInitialize for S-Function (HardwareInterrupt_sfun): '<S288>/Hardware Interrupt' incorporates:
     *  SubSystem: '<Root>/Hall Sensor B'
     */
    /* System initialize for function-call system: '<Root>/Hall Sensor B' */

    /* SystemInitialize for IfAction SubSystem: '<S321>/Valid Halls' */
    mcb_pmsm_fo_ValidHalls_Init(&mcb_pmsm_foc_hall_f28379d_B.ValidHalls_h);

    /* End of SystemInitialize for SubSystem: '<S321>/Valid Halls' */

    /* SystemInitialize for S-Function (HardwareInterrupt_sfun): '<S290>/Hardware Interrupt' incorporates:
     *  SubSystem: '<Root>/Hall Sensor C'
     */
    /* System initialize for function-call system: '<Root>/Hall Sensor C' */

    /* SystemInitialize for IfAction SubSystem: '<S343>/Valid Halls' */
    mcb_pmsm_fo_ValidHalls_Init(&mcb_pmsm_foc_hall_f28379d_B.ValidHalls_hi);

    /* End of SystemInitialize for SubSystem: '<S343>/Valid Halls' */

    /* SystemInitialize for S-Function (HardwareInterrupt_sfun): '<S284>/Hardware Interrupt' incorporates:
     *  SubSystem: '<Root>/Current Control'
     */
    mcb_pms_CurrentControl_Init();

    /* SystemInitialize for S-Function (HardwareInterrupt_sfun): '<S292>/Hardware Interrupt' incorporates:
     *  SubSystem: '<Root>/Serial Receive'
     */
    /* System initialize for function-call system: '<Root>/Serial Receive' */

    /* Start for S-Function (c28xsci_rx): '<S379>/SCI Receive' */

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
    /* Start for S-Function (c280xgpio_do): '<S372>/Digital Output2' */
    EALLOW;
    GpioCtrlRegs.GPBMUX1.all &= 0xFFFFFFCFU;
    GpioCtrlRegs.GPBDIR.all |= 0x4U;
    EDIS;

    /* End of SystemInitialize for SubSystem: '<Root>/Heartbeat LED' */

    /* SystemInitialize for Atomic SubSystem: '<Root>/Hardware Init' */
    /* Start for S-Function (c280xgpio_do): '<S362>/DRV830x Enable' */
    EALLOW;
    GpioCtrlRegs.GPDMUX2.all &= 0xFCFFFFFFU;
    GpioCtrlRegs.GPDDIR.all |= 0x10000000U;
    EDIS;

    /* SystemInitialize for Enabled SubSystem: '<S362>/ADC Gain Setting' */
    mcb_SPIMasterTransfer2_Init
      (&mcb_pmsm_foc_hall_f28379d_DWork.SPIMasterTransfer2);
    mcb_SPIMasterTransfer2_Init
      (&mcb_pmsm_foc_hall_f28379d_DWork.SPIMasterTransfer3);

    /* End of SystemInitialize for SubSystem: '<S362>/ADC Gain Setting' */

    /* SystemInitialize for Enabled SubSystem: '<S360>/Calculate ADC Offset ' */
    /* SystemInitialize for Iterator SubSystem: '<S361>/For Iterator Subsystem' */
    /* Start for S-Function (c2802xadc): '<S364>/ADC_A_IN0' */
    if (MW_adcCInitFlag == 0U) {
      InitAdcC();
      MW_adcCInitFlag = 1U;
    }

    config_ADCC_SOC2 ();

    /* Start for S-Function (c2802xadc): '<S364>/ADC_B_IN0' */
    if (MW_adcBInitFlag == 0U) {
      InitAdcB();
      MW_adcBInitFlag = 1U;
    }

    config_ADCB_SOC2 ();

    /* End of SystemInitialize for SubSystem: '<S361>/For Iterator Subsystem' */
    /* End of SystemInitialize for SubSystem: '<S360>/Calculate ADC Offset ' */
    /* End of SystemInitialize for SubSystem: '<Root>/Hardware Init' */

    /* Outputs for Atomic SubSystem: '<Root>/Hardware Init' */
    /* Outputs for Enabled SubSystem: '<S362>/ADC Gain Setting' incorporates:
     *  EnablePort: '<S370>/Enable'
     */
    /* Constant: '<S6>/6PWM_Mode' */
    mcb_pmsm_SPIMasterTransfer2(14870U,
      &mcb_pmsm_foc_hall_f28379d_B.SPIMasterTransfer2,
      &mcb_pmsm_foc_hall_f28379d_DWork.SPIMasterTransfer2);

    /* Constant: '<S6>/ADC_Gain_Setting' */
    mcb_pmsm_SPIMasterTransfer2(20501U,
      &mcb_pmsm_foc_hall_f28379d_B.SPIMasterTransfer3,
      &mcb_pmsm_foc_hall_f28379d_DWork.SPIMasterTransfer3);

    /* End of Outputs for SubSystem: '<S362>/ADC Gain Setting' */

    /* Switch: '<S362>/Switch' incorporates:
     *  Constant: '<S362>/Constant'
     */
    mcb_pmsm_foc_hall_f28379d_B.Switch_bt = true;

    /* S-Function (c280xgpio_do): '<S362>/DRV830x Enable' */
    {
      if (mcb_pmsm_foc_hall_f28379d_B.Switch_bt) {
        GpioDataRegs.GPDSET.bit.GPIO124 = 1U;
      } else {
        GpioDataRegs.GPDCLEAR.bit.GPIO124 = 1U;
      }
    }

    /* Outputs for Enabled SubSystem: '<S360>/Calculate ADC Offset ' incorporates:
     *  EnablePort: '<S361>/Enable'
     */
    /* Outputs for Iterator SubSystem: '<S361>/For Iterator Subsystem' incorporates:
     *  ForIterator: '<S364>/For Iterator'
     */
    for (s364_iter = 1U; s364_iter < 17U; s364_iter++) {
      /* Outputs for Iterator SubSystem: '<S361>/For Iterator Subsystem' incorporates:
       *  ForIterator: '<S364>/For Iterator'
       */
      mcb_pmsm_foc_hall_f28379d_B.ForIterator = s364_iter;

      /* S-Function (c2802xadc): '<S364>/ADC_A_IN0' */
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

      /* S-Function (c2802xadc): '<S364>/ADC_B_IN0' */
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

      /* If: '<S364>/If' */
      if (mcb_pmsm_foc_hall_f28379d_B.ForIterator > 8U) {
        /* Outputs for IfAction SubSystem: '<S364>/If Action Subsystem' incorporates:
         *  ActionPort: '<S369>/Action Port'
         */
        /* Memory: '<S369>/Memory' */
        mcb_pmsm_foc_hall_f28379d_B.Memory =
          mcb_pmsm_foc_hall_f28379d_DWork.Memory_PreviousInput;

        /* Sum: '<S369>/Sum' */
        mcb_pmsm_foc_hall_f28379d_B.Sum_i =
          mcb_pmsm_foc_hall_f28379d_B.ADC_A_IN0 +
          mcb_pmsm_foc_hall_f28379d_B.Memory;

        /* Memory: '<S369>/Memory1' */
        mcb_pmsm_foc_hall_f28379d_B.Memory1 =
          mcb_pmsm_foc_hall_f28379d_DWork.Memory1_PreviousInput;

        /* Sum: '<S369>/Sum1' */
        mcb_pmsm_foc_hall_f28379d_B.Sum1_j =
          mcb_pmsm_foc_hall_f28379d_B.ADC_B_IN0 +
          mcb_pmsm_foc_hall_f28379d_B.Memory1;

        /* Update for Memory: '<S369>/Memory' */
        mcb_pmsm_foc_hall_f28379d_DWork.Memory_PreviousInput =
          mcb_pmsm_foc_hall_f28379d_B.Sum_i;

        /* Update for Memory: '<S369>/Memory1' */
        mcb_pmsm_foc_hall_f28379d_DWork.Memory1_PreviousInput =
          mcb_pmsm_foc_hall_f28379d_B.Sum1_j;

        /* End of Outputs for SubSystem: '<S364>/If Action Subsystem' */
      }

      /* End of If: '<S364>/If' */
    }

    /* End of Outputs for SubSystem: '<S361>/For Iterator Subsystem' */

    /* Product: '<S361>/Divide' incorporates:
     *  Constant: '<S361>/Constant'
     */
    mcb_pmsm_foc_hall_f28379d_B.Divide_ir = (uint16_T)((real_T)
      mcb_pmsm_foc_hall_f28379d_B.Sum_i / 8.0);

    /* If: '<S361>/If' incorporates:
     *  Constant: '<S361>/Constant1'
     *  Constant: '<S361>/Constant2'
     */
    if ((mcb_pmsm_foc_hall_f28379d_B.Divide_ir > 1500U) &&
        (mcb_pmsm_foc_hall_f28379d_B.Divide_ir < 2500U)) {
      /* Outputs for IfAction SubSystem: '<S361>/If Action Subsystem' incorporates:
       *  ActionPort: '<S365>/Action Port'
       */
      /* DataStoreWrite: '<S365>/Data Store Write1' */
      mcb_pmsm_foc_hall_f28379d_DWork.IaOffset =
        mcb_pmsm_foc_hall_f28379d_B.Divide_ir;

      /* End of Outputs for SubSystem: '<S361>/If Action Subsystem' */
    } else {
      /* Outputs for IfAction SubSystem: '<S361>/If Action Subsystem1' incorporates:
       *  ActionPort: '<S366>/Action Port'
       */
      /* DataStoreWrite: '<S366>/Data Store Write1' incorporates:
       *  Constant: '<S366>/Constant'
       */
      mcb_pmsm_foc_hall_f28379d_DWork.IaOffset = 2295U;

      /* End of Outputs for SubSystem: '<S361>/If Action Subsystem1' */
    }

    /* End of If: '<S361>/If' */

    /* Product: '<S361>/Divide1' incorporates:
     *  Constant: '<S361>/Constant'
     */
    mcb_pmsm_foc_hall_f28379d_B.Divide1_e = (uint16_T)((real_T)
      mcb_pmsm_foc_hall_f28379d_B.Sum1_j / 8.0);

    /* If: '<S361>/If1' incorporates:
     *  Constant: '<S361>/Constant1'
     *  Constant: '<S361>/Constant2'
     */
    if ((mcb_pmsm_foc_hall_f28379d_B.Divide1_e > 1500U) &&
        (mcb_pmsm_foc_hall_f28379d_B.Divide1_e < 2500U)) {
      /* Outputs for IfAction SubSystem: '<S361>/If Action Subsystem2' incorporates:
       *  ActionPort: '<S367>/Action Port'
       */
      /* DataStoreWrite: '<S367>/Data Store Write2' */
      mcb_pmsm_foc_hall_f28379d_DWork.IbOffset =
        mcb_pmsm_foc_hall_f28379d_B.Divide1_e;

      /* End of Outputs for SubSystem: '<S361>/If Action Subsystem2' */
    } else {
      /* Outputs for IfAction SubSystem: '<S361>/If Action Subsystem3' incorporates:
       *  ActionPort: '<S368>/Action Port'
       */
      /* DataStoreWrite: '<S368>/Data Store Write2' incorporates:
       *  Constant: '<S368>/Constant1'
       */
      mcb_pmsm_foc_hall_f28379d_DWork.IbOffset = 2286U;

      /* End of Outputs for SubSystem: '<S361>/If Action Subsystem3' */
    }

    /* End of If: '<S361>/If1' */
    /* End of Outputs for SubSystem: '<S360>/Calculate ADC Offset ' */

    /* Logic: '<S360>/NOT' */
    mcb_pmsm_foc_hall_f28379d_B.NOT = false;

    /* Outputs for Enabled SubSystem: '<S360>/Default ADC Offset' incorporates:
     *  EnablePort: '<S363>/Enable'
     */
    if (mcb_pmsm_foc_hall_f28379d_B.NOT) {
      /* DataStoreWrite: '<S363>/Data Store Write1' incorporates:
       *  Constant: '<S363>/Constant'
       */
      mcb_pmsm_foc_hall_f28379d_DWork.IaOffset = 2295U;

      /* DataStoreWrite: '<S363>/Data Store Write2' incorporates:
       *  Constant: '<S363>/Constant1'
       */
      mcb_pmsm_foc_hall_f28379d_DWork.IbOffset = 2286U;
    }

    /* End of Outputs for SubSystem: '<S360>/Default ADC Offset' */
    /* End of Outputs for SubSystem: '<Root>/Hardware Init' */
  }
}

/* Model terminate function */
void mcb_pmsm_foc_hall_f28379d_terminate(void)
{
  /* Terminate for Atomic SubSystem: '<Root>/Hardware Init' */
  /* Terminate for Enabled SubSystem: '<S362>/ADC Gain Setting' */
  mcb_SPIMasterTransfer2_Term
    (&mcb_pmsm_foc_hall_f28379d_DWork.SPIMasterTransfer2);
  mcb_SPIMasterTransfer2_Term
    (&mcb_pmsm_foc_hall_f28379d_DWork.SPIMasterTransfer3);

  /* End of Terminate for SubSystem: '<S362>/ADC Gain Setting' */
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
  HWI_TIC28x_ConfigureIRQ(96,&SCIA_RX_INT,3);
  HWI_TIC28x_EnableIRQ(96);
}

/* Hardware Interrupt Block: '<S284>/Hardware Interrupt' */
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

      /* RateTransition: '<Root>/RT9' */
      mcb_pmsm_foc_hall_f28379d_B.RT9 =
        mcb_pmsm_foc_hall_f28379d_DWork.RT9_Buffer0;

      /* RateTransition: '<Root>/RT11' */
      mcb_pmsm_foc_hall_f28379d_B.RT11 =
        mcb_pmsm_foc_hall_f28379d_DWork.RT11_Buffer[mcb_pmsm_foc_hall_f28379d_DWork.RT11_ActiveBufIdx];

      /* RateTransition: '<Root>/RT13' */
      mcb_pmsm_foc_hall_f28379d_B.RT13 =
        mcb_pmsm_foc_hall_f28379d_DWork.RT13_Buffer[mcb_pmsm_foc_hall_f28379d_DWork.RT13_ActiveBufIdx];

      /* S-Function (HardwareInterrupt_sfun): '<S284>/Hardware Interrupt' */
      mcb_pmsm_foc_CurrentControl();

      /* End of Outputs for S-Function (HardwareInterrupt_sfun): '<S284>/Hardware Interrupt' */

      /* RateTransition: '<Root>/RT12' */
      mcb_pmsm_foc_hall_f28379d_DWork.RT12_Buffer[mcb_pmsm_foc_hall_f28379d_DWork.RT12_semaphoreTaken
        == 0] = mcb_pmsm_foc_hall_f28379d_B.Add_e;
      mcb_pmsm_foc_hall_f28379d_DWork.RT12_ActiveBufIdx =
        (mcb_pmsm_foc_hall_f28379d_DWork.RT12_semaphoreTaken == 0);

      /* RateTransition: '<Root>/RT7' */
      mcb_pmsm_foc_hall_f28379d_DWork.RT7_Buffer[mcb_pmsm_foc_hall_f28379d_DWork.RT7_semaphoreTaken
        == 0] = mcb_pmsm_foc_hall_f28379d_B.Speed_PU;
      mcb_pmsm_foc_hall_f28379d_DWork.RT7_ActiveBufIdx =
        (mcb_pmsm_foc_hall_f28379d_DWork.RT7_semaphoreTaken == 0);
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

/* Hardware Interrupt Block: '<S286>/Hardware Interrupt' */
interrupt void ECAP1_INT(void)
{
  /* Event: Default Event */
  if (1 == runModel) {
    {
      /* S-Function (HardwareInterrupt_sfun): '<S286>/Hardware Interrupt' */

      /* Output and update for function-call system: '<Root>/Hall Sensor A' */

      /* DataStoreRead: '<S3>/Data Store Read' */
      mcb_pmsm_foc_hall_f28379d_B.DataStoreRead_p =
        mcb_pmsm_foc_hall_f28379d_DWork.GlobalHallState;

      /* S-Function (memorycopy): '<S313>/Read GPIO DAT register' */
      {
        uint32_T *memindsrc6 = (uint32_T *) (&GpioDataRegs.GPBDAT.all);
        uint32_T *meminddst6 = (uint32_T *)
          (&mcb_pmsm_foc_hall_f28379d_B.ReadGPIODATregister_g);
        *(uint32_T *) (meminddst6) = *(uint32_T *) (memindsrc6);
      }

      /* S-Function (sfix_bitop): '<S313>/Hall_C' */
      mcb_pmsm_foc_hall_f28379d_B.Hall_C_n =
        mcb_pmsm_foc_hall_f28379d_B.ReadGPIODATregister_g & 33554432UL;

      /* ArithShift: '<S313>/Shift Arithmetic' incorporates:
       *  S-Function (sfix_bitop): '<S313>/Hall_C'
       */
      mcb_pmsm_foc_hall_f28379d_B.ShiftArithmetic_e =
        mcb_pmsm_foc_hall_f28379d_B.Hall_C_n >> 23U;

      /* S-Function (sfix_bitop): '<S313>/Hall_B' */
      mcb_pmsm_foc_hall_f28379d_B.Hall_B_i =
        mcb_pmsm_foc_hall_f28379d_B.ReadGPIODATregister_g & 8388608UL;

      /* ArithShift: '<S313>/Shift Arithmetic1' incorporates:
       *  S-Function (sfix_bitop): '<S313>/Hall_B'
       */
      mcb_pmsm_foc_hall_f28379d_B.ShiftArithmetic1_jb =
        mcb_pmsm_foc_hall_f28379d_B.Hall_B_i >> 22U;

      /* S-Function (sfix_bitop): '<S313>/Hall_A' */
      mcb_pmsm_foc_hall_f28379d_B.Hall_A_k =
        mcb_pmsm_foc_hall_f28379d_B.ReadGPIODATregister_g & 4194304UL;

      /* ArithShift: '<S313>/Shift Arithmetic2' incorporates:
       *  S-Function (sfix_bitop): '<S313>/Hall_A'
       */
      mcb_pmsm_foc_hall_f28379d_B.ShiftArithmetic2_i =
        mcb_pmsm_foc_hall_f28379d_B.Hall_A_k >> 22U;

      /* S-Function (sfix_bitop): '<S313>/Bitwise Operator2' */
      mcb_pmsm_foc_hall_f28379d_B.BitwiseOperator2_n = (uint32_T)((int16_T)
        mcb_pmsm_foc_hall_f28379d_B.ShiftArithmetic_e | (int16_T)
        mcb_pmsm_foc_hall_f28379d_B.ShiftArithmetic1_jb | (int16_T)
        mcb_pmsm_foc_hall_f28379d_B.ShiftArithmetic2_i);

      /* DataTypeConversion: '<S294>/Data Type Conversion1' */
      mcb_pmsm_foc_hall_f28379d_B.DataTypeConversion1_d = (uint16_T)
        mcb_pmsm_foc_hall_f28379d_B.BitwiseOperator2_n;

      /* DataTypeConversion: '<S294>/Data Type Conversion2' */
      mcb_pmsm_foc_hall_f28379d_B.DataTypeConversion2_c = (uint16_T)
        mcb_pmsm_foc_hall_f28379d_B.DataStoreRead_p;

      /* DataStoreRead: '<S3>/Data Store Read1' */
      mcb_pmsm_foc_hall_f28379d_B.DataStoreRead1_o =
        mcb_pmsm_foc_hall_f28379d_DWork.GlobalDirection;

      /* SwitchCase: '<S294>/Detects if the halls reading is valid' */
      switch ((int32_T)mcb_pmsm_foc_hall_f28379d_B.DataTypeConversion1_d) {
       case 5L:
       case 4L:
       case 6L:
       case 2L:
       case 3L:
       case 1L:
        /* Outputs for IfAction SubSystem: '<S299>/Valid Halls' incorporates:
         *  ActionPort: '<S301>/Action Port'
         */
        mcb_pmsm_foc_hal_ValidHalls
          (mcb_pmsm_foc_hall_f28379d_B.DataTypeConversion1_d,
           mcb_pmsm_foc_hall_f28379d_B.DataTypeConversion2_c,
           mcb_pmsm_foc_hall_f28379d_B.DataStoreRead1_o,
           &mcb_pmsm_foc_hall_f28379d_B.Merge3_m,
           &mcb_pmsm_foc_hall_f28379d_B.Merge1_kl,
           &mcb_pmsm_foc_hall_f28379d_B.Merge_k,
           &mcb_pmsm_foc_hall_f28379d_B.ValidHalls);

        /* End of Outputs for SubSystem: '<S299>/Valid Halls' */
        break;

       default:
        /* Outputs for IfAction SubSystem: '<S299>/Bad hall (glitch or wrong connection)' incorporates:
         *  ActionPort: '<S300>/Action Port'
         */
        Badhallglitchorwrongconnect(mcb_pmsm_foc_hall_f28379d_B.DataStoreRead1_o,
          &mcb_pmsm_foc_hall_f28379d_B.Merge_k,
          &mcb_pmsm_foc_hall_f28379d_B.Merge1_kl,
          &mcb_pmsm_foc_hall_f28379d_B.Merge3_m);

        /* End of Outputs for SubSystem: '<S299>/Bad hall (glitch or wrong connection)' */
        break;
      }

      /* End of SwitchCase: '<S294>/Detects if the halls reading is valid' */

      /* DataTypeConversion: '<S299>/Data Type Conversion' */
      mcb_pmsm_foc_hall_f28379d_B.DataTypeConversion_p =
        mcb_pmsm_foc_hall_f28379d_B.Merge3_m;

      /* DataStoreWrite: '<S3>/Data Store Write' */
      mcb_pmsm_foc_hall_f28379d_DWork.GlobalSpeedValidity =
        mcb_pmsm_foc_hall_f28379d_B.DataTypeConversion_p;

      /* DataStoreWrite: '<S3>/Data Store Write1' */
      mcb_pmsm_foc_hall_f28379d_DWork.GlobalDirection =
        mcb_pmsm_foc_hall_f28379d_B.Merge1_kl;

      /* DataStoreWrite: '<S3>/Data Store Write2' incorporates:
       *  Constant: '<S294>/Constant'
       */
      mcb_pmsm_foc_hall_f28379d_DWork.HallStateChangeFlag = 1U;

      /* S-Function (c280xcap): '<S314>/eCAP' */
      mcb_pmsm_foc_hall_f28379d_B.eCAP_l[0] = ECap1Regs.CAP1;
      mcb_pmsm_foc_hall_f28379d_B.eCAP_l[1] = ECap1Regs.CAP2;

      /* If: '<S293>/If' */
      if (((uint16_T)mcb_pmsm_foc_hall_f28379d_B.BitwiseOperator2_n == 5U) ||
          ((uint16_T)mcb_pmsm_foc_hall_f28379d_B.BitwiseOperator2_n == 3U)) {
        /* Outputs for IfAction SubSystem: '<S293>/Output 1' incorporates:
         *  ActionPort: '<S298>/Action Port'
         */
        mcb_pmsm_foc_hall_f_Output1(&mcb_pmsm_foc_hall_f28379d_B.Merge_n);

        /* End of Outputs for SubSystem: '<S293>/Output 1' */
      } else {
        /* Outputs for IfAction SubSystem: '<S293>/Output 0' incorporates:
         *  ActionPort: '<S297>/Action Port'
         */
        mcb_pmsm_foc_hall_f_Output0(&mcb_pmsm_foc_hall_f28379d_B.Merge_n);

        /* End of Outputs for SubSystem: '<S293>/Output 0' */
      }

      /* End of If: '<S293>/If' */

      /* Switch: '<S3>/Switch' */
      if (mcb_pmsm_foc_hall_f28379d_B.Merge_n) {
        /* Switch: '<S3>/Switch' */
        mcb_pmsm_foc_hall_f28379d_B.Switch_es =
          mcb_pmsm_foc_hall_f28379d_B.eCAP_l[0];
      } else {
        /* Switch: '<S3>/Switch' */
        mcb_pmsm_foc_hall_f28379d_B.Switch_es =
          mcb_pmsm_foc_hall_f28379d_B.eCAP_l[1];
      }

      /* End of Switch: '<S3>/Switch' */

      /* DataStoreWrite: '<S3>/Data Store Write3' */
      mcb_pmsm_foc_hall_f28379d_DWork.GlobalSpeedCount =
        mcb_pmsm_foc_hall_f28379d_B.Switch_es;

      /* DataStoreWrite: '<S3>/Data Store Write4' */
      mcb_pmsm_foc_hall_f28379d_DWork.GlobalHallState =
        mcb_pmsm_foc_hall_f28379d_B.BitwiseOperator2_n;

      /* End of Outputs for S-Function (HardwareInterrupt_sfun): '<S286>/Hardware Interrupt' */
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

/* Hardware Interrupt Block: '<S288>/Hardware Interrupt' */
interrupt void ECAP2_INT(void)
{
  /* Event: Default Event */
  if (1 == runModel) {
    {
      /* S-Function (HardwareInterrupt_sfun): '<S288>/Hardware Interrupt' */

      /* Output and update for function-call system: '<Root>/Hall Sensor B' */

      /* DataStoreRead: '<S4>/Data Store Read' */
      mcb_pmsm_foc_hall_f28379d_B.DataStoreRead_o =
        mcb_pmsm_foc_hall_f28379d_DWork.GlobalHallState;

      /* S-Function (memorycopy): '<S335>/Read GPIO DAT register' */
      {
        uint32_T *memindsrc7 = (uint32_T *) (&GpioDataRegs.GPBDAT.all);
        uint32_T *meminddst7 = (uint32_T *)
          (&mcb_pmsm_foc_hall_f28379d_B.ReadGPIODATregister_n);
        *(uint32_T *) (meminddst7) = *(uint32_T *) (memindsrc7);
      }

      /* S-Function (sfix_bitop): '<S335>/Hall_C' */
      mcb_pmsm_foc_hall_f28379d_B.Hall_C_f =
        mcb_pmsm_foc_hall_f28379d_B.ReadGPIODATregister_n & 33554432UL;

      /* ArithShift: '<S335>/Shift Arithmetic' incorporates:
       *  S-Function (sfix_bitop): '<S335>/Hall_C'
       */
      mcb_pmsm_foc_hall_f28379d_B.ShiftArithmetic_b =
        mcb_pmsm_foc_hall_f28379d_B.Hall_C_f >> 23U;

      /* S-Function (sfix_bitop): '<S335>/Hall_B' */
      mcb_pmsm_foc_hall_f28379d_B.Hall_B_m =
        mcb_pmsm_foc_hall_f28379d_B.ReadGPIODATregister_n & 8388608UL;

      /* ArithShift: '<S335>/Shift Arithmetic1' incorporates:
       *  S-Function (sfix_bitop): '<S335>/Hall_B'
       */
      mcb_pmsm_foc_hall_f28379d_B.ShiftArithmetic1_j =
        mcb_pmsm_foc_hall_f28379d_B.Hall_B_m >> 22U;

      /* S-Function (sfix_bitop): '<S335>/Hall_A' */
      mcb_pmsm_foc_hall_f28379d_B.Hall_A_e =
        mcb_pmsm_foc_hall_f28379d_B.ReadGPIODATregister_n & 4194304UL;

      /* ArithShift: '<S335>/Shift Arithmetic2' incorporates:
       *  S-Function (sfix_bitop): '<S335>/Hall_A'
       */
      mcb_pmsm_foc_hall_f28379d_B.ShiftArithmetic2_k =
        mcb_pmsm_foc_hall_f28379d_B.Hall_A_e >> 22U;

      /* S-Function (sfix_bitop): '<S335>/Bitwise Operator2' */
      mcb_pmsm_foc_hall_f28379d_B.BitwiseOperator2_m = (uint32_T)((int16_T)
        mcb_pmsm_foc_hall_f28379d_B.ShiftArithmetic_b | (int16_T)
        mcb_pmsm_foc_hall_f28379d_B.ShiftArithmetic1_j | (int16_T)
        mcb_pmsm_foc_hall_f28379d_B.ShiftArithmetic2_k);

      /* DataTypeConversion: '<S316>/Data Type Conversion1' */
      mcb_pmsm_foc_hall_f28379d_B.DataTypeConversion1_n = (uint16_T)
        mcb_pmsm_foc_hall_f28379d_B.BitwiseOperator2_m;

      /* DataTypeConversion: '<S316>/Data Type Conversion2' */
      mcb_pmsm_foc_hall_f28379d_B.DataTypeConversion2_g = (uint16_T)
        mcb_pmsm_foc_hall_f28379d_B.DataStoreRead_o;

      /* DataStoreRead: '<S4>/Data Store Read1' */
      mcb_pmsm_foc_hall_f28379d_B.DataStoreRead1_kl =
        mcb_pmsm_foc_hall_f28379d_DWork.GlobalDirection;

      /* SwitchCase: '<S316>/Detects if the halls reading is valid' */
      switch ((int32_T)mcb_pmsm_foc_hall_f28379d_B.DataTypeConversion1_n) {
       case 5L:
       case 4L:
       case 6L:
       case 2L:
       case 3L:
       case 1L:
        /* Outputs for IfAction SubSystem: '<S321>/Valid Halls' incorporates:
         *  ActionPort: '<S323>/Action Port'
         */
        mcb_pmsm_foc_hal_ValidHalls
          (mcb_pmsm_foc_hall_f28379d_B.DataTypeConversion1_n,
           mcb_pmsm_foc_hall_f28379d_B.DataTypeConversion2_g,
           mcb_pmsm_foc_hall_f28379d_B.DataStoreRead1_kl,
           &mcb_pmsm_foc_hall_f28379d_B.Merge3_o,
           &mcb_pmsm_foc_hall_f28379d_B.Merge1_a,
           &mcb_pmsm_foc_hall_f28379d_B.Merge_j,
           &mcb_pmsm_foc_hall_f28379d_B.ValidHalls_h);

        /* End of Outputs for SubSystem: '<S321>/Valid Halls' */
        break;

       default:
        /* Outputs for IfAction SubSystem: '<S321>/Bad hall (glitch or wrong connection)' incorporates:
         *  ActionPort: '<S322>/Action Port'
         */
        Badhallglitchorwrongconnect
          (mcb_pmsm_foc_hall_f28379d_B.DataStoreRead1_kl,
           &mcb_pmsm_foc_hall_f28379d_B.Merge_j,
           &mcb_pmsm_foc_hall_f28379d_B.Merge1_a,
           &mcb_pmsm_foc_hall_f28379d_B.Merge3_o);

        /* End of Outputs for SubSystem: '<S321>/Bad hall (glitch or wrong connection)' */
        break;
      }

      /* End of SwitchCase: '<S316>/Detects if the halls reading is valid' */

      /* DataTypeConversion: '<S321>/Data Type Conversion' */
      mcb_pmsm_foc_hall_f28379d_B.DataTypeConversion_j =
        mcb_pmsm_foc_hall_f28379d_B.Merge3_o;

      /* DataStoreWrite: '<S4>/Data Store Write' */
      mcb_pmsm_foc_hall_f28379d_DWork.GlobalSpeedValidity =
        mcb_pmsm_foc_hall_f28379d_B.DataTypeConversion_j;

      /* DataStoreWrite: '<S4>/Data Store Write1' */
      mcb_pmsm_foc_hall_f28379d_DWork.GlobalDirection =
        mcb_pmsm_foc_hall_f28379d_B.Merge1_a;

      /* DataStoreWrite: '<S4>/Data Store Write2' incorporates:
       *  Constant: '<S316>/Constant'
       */
      mcb_pmsm_foc_hall_f28379d_DWork.HallStateChangeFlag = 1U;

      /* S-Function (c280xcap): '<S336>/eCAP' */
      mcb_pmsm_foc_hall_f28379d_B.eCAP_c[0] = ECap2Regs.CAP1;
      mcb_pmsm_foc_hall_f28379d_B.eCAP_c[1] = ECap2Regs.CAP2;

      /* If: '<S315>/If' */
      if (((uint16_T)mcb_pmsm_foc_hall_f28379d_B.BitwiseOperator2_m == 3U) ||
          ((uint16_T)mcb_pmsm_foc_hall_f28379d_B.BitwiseOperator2_m == 6U)) {
        /* Outputs for IfAction SubSystem: '<S315>/Output 1' incorporates:
         *  ActionPort: '<S320>/Action Port'
         */
        mcb_pmsm_foc_hall_f_Output1(&mcb_pmsm_foc_hall_f28379d_B.Merge_f);

        /* End of Outputs for SubSystem: '<S315>/Output 1' */
      } else {
        /* Outputs for IfAction SubSystem: '<S315>/Output 0' incorporates:
         *  ActionPort: '<S319>/Action Port'
         */
        mcb_pmsm_foc_hall_f_Output0(&mcb_pmsm_foc_hall_f28379d_B.Merge_f);

        /* End of Outputs for SubSystem: '<S315>/Output 0' */
      }

      /* End of If: '<S315>/If' */

      /* Switch: '<S4>/Switch' */
      if (mcb_pmsm_foc_hall_f28379d_B.Merge_f) {
        /* Switch: '<S4>/Switch' */
        mcb_pmsm_foc_hall_f28379d_B.Switch_l =
          mcb_pmsm_foc_hall_f28379d_B.eCAP_c[0];
      } else {
        /* Switch: '<S4>/Switch' */
        mcb_pmsm_foc_hall_f28379d_B.Switch_l =
          mcb_pmsm_foc_hall_f28379d_B.eCAP_c[1];
      }

      /* End of Switch: '<S4>/Switch' */

      /* DataStoreWrite: '<S4>/Data Store Write3' */
      mcb_pmsm_foc_hall_f28379d_DWork.GlobalSpeedCount =
        mcb_pmsm_foc_hall_f28379d_B.Switch_l;

      /* DataStoreWrite: '<S4>/Data Store Write4' */
      mcb_pmsm_foc_hall_f28379d_DWork.GlobalHallState =
        mcb_pmsm_foc_hall_f28379d_B.BitwiseOperator2_m;

      /* End of Outputs for S-Function (HardwareInterrupt_sfun): '<S288>/Hardware Interrupt' */
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

/* Hardware Interrupt Block: '<S290>/Hardware Interrupt' */
interrupt void ECAP3_INT(void)
{
  /* Event: Default Event */
  if (1 == runModel) {
    {
      /* S-Function (HardwareInterrupt_sfun): '<S290>/Hardware Interrupt' */

      /* Output and update for function-call system: '<Root>/Hall Sensor C' */

      /* DataStoreRead: '<S5>/Data Store Read' */
      mcb_pmsm_foc_hall_f28379d_B.DataStoreRead =
        mcb_pmsm_foc_hall_f28379d_DWork.GlobalHallState;

      /* S-Function (memorycopy): '<S357>/Read GPIO DAT register' */
      {
        uint32_T *memindsrc8 = (uint32_T *) (&GpioDataRegs.GPBDAT.all);
        uint32_T *meminddst8 = (uint32_T *)
          (&mcb_pmsm_foc_hall_f28379d_B.ReadGPIODATregister);
        *(uint32_T *) (meminddst8) = *(uint32_T *) (memindsrc8);
      }

      /* S-Function (sfix_bitop): '<S357>/Hall_C' */
      mcb_pmsm_foc_hall_f28379d_B.Hall_C =
        mcb_pmsm_foc_hall_f28379d_B.ReadGPIODATregister & 33554432UL;

      /* ArithShift: '<S357>/Shift Arithmetic' incorporates:
       *  S-Function (sfix_bitop): '<S357>/Hall_C'
       */
      mcb_pmsm_foc_hall_f28379d_B.ShiftArithmetic =
        mcb_pmsm_foc_hall_f28379d_B.Hall_C >> 23U;

      /* S-Function (sfix_bitop): '<S357>/Hall_B' */
      mcb_pmsm_foc_hall_f28379d_B.Hall_B =
        mcb_pmsm_foc_hall_f28379d_B.ReadGPIODATregister & 8388608UL;

      /* ArithShift: '<S357>/Shift Arithmetic1' incorporates:
       *  S-Function (sfix_bitop): '<S357>/Hall_B'
       */
      mcb_pmsm_foc_hall_f28379d_B.ShiftArithmetic1 =
        mcb_pmsm_foc_hall_f28379d_B.Hall_B >> 22U;

      /* S-Function (sfix_bitop): '<S357>/Hall_A' */
      mcb_pmsm_foc_hall_f28379d_B.Hall_A =
        mcb_pmsm_foc_hall_f28379d_B.ReadGPIODATregister & 4194304UL;

      /* ArithShift: '<S357>/Shift Arithmetic2' incorporates:
       *  S-Function (sfix_bitop): '<S357>/Hall_A'
       */
      mcb_pmsm_foc_hall_f28379d_B.ShiftArithmetic2 =
        mcb_pmsm_foc_hall_f28379d_B.Hall_A >> 22U;

      /* S-Function (sfix_bitop): '<S357>/Bitwise Operator2' */
      mcb_pmsm_foc_hall_f28379d_B.BitwiseOperator2 = (uint32_T)((int16_T)
        mcb_pmsm_foc_hall_f28379d_B.ShiftArithmetic | (int16_T)
        mcb_pmsm_foc_hall_f28379d_B.ShiftArithmetic1 | (int16_T)
        mcb_pmsm_foc_hall_f28379d_B.ShiftArithmetic2);

      /* DataTypeConversion: '<S338>/Data Type Conversion1' */
      mcb_pmsm_foc_hall_f28379d_B.DataTypeConversion1_o = (uint16_T)
        mcb_pmsm_foc_hall_f28379d_B.BitwiseOperator2;

      /* DataTypeConversion: '<S338>/Data Type Conversion2' */
      mcb_pmsm_foc_hall_f28379d_B.DataTypeConversion2_p = (uint16_T)
        mcb_pmsm_foc_hall_f28379d_B.DataStoreRead;

      /* DataStoreRead: '<S5>/Data Store Read1' */
      mcb_pmsm_foc_hall_f28379d_B.DataStoreRead1_k =
        mcb_pmsm_foc_hall_f28379d_DWork.GlobalDirection;

      /* SwitchCase: '<S338>/Detects if the halls reading is valid' */
      switch ((int32_T)mcb_pmsm_foc_hall_f28379d_B.DataTypeConversion1_o) {
       case 5L:
       case 4L:
       case 6L:
       case 2L:
       case 3L:
       case 1L:
        /* Outputs for IfAction SubSystem: '<S343>/Valid Halls' incorporates:
         *  ActionPort: '<S345>/Action Port'
         */
        mcb_pmsm_foc_hal_ValidHalls
          (mcb_pmsm_foc_hall_f28379d_B.DataTypeConversion1_o,
           mcb_pmsm_foc_hall_f28379d_B.DataTypeConversion2_p,
           mcb_pmsm_foc_hall_f28379d_B.DataStoreRead1_k,
           &mcb_pmsm_foc_hall_f28379d_B.Merge3,
           &mcb_pmsm_foc_hall_f28379d_B.Merge1_k,
           &mcb_pmsm_foc_hall_f28379d_B.Merge_pc,
           &mcb_pmsm_foc_hall_f28379d_B.ValidHalls_hi);

        /* End of Outputs for SubSystem: '<S343>/Valid Halls' */
        break;

       default:
        /* Outputs for IfAction SubSystem: '<S343>/Bad hall (glitch or wrong connection)' incorporates:
         *  ActionPort: '<S344>/Action Port'
         */
        Badhallglitchorwrongconnect(mcb_pmsm_foc_hall_f28379d_B.DataStoreRead1_k,
          &mcb_pmsm_foc_hall_f28379d_B.Merge_pc,
          &mcb_pmsm_foc_hall_f28379d_B.Merge1_k,
          &mcb_pmsm_foc_hall_f28379d_B.Merge3);

        /* End of Outputs for SubSystem: '<S343>/Bad hall (glitch or wrong connection)' */
        break;
      }

      /* End of SwitchCase: '<S338>/Detects if the halls reading is valid' */

      /* DataTypeConversion: '<S343>/Data Type Conversion' */
      mcb_pmsm_foc_hall_f28379d_B.DataTypeConversion_n =
        mcb_pmsm_foc_hall_f28379d_B.Merge3;

      /* DataStoreWrite: '<S5>/Data Store Write' */
      mcb_pmsm_foc_hall_f28379d_DWork.GlobalSpeedValidity =
        mcb_pmsm_foc_hall_f28379d_B.DataTypeConversion_n;

      /* DataStoreWrite: '<S5>/Data Store Write1' */
      mcb_pmsm_foc_hall_f28379d_DWork.GlobalDirection =
        mcb_pmsm_foc_hall_f28379d_B.Merge1_k;

      /* DataStoreWrite: '<S5>/Data Store Write2' incorporates:
       *  Constant: '<S338>/Constant'
       */
      mcb_pmsm_foc_hall_f28379d_DWork.HallStateChangeFlag = 1U;

      /* S-Function (c280xcap): '<S358>/eCAP' */
      mcb_pmsm_foc_hall_f28379d_B.eCAP[0] = ECap3Regs.CAP1;
      mcb_pmsm_foc_hall_f28379d_B.eCAP[1] = ECap3Regs.CAP2;

      /* If: '<S337>/If' */
      if (((uint16_T)mcb_pmsm_foc_hall_f28379d_B.BitwiseOperator2 == 5U) ||
          ((uint16_T)mcb_pmsm_foc_hall_f28379d_B.BitwiseOperator2 == 6U)) {
        /* Outputs for IfAction SubSystem: '<S337>/Output 1' incorporates:
         *  ActionPort: '<S342>/Action Port'
         */
        mcb_pmsm_foc_hall_f_Output1(&mcb_pmsm_foc_hall_f28379d_B.Merge_pt);

        /* End of Outputs for SubSystem: '<S337>/Output 1' */
      } else {
        /* Outputs for IfAction SubSystem: '<S337>/Output 0' incorporates:
         *  ActionPort: '<S341>/Action Port'
         */
        mcb_pmsm_foc_hall_f_Output0(&mcb_pmsm_foc_hall_f28379d_B.Merge_pt);

        /* End of Outputs for SubSystem: '<S337>/Output 0' */
      }

      /* End of If: '<S337>/If' */

      /* Switch: '<S5>/Switch' */
      if (mcb_pmsm_foc_hall_f28379d_B.Merge_pt) {
        /* Switch: '<S5>/Switch' */
        mcb_pmsm_foc_hall_f28379d_B.Switch_e = mcb_pmsm_foc_hall_f28379d_B.eCAP
          [0];
      } else {
        /* Switch: '<S5>/Switch' */
        mcb_pmsm_foc_hall_f28379d_B.Switch_e = mcb_pmsm_foc_hall_f28379d_B.eCAP
          [1];
      }

      /* End of Switch: '<S5>/Switch' */

      /* DataStoreWrite: '<S5>/Data Store Write3' */
      mcb_pmsm_foc_hall_f28379d_DWork.GlobalSpeedCount =
        mcb_pmsm_foc_hall_f28379d_B.Switch_e;

      /* DataStoreWrite: '<S5>/Data Store Write4' */
      mcb_pmsm_foc_hall_f28379d_DWork.GlobalHallState =
        mcb_pmsm_foc_hall_f28379d_B.BitwiseOperator2;

      /* End of Outputs for S-Function (HardwareInterrupt_sfun): '<S290>/Hardware Interrupt' */
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

/* Hardware Interrupt Block: '<S292>/Hardware Interrupt' */
interrupt void SCIA_RX_INT(void)
{
  /* Event: Default Event */
  if (1 == runModel) {
    {
      /* S-Function (HardwareInterrupt_sfun): '<S292>/Hardware Interrupt' */

      /* Output and update for function-call system: '<Root>/Serial Receive' */

      /* S-Function (c28xsci_rx): '<S379>/SCI Receive' */
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

      /* DataTypeConversion: '<S377>/Data Type Conversion2' */
      mcb_pmsm_foc_hall_f28379d_B.DataTypeConversion2 = (uint16_T)
        mcb_pmsm_foc_hall_f28379d_B.SCIReceive[1];

      /* S-Function (sfix_bitop): '<S376>/Bitwise Operator' */
      mcb_pmsm_foc_hall_f28379d_B.BitwiseOperator =
        mcb_pmsm_foc_hall_f28379d_B.DataTypeConversion2 & 1U;

      /* DataTypeConversion: '<S376>/Data Type Conversion3' */
      mcb_pmsm_foc_hall_f28379d_B.DataTypeConversion3 =
        (mcb_pmsm_foc_hall_f28379d_B.BitwiseOperator != 0U);

      /* DataStoreWrite: '<S9>/Data Store Write' */
      mcb_pmsm_foc_hall_f28379d_DWork.Enable =
        mcb_pmsm_foc_hall_f28379d_B.DataTypeConversion3;

      /* DataStoreWrite: '<S9>/Data Store Write1' */
      mcb_pmsm_foc_hall_f28379d_DWork.Speed_ref =
        mcb_pmsm_foc_hall_f28379d_B.SCIReceive[0];

      /* S-Function (sfix_bitop): '<S376>/Bitwise Operator1' */
      mcb_pmsm_foc_hall_f28379d_B.BitwiseOperator1 =
        mcb_pmsm_foc_hall_f28379d_B.DataTypeConversion2 & 240U;

      /* ArithShift: '<S376>/Shift Arithmetic1' incorporates:
       *  S-Function (sfix_bitop): '<S376>/Bitwise Operator1'
       */
      mcb_pmsm_foc_hall_f28379d_B.ShiftArithmetic1_d =
        mcb_pmsm_foc_hall_f28379d_B.BitwiseOperator1 >> 4U;

      /* DataStoreWrite: '<S9>/Data Store Write2' */
      mcb_pmsm_foc_hall_f28379d_DWork.Debug_signals =
        mcb_pmsm_foc_hall_f28379d_B.ShiftArithmetic1_d;

      /* End of Outputs for S-Function (HardwareInterrupt_sfun): '<S292>/Hardware Interrupt' */

      /* RateTransition: '<Root>/RT6' */
      mcb_pmsm_foc_hall_f28379d_DWork.RT6_Buffer[mcb_pmsm_foc_hall_f28379d_DWork.RT6_ActiveBufIdx
        == 0] = mcb_pmsm_foc_hall_f28379d_B.SCIReceive[0];
      mcb_pmsm_foc_hall_f28379d_DWork.RT6_ActiveBufIdx =
        (mcb_pmsm_foc_hall_f28379d_DWork.RT6_ActiveBufIdx == 0);
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
