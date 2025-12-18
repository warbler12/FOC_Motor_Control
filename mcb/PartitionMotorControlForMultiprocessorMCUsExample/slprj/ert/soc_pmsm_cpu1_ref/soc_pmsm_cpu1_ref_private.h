/*
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * File: soc_pmsm_cpu1_ref_private.h
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

#ifndef RTW_HEADER_soc_pmsm_cpu1_ref_private_h_
#define RTW_HEADER_soc_pmsm_cpu1_ref_private_h_
#include "rtwtypes.h"
#include "model_reference_types.h"
#include "zero_crossing_types.h"
#include "soc_pmsm_cpu1_ref.h"
#include "soc_pmsm_cpu1_ref_types.h"

/* Private macros used by the generated code to access rtModel */
#ifndef rtmIsSampleHit
#define rtmIsSampleHit(sti, tid)       (soc_pmsm_cpu1_ref_TimingBrdg->taskCounter[soc_pmsm_cpu1_ref_GlobalTID[sti]] == 0)
#endif

#ifndef rtmIsSpecialSampleHit
#define rtmIsSpecialSampleHit(sti, prom_sti, tid) ( *((soc_pmsm_cpu1_ref_TimingBrdg->rateTransition)[soc_pmsm_cpu1_ref_GlobalTID[sti] + soc_pmsm_cpu1_ref_TimingBrdg->nTasks*soc_pmsm_cpu1_ref_GlobalTID[prom_sti]]) )
#endif

/* Block states (default storage) for system '<Root>/Speed Control1' */
typedef struct {
  real32_T UnitDelay_DSTATE;           /* '<S103>/Unit Delay' */
  real32_T UnitDelay_DSTATE_o;         /* '<S48>/Unit Delay' */
  real32_T Integrator_DSTATE;          /* '<S83>/Integrator' */
  int16_T Integrator_PrevResetState;   /* '<S83>/Integrator' */
} DW_SpeedControl1_soc_pmsm_cpu_T;

/* Block signals for model 'soc_pmsm_cpu1_ref' */
typedef struct {
  real32_T Input;                      /* '<S46>/Input' */
} B_soc_pmsm_cpu1_ref_c_T;

/* Block states (default storage) for model 'soc_pmsm_cpu1_ref' */
typedef struct {
  soc_blocks_IPCWrite_soc_pmsm__T obj; /* '<S43>/IPC Write' */
  soc_blocks_IPCRead_soc_pmsm_c_T obj_k;/* '<S41>/IPC Read' */
  real32_T UnitDelay_DSTATE;           /* '<S44>/Unit Delay' */
  real32_T UnitDelay_DSTATE_a[4];      /* '<S39>/Unit Delay' */
  real32_T Delay1_DSTATE;              /* '<S26>/Delay1' */
  real32_T Delay_DSTATE;               /* '<S26>/Delay' */
  real32_T UnitDelay_DSTATE_f;         /* '<S30>/Unit Delay' */
  real32_T Delay1_DSTATE_p;            /* '<S19>/Delay1' */
  real32_T Delay_DSTATE_h;             /* '<S19>/Delay' */
  real32_T UnitDelay_DSTATE_aa;        /* '<S23>/Unit Delay' */
  real32_T UnitDelay_DSTATE_k;         /* '<S33>/Unit Delay' */
  uint32_T Delay_DSTATE_p[10];         /* '<S10>/Delay' */
  volatile real32_T RateTransition3_Buffer[2];/* '<Root>/Rate Transition3' */
  volatile real32_T RateTransition2_Buffer[2];/* '<Root>/Rate Transition2' */
  volatile real32_T RateTransition1_Buffer[2];/* '<Root>/Rate Transition1' */
  volatile real32_T RateTransition_Buffer0;/* '<Root>/Rate Transition' */
  volatile int16_T RateTransition3_ActiveBufIdx;/* '<Root>/Rate Transition3' */
  volatile int16_T RateTransition2_ActiveBufIdx;/* '<Root>/Rate Transition2' */
  volatile int16_T RateTransition1_ActiveBufIdx;/* '<Root>/Rate Transition1' */
  volatile int16_T RateTransition_semaphoreTaken;/* '<Root>/Rate Transition' */
  uint16_T CircBufIdx;                 /* '<S10>/Delay' */
  boolean_T Delay_DSTATE_py;           /* '<S45>/Delay' */
  boolean_T objisempty;                /* '<S43>/IPC Write' */
  boolean_T objisempty_j;              /* '<S41>/IPC Read' */
  DW_SpeedControl1_soc_pmsm_cpu_T SpeedControl1;/* '<Root>/Speed Control1' */
} DW_soc_pmsm_cpu1_ref_f_T;

