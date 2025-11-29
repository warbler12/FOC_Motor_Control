/*
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * File: mcb_pmsm_qep_offset_f28379d.c
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

#include "mcb_pmsm_qep_offset_f28379d.h"
#include "mcb_pmsm_qep_offset_f28379d_private.h"
#include "rtwtypes.h"
#include <string.h>

/* Block signals (default storage) */
B_mcb_pmsm_qep_offset_f28379d_T mcb_pmsm_qep_offset_f28379d_B;

/* Block states (default storage) */
DW_mcb_pmsm_qep_offset_f28379_T mcb_pmsm_qep_offset_f28379d_DW;

/* Real-time model */
static RT_MODEL_mcb_pmsm_qep_offset__T mcb_pmsm_qep_offset_f28379d_M_;
RT_MODEL_mcb_pmsm_qep_offset__T *const mcb_pmsm_qep_offset_f28379d_M =
  &mcb_pmsm_qep_offset_f28379d_M_;
static void rate_monotonic_scheduler(void);

/*
 * Set which subrates need to run this base step (base rate always runs).
 * This function must be called prior to calling the model step function
 * in order to remember which rates need to run this base step.  The
 * buffering of events allows for overlapping preemption.
 */
void mcb_pmsm_qep_offset_f28379d_SetEventsForThisBaseStep(boolean_T *eventFlags)
{
  /* Task runs when its counter is zero, computed via rtmStepTask macro */
  eventFlags[1] = ((boolean_T)rtmStepTask(mcb_pmsm_qep_offset_f28379d_M, 1));
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
  /* To ensure a deterministic data transfer between two rates,
   * data is transferred at the priority of a fast task and the frequency
   * of the slow task.  The following flags indicate when the data transfer
   * happens.  That is, a rate interaction flag is set true when both rates
   * will run, and false otherwise.
   */

  /* tid 0 shares data with slower tid rate: 1 */
  mcb_pmsm_qep_offset_f28379d_M->Timing.RateInteraction.TID0_1 =
    (mcb_pmsm_qep_offset_f28379d_M->Timing.TaskCounters.TID[1] == 0);

  /* Compute which subrates run during the next base time step.  Subrates
   * are an integer multiple of the base rate counter.  Therefore, the subtask
   * counter is reset when it reaches its limit (zero means run).
   */
  (mcb_pmsm_qep_offset_f28379d_M->Timing.TaskCounters.TID[1])++;
  if ((mcb_pmsm_qep_offset_f28379d_M->Timing.TaskCounters.TID[1]) > 14) {/* Sample time: [0.015s, 0.0s] */
    mcb_pmsm_qep_offset_f28379d_M->Timing.TaskCounters.TID[1] = 0;
  }
}

