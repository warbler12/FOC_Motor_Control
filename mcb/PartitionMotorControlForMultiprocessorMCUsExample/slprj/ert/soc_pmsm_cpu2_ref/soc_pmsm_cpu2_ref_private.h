/*
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * File: soc_pmsm_cpu2_ref_private.h
 *
 * Code generated for Simulink model 'soc_pmsm_cpu2_ref'.
 *
 * Model version                  : 8.1
 * Simulink Coder version         : 23.2 (R2023b) 01-Aug-2023
 * C/C++ source code generated on : Fri Dec 12 11:44:46 2025
 *
 * Target selection: ert.tlc
 * Embedded hardware selection: Texas Instruments->C2000
 * Code generation objectives: Unspecified
 * Validation result: Not run
 */

#ifndef RTW_HEADER_soc_pmsm_cpu2_ref_private_h_
#define RTW_HEADER_soc_pmsm_cpu2_ref_private_h_
#include "rtwtypes.h"
#include "soc_pmsm_cpu2_ref_types.h"
#include "soc_pmsm_cpu2_ref.h"
#ifndef UCHAR_MAX
#include <limits.h>
#endif

#if ( UCHAR_MAX != (0xFFFFU) ) || ( SCHAR_MAX != (0x7FFF) )
#error Code was generated for compiler with different sized uchar/char. \
Consider adjusting Test hardware word size settings on the \
Hardware Implementation pane to match your compiler word sizes as \
defined in limits.h of the compiler. Alternatively, you can \
select the Test hardware is the same as production hardware option and \
select the Enable portable word sizes option on the Code Generation > \
Verification pane for ERT based targets, which will disable the \
preprocessor word size checks.
#endif

#if ( USHRT_MAX != (0xFFFFU) ) || ( SHRT_MAX != (0x7FFF) )
#error Code was generated for compiler with different sized ushort/short. \
Consider adjusting Test hardware word size settings on the \
Hardware Implementation pane to match your compiler word sizes as \
defined in limits.h of the compiler. Alternatively, you can \
select the Test hardware is the same as production hardware option and \
select the Enable portable word sizes option on the Code Generation > \
Verification pane for ERT based targets, which will disable the \
preprocessor word size checks.
#endif

#if ( UINT_MAX != (0xFFFFU) ) || ( INT_MAX != (0x7FFF) )
#error Code was generated for compiler with different sized uint/int. \
Consider adjusting Test hardware word size settings on the \
Hardware Implementation pane to match your compiler word sizes as \
defined in limits.h of the compiler. Alternatively, you can \
select the Test hardware is the same as production hardware option and \
select the Enable portable word sizes option on the Code Generation > \
Verification pane for ERT based targets, which will disable the \
preprocessor word size checks.
#endif

#if ( ULONG_MAX != (0xFFFFFFFFUL) ) || ( LONG_MAX != (0x7FFFFFFFL) )
#error Code was generated for compiler with different sized ulong/long. \
Consider adjusting Test hardware word size settings on the \
Hardware Implementation pane to match your compiler word sizes as \
defined in limits.h of the compiler. Alternatively, you can \
select the Test hardware is the same as production hardware option and \
select the Enable portable word sizes option on the Code Generation > \
Verification pane for ERT based targets, which will disable the \
preprocessor word size checks.
#endif

/* Skipping ulong_long/long_long check: insufficient preprocessor integer range. */

/* Block signals for model 'soc_pmsm_cpu2_ref' */
typedef struct {
  uint16_T Sum;                        /* '<S14>/Sum' */
  uint16_T Sum1;                       /* '<S14>/Sum1' */
  uint16_T Output;                     /* '<S16>/Output' */
} B_soc_pmsm_cpu2_ref_c_T;