/* Zero-crossing (trigger) state for model 'soc_pmsm_cpu1_ref' */
typedef struct {
  ZCSigState Delay1_Reset_ZCE;         /* '<S26>/Delay1' */
  ZCSigState Delay_Reset_ZCE;          /* '<S26>/Delay' */
  ZCSigState Delay1_Reset_ZCE_o;       /* '<S19>/Delay1' */
  ZCSigState Delay_Reset_ZCE_m;        /* '<S19>/Delay' */
} ZCE_soc_pmsm_cpu1_ref_T;

/* Invariant block signals for model 'soc_pmsm_cpu1_ref' */
typedef struct {
  const real32_T TmpSignalConversionAtIq_Pos;/* '<Root>/IPC Write' */
} ConstB_soc_pmsm_cpu1_ref_h_T;

/* Parameters for system: '<Root>/Speed Control1' */
struct P_SpeedControl1_soc_pmsm_cpu1_T_ {
  real32_T DiscretePIControllerwithantiwin;
                              /* Mask Parameter: DiscretePIControllerwithantiwin
                               * Referenced by:
                               *   '<S90>/Saturation'
                               *   '<S76>/DeadZone'
                               */
  real32_T DiscretePIControllerwithantiw_c;
                              /* Mask Parameter: DiscretePIControllerwithantiw_c
                               * Referenced by:
                               *   '<S90>/Saturation'
                               *   '<S76>/DeadZone'
                               */
  real_T Step1_Time;                   /* Expression: .3
                                        * Referenced by: '<S5>/Step1'
                                        */
  real_T Step1_Y0;                     /* Expression: 0.5*pmsm.N_base
                                        * Referenced by: '<S5>/Step1'
                                        */
  real_T Step1_YFinal;                 /* Expression: 0.7*pmsm.N_base
                                        * Referenced by: '<S5>/Step1'
                                        */
  real_T Constant_Value;               /* Expression: 0.1*pmsm.N_base
                                        * Referenced by: '<S5>/Constant'
                                        */
  real_T Step_Time;                    /* Expression: .05
                                        * Referenced by: '<S5>/Step'
                                        */
  real_T Step_Y0;                      /* Expression: 0
                                        * Referenced by: '<S5>/Step'
                                        */
  real_T Step_YFinal;                  /* Expression: 1
                                        * Referenced by: '<S5>/Step'
                                        */
  real_T Switch_Threshold;             /* Expression: 0
                                        * Referenced by: '<S5>/Switch'
                                        */
  real_T rpm2PU_Gain;                  /* Expression: 1/pmsm.N_base
                                        * Referenced by: '<S5>/rpm2PU'
                                        */
  real32_T Constant1_Value;            /* Computed Parameter: Constant1_Value
                                        * Referenced by: '<S74>/Constant1'
                                        */
  real32_T Ki4_Value;                  /* Computed Parameter: Ki4_Value
                                        * Referenced by: '<S48>/Ki4'
                                        */
  real32_T Ki3_Value;                  /* Computed Parameter: Ki3_Value
                                        * Referenced by: '<S48>/Ki3'
                                        */
  real32_T Constant_Value_a;           /* Computed Parameter: Constant_Value_a
                                        * Referenced by: '<S48>/Constant'
                                        */
  real32_T Constant1_Value_h;          /* Computed Parameter: Constant1_Value_h
                                        * Referenced by: '<S48>/Constant1'
                                        */
  real32_T Switch1_Threshold;          /* Computed Parameter: Switch1_Threshold
                                        * Referenced by: '<S48>/Switch1'
                                        */
  real32_T Filter_Constant_Value;   /* Computed Parameter: Filter_Constant_Value
                                     * Referenced by: '<S103>/Filter_Constant'
                                     */
  real32_T One_Value;                  /* Computed Parameter: One_Value
                                        * Referenced by: '<S103>/One'
                                        */
  real32_T UnitDelay_InitialCondition;
                               /* Computed Parameter: UnitDelay_InitialCondition
                                * Referenced by: '<S103>/Unit Delay'
                                */
  real32_T UnitDelay_InitialCondition_k;
                             /* Computed Parameter: UnitDelay_InitialCondition_k
                              * Referenced by: '<S48>/Unit Delay'
                              */
  real32_T Switch2_Threshold;          /* Computed Parameter: Switch2_Threshold
                                        * Referenced by: '<S48>/Switch2'
                                        */
  real32_T Switch_Threshold_e;         /* Computed Parameter: Switch_Threshold_e
                                        * Referenced by: '<S48>/Switch'
                                        */
  real32_T Kp1_Value;                  /* Expression: PI_params.Kp_speed
                                        * Referenced by: '<S47>/Kp1'
                                        */
  real32_T Ki2_Value;                  /* Computed Parameter: Ki2_Value
                                        * Referenced by: '<S47>/Ki2'
                                        */
  real32_T Integrator_gainval;         /* Computed Parameter: Integrator_gainval
                                        * Referenced by: '<S83>/Integrator'
                                        */
  real32_T Clamping_zero_Value;       /* Computed Parameter: Clamping_zero_Value
                                       * Referenced by: '<S74>/Clamping_zero'
                                       */
  real32_T Ki1_Value;                  /* Computed Parameter: Ki1_Value
                                        * Referenced by: '<S47>/Ki1'
                                        */
  int16_T Constant_Value_d;            /* Computed Parameter: Constant_Value_d
                                        * Referenced by: '<S74>/Constant'
                                        */
  int16_T Constant2_Value;             /* Computed Parameter: Constant2_Value
                                        * Referenced by: '<S74>/Constant2'
                                        */
  int16_T Constant3_Value;             /* Computed Parameter: Constant3_Value
                                        * Referenced by: '<S74>/Constant3'
                                        */
  int16_T Constant4_Value;             /* Computed Parameter: Constant4_Value
                                        * Referenced by: '<S74>/Constant4'
                                        */
};

