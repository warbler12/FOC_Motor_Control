/*
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * File: soc_pmsm_cpu1_ref.c
 *
 * Code generated for Simulink model 'soc_pmsm_cpu1_ref'.
 *
 * Model version                  : 8.1
 * Simulink Coder version         : 23.2 (R2023b) 01-Aug-2023
 * C/C++ source code generated on : Fri Dec 12 11:43:52 2025
 *
 * Target selection: ert.tlc
 * Embedded hardware selection: Texas Instruments->C2000
 * Code generation objectives: Unspecified
 * Validation result: Not run
 */

#include "soc_pmsm_cpu1_ref.h"
#include "soc_pmsm_cpu1_ref_private.h"
#include "rtwtypes.h"
#include "soc_pmsm_cpu1_ref_types.h"
#include <math.h>
#include "rt_nonfinite.h"
#include "mw_soc_ipc.h"
#include "mw_soc_drv_generic.h"
#include "zero_crossing_types.h"
#include <string.h>

int_T soc_pmsm_cpu1_ref_GlobalTID[2];
const rtTimingBridge *soc_pmsm_cpu1_ref_TimingBrdg;
P_soc_pmsm_cpu1_ref_T soc_pmsm_cpu1_ref_P_g = {
  /* Mask Parameter: atan2_outputUnit
   * Referenced by: '<S15>/Constant'
   */
  2U,

  /* Expression: 1
   * Referenced by: '<S6>/Constant'
   */
  1.0,

  /* Computed Parameter: Bias_Bias
   * Referenced by: '<S16>/Bias'
   */
  1.0F,

  /* Computed Parameter: Gain_Gain
   * Referenced by: '<S16>/Gain'
   */
  0.159154937F,

  /* Computed Parameter: Switch_Threshold
   * Referenced by: '<S16>/Switch'
   */
  0.0F,

  /* Computed Parameter: Constant_Value_m
   * Referenced by: '<S17>/Constant'
   */
  1.0E-6F,

  /* Computed Parameter: Constant_Value_g
   * Referenced by: '<S24>/Constant'
   */
  0.0F,

  /* Computed Parameter: UnitDelay_InitialCondition
   * Referenced by: '<S39>/Unit Delay'
   */
  0.0F,

  /* Computed Parameter: One_Value
   * Referenced by: '<S39>/One'
   */
  0.993F,

  /* Computed Parameter: Filter_Constant_Value
   * Referenced by: '<S39>/Filter_Constant'
   */
  0.007F,

  /* Computed Parameter: ScalingR_Gain
   * Referenced by: '<S27>/ScalingR'
   */
  1.57740343F,

  /* Computed Parameter: Delay1_InitialCondition
   * Referenced by: '<S26>/Delay1'
   */
  0.0F,

  /* Expression: single((BlockSampleTime(1)/2)/(1+pi*CutoffFreq*(1/100)*BlockSampleTime(1)))
   * Referenced by: '<S26>/Gain1'
   */
  2.49998757E-5F,

  /* Computed Parameter: Delay_InitialCondition
   * Referenced by: '<S26>/Delay'
   */
  0.0F,

  /* Expression: single((1-pi*CutoffFreq*(1/100)*BlockSampleTime(1))/(1+pi*CutoffFreq*(1/100)*BlockSampleTime(1)))
   * Referenced by: '<S26>/Gain2'
   */
  0.99999F,

  /* Computed Parameter: ScalingL_Gain
   * Referenced by: '<S27>/ScalingL'
   */
  0.000912419637F,

  /* Computed Parameter: Filter_Constant_Value_j
   * Referenced by: '<S30>/Filter_Constant'
   */
  0.0010000047F,

  /* Computed Parameter: One_Value_l
   * Referenced by: '<S30>/One'
   */
  0.999F,

  /* Computed Parameter: UnitDelay_InitialCondition_f
   * Referenced by: '<S30>/Unit Delay'
   */
  0.0F,

  /* Computed Parameter: ScalingR_Gain_c
   * Referenced by: '<S20>/ScalingR'
   */
  1.57740343F,

  /* Computed Parameter: Delay1_InitialCondition_f
   * Referenced by: '<S19>/Delay1'
   */
  0.0F,

  /* Expression: single((BlockSampleTime(1)/2)/(1+pi*CutoffFreq*(1/100)*BlockSampleTime(1)))
   * Referenced by: '<S19>/Gain1'
   */
  2.49998757E-5F,

  /* Computed Parameter: Delay_InitialCondition_b
   * Referenced by: '<S19>/Delay'
   */
  0.0F,

  /* Expression: single((1-pi*CutoffFreq*(1/100)*BlockSampleTime(1))/(1+pi*CutoffFreq*(1/100)*BlockSampleTime(1)))
   * Referenced by: '<S19>/Gain2'
   */
  0.99999F,

  /* Computed Parameter: ScalingL_Gain_c
   * Referenced by: '<S20>/ScalingL'
   */
  0.000912419637F,

  /* Computed Parameter: Filter_Constant_Value_m
   * Referenced by: '<S23>/Filter_Constant'
   */
  0.0010000047F,

  /* Computed Parameter: One_Value_h
   * Referenced by: '<S23>/One'
   */
  0.999F,

  /* Computed Parameter: UnitDelay_InitialCondition_g
   * Referenced by: '<S23>/Unit Delay'
   */
  0.0F,

  /* Computed Parameter: PositionGain_Gain
   * Referenced by: '<S8>/PositionGain'
   */
  1.0F,

  /* Computed Parameter: PositionToCount_Gain
   * Referenced by: '<S10>/PositionToCount'
   */
  4.2949673E+9F,

  /* Computed Parameter: SpeedGain_Gain
   * Referenced by: '<S10>/SpeedGain'
   */
  1.16415322E-7F,

  /* Computed Parameter: Filter_Constant_Value_a
   * Referenced by: '<S33>/Filter_Constant'
   */
  0.01F,

  /* Computed Parameter: One_Value_m
   * Referenced by: '<S33>/One'
   */
  0.99F,

  /* Computed Parameter: UnitDelay_InitialCondition_e
   * Referenced by: '<S33>/Unit Delay'
   */
  0.0F,

  /* Computed Parameter: elect2mech_Gain
   * Referenced by: '<S6>/elect2mech'
   */
  0.0833333358F,

  /* Computed Parameter: Out1_Y0
   * Referenced by: '<S46>/Out1'
   */
  0.0F,

  /* Computed Parameter: theta_e_Y0
   * Referenced by: '<S45>/theta_e'
   */
  0.0F,

  /* Computed Parameter: _Value
   * Referenced by: '<S4>/ '
   */
  1.0F,

  /* Computed Parameter: Direction_Threshold
   * Referenced by: '<S4>/Direction'
   */
  0.0F,

  /* Computed Parameter: Gain_Gain_p
   * Referenced by: '<S4>/Gain'
   */
  0.0024F,

  /* Computed Parameter: scaleIn_Gain
   * Referenced by: '<S44>/scaleIn'
   */
  1.0F,

  /* Computed Parameter: UnitDelay_InitialCondition_a
   * Referenced by: '<S44>/Unit Delay'
   */
  0.0F,

  /* Computed Parameter: scaleOut_Gain
   * Referenced by: '<S44>/scaleOut'
   */
  1.0F,

  /* Computed Parameter: Switch2_Threshold
   * Referenced by: '<S4>/Switch2'
   */
  0.2F,

  /* Computed Parameter: RateTransition3_InitialConditio
   * Referenced by: '<Root>/Rate Transition3'
   */
  0.0F,

  /* Computed Parameter: RateTransition2_InitialConditio
   * Referenced by: '<Root>/Rate Transition2'
   */
  0.0F,

  /* Computed Parameter: RateTransition1_InitialConditio
   * Referenced by: '<Root>/Rate Transition1'
   */
  0.0F,

  /* Computed Parameter: Delay_InitialCondition_c
   * Referenced by: '<S10>/Delay'
   */
  0U,

  /* Computed Parameter: Switch_Threshold_n
   * Referenced by: '<S15>/Switch'
   */
  1U,

  /* Computed Parameter: Delay_InitialCondition_f
   * Referenced by: '<S45>/Delay'
   */
  false,

  /* Computed Parameter: Constant_Value_mb
   * Referenced by: '<S45>/Constant'
   */
  true,

  /* Computed Parameter: Constant_Reset_Value
   * Referenced by: '<S44>/Constant_Reset'
   */
  false,

  /* Start of '<Root>/Speed Control1' */
  {
    /* Mask Parameter: DiscretePIControllerwithantiwin
     * Referenced by:
     *   '<S90>/Saturation'
     *   '<S76>/DeadZone'
     */
    -1.0F,

    /* Mask Parameter: DiscretePIControllerwithantiw_c
     * Referenced by:
     *   '<S90>/Saturation'
     *   '<S76>/DeadZone'
     */
    1.0F,

    /* Expression: .3
     * Referenced by: '<S5>/Step1'
     */
    0.3,

    /* Expression: 0.5*pmsm.N_base
     * Referenced by: '<S5>/Step1'
     */
    120.0,

    /* Expression: 0.7*pmsm.N_base
     * Referenced by: '<S5>/Step1'
     */
    168.0,

    /* Expression: 0.1*pmsm.N_base
     * Referenced by: '<S5>/Constant'
     */
    24.0,

    /* Expression: .05
     * Referenced by: '<S5>/Step'
     */
    0.05,

    /* Expression: 0
     * Referenced by: '<S5>/Step'
     */
    0.0,

    /* Expression: 1
     * Referenced by: '<S5>/Step'
     */
    1.0,

    /* Expression: 0
     * Referenced by: '<S5>/Switch'
     */
    0.0,

    /* Expression: 1/pmsm.N_base
     * Referenced by: '<S5>/rpm2PU'
     */
    0.0041666666666666666,

    /* Computed Parameter: Constant1_Value
     * Referenced by: '<S74>/Constant1'
     */
    0.0F,

    /* Computed Parameter: Ki4_Value
     * Referenced by: '<S48>/Ki4'
     */
    1.0F,

    /* Computed Parameter: Ki3_Value
     * Referenced by: '<S48>/Ki3'
     */
    0.0F,

    /* Computed Parameter: Constant_Value_a
     * Referenced by: '<S48>/Constant'
     */
    0.1F,

    /* Computed Parameter: Constant1_Value_h
     * Referenced by: '<S48>/Constant1'
     */
    -0.1F,

    /* Computed Parameter: Switch1_Threshold
     * Referenced by: '<S48>/Switch1'
     */
    0.0F,

    /* Computed Parameter: Filter_Constant_Value
     * Referenced by: '<S103>/Filter_Constant'
     */
    0.1F,

    /* Computed Parameter: One_Value
     * Referenced by: '<S103>/One'
     */
    0.9F,

    /* Computed Parameter: UnitDelay_InitialCondition
     * Referenced by: '<S103>/Unit Delay'
     */
    0.0F,

    /* Computed Parameter: UnitDelay_InitialCondition_k
     * Referenced by: '<S48>/Unit Delay'
     */
    0.0F,

    /* Computed Parameter: Switch2_Threshold
     * Referenced by: '<S48>/Switch2'
     */
    0.2F,

    /* Computed Parameter: Switch_Threshold_e
     * Referenced by: '<S48>/Switch'
     */
    0.0F,

    /* Expression: PI_params.Kp_speed
     * Referenced by: '<S47>/Kp1'
     */
    0.3F,

    /* Computed Parameter: Ki2_Value
     * Referenced by: '<S47>/Ki2'
     */
    0.0F,

    /* Computed Parameter: Integrator_gainval
     * Referenced by: '<S83>/Integrator'
     */
    1.0F,

    /* Computed Parameter: Clamping_zero_Value
     * Referenced by: '<S74>/Clamping_zero'
     */
    0.0F,

    /* Computed Parameter: Ki1_Value
     * Referenced by: '<S47>/Ki1'
     */
    5.0E-5F,

    /* Computed Parameter: Constant_Value_d
     * Referenced by: '<S74>/Constant'
     */
    1,

    /* Computed Parameter: Constant2_Value
     * Referenced by: '<S74>/Constant2'
     */
    -1,

    /* Computed Parameter: Constant3_Value
     * Referenced by: '<S74>/Constant3'
     */
    1,

    /* Computed Parameter: Constant4_Value
     * Referenced by: '<S74>/Constant4'
     */
    -1
  }
  /* End of '<Root>/Speed Control1' */
};

