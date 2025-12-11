/*
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * File: mcb_pmsm_foc_test_f28379d.c
 *
 * Code generated for Simulink model 'mcb_pmsm_foc_test_f28379d'.
 *
 * Model version                  : 7.13
 * Simulink Coder version         : 23.2 (R2023b) 01-Aug-2023
 * C/C++ source code generated on : Tue Dec  9 23:18:23 2025
 *
 * Target selection: ert.tlc
 * Embedded hardware selection: Texas Instruments->C2000
 * Code generation objectives: Unspecified
 * Validation result: Not run
 */

#include "mcb_pmsm_foc_test_f28379d.h"
#include "mcb_pmsm_foc_test_f28379d_private.h"
#include "rtwtypes.h"
#include <math.h>
#include "rt_nonfinite.h"
#include <string.h>

/* Block signals (default storage) */
B_mcb_pmsm_foc_test_f28379d_T mcb_pmsm_foc_test_f28379d_B;

/* Block states (default storage) */
DW_mcb_pmsm_foc_test_f28379d_T mcb_pmsm_foc_test_f28379d_DW;

/* Real-time model */
static RT_MODEL_mcb_pmsm_foc_test_f2_T mcb_pmsm_foc_test_f28379d_M_;
RT_MODEL_mcb_pmsm_foc_test_f2_T *const mcb_pmsm_foc_test_f28379d_M =
  &mcb_pmsm_foc_test_f28379d_M_;
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
void mcb_pmsm_foc_test_f28379d_SetEventsForThisBaseStep(boolean_T *eventFlags)
{
  /* Task runs when its counter is zero, computed via rtmStepTask macro */
  eventFlags[1] = ((boolean_T)rtmStepTask(mcb_pmsm_foc_test_f28379d_M, 1));
  eventFlags[2] = ((boolean_T)rtmStepTask(mcb_pmsm_foc_test_f28379d_M, 2));
  eventFlags[3] = ((boolean_T)rtmStepTask(mcb_pmsm_foc_test_f28379d_M, 3));
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
  (mcb_pmsm_foc_test_f28379d_M->Timing.TaskCounters.TID[1])++;
  if ((mcb_pmsm_foc_test_f28379d_M->Timing.TaskCounters.TID[1]) > 1) {/* Sample time: [0.001s, 0.0s] */
    mcb_pmsm_foc_test_f28379d_M->Timing.TaskCounters.TID[1] = 0;
  }

  (mcb_pmsm_foc_test_f28379d_M->Timing.TaskCounters.TID[2])++;
  if ((mcb_pmsm_foc_test_f28379d_M->Timing.TaskCounters.TID[2]) > 29) {/* Sample time: [0.015s, 0.0s] */
    mcb_pmsm_foc_test_f28379d_M->Timing.TaskCounters.TID[2] = 0;
  }

  (mcb_pmsm_foc_test_f28379d_M->Timing.TaskCounters.TID[3])++;
  if ((mcb_pmsm_foc_test_f28379d_M->Timing.TaskCounters.TID[3]) > 999) {/* Sample time: [0.5s, 0.0s] */
    mcb_pmsm_foc_test_f28379d_M->Timing.TaskCounters.TID[3] = 0;
  }
}

/* Output and update for function-call system: '<S12>/Delay 1ms' */
void mcb_pmsm_foc_test__Delay1ms(void)
{
  /* user code (Output function Body) */

  /* System '<S12>/Delay 1ms' */
  DELAY_US(1000);

  /*Delay of 1 ms*/
}

/*
 * Output and update for action system:
 *    '<S153>/If Action Subsystem'
 *    '<S162>/If Action Subsystem'
 */
void mcb_pmsm__IfActionSubsystem(real32_T rtu_In1, real32_T *rty_Out1,
  B_IfActionSubsystem_mcb_pmsm__T *localB)
{
  /* DataTypeConversion: '<S155>/Convert_uint16' */
  localB->Convert_uint16 = (int16_T)(real32_T)floor(rtu_In1);

  /* DataTypeConversion: '<S155>/Convert_back' */
  localB->Convert_back = localB->Convert_uint16;

  /* Sum: '<S155>/Sum' */
  *rty_Out1 = rtu_In1 - localB->Convert_back;
}

/*
 * Output and update for action system:
 *    '<S153>/If Action Subsystem1'
 *    '<S162>/If Action Subsystem1'
 */
void mcb_pmsm_IfActionSubsystem1(real32_T rtu_In1, real32_T *rty_Out1,
  B_IfActionSubsystem1_mcb_pmsm_T *localB)
{
  /* DataTypeConversion: '<S156>/Convert_uint16' */
  localB->Convert_uint16 = (int16_T)rtu_In1;

  /* DataTypeConversion: '<S156>/Convert_back' */
  localB->Convert_back = localB->Convert_uint16;

  /* Sum: '<S156>/Sum' */
  *rty_Out1 = rtu_In1 - localB->Convert_back;
}

/* System initialize for function-call system: '<Root>/Current Control' */
void mcb_pms_CurrentControl_Init(void)
{
  /* Start for S-Function (c2802xadc): '<S174>/ADC_C_IN2' */
  if (MW_adcCInitFlag == 0U) {
    InitAdcC();
    MW_adcCInitFlag = 1U;
  }

  config_ADCC_SOC0 ();

  /* Start for S-Function (c2802xadc): '<S174>/ADC_B_IN2' */
  if (MW_adcBInitFlag == 0U) {
    InitAdcB();
    MW_adcBInitFlag = 1U;
  }

  config_ADCB_SOC0 ();

  /* Start for Constant: '<S33>/Kp1' */
  mcb_pmsm_foc_test_f28379d_B.Kp1 = 0.0F;

  /* Start for Constant: '<S32>/Ki1' */
  mcb_pmsm_foc_test_f28379d_B.Ki1 = 0.0F;

  /* Start for S-Function (c280xgpio_do): '<S198>/DRV830x Enable' */
  EALLOW;
  GpioCtrlRegs.GPDMUX2.all &= 0xFCFFFFFFU;
  GpioCtrlRegs.GPDDIR.all |= 0x10000000U;
  EDIS;

  /* Start for S-Function (c2802xpwm): '<S198>/ePWM1' */

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

  /* Start for S-Function (c2802xpwm): '<S198>/ePWM2' */

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

  /* Start for S-Function (c2802xpwm): '<S198>/ePWM3' */

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

  /* InitializeConditions for S-Function (sdspunwrap2): '<S175>/Unwrap' */
  mcb_pmsm_foc_test_f28379d_DW.Unwrap_FirstStep = true;
  mcb_pmsm_foc_test_f28379d_DW.Unwrap_Cumsum = 0.0F;

  /* InitializeConditions for Delay: '<S179>/Delay' */
  mcb_pmsm_foc_test_f28379d_DW.CircBufIdx = 0U;

  /* InitializeConditions for DiscreteIntegrator: '<S133>/Integrator' */
  mcb_pmsm_foc_test_f28379d_DW.Integrator_DSTATE = 0.0F;
  mcb_pmsm_foc_test_f28379d_DW.Integrator_PrevResetState = 0;

  /* InitializeConditions for DiscreteIntegrator: '<S82>/Integrator' */
  mcb_pmsm_foc_test_f28379d_DW.Integrator_DSTATE_o = 0.0F;
  mcb_pmsm_foc_test_f28379d_DW.Integrator_PrevResetState_k = 0;
}

/* System reset for function-call system: '<Root>/Current Control' */
void mcb_pm_CurrentControl_Reset(void)
{
  /* InitializeConditions for S-Function (sdspunwrap2): '<S175>/Unwrap' */
  mcb_pmsm_foc_test_f28379d_DW.Unwrap_FirstStep = true;
  mcb_pmsm_foc_test_f28379d_DW.Unwrap_Cumsum = 0.0F;

  /* InitializeConditions for Delay: '<S179>/Delay' */
  mcb_pmsm_foc_test_f28379d_DW.CircBufIdx = 0U;

  /* InitializeConditions for DiscreteIntegrator: '<S133>/Integrator' */
  mcb_pmsm_foc_test_f28379d_DW.Integrator_DSTATE =
    mcb_pmsm_foc_test_f28379d_B.Kp1;
  mcb_pmsm_foc_test_f28379d_DW.Integrator_PrevResetState = 0;

  /* InitializeConditions for DiscreteIntegrator: '<S82>/Integrator' */
  mcb_pmsm_foc_test_f28379d_DW.Integrator_DSTATE_o =
    mcb_pmsm_foc_test_f28379d_B.Ki1;
  mcb_pmsm_foc_test_f28379d_DW.Integrator_PrevResetState_k = 0;
}

/* Output and update for function-call system: '<Root>/Current Control' */
#pragma CODE_SECTION (mcb_pmsm_foc_CurrentControl, "ramfuncs")