/* Parameters (default storage) */
struct P_soc_pmsm_cpu1_ref_T_ {
  uint16_T atan2_outputUnit;           /* Mask Parameter: atan2_outputUnit
                                        * Referenced by: '<S15>/Constant'
                                        */
  real_T Constant_Value;               /* Expression: 1
                                        * Referenced by: '<S6>/Constant'
                                        */
  real32_T Bias_Bias;                  /* Computed Parameter: Bias_Bias
                                        * Referenced by: '<S16>/Bias'
                                        */
  real32_T Gain_Gain;                  /* Computed Parameter: Gain_Gain
                                        * Referenced by: '<S16>/Gain'
                                        */
  real32_T Switch_Threshold;           /* Computed Parameter: Switch_Threshold
                                        * Referenced by: '<S16>/Switch'
                                        */
  real32_T Constant_Value_m;           /* Computed Parameter: Constant_Value_m
                                        * Referenced by: '<S17>/Constant'
                                        */
  real32_T Constant_Value_g;           /* Computed Parameter: Constant_Value_g
                                        * Referenced by: '<S24>/Constant'
                                        */
  real32_T UnitDelay_InitialCondition;
                               /* Computed Parameter: UnitDelay_InitialCondition
                                * Referenced by: '<S39>/Unit Delay'
                                */
  real32_T One_Value;                  /* Computed Parameter: One_Value
                                        * Referenced by: '<S39>/One'
                                        */
  real32_T Filter_Constant_Value;   /* Computed Parameter: Filter_Constant_Value
                                     * Referenced by: '<S39>/Filter_Constant'
                                     */
  real32_T ScalingR_Gain;              /* Computed Parameter: ScalingR_Gain
                                        * Referenced by: '<S27>/ScalingR'
                                        */
  real32_T Delay1_InitialCondition;
                                  /* Computed Parameter: Delay1_InitialCondition
                                   * Referenced by: '<S26>/Delay1'
                                   */
  real32_T Gain1_Gain;
  /* Expression: single((BlockSampleTime(1)/2)/(1+pi*CutoffFreq*(1/100)*BlockSampleTime(1)))
   * Referenced by: '<S26>/Gain1'
   */
  real32_T Delay_InitialCondition; /* Computed Parameter: Delay_InitialCondition
                                    * Referenced by: '<S26>/Delay'
                                    */
  real32_T Gain2_Gain;
  /* Expression: single((1-pi*CutoffFreq*(1/100)*BlockSampleTime(1))/(1+pi*CutoffFreq*(1/100)*BlockSampleTime(1)))
   * Referenced by: '<S26>/Gain2'
   */
  real32_T ScalingL_Gain;              /* Computed Parameter: ScalingL_Gain
                                        * Referenced by: '<S27>/ScalingL'
                                        */
  real32_T Filter_Constant_Value_j;
                                  /* Computed Parameter: Filter_Constant_Value_j
                                   * Referenced by: '<S30>/Filter_Constant'
                                   */
  real32_T One_Value_l;                /* Computed Parameter: One_Value_l
                                        * Referenced by: '<S30>/One'
                                        */
  real32_T UnitDelay_InitialCondition_f;
                             /* Computed Parameter: UnitDelay_InitialCondition_f
                              * Referenced by: '<S30>/Unit Delay'
                              */
  real32_T ScalingR_Gain_c;            /* Computed Parameter: ScalingR_Gain_c
                                        * Referenced by: '<S20>/ScalingR'
                                        */
  real32_T Delay1_InitialCondition_f;
                                /* Computed Parameter: Delay1_InitialCondition_f
                                 * Referenced by: '<S19>/Delay1'
                                 */
  real32_T Gain1_Gain_m;
  /* Expression: single((BlockSampleTime(1)/2)/(1+pi*CutoffFreq*(1/100)*BlockSampleTime(1)))
   * Referenced by: '<S19>/Gain1'
   */
  real32_T Delay_InitialCondition_b;
                                 /* Computed Parameter: Delay_InitialCondition_b
                                  * Referenced by: '<S19>/Delay'
                                  */
  real32_T Gain2_Gain_g;
  /* Expression: single((1-pi*CutoffFreq*(1/100)*BlockSampleTime(1))/(1+pi*CutoffFreq*(1/100)*BlockSampleTime(1)))
   * Referenced by: '<S19>/Gain2'
   */
  real32_T ScalingL_Gain_c;            /* Computed Parameter: ScalingL_Gain_c
                                        * Referenced by: '<S20>/ScalingL'
                                        */
  real32_T Filter_Constant_Value_m;
                                  /* Computed Parameter: Filter_Constant_Value_m
                                   * Referenced by: '<S23>/Filter_Constant'
                                   */
  real32_T One_Value_h;                /* Computed Parameter: One_Value_h
                                        * Referenced by: '<S23>/One'
                                        */
  real32_T UnitDelay_InitialCondition_g;
                             /* Computed Parameter: UnitDelay_InitialCondition_g
                              * Referenced by: '<S23>/Unit Delay'
                              */
  real32_T PositionGain_Gain;          /* Computed Parameter: PositionGain_Gain
                                        * Referenced by: '<S8>/PositionGain'
                                        */
  real32_T PositionToCount_Gain;     /* Computed Parameter: PositionToCount_Gain
                                      * Referenced by: '<S10>/PositionToCount'
                                      */
  real32_T SpeedGain_Gain;             /* Computed Parameter: SpeedGain_Gain
                                        * Referenced by: '<S10>/SpeedGain'
                                        */
  real32_T Filter_Constant_Value_a;
                                  /* Computed Parameter: Filter_Constant_Value_a
                                   * Referenced by: '<S33>/Filter_Constant'
                                   */
  real32_T One_Value_m;                /* Computed Parameter: One_Value_m
                                        * Referenced by: '<S33>/One'
                                        */
  real32_T UnitDelay_InitialCondition_e;
                             /* Computed Parameter: UnitDelay_InitialCondition_e
                              * Referenced by: '<S33>/Unit Delay'
                              */
  real32_T elect2mech_Gain;            /* Computed Parameter: elect2mech_Gain
                                        * Referenced by: '<S6>/elect2mech'
                                        */
  real32_T Out1_Y0;                    /* Computed Parameter: Out1_Y0
                                        * Referenced by: '<S46>/Out1'
                                        */
  real32_T theta_e_Y0;                 /* Computed Parameter: theta_e_Y0
                                        * Referenced by: '<S45>/theta_e'
                                        */
  real32_T _Value;                     /* Computed Parameter: _Value
                                        * Referenced by: '<S4>/ '
                                        */
  real32_T Direction_Threshold;       /* Computed Parameter: Direction_Threshold
                                       * Referenced by: '<S4>/Direction'
                                       */
  real32_T Gain_Gain_p;                /* Computed Parameter: Gain_Gain_p
                                        * Referenced by: '<S4>/Gain'
                                        */
  real32_T scaleIn_Gain;               /* Computed Parameter: scaleIn_Gain
                                        * Referenced by: '<S44>/scaleIn'
                                        */
  real32_T UnitDelay_InitialCondition_a;
                             /* Computed Parameter: UnitDelay_InitialCondition_a
                              * Referenced by: '<S44>/Unit Delay'
                              */
  real32_T scaleOut_Gain;              /* Computed Parameter: scaleOut_Gain
                                        * Referenced by: '<S44>/scaleOut'
                                        */
  real32_T Switch2_Threshold;          /* Computed Parameter: Switch2_Threshold
                                        * Referenced by: '<S4>/Switch2'
                                        */
  real32_T RateTransition3_InitialConditio;
                          /* Computed Parameter: RateTransition3_InitialConditio
                           * Referenced by: '<Root>/Rate Transition3'
                           */
  real32_T RateTransition2_InitialConditio;
                          /* Computed Parameter: RateTransition2_InitialConditio
                           * Referenced by: '<Root>/Rate Transition2'
                           */
  real32_T RateTransition1_InitialConditio;
                          /* Computed Parameter: RateTransition1_InitialConditio
                           * Referenced by: '<Root>/Rate Transition1'
                           */
  uint32_T Delay_InitialCondition_c;
                                 /* Computed Parameter: Delay_InitialCondition_c
                                  * Referenced by: '<S10>/Delay'
                                  */
  uint16_T Switch_Threshold_n;         /* Computed Parameter: Switch_Threshold_n
                                        * Referenced by: '<S15>/Switch'
                                        */
  boolean_T Delay_InitialCondition_f;
                                 /* Computed Parameter: Delay_InitialCondition_f
                                  * Referenced by: '<S45>/Delay'
                                  */
  boolean_T Constant_Value_mb;         /* Computed Parameter: Constant_Value_mb
                                        * Referenced by: '<S45>/Constant'
                                        */
  boolean_T Constant_Reset_Value;    /* Computed Parameter: Constant_Reset_Value
                                      * Referenced by: '<S44>/Constant_Reset'
                                      */
  P_SpeedControl1_soc_pmsm_cpu1_T SpeedControl1;/* '<Root>/Speed Control1' */
};

