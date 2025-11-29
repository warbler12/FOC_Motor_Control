/*
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * File: c28x_i2c_sensor.c
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

#include "c28x_i2c_sensor.h"
#include "c28x_i2c_sensor_private.h"
#include "rtwtypes.h"
#include <string.h>

/* Named constants for MATLAB Function: '<S3>/MATLAB Function' */
#define c28x_i2c_sensor_CALL_EVENT     (-1L)

/* Block signals (default storage) */
BlockIO_c28x_i2c_sensor c28x_i2c_sensor_B;

/* Block states (default storage) */
D_Work_c28x_i2c_sensor c28x_i2c_sensor_DWork;

/* Real-time model */
static RT_MODEL_c28x_i2c_sensor c28x_i2c_sensor_M_;
RT_MODEL_c28x_i2c_sensor *const c28x_i2c_sensor_M = &c28x_i2c_sensor_M_;
static void rate_monotonic_scheduler(void);

/*
 * Set which subrates need to run this base step (base rate always runs).
 * This function must be called prior to calling the model step function
 * in order to remember which rates need to run this base step.  The
 * buffering of events allows for overlapping preemption.
 */
void c28x_i2c_sensor_SetEventsForThisBaseStep(boolean_T *eventFlags)
{
  /* Task runs when its counter is zero, computed via rtmStepTask macro */
  eventFlags[1] = ((boolean_T)rtmStepTask(c28x_i2c_sensor_M, 1));
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
  (c28x_i2c_sensor_M->Timing.TaskCounters.TID[1])++;
  if ((c28x_i2c_sensor_M->Timing.TaskCounters.TID[1]) > 14) {/* Sample time: [0.015s, 0.0s] */
    c28x_i2c_sensor_M->Timing.TaskCounters.TID[1] = 0;
  }
}

/* Output and update for function-call system: '<S4>/Delay 1ms' */
void c28x_i2c_sensor_Delay1ms(rtDW_Delay1ms_c28x_i2c_sensor *localDW)
{
  /* user code (Output function Body) */

  /* System '<S4>/Delay 1ms' */
  DELAY_US(1000);

  /*Delay of 1 ms*/
  localDW->Delay1ms_SubsysRanBC = 4;
}

/* Model step function for TID0 */
void c28x_i2c_sensor_step0(void)       /* Sample time: [0.001s, 0.0s] */
{
  {                                    /* Sample time: [0.001s, 0.0s] */
    rate_monotonic_scheduler();
  }

  /* Reset subsysRan breadcrumbs */
  srClearBC(c28x_i2c_sensor_DWork.DataRead_SubsysRanBC);

  /* RateTransition: '<S1>/RT4' */
  c28x_i2c_sensor_B.RT4 = c28x_i2c_sensor_DWork.RT4_Buffer0;

  /* Outputs for Enabled SubSystem: '<S1>/Data Read' incorporates:
   *  EnablePort: '<S2>/Enable'
   */
  if (c28x_i2c_sensor_B.RT4) {
    /* S-Function (c280xi2c_rx): '<S2>/I2C Receive' incorporates:
     *  Constant: '<S2>/Register Address'
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
        c28x_i2c_sensor_B.I2CReceive_o1[0] = I2caRegs.I2CDRR.bit.DATA;
        c28x_i2c_sensor_B.I2CReceive_o2 = I2caRegs.I2CSTR.all;/* output i2c status */
      } else
        c28x_i2c_sensor_B.I2CReceive_o2 = I2caRegs.I2CSTR.all | 0x40;/* output receive data loss status */
      rx_loop= 0;
      while (I2caRegs.I2CFFRX.bit.RXFFST==0 && rx_loop<10000)
        rx_loop++;
      if (rx_loop!=10000) {
        c28x_i2c_sensor_B.I2CReceive_o1[1] = I2caRegs.I2CDRR.bit.DATA;
        c28x_i2c_sensor_B.I2CReceive_o2 = I2caRegs.I2CSTR.all;/* output i2c status */
      } else
        c28x_i2c_sensor_B.I2CReceive_o2 = I2caRegs.I2CSTR.all | 0x40;/* output receive data loss status */
    }

    /* S-Function (c280xi2c_tx): '<S2>/I2C Transmit' incorporates:
     *  Constant: '<S2>/Data Read Adress'
     *  Constant: '<S2>/Register Address'
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
          c28x_i2c_sensor_B.I2CTransmit = I2caRegs.I2CSTR.all;/* output i2c status */
        } else
          c28x_i2c_sensor_B.I2CTransmit = I2caRegs.I2CSTR.all | 0x40;/* output transmit data loss status */
      } else
        c28x_i2c_sensor_B.I2CTransmit = I2caRegs.I2CSTR.all | 0x80;/* output transmit data loss status */
      I2caRegs.I2CFFTX.bit.TXFFIENA = 1;/* Enable Tx Fifo interrupt*/
      I2caRegs.I2CFFTX.bit.TXFFINTCLR = 1;/* Clear Tx interrupt flag*/
    }

    srUpdateBC(c28x_i2c_sensor_DWork.DataRead_SubsysRanBC);
  }

  /* End of Outputs for SubSystem: '<S1>/Data Read' */

  /* Reshape: '<S3>/Reshape' incorporates:
   *  S-Function (c280xi2c_rx): '<S2>/I2C Receive'
   */
  c28x_i2c_sensor_B.Reshape[0] = c28x_i2c_sensor_B.I2CReceive_o1[0];
  c28x_i2c_sensor_B.Reshape[1] = c28x_i2c_sensor_B.I2CReceive_o1[1];

  /* MATLAB Function: '<S3>/MATLAB Function' incorporates:
   *  Reshape: '<S3>/Reshape'
   */
  c28x_i2c_sensor_DWork.sfEvent = c28x_i2c_sensor_CALL_EVENT;

  /* MATLAB Function 'AS5600 Read/Data Realignment /MATLAB Function': '<S5>:1' */
  /* '<S5>:1:5' */
  /* '<S5>:1:6' */
  /* '<S5>:1:9' */
  c28x_i2c_sensor_B.raw_angle = (c28x_i2c_sensor_B.Reshape[0] << 8U) +
    c28x_i2c_sensor_B.Reshape[1];

  /* DataTypeConversion: '<S3>/Cast To Single' */
  c28x_i2c_sensor_B.CastToSingle = c28x_i2c_sensor_B.raw_angle;

  /* Gain: '<S3>/Gain' */
  c28x_i2c_sensor_B.Gain = 0.000244140625F * c28x_i2c_sensor_B.CastToSingle;

  /* Update absolute time */
  /* The "clockTick0" counts the number of times the code of this task has
   * been executed. The absolute time is the multiplication of "clockTick0"
   * and "Timing.stepSize0". Size of "clockTick0" ensures timer will not
   * overflow during the application lifespan selected.
   * Timer of this task consists of two 32 bit unsigned integers.
   * The two integers represent the low bits Timing.clockTick0 and the high bits
   * Timing.clockTickH0. When the low bit overflows to 0, the high bits increment.
   */
  if (!(++c28x_i2c_sensor_M->Timing.clockTick0)) {
    ++c28x_i2c_sensor_M->Timing.clockTickH0;
  }

  c28x_i2c_sensor_M->Timing.taskTime0 = c28x_i2c_sensor_M->Timing.clockTick0 *
    c28x_i2c_sensor_M->Timing.stepSize0 + c28x_i2c_sensor_M->Timing.clockTickH0 *
    c28x_i2c_sensor_M->Timing.stepSize0 * 4294967296.0;
}