/* Block states (default storage) for model 'soc_pmsm_cpu2_ref' */
typedef struct {
  soc_blocks_IPCWrite_soc_pmsm__T obj; /* '<S175>/IPC Write' */
  soc_blocks_IPCRead_soc_pmsm_c_T obj_j;/* '<S173>/IPC Read' */
  soc_blocks_PWMWrite_soc_pmsm__T obj_b;/* '<S187>/PWM Write' */
  soc_blocks_PWMWrite_soc_pmsm__T obj_c;/* '<S183>/PWM Write' */
  soc_blocks_PWMWrite_soc_pmsm__T obj_e;/* '<S179>/PWM Write' */
  soc_blocks_ADCRead_soc_pmsm_c_T obj_k;/* '<S26>/ADC Read' */
  soc_blocks_ADCRead_soc_pmsm_c_T obj_h;/* '<S24>/ADC Read' */
  real32_T UnitDelay_DSTATE;           /* '<S39>/Unit Delay' */
  real32_T Integrator_DSTATE;          /* '<S139>/Integrator' */
  real32_T UnitDelay_DSTATE_j;         /* '<S38>/Unit Delay' */
  real32_T Integrator_DSTATE_k;        /* '<S88>/Integrator' */
  uint16_T UnitDelay1_DSTATE;          /* '<S2>/Unit Delay1' */
  uint16_T Output_DSTATE;              /* '<S16>/Output' */
  uint16_T IaOffset;                   /* '<S1>/Data Store Memory1' */
  uint16_T IbOffset;                   /* '<S1>/Data Store Memory2' */
  uint16_T Memory_PreviousInput;       /* '<S14>/Memory' */
  uint16_T Memory1_PreviousInput;      /* '<S14>/Memory1' */
  boolean_T DelayInput1_DSTATE;        /* '<S13>/Delay Input1' */
  boolean_T UnitDelay_DSTATE_l;        /* '<S2>/Unit Delay' */
  int16_T Integrator_PrevResetState;   /* '<S139>/Integrator' */
  int16_T Integrator_PrevResetState_i; /* '<S88>/Integrator' */
  uint16_T Integrator_IC_LOADING;      /* '<S139>/Integrator' */
  uint16_T Integrator_IC_LOADING_m;    /* '<S88>/Integrator' */
  boolean_T objisempty;                /* '<S187>/PWM Write' */
  boolean_T objisempty_l;              /* '<S183>/PWM Write' */
  boolean_T objisempty_f;              /* '<S179>/PWM Write' */
  boolean_T objisempty_d;              /* '<S175>/IPC Write' */
  boolean_T objisempty_n;              /* '<S173>/IPC Read' */
  boolean_T objisempty_nq;             /* '<S26>/ADC Read' */
  boolean_T objisempty_j;              /* '<S24>/ADC Read' */
} DW_soc_pmsm_cpu2_ref_f_T;

/* Invariant block signals for model 'soc_pmsm_cpu2_ref' */
typedef struct {
  const real_T Width;                  /* '<S176>/Width' */
  const real_T Width_f;                /* '<S180>/Width' */
  const real_T Width_b;                /* '<S184>/Width' */
} ConstB_soc_pmsm_cpu2_ref_h_T;