void mcb_pmsm_foc_CurrentControl(void)
{
  real32_T Bias;
  real32_T dpTmp;
  real32_T uPrev;
  uint32_T Sum;
  int16_T s203_iter;
  uint16_T Scale_to_PWM_Counter_PRD;

  /* UnitDelay: '<S205>/Output' */
  mcb_pmsm_foc_test_f28379d_B.Output =
    mcb_pmsm_foc_test_f28379d_DW.Output_DSTATE;

  /* DataStoreRead: '<S2>/Data Store Read2' */
  mcb_pmsm_foc_test_f28379d_B.DataStoreRead2 =
    mcb_pmsm_foc_test_f28379d_DW.SpeedRef;

  /* S-Function (sdspunwrap2): '<S175>/Unwrap' */
  if (mcb_pmsm_foc_test_f28379d_DW.Unwrap_FirstStep) {
    mcb_pmsm_foc_test_f28379d_DW.Unwrap_Prev = mcb_pmsm_foc_test_f28379d_B.RT4;
    mcb_pmsm_foc_test_f28379d_DW.Unwrap_FirstStep = false;
  }

  Bias = mcb_pmsm_foc_test_f28379d_DW.Unwrap_Cumsum;
  uPrev = mcb_pmsm_foc_test_f28379d_DW.Unwrap_Prev;
  uPrev = mcb_pmsm_foc_test_f28379d_B.RT4 - uPrev;
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

  uPrev = mcb_pmsm_foc_test_f28379d_B.RT4;

  /* S-Function (sdspunwrap2): '<S175>/Unwrap' */
  mcb_pmsm_foc_test_f28379d_B.Unwrap = mcb_pmsm_foc_test_f28379d_B.RT4 + Bias;

  /* S-Function (sdspunwrap2): '<S175>/Unwrap' */
  mcb_pmsm_foc_test_f28379d_DW.Unwrap_Prev = uPrev;
  mcb_pmsm_foc_test_f28379d_DW.Unwrap_Cumsum = Bias;

  /* Gain: '<S179>/PositionToCount' */
  mcb_pmsm_foc_test_f28379d_B.PositionToCount = (uint32_T)(4.2949673E+9F *
    mcb_pmsm_foc_test_f28379d_B.Unwrap);

  /* Delay: '<S179>/Delay' */
  mcb_pmsm_foc_test_f28379d_B.Delay =
    mcb_pmsm_foc_test_f28379d_DW.Delay_DSTATE_p[mcb_pmsm_foc_test_f28379d_DW.CircBufIdx];

  /* Sum: '<S179>/SpeedCount' */
  mcb_pmsm_foc_test_f28379d_B.SpeedCount = (int32_T)
    mcb_pmsm_foc_test_f28379d_B.PositionToCount - (int32_T)
    mcb_pmsm_foc_test_f28379d_B.Delay;

  /* DataTypeConversion: '<S195>/DTC' */
  mcb_pmsm_foc_test_f28379d_B.DTC = (real32_T)
    mcb_pmsm_foc_test_f28379d_B.SpeedCount;

  /* Gain: '<S179>/SpeedGain' */
  mcb_pmsm_foc_test_f28379d_B.SpeedGain = 6.75850931E-9F *
    mcb_pmsm_foc_test_f28379d_B.DTC;

  /* Product: '<S185>/Product' incorporates:
   *  Constant: '<S185>/Filter_Constant'
   */
  mcb_pmsm_foc_test_f28379d_B.Product = mcb_pmsm_foc_test_f28379d_B.SpeedGain *
    0.001F;

  /* UnitDelay: '<S185>/Unit Delay' */
  mcb_pmsm_foc_test_f28379d_B.UnitDelay =
    mcb_pmsm_foc_test_f28379d_DW.UnitDelay_DSTATE;

  /* Product: '<S185>/Product1' incorporates:
   *  Constant: '<S185>/One'
   */
  mcb_pmsm_foc_test_f28379d_B.Product1 = 0.999F *
    mcb_pmsm_foc_test_f28379d_B.UnitDelay;

  /* Sum: '<S185>/Add1' */
  mcb_pmsm_foc_test_f28379d_B.Add1 = mcb_pmsm_foc_test_f28379d_B.Product +
    mcb_pmsm_foc_test_f28379d_B.Product1;

  /* DataStoreRead: '<S176>/Data Store Read1' */
  mcb_pmsm_foc_test_f28379d_B.DataStoreRead1_o =
    mcb_pmsm_foc_test_f28379d_DW.IaOffset;

  /* DataStoreRead: '<S176>/Data Store Read2' */
  mcb_pmsm_foc_test_f28379d_B.DataStoreRead2_j =
    mcb_pmsm_foc_test_f28379d_DW.IbOffset;

  /* S-Function (c2802xadc): '<S174>/ADC_C_IN2' */
  {
    /*  Internal Reference Voltage : Fixed scale 0 to 3.3 V range.  */
    /*  External Reference Voltage : Allowable ranges of VREFHI(ADCINA0) = 3.3 and VREFLO(tied to ground) = 0  */
    mcb_pmsm_foc_test_f28379d_B.ADC_C_IN2 = (AdccResultRegs.ADCRESULT0);
  }

  /* S-Function (c2802xadc): '<S174>/ADC_B_IN2' */
  {
    /*  Internal Reference Voltage : Fixed scale 0 to 3.3 V range.  */
    /*  External Reference Voltage : Allowable ranges of VREFHI(ADCINA0) = 3.3 and VREFLO(tied to ground) = 0  */
    mcb_pmsm_foc_test_f28379d_B.ADC_B_IN2 = (AdcbResultRegs.ADCRESULT0);
  }

  /* DataTypeConversion: '<S176>/Data Type Conversion' */
  mcb_pmsm_foc_test_f28379d_B.DataTypeConversion_c[0] =
    mcb_pmsm_foc_test_f28379d_B.ADC_C_IN2;
  mcb_pmsm_foc_test_f28379d_B.DataTypeConversion_c[1] =
    mcb_pmsm_foc_test_f28379d_B.ADC_B_IN2;

  /* Sum: '<S176>/Add' */
  mcb_pmsm_foc_test_f28379d_B.Add_e[0] =
    mcb_pmsm_foc_test_f28379d_B.DataTypeConversion_c[0] -
    mcb_pmsm_foc_test_f28379d_B.DataStoreRead1_o;
  mcb_pmsm_foc_test_f28379d_B.Add_e[1] =
    mcb_pmsm_foc_test_f28379d_B.DataTypeConversion_c[1] -
    mcb_pmsm_foc_test_f28379d_B.DataStoreRead2_j;

  /* Gain: '<S197>/Get ADC Voltage' */
  Bias = 0.000732600747F * (real32_T)mcb_pmsm_foc_test_f28379d_B.Add_e[0];
  mcb_pmsm_foc_test_f28379d_B.GetADCVoltage[0] = Bias;

  /* Gain: '<S197>/Get Currents' */
  Bias *= 7.14285707F;
  mcb_pmsm_foc_test_f28379d_B.GetCurrents[0] = Bias;

  /* Gain: '<S197>/PU_Conversion' */
  mcb_pmsm_foc_test_f28379d_B.PU_Conversion[0] = 0.0933333337F * Bias;

  /* Gain: '<S197>/Get ADC Voltage' */
  Bias = 0.000732600747F * (real32_T)mcb_pmsm_foc_test_f28379d_B.Add_e[1];
  mcb_pmsm_foc_test_f28379d_B.GetADCVoltage[1] = Bias;

  /* Gain: '<S197>/Get Currents' */
  Bias *= 7.14285707F;
  mcb_pmsm_foc_test_f28379d_B.GetCurrents[1] = Bias;

  /* Gain: '<S197>/PU_Conversion' */
  mcb_pmsm_foc_test_f28379d_B.PU_Conversion[1] = 0.0933333337F * Bias;

  /* Outputs for Atomic SubSystem: '<S29>/Two phase CRL wrap' */
  /* Sum: '<S30>/a_plus_2b' */
  mcb_pmsm_foc_test_f28379d_B.a_plus_2b =
    (mcb_pmsm_foc_test_f28379d_B.PU_Conversion[0] +
     mcb_pmsm_foc_test_f28379d_B.PU_Conversion[1]) +
    mcb_pmsm_foc_test_f28379d_B.PU_Conversion[1];

  /* Gain: '<S30>/one_by_sqrt3' */
  mcb_pmsm_foc_test_f28379d_B.one_by_sqrt3 = 0.577350259F *
    mcb_pmsm_foc_test_f28379d_B.a_plus_2b;

  /* AlgorithmDescriptorDelegate generated from: '<S30>/a16' */
  mcb_pmsm_foc_test_f28379d_B.algDD_o1_e =
    mcb_pmsm_foc_test_f28379d_B.PU_Conversion[0];

  /* AlgorithmDescriptorDelegate generated from: '<S30>/a16' */
  mcb_pmsm_foc_test_f28379d_B.algDD_o2_h =
    mcb_pmsm_foc_test_f28379d_B.one_by_sqrt3;

  /* End of Outputs for SubSystem: '<S29>/Two phase CRL wrap' */

  /* Switch: '<S187>/Switch' incorporates:
   *  Constant: '<S187>/Constant1'
   */
  mcb_pmsm_foc_test_f28379d_B.Switch = 0.65F;

  /* If: '<S188>/If' */
  if (mcb_pmsm_foc_test_f28379d_B.RT4 <= 0.65F) {
    /* Outputs for IfAction SubSystem: '<S188>/If Action Subsystem' incorporates:
     *  ActionPort: '<S190>/Action Port'
     */
    /* Merge: '<S188>/Merge' incorporates:
     *  Constant: '<S190>/Constant'
     *  Sum: '<S190>/Add'
     */
    mcb_pmsm_foc_test_f28379d_B.Merge = (mcb_pmsm_foc_test_f28379d_B.RT4 + 1.0F)
      - 0.65F;

    /* End of Outputs for SubSystem: '<S188>/If Action Subsystem' */
  } else {
    /* Outputs for IfAction SubSystem: '<S188>/If Action Subsystem1' incorporates:
     *  ActionPort: '<S191>/Action Port'
     */
    /* Merge: '<S188>/Merge' incorporates:
     *  Sum: '<S191>/Add'
     */
    mcb_pmsm_foc_test_f28379d_B.Merge = mcb_pmsm_foc_test_f28379d_B.RT4 - 0.65F;

    /* End of Outputs for SubSystem: '<S188>/If Action Subsystem1' */
  }

  /* End of If: '<S188>/If' */

  /* Gain: '<S193>/Number of pole pairs' */
  mcb_pmsm_foc_test_f28379d_B.Numberofpolepairs = 5.0F *
    mcb_pmsm_foc_test_f28379d_B.Merge;

  /* Rounding: '<S189>/Floor' */
  mcb_pmsm_foc_test_f28379d_B.Floor = (real32_T)floor
    (mcb_pmsm_foc_test_f28379d_B.Numberofpolepairs);

  /* Sum: '<S189>/Add' */
  mcb_pmsm_foc_test_f28379d_B.Add_c =
    mcb_pmsm_foc_test_f28379d_B.Numberofpolepairs -
    mcb_pmsm_foc_test_f28379d_B.Floor;

  /* RelationalOperator: '<S163>/Compare' incorporates:
   *  Constant: '<S163>/Constant'
   */
  mcb_pmsm_foc_test_f28379d_B.Compare = (mcb_pmsm_foc_test_f28379d_B.Add_c <
    0.0F);

  /* DataTypeConversion: '<S162>/Data Type Conversion' */
  mcb_pmsm_foc_test_f28379d_B.DataTypeConversion_i =
    mcb_pmsm_foc_test_f28379d_B.Compare;

  /* If: '<S162>/If' */
  if (mcb_pmsm_foc_test_f28379d_B.DataTypeConversion_i > 0U) {
    /* Outputs for IfAction SubSystem: '<S162>/If Action Subsystem' incorporates:
     *  ActionPort: '<S164>/Action Port'
     */
    mcb_pmsm__IfActionSubsystem(mcb_pmsm_foc_test_f28379d_B.Add_c,
      &mcb_pmsm_foc_test_f28379d_B.Merge_o,
      &mcb_pmsm_foc_test_f28379d_B.IfActionSubsystem_e);

    /* End of Outputs for SubSystem: '<S162>/If Action Subsystem' */
  } else {
    /* Outputs for IfAction SubSystem: '<S162>/If Action Subsystem1' incorporates:
     *  ActionPort: '<S165>/Action Port'
     */
    mcb_pmsm_IfActionSubsystem1(mcb_pmsm_foc_test_f28379d_B.Add_c,
      &mcb_pmsm_foc_test_f28379d_B.Merge_o,
      &mcb_pmsm_foc_test_f28379d_B.IfActionSubsystem1_k);

    /* End of Outputs for SubSystem: '<S162>/If Action Subsystem1' */
  }

  /* End of If: '<S162>/If' */

  /* Gain: '<S160>/indexing' */
  mcb_pmsm_foc_test_f28379d_B.indexing = 800.0F *
    mcb_pmsm_foc_test_f28379d_B.Merge_o;

  /* DataTypeConversion: '<S160>/Get_Integer' */
  mcb_pmsm_foc_test_f28379d_B.Get_Integer = (uint16_T)
    mcb_pmsm_foc_test_f28379d_B.indexing;

  /* Sum: '<S160>/Sum' incorporates:
   *  Constant: '<S160>/offset'
   */
  Sum = mcb_pmsm_foc_test_f28379d_B.Get_Integer + 1UL;
  mcb_pmsm_foc_test_f28379d_B.Sum[0] = Sum;

  /* Selector: '<S160>/Lookup' incorporates:
   *  Constant: '<S160>/sine_table_values'
   */
  mcb_pmsm_foc_test_f28379d_B.Lookup[0] =
    mcb_pmsm_foc_test_f28379_ConstP.pooled6[(int16_T)Sum];

  /* Sum: '<S160>/Sum' */
  Sum = mcb_pmsm_foc_test_f28379d_B.Get_Integer;
  mcb_pmsm_foc_test_f28379d_B.Sum[1] = Sum;

  /* Selector: '<S160>/Lookup' incorporates:
   *  Constant: '<S160>/sine_table_values'
   */
  mcb_pmsm_foc_test_f28379d_B.Lookup[1] =
    mcb_pmsm_foc_test_f28379_ConstP.pooled6[(int16_T)Sum];

  /* Sum: '<S160>/Sum' incorporates:
   *  Constant: '<S160>/offset'
   */
  Sum = mcb_pmsm_foc_test_f28379d_B.Get_Integer + 201UL;
  mcb_pmsm_foc_test_f28379d_B.Sum[2] = Sum;

  /* Selector: '<S160>/Lookup' incorporates:
   *  Constant: '<S160>/sine_table_values'
   */
  mcb_pmsm_foc_test_f28379d_B.Lookup[2] =
    mcb_pmsm_foc_test_f28379_ConstP.pooled6[(int16_T)Sum];

  /* Sum: '<S160>/Sum' incorporates:
   *  Constant: '<S160>/offset'
   */
  Sum = mcb_pmsm_foc_test_f28379d_B.Get_Integer + 200UL;
  mcb_pmsm_foc_test_f28379d_B.Sum[3] = Sum;

  /* Selector: '<S160>/Lookup' incorporates:
   *  Constant: '<S160>/sine_table_values'
   */
  mcb_pmsm_foc_test_f28379d_B.Lookup[3] =
    mcb_pmsm_foc_test_f28379_ConstP.pooled6[(int16_T)Sum];

  /* Sum: '<S161>/Sum3' */
  mcb_pmsm_foc_test_f28379d_B.Sum3 = mcb_pmsm_foc_test_f28379d_B.Lookup[0] -
    mcb_pmsm_foc_test_f28379d_B.Lookup[1];

  /* DataTypeConversion: '<S160>/Data Type Conversion1' */
  mcb_pmsm_foc_test_f28379d_B.DataTypeConversion1 =
    mcb_pmsm_foc_test_f28379d_B.Get_Integer;

  /* Sum: '<S160>/Sum2' */
  mcb_pmsm_foc_test_f28379d_B.Sum2 = mcb_pmsm_foc_test_f28379d_B.indexing -
    mcb_pmsm_foc_test_f28379d_B.DataTypeConversion1;

  /* Product: '<S161>/Product' */
  mcb_pmsm_foc_test_f28379d_B.Product_i = mcb_pmsm_foc_test_f28379d_B.Sum3 *
    mcb_pmsm_foc_test_f28379d_B.Sum2;

  /* Sum: '<S161>/Sum4' */
  mcb_pmsm_foc_test_f28379d_B.Sum4 = mcb_pmsm_foc_test_f28379d_B.Product_i +
    mcb_pmsm_foc_test_f28379d_B.Lookup[1];

  /* Sum: '<S161>/Sum5' */
  mcb_pmsm_foc_test_f28379d_B.Sum5 = mcb_pmsm_foc_test_f28379d_B.Lookup[2] -
    mcb_pmsm_foc_test_f28379d_B.Lookup[3];

  /* Product: '<S161>/Product1' */
  mcb_pmsm_foc_test_f28379d_B.Product1_b = mcb_pmsm_foc_test_f28379d_B.Sum5 *
    mcb_pmsm_foc_test_f28379d_B.Sum2;

  /* Sum: '<S161>/Sum6' */
  mcb_pmsm_foc_test_f28379d_B.Sum6 = mcb_pmsm_foc_test_f28379d_B.Product1_b +
    mcb_pmsm_foc_test_f28379d_B.Lookup[3];

  /* Outputs for Atomic SubSystem: '<S27>/Two inputs CRL' */
  /* Product: '<S159>/acos' */
  mcb_pmsm_foc_test_f28379d_B.acos_b = mcb_pmsm_foc_test_f28379d_B.algDD_o1_e *
    mcb_pmsm_foc_test_f28379d_B.Sum6;

  /* Product: '<S159>/bsin' */
  mcb_pmsm_foc_test_f28379d_B.bsin = mcb_pmsm_foc_test_f28379d_B.algDD_o2_h *
    mcb_pmsm_foc_test_f28379d_B.Sum4;

  /* Sum: '<S159>/sum_Ds' */
  mcb_pmsm_foc_test_f28379d_B.sum_Ds = mcb_pmsm_foc_test_f28379d_B.acos_b +
    mcb_pmsm_foc_test_f28379d_B.bsin;

  /* Product: '<S159>/bcos' */
  mcb_pmsm_foc_test_f28379d_B.bcos = mcb_pmsm_foc_test_f28379d_B.algDD_o2_h *
    mcb_pmsm_foc_test_f28379d_B.Sum6;

  /* Product: '<S159>/asin' */
  mcb_pmsm_foc_test_f28379d_B.asin_o = mcb_pmsm_foc_test_f28379d_B.algDD_o1_e *
    mcb_pmsm_foc_test_f28379d_B.Sum4;

  /* Sum: '<S159>/sum_Qs' */
  mcb_pmsm_foc_test_f28379d_B.sum_Qs = mcb_pmsm_foc_test_f28379d_B.bcos -
    mcb_pmsm_foc_test_f28379d_B.asin_o;

  /* Switch: '<S166>/Switch' */
  mcb_pmsm_foc_test_f28379d_B.Switch_h[0] = mcb_pmsm_foc_test_f28379d_B.sum_Ds;
  mcb_pmsm_foc_test_f28379d_B.Switch_h[1] = mcb_pmsm_foc_test_f28379d_B.sum_Qs;

  /* AlgorithmDescriptorDelegate generated from: '<S159>/a16' */
  mcb_pmsm_foc_test_f28379d_B.algDD_o1 = mcb_pmsm_foc_test_f28379d_B.Switch_h[0];

  /* AlgorithmDescriptorDelegate generated from: '<S159>/a16' */
  mcb_pmsm_foc_test_f28379d_B.algDD_o2 = mcb_pmsm_foc_test_f28379d_B.Switch_h[1];

  /* End of Outputs for SubSystem: '<S27>/Two inputs CRL' */

  /* SignalConversion generated from: '<S17>/Selector' */
  mcb_pmsm_foc_test_f28379d_B.TmpSignalConversionAtSelectorIn[0] =
    mcb_pmsm_foc_test_f28379d_B.DataStoreRead2;
  mcb_pmsm_foc_test_f28379d_B.TmpSignalConversionAtSelectorIn[1] =
    mcb_pmsm_foc_test_f28379d_B.Add1;
  mcb_pmsm_foc_test_f28379d_B.TmpSignalConversionAtSelectorIn[2] =
    mcb_pmsm_foc_test_f28379d_B.PU_Conversion[0];
  mcb_pmsm_foc_test_f28379d_B.TmpSignalConversionAtSelectorIn[3] =
    mcb_pmsm_foc_test_f28379d_B.PU_Conversion[1];
  mcb_pmsm_foc_test_f28379d_B.TmpSignalConversionAtSelectorIn[4] =
    mcb_pmsm_foc_test_f28379d_B.RT2[0];
  mcb_pmsm_foc_test_f28379d_B.TmpSignalConversionAtSelectorIn[5] =
    mcb_pmsm_foc_test_f28379d_B.algDD_o1;
  mcb_pmsm_foc_test_f28379d_B.TmpSignalConversionAtSelectorIn[6] =
    mcb_pmsm_foc_test_f28379d_B.RT2[1];
  mcb_pmsm_foc_test_f28379d_B.TmpSignalConversionAtSelectorIn[7] =
    mcb_pmsm_foc_test_f28379d_B.algDD_o2;
  mcb_pmsm_foc_test_f28379d_B.TmpSignalConversionAtSelectorIn[8] =
    mcb_pmsm_foc_test_f28379d_B.Add_c;
  mcb_pmsm_foc_test_f28379d_B.TmpSignalConversionAtSelectorIn[9] =
    mcb_pmsm_foc_test_f28379d_B.RT15;
  mcb_pmsm_foc_test_f28379d_B.TmpSignalConversionAtSelectorIn[10] =
    mcb_pmsm_foc_test_f28379d_B.RT4;

  /* DataStoreRead: '<S17>/Data Store Read' */
  mcb_pmsm_foc_test_f28379d_B.DataStoreRead =
    mcb_pmsm_foc_test_f28379d_DW.Debug_signals;

  /* MultiPortSwitch: '<S17>/Multiport Switch' */
  switch (mcb_pmsm_foc_test_f28379d_B.DataStoreRead) {
   case 1:
    /* MultiPortSwitch: '<S17>/Multiport Switch' incorporates:
     *  Constant: '<S17>/speed_control'
     */
    mcb_pmsm_foc_test_f28379d_B.MultiportSwitch[0] = 1U;
    mcb_pmsm_foc_test_f28379d_B.MultiportSwitch[1] = 2U;
    break;

   case 2:
    /* MultiPortSwitch: '<S17>/Multiport Switch' incorporates:
     *  Constant: '<S17>/Id_control'
     */
    mcb_pmsm_foc_test_f28379d_B.MultiportSwitch[0] = 5U;
    mcb_pmsm_foc_test_f28379d_B.MultiportSwitch[1] = 6U;
    break;

   case 3:
    /* MultiPortSwitch: '<S17>/Multiport Switch' incorporates:
     *  Constant: '<S17>/Iq_control'
     */
    mcb_pmsm_foc_test_f28379d_B.MultiportSwitch[0] = 7U;
    mcb_pmsm_foc_test_f28379d_B.MultiportSwitch[1] = 8U;
    break;

   case 4:
    /* MultiPortSwitch: '<S17>/Multiport Switch' incorporates:
     *  Constant: '<S17>/Iab'
     */
    mcb_pmsm_foc_test_f28379d_B.MultiportSwitch[0] = 3U;
    mcb_pmsm_foc_test_f28379d_B.MultiportSwitch[1] = 4U;
    break;

   case 5:
    /* MultiPortSwitch: '<S17>/Multiport Switch' incorporates:
     *  Constant: '<S17>/Ia_Pos'
     */
    mcb_pmsm_foc_test_f28379d_B.MultiportSwitch[0] = 10U;
    mcb_pmsm_foc_test_f28379d_B.MultiportSwitch[1] = 11U;
    break;

   default:
    /* MultiPortSwitch: '<S17>/Multiport Switch' incorporates:
     *  Constant: '<S17>/Pos_ref_fb'
     */
    mcb_pmsm_foc_test_f28379d_B.MultiportSwitch[0] = 10U;
    mcb_pmsm_foc_test_f28379d_B.MultiportSwitch[1] = 11U;
    break;
  }

  /* End of MultiPortSwitch: '<S17>/Multiport Switch' */

  /* Selector: '<S17>/Selector' */
  mcb_pmsm_foc_test_f28379d_B.Selector[0] =
    mcb_pmsm_foc_test_f28379d_B.TmpSignalConversionAtSelectorIn[(int16_T)
    mcb_pmsm_foc_test_f28379d_B.MultiportSwitch[0] - 1];
  mcb_pmsm_foc_test_f28379d_B.Selector[1] =
    mcb_pmsm_foc_test_f28379d_B.TmpSignalConversionAtSelectorIn[(int16_T)
    mcb_pmsm_foc_test_f28379d_B.MultiportSwitch[1] - 1];

  /* S-Function (any2byte_svd): '<S204>/Byte Pack' */

  /* Pack: <S204>/Byte Pack */
  {
    uint32_T MW_outputPortOffset = 0;
    uint32_T MW_inputPortWidth = 0;
    uint32_T MW_remainder1 = 0;

    /* Packed output data type - uint32_T */
    /* Packing the values of Input 1 */
    /* Input data type - real32_T, size - 2 */
    {
      MW_inputPortWidth = 2 * sizeof(real32_T);
      memcpy((uint16_T*)&mcb_pmsm_foc_test_f28379d_B.BytePack[0] +
             MW_outputPortOffset, (uint16_T*)
             &mcb_pmsm_foc_test_f28379d_B.Selector[0], MW_inputPortWidth);
    }
  }

  /* If: '<S202>/If' */
  if (mcb_pmsm_foc_test_f28379d_B.Output == 0U) {
    /* Outputs for IfAction SubSystem: '<S202>/Start' incorporates:
     *  ActionPort: '<S208>/Action Port'
     */
    /* Merge: '<S202>/Merge' incorporates:
     *  Constant: '<S208>/Start'
     *  SignalConversion generated from: '<S208>/Data_out'
     */
    mcb_pmsm_foc_test_f28379d_B.SCI_Tx_Data[0] = 1397969747UL;

    /* SignalConversion generated from: '<S208>/Data' */
    Sum = mcb_pmsm_foc_test_f28379d_B.BytePack[0];

    /* End of Outputs for SubSystem: '<S202>/Start' */
    mcb_pmsm_foc_test_f28379d_B.Data_fw[0] = Sum;

    /* Outputs for IfAction SubSystem: '<S202>/Start' incorporates:
     *  ActionPort: '<S208>/Action Port'
     */
    /* Merge: '<S202>/Merge' incorporates:
     *  SignalConversion generated from: '<S208>/Data_out'
     */
    mcb_pmsm_foc_test_f28379d_B.SCI_Tx_Data[1] = Sum;

    /* SignalConversion generated from: '<S208>/Data' */
    Sum = mcb_pmsm_foc_test_f28379d_B.BytePack[1];

    /* End of Outputs for SubSystem: '<S202>/Start' */
    mcb_pmsm_foc_test_f28379d_B.Data_fw[1] = Sum;

    /* Outputs for IfAction SubSystem: '<S202>/Start' incorporates:
     *  ActionPort: '<S208>/Action Port'
     */
    /* Merge: '<S202>/Merge' incorporates:
     *  SignalConversion generated from: '<S208>/Data_out'
     */
    mcb_pmsm_foc_test_f28379d_B.SCI_Tx_Data[2] = Sum;

    /* Merge: '<S202>/Merge1' incorporates:
     *  Bias: '<S208>/Bias'
     */
    mcb_pmsm_foc_test_f28379d_B.SCI_Tx_Iteration =
      mcb_pmsm_foc_test_f28379_ConstB.Width + 1UL;

    /* End of Outputs for SubSystem: '<S202>/Start' */
  } else if (mcb_pmsm_foc_test_f28379d_B.Output == 599U) {
    /* Outputs for IfAction SubSystem: '<S202>/End' incorporates:
     *  ActionPort: '<S207>/Action Port'
     */
    /* SignalConversion generated from: '<S207>/Data' */
    Sum = mcb_pmsm_foc_test_f28379d_B.BytePack[0];

    /* End of Outputs for SubSystem: '<S202>/End' */
    mcb_pmsm_foc_test_f28379d_B.Data_f[0] = Sum;

    /* Outputs for IfAction SubSystem: '<S202>/End' incorporates:
     *  ActionPort: '<S207>/Action Port'
     */
    /* Merge: '<S202>/Merge' incorporates:
     *  SignalConversion generated from: '<S207>/Data_out'
     */
    mcb_pmsm_foc_test_f28379d_B.SCI_Tx_Data[0] = Sum;

    /* SignalConversion generated from: '<S207>/Data' */
    Sum = mcb_pmsm_foc_test_f28379d_B.BytePack[1];

    /* End of Outputs for SubSystem: '<S202>/End' */
    mcb_pmsm_foc_test_f28379d_B.Data_f[1] = Sum;

    /* Outputs for IfAction SubSystem: '<S202>/End' incorporates:
     *  ActionPort: '<S207>/Action Port'
     */
    /* Merge: '<S202>/Merge' incorporates:
     *  Constant: '<S207>/End'
     *  SignalConversion generated from: '<S207>/Data_out'
     */
    mcb_pmsm_foc_test_f28379d_B.SCI_Tx_Data[1] = Sum;
    mcb_pmsm_foc_test_f28379d_B.SCI_Tx_Data[2] = 1162167621UL;

    /* Merge: '<S202>/Merge1' incorporates:
     *  Bias: '<S207>/Bias'
     */
    mcb_pmsm_foc_test_f28379d_B.SCI_Tx_Iteration =
      mcb_pmsm_foc_test_f28379_ConstB.Width + 1UL;

    /* End of Outputs for SubSystem: '<S202>/End' */
  } else {
    /* Outputs for IfAction SubSystem: '<S202>/Data' incorporates:
     *  ActionPort: '<S206>/Action Port'
     */
    /* SignalConversion generated from: '<S206>/Data' */
    Sum = mcb_pmsm_foc_test_f28379d_B.BytePack[0];

    /* End of Outputs for SubSystem: '<S202>/Data' */
    mcb_pmsm_foc_test_f28379d_B.Data[0] = Sum;

    /* Outputs for IfAction SubSystem: '<S202>/Data' incorporates:
     *  ActionPort: '<S206>/Action Port'
     */
    /* Merge: '<S202>/Merge' incorporates:
     *  SignalConversion generated from: '<S206>/Data_out'
     */
    mcb_pmsm_foc_test_f28379d_B.SCI_Tx_Data[0] = Sum;

    /* SignalConversion generated from: '<S206>/Data' */
    Sum = mcb_pmsm_foc_test_f28379d_B.BytePack[1];

    /* End of Outputs for SubSystem: '<S202>/Data' */
    mcb_pmsm_foc_test_f28379d_B.Data[1] = Sum;

    /* Outputs for IfAction SubSystem: '<S202>/Data' incorporates:
     *  ActionPort: '<S206>/Action Port'
     */
    /* Merge: '<S202>/Merge' incorporates:
     *  Constant: '<S206>/Dummy'
     *  SignalConversion generated from: '<S206>/Data_out'
     */
    mcb_pmsm_foc_test_f28379d_B.SCI_Tx_Data[1] = Sum;
    mcb_pmsm_foc_test_f28379d_B.SCI_Tx_Data[2] = 0UL;

    /* Merge: '<S202>/Merge1' incorporates:
     *  SignalConversion generated from: '<S206>/Data_width'
     */
    mcb_pmsm_foc_test_f28379d_B.SCI_Tx_Iteration =
      mcb_pmsm_foc_test_f28379_ConstB.Width;

    /* End of Outputs for SubSystem: '<S202>/Data' */
  }

  /* End of If: '<S202>/If' */

  /* Outputs for Iterator SubSystem: '<S200>/While Iterator Subsystem' incorporates:
   *  WhileIterator: '<S203>/While Iterator'
   */
  s203_iter = 1;
  do {
    mcb_pmsm_foc_test_f28379d_B.WhileIterator = s203_iter;
    mcb_pmsm_foc_test_f28379d_B.IndexVector =
      mcb_pmsm_foc_test_f28379d_B.SCI_Tx_Data[mcb_pmsm_foc_test_f28379d_B.WhileIterator
      - 1];

    {
      if (checkSCITransmitInProgressA != 1U) {
        checkSCITransmitInProgressA = 1U;
        int16_T errFlgHeader = NOERROR;
        int16_T errFlgData = NOERROR;
        int16_T errFlgTail = NOERROR;
        errFlgData = scia_xmit((unsigned char*)
          &mcb_pmsm_foc_test_f28379d_B.IndexVector, 4, 4);
        checkSCITransmitInProgressA = 0U;
      }
    }

    mcb_pmsm_foc_test_f28379d_B.Add =
      mcb_pmsm_foc_test_f28379d_B.SCI_Tx_Iteration - (uint32_T)
      mcb_pmsm_foc_test_f28379d_B.WhileIterator;
    s203_iter++;
  } while (mcb_pmsm_foc_test_f28379d_B.Add != 0UL);

  /* End of Outputs for SubSystem: '<S200>/While Iterator Subsystem' */

  /* Sum: '<S209>/FixPt Sum1' incorporates:
   *  Constant: '<S209>/FixPt Constant'
   */
  mcb_pmsm_foc_test_f28379d_B.FixPtSum1 = mcb_pmsm_foc_test_f28379d_B.Output +
    1U;

  /* Switch: '<S210>/FixPt Switch' */
  if (mcb_pmsm_foc_test_f28379d_B.FixPtSum1 > 599U) {
    /* Switch: '<S210>/FixPt Switch' incorporates:
     *  Constant: '<S210>/Constant'
     */
    mcb_pmsm_foc_test_f28379d_B.FixPtSwitch = 0U;
  } else {
    /* Switch: '<S210>/FixPt Switch' */
    mcb_pmsm_foc_test_f28379d_B.FixPtSwitch =
      mcb_pmsm_foc_test_f28379d_B.FixPtSum1;
  }

  /* End of Switch: '<S210>/FixPt Switch' */

  /* Switch: '<S36>/Switch1' incorporates:
   *  Constant: '<S36>/ChosenMethod'
   */
  mcb_pmsm_foc_test_f28379d_B.Switch1_j = 3U;

  /* Sum: '<S33>/Sum' */
  mcb_pmsm_foc_test_f28379d_B.Sum_o = mcb_pmsm_foc_test_f28379d_B.RT2[1] -
    mcb_pmsm_foc_test_f28379d_B.algDD_o2;

  /* Product: '<S138>/PProd Out' incorporates:
   *  Constant: '<S33>/Kp'
   */
  mcb_pmsm_foc_test_f28379d_B.PProdOut = mcb_pmsm_foc_test_f28379d_B.Sum_o *
    3.0F;

  /* DataStoreRead: '<S33>/Data Store Read1' */
  mcb_pmsm_foc_test_f28379d_B.DataStoreRead1_b =
    mcb_pmsm_foc_test_f28379d_DW.Enable;

  /* Logic: '<S33>/Logical Operator' */
  mcb_pmsm_foc_test_f28379d_B.LogicalOperator =
    !mcb_pmsm_foc_test_f28379d_B.DataStoreRead1_b;

  /* Constant: '<S33>/Kp1' */
  mcb_pmsm_foc_test_f28379d_B.Kp1 = 0.0F;

  /* DiscreteIntegrator: '<S133>/Integrator' */
  if (mcb_pmsm_foc_test_f28379d_B.LogicalOperator ||
      (mcb_pmsm_foc_test_f28379d_DW.Integrator_PrevResetState != 0)) {
    mcb_pmsm_foc_test_f28379d_DW.Integrator_DSTATE = 0.0F;
  }

  /* DiscreteIntegrator: '<S133>/Integrator' */
  mcb_pmsm_foc_test_f28379d_B.Integrator =
    mcb_pmsm_foc_test_f28379d_DW.Integrator_DSTATE;

  /* Sum: '<S142>/Sum' */
  mcb_pmsm_foc_test_f28379d_B.Sum_m = mcb_pmsm_foc_test_f28379d_B.PProdOut +
    mcb_pmsm_foc_test_f28379d_B.Integrator;

  /* Saturate: '<S140>/Saturation' */
  uPrev = mcb_pmsm_foc_test_f28379d_B.Sum_m;
  if (uPrev > 1.0F) {
    /* Saturate: '<S140>/Saturation' */
    mcb_pmsm_foc_test_f28379d_B.Saturation = 1.0F;
  } else if (uPrev < -1.0F) {
    /* Saturate: '<S140>/Saturation' */
    mcb_pmsm_foc_test_f28379d_B.Saturation = -1.0F;
  } else {
    /* Saturate: '<S140>/Saturation' */
    mcb_pmsm_foc_test_f28379d_B.Saturation = uPrev;
  }

  /* End of Saturate: '<S140>/Saturation' */

  /* Sum: '<S32>/Sum' */
  mcb_pmsm_foc_test_f28379d_B.Sum_j = mcb_pmsm_foc_test_f28379d_B.RT2[0] -
    mcb_pmsm_foc_test_f28379d_B.algDD_o1;

  /* Product: '<S87>/PProd Out' incorporates:
   *  Constant: '<S32>/Kp'
   */
  mcb_pmsm_foc_test_f28379d_B.PProdOut_g = mcb_pmsm_foc_test_f28379d_B.Sum_j *
    2.0F;

  /* DataStoreRead: '<S32>/Data Store Read1' */
  mcb_pmsm_foc_test_f28379d_B.DataStoreRead1_m =
    mcb_pmsm_foc_test_f28379d_DW.Enable;

  /* Logic: '<S32>/Logical Operator' */
  mcb_pmsm_foc_test_f28379d_B.LogicalOperator_a =
    !mcb_pmsm_foc_test_f28379d_B.DataStoreRead1_m;

  /* Constant: '<S32>/Ki1' */
  mcb_pmsm_foc_test_f28379d_B.Ki1 = 0.0F;

  /* DiscreteIntegrator: '<S82>/Integrator' */
  if (mcb_pmsm_foc_test_f28379d_B.LogicalOperator_a ||
      (mcb_pmsm_foc_test_f28379d_DW.Integrator_PrevResetState_k != 0)) {
    mcb_pmsm_foc_test_f28379d_DW.Integrator_DSTATE_o = 0.0F;
  }

  /* DiscreteIntegrator: '<S82>/Integrator' */
  mcb_pmsm_foc_test_f28379d_B.Integrator_f =
    mcb_pmsm_foc_test_f28379d_DW.Integrator_DSTATE_o;

  /* Sum: '<S91>/Sum' */
  mcb_pmsm_foc_test_f28379d_B.Sum_g = mcb_pmsm_foc_test_f28379d_B.PProdOut_g +
    mcb_pmsm_foc_test_f28379d_B.Integrator_f;

  /* Saturate: '<S89>/Saturation' */
  uPrev = mcb_pmsm_foc_test_f28379d_B.Sum_g;
  if (uPrev > 1.0F) {
    /* Saturate: '<S89>/Saturation' */
    mcb_pmsm_foc_test_f28379d_B.Saturation_f = 1.0F;
  } else if (uPrev < -1.0F) {
    /* Saturate: '<S89>/Saturation' */
    mcb_pmsm_foc_test_f28379d_B.Saturation_f = -1.0F;
  } else {
    /* Saturate: '<S89>/Saturation' */
    mcb_pmsm_foc_test_f28379d_B.Saturation_f = uPrev;
  }

  /* End of Saturate: '<S89>/Saturation' */

  /* Switch: '<S36>/Switch' incorporates:
   *  Constant: '<S36>/Constant3'
   */
  mcb_pmsm_foc_test_f28379d_B.Switch_n = 0.95F;

  /* Product: '<S36>/Product' */
  mcb_pmsm_foc_test_f28379d_B.Product_j = 0.9025F;

  /* Product: '<S37>/Product' */
  mcb_pmsm_foc_test_f28379d_B.Product_f =
    mcb_pmsm_foc_test_f28379d_B.Saturation_f *
    mcb_pmsm_foc_test_f28379d_B.Saturation_f;

  /* Product: '<S37>/Product1' */
  mcb_pmsm_foc_test_f28379d_B.Product1_g =
    mcb_pmsm_foc_test_f28379d_B.Saturation *
    mcb_pmsm_foc_test_f28379d_B.Saturation;

  /* Sum: '<S37>/Sum1' */
  mcb_pmsm_foc_test_f28379d_B.Sum1 = mcb_pmsm_foc_test_f28379d_B.Product_f +
    mcb_pmsm_foc_test_f28379d_B.Product1_g;

  /* Outputs for IfAction SubSystem: '<S31>/D-Q Equivalence' incorporates:
   *  ActionPort: '<S34>/Action Port'
   */
  /* If: '<S31>/If' incorporates:
   *  DataTypeConversion: '<S34>/Data Type Conversion'
   *  RelationalOperator: '<S34>/Relational Operator'
   */
  mcb_pmsm_foc_test_f28379d_B.RelationalOperator_k =
    (mcb_pmsm_foc_test_f28379d_B.Sum1 > 0.9025F);
  mcb_pmsm_foc_test_f28379d_B.DataTypeConversion_f =
    mcb_pmsm_foc_test_f28379d_B.RelationalOperator_k;

  /* If: '<S34>/If' incorporates:
   *  If: '<S31>/If'
   */
  if (mcb_pmsm_foc_test_f28379d_B.DataTypeConversion_f != 0U) {
    /* Outputs for IfAction SubSystem: '<S34>/Limiter' incorporates:
     *  ActionPort: '<S38>/Action Port'
     */
    /* Product: '<S38>/Product' */
    mcb_pmsm_foc_test_f28379d_B.Product_o[0] =
      mcb_pmsm_foc_test_f28379d_B.Saturation_f * 0.95F;
    mcb_pmsm_foc_test_f28379d_B.Product_o[1] =
      mcb_pmsm_foc_test_f28379d_B.Saturation * 0.95F;

    /* Sqrt: '<S38>/Square Root' */
    mcb_pmsm_foc_test_f28379d_B.SquareRoot = (real32_T)sqrt
      (mcb_pmsm_foc_test_f28379d_B.Sum1);

    /* Switch: '<S38>/Switch' */
    if (mcb_pmsm_foc_test_f28379d_B.SquareRoot != 0.0F) {
      /* Switch: '<S38>/Switch' */
      mcb_pmsm_foc_test_f28379d_B.Switch_as =
        mcb_pmsm_foc_test_f28379d_B.SquareRoot;
    } else {
      /* Switch: '<S38>/Switch' incorporates:
       *  Constant: '<S38>/Constant'
       */
      mcb_pmsm_foc_test_f28379d_B.Switch_as = 1.0F;
    }

    /* End of Switch: '<S38>/Switch' */

    /* Product: '<S38>/Reciprocal' */
    mcb_pmsm_foc_test_f28379d_B.Reciprocal = 1.0F /
      mcb_pmsm_foc_test_f28379d_B.Switch_as;

    /* Merge: '<S31>/Merge' incorporates:
     *  Product: '<S38>/Product1'
     */
    mcb_pmsm_foc_test_f28379d_B.Merge_i[0] =
      mcb_pmsm_foc_test_f28379d_B.Product_o[0] *
      mcb_pmsm_foc_test_f28379d_B.Reciprocal;
    mcb_pmsm_foc_test_f28379d_B.Merge_i[1] =
      mcb_pmsm_foc_test_f28379d_B.Product_o[1] *
      mcb_pmsm_foc_test_f28379d_B.Reciprocal;

    /* End of Outputs for SubSystem: '<S34>/Limiter' */
  } else {
    /* Outputs for IfAction SubSystem: '<S34>/Passthrough' incorporates:
     *  ActionPort: '<S39>/Action Port'
     */
    /* Merge: '<S31>/Merge' incorporates:
     *  SignalConversion generated from: '<S39>/dqRef'
     */
    mcb_pmsm_foc_test_f28379d_B.Merge_i[0] =
      mcb_pmsm_foc_test_f28379d_B.Saturation_f;
    mcb_pmsm_foc_test_f28379d_B.Merge_i[1] =
      mcb_pmsm_foc_test_f28379d_B.Saturation;

    /* End of Outputs for SubSystem: '<S34>/Passthrough' */
  }

  /* End of If: '<S34>/If' */
  /* End of Outputs for SubSystem: '<S31>/D-Q Equivalence' */

  /* DeadZone: '<S75>/DeadZone' */
  if (mcb_pmsm_foc_test_f28379d_B.Sum_g > 1.0F) {
    /* DeadZone: '<S75>/DeadZone' */
    mcb_pmsm_foc_test_f28379d_B.DeadZone = mcb_pmsm_foc_test_f28379d_B.Sum_g -
      1.0F;
  } else if (mcb_pmsm_foc_test_f28379d_B.Sum_g >= -1.0F) {
    /* DeadZone: '<S75>/DeadZone' */
    mcb_pmsm_foc_test_f28379d_B.DeadZone = 0.0F;
  } else {
    /* DeadZone: '<S75>/DeadZone' */
    mcb_pmsm_foc_test_f28379d_B.DeadZone = mcb_pmsm_foc_test_f28379d_B.Sum_g -
      -1.0F;
  }

  /* End of DeadZone: '<S75>/DeadZone' */

  /* RelationalOperator: '<S73>/Relational Operator' incorporates:
   *  Constant: '<S73>/Clamping_zero'
   */
  mcb_pmsm_foc_test_f28379d_B.RelationalOperator =
    (mcb_pmsm_foc_test_f28379d_B.DeadZone != 0.0F);

  /* RelationalOperator: '<S73>/fix for DT propagation issue' incorporates:
   *  Constant: '<S73>/Clamping_zero'
   */
  mcb_pmsm_foc_test_f28379d_B.fixforDTpropagationissue =
    (mcb_pmsm_foc_test_f28379d_B.DeadZone > 0.0F);

  /* Switch: '<S73>/Switch1' */
  if (mcb_pmsm_foc_test_f28379d_B.fixforDTpropagationissue) {
    /* Switch: '<S73>/Switch1' incorporates:
     *  Constant: '<S73>/Constant'
     */
    mcb_pmsm_foc_test_f28379d_B.Switch1_h = 1;
  } else {
    /* Switch: '<S73>/Switch1' incorporates:
     *  Constant: '<S73>/Constant2'
     */
    mcb_pmsm_foc_test_f28379d_B.Switch1_h = -1;
  }

  /* End of Switch: '<S73>/Switch1' */

  /* Product: '<S79>/IProd Out' incorporates:
   *  Constant: '<S32>/Ki'
   */
  mcb_pmsm_foc_test_f28379d_B.IProdOut = mcb_pmsm_foc_test_f28379d_B.Sum_j *
    5.0E-6F;

  /* RelationalOperator: '<S73>/fix for DT propagation issue1' incorporates:
   *  Constant: '<S73>/Clamping_zero'
   */
  mcb_pmsm_foc_test_f28379d_B.fixforDTpropagationissue1 =
    (mcb_pmsm_foc_test_f28379d_B.IProdOut > 0.0F);

  /* Switch: '<S73>/Switch2' */
  if (mcb_pmsm_foc_test_f28379d_B.fixforDTpropagationissue1) {
    /* Switch: '<S73>/Switch2' incorporates:
     *  Constant: '<S73>/Constant3'
     */
    mcb_pmsm_foc_test_f28379d_B.Switch2_l = 1;
  } else {
    /* Switch: '<S73>/Switch2' incorporates:
     *  Constant: '<S73>/Constant4'
     */
    mcb_pmsm_foc_test_f28379d_B.Switch2_l = -1;
  }

  /* End of Switch: '<S73>/Switch2' */

  /* RelationalOperator: '<S73>/Equal1' incorporates:
   *  Switch: '<S73>/Switch1'
   *  Switch: '<S73>/Switch2'
   */
  mcb_pmsm_foc_test_f28379d_B.Equal1 = (mcb_pmsm_foc_test_f28379d_B.Switch1_h ==
    mcb_pmsm_foc_test_f28379d_B.Switch2_l);

  /* Logic: '<S73>/AND3' */
  mcb_pmsm_foc_test_f28379d_B.AND3 =
    (mcb_pmsm_foc_test_f28379d_B.RelationalOperator &&
     mcb_pmsm_foc_test_f28379d_B.Equal1);

  /* Switch: '<S73>/Switch' */
  if (mcb_pmsm_foc_test_f28379d_B.AND3) {
    /* Switch: '<S73>/Switch' incorporates:
     *  Constant: '<S73>/Constant1'
     */
    mcb_pmsm_foc_test_f28379d_B.Switch_f = 0.0F;
  } else {
    /* Switch: '<S73>/Switch' */
    mcb_pmsm_foc_test_f28379d_B.Switch_f = mcb_pmsm_foc_test_f28379d_B.IProdOut;
  }

  /* End of Switch: '<S73>/Switch' */

  /* DeadZone: '<S126>/DeadZone' */
  if (mcb_pmsm_foc_test_f28379d_B.Sum_m > 1.0F) {
    /* DeadZone: '<S126>/DeadZone' */
    mcb_pmsm_foc_test_f28379d_B.DeadZone_a = mcb_pmsm_foc_test_f28379d_B.Sum_m -
      1.0F;
  } else if (mcb_pmsm_foc_test_f28379d_B.Sum_m >= -1.0F) {
    /* DeadZone: '<S126>/DeadZone' */
    mcb_pmsm_foc_test_f28379d_B.DeadZone_a = 0.0F;
  } else {
    /* DeadZone: '<S126>/DeadZone' */
    mcb_pmsm_foc_test_f28379d_B.DeadZone_a = mcb_pmsm_foc_test_f28379d_B.Sum_m -
      -1.0F;
  }

  /* End of DeadZone: '<S126>/DeadZone' */

  /* RelationalOperator: '<S124>/Relational Operator' incorporates:
   *  Constant: '<S124>/Clamping_zero'
   */
  mcb_pmsm_foc_test_f28379d_B.RelationalOperator_e =
    (mcb_pmsm_foc_test_f28379d_B.DeadZone_a != 0.0F);

  /* RelationalOperator: '<S124>/fix for DT propagation issue' incorporates:
   *  Constant: '<S124>/Clamping_zero'
   */
  mcb_pmsm_foc_test_f28379d_B.fixforDTpropagationissue_j =
    (mcb_pmsm_foc_test_f28379d_B.DeadZone_a > 0.0F);

  /* Switch: '<S124>/Switch1' */
  if (mcb_pmsm_foc_test_f28379d_B.fixforDTpropagationissue_j) {
    /* Switch: '<S124>/Switch1' incorporates:
     *  Constant: '<S124>/Constant'
     */
    mcb_pmsm_foc_test_f28379d_B.Switch1_l = 1;
  } else {
    /* Switch: '<S124>/Switch1' incorporates:
     *  Constant: '<S124>/Constant2'
     */
    mcb_pmsm_foc_test_f28379d_B.Switch1_l = -1;
  }

  /* End of Switch: '<S124>/Switch1' */

  /* Product: '<S130>/IProd Out' incorporates:
   *  Constant: '<S33>/Ki'
   */
  mcb_pmsm_foc_test_f28379d_B.IProdOut_b = mcb_pmsm_foc_test_f28379d_B.Sum_o *
    1.0E-5F;

  /* RelationalOperator: '<S124>/fix for DT propagation issue1' incorporates:
   *  Constant: '<S124>/Clamping_zero'
   */
  mcb_pmsm_foc_test_f28379d_B.fixforDTpropagationissue1_o =
    (mcb_pmsm_foc_test_f28379d_B.IProdOut_b > 0.0F);

  /* Switch: '<S124>/Switch2' */
  if (mcb_pmsm_foc_test_f28379d_B.fixforDTpropagationissue1_o) {
    /* Switch: '<S124>/Switch2' incorporates:
     *  Constant: '<S124>/Constant3'
     */
    mcb_pmsm_foc_test_f28379d_B.Switch2_c = 1;
  } else {
    /* Switch: '<S124>/Switch2' incorporates:
     *  Constant: '<S124>/Constant4'
     */
    mcb_pmsm_foc_test_f28379d_B.Switch2_c = -1;
  }

  /* End of Switch: '<S124>/Switch2' */

  /* RelationalOperator: '<S124>/Equal1' incorporates:
   *  Switch: '<S124>/Switch1'
   *  Switch: '<S124>/Switch2'
   */
  mcb_pmsm_foc_test_f28379d_B.Equal1_i = (mcb_pmsm_foc_test_f28379d_B.Switch1_l ==
    mcb_pmsm_foc_test_f28379d_B.Switch2_c);

  /* Logic: '<S124>/AND3' */
  mcb_pmsm_foc_test_f28379d_B.AND3_n =
    (mcb_pmsm_foc_test_f28379d_B.RelationalOperator_e &&
     mcb_pmsm_foc_test_f28379d_B.Equal1_i);

  /* Switch: '<S124>/Switch' */
  if (mcb_pmsm_foc_test_f28379d_B.AND3_n) {
    /* Switch: '<S124>/Switch' incorporates:
     *  Constant: '<S124>/Constant1'
     */
    mcb_pmsm_foc_test_f28379d_B.Switch_a = 0.0F;
  } else {
    /* Switch: '<S124>/Switch' */
    mcb_pmsm_foc_test_f28379d_B.Switch_a =
      mcb_pmsm_foc_test_f28379d_B.IProdOut_b;
  }

  /* End of Switch: '<S124>/Switch' */

  /* RelationalOperator: '<S154>/Compare' incorporates:
   *  Constant: '<S154>/Constant'
   */
  mcb_pmsm_foc_test_f28379d_B.Compare_f = (mcb_pmsm_foc_test_f28379d_B.Add_c <
    0.0F);

  /* DataTypeConversion: '<S153>/Data Type Conversion' */
  mcb_pmsm_foc_test_f28379d_B.DataTypeConversion_h =
    mcb_pmsm_foc_test_f28379d_B.Compare_f;

  /* If: '<S153>/If' */
  if (mcb_pmsm_foc_test_f28379d_B.DataTypeConversion_h > 0U) {
    /* Outputs for IfAction SubSystem: '<S153>/If Action Subsystem' incorporates:
     *  ActionPort: '<S155>/Action Port'
     */
    mcb_pmsm__IfActionSubsystem(mcb_pmsm_foc_test_f28379d_B.Add_c,
      &mcb_pmsm_foc_test_f28379d_B.Merge_a,
      &mcb_pmsm_foc_test_f28379d_B.IfActionSubsystem);

    /* End of Outputs for SubSystem: '<S153>/If Action Subsystem' */
  } else {
    /* Outputs for IfAction SubSystem: '<S153>/If Action Subsystem1' incorporates:
     *  ActionPort: '<S156>/Action Port'
     */
    mcb_pmsm_IfActionSubsystem1(mcb_pmsm_foc_test_f28379d_B.Add_c,
      &mcb_pmsm_foc_test_f28379d_B.Merge_a,
      &mcb_pmsm_foc_test_f28379d_B.IfActionSubsystem1);

    /* End of Outputs for SubSystem: '<S153>/If Action Subsystem1' */
  }

  /* End of If: '<S153>/If' */

  /* Gain: '<S150>/indexing' */
  mcb_pmsm_foc_test_f28379d_B.indexing_d = 800.0F *
    mcb_pmsm_foc_test_f28379d_B.Merge_a;

  /* DataTypeConversion: '<S150>/Get_Integer' */
  mcb_pmsm_foc_test_f28379d_B.Get_Integer_j = (uint16_T)
    mcb_pmsm_foc_test_f28379d_B.indexing_d;

  /* DataTypeConversion: '<S150>/Data Type Conversion1' */
  mcb_pmsm_foc_test_f28379d_B.DataTypeConversion1_n =
    mcb_pmsm_foc_test_f28379d_B.Get_Integer_j;

  /* Sum: '<S150>/Sum' incorporates:
   *  Constant: '<S150>/offset'
   */
  Sum = mcb_pmsm_foc_test_f28379d_B.Get_Integer_j + 1UL;
  mcb_pmsm_foc_test_f28379d_B.Sum_h[0] = Sum;

  /* Selector: '<S150>/Lookup' incorporates:
   *  Constant: '<S150>/sine_table_values'
   */
  mcb_pmsm_foc_test_f28379d_B.Lookup_p[0] =
    mcb_pmsm_foc_test_f28379_ConstP.pooled6[(int16_T)Sum];

  /* Sum: '<S150>/Sum' */
  Sum = mcb_pmsm_foc_test_f28379d_B.Get_Integer_j;
  mcb_pmsm_foc_test_f28379d_B.Sum_h[1] = Sum;

  /* Selector: '<S150>/Lookup' incorporates:
   *  Constant: '<S150>/sine_table_values'
   */
  mcb_pmsm_foc_test_f28379d_B.Lookup_p[1] =
    mcb_pmsm_foc_test_f28379_ConstP.pooled6[(int16_T)Sum];

  /* Sum: '<S150>/Sum' incorporates:
   *  Constant: '<S150>/offset'
   */
  Sum = mcb_pmsm_foc_test_f28379d_B.Get_Integer_j + 201UL;
  mcb_pmsm_foc_test_f28379d_B.Sum_h[2] = Sum;

  /* Selector: '<S150>/Lookup' incorporates:
   *  Constant: '<S150>/sine_table_values'
   */
  mcb_pmsm_foc_test_f28379d_B.Lookup_p[2] =
    mcb_pmsm_foc_test_f28379_ConstP.pooled6[(int16_T)Sum];

  /* Sum: '<S150>/Sum' incorporates:
   *  Constant: '<S150>/offset'
   */
  Sum = mcb_pmsm_foc_test_f28379d_B.Get_Integer_j + 200UL;
  mcb_pmsm_foc_test_f28379d_B.Sum_h[3] = Sum;

  /* Selector: '<S150>/Lookup' incorporates:
   *  Constant: '<S150>/sine_table_values'
   */
  mcb_pmsm_foc_test_f28379d_B.Lookup_p[3] =
    mcb_pmsm_foc_test_f28379_ConstP.pooled6[(int16_T)Sum];

  /* Sum: '<S152>/Sum3' */
  mcb_pmsm_foc_test_f28379d_B.Sum3_j = mcb_pmsm_foc_test_f28379d_B.Lookup_p[0] -
    mcb_pmsm_foc_test_f28379d_B.Lookup_p[1];

  /* Sum: '<S150>/Sum2' */
  mcb_pmsm_foc_test_f28379d_B.Sum2_p = mcb_pmsm_foc_test_f28379d_B.indexing_d -
    mcb_pmsm_foc_test_f28379d_B.DataTypeConversion1_n;

  /* Product: '<S152>/Product' */
  mcb_pmsm_foc_test_f28379d_B.Product_d = mcb_pmsm_foc_test_f28379d_B.Sum3_j *
    mcb_pmsm_foc_test_f28379d_B.Sum2_p;

  /* Sum: '<S152>/Sum5' */
  mcb_pmsm_foc_test_f28379d_B.Sum5_l = mcb_pmsm_foc_test_f28379d_B.Lookup_p[2] -
    mcb_pmsm_foc_test_f28379d_B.Lookup_p[3];

  /* Product: '<S152>/Product1' */
  mcb_pmsm_foc_test_f28379d_B.Product1_d = mcb_pmsm_foc_test_f28379d_B.Sum5_l *
    mcb_pmsm_foc_test_f28379d_B.Sum2_p;

  /* Sum: '<S152>/Sum4' */
  mcb_pmsm_foc_test_f28379d_B.Sum4_h = mcb_pmsm_foc_test_f28379d_B.Product_d +
    mcb_pmsm_foc_test_f28379d_B.Lookup_p[1];

  /* Sum: '<S152>/Sum6' */
  mcb_pmsm_foc_test_f28379d_B.Sum6_h = mcb_pmsm_foc_test_f28379d_B.Product1_d +
    mcb_pmsm_foc_test_f28379d_B.Lookup_p[3];

  /* Outputs for Atomic SubSystem: '<S26>/Two inputs CRL' */
  /* Product: '<S151>/qcos' */
  mcb_pmsm_foc_test_f28379d_B.qcos = mcb_pmsm_foc_test_f28379d_B.Merge_i[1] *
    mcb_pmsm_foc_test_f28379d_B.Sum6_h;

  /* Product: '<S151>/dsin' */
  mcb_pmsm_foc_test_f28379d_B.dsin = mcb_pmsm_foc_test_f28379d_B.Merge_i[0] *
    mcb_pmsm_foc_test_f28379d_B.Sum4_h;

  /* Sum: '<S151>/sum_beta' */
  mcb_pmsm_foc_test_f28379d_B.sum_beta = mcb_pmsm_foc_test_f28379d_B.qcos +
    mcb_pmsm_foc_test_f28379d_B.dsin;

  /* Product: '<S151>/dcos' */
  mcb_pmsm_foc_test_f28379d_B.dcos = mcb_pmsm_foc_test_f28379d_B.Merge_i[0] *
    mcb_pmsm_foc_test_f28379d_B.Sum6_h;

  /* Product: '<S151>/qsin' */
  mcb_pmsm_foc_test_f28379d_B.qsin = mcb_pmsm_foc_test_f28379d_B.Merge_i[1] *
    mcb_pmsm_foc_test_f28379d_B.Sum4_h;

  /* Sum: '<S151>/sum_alpha' */
  mcb_pmsm_foc_test_f28379d_B.sum_alpha = mcb_pmsm_foc_test_f28379d_B.dcos -
    mcb_pmsm_foc_test_f28379d_B.qsin;

  /* Switch: '<S157>/Switch' */
  mcb_pmsm_foc_test_f28379d_B.Switch_b[0] =
    mcb_pmsm_foc_test_f28379d_B.sum_alpha;
  mcb_pmsm_foc_test_f28379d_B.Switch_b[1] = mcb_pmsm_foc_test_f28379d_B.sum_beta;

  /* AlgorithmDescriptorDelegate generated from: '<S151>/a16' */
  mcb_pmsm_foc_test_f28379d_B.algDD_o1_p = mcb_pmsm_foc_test_f28379d_B.Switch_b
    [0];

  /* AlgorithmDescriptorDelegate generated from: '<S151>/a16' */
  mcb_pmsm_foc_test_f28379d_B.algDD_o2_o = mcb_pmsm_foc_test_f28379d_B.Switch_b
    [1];

  /* End of Outputs for SubSystem: '<S26>/Two inputs CRL' */

  /* Delay: '<S175>/Delay' */
  mcb_pmsm_foc_test_f28379d_B.Delay_c =
    mcb_pmsm_foc_test_f28379d_DW.Delay_DSTATE;

  /* Sum: '<S175>/Sum' */
  mcb_pmsm_foc_test_f28379d_B.Sum_a = mcb_pmsm_foc_test_f28379d_B.RT4 -
    mcb_pmsm_foc_test_f28379d_B.Delay_c;

  /* If: '<S175>/If' */
  if (mcb_pmsm_foc_test_f28379d_B.Sum_a > 0.5F) {
    /* Outputs for IfAction SubSystem: '<S175>/Subsystem' incorporates:
     *  ActionPort: '<S180>/Action Port'
     */
    /* Merge: '<S175>/Merge' incorporates:
     *  Fcn: '<S180>/Fcn'
     */
    mcb_pmsm_foc_test_f28379d_B.Merge_c = mcb_pmsm_foc_test_f28379d_B.Sum_a -
      1.0F;

    /* End of Outputs for SubSystem: '<S175>/Subsystem' */
  } else if (mcb_pmsm_foc_test_f28379d_B.Sum_a < -0.5F) {
    /* Outputs for IfAction SubSystem: '<S175>/Subsystem1' incorporates:
     *  ActionPort: '<S181>/Action Port'
     */
    /* Merge: '<S175>/Merge' incorporates:
     *  Fcn: '<S181>/Fcn1'
     */
    mcb_pmsm_foc_test_f28379d_B.Merge_c = mcb_pmsm_foc_test_f28379d_B.Sum_a +
      1.0F;

    /* End of Outputs for SubSystem: '<S175>/Subsystem1' */
  } else {
    /* Outputs for IfAction SubSystem: '<S175>/Subsystem2' incorporates:
     *  ActionPort: '<S182>/Action Port'
     */
    /* Merge: '<S175>/Merge' incorporates:
     *  SignalConversion generated from: '<S182>/In1'
     */
    mcb_pmsm_foc_test_f28379d_B.Merge_c = mcb_pmsm_foc_test_f28379d_B.Sum_a;

    /* End of Outputs for SubSystem: '<S175>/Subsystem2' */
  }

  /* End of If: '<S175>/If' */

  /* DataStoreRead: '<S21>/Enable' */
  mcb_pmsm_foc_test_f28379d_B.PWM_En = mcb_pmsm_foc_test_f28379d_DW.Enable;

  /* DataTypeConversion: '<S21>/Data Type Conversion' */
  mcb_pmsm_foc_test_f28379d_B.DataTypeConversion =
    mcb_pmsm_foc_test_f28379d_B.PWM_En;

  /* Switch: '<S198>/Switch' */
  mcb_pmsm_foc_test_f28379d_B.Switch_g =
    mcb_pmsm_foc_test_f28379d_B.DataTypeConversion;

  /* S-Function (c280xgpio_do): '<S198>/DRV830x Enable' */
  {
    if (mcb_pmsm_foc_test_f28379d_B.Switch_g) {
      GpioDataRegs.GPDSET.bit.GPIO124 = 1U;
    } else {
      GpioDataRegs.GPDCLEAR.bit.GPIO124 = 1U;
    }
  }

  /* Switch: '<S198>/Switch1' */
  if (mcb_pmsm_foc_test_f28379d_B.DataTypeConversion >= 0.5F) {
    /* Gain: '<S173>/sqrt3_by_two' */
    mcb_pmsm_foc_test_f28379d_B.sqrt3_by_two = 0.866025388F *
      mcb_pmsm_foc_test_f28379d_B.algDD_o2_o;

    /* Gain: '<S173>/one_by_two' */
    mcb_pmsm_foc_test_f28379d_B.one_by_two = 0.5F *
      mcb_pmsm_foc_test_f28379d_B.algDD_o1_p;

    /* Sum: '<S173>/add_c' */
    mcb_pmsm_foc_test_f28379d_B.add_c = (0.0F -
      mcb_pmsm_foc_test_f28379d_B.one_by_two) -
      mcb_pmsm_foc_test_f28379d_B.sqrt3_by_two;

    /* Sum: '<S173>/add_b' */
    mcb_pmsm_foc_test_f28379d_B.add_b = mcb_pmsm_foc_test_f28379d_B.sqrt3_by_two
      - mcb_pmsm_foc_test_f28379d_B.one_by_two;

    /* MinMax: '<S170>/Min' */
    uPrev = mcb_pmsm_foc_test_f28379d_B.algDD_o1_p;
    Bias = mcb_pmsm_foc_test_f28379d_B.add_b;
    if ((uPrev <= Bias) || rtIsNaNF(Bias)) {
      Bias = uPrev;
    }

    uPrev = mcb_pmsm_foc_test_f28379d_B.add_c;
    if ((!(Bias <= uPrev)) && (!rtIsNaNF(uPrev))) {
      Bias = uPrev;
    }

    /* MinMax: '<S170>/Min' */
    mcb_pmsm_foc_test_f28379d_B.Min = Bias;

    /* MinMax: '<S170>/Max' */
    uPrev = mcb_pmsm_foc_test_f28379d_B.algDD_o1_p;
    Bias = mcb_pmsm_foc_test_f28379d_B.add_b;
    if ((uPrev >= Bias) || rtIsNaNF(Bias)) {
      Bias = uPrev;
    }

    uPrev = mcb_pmsm_foc_test_f28379d_B.add_c;
    if ((!(Bias >= uPrev)) && (!rtIsNaNF(uPrev))) {
      Bias = uPrev;
    }

    /* MinMax: '<S170>/Max' */
    mcb_pmsm_foc_test_f28379d_B.Max = Bias;

    /* Sum: '<S170>/Add' */
    mcb_pmsm_foc_test_f28379d_B.Add_n = mcb_pmsm_foc_test_f28379d_B.Max +
      mcb_pmsm_foc_test_f28379d_B.Min;

    /* Gain: '<S170>/one_by_two' */
    mcb_pmsm_foc_test_f28379d_B.one_by_two_l = -0.5F *
      mcb_pmsm_foc_test_f28379d_B.Add_n;

    /* Sum: '<S169>/Add3' */
    mcb_pmsm_foc_test_f28379d_B.Add3 = mcb_pmsm_foc_test_f28379d_B.algDD_o1_p +
      mcb_pmsm_foc_test_f28379d_B.one_by_two_l;

    /* Sum: '<S169>/Add2' */
    mcb_pmsm_foc_test_f28379d_B.Add2 = mcb_pmsm_foc_test_f28379d_B.one_by_two_l
      + mcb_pmsm_foc_test_f28379d_B.add_c;

    /* Sum: '<S169>/Add1' */
    mcb_pmsm_foc_test_f28379d_B.Add1_d = mcb_pmsm_foc_test_f28379d_B.add_b +
      mcb_pmsm_foc_test_f28379d_B.one_by_two_l;

    /* Gain: '<S169>/Gain' */
    mcb_pmsm_foc_test_f28379d_B.Gain_a[0] = 1.15470052F *
      mcb_pmsm_foc_test_f28379d_B.Add3;
    mcb_pmsm_foc_test_f28379d_B.Gain_a[1] = 1.15470052F *
      mcb_pmsm_foc_test_f28379d_B.Add1_d;
    mcb_pmsm_foc_test_f28379d_B.Gain_a[2] = 1.15470052F *
      mcb_pmsm_foc_test_f28379d_B.Add2;

    /* Gain: '<S21>/One_by_Two' */
    Bias = 0.5F * mcb_pmsm_foc_test_f28379d_B.Gain_a[0];
    mcb_pmsm_foc_test_f28379d_B.One_by_Two[0] = Bias;

    /* Sum: '<S21>/Sum' incorporates:
     *  Constant: '<S21>/Constant'
     */
    Bias += 0.5F;
    mcb_pmsm_foc_test_f28379d_B.PWM_Duty_Cycles[0] = Bias;

    /* Gain: '<S198>/Scale_to_PWM_Counter_PRD' */
    Scale_to_PWM_Counter_PRD = (uint16_T)(5000.0F * Bias);
    mcb_pmsm_foc_test_f28379d_B.Scale_to_PWM_Counter_PRD[0] =
      Scale_to_PWM_Counter_PRD;

    /* Switch: '<S198>/Switch1' */
    mcb_pmsm_foc_test_f28379d_B.Switch1_jv[0] = Scale_to_PWM_Counter_PRD;

    /* Gain: '<S21>/One_by_Two' */
    Bias = 0.5F * mcb_pmsm_foc_test_f28379d_B.Gain_a[1];
    mcb_pmsm_foc_test_f28379d_B.One_by_Two[1] = Bias;

    /* Sum: '<S21>/Sum' incorporates:
     *  Constant: '<S21>/Constant'
     */
    Bias += 0.5F;
    mcb_pmsm_foc_test_f28379d_B.PWM_Duty_Cycles[1] = Bias;

    /* Gain: '<S198>/Scale_to_PWM_Counter_PRD' */
    Scale_to_PWM_Counter_PRD = (uint16_T)(5000.0F * Bias);
    mcb_pmsm_foc_test_f28379d_B.Scale_to_PWM_Counter_PRD[1] =
      Scale_to_PWM_Counter_PRD;

    /* Switch: '<S198>/Switch1' */
    mcb_pmsm_foc_test_f28379d_B.Switch1_jv[1] = Scale_to_PWM_Counter_PRD;

    /* Gain: '<S21>/One_by_Two' */
    Bias = 0.5F * mcb_pmsm_foc_test_f28379d_B.Gain_a[2];
    mcb_pmsm_foc_test_f28379d_B.One_by_Two[2] = Bias;

    /* Sum: '<S21>/Sum' incorporates:
     *  Constant: '<S21>/Constant'
     */
    Bias += 0.5F;
    mcb_pmsm_foc_test_f28379d_B.PWM_Duty_Cycles[2] = Bias;

    /* Gain: '<S198>/Scale_to_PWM_Counter_PRD' */
    Scale_to_PWM_Counter_PRD = (uint16_T)(5000.0F * Bias);
    mcb_pmsm_foc_test_f28379d_B.Scale_to_PWM_Counter_PRD[2] =
      Scale_to_PWM_Counter_PRD;

    /* Switch: '<S198>/Switch1' */
    mcb_pmsm_foc_test_f28379d_B.Switch1_jv[2] = Scale_to_PWM_Counter_PRD;
  } else {
    /* Switch: '<S198>/Switch1' incorporates:
     *  Constant: '<S198>/stop'
     */
    mcb_pmsm_foc_test_f28379d_B.Switch1_jv[0] = 0U;
    mcb_pmsm_foc_test_f28379d_B.Switch1_jv[1] = 0U;
    mcb_pmsm_foc_test_f28379d_B.Switch1_jv[2] = 0U;
  }

  /* End of Switch: '<S198>/Switch1' */

  /* S-Function (c2802xpwm): '<S198>/ePWM1' */

  /*-- Update CMPA value for ePWM1 --*/
  {
    EPwm1Regs.CMPA.bit.CMPA = (uint16_T)(mcb_pmsm_foc_test_f28379d_B.Switch1_jv
      [0]);
  }

  /* S-Function (c2802xpwm): '<S198>/ePWM2' */

  /*-- Update CMPA value for ePWM2 --*/
  {
    EPwm2Regs.CMPA.bit.CMPA = (uint16_T)(mcb_pmsm_foc_test_f28379d_B.Switch1_jv
      [1]);
  }

  /* S-Function (c2802xpwm): '<S198>/ePWM3' */

  /*-- Update CMPA value for ePWM3 --*/
  {
    EPwm3Regs.CMPA.bit.CMPA = (uint16_T)(mcb_pmsm_foc_test_f28379d_B.Switch1_jv
      [2]);
  }

  /* DataStoreRead: '<S2>/Data Store Read1' */
  mcb_pmsm_foc_test_f28379d_B.DataStoreRead1 =
    mcb_pmsm_foc_test_f28379d_DW.PosRef;

  /* Update for UnitDelay: '<S205>/Output' */
  mcb_pmsm_foc_test_f28379d_DW.Output_DSTATE =
    mcb_pmsm_foc_test_f28379d_B.FixPtSwitch;

  /* Update for Delay: '<S179>/Delay' */
  mcb_pmsm_foc_test_f28379d_DW.Delay_DSTATE_p[mcb_pmsm_foc_test_f28379d_DW.CircBufIdx]
    = mcb_pmsm_foc_test_f28379d_B.PositionToCount;
  if (mcb_pmsm_foc_test_f28379d_DW.CircBufIdx < 19U) {
    mcb_pmsm_foc_test_f28379d_DW.CircBufIdx++;
  } else {
    mcb_pmsm_foc_test_f28379d_DW.CircBufIdx = 0U;
  }

  /* End of Update for Delay: '<S179>/Delay' */

  /* Update for UnitDelay: '<S185>/Unit Delay' */
  mcb_pmsm_foc_test_f28379d_DW.UnitDelay_DSTATE =
    mcb_pmsm_foc_test_f28379d_B.Add1;

  /* Update for DiscreteIntegrator: '<S133>/Integrator' */
  mcb_pmsm_foc_test_f28379d_DW.Integrator_DSTATE +=
    mcb_pmsm_foc_test_f28379d_B.Switch_a;
  mcb_pmsm_foc_test_f28379d_DW.Integrator_PrevResetState = (int16_T)
    mcb_pmsm_foc_test_f28379d_B.LogicalOperator;

  /* Update for DiscreteIntegrator: '<S82>/Integrator' */
  mcb_pmsm_foc_test_f28379d_DW.Integrator_DSTATE_o +=
    mcb_pmsm_foc_test_f28379d_B.Switch_f;
  mcb_pmsm_foc_test_f28379d_DW.Integrator_PrevResetState_k = (int16_T)
    mcb_pmsm_foc_test_f28379d_B.LogicalOperator_a;

  /* Update for Delay: '<S175>/Delay' */
  mcb_pmsm_foc_test_f28379d_DW.Delay_DSTATE = mcb_pmsm_foc_test_f28379d_B.RT4;
}

