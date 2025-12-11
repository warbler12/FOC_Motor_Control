/*
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * File: mcb_pmsm_foc_I2C_f28379d_origin.c
 *
 * Code generated for Simulink model 'mcb_pmsm_foc_I2C_f28379d_origin'.
 *
 * Model version                  : 7.10
 * Simulink Coder version         : 23.2 (R2023b) 01-Aug-2023
 * C/C++ source code generated on : Tue Dec  9 21:42:48 2025
 *
 * Target selection: ert.tlc
 * Embedded hardware selection: Texas Instruments->C2000
 * Code generation objectives: Unspecified
 * Validation result: Not run
 */

#include "mcb_pmsm_foc_I2C_f28379d_origin.h"
#include "mcb_pmsm_foc_I2C_f28379d_origin_private.h"
#include "rtwtypes.h"
#include <math.h>
#include "rt_nonfinite.h"
#include <string.h>

/* Block signals (default storage) */
B_mcb_pmsm_foc_I2C_f28379d_or_T mcb_pmsm_foc_I2C_f28379d_orig_B;

/* Block states (default storage) */
DW_mcb_pmsm_foc_I2C_f28379d_o_T mcb_pmsm_foc_I2C_f28379d_ori_DW;

/* Real-time model */
static RT_MODEL_mcb_pmsm_foc_I2C_f28_T mcb_pmsm_foc_I2C_f28379d_ori_M_;
RT_MODEL_mcb_pmsm_foc_I2C_f28_T *const mcb_pmsm_foc_I2C_f28379d_ori_M =
  &mcb_pmsm_foc_I2C_f28379d_ori_M_;
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
void mcb_pmsm_foc_I2C_f28379d_origin_SetEventsForThisBaseStep(boolean_T
  *eventFlags)
{
  /* Task runs when its counter is zero, computed via rtmStepTask macro */
  eventFlags[1] = ((boolean_T)rtmStepTask(mcb_pmsm_foc_I2C_f28379d_ori_M, 1));
  eventFlags[2] = ((boolean_T)rtmStepTask(mcb_pmsm_foc_I2C_f28379d_ori_M, 2));
  eventFlags[3] = ((boolean_T)rtmStepTask(mcb_pmsm_foc_I2C_f28379d_ori_M, 3));
  eventFlags[4] = ((boolean_T)rtmStepTask(mcb_pmsm_foc_I2C_f28379d_ori_M, 4));
  eventFlags[5] = ((boolean_T)rtmStepTask(mcb_pmsm_foc_I2C_f28379d_ori_M, 5));
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
  (mcb_pmsm_foc_I2C_f28379d_ori_M->Timing.TaskCounters.TID[1])++;
  if ((mcb_pmsm_foc_I2C_f28379d_ori_M->Timing.TaskCounters.TID[1]) > 1) {/* Sample time: [0.001s, 0.0s] */
    mcb_pmsm_foc_I2C_f28379d_ori_M->Timing.TaskCounters.TID[1] = 0;
  }

  (mcb_pmsm_foc_I2C_f28379d_ori_M->Timing.TaskCounters.TID[2])++;
  if ((mcb_pmsm_foc_I2C_f28379d_ori_M->Timing.TaskCounters.TID[2]) > 29) {/* Sample time: [0.015s, 0.0s] */
    mcb_pmsm_foc_I2C_f28379d_ori_M->Timing.TaskCounters.TID[2] = 0;
  }

  (mcb_pmsm_foc_I2C_f28379d_ori_M->Timing.TaskCounters.TID[3])++;
  if ((mcb_pmsm_foc_I2C_f28379d_ori_M->Timing.TaskCounters.TID[3]) > 199) {/* Sample time: [0.1s, 0.0s] */
    mcb_pmsm_foc_I2C_f28379d_ori_M->Timing.TaskCounters.TID[3] = 0;
  }

  (mcb_pmsm_foc_I2C_f28379d_ori_M->Timing.TaskCounters.TID[4])++;
  if ((mcb_pmsm_foc_I2C_f28379d_ori_M->Timing.TaskCounters.TID[4]) > 299) {/* Sample time: [0.15s, 0.0s] */
    mcb_pmsm_foc_I2C_f28379d_ori_M->Timing.TaskCounters.TID[4] = 0;
  }

  (mcb_pmsm_foc_I2C_f28379d_ori_M->Timing.TaskCounters.TID[5])++;
  if ((mcb_pmsm_foc_I2C_f28379d_ori_M->Timing.TaskCounters.TID[5]) > 999) {/* Sample time: [0.5s, 0.0s] */
    mcb_pmsm_foc_I2C_f28379d_ori_M->Timing.TaskCounters.TID[5] = 0;
  }
}

/* Output and update for function-call system: '<S13>/Delay 1ms' */
void mcb_pmsm_foc_I2C_f_Delay1ms(void)
{
  /* user code (Output function Body) */

  /* System '<S13>/Delay 1ms' */
  DELAY_US(1000);

  /*Delay of 1 ms*/
}

/*
 * Output and update for action system:
 *    '<S159>/If Action Subsystem'
 *    '<S168>/If Action Subsystem'
 */
void mcb_pmsm__IfActionSubsystem(real32_T rtu_In1, real32_T *rty_Out1,
  B_IfActionSubsystem_mcb_pmsm__T *localB)
{
  /* DataTypeConversion: '<S161>/Convert_uint16' */
  localB->Convert_uint16 = (int16_T)(real32_T)floor(rtu_In1);

  /* DataTypeConversion: '<S161>/Convert_back' */
  localB->Convert_back = localB->Convert_uint16;

  /* Sum: '<S161>/Sum' */
  *rty_Out1 = rtu_In1 - localB->Convert_back;
}

/*
 * Output and update for action system:
 *    '<S159>/If Action Subsystem1'
 *    '<S168>/If Action Subsystem1'
 */
void mcb_pmsm_IfActionSubsystem1(real32_T rtu_In1, real32_T *rty_Out1,
  B_IfActionSubsystem1_mcb_pmsm_T *localB)
{
  /* DataTypeConversion: '<S162>/Convert_uint16' */
  localB->Convert_uint16 = (int16_T)rtu_In1;

  /* DataTypeConversion: '<S162>/Convert_back' */
  localB->Convert_back = localB->Convert_uint16;

  /* Sum: '<S162>/Sum' */
  *rty_Out1 = rtu_In1 - localB->Convert_back;
}

/* System initialize for function-call system: '<Root>/Current Control' */
void mcb_pms_CurrentControl_Init(void)
{
  /* Start for S-Function (c2802xadc): '<S180>/ADC_C_IN2' */
  if (MW_adcCInitFlag == 0U) {
    InitAdcC();
    MW_adcCInitFlag = 1U;
  }

  config_ADCC_SOC0 ();

  /* Start for S-Function (c2802xadc): '<S180>/ADC_B_IN2' */
  if (MW_adcBInitFlag == 0U) {
    InitAdcB();
    MW_adcBInitFlag = 1U;
  }

  config_ADCB_SOC0 ();

  /* Start for Constant: '<S39>/Kp1' */
  mcb_pmsm_foc_I2C_f28379d_orig_B.Kp1 = 0.0F;

  /* Start for Constant: '<S38>/Ki1' */
  mcb_pmsm_foc_I2C_f28379d_orig_B.Ki1 = 0.0F;

  /* Start for S-Function (c280xgpio_do): '<S204>/DRV830x Enable' */
  EALLOW;
  GpioCtrlRegs.GPDMUX2.all &= 0xFCFFFFFFU;
  GpioCtrlRegs.GPDDIR.all |= 0x10000000U;
  EDIS;

  /* Start for S-Function (c2802xpwm): '<S204>/ePWM1' */

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

  /* Start for S-Function (c2802xpwm): '<S204>/ePWM2' */

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

  /* Start for S-Function (c2802xpwm): '<S204>/ePWM3' */

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

  /* InitializeConditions for S-Function (sdspunwrap2): '<S181>/Unwrap' */
  mcb_pmsm_foc_I2C_f28379d_ori_DW.Unwrap_FirstStep = true;
  mcb_pmsm_foc_I2C_f28379d_ori_DW.Unwrap_Cumsum = 0.0F;

  /* InitializeConditions for Delay: '<S185>/Delay' */
  mcb_pmsm_foc_I2C_f28379d_ori_DW.CircBufIdx = 0U;

  /* InitializeConditions for DiscreteIntegrator: '<S139>/Integrator' */
  mcb_pmsm_foc_I2C_f28379d_ori_DW.Integrator_DSTATE = 0.0F;
  mcb_pmsm_foc_I2C_f28379d_ori_DW.Integrator_PrevResetState = 0;

  /* InitializeConditions for DiscreteIntegrator: '<S88>/Integrator' */
  mcb_pmsm_foc_I2C_f28379d_ori_DW.Integrator_DSTATE_o = 0.0F;
  mcb_pmsm_foc_I2C_f28379d_ori_DW.Integrator_PrevResetState_k = 0;
}

/* System reset for function-call system: '<Root>/Current Control' */
void mcb_pm_CurrentControl_Reset(void)
{
  /* InitializeConditions for S-Function (sdspunwrap2): '<S181>/Unwrap' */
  mcb_pmsm_foc_I2C_f28379d_ori_DW.Unwrap_FirstStep = true;
  mcb_pmsm_foc_I2C_f28379d_ori_DW.Unwrap_Cumsum = 0.0F;

  /* InitializeConditions for Delay: '<S185>/Delay' */
  mcb_pmsm_foc_I2C_f28379d_ori_DW.CircBufIdx = 0U;

  /* InitializeConditions for DiscreteIntegrator: '<S139>/Integrator' */
  mcb_pmsm_foc_I2C_f28379d_ori_DW.Integrator_DSTATE =
    mcb_pmsm_foc_I2C_f28379d_orig_B.Kp1;
  mcb_pmsm_foc_I2C_f28379d_ori_DW.Integrator_PrevResetState = 0;

  /* InitializeConditions for DiscreteIntegrator: '<S88>/Integrator' */
  mcb_pmsm_foc_I2C_f28379d_ori_DW.Integrator_DSTATE_o =
    mcb_pmsm_foc_I2C_f28379d_orig_B.Ki1;
  mcb_pmsm_foc_I2C_f28379d_ori_DW.Integrator_PrevResetState_k = 0;
}

/* Output and update for function-call system: '<Root>/Current Control' */
#pragma CODE_SECTION (mcb_pmsm_foc_CurrentControl, "ramfuncs")