MdlrefDW_soc_pmsm_cpu1_ref_T soc_pmsm_cpu1_ref_MdlrefDW;

/* Block signals (default storage) */
B_soc_pmsm_cpu1_ref_c_T soc_pmsm_cpu1_ref_B;

/* Block states (default storage) */
DW_soc_pmsm_cpu1_ref_f_T soc_pmsm_cpu1_ref_DW;

/* Previous zero-crossings (trigger) states */
ZCE_soc_pmsm_cpu1_ref_T soc_pmsm_cpu1_ref_PrevZCX;

/* Forward declaration for local functions */
static void soc_pmsm_cpu1__SystemCore_setup(soc_blocks_IPCRead_soc_pmsm_c_T *obj);
static void soc_pmsm_cpu_SystemCore_setup_n(soc_blocks_IPCWrite_soc_pmsm__T *obj,
  const real32_T varargin_1[3]);

/* System initialize for atomic system: '<Root>/Speed Control1' */
void soc_pmsm_SpeedControl1_Init(DW_SpeedControl1_soc_pmsm_cpu_T *localDW,
  P_SpeedControl1_soc_pmsm_cpu1_T *localP)
{
  /* InitializeConditions for UnitDelay: '<S103>/Unit Delay' */
  localDW->UnitDelay_DSTATE = localP->UnitDelay_InitialCondition;

  /* InitializeConditions for UnitDelay: '<S48>/Unit Delay' */
  localDW->UnitDelay_DSTATE_o = localP->UnitDelay_InitialCondition_k;

  /* InitializeConditions for DiscreteIntegrator: '<S83>/Integrator' incorporates:
   *  Constant: '<S47>/Ki2'
   */
  localDW->Integrator_DSTATE = localP->Ki2_Value;
  localDW->Integrator_PrevResetState = 0;
}