/* System initialize for atomic system: */
void mcb__SPIMasterTransfer_Init(DW_SPIMasterTransfer_mcb_pmsm_T *localDW)
{
  uint32_T SPIPinsLoc;

  /* Start for MATLABSystem: '<S229>/SPI Master Transfer' */
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

  /* MATLABSystem: '<S229>/SPI Master Transfer' */
  MW_SPI_SetSlaveSelect(localDW->obj.MW_SPI_HANDLE, 0U, true);
  status = MW_SPI_SetFormat(localDW->obj.MW_SPI_HANDLE, 16U, MW_SPI_MODE_0,
    MW_SPI_MOST_SIGNIFICANT_BIT_FIRST);
  if (status == 0U) {
    MW_SPI_MasterWriteRead_8bits(localDW->obj.MW_SPI_HANDLE, &rtu_0, &rdDataRaw,
      1UL);
  }

  /* MATLABSystem: '<S229>/SPI Master Transfer' */
  localB->SPIMasterTransfer = rdDataRaw;
}

/* Termination for atomic system: */
void mcb__SPIMasterTransfer_Term(DW_SPIMasterTransfer_mcb_pmsm_T *localDW)
{
  uint32_T SPIPinsLoc;

  /* Terminate for MATLABSystem: '<S229>/SPI Master Transfer' */
  if (!localDW->obj.matlabCodegenIsDeleted) {
    localDW->obj.matlabCodegenIsDeleted = true;
    if ((localDW->obj.isInitialized == 1L) && localDW->obj.isSetupComplete) {
      SPIPinsLoc = MW_UNDEFINED_VALUE;
      MW_SPI_Close(localDW->obj.MW_SPI_HANDLE, SPIPinsLoc, SPIPinsLoc,
                   SPIPinsLoc, MW_UNDEFINED_VALUE);
    }
  }

  /* End of Terminate for MATLABSystem: '<S229>/SPI Master Transfer' */
}