void mcb_pmsm_foc_CurrentControl(void)
{
  real32_T Bias;
  real32_T dpTmp;
  real32_T uPrev;
  uint32_T Sum;
  int16_T s209_iter;
  uint16_T Scale_to_PWM_Counter_PRD;

  /* UnitDelay: '<S211>/Output' */
  mcb_pmsm_foc_I2C_f28379d_orig_B.Output =
    mcb_pmsm_foc_I2C_f28379d_ori_DW.Output_DSTATE;

  /* DataStoreRead: '<S4>/Data Store Read2' */
  mcb_pmsm_foc_I2C_f28379d_orig_B.DataStoreRead2 =
    mcb_pmsm_foc_I2C_f28379d_ori_DW.SpeedRef;

  /* S-Function (sdspunwrap2): '<S181>/Unwrap' */
  if (mcb_pmsm_foc_I2C_f28379d_ori_DW.Unwrap_FirstStep) {
    mcb_pmsm_foc_I2C_f28379d_ori_DW.Unwrap_Prev =
      mcb_pmsm_foc_I2C_f28379d_orig_B.RT4;
    mcb_pmsm_foc_I2C_f28379d_ori_DW.Unwrap_FirstStep = false;
  }

  Bias = mcb_pmsm_foc_I2C_f28379d_ori_DW.Unwrap_Cumsum;
  uPrev = mcb_pmsm_foc_I2C_f28379d_ori_DW.Unwrap_Prev;
  uPrev = mcb_pmsm_foc_I2C_f28379d_orig_B.RT4 - uPrev;
  dpTmp = (uPrev + 3.14159274F) / 6.28318548F;
  dpTmp = (real32_T)floor(dpTmp);
  dpTmp = uPrev - 6.28318548F * dpTmp;
  if ((dpTmp == -3.14159274F) && (uPrev > 0.0F)) {
    dpTmp = 3.14159274F;
  }

  uPrev = dpTmp - uPrev;
  if (fabsf(uPrev) > 0.5F) {
    Bias += uPrev;
  }

  uPrev = mcb_pmsm_foc_I2C_f28379d_orig_B.RT4;

  /* S-Function (sdspunwrap2): '<S181>/Unwrap' */
  mcb_pmsm_foc_I2C_f28379d_orig_B.Unwrap = mcb_pmsm_foc_I2C_f28379d_orig_B.RT4 +
    Bias;

  /* S-Function (sdspunwrap2): '<S181>/Unwrap' */
  mcb_pmsm_foc_I2C_f28379d_ori_DW.Unwrap_Prev = uPrev;
  mcb_pmsm_foc_I2C_f28379d_ori_DW.Unwrap_Cumsum = Bias;

  /* Gain: '<S185>/PositionToCount' */
  mcb_pmsm_foc_I2C_f28379d_orig_B.PositionToCount = (uint32_T)(4.2949673E+9F *
    mcb_pmsm_foc_I2C_f28379d_orig_B.Unwrap);

  /* Delay: '<S185>/Delay' */
  mcb_pmsm_foc_I2C_f28379d_orig_B.Delay =
    mcb_pmsm_foc_I2C_f28379d_ori_DW.Delay_DSTATE_p[mcb_pmsm_foc_I2C_f28379d_ori_DW.CircBufIdx];

  /* Sum: '<S185>/SpeedCount' */
  mcb_pmsm_foc_I2C_f28379d_orig_B.SpeedCount = (int32_T)
    mcb_pmsm_foc_I2C_f28379d_orig_B.PositionToCount - (int32_T)
    mcb_pmsm_foc_I2C_f28379d_orig_B.Delay;

  /* DataTypeConversion: '<S201>/DTC' */
  mcb_pmsm_foc_I2C_f28379d_orig_B.DTC = (real32_T)
    mcb_pmsm_foc_I2C_f28379d_orig_B.SpeedCount;

  /* Gain: '<S185>/SpeedGain' */
  mcb_pmsm_foc_I2C_f28379d_orig_B.SpeedGain = 6.39059428E-9F *
    mcb_pmsm_foc_I2C_f28379d_orig_B.DTC;

  /* Product: '<S191>/Product' incorporates:
   *  Constant: '<S191>/Filter_Constant'
   */
  mcb_pmsm_foc_I2C_f28379d_orig_B.Product =
    mcb_pmsm_foc_I2C_f28379d_orig_B.SpeedGain * 0.001F;

  /* UnitDelay: '<S191>/Unit Delay' */
  mcb_pmsm_foc_I2C_f28379d_orig_B.UnitDelay =
    mcb_pmsm_foc_I2C_f28379d_ori_DW.UnitDelay_DSTATE;

  /* Product: '<S191>/Product1' incorporates:
   *  Constant: '<S191>/One'
   */
  mcb_pmsm_foc_I2C_f28379d_orig_B.Product1 = 0.999F *
    mcb_pmsm_foc_I2C_f28379d_orig_B.UnitDelay;

  /* Sum: '<S191>/Add1' */
  mcb_pmsm_foc_I2C_f28379d_orig_B.Add1 = mcb_pmsm_foc_I2C_f28379d_orig_B.Product
    + mcb_pmsm_foc_I2C_f28379d_orig_B.Product1;

  /* DataStoreRead: '<S182>/Data Store Read1' */
  mcb_pmsm_foc_I2C_f28379d_orig_B.DataStoreRead1_o =
    mcb_pmsm_foc_I2C_f28379d_ori_DW.IaOffset;

  /* DataStoreRead: '<S182>/Data Store Read2' */
  mcb_pmsm_foc_I2C_f28379d_orig_B.DataStoreRead2_j =
    mcb_pmsm_foc_I2C_f28379d_ori_DW.IbOffset;

  /* S-Function (c2802xadc): '<S180>/ADC_C_IN2' */
  {
    /*  Internal Reference Voltage : Fixed scale 0 to 3.3 V range.  */
    /*  External Reference Voltage : Allowable ranges of VREFHI(ADCINA0) = 3.3 and VREFLO(tied to ground) = 0  */
    mcb_pmsm_foc_I2C_f28379d_orig_B.ADC_C_IN2 = (AdccResultRegs.ADCRESULT0);
  }

  /* S-Function (c2802xadc): '<S180>/ADC_B_IN2' */
  {
    /*  Internal Reference Voltage : Fixed scale 0 to 3.3 V range.  */
    /*  External Reference Voltage : Allowable ranges of VREFHI(ADCINA0) = 3.3 and VREFLO(tied to ground) = 0  */
    mcb_pmsm_foc_I2C_f28379d_orig_B.ADC_B_IN2 = (AdcbResultRegs.ADCRESULT0);
  }

  /* DataTypeConversion: '<S182>/Data Type Conversion' */
  mcb_pmsm_foc_I2C_f28379d_orig_B.DataTypeConversion_c[0] =
    mcb_pmsm_foc_I2C_f28379d_orig_B.ADC_C_IN2;
  mcb_pmsm_foc_I2C_f28379d_orig_B.DataTypeConversion_c[1] =
    mcb_pmsm_foc_I2C_f28379d_orig_B.ADC_B_IN2;

  /* Sum: '<S182>/Add' */
  mcb_pmsm_foc_I2C_f28379d_orig_B.Add_e[0] =
    mcb_pmsm_foc_I2C_f28379d_orig_B.DataTypeConversion_c[0] -
    mcb_pmsm_foc_I2C_f28379d_orig_B.DataStoreRead1_o;
  mcb_pmsm_foc_I2C_f28379d_orig_B.Add_e[1] =
    mcb_pmsm_foc_I2C_f28379d_orig_B.DataTypeConversion_c[1] -
    mcb_pmsm_foc_I2C_f28379d_orig_B.DataStoreRead2_j;

  /* Gain: '<S203>/Get ADC Voltage' */
  Bias = 0.000732600747F * (real32_T)mcb_pmsm_foc_I2C_f28379d_orig_B.Add_e[0];
  mcb_pmsm_foc_I2C_f28379d_orig_B.GetADCVoltage[0] = Bias;

  /* Gain: '<S203>/Get Currents' */
  Bias *= 3.57142854F;
  mcb_pmsm_foc_I2C_f28379d_orig_B.GetCurrents[0] = Bias;

  /* Gain: '<S203>/PU_Conversion' */
  mcb_pmsm_foc_I2C_f28379d_orig_B.PU_Conversion[0] = 0.186666667F * Bias;

  /* Gain: '<S203>/Get ADC Voltage' */
  Bias = 0.000732600747F * (real32_T)mcb_pmsm_foc_I2C_f28379d_orig_B.Add_e[1];
  mcb_pmsm_foc_I2C_f28379d_orig_B.GetADCVoltage[1] = Bias;

  /* Gain: '<S203>/Get Currents' */
  Bias *= 3.57142854F;
  mcb_pmsm_foc_I2C_f28379d_orig_B.GetCurrents[1] = Bias;

  /* Gain: '<S203>/PU_Conversion' */
  mcb_pmsm_foc_I2C_f28379d_orig_B.PU_Conversion[1] = 0.186666667F * Bias;

  /* Outputs for Atomic SubSystem: '<S35>/Two phase CRL wrap' */
  /* Sum: '<S36>/a_plus_2b' */
  mcb_pmsm_foc_I2C_f28379d_orig_B.a_plus_2b =
    (mcb_pmsm_foc_I2C_f28379d_orig_B.PU_Conversion[0] +
     mcb_pmsm_foc_I2C_f28379d_orig_B.PU_Conversion[1]) +
    mcb_pmsm_foc_I2C_f28379d_orig_B.PU_Conversion[1];

  /* Gain: '<S36>/one_by_sqrt3' */
  mcb_pmsm_foc_I2C_f28379d_orig_B.one_by_sqrt3 = 0.577350259F *
    mcb_pmsm_foc_I2C_f28379d_orig_B.a_plus_2b;

  /* AlgorithmDescriptorDelegate generated from: '<S36>/a16' */
  mcb_pmsm_foc_I2C_f28379d_orig_B.algDD_o1_e =
    mcb_pmsm_foc_I2C_f28379d_orig_B.PU_Conversion[0];

  /* AlgorithmDescriptorDelegate generated from: '<S36>/a16' */
  mcb_pmsm_foc_I2C_f28379d_orig_B.algDD_o2_h =
    mcb_pmsm_foc_I2C_f28379d_orig_B.one_by_sqrt3;

  /* End of Outputs for SubSystem: '<S35>/Two phase CRL wrap' */

  /* Switch: '<S193>/Switch' incorporates:
   *  Constant: '<S193>/Constant1'
   */
  mcb_pmsm_foc_I2C_f28379d_orig_B.Switch = 0.76F;

  /* If: '<S194>/If' */
  if (mcb_pmsm_foc_I2C_f28379d_orig_B.RT4 <= 0.76F) {
    /* Outputs for IfAction SubSystem: '<S194>/If Action Subsystem' incorporates:
     *  ActionPort: '<S196>/Action Port'
     */
    /* Merge: '<S194>/Merge' incorporates:
     *  Constant: '<S196>/Constant'
     *  Sum: '<S196>/Add'
     */
    mcb_pmsm_foc_I2C_f28379d_orig_B.Merge = (mcb_pmsm_foc_I2C_f28379d_orig_B.RT4
      + 1.0F) - 0.76F;

    /* End of Outputs for SubSystem: '<S194>/If Action Subsystem' */
  } else {
    /* Outputs for IfAction SubSystem: '<S194>/If Action Subsystem1' incorporates:
     *  ActionPort: '<S197>/Action Port'
     */
    /* Merge: '<S194>/Merge' incorporates:
     *  Sum: '<S197>/Add'
     */
    mcb_pmsm_foc_I2C_f28379d_orig_B.Merge = mcb_pmsm_foc_I2C_f28379d_orig_B.RT4
      - 0.76F;

    /* End of Outputs for SubSystem: '<S194>/If Action Subsystem1' */
  }

  /* End of If: '<S194>/If' */

  /* Gain: '<S199>/Number of pole pairs' */
  mcb_pmsm_foc_I2C_f28379d_orig_B.Numberofpolepairs = 7.0F *
    mcb_pmsm_foc_I2C_f28379d_orig_B.Merge;

  /* Rounding: '<S195>/Floor' */
  mcb_pmsm_foc_I2C_f28379d_orig_B.Floor = (real32_T)floor
    (mcb_pmsm_foc_I2C_f28379d_orig_B.Numberofpolepairs);

  /* Sum: '<S195>/Add' */
  mcb_pmsm_foc_I2C_f28379d_orig_B.Add_c =
    mcb_pmsm_foc_I2C_f28379d_orig_B.Numberofpolepairs -
    mcb_pmsm_foc_I2C_f28379d_orig_B.Floor;

  /* RelationalOperator: '<S169>/Compare' incorporates:
   *  Constant: '<S169>/Constant'
   */
  mcb_pmsm_foc_I2C_f28379d_orig_B.Compare =
    (mcb_pmsm_foc_I2C_f28379d_orig_B.Add_c < 0.0F);

  /* DataTypeConversion: '<S168>/Data Type Conversion' */
  mcb_pmsm_foc_I2C_f28379d_orig_B.DataTypeConversion_i =
    mcb_pmsm_foc_I2C_f28379d_orig_B.Compare;

  /* If: '<S168>/If' */
  if (mcb_pmsm_foc_I2C_f28379d_orig_B.DataTypeConversion_i > 0U) {
    /* Outputs for IfAction SubSystem: '<S168>/If Action Subsystem' incorporates:
     *  ActionPort: '<S170>/Action Port'
     */
    mcb_pmsm__IfActionSubsystem(mcb_pmsm_foc_I2C_f28379d_orig_B.Add_c,
      &mcb_pmsm_foc_I2C_f28379d_orig_B.Merge_o,
      &mcb_pmsm_foc_I2C_f28379d_orig_B.IfActionSubsystem_e);

    /* End of Outputs for SubSystem: '<S168>/If Action Subsystem' */
  } else {
    /* Outputs for IfAction SubSystem: '<S168>/If Action Subsystem1' incorporates:
     *  ActionPort: '<S171>/Action Port'
     */
    mcb_pmsm_IfActionSubsystem1(mcb_pmsm_foc_I2C_f28379d_orig_B.Add_c,
      &mcb_pmsm_foc_I2C_f28379d_orig_B.Merge_o,
      &mcb_pmsm_foc_I2C_f28379d_orig_B.IfActionSubsystem1_k);

    /* End of Outputs for SubSystem: '<S168>/If Action Subsystem1' */
  }

  /* End of If: '<S168>/If' */

  /* Gain: '<S166>/indexing' */
  mcb_pmsm_foc_I2C_f28379d_orig_B.indexing = 800.0F *
    mcb_pmsm_foc_I2C_f28379d_orig_B.Merge_o;

  /* DataTypeConversion: '<S166>/Get_Integer' */
  mcb_pmsm_foc_I2C_f28379d_orig_B.Get_Integer = (uint16_T)
    mcb_pmsm_foc_I2C_f28379d_orig_B.indexing;

  /* Sum: '<S166>/Sum' incorporates:
   *  Constant: '<S166>/offset'
   */
  Sum = mcb_pmsm_foc_I2C_f28379d_orig_B.Get_Integer + 1UL;
  mcb_pmsm_foc_I2C_f28379d_orig_B.Sum[0] = Sum;

  /* Selector: '<S166>/Lookup' incorporates:
   *  Constant: '<S166>/sine_table_values'
   */
  mcb_pmsm_foc_I2C_f28379d_orig_B.Lookup[0] =
    mcb_pmsm_foc_I2C_f28379d_ConstP.pooled11[(int16_T)Sum];

  /* Sum: '<S166>/Sum' */
  Sum = mcb_pmsm_foc_I2C_f28379d_orig_B.Get_Integer;
  mcb_pmsm_foc_I2C_f28379d_orig_B.Sum[1] = Sum;

  /* Selector: '<S166>/Lookup' incorporates:
   *  Constant: '<S166>/sine_table_values'
   */
  mcb_pmsm_foc_I2C_f28379d_orig_B.Lookup[1] =
    mcb_pmsm_foc_I2C_f28379d_ConstP.pooled11[(int16_T)Sum];

  /* Sum: '<S166>/Sum' incorporates:
   *  Constant: '<S166>/offset'
   */
  Sum = mcb_pmsm_foc_I2C_f28379d_orig_B.Get_Integer + 201UL;
  mcb_pmsm_foc_I2C_f28379d_orig_B.Sum[2] = Sum;

  /* Selector: '<S166>/Lookup' incorporates:
   *  Constant: '<S166>/sine_table_values'
   */
  mcb_pmsm_foc_I2C_f28379d_orig_B.Lookup[2] =
    mcb_pmsm_foc_I2C_f28379d_ConstP.pooled11[(int16_T)Sum];

  /* Sum: '<S166>/Sum' incorporates:
   *  Constant: '<S166>/offset'
   */
  Sum = mcb_pmsm_foc_I2C_f28379d_orig_B.Get_Integer + 200UL;
  mcb_pmsm_foc_I2C_f28379d_orig_B.Sum[3] = Sum;

  /* Selector: '<S166>/Lookup' incorporates:
   *  Constant: '<S166>/sine_table_values'
   */
  mcb_pmsm_foc_I2C_f28379d_orig_B.Lookup[3] =
    mcb_pmsm_foc_I2C_f28379d_ConstP.pooled11[(int16_T)Sum];

  /* Sum: '<S167>/Sum3' */
  mcb_pmsm_foc_I2C_f28379d_orig_B.Sum3 = mcb_pmsm_foc_I2C_f28379d_orig_B.Lookup
    [0] - mcb_pmsm_foc_I2C_f28379d_orig_B.Lookup[1];

  /* DataTypeConversion: '<S166>/Data Type Conversion1' */
  mcb_pmsm_foc_I2C_f28379d_orig_B.DataTypeConversion1 =
    mcb_pmsm_foc_I2C_f28379d_orig_B.Get_Integer;

  /* Sum: '<S166>/Sum2' */
  mcb_pmsm_foc_I2C_f28379d_orig_B.Sum2 =
    mcb_pmsm_foc_I2C_f28379d_orig_B.indexing -
    mcb_pmsm_foc_I2C_f28379d_orig_B.DataTypeConversion1;

  /* Product: '<S167>/Product' */
  mcb_pmsm_foc_I2C_f28379d_orig_B.Product_i =
    mcb_pmsm_foc_I2C_f28379d_orig_B.Sum3 * mcb_pmsm_foc_I2C_f28379d_orig_B.Sum2;

  /* Sum: '<S167>/Sum4' */
  mcb_pmsm_foc_I2C_f28379d_orig_B.Sum4 =
    mcb_pmsm_foc_I2C_f28379d_orig_B.Product_i +
    mcb_pmsm_foc_I2C_f28379d_orig_B.Lookup[1];

  /* Sum: '<S167>/Sum5' */
  mcb_pmsm_foc_I2C_f28379d_orig_B.Sum5 = mcb_pmsm_foc_I2C_f28379d_orig_B.Lookup
    [2] - mcb_pmsm_foc_I2C_f28379d_orig_B.Lookup[3];

  /* Product: '<S167>/Product1' */
  mcb_pmsm_foc_I2C_f28379d_orig_B.Product1_b =
    mcb_pmsm_foc_I2C_f28379d_orig_B.Sum5 * mcb_pmsm_foc_I2C_f28379d_orig_B.Sum2;

  /* Sum: '<S167>/Sum6' */
  mcb_pmsm_foc_I2C_f28379d_orig_B.Sum6 =
    mcb_pmsm_foc_I2C_f28379d_orig_B.Product1_b +
    mcb_pmsm_foc_I2C_f28379d_orig_B.Lookup[3];

  /* Outputs for Atomic SubSystem: '<S33>/Two inputs CRL' */
  /* Product: '<S165>/acos' */
  mcb_pmsm_foc_I2C_f28379d_orig_B.acos_b =
    mcb_pmsm_foc_I2C_f28379d_orig_B.algDD_o1_e *
    mcb_pmsm_foc_I2C_f28379d_orig_B.Sum6;

  /* Product: '<S165>/bsin' */
  mcb_pmsm_foc_I2C_f28379d_orig_B.bsin =
    mcb_pmsm_foc_I2C_f28379d_orig_B.algDD_o2_h *
    mcb_pmsm_foc_I2C_f28379d_orig_B.Sum4;

  /* Sum: '<S165>/sum_Ds' */
  mcb_pmsm_foc_I2C_f28379d_orig_B.sum_Ds =
    mcb_pmsm_foc_I2C_f28379d_orig_B.acos_b +
    mcb_pmsm_foc_I2C_f28379d_orig_B.bsin;

  /* Product: '<S165>/bcos' */
  mcb_pmsm_foc_I2C_f28379d_orig_B.bcos =
    mcb_pmsm_foc_I2C_f28379d_orig_B.algDD_o2_h *
    mcb_pmsm_foc_I2C_f28379d_orig_B.Sum6;

  /* Product: '<S165>/asin' */
  mcb_pmsm_foc_I2C_f28379d_orig_B.asin_o =
    mcb_pmsm_foc_I2C_f28379d_orig_B.algDD_o1_e *
    mcb_pmsm_foc_I2C_f28379d_orig_B.Sum4;

  /* Sum: '<S165>/sum_Qs' */
  mcb_pmsm_foc_I2C_f28379d_orig_B.sum_Qs = mcb_pmsm_foc_I2C_f28379d_orig_B.bcos
    - mcb_pmsm_foc_I2C_f28379d_orig_B.asin_o;

  /* Switch: '<S172>/Switch' */
  mcb_pmsm_foc_I2C_f28379d_orig_B.Switch_h[0] =
    mcb_pmsm_foc_I2C_f28379d_orig_B.sum_Ds;
  mcb_pmsm_foc_I2C_f28379d_orig_B.Switch_h[1] =
    mcb_pmsm_foc_I2C_f28379d_orig_B.sum_Qs;

  /* AlgorithmDescriptorDelegate generated from: '<S165>/a16' */
  mcb_pmsm_foc_I2C_f28379d_orig_B.algDD_o1 =
    mcb_pmsm_foc_I2C_f28379d_orig_B.Switch_h[0];

  /* AlgorithmDescriptorDelegate generated from: '<S165>/a16' */
  mcb_pmsm_foc_I2C_f28379d_orig_B.algDD_o2 =
    mcb_pmsm_foc_I2C_f28379d_orig_B.Switch_h[1];

  /* End of Outputs for SubSystem: '<S33>/Two inputs CRL' */

  /* DataStoreRead: '<S4>/Data Store Read1' */
  mcb_pmsm_foc_I2C_f28379d_orig_B.DataStoreRead1 =
    mcb_pmsm_foc_I2C_f28379d_ori_DW.PosRef;

  /* SignalConversion generated from: '<S23>/Selector' */
  mcb_pmsm_foc_I2C_f28379d_orig_B.TmpSignalConversionAtSelectorIn[0] =
    mcb_pmsm_foc_I2C_f28379d_orig_B.DataStoreRead2;
  mcb_pmsm_foc_I2C_f28379d_orig_B.TmpSignalConversionAtSelectorIn[1] =
    mcb_pmsm_foc_I2C_f28379d_orig_B.Add1;
  mcb_pmsm_foc_I2C_f28379d_orig_B.TmpSignalConversionAtSelectorIn[2] =
    mcb_pmsm_foc_I2C_f28379d_orig_B.PU_Conversion[0];
  mcb_pmsm_foc_I2C_f28379d_orig_B.TmpSignalConversionAtSelectorIn[3] =
    mcb_pmsm_foc_I2C_f28379d_orig_B.PU_Conversion[1];
  mcb_pmsm_foc_I2C_f28379d_orig_B.TmpSignalConversionAtSelectorIn[4] =
    mcb_pmsm_foc_I2C_f28379d_orig_B.RT2[0];
  mcb_pmsm_foc_I2C_f28379d_orig_B.TmpSignalConversionAtSelectorIn[5] =
    mcb_pmsm_foc_I2C_f28379d_orig_B.algDD_o1;
  mcb_pmsm_foc_I2C_f28379d_orig_B.TmpSignalConversionAtSelectorIn[6] =
    mcb_pmsm_foc_I2C_f28379d_orig_B.RT2[1];
  mcb_pmsm_foc_I2C_f28379d_orig_B.TmpSignalConversionAtSelectorIn[7] =
    mcb_pmsm_foc_I2C_f28379d_orig_B.algDD_o2;
  mcb_pmsm_foc_I2C_f28379d_orig_B.TmpSignalConversionAtSelectorIn[8] =
    mcb_pmsm_foc_I2C_f28379d_orig_B.Add_c;
  mcb_pmsm_foc_I2C_f28379d_orig_B.TmpSignalConversionAtSelectorIn[9] =
    mcb_pmsm_foc_I2C_f28379d_orig_B.DataStoreRead1;
  mcb_pmsm_foc_I2C_f28379d_orig_B.TmpSignalConversionAtSelectorIn[10] =
    mcb_pmsm_foc_I2C_f28379d_orig_B.RT4;

  /* DataStoreRead: '<S23>/Data Store Read' */
  mcb_pmsm_foc_I2C_f28379d_orig_B.DataStoreRead =
    mcb_pmsm_foc_I2C_f28379d_ori_DW.Debug_signals;

  /* MultiPortSwitch: '<S23>/Multiport Switch' */
  switch (mcb_pmsm_foc_I2C_f28379d_orig_B.DataStoreRead) {
   case 1:
    /* MultiPortSwitch: '<S23>/Multiport Switch' incorporates:
     *  Constant: '<S23>/speed_control'
     */
    mcb_pmsm_foc_I2C_f28379d_orig_B.MultiportSwitch[0] = 1U;
    mcb_pmsm_foc_I2C_f28379d_orig_B.MultiportSwitch[1] = 2U;
    break;

   case 2:
    /* MultiPortSwitch: '<S23>/Multiport Switch' incorporates:
     *  Constant: '<S23>/Id_control'
     */
    mcb_pmsm_foc_I2C_f28379d_orig_B.MultiportSwitch[0] = 5U;
    mcb_pmsm_foc_I2C_f28379d_orig_B.MultiportSwitch[1] = 6U;
    break;

   case 3:
    /* MultiPortSwitch: '<S23>/Multiport Switch' incorporates:
     *  Constant: '<S23>/Iq_control'
     */
    mcb_pmsm_foc_I2C_f28379d_orig_B.MultiportSwitch[0] = 7U;
    mcb_pmsm_foc_I2C_f28379d_orig_B.MultiportSwitch[1] = 8U;
    break;

   case 4:
    /* MultiPortSwitch: '<S23>/Multiport Switch' incorporates:
     *  Constant: '<S23>/Iab'
     */
    mcb_pmsm_foc_I2C_f28379d_orig_B.MultiportSwitch[0] = 3U;
    mcb_pmsm_foc_I2C_f28379d_orig_B.MultiportSwitch[1] = 4U;
    break;

   case 5:
    /* MultiPortSwitch: '<S23>/Multiport Switch' incorporates:
     *  Constant: '<S23>/Ia_Pos'
     */
    mcb_pmsm_foc_I2C_f28379d_orig_B.MultiportSwitch[0] = 10U;
    mcb_pmsm_foc_I2C_f28379d_orig_B.MultiportSwitch[1] = 11U;
    break;

   default:
    /* MultiPortSwitch: '<S23>/Multiport Switch' incorporates:
     *  Constant: '<S23>/Pos_ref_fb'
     */
    mcb_pmsm_foc_I2C_f28379d_orig_B.MultiportSwitch[0] = 10U;
    mcb_pmsm_foc_I2C_f28379d_orig_B.MultiportSwitch[1] = 11U;
    break;
  }

  /* End of MultiPortSwitch: '<S23>/Multiport Switch' */

  /* Selector: '<S23>/Selector' */
  mcb_pmsm_foc_I2C_f28379d_orig_B.Selector[0] =
    mcb_pmsm_foc_I2C_f28379d_orig_B.TmpSignalConversionAtSelectorIn[(int16_T)
    mcb_pmsm_foc_I2C_f28379d_orig_B.MultiportSwitch[0] - 1];
  mcb_pmsm_foc_I2C_f28379d_orig_B.Selector[1] =
    mcb_pmsm_foc_I2C_f28379d_orig_B.TmpSignalConversionAtSelectorIn[(int16_T)
    mcb_pmsm_foc_I2C_f28379d_orig_B.MultiportSwitch[1] - 1];

  /* S-Function (any2byte_svd): '<S210>/Byte Pack' */

  /* Pack: <S210>/Byte Pack */
  {
    uint32_T MW_outputPortOffset = 0;
    uint32_T MW_inputPortWidth = 0;
    uint32_T MW_remainder1 = 0;

    /* Packed output data type - uint32_T */
    /* Packing the values of Input 1 */
    /* Input data type - real32_T, size - 2 */
    {
      MW_inputPortWidth = 2 * sizeof(real32_T);
      memcpy((uint16_T*)&mcb_pmsm_foc_I2C_f28379d_orig_B.BytePack[0] +
             MW_outputPortOffset, (uint16_T*)
             &mcb_pmsm_foc_I2C_f28379d_orig_B.Selector[0], MW_inputPortWidth);
    }
  }

  /* If: '<S208>/If' */
  if (mcb_pmsm_foc_I2C_f28379d_orig_B.Output == 0U) {
    /* Outputs for IfAction SubSystem: '<S208>/Start' incorporates:
     *  ActionPort: '<S214>/Action Port'
     */
    /* Merge: '<S208>/Merge' incorporates:
     *  Constant: '<S214>/Start'
     *  SignalConversion generated from: '<S214>/Data_out'
     */
    mcb_pmsm_foc_I2C_f28379d_orig_B.SCI_Tx_Data[0] = 1397969747UL;

    /* SignalConversion generated from: '<S214>/Data' */
    Sum = mcb_pmsm_foc_I2C_f28379d_orig_B.BytePack[0];

    /* End of Outputs for SubSystem: '<S208>/Start' */
    mcb_pmsm_foc_I2C_f28379d_orig_B.Data_fw[0] = Sum;

    /* Outputs for IfAction SubSystem: '<S208>/Start' incorporates:
     *  ActionPort: '<S214>/Action Port'
     */
    /* Merge: '<S208>/Merge' incorporates:
     *  SignalConversion generated from: '<S214>/Data_out'
     */
    mcb_pmsm_foc_I2C_f28379d_orig_B.SCI_Tx_Data[1] = Sum;

    /* SignalConversion generated from: '<S214>/Data' */
    Sum = mcb_pmsm_foc_I2C_f28379d_orig_B.BytePack[1];

    /* End of Outputs for SubSystem: '<S208>/Start' */
    mcb_pmsm_foc_I2C_f28379d_orig_B.Data_fw[1] = Sum;

    /* Outputs for IfAction SubSystem: '<S208>/Start' incorporates:
     *  ActionPort: '<S214>/Action Port'
     */
    /* Merge: '<S208>/Merge' incorporates:
     *  SignalConversion generated from: '<S214>/Data_out'
     */
    mcb_pmsm_foc_I2C_f28379d_orig_B.SCI_Tx_Data[2] = Sum;

    /* Merge: '<S208>/Merge1' incorporates:
     *  Bias: '<S214>/Bias'
     */
    mcb_pmsm_foc_I2C_f28379d_orig_B.SCI_Tx_Iteration =
      mcb_pmsm_foc_I2C_f28379d_ConstB.Width + 1UL;

    /* End of Outputs for SubSystem: '<S208>/Start' */
  } else if (mcb_pmsm_foc_I2C_f28379d_orig_B.Output == 599U) {
    /* Outputs for IfAction SubSystem: '<S208>/End' incorporates:
     *  ActionPort: '<S213>/Action Port'
     */
    /* SignalConversion generated from: '<S213>/Data' */
    Sum = mcb_pmsm_foc_I2C_f28379d_orig_B.BytePack[0];

    /* End of Outputs for SubSystem: '<S208>/End' */
    mcb_pmsm_foc_I2C_f28379d_orig_B.Data_f[0] = Sum;

    /* Outputs for IfAction SubSystem: '<S208>/End' incorporates:
     *  ActionPort: '<S213>/Action Port'
     */
    /* Merge: '<S208>/Merge' incorporates:
     *  SignalConversion generated from: '<S213>/Data_out'
     */
    mcb_pmsm_foc_I2C_f28379d_orig_B.SCI_Tx_Data[0] = Sum;

    /* SignalConversion generated from: '<S213>/Data' */
    Sum = mcb_pmsm_foc_I2C_f28379d_orig_B.BytePack[1];

    /* End of Outputs for SubSystem: '<S208>/End' */
    mcb_pmsm_foc_I2C_f28379d_orig_B.Data_f[1] = Sum;

    /* Outputs for IfAction SubSystem: '<S208>/End' incorporates:
     *  ActionPort: '<S213>/Action Port'
     */
    /* Merge: '<S208>/Merge' incorporates:
     *  Constant: '<S213>/End'
     *  SignalConversion generated from: '<S213>/Data_out'
     */
    mcb_pmsm_foc_I2C_f28379d_orig_B.SCI_Tx_Data[1] = Sum;
    mcb_pmsm_foc_I2C_f28379d_orig_B.SCI_Tx_Data[2] = 1162167621UL;

    /* Merge: '<S208>/Merge1' incorporates:
     *  Bias: '<S213>/Bias'
     */
    mcb_pmsm_foc_I2C_f28379d_orig_B.SCI_Tx_Iteration =
      mcb_pmsm_foc_I2C_f28379d_ConstB.Width + 1UL;

    /* End of Outputs for SubSystem: '<S208>/End' */
  } else {
    /* Outputs for IfAction SubSystem: '<S208>/Data' incorporates:
     *  ActionPort: '<S212>/Action Port'
     */
    /* SignalConversion generated from: '<S212>/Data' */
    Sum = mcb_pmsm_foc_I2C_f28379d_orig_B.BytePack[0];

    /* End of Outputs for SubSystem: '<S208>/Data' */
    mcb_pmsm_foc_I2C_f28379d_orig_B.Data[0] = Sum;

    /* Outputs for IfAction SubSystem: '<S208>/Data' incorporates:
     *  ActionPort: '<S212>/Action Port'
     */
    /* Merge: '<S208>/Merge' incorporates:
     *  SignalConversion generated from: '<S212>/Data_out'
     */
    mcb_pmsm_foc_I2C_f28379d_orig_B.SCI_Tx_Data[0] = Sum;

    /* SignalConversion generated from: '<S212>/Data' */
    Sum = mcb_pmsm_foc_I2C_f28379d_orig_B.BytePack[1];

    /* End of Outputs for SubSystem: '<S208>/Data' */
    mcb_pmsm_foc_I2C_f28379d_orig_B.Data[1] = Sum;

    /* Outputs for IfAction SubSystem: '<S208>/Data' incorporates:
     *  ActionPort: '<S212>/Action Port'
     */
    /* Merge: '<S208>/Merge' incorporates:
     *  Constant: '<S212>/Dummy'
     *  SignalConversion generated from: '<S212>/Data_out'
     */
    mcb_pmsm_foc_I2C_f28379d_orig_B.SCI_Tx_Data[1] = Sum;
    mcb_pmsm_foc_I2C_f28379d_orig_B.SCI_Tx_Data[2] = 0UL;

    /* Merge: '<S208>/Merge1' incorporates:
     *  SignalConversion generated from: '<S212>/Data_width'
     */
    mcb_pmsm_foc_I2C_f28379d_orig_B.SCI_Tx_Iteration =
      mcb_pmsm_foc_I2C_f28379d_ConstB.Width;

    /* End of Outputs for SubSystem: '<S208>/Data' */
  }

  /* End of If: '<S208>/If' */

  /* Outputs for Iterator SubSystem: '<S206>/While Iterator Subsystem' incorporates:
   *  WhileIterator: '<S209>/While Iterator'
   */
  s209_iter = 1;
  do {
    mcb_pmsm_foc_I2C_f28379d_orig_B.WhileIterator = s209_iter;
    mcb_pmsm_foc_I2C_f28379d_orig_B.IndexVector =
      mcb_pmsm_foc_I2C_f28379d_orig_B.SCI_Tx_Data[mcb_pmsm_foc_I2C_f28379d_orig_B.WhileIterator
      - 1];

    {
      if (checkSCITransmitInProgressA != 1U) {
        checkSCITransmitInProgressA = 1U;
        int16_T errFlgHeader = NOERROR;
        int16_T errFlgData = NOERROR;
        int16_T errFlgTail = NOERROR;
        errFlgData = scia_xmit((unsigned char*)
          &mcb_pmsm_foc_I2C_f28379d_orig_B.IndexVector, 4, 4);
        checkSCITransmitInProgressA = 0U;
      }
    }

    mcb_pmsm_foc_I2C_f28379d_orig_B.Add =
      mcb_pmsm_foc_I2C_f28379d_orig_B.SCI_Tx_Iteration - (uint32_T)
      mcb_pmsm_foc_I2C_f28379d_orig_B.WhileIterator;
    s209_iter++;
  } while (mcb_pmsm_foc_I2C_f28379d_orig_B.Add != 0UL);

  /* End of Outputs for SubSystem: '<S206>/While Iterator Subsystem' */

  /* Sum: '<S215>/FixPt Sum1' incorporates:
   *  Constant: '<S215>/FixPt Constant'
   */
  mcb_pmsm_foc_I2C_f28379d_orig_B.FixPtSum1 =
    mcb_pmsm_foc_I2C_f28379d_orig_B.Output + 1U;

  /* Switch: '<S216>/FixPt Switch' */
  if (mcb_pmsm_foc_I2C_f28379d_orig_B.FixPtSum1 > 599U) {
    /* Switch: '<S216>/FixPt Switch' incorporates:
     *  Constant: '<S216>/Constant'
     */
    mcb_pmsm_foc_I2C_f28379d_orig_B.FixPtSwitch = 0U;
  } else {
    /* Switch: '<S216>/FixPt Switch' */
    mcb_pmsm_foc_I2C_f28379d_orig_B.FixPtSwitch =
      mcb_pmsm_foc_I2C_f28379d_orig_B.FixPtSum1;
  }

  /* End of Switch: '<S216>/FixPt Switch' */

  /* Switch: '<S42>/Switch1' incorporates:
   *  Constant: '<S42>/ChosenMethod'
   */
  mcb_pmsm_foc_I2C_f28379d_orig_B.Switch1_j = 3U;

  /* Sum: '<S39>/Sum' */
  mcb_pmsm_foc_I2C_f28379d_orig_B.Sum_o = mcb_pmsm_foc_I2C_f28379d_orig_B.RT2[1]
    - mcb_pmsm_foc_I2C_f28379d_orig_B.algDD_o2;

  /* Product: '<S144>/PProd Out' incorporates:
   *  Constant: '<S39>/Kp'
   */
  mcb_pmsm_foc_I2C_f28379d_orig_B.PProdOut =
    mcb_pmsm_foc_I2C_f28379d_orig_B.Sum_o * 3.0F;

  /* DataStoreRead: '<S39>/Data Store Read1' */
  mcb_pmsm_foc_I2C_f28379d_orig_B.DataStoreRead1_b =
    mcb_pmsm_foc_I2C_f28379d_ori_DW.Enable;

  /* Logic: '<S39>/Logical Operator' */
  mcb_pmsm_foc_I2C_f28379d_orig_B.LogicalOperator =
    !mcb_pmsm_foc_I2C_f28379d_orig_B.DataStoreRead1_b;

  /* Constant: '<S39>/Kp1' */
  mcb_pmsm_foc_I2C_f28379d_orig_B.Kp1 = 0.0F;

  /* DiscreteIntegrator: '<S139>/Integrator' */
  if (mcb_pmsm_foc_I2C_f28379d_orig_B.LogicalOperator ||
      (mcb_pmsm_foc_I2C_f28379d_ori_DW.Integrator_PrevResetState != 0)) {
    mcb_pmsm_foc_I2C_f28379d_ori_DW.Integrator_DSTATE = 0.0F;
  }

  /* DiscreteIntegrator: '<S139>/Integrator' */
  mcb_pmsm_foc_I2C_f28379d_orig_B.Integrator =
    mcb_pmsm_foc_I2C_f28379d_ori_DW.Integrator_DSTATE;

  /* Sum: '<S148>/Sum' */
  mcb_pmsm_foc_I2C_f28379d_orig_B.Sum_m =
    mcb_pmsm_foc_I2C_f28379d_orig_B.PProdOut +
    mcb_pmsm_foc_I2C_f28379d_orig_B.Integrator;

  /* Saturate: '<S146>/Saturation' */
  uPrev = mcb_pmsm_foc_I2C_f28379d_orig_B.Sum_m;
  if (uPrev > 1.0F) {
    /* Saturate: '<S146>/Saturation' */
    mcb_pmsm_foc_I2C_f28379d_orig_B.Saturation = 1.0F;
  } else if (uPrev < -1.0F) {
    /* Saturate: '<S146>/Saturation' */
    mcb_pmsm_foc_I2C_f28379d_orig_B.Saturation = -1.0F;
  } else {
    /* Saturate: '<S146>/Saturation' */
    mcb_pmsm_foc_I2C_f28379d_orig_B.Saturation = uPrev;
  }

  /* End of Saturate: '<S146>/Saturation' */

  /* Sum: '<S38>/Sum' */
  mcb_pmsm_foc_I2C_f28379d_orig_B.Sum_j = mcb_pmsm_foc_I2C_f28379d_orig_B.RT2[0]
    - mcb_pmsm_foc_I2C_f28379d_orig_B.algDD_o1;

  /* Product: '<S93>/PProd Out' incorporates:
   *  Constant: '<S38>/Kp'
   */
  mcb_pmsm_foc_I2C_f28379d_orig_B.PProdOut_g =
    mcb_pmsm_foc_I2C_f28379d_orig_B.Sum_j * 2.0F;

  /* DataStoreRead: '<S38>/Data Store Read1' */
  mcb_pmsm_foc_I2C_f28379d_orig_B.DataStoreRead1_m =
    mcb_pmsm_foc_I2C_f28379d_ori_DW.Enable;

  /* Logic: '<S38>/Logical Operator' */
  mcb_pmsm_foc_I2C_f28379d_orig_B.LogicalOperator_a =
    !mcb_pmsm_foc_I2C_f28379d_orig_B.DataStoreRead1_m;

  /* Constant: '<S38>/Ki1' */
  mcb_pmsm_foc_I2C_f28379d_orig_B.Ki1 = 0.0F;

  /* DiscreteIntegrator: '<S88>/Integrator' */
  if (mcb_pmsm_foc_I2C_f28379d_orig_B.LogicalOperator_a ||
      (mcb_pmsm_foc_I2C_f28379d_ori_DW.Integrator_PrevResetState_k != 0)) {
    mcb_pmsm_foc_I2C_f28379d_ori_DW.Integrator_DSTATE_o = 0.0F;
  }

  /* DiscreteIntegrator: '<S88>/Integrator' */
  mcb_pmsm_foc_I2C_f28379d_orig_B.Integrator_f =
    mcb_pmsm_foc_I2C_f28379d_ori_DW.Integrator_DSTATE_o;

  /* Sum: '<S97>/Sum' */
  mcb_pmsm_foc_I2C_f28379d_orig_B.Sum_g =
    mcb_pmsm_foc_I2C_f28379d_orig_B.PProdOut_g +
    mcb_pmsm_foc_I2C_f28379d_orig_B.Integrator_f;

  /* Saturate: '<S95>/Saturation' */
  uPrev = mcb_pmsm_foc_I2C_f28379d_orig_B.Sum_g;
  if (uPrev > 1.0F) {
    /* Saturate: '<S95>/Saturation' */
    mcb_pmsm_foc_I2C_f28379d_orig_B.Saturation_f = 1.0F;
  } else if (uPrev < -1.0F) {
    /* Saturate: '<S95>/Saturation' */
    mcb_pmsm_foc_I2C_f28379d_orig_B.Saturation_f = -1.0F;
  } else {
    /* Saturate: '<S95>/Saturation' */
    mcb_pmsm_foc_I2C_f28379d_orig_B.Saturation_f = uPrev;
  }

  /* End of Saturate: '<S95>/Saturation' */

  /* Switch: '<S42>/Switch' incorporates:
   *  Constant: '<S42>/Constant3'
   */
  mcb_pmsm_foc_I2C_f28379d_orig_B.Switch_n = 0.95F;

  /* Product: '<S42>/Product' */
  mcb_pmsm_foc_I2C_f28379d_orig_B.Product_j = 0.9025F;

  /* Product: '<S43>/Product' */
  mcb_pmsm_foc_I2C_f28379d_orig_B.Product_f =
    mcb_pmsm_foc_I2C_f28379d_orig_B.Saturation_f *
    mcb_pmsm_foc_I2C_f28379d_orig_B.Saturation_f;

  /* Product: '<S43>/Product1' */
  mcb_pmsm_foc_I2C_f28379d_orig_B.Product1_g =
    mcb_pmsm_foc_I2C_f28379d_orig_B.Saturation *
    mcb_pmsm_foc_I2C_f28379d_orig_B.Saturation;

  /* Sum: '<S43>/Sum1' */
  mcb_pmsm_foc_I2C_f28379d_orig_B.Sum1 =
    mcb_pmsm_foc_I2C_f28379d_orig_B.Product_f +
    mcb_pmsm_foc_I2C_f28379d_orig_B.Product1_g;

  /* Outputs for IfAction SubSystem: '<S37>/D-Q Equivalence' incorporates:
   *  ActionPort: '<S40>/Action Port'
   */
  /* If: '<S37>/If' incorporates:
   *  DataTypeConversion: '<S40>/Data Type Conversion'
   *  RelationalOperator: '<S40>/Relational Operator'
   */
  mcb_pmsm_foc_I2C_f28379d_orig_B.RelationalOperator_k =
    (mcb_pmsm_foc_I2C_f28379d_orig_B.Sum1 > 0.9025F);
  mcb_pmsm_foc_I2C_f28379d_orig_B.DataTypeConversion_f =
    mcb_pmsm_foc_I2C_f28379d_orig_B.RelationalOperator_k;

  /* If: '<S40>/If' incorporates:
   *  If: '<S37>/If'
   */
  if (mcb_pmsm_foc_I2C_f28379d_orig_B.DataTypeConversion_f != 0U) {
    /* Outputs for IfAction SubSystem: '<S40>/Limiter' incorporates:
     *  ActionPort: '<S44>/Action Port'
     */
    /* Product: '<S44>/Product' */
    mcb_pmsm_foc_I2C_f28379d_orig_B.Product_o[0] =
      mcb_pmsm_foc_I2C_f28379d_orig_B.Saturation_f * 0.95F;
    mcb_pmsm_foc_I2C_f28379d_orig_B.Product_o[1] =
      mcb_pmsm_foc_I2C_f28379d_orig_B.Saturation * 0.95F;

    /* Sqrt: '<S44>/Square Root' */
    mcb_pmsm_foc_I2C_f28379d_orig_B.SquareRoot = (real32_T)sqrt
      (mcb_pmsm_foc_I2C_f28379d_orig_B.Sum1);

    /* Switch: '<S44>/Switch' */
    if (mcb_pmsm_foc_I2C_f28379d_orig_B.SquareRoot != 0.0F) {
      /* Switch: '<S44>/Switch' */
      mcb_pmsm_foc_I2C_f28379d_orig_B.Switch_as =
        mcb_pmsm_foc_I2C_f28379d_orig_B.SquareRoot;
    } else {
      /* Switch: '<S44>/Switch' incorporates:
       *  Constant: '<S44>/Constant'
       */
      mcb_pmsm_foc_I2C_f28379d_orig_B.Switch_as = 1.0F;
    }

    /* End of Switch: '<S44>/Switch' */

    /* Product: '<S44>/Reciprocal' */
    mcb_pmsm_foc_I2C_f28379d_orig_B.Reciprocal = 1.0F /
      mcb_pmsm_foc_I2C_f28379d_orig_B.Switch_as;

    /* Merge: '<S37>/Merge' incorporates:
     *  Product: '<S44>/Product1'
     */
    mcb_pmsm_foc_I2C_f28379d_orig_B.Merge_i[0] =
      mcb_pmsm_foc_I2C_f28379d_orig_B.Product_o[0] *
      mcb_pmsm_foc_I2C_f28379d_orig_B.Reciprocal;
    mcb_pmsm_foc_I2C_f28379d_orig_B.Merge_i[1] =
      mcb_pmsm_foc_I2C_f28379d_orig_B.Product_o[1] *
      mcb_pmsm_foc_I2C_f28379d_orig_B.Reciprocal;

    /* End of Outputs for SubSystem: '<S40>/Limiter' */
  } else {
    /* Outputs for IfAction SubSystem: '<S40>/Passthrough' incorporates:
     *  ActionPort: '<S45>/Action Port'
     */
    /* Merge: '<S37>/Merge' incorporates:
     *  SignalConversion generated from: '<S45>/dqRef'
     */
    mcb_pmsm_foc_I2C_f28379d_orig_B.Merge_i[0] =
      mcb_pmsm_foc_I2C_f28379d_orig_B.Saturation_f;
    mcb_pmsm_foc_I2C_f28379d_orig_B.Merge_i[1] =
      mcb_pmsm_foc_I2C_f28379d_orig_B.Saturation;

    /* End of Outputs for SubSystem: '<S40>/Passthrough' */
  }

  /* End of If: '<S40>/If' */
  /* End of Outputs for SubSystem: '<S37>/D-Q Equivalence' */

  /* DeadZone: '<S81>/DeadZone' */
  if (mcb_pmsm_foc_I2C_f28379d_orig_B.Sum_g > 1.0F) {
    /* DeadZone: '<S81>/DeadZone' */
    mcb_pmsm_foc_I2C_f28379d_orig_B.DeadZone =
      mcb_pmsm_foc_I2C_f28379d_orig_B.Sum_g - 1.0F;
  } else if (mcb_pmsm_foc_I2C_f28379d_orig_B.Sum_g >= -1.0F) {
    /* DeadZone: '<S81>/DeadZone' */
    mcb_pmsm_foc_I2C_f28379d_orig_B.DeadZone = 0.0F;
  } else {
    /* DeadZone: '<S81>/DeadZone' */
    mcb_pmsm_foc_I2C_f28379d_orig_B.DeadZone =
      mcb_pmsm_foc_I2C_f28379d_orig_B.Sum_g - -1.0F;
  }

  /* End of DeadZone: '<S81>/DeadZone' */

  /* RelationalOperator: '<S79>/Relational Operator' incorporates:
   *  Constant: '<S79>/Clamping_zero'
   */
  mcb_pmsm_foc_I2C_f28379d_orig_B.RelationalOperator =
    (mcb_pmsm_foc_I2C_f28379d_orig_B.DeadZone != 0.0F);

  /* RelationalOperator: '<S79>/fix for DT propagation issue' incorporates:
   *  Constant: '<S79>/Clamping_zero'
   */
  mcb_pmsm_foc_I2C_f28379d_orig_B.fixforDTpropagationissue =
    (mcb_pmsm_foc_I2C_f28379d_orig_B.DeadZone > 0.0F);

  /* Switch: '<S79>/Switch1' */
  if (mcb_pmsm_foc_I2C_f28379d_orig_B.fixforDTpropagationissue) {
    /* Switch: '<S79>/Switch1' incorporates:
     *  Constant: '<S79>/Constant'
     */
    mcb_pmsm_foc_I2C_f28379d_orig_B.Switch1_h = 1;
  } else {
    /* Switch: '<S79>/Switch1' incorporates:
     *  Constant: '<S79>/Constant2'
     */
    mcb_pmsm_foc_I2C_f28379d_orig_B.Switch1_h = -1;
  }

  /* End of Switch: '<S79>/Switch1' */

  /* Product: '<S85>/IProd Out' incorporates:
   *  Constant: '<S38>/Ki'
   */
  mcb_pmsm_foc_I2C_f28379d_orig_B.IProdOut =
    mcb_pmsm_foc_I2C_f28379d_orig_B.Sum_j * 5.0E-6F;

  /* RelationalOperator: '<S79>/fix for DT propagation issue1' incorporates:
   *  Constant: '<S79>/Clamping_zero'
   */
  mcb_pmsm_foc_I2C_f28379d_orig_B.fixforDTpropagationissue1 =
    (mcb_pmsm_foc_I2C_f28379d_orig_B.IProdOut > 0.0F);

  /* Switch: '<S79>/Switch2' */
  if (mcb_pmsm_foc_I2C_f28379d_orig_B.fixforDTpropagationissue1) {
    /* Switch: '<S79>/Switch2' incorporates:
     *  Constant: '<S79>/Constant3'
     */
    mcb_pmsm_foc_I2C_f28379d_orig_B.Switch2_l = 1;
  } else {
    /* Switch: '<S79>/Switch2' incorporates:
     *  Constant: '<S79>/Constant4'
     */
    mcb_pmsm_foc_I2C_f28379d_orig_B.Switch2_l = -1;
  }

  /* End of Switch: '<S79>/Switch2' */

  /* RelationalOperator: '<S79>/Equal1' incorporates:
   *  Switch: '<S79>/Switch1'
   *  Switch: '<S79>/Switch2'
   */
  mcb_pmsm_foc_I2C_f28379d_orig_B.Equal1 =
    (mcb_pmsm_foc_I2C_f28379d_orig_B.Switch1_h ==
     mcb_pmsm_foc_I2C_f28379d_orig_B.Switch2_l);

  /* Logic: '<S79>/AND3' */
  mcb_pmsm_foc_I2C_f28379d_orig_B.AND3 =
    (mcb_pmsm_foc_I2C_f28379d_orig_B.RelationalOperator &&
     mcb_pmsm_foc_I2C_f28379d_orig_B.Equal1);

  /* Switch: '<S79>/Switch' */
  if (mcb_pmsm_foc_I2C_f28379d_orig_B.AND3) {
    /* Switch: '<S79>/Switch' incorporates:
     *  Constant: '<S79>/Constant1'
     */
    mcb_pmsm_foc_I2C_f28379d_orig_B.Switch_f = 0.0F;
  } else {
    /* Switch: '<S79>/Switch' */
    mcb_pmsm_foc_I2C_f28379d_orig_B.Switch_f =
      mcb_pmsm_foc_I2C_f28379d_orig_B.IProdOut;
  }

  /* End of Switch: '<S79>/Switch' */

  /* DeadZone: '<S132>/DeadZone' */
  if (mcb_pmsm_foc_I2C_f28379d_orig_B.Sum_m > 1.0F) {
    /* DeadZone: '<S132>/DeadZone' */
    mcb_pmsm_foc_I2C_f28379d_orig_B.DeadZone_a =
      mcb_pmsm_foc_I2C_f28379d_orig_B.Sum_m - 1.0F;
  } else if (mcb_pmsm_foc_I2C_f28379d_orig_B.Sum_m >= -1.0F) {
    /* DeadZone: '<S132>/DeadZone' */
    mcb_pmsm_foc_I2C_f28379d_orig_B.DeadZone_a = 0.0F;
  } else {
    /* DeadZone: '<S132>/DeadZone' */
    mcb_pmsm_foc_I2C_f28379d_orig_B.DeadZone_a =
      mcb_pmsm_foc_I2C_f28379d_orig_B.Sum_m - -1.0F;
  }

  /* End of DeadZone: '<S132>/DeadZone' */

  /* RelationalOperator: '<S130>/Relational Operator' incorporates:
   *  Constant: '<S130>/Clamping_zero'
   */
  mcb_pmsm_foc_I2C_f28379d_orig_B.RelationalOperator_e =
    (mcb_pmsm_foc_I2C_f28379d_orig_B.DeadZone_a != 0.0F);

  /* RelationalOperator: '<S130>/fix for DT propagation issue' incorporates:
   *  Constant: '<S130>/Clamping_zero'
   */
  mcb_pmsm_foc_I2C_f28379d_orig_B.fixforDTpropagationissue_j =
    (mcb_pmsm_foc_I2C_f28379d_orig_B.DeadZone_a > 0.0F);

  /* Switch: '<S130>/Switch1' */
  if (mcb_pmsm_foc_I2C_f28379d_orig_B.fixforDTpropagationissue_j) {
    /* Switch: '<S130>/Switch1' incorporates:
     *  Constant: '<S130>/Constant'
     */
    mcb_pmsm_foc_I2C_f28379d_orig_B.Switch1_l = 1;
  } else {
    /* Switch: '<S130>/Switch1' incorporates:
     *  Constant: '<S130>/Constant2'
     */
    mcb_pmsm_foc_I2C_f28379d_orig_B.Switch1_l = -1;
  }

  /* End of Switch: '<S130>/Switch1' */

  /* Product: '<S136>/IProd Out' incorporates:
   *  Constant: '<S39>/Ki'
   */
  mcb_pmsm_foc_I2C_f28379d_orig_B.IProdOut_b =
    mcb_pmsm_foc_I2C_f28379d_orig_B.Sum_o * 5.0E-6F;

  /* RelationalOperator: '<S130>/fix for DT propagation issue1' incorporates:
   *  Constant: '<S130>/Clamping_zero'
   */
  mcb_pmsm_foc_I2C_f28379d_orig_B.fixforDTpropagationissue1_o =
    (mcb_pmsm_foc_I2C_f28379d_orig_B.IProdOut_b > 0.0F);

  /* Switch: '<S130>/Switch2' */
  if (mcb_pmsm_foc_I2C_f28379d_orig_B.fixforDTpropagationissue1_o) {
    /* Switch: '<S130>/Switch2' incorporates:
     *  Constant: '<S130>/Constant3'
     */
    mcb_pmsm_foc_I2C_f28379d_orig_B.Switch2_c = 1;
  } else {
    /* Switch: '<S130>/Switch2' incorporates:
     *  Constant: '<S130>/Constant4'
     */
    mcb_pmsm_foc_I2C_f28379d_orig_B.Switch2_c = -1;
  }

  /* End of Switch: '<S130>/Switch2' */

  /* RelationalOperator: '<S130>/Equal1' incorporates:
   *  Switch: '<S130>/Switch1'
   *  Switch: '<S130>/Switch2'
   */
  mcb_pmsm_foc_I2C_f28379d_orig_B.Equal1_i =
    (mcb_pmsm_foc_I2C_f28379d_orig_B.Switch1_l ==
     mcb_pmsm_foc_I2C_f28379d_orig_B.Switch2_c);

  /* Logic: '<S130>/AND3' */
  mcb_pmsm_foc_I2C_f28379d_orig_B.AND3_n =
    (mcb_pmsm_foc_I2C_f28379d_orig_B.RelationalOperator_e &&
     mcb_pmsm_foc_I2C_f28379d_orig_B.Equal1_i);

  /* Switch: '<S130>/Switch' */
  if (mcb_pmsm_foc_I2C_f28379d_orig_B.AND3_n) {
    /* Switch: '<S130>/Switch' incorporates:
     *  Constant: '<S130>/Constant1'
     */
    mcb_pmsm_foc_I2C_f28379d_orig_B.Switch_a = 0.0F;
  } else {
    /* Switch: '<S130>/Switch' */
    mcb_pmsm_foc_I2C_f28379d_orig_B.Switch_a =
      mcb_pmsm_foc_I2C_f28379d_orig_B.IProdOut_b;
  }

  /* End of Switch: '<S130>/Switch' */

  /* RelationalOperator: '<S160>/Compare' incorporates:
   *  Constant: '<S160>/Constant'
   */
  mcb_pmsm_foc_I2C_f28379d_orig_B.Compare_f =
    (mcb_pmsm_foc_I2C_f28379d_orig_B.Add_c < 0.0F);

  /* DataTypeConversion: '<S159>/Data Type Conversion' */
  mcb_pmsm_foc_I2C_f28379d_orig_B.DataTypeConversion_h =
    mcb_pmsm_foc_I2C_f28379d_orig_B.Compare_f;

  /* If: '<S159>/If' */
  if (mcb_pmsm_foc_I2C_f28379d_orig_B.DataTypeConversion_h > 0U) {
    /* Outputs for IfAction SubSystem: '<S159>/If Action Subsystem' incorporates:
     *  ActionPort: '<S161>/Action Port'
     */
    mcb_pmsm__IfActionSubsystem(mcb_pmsm_foc_I2C_f28379d_orig_B.Add_c,
      &mcb_pmsm_foc_I2C_f28379d_orig_B.Merge_a,
      &mcb_pmsm_foc_I2C_f28379d_orig_B.IfActionSubsystem);

    /* End of Outputs for SubSystem: '<S159>/If Action Subsystem' */
  } else {
    /* Outputs for IfAction SubSystem: '<S159>/If Action Subsystem1' incorporates:
     *  ActionPort: '<S162>/Action Port'
     */
    mcb_pmsm_IfActionSubsystem1(mcb_pmsm_foc_I2C_f28379d_orig_B.Add_c,
      &mcb_pmsm_foc_I2C_f28379d_orig_B.Merge_a,
      &mcb_pmsm_foc_I2C_f28379d_orig_B.IfActionSubsystem1);

    /* End of Outputs for SubSystem: '<S159>/If Action Subsystem1' */
  }

  /* End of If: '<S159>/If' */

  /* Gain: '<S156>/indexing' */
  mcb_pmsm_foc_I2C_f28379d_orig_B.indexing_d = 800.0F *
    mcb_pmsm_foc_I2C_f28379d_orig_B.Merge_a;

  /* DataTypeConversion: '<S156>/Get_Integer' */
  mcb_pmsm_foc_I2C_f28379d_orig_B.Get_Integer_j = (uint16_T)
    mcb_pmsm_foc_I2C_f28379d_orig_B.indexing_d;

  /* DataTypeConversion: '<S156>/Data Type Conversion1' */
  mcb_pmsm_foc_I2C_f28379d_orig_B.DataTypeConversion1_n =
    mcb_pmsm_foc_I2C_f28379d_orig_B.Get_Integer_j;

  /* Sum: '<S156>/Sum' incorporates:
   *  Constant: '<S156>/offset'
   */
  Sum = mcb_pmsm_foc_I2C_f28379d_orig_B.Get_Integer_j + 1UL;
  mcb_pmsm_foc_I2C_f28379d_orig_B.Sum_h[0] = Sum;

  /* Selector: '<S156>/Lookup' incorporates:
   *  Constant: '<S156>/sine_table_values'
   */
  mcb_pmsm_foc_I2C_f28379d_orig_B.Lookup_p[0] =
    mcb_pmsm_foc_I2C_f28379d_ConstP.pooled11[(int16_T)Sum];

  /* Sum: '<S156>/Sum' */
  Sum = mcb_pmsm_foc_I2C_f28379d_orig_B.Get_Integer_j;
  mcb_pmsm_foc_I2C_f28379d_orig_B.Sum_h[1] = Sum;

  /* Selector: '<S156>/Lookup' incorporates:
   *  Constant: '<S156>/sine_table_values'
   */
  mcb_pmsm_foc_I2C_f28379d_orig_B.Lookup_p[1] =
    mcb_pmsm_foc_I2C_f28379d_ConstP.pooled11[(int16_T)Sum];

  /* Sum: '<S156>/Sum' incorporates:
   *  Constant: '<S156>/offset'
   */
  Sum = mcb_pmsm_foc_I2C_f28379d_orig_B.Get_Integer_j + 201UL;
  mcb_pmsm_foc_I2C_f28379d_orig_B.Sum_h[2] = Sum;

  /* Selector: '<S156>/Lookup' incorporates:
   *  Constant: '<S156>/sine_table_values'
   */
  mcb_pmsm_foc_I2C_f28379d_orig_B.Lookup_p[2] =
    mcb_pmsm_foc_I2C_f28379d_ConstP.pooled11[(int16_T)Sum];

  /* Sum: '<S156>/Sum' incorporates:
   *  Constant: '<S156>/offset'
   */
  Sum = mcb_pmsm_foc_I2C_f28379d_orig_B.Get_Integer_j + 200UL;
  mcb_pmsm_foc_I2C_f28379d_orig_B.Sum_h[3] = Sum;

  /* Selector: '<S156>/Lookup' incorporates:
   *  Constant: '<S156>/sine_table_values'
   */
  mcb_pmsm_foc_I2C_f28379d_orig_B.Lookup_p[3] =
    mcb_pmsm_foc_I2C_f28379d_ConstP.pooled11[(int16_T)Sum];

  /* Sum: '<S158>/Sum3' */
  mcb_pmsm_foc_I2C_f28379d_orig_B.Sum3_j =
    mcb_pmsm_foc_I2C_f28379d_orig_B.Lookup_p[0] -
    mcb_pmsm_foc_I2C_f28379d_orig_B.Lookup_p[1];

  /* Sum: '<S156>/Sum2' */
  mcb_pmsm_foc_I2C_f28379d_orig_B.Sum2_p =
    mcb_pmsm_foc_I2C_f28379d_orig_B.indexing_d -
    mcb_pmsm_foc_I2C_f28379d_orig_B.DataTypeConversion1_n;

  /* Product: '<S158>/Product' */
  mcb_pmsm_foc_I2C_f28379d_orig_B.Product_d =
    mcb_pmsm_foc_I2C_f28379d_orig_B.Sum3_j *
    mcb_pmsm_foc_I2C_f28379d_orig_B.Sum2_p;

  /* Sum: '<S158>/Sum5' */
  mcb_pmsm_foc_I2C_f28379d_orig_B.Sum5_l =
    mcb_pmsm_foc_I2C_f28379d_orig_B.Lookup_p[2] -
    mcb_pmsm_foc_I2C_f28379d_orig_B.Lookup_p[3];

  /* Product: '<S158>/Product1' */
  mcb_pmsm_foc_I2C_f28379d_orig_B.Product1_d =
    mcb_pmsm_foc_I2C_f28379d_orig_B.Sum5_l *
    mcb_pmsm_foc_I2C_f28379d_orig_B.Sum2_p;

  /* Sum: '<S158>/Sum4' */
  mcb_pmsm_foc_I2C_f28379d_orig_B.Sum4_h =
    mcb_pmsm_foc_I2C_f28379d_orig_B.Product_d +
    mcb_pmsm_foc_I2C_f28379d_orig_B.Lookup_p[1];

  /* Sum: '<S158>/Sum6' */
  mcb_pmsm_foc_I2C_f28379d_orig_B.Sum6_h =
    mcb_pmsm_foc_I2C_f28379d_orig_B.Product1_d +
    mcb_pmsm_foc_I2C_f28379d_orig_B.Lookup_p[3];

  /* Outputs for Atomic SubSystem: '<S32>/Two inputs CRL' */
  /* Product: '<S157>/qcos' */
  mcb_pmsm_foc_I2C_f28379d_orig_B.qcos =
    mcb_pmsm_foc_I2C_f28379d_orig_B.Merge_i[1] *
    mcb_pmsm_foc_I2C_f28379d_orig_B.Sum6_h;

  /* Product: '<S157>/dsin' */
  mcb_pmsm_foc_I2C_f28379d_orig_B.dsin =
    mcb_pmsm_foc_I2C_f28379d_orig_B.Merge_i[0] *
    mcb_pmsm_foc_I2C_f28379d_orig_B.Sum4_h;

  /* Sum: '<S157>/sum_beta' */
  mcb_pmsm_foc_I2C_f28379d_orig_B.sum_beta =
    mcb_pmsm_foc_I2C_f28379d_orig_B.qcos + mcb_pmsm_foc_I2C_f28379d_orig_B.dsin;

  /* Product: '<S157>/dcos' */
  mcb_pmsm_foc_I2C_f28379d_orig_B.dcos =
    mcb_pmsm_foc_I2C_f28379d_orig_B.Merge_i[0] *
    mcb_pmsm_foc_I2C_f28379d_orig_B.Sum6_h;

  /* Product: '<S157>/qsin' */
  mcb_pmsm_foc_I2C_f28379d_orig_B.qsin =
    mcb_pmsm_foc_I2C_f28379d_orig_B.Merge_i[1] *
    mcb_pmsm_foc_I2C_f28379d_orig_B.Sum4_h;

  /* Sum: '<S157>/sum_alpha' */
  mcb_pmsm_foc_I2C_f28379d_orig_B.sum_alpha =
    mcb_pmsm_foc_I2C_f28379d_orig_B.dcos - mcb_pmsm_foc_I2C_f28379d_orig_B.qsin;

  /* Switch: '<S163>/Switch' */
  mcb_pmsm_foc_I2C_f28379d_orig_B.Switch_b[0] =
    mcb_pmsm_foc_I2C_f28379d_orig_B.sum_alpha;
  mcb_pmsm_foc_I2C_f28379d_orig_B.Switch_b[1] =
    mcb_pmsm_foc_I2C_f28379d_orig_B.sum_beta;

  /* AlgorithmDescriptorDelegate generated from: '<S157>/a16' */
  mcb_pmsm_foc_I2C_f28379d_orig_B.algDD_o1_p =
    mcb_pmsm_foc_I2C_f28379d_orig_B.Switch_b[0];

  /* AlgorithmDescriptorDelegate generated from: '<S157>/a16' */
  mcb_pmsm_foc_I2C_f28379d_orig_B.algDD_o2_o =
    mcb_pmsm_foc_I2C_f28379d_orig_B.Switch_b[1];

  /* End of Outputs for SubSystem: '<S32>/Two inputs CRL' */

  /* Delay: '<S181>/Delay' */
  mcb_pmsm_foc_I2C_f28379d_orig_B.Delay_c =
    mcb_pmsm_foc_I2C_f28379d_ori_DW.Delay_DSTATE;

  /* Sum: '<S181>/Sum' */
  mcb_pmsm_foc_I2C_f28379d_orig_B.Sum_a = mcb_pmsm_foc_I2C_f28379d_orig_B.RT4 -
    mcb_pmsm_foc_I2C_f28379d_orig_B.Delay_c;

  /* If: '<S181>/If' */
  if (mcb_pmsm_foc_I2C_f28379d_orig_B.Sum_a > 0.5F) {
    /* Outputs for IfAction SubSystem: '<S181>/Subsystem' incorporates:
     *  ActionPort: '<S186>/Action Port'
     */
    /* Merge: '<S181>/Merge' incorporates:
     *  Fcn: '<S186>/Fcn'
     */
    mcb_pmsm_foc_I2C_f28379d_orig_B.Merge_c =
      mcb_pmsm_foc_I2C_f28379d_orig_B.Sum_a - 1.0F;

    /* End of Outputs for SubSystem: '<S181>/Subsystem' */
  } else if (mcb_pmsm_foc_I2C_f28379d_orig_B.Sum_a < -0.5F) {
    /* Outputs for IfAction SubSystem: '<S181>/Subsystem1' incorporates:
     *  ActionPort: '<S187>/Action Port'
     */
    /* Merge: '<S181>/Merge' incorporates:
     *  Fcn: '<S187>/Fcn1'
     */
    mcb_pmsm_foc_I2C_f28379d_orig_B.Merge_c =
      mcb_pmsm_foc_I2C_f28379d_orig_B.Sum_a + 1.0F;

    /* End of Outputs for SubSystem: '<S181>/Subsystem1' */
  } else {
    /* Outputs for IfAction SubSystem: '<S181>/Subsystem2' incorporates:
     *  ActionPort: '<S188>/Action Port'
     */
    /* Merge: '<S181>/Merge' incorporates:
     *  SignalConversion generated from: '<S188>/In1'
     */
    mcb_pmsm_foc_I2C_f28379d_orig_B.Merge_c =
      mcb_pmsm_foc_I2C_f28379d_orig_B.Sum_a;

    /* End of Outputs for SubSystem: '<S181>/Subsystem2' */
  }

  /* End of If: '<S181>/If' */

  /* DataStoreRead: '<S27>/Enable' */
  mcb_pmsm_foc_I2C_f28379d_orig_B.PWM_En =
    mcb_pmsm_foc_I2C_f28379d_ori_DW.Enable;

  /* DataTypeConversion: '<S27>/Data Type Conversion' */
  mcb_pmsm_foc_I2C_f28379d_orig_B.DataTypeConversion =
    mcb_pmsm_foc_I2C_f28379d_orig_B.PWM_En;

  /* Switch: '<S204>/Switch' */
  mcb_pmsm_foc_I2C_f28379d_orig_B.Switch_g =
    mcb_pmsm_foc_I2C_f28379d_orig_B.DataTypeConversion;

  /* S-Function (c280xgpio_do): '<S204>/DRV830x Enable' */
  {
    if (mcb_pmsm_foc_I2C_f28379d_orig_B.Switch_g) {
      GpioDataRegs.GPDSET.bit.GPIO124 = 1U;
    } else {
      GpioDataRegs.GPDCLEAR.bit.GPIO124 = 1U;
    }
  }

  /* Switch: '<S204>/Switch1' */
  if (mcb_pmsm_foc_I2C_f28379d_orig_B.DataTypeConversion >= 0.5F) {
    /* Gain: '<S179>/sqrt3_by_two' */
    mcb_pmsm_foc_I2C_f28379d_orig_B.sqrt3_by_two = 0.866025388F *
      mcb_pmsm_foc_I2C_f28379d_orig_B.algDD_o2_o;

    /* Gain: '<S179>/one_by_two' */
    mcb_pmsm_foc_I2C_f28379d_orig_B.one_by_two = 0.5F *
      mcb_pmsm_foc_I2C_f28379d_orig_B.algDD_o1_p;

    /* Sum: '<S179>/add_c' */
    mcb_pmsm_foc_I2C_f28379d_orig_B.add_c = (0.0F -
      mcb_pmsm_foc_I2C_f28379d_orig_B.one_by_two) -
      mcb_pmsm_foc_I2C_f28379d_orig_B.sqrt3_by_two;

    /* Sum: '<S179>/add_b' */
    mcb_pmsm_foc_I2C_f28379d_orig_B.add_b =
      mcb_pmsm_foc_I2C_f28379d_orig_B.sqrt3_by_two -
      mcb_pmsm_foc_I2C_f28379d_orig_B.one_by_two;

    /* MinMax: '<S176>/Min' */
    uPrev = mcb_pmsm_foc_I2C_f28379d_orig_B.algDD_o1_p;
    Bias = mcb_pmsm_foc_I2C_f28379d_orig_B.add_b;
    if ((uPrev <= Bias) || rtIsNaNF(Bias)) {
      Bias = uPrev;
    }

    uPrev = mcb_pmsm_foc_I2C_f28379d_orig_B.add_c;
    if ((!(Bias <= uPrev)) && (!rtIsNaNF(uPrev))) {
      Bias = uPrev;
    }

    /* MinMax: '<S176>/Min' */
    mcb_pmsm_foc_I2C_f28379d_orig_B.Min = Bias;

    /* MinMax: '<S176>/Max' */
    uPrev = mcb_pmsm_foc_I2C_f28379d_orig_B.algDD_o1_p;
    Bias = mcb_pmsm_foc_I2C_f28379d_orig_B.add_b;
    if ((uPrev >= Bias) || rtIsNaNF(Bias)) {
      Bias = uPrev;
    }

    uPrev = mcb_pmsm_foc_I2C_f28379d_orig_B.add_c;
    if ((!(Bias >= uPrev)) && (!rtIsNaNF(uPrev))) {
      Bias = uPrev;
    }

    /* MinMax: '<S176>/Max' */
    mcb_pmsm_foc_I2C_f28379d_orig_B.Max = Bias;

    /* Sum: '<S176>/Add' */
    mcb_pmsm_foc_I2C_f28379d_orig_B.Add_n = mcb_pmsm_foc_I2C_f28379d_orig_B.Max
      + mcb_pmsm_foc_I2C_f28379d_orig_B.Min;

    /* Gain: '<S176>/one_by_two' */
    mcb_pmsm_foc_I2C_f28379d_orig_B.one_by_two_l = -0.5F *
      mcb_pmsm_foc_I2C_f28379d_orig_B.Add_n;

    /* Sum: '<S175>/Add3' */
    mcb_pmsm_foc_I2C_f28379d_orig_B.Add3 =
      mcb_pmsm_foc_I2C_f28379d_orig_B.algDD_o1_p +
      mcb_pmsm_foc_I2C_f28379d_orig_B.one_by_two_l;

    /* Sum: '<S175>/Add2' */
    mcb_pmsm_foc_I2C_f28379d_orig_B.Add2 =
      mcb_pmsm_foc_I2C_f28379d_orig_B.one_by_two_l +
      mcb_pmsm_foc_I2C_f28379d_orig_B.add_c;

    /* Sum: '<S175>/Add1' */
    mcb_pmsm_foc_I2C_f28379d_orig_B.Add1_d =
      mcb_pmsm_foc_I2C_f28379d_orig_B.add_b +
      mcb_pmsm_foc_I2C_f28379d_orig_B.one_by_two_l;

    /* Gain: '<S175>/Gain' */
    mcb_pmsm_foc_I2C_f28379d_orig_B.Gain_a[0] = 1.15470052F *
      mcb_pmsm_foc_I2C_f28379d_orig_B.Add3;
    mcb_pmsm_foc_I2C_f28379d_orig_B.Gain_a[1] = 1.15470052F *
      mcb_pmsm_foc_I2C_f28379d_orig_B.Add1_d;
    mcb_pmsm_foc_I2C_f28379d_orig_B.Gain_a[2] = 1.15470052F *
      mcb_pmsm_foc_I2C_f28379d_orig_B.Add2;

    /* Gain: '<S27>/One_by_Two' */
    Bias = 0.5F * mcb_pmsm_foc_I2C_f28379d_orig_B.Gain_a[0];
    mcb_pmsm_foc_I2C_f28379d_orig_B.One_by_Two[0] = Bias;

    /* Sum: '<S27>/Sum' incorporates:
     *  Constant: '<S27>/Constant'
     */
    Bias += 0.5F;
    mcb_pmsm_foc_I2C_f28379d_orig_B.PWM_Duty_Cycles[0] = Bias;

    /* Gain: '<S204>/Scale_to_PWM_Counter_PRD' */
    Scale_to_PWM_Counter_PRD = (uint16_T)(5000.0F * Bias);
    mcb_pmsm_foc_I2C_f28379d_orig_B.Scale_to_PWM_Counter_PRD[0] =
      Scale_to_PWM_Counter_PRD;

    /* Switch: '<S204>/Switch1' */
    mcb_pmsm_foc_I2C_f28379d_orig_B.Switch1_jv[0] = Scale_to_PWM_Counter_PRD;

    /* Gain: '<S27>/One_by_Two' */
    Bias = 0.5F * mcb_pmsm_foc_I2C_f28379d_orig_B.Gain_a[1];
    mcb_pmsm_foc_I2C_f28379d_orig_B.One_by_Two[1] = Bias;

    /* Sum: '<S27>/Sum' incorporates:
     *  Constant: '<S27>/Constant'
     */
    Bias += 0.5F;
    mcb_pmsm_foc_I2C_f28379d_orig_B.PWM_Duty_Cycles[1] = Bias;

    /* Gain: '<S204>/Scale_to_PWM_Counter_PRD' */
    Scale_to_PWM_Counter_PRD = (uint16_T)(5000.0F * Bias);
    mcb_pmsm_foc_I2C_f28379d_orig_B.Scale_to_PWM_Counter_PRD[1] =
      Scale_to_PWM_Counter_PRD;

    /* Switch: '<S204>/Switch1' */
    mcb_pmsm_foc_I2C_f28379d_orig_B.Switch1_jv[1] = Scale_to_PWM_Counter_PRD;

    /* Gain: '<S27>/One_by_Two' */
    Bias = 0.5F * mcb_pmsm_foc_I2C_f28379d_orig_B.Gain_a[2];
    mcb_pmsm_foc_I2C_f28379d_orig_B.One_by_Two[2] = Bias;

    /* Sum: '<S27>/Sum' incorporates:
     *  Constant: '<S27>/Constant'
     */
    Bias += 0.5F;
    mcb_pmsm_foc_I2C_f28379d_orig_B.PWM_Duty_Cycles[2] = Bias;

    /* Gain: '<S204>/Scale_to_PWM_Counter_PRD' */
    Scale_to_PWM_Counter_PRD = (uint16_T)(5000.0F * Bias);
    mcb_pmsm_foc_I2C_f28379d_orig_B.Scale_to_PWM_Counter_PRD[2] =
      Scale_to_PWM_Counter_PRD;

    /* Switch: '<S204>/Switch1' */
    mcb_pmsm_foc_I2C_f28379d_orig_B.Switch1_jv[2] = Scale_to_PWM_Counter_PRD;
  } else {
    /* Switch: '<S204>/Switch1' incorporates:
     *  Constant: '<S204>/stop'
     */
    mcb_pmsm_foc_I2C_f28379d_orig_B.Switch1_jv[0] = 0U;
    mcb_pmsm_foc_I2C_f28379d_orig_B.Switch1_jv[1] = 0U;
    mcb_pmsm_foc_I2C_f28379d_orig_B.Switch1_jv[2] = 0U;
  }

  /* End of Switch: '<S204>/Switch1' */

  /* S-Function (c2802xpwm): '<S204>/ePWM1' */

  /*-- Update CMPA value for ePWM1 --*/
  {
    EPwm1Regs.CMPA.bit.CMPA = (uint16_T)
      (mcb_pmsm_foc_I2C_f28379d_orig_B.Switch1_jv[0]);
  }

  /* S-Function (c2802xpwm): '<S204>/ePWM2' */

  /*-- Update CMPA value for ePWM2 --*/
  {
    EPwm2Regs.CMPA.bit.CMPA = (uint16_T)
      (mcb_pmsm_foc_I2C_f28379d_orig_B.Switch1_jv[1]);
  }

  /* S-Function (c2802xpwm): '<S204>/ePWM3' */

  /*-- Update CMPA value for ePWM3 --*/
  {
    EPwm3Regs.CMPA.bit.CMPA = (uint16_T)
      (mcb_pmsm_foc_I2C_f28379d_orig_B.Switch1_jv[2]);
  }

  /* SignalConversion generated from: '<S4>/Vdq_ref' */
  mcb_pmsm_foc_I2C_f28379d_orig_B.OutportBufferForVdq_ref[0] =
    mcb_pmsm_foc_I2C_f28379d_orig_B.Merge_i[0];
  mcb_pmsm_foc_I2C_f28379d_orig_B.OutportBufferForVdq_ref[1] =
    mcb_pmsm_foc_I2C_f28379d_orig_B.Merge_i[1];

  /* Update for UnitDelay: '<S211>/Output' */
  mcb_pmsm_foc_I2C_f28379d_ori_DW.Output_DSTATE =
    mcb_pmsm_foc_I2C_f28379d_orig_B.FixPtSwitch;

  /* Update for Delay: '<S185>/Delay' */
  mcb_pmsm_foc_I2C_f28379d_ori_DW.Delay_DSTATE_p[mcb_pmsm_foc_I2C_f28379d_ori_DW.CircBufIdx]
    = mcb_pmsm_foc_I2C_f28379d_orig_B.PositionToCount;
  if (mcb_pmsm_foc_I2C_f28379d_ori_DW.CircBufIdx < 19U) {
    mcb_pmsm_foc_I2C_f28379d_ori_DW.CircBufIdx++;
  } else {
    mcb_pmsm_foc_I2C_f28379d_ori_DW.CircBufIdx = 0U;
  }

  /* End of Update for Delay: '<S185>/Delay' */

  /* Update for UnitDelay: '<S191>/Unit Delay' */
  mcb_pmsm_foc_I2C_f28379d_ori_DW.UnitDelay_DSTATE =
    mcb_pmsm_foc_I2C_f28379d_orig_B.Add1;

  /* Update for DiscreteIntegrator: '<S139>/Integrator' */
  mcb_pmsm_foc_I2C_f28379d_ori_DW.Integrator_DSTATE +=
    mcb_pmsm_foc_I2C_f28379d_orig_B.Switch_a;
  mcb_pmsm_foc_I2C_f28379d_ori_DW.Integrator_PrevResetState = (int16_T)
    mcb_pmsm_foc_I2C_f28379d_orig_B.LogicalOperator;

  /* Update for DiscreteIntegrator: '<S88>/Integrator' */
  mcb_pmsm_foc_I2C_f28379d_ori_DW.Integrator_DSTATE_o +=
    mcb_pmsm_foc_I2C_f28379d_orig_B.Switch_f;
  mcb_pmsm_foc_I2C_f28379d_ori_DW.Integrator_PrevResetState_k = (int16_T)
    mcb_pmsm_foc_I2C_f28379d_orig_B.LogicalOperator_a;

  /* Update for Delay: '<S181>/Delay' */
  mcb_pmsm_foc_I2C_f28379d_ori_DW.Delay_DSTATE =
    mcb_pmsm_foc_I2C_f28379d_orig_B.RT4;
}