/* Model step function for TID1 */
void c28x_i2c_sensor_step1(void)       /* Sample time: [0.015s, 0.0s] */
{
  /* Reset subsysRan breadcrumbs */
  srClearBC(c28x_i2c_sensor_DWork.AddressDataread_SubsysRanBC);

  /* Reset subsysRan breadcrumbs */
  srClearBC(c28x_i2c_sensor_DWork.Delay1ms.Delay1ms_SubsysRanBC);

  /* Reset subsysRan breadcrumbs */
  srClearBC(c28x_i2c_sensor_DWork.Initialization_SubsysRanBC);

  /* UnitDelay: '<S1>/Unit Delay' */
  c28x_i2c_sensor_B.UnitDelay = c28x_i2c_sensor_DWork.UnitDelay_DSTATE;

  /* Logic: '<S1>/Logical Operator2' */
  c28x_i2c_sensor_B.LogicalOperator2 = !c28x_i2c_sensor_B.UnitDelay;

  /* Outputs for Enabled SubSystem: '<S1>/Initialization' incorporates:
   *  EnablePort: '<S4>/Enable'
   */
  if (c28x_i2c_sensor_B.LogicalOperator2) {
    /* S-Function (fcgen): '<S4>/Function-Call Generator' incorporates:
     *  SubSystem: '<S4>/Address - Data read'
     */
    /* S-Function (c280xi2c_tx): '<S6>/I2C Transmit1' incorporates:
     *  Constant: '<S6>/Data read address'
     *  Constant: '<S6>/Register Address'
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
          c28x_i2c_sensor_B.I2CTransmit1 = I2caRegs.I2CSTR.all;/* output i2c status */
        } else
          c28x_i2c_sensor_B.I2CTransmit1 = I2caRegs.I2CSTR.all | 0x40;/* output transmit data loss status */
      } else
        c28x_i2c_sensor_B.I2CTransmit1 = I2caRegs.I2CSTR.all | 0x80;/* output transmit data loss status */
      I2caRegs.I2CFFTX.bit.TXFFIENA = 1;/* Enable Tx Fifo interrupt*/
      I2caRegs.I2CFFTX.bit.TXFFINTCLR = 1;/* Clear Tx interrupt flag*/
    }

    c28x_i2c_sensor_DWork.AddressDataread_SubsysRanBC = 4;

    /* S-Function (fcgen): '<S4>/Function-Call Generator' incorporates:
     *  SubSystem: '<S4>/Delay 1ms'
     */
    c28x_i2c_sensor_Delay1ms(&c28x_i2c_sensor_DWork.Delay1ms);

    /* End of Outputs for S-Function (fcgen): '<S4>/Function-Call Generator' */
    srUpdateBC(c28x_i2c_sensor_DWork.Initialization_SubsysRanBC);
  }

  /* End of Outputs for SubSystem: '<S1>/Initialization' */

  /* Update for RateTransition: '<S1>/RT4' */
  c28x_i2c_sensor_DWork.RT4_Buffer0 = c28x_i2c_sensor_B.UnitDelay;

  /* Update for UnitDelay: '<S1>/Unit Delay' incorporates:
   *  Constant: '<S1>/InitTrigger'
   */
  c28x_i2c_sensor_DWork.UnitDelay_DSTATE = true;

  /* Update absolute time */
  /* The "clockTick1" counts the number of times the code of this task has
   * been executed. The resolution of this integer timer is 0.015, which is the step size
   * of the task. Size of "clockTick1" ensures timer will not overflow during the
   * application lifespan selected.
   * Timer of this task consists of two 32 bit unsigned integers.
   * The two integers represent the low bits Timing.clockTick1 and the high bits
   * Timing.clockTickH1. When the low bit overflows to 0, the high bits increment.
   */
  c28x_i2c_sensor_M->Timing.clockTick1++;
  if (!c28x_i2c_sensor_M->Timing.clockTick1) {
    c28x_i2c_sensor_M->Timing.clockTickH1++;
  }
}