/* Model step function for TID0 */
void mcb_pmsm_qep_offset_f28379d_step0(void) /* Sample time: [0.001s, 0.0s] */
{
  {                                    /* Sample time: [0.001s, 0.0s] */
    rate_monotonic_scheduler();
  }

  /* RateTransition: '<Root>/Rate Transition' */
  if (mcb_pmsm_qep_offset_f28379d_M->Timing.RateInteraction.TID0_1) {
    /* RateTransition: '<Root>/Rate Transition' */
    mcb_pmsm_qep_offset_f28379d_B.RateTransition =
      mcb_pmsm_qep_offset_f28379d_DW.RateTransition_Buffer0;
  }

  /* End of RateTransition: '<Root>/Rate Transition' */

  /* Outputs for Enabled SubSystem: '<Root>/Subsystem' incorporates:
   *  EnablePort: '<S3>/Enable'
   */
  if (mcb_pmsm_qep_offset_f28379d_B.RateTransition > 0U) {
    /* S-Function (fcgen): '<S6>/Function-Call Generator' incorporates:
     *  SubSystem: '<S6>/Subsystem'
     */
    /* S-Function (c280xi2c_tx): '<S7>/I2C Transmit' incorporates:
     *  Constant: '<S3>/Data Read Address'
     */
    {
      int unsigned tx_loop= 0;
      I2caRegs.I2CFFTX.bit.TXFFIENA = 0;/* Disable Tx Fifo interrupt*/
      while (I2caRegs.I2CFFTX.bit.TXFFST!=0 && tx_loop<10000 )
        tx_loop++;
      if (tx_loop!=10000) {
        I2caRegs.I2CSAR.bit.SAR = 0;   /* Set Peripheral address*/
        I2caRegs.I2CCNT= 1;            /* Set data length */

        /* mode:1 (1:Controller 0:Peripheral)  Addressing mode:0 (1:10-bit 0:7-bit)
           free data mode:0 (1:enbaled 0:disabled) digital loopback mode:0 (1:enabled 0:disabled)
           bit count:0 (0:8bit) stop condition:0 (1:enabled 0: disabled)*/
        I2caRegs.I2CMDR.all = 26144;
        tx_loop= 0;
        while (I2caRegs.I2CFFTX.bit.TXFFST==16 && tx_loop<10000)
          tx_loop++;
        if (tx_loop!=10000) {
          I2caRegs.I2CDXR.bit.DATA = (uint8_T)
            mcb_pmsm_qep_offset_f28379d_P.DataReadAddress_Value;
          mcb_pmsm_qep_offset_f28379d_B.I2CTransmit = I2caRegs.I2CSTR.all;/* output i2c status */
        } else
          mcb_pmsm_qep_offset_f28379d_B.I2CTransmit = I2caRegs.I2CSTR.all | 0x40;/* output transmit data loss status */
      } else
        mcb_pmsm_qep_offset_f28379d_B.I2CTransmit = I2caRegs.I2CSTR.all | 0x80;/* output transmit data loss status */
      I2caRegs.I2CFFTX.bit.TXFFIENA = 1;/* Enable Tx Fifo interrupt*/
      I2caRegs.I2CFFTX.bit.TXFFINTCLR = 1;/* Clear Tx interrupt flag*/
    }

    /* S-Function (fcgen): '<S6>/Function-Call Generator' incorporates:
     *  SubSystem: '<S6>/Subsystem1'
     */
    /* S-Function (c280xi2c_rx): '<S8>/I2C Receive' */
    {
      int rx_loop= 0;
      I2caRegs.I2CSAR.bit.SAR = 54;    /* Set Peripheral address*/
      I2caRegs.I2CCNT= 2;              /* Set data length */

      /* mode:1 (1:Controller 0:Peripheral)  Addressing mode:0 (1:10-bit 0:7-bit)
         free data mode:0 (1:enbaled 0:disabled) digital loopback mode:0 (1:enabled 0:disabled)
         bit count:0 (0:8bit) NACK mode:1 (1:enabled 0: disabled) stop condition:1 (1:enabled 0: disabled)*/
      I2caRegs.I2CMDR.all = 60448;
      rx_loop= 0;
      while (I2caRegs.I2CFFRX.bit.RXFFST==0 && rx_loop<10000)
        rx_loop++;
      if (rx_loop!=10000) {
        mcb_pmsm_qep_offset_f28379d_B.I2CReceive_o1[0] =
          I2caRegs.I2CDRR.bit.DATA;
        mcb_pmsm_qep_offset_f28379d_B.I2CReceive_o2 = I2caRegs.I2CSTR.all;/* output i2c status */
      } else
        mcb_pmsm_qep_offset_f28379d_B.I2CReceive_o2 = I2caRegs.I2CSTR.all | 0x40;/* output receive data loss status */
      rx_loop= 0;
      while (I2caRegs.I2CFFRX.bit.RXFFST==0 && rx_loop<10000)
        rx_loop++;
      if (rx_loop!=10000) {
        mcb_pmsm_qep_offset_f28379d_B.I2CReceive_o1[1] =
          I2caRegs.I2CDRR.bit.DATA;
        mcb_pmsm_qep_offset_f28379d_B.I2CReceive_o2 = I2caRegs.I2CSTR.all;/* output i2c status */
      } else
        mcb_pmsm_qep_offset_f28379d_B.I2CReceive_o2 = I2caRegs.I2CSTR.all | 0x40;/* output receive data loss status */
    }

    /* End of Outputs for S-Function (fcgen): '<S6>/Function-Call Generator' */
  }

  /* End of Outputs for SubSystem: '<Root>/Subsystem' */
}