/* Output and update for atomic system: '<Root>/Speed Control' */
void mcb_pmsm_foc_t_SpeedControl(const boolean_T *rtd_Enable,
  B_SpeedControl_mcb_pmsm_foc_t_T *localB)
{
  /* Constant: '<S8>/Id_ref' */
  localB->Id_ref = 0.0F;

  /* DataTypeConversion: '<S239>/Cast To Single1' incorporates:
   *  Constant: '<S239>/Constant2'
   */
  localB->CastToSingle1 = 0.03F;

  /* DataStoreRead: '<S239>/Data Store Read1' */
  localB->DataStoreRead1 = *rtd_Enable;

  /* DataStoreRead: '<S240>/Data Store Read1' */
  localB->DataStoreRead1_k = *rtd_Enable;
}

/* Model step function for TID0 */
void mcb_pmsm_foc_test_f28379d_step0(void) /* Sample time: [0.0005s, 0.0s] */
{
  {                                    /* Sample time: [0.0005s, 0.0s] */
    rate_monotonic_scheduler();
  }

  /* DataStoreRead: '<S1>/Data Store Read' */
  mcb_pmsm_foc_test_f28379d_B.DataStoreRead_g =
    mcb_pmsm_foc_test_f28379d_DW.Enable_I2C;

  /* RateTransition: '<Root>/RT1' */
  mcb_pmsm_foc_test_f28379d_DW.RT1_semaphoreTaken =
    mcb_pmsm_foc_test_f28379d_DW.RT1_ActiveBufIdx;

  /* RateTransition: '<Root>/RT1' */
  mcb_pmsm_foc_test_f28379d_B.RT1 =
    mcb_pmsm_foc_test_f28379d_DW.RT1_Buffer[mcb_pmsm_foc_test_f28379d_DW.RT1_semaphoreTaken];

  /* RateTransition: '<Root>/RT13' */
  mcb_pmsm_foc_test_f28379d_B.RT13 = 0.0F;

  /* Outputs for Atomic SubSystem: '<Root>/Speed Control' */
  mcb_pmsm_foc_t_SpeedControl(&mcb_pmsm_foc_test_f28379d_DW.Enable,
    &mcb_pmsm_foc_test_f28379d_B.SpeedControl);

  /* End of Outputs for SubSystem: '<Root>/Speed Control' */

  /* RateTransition: '<Root>/RT15' */
  mcb_pmsm_foc_test_f28379d_DW.RT15_Buffer[mcb_pmsm_foc_test_f28379d_DW.RT15_ActiveBufIdx
    == 0] = 0.0F;
  mcb_pmsm_foc_test_f28379d_DW.RT15_ActiveBufIdx =
    (mcb_pmsm_foc_test_f28379d_DW.RT15_ActiveBufIdx == 0);

  /* RateTransition: '<Root>/RT2' */
  mcb_pmsm_foc_test_f28379d_DW.RT2_Buffer
    [(mcb_pmsm_foc_test_f28379d_DW.RT2_ActiveBufIdx == 0) << 1U] =
    mcb_pmsm_foc_test_f28379d_B.SpeedControl.Id_ref;
  mcb_pmsm_foc_test_f28379d_DW.RT2_Buffer[1 +
    ((mcb_pmsm_foc_test_f28379d_DW.RT2_ActiveBufIdx == 0) << 1U)] =
    mcb_pmsm_foc_test_f28379d_B.SpeedControl.CastToSingle1;
  mcb_pmsm_foc_test_f28379d_DW.RT2_ActiveBufIdx =
    (mcb_pmsm_foc_test_f28379d_DW.RT2_ActiveBufIdx == 0);

  /* RateTransition: '<Root>/RT3' */
  mcb_pmsm_foc_test_f28379d_B.RT3 =
    mcb_pmsm_foc_test_f28379d_DW.RT3_Buffer[mcb_pmsm_foc_test_f28379d_DW.RT3_ActiveBufIdx];

  /* RateTransition: '<Root>/RT7' */
  mcb_pmsm_foc_test_f28379d_B.RT7 = mcb_pmsm_foc_test_f28379d_B.Gain;
}