/* Output and update for atomic system: '<Root>/Speed Control1' */
void soc_pmsm_cpu1_SpeedControl1(real32_T rtu_Speed_Meas_PU, real32_T
  *rty_IdqRef_PU, real32_T *rty_EnClosedLooop, real32_T *rty_spd_Ref,
  DW_SpeedControl1_soc_pmsm_cpu_T *localDW, P_SpeedControl1_soc_pmsm_cpu1_T
  *localP)
{
  real_T rtb_rpm2PU;
  real_T tmp;
  real32_T rtb_DeadZone;
  real32_T rtb_Product_b;
  real32_T rtb_Switch2_a;
  int16_T tmp_0;
  int16_T tmp_1;
  boolean_T rtb_LogicalOperator_o;

  /* Step: '<S5>/Step' incorporates:
   *  Step: '<S5>/Step1'
   *  Switch: '<S5>/Switch'
   */
  rtb_rpm2PU = (rtmGetClockTick1() * 0.0005);
  if (rtb_rpm2PU < localP->Step_Time) {
    tmp = localP->Step_Y0;
  } else {
    tmp = localP->Step_YFinal;
  }

  /* Switch: '<S5>/Switch' incorporates:
   *  Constant: '<S5>/Constant'
   *  Step: '<S5>/Step'
   */
  if (tmp > localP->Switch_Threshold) {
    /* Step: '<S5>/Step1' */
    if (rtb_rpm2PU < localP->Step1_Time) {
      rtb_rpm2PU = localP->Step1_Y0;
    } else {
      rtb_rpm2PU = localP->Step1_YFinal;
    }
  } else {
    rtb_rpm2PU = localP->Constant_Value;
  }

  /* DataTypeConversion: '<S5>/Data Type Conversion2' incorporates:
   *  Gain: '<S5>/rpm2PU'
   */
  *rty_spd_Ref = (real32_T)(localP->rpm2PU_Gain * rtb_rpm2PU);

  /* Product: '<S103>/Product' incorporates:
   *  Constant: '<S103>/Filter_Constant'
   */
  rtb_Product_b = *rty_spd_Ref * localP->Filter_Constant_Value;

  /* Sum: '<S103>/Add1' incorporates:
   *  Constant: '<S103>/One'
   *  Product: '<S103>/Product1'
   *  UnitDelay: '<S103>/Unit Delay'
   */
  localDW->UnitDelay_DSTATE = localP->One_Value * localDW->UnitDelay_DSTATE +
    rtb_Product_b;

  /* Switch: '<S48>/Switch2' incorporates:
   *  Constant: '<S48>/Ki3'
   *  Constant: '<S48>/Ki4'
   *  UnitDelay: '<S48>/Unit Delay'
   */
  if (localDW->UnitDelay_DSTATE_o > localP->Switch2_Threshold) {
    rtb_Switch2_a = localP->Ki4_Value;
  } else {
    rtb_Switch2_a = localP->Ki3_Value;
  }

  /* End of Switch: '<S48>/Switch2' */

  /* Switch: '<S48>/Switch' incorporates:
   *  Switch: '<S48>/Switch1'
   *  UnitDelay: '<S103>/Unit Delay'
   */
  if (rtb_Switch2_a > localP->Switch_Threshold_e) {
    rtb_Product_b = localDW->UnitDelay_DSTATE;
  } else if (*rty_spd_Ref > localP->Switch1_Threshold) {
    /* Switch: '<S48>/Switch1' incorporates:
     *  Constant: '<S48>/Constant'
     */
    rtb_Product_b = localP->Constant_Value_a;
  } else {
    /* Switch: '<S48>/Switch1' incorporates:
     *  Constant: '<S48>/Constant1'
     */
    rtb_Product_b = localP->Constant1_Value_h;
  }

  /* End of Switch: '<S48>/Switch' */

  /* Sum: '<S47>/Sum' */
  rtb_Product_b -= rtu_Speed_Meas_PU;

  /* Logic: '<S47>/Logical Operator' */
  rtb_LogicalOperator_o = !(rtb_Switch2_a != 0.0F);

  /* DiscreteIntegrator: '<S83>/Integrator' incorporates:
   *  Constant: '<S47>/Ki2'
   */
  if (rtb_LogicalOperator_o || (localDW->Integrator_PrevResetState != 0)) {
    localDW->Integrator_DSTATE = localP->Ki2_Value;
  }

  /* Sum: '<S92>/Sum' incorporates:
   *  Constant: '<S47>/Kp1'
   *  DiscreteIntegrator: '<S83>/Integrator'
   *  Product: '<S88>/PProd Out'
   */
  rtb_DeadZone = rtb_Product_b * localP->Kp1_Value + localDW->Integrator_DSTATE;

  /* Saturate: '<S90>/Saturation' incorporates:
   *  DeadZone: '<S76>/DeadZone'
   */
  if (rtb_DeadZone > localP->DiscretePIControllerwithantiw_c) {
    *rty_IdqRef_PU = localP->DiscretePIControllerwithantiw_c;
    rtb_DeadZone -= localP->DiscretePIControllerwithantiw_c;
  } else {
    if (rtb_DeadZone < localP->DiscretePIControllerwithantiwin) {
      *rty_IdqRef_PU = localP->DiscretePIControllerwithantiwin;
    } else {
      *rty_IdqRef_PU = rtb_DeadZone;
    }

    if (rtb_DeadZone >= localP->DiscretePIControllerwithantiwin) {
      rtb_DeadZone = 0.0F;
    } else {
      rtb_DeadZone -= localP->DiscretePIControllerwithantiwin;
    }
  }

  /* End of Saturate: '<S90>/Saturation' */

  /* Product: '<S80>/IProd Out' incorporates:
   *  Constant: '<S47>/Ki1'
   */
  rtb_Product_b *= localP->Ki1_Value;

  /* DataTypeConversion: '<S5>/Data Type Conversion' */
  *rty_EnClosedLooop = rtb_Switch2_a;

  /* Update for UnitDelay: '<S48>/Unit Delay' */
  localDW->UnitDelay_DSTATE_o = *rty_spd_Ref;

  /* Switch: '<S74>/Switch1' incorporates:
   *  Constant: '<S74>/Clamping_zero'
   *  Constant: '<S74>/Constant'
   *  Constant: '<S74>/Constant2'
   *  RelationalOperator: '<S74>/fix for DT propagation issue'
   */
  if (rtb_DeadZone > localP->Clamping_zero_Value) {
    tmp_0 = localP->Constant_Value_d;
  } else {
    tmp_0 = localP->Constant2_Value;
  }

  /* Switch: '<S74>/Switch2' incorporates:
   *  Constant: '<S74>/Clamping_zero'
   *  Constant: '<S74>/Constant3'
   *  Constant: '<S74>/Constant4'
   *  RelationalOperator: '<S74>/fix for DT propagation issue1'
   */
  if (rtb_Product_b > localP->Clamping_zero_Value) {
    tmp_1 = localP->Constant3_Value;
  } else {
    tmp_1 = localP->Constant4_Value;
  }

  /* Switch: '<S74>/Switch' incorporates:
   *  Constant: '<S74>/Clamping_zero'
   *  Constant: '<S74>/Constant1'
   *  Logic: '<S74>/AND3'
   *  RelationalOperator: '<S74>/Equal1'
   *  RelationalOperator: '<S74>/Relational Operator'
   *  Switch: '<S74>/Switch1'
   *  Switch: '<S74>/Switch2'
   */
  if ((localP->Clamping_zero_Value != rtb_DeadZone) && (tmp_0 == tmp_1)) {
    rtb_Product_b = localP->Constant1_Value;
  }

  /* Update for DiscreteIntegrator: '<S83>/Integrator' incorporates:
   *  Switch: '<S74>/Switch'
   */
  localDW->Integrator_DSTATE += localP->Integrator_gainval * rtb_Product_b;
  localDW->Integrator_PrevResetState = (int16_T)rtb_LogicalOperator_o;
}

static void soc_pmsm_cpu1__SystemCore_setup(soc_blocks_IPCRead_soc_pmsm_c_T *obj)
{
  uint16_T structSize;
  static const sfCnzoXdCATDCJJHAHlPZhD_soc_p_T tmp = { 0U,/* signal1 */
    0U                                 /* signal2 */
  };

  obj->isSetupComplete = false;

  /* Start for MATLABSystem: '<S41>/IPC Read' */
  obj->isInitialized = 1L;
  obj->DataTypeInBytes = 4U;
  obj->DataTypeId = 6U;
  structSize = obj->DataTypeInBytes;
  if (obj->DataTypeId == (uint16_T)MW_STRUCT) {
    structSize = sizeof(tmp);
    if (structSize > 32767U) {
      structSize = MAX_uint16_T;
    } else {
      structSize <<= 1U;
    }
  }

  obj->IpcParams.NumOfBuffers = 1.0;
  obj->IpcParams.ChNum = 1.0;
  obj->IpcParams.BufferSize = 4.0;
  obj->IpcParams.DataTypeInBytes = structSize;
  obj->IpcParams.IsIntEnabled = 0.0;
  obj->IpcParams.IPCBetween = 0.0;
  obj->IpcHandle = MW_IPC_Init(&obj->IpcParams);

  /* End of Start for MATLABSystem: '<S41>/IPC Read' */
  obj->isSetupComplete = true;
}

static void soc_pmsm_cpu_SystemCore_setup_n(soc_blocks_IPCWrite_soc_pmsm__T *obj,
  const real32_T varargin_1[3])
{
  real32_T b_in[3];
  uint16_T structSize;
  obj->isSetupComplete = false;

  /* Start for MATLABSystem: '<S43>/IPC Write' */
  obj->isInitialized = 1L;
  obj->BuffSize = 3.0;
  obj->DataTypeInBytes = 4U;
  obj->DataTypeId = 6U;
  structSize = obj->DataTypeInBytes;
  if (obj->DataTypeId == (uint16_T)MW_STRUCT) {
    b_in[0] = varargin_1[0];
    b_in[1] = varargin_1[1];
    b_in[2] = varargin_1[2];
    structSize = sizeof(&b_in[0]);
    if (structSize > 32767U) {
      structSize = MAX_uint16_T;
    } else {
      structSize <<= 1U;
    }
  }

  obj->IpcParams.NumOfBuffers = 1.0;
  obj->IpcParams.ChNum = 0.0;
  obj->IpcParams.BufferSize = obj->BuffSize;
  obj->IpcParams.DataTypeInBytes = structSize;
  obj->IpcParams.IsIntEnabled = 0.0;
  obj->IpcParams.IPCBetween = 0.0;
  obj->IpcHandle = MW_IPC_Init(&obj->IpcParams);

  /* End of Start for MATLABSystem: '<S43>/IPC Write' */
  obj->isSetupComplete = true;
}