/* Model initialize function */
void c28x_i2c_sensor_initialize(void)
{
  /* Registration code */

  /* initialize real-time model */
  (void) memset((void *)c28x_i2c_sensor_M, 0,
                sizeof(RT_MODEL_c28x_i2c_sensor));
  rtmSetTFinal(c28x_i2c_sensor_M, -1);
  c28x_i2c_sensor_M->Timing.stepSize0 = 0.001;

  /* External mode info */
  c28x_i2c_sensor_M->Sizes.checksums[0] = (4277465609U);
  c28x_i2c_sensor_M->Sizes.checksums[1] = (172209534U);
  c28x_i2c_sensor_M->Sizes.checksums[2] = (2552601820U);
  c28x_i2c_sensor_M->Sizes.checksums[3] = (3959247831U);

  {
    static const sysRanDType rtAlwaysEnabled = SUBSYS_RAN_BC_ENABLE;
    static RTWExtModeInfo rt_ExtModeInfo;
    static const sysRanDType *systemRan[6];
    c28x_i2c_sensor_M->extModeInfo = (&rt_ExtModeInfo);
    rteiSetSubSystemActiveVectorAddresses(&rt_ExtModeInfo, systemRan);
    systemRan[0] = &rtAlwaysEnabled;
    systemRan[1] = (sysRanDType *)&c28x_i2c_sensor_DWork.DataRead_SubsysRanBC;
    systemRan[2] = &rtAlwaysEnabled;
    systemRan[3] = (sysRanDType *)
      &c28x_i2c_sensor_DWork.AddressDataread_SubsysRanBC;
    systemRan[4] = (sysRanDType *)
      &c28x_i2c_sensor_DWork.Delay1ms.Delay1ms_SubsysRanBC;
    systemRan[5] = (sysRanDType *)
      &c28x_i2c_sensor_DWork.Initialization_SubsysRanBC;
    rteiSetModelMappingInfoPtr(c28x_i2c_sensor_M->extModeInfo,
      &c28x_i2c_sensor_M->SpecialInfo.mappingInfo);
    rteiSetChecksumsPtr(c28x_i2c_sensor_M->extModeInfo,
                        c28x_i2c_sensor_M->Sizes.checksums);
    rteiSetTPtr(c28x_i2c_sensor_M->extModeInfo, rtmGetTPtr(c28x_i2c_sensor_M));
  }

  /* block I/O */
  (void) memset(((void *) &c28x_i2c_sensor_B), 0,
                sizeof(BlockIO_c28x_i2c_sensor));

  {
    c28x_i2c_sensor_B.CastToSingle = 0.0F;
    c28x_i2c_sensor_B.Gain = 0.0F;
  }

  /* states (dwork) */
  (void) memset((void *)&c28x_i2c_sensor_DWork, 0,
                sizeof(D_Work_c28x_i2c_sensor));

  /* Start for Enabled SubSystem: '<S1>/Data Read' */
  /* Start for S-Function (c280xi2c_rx): '<S2>/I2C Receive' */

  /* Initialize out port */
  {
    c28x_i2c_sensor_B.I2CReceive_o1[0] = (uint16_T)0.0;
    c28x_i2c_sensor_B.I2CReceive_o1[1] = (uint16_T)0.0;
  }

  /* End of Start for SubSystem: '<S1>/Data Read' */

  /* SystemInitialize for MATLAB Function: '<S3>/MATLAB Function' */
  c28x_i2c_sensor_DWork.doneDoubleBufferReInit = false;
  c28x_i2c_sensor_DWork.sfEvent = c28x_i2c_sensor_CALL_EVENT;
}

/* Model terminate function */
void c28x_i2c_sensor_terminate(void)
{
  /* (no terminate code required) */
}

/*
 * File trailer for generated code.
 *
 * [EOF]
 */