/* Model step function for TID1 */
void mcb_pmsm_foc_test_f28379d_step1(void) /* Sample time: [0.001s, 0.0s] */
{
  real_T x;

  /* RateTransition: '<Root>/RT14' */
  mcb_pmsm_foc_test_f28379d_B.RT14 = mcb_pmsm_foc_test_f28379d_DW.RT14_Buffer0;

  /* Outputs for Enabled SubSystem: '<Root>/Subsystem' incorporates:
   *  EnablePort: '<S9>/Enable'
   */
  if (mcb_pmsm_foc_test_f28379d_B.RT14) {
    /* MATLAB Function: '<S9>/MATLAB Function' incorporates:
     *  Constant: '<S9>/Ts_sensor'
     *  Constant: '<S9>/speed_ref_rpm'
     */
    /* MATLAB Function 'Subsystem/MATLAB Function': '<S296>:1' */
    /* '<S296>:1:13' */
    /* '<S296>:1:15' */
    x = mcb_pmsm_foc_test_f28379d_DW.theta + 0.00083333333333333339;
    if (rtIsNaN(x) || rtIsInf(x)) {
      mcb_pmsm_foc_test_f28379d_DW.theta = (rtNaN);
    } else if (x == 0.0) {
      mcb_pmsm_foc_test_f28379d_DW.theta = 0.0;
    } else {
      mcb_pmsm_foc_test_f28379d_DW.theta = fmod(x, 1.0);
      if (mcb_pmsm_foc_test_f28379d_DW.theta == 0.0) {
        mcb_pmsm_foc_test_f28379d_DW.theta = 0.0;
      } else if (x < 0.0) {
        mcb_pmsm_foc_test_f28379d_DW.theta++;
      }
    }

    /* '<S296>:1:16' */
    mcb_pmsm_foc_test_f28379d_B.pu = (real32_T)
      mcb_pmsm_foc_test_f28379d_DW.theta;

    /* End of MATLAB Function: '<S9>/MATLAB Function' */
  }

  /* End of Outputs for SubSystem: '<Root>/Subsystem' */

  /* RateTransition: '<S1>/RT4' */
  mcb_pmsm_foc_test_f28379d_B.RT4_h =
    mcb_pmsm_foc_test_f28379d_B.DataStoreRead_g;

  /* Outputs for Enabled SubSystem: '<S1>/Data Read' incorporates:
   *  EnablePort: '<S10>/Enable'
   */
  if (mcb_pmsm_foc_test_f28379d_B.RT4_h) {
    /* S-Function (c280xi2c_rx): '<S10>/I2C Receive' incorporates:
     *  Constant: '<S10>/Register Address'
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
        mcb_pmsm_foc_test_f28379d_B.I2CReceive_o1[0] = I2caRegs.I2CDRR.bit.DATA;
        mcb_pmsm_foc_test_f28379d_B.I2CReceive_o2 = I2caRegs.I2CSTR.all;/* output i2c status */
      } else
        mcb_pmsm_foc_test_f28379d_B.I2CReceive_o2 = I2caRegs.I2CSTR.all | 0x40;/* output receive data loss status */
      rx_loop= 0;
      while (I2caRegs.I2CFFRX.bit.RXFFST==0 && rx_loop<10000)
        rx_loop++;
      if (rx_loop!=10000) {
        mcb_pmsm_foc_test_f28379d_B.I2CReceive_o1[1] = I2caRegs.I2CDRR.bit.DATA;
        mcb_pmsm_foc_test_f28379d_B.I2CReceive_o2 = I2caRegs.I2CSTR.all;/* output i2c status */
      } else
        mcb_pmsm_foc_test_f28379d_B.I2CReceive_o2 = I2caRegs.I2CSTR.all | 0x40;/* output receive data loss status */
    }

    /* S-Function (c280xi2c_tx): '<S10>/I2C Transmit' incorporates:
     *  Constant: '<S10>/Data Read Adress'
     *  Constant: '<S10>/Register Address'
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
          mcb_pmsm_foc_test_f28379d_B.I2CTransmit = I2caRegs.I2CSTR.all;/* output i2c status */
        } else
          mcb_pmsm_foc_test_f28379d_B.I2CTransmit = I2caRegs.I2CSTR.all | 0x40;/* output transmit data loss status */
      } else
        mcb_pmsm_foc_test_f28379d_B.I2CTransmit = I2caRegs.I2CSTR.all | 0x80;/* output transmit data loss status */
      I2caRegs.I2CFFTX.bit.TXFFIENA = 1;/* Enable Tx Fifo interrupt*/
      I2caRegs.I2CFFTX.bit.TXFFINTCLR = 1;/* Clear Tx interrupt flag*/
    }
  }

  /* End of Outputs for SubSystem: '<S1>/Data Read' */

  /* MATLAB Function: '<S11>/MATLAB Function' incorporates:
   *  S-Function (c280xi2c_rx): '<S10>/I2C Receive'
   */
  /* MATLAB Function 'AS5600 Read/Data Realignment /MATLAB Function': '<S13>:1' */
  /* '<S13>:1:5' */
  /* '<S13>:1:6' */
  /* '<S13>:1:9' */
  mcb_pmsm_foc_test_f28379d_B.raw_angle =
    (mcb_pmsm_foc_test_f28379d_B.I2CReceive_o1[0] << 8U) +
    mcb_pmsm_foc_test_f28379d_B.I2CReceive_o1[1];

  /* DataTypeConversion: '<S11>/Cast To Single1' */
  mcb_pmsm_foc_test_f28379d_B.CastToSingle1 =
    mcb_pmsm_foc_test_f28379d_B.raw_angle;

  /* Gain: '<S11>/Gain' */
  mcb_pmsm_foc_test_f28379d_B.Gain = 0.000244140625F *
    mcb_pmsm_foc_test_f28379d_B.CastToSingle1;

  /* RateTransition: '<Root>/RT4' */
  mcb_pmsm_foc_test_f28379d_DW.RT4_Buffer[mcb_pmsm_foc_test_f28379d_DW.RT4_ActiveBufIdx
    == 0] = mcb_pmsm_foc_test_f28379d_B.Gain;
  mcb_pmsm_foc_test_f28379d_DW.RT4_ActiveBufIdx =
    (mcb_pmsm_foc_test_f28379d_DW.RT4_ActiveBufIdx == 0);
}