/* System initialize for referenced model: 'soc_pmsm_cpu1_ref' */
void soc_pmsm_cpu1_ref_Init(void)
{
  real32_T rtb_TmpSignalConversionAtIPCWri[3];
  int16_T i;

  /* user code (Initialize function Body) */

  /* Model 'soc_pmsm_cpu1_ref' */
  EALLOW;
  GpioCtrlRegs.GPDMUX2.all &= 0xFCFFFFFF;
  GpioCtrlRegs.GPDDIR.all |= 0x10000000;
  EDIS;
  GpioDataRegs.GPDSET.bit.GPIO124 = 1;

  /* InitializeConditions for RateTransition: '<Root>/Rate Transition3' */
  soc_pmsm_cpu1_ref_DW.RateTransition3_Buffer[0] =
    soc_pmsm_cpu1_ref_P_g.RateTransition3_InitialConditio;

  /* InitializeConditions for RateTransition: '<Root>/Rate Transition2' */
  soc_pmsm_cpu1_ref_DW.RateTransition2_Buffer[0] =
    soc_pmsm_cpu1_ref_P_g.RateTransition2_InitialConditio;

  /* InitializeConditions for RateTransition: '<Root>/Rate Transition1' */
  soc_pmsm_cpu1_ref_DW.RateTransition1_Buffer[0] =
    soc_pmsm_cpu1_ref_P_g.RateTransition1_InitialConditio;

  /* Start for MATLABSystem: '<S41>/IPC Read' */
  soc_pmsm_cpu1_ref_DW.obj_k.isInitialized = 0L;
  soc_pmsm_cpu1_ref_DW.obj_k.matlabCodegenIsDeleted = false;
  soc_pmsm_cpu1_ref_DW.objisempty_j = true;
  soc_pmsm_cpu1__SystemCore_setup(&soc_pmsm_cpu1_ref_DW.obj_k);

  /* SystemInitialize for Atomic SubSystem: '<Root>/Calculate position and speed' */

  /* InitializeConditions for UnitDelay: '<S39>/Unit Delay' */
  soc_pmsm_cpu1_ref_DW.UnitDelay_DSTATE_a[0] =
    soc_pmsm_cpu1_ref_P_g.UnitDelay_InitialCondition;
  soc_pmsm_cpu1_ref_DW.UnitDelay_DSTATE_a[1] =
    soc_pmsm_cpu1_ref_P_g.UnitDelay_InitialCondition;
  soc_pmsm_cpu1_ref_DW.UnitDelay_DSTATE_a[2] =
    soc_pmsm_cpu1_ref_P_g.UnitDelay_InitialCondition;
  soc_pmsm_cpu1_ref_DW.UnitDelay_DSTATE_a[3] =
    soc_pmsm_cpu1_ref_P_g.UnitDelay_InitialCondition;

  /* InitializeConditions for Delay: '<S26>/Delay1' */
  soc_pmsm_cpu1_ref_DW.Delay1_DSTATE =
    soc_pmsm_cpu1_ref_P_g.Delay1_InitialCondition;

  /* InitializeConditions for Delay: '<S26>/Delay' */
  soc_pmsm_cpu1_ref_DW.Delay_DSTATE =
    soc_pmsm_cpu1_ref_P_g.Delay_InitialCondition;

  /* InitializeConditions for UnitDelay: '<S30>/Unit Delay' */
  soc_pmsm_cpu1_ref_DW.UnitDelay_DSTATE_f =
    soc_pmsm_cpu1_ref_P_g.UnitDelay_InitialCondition_f;

  /* InitializeConditions for Delay: '<S19>/Delay1' */
  soc_pmsm_cpu1_ref_DW.Delay1_DSTATE_p =
    soc_pmsm_cpu1_ref_P_g.Delay1_InitialCondition_f;

  /* InitializeConditions for Delay: '<S19>/Delay' */
  soc_pmsm_cpu1_ref_DW.Delay_DSTATE_h =
    soc_pmsm_cpu1_ref_P_g.Delay_InitialCondition_b;

  /* InitializeConditions for UnitDelay: '<S23>/Unit Delay' */
  soc_pmsm_cpu1_ref_DW.UnitDelay_DSTATE_aa =
    soc_pmsm_cpu1_ref_P_g.UnitDelay_InitialCondition_g;

  /* InitializeConditions for Delay: '<S10>/Delay' */
  for (i = 0; i < 10; i++) {
    soc_pmsm_cpu1_ref_DW.Delay_DSTATE_p[i] =
      soc_pmsm_cpu1_ref_P_g.Delay_InitialCondition_c;
  }

  soc_pmsm_cpu1_ref_DW.CircBufIdx = 0U;

  /* End of InitializeConditions for Delay: '<S10>/Delay' */

  /* InitializeConditions for UnitDelay: '<S33>/Unit Delay' */
  soc_pmsm_cpu1_ref_DW.UnitDelay_DSTATE_k =
    soc_pmsm_cpu1_ref_P_g.UnitDelay_InitialCondition_e;

  /* End of SystemInitialize for SubSystem: '<Root>/Calculate position and speed' */

  /* SystemInitialize for Atomic SubSystem: '<Root>/Open_Loop_Control' */
  /* SystemInitialize for Enabled SubSystem: '<S44>/Accumulate' */
  /* InitializeConditions for Delay: '<S45>/Delay' */
  soc_pmsm_cpu1_ref_DW.Delay_DSTATE_py =
    soc_pmsm_cpu1_ref_P_g.Delay_InitialCondition_f;

  /* SystemInitialize for Enabled SubSystem: '<S45>/Subsystem' */
  /* SystemInitialize for SignalConversion generated from: '<S46>/Input' incorporates:
   *  Outport: '<S46>/Out1'
   */
  soc_pmsm_cpu1_ref_B.Input = soc_pmsm_cpu1_ref_P_g.Out1_Y0;

  /* End of SystemInitialize for SubSystem: '<S45>/Subsystem' */

  /* SystemInitialize for Outport: '<S45>/theta_e' incorporates:
   *  Sum: '<S45>/Add1'
   *  UnitDelay: '<S44>/Unit Delay'
   */
  soc_pmsm_cpu1_ref_DW.UnitDelay_DSTATE = soc_pmsm_cpu1_ref_P_g.theta_e_Y0;

  /* End of SystemInitialize for SubSystem: '<S44>/Accumulate' */
  /* End of SystemInitialize for SubSystem: '<Root>/Open_Loop_Control' */

  /* Start for MATLABSystem: '<S43>/IPC Write' */
  soc_pmsm_cpu1_ref_DW.obj.Overwritten = 0ULL;
  soc_pmsm_cpu1_ref_DW.obj.NumBufUsed = 0U;
  soc_pmsm_cpu1_ref_DW.obj.isInitialized = 0L;
  soc_pmsm_cpu1_ref_DW.obj.matlabCodegenIsDeleted = false;
  soc_pmsm_cpu1_ref_DW.objisempty = true;
  soc_pmsm_cpu_SystemCore_setup_n(&soc_pmsm_cpu1_ref_DW.obj,
    rtb_TmpSignalConversionAtIPCWri);

  /* SystemInitialize for Atomic SubSystem: '<Root>/Speed Control1' */
  soc_pmsm_SpeedControl1_Init(&soc_pmsm_cpu1_ref_DW.SpeedControl1,
    &soc_pmsm_cpu1_ref_P_g.SpeedControl1);

  /* End of SystemInitialize for SubSystem: '<Root>/Speed Control1' */
}