/* Real-time Model Data Structure */
struct tag_RTM_soc_pmsm_cpu1_ref_T {
  const char_T **errorStatus;
};

/* Macros for accessing real-time model data structure */
#ifndef rtmGetClockTick0
#define rtmGetClockTick0()             ( *((soc_pmsm_cpu1_ref_TimingBrdg->clockTick[soc_pmsm_cpu1_ref_GlobalTID[0]])) )
#endif

#ifndef rtmGetClockTick1
#define rtmGetClockTick1()             ( *((soc_pmsm_cpu1_ref_TimingBrdg->clockTick[soc_pmsm_cpu1_ref_GlobalTID[1]])) )
#endif

#ifndef rtmGetClockTickH0
#define rtmGetClockTickH0()            ( *(soc_pmsm_cpu1_ref_TimingBrdg->clockTickH[soc_pmsm_cpu1_ref_GlobalTID[0]]) )
#endif

#ifndef rtmGetClockTickH1
#define rtmGetClockTickH1()            ( *(soc_pmsm_cpu1_ref_TimingBrdg->clockTickH[soc_pmsm_cpu1_ref_GlobalTID[1]]) )
#endif

#ifndef rtmGetErrorStatus
#define rtmGetErrorStatus(rtm)         (*((rtm)->errorStatus))
#endif