/* Model step function for TID2 */
void mcb_pmsm_foc_test_f28379d_step2(void) /* Sample time: [0.015s, 0.0s] */
{
  /* Constant: '<Root>/InitTrigger' */
  mcb_pmsm_foc_test_f28379d_B.InitTrigger = true;

  /* RateTransition: '<Root>/RT14' */
  mcb_pmsm_foc_test_f28379d_DW.RT14_Buffer0 =
    mcb_pmsm_foc_test_f28379d_B.InitTrigger;

  /* UnitDelay: '<S1>/Unit Delay' */
  mcb_pmsm_foc_test_f28379d_B.UnitDelay_l =
    mcb_pmsm_foc_test_f28379d_DW.UnitDelay_DSTATE_f;

  /* DataStoreWrite: '<S1>/Data Store Write' */
  mcb_pmsm_foc_test_f28379d_DW.Enable_I2C =
    mcb_pmsm_foc_test_f28379d_B.UnitDelay_l;

  /* Logic: '<S1>/Logical Operator2' */
  mcb_pmsm_foc_test_f28379d_B.LogicalOperator2 =
    !mcb_pmsm_foc_test_f28379d_B.UnitDelay_l;

  /* Outputs for Enabled SubSystem: '<S1>/Initialization' incorporates:
   *  EnablePort: '<S12>/Enable'
   */
  if (mcb_pmsm_foc_test_f28379d_B.LogicalOperator2) {
    /* S-Function (fcgen): '<S12>/Function-Call Generator' incorporates:
     *  SubSystem: '<S12>/Address - Data read'
     */
    /* S-Function (c280xi2c_tx): '<S14>/I2C Transmit1' incorporates:
     *  Constant: '<S14>/Data read address'
     *  Constant: '<S14>/Register Address'
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
          mcb_pmsm_foc_test_f28379d_B.I2CTransmit1 = I2caRegs.I2CSTR.all;/* output i2c status */
        } else
          mcb_pmsm_foc_test_f28379d_B.I2CTransmit1 = I2caRegs.I2CSTR.all | 0x40;/* output transmit data loss status */
      } else
        mcb_pmsm_foc_test_f28379d_B.I2CTransmit1 = I2caRegs.I2CSTR.all | 0x80;/* output transmit data loss status */
      I2caRegs.I2CFFTX.bit.TXFFIENA = 1;/* Enable Tx Fifo interrupt*/
      I2caRegs.I2CFFTX.bit.TXFFINTCLR = 1;/* Clear Tx interrupt flag*/
    }

    /* S-Function (fcgen): '<S12>/Function-Call Generator' incorporates:
     *  SubSystem: '<S12>/Delay 1ms'
     */
    mcb_pmsm_foc_test__Delay1ms();

    /* End of Outputs for S-Function (fcgen): '<S12>/Function-Call Generator' */
  }

  /* End of Outputs for SubSystem: '<S1>/Initialization' */

  /* Update for UnitDelay: '<S1>/Unit Delay' incorporates:
   *  Constant: '<S1>/InitTrigger'
   */
  mcb_pmsm_foc_test_f28379d_DW.UnitDelay_DSTATE_f = true;
}