/* Output and update for referenced model: 'soc_pmsm_cpu1_ref' */
void soc_pmsm_cpu1_refTID0(void)
{
  MW_IPC_Diag_T diagDataOut;
  uint64_T qY;
  real32_T rtb_IPCRead_o1[4];
  real32_T rtb_TmpSignalConversionAtIPCWri[3];
  real32_T rtb_Gain_g;
  real32_T rtb_RateTransition1;
  real32_T rtb_RateTransition2;
  real32_T rtb_RateTransition3;
  real32_T rtb_Sum1_c;
  real32_T rtb_Sum1_m;
  real32_T rtb_Sum3;
  real32_T rtb_Sum3_m;
  uint32_T rtb_PositionToCount;
  int16_T b_varargout_2;
  boolean_T rtb_LogicalOperator;

  /* MATLABSystem: '<S41>/IPC Read' */
  b_varargout_2 = 0;
  MW_IPC_Read(&soc_pmsm_cpu1_ref_DW.obj_k.IpcHandle, 0.0,
              soc_pmsm_cpu1_ref_DW.obj_k.DataTypeId, &rtb_IPCRead_o1[0],
              &b_varargout_2);

  /* RateTransition: '<Root>/Rate Transition3' */
  rtb_RateTransition3 =
    soc_pmsm_cpu1_ref_DW.RateTransition3_Buffer[soc_pmsm_cpu1_ref_DW.RateTransition3_ActiveBufIdx];

  /* RateTransition: '<Root>/Rate Transition2' */
  rtb_RateTransition2 =
    soc_pmsm_cpu1_ref_DW.RateTransition2_Buffer[soc_pmsm_cpu1_ref_DW.RateTransition2_ActiveBufIdx];

  /* RateTransition: '<Root>/Rate Transition1' */
  rtb_RateTransition1 =
    soc_pmsm_cpu1_ref_DW.RateTransition1_Buffer[soc_pmsm_cpu1_ref_DW.RateTransition1_ActiveBufIdx];

  /* Outputs for Atomic SubSystem: '<Root>/Calculate position and speed' */

  /* user code (Output function Body) */

  /* System '<Root>/Calculate position and speed' */
  GpioDataRegs.GPDSET.bit.GPIO124= 1;

  /* Sum: '<S39>/Add1' incorporates:
   *  Constant: '<S39>/Filter_Constant'
   *  Constant: '<S39>/One'
   *  Product: '<S39>/Product'
   *  Product: '<S39>/Product1'
   *  UnitDelay: '<S39>/Unit Delay'
   */
  rtb_Sum1_m = rtb_IPCRead_o1[0] * soc_pmsm_cpu1_ref_P_g.Filter_Constant_Value +
    soc_pmsm_cpu1_ref_P_g.One_Value * soc_pmsm_cpu1_ref_DW.UnitDelay_DSTATE_a[0];
  soc_pmsm_cpu1_ref_DW.UnitDelay_DSTATE_a[0] = rtb_Sum1_m;

  /* Sum: '<S7>/Sum' incorporates:
   *  Product: '<S39>/Product'
   */
  rtb_Sum3_m = rtb_IPCRead_o1[0] - rtb_Sum1_m;

  /* Sum: '<S39>/Add1' incorporates:
   *  Constant: '<S39>/Filter_Constant'
   *  Constant: '<S39>/One'
   *  Product: '<S39>/Product'
   *  Product: '<S39>/Product1'
   *  UnitDelay: '<S39>/Unit Delay'
   */
  rtb_Sum1_m = rtb_IPCRead_o1[1] * soc_pmsm_cpu1_ref_P_g.Filter_Constant_Value +
    soc_pmsm_cpu1_ref_P_g.One_Value * soc_pmsm_cpu1_ref_DW.UnitDelay_DSTATE_a[1];
  soc_pmsm_cpu1_ref_DW.UnitDelay_DSTATE_a[1] = rtb_Sum1_m;

  /* Sum: '<S7>/Sum' incorporates:
   *  Product: '<S39>/Product'
   */
  rtb_Sum3 = rtb_IPCRead_o1[1] - rtb_Sum1_m;

  /* Sum: '<S39>/Add1' incorporates:
   *  Constant: '<S39>/Filter_Constant'
   *  Constant: '<S39>/One'
   *  Product: '<S39>/Product'
   *  Product: '<S39>/Product1'
   *  UnitDelay: '<S39>/Unit Delay'
   */
  rtb_Sum1_m = rtb_IPCRead_o1[2] * soc_pmsm_cpu1_ref_P_g.Filter_Constant_Value +
    soc_pmsm_cpu1_ref_P_g.One_Value * soc_pmsm_cpu1_ref_DW.UnitDelay_DSTATE_a[2];
  soc_pmsm_cpu1_ref_DW.UnitDelay_DSTATE_a[2] = rtb_Sum1_m;

  /* Sum: '<S7>/Sum' incorporates:
   *  Product: '<S39>/Product'
   */
  rtb_Gain_g = rtb_IPCRead_o1[2] - rtb_Sum1_m;

  /* Sum: '<S39>/Add1' incorporates:
   *  Constant: '<S39>/Filter_Constant'
   *  Constant: '<S39>/One'
   *  Product: '<S39>/Product'
   *  Product: '<S39>/Product1'
   *  UnitDelay: '<S39>/Unit Delay'
   */
  rtb_Sum1_m = rtb_IPCRead_o1[3] * soc_pmsm_cpu1_ref_P_g.Filter_Constant_Value +
    soc_pmsm_cpu1_ref_P_g.One_Value * soc_pmsm_cpu1_ref_DW.UnitDelay_DSTATE_a[3];
  soc_pmsm_cpu1_ref_DW.UnitDelay_DSTATE_a[3] = rtb_Sum1_m;

  /* Sum: '<S7>/Sum' incorporates:
   *  Product: '<S39>/Product'
   */
  rtb_Sum1_m = rtb_IPCRead_o1[3] - rtb_Sum1_m;

  /* Sum: '<S24>/Sum3' incorporates:
   *  Gain: '<S27>/ScalingR'
   *  Sum: '<S7>/Sum'
   */
  rtb_Sum3 -= soc_pmsm_cpu1_ref_P_g.ScalingR_Gain * rtb_Sum1_m;

  /* Logic: '<S6>/Logical Operator' incorporates:
   *  Constant: '<S6>/Constant'
   */
  rtb_LogicalOperator = !(soc_pmsm_cpu1_ref_P_g.Constant_Value != 0.0);

  /* Delay: '<S26>/Delay1' */
  if ((((soc_pmsm_cpu1_ref_PrevZCX.Delay1_Reset_ZCE == POS_ZCSIG) != (int16_T)
        rtb_LogicalOperator) && (soc_pmsm_cpu1_ref_PrevZCX.Delay1_Reset_ZCE !=
        UNINITIALIZED_ZCSIG)) || rtb_LogicalOperator) {
    soc_pmsm_cpu1_ref_DW.Delay1_DSTATE =
      soc_pmsm_cpu1_ref_P_g.Delay1_InitialCondition;
  }

  soc_pmsm_cpu1_ref_PrevZCX.Delay1_Reset_ZCE = rtb_LogicalOperator;

  /* Delay: '<S26>/Delay' incorporates:
   *  Delay: '<S26>/Delay1'
   */
  if ((((soc_pmsm_cpu1_ref_PrevZCX.Delay_Reset_ZCE == POS_ZCSIG) != (int16_T)
        rtb_LogicalOperator) && (soc_pmsm_cpu1_ref_PrevZCX.Delay_Reset_ZCE !=
        UNINITIALIZED_ZCSIG)) || rtb_LogicalOperator) {
    soc_pmsm_cpu1_ref_DW.Delay_DSTATE =
      soc_pmsm_cpu1_ref_P_g.Delay_InitialCondition;
  }

  soc_pmsm_cpu1_ref_PrevZCX.Delay_Reset_ZCE = rtb_LogicalOperator;

  /* Sum: '<S26>/Sum1' incorporates:
   *  Delay: '<S26>/Delay'
   *  Delay: '<S26>/Delay1'
   *  Gain: '<S26>/Gain1'
   *  Gain: '<S26>/Gain2'
   *  Sum: '<S26>/Sum'
   */
  soc_pmsm_cpu1_ref_DW.Delay_DSTATE = (rtb_Sum3 +
    soc_pmsm_cpu1_ref_DW.Delay1_DSTATE) * soc_pmsm_cpu1_ref_P_g.Gain1_Gain +
    soc_pmsm_cpu1_ref_P_g.Gain2_Gain * soc_pmsm_cpu1_ref_DW.Delay_DSTATE;

  /* Sum: '<S24>/Sum1' incorporates:
   *  Delay: '<S26>/Delay'
   *  Gain: '<S27>/ScalingL'
   *  Sum: '<S7>/Sum'
   */
  rtb_Sum1_m = soc_pmsm_cpu1_ref_DW.Delay_DSTATE -
    soc_pmsm_cpu1_ref_P_g.ScalingL_Gain * rtb_Sum1_m;

  /* Sum: '<S30>/Add1' incorporates:
   *  Constant: '<S30>/Filter_Constant'
   *  Constant: '<S30>/One'
   *  Product: '<S30>/Product'
   *  Product: '<S30>/Product1'
   *  UnitDelay: '<S30>/Unit Delay'
   */
  soc_pmsm_cpu1_ref_DW.UnitDelay_DSTATE_f = rtb_Sum1_m *
    soc_pmsm_cpu1_ref_P_g.Filter_Constant_Value_j +
    soc_pmsm_cpu1_ref_P_g.One_Value_l * soc_pmsm_cpu1_ref_DW.UnitDelay_DSTATE_f;

  /* Sum: '<S17>/Sum3' incorporates:
   *  Gain: '<S20>/ScalingR'
   *  Sum: '<S7>/Sum'
   */
  rtb_Sum3_m -= soc_pmsm_cpu1_ref_P_g.ScalingR_Gain_c * rtb_Gain_g;

  /* Delay: '<S19>/Delay1' incorporates:
   *  Delay: '<S26>/Delay1'
   */
  if ((((soc_pmsm_cpu1_ref_PrevZCX.Delay1_Reset_ZCE_o == POS_ZCSIG) != (int16_T)
        rtb_LogicalOperator) && (soc_pmsm_cpu1_ref_PrevZCX.Delay1_Reset_ZCE_o !=
        UNINITIALIZED_ZCSIG)) || rtb_LogicalOperator) {
    soc_pmsm_cpu1_ref_DW.Delay1_DSTATE_p =
      soc_pmsm_cpu1_ref_P_g.Delay1_InitialCondition_f;
  }

  soc_pmsm_cpu1_ref_PrevZCX.Delay1_Reset_ZCE_o = rtb_LogicalOperator;

  /* Delay: '<S19>/Delay' incorporates:
   *  Delay: '<S26>/Delay1'
   */
  if ((((soc_pmsm_cpu1_ref_PrevZCX.Delay_Reset_ZCE_m == POS_ZCSIG) != (int16_T)
        rtb_LogicalOperator) && (soc_pmsm_cpu1_ref_PrevZCX.Delay_Reset_ZCE_m !=
        UNINITIALIZED_ZCSIG)) || rtb_LogicalOperator) {
    soc_pmsm_cpu1_ref_DW.Delay_DSTATE_h =
      soc_pmsm_cpu1_ref_P_g.Delay_InitialCondition_b;
  }

  soc_pmsm_cpu1_ref_PrevZCX.Delay_Reset_ZCE_m = rtb_LogicalOperator;

  /* Sum: '<S19>/Sum1' incorporates:
   *  Delay: '<S19>/Delay'
   *  Delay: '<S19>/Delay1'
   *  Gain: '<S19>/Gain1'
   *  Gain: '<S19>/Gain2'
   *  Sum: '<S19>/Sum'
   */
  soc_pmsm_cpu1_ref_DW.Delay_DSTATE_h = (rtb_Sum3_m +
    soc_pmsm_cpu1_ref_DW.Delay1_DSTATE_p) * soc_pmsm_cpu1_ref_P_g.Gain1_Gain_m +
    soc_pmsm_cpu1_ref_P_g.Gain2_Gain_g * soc_pmsm_cpu1_ref_DW.Delay_DSTATE_h;

  /* Sum: '<S17>/Sum1' incorporates:
   *  Delay: '<S19>/Delay'
   *  Gain: '<S20>/ScalingL'
   *  Sum: '<S7>/Sum'
   */
  rtb_Sum1_c = soc_pmsm_cpu1_ref_DW.Delay_DSTATE_h -
    soc_pmsm_cpu1_ref_P_g.ScalingL_Gain_c * rtb_Gain_g;

  /* Sum: '<S23>/Add1' incorporates:
   *  Constant: '<S23>/Filter_Constant'
   *  Constant: '<S23>/One'
   *  Product: '<S23>/Product'
   *  Product: '<S23>/Product1'
   *  UnitDelay: '<S23>/Unit Delay'
   */
  soc_pmsm_cpu1_ref_DW.UnitDelay_DSTATE_aa = rtb_Sum1_c *
    soc_pmsm_cpu1_ref_P_g.Filter_Constant_Value_m +
    soc_pmsm_cpu1_ref_P_g.One_Value_h * soc_pmsm_cpu1_ref_DW.UnitDelay_DSTATE_aa;

  /* Outputs for Atomic SubSystem: '<S14>/atan2' */
  /* Outputs for Atomic SubSystem: '<S14>/atan2' */
  /* Switch: '<S15>/Switch' incorporates:
   *  Switch: '<S17>/Switch'
   *  Switch: '<S24>/Switch'
   *  Trigonometry: '<S15>/Atan2'
   */
  if (soc_pmsm_cpu1_ref_P_g.atan2_outputUnit >
      soc_pmsm_cpu1_ref_P_g.Switch_Threshold_n) {
    /* Switch: '<S24>/Switch' incorporates:
     *  Constant: '<S17>/Constant'
     *  Constant: '<S24>/Constant'
     *  Sum: '<S22>/Sum'
     *  Sum: '<S29>/Sum'
     *  Switch: '<S17>/Switch'
     *  UnitDelay: '<S23>/Unit Delay'
     *  UnitDelay: '<S30>/Unit Delay'
     */
    if (rtb_LogicalOperator) {
      rtb_Gain_g = soc_pmsm_cpu1_ref_P_g.Constant_Value_g;
      rtb_Sum1_m = soc_pmsm_cpu1_ref_P_g.Constant_Value_m;
    } else {
      rtb_Gain_g = rtb_Sum1_m - soc_pmsm_cpu1_ref_DW.UnitDelay_DSTATE_f;
      rtb_Sum1_m = rtb_Sum1_c - soc_pmsm_cpu1_ref_DW.UnitDelay_DSTATE_aa;
    }

    /* Outputs for Atomic SubSystem: '<S15>/Per Unit' */
    /* Gain: '<S16>/Gain' incorporates:
     *  Switch: '<S17>/Switch'
     *  Switch: '<S24>/Switch'
     *  Trigonometry: '<S15>/Atan2'
     */
    rtb_Gain_g = soc_pmsm_cpu1_ref_P_g.Gain_Gain * atan2f(rtb_Gain_g, rtb_Sum1_m);

    /* Switch: '<S16>/Switch' incorporates:
     *  Bias: '<S16>/Bias'
     */
    if (!(rtb_Gain_g >= soc_pmsm_cpu1_ref_P_g.Switch_Threshold)) {
      rtb_Gain_g += soc_pmsm_cpu1_ref_P_g.Bias_Bias;
    }

    /* End of Switch: '<S16>/Switch' */
    /* End of Outputs for SubSystem: '<S15>/Per Unit' */
  } else {
    if (rtb_LogicalOperator) {
      /* Switch: '<S24>/Switch' incorporates:
       *  Constant: '<S24>/Constant'
       */
      rtb_Gain_g = soc_pmsm_cpu1_ref_P_g.Constant_Value_g;

      /* Switch: '<S17>/Switch' incorporates:
       *  Constant: '<S17>/Constant'
       */
      rtb_Sum1_m = soc_pmsm_cpu1_ref_P_g.Constant_Value_m;
    } else {
      /* Switch: '<S24>/Switch' incorporates:
       *  Sum: '<S29>/Sum'
       *  UnitDelay: '<S30>/Unit Delay'
       */
      rtb_Gain_g = rtb_Sum1_m - soc_pmsm_cpu1_ref_DW.UnitDelay_DSTATE_f;

      /* Switch: '<S17>/Switch' incorporates:
       *  Sum: '<S22>/Sum'
       *  UnitDelay: '<S23>/Unit Delay'
       */
      rtb_Sum1_m = rtb_Sum1_c - soc_pmsm_cpu1_ref_DW.UnitDelay_DSTATE_aa;
    }

    rtb_Gain_g = atan2f(rtb_Gain_g, rtb_Sum1_m);
  }

  /* End of Switch: '<S15>/Switch' */
  /* End of Outputs for SubSystem: '<S14>/atan2' */

  /* Gain: '<S8>/PositionGain' incorporates:
   *  AlgorithmDescriptorDelegate generated from: '<S15>/a16'
   */
  rtb_Sum1_m = soc_pmsm_cpu1_ref_P_g.PositionGain_Gain * rtb_Gain_g;

  /* End of Outputs for SubSystem: '<S14>/atan2' */

  /* Gain: '<S10>/PositionToCount' */
  rtb_Gain_g = soc_pmsm_cpu1_ref_P_g.PositionToCount_Gain * rtb_Sum1_m;
  if (rtb_Gain_g < 0.0F) {
    rtb_Gain_g = (real32_T)ceil(rtb_Gain_g);
  } else {
    rtb_Gain_g = (real32_T)floor(rtb_Gain_g);
  }

  if (rtIsNaNF(rtb_Gain_g) || rtIsInfF(rtb_Gain_g)) {
    rtb_Gain_g = 0.0F;
  } else {
    rtb_Gain_g = (real32_T)fmod(rtb_Gain_g, 4.294967296E+9);
  }

  rtb_PositionToCount = rtb_Gain_g < 0.0F ? (uint32_T)-(int32_T)(uint32_T)
    -rtb_Gain_g : (uint32_T)rtb_Gain_g;

  /* End of Gain: '<S10>/PositionToCount' */

  /* Sum: '<S33>/Add1' incorporates:
   *  Constant: '<S33>/Filter_Constant'
   *  Constant: '<S33>/One'
   *  DataTypeConversion: '<S35>/DTC'
   *  Delay: '<S10>/Delay'
   *  Gain: '<S10>/SpeedGain'
   *  Product: '<S33>/Product'
   *  Product: '<S33>/Product1'
   *  Sum: '<S10>/SpeedCount'
   *  UnitDelay: '<S33>/Unit Delay'
   */
  soc_pmsm_cpu1_ref_DW.UnitDelay_DSTATE_k = (real32_T)((int32_T)
    rtb_PositionToCount - (int32_T)
    soc_pmsm_cpu1_ref_DW.Delay_DSTATE_p[soc_pmsm_cpu1_ref_DW.CircBufIdx]) *
    soc_pmsm_cpu1_ref_P_g.SpeedGain_Gain *
    soc_pmsm_cpu1_ref_P_g.Filter_Constant_Value_a +
    soc_pmsm_cpu1_ref_P_g.One_Value_m * soc_pmsm_cpu1_ref_DW.UnitDelay_DSTATE_k;

  /* Gain: '<S6>/elect2mech' incorporates:
   *  UnitDelay: '<S33>/Unit Delay'
   */
  rtb_Sum1_c = soc_pmsm_cpu1_ref_P_g.elect2mech_Gain *
    soc_pmsm_cpu1_ref_DW.UnitDelay_DSTATE_k;

  /* Update for Delay: '<S26>/Delay1' */
  soc_pmsm_cpu1_ref_DW.Delay1_DSTATE = rtb_Sum3;

  /* Update for Delay: '<S19>/Delay1' */
  soc_pmsm_cpu1_ref_DW.Delay1_DSTATE_p = rtb_Sum3_m;

  /* Update for Delay: '<S10>/Delay' */
  soc_pmsm_cpu1_ref_DW.Delay_DSTATE_p[soc_pmsm_cpu1_ref_DW.CircBufIdx] =
    rtb_PositionToCount;
  if (soc_pmsm_cpu1_ref_DW.CircBufIdx < 9U) {
    soc_pmsm_cpu1_ref_DW.CircBufIdx++;
  } else {
    soc_pmsm_cpu1_ref_DW.CircBufIdx = 0U;
  }

  /* End of Update for Delay: '<S10>/Delay' */

  /* End of Outputs for SubSystem: '<Root>/Calculate position and speed' */

  /* Outputs for Atomic SubSystem: '<Root>/Open_Loop_Control' */
  /* Abs: '<S4>/Abs' */
  rtb_Sum3 = fabsf(rtb_RateTransition1);

  /* Outputs for Enabled SubSystem: '<S44>/Accumulate' incorporates:
   *  EnablePort: '<S45>/Enable'
   */
  /* Logic: '<S44>/NOT' incorporates:
   *  Constant: '<S44>/Constant_Reset'
   *  Delay: '<S45>/Delay'
   */
  if (!soc_pmsm_cpu1_ref_P_g.Constant_Reset_Value) {
    /* Outputs for Enabled SubSystem: '<S45>/Subsystem' incorporates:
     *  EnablePort: '<S46>/Enable'
     */
    if (soc_pmsm_cpu1_ref_DW.Delay_DSTATE_py) {
      /* SignalConversion generated from: '<S46>/Input' incorporates:
       *  Gain: '<S44>/scaleIn'
       *  Gain: '<S4>/Gain'
       */
      soc_pmsm_cpu1_ref_B.Input = soc_pmsm_cpu1_ref_P_g.Gain_Gain_p * rtb_Sum3 *
        soc_pmsm_cpu1_ref_P_g.scaleIn_Gain;
    }

    /* End of Outputs for SubSystem: '<S45>/Subsystem' */

    /* Sum: '<S45>/Add' incorporates:
     *  Delay: '<S45>/Delay'
     *  UnitDelay: '<S44>/Unit Delay'
     */
    rtb_Sum3_m = soc_pmsm_cpu1_ref_B.Input +
      soc_pmsm_cpu1_ref_DW.UnitDelay_DSTATE;

    /* DataTypeConversion: '<S45>/Data Type Conversion' */
    rtb_Gain_g = (real32_T)floor(rtb_Sum3_m);
    if (rtIsNaNF(rtb_Gain_g) || rtIsInfF(rtb_Gain_g)) {
      rtb_Gain_g = 0.0F;
    } else {
      rtb_Gain_g = (real32_T)fmod(rtb_Gain_g, 65536.0);
    }

    /* Sum: '<S45>/Add1' incorporates:
     *  DataTypeConversion: '<S45>/Data Type Conversion'
     *  DataTypeConversion: '<S45>/Data Type Conversion1'
     *  UnitDelay: '<S44>/Unit Delay'
     */
    soc_pmsm_cpu1_ref_DW.UnitDelay_DSTATE = rtb_Sum3_m - (real32_T)(rtb_Gain_g <
      0.0F ? -(int16_T)(uint16_T)-rtb_Gain_g : (int16_T)(uint16_T)rtb_Gain_g);

    /* Update for Delay: '<S45>/Delay' incorporates:
     *  Constant: '<S45>/Constant'
     */
    soc_pmsm_cpu1_ref_DW.Delay_DSTATE_py =
      soc_pmsm_cpu1_ref_P_g.Constant_Value_mb;
  }

  /* End of Logic: '<S44>/NOT' */
  /* End of Outputs for SubSystem: '<S44>/Accumulate' */
  /* End of Outputs for SubSystem: '<Root>/Open_Loop_Control' */

  /* SignalConversion generated from: '<S43>/IPC Write' */
  rtb_TmpSignalConversionAtIPCWri[0] = rtb_RateTransition3;
  rtb_TmpSignalConversionAtIPCWri[1] = rtb_RateTransition2;

  /* Outputs for Atomic SubSystem: '<Root>/Open_Loop_Control' */
  /* Switch: '<S4>/Switch2' incorporates:
   *  Switch: '<S4>/Direction'
   */
  if (rtb_Sum3 > soc_pmsm_cpu1_ref_P_g.Switch2_Threshold) {
    /* SignalConversion generated from: '<S43>/IPC Write' */
    rtb_TmpSignalConversionAtIPCWri[2] = rtb_Sum1_m;
  } else if (rtb_RateTransition1 > soc_pmsm_cpu1_ref_P_g.Direction_Threshold) {
    /* Switch: '<S4>/Direction' incorporates:
     *  Gain: '<S44>/scaleOut'
     *  SignalConversion generated from: '<S43>/IPC Write'
     *  UnitDelay: '<S44>/Unit Delay'
     */
    rtb_TmpSignalConversionAtIPCWri[2] = soc_pmsm_cpu1_ref_P_g.scaleOut_Gain *
      soc_pmsm_cpu1_ref_DW.UnitDelay_DSTATE;
  } else {
    /* SignalConversion generated from: '<S43>/IPC Write' incorporates:
     *  Constant: '<S4>/ '
     *  Gain: '<S44>/scaleOut'
     *  Sum: '<S4>/Sum'
     *  Switch: '<S4>/Direction'
     *  UnitDelay: '<S44>/Unit Delay'
     */
    rtb_TmpSignalConversionAtIPCWri[2] = soc_pmsm_cpu1_ref_P_g._Value -
      soc_pmsm_cpu1_ref_P_g.scaleOut_Gain *
      soc_pmsm_cpu1_ref_DW.UnitDelay_DSTATE;
  }

  /* End of Switch: '<S4>/Switch2' */
  /* End of Outputs for SubSystem: '<Root>/Open_Loop_Control' */

  /* MATLABSystem: '<S43>/IPC Write' */
  diagDataOut.OverwriteDiag = 0U;
  diagDataOut.NumBuffUsedDiag = 0U;
  MW_IPC_Write(&soc_pmsm_cpu1_ref_DW.obj.IpcHandle, 0.0,
               soc_pmsm_cpu1_ref_DW.obj.DataTypeId,
               &rtb_TmpSignalConversionAtIPCWri[0], &diagDataOut);

  /* Start for MATLABSystem: '<S43>/IPC Write' */
  qY = soc_pmsm_cpu1_ref_DW.obj.Overwritten + /*MW:OvSatOk*/
    diagDataOut.OverwriteDiag;
  if (qY < soc_pmsm_cpu1_ref_DW.obj.Overwritten) {
    qY = MAX_uint64_T;
  }

  /* MATLABSystem: '<S43>/IPC Write' */
  soc_pmsm_cpu1_ref_DW.obj.Overwritten = qY;
  if (diagDataOut.NumBuffUsedDiag <= 1U) {
    soc_pmsm_cpu1_ref_DW.obj.NumBufUsed = diagDataOut.NumBuffUsedDiag;
  }

  /* RateTransition: '<Root>/Rate Transition' */
  if (soc_pmsm_cpu1_ref_DW.RateTransition_semaphoreTaken == 0) {
    soc_pmsm_cpu1_ref_DW.RateTransition_Buffer0 = rtb_Sum1_c;
  }

  /* End of RateTransition: '<Root>/Rate Transition' */
}