#ifndef rtmSetErrorStatus
#define rtmSetErrorStatus(rtm, val)    (*((rtm)->errorStatus) = (val))
#endif

#ifndef rtmGetErrorStatusPointer
#define rtmGetErrorStatusPointer(rtm)  (rtm)->errorStatus
#endif

#ifndef rtmSetErrorStatusPointer
#define rtmSetErrorStatusPointer(rtm, val) ((rtm)->errorStatus = (val))
#endif

#ifndef rtmGetT
#define rtmGetT()                      (*(soc_pmsm_cpu1_ref_TimingBrdg->taskTime[0]))
#endif

typedef struct {
  RT_MODEL_soc_pmsm_cpu1_ref_T rtm;
} MdlrefDW_soc_pmsm_cpu1_ref_T;

extern int_T soc_pmsm_cpu1_ref_GlobalTID[2];
extern const rtTimingBridge *soc_pmsm_cpu1_ref_TimingBrdg;
extern void soc_pmsm_SpeedControl1_Init(DW_SpeedControl1_soc_pmsm_cpu_T *localDW,
  P_SpeedControl1_soc_pmsm_cpu1_T *localP);
extern void soc_pmsm_cpu1_SpeedControl1(real32_T rtu_Speed_Meas_PU, real32_T
  *rty_IdqRef_PU, real32_T *rty_EnClosedLooop, real32_T *rty_spd_Ref,
  DW_SpeedControl1_soc_pmsm_cpu_T *localDW, P_SpeedControl1_soc_pmsm_cpu1_T
  *localP);
extern P_soc_pmsm_cpu1_ref_T soc_pmsm_cpu1_ref_P_g;

/* Invariant block signals (default storage) */
extern const ConstB_soc_pmsm_cpu1_ref_h_T soc_pmsm_cpu1_ref_ConstB;
extern MdlrefDW_soc_pmsm_cpu1_ref_T soc_pmsm_cpu1_ref_MdlrefDW;

/* Block signals (default storage) */
extern B_soc_pmsm_cpu1_ref_c_T soc_pmsm_cpu1_ref_B;

/* Block states (default storage) */
extern DW_soc_pmsm_cpu1_ref_f_T soc_pmsm_cpu1_ref_DW;

/* Previous zero-crossings (trigger) states */
extern ZCE_soc_pmsm_cpu1_ref_T soc_pmsm_cpu1_ref_PrevZCX;

#endif                             /* RTW_HEADER_soc_pmsm_cpu1_ref_private_h_ */

/*
 * File trailer for generated code.
 *
 * [EOF]
 */