/* System initialize for atomic system: */
void mcb__SPIMasterTransfer_Init(DW_SPIMasterTransfer_mcb_pmsm_T *localDW)
{
  uint32_T SPIPinsLoc;

  /* Start for MATLABSystem: '<S235>/SPI Master Transfer' */
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
void mcb_pmsm__SPIMasterTransfer(uint16_T rtu_0, B_SPIMasterTransfer_mcb_pmsm__T
  *localB, DW_SPIMasterTransfer_mcb_pmsm_T *localDW)
{
  uint16_T rdDataRaw;
  uint16_T status;

  /* MATLABSystem: '<S235>/SPI Master Transfer' */
  MW_SPI_SetSlaveSelect(localDW->obj.MW_SPI_HANDLE, 0U, true);
  status = MW_SPI_SetFormat(localDW->obj.MW_SPI_HANDLE, 16U, MW_SPI_MODE_0,
    MW_SPI_MOST_SIGNIFICANT_BIT_FIRST);
  if (status == 0U) {
    MW_SPI_MasterWriteRead_8bits(localDW->obj.MW_SPI_HANDLE, &rtu_0, &rdDataRaw,
      1UL);
  }

  /* MATLABSystem: '<S235>/SPI Master Transfer' */
  localB->SPIMasterTransfer = rdDataRaw;
}

/* Termination for atomic system: */
void mcb__SPIMasterTransfer_Term(DW_SPIMasterTransfer_mcb_pmsm_T *localDW)
{
  uint32_T SPIPinsLoc;

  /* Terminate for MATLABSystem: '<S235>/SPI Master Transfer' */
  if (!localDW->obj.matlabCodegenIsDeleted) {
    localDW->obj.matlabCodegenIsDeleted = true;
    if ((localDW->obj.isInitialized == 1L) && localDW->obj.isSetupComplete) {
      SPIPinsLoc = MW_UNDEFINED_VALUE;
      MW_SPI_Close(localDW->obj.MW_SPI_HANDLE, SPIPinsLoc, SPIPinsLoc,
                   SPIPinsLoc, MW_UNDEFINED_VALUE);
    }
  }

  /* End of Terminate for MATLABSystem: '<S235>/SPI Master Transfer' */
}

/* System initialize for atomic system: '<Root>/Speed Control' */
void mcb_pmsm__SpeedControl_Init(B_SpeedControl_mcb_pmsm_foc_I_T *localB,
  DW_SpeedControl_mcb_pmsm_foc__T *localDW)
{
  /* Start for Constant: '<S245>/Ki2' */
  localB->Ki2 = 0.0F;

  /* InitializeConditions for DiscreteIntegrator: '<S282>/Integrator' */
  localDW->Integrator_DSTATE = 0.0F;
  localDW->Integrator_PrevResetState = 0;
}

/* Output and update for atomic system: '<Root>/Speed Control' */
void mcb_pmsm_foc_I_SpeedControl(real32_T rtu_Speed_Ref_PU, real32_T
  rtu_Speed_Meas_PU, const boolean_T *rtd_Enable,
  B_SpeedControl_mcb_pmsm_foc_I_T *localB, DW_SpeedControl_mcb_pmsm_foc__T
  *localDW)
{
  real32_T u0;

  /* Constant: '<S10>/Id_ref' */
  localB->Id_ref = 0.0F;

  /* DataStoreRead: '<S245>/Data Store Read1' */
  localB->DataStoreRead1 = *rtd_Enable;

  /* DataStoreRead: '<S246>/Data Store Read1' */
  localB->DataStoreRead1_k = *rtd_Enable;

  /* Switch: '<S246>/Switch' */
  if (localB->DataStoreRead1_k) {
    /* Switch: '<S246>/Switch' */
    localB->Switch = rtu_Speed_Ref_PU;
  } else {
    /* Switch: '<S246>/Switch' */
    localB->Switch = rtu_Speed_Meas_PU;
  }

  /* End of Switch: '<S246>/Switch' */

  /* Product: '<S301>/Product' incorporates:
   *  Constant: '<S301>/Filter_Constant'
   */
  localB->Product = localB->Switch * 0.1F;

  /* UnitDelay: '<S301>/Unit Delay' */
  localB->UnitDelay = localDW->UnitDelay_DSTATE;

  /* Product: '<S301>/Product1' incorporates:
   *  Constant: '<S301>/One'
   */
  localB->Product1 = 0.9F * localB->UnitDelay;

  /* Sum: '<S301>/Add1' */
  localB->Add1 = localB->Product + localB->Product1;

  /* Sum: '<S245>/Sum' */
  localB->Sum = localB->Add1 - rtu_Speed_Meas_PU;

  /* Product: '<S287>/PProd Out' incorporates:
   *  Constant: '<S245>/Kp1'
   */
  localB->PProdOut = localB->Sum * 4.0F;

  /* Logic: '<S245>/Logical Operator' */
  localB->LogicalOperator = !localB->DataStoreRead1;

  /* Constant: '<S245>/Ki2' */
  localB->Ki2 = 0.0F;

  /* DiscreteIntegrator: '<S282>/Integrator' */
  if (localB->LogicalOperator || (localDW->Integrator_PrevResetState != 0)) {
    localDW->Integrator_DSTATE = 0.0F;
  }

  /* DiscreteIntegrator: '<S282>/Integrator' */
  localB->Integrator = localDW->Integrator_DSTATE;

  /* Sum: '<S291>/Sum' */
  localB->Sum_c = localB->PProdOut + localB->Integrator;

  /* DeadZone: '<S275>/DeadZone' */
  if (localB->Sum_c > 1.0F) {
    /* DeadZone: '<S275>/DeadZone' */
    localB->DeadZone = localB->Sum_c - 1.0F;
  } else if (localB->Sum_c >= -1.0F) {
    /* DeadZone: '<S275>/DeadZone' */
    localB->DeadZone = 0.0F;
  } else {
    /* DeadZone: '<S275>/DeadZone' */
    localB->DeadZone = localB->Sum_c - -1.0F;
  }

  /* End of DeadZone: '<S275>/DeadZone' */

  /* RelationalOperator: '<S273>/Relational Operator' incorporates:
   *  Constant: '<S273>/Clamping_zero'
   */
  localB->RelationalOperator = (localB->DeadZone != 0.0F);

  /* RelationalOperator: '<S273>/fix for DT propagation issue' incorporates:
   *  Constant: '<S273>/Clamping_zero'
   */
  localB->fixforDTpropagationissue = (localB->DeadZone > 0.0F);

  /* Switch: '<S273>/Switch1' */
  if (localB->fixforDTpropagationissue) {
    /* Switch: '<S273>/Switch1' incorporates:
     *  Constant: '<S273>/Constant'
     */
    localB->Switch1 = 1;
  } else {
    /* Switch: '<S273>/Switch1' incorporates:
     *  Constant: '<S273>/Constant2'
     */
    localB->Switch1 = -1;
  }

  /* End of Switch: '<S273>/Switch1' */

  /* Product: '<S279>/IProd Out' incorporates:
   *  Constant: '<S245>/Ki1'
   */
  localB->IProdOut = localB->Sum * 7.5E-5F;

  /* RelationalOperator: '<S273>/fix for DT propagation issue1' incorporates:
   *  Constant: '<S273>/Clamping_zero'
   */
  localB->fixforDTpropagationissue1 = (localB->IProdOut > 0.0F);

  /* Switch: '<S273>/Switch2' */
  if (localB->fixforDTpropagationissue1) {
    /* Switch: '<S273>/Switch2' incorporates:
     *  Constant: '<S273>/Constant3'
     */
    localB->Switch2 = 1;
  } else {
    /* Switch: '<S273>/Switch2' incorporates:
     *  Constant: '<S273>/Constant4'
     */
    localB->Switch2 = -1;
  }

  /* End of Switch: '<S273>/Switch2' */

  /* RelationalOperator: '<S273>/Equal1' incorporates:
   *  Switch: '<S273>/Switch1'
   *  Switch: '<S273>/Switch2'
   */
  localB->Equal1 = (localB->Switch1 == localB->Switch2);

  /* Logic: '<S273>/AND3' */
  localB->AND3 = (localB->RelationalOperator && localB->Equal1);

  /* Switch: '<S273>/Switch' */
  if (localB->AND3) {
    /* Switch: '<S273>/Switch' incorporates:
     *  Constant: '<S273>/Constant1'
     */
    localB->Switch_d = 0.0F;
  } else {
    /* Switch: '<S273>/Switch' */
    localB->Switch_d = localB->IProdOut;
  }

  /* End of Switch: '<S273>/Switch' */

  /* Saturate: '<S289>/Saturation' */
  u0 = localB->Sum_c;
  if (u0 > 1.0F) {
    /* Saturate: '<S289>/Saturation' */
    localB->Saturation = 1.0F;
  } else if (u0 < -1.0F) {
    /* Saturate: '<S289>/Saturation' */
    localB->Saturation = -1.0F;
  } else {
    /* Saturate: '<S289>/Saturation' */
    localB->Saturation = u0;
  }

  /* End of Saturate: '<S289>/Saturation' */

  /* Update for UnitDelay: '<S301>/Unit Delay' */
  localDW->UnitDelay_DSTATE = localB->Add1;

  /* Update for DiscreteIntegrator: '<S282>/Integrator' */
  localDW->Integrator_DSTATE += localB->Switch_d;
  localDW->Integrator_PrevResetState = (int16_T)localB->LogicalOperator;
}

/* Model step function for TID0 */
void mcb_pmsm_foc_I2C_f28379d_origin_step0(void) /* Sample time: [0.0005s, 0.0s] */
{
  {                                    /* Sample time: [0.0005s, 0.0s] */
    rate_monotonic_scheduler();
  }

  /* DataStoreRead: '<S1>/Data Store Read' */
  mcb_pmsm_foc_I2C_f28379d_orig_B.DataStoreRead_g =
    mcb_pmsm_foc_I2C_f28379d_ori_DW.Enable_I2C;

  /* RateTransition: '<Root>/RT1' */
  mcb_pmsm_foc_I2C_f28379d_ori_DW.RT1_semaphoreTaken =
    mcb_pmsm_foc_I2C_f28379d_ori_DW.RT1_ActiveBufIdx;

  /* RateTransition: '<Root>/RT1' */
  mcb_pmsm_foc_I2C_f28379d_orig_B.RT1 =
    mcb_pmsm_foc_I2C_f28379d_ori_DW.RT1_Buffer[mcb_pmsm_foc_I2C_f28379d_ori_DW.RT1_semaphoreTaken];

  /* RateTransition: '<Root>/RT13' */
  mcb_pmsm_foc_I2C_f28379d_orig_B.RT13 =
    mcb_pmsm_foc_I2C_f28379d_orig_B.CastToSingle1_m;

  /* RateTransition: '<Root>/RT3' */
  mcb_pmsm_foc_I2C_f28379d_orig_B.RT3 =
    mcb_pmsm_foc_I2C_f28379d_ori_DW.RT3_Buffer[mcb_pmsm_foc_I2C_f28379d_ori_DW.RT3_ActiveBufIdx];

  /* Outputs for Atomic SubSystem: '<Root>/Speed Control' */
  mcb_pmsm_foc_I_SpeedControl(mcb_pmsm_foc_I2C_f28379d_orig_B.RT3,
    mcb_pmsm_foc_I2C_f28379d_orig_B.RT1, &mcb_pmsm_foc_I2C_f28379d_ori_DW.Enable,
    &mcb_pmsm_foc_I2C_f28379d_orig_B.SpeedControl,
    &mcb_pmsm_foc_I2C_f28379d_ori_DW.SpeedControl);

  /* End of Outputs for SubSystem: '<Root>/Speed Control' */

  /* RateTransition: '<Root>/RT2' */
  mcb_pmsm_foc_I2C_f28379d_ori_DW.RT2_Buffer
    [(mcb_pmsm_foc_I2C_f28379d_ori_DW.RT2_ActiveBufIdx == 0) << 1U] =
    mcb_pmsm_foc_I2C_f28379d_orig_B.SpeedControl.Id_ref;
  mcb_pmsm_foc_I2C_f28379d_ori_DW.RT2_Buffer[1 +
    ((mcb_pmsm_foc_I2C_f28379d_ori_DW.RT2_ActiveBufIdx == 0) << 1U)] =
    mcb_pmsm_foc_I2C_f28379d_orig_B.SpeedControl.Saturation;
  mcb_pmsm_foc_I2C_f28379d_ori_DW.RT2_ActiveBufIdx =
    (mcb_pmsm_foc_I2C_f28379d_ori_DW.RT2_ActiveBufIdx == 0);

  /* RateTransition: '<Root>/RT7' */
  mcb_pmsm_foc_I2C_f28379d_orig_B.RT7 = mcb_pmsm_foc_I2C_f28379d_orig_B.Gain_f;
}

/* Model step function for TID1 */
void mcb_pmsm_foc_I2C_f28379d_origin_step1(void) /* Sample time: [0.001s, 0.0s] */
{
  /* RateTransition: '<S1>/RT4' */
  mcb_pmsm_foc_I2C_f28379d_orig_B.RT4_h =
    mcb_pmsm_foc_I2C_f28379d_orig_B.DataStoreRead_g;

  /* Outputs for Enabled SubSystem: '<S1>/Data Read' incorporates:
   *  EnablePort: '<S11>/Enable'
   */
  if (mcb_pmsm_foc_I2C_f28379d_orig_B.RT4_h) {
    /* S-Function (c280xi2c_rx): '<S11>/I2C Receive' incorporates:
     *  Constant: '<S11>/Register Address'
     */
    {
      int rx_loop= 0;
      I2caRegs.I2CSAR.bit.SAR = (uint16_T)(54U);
      I2caRegs.I2CCNT= 2;              /* Set data length */

      /* mode:1 (1:Controller 0:Peripheral)  Addressing mode:0 (1:10-bit 0:7-bit)
         free data mode:0 (1:enbaled 0:disabled) digital loopback mode:0 (1:enabled 0:disabled)
         bit count:0 (0:8bit) NACK mode:0 (1:enabled 0: disabled) stop condition:1 (1:enabled 0: disabled)*/
      I2caRegs.I2CMDR.all = 27680;
      rx_loop= 0;
      while (I2caRegs.I2CFFRX.bit.RXFFST==0 && rx_loop<10000)
        rx_loop++;
      if (rx_loop!=10000) {
        mcb_pmsm_foc_I2C_f28379d_orig_B.I2CReceive_o1[0] =
          I2caRegs.I2CDRR.bit.DATA;
        mcb_pmsm_foc_I2C_f28379d_orig_B.I2CReceive_o2 = I2caRegs.I2CSTR.all;/* output i2c status */
      } else
        mcb_pmsm_foc_I2C_f28379d_orig_B.I2CReceive_o2 = I2caRegs.I2CSTR.all |
          0x40;                        /* output receive data loss status */
      rx_loop= 0;
      while (I2caRegs.I2CFFRX.bit.RXFFST==0 && rx_loop<10000)
        rx_loop++;
      if (rx_loop!=10000) {
        mcb_pmsm_foc_I2C_f28379d_orig_B.I2CReceive_o1[1] =
          I2caRegs.I2CDRR.bit.DATA;
        mcb_pmsm_foc_I2C_f28379d_orig_B.I2CReceive_o2 = I2caRegs.I2CSTR.all;/* output i2c status */
      } else
        mcb_pmsm_foc_I2C_f28379d_orig_B.I2CReceive_o2 = I2caRegs.I2CSTR.all |
          0x40;                        /* output receive data loss status */
    }

    /* S-Function (c280xi2c_tx): '<S11>/I2C Transmit' incorporates:
     *  Constant: '<S11>/Data Read Adress'
     *  Constant: '<S11>/Register Address'
     */
    {
      int unsigned tx_loop= 0;
      I2caRegs.I2CFFTX.bit.TXFFIENA = 0;/* Disable Tx Fifo interrupt*/
      while (I2caRegs.I2CFFTX.bit.TXFFST!=0 && tx_loop<10000 )
        tx_loop++;
      if (tx_loop!=10000) {
        I2caRegs.I2CSAR.bit.SAR = (54U);
        I2caRegs.I2CCNT= 1;            /* Set data length */

        /* mode:1 (1:Controller 0:Peripheral)  Addressing mode:0 (1:10-bit 0:7-bit)
           free data mode:0 (1:enbaled 0:disabled) digital loopback mode:0 (1:enabled 0:disabled)
           bit count:0 (0:8bit) stop condition:0 (1:enabled 0: disabled)*/
        I2caRegs.I2CMDR.all = 26144;
        tx_loop= 0;
        while (I2caRegs.I2CFFTX.bit.TXFFST==16 && tx_loop<10000)
          tx_loop++;
        if (tx_loop!=10000) {
          I2caRegs.I2CDXR.bit.DATA = (uint8_T)(14U);
          mcb_pmsm_foc_I2C_f28379d_orig_B.I2CTransmit = I2caRegs.I2CSTR.all;/* output i2c status */
        } else
          mcb_pmsm_foc_I2C_f28379d_orig_B.I2CTransmit = I2caRegs.I2CSTR.all |
            0x40;                      /* output transmit data loss status */
      } else
        mcb_pmsm_foc_I2C_f28379d_orig_B.I2CTransmit = I2caRegs.I2CSTR.all | 0x80;/* output transmit data loss status */
      I2caRegs.I2CFFTX.bit.TXFFIENA = 1;/* Enable Tx Fifo interrupt*/
      I2caRegs.I2CFFTX.bit.TXFFINTCLR = 1;/* Clear Tx interrupt flag*/
    }
  }

  /* End of Outputs for SubSystem: '<S1>/Data Read' */

  /* MATLAB Function: '<S12>/MATLAB Function' incorporates:
   *  S-Function (c280xi2c_rx): '<S11>/I2C Receive'
   */
  /* MATLAB Function 'AS5600 Read/Data Realignment /MATLAB Function': '<S14>:1' */
  /* '<S14>:1:5' */
  /* '<S14>:1:6' */
  /* '<S14>:1:9' */
  mcb_pmsm_foc_I2C_f28379d_orig_B.raw_angle =
    (mcb_pmsm_foc_I2C_f28379d_orig_B.I2CReceive_o1[0] << 8U) +
    mcb_pmsm_foc_I2C_f28379d_orig_B.I2CReceive_o1[1];

  /* DataTypeConversion: '<S12>/Cast To Single1' */
  mcb_pmsm_foc_I2C_f28379d_orig_B.CastToSingle1 =
    mcb_pmsm_foc_I2C_f28379d_orig_B.raw_angle;

  /* Gain: '<S12>/Gain' */
  mcb_pmsm_foc_I2C_f28379d_orig_B.Gain_f = 0.000244140625F *
    mcb_pmsm_foc_I2C_f28379d_orig_B.CastToSingle1;

  /* S-Function (c280xcanrcv): '<S2>/CAN Receive' */
  {
    unsigned char ucRXMsgData[8]= { 0, 0, 0, 0, 0, 0, 0, 0 };

    uint16_T status = 0;
    CAN_MsgFrameType frameType;
    uint32_T messageID = 0;
    uint32_T reqNewDataRegValue = (((uint32_T)0x1)<<2);
    uint32_T newDataReg = CAN_getNewDataFlags(CANB_BASE) & reqNewDataRegValue;
    if (newDataReg == reqNewDataRegValue) {
      status = CAN_readMessageWithID(CANB_BASE, 3, &frameType, &messageID,
        (uint16_T*)ucRXMsgData);
    }

    if ((newDataReg == reqNewDataRegValue)&&(status > 0)) {
      mcb_pmsm_foc_I2C_f28379d_orig_B.CANReceive_o2.Extended = frameType;
      mcb_pmsm_foc_I2C_f28379d_orig_B.CANReceive_o2.Length = ((HWREG(CANB_BASE +
        CAN_O_IF2MCTL)) & CAN_IF2MCTL_DLC_M);
      mcb_pmsm_foc_I2C_f28379d_orig_B.CANReceive_o2.ID = messageID;
      mcb_pmsm_foc_I2C_f28379d_orig_B.CANReceive_o2.Data[0] = ucRXMsgData[0];
      mcb_pmsm_foc_I2C_f28379d_orig_B.CANReceive_o2.Data[1] = ucRXMsgData[1];
      mcb_pmsm_foc_I2C_f28379d_orig_B.CANReceive_o2.Data[2] = ucRXMsgData[2];
      mcb_pmsm_foc_I2C_f28379d_orig_B.CANReceive_o2.Data[3] = ucRXMsgData[3];
      mcb_pmsm_foc_I2C_f28379d_orig_B.CANReceive_o2.Data[4] = ucRXMsgData[4];
      mcb_pmsm_foc_I2C_f28379d_orig_B.CANReceive_o2.Data[5] = ucRXMsgData[5];
      mcb_pmsm_foc_I2C_f28379d_orig_B.CANReceive_o2.Data[6] = ucRXMsgData[6];
      mcb_pmsm_foc_I2C_f28379d_orig_B.CANReceive_o2.Data[7] = ucRXMsgData[7];

      /* -- Call CAN RX Fcn-Call_0 -- */

      /* Output and update for function-call system: '<S2>/Subsystem2' */

      /* S-Function (scanunpack): '<S17>/CAN Unpack' */
      {
        /* S-Function (scanunpack): '<S17>/CAN Unpack' */
        if ((8 == mcb_pmsm_foc_I2C_f28379d_orig_B.CANReceive_o2.Length) &&
            (mcb_pmsm_foc_I2C_f28379d_orig_B.CANReceive_o2.ID != INVALID_CAN_ID)
            ) {
          if ((257 == mcb_pmsm_foc_I2C_f28379d_orig_B.CANReceive_o2.ID) && (0U ==
               mcb_pmsm_foc_I2C_f28379d_orig_B.CANReceive_o2.Extended) ) {
            {
              /* --------------- START Unpacking signal 0 ------------------
               *  startBit                = 24
               *  length                  = 32
               *  desiredSignalByteLayout = BIGENDIAN
               *  dataType                = SINGLE
               *  factor                  = 1.0
               *  offset                  = 0.0
               * -----------------------------------------------------------------------*/
              {
                real_T outValue = 0;

                {
                  uint32_T unpackedValue = 0;
                  real32_T typeUnpackedValue;
                  real32_T* pInput;

                  {
                    uint32_T tempValue = (uint32_T) (0);

                    {
                      tempValue = tempValue | (uint32_T)
                        (mcb_pmsm_foc_I2C_f28379d_orig_B.CANReceive_o2.Data[3]);
                      tempValue = tempValue | (uint32_T)((uint32_T)
                        (mcb_pmsm_foc_I2C_f28379d_orig_B.CANReceive_o2.Data[2]) <<
                        8);
                      tempValue = tempValue | (uint32_T)((uint32_T)
                        (mcb_pmsm_foc_I2C_f28379d_orig_B.CANReceive_o2.Data[1]) <<
                        16);
                      tempValue = tempValue | (uint32_T)((uint32_T)
                        (mcb_pmsm_foc_I2C_f28379d_orig_B.CANReceive_o2.Data[0]) <<
                        24);
                    }

                    unpackedValue = tempValue;
                  }

                  pInput = (real32_T*) (&unpackedValue);
                  typeUnpackedValue = *pInput;
                  outValue = (real_T) (typeUnpackedValue);
                }

                {
                  real_T result = (real_T) outValue;
                  mcb_pmsm_foc_I2C_f28379d_orig_B.CANUnpack_o1 = result;
                }
              }

              /* --------------- START Unpacking signal 1 ------------------
               *  startBit                = 32
               *  length                  = 32
               *  desiredSignalByteLayout = LITTLEENDIAN
               *  dataType                = SINGLE
               *  factor                  = 1.0
               *  offset                  = 0.0
               * -----------------------------------------------------------------------*/
              {
                real_T outValue = 0;

                {
                  uint32_T unpackedValue = 0;
                  real32_T typeUnpackedValue;
                  real32_T* pInput;

                  {
                    uint32_T tempValue = (uint32_T) (0);

                    {
                      tempValue = tempValue | (uint32_T)
                        (mcb_pmsm_foc_I2C_f28379d_orig_B.CANReceive_o2.Data[4]);
                      tempValue = tempValue | (uint32_T)((uint32_T)
                        (mcb_pmsm_foc_I2C_f28379d_orig_B.CANReceive_o2.Data[5]) <<
                        8);
                      tempValue = tempValue | (uint32_T)((uint32_T)
                        (mcb_pmsm_foc_I2C_f28379d_orig_B.CANReceive_o2.Data[6]) <<
                        16);
                      tempValue = tempValue | (uint32_T)((uint32_T)
                        (mcb_pmsm_foc_I2C_f28379d_orig_B.CANReceive_o2.Data[7]) <<
                        24);
                    }

                    unpackedValue = tempValue;
                  }

                  pInput = (real32_T*) (&unpackedValue);
                  typeUnpackedValue = *pInput;
                  outValue = (real_T) (typeUnpackedValue);
                }

                {
                  real_T result = (real_T) outValue;
                  mcb_pmsm_foc_I2C_f28379d_orig_B.CANUnpack_o2 = result;
                }
              }
            }
          }
        }
      }

      /* Gain: '<S17>/Gain' */
      mcb_pmsm_foc_I2C_f28379d_orig_B.Gain = 0.00045745654162854531 *
        mcb_pmsm_foc_I2C_f28379d_orig_B.CANUnpack_o2;

      /* DataTypeConversion: '<S17>/Cast To Single' */
      mcb_pmsm_foc_I2C_f28379d_orig_B.CastToSingle = (real32_T)
        mcb_pmsm_foc_I2C_f28379d_orig_B.Gain;

      /* DataStoreWrite: '<S17>/Data Store Write1' */
      mcb_pmsm_foc_I2C_f28379d_ori_DW.SpeedRef =
        mcb_pmsm_foc_I2C_f28379d_orig_B.CastToSingle;

      /* Gain: '<S17>/Gain2' */
      mcb_pmsm_foc_I2C_f28379d_orig_B.Gain2 = 0.0027777777777777779 *
        mcb_pmsm_foc_I2C_f28379d_orig_B.CANUnpack_o1;

      /* DataTypeConversion: '<S17>/Cast To Single1' */
      mcb_pmsm_foc_I2C_f28379d_orig_B.CastToSingle1_m = (real32_T)
        mcb_pmsm_foc_I2C_f28379d_orig_B.Gain2;

      /* DataStoreWrite: '<S17>/Data Store Write2' */
      mcb_pmsm_foc_I2C_f28379d_ori_DW.PosRef =
        mcb_pmsm_foc_I2C_f28379d_orig_B.CastToSingle1_m;

      /* UnitDelay: '<S18>/Unit Delay' */
      mcb_pmsm_foc_I2C_f28379d_orig_B.UnitDelay_l =
        mcb_pmsm_foc_I2C_f28379d_ori_DW.UnitDelay_DSTATE_l;

      /* RelationalOperator: '<S18>/Relational Operator' */
      mcb_pmsm_foc_I2C_f28379d_orig_B.RelationalOperator_b =
        (mcb_pmsm_foc_I2C_f28379d_orig_B.CastToSingle1_m !=
         mcb_pmsm_foc_I2C_f28379d_orig_B.UnitDelay_l);

      /* UnitDelay: '<S18>/Unit Delay1' */
      mcb_pmsm_foc_I2C_f28379d_orig_B.UnitDelay1 =
        mcb_pmsm_foc_I2C_f28379d_ori_DW.UnitDelay1_DSTATE;

      /* RelationalOperator: '<S18>/Relational Operator1' */
      mcb_pmsm_foc_I2C_f28379d_orig_B.RelationalOperator1 =
        (mcb_pmsm_foc_I2C_f28379d_orig_B.CastToSingle !=
         mcb_pmsm_foc_I2C_f28379d_orig_B.UnitDelay1);

      /* Logic: '<S18>/Logical Operator' */
      mcb_pmsm_foc_I2C_f28379d_orig_B.LogicalOperator_g =
        (mcb_pmsm_foc_I2C_f28379d_orig_B.RelationalOperator_b ||
         mcb_pmsm_foc_I2C_f28379d_orig_B.RelationalOperator1);

      /* Outputs for Enabled SubSystem: '<S17>/Subsystem' incorporates:
       *  EnablePort: '<S19>/Enable'
       */
      if (mcb_pmsm_foc_I2C_f28379d_orig_B.LogicalOperator_g) {
        /* DataStoreWrite: '<S19>/Data Store Write3' */
        mcb_pmsm_foc_I2C_f28379d_ori_DW.ERR =
          mcb_pmsm_foc_I2C_f28379d_ConstB.CastToBoolean;
      }

      /* End of Outputs for SubSystem: '<S17>/Subsystem' */

      /* Update for UnitDelay: '<S18>/Unit Delay' */
      mcb_pmsm_foc_I2C_f28379d_ori_DW.UnitDelay_DSTATE_l =
        mcb_pmsm_foc_I2C_f28379d_orig_B.CastToSingle1_m;

      /* Update for UnitDelay: '<S18>/Unit Delay1' */
      mcb_pmsm_foc_I2C_f28379d_ori_DW.UnitDelay1_DSTATE =
        mcb_pmsm_foc_I2C_f28379d_orig_B.CastToSingle;
    }
  }

  /* End of Outputs for S-Function (c280xcanrcv): '<S2>/CAN Receive' */

  /* RateTransition: '<Root>/RT4' */
  mcb_pmsm_foc_I2C_f28379d_ori_DW.RT4_Buffer[mcb_pmsm_foc_I2C_f28379d_ori_DW.RT4_ActiveBufIdx
    == 0] = mcb_pmsm_foc_I2C_f28379d_orig_B.Gain_f;
  mcb_pmsm_foc_I2C_f28379d_ori_DW.RT4_ActiveBufIdx =
    (mcb_pmsm_foc_I2C_f28379d_ori_DW.RT4_ActiveBufIdx == 0);

  /* RateTransition: '<Root>/RT8' */
  if (mcb_pmsm_foc_I2C_f28379d_ori_DW.RT8_semaphoreTaken == 0) {
    mcb_pmsm_foc_I2C_f28379d_ori_DW.RT8_Buffer0 =
      mcb_pmsm_foc_I2C_f28379d_orig_B.Gain_f;
  }

  /* End of RateTransition: '<Root>/RT8' */

  /* RateTransition: '<Root>/RT9' */
  if (mcb_pmsm_foc_I2C_f28379d_ori_DW.RT9_semaphoreTaken == 0) {
    mcb_pmsm_foc_I2C_f28379d_ori_DW.RT9_Buffer0 =
      mcb_pmsm_foc_I2C_f28379d_orig_B.CastToSingle;
  }

  /* End of RateTransition: '<Root>/RT9' */
}

/* Model step function for TID2 */
void mcb_pmsm_foc_I2C_f28379d_origin_step2(void) /* Sample time: [0.015s, 0.0s] */
{
  /* UnitDelay: '<S1>/Unit Delay' */
  mcb_pmsm_foc_I2C_f28379d_orig_B.UnitDelay_l4 =
    mcb_pmsm_foc_I2C_f28379d_ori_DW.UnitDelay_DSTATE_f;

  /* DataStoreWrite: '<S1>/Data Store Write' */
  mcb_pmsm_foc_I2C_f28379d_ori_DW.Enable_I2C =
    mcb_pmsm_foc_I2C_f28379d_orig_B.UnitDelay_l4;

  /* Logic: '<S1>/Logical Operator2' */
  mcb_pmsm_foc_I2C_f28379d_orig_B.LogicalOperator2 =
    !mcb_pmsm_foc_I2C_f28379d_orig_B.UnitDelay_l4;

  /* Outputs for Enabled SubSystem: '<S1>/Initialization' incorporates:
   *  EnablePort: '<S13>/Enable'
   */
  if (mcb_pmsm_foc_I2C_f28379d_orig_B.LogicalOperator2) {
    /* S-Function (fcgen): '<S13>/Function-Call Generator' incorporates:
     *  SubSystem: '<S13>/Address - Data read'
     */
    /* S-Function (c280xi2c_tx): '<S15>/I2C Transmit1' incorporates:
     *  Constant: '<S15>/Data read address'
     *  Constant: '<S15>/Register Address'
     */
    {
      int unsigned tx_loop= 0;
      I2caRegs.I2CFFTX.bit.TXFFIENA = 0;/* Disable Tx Fifo interrupt*/
      while (I2caRegs.I2CFFTX.bit.TXFFST!=0 && tx_loop<10000 )
        tx_loop++;
      if (tx_loop!=10000) {
        I2caRegs.I2CSAR.bit.SAR = (54U);
        I2caRegs.I2CCNT= 1;            /* Set data length */

        /* mode:1 (1:Controller 0:Peripheral)  Addressing mode:0 (1:10-bit 0:7-bit)
           free data mode:0 (1:enbaled 0:disabled) digital loopback mode:0 (1:enabled 0:disabled)
           bit count:0 (0:8bit) stop condition:0 (1:enabled 0: disabled)*/
        I2caRegs.I2CMDR.all = 26144;
        tx_loop= 0;
        while (I2caRegs.I2CFFTX.bit.TXFFST==16 && tx_loop<10000)
          tx_loop++;
        if (tx_loop!=10000) {
          I2caRegs.I2CDXR.bit.DATA = (uint8_T)(14U);
          mcb_pmsm_foc_I2C_f28379d_orig_B.I2CTransmit1 = I2caRegs.I2CSTR.all;/* output i2c status */
        } else
          mcb_pmsm_foc_I2C_f28379d_orig_B.I2CTransmit1 = I2caRegs.I2CSTR.all |
            0x40;                      /* output transmit data loss status */
      } else
        mcb_pmsm_foc_I2C_f28379d_orig_B.I2CTransmit1 = I2caRegs.I2CSTR.all |
          0x80;                        /* output transmit data loss status */
      I2caRegs.I2CFFTX.bit.TXFFIENA = 1;/* Enable Tx Fifo interrupt*/
      I2caRegs.I2CFFTX.bit.TXFFINTCLR = 1;/* Clear Tx interrupt flag*/
    }

    /* S-Function (fcgen): '<S13>/Function-Call Generator' incorporates:
     *  SubSystem: '<S13>/Delay 1ms'
     */
    mcb_pmsm_foc_I2C_f_Delay1ms();

    /* End of Outputs for S-Function (fcgen): '<S13>/Function-Call Generator' */
  }

  /* End of Outputs for SubSystem: '<S1>/Initialization' */

  /* Update for UnitDelay: '<S1>/Unit Delay' incorporates:
   *  Constant: '<S1>/InitTrigger'
   */
  mcb_pmsm_foc_I2C_f28379d_ori_DW.UnitDelay_DSTATE_f = true;
}

/* Model step function for TID3 */
void mcb_pmsm_foc_I2C_f28379d_origin_step3(void) /* Sample time: [0.1s, 0.0s] */
{
  int16_T tmp;

  /* RateTransition: '<Root>/RT8' */
  mcb_pmsm_foc_I2C_f28379d_ori_DW.RT8_semaphoreTaken = 1;

  /* RateTransition: '<Root>/RT8' */
  mcb_pmsm_foc_I2C_f28379d_orig_B.RT8 =
    mcb_pmsm_foc_I2C_f28379d_ori_DW.RT8_Buffer0;

  /* RateTransition: '<Root>/RT8' */
  mcb_pmsm_foc_I2C_f28379d_ori_DW.RT8_semaphoreTaken = 0;

  /* RateTransition: '<Root>/RT9' */
  mcb_pmsm_foc_I2C_f28379d_ori_DW.RT9_semaphoreTaken = 1;

  /* RateTransition: '<Root>/RT9' */
  mcb_pmsm_foc_I2C_f28379d_orig_B.RT9 =
    mcb_pmsm_foc_I2C_f28379d_ori_DW.RT9_Buffer0;

  /* RateTransition: '<Root>/RT9' */
  mcb_pmsm_foc_I2C_f28379d_ori_DW.RT9_semaphoreTaken = 0;

  /* RateTransition: '<Root>/RT10' */
  mcb_pmsm_foc_I2C_f28379d_ori_DW.RT10_semaphoreTaken =
    mcb_pmsm_foc_I2C_f28379d_ori_DW.RT10_ActiveBufIdx;
  tmp = mcb_pmsm_foc_I2C_f28379d_ori_DW.RT10_semaphoreTaken << 1U;

  /* RateTransition: '<Root>/RT10' */
  mcb_pmsm_foc_I2C_f28379d_orig_B.RT10[0] =
    mcb_pmsm_foc_I2C_f28379d_ori_DW.RT10_Buffer[tmp];
  mcb_pmsm_foc_I2C_f28379d_orig_B.RT10[1] =
    mcb_pmsm_foc_I2C_f28379d_ori_DW.RT10_Buffer[tmp + 1];

  /* RateTransition: '<Root>/RT11' */
  mcb_pmsm_foc_I2C_f28379d_ori_DW.RT11_semaphoreTaken =
    mcb_pmsm_foc_I2C_f28379d_ori_DW.RT11_ActiveBufIdx;
  tmp = mcb_pmsm_foc_I2C_f28379d_ori_DW.RT11_semaphoreTaken << 1U;

  /* RateTransition: '<Root>/RT11' */
  mcb_pmsm_foc_I2C_f28379d_orig_B.RT11[0] =
    mcb_pmsm_foc_I2C_f28379d_ori_DW.RT11_Buffer[tmp];
  mcb_pmsm_foc_I2C_f28379d_orig_B.RT11[1] =
    mcb_pmsm_foc_I2C_f28379d_ori_DW.RT11_Buffer[tmp + 1];

  /* RateTransition: '<Root>/RT12' */
  mcb_pmsm_foc_I2C_f28379d_orig_B.RT12 =
    mcb_pmsm_foc_I2C_f28379d_ori_DW.RT12_Buffer[mcb_pmsm_foc_I2C_f28379d_ori_DW.RT12_ActiveBufIdx];

  /* Outputs for Enabled SubSystem: '<Root>/CAN_Transmit' incorporates:
   *  EnablePort: '<S3>/Enable'
   */
  if (mcb_pmsm_foc_I2C_f28379d_orig_B.RT12 > 0.0) {
    /* DataStoreRead: '<S20>/Data Store Read1' */
    mcb_pmsm_foc_I2C_f28379d_orig_B.DataStoreRead1_a =
      mcb_pmsm_foc_I2C_f28379d_ori_DW.ERR;

    /* DataTypeConversion: '<S20>/Data Type Conversion1' */
    mcb_pmsm_foc_I2C_f28379d_orig_B.DataTypeConversion1_l =
      mcb_pmsm_foc_I2C_f28379d_orig_B.DataStoreRead1_a;

    /* Gain: '<S21>/Gain' */
    mcb_pmsm_foc_I2C_f28379d_orig_B.Gain_p = 65536.0F *
      mcb_pmsm_foc_I2C_f28379d_orig_B.RT8;

    /* DataTypeConversion: '<S21>/Data Type Conversion2' */
    mcb_pmsm_foc_I2C_f28379d_orig_B.DataTypeConversion2_m = (uint16_T)
      mcb_pmsm_foc_I2C_f28379d_orig_B.Gain_p;

    /* Gain: '<S3>/Gain' */
    mcb_pmsm_foc_I2C_f28379d_orig_B.Gain_po = 5.35714293F *
      mcb_pmsm_foc_I2C_f28379d_orig_B.RT10[0];

    /* Gain: '<S3>/Gain1' */
    mcb_pmsm_foc_I2C_f28379d_orig_B.Gain1 = 5.35714293F *
      mcb_pmsm_foc_I2C_f28379d_orig_B.RT10[1];

    /* Gain: '<S3>/Gain2' */
    mcb_pmsm_foc_I2C_f28379d_orig_B.Gain2_b = 0.144337565F *
      mcb_pmsm_foc_I2C_f28379d_orig_B.RT11[0];

    /* Gain: '<S3>/Gain3' */
    mcb_pmsm_foc_I2C_f28379d_orig_B.Gain3 = 0.144337565F *
      mcb_pmsm_foc_I2C_f28379d_orig_B.RT11[1];

    /* Gain: '<S21>/Gain2' */
    mcb_pmsm_foc_I2C_f28379d_orig_B.Gain2_g = 0.897597909F *
      mcb_pmsm_foc_I2C_f28379d_orig_B.RT9;

    /* Fcn: '<S21>/T' */
    mcb_pmsm_foc_I2C_f28379d_orig_B.T = (mcb_pmsm_foc_I2C_f28379d_orig_B.Gain_po
      * mcb_pmsm_foc_I2C_f28379d_orig_B.Gain2_b +
      mcb_pmsm_foc_I2C_f28379d_orig_B.Gain1 *
      mcb_pmsm_foc_I2C_f28379d_orig_B.Gain3) * 1.5F /
      mcb_pmsm_foc_I2C_f28379d_orig_B.Gain2_g;

    /* Gain: '<S21>/Loss' */
    mcb_pmsm_foc_I2C_f28379d_orig_B.Loss = 0.95F *
      mcb_pmsm_foc_I2C_f28379d_orig_B.T;

    /* Gain: '<S21>/Gain3' */
    mcb_pmsm_foc_I2C_f28379d_orig_B.Gain3_m = 2048.0F *
      mcb_pmsm_foc_I2C_f28379d_orig_B.Loss;

    /* Bias: '<S21>/Bias1' */
    mcb_pmsm_foc_I2C_f28379d_orig_B.Bias1 =
      mcb_pmsm_foc_I2C_f28379d_orig_B.Gain3_m + 2048.0F;

    /* DataTypeConversion: '<S21>/Data Type Conversion4' */
    mcb_pmsm_foc_I2C_f28379d_orig_B.DataTypeConversion4 = (uint16_T)
      mcb_pmsm_foc_I2C_f28379d_orig_B.Bias1;

    /* Gain: '<S21>/Gain1' */
    mcb_pmsm_foc_I2C_f28379d_orig_B.Gain1_f = 2048.0F *
      mcb_pmsm_foc_I2C_f28379d_orig_B.RT9;

    /* Bias: '<S21>/Bias' */
    mcb_pmsm_foc_I2C_f28379d_orig_B.Bias =
      mcb_pmsm_foc_I2C_f28379d_orig_B.Gain1_f + 2048.0F;

    /* DataTypeConversion: '<S21>/Data Type Conversion3' */
    mcb_pmsm_foc_I2C_f28379d_orig_B.DataTypeConversion3 = (uint16_T)
      mcb_pmsm_foc_I2C_f28379d_orig_B.Bias;

    /* S-Function (scanpack): '<S20>/CAN Pack' */
    /* S-Function (scanpack): '<S20>/CAN Pack' */
    mcb_pmsm_foc_I2C_f28379d_orig_B.CANPack.ID = 17U;
    mcb_pmsm_foc_I2C_f28379d_orig_B.CANPack.Length = 8U;
    mcb_pmsm_foc_I2C_f28379d_orig_B.CANPack.Extended = 0U;
    mcb_pmsm_foc_I2C_f28379d_orig_B.CANPack.Remote = 0;
    mcb_pmsm_foc_I2C_f28379d_orig_B.CANPack.Data[0] = 0;
    mcb_pmsm_foc_I2C_f28379d_orig_B.CANPack.Data[1] = 0;
    mcb_pmsm_foc_I2C_f28379d_orig_B.CANPack.Data[2] = 0;
    mcb_pmsm_foc_I2C_f28379d_orig_B.CANPack.Data[3] = 0;
    mcb_pmsm_foc_I2C_f28379d_orig_B.CANPack.Data[4] = 0;
    mcb_pmsm_foc_I2C_f28379d_orig_B.CANPack.Data[5] = 0;
    mcb_pmsm_foc_I2C_f28379d_orig_B.CANPack.Data[6] = 0;
    mcb_pmsm_foc_I2C_f28379d_orig_B.CANPack.Data[7] = 0;

    {
      /* --------------- START Packing signal 0 ------------------
       *  startBit                = 0
       *  length                  = 4
       *  desiredSignalByteLayout = BIGENDIAN
       *  dataType                = UNSIGNED
       *  factor                  = 1.0
       *  offset                  = 0.0
       *  minimum                 = 0.0
       *  maximum                 = 0.0
       * -----------------------------------------------------------------------*/
      {
        uint32_T packingValue = 0;

        {
          uint32_T result = (uint32_T)
            (mcb_pmsm_foc_I2C_f28379d_orig_B.DataTypeConversion1_l);

          /* no scaling required */
          packingValue = result;
        }

        {
          uint16_T packedValue;
          if (packingValue > (uint16_T)(15)) {
            packedValue = (uint16_T) 15;
          } else {
            packedValue = (uint16_T) (packingValue);
          }

          {
            {
              mcb_pmsm_foc_I2C_f28379d_orig_B.CANPack.Data[0] =
                mcb_pmsm_foc_I2C_f28379d_orig_B.CANPack.Data[0] | (uint16_T)
                ((uint16_T)(packedValue & (uint16_T)0xFU));
            }
          }
        }
      }

      /* --------------- START Packing signal 1 ------------------
       *  startBit                = 4
       *  length                  = 4
       *  desiredSignalByteLayout = BIGENDIAN
       *  dataType                = UNSIGNED
       *  factor                  = 1.0
       *  offset                  = 0.0
       *  minimum                 = 0.0
       *  maximum                 = 0.0
       * -----------------------------------------------------------------------*/
      {
        uint32_T packingValue = 0;

        {
          uint32_T result = (uint32_T)
            (mcb_pmsm_foc_I2C_f28379d_ConstB.DataTypeConversion);

          /* no scaling required */
          packingValue = result;
        }

        {
          uint16_T packedValue;
          if (packingValue > (uint16_T)(15)) {
            packedValue = (uint16_T) 15;
          } else {
            packedValue = (uint16_T) (packingValue);
          }

          {
            {
              mcb_pmsm_foc_I2C_f28379d_orig_B.CANPack.Data[0] =
                mcb_pmsm_foc_I2C_f28379d_orig_B.CANPack.Data[0] | (uint16_T)
                ((uint16_T)((uint16_T)(packedValue & (uint16_T)0xFU) << 4));
            }
          }
        }
      }

      /* --------------- START Packing signal 2 ------------------
       *  startBit                = 16
       *  length                  = 16
       *  desiredSignalByteLayout = BIGENDIAN
       *  dataType                = UNSIGNED
       *  factor                  = 1.0
       *  offset                  = 0.0
       *  minimum                 = 0.0
       *  maximum                 = 0.0
       * -----------------------------------------------------------------------*/
      {
        uint32_T packingValue = 0;

        {
          uint32_T result = (uint32_T)
            (mcb_pmsm_foc_I2C_f28379d_orig_B.DataTypeConversion2_m);

          /* no scaling required */
          packingValue = result;
        }

        {
          uint16_T packedValue;
          packedValue = (uint16_T) (packingValue);

          {
            {
              mcb_pmsm_foc_I2C_f28379d_orig_B.CANPack.Data[2] =
                mcb_pmsm_foc_I2C_f28379d_orig_B.CANPack.Data[2] | (uint16_T)
                (packedValue);
              mcb_pmsm_foc_I2C_f28379d_orig_B.CANPack.Data[1] =
                mcb_pmsm_foc_I2C_f28379d_orig_B.CANPack.Data[1] | (uint16_T)
                ((uint16_T)((uint16_T)(packedValue & (uint16_T)0xFF00U) >> 8));
            }
          }
        }
      }

      /* --------------- START Packing signal 3 ------------------
       *  startBit                = 40
       *  length                  = 12
       *  desiredSignalByteLayout = BIGENDIAN
       *  dataType                = UNSIGNED
       *  factor                  = 1.0
       *  offset                  = 0.0
       *  minimum                 = 0.0
       *  maximum                 = 0.0
       * -----------------------------------------------------------------------*/
      {
        uint32_T packingValue = 0;

        {
          uint32_T result = (uint32_T)
            (mcb_pmsm_foc_I2C_f28379d_orig_B.DataTypeConversion4);

          /* no scaling required */
          packingValue = result;
        }

        {
          uint16_T packedValue;
          if (packingValue > (uint16_T)(4095)) {
            packedValue = (uint16_T) 4095;
          } else {
            packedValue = (uint16_T) (packingValue);
          }

          {
            {
              mcb_pmsm_foc_I2C_f28379d_orig_B.CANPack.Data[5] =
                mcb_pmsm_foc_I2C_f28379d_orig_B.CANPack.Data[5] | (uint16_T)
                (packedValue);
              mcb_pmsm_foc_I2C_f28379d_orig_B.CANPack.Data[4] =
                mcb_pmsm_foc_I2C_f28379d_orig_B.CANPack.Data[4] | (uint16_T)
                ((uint16_T)((uint16_T)(packedValue & (uint16_T)0xF00U) >> 8));
            }
          }
        }
      }

      /* --------------- START Packing signal 4 ------------------
       *  startBit                = 48
       *  length                  = 8
       *  desiredSignalByteLayout = BIGENDIAN
       *  dataType                = UNSIGNED
       *  factor                  = 1.0
       *  offset                  = 0.0
       *  minimum                 = 0.0
       *  maximum                 = 0.0
       * -----------------------------------------------------------------------*/
      {
        uint32_T packingValue = 0;

        {
          uint32_T result = (uint32_T)
            (mcb_pmsm_foc_I2C_f28379d_ConstB.DataTypeConversion5);

          /* no scaling required */
          packingValue = result;
        }

        {
          uint16_T packedValue;
          if (packingValue > (uint16_T)(255)) {
            packedValue = (uint16_T) 255;
          } else {
            packedValue = (uint16_T) (packingValue);
          }

          {
            {
              mcb_pmsm_foc_I2C_f28379d_orig_B.CANPack.Data[6] =
                mcb_pmsm_foc_I2C_f28379d_orig_B.CANPack.Data[6] | (uint16_T)
                (packedValue);
            }
          }
        }
      }

      /* --------------- START Packing signal 5 ------------------
       *  startBit                = 56
       *  length                  = 8
       *  desiredSignalByteLayout = BIGENDIAN
       *  dataType                = UNSIGNED
       *  factor                  = 1.0
       *  offset                  = 0.0
       *  minimum                 = 0.0
       *  maximum                 = 0.0
       * -----------------------------------------------------------------------*/
      {
        uint32_T packingValue = 0;

        {
          uint32_T result = (uint32_T)
            (mcb_pmsm_foc_I2C_f28379d_ConstB.DataTypeConversion6);

          /* no scaling required */
          packingValue = result;
        }

        {
          uint16_T packedValue;
          if (packingValue > (uint16_T)(255)) {
            packedValue = (uint16_T) 255;
          } else {
            packedValue = (uint16_T) (packingValue);
          }

          {
            {
              mcb_pmsm_foc_I2C_f28379d_orig_B.CANPack.Data[7] =
                mcb_pmsm_foc_I2C_f28379d_orig_B.CANPack.Data[7] | (uint16_T)
                (packedValue);
            }
          }
        }
      }

      /* --------------- START Packing signal 6 ------------------
       *  startBit                = 36
       *  length                  = 12
       *  desiredSignalByteLayout = BIGENDIAN
       *  dataType                = UNSIGNED
       *  factor                  = 1.0
       *  offset                  = 0.0
       *  minimum                 = 0.0
       *  maximum                 = 0.0
       * -----------------------------------------------------------------------*/
      {
        uint32_T packingValue = 0;

        {
          uint32_T result = (uint32_T)
            (mcb_pmsm_foc_I2C_f28379d_orig_B.DataTypeConversion3);

          /* no scaling required */
          packingValue = result;
        }

        {
          uint16_T packedValue;
          if (packingValue > (uint16_T)(4095)) {
            packedValue = (uint16_T) 4095;
          } else {
            packedValue = (uint16_T) (packingValue);
          }

          {
            {
              mcb_pmsm_foc_I2C_f28379d_orig_B.CANPack.Data[4] =
                mcb_pmsm_foc_I2C_f28379d_orig_B.CANPack.Data[4] | (uint16_T)
                ((uint16_T)((uint16_T)(packedValue & (uint16_T)0xFU) << 4));
              mcb_pmsm_foc_I2C_f28379d_orig_B.CANPack.Data[3] =
                mcb_pmsm_foc_I2C_f28379d_orig_B.CANPack.Data[3] | (uint16_T)
                ((uint16_T)((uint16_T)(packedValue & (uint16_T)0xFF0U) >> 4));
            }
          }
        }
      }
    }

    /* S-Function (c280xcanxmt): '<S20>/CAN Transmit1' */
    {
      uint16_T messageLength = mcb_pmsm_foc_I2C_f28379d_orig_B.CANPack.Length;
      uint32_T messageID = mcb_pmsm_foc_I2C_f28379d_orig_B.CANPack.ID;
      unsigned char* ucTXMsgData;
      ucTXMsgData = (unsigned char*)mcb_pmsm_foc_I2C_f28379d_orig_B.CANPack.Data;
      uint16_T isExtended = mcb_pmsm_foc_I2C_f28379d_orig_B.CANPack.Extended;
      CAN_setupMessageObject(CANB_BASE, 2, messageID, isExtended,
        CAN_MSG_OBJ_TYPE_TX, 0, CAN_MSG_OBJ_TX_INT_ENABLE, messageLength);
      CAN_sendMessage(CANB_BASE, 2, messageLength, (uint16_T*)ucTXMsgData);
    }
  }

  /* End of Outputs for SubSystem: '<Root>/CAN_Transmit' */
}

/* Model step function for TID4 */
void mcb_pmsm_foc_I2C_f28379d_origin_step4(void) /* Sample time: [0.15s, 0.0s] */
{
  /* Constant: '<Root>/Constant' */
  mcb_pmsm_foc_I2C_f28379d_orig_B.Constant = 1.0;

  /* RateTransition: '<Root>/RT12' */
  mcb_pmsm_foc_I2C_f28379d_ori_DW.RT12_Buffer[mcb_pmsm_foc_I2C_f28379d_ori_DW.RT12_ActiveBufIdx
    == 0] = mcb_pmsm_foc_I2C_f28379d_orig_B.Constant;
  mcb_pmsm_foc_I2C_f28379d_ori_DW.RT12_ActiveBufIdx =
    (mcb_pmsm_foc_I2C_f28379d_ori_DW.RT12_ActiveBufIdx == 0);
}

/* Model step function for TID5 */
void mcb_pmsm_foc_I2C_f28379d_origin_step5(void) /* Sample time: [0.5s, 0.0s] */
{
  /* Outputs for Atomic SubSystem: '<Root>/Heartbeat LED' */
  /* S-Function (c280xgpio_do): '<S237>/Digital Output' incorporates:
   *  Constant: '<S7>/RED_LED'
   */
  {
    GpioDataRegs.GPBTOGGLE.bit.GPIO34 = (uint16_T)((1U) != 0);
  }

  /* End of Outputs for SubSystem: '<Root>/Heartbeat LED' */
}

/* Model initialize function */
void mcb_pmsm_foc_I2C_f28379d_origin_initialize(void)
{
  /* Registration code */

  /* initialize non-finites */
  rt_InitInfAndNaN(sizeof(real_T));

  /* initialize real-time model */
  (void) memset((void *)mcb_pmsm_foc_I2C_f28379d_ori_M, 0,
                sizeof(RT_MODEL_mcb_pmsm_foc_I2C_f28_T));

  /* block I/O */
  (void) memset(((void *) &mcb_pmsm_foc_I2C_f28379d_orig_B), 0,
                sizeof(B_mcb_pmsm_foc_I2C_f28379d_or_T));

  {
    int16_T i;
    for (i = 0; i < 11; i++) {
      mcb_pmsm_foc_I2C_f28379d_orig_B.TmpSignalConversionAtSelectorIn[i] = 0.0F;
    }

    mcb_pmsm_foc_I2C_f28379d_orig_B.CANReceive_o2 = CAN_DATATYPE_GROUND;
    mcb_pmsm_foc_I2C_f28379d_orig_B.CANPack = CAN_DATATYPE_GROUND;
    mcb_pmsm_foc_I2C_f28379d_orig_B.RT12 = 0.0;
    mcb_pmsm_foc_I2C_f28379d_orig_B.Constant = 0.0;
    mcb_pmsm_foc_I2C_f28379d_orig_B.CANUnpack_o1 = 0.0;
    mcb_pmsm_foc_I2C_f28379d_orig_B.CANUnpack_o2 = 0.0;
    mcb_pmsm_foc_I2C_f28379d_orig_B.Gain = 0.0;
    mcb_pmsm_foc_I2C_f28379d_orig_B.Gain2 = 0.0;
    mcb_pmsm_foc_I2C_f28379d_orig_B.RT1 = 0.0F;
    mcb_pmsm_foc_I2C_f28379d_orig_B.RT13 = 0.0F;
    mcb_pmsm_foc_I2C_f28379d_orig_B.RT3 = 0.0F;
    mcb_pmsm_foc_I2C_f28379d_orig_B.RT7 = 0.0F;
    mcb_pmsm_foc_I2C_f28379d_orig_B.CastToSingle1 = 0.0F;
    mcb_pmsm_foc_I2C_f28379d_orig_B.Gain_f = 0.0F;
    mcb_pmsm_foc_I2C_f28379d_orig_B.RT8 = 0.0F;
    mcb_pmsm_foc_I2C_f28379d_orig_B.RT9 = 0.0F;
    mcb_pmsm_foc_I2C_f28379d_orig_B.RT10[0] = 0.0F;
    mcb_pmsm_foc_I2C_f28379d_orig_B.RT10[1] = 0.0F;
    mcb_pmsm_foc_I2C_f28379d_orig_B.RT11[0] = 0.0F;
    mcb_pmsm_foc_I2C_f28379d_orig_B.RT11[1] = 0.0F;
    mcb_pmsm_foc_I2C_f28379d_orig_B.RT2[0] = 0.0F;
    mcb_pmsm_foc_I2C_f28379d_orig_B.RT2[1] = 0.0F;
    mcb_pmsm_foc_I2C_f28379d_orig_B.RT4 = 0.0F;
    mcb_pmsm_foc_I2C_f28379d_orig_B.SCIReceive[0] = 0.0F;
    mcb_pmsm_foc_I2C_f28379d_orig_B.SCIReceive[1] = 0.0F;
    mcb_pmsm_foc_I2C_f28379d_orig_B.DataStoreRead2 = 0.0F;
    mcb_pmsm_foc_I2C_f28379d_orig_B.Unwrap = 0.0F;
    mcb_pmsm_foc_I2C_f28379d_orig_B.DTC = 0.0F;
    mcb_pmsm_foc_I2C_f28379d_orig_B.SpeedGain = 0.0F;
    mcb_pmsm_foc_I2C_f28379d_orig_B.Product = 0.0F;
    mcb_pmsm_foc_I2C_f28379d_orig_B.UnitDelay = 0.0F;
    mcb_pmsm_foc_I2C_f28379d_orig_B.Product1 = 0.0F;
    mcb_pmsm_foc_I2C_f28379d_orig_B.Add1 = 0.0F;
    mcb_pmsm_foc_I2C_f28379d_orig_B.GetADCVoltage[0] = 0.0F;
    mcb_pmsm_foc_I2C_f28379d_orig_B.GetADCVoltage[1] = 0.0F;
    mcb_pmsm_foc_I2C_f28379d_orig_B.GetCurrents[0] = 0.0F;
    mcb_pmsm_foc_I2C_f28379d_orig_B.GetCurrents[1] = 0.0F;
    mcb_pmsm_foc_I2C_f28379d_orig_B.PU_Conversion[0] = 0.0F;
    mcb_pmsm_foc_I2C_f28379d_orig_B.PU_Conversion[1] = 0.0F;
    mcb_pmsm_foc_I2C_f28379d_orig_B.Switch = 0.0F;
    mcb_pmsm_foc_I2C_f28379d_orig_B.Merge = 0.0F;
    mcb_pmsm_foc_I2C_f28379d_orig_B.Numberofpolepairs = 0.0F;
    mcb_pmsm_foc_I2C_f28379d_orig_B.Floor = 0.0F;
    mcb_pmsm_foc_I2C_f28379d_orig_B.Add_c = 0.0F;
    mcb_pmsm_foc_I2C_f28379d_orig_B.Merge_o = 0.0F;
    mcb_pmsm_foc_I2C_f28379d_orig_B.indexing = 0.0F;
    mcb_pmsm_foc_I2C_f28379d_orig_B.Lookup[0] = 0.0F;
    mcb_pmsm_foc_I2C_f28379d_orig_B.Lookup[1] = 0.0F;
    mcb_pmsm_foc_I2C_f28379d_orig_B.Lookup[2] = 0.0F;
    mcb_pmsm_foc_I2C_f28379d_orig_B.Lookup[3] = 0.0F;
    mcb_pmsm_foc_I2C_f28379d_orig_B.Sum3 = 0.0F;
    mcb_pmsm_foc_I2C_f28379d_orig_B.DataTypeConversion1 = 0.0F;
    mcb_pmsm_foc_I2C_f28379d_orig_B.Sum2 = 0.0F;
    mcb_pmsm_foc_I2C_f28379d_orig_B.Product_i = 0.0F;
    mcb_pmsm_foc_I2C_f28379d_orig_B.Sum4 = 0.0F;
    mcb_pmsm_foc_I2C_f28379d_orig_B.Sum5 = 0.0F;
    mcb_pmsm_foc_I2C_f28379d_orig_B.Product1_b = 0.0F;
    mcb_pmsm_foc_I2C_f28379d_orig_B.Sum6 = 0.0F;
    mcb_pmsm_foc_I2C_f28379d_orig_B.DataStoreRead1 = 0.0F;
    mcb_pmsm_foc_I2C_f28379d_orig_B.Selector[0] = 0.0F;
    mcb_pmsm_foc_I2C_f28379d_orig_B.Selector[1] = 0.0F;
    mcb_pmsm_foc_I2C_f28379d_orig_B.Sum_o = 0.0F;
    mcb_pmsm_foc_I2C_f28379d_orig_B.PProdOut = 0.0F;
    mcb_pmsm_foc_I2C_f28379d_orig_B.Kp1 = 0.0F;
    mcb_pmsm_foc_I2C_f28379d_orig_B.Integrator = 0.0F;
    mcb_pmsm_foc_I2C_f28379d_orig_B.Sum_m = 0.0F;
    mcb_pmsm_foc_I2C_f28379d_orig_B.Saturation = 0.0F;
    mcb_pmsm_foc_I2C_f28379d_orig_B.Sum_j = 0.0F;
    mcb_pmsm_foc_I2C_f28379d_orig_B.PProdOut_g = 0.0F;
    mcb_pmsm_foc_I2C_f28379d_orig_B.Ki1 = 0.0F;
    mcb_pmsm_foc_I2C_f28379d_orig_B.Integrator_f = 0.0F;
    mcb_pmsm_foc_I2C_f28379d_orig_B.Sum_g = 0.0F;
    mcb_pmsm_foc_I2C_f28379d_orig_B.Saturation_f = 0.0F;
    mcb_pmsm_foc_I2C_f28379d_orig_B.Switch_n = 0.0F;
    mcb_pmsm_foc_I2C_f28379d_orig_B.Product_j = 0.0F;
    mcb_pmsm_foc_I2C_f28379d_orig_B.Product_f = 0.0F;
    mcb_pmsm_foc_I2C_f28379d_orig_B.Product1_g = 0.0F;
    mcb_pmsm_foc_I2C_f28379d_orig_B.Sum1 = 0.0F;
    mcb_pmsm_foc_I2C_f28379d_orig_B.Merge_i[0] = 0.0F;
    mcb_pmsm_foc_I2C_f28379d_orig_B.Merge_i[1] = 0.0F;
    mcb_pmsm_foc_I2C_f28379d_orig_B.DeadZone = 0.0F;
    mcb_pmsm_foc_I2C_f28379d_orig_B.IProdOut = 0.0F;
    mcb_pmsm_foc_I2C_f28379d_orig_B.Switch_f = 0.0F;
    mcb_pmsm_foc_I2C_f28379d_orig_B.DeadZone_a = 0.0F;
    mcb_pmsm_foc_I2C_f28379d_orig_B.IProdOut_b = 0.0F;
    mcb_pmsm_foc_I2C_f28379d_orig_B.Switch_a = 0.0F;
    mcb_pmsm_foc_I2C_f28379d_orig_B.Merge_a = 0.0F;
    mcb_pmsm_foc_I2C_f28379d_orig_B.indexing_d = 0.0F;
    mcb_pmsm_foc_I2C_f28379d_orig_B.DataTypeConversion1_n = 0.0F;
    mcb_pmsm_foc_I2C_f28379d_orig_B.Lookup_p[0] = 0.0F;
    mcb_pmsm_foc_I2C_f28379d_orig_B.Lookup_p[1] = 0.0F;
    mcb_pmsm_foc_I2C_f28379d_orig_B.Lookup_p[2] = 0.0F;
    mcb_pmsm_foc_I2C_f28379d_orig_B.Lookup_p[3] = 0.0F;
    mcb_pmsm_foc_I2C_f28379d_orig_B.Sum3_j = 0.0F;
    mcb_pmsm_foc_I2C_f28379d_orig_B.Sum2_p = 0.0F;
    mcb_pmsm_foc_I2C_f28379d_orig_B.Product_d = 0.0F;
    mcb_pmsm_foc_I2C_f28379d_orig_B.Sum5_l = 0.0F;
    mcb_pmsm_foc_I2C_f28379d_orig_B.Product1_d = 0.0F;
    mcb_pmsm_foc_I2C_f28379d_orig_B.Sum4_h = 0.0F;
    mcb_pmsm_foc_I2C_f28379d_orig_B.Sum6_h = 0.0F;
    mcb_pmsm_foc_I2C_f28379d_orig_B.Delay_c = 0.0F;
    mcb_pmsm_foc_I2C_f28379d_orig_B.Sum_a = 0.0F;
    mcb_pmsm_foc_I2C_f28379d_orig_B.Merge_c = 0.0F;
    mcb_pmsm_foc_I2C_f28379d_orig_B.DataTypeConversion = 0.0F;
    mcb_pmsm_foc_I2C_f28379d_orig_B.Switch_g = 0.0F;
    mcb_pmsm_foc_I2C_f28379d_orig_B.OutportBufferForVdq_ref[0] = 0.0F;
    mcb_pmsm_foc_I2C_f28379d_orig_B.OutportBufferForVdq_ref[1] = 0.0F;
    mcb_pmsm_foc_I2C_f28379d_orig_B.sqrt3_by_two = 0.0F;
    mcb_pmsm_foc_I2C_f28379d_orig_B.one_by_two = 0.0F;
    mcb_pmsm_foc_I2C_f28379d_orig_B.add_c = 0.0F;
    mcb_pmsm_foc_I2C_f28379d_orig_B.add_b = 0.0F;
    mcb_pmsm_foc_I2C_f28379d_orig_B.Min = 0.0F;
    mcb_pmsm_foc_I2C_f28379d_orig_B.Max = 0.0F;
    mcb_pmsm_foc_I2C_f28379d_orig_B.Add_n = 0.0F;
    mcb_pmsm_foc_I2C_f28379d_orig_B.one_by_two_l = 0.0F;
    mcb_pmsm_foc_I2C_f28379d_orig_B.Add3 = 0.0F;
    mcb_pmsm_foc_I2C_f28379d_orig_B.Add2 = 0.0F;
    mcb_pmsm_foc_I2C_f28379d_orig_B.Add1_d = 0.0F;
    mcb_pmsm_foc_I2C_f28379d_orig_B.Gain_a[0] = 0.0F;
    mcb_pmsm_foc_I2C_f28379d_orig_B.Gain_a[1] = 0.0F;
    mcb_pmsm_foc_I2C_f28379d_orig_B.Gain_a[2] = 0.0F;
    mcb_pmsm_foc_I2C_f28379d_orig_B.One_by_Two[0] = 0.0F;
    mcb_pmsm_foc_I2C_f28379d_orig_B.One_by_Two[1] = 0.0F;
    mcb_pmsm_foc_I2C_f28379d_orig_B.One_by_Two[2] = 0.0F;
    mcb_pmsm_foc_I2C_f28379d_orig_B.PWM_Duty_Cycles[0] = 0.0F;
    mcb_pmsm_foc_I2C_f28379d_orig_B.PWM_Duty_Cycles[1] = 0.0F;
    mcb_pmsm_foc_I2C_f28379d_orig_B.PWM_Duty_Cycles[2] = 0.0F;
    mcb_pmsm_foc_I2C_f28379d_orig_B.acos_b = 0.0F;
    mcb_pmsm_foc_I2C_f28379d_orig_B.bsin = 0.0F;
    mcb_pmsm_foc_I2C_f28379d_orig_B.sum_Ds = 0.0F;
    mcb_pmsm_foc_I2C_f28379d_orig_B.bcos = 0.0F;
    mcb_pmsm_foc_I2C_f28379d_orig_B.asin_o = 0.0F;
    mcb_pmsm_foc_I2C_f28379d_orig_B.sum_Qs = 0.0F;
    mcb_pmsm_foc_I2C_f28379d_orig_B.Switch_h[0] = 0.0F;
    mcb_pmsm_foc_I2C_f28379d_orig_B.Switch_h[1] = 0.0F;
    mcb_pmsm_foc_I2C_f28379d_orig_B.algDD_o1 = 0.0F;
    mcb_pmsm_foc_I2C_f28379d_orig_B.algDD_o2 = 0.0F;
    mcb_pmsm_foc_I2C_f28379d_orig_B.qcos = 0.0F;
    mcb_pmsm_foc_I2C_f28379d_orig_B.dsin = 0.0F;
    mcb_pmsm_foc_I2C_f28379d_orig_B.sum_beta = 0.0F;
    mcb_pmsm_foc_I2C_f28379d_orig_B.dcos = 0.0F;
    mcb_pmsm_foc_I2C_f28379d_orig_B.qsin = 0.0F;
    mcb_pmsm_foc_I2C_f28379d_orig_B.sum_alpha = 0.0F;
    mcb_pmsm_foc_I2C_f28379d_orig_B.Switch_b[0] = 0.0F;
    mcb_pmsm_foc_I2C_f28379d_orig_B.Switch_b[1] = 0.0F;
    mcb_pmsm_foc_I2C_f28379d_orig_B.algDD_o1_p = 0.0F;
    mcb_pmsm_foc_I2C_f28379d_orig_B.algDD_o2_o = 0.0F;
    mcb_pmsm_foc_I2C_f28379d_orig_B.Product_o[0] = 0.0F;
    mcb_pmsm_foc_I2C_f28379d_orig_B.Product_o[1] = 0.0F;
    mcb_pmsm_foc_I2C_f28379d_orig_B.SquareRoot = 0.0F;
    mcb_pmsm_foc_I2C_f28379d_orig_B.Switch_as = 0.0F;
    mcb_pmsm_foc_I2C_f28379d_orig_B.Reciprocal = 0.0F;
    mcb_pmsm_foc_I2C_f28379d_orig_B.Switch_j[0] = 0.0F;
    mcb_pmsm_foc_I2C_f28379d_orig_B.Switch_j[1] = 0.0F;
    mcb_pmsm_foc_I2C_f28379d_orig_B.Switch2 = 0.0F;
    mcb_pmsm_foc_I2C_f28379d_orig_B.Product_b = 0.0F;
    mcb_pmsm_foc_I2C_f28379d_orig_B.Sum_jr = 0.0F;
    mcb_pmsm_foc_I2C_f28379d_orig_B.Product2 = 0.0F;
    mcb_pmsm_foc_I2C_f28379d_orig_B.Merge_d = 0.0F;
    mcb_pmsm_foc_I2C_f28379d_orig_B.Gain_b = 0.0F;
    mcb_pmsm_foc_I2C_f28379d_orig_B.Switch_m = 0.0F;
    mcb_pmsm_foc_I2C_f28379d_orig_B.Switch1 = 0.0F;
    mcb_pmsm_foc_I2C_f28379d_orig_B.Sqrt = 0.0F;
    mcb_pmsm_foc_I2C_f28379d_orig_B.Gain_l = 0.0F;
    mcb_pmsm_foc_I2C_f28379d_orig_B.a_plus_2b = 0.0F;
    mcb_pmsm_foc_I2C_f28379d_orig_B.one_by_sqrt3 = 0.0F;
    mcb_pmsm_foc_I2C_f28379d_orig_B.algDD_o1_e = 0.0F;
    mcb_pmsm_foc_I2C_f28379d_orig_B.algDD_o2_h = 0.0F;
    mcb_pmsm_foc_I2C_f28379d_orig_B.Gain_p = 0.0F;
    mcb_pmsm_foc_I2C_f28379d_orig_B.Gain_po = 0.0F;
    mcb_pmsm_foc_I2C_f28379d_orig_B.Gain1 = 0.0F;
    mcb_pmsm_foc_I2C_f28379d_orig_B.Gain2_b = 0.0F;
    mcb_pmsm_foc_I2C_f28379d_orig_B.Gain3 = 0.0F;
    mcb_pmsm_foc_I2C_f28379d_orig_B.Gain2_g = 0.0F;
    mcb_pmsm_foc_I2C_f28379d_orig_B.T = 0.0F;
    mcb_pmsm_foc_I2C_f28379d_orig_B.Loss = 0.0F;
    mcb_pmsm_foc_I2C_f28379d_orig_B.Gain3_m = 0.0F;
    mcb_pmsm_foc_I2C_f28379d_orig_B.Bias1 = 0.0F;
    mcb_pmsm_foc_I2C_f28379d_orig_B.Gain1_f = 0.0F;
    mcb_pmsm_foc_I2C_f28379d_orig_B.Bias = 0.0F;
    mcb_pmsm_foc_I2C_f28379d_orig_B.CastToSingle = 0.0F;
    mcb_pmsm_foc_I2C_f28379d_orig_B.CastToSingle1_m = 0.0F;
    mcb_pmsm_foc_I2C_f28379d_orig_B.UnitDelay_l = 0.0F;
    mcb_pmsm_foc_I2C_f28379d_orig_B.UnitDelay1 = 0.0F;
    mcb_pmsm_foc_I2C_f28379d_orig_B.SpeedControl.Id_ref = 0.0F;
    mcb_pmsm_foc_I2C_f28379d_orig_B.SpeedControl.Switch = 0.0F;
    mcb_pmsm_foc_I2C_f28379d_orig_B.SpeedControl.Product = 0.0F;
    mcb_pmsm_foc_I2C_f28379d_orig_B.SpeedControl.UnitDelay = 0.0F;
    mcb_pmsm_foc_I2C_f28379d_orig_B.SpeedControl.Product1 = 0.0F;
    mcb_pmsm_foc_I2C_f28379d_orig_B.SpeedControl.Add1 = 0.0F;
    mcb_pmsm_foc_I2C_f28379d_orig_B.SpeedControl.Sum = 0.0F;
    mcb_pmsm_foc_I2C_f28379d_orig_B.SpeedControl.PProdOut = 0.0F;
    mcb_pmsm_foc_I2C_f28379d_orig_B.SpeedControl.Ki2 = 0.0F;
    mcb_pmsm_foc_I2C_f28379d_orig_B.SpeedControl.Integrator = 0.0F;
    mcb_pmsm_foc_I2C_f28379d_orig_B.SpeedControl.Sum_c = 0.0F;
    mcb_pmsm_foc_I2C_f28379d_orig_B.SpeedControl.DeadZone = 0.0F;
    mcb_pmsm_foc_I2C_f28379d_orig_B.SpeedControl.IProdOut = 0.0F;
    mcb_pmsm_foc_I2C_f28379d_orig_B.SpeedControl.Switch_d = 0.0F;
    mcb_pmsm_foc_I2C_f28379d_orig_B.SpeedControl.Saturation = 0.0F;
    mcb_pmsm_foc_I2C_f28379d_orig_B.IfActionSubsystem1_k.Convert_back = 0.0F;
    mcb_pmsm_foc_I2C_f28379d_orig_B.IfActionSubsystem_e.Convert_back = 0.0F;
    mcb_pmsm_foc_I2C_f28379d_orig_B.IfActionSubsystem1.Convert_back = 0.0F;
    mcb_pmsm_foc_I2C_f28379d_orig_B.IfActionSubsystem.Convert_back = 0.0F;
  }

  /* states (dwork) */
  (void) memset((void *)&mcb_pmsm_foc_I2C_f28379d_ori_DW, 0,
                sizeof(DW_mcb_pmsm_foc_I2C_f28379d_o_T));
  mcb_pmsm_foc_I2C_f28379d_ori_DW.RT12_Buffer[0] = 0.0;
  mcb_pmsm_foc_I2C_f28379d_ori_DW.RT12_Buffer[1] = 0.0;
  mcb_pmsm_foc_I2C_f28379d_ori_DW.UnitDelay_DSTATE = 0.0F;
  mcb_pmsm_foc_I2C_f28379d_ori_DW.Integrator_DSTATE = 0.0F;
  mcb_pmsm_foc_I2C_f28379d_ori_DW.Integrator_DSTATE_o = 0.0F;
  mcb_pmsm_foc_I2C_f28379d_ori_DW.Delay_DSTATE = 0.0F;
  mcb_pmsm_foc_I2C_f28379d_ori_DW.UnitDelay_DSTATE_l = 0.0F;
  mcb_pmsm_foc_I2C_f28379d_ori_DW.UnitDelay1_DSTATE = 0.0F;
  mcb_pmsm_foc_I2C_f28379d_ori_DW.RT1_Buffer[0] = 0.0F;
  mcb_pmsm_foc_I2C_f28379d_ori_DW.RT1_Buffer[1] = 0.0F;
  mcb_pmsm_foc_I2C_f28379d_ori_DW.RT3_Buffer[0] = 0.0F;
  mcb_pmsm_foc_I2C_f28379d_ori_DW.RT3_Buffer[1] = 0.0F;
  mcb_pmsm_foc_I2C_f28379d_ori_DW.RT2_Buffer[0] = 0.0F;
  mcb_pmsm_foc_I2C_f28379d_ori_DW.RT2_Buffer[1] = 0.0F;
  mcb_pmsm_foc_I2C_f28379d_ori_DW.RT2_Buffer[2] = 0.0F;
  mcb_pmsm_foc_I2C_f28379d_ori_DW.RT2_Buffer[3] = 0.0F;
  mcb_pmsm_foc_I2C_f28379d_ori_DW.RT4_Buffer[0] = 0.0F;
  mcb_pmsm_foc_I2C_f28379d_ori_DW.RT4_Buffer[1] = 0.0F;
  mcb_pmsm_foc_I2C_f28379d_ori_DW.RT8_Buffer0 = 0.0F;
  mcb_pmsm_foc_I2C_f28379d_ori_DW.RT9_Buffer0 = 0.0F;
  mcb_pmsm_foc_I2C_f28379d_ori_DW.SpeedRef = 0.0F;
  mcb_pmsm_foc_I2C_f28379d_ori_DW.PosRef = 0.0F;
  mcb_pmsm_foc_I2C_f28379d_ori_DW.RT10_Buffer[0] = 0.0F;
  mcb_pmsm_foc_I2C_f28379d_ori_DW.RT10_Buffer[1] = 0.0F;
  mcb_pmsm_foc_I2C_f28379d_ori_DW.RT10_Buffer[2] = 0.0F;
  mcb_pmsm_foc_I2C_f28379d_ori_DW.RT10_Buffer[3] = 0.0F;
  mcb_pmsm_foc_I2C_f28379d_ori_DW.RT11_Buffer[0] = 0.0F;
  mcb_pmsm_foc_I2C_f28379d_ori_DW.RT11_Buffer[1] = 0.0F;
  mcb_pmsm_foc_I2C_f28379d_ori_DW.RT11_Buffer[2] = 0.0F;
  mcb_pmsm_foc_I2C_f28379d_ori_DW.RT11_Buffer[3] = 0.0F;
  mcb_pmsm_foc_I2C_f28379d_ori_DW.Unwrap_Prev = 0.0F;
  mcb_pmsm_foc_I2C_f28379d_ori_DW.Unwrap_Cumsum = 0.0F;
  mcb_pmsm_foc_I2C_f28379d_ori_DW.SpeedControl.UnitDelay_DSTATE = 0.0F;
  mcb_pmsm_foc_I2C_f28379d_ori_DW.SpeedControl.Integrator_DSTATE = 0.0F;

  /* Start for DataStoreMemory: '<Root>/Data Store Memory1' */
  mcb_pmsm_foc_I2C_f28379d_ori_DW.IaOffset = 2278U;

  /* Start for DataStoreMemory: '<Root>/Data Store Memory2' */
  mcb_pmsm_foc_I2C_f28379d_ori_DW.IbOffset = 2256U;

  /* Start for DataStoreMemory: '<Root>/Data Store Memory6' */
  mcb_pmsm_foc_I2C_f28379d_ori_DW.Debug_signals = 5U;

  /* SystemInitialize for Enabled SubSystem: '<S1>/Data Read' */
  /* Start for S-Function (c280xi2c_rx): '<S11>/I2C Receive' */

  /* Initialize out port */
  {
    mcb_pmsm_foc_I2C_f28379d_orig_B.I2CReceive_o1[0] = (uint16_T)0.0;
    mcb_pmsm_foc_I2C_f28379d_orig_B.I2CReceive_o1[1] = (uint16_T)0.0;
  }

  /* End of SystemInitialize for SubSystem: '<S1>/Data Read' */

  /* SystemInitialize for S-Function (c280xcanrcv): '<S2>/CAN Receive' incorporates:
   *  SubSystem: '<S2>/Subsystem2'
   */
  /* System initialize for function-call system: '<S2>/Subsystem2' */

  /* Start for S-Function (scanunpack): '<S17>/CAN Unpack' */

  /*-----------S-Function Block: <S17>/CAN Unpack -----------------*/

  /* InitializeConditions for UnitDelay: '<S18>/Unit Delay' */
  mcb_pmsm_foc_I2C_f28379d_ori_DW.UnitDelay_DSTATE_l = 0.5F;

  {
    uint32_t ui32Flags;
    ui32Flags = CAN_MSG_OBJ_RX_INT_ENABLE;
    CAN_setupMessageObject(CANB_BASE, 3, 0x101, CAN_MSG_FRAME_STD,
      CAN_MSG_OBJ_TYPE_RX, 0, ui32Flags, sizeof(unsigned char) * 8);
  }

  /* Initialize out port */
  {
    mcb_pmsm_foc_I2C_f28379d_orig_B.CANReceive_o2.Extended = 0;
    mcb_pmsm_foc_I2C_f28379d_orig_B.CANReceive_o2.Length = 8;
    mcb_pmsm_foc_I2C_f28379d_orig_B.CANReceive_o2.ID = 0x101;
    mcb_pmsm_foc_I2C_f28379d_orig_B.CANReceive_o2.Timestamp = 0;
    mcb_pmsm_foc_I2C_f28379d_orig_B.CANReceive_o2.Error = 0;
    mcb_pmsm_foc_I2C_f28379d_orig_B.CANReceive_o2.Remote = 0;
    mcb_pmsm_foc_I2C_f28379d_orig_B.CANReceive_o2.Data[0] = (uint8_T)0.0;
    mcb_pmsm_foc_I2C_f28379d_orig_B.CANReceive_o2.Data[1] = (uint8_T)0.0;
    mcb_pmsm_foc_I2C_f28379d_orig_B.CANReceive_o2.Data[2] = (uint8_T)0.0;
    mcb_pmsm_foc_I2C_f28379d_orig_B.CANReceive_o2.Data[3] = (uint8_T)0.0;
    mcb_pmsm_foc_I2C_f28379d_orig_B.CANReceive_o2.Data[4] = (uint8_T)0.0;
    mcb_pmsm_foc_I2C_f28379d_orig_B.CANReceive_o2.Data[5] = (uint8_T)0.0;
    mcb_pmsm_foc_I2C_f28379d_orig_B.CANReceive_o2.Data[6] = (uint8_T)0.0;
    mcb_pmsm_foc_I2C_f28379d_orig_B.CANReceive_o2.Data[7] = (uint8_T)0.0;
  }

  /* SystemInitialize for S-Function (HardwareInterrupt_sfun): '<S221>/Hardware Interrupt' incorporates:
   *  SubSystem: '<Root>/Current Control'
   */
  mcb_pms_CurrentControl_Init();

  /* SystemInitialize for S-Function (HardwareInterrupt_sfun): '<S223>/Hardware Interrupt' incorporates:
   *  SubSystem: '<Root>/Serial Receive'
   */
  /* System initialize for function-call system: '<Root>/Serial Receive' */

  /* Start for S-Function (c28xsci_rx): '<S244>/SCI Receive' */

  /* Initialize out port */
  {
    mcb_pmsm_foc_I2C_f28379d_orig_B.SCIReceive[0] = (real32_T)0.0;
    mcb_pmsm_foc_I2C_f28379d_orig_B.SCIReceive[1] = (real32_T)0.0;
  }

  /*Configure Timer2 when blocking mode is enabled and Timeout is not inf*/
  {
    /* InitCpuTimers() - CPU Timers are also initialized in
     * MW_c28xx_board.c in the generated code.
     */
    CpuTimer2Regs.PRD.all = 0xFFFFFFFFU;/* max Period*/
    CpuTimer2Regs.TIM.all = 0xFFFFFFFFU;/* set Ctr*/
    CpuTimer2Regs.TPR.all = 0x00U;     /* no prescaler    */
    StartCpuTimer2();
  }

  /* SystemInitialize for Atomic SubSystem: '<Root>/Speed Control' */
  mcb_pmsm__SpeedControl_Init(&mcb_pmsm_foc_I2C_f28379d_orig_B.SpeedControl,
    &mcb_pmsm_foc_I2C_f28379d_ori_DW.SpeedControl);

  /* End of SystemInitialize for SubSystem: '<Root>/Speed Control' */

  /* SystemInitialize for Atomic SubSystem: '<Root>/Heartbeat LED' */
  /* Start for S-Function (c280xgpio_do): '<S237>/Digital Output' */
  EALLOW;
  GpioCtrlRegs.GPBMUX1.all &= 0xFFFFFFCFU;
  GpioCtrlRegs.GPBDIR.all |= 0x4U;
  EDIS;

  /* End of SystemInitialize for SubSystem: '<Root>/Heartbeat LED' */

  /* SystemInitialize for Atomic SubSystem: '<Root>/Hardware Init' */
  /* Start for S-Function (c280xgpio_do): '<S227>/Digital Output' */
  EALLOW;
  GpioCtrlRegs.GPDMUX2.all &= 0xFCFFFFFFU;
  GpioCtrlRegs.GPDDIR.all |= 0x10000000U;
  EDIS;

  /* Start for S-Function (c280xgpio_do): '<S227>/Digital Output1' */
  EALLOW;
  GpioCtrlRegs.GPAMUX2.all &= 0xFFFFCFFFU;
  GpioCtrlRegs.GPADIR.all |= 0x400000U;
  EDIS;

  /* SystemInitialize for Enabled SubSystem: '<S227>/ADC Gain setting' */
  mcb__SPIMasterTransfer_Init(&mcb_pmsm_foc_I2C_f28379d_ori_DW.SPIMasterTransfer);
  mcb__SPIMasterTransfer_Init
    (&mcb_pmsm_foc_I2C_f28379d_ori_DW.SPIMasterTransfer1);

  /* End of SystemInitialize for SubSystem: '<S227>/ADC Gain setting' */

  /* SystemInitialize for Enabled SubSystem: '<S225>/Calculate ADC Offset ' */
  /* SystemInitialize for Iterator SubSystem: '<S226>/For Iterator Subsystem' */
  /* Start for S-Function (c2802xadc): '<S229>/ADC_A_IN0' */
  if (MW_adcCInitFlag == 0U) {
    InitAdcC();
    MW_adcCInitFlag = 1U;
  }

  config_ADCC_SOC2 ();

  /* Start for S-Function (c2802xadc): '<S229>/ADC_B_IN0' */
  if (MW_adcBInitFlag == 0U) {
    InitAdcB();
    MW_adcBInitFlag = 1U;
  }

  config_ADCB_SOC2 ();

  /* End of SystemInitialize for SubSystem: '<S226>/For Iterator Subsystem' */
  /* End of SystemInitialize for SubSystem: '<S225>/Calculate ADC Offset ' */
  /* End of SystemInitialize for SubSystem: '<Root>/Hardware Init' */

  /* Outputs for Atomic SubSystem: '<Root>/Hardware Init' */
  /* Outputs for Enabled SubSystem: '<S227>/ADC Gain setting' incorporates:
   *  EnablePort: '<S235>/Enable'
   */
  /* Constant: '<S6>/6PWM_Mode' */
  mcb_pmsm__SPIMasterTransfer(14870U,
    &mcb_pmsm_foc_I2C_f28379d_orig_B.SPIMasterTransfer,
    &mcb_pmsm_foc_I2C_f28379d_ori_DW.SPIMasterTransfer);

  /* Constant: '<S6>/ADC_Gain_Setting' */
  mcb_pmsm__SPIMasterTransfer(20522U,
    &mcb_pmsm_foc_I2C_f28379d_orig_B.SPIMasterTransfer1,
    &mcb_pmsm_foc_I2C_f28379d_ori_DW.SPIMasterTransfer1);

  /* End of Outputs for SubSystem: '<S227>/ADC Gain setting' */

  /* Switch: '<S227>/Switch' incorporates:
   *  Constant: '<S227>/Inverter Enable'
   */
  mcb_pmsm_foc_I2C_f28379d_orig_B.Switch_c = 1U;

  /* S-Function (c280xgpio_do): '<S227>/Digital Output' */
  {
    if (mcb_pmsm_foc_I2C_f28379d_orig_B.Switch_c) {
      GpioDataRegs.GPDSET.bit.GPIO124 = 1U;
    } else {
      GpioDataRegs.GPDCLEAR.bit.GPIO124 = 1U;
    }
  }

  /* S-Function (c280xgpio_do): '<S227>/Digital Output1' incorporates:
   *  Constant: '<S227>/RunTimeMeasurement'
   */
  {
    if ((1U)) {
      GpioDataRegs.GPASET.bit.GPIO22 = 1U;
    } else {
      GpioDataRegs.GPACLEAR.bit.GPIO22 = 1U;
    }
  }

  /* Logic: '<S225>/NOT' */
  mcb_pmsm_foc_I2C_f28379d_orig_B.NOT = true;

  /* Outputs for Enabled SubSystem: '<S225>/Default ADC Offset' incorporates:
   *  EnablePort: '<S228>/Enable'
   */
  if (mcb_pmsm_foc_I2C_f28379d_orig_B.NOT) {
    /* DataStoreWrite: '<S228>/Data Store Write1' incorporates:
     *  Constant: '<S228>/Constant'
     */
    mcb_pmsm_foc_I2C_f28379d_ori_DW.IaOffset = 2278U;

    /* DataStoreWrite: '<S228>/Data Store Write2' incorporates:
     *  Constant: '<S228>/Constant1'
     */
    mcb_pmsm_foc_I2C_f28379d_ori_DW.IbOffset = 2256U;
  }

  /* End of Outputs for SubSystem: '<S225>/Default ADC Offset' */
  /* End of Outputs for SubSystem: '<Root>/Hardware Init' */
}

/* Model terminate function */
void mcb_pmsm_foc_I2C_f28379d_origin_terminate(void)
{
  /* Terminate for Atomic SubSystem: '<Root>/Hardware Init' */
  /* Terminate for Enabled SubSystem: '<S227>/ADC Gain setting' */
  mcb__SPIMasterTransfer_Term(&mcb_pmsm_foc_I2C_f28379d_ori_DW.SPIMasterTransfer);
  mcb__SPIMasterTransfer_Term
    (&mcb_pmsm_foc_I2C_f28379d_ori_DW.SPIMasterTransfer1);

  /* End of Terminate for SubSystem: '<S227>/ADC Gain setting' */
  /* End of Terminate for SubSystem: '<Root>/Hardware Init' */
}

void mcb_pmsm_foc_I2C_f28379d_origin_configure_interrupts(void)
{
  /* Register interrupt service routine */
  HWI_TIC28x_ConfigureIRQ(33,&ADCB1_INT,0);
  HWI_TIC28x_EnableIRQ(33);

  /* Register interrupt service routine */
  HWI_TIC28x_ConfigureIRQ(96,&SCIA_RX_INT,2);
  HWI_TIC28x_EnableIRQ(96);
}

/* Hardware Interrupt Block: '<S221>/Hardware Interrupt' */
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
      tmp = mcb_pmsm_foc_I2C_f28379d_ori_DW.RT2_ActiveBufIdx << 1U;
      mcb_pmsm_foc_I2C_f28379d_orig_B.RT2[0] =
        mcb_pmsm_foc_I2C_f28379d_ori_DW.RT2_Buffer[tmp];
      mcb_pmsm_foc_I2C_f28379d_orig_B.RT2[1] =
        mcb_pmsm_foc_I2C_f28379d_ori_DW.RT2_Buffer[tmp + 1];

      /* RateTransition: '<Root>/RT4' */
      mcb_pmsm_foc_I2C_f28379d_orig_B.RT4 =
        mcb_pmsm_foc_I2C_f28379d_ori_DW.RT4_Buffer[mcb_pmsm_foc_I2C_f28379d_ori_DW.RT4_ActiveBufIdx];

      /* S-Function (HardwareInterrupt_sfun): '<S221>/Hardware Interrupt' */
      mcb_pmsm_foc_CurrentControl();

      /* End of Outputs for S-Function (HardwareInterrupt_sfun): '<S221>/Hardware Interrupt' */

      /* RateTransition: '<Root>/RT1' */
      mcb_pmsm_foc_I2C_f28379d_ori_DW.RT1_Buffer[mcb_pmsm_foc_I2C_f28379d_ori_DW.RT1_semaphoreTaken
        == 0] = mcb_pmsm_foc_I2C_f28379d_orig_B.Add1;
      mcb_pmsm_foc_I2C_f28379d_ori_DW.RT1_ActiveBufIdx =
        (mcb_pmsm_foc_I2C_f28379d_ori_DW.RT1_semaphoreTaken == 0);

      /* RateTransition: '<Root>/RT10' */
      mcb_pmsm_foc_I2C_f28379d_ori_DW.RT10_Buffer
        [(mcb_pmsm_foc_I2C_f28379d_ori_DW.RT10_semaphoreTaken == 0) << 1U] =
        mcb_pmsm_foc_I2C_f28379d_orig_B.algDD_o1;
      mcb_pmsm_foc_I2C_f28379d_ori_DW.RT10_Buffer[1 +
        ((mcb_pmsm_foc_I2C_f28379d_ori_DW.RT10_semaphoreTaken == 0) << 1U)] =
        mcb_pmsm_foc_I2C_f28379d_orig_B.algDD_o2;
      mcb_pmsm_foc_I2C_f28379d_ori_DW.RT10_ActiveBufIdx =
        (mcb_pmsm_foc_I2C_f28379d_ori_DW.RT10_semaphoreTaken == 0);

      /* RateTransition: '<Root>/RT11' */
      mcb_pmsm_foc_I2C_f28379d_ori_DW.RT11_Buffer
        [(mcb_pmsm_foc_I2C_f28379d_ori_DW.RT11_semaphoreTaken == 0) << 1U] =
        mcb_pmsm_foc_I2C_f28379d_orig_B.OutportBufferForVdq_ref[0];
      mcb_pmsm_foc_I2C_f28379d_ori_DW.RT11_Buffer[1 +
        ((mcb_pmsm_foc_I2C_f28379d_ori_DW.RT11_semaphoreTaken == 0) << 1U)] =
        mcb_pmsm_foc_I2C_f28379d_orig_B.OutportBufferForVdq_ref[1];
      mcb_pmsm_foc_I2C_f28379d_ori_DW.RT11_ActiveBufIdx =
        (mcb_pmsm_foc_I2C_f28379d_ori_DW.RT11_semaphoreTaken == 0);
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

/* Hardware Interrupt Block: '<S223>/Hardware Interrupt' */
interrupt void SCIA_RX_INT(void)
{
  /* Event: Default Event */
  if (1 == runModel) {
    {
      /* S-Function (HardwareInterrupt_sfun): '<S223>/Hardware Interrupt' */

      /* Output and update for function-call system: '<Root>/Serial Receive' */

      /* S-Function (c28xsci_rx): '<S244>/SCI Receive' */
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
            memcpy( &mcb_pmsm_foc_I2C_f28379d_orig_B.SCIReceive[0], recbuff,4);
          }
        }
      }

      /* DataTypeConversion: '<S242>/Data Type Conversion2' */
      mcb_pmsm_foc_I2C_f28379d_orig_B.DataTypeConversion2 = (uint16_T)
        mcb_pmsm_foc_I2C_f28379d_orig_B.SCIReceive[1];

      /* S-Function (sfix_bitop): '<S241>/Bitwise Operator' */
      mcb_pmsm_foc_I2C_f28379d_orig_B.BitwiseOperator =
        mcb_pmsm_foc_I2C_f28379d_orig_B.DataTypeConversion2 & 1U;

      /* DataTypeConversion: '<S241>/Data Type Conversion3' */
      mcb_pmsm_foc_I2C_f28379d_orig_B.DataTypeConversion3_f =
        (mcb_pmsm_foc_I2C_f28379d_orig_B.BitwiseOperator != 0U);

      /* DataStoreWrite: '<S9>/Data Store Write' */
      mcb_pmsm_foc_I2C_f28379d_ori_DW.Enable =
        mcb_pmsm_foc_I2C_f28379d_orig_B.DataTypeConversion3_f;

      /* DataStoreWrite: '<S9>/Data Store Write1' */
      mcb_pmsm_foc_I2C_f28379d_ori_DW.SpeedRef =
        mcb_pmsm_foc_I2C_f28379d_orig_B.SCIReceive[0];

      /* S-Function (sfix_bitop): '<S241>/Bitwise Operator1' */
      mcb_pmsm_foc_I2C_f28379d_orig_B.BitwiseOperator1 =
        mcb_pmsm_foc_I2C_f28379d_orig_B.DataTypeConversion2 & 240U;

      /* ArithShift: '<S241>/Shift Arithmetic1' incorporates:
       *  S-Function (sfix_bitop): '<S241>/Bitwise Operator1'
       */
      mcb_pmsm_foc_I2C_f28379d_orig_B.ShiftArithmetic1 =
        mcb_pmsm_foc_I2C_f28379d_orig_B.BitwiseOperator1 >> 4U;

      /* DataStoreWrite: '<S9>/Data Store Write2' */
      mcb_pmsm_foc_I2C_f28379d_ori_DW.Debug_signals =
        mcb_pmsm_foc_I2C_f28379d_orig_B.ShiftArithmetic1;

      /* S-Function (sfix_bitop): '<S241>/Bitwise Operator2' */
      mcb_pmsm_foc_I2C_f28379d_orig_B.BitwiseOperator2 =
        mcb_pmsm_foc_I2C_f28379d_orig_B.DataTypeConversion2 & 2U;

      /* ArithShift: '<S241>/Shift Arithmetic2' incorporates:
       *  S-Function (sfix_bitop): '<S241>/Bitwise Operator2'
       */
      mcb_pmsm_foc_I2C_f28379d_orig_B.ShiftArithmetic2 =
        mcb_pmsm_foc_I2C_f28379d_orig_B.BitwiseOperator2 >> 1U;

      /* DataStoreWrite: '<S9>/Data Store Write3' */
      mcb_pmsm_foc_I2C_f28379d_ori_DW.Control_Mode =
        mcb_pmsm_foc_I2C_f28379d_orig_B.ShiftArithmetic2;

      /* End of Outputs for S-Function (HardwareInterrupt_sfun): '<S223>/Hardware Interrupt' */

      /* RateTransition: '<Root>/RT3' */
      mcb_pmsm_foc_I2C_f28379d_ori_DW.RT3_Buffer[mcb_pmsm_foc_I2C_f28379d_ori_DW.RT3_ActiveBufIdx
        == 0] = mcb_pmsm_foc_I2C_f28379d_orig_B.SCIReceive[0];
      mcb_pmsm_foc_I2C_f28379d_ori_DW.RT3_ActiveBufIdx =
        (mcb_pmsm_foc_I2C_f28379d_ori_DW.RT3_ActiveBufIdx == 0);
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

void mcb_pmsm_foc_I2C_f28379d_origin_unconfigure_interrupts (void)
{
  HWI_TIC28x_DisableIRQ(33);
  HWI_TIC28x_DisableIRQ(96);
}

/*
 * File trailer for generated code.
 *
 * [EOF]
 */