/* Output and update for referenced model: 'soc_pmsm_cpu1_ref' */
void soc_pmsm_cpu1_refTID1(void)
{
  real32_T rtb_DataTypeConversion;
  real32_T rtb_Saturation;
  real32_T rtb_Speed_Ref;
  real32_T rtb_Speed_fb;

  /* RateTransition: '<Root>/Rate Transition' */
  soc_pmsm_cpu1_ref_DW.RateTransition_semaphoreTaken = 1;
  rtb_Speed_fb = soc_pmsm_cpu1_ref_DW.RateTransition_Buffer0;
  soc_pmsm_cpu1_ref_DW.RateTransition_semaphoreTaken = 0;

  /* Outputs for Atomic SubSystem: '<Root>/Speed Control1' */
  soc_pmsm_cpu1_SpeedControl1(rtb_Speed_fb, &rtb_Saturation,
    &rtb_DataTypeConversion, &rtb_Speed_Ref, &soc_pmsm_cpu1_ref_DW.SpeedControl1,
    &soc_pmsm_cpu1_ref_P_g.SpeedControl1);

  /* End of Outputs for SubSystem: '<Root>/Speed Control1' */

  /* Update for RateTransition: '<Root>/Rate Transition3' */
  soc_pmsm_cpu1_ref_DW.RateTransition3_Buffer[soc_pmsm_cpu1_ref_DW.RateTransition3_ActiveBufIdx
    == 0] = rtb_Saturation;
  soc_pmsm_cpu1_ref_DW.RateTransition3_ActiveBufIdx =
    (soc_pmsm_cpu1_ref_DW.RateTransition3_ActiveBufIdx == 0);

  /* Update for RateTransition: '<Root>/Rate Transition2' */
  soc_pmsm_cpu1_ref_DW.RateTransition2_Buffer[soc_pmsm_cpu1_ref_DW.RateTransition2_ActiveBufIdx
    == 0] = rtb_DataTypeConversion;
  soc_pmsm_cpu1_ref_DW.RateTransition2_ActiveBufIdx =
    (soc_pmsm_cpu1_ref_DW.RateTransition2_ActiveBufIdx == 0);

  /* Update for RateTransition: '<Root>/Rate Transition1' */
  soc_pmsm_cpu1_ref_DW.RateTransition1_Buffer[soc_pmsm_cpu1_ref_DW.RateTransition1_ActiveBufIdx
    == 0] = rtb_Speed_Ref;
  soc_pmsm_cpu1_ref_DW.RateTransition1_ActiveBufIdx =
    (soc_pmsm_cpu1_ref_DW.RateTransition1_ActiveBufIdx == 0);
}