/* Parameters (default storage) */
struct P_soc_pmsm_cpu2_ref_T_ {
  real_T CompareToConstant_const;     /* Mask Parameter: CompareToConstant_const
                                       * Referenced by: '<S178>/Constant'
                                       */
  real_T CompareToConstant_const_n; /* Mask Parameter: CompareToConstant_const_n
                                     * Referenced by: '<S182>/Constant'
                                     */
  real_T CompareToConstant_const_g; /* Mask Parameter: CompareToConstant_const_g
                                     * Referenced by: '<S186>/Constant'
                                     */
  real32_T DiscretePIControllerwithantiwin;
                              /* Mask Parameter: DiscretePIControllerwithantiwin
                               * Referenced by:
                               *   '<S146>/Saturation'
                               *   '<S132>/DeadZone'
                               */
  real32_T DiscretePIControllerwithantiw_m;
                              /* Mask Parameter: DiscretePIControllerwithantiw_m
                               * Referenced by:
                               *   '<S95>/Saturation'
                               *   '<S81>/DeadZone'
                               */
  real32_T DiscretePIControllerwithantiw_d;
                              /* Mask Parameter: DiscretePIControllerwithantiw_d
                               * Referenced by:
                               *   '<S146>/Saturation'
                               *   '<S132>/DeadZone'
                               */
  real32_T DiscretePIControllerwithantiw_g;
                              /* Mask Parameter: DiscretePIControllerwithantiw_g
                               * Referenced by:
                               *   '<S95>/Saturation'
                               *   '<S81>/DeadZone'
                               */
  uint16_T WrapToZero_Threshold;       /* Mask Parameter: WrapToZero_Threshold
                                        * Referenced by: '<S18>/FixPt Switch'
                                        */
  uint16_T CompareToConstant_const_b;
                                    /* Mask Parameter: CompareToConstant_const_b
                                     * Referenced by: '<S46>/Constant'
                                     */
  uint16_T CompareToConstant1_const; /* Mask Parameter: CompareToConstant1_const
                                      * Referenced by: '<S47>/Constant'
                                      */
  boolean_T DetectChange_vinit;        /* Mask Parameter: DetectChange_vinit
                                        * Referenced by: '<S13>/Delay Input1'
                                        */
  real_T Constant_Value;               /* Expression: 1
                                        * Referenced by: '<S15>/Constant'
                                        */
  real_T u0counts_Value;               /* Expression: 10
                                        * Referenced by: '<S2>/10 counts'
                                        */
  int32_T Get_ADC_Volt_Gain;           /* Computed Parameter: Get_ADC_Volt_Gain
                                        * Referenced by: '<S28>/Get_ADC_Volt'
                                        */
  real32_T one_by_sqrt3_Gain;          /* Computed Parameter: one_by_sqrt3_Gain
                                        * Referenced by: '<S36>/one_by_sqrt3'
                                        */
  real32_T Constant_Value_a;           /* Computed Parameter: Constant_Value_a
                                        * Referenced by: '<S52>/Constant'
                                        */
  real32_T Gain_Gain;                  /* Computed Parameter: Gain_Gain
                                        * Referenced by: '<S52>/Gain'
                                        */
  real32_T Switch1_Threshold;          /* Computed Parameter: Switch1_Threshold
                                        * Referenced by: '<S52>/Switch1'
                                        */
  real32_T Switch_Threshold;           /* Computed Parameter: Switch_Threshold
                                        * Referenced by: '<S52>/Switch'
                                        */
  real32_T Gain_Gain_d;                /* Computed Parameter: Gain_Gain_d
                                        * Referenced by: '<S50>/Gain'
                                        */
  real32_T Constant_Value_l;           /* Computed Parameter: Constant_Value_l
                                        * Referenced by: '<S44>/Constant'
                                        */
  real32_T ReplaceInport_satLim_Value;
                               /* Computed Parameter: ReplaceInport_satLim_Value
                                * Referenced by: '<S37>/ReplaceInport_satLim'
                                */
  real32_T Constant3_Value;            /* Computed Parameter: Constant3_Value
                                        * Referenced by: '<S42>/Constant3'
                                        */
  real32_T Vq_OpenLoop_Value;          /* Computed Parameter: Vq_OpenLoop_Value
                                        * Referenced by: '<S39>/Vq_OpenLoop'
                                        */
  real32_T sqrt3_by_two_Gain;          /* Computed Parameter: sqrt3_by_two_Gain
                                        * Referenced by: '<S171>/sqrt3_by_two'
                                        */
  real32_T one_by_two_Gain;            /* Computed Parameter: one_by_two_Gain
                                        * Referenced by: '<S171>/one_by_two'
                                        */
  real32_T Kc_Gain;                    /* Computed Parameter: Kc_Gain
                                        * Referenced by: '<S171>/Kc'
                                        */
  real32_T Ka_Gain;                    /* Computed Parameter: Ka_Gain
                                        * Referenced by: '<S171>/Ka'
                                        */
  real32_T Kb_Gain;                    /* Computed Parameter: Kb_Gain
                                        * Referenced by: '<S171>/Kb'
                                        */
  real32_T one_by_two_Gain_a;          /* Computed Parameter: one_by_two_Gain_a
                                        * Referenced by: '<S168>/one_by_two'
                                        */
  real32_T Gain_Gain_j;                /* Computed Parameter: Gain_Gain_j
                                        * Referenced by: '<S167>/Gain'
                                        */
  real32_T One_by_Two_Gain;            /* Computed Parameter: One_by_Two_Gain
                                        * Referenced by: '<S9>/One_by_Two'
                                        */
  real32_T Constant_Value_g;           /* Computed Parameter: Constant_Value_g
                                        * Referenced by: '<S9>/Constant'
                                        */
  real32_T Constant1_Value;            /* Computed Parameter: Constant1_Value
                                        * Referenced by: '<S9>/Constant1'
                                        */
  real32_T CurrentSenseGain_Gain;   /* Computed Parameter: CurrentSenseGain_Gain
                                     * Referenced by: '<S28>/Current Sense Gain'
                                     */
  real32_T PU_Conversion_Gain;         /* Computed Parameter: PU_Conversion_Gain
                                        * Referenced by: '<S28>/PU_Conversion'
                                        */
  real32_T Kalpha_Gain;                /* Computed Parameter: Kalpha_Gain
                                        * Referenced by: '<S35>/Kalpha'
                                        */
  real32_T Kbeta_Gain;                 /* Computed Parameter: Kbeta_Gain
                                        * Referenced by: '<S35>/Kbeta'
                                        */
  real32_T Constant_Value_n;           /* Computed Parameter: Constant_Value_n
                                        * Referenced by: '<S30>/Constant'
                                        */
  real32_T sine_table_values_Value[1002];
                                  /* Computed Parameter: sine_table_values_Value
                                   * Referenced by: '<S33>/sine_table_values'
                                   */
  real32_T convert_pu_Gain;            /* Computed Parameter: convert_pu_Gain
                                        * Referenced by: '<S161>/convert_pu'
                                        */
  real32_T Constant_Value_aa;          /* Computed Parameter: Constant_Value_aa
                                        * Referenced by: '<S162>/Constant'
                                        */
  real32_T indexing_Gain;              /* Computed Parameter: indexing_Gain
                                        * Referenced by: '<S33>/indexing'
                                        */
  real32_T Kp_Value;                   /* Expression: PI_params.Kp_i
                                        * Referenced by: '<S39>/Kp'
                                        */
  real32_T UnitDelay_InitialCondition;
                               /* Computed Parameter: UnitDelay_InitialCondition
                                * Referenced by: '<S39>/Unit Delay'
                                */
  real32_T Integrator_gainval;         /* Computed Parameter: Integrator_gainval
                                        * Referenced by: '<S139>/Integrator'
                                        */
  real32_T Kp_Value_h;                 /* Expression: PI_params.Kp_i
                                        * Referenced by: '<S38>/Kp'
                                        */
  real32_T UnitDelay_InitialCondition_m;
                             /* Computed Parameter: UnitDelay_InitialCondition_m
                              * Referenced by: '<S38>/Unit Delay'
                              */
  real32_T Integrator_gainval_d;     /* Computed Parameter: Integrator_gainval_d
                                      * Referenced by: '<S88>/Integrator'
                                      */
  real32_T Clamping_zero_Value;       /* Computed Parameter: Clamping_zero_Value
                                       * Referenced by: '<S79>/Clamping_zero'
                                       */
  real32_T Ki_Value;                   /* Computed Parameter: Ki_Value
                                        * Referenced by: '<S38>/Ki'
                                        */
  real32_T Constant1_Value_d;          /* Computed Parameter: Constant1_Value_d
                                        * Referenced by: '<S79>/Constant1'
                                        */
  real32_T Clamping_zero_Value_m;   /* Computed Parameter: Clamping_zero_Value_m
                                     * Referenced by: '<S130>/Clamping_zero'
                                     */
  real32_T Ki_Value_a;                 /* Computed Parameter: Ki_Value_a
                                        * Referenced by: '<S39>/Ki'
                                        */
  real32_T Constant1_Value_m;          /* Computed Parameter: Constant1_Value_m
                                        * Referenced by: '<S130>/Constant1'
                                        */
  int16_T offset_Value[4];             /* Computed Parameter: offset_Value
                                        * Referenced by: '<S33>/offset'
                                        */
  uint16_T Constant_Value_k;           /* Computed Parameter: Constant_Value_k
                                        * Referenced by: '<S18>/Constant'
                                        */
  uint16_T Out1_Y0;                    /* Computed Parameter: Out1_Y0
                                        * Referenced by: '<S14>/Out1'
                                        */
  uint16_T Out2_Y0;                    /* Computed Parameter: Out2_Y0
                                        * Referenced by: '<S14>/Out2'
                                        */
  uint16_T Out3_Y0;                    /* Computed Parameter: Out3_Y0
                                        * Referenced by: '<S14>/Out3'
                                        */
  uint16_T Memory_InitialCondition;
                                  /* Computed Parameter: Memory_InitialCondition
                                   * Referenced by: '<S14>/Memory'
                                   */
  uint16_T Memory1_InitialCondition;
                                 /* Computed Parameter: Memory1_InitialCondition
                                  * Referenced by: '<S14>/Memory1'
                                  */
  uint16_T FixPtConstant_Value;       /* Computed Parameter: FixPtConstant_Value
                                       * Referenced by: '<S17>/FixPt Constant'
                                       */
  uint16_T Output_InitialCondition;
                                  /* Computed Parameter: Output_InitialCondition
                                   * Referenced by: '<S16>/Output'
                                   */
  uint16_T Constant_Value_c;           /* Computed Parameter: Constant_Value_c
                                        * Referenced by: '<S20>/Constant'
                                        */
  uint16_T Constant1_Value_n;          /* Computed Parameter: Constant1_Value_n
                                        * Referenced by: '<S22>/Constant1'
                                        */
  uint16_T ReplaceInport_satMethod_Value;
                            /* Computed Parameter: ReplaceInport_satMethod_Value
                             * Referenced by: '<S37>/ReplaceInport_satMethod'
                             */
  uint16_T ChosenMethod_Value;         /* Computed Parameter: ChosenMethod_Value
                                        * Referenced by: '<S42>/ChosenMethod'
                                        */
  uint16_T Offset_Value;               /* Computed Parameter: Offset_Value
                                        * Referenced by: '<S157>/Offset'
                                        */
  uint16_T Switch_Threshold_i;         /* Computed Parameter: Switch_Threshold_i
                                        * Referenced by: '<S157>/Switch'
                                        */
  uint16_T Offset_Value_h;             /* Computed Parameter: Offset_Value_h
                                        * Referenced by: '<S159>/Offset'
                                        */
  uint16_T Switch_Threshold_m;         /* Computed Parameter: Switch_Threshold_m
                                        * Referenced by: '<S159>/Switch'
                                        */
  uint16_T UnitDelay1_InitialCondition;
                              /* Computed Parameter: UnitDelay1_InitialCondition
                               * Referenced by: '<S2>/Unit Delay1'
                               */
  uint16_T enableInportSatMethod_Value;
                              /* Computed Parameter: enableInportSatMethod_Value
                               * Referenced by: '<S42>/enableInportSatMethod'
                               */
  uint16_T enableInportSatLim_Value;
                                 /* Computed Parameter: enableInportSatLim_Value
                                  * Referenced by: '<S42>/enableInportSatLim'
                                  */
  uint16_T DataStoreMemory1_InitialValue;
                            /* Computed Parameter: DataStoreMemory1_InitialValue
                             * Referenced by: '<S1>/Data Store Memory1'
                             */
  uint16_T DataStoreMemory2_InitialValue;
                            /* Computed Parameter: DataStoreMemory2_InitialValue
                             * Referenced by: '<S1>/Data Store Memory2'
                             */
  boolean_T UnitDelay_InitialCondition_k;
                             /* Computed Parameter: UnitDelay_InitialCondition_k
                              * Referenced by: '<S2>/Unit Delay'
                              */
  boolean_T Constant1_Value_p;         /* Computed Parameter: Constant1_Value_p
                                        * Referenced by: '<S176>/Constant1'
                                        */
  boolean_T Constant2_Value;           /* Computed Parameter: Constant2_Value
                                        * Referenced by: '<S176>/Constant2'
                                        */
  boolean_T Constant1_Value_h;         /* Computed Parameter: Constant1_Value_h
                                        * Referenced by: '<S180>/Constant1'
                                        */
  boolean_T Constant2_Value_m;         /* Computed Parameter: Constant2_Value_m
                                        * Referenced by: '<S180>/Constant2'
                                        */
  boolean_T Constant1_Value_mn;        /* Computed Parameter: Constant1_Value_mn
                                        * Referenced by: '<S184>/Constant1'
                                        */
  boolean_T Constant2_Value_k;         /* Computed Parameter: Constant2_Value_k
                                        * Referenced by: '<S184>/Constant2'
                                        */
  int16_T Constant_Value_i;            /* Computed Parameter: Constant_Value_i
                                        * Referenced by: '<S79>/Constant'
                                        */
  int16_T Constant2_Value_a;           /* Computed Parameter: Constant2_Value_a
                                        * Referenced by: '<S79>/Constant2'
                                        */
  int16_T Constant3_Value_j;           /* Computed Parameter: Constant3_Value_j
                                        * Referenced by: '<S79>/Constant3'
                                        */
  int16_T Constant4_Value;             /* Computed Parameter: Constant4_Value
                                        * Referenced by: '<S79>/Constant4'
                                        */
  int16_T Constant_Value_j;            /* Computed Parameter: Constant_Value_j
                                        * Referenced by: '<S130>/Constant'
                                        */
  int16_T Constant2_Value_l;           /* Computed Parameter: Constant2_Value_l
                                        * Referenced by: '<S130>/Constant2'
                                        */
  int16_T Constant3_Value_n;           /* Computed Parameter: Constant3_Value_n
                                        * Referenced by: '<S130>/Constant3'
                                        */
  int16_T Constant4_Value_f;           /* Computed Parameter: Constant4_Value_f
                                        * Referenced by: '<S130>/Constant4'
                                        */
};

/* Real-time Model Data Structure */
struct tag_RTM_soc_pmsm_cpu2_ref_T {
  const char_T **errorStatus;
};

/* Macros for accessing real-time model data structure */
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

typedef struct {
  RT_MODEL_soc_pmsm_cpu2_ref_T rtm;
} MdlrefDW_soc_pmsm_cpu2_ref_T;

extern P_soc_pmsm_cpu2_ref_T soc_pmsm_cpu2_ref_P_g;

/* Invariant block signals (default storage) */
extern const ConstB_soc_pmsm_cpu2_ref_h_T soc_pmsm_cpu2_ref_ConstB;
extern MdlrefDW_soc_pmsm_cpu2_ref_T soc_pmsm_cpu2_ref_MdlrefDW;

/* Block signals (default storage) */
extern B_soc_pmsm_cpu2_ref_c_T soc_pmsm_cpu2_ref_B;

/* Block states (default storage) */
extern DW_soc_pmsm_cpu2_ref_f_T soc_pmsm_cpu2_ref_DW;

#endif                             /* RTW_HEADER_soc_pmsm_cpu2_ref_private_h_ */

/*
 * File trailer for generated code.
 *
 * [EOF]
 */