/* Model step function for TID3 */
void mcb_pmsm_foc_test_f28379d_step3(void) /* Sample time: [0.5s, 0.0s] */
{
  /* Outputs for Atomic SubSystem: '<Root>/Heartbeat LED' */
  /* S-Function (c280xgpio_do): '<S231>/Digital Output' incorporates:
   *  Constant: '<S5>/RED_LED'
   */
  {
    GpioDataRegs.GPBTOGGLE.bit.GPIO34 = (uint16_T)((1U) != 0);
  }

  /* End of Outputs for SubSystem: '<Root>/Heartbeat LED' */
}

/* Model initialize function */
void mcb_pmsm_foc_test_f28379d_initialize(void)
{
  /* Registration code */

  /* initialize non-finites */
  rt_InitInfAndNaN(sizeof(real_T));

  /* initialize real-time model */
  (void) memset((void *)mcb_pmsm_foc_test_f28379d_M, 0,
                sizeof(RT_MODEL_mcb_pmsm_foc_test_f2_T));

  /* block I/O */
  (void) memset(((void *) &mcb_pmsm_foc_test_f28379d_B), 0,
                sizeof(B_mcb_pmsm_foc_test_f28379d_T));

  {
    int16_T i;
    for (i = 0; i < 11; i++) {
      mcb_pmsm_foc_test_f28379d_B.TmpSignalConversionAtSelectorIn[i] = 0.0F;
    }

    mcb_pmsm_foc_test_f28379d_B.RT1 = 0.0F;
    mcb_pmsm_foc_test_f28379d_B.RT13 = 0.0F;
    mcb_pmsm_foc_test_f28379d_B.RT3 = 0.0F;
    mcb_pmsm_foc_test_f28379d_B.RT7 = 0.0F;
    mcb_pmsm_foc_test_f28379d_B.CastToSingle1 = 0.0F;
    mcb_pmsm_foc_test_f28379d_B.Gain = 0.0F;
    mcb_pmsm_foc_test_f28379d_B.RT2[0] = 0.0F;
    mcb_pmsm_foc_test_f28379d_B.RT2[1] = 0.0F;
    mcb_pmsm_foc_test_f28379d_B.RT4 = 0.0F;
    mcb_pmsm_foc_test_f28379d_B.RT15 = 0.0F;
    mcb_pmsm_foc_test_f28379d_B.pu = 0.0F;
    mcb_pmsm_foc_test_f28379d_B.SCIReceive[0] = 0.0F;
    mcb_pmsm_foc_test_f28379d_B.SCIReceive[1] = 0.0F;
    mcb_pmsm_foc_test_f28379d_B.DataStoreRead2 = 0.0F;
    mcb_pmsm_foc_test_f28379d_B.Unwrap = 0.0F;
    mcb_pmsm_foc_test_f28379d_B.DTC = 0.0F;
    mcb_pmsm_foc_test_f28379d_B.SpeedGain = 0.0F;
    mcb_pmsm_foc_test_f28379d_B.Product = 0.0F;
    mcb_pmsm_foc_test_f28379d_B.UnitDelay = 0.0F;
    mcb_pmsm_foc_test_f28379d_B.Product1 = 0.0F;
    mcb_pmsm_foc_test_f28379d_B.Add1 = 0.0F;
    mcb_pmsm_foc_test_f28379d_B.GetADCVoltage[0] = 0.0F;
    mcb_pmsm_foc_test_f28379d_B.GetADCVoltage[1] = 0.0F;
    mcb_pmsm_foc_test_f28379d_B.GetCurrents[0] = 0.0F;
    mcb_pmsm_foc_test_f28379d_B.GetCurrents[1] = 0.0F;
    mcb_pmsm_foc_test_f28379d_B.PU_Conversion[0] = 0.0F;
    mcb_pmsm_foc_test_f28379d_B.PU_Conversion[1] = 0.0F;
    mcb_pmsm_foc_test_f28379d_B.Switch = 0.0F;
    mcb_pmsm_foc_test_f28379d_B.Merge = 0.0F;
    mcb_pmsm_foc_test_f28379d_B.Numberofpolepairs = 0.0F;
    mcb_pmsm_foc_test_f28379d_B.Floor = 0.0F;
    mcb_pmsm_foc_test_f28379d_B.Add_c = 0.0F;
    mcb_pmsm_foc_test_f28379d_B.Merge_o = 0.0F;
    mcb_pmsm_foc_test_f28379d_B.indexing = 0.0F;
    mcb_pmsm_foc_test_f28379d_B.Lookup[0] = 0.0F;
    mcb_pmsm_foc_test_f28379d_B.Lookup[1] = 0.0F;
    mcb_pmsm_foc_test_f28379d_B.Lookup[2] = 0.0F;
    mcb_pmsm_foc_test_f28379d_B.Lookup[3] = 0.0F;
    mcb_pmsm_foc_test_f28379d_B.Sum3 = 0.0F;
    mcb_pmsm_foc_test_f28379d_B.DataTypeConversion1 = 0.0F;
    mcb_pmsm_foc_test_f28379d_B.Sum2 = 0.0F;
    mcb_pmsm_foc_test_f28379d_B.Product_i = 0.0F;
    mcb_pmsm_foc_test_f28379d_B.Sum4 = 0.0F;
    mcb_pmsm_foc_test_f28379d_B.Sum5 = 0.0F;
    mcb_pmsm_foc_test_f28379d_B.Product1_b = 0.0F;
    mcb_pmsm_foc_test_f28379d_B.Sum6 = 0.0F;
    mcb_pmsm_foc_test_f28379d_B.Selector[0] = 0.0F;
    mcb_pmsm_foc_test_f28379d_B.Selector[1] = 0.0F;
    mcb_pmsm_foc_test_f28379d_B.Sum_o = 0.0F;
    mcb_pmsm_foc_test_f28379d_B.PProdOut = 0.0F;
    mcb_pmsm_foc_test_f28379d_B.Kp1 = 0.0F;
    mcb_pmsm_foc_test_f28379d_B.Integrator = 0.0F;
    mcb_pmsm_foc_test_f28379d_B.Sum_m = 0.0F;
    mcb_pmsm_foc_test_f28379d_B.Saturation = 0.0F;
    mcb_pmsm_foc_test_f28379d_B.Sum_j = 0.0F;
    mcb_pmsm_foc_test_f28379d_B.PProdOut_g = 0.0F;
    mcb_pmsm_foc_test_f28379d_B.Ki1 = 0.0F;
    mcb_pmsm_foc_test_f28379d_B.Integrator_f = 0.0F;
    mcb_pmsm_foc_test_f28379d_B.Sum_g = 0.0F;
    mcb_pmsm_foc_test_f28379d_B.Saturation_f = 0.0F;
    mcb_pmsm_foc_test_f28379d_B.Switch_n = 0.0F;
    mcb_pmsm_foc_test_f28379d_B.Product_j = 0.0F;
    mcb_pmsm_foc_test_f28379d_B.Product_f = 0.0F;
    mcb_pmsm_foc_test_f28379d_B.Product1_g = 0.0F;
    mcb_pmsm_foc_test_f28379d_B.Sum1 = 0.0F;
    mcb_pmsm_foc_test_f28379d_B.Merge_i[0] = 0.0F;
    mcb_pmsm_foc_test_f28379d_B.Merge_i[1] = 0.0F;
    mcb_pmsm_foc_test_f28379d_B.DeadZone = 0.0F;
    mcb_pmsm_foc_test_f28379d_B.IProdOut = 0.0F;
    mcb_pmsm_foc_test_f28379d_B.Switch_f = 0.0F;
    mcb_pmsm_foc_test_f28379d_B.DeadZone_a = 0.0F;
    mcb_pmsm_foc_test_f28379d_B.IProdOut_b = 0.0F;
    mcb_pmsm_foc_test_f28379d_B.Switch_a = 0.0F;
    mcb_pmsm_foc_test_f28379d_B.Merge_a = 0.0F;
    mcb_pmsm_foc_test_f28379d_B.indexing_d = 0.0F;
    mcb_pmsm_foc_test_f28379d_B.DataTypeConversion1_n = 0.0F;
    mcb_pmsm_foc_test_f28379d_B.Lookup_p[0] = 0.0F;
    mcb_pmsm_foc_test_f28379d_B.Lookup_p[1] = 0.0F;
    mcb_pmsm_foc_test_f28379d_B.Lookup_p[2] = 0.0F;
    mcb_pmsm_foc_test_f28379d_B.Lookup_p[3] = 0.0F;
    mcb_pmsm_foc_test_f28379d_B.Sum3_j = 0.0F;
    mcb_pmsm_foc_test_f28379d_B.Sum2_p = 0.0F;
    mcb_pmsm_foc_test_f28379d_B.Product_d = 0.0F;
    mcb_pmsm_foc_test_f28379d_B.Sum5_l = 0.0F;
    mcb_pmsm_foc_test_f28379d_B.Product1_d = 0.0F;
    mcb_pmsm_foc_test_f28379d_B.Sum4_h = 0.0F;
    mcb_pmsm_foc_test_f28379d_B.Sum6_h = 0.0F;
    mcb_pmsm_foc_test_f28379d_B.Delay_c = 0.0F;
    mcb_pmsm_foc_test_f28379d_B.Sum_a = 0.0F;
    mcb_pmsm_foc_test_f28379d_B.Merge_c = 0.0F;
    mcb_pmsm_foc_test_f28379d_B.DataTypeConversion = 0.0F;
    mcb_pmsm_foc_test_f28379d_B.Switch_g = 0.0F;
    mcb_pmsm_foc_test_f28379d_B.DataStoreRead1 = 0.0F;
    mcb_pmsm_foc_test_f28379d_B.sqrt3_by_two = 0.0F;
    mcb_pmsm_foc_test_f28379d_B.one_by_two = 0.0F;
    mcb_pmsm_foc_test_f28379d_B.add_c = 0.0F;
    mcb_pmsm_foc_test_f28379d_B.add_b = 0.0F;
    mcb_pmsm_foc_test_f28379d_B.Min = 0.0F;
    mcb_pmsm_foc_test_f28379d_B.Max = 0.0F;
    mcb_pmsm_foc_test_f28379d_B.Add_n = 0.0F;
    mcb_pmsm_foc_test_f28379d_B.one_by_two_l = 0.0F;
    mcb_pmsm_foc_test_f28379d_B.Add3 = 0.0F;
    mcb_pmsm_foc_test_f28379d_B.Add2 = 0.0F;
    mcb_pmsm_foc_test_f28379d_B.Add1_d = 0.0F;
    mcb_pmsm_foc_test_f28379d_B.Gain_a[0] = 0.0F;
    mcb_pmsm_foc_test_f28379d_B.Gain_a[1] = 0.0F;
    mcb_pmsm_foc_test_f28379d_B.Gain_a[2] = 0.0F;
    mcb_pmsm_foc_test_f28379d_B.One_by_Two[0] = 0.0F;
    mcb_pmsm_foc_test_f28379d_B.One_by_Two[1] = 0.0F;
    mcb_pmsm_foc_test_f28379d_B.One_by_Two[2] = 0.0F;
    mcb_pmsm_foc_test_f28379d_B.PWM_Duty_Cycles[0] = 0.0F;
    mcb_pmsm_foc_test_f28379d_B.PWM_Duty_Cycles[1] = 0.0F;
    mcb_pmsm_foc_test_f28379d_B.PWM_Duty_Cycles[2] = 0.0F;
    mcb_pmsm_foc_test_f28379d_B.acos_b = 0.0F;
    mcb_pmsm_foc_test_f28379d_B.bsin = 0.0F;
    mcb_pmsm_foc_test_f28379d_B.sum_Ds = 0.0F;
    mcb_pmsm_foc_test_f28379d_B.bcos = 0.0F;
    mcb_pmsm_foc_test_f28379d_B.asin_o = 0.0F;
    mcb_pmsm_foc_test_f28379d_B.sum_Qs = 0.0F;
    mcb_pmsm_foc_test_f28379d_B.Switch_h[0] = 0.0F;
    mcb_pmsm_foc_test_f28379d_B.Switch_h[1] = 0.0F;
    mcb_pmsm_foc_test_f28379d_B.algDD_o1 = 0.0F;
    mcb_pmsm_foc_test_f28379d_B.algDD_o2 = 0.0F;
    mcb_pmsm_foc_test_f28379d_B.qcos = 0.0F;
    mcb_pmsm_foc_test_f28379d_B.dsin = 0.0F;
    mcb_pmsm_foc_test_f28379d_B.sum_beta = 0.0F;
    mcb_pmsm_foc_test_f28379d_B.dcos = 0.0F;
    mcb_pmsm_foc_test_f28379d_B.qsin = 0.0F;
    mcb_pmsm_foc_test_f28379d_B.sum_alpha = 0.0F;
    mcb_pmsm_foc_test_f28379d_B.Switch_b[0] = 0.0F;
    mcb_pmsm_foc_test_f28379d_B.Switch_b[1] = 0.0F;
    mcb_pmsm_foc_test_f28379d_B.algDD_o1_p = 0.0F;
    mcb_pmsm_foc_test_f28379d_B.algDD_o2_o = 0.0F;
    mcb_pmsm_foc_test_f28379d_B.Product_o[0] = 0.0F;
    mcb_pmsm_foc_test_f28379d_B.Product_o[1] = 0.0F;
    mcb_pmsm_foc_test_f28379d_B.SquareRoot = 0.0F;
    mcb_pmsm_foc_test_f28379d_B.Switch_as = 0.0F;
    mcb_pmsm_foc_test_f28379d_B.Reciprocal = 0.0F;
    mcb_pmsm_foc_test_f28379d_B.Switch_j[0] = 0.0F;
    mcb_pmsm_foc_test_f28379d_B.Switch_j[1] = 0.0F;
    mcb_pmsm_foc_test_f28379d_B.Switch2 = 0.0F;
    mcb_pmsm_foc_test_f28379d_B.Product_b = 0.0F;
    mcb_pmsm_foc_test_f28379d_B.Sum_jr = 0.0F;
    mcb_pmsm_foc_test_f28379d_B.Product2 = 0.0F;
    mcb_pmsm_foc_test_f28379d_B.Merge_d = 0.0F;
    mcb_pmsm_foc_test_f28379d_B.Gain_b = 0.0F;
    mcb_pmsm_foc_test_f28379d_B.Switch_m = 0.0F;
    mcb_pmsm_foc_test_f28379d_B.Switch1 = 0.0F;
    mcb_pmsm_foc_test_f28379d_B.Sqrt = 0.0F;
    mcb_pmsm_foc_test_f28379d_B.Gain_l = 0.0F;
    mcb_pmsm_foc_test_f28379d_B.a_plus_2b = 0.0F;
    mcb_pmsm_foc_test_f28379d_B.one_by_sqrt3 = 0.0F;
    mcb_pmsm_foc_test_f28379d_B.algDD_o1_e = 0.0F;
    mcb_pmsm_foc_test_f28379d_B.algDD_o2_h = 0.0F;
    mcb_pmsm_foc_test_f28379d_B.SpeedControl.Id_ref = 0.0F;
    mcb_pmsm_foc_test_f28379d_B.SpeedControl.CastToSingle1 = 0.0F;
    mcb_pmsm_foc_test_f28379d_B.IfActionSubsystem1_k.Convert_back = 0.0F;
    mcb_pmsm_foc_test_f28379d_B.IfActionSubsystem_e.Convert_back = 0.0F;
    mcb_pmsm_foc_test_f28379d_B.IfActionSubsystem1.Convert_back = 0.0F;
    mcb_pmsm_foc_test_f28379d_B.IfActionSubsystem.Convert_back = 0.0F;
  }

  /* states (dwork) */
  (void) memset((void *)&mcb_pmsm_foc_test_f28379d_DW, 0,
                sizeof(DW_mcb_pmsm_foc_test_f28379d_T));
  mcb_pmsm_foc_test_f28379d_DW.ERR = 0.0;
  mcb_pmsm_foc_test_f28379d_DW.EnClosedLoop = 0.0;
  mcb_pmsm_foc_test_f28379d_DW.theta = 0.0;
  mcb_pmsm_foc_test_f28379d_DW.UnitDelay_DSTATE = 0.0F;
  mcb_pmsm_foc_test_f28379d_DW.Integrator_DSTATE = 0.0F;
  mcb_pmsm_foc_test_f28379d_DW.Integrator_DSTATE_o = 0.0F;
  mcb_pmsm_foc_test_f28379d_DW.Delay_DSTATE = 0.0F;
  mcb_pmsm_foc_test_f28379d_DW.RT1_Buffer[0] = 0.0F;
  mcb_pmsm_foc_test_f28379d_DW.RT1_Buffer[1] = 0.0F;
  mcb_pmsm_foc_test_f28379d_DW.RT15_Buffer[0] = 0.0F;
  mcb_pmsm_foc_test_f28379d_DW.RT15_Buffer[1] = 0.0F;
  mcb_pmsm_foc_test_f28379d_DW.RT2_Buffer[0] = 0.0F;
  mcb_pmsm_foc_test_f28379d_DW.RT2_Buffer[1] = 0.0F;
  mcb_pmsm_foc_test_f28379d_DW.RT2_Buffer[2] = 0.0F;
  mcb_pmsm_foc_test_f28379d_DW.RT2_Buffer[3] = 0.0F;
  mcb_pmsm_foc_test_f28379d_DW.RT3_Buffer[0] = 0.0F;
  mcb_pmsm_foc_test_f28379d_DW.RT3_Buffer[1] = 0.0F;
  mcb_pmsm_foc_test_f28379d_DW.RT4_Buffer[0] = 0.0F;
  mcb_pmsm_foc_test_f28379d_DW.RT4_Buffer[1] = 0.0F;
  mcb_pmsm_foc_test_f28379d_DW.SpeedRef = 0.0F;
  mcb_pmsm_foc_test_f28379d_DW.PosRef = 0.0F;
  mcb_pmsm_foc_test_f28379d_DW.Unwrap_Prev = 0.0F;
  mcb_pmsm_foc_test_f28379d_DW.Unwrap_Cumsum = 0.0F;

  /* Start for DataStoreMemory: '<Root>/Data Store Memory1' */
  mcb_pmsm_foc_test_f28379d_DW.IaOffset = 2278U;

  /* Start for DataStoreMemory: '<Root>/Data Store Memory2' */
  mcb_pmsm_foc_test_f28379d_DW.IbOffset = 2256U;

  /* Start for DataStoreMemory: '<Root>/Data Store Memory6' */
  mcb_pmsm_foc_test_f28379d_DW.Debug_signals = 5U;

  /* SystemInitialize for Enabled SubSystem: '<Root>/Subsystem' */
  /* SystemInitialize for MATLAB Function: '<S9>/MATLAB Function' */
  mcb_pmsm_foc_test_f28379d_DW.theta = 0.0;

  /* End of SystemInitialize for SubSystem: '<Root>/Subsystem' */
  /* SystemInitialize for Enabled SubSystem: '<S1>/Data Read' */
  /* Start for S-Function (c280xi2c_rx): '<S10>/I2C Receive' */

  /* Initialize out port */
  {
    mcb_pmsm_foc_test_f28379d_B.I2CReceive_o1[0] = (uint16_T)0.0;
    mcb_pmsm_foc_test_f28379d_B.I2CReceive_o1[1] = (uint16_T)0.0;
  }

  /* End of SystemInitialize for SubSystem: '<S1>/Data Read' */

  /* SystemInitialize for S-Function (HardwareInterrupt_sfun): '<S215>/Hardware Interrupt' incorporates:
   *  SubSystem: '<Root>/Current Control'
   */
  mcb_pms_CurrentControl_Init();

  /* SystemInitialize for S-Function (HardwareInterrupt_sfun): '<S217>/Hardware Interrupt' incorporates:
   *  SubSystem: '<Root>/Serial Receive'
   */
  /* System initialize for function-call system: '<Root>/Serial Receive' */

  /* Start for S-Function (c28xsci_rx): '<S238>/SCI Receive' */

  /* Initialize out port */
  {
    mcb_pmsm_foc_test_f28379d_B.SCIReceive[0] = (real32_T)0.0;
    mcb_pmsm_foc_test_f28379d_B.SCIReceive[1] = (real32_T)0.0;
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

  /* SystemInitialize for Atomic SubSystem: '<Root>/Heartbeat LED' */
  /* Start for S-Function (c280xgpio_do): '<S231>/Digital Output' */
  EALLOW;
  GpioCtrlRegs.GPBMUX1.all &= 0xFFFFFFCFU;
  GpioCtrlRegs.GPBDIR.all |= 0x4U;
  EDIS;

  /* End of SystemInitialize for SubSystem: '<Root>/Heartbeat LED' */

  /* SystemInitialize for Atomic SubSystem: '<Root>/Hardware Init' */
  /* Start for S-Function (c280xgpio_do): '<S221>/Digital Output' */
  EALLOW;
  GpioCtrlRegs.GPDMUX2.all &= 0xFCFFFFFFU;
  GpioCtrlRegs.GPDDIR.all |= 0x10000000U;
  EDIS;

  /* Start for S-Function (c280xgpio_do): '<S221>/Digital Output1' */
  EALLOW;
  GpioCtrlRegs.GPAMUX2.all &= 0xFFFFCFFFU;
  GpioCtrlRegs.GPADIR.all |= 0x400000U;
  EDIS;

  /* SystemInitialize for Enabled SubSystem: '<S221>/ADC Gain setting' */
  mcb__SPIMasterTransfer_Init(&mcb_pmsm_foc_test_f28379d_DW.SPIMasterTransfer);
  mcb__SPIMasterTransfer_Init(&mcb_pmsm_foc_test_f28379d_DW.SPIMasterTransfer1);

  /* End of SystemInitialize for SubSystem: '<S221>/ADC Gain setting' */

  /* SystemInitialize for Enabled SubSystem: '<S219>/Calculate ADC Offset ' */
  /* SystemInitialize for Iterator SubSystem: '<S220>/For Iterator Subsystem' */
  /* Start for S-Function (c2802xadc): '<S223>/ADC_A_IN0' */
  if (MW_adcCInitFlag == 0U) {
    InitAdcC();
    MW_adcCInitFlag = 1U;
  }

  config_ADCC_SOC2 ();

  /* Start for S-Function (c2802xadc): '<S223>/ADC_B_IN0' */
  if (MW_adcBInitFlag == 0U) {
    InitAdcB();
    MW_adcBInitFlag = 1U;
  }

  config_ADCB_SOC2 ();

  /* End of SystemInitialize for SubSystem: '<S220>/For Iterator Subsystem' */
  /* End of SystemInitialize for SubSystem: '<S219>/Calculate ADC Offset ' */
  /* End of SystemInitialize for SubSystem: '<Root>/Hardware Init' */

  /* Outputs for Atomic SubSystem: '<Root>/Hardware Init' */
  /* Outputs for Enabled SubSystem: '<S221>/ADC Gain setting' incorporates:
   *  EnablePort: '<S229>/Enable'
   */
  /* Constant: '<S4>/6PWM_Mode' */
  mcb_pmsm__SPIMasterTransfer(14870U,
    &mcb_pmsm_foc_test_f28379d_B.SPIMasterTransfer,
    &mcb_pmsm_foc_test_f28379d_DW.SPIMasterTransfer);

  /* Constant: '<S4>/ADC_Gain_Setting' */
  mcb_pmsm__SPIMasterTransfer(20501U,
    &mcb_pmsm_foc_test_f28379d_B.SPIMasterTransfer1,
    &mcb_pmsm_foc_test_f28379d_DW.SPIMasterTransfer1);

  /* End of Outputs for SubSystem: '<S221>/ADC Gain setting' */

  /* Switch: '<S221>/Switch' incorporates:
   *  Constant: '<S221>/Inverter Enable'
   */
  mcb_pmsm_foc_test_f28379d_B.Switch_c = 1U;

  /* S-Function (c280xgpio_do): '<S221>/Digital Output' */
  {
    if (mcb_pmsm_foc_test_f28379d_B.Switch_c) {
      GpioDataRegs.GPDSET.bit.GPIO124 = 1U;
    } else {
      GpioDataRegs.GPDCLEAR.bit.GPIO124 = 1U;
    }
  }

  /* S-Function (c280xgpio_do): '<S221>/Digital Output1' incorporates:
   *  Constant: '<S221>/RunTimeMeasurement'
   */
  {
    if ((1U)) {
      GpioDataRegs.GPASET.bit.GPIO22 = 1U;
    } else {
      GpioDataRegs.GPACLEAR.bit.GPIO22 = 1U;
    }
  }

  /* Logic: '<S219>/NOT' */
  mcb_pmsm_foc_test_f28379d_B.NOT = true;

  /* Outputs for Enabled SubSystem: '<S219>/Default ADC Offset' incorporates:
   *  EnablePort: '<S222>/Enable'
   */
  if (mcb_pmsm_foc_test_f28379d_B.NOT) {
    /* DataStoreWrite: '<S222>/Data Store Write1' incorporates:
     *  Constant: '<S222>/Constant'
     */
    mcb_pmsm_foc_test_f28379d_DW.IaOffset = 2278U;

    /* DataStoreWrite: '<S222>/Data Store Write2' incorporates:
     *  Constant: '<S222>/Constant1'
     */
    mcb_pmsm_foc_test_f28379d_DW.IbOffset = 2256U;
  }

  /* End of Outputs for SubSystem: '<S219>/Default ADC Offset' */
  /* End of Outputs for SubSystem: '<Root>/Hardware Init' */
}

/* Model terminate function */
void mcb_pmsm_foc_test_f28379d_terminate(void)
{
  /* Terminate for Atomic SubSystem: '<Root>/Hardware Init' */
  /* Terminate for Enabled SubSystem: '<S221>/ADC Gain setting' */
  mcb__SPIMasterTransfer_Term(&mcb_pmsm_foc_test_f28379d_DW.SPIMasterTransfer);
  mcb__SPIMasterTransfer_Term(&mcb_pmsm_foc_test_f28379d_DW.SPIMasterTransfer1);

  /* End of Terminate for SubSystem: '<S221>/ADC Gain setting' */
  /* End of Terminate for SubSystem: '<Root>/Hardware Init' */
}

void mcb_pmsm_foc_test_f28379d_configure_interrupts(void)
{
  /* Register interrupt service routine */
  HWI_TIC28x_ConfigureIRQ(33,&ADCB1_INT,0);
  HWI_TIC28x_EnableIRQ(33);

  /* Register interrupt service routine */
  HWI_TIC28x_ConfigureIRQ(96,&SCIA_RX_INT,2);
  HWI_TIC28x_EnableIRQ(96);
}

/* Hardware Interrupt Block: '<S215>/Hardware Interrupt' */
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
      tmp = mcb_pmsm_foc_test_f28379d_DW.RT2_ActiveBufIdx << 1U;
      mcb_pmsm_foc_test_f28379d_B.RT2[0] =
        mcb_pmsm_foc_test_f28379d_DW.RT2_Buffer[tmp];
      mcb_pmsm_foc_test_f28379d_B.RT2[1] =
        mcb_pmsm_foc_test_f28379d_DW.RT2_Buffer[tmp + 1];

      /* RateTransition: '<Root>/RT4' */
      mcb_pmsm_foc_test_f28379d_B.RT4 =
        mcb_pmsm_foc_test_f28379d_DW.RT4_Buffer[mcb_pmsm_foc_test_f28379d_DW.RT4_ActiveBufIdx];

      /* RateTransition: '<Root>/RT15' */
      mcb_pmsm_foc_test_f28379d_B.RT15 =
        mcb_pmsm_foc_test_f28379d_DW.RT15_Buffer[mcb_pmsm_foc_test_f28379d_DW.RT15_ActiveBufIdx];

      /* S-Function (HardwareInterrupt_sfun): '<S215>/Hardware Interrupt' */
      mcb_pmsm_foc_CurrentControl();

      /* End of Outputs for S-Function (HardwareInterrupt_sfun): '<S215>/Hardware Interrupt' */

      /* RateTransition: '<Root>/RT1' */
      mcb_pmsm_foc_test_f28379d_DW.RT1_Buffer[mcb_pmsm_foc_test_f28379d_DW.RT1_semaphoreTaken
        == 0] = mcb_pmsm_foc_test_f28379d_B.Add1;
      mcb_pmsm_foc_test_f28379d_DW.RT1_ActiveBufIdx =
        (mcb_pmsm_foc_test_f28379d_DW.RT1_semaphoreTaken == 0);
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

/* Hardware Interrupt Block: '<S217>/Hardware Interrupt' */
interrupt void SCIA_RX_INT(void)
{
  /* Event: Default Event */
  if (1 == runModel) {
    {
      /* S-Function (HardwareInterrupt_sfun): '<S217>/Hardware Interrupt' */

      /* Output and update for function-call system: '<Root>/Serial Receive' */

      /* S-Function (c28xsci_rx): '<S238>/SCI Receive' */
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
            memcpy( &mcb_pmsm_foc_test_f28379d_B.SCIReceive[0], recbuff,4);
          }
        }
      }

      /* DataTypeConversion: '<S236>/Data Type Conversion2' */
      mcb_pmsm_foc_test_f28379d_B.DataTypeConversion2 = (uint16_T)
        mcb_pmsm_foc_test_f28379d_B.SCIReceive[1];

      /* S-Function (sfix_bitop): '<S235>/Bitwise Operator' */
      mcb_pmsm_foc_test_f28379d_B.BitwiseOperator =
        mcb_pmsm_foc_test_f28379d_B.DataTypeConversion2 & 1U;

      /* DataTypeConversion: '<S235>/Data Type Conversion3' */
      mcb_pmsm_foc_test_f28379d_B.DataTypeConversion3 =
        (mcb_pmsm_foc_test_f28379d_B.BitwiseOperator != 0U);

      /* DataStoreWrite: '<S7>/Data Store Write' */
      mcb_pmsm_foc_test_f28379d_DW.Enable =
        mcb_pmsm_foc_test_f28379d_B.DataTypeConversion3;

      /* DataStoreWrite: '<S7>/Data Store Write1' */
      mcb_pmsm_foc_test_f28379d_DW.SpeedRef =
        mcb_pmsm_foc_test_f28379d_B.SCIReceive[0];

      /* S-Function (sfix_bitop): '<S235>/Bitwise Operator1' */
      mcb_pmsm_foc_test_f28379d_B.BitwiseOperator1 =
        mcb_pmsm_foc_test_f28379d_B.DataTypeConversion2 & 240U;

      /* ArithShift: '<S235>/Shift Arithmetic1' incorporates:
       *  S-Function (sfix_bitop): '<S235>/Bitwise Operator1'
       */
      mcb_pmsm_foc_test_f28379d_B.ShiftArithmetic1 =
        mcb_pmsm_foc_test_f28379d_B.BitwiseOperator1 >> 4U;

      /* DataStoreWrite: '<S7>/Data Store Write2' */
      mcb_pmsm_foc_test_f28379d_DW.Debug_signals =
        mcb_pmsm_foc_test_f28379d_B.ShiftArithmetic1;

      /* S-Function (sfix_bitop): '<S235>/Bitwise Operator2' */
      mcb_pmsm_foc_test_f28379d_B.BitwiseOperator2 =
        mcb_pmsm_foc_test_f28379d_B.DataTypeConversion2 & 2U;

      /* ArithShift: '<S235>/Shift Arithmetic2' incorporates:
       *  S-Function (sfix_bitop): '<S235>/Bitwise Operator2'
       */
      mcb_pmsm_foc_test_f28379d_B.ShiftArithmetic2 =
        mcb_pmsm_foc_test_f28379d_B.BitwiseOperator2 >> 1U;

      /* DataStoreWrite: '<S7>/Data Store Write3' */
      mcb_pmsm_foc_test_f28379d_DW.Control_Mode =
        mcb_pmsm_foc_test_f28379d_B.ShiftArithmetic2;

      /* End of Outputs for S-Function (HardwareInterrupt_sfun): '<S217>/Hardware Interrupt' */

      /* RateTransition: '<Root>/RT3' */
      mcb_pmsm_foc_test_f28379d_DW.RT3_Buffer[mcb_pmsm_foc_test_f28379d_DW.RT3_ActiveBufIdx
        == 0] = mcb_pmsm_foc_test_f28379d_B.SCIReceive[0];
      mcb_pmsm_foc_test_f28379d_DW.RT3_ActiveBufIdx =
        (mcb_pmsm_foc_test_f28379d_DW.RT3_ActiveBufIdx == 0);
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

void mcb_pmsm_foc_test_f28379d_unconfigure_interrupts (void)
{
  HWI_TIC28x_DisableIRQ(33);
  HWI_TIC28x_DisableIRQ(96);
}

/*
 * File trailer for generated code.
 *
 * [EOF]
 */