/* Termination for referenced model: 'soc_pmsm_cpu1_ref' */
void soc_pmsm_cpu1_ref_Term(void)
{
  /* user code (Terminate function Body) */

  /* Model 'soc_pmsm_cpu1_ref' */
  GpioDataRegs.GPDCLEAR.bit.GPIO124 = 1;

  /* Terminate for MATLABSystem: '<S41>/IPC Read' */
  if (!soc_pmsm_cpu1_ref_DW.obj_k.matlabCodegenIsDeleted) {
    soc_pmsm_cpu1_ref_DW.obj_k.matlabCodegenIsDeleted = true;
    if ((soc_pmsm_cpu1_ref_DW.obj_k.isInitialized == 1L) &&
        soc_pmsm_cpu1_ref_DW.obj_k.isSetupComplete) {
      MW_IPC_Terminate(soc_pmsm_cpu1_ref_DW.obj_k.IpcHandle);
    }
  }

  /* End of Terminate for MATLABSystem: '<S41>/IPC Read' */

  /* Terminate for MATLABSystem: '<S43>/IPC Write' */
  if (!soc_pmsm_cpu1_ref_DW.obj.matlabCodegenIsDeleted) {
    soc_pmsm_cpu1_ref_DW.obj.matlabCodegenIsDeleted = true;
    if ((soc_pmsm_cpu1_ref_DW.obj.isInitialized == 1L) &&
        soc_pmsm_cpu1_ref_DW.obj.isSetupComplete) {
      MW_IPC_Terminate(soc_pmsm_cpu1_ref_DW.obj.IpcHandle);
    }
  }

  /* End of Terminate for MATLABSystem: '<S43>/IPC Write' */
}