/* Model step function for TID1 */
void mcb_pmsm_qep_offset_f28379d_step1(void) /* Sample time: [0.015s, 0.0s] */
{
  uint16_T rtb_UnitDelay;

  /* UnitDelay: '<Root>/Unit Delay' */
  rtb_UnitDelay = mcb_pmsm_qep_offset_f28379d_DW.UnitDelay_DSTATE;

  /* Outputs for Enabled SubSystem: '<Root>/Initialization' incorporates:
   *  EnablePort: '<S2>/Enable'
   */
  /* Logic: '<Root>/Logical Operator2' */
  if (rtb_UnitDelay == 0U) {
    /* S-Function (fcgen): '<S2>/Function-Call Generator' incorporates:
     *  SubSystem: '<S2>/Address - Data read'
     */
    /* S-Function (c280xi2c_tx): '<S5>/I2C Transmit1' incorporates:
     *  Constant: '<S5>/Data read address'
     */
    {
      int unsigned tx_loop= 0;
      I2caRegs.I2CFFTX.bit.TXFFIENA = 0;/* Disable Tx Fifo interrupt*/
      while (I2caRegs.I2CFFTX.bit.TXFFST!=0 && tx_loop<10000 )
        tx_loop++;
      if (tx_loop!=10000) {
        I2caRegs.I2CSAR.bit.SAR = 0;   /* Set Peripheral address*/
        I2caRegs.I2CCNT= 1;            /* Set data length */

        /* mode:1 (1:Controller 0:Peripheral)  Addressing mode:0 (1:10-bit 0:7-bit)
           free data mode:0 (1:enbaled 0:disabled) digital loopback mode:0 (1:enabled 0:disabled)
           bit count:0 (0:8bit) stop condition:0 (1:enabled 0: disabled)*/
        I2caRegs.I2CMDR.all = 26144;
        tx_loop= 0;
        while (I2caRegs.I2CFFTX.bit.TXFFST==16 && tx_loop<10000)
          tx_loop++;
        if (tx_loop!=10000) {
          I2caRegs.I2CDXR.bit.DATA = (uint8_T)
            mcb_pmsm_qep_offset_f28379d_P.Datareadaddress_Value;
          mcb_pmsm_qep_offset_f28379d_B.I2CTransmit1 = I2caRegs.I2CSTR.all;/* output i2c status */
        } else
          mcb_pmsm_qep_offset_f28379d_B.I2CTransmit1 = I2caRegs.I2CSTR.all |
            0x40;                      /* output transmit data loss status */
      } else
        mcb_pmsm_qep_offset_f28379d_B.I2CTransmit1 = I2caRegs.I2CSTR.all | 0x80;/* output transmit data loss status */
      I2caRegs.I2CFFTX.bit.TXFFIENA = 1;/* Enable Tx Fifo interrupt*/
      I2caRegs.I2CFFTX.bit.TXFFINTCLR = 1;/* Clear Tx interrupt flag*/
    }

    /* End of Outputs for S-Function (fcgen): '<S2>/Function-Call Generator' */
  }

  /* End of Logic: '<Root>/Logical Operator2' */
  /* End of Outputs for SubSystem: '<Root>/Initialization' */

  /* Update for UnitDelay: '<Root>/Unit Delay' incorporates:
   *  Constant: '<Root>/InitTrigger'
   */
  mcb_pmsm_qep_offset_f28379d_DW.UnitDelay_DSTATE =
    mcb_pmsm_qep_offset_f28379d_P.InitTrigger_Value;

  /* Update for RateTransition: '<Root>/Rate Transition' */
  mcb_pmsm_qep_offset_f28379d_DW.RateTransition_Buffer0 = rtb_UnitDelay;
}

/* Model initialize function */
void mcb_pmsm_qep_offset_f28379d_initialize(void)
{
  /* Registration code */

  /* initialize real-time model */
  (void) memset((void *)mcb_pmsm_qep_offset_f28379d_M, 0,
                sizeof(RT_MODEL_mcb_pmsm_qep_offset__T));

  /* block I/O */
  (void) memset(((void *) &mcb_pmsm_qep_offset_f28379d_B), 0,
                sizeof(B_mcb_pmsm_qep_offset_f28379d_T));

  /* states (dwork) */
  (void) memset((void *)&mcb_pmsm_qep_offset_f28379d_DW, 0,
                sizeof(DW_mcb_pmsm_qep_offset_f28379_T));

  /* Start for RateTransition: '<Root>/Rate Transition' */
  mcb_pmsm_qep_offset_f28379d_B.RateTransition =
    mcb_pmsm_qep_offset_f28379d_P.RateTransition_InitialCondition;

  /* InitializeConditions for UnitDelay: '<Root>/Unit Delay' */
  mcb_pmsm_qep_offset_f28379d_DW.UnitDelay_DSTATE =
    mcb_pmsm_qep_offset_f28379d_P.UnitDelay_InitialCondition;

  /* InitializeConditions for RateTransition: '<Root>/Rate Transition' */
  mcb_pmsm_qep_offset_f28379d_DW.RateTransition_Buffer0 =
    mcb_pmsm_qep_offset_f28379d_P.RateTransition_InitialCondition;

  /* SystemInitialize for Enabled SubSystem: '<Root>/Subsystem' */
  /* SystemInitialize for S-Function (fcgen): '<S6>/Function-Call Generator' incorporates:
   *  SubSystem: '<S6>/Subsystem1'
   */
  /* Start for S-Function (c280xi2c_rx): '<S8>/I2C Receive' */

  /* Initialize out port */
  {
    mcb_pmsm_qep_offset_f28379d_B.I2CReceive_o1[0] = (uint16_T)0.0;
    mcb_pmsm_qep_offset_f28379d_B.I2CReceive_o1[1] = (uint16_T)0.0;
  }

  /* SystemInitialize for S-Function (c280xi2c_rx): '<S8>/I2C Receive' incorporates:
   *  Outport: '<S8>/Out1'
   */
  mcb_pmsm_qep_offset_f28379d_B.I2CReceive_o1[0] =
    mcb_pmsm_qep_offset_f28379d_P.Out1_Y0;
  mcb_pmsm_qep_offset_f28379d_B.I2CReceive_o1[1] =
    mcb_pmsm_qep_offset_f28379d_P.Out1_Y0;

  /* End of SystemInitialize for S-Function (fcgen): '<S6>/Function-Call Generator' */
  /* End of SystemInitialize for SubSystem: '<Root>/Subsystem' */
}

/* Model terminate function */
void mcb_pmsm_qep_offset_f28379d_terminate(void)
{
  /* (no terminate code required) */
}

/*
 * File trailer for generated code.
 *
 * [EOF]
 */