/* Model initialize function */
void soc_pmsm_cpu1_re_initialize(const char_T **rt_errorStatus, const
  rtTimingBridge *timingBridge, int_T mdlref_TID0, int_T mdlref_TID1)
{
  RT_MODEL_soc_pmsm_cpu1_ref_T *const soc_pmsm_cpu1_ref_M =
    &(soc_pmsm_cpu1_ref_MdlrefDW.rtm);

  /* Registration code */

  /* initialize non-finites */
  rt_InitInfAndNaN(sizeof(real_T));

  /* setup the global timing engine */
  soc_pmsm_cpu1_ref_GlobalTID[0] = mdlref_TID0;
  soc_pmsm_cpu1_ref_GlobalTID[1] = mdlref_TID1;
  soc_pmsm_cpu1_ref_TimingBrdg = timingBridge;

  /* initialize error status */
  rtmSetErrorStatusPointer(soc_pmsm_cpu1_ref_M, rt_errorStatus);

  /* block I/O */
  (void) memset(((void *) &soc_pmsm_cpu1_ref_B), 0,
                sizeof(B_soc_pmsm_cpu1_ref_c_T));

  /* states (dwork) */
  (void) memset((void *)&soc_pmsm_cpu1_ref_DW, 0,
                sizeof(DW_soc_pmsm_cpu1_ref_f_T));
  soc_pmsm_cpu1_ref_PrevZCX.Delay1_Reset_ZCE = UNINITIALIZED_ZCSIG;
  soc_pmsm_cpu1_ref_PrevZCX.Delay_Reset_ZCE = UNINITIALIZED_ZCSIG;
  soc_pmsm_cpu1_ref_PrevZCX.Delay1_Reset_ZCE_o = UNINITIALIZED_ZCSIG;
  soc_pmsm_cpu1_ref_PrevZCX.Delay_Reset_ZCE_m = UNINITIALIZED_ZCSIG;
}

/*
 * File trailer for generated code.
 *
 * [EOF]
 */
