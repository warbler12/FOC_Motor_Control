/*
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * File: mcb_pmsm_foc_sensorless_f28379d.h
 *
 * Code generated for Simulink model 'mcb_pmsm_foc_sensorless_f28379d'.
 *
 * Model version                  : 7.12
 * Simulink Coder version         : 23.2 (R2023b) 01-Aug-2023
 * C/C++ source code generated on : Thu Dec 11 17:51:43 2025
 *
 * Target selection: ert.tlc
 * Embedded hardware selection: Texas Instruments->C2000
 * Code generation objectives: Unspecified
 * Validation result: Not run
 */

#ifndef RTW_HEADER_mcb_pmsm_foc_sensorless_f28379d_h_
#define RTW_HEADER_mcb_pmsm_foc_sensorless_f28379d_h_
#ifndef mcb_pmsm_foc_sensorless_f28379d_COMMON_INCLUDES_
#define mcb_pmsm_foc_sensorless_f28379d_COMMON_INCLUDES_
#include "rtwtypes.h"
#include "string.h"
#include "c2000BoardSupport.h"
#include "MW_f2837xD_includes.h"
#include "DSP28xx_SciUtil.h"
#include "IQmathLib.h"
#include "MW_SPI.h"
#endif                    /* mcb_pmsm_foc_sensorless_f28379d_COMMON_INCLUDES_ */

#include "MW_c2000ISR.h"
#include "mcb_pmsm_foc_sensorless_f28379d_types.h"
#include "rt_nonfinite.h"
#include "rtGetNaN.h"
#include <string.h>
#include <stddef.h>
#include "zero_crossing_types.h"
#include "MW_target_hardware_resources.h"

/* Macros for accessing real-time model data structure */
#ifndef rtmGetErrorStatus
#define rtmGetErrorStatus(rtm)         ((rtm)->errorStatus)
#endif

#ifndef rtmSetErrorStatus
#define rtmSetErrorStatus(rtm, val)    ((rtm)->errorStatus = (val))
#endif

#ifndef rtmStepTask
#define rtmStepTask(rtm, idx)          ((rtm)->Timing.TaskCounters.TID[(idx)] == 0)
#endif

#ifndef rtmTaskCounter
#define rtmTaskCounter(rtm, idx)       ((rtm)->Timing.TaskCounters.TID[(idx)])
#endif

#define mcb_pmsm_foc_sensorless_f28379d_M (mcb_pmsm_foc_sensorless_f283_M)

extern void init_SCI(void);
extern void init_SCI_GPIO(void);
extern void config_ePWMSyncSource(void);
extern void config_ePWM_GPIO (void);
extern void config_ePWM_TBSync (void);
extern void config_ePWM_XBAR(void);

/* Block signals for system '<S149>/If Action Subsystem' */
typedef struct {
  real32_T Convert_back;               /* '<S151>/Convert_back' */
  int16_T Convert_uint16;              /* '<S151>/Convert_uint16' */
} rtB_IfActionSubsystem_mcb_pmsm_;

/* Block signals for system '<S149>/If Action Subsystem1' */
typedef struct {
  real32_T Convert_back;               /* '<S152>/Convert_back' */
  int16_T Convert_uint16;              /* '<S152>/Convert_uint16' */
} rtB_IfActionSubsystem1_mcb_pmsm;

/* Block signals for system '<S374>/Dir_Sense' */
typedef struct {
  int16_T Switch;                      /* '<S382>/Switch' */
  boolean_T LogicalOperator;           /* '<S382>/Logical Operator' */
} rtB_Dir_Sense_mcb_pmsm_foc_sens;

/* Zero-crossing (trigger) state for system '<S374>/Dir_Sense' */
typedef struct {
  ZCSigState Dir_Sense_Trig_ZCE;       /* '<S374>/Dir_Sense' */
} rtZCE_Dir_Sense_mcb_pmsm_foc_se;

/* Block signals for system '<S347>/atan2' */
typedef struct {
  real_T DataTypeConversion;           /* '<S348>/Data Type Conversion' */
  real_T Switch;                       /* '<S348>/Switch' */
  real_T algDD;
  real_T Gain;                         /* '<S349>/Gain' */
  real_T Switch_k;                     /* '<S349>/Switch' */
  real_T Bias;                         /* '<S349>/Bias' */
  real32_T DataTypeConversion1;        /* '<S348>/Data Type Conversion1' */
  real32_T DataTypeConversion2;        /* '<S348>/Data Type Conversion2' */
  real32_T Atan2;                      /* '<S348>/Atan2' */
} rtB_atan2_mcb_pmsm_foc_sensorle;

/* Block signals for system '<S432>/SPI Master Transfer' */
typedef struct {
  uint16_T SPIMasterTransfer;          /* '<S432>/SPI Master Transfer' */
} rtB_SPIMasterTransfer_mcb_pmsm_;

/* Block states (default storage) for system '<S432>/SPI Master Transfer' */
typedef struct {
  codertarget_tic2000_blocks_SPIM obj; /* '<S432>/SPI Master Transfer' */
  boolean_T objisempty;                /* '<S432>/SPI Master Transfer' */
} rtDW_SPIMasterTransfer_mcb_pmsm;

/* Block signals for system '<Root>/Speed Control' */
typedef struct {
  real_T Gain1;                        /* '<S442>/Gain1' */
  real_T MinMax;                       /* '<S512>/MinMax' */
  real_T Abs1;                         /* '<S510>/Abs1' */
  real_T Sum2;                         /* '<S510>/Sum2' */
  real_T Divide1;                      /* '<S511>/Divide1' */
  real_T Gain3;                        /* '<S511>/Gain3' */
  real_T Iq_ref;                       /* '<S511>/Sum3' */
  real_T Switch2;                      /* '<S511>/Switch2' */
  real_T Gain5;                        /* '<S511>/Gain5' */
  real_T Iq_ref_l;                     /* '<S511>/Sum6' */
  real_T Divide;                       /* '<S512>/Divide' */
  real_T Gain4;                        /* '<S512>/Gain4' */
  real_T Gain2;                        /* '<S512>/Gain2' */
  uint32_T PositionToCount;            /* '<S504>/PositionToCount' */
  uint32_T Delay;                      /* '<S504>/Delay' */
  real32_T RateLimiter;                /* '<S443>/Rate Limiter' */
  real32_T RateLimiter1;               /* '<S443>/Rate Limiter1' */
  real32_T Switch;                     /* '<S443>/Switch' */
  real32_T Constant2;                  /* '<S7>/Constant2' */
  real32_T Switch_i;                   /* '<S444>/Switch' */
  real32_T Product;                    /* '<S529>/Product' */
  real32_T UnitDelay;                  /* '<S529>/Unit Delay' */
  real32_T Product1;                   /* '<S529>/Product1' */
  real32_T Add1;                       /* '<S529>/Add1' */
  real32_T Sum;                        /* '<S442>/Sum' */
  real32_T PProdOut;                   /* '<S491>/PProd Out' */
  real32_T Ki2;                        /* '<S442>/Ki2' */
  real32_T Integrator;                 /* '<S486>/Integrator' */
  real32_T Sum_p;                      /* '<S495>/Sum' */
  real32_T DeadZone;                   /* '<S479>/DeadZone' */
  real32_T IProdOut;                   /* '<S483>/IProd Out' */
  real32_T Switch_in;                  /* '<S477>/Switch' */
  real32_T Saturation;                 /* '<S493>/Saturation' */
  real32_T Merge;                      /* '<S442>/Merge' */
  real32_T Unwrap;                     /* '<S447>/Unwrap' */
  real32_T DTC;                        /* '<S509>/DTC' */
  real32_T SpeedGain;                  /* '<S504>/SpeedGain' */
  real32_T Product_e;                  /* '<S507>/Product' */
  real32_T UnitDelay_e;                /* '<S507>/Unit Delay' */
  real32_T Product1_f;                 /* '<S507>/Product1' */
  real32_T Add1_p;                     /* '<S507>/Add1' */
  real32_T Gain2_g;                    /* '<S442>/Gain2' */
  real32_T Merge1;                     /* '<S442>/Merge1' */
  real32_T DataStoreRead;              /* '<S444>/Data Store Read' */
  real32_T Switch1;                    /* '<S444>/Switch1' */
  real32_T DiscreteTimeIntegrator1;    /* '<S512>/Discrete-Time Integrator1' */
  real32_T Sum_o;                      /* '<S510>/Sum' */
  real32_T Delay_j;                    /* '<S510>/Delay' */
  real32_T Sum1;                       /* '<S510>/Sum1' */
  real32_T Abs;                        /* '<S510>/Abs' */
  real32_T Abs2;                       /* '<S510>/Abs2' */
  real32_T Abs3;                       /* '<S511>/Abs3' */
  real32_T DiscreteTimeIntegrator2;    /* '<S511>/Discrete-Time Integrator2' */
  real32_T Product2;                   /* '<S511>/Product2' */
  real32_T Gain1_j;                    /* '<S511>/Gain1' */
  real32_T Product1_g;                 /* '<S511>/Product1' */
  real32_T Switch2_j;                  /* '<S513>/Switch2' */
  real32_T DiscreteTimeIntegrator;     /* '<S512>/Discrete-Time Integrator' */
  real32_T Switch_k;                   /* '<S520>/Switch' */
  real32_T Merge_p;                    /* '<S521>/Merge' */
  real32_T Numberofpolepairs;          /* '<S526>/Number of pole pairs' */
  real32_T Floor;                      /* '<S522>/Floor' */
  real32_T Add;                        /* '<S522>/Add' */
  real32_T Product_f;                  /* '<S512>/Product' */
  real32_T Switch2_k;                  /* '<S518>/Switch2' */
  real32_T Switch_ke;                  /* '<S518>/Switch' */
  real32_T Switch_ij;                  /* '<S513>/Switch' */
  int32_T SpeedCount;                  /* '<S504>/SpeedCount' */
  uint16_T Motor_State;                /* '<S442>/Chart' */
  int16_T Switch1_m;                   /* '<S477>/Switch1' */
  int16_T Switch2_j3;                  /* '<S477>/Switch2' */
  boolean_T DataStoreRead1;            /* '<S442>/Data Store Read1' */
  boolean_T DataStoreRead2;            /* '<S442>/Data Store Read2' */
  boolean_T AND;                       /* '<S442>/AND' */
  boolean_T DataStoreRead3;            /* '<S442>/Data Store Read3' */
  boolean_T UnitDelay_i;               /* '<S442>/Unit Delay' */
  boolean_T DataStoreRead1_e;          /* '<S444>/Data Store Read1' */
  boolean_T LogicalOperator;           /* '<S442>/Logical Operator' */
  boolean_T RelationalOperator;        /* '<S477>/Relational Operator' */
  boolean_T fixforDTpropagationissue;/* '<S477>/fix for DT propagation issue' */
  boolean_T fixforDTpropagationissue1;
                                    /* '<S477>/fix for DT propagation issue1' */
  boolean_T Equal1;                    /* '<S477>/Equal1' */
  boolean_T AND3;                      /* '<S477>/AND3' */
  boolean_T Merge2;                    /* '<S442>/Merge2' */
  boolean_T Switch_b;                  /* '<S510>/Switch' */
  boolean_T Switch1_l;                 /* '<S510>/Switch1' */
  boolean_T LogicalOperator_m;         /* '<S510>/Logical Operator' */
  boolean_T LogicalOperator2;          /* '<S510>/Logical Operator2' */
  boolean_T LowerRelop1;               /* '<S513>/LowerRelop1' */
  boolean_T LowerRelop1_c;             /* '<S518>/LowerRelop1' */
  boolean_T UpperRelop;                /* '<S518>/UpperRelop' */
  boolean_T UpperRelop_f;              /* '<S513>/UpperRelop' */
  rtB_atan2_mcb_pmsm_foc_sensorle atan2_o;/* '<S511>/atan2' */
} rtB_SpeedControl_mcb_pmsm_foc_s;

/* Block states (default storage) for system '<Root>/Speed Control' */
typedef struct {
  real_T Sum2_DWORK1;                  /* '<S510>/Sum2' */
  real32_T UnitDelay_DSTATE;           /* '<S529>/Unit Delay' */
  real32_T Integrator_DSTATE;          /* '<S486>/Integrator' */
  real32_T UnitDelay_DSTATE_h;         /* '<S507>/Unit Delay' */
  real32_T DiscreteTimeIntegrator1_DSTATE;/* '<S512>/Discrete-Time Integrator1' */
  real32_T Delay_DSTATE;               /* '<S510>/Delay' */
  real32_T DiscreteTimeIntegrator2_DSTATE;/* '<S511>/Discrete-Time Integrator2' */
  real32_T DiscreteTimeIntegrator_DSTATE;/* '<S512>/Discrete-Time Integrator' */
  uint32_T Delay_DSTATE_m[20];         /* '<S504>/Delay' */
  real32_T PrevY;                      /* '<S443>/Rate Limiter' */
  real32_T PrevY_d;                    /* '<S443>/Rate Limiter1' */
  real32_T Unwrap_Prev;                /* '<S447>/Unwrap' */
  real32_T Unwrap_Cumsum;              /* '<S447>/Unwrap' */
  int32_T SpeedCount_DWORK1;           /* '<S504>/SpeedCount' */
  uint16_T CircBufIdx;                 /* '<S504>/Delay' */
  uint16_T temporalCounter_i1;         /* '<S442>/Chart' */
  boolean_T UnitDelay_DSTATE_hl;       /* '<S442>/Unit Delay' */
  int16_T Integrator_PrevResetState;   /* '<S486>/Integrator' */
  uint16_T is_active_c3_mcb_pmsm_foc_senso;/* '<S442>/Chart' */
  uint16_T is_c3_mcb_pmsm_foc_sensorless_f;/* '<S442>/Chart' */
  boolean_T Unwrap_FirstStep;          /* '<S447>/Unwrap' */
} rtDW_SpeedControl_mcb_pmsm_foc_;

/* Block signals (default storage) */
typedef struct {
  real_T DiscretePulseGenerator;       /* '<S9>/Discrete Pulse Generator' */
  real_T Subtract;                     /* '<S9>/Subtract' */
  real_T Delay5[4];                    /* '<S1>/Delay5' */
  real_T CastToDouble;                 /* '<S10>/Cast To Double' */
  real_T CastToDouble1;                /* '<S10>/Cast To Double1' */
  real_T DataStoreRead;                /* '<S29>/Data Store Read' */
  real_T TmpSignalConversionAtSelectorIn[2];
  real_T Selector;                     /* '<S29>/Selector' */
  real_T TmpSignalConversionAtDelay5Inpo[4];
  real_T sqrt3_by_two;                 /* '<S172>/sqrt3_by_two' */
  real_T one_by_two;                   /* '<S172>/one_by_two' */
  real_T add_c;                        /* '<S172>/add_c' */
  real_T add_b;                        /* '<S172>/add_b' */
  real_T Min;                          /* '<S169>/Min' */
  real_T Max;                          /* '<S169>/Max' */
  real_T Add;                          /* '<S169>/Add' */
  real_T one_by_two_p;                 /* '<S169>/one_by_two' */
  real_T Add2;                         /* '<S168>/Add2' */
  real_T Add1;                         /* '<S168>/Add1' */
  real_T Add3;                         /* '<S168>/Add3' */
  real_T Gain[3];                      /* '<S168>/Gain' */
  real_T DiscreteTimeIntegrator1;      /* '<S371>/Discrete-Time Integrator1' */
  real_T Delay;                        /* '<S371>/Delay' */
  real_T Delay1;                       /* '<S370>/Delay1' */
  real_T Sum3;                         /* '<S370>/Sum3' */
  real_T Gain1;                        /* '<S370>/Gain1' */
  real_T u;                            /* '<S371>/Sum' */
  real_T DataStoreRead1;               /* '<S369>/Data Store Read1' */
  real_T Sign;                         /* '<S371>/Sign' */
  real_T Ibeta_h;                      /* '<S371>/Product' */
  real_T TrigonometricFunction2;       /* '<S371>/Trigonometric Function2' */
  real_T Product2;                     /* '<S371>/Product2' */
  real_T Delay1_l;                     /* '<S371>/Delay1' */
  real_T Delay_p;                      /* '<S370>/Delay' */
  real_T Sum2;                         /* '<S370>/Sum2' */
  real_T Gain_k;                       /* '<S370>/Gain' */
  real_T u_k;                          /* '<S371>/Sum3' */
  real_T Ialpha_h;                     /* '<S371>/Product1' */
  real_T TrigonometricFunction3;       /* '<S371>/Trigonometric Function3' */
  real_T Product3;                     /* '<S371>/Product3' */
  real_T Iq;                           /* '<S371>/Sum1' */
  real_T Kp;                           /* '<S372>/Kp' */
  real_T Ki;                           /* '<S372>/Discrete-Time Integrator1' */
  real_T Add1_j;                       /* '<S372>/Add1' */
  real_T Saturation;                   /* '<S372>/Saturation' */
  real_T DiscreteTransferFcn;          /* '<S371>/Discrete Transfer Fcn' */
  real_T wewm;                         /* '<S371>/we->wm' */
  real_T Ki_d;                         /* '<S372>/Ki' */
  real_T UnitDelay[4];                 /* '<S184>/Unit Delay' */
  real_T Cos1;                         /* '<S187>/Cos1' */
  real_T Gain1_m;                      /* '<S187>/Gain1' */
  real_T Cos;                          /* '<S187>/Cos' */
  real_T VectorConcatenate4[4];        /* '<S187>/Vector Concatenate4' */
  real_T Gain2;                        /* '<S187>/Gain2' */
  real_T VectorConcatenate1[4];        /* '<S187>/Vector Concatenate1' */
  real_T MatrixConcatenate[16];        /* '<S187>/Matrix Concatenate' */
  real_T MatrixMultiply[16];           /* '<S185>/Matrix Multiply' */
  real_T Add1_n[16];                   /* '<S185>/Add1' */
  real_T Delay_f[4];                   /* '<S184>/Delay' */
  real_T Delay1_k[16];                 /* '<S184>/Delay1' */
  real_T Delay2;                       /* '<S184>/Delay2' */
  real_T Delay3;                       /* '<S184>/Delay3' */
  real_T Delay4;                       /* '<S184>/Delay4' */
  real_T Delay5_e;                     /* '<S184>/Delay5' */
  real_T MatrixMultiply_l[16];         /* '<S190>/Matrix Multiply' */
  real_T Transpose[16];                /* '<S190>/Transpose' */
  real_T MatrixMultiply1[16];          /* '<S190>/Matrix Multiply1' */
  real_T Add_d[16];                    /* '<S190>/Add' */
  real_T MatrixMultiply_i[8];          /* '<S188>/Matrix Multiply' */
  real_T MatrixMultiply1_e[4];         /* '<S188>/Matrix Multiply1' */
  real_T Add_p[4];                     /* '<S188>/Add' */
  real_T Divide[8];                    /* '<S188>/Divide' */
  real_T MatrixMultiply1_l[16];        /* '<S189>/Matrix Multiply1' */
  real_T Add_j[16];                    /* '<S189>/Add' */
  real_T MatrixMultiply_o[16];         /* '<S189>/Matrix Multiply' */
  real_T VectorConcatenate[2];         /* '<S184>/Vector Concatenate' */
  real_T VectorConcatenate1_h[4];      /* '<S184>/Vector Concatenate1' */
  real_T VectorConcatenate2[2];        /* '<S184>/Vector Concatenate2' */
  real_T Gain_i;                       /* '<S193>/Gain' */
  real_T Gain1_o;                      /* '<S193>/Gain1' */
  real_T Cos1_o;                       /* '<S193>/Cos1' */
  real_T Product1;                     /* '<S193>/Product1' */
  real_T Gain2_e;                      /* '<S193>/Gain2' */
  real_T Gain3;                        /* '<S193>/Gain3' */
  real_T Cos_c;                        /* '<S193>/Cos' */
  real_T Product2_j;                   /* '<S193>/Product2' */
  real_T VectorConcatenate4_j[4];      /* '<S193>/Vector Concatenate4' */
  real_T MatrixMultiply1_er[4];        /* '<S192>/Matrix Multiply1' */
  real_T Add2_h[4];                    /* '<S192>/Add2' */
  real_T Gain_kv[4];                   /* '<S192>/Gain' */
  real_T Add1_h[4];                    /* '<S192>/Add1' */
  real_T MatrixMultiply1_f[2];         /* '<S191>/Matrix Multiply1' */
  real_T Add1_jz[2];                   /* '<S191>/Add1' */
  real_T MatrixMultiply_on[4];         /* '<S191>/Matrix Multiply' */
  real_T Add_l[4];                     /* '<S191>/Add' */
  real_T In1;                          /* '<S186>/In1' */
  real_T In2;                          /* '<S186>/In2' */
  real_T Delay_c[2];                   /* '<S195>/Delay' */
  real_T Gain_b;                       /* '<S200>/Gain' */
  real_T UnaryMinus;                   /* '<S208>/Unary Minus' */
  real_T Product1_i;                   /* '<S197>/Product1' */
  real_T Gain1_j;                      /* '<S207>/Gain1' */
  real_T Product2_g;                   /* '<S208>/Product2' */
  real_T Product;                      /* '<S197>/Product' */
  real_T Gain_m;                       /* '<S207>/Gain' */
  real_T Product_m;                    /* '<S208>/Product' */
  real_T Sum;                          /* '<S208>/Sum' */
  real_T Product1_j;                   /* '<S208>/Product1' */
  real_T Product3_l;                   /* '<S208>/Product3' */
  real_T Sum1;                         /* '<S208>/Sum1' */
  real_T Product3_n;                   /* '<S197>/Product3' */
  real_T Product1_o;                   /* '<S204>/Product1' */
  real_T Product2_i;                   /* '<S197>/Product2' */
  real_T Gain_f;                       /* '<S199>/Gain' */
  real_T Product3_i;                   /* '<S204>/Product3' */
  real_T Sum1_c;                       /* '<S204>/Sum1' */
  real_T Product1_ja;                  /* '<S203>/Product1' */
  real_T UnaryMinus_k;                 /* '<S203>/Unary Minus' */
  real_T UnaryMinus_g;                 /* '<S204>/Unary Minus' */
  real_T Product2_f;                   /* '<S204>/Product2' */
  real_T Product_e;                    /* '<S204>/Product' */
  real_T Sum_n;                        /* '<S204>/Sum' */
  real_T Product_d;                    /* '<S203>/Product' */
  real_T UnaryMinus_a;                 /* '<S205>/Unary Minus' */
  real_T Gain1_d;                      /* '<S202>/Gain1' */
  real_T UnaryMinus1;                  /* '<S202>/Unary Minus1' */
  real_T Product2_p;                   /* '<S205>/Product2' */
  real_T Gain_p;                       /* '<S202>/Gain' */
  real_T UnaryMinus_b;                 /* '<S202>/Unary Minus' */
  real_T Product_k;                    /* '<S205>/Product' */
  real_T Sum_f;                        /* '<S205>/Sum' */
  real_T Product1_g;                   /* '<S205>/Product1' */
  real_T Product3_p;                   /* '<S205>/Product3' */
  real_T Sum1_k;                       /* '<S205>/Sum1' */
  real_T UnaryMinus_a2;                /* '<S206>/Unary Minus' */
  real_T Product_o;                    /* '<S201>/Product' */
  real_T Product3_a;                   /* '<S201>/Product3' */
  real_T UnaryMinus1_c;                /* '<S201>/Unary Minus1' */
  real_T Product5;                     /* '<S201>/Product5' */
  real_T Sum1_h;                       /* '<S201>/Sum1' */
  real_T Product2_b;                   /* '<S206>/Product2' */
  real_T Product4;                     /* '<S201>/Product4' */
  real_T Product1_l;                   /* '<S201>/Product1' */
  real_T UnaryMinus_j;                 /* '<S201>/Unary Minus' */
  real_T Product2_d;                   /* '<S201>/Product2' */
  real_T Sum_b;                        /* '<S201>/Sum' */
  real_T Product_h;                    /* '<S206>/Product' */
  real_T Sum_k;                        /* '<S206>/Sum' */
  real_T Product1_b;                   /* '<S206>/Product1' */
  real_T Product3_c;                   /* '<S206>/Product3' */
  real_T Sum1_a;                       /* '<S206>/Sum1' */
  real_T Sum_ba[2];                    /* '<S199>/Sum' */
  real_T Sum_m[2];                     /* '<S195>/Sum' */
  real_T Gain1_mj[2];                  /* '<S195>/Gain1' */
  real_T Sum2_j[2];                    /* '<S195>/Sum2' */
  real_T Gain2_k[2];                   /* '<S195>/Gain2' */
  real_T Sum1_o[2];                    /* '<S195>/Sum1' */
  real_T Product_p[2];                 /* '<S194>/Product' */
  real_T Product_kb[2];                /* '<S211>/Product' */
  real_T UnitDelay_i[2];               /* '<S211>/Unit Delay' */
  real_T Product1_oy[2];               /* '<S211>/Product1' */
  real_T Add1_a[2];                    /* '<S211>/Add1' */
  real_T Merge;                        /* '<S212>/Merge' */
  real_T Merge1;                       /* '<S212>/Merge1' */
  real_T Merge_l[2];                   /* '<S221>/Merge' */
  real_T Product_f;                    /* '<S218>/Product' */
  real_T Product1_n;                   /* '<S218>/Product1' */
  real_T Sum_k0;                       /* '<S218>/Sum' */
  real_T Merge_p;                      /* '<S218>/Merge' */
  real_T Merge1_g;                     /* '<S218>/Merge1' */
  real_T Merge_i;                      /* '<S220>/Merge' */
  real_T Product_k3;                   /* '<S302>/Product' */
  real_T UnitDelay_ik;                 /* '<S302>/Unit Delay' */
  real_T Product1_ls;                  /* '<S302>/Product1' */
  real_T Add1_p;                       /* '<S302>/Add1' */
  real_T Delay_i;                      /* '<S326>/Delay' */
  real_T DataTypeConversion1;          /* '<S326>/Data Type Conversion1' */
  real_T Product_oz;                   /* '<S213>/Product' */
  real_T DataTypeConversion;           /* '<S326>/Data Type Conversion' */
  real_T Product1_m;                   /* '<S213>/Product1' */
  real_T Sum_mt;                       /* '<S213>/Sum' */
  real_T ProportionalGain;             /* '<S264>/Proportional Gain' */
  real_T IntegralGain;                 /* '<S256>/Integral Gain' */
  real_T Integrator;                   /* '<S259>/Integrator' */
  real_T Sum_o;                        /* '<S268>/Sum' */
  real_T speed;                        /* '<S213>/Sum1' */
  real_T Product_j;                    /* '<S225>/Product' */
  real_T UnitDelay_e;                  /* '<S225>/Unit Delay' */
  real_T Product1_p;                   /* '<S225>/Product1' */
  real_T Add1_l;                       /* '<S225>/Add1' */
  real_T Gain_b3;                      /* '<S326>/Gain' */
  real_T UnitDelay_g;                  /* '<S327>/Unit Delay' */
  real_T Add_k;                        /* '<S329>/Add' */
  real_T DataTypeConversion1_o;        /* '<S329>/Data Type Conversion1' */
  real_T Add1_lb;                      /* '<S329>/Add1' */
  real_T Input;                        /* '<S330>/Input' */
  real_T In1_o;                        /* '<S323>/In1' */
  real_T Delay2_l;                     /* '<S313>/Delay2' */
  real_T Delay3_a;                     /* '<S313>/Delay3' */
  real_T Product_ml;                   /* '<S322>/Product' */
  real_T UnitDelay_gc;                 /* '<S322>/Unit Delay' */
  real_T Product1_k;                   /* '<S322>/Product1' */
  real_T Add1_g;                       /* '<S322>/Add1' */
  real_T Gain_a;                       /* '<S313>/Gain' */
  real_T Sum1_p;                       /* '<S313>/Sum1' */
  real_T Gain1_p;                      /* '<S313>/Gain1' */
  real_T Delay2_h;                     /* '<S314>/Delay2' */
  real_T Delay3_h;                     /* '<S314>/Delay3' */
  real_T Product_fa;                   /* '<S319>/Product' */
  real_T UnitDelay_e3;                 /* '<S319>/Unit Delay' */
  real_T Product1_e;                   /* '<S319>/Product1' */
  real_T Add1_o;                       /* '<S319>/Add1' */
  real_T Gain_n;                       /* '<S314>/Gain' */
  real_T Sum1_ad;                      /* '<S314>/Sum1' */
  real_T Gain1_f;                      /* '<S314>/Gain1' */
  real_T Product_o0;                   /* '<S279>/Product' */
  real_T Product1_nd;                  /* '<S279>/Product1' */
  real_T Product_g;                    /* '<S312>/Product' */
  real_T UnitDelay_n;                  /* '<S312>/Unit Delay' */
  real_T Product1_m1;                  /* '<S312>/Product1' */
  real_T Add1_he;                      /* '<S312>/Add1' */
  real_T Delay1_b;                     /* '<S305>/Delay1' */
  real_T Sum_h;                        /* '<S305>/Sum' */
  real_T Gain1_g;                      /* '<S305>/Gain1' */
  real_T Delay_a;                      /* '<S305>/Delay' */
  real_T Gain2_p;                      /* '<S305>/Gain2' */
  real_T Sum1_m;                       /* '<S305>/Sum1' */
  real_T Product_g0;                   /* '<S278>/Product' */
  real_T Product_c;                    /* '<S309>/Product' */
  real_T UnitDelay_gt;                 /* '<S309>/Unit Delay' */
  real_T Product1_f;                   /* '<S309>/Product1' */
  real_T Add1_oz;                      /* '<S309>/Add1' */
  real_T Delay1_h;                     /* '<S306>/Delay1' */
  real_T Sum_n4;                       /* '<S306>/Sum' */
  real_T Gain1_pc;                     /* '<S306>/Gain1' */
  real_T Delay_l;                      /* '<S306>/Delay' */
  real_T Gain2_h;                      /* '<S306>/Gain2' */
  real_T Sum1_i;                       /* '<S306>/Sum1' */
  real_T Product1_nm;                  /* '<S278>/Product1' */
  real_T Sum_k2;                       /* '<S278>/Sum' */
  real_T MathFunction;                 /* '<S278>/Math Function' */
  real_T Abs;                          /* '<S278>/Abs' */
  real_T Delay2_g;                     /* '<S280>/Delay2' */
  real_T Delay3_l;                     /* '<S280>/Delay3' */
  real_T Product_b;                    /* '<S294>/Product' */
  real_T UnitDelay_k;                  /* '<S294>/Unit Delay' */
  real_T Product1_g1;                  /* '<S294>/Product1' */
  real_T Add1_m;                       /* '<S294>/Add1' */
  real_T Gain_e;                       /* '<S280>/Gain' */
  real_T Sum1_id;                      /* '<S280>/Sum1' */
  real_T Gain1_pv;                     /* '<S280>/Gain1' */
  real_T Delay2_lv;                    /* '<S281>/Delay2' */
  real_T Delay3_n;                     /* '<S281>/Delay3' */
  real_T Product_ck;                   /* '<S288>/Product' */
  real_T UnitDelay_nf;                 /* '<S288>/Unit Delay' */
  real_T Product1_kb;                  /* '<S288>/Product1' */
  real_T Add1_h3;                      /* '<S288>/Add1' */
  real_T Gain_c;                       /* '<S281>/Gain' */
  real_T Sum1_l;                       /* '<S281>/Sum1' */
  real_T Gain1_i;                      /* '<S281>/Gain1' */
  real_T Delay_n;                      /* '<S285>/Delay' */
  real_T Delay1_p;                     /* '<S285>/Delay1' */
  real_T Switch1;                      /* '<S285>/Switch1' */
  real_T Product_hj;                   /* '<S291>/Product' */
  real_T UnitDelay_d;                  /* '<S291>/Unit Delay' */
  real_T Product1_m5;                  /* '<S291>/Product1' */
  real_T Add1_k;                       /* '<S291>/Add1' */
  real_T Square;                       /* '<S276>/Square' */
  real_T Square1;                      /* '<S276>/Square1' */
  real_T Sum2_m;                       /* '<S276>/Sum2' */
  real_T Sqrt;                         /* '<S276>/Sqrt' */
  real_T UnaryMinus_i;                 /* '<S276>/Unary Minus' */
  real_T Sum_l;                        /* '<S285>/Sum' */
  real_T Sqrt_b;                       /* '<S227>/Sqrt' */
  real_T Divide_j;                     /* '<S227>/Divide' */
  real_T Divide1;                      /* '<S227>/Divide1' */
  real_T Product_ep[4];                /* '<S343>/Product' */
  real_T UnitDelay_h[4];               /* '<S343>/Unit Delay' */
  real_T Product1_h[4];                /* '<S343>/Product1' */
  real_T Add1_n1[4];                   /* '<S343>/Add1' */
  real_T Sum6[4];                      /* '<S336>/Sum6' */
  real_T ScalingR;                     /* '<S360>/ScalingR' */
  real_T Sum3_b;                       /* '<S357>/Sum3' */
  real_T Delay1_px;                    /* '<S359>/Delay1' */
  real_T Sum_mm;                       /* '<S359>/Sum' */
  real_T Gain1_k;                      /* '<S359>/Gain1' */
  real_T Delay_no;                     /* '<S359>/Delay' */
  real_T Gain2_ev;                     /* '<S359>/Gain2' */
  real_T Sum1_on;                      /* '<S359>/Sum1' */
  real_T ScalingL;                     /* '<S360>/ScalingL' */
  real_T Sum1_j;                       /* '<S357>/Sum1' */
  real_T Product_en;                   /* '<S363>/Product' */
  real_T UnitDelay_er;                 /* '<S363>/Unit Delay' */
  real_T Product1_p3;                  /* '<S363>/Product1' */
  real_T Add1_d;                       /* '<S363>/Add1' */
  real_T Switch;                       /* '<S357>/Switch' */
  real_T ScalingR_g;                   /* '<S353>/ScalingR' */
  real_T Sum3_d;                       /* '<S350>/Sum3' */
  real_T Delay1_j;                     /* '<S352>/Delay1' */
  real_T Sum_c;                        /* '<S352>/Sum' */
  real_T Gain1_k1;                     /* '<S352>/Gain1' */
  real_T Delay_b;                      /* '<S352>/Delay' */
  real_T Gain2_j;                      /* '<S352>/Gain2' */
  real_T Sum1_co;                      /* '<S352>/Sum1' */
  real_T ScalingL_e;                   /* '<S353>/ScalingL' */
  real_T Sum1_f;                       /* '<S350>/Sum1' */
  real_T Product_jy;                   /* '<S356>/Product' */
  real_T UnitDelay_m;                  /* '<S356>/Unit Delay' */
  real_T Product1_kt;                  /* '<S356>/Product1' */
  real_T Add1_ah;                      /* '<S356>/Add1' */
  real_T Switch_i;                     /* '<S350>/Switch' */
  real_T Sum_i;                        /* '<S362>/Sum' */
  real_T Sum_bi;                       /* '<S355>/Sum' */
  real_T UnitDelay1;                   /* '<S385>/Unit Delay1' */
  real_T UnitDelay_b;                  /* '<S385>/Unit Delay' */
  real_T a;                            /* '<S385>/a' */
  real_T Delay_g;                      /* '<S375>/Delay' */
  real_T Sum2_p;                       /* '<S375>/Sum2' */
  real_T Sum3_g;                       /* '<S385>/Sum3' */
  real_T b_invg;                       /* '<S385>/b_inv*g' */
  real_T Delay1_i;                     /* '<S385>/Delay1' */
  real_T Sum4;                         /* '<S385>/Sum4' */
  real_T Product_c4;                   /* '<S389>/Product' */
  real_T UnitDelay_o;                  /* '<S389>/Unit Delay' */
  real_T Product1_ei;                  /* '<S389>/Product1' */
  real_T Add1_km;                      /* '<S389>/Add1' */
  real_T UnitDelay1_k;                 /* '<S386>/Unit Delay1' */
  real_T UnitDelay_ev;                 /* '<S386>/Unit Delay' */
  real_T a_g;                          /* '<S386>/a' */
  real_T Delay_cd;                     /* '<S376>/Delay' */
  real_T Sum2_b;                       /* '<S376>/Sum2' */
  real_T Sum3_n;                       /* '<S386>/Sum3' */
  real_T b_invg_n;                     /* '<S386>/b_inv*g' */
  real_T Delay1_n;                     /* '<S386>/Delay1' */
  real_T Sum4_g;                       /* '<S386>/Sum4' */
  real_T Product_ed;                   /* '<S392>/Product' */
  real_T UnitDelay_l;                  /* '<S392>/Unit Delay' */
  real_T Product1_m1j;                 /* '<S392>/Product1' */
  real_T Add1_i;                       /* '<S392>/Add1' */
  real_T Merge_l1;                     /* '<S374>/Merge' */
  real_T Merge1_e;                     /* '<S374>/Merge1' */
  real_T Sign_b;                       /* '<S375>/Sign' */
  real_T Eta;                          /* '<S375>/Eta' */
  real_T Sum_i4;                       /* '<S375>/Sum' */
  real_T b;                            /* '<S375>/b' */
  real_T a_o;                          /* '<S375>/a' */
  real_T Sum1_c0;                      /* '<S375>/Sum1' */
  real_T Sign_m;                       /* '<S376>/Sign' */
  real_T Eta_e;                        /* '<S376>/Eta' */
  real_T Sum_iv;                       /* '<S376>/Sum' */
  real_T b_n;                          /* '<S376>/b' */
  real_T a_gy;                         /* '<S376>/a' */
  real_T Sum1_hy;                      /* '<S376>/Sum1' */
  real_T Product_cp;                   /* '<S381>/Product' */
  real_T Product2_m;                   /* '<S381>/Product2' */
  real_T Sum1_h1;                      /* '<S381>/Sum1' */
  real_T Product1_fi;                  /* '<S381>/Product1' */
  real_T Product3_pb;                  /* '<S381>/Product3' */
  real_T Sum2_k;                       /* '<S381>/Sum2' */
  real_T Switch_l;                     /* '<S381>/Switch' */
  real_T DataTypeConversion_d;         /* '<S398>/Data Type Conversion' */
  real_T Switch_ia;                    /* '<S398>/Switch' */
  real_T algDD;
  real_T Gain_nd;                      /* '<S399>/Gain' */
  real_T Switch_b;                     /* '<S399>/Switch' */
  real_T Bias;                         /* '<S399>/Bias' */
  real_T Bias_e;                       /* '<S381>/Bias' */
  real_T Switch_ih[2];                 /* '<S153>/Switch' */
  real_T algDD_o1;
  real_T algDD_o2;
  uint32_T Sum_nh[4];                  /* '<S159>/Sum' */
  uint32_T DataStoreRead1_e;           /* '<S29>/Data Store Read1' */
  uint32_T MultiportSwitch;            /* '<S29>/Multiport Switch' */
  uint32_T Sum_ke[4];                  /* '<S146>/Sum' */
  uint32_T DataStoreRead_i;            /* '<S175>/Data Store Read' */
  uint32_T BytePack[2];                /* '<S405>/Byte Pack' */
  uint32_T SCI_Tx_Data[3];             /* '<S403>/Merge' */
  uint32_T SCI_Tx_Iteration;           /* '<S403>/Merge1' */
  uint32_T IndexVector;                /* '<S404>/Index Vector' */
  uint32_T Add_c;                      /* '<S404>/Add' */
  uint32_T Data[2];                    /* '<S407>/Data' */
  uint32_T Data_f[2];                  /* '<S408>/Data' */
  uint32_T Data_fw[2];                 /* '<S409>/Data' */
  uint32_T DataTypeConversion_j;       /* '<S221>/Data Type Conversion' */
  uint32_T Sum_p[4];                   /* '<S328>/Sum' */
  uint32_T PositionToCount;            /* '<S339>/PositionToCount' */
  uint32_T Delay_d;                    /* '<S339>/Delay' */
  uint32_T PositionToCount_e;          /* '<S380>/PositionToCount' */
  uint32_T Delay_py;                   /* '<S380>/Delay' */
  real32_T RT_f;                       /* '<Root>/RT' */
  real32_T RT3;                        /* '<Root>/RT3' */
  real32_T RT5;                        /* '<Root>/RT5' */
  real32_T RT2[2];                     /* '<Root>/RT2' */
  real32_T RT6;                        /* '<Root>/RT6' */
  real32_T RT7;                        /* '<Root>/RT7' */
  real32_T pu;                         /* '<S8>/MATLAB Function' */
  real32_T SCIReceive[2];              /* '<S441>/SCI Receive' */
  real32_T DataStoreRead_h;            /* '<S21>/Data Store Read' */
  real32_T Abs_d;                      /* '<S21>/Abs' */
  real32_T Gain_k0;                    /* '<S21>/Gain' */
  real32_T UnitDelay_p;                /* '<S154>/Unit Delay' */
  real32_T Merge_a[2];                 /* '<S175>/Merge' */
  real32_T Sum_lw;                     /* '<S175>/Sum' */
  real32_T Saturation_g;               /* '<S175>/Saturation' */
  real32_T Yk1;                        /* '<S183>/UD' */
  real32_T Yk1Uk;                      /* '<S183>/Diff' */
  real32_T PoleYk1Uk;                  /* '<S183>/Gain' */
  real32_T Sum_mb;                     /* '<S183>/Sum' */
  real32_T Merge_b;                    /* '<S17>/Merge' */
  real32_T Switch_ial;                 /* '<S21>/Switch' */
  real32_T GetADCVoltage[2];           /* '<S177>/Get ADC Voltage' */
  real32_T GetCurrents[2];             /* '<S177>/Get Currents' */
  real32_T PU_Conversion[2];           /* '<S177>/PU_Conversion' */
  real32_T Merge_az;                   /* '<S161>/Merge' */
  real32_T indexing;                   /* '<S159>/indexing' */
  real32_T Lookup[4];                  /* '<S159>/Lookup' */
  real32_T Sum3_e;                     /* '<S160>/Sum3' */
  real32_T DataTypeConversion1_i;      /* '<S159>/Data Type Conversion1' */
  real32_T Sum2_e;                     /* '<S159>/Sum2' */
  real32_T Product_gs;                 /* '<S160>/Product' */
  real32_T Sum4_d;                     /* '<S160>/Sum4' */
  real32_T Sum5;                       /* '<S160>/Sum5' */
  real32_T Product1_c;                 /* '<S160>/Product1' */
  real32_T Sum6_g;                     /* '<S160>/Sum6' */
  real32_T Sum_g;                      /* '<S28>/Sum' */
  real32_T PProdOut;                   /* '<S134>/PProd Out' */
  real32_T UnitDelay_c;                /* '<S28>/Unit Delay' */
  real32_T Integrator_h;               /* '<S129>/Integrator' */
  real32_T Sum_l5;                     /* '<S138>/Sum' */
  real32_T Switch_h;                   /* '<S28>/Switch' */
  real32_T Sum_km;                     /* '<S27>/Sum' */
  real32_T PProdOut_a;                 /* '<S83>/PProd Out' */
  real32_T UnitDelay_mw;               /* '<S27>/Unit Delay' */
  real32_T Integrator_c;               /* '<S78>/Integrator' */
  real32_T Sum_kn;                     /* '<S87>/Sum' */
  real32_T Switch_lw;                  /* '<S27>/Switch' */
  real32_T Sum_e;                      /* '<S29>/Sum' */
  real32_T Switch_f;                   /* '<S32>/Switch' */
  real32_T Product_bp;                 /* '<S32>/Product' */
  real32_T Product_kt;                 /* '<S33>/Product' */
  real32_T Product1_no;                /* '<S33>/Product1' */
  real32_T Sum1_mh;                    /* '<S33>/Sum1' */
  real32_T Merge_e[2];                 /* '<S26>/Merge' */
  real32_T Merge_pu;                   /* '<S149>/Merge' */
  real32_T indexing_g;                 /* '<S146>/indexing' */
  real32_T Lookup_k[4];                /* '<S146>/Lookup' */
  real32_T Sum3_j;                     /* '<S148>/Sum3' */
  real32_T DataTypeConversion1_m;      /* '<S146>/Data Type Conversion1' */
  real32_T Sum2_a;                     /* '<S146>/Sum2' */
  real32_T Product_mz;                 /* '<S148>/Product' */
  real32_T Sum4_f;                     /* '<S148>/Sum4' */
  real32_T Sum5_g;                     /* '<S148>/Sum5' */
  real32_T Product1_d;                 /* '<S148>/Product1' */
  real32_T Sum6_f;                     /* '<S148>/Sum6' */
  real32_T DeadZone;                   /* '<S71>/DeadZone' */
  real32_T IProdOut;                   /* '<S75>/IProd Out' */
  real32_T Switch_fm;                  /* '<S69>/Switch' */
  real32_T DeadZone_d;                 /* '<S122>/DeadZone' */
  real32_T IProdOut_h;                 /* '<S126>/IProd Out' */
  real32_T Switch_m;                   /* '<S120>/Switch' */
  real32_T DataStoreRead1_p;           /* '<S11>/Data Store Read1' */
  real32_T Merge1_h;                   /* '<S17>/Merge1' */
  real32_T CastToSingle;               /* '<S11>/Cast To Single' */
  real32_T TmpSignalConversionAtSelector_j[15];
  real32_T Selector_o[2];              /* '<S11>/Selector' */
  real32_T DataTypeConversion_c;       /* '<S15>/Data Type Conversion' */
  real32_T Switch_p;                   /* '<S400>/Switch' */
  real32_T CastToSingle_h[3];          /* '<S10>/Cast To Single' */
  real32_T One_by_Two[3];              /* '<S15>/One_by_Two' */
  real32_T PWM_Duty_Cycles[3];         /* '<S15>/Sum' */
  real32_T Delay1_e;                   /* '<S194>/Delay1' */
  real32_T DataTypeConversion3;        /* '<S326>/Data Type Conversion3' */
  real32_T Merge_h;                    /* '<S332>/Merge' */
  real32_T indexing_i;                 /* '<S328>/indexing' */
  real32_T Lookup_a[4];                /* '<S328>/Lookup' */
  real32_T Sum5_h;                     /* '<S331>/Sum5' */
  real32_T DataTypeConversion1_c;      /* '<S328>/Data Type Conversion1' */
  real32_T Sum2_kx;                    /* '<S328>/Sum2' */
  real32_T Product1_er;                /* '<S331>/Product1' */
  real32_T Sum6_l;                     /* '<S331>/Sum6' */
  real32_T Sum3_c;                     /* '<S331>/Sum3' */
  real32_T Product_cj;                 /* '<S331>/Product' */
  real32_T Sum4_m;                     /* '<S331>/Sum4' */
  real32_T FreqGain;                   /* '<S213>/FreqGain' */
  real32_T PositionGain;               /* '<S337>/PositionGain' */
  real32_T DTC;                        /* '<S368>/DTC' */
  real32_T SpeedGain;                  /* '<S339>/SpeedGain' */
  real32_T Product_i;                  /* '<S366>/Product' */
  real32_T UnitDelay_my;               /* '<S366>/Unit Delay' */
  real32_T Product1_hz;                /* '<S366>/Product1' */
  real32_T Add1_k1;                    /* '<S366>/Add1' */
  real32_T elect2mech;                 /* '<S180>/elect2mech' */
  real32_T Delay_fd;                   /* '<S373>/Delay' */
  real32_T DTC_c;                      /* '<S397>/DTC' */
  real32_T SpeedGain_h;                /* '<S380>/SpeedGain' */
  real32_T Product_my;                 /* '<S395>/Product' */
  real32_T UnitDelay_gq;               /* '<S395>/Unit Delay' */
  real32_T Product1_mm;                /* '<S395>/Product1' */
  real32_T Add1_c;                     /* '<S395>/Add1' */
  real32_T DataTypeConversion1_mf;     /* '<S398>/Data Type Conversion1' */
  real32_T DataTypeConversion2;        /* '<S398>/Data Type Conversion2' */
  real32_T Atan2;                      /* '<S398>/Atan2' */
  real32_T acos_k;                     /* '<S158>/acos' */
  real32_T bsin;                       /* '<S158>/bsin' */
  real32_T sum_Ds;                     /* '<S158>/sum_Ds' */
  real32_T bcos;                       /* '<S158>/bcos' */
  real32_T asin_e;                     /* '<S158>/asin' */
  real32_T sum_Qs;                     /* '<S158>/sum_Qs' */
  real32_T Switch_o[2];                /* '<S165>/Switch' */
  real32_T algDD_o1_h;
  real32_T algDD_o2_h;
  real32_T Add_o;                      /* '<S155>/Add' */
  real32_T DataTypeConversion1_j;      /* '<S155>/Data Type Conversion1' */
  real32_T Add1_gv;                    /* '<S155>/Add1' */
  real32_T Input_h;                    /* '<S156>/Input' */
  real32_T qcos;                       /* '<S147>/qcos' */
  real32_T dsin;                       /* '<S147>/dsin' */
  real32_T sum_beta;                   /* '<S147>/sum_beta' */
  real32_T dcos;                       /* '<S147>/dcos' */
  real32_T qsin;                       /* '<S147>/qsin' */
  real32_T sum_alpha;                  /* '<S147>/sum_alpha' */
  real32_T Unary_Minus;                /* '<S153>/Unary_Minus' */
  real32_T Saturation_gt;              /* '<S136>/Saturation' */
  real32_T Vd_OpenLoop;                /* '<S27>/Vd_OpenLoop' */
  real32_T Abs_f;                      /* '<S27>/Abs' */
  real32_T Saturation_h;               /* '<S27>/Saturation' */
  real32_T Saturation_i;               /* '<S85>/Saturation' */
  real32_T Product_l[2];               /* '<S34>/Product' */
  real32_T SquareRoot;                 /* '<S34>/Square Root' */
  real32_T Switch_a;                   /* '<S34>/Switch' */
  real32_T Reciprocal;                 /* '<S34>/Reciprocal' */
  real32_T Switch_fu[2];               /* '<S31>/Switch' */
  real32_T Switch2;                    /* '<S41>/Switch2' */
  real32_T Product_dh;                 /* '<S40>/Product' */
  real32_T Sum_nt;                     /* '<S40>/Sum' */
  real32_T Product2_l;                 /* '<S40>/Product2' */
  real32_T Merge_g;                    /* '<S40>/Merge' */
  real32_T Gain_d;                     /* '<S40>/Gain' */
  real32_T Switch_ps;                  /* '<S41>/Switch' */
  real32_T Switch1_n;                  /* '<S42>/Switch1' */
  real32_T Sqrt_b5;                    /* '<S42>/Sqrt' */
  real32_T Gain_du;                    /* '<S42>/Gain' */
  real32_T a_plus_2b;                  /* '<S25>/a_plus_2b' */
  real32_T one_by_sqrt3;               /* '<S25>/one_by_sqrt3' */
  real32_T algDD_o1_n;
  real32_T algDD_o2_e;
  int32_T DataTypeConversion_jn[2];    /* '<S174>/Data Type Conversion' */
  int32_T Add_pu[2];                   /* '<S174>/Add' */
  int32_T SpeedCount;                  /* '<S339>/SpeedCount' */
  int32_T SpeedCount_h;                /* '<S380>/SpeedCount' */
  uint16_T RT8;                        /* '<Root>/RT8' */
  uint16_T Switch_e;                   /* '<S424>/Switch' */
  uint16_T Divide_p;                   /* '<S423>/Divide' */
  uint16_T Divide1_l;                  /* '<S423>/Divide1' */
  uint16_T ForIterator;                /* '<S426>/For Iterator' */
  uint16_T ADC_B2;                     /* '<S426>/ADC_B2' */
  uint16_T ADC_C2;                     /* '<S426>/ADC_C2' */
  uint16_T Memory;                     /* '<S431>/Memory' */
  uint16_T Sum_ij;                     /* '<S431>/Sum' */
  uint16_T Memory1;                    /* '<S431>/Memory1' */
  uint16_T Sum1_jw;                    /* '<S431>/Sum1' */
  uint16_T DataTypeConversion2_b;      /* '<S439>/Data Type Conversion2' */
  uint16_T BitwiseOperator;            /* '<S438>/Bitwise Operator' */
  uint16_T BitwiseOperator1;           /* '<S438>/Bitwise Operator1' */
  uint16_T ShiftArithmetic1;           /* '<S438>/Shift Arithmetic1' */
  uint16_T Switch2_c;                  /* '<S21>/Switch2' */
  uint16_T DataStoreRead1_f;           /* '<S174>/Data Store Read1' */
  uint16_T DataStoreRead2;             /* '<S174>/Data Store Read2' */
  uint16_T ADC_C_IN2;                  /* '<S173>/ADC_C_IN2' */
  uint16_T ADC_B_IN2;                  /* '<S173>/ADC_B_IN2' */
  uint16_T Switch1_h;                  /* '<S32>/Switch1' */
  uint16_T DataTypeConversion_f;       /* '<S161>/Data Type Conversion' */
  uint16_T Get_Integer;                /* '<S159>/Get_Integer' */
  uint16_T DataTypeConversion_l;       /* '<S149>/Data Type Conversion' */
  uint16_T Get_Integer_o;              /* '<S146>/Get_Integer' */
  uint16_T Output;                     /* '<S406>/Output' */
  uint16_T DataStoreRead_o;            /* '<S11>/Data Store Read' */
  uint16_T MultiportSwitch_n[2];       /* '<S11>/Multiport Switch' */
  uint16_T FixPtSum1;                  /* '<S410>/FixPt Sum1' */
  uint16_T FixPtSwitch;                /* '<S411>/FixPt Switch' */
  uint16_T Switch1_nh[3];              /* '<S400>/Switch1' */
  uint16_T Scale_to_PWM_Counter_PRD[3];/* '<S400>/Scale_to_PWM_Counter_PRD' */
  uint16_T DataTypeConversion_b;       /* '<S332>/Data Type Conversion' */
  uint16_T Get_Integer_n;              /* '<S328>/Get_Integer' */
  uint16_T DataTypeConversion_m;       /* '<S30>/Data Type Conversion' */
  uint16_T DataTypeConversion_e;       /* '<S40>/Data Type Conversion' */
  int16_T WhileIterator;               /* '<S404>/While Iterator' */
  int16_T DataTypeConversion_jm;       /* '<S329>/Data Type Conversion' */
  int16_T DataTypeConversion_a;        /* '<S155>/Data Type Conversion' */
  int16_T Switch1_m;                   /* '<S69>/Switch1' */
  int16_T Switch2_p;                   /* '<S69>/Switch2' */
  int16_T Switch1_l;                   /* '<S120>/Switch1' */
  int16_T Switch2_k;                   /* '<S120>/Switch2' */
  boolean_T RT14;                      /* '<Root>/RT14' */
  boolean_T InitTrigger;               /* '<Root>/InitTrigger' */
  boolean_T NOT;                       /* '<S422>/NOT' */
  boolean_T DataTypeConversion3_m;     /* '<S438>/Data Type Conversion3' */
  boolean_T DataTypeConversion_o;      /* '<S21>/Data Type Conversion' */
  boolean_T NOT_f;                     /* '<S154>/NOT' */
  boolean_T Compare;                   /* '<S162>/Compare' */
  boolean_T DataStoreRead1_h;          /* '<S28>/Data Store Read1' */
  boolean_T LogicalOperator;           /* '<S28>/Logical Operator' */
  boolean_T DataStoreRead1_o;          /* '<S27>/Data Store Read1' */
  boolean_T LogicalOperator_n;         /* '<S27>/Logical Operator' */
  boolean_T Compare_p;                 /* '<S150>/Compare' */
  boolean_T RelationalOperator;        /* '<S69>/Relational Operator' */
  boolean_T fixforDTpropagationissue; /* '<S69>/fix for DT propagation issue' */
  boolean_T fixforDTpropagationissue1;
                                     /* '<S69>/fix for DT propagation issue1' */
  boolean_T Equal1;                    /* '<S69>/Equal1' */
  boolean_T AND3;                      /* '<S69>/AND3' */
  boolean_T RelationalOperator_c;      /* '<S120>/Relational Operator' */
  boolean_T fixforDTpropagationissue_p;
                                     /* '<S120>/fix for DT propagation issue' */
  boolean_T fixforDTpropagationissue1_o;
                                    /* '<S120>/fix for DT propagation issue1' */
  boolean_T Equal1_b;                  /* '<S120>/Equal1' */
  boolean_T AND3_b;                    /* '<S120>/AND3' */
  boolean_T Enable;                    /* '<S15>/Enable' */
  boolean_T DataStoreRead1_i;          /* '<S181>/Data Store Read1' */
  boolean_T DataStoreRead1_hm;         /* '<S178>/Data Store Read1' */
  boolean_T LogicalOperator_na;        /* '<S178>/Logical Operator' */
  boolean_T DataStoreRead1_c;          /* '<S179>/Data Store Read1' */
  boolean_T LogicalOperator_g;         /* '<S179>/Logical Operator' */
  boolean_T AlphaRelay;                /* '<S212>/AlphaRelay' */
  boolean_T BetaRelay;                 /* '<S212>/BetaRelay' */
  boolean_T CastToBoolean;             /* '<S218>/Cast To Boolean' */
  boolean_T Compare_h;                 /* '<S333>/Compare' */
  boolean_T NOT_fg;                    /* '<S327>/NOT' */
  boolean_T Delay_p3;                  /* '<S329>/Delay' */
  boolean_T Compare_g;                 /* '<S296>/Compare' */
  boolean_T Compare_e;                 /* '<S298>/Compare' */
  boolean_T Compare_k;                 /* '<S295>/Compare' */
  boolean_T LogicalOperator1;          /* '<S285>/Logical Operator1' */
  boolean_T Compare_gv;                /* '<S299>/Compare' */
  boolean_T LogicalOperator2;          /* '<S285>/Logical Operator2' */
  boolean_T AND;                       /* '<S285>/AND' */
  boolean_T UnitDelay_o1;              /* '<S285>/Unit Delay' */
  boolean_T Switch_j;                  /* '<S285>/Switch' */
  boolean_T Compare_l;                 /* '<S297>/Compare' */
  boolean_T LogicalOperator_b;         /* '<S285>/Logical Operator' */
  boolean_T DataStoreRead1_fm;         /* '<S180>/Data Store Read1' */
  boolean_T LogicalOperator_j;         /* '<S180>/Logical Operator' */
  boolean_T DataStoreRead1_ha;         /* '<S182>/Data Store Read1' */
  boolean_T LogicalOperator_go;        /* '<S182>/Logical Operator' */
  boolean_T AlphaRelay_l;              /* '<S374>/AlphaRelay' */
  boolean_T BetaRelay_l;               /* '<S374>/BetaRelay' */
  boolean_T Delay_fv;                  /* '<S155>/Delay' */
  boolean_T RelationalOperator_e;      /* '<S30>/Relational Operator' */
  boolean_T Compare_ee;                /* '<S36>/Compare' */
  boolean_T Compare_ga;                /* '<S37>/Compare' */
  boolean_T LowerRelop1;               /* '<S41>/LowerRelop1' */
  boolean_T RelationalOperator_h;      /* '<S40>/Relational Operator' */
  boolean_T UpperRelop;                /* '<S41>/UpperRelop' */
  rtB_SpeedControl_mcb_pmsm_foc_s SpeedControl;/* '<Root>/Speed Control' */
  rtB_SPIMasterTransfer_mcb_pmsm_ SPIMasterTransfer1;/* '<S432>/SPI Master Transfer' */
  rtB_SPIMasterTransfer_mcb_pmsm_ SPIMasterTransfer;/* '<S432>/SPI Master Transfer' */
  rtB_IfActionSubsystem1_mcb_pmsm IfActionSubsystem1_f;/* '<S332>/If Action Subsystem1' */
  rtB_IfActionSubsystem_mcb_pmsm_ IfActionSubsystem_f;/* '<S332>/If Action Subsystem' */
  rtB_Dir_Sense_mcb_pmsm_foc_sens Dir_Sense_d;/* '<S212>/Dir_Sense' */
  rtB_atan2_mcb_pmsm_foc_sensorle atan2_f;/* '<S347>/atan2' */
  rtB_Dir_Sense_mcb_pmsm_foc_sens Dir_Sense;/* '<S374>/Dir_Sense' */
  rtB_IfActionSubsystem1_mcb_pmsm IfActionSubsystem1_n;/* '<S161>/If Action Subsystem1' */
  rtB_IfActionSubsystem_mcb_pmsm_ IfActionSubsystem_i;/* '<S161>/If Action Subsystem' */
  rtB_IfActionSubsystem1_mcb_pmsm IfActionSubsystem1;/* '<S149>/If Action Subsystem1' */
  rtB_IfActionSubsystem_mcb_pmsm_ IfActionSubsystem;/* '<S149>/If Action Subsystem' */
} BlockIO_mcb_pmsm_foc_sensorless;

/* Block states (default storage) for system '<Root>' */
typedef struct {
  real_T Delay5_DSTATE[4];             /* '<S1>/Delay5' */
  real_T DiscreteTimeIntegrator1_DSTATE;/* '<S371>/Discrete-Time Integrator1' */
  real_T DiscreteTimeIntegrator1_DSTAT_k;/* '<S372>/Discrete-Time Integrator1' */
  real_T DiscreteTransferFcn_states;   /* '<S371>/Discrete Transfer Fcn' */
  real_T UnitDelay_DSTATE[4];          /* '<S184>/Unit Delay' */
  real_T Delay_DSTATE_m[2];            /* '<S195>/Delay' */
  real_T UnitDelay_DSTATE_j[2];        /* '<S211>/Unit Delay' */
  real_T UnitDelay_DSTATE_i;           /* '<S302>/Unit Delay' */
  real_T Delay_DSTATE_n;               /* '<S326>/Delay' */
  real_T Integrator_DSTATE;            /* '<S259>/Integrator' */
  real_T UnitDelay_DSTATE_l;           /* '<S225>/Unit Delay' */
  real_T UnitDelay_DSTATE_f;           /* '<S327>/Unit Delay' */
  real_T Delay2_DSTATE_k;              /* '<S313>/Delay2' */
  real_T Delay3_DSTATE_l;              /* '<S313>/Delay3' */
  real_T UnitDelay_DSTATE_m;           /* '<S322>/Unit Delay' */
  real_T Delay2_DSTATE_p;              /* '<S314>/Delay2' */
  real_T Delay3_DSTATE_g;              /* '<S314>/Delay3' */
  real_T UnitDelay_DSTATE_fz;          /* '<S319>/Unit Delay' */
  real_T Delay1_DSTATE_k;              /* '<S305>/Delay1' */
  real_T Delay_DSTATE_l;               /* '<S305>/Delay' */
  real_T Delay1_DSTATE_f;              /* '<S306>/Delay1' */
  real_T Delay_DSTATE_k;               /* '<S306>/Delay' */
  real_T Delay2_DSTATE_m;              /* '<S280>/Delay2' */
  real_T Delay3_DSTATE_p;              /* '<S280>/Delay3' */
  real_T Delay2_DSTATE_kc;             /* '<S281>/Delay2' */
  real_T Delay3_DSTATE_gs;             /* '<S281>/Delay3' */
  real_T Delay1_DSTATE_h;              /* '<S359>/Delay1' */
  real_T Delay_DSTATE_lq;              /* '<S359>/Delay' */
  real_T Delay1_DSTATE_p;              /* '<S352>/Delay1' */
  real_T Delay_DSTATE_ka;              /* '<S352>/Delay' */
  real_T Delay_DSTATE_kar;             /* '<S375>/Delay' */
  real_T Delay1_DSTATE_m;              /* '<S385>/Delay1' */
  real_T Delay_DSTATE_kb;              /* '<S376>/Delay' */
  real_T Delay1_DSTATE_e;              /* '<S386>/Delay1' */
  real_T Udh;                          /* '<Root>/Data Store Memory7' */
  real_T theta;                        /* '<S8>/MATLAB Function' */
  real_T Sum_DWORK1;                   /* '<S29>/Sum' */
  real_T DiscreteTimeIntegrator1_PREV_U;/* '<S371>/Discrete-Time Integrator1' */
  real_T DiscreteTimeIntegrator1_PREV__l;/* '<S372>/Discrete-Time Integrator1' */
  real_T Divide_DWORK1[4];             /* '<S188>/Divide' */
  real_T Divide_DWORK3[4];             /* '<S188>/Divide' */
  real_T Divide_DWORK4[4];             /* '<S188>/Divide' */
  real_T Divide_DWORK5[4];             /* '<S188>/Divide' */
  real32_T UnitDelay_DSTATE_h;         /* '<S154>/Unit Delay' */
  real32_T UD_DSTATE;                  /* '<S183>/UD' */
  real32_T UnitDelay_DSTATE_a;         /* '<S28>/Unit Delay' */
  real32_T Integrator_DSTATE_m;        /* '<S129>/Integrator' */
  real32_T UnitDelay_DSTATE_p;         /* '<S27>/Unit Delay' */
  real32_T Integrator_DSTATE_a;        /* '<S78>/Integrator' */
  real32_T Delay1_DSTATE_fi;           /* '<S194>/Delay1' */
  real32_T Delay_DSTATE_e;             /* '<S373>/Delay' */
  volatile real32_T RT_Buffer[2];      /* '<Root>/RT' */
  volatile real32_T RT3_Buffer[2];     /* '<Root>/RT3' */
  volatile real32_T RT5_Buffer[2];     /* '<Root>/RT5' */
  volatile real32_T RT2_Buffer[4];     /* '<Root>/RT2' */
  volatile real32_T RT6_Buffer[2];     /* '<Root>/RT6' */
  volatile real32_T RT7_Buffer[2];     /* '<Root>/RT7' */
  real32_T Speed_ref;                  /* '<Root>/Data Store Memory3' */
  int32_T clockTickCounter;            /* '<S9>/Discrete Pulse Generator' */
  int32_T DigitalOutput_FRAC_LEN;      /* '<S434>/Digital Output' */
  int32_T DigitalOutput_FRAC_LEN_k;    /* '<S424>/Digital Output' */
  int32_T DigitalOutput1_FRAC_LEN;     /* '<S424>/Digital Output1' */
  int32_T Add_DWORK1[2];               /* '<S174>/Add' */
  int32_T DRV830xEnable_FRAC_LEN;      /* '<S400>/DRV830x Enable' */
  int32_T SpeedCount_DWORK1;           /* '<S339>/SpeedCount' */
  uint32_T EstimatorSelector;          /* '<Root>/Data Store Memory6' */
  uint32_T Sum_DWORK1_i[4];            /* '<S159>/Sum' */
  uint32_T Add_DWORK1_a;               /* '<S404>/Add' */
  uint32_T HFI_ELAPS_T[2];             /* '<S175>/HFI' */
  uint32_T HFI_PREV_T[2];              /* '<S175>/HFI' */
  uint16_T Output_DSTATE;              /* '<S406>/Output' */
  volatile int16_T RT_ActiveBufIdx;    /* '<Root>/RT' */
  volatile int16_T RT3_ActiveBufIdx;   /* '<Root>/RT3' */
  volatile int16_T RT3_semaphoreTaken; /* '<Root>/RT3' */
  volatile int16_T RT5_ActiveBufIdx;   /* '<Root>/RT5' */
  volatile int16_T RT5_semaphoreTaken; /* '<Root>/RT5' */
  volatile int16_T RT2_ActiveBufIdx;   /* '<Root>/RT2' */
  volatile int16_T RT6_ActiveBufIdx;   /* '<Root>/RT6' */
  volatile int16_T RT7_ActiveBufIdx;   /* '<Root>/RT7' */
  volatile uint16_T RT8_Buffer0;       /* '<Root>/RT8' */
  uint16_T IaOffset;                   /* '<Root>/Data Store Memory1' */
  uint16_T IbOffset;                   /* '<Root>/Data Store Memory2' */
  uint16_T Debug_signals;              /* '<Root>/Data Store Memory4' */
  uint16_T Memory_PreviousInput;       /* '<S431>/Memory' */
  uint16_T Memory1_PreviousInput;      /* '<S431>/Memory1' */
  uint16_T CircBufIdx;                 /* '<S339>/Delay' */
  uint16_T CircBufIdx_g;               /* '<S380>/Delay' */
  boolean_T Delay_DSTATE_k4;           /* '<S329>/Delay' */
  boolean_T Delay_DSTATE_bc;           /* '<S155>/Delay' */
  int16_T SwitchCase_ActiveSubsystem;  /* '<S175>/Switch Case' */
  int16_T Integrator_PrevResetState;   /* '<S129>/Integrator' */
  int16_T Integrator_PrevResetState_e; /* '<S78>/Integrator' */
  int16_T Integrator_PrevResetState_h; /* '<S259>/Integrator' */
  uint16_T Integrator_IC_LOADING;      /* '<S129>/Integrator' */
  uint16_T Integrator_IC_LOADING_b;    /* '<S78>/Integrator' */
  uint16_T DiscreteTimeIntegrator1_SYSTEM_;/* '<S371>/Discrete-Time Integrator1' */
  uint16_T DiscreteTimeIntegrator1_SYSTE_h;/* '<S372>/Discrete-Time Integrator1' */
  volatile boolean_T RT14_Buffer0;     /* '<Root>/RT14' */
  boolean_T Enable;                    /* '<Root>/Data Store Memory29' */
  boolean_T EnClosedLoop;              /* '<Root>/Data Store Memory5' */
  boolean_T HFI_RESET_ELAPS_T;         /* '<S175>/HFI' */
  boolean_T AlphaRelay_Mode;           /* '<S212>/AlphaRelay' */
  boolean_T BetaRelay_Mode;            /* '<S212>/BetaRelay' */
  boolean_T AlphaRelay_Mode_d;         /* '<S374>/AlphaRelay' */
  boolean_T BetaRelay_Mode_f;          /* '<S374>/BetaRelay' */
  rtDW_SpeedControl_mcb_pmsm_foc_ SpeedControl;/* '<Root>/Speed Control' */
  rtDW_SPIMasterTransfer_mcb_pmsm SPIMasterTransfer1;/* '<S432>/SPI Master Transfer' */
  rtDW_SPIMasterTransfer_mcb_pmsm SPIMasterTransfer;/* '<S432>/SPI Master Transfer' */
} D_Work_mcb_pmsm_foc_sensorless_;

/* Zero-crossing (trigger) state */
typedef struct {
  ZCSigState Delay1_Reset_ZCE;         /* '<S194>/Delay1' */
  ZCSigState Delay_Reset_ZCE;          /* '<S195>/Delay' */
  ZCSigState Delay_Reset_ZCE_h;        /* '<S326>/Delay' */
  ZCSigState Delay2_Reset_ZCE;         /* '<S313>/Delay2' */
  ZCSigState Delay3_Reset_ZCE;         /* '<S313>/Delay3' */
  ZCSigState Delay2_Reset_ZCE_j;       /* '<S314>/Delay2' */
  ZCSigState Delay3_Reset_ZCE_c;       /* '<S314>/Delay3' */
  ZCSigState Delay1_Reset_ZCE_h;       /* '<S305>/Delay1' */
  ZCSigState Delay_Reset_ZCE_a;        /* '<S305>/Delay' */
  ZCSigState Delay1_Reset_ZCE_k;       /* '<S306>/Delay1' */
  ZCSigState Delay_Reset_ZCE_p;        /* '<S306>/Delay' */
  ZCSigState Delay2_Reset_ZCE_h;       /* '<S280>/Delay2' */
  ZCSigState Delay3_Reset_ZCE_e;       /* '<S280>/Delay3' */
  ZCSigState Delay2_Reset_ZCE_b;       /* '<S281>/Delay2' */
  ZCSigState Delay3_Reset_ZCE_cv;      /* '<S281>/Delay3' */
  rtZCE_Dir_Sense_mcb_pmsm_foc_se Dir_Sense_d;/* '<S212>/Dir_Sense' */
  ZCSigState Delay1_Reset_ZCE_p;       /* '<S359>/Delay1' */
  ZCSigState Delay_Reset_ZCE_k;        /* '<S359>/Delay' */
  ZCSigState Delay1_Reset_ZCE_kq;      /* '<S352>/Delay1' */
  ZCSigState Delay_Reset_ZCE_e;        /* '<S352>/Delay' */
  ZCSigState Delay_Reset_ZCE_pv;       /* '<S375>/Delay' */
  ZCSigState Delay1_Reset_ZCE_kr;      /* '<S385>/Delay1' */
  ZCSigState Delay_Reset_ZCE_l;        /* '<S376>/Delay' */
  ZCSigState Delay1_Reset_ZCE_n;       /* '<S386>/Delay1' */
  ZCSigState Delay_Reset_ZCE_hd;       /* '<S373>/Delay' */
  rtZCE_Dir_Sense_mcb_pmsm_foc_se Dir_Sense;/* '<S374>/Dir_Sense' */
} PrevZCSigStates_mcb_pmsm_foc_se;

/* Invariant block signals (default storage) */
typedef struct {
  const real_T Gain;                   /* '<S185>/Gain' */
  const real_T Transpose[8];           /* '<S188>/Transpose' */
  const uint32_T Width;                /* '<S403>/Width' */
  const real32_T CastToSingle;         /* '<S175>/Cast To Single' */
} ConstBlockIO_mcb_pmsm_foc_senso;

/* Constant parameters (default storage) */
typedef struct {
  /* Pooled Parameter (Expression: )
   * Referenced by:
   *   '<S146>/sine_table_values'
   *   '<S159>/sine_table_values'
   *   '<S328>/sine_table_values'
   */
  real32_T pooled46[1002];
} ConstParam_mcb_pmsm_foc_sensorl;

/* Real-time Model Data Structure */
struct tag_RTM_mcb_pmsm_foc_sensorless {
  const char_T * volatile errorStatus;

  /*
   * Timing:
   * The following substructure contains information regarding
   * the timing information for the model.
   */
  struct {
    uint32_T clockTick0;
    uint32_T clockTickH0;
    uint16_T rtmL2HLastBufWr;
    uint32_T rtmL2HDbBufClockTick[2];
    uint32_T rtmL2HDbBufClockTickH[2];
    uint32_T clockTick4;
    uint32_T clockTickH4;
    struct {
      uint32_T TID[4];
    } TaskCounters;
  } Timing;
};

/* Block signals (default storage) */
extern BlockIO_mcb_pmsm_foc_sensorless mcb_pmsm_foc_sensorless_f2837_B;

/* Block states (default storage) */
extern D_Work_mcb_pmsm_foc_sensorless_ mcb_pmsm_foc_sensorless_f_DWork;

/* Zero-crossing (trigger) state */
extern PrevZCSigStates_mcb_pmsm_foc_se mcb_pmsm_foc_sen_PrevZCSigState;
extern const ConstBlockIO_mcb_pmsm_foc_senso mcb_pmsm_foc_sensorless__ConstB;/* constant block i/o */

/* Constant parameters (default storage) */
extern const ConstParam_mcb_pmsm_foc_sensorl mcb_pmsm_foc_sensorless__ConstP;

/* External function called from main */
extern void mcb_pmsm_foc_sensorless_f28379d_SetEventsForThisBaseStep(boolean_T
  *eventFlags);

/* Model entry point functions */
extern void mcb_pmsm_foc_sensorless_f28379d_initialize(void);
extern void mcb_pmsm_foc_sensorless_f28379d_step0(void);
extern void mcb_pmsm_foc_sensorless_f28379d_step1(void);
extern void mcb_pmsm_foc_sensorless_f28379d_step2(void);
extern void mcb_pmsm_foc_sensorless_f28379d_step3(void);
extern void mcb_pmsm_foc_sensorless_f28379d_terminate(void);

/* Real-time Model object */
extern RT_MODEL_mcb_pmsm_foc_sensorles *const mcb_pmsm_foc_sensorless_f283_M;
extern volatile boolean_T stopRequested;
extern volatile boolean_T runModel;

#ifdef __cpluscplus

extern "C"
{

#endif

  interrupt void ADCB1_INT(void);
  interrupt void SCIA_RX_INT(void);
  void mcb_pmsm_foc_sensorless_f28379d_configure_interrupts (void);
  void mcb_pmsm_foc_sensorless_f28379d_unconfigure_interrupts (void);

#ifdef __cpluscplus

}

#endif

/*-
 * The generated code includes comments that allow you to trace directly
 * back to the appropriate location in the model.  The basic format
 * is <system>/block_name, where system is the system number (uniquely
 * assigned by Simulink) and block_name is the name of the block.
 *
 * Use the MATLAB hilite_system command to trace the generated code back
 * to the model.  For example,
 *
 * hilite_system('<S3>')    - opens system 3
 * hilite_system('<S3>/Kp') - opens and selects block Kp which resides in S3
 *
 * Here is the system hierarchy for this model
 *
 * '<Root>' : 'mcb_pmsm_foc_sensorless_f28379d'
 * '<S1>'   : 'mcb_pmsm_foc_sensorless_f28379d/Current Control'
 * '<S2>'   : 'mcb_pmsm_foc_sensorless_f28379d/HW Interrupt'
 * '<S3>'   : 'mcb_pmsm_foc_sensorless_f28379d/Hardware Init'
 * '<S4>'   : 'mcb_pmsm_foc_sensorless_f28379d/Heartbeat LED'
 * '<S5>'   : 'mcb_pmsm_foc_sensorless_f28379d/Inverter and Motor - Plant Model'
 * '<S6>'   : 'mcb_pmsm_foc_sensorless_f28379d/Serial Receive'
 * '<S7>'   : 'mcb_pmsm_foc_sensorless_f28379d/Speed Control'
 * '<S8>'   : 'mcb_pmsm_foc_sensorless_f28379d/Subsystem'
 * '<S9>'   : 'mcb_pmsm_foc_sensorless_f28379d/方波信号'
 * '<S10>'  : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop'
 * '<S11>'  : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Debug_signals1'
 * '<S12>'  : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/HW_Inputs'
 * '<S13>'  : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling'
 * '<S14>'  : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Inverter'
 * '<S15>'  : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Output Scaling'
 * '<S16>'  : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/SCI_Tx'
 * '<S17>'  : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Subsystem'
 * '<S18>'  : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Clarke Transform'
 * '<S19>'  : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers'
 * '<S20>'  : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Inverse Park Transform'
 * '<S21>'  : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Open_Loop_Control'
 * '<S22>'  : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Park Transform'
 * '<S23>'  : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Space Vector Generator'
 * '<S24>'  : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Clarke Transform/Two phase input'
 * '<S25>'  : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Clarke Transform/Two phase input/Two phase CRL wrap'
 * '<S26>'  : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/DQ Limiter'
 * '<S27>'  : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/PI_Controller_Id'
 * '<S28>'  : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/PI_Controller_Iq'
 * '<S29>'  : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/Subsystem'
 * '<S30>'  : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/DQ Limiter/D-Q Equivalence'
 * '<S31>'  : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/DQ Limiter/D//Q Axis Priority'
 * '<S32>'  : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/DQ Limiter/Inport//Dialog Selection'
 * '<S33>'  : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/DQ Limiter/Magnitude_calc'
 * '<S34>'  : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/DQ Limiter/D-Q Equivalence/Limiter'
 * '<S35>'  : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/DQ Limiter/D-Q Equivalence/Passthrough'
 * '<S36>'  : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/DQ Limiter/D//Q Axis Priority/Compare To Constant'
 * '<S37>'  : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/DQ Limiter/D//Q Axis Priority/Compare To Constant1'
 * '<S38>'  : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/DQ Limiter/D//Q Axis Priority/flipInputs'
 * '<S39>'  : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/DQ Limiter/D//Q Axis Priority/flipInputs1'
 * '<S40>'  : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/DQ Limiter/D//Q Axis Priority/limiter'
 * '<S41>'  : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/DQ Limiter/D//Q Axis Priority/limiter/limitRef1'
 * '<S42>'  : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/DQ Limiter/D//Q Axis Priority/limiter/limitRef2'
 * '<S43>'  : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/DQ Limiter/D//Q Axis Priority/limiter/passThrough'
 * '<S44>'  : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset'
 * '<S45>'  : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Anti-windup'
 * '<S46>'  : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/D Gain'
 * '<S47>'  : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Filter'
 * '<S48>'  : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Filter ICs'
 * '<S49>'  : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/I Gain'
 * '<S50>'  : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Ideal P Gain'
 * '<S51>'  : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Ideal P Gain Fdbk'
 * '<S52>'  : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Integrator'
 * '<S53>'  : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Integrator ICs'
 * '<S54>'  : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/N Copy'
 * '<S55>'  : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/N Gain'
 * '<S56>'  : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/P Copy'
 * '<S57>'  : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Parallel P Gain'
 * '<S58>'  : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Reset Signal'
 * '<S59>'  : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Saturation'
 * '<S60>'  : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Saturation Fdbk'
 * '<S61>'  : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Sum'
 * '<S62>'  : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Sum Fdbk'
 * '<S63>'  : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Tracking Mode'
 * '<S64>'  : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Tracking Mode Sum'
 * '<S65>'  : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Tsamp - Integral'
 * '<S66>'  : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Tsamp - Ngain'
 * '<S67>'  : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/postSat Signal'
 * '<S68>'  : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/preSat Signal'
 * '<S69>'  : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Anti-windup/Disc. Clamping Parallel'
 * '<S70>'  : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Anti-windup/Disc. Clamping Parallel/Dead Zone'
 * '<S71>'  : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Anti-windup/Disc. Clamping Parallel/Dead Zone/Enabled'
 * '<S72>'  : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/D Gain/Disabled'
 * '<S73>'  : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Filter/Disabled'
 * '<S74>'  : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Filter ICs/Disabled'
 * '<S75>'  : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/I Gain/External Parameters'
 * '<S76>'  : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Ideal P Gain/Passthrough'
 * '<S77>'  : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Ideal P Gain Fdbk/Disabled'
 * '<S78>'  : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Integrator/Discrete'
 * '<S79>'  : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Integrator ICs/External IC'
 * '<S80>'  : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/N Copy/Disabled wSignal Specification'
 * '<S81>'  : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/N Gain/Disabled'
 * '<S82>'  : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/P Copy/Disabled'
 * '<S83>'  : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Parallel P Gain/External Parameters'
 * '<S84>'  : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Reset Signal/External Reset'
 * '<S85>'  : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Saturation/Enabled'
 * '<S86>'  : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Saturation Fdbk/Disabled'
 * '<S87>'  : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Sum/Sum_PI'
 * '<S88>'  : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Sum Fdbk/Disabled'
 * '<S89>'  : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Tracking Mode/Disabled'
 * '<S90>'  : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Tracking Mode Sum/Passthrough'
 * '<S91>'  : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Tsamp - Integral/TsSignalSpecification'
 * '<S92>'  : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Tsamp - Ngain/Passthrough'
 * '<S93>'  : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/postSat Signal/Forward_Path'
 * '<S94>'  : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/preSat Signal/Forward_Path'
 * '<S95>'  : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset'
 * '<S96>'  : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Anti-windup'
 * '<S97>'  : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/D Gain'
 * '<S98>'  : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Filter'
 * '<S99>'  : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Filter ICs'
 * '<S100>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/I Gain'
 * '<S101>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Ideal P Gain'
 * '<S102>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Ideal P Gain Fdbk'
 * '<S103>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Integrator'
 * '<S104>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Integrator ICs'
 * '<S105>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/N Copy'
 * '<S106>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/N Gain'
 * '<S107>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/P Copy'
 * '<S108>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Parallel P Gain'
 * '<S109>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Reset Signal'
 * '<S110>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Saturation'
 * '<S111>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Saturation Fdbk'
 * '<S112>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Sum'
 * '<S113>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Sum Fdbk'
 * '<S114>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Tracking Mode'
 * '<S115>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Tracking Mode Sum'
 * '<S116>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Tsamp - Integral'
 * '<S117>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Tsamp - Ngain'
 * '<S118>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/postSat Signal'
 * '<S119>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/preSat Signal'
 * '<S120>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Anti-windup/Disc. Clamping Parallel'
 * '<S121>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Anti-windup/Disc. Clamping Parallel/Dead Zone'
 * '<S122>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Anti-windup/Disc. Clamping Parallel/Dead Zone/Enabled'
 * '<S123>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/D Gain/Disabled'
 * '<S124>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Filter/Disabled'
 * '<S125>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Filter ICs/Disabled'
 * '<S126>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/I Gain/External Parameters'
 * '<S127>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Ideal P Gain/Passthrough'
 * '<S128>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Ideal P Gain Fdbk/Disabled'
 * '<S129>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Integrator/Discrete'
 * '<S130>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Integrator ICs/External IC'
 * '<S131>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/N Copy/Disabled wSignal Specification'
 * '<S132>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/N Gain/Disabled'
 * '<S133>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/P Copy/Disabled'
 * '<S134>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Parallel P Gain/External Parameters'
 * '<S135>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Reset Signal/External Reset'
 * '<S136>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Saturation/Enabled'
 * '<S137>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Saturation Fdbk/Disabled'
 * '<S138>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Sum/Sum_PI'
 * '<S139>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Sum Fdbk/Disabled'
 * '<S140>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Tracking Mode/Disabled'
 * '<S141>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Tracking Mode Sum/Passthrough'
 * '<S142>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Tsamp - Integral/TsSignalSpecification'
 * '<S143>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Tsamp - Ngain/Passthrough'
 * '<S144>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/postSat Signal/Forward_Path'
 * '<S145>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/preSat Signal/Forward_Path'
 * '<S146>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Inverse Park Transform/Sine Cosine'
 * '<S147>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Inverse Park Transform/Two inputs CRL'
 * '<S148>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Inverse Park Transform/Sine Cosine/Interpolation'
 * '<S149>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Inverse Park Transform/Sine Cosine/WrapUp'
 * '<S150>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Inverse Park Transform/Sine Cosine/WrapUp/Compare To Zero'
 * '<S151>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Inverse Park Transform/Sine Cosine/WrapUp/If Action Subsystem'
 * '<S152>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Inverse Park Transform/Sine Cosine/WrapUp/If Action Subsystem1'
 * '<S153>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Inverse Park Transform/Two inputs CRL/Switch_Axis'
 * '<S154>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Open_Loop_Control/Position Generator'
 * '<S155>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Open_Loop_Control/Position Generator/Accumulate'
 * '<S156>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Open_Loop_Control/Position Generator/Accumulate/Subsystem'
 * '<S157>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Park Transform/Sine Cosine'
 * '<S158>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Park Transform/Two inputs CRL'
 * '<S159>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Park Transform/Sine Cosine/Sine-Cosine Lookup'
 * '<S160>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Park Transform/Sine Cosine/Sine-Cosine Lookup/Interpolation'
 * '<S161>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Park Transform/Sine Cosine/Sine-Cosine Lookup/WrapUp'
 * '<S162>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Park Transform/Sine Cosine/Sine-Cosine Lookup/WrapUp/Compare To Zero'
 * '<S163>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Park Transform/Sine Cosine/Sine-Cosine Lookup/WrapUp/If Action Subsystem'
 * '<S164>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Park Transform/Sine Cosine/Sine-Cosine Lookup/WrapUp/If Action Subsystem1'
 * '<S165>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Park Transform/Two inputs CRL/Switch_Axis'
 * '<S166>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Space Vector Generator/Modulation method'
 * '<S167>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Space Vector Generator/Voltage Input'
 * '<S168>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Space Vector Generator/Modulation method/SVPWM'
 * '<S169>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Space Vector Generator/Modulation method/SVPWM/Half(Vmin+Vmax)'
 * '<S170>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Space Vector Generator/Voltage Input/Valphabeta'
 * '<S171>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Space Vector Generator/Voltage Input/Valphabeta/Inverse Clarke Transform'
 * '<S172>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Space Vector Generator/Voltage Input/Valphabeta/Inverse Clarke Transform/Two phase input'
 * '<S173>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/HW_Inputs/Sensor Driver Blocks (codegen)'
 * '<S174>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate Phase Currents'
 * '<S175>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed'
 * '<S176>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate Phase Currents/Data_Type'
 * '<S177>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate Phase Currents/Data_Type/Data_Type_Float'
 * '<S178>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/EKF Observer'
 * '<S179>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer'
 * '<S180>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Flux Observer'
 * '<S181>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/HFI'
 * '<S182>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Sliding Mode Observer'
 * '<S183>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Transfer Fcn First Order1'
 * '<S184>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/EKF Observer/EKF'
 * '<S185>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/EKF Observer/EKF/A'
 * '<S186>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/EKF Observer/EKF/Enabled Subsystem'
 * '<S187>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/EKF Observer/EKF/F(dG(x)//dx)'
 * '<S188>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/EKF Observer/EKF/K'
 * '<S189>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/EKF Observer/EKF/P'
 * '<S190>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/EKF Observer/EKF/P_pre'
 * '<S191>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/EKF Observer/EKF/X_hat'
 * '<S192>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/EKF Observer/EKF/X_pre'
 * '<S193>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/EKF Observer/EKF/f(G(x))'
 * '<S194>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer'
 * '<S195>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/EEMF Observer'
 * '<S196>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/IIR Filter'
 * '<S197>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/PerUnit'
 * '<S198>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer'
 * '<S199>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/EEMF Observer/Subsystem'
 * '<S200>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/EEMF Observer/Subsystem2'
 * '<S201>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/EEMF Observer/Subsystem/A11'
 * '<S202>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/EEMF Observer/Subsystem/A12'
 * '<S203>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/EEMF Observer/Subsystem/A22'
 * '<S204>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/EEMF Observer/Subsystem/L'
 * '<S205>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/EEMF Observer/Subsystem/L1'
 * '<S206>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/EEMF Observer/Subsystem/L2'
 * '<S207>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/EEMF Observer/Subsystem2/B'
 * '<S208>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/EEMF Observer/Subsystem2/L'
 * '<S209>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/IIR Filter/IIR Filter'
 * '<S210>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/IIR Filter/IIR Filter/Low-pass'
 * '<S211>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/IIR Filter/IIR Filter/Low-pass/IIR Low Pass Filter'
 * '<S212>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/Direction_Latch'
 * '<S213>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL'
 * '<S214>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/Direction_Latch/Dir_Sense'
 * '<S215>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/Direction_Latch/Subsystem2'
 * '<S216>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/Direction_Latch/Subsystem3'
 * '<S217>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/IIR Filter'
 * '<S218>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/Normalize'
 * '<S219>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/PID Controller'
 * '<S220>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/SpeedFeedforward'
 * '<S221>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/Subsystem'
 * '<S222>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/VCO'
 * '<S223>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/IIR Filter/IIR Filter'
 * '<S224>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/IIR Filter/IIR Filter/Low-pass'
 * '<S225>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/IIR Filter/IIR Filter/Low-pass/IIR Low Pass Filter'
 * '<S226>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/Normalize/If Action Subsystem'
 * '<S227>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/Normalize/Subsystem'
 * '<S228>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/PID Controller/Anti-windup'
 * '<S229>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/PID Controller/D Gain'
 * '<S230>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/PID Controller/Filter'
 * '<S231>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/PID Controller/Filter ICs'
 * '<S232>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/PID Controller/I Gain'
 * '<S233>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/PID Controller/Ideal P Gain'
 * '<S234>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/PID Controller/Ideal P Gain Fdbk'
 * '<S235>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/PID Controller/Integrator'
 * '<S236>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/PID Controller/Integrator ICs'
 * '<S237>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/PID Controller/N Copy'
 * '<S238>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/PID Controller/N Gain'
 * '<S239>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/PID Controller/P Copy'
 * '<S240>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/PID Controller/Parallel P Gain'
 * '<S241>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/PID Controller/Reset Signal'
 * '<S242>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/PID Controller/Saturation'
 * '<S243>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/PID Controller/Saturation Fdbk'
 * '<S244>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/PID Controller/Sum'
 * '<S245>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/PID Controller/Sum Fdbk'
 * '<S246>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/PID Controller/Tracking Mode'
 * '<S247>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/PID Controller/Tracking Mode Sum'
 * '<S248>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/PID Controller/Tsamp - Integral'
 * '<S249>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/PID Controller/Tsamp - Ngain'
 * '<S250>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/PID Controller/postSat Signal'
 * '<S251>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/PID Controller/preSat Signal'
 * '<S252>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/PID Controller/Anti-windup/Passthrough'
 * '<S253>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/PID Controller/D Gain/Disabled'
 * '<S254>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/PID Controller/Filter/Disabled'
 * '<S255>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/PID Controller/Filter ICs/Disabled'
 * '<S256>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/PID Controller/I Gain/Internal Parameters'
 * '<S257>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/PID Controller/Ideal P Gain/Passthrough'
 * '<S258>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/PID Controller/Ideal P Gain Fdbk/Disabled'
 * '<S259>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/PID Controller/Integrator/Discrete'
 * '<S260>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/PID Controller/Integrator ICs/Internal IC'
 * '<S261>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/PID Controller/N Copy/Disabled wSignal Specification'
 * '<S262>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/PID Controller/N Gain/Disabled'
 * '<S263>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/PID Controller/P Copy/Disabled'
 * '<S264>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/PID Controller/Parallel P Gain/Internal Parameters'
 * '<S265>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/PID Controller/Reset Signal/External Reset'
 * '<S266>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/PID Controller/Saturation/Passthrough'
 * '<S267>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/PID Controller/Saturation Fdbk/Disabled'
 * '<S268>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/PID Controller/Sum/Sum_PI'
 * '<S269>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/PID Controller/Sum Fdbk/Disabled'
 * '<S270>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/PID Controller/Tracking Mode/Disabled'
 * '<S271>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/PID Controller/Tracking Mode Sum/Passthrough'
 * '<S272>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/PID Controller/Tsamp - Integral/TsSignalSpecification'
 * '<S273>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/PID Controller/Tsamp - Ngain/Passthrough'
 * '<S274>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/PID Controller/postSat Signal/Forward_Path'
 * '<S275>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/PID Controller/preSat Signal/Forward_Path'
 * '<S276>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/SpeedFeedforward/DifferentiationMethod'
 * '<S277>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/SpeedFeedforward/IIR Filter'
 * '<S278>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/SpeedFeedforward/IntegralMethod'
 * '<S279>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/SpeedFeedforward/OptimizedDifferentiationMethod'
 * '<S280>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/SpeedFeedforward/DifferentiationMethod/Differentiator'
 * '<S281>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/SpeedFeedforward/DifferentiationMethod/Differentiator1'
 * '<S282>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/SpeedFeedforward/DifferentiationMethod/IIR Filter1'
 * '<S283>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/SpeedFeedforward/DifferentiationMethod/IIR Filter2'
 * '<S284>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/SpeedFeedforward/DifferentiationMethod/IIR Filter3'
 * '<S285>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/SpeedFeedforward/DifferentiationMethod/Subsystem'
 * '<S286>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/SpeedFeedforward/DifferentiationMethod/IIR Filter1/IIR Filter'
 * '<S287>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/SpeedFeedforward/DifferentiationMethod/IIR Filter1/IIR Filter/Low-pass'
 * '<S288>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/SpeedFeedforward/DifferentiationMethod/IIR Filter1/IIR Filter/Low-pass/IIR Low Pass Filter'
 * '<S289>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/SpeedFeedforward/DifferentiationMethod/IIR Filter2/IIR Filter'
 * '<S290>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/SpeedFeedforward/DifferentiationMethod/IIR Filter2/IIR Filter/Low-pass'
 * '<S291>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/SpeedFeedforward/DifferentiationMethod/IIR Filter2/IIR Filter/Low-pass/IIR Low Pass Filter'
 * '<S292>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/SpeedFeedforward/DifferentiationMethod/IIR Filter3/IIR Filter'
 * '<S293>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/SpeedFeedforward/DifferentiationMethod/IIR Filter3/IIR Filter/Low-pass'
 * '<S294>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/SpeedFeedforward/DifferentiationMethod/IIR Filter3/IIR Filter/Low-pass/IIR Low Pass Filter'
 * '<S295>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/SpeedFeedforward/DifferentiationMethod/Subsystem/Compare To Constant'
 * '<S296>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/SpeedFeedforward/DifferentiationMethod/Subsystem/Compare To Constant1'
 * '<S297>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/SpeedFeedforward/DifferentiationMethod/Subsystem/Compare To Constant2'
 * '<S298>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/SpeedFeedforward/DifferentiationMethod/Subsystem/Compare To Constant4'
 * '<S299>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/SpeedFeedforward/DifferentiationMethod/Subsystem/Compare To Constant5'
 * '<S300>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/SpeedFeedforward/IIR Filter/IIR Filter'
 * '<S301>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/SpeedFeedforward/IIR Filter/IIR Filter/Low-pass'
 * '<S302>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/SpeedFeedforward/IIR Filter/IIR Filter/Low-pass/IIR Low Pass Filter'
 * '<S303>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/SpeedFeedforward/IntegralMethod/IIR Filter1'
 * '<S304>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/SpeedFeedforward/IntegralMethod/IIR Filter3'
 * '<S305>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/SpeedFeedforward/IntegralMethod/Integrator'
 * '<S306>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/SpeedFeedforward/IntegralMethod/Integrator1'
 * '<S307>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/SpeedFeedforward/IntegralMethod/IIR Filter1/IIR Filter'
 * '<S308>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/SpeedFeedforward/IntegralMethod/IIR Filter1/IIR Filter/Low-pass'
 * '<S309>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/SpeedFeedforward/IntegralMethod/IIR Filter1/IIR Filter/Low-pass/IIR Low Pass Filter'
 * '<S310>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/SpeedFeedforward/IntegralMethod/IIR Filter3/IIR Filter'
 * '<S311>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/SpeedFeedforward/IntegralMethod/IIR Filter3/IIR Filter/Low-pass'
 * '<S312>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/SpeedFeedforward/IntegralMethod/IIR Filter3/IIR Filter/Low-pass/IIR Low Pass Filter'
 * '<S313>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/SpeedFeedforward/OptimizedDifferentiationMethod/Differentiator'
 * '<S314>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/SpeedFeedforward/OptimizedDifferentiationMethod/Differentiator1'
 * '<S315>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/SpeedFeedforward/OptimizedDifferentiationMethod/IIR Filter1'
 * '<S316>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/SpeedFeedforward/OptimizedDifferentiationMethod/IIR Filter3'
 * '<S317>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/SpeedFeedforward/OptimizedDifferentiationMethod/IIR Filter1/IIR Filter'
 * '<S318>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/SpeedFeedforward/OptimizedDifferentiationMethod/IIR Filter1/IIR Filter/Low-pass'
 * '<S319>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/SpeedFeedforward/OptimizedDifferentiationMethod/IIR Filter1/IIR Filter/Low-pass/IIR Low Pass Filter'
 * '<S320>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/SpeedFeedforward/OptimizedDifferentiationMethod/IIR Filter3/IIR Filter'
 * '<S321>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/SpeedFeedforward/OptimizedDifferentiationMethod/IIR Filter3/IIR Filter/Low-pass'
 * '<S322>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/SpeedFeedforward/OptimizedDifferentiationMethod/IIR Filter3/IIR Filter/Low-pass/IIR Low Pass Filter'
 * '<S323>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/Subsystem/Switch Case Action Subsystem'
 * '<S324>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/Subsystem/Switch Case Action Subsystem1'
 * '<S325>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/VCO/Variant Subsystem'
 * '<S326>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/VCO/Variant Subsystem/LookupTableBased'
 * '<S327>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/VCO/Variant Subsystem/LookupTableBased/Position Generator'
 * '<S328>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/VCO/Variant Subsystem/LookupTableBased/Sine-Cosine Lookup'
 * '<S329>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/VCO/Variant Subsystem/LookupTableBased/Position Generator/Accumulate'
 * '<S330>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/VCO/Variant Subsystem/LookupTableBased/Position Generator/Accumulate/Subsystem'
 * '<S331>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/VCO/Variant Subsystem/LookupTableBased/Sine-Cosine Lookup/Interpolation'
 * '<S332>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/VCO/Variant Subsystem/LookupTableBased/Sine-Cosine Lookup/WrapUp'
 * '<S333>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/VCO/Variant Subsystem/LookupTableBased/Sine-Cosine Lookup/WrapUp/Compare To Zero'
 * '<S334>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/VCO/Variant Subsystem/LookupTableBased/Sine-Cosine Lookup/WrapUp/If Action Subsystem'
 * '<S335>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/VCO/Variant Subsystem/LookupTableBased/Sine-Cosine Lookup/WrapUp/If Action Subsystem1'
 * '<S336>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Flux Observer/DC component removal'
 * '<S337>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Flux Observer/Flux Observer'
 * '<S338>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Flux Observer/IIR Filter4'
 * '<S339>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Flux Observer/Speed Measurement'
 * '<S340>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Flux Observer/DC component removal/IIR Filter'
 * '<S341>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Flux Observer/DC component removal/IIR Filter/IIR Filter'
 * '<S342>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Flux Observer/DC component removal/IIR Filter/IIR Filter/Low-pass'
 * '<S343>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Flux Observer/DC component removal/IIR Filter/IIR Filter/Low-pass/IIR Low Pass Filter'
 * '<S344>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Flux Observer/Flux Observer/Atan2'
 * '<S345>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Flux Observer/Flux Observer/psiAlpha'
 * '<S346>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Flux Observer/Flux Observer/psiBeta'
 * '<S347>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Flux Observer/Flux Observer/Atan2/Default'
 * '<S348>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Flux Observer/Flux Observer/Atan2/Default/atan2'
 * '<S349>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Flux Observer/Flux Observer/Atan2/Default/atan2/Per Unit'
 * '<S350>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Flux Observer/Flux Observer/psiAlpha/Default'
 * '<S351>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Flux Observer/Flux Observer/psiAlpha/Default/IIR Filter'
 * '<S352>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Flux Observer/Flux Observer/psiAlpha/Default/Integrator'
 * '<S353>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Flux Observer/Flux Observer/psiAlpha/Default/Scaling'
 * '<S354>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Flux Observer/Flux Observer/psiAlpha/Default/IIR Filter/IIR Filter'
 * '<S355>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Flux Observer/Flux Observer/psiAlpha/Default/IIR Filter/IIR Filter/High-pass'
 * '<S356>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Flux Observer/Flux Observer/psiAlpha/Default/IIR Filter/IIR Filter/High-pass/IIR Low Pass Filter'
 * '<S357>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Flux Observer/Flux Observer/psiBeta/Default'
 * '<S358>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Flux Observer/Flux Observer/psiBeta/Default/IIR Filter'
 * '<S359>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Flux Observer/Flux Observer/psiBeta/Default/Integrator'
 * '<S360>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Flux Observer/Flux Observer/psiBeta/Default/Scaling'
 * '<S361>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Flux Observer/Flux Observer/psiBeta/Default/IIR Filter/IIR Filter'
 * '<S362>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Flux Observer/Flux Observer/psiBeta/Default/IIR Filter/IIR Filter/High-pass'
 * '<S363>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Flux Observer/Flux Observer/psiBeta/Default/IIR Filter/IIR Filter/High-pass/IIR Low Pass Filter'
 * '<S364>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Flux Observer/IIR Filter4/IIR Filter'
 * '<S365>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Flux Observer/IIR Filter4/IIR Filter/Low-pass'
 * '<S366>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Flux Observer/IIR Filter4/IIR Filter/Low-pass/IIR Low Pass Filter'
 * '<S367>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Flux Observer/Speed Measurement/DT_Handle'
 * '<S368>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Flux Observer/Speed Measurement/DT_Handle/floating-point'
 * '<S369>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/HFI/位置和转速观测器'
 * '<S370>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/HFI/位置和转速观测器/两相静止坐标系提取高频信号'
 * '<S371>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/HFI/位置和转速观测器/位置估算'
 * '<S372>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/HFI/位置和转速观测器/位置估算/Subsystem2'
 * '<S373>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Sliding Mode Observer/Sliding Mode Observer'
 * '<S374>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Sliding Mode Observer/Sliding Mode Observer/Direction_Latch'
 * '<S375>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Sliding Mode Observer/Sliding Mode Observer/Ealpha_est'
 * '<S376>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Sliding Mode Observer/Sliding Mode Observer/Ebeta_est'
 * '<S377>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Sliding Mode Observer/Sliding Mode Observer/Filter_Ealpha'
 * '<S378>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Sliding Mode Observer/Sliding Mode Observer/Filter_Ebeta'
 * '<S379>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Sliding Mode Observer/Sliding Mode Observer/IIR Filter'
 * '<S380>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Sliding Mode Observer/Sliding Mode Observer/Speed Measurement'
 * '<S381>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Sliding Mode Observer/Sliding Mode Observer/angleCompensation'
 * '<S382>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Sliding Mode Observer/Sliding Mode Observer/Direction_Latch/Dir_Sense'
 * '<S383>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Sliding Mode Observer/Sliding Mode Observer/Direction_Latch/Subsystem2'
 * '<S384>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Sliding Mode Observer/Sliding Mode Observer/Direction_Latch/Subsystem3'
 * '<S385>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Sliding Mode Observer/Sliding Mode Observer/Ealpha_est/DisturbanceObserver'
 * '<S386>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Sliding Mode Observer/Sliding Mode Observer/Ebeta_est/DisturbanceObserver'
 * '<S387>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Sliding Mode Observer/Sliding Mode Observer/Filter_Ealpha/IIR Filter'
 * '<S388>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Sliding Mode Observer/Sliding Mode Observer/Filter_Ealpha/IIR Filter/Low-pass'
 * '<S389>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Sliding Mode Observer/Sliding Mode Observer/Filter_Ealpha/IIR Filter/Low-pass/IIR Low Pass Filter'
 * '<S390>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Sliding Mode Observer/Sliding Mode Observer/Filter_Ebeta/IIR Filter'
 * '<S391>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Sliding Mode Observer/Sliding Mode Observer/Filter_Ebeta/IIR Filter/Low-pass'
 * '<S392>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Sliding Mode Observer/Sliding Mode Observer/Filter_Ebeta/IIR Filter/Low-pass/IIR Low Pass Filter'
 * '<S393>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Sliding Mode Observer/Sliding Mode Observer/IIR Filter/IIR Filter'
 * '<S394>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Sliding Mode Observer/Sliding Mode Observer/IIR Filter/IIR Filter/Low-pass'
 * '<S395>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Sliding Mode Observer/Sliding Mode Observer/IIR Filter/IIR Filter/Low-pass/IIR Low Pass Filter'
 * '<S396>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Sliding Mode Observer/Sliding Mode Observer/Speed Measurement/DT_Handle'
 * '<S397>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Sliding Mode Observer/Sliding Mode Observer/Speed Measurement/DT_Handle/floating-point'
 * '<S398>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Sliding Mode Observer/Sliding Mode Observer/angleCompensation/atan1'
 * '<S399>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Sliding Mode Observer/Sliding Mode Observer/angleCompensation/atan1/Per Unit'
 * '<S400>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Inverter/Code Generation'
 * '<S401>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/SCI_Tx/Code Generation'
 * '<S402>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/SCI_Tx/Code Generation/Data_Conditioning_Tx'
 * '<S403>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/SCI_Tx/Code Generation/Data_Logging'
 * '<S404>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/SCI_Tx/Code Generation/While Iterator Subsystem'
 * '<S405>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/SCI_Tx/Code Generation/Data_Conditioning_Tx/Data_Type_Float'
 * '<S406>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/SCI_Tx/Code Generation/Data_Logging/Counter Limited'
 * '<S407>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/SCI_Tx/Code Generation/Data_Logging/Data'
 * '<S408>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/SCI_Tx/Code Generation/Data_Logging/End'
 * '<S409>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/SCI_Tx/Code Generation/Data_Logging/Start'
 * '<S410>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/SCI_Tx/Code Generation/Data_Logging/Counter Limited/Increment Real World'
 * '<S411>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/SCI_Tx/Code Generation/Data_Logging/Counter Limited/Wrap To Zero'
 * '<S412>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Subsystem/If Action Subsystem'
 * '<S413>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Subsystem/If Action Subsystem1'
 * '<S414>' : 'mcb_pmsm_foc_sensorless_f28379d/HW Interrupt/Code generation'
 * '<S415>' : 'mcb_pmsm_foc_sensorless_f28379d/HW Interrupt/Code generation/HWI_ADCB1_INT'
 * '<S416>' : 'mcb_pmsm_foc_sensorless_f28379d/HW Interrupt/Code generation/HWI_SCIA_RX_INT'
 * '<S417>' : 'mcb_pmsm_foc_sensorless_f28379d/HW Interrupt/Code generation/HWI_ADCB1_INT/ECSoC'
 * '<S418>' : 'mcb_pmsm_foc_sensorless_f28379d/HW Interrupt/Code generation/HWI_ADCB1_INT/ECSoC/ECSimCodegen'
 * '<S419>' : 'mcb_pmsm_foc_sensorless_f28379d/HW Interrupt/Code generation/HWI_SCIA_RX_INT/ECSoC'
 * '<S420>' : 'mcb_pmsm_foc_sensorless_f28379d/HW Interrupt/Code generation/HWI_SCIA_RX_INT/ECSoC/ECSimCodegen'
 * '<S421>' : 'mcb_pmsm_foc_sensorless_f28379d/Hardware Init/Variant Subsystem'
 * '<S422>' : 'mcb_pmsm_foc_sensorless_f28379d/Hardware Init/Variant Subsystem/Code Generation'
 * '<S423>' : 'mcb_pmsm_foc_sensorless_f28379d/Hardware Init/Variant Subsystem/Code Generation/Calculate ADC Offset '
 * '<S424>' : 'mcb_pmsm_foc_sensorless_f28379d/Hardware Init/Variant Subsystem/Code Generation/DRV Enable'
 * '<S425>' : 'mcb_pmsm_foc_sensorless_f28379d/Hardware Init/Variant Subsystem/Code Generation/Default ADC Offset'
 * '<S426>' : 'mcb_pmsm_foc_sensorless_f28379d/Hardware Init/Variant Subsystem/Code Generation/Calculate ADC Offset /For Iterator Subsystem'
 * '<S427>' : 'mcb_pmsm_foc_sensorless_f28379d/Hardware Init/Variant Subsystem/Code Generation/Calculate ADC Offset /If Action Subsystem'
 * '<S428>' : 'mcb_pmsm_foc_sensorless_f28379d/Hardware Init/Variant Subsystem/Code Generation/Calculate ADC Offset /If Action Subsystem1'
 * '<S429>' : 'mcb_pmsm_foc_sensorless_f28379d/Hardware Init/Variant Subsystem/Code Generation/Calculate ADC Offset /If Action Subsystem2'
 * '<S430>' : 'mcb_pmsm_foc_sensorless_f28379d/Hardware Init/Variant Subsystem/Code Generation/Calculate ADC Offset /If Action Subsystem3'
 * '<S431>' : 'mcb_pmsm_foc_sensorless_f28379d/Hardware Init/Variant Subsystem/Code Generation/Calculate ADC Offset /For Iterator Subsystem/If Action Subsystem'
 * '<S432>' : 'mcb_pmsm_foc_sensorless_f28379d/Hardware Init/Variant Subsystem/Code Generation/DRV Enable/ADC Gain Setting'
 * '<S433>' : 'mcb_pmsm_foc_sensorless_f28379d/Heartbeat LED/Heartbeat LED'
 * '<S434>' : 'mcb_pmsm_foc_sensorless_f28379d/Heartbeat LED/Heartbeat LED/Code generation'
 * '<S435>' : 'mcb_pmsm_foc_sensorless_f28379d/Inverter and Motor - Plant Model/Codegeneration'
 * '<S436>' : 'mcb_pmsm_foc_sensorless_f28379d/Serial Receive/Data_Conditioning_Rx'
 * '<S437>' : 'mcb_pmsm_foc_sensorless_f28379d/Serial Receive/SCI_Rx'
 * '<S438>' : 'mcb_pmsm_foc_sensorless_f28379d/Serial Receive/unParse'
 * '<S439>' : 'mcb_pmsm_foc_sensorless_f28379d/Serial Receive/Data_Conditioning_Rx/Data_Type_Float'
 * '<S440>' : 'mcb_pmsm_foc_sensorless_f28379d/Serial Receive/SCI_Rx/Code Generation'
 * '<S441>' : 'mcb_pmsm_foc_sensorless_f28379d/Serial Receive/SCI_Rx/Code Generation/Data_Type_Float'
 * '<S442>' : 'mcb_pmsm_foc_sensorless_f28379d/Speed Control/PI_Controller_Speed2'
 * '<S443>' : 'mcb_pmsm_foc_sensorless_f28379d/Speed Control/SlewRate'
 * '<S444>' : 'mcb_pmsm_foc_sensorless_f28379d/Speed Control/Speed_Ref_Selector'
 * '<S445>' : 'mcb_pmsm_foc_sensorless_f28379d/Speed Control/PI_Controller_Speed2/Chart'
 * '<S446>' : 'mcb_pmsm_foc_sensorless_f28379d/Speed Control/PI_Controller_Speed2/Discrete PI Controller  with anti-windup & reset'
 * '<S447>' : 'mcb_pmsm_foc_sensorless_f28379d/Speed Control/PI_Controller_Speed2/Subsystem'
 * '<S448>' : 'mcb_pmsm_foc_sensorless_f28379d/Speed Control/PI_Controller_Speed2/Switch Case Action Subsystem'
 * '<S449>' : 'mcb_pmsm_foc_sensorless_f28379d/Speed Control/PI_Controller_Speed2/Switch Case Action Subsystem1'
 * '<S450>' : 'mcb_pmsm_foc_sensorless_f28379d/Speed Control/PI_Controller_Speed2/Switch Case Action Subsystem2'
 * '<S451>' : 'mcb_pmsm_foc_sensorless_f28379d/Speed Control/PI_Controller_Speed2/Switch Case Action Subsystem3'
 * '<S452>' : 'mcb_pmsm_foc_sensorless_f28379d/Speed Control/PI_Controller_Speed2/Zero_Cancellation'
 * '<S453>' : 'mcb_pmsm_foc_sensorless_f28379d/Speed Control/PI_Controller_Speed2/Discrete PI Controller  with anti-windup & reset/Anti-windup'
 * '<S454>' : 'mcb_pmsm_foc_sensorless_f28379d/Speed Control/PI_Controller_Speed2/Discrete PI Controller  with anti-windup & reset/D Gain'
 * '<S455>' : 'mcb_pmsm_foc_sensorless_f28379d/Speed Control/PI_Controller_Speed2/Discrete PI Controller  with anti-windup & reset/Filter'
 * '<S456>' : 'mcb_pmsm_foc_sensorless_f28379d/Speed Control/PI_Controller_Speed2/Discrete PI Controller  with anti-windup & reset/Filter ICs'
 * '<S457>' : 'mcb_pmsm_foc_sensorless_f28379d/Speed Control/PI_Controller_Speed2/Discrete PI Controller  with anti-windup & reset/I Gain'
 * '<S458>' : 'mcb_pmsm_foc_sensorless_f28379d/Speed Control/PI_Controller_Speed2/Discrete PI Controller  with anti-windup & reset/Ideal P Gain'
 * '<S459>' : 'mcb_pmsm_foc_sensorless_f28379d/Speed Control/PI_Controller_Speed2/Discrete PI Controller  with anti-windup & reset/Ideal P Gain Fdbk'
 * '<S460>' : 'mcb_pmsm_foc_sensorless_f28379d/Speed Control/PI_Controller_Speed2/Discrete PI Controller  with anti-windup & reset/Integrator'
 * '<S461>' : 'mcb_pmsm_foc_sensorless_f28379d/Speed Control/PI_Controller_Speed2/Discrete PI Controller  with anti-windup & reset/Integrator ICs'
 * '<S462>' : 'mcb_pmsm_foc_sensorless_f28379d/Speed Control/PI_Controller_Speed2/Discrete PI Controller  with anti-windup & reset/N Copy'
 * '<S463>' : 'mcb_pmsm_foc_sensorless_f28379d/Speed Control/PI_Controller_Speed2/Discrete PI Controller  with anti-windup & reset/N Gain'
 * '<S464>' : 'mcb_pmsm_foc_sensorless_f28379d/Speed Control/PI_Controller_Speed2/Discrete PI Controller  with anti-windup & reset/P Copy'
 * '<S465>' : 'mcb_pmsm_foc_sensorless_f28379d/Speed Control/PI_Controller_Speed2/Discrete PI Controller  with anti-windup & reset/Parallel P Gain'
 * '<S466>' : 'mcb_pmsm_foc_sensorless_f28379d/Speed Control/PI_Controller_Speed2/Discrete PI Controller  with anti-windup & reset/Reset Signal'
 * '<S467>' : 'mcb_pmsm_foc_sensorless_f28379d/Speed Control/PI_Controller_Speed2/Discrete PI Controller  with anti-windup & reset/Saturation'
 * '<S468>' : 'mcb_pmsm_foc_sensorless_f28379d/Speed Control/PI_Controller_Speed2/Discrete PI Controller  with anti-windup & reset/Saturation Fdbk'
 * '<S469>' : 'mcb_pmsm_foc_sensorless_f28379d/Speed Control/PI_Controller_Speed2/Discrete PI Controller  with anti-windup & reset/Sum'
 * '<S470>' : 'mcb_pmsm_foc_sensorless_f28379d/Speed Control/PI_Controller_Speed2/Discrete PI Controller  with anti-windup & reset/Sum Fdbk'
 * '<S471>' : 'mcb_pmsm_foc_sensorless_f28379d/Speed Control/PI_Controller_Speed2/Discrete PI Controller  with anti-windup & reset/Tracking Mode'
 * '<S472>' : 'mcb_pmsm_foc_sensorless_f28379d/Speed Control/PI_Controller_Speed2/Discrete PI Controller  with anti-windup & reset/Tracking Mode Sum'
 * '<S473>' : 'mcb_pmsm_foc_sensorless_f28379d/Speed Control/PI_Controller_Speed2/Discrete PI Controller  with anti-windup & reset/Tsamp - Integral'
 * '<S474>' : 'mcb_pmsm_foc_sensorless_f28379d/Speed Control/PI_Controller_Speed2/Discrete PI Controller  with anti-windup & reset/Tsamp - Ngain'
 * '<S475>' : 'mcb_pmsm_foc_sensorless_f28379d/Speed Control/PI_Controller_Speed2/Discrete PI Controller  with anti-windup & reset/postSat Signal'
 * '<S476>' : 'mcb_pmsm_foc_sensorless_f28379d/Speed Control/PI_Controller_Speed2/Discrete PI Controller  with anti-windup & reset/preSat Signal'
 * '<S477>' : 'mcb_pmsm_foc_sensorless_f28379d/Speed Control/PI_Controller_Speed2/Discrete PI Controller  with anti-windup & reset/Anti-windup/Disc. Clamping Parallel'
 * '<S478>' : 'mcb_pmsm_foc_sensorless_f28379d/Speed Control/PI_Controller_Speed2/Discrete PI Controller  with anti-windup & reset/Anti-windup/Disc. Clamping Parallel/Dead Zone'
 * '<S479>' : 'mcb_pmsm_foc_sensorless_f28379d/Speed Control/PI_Controller_Speed2/Discrete PI Controller  with anti-windup & reset/Anti-windup/Disc. Clamping Parallel/Dead Zone/Enabled'
 * '<S480>' : 'mcb_pmsm_foc_sensorless_f28379d/Speed Control/PI_Controller_Speed2/Discrete PI Controller  with anti-windup & reset/D Gain/Disabled'
 * '<S481>' : 'mcb_pmsm_foc_sensorless_f28379d/Speed Control/PI_Controller_Speed2/Discrete PI Controller  with anti-windup & reset/Filter/Disabled'
 * '<S482>' : 'mcb_pmsm_foc_sensorless_f28379d/Speed Control/PI_Controller_Speed2/Discrete PI Controller  with anti-windup & reset/Filter ICs/Disabled'
 * '<S483>' : 'mcb_pmsm_foc_sensorless_f28379d/Speed Control/PI_Controller_Speed2/Discrete PI Controller  with anti-windup & reset/I Gain/External Parameters'
 * '<S484>' : 'mcb_pmsm_foc_sensorless_f28379d/Speed Control/PI_Controller_Speed2/Discrete PI Controller  with anti-windup & reset/Ideal P Gain/Passthrough'
 * '<S485>' : 'mcb_pmsm_foc_sensorless_f28379d/Speed Control/PI_Controller_Speed2/Discrete PI Controller  with anti-windup & reset/Ideal P Gain Fdbk/Disabled'
 * '<S486>' : 'mcb_pmsm_foc_sensorless_f28379d/Speed Control/PI_Controller_Speed2/Discrete PI Controller  with anti-windup & reset/Integrator/Discrete'
 * '<S487>' : 'mcb_pmsm_foc_sensorless_f28379d/Speed Control/PI_Controller_Speed2/Discrete PI Controller  with anti-windup & reset/Integrator ICs/External IC'
 * '<S488>' : 'mcb_pmsm_foc_sensorless_f28379d/Speed Control/PI_Controller_Speed2/Discrete PI Controller  with anti-windup & reset/N Copy/Disabled wSignal Specification'
 * '<S489>' : 'mcb_pmsm_foc_sensorless_f28379d/Speed Control/PI_Controller_Speed2/Discrete PI Controller  with anti-windup & reset/N Gain/Disabled'
 * '<S490>' : 'mcb_pmsm_foc_sensorless_f28379d/Speed Control/PI_Controller_Speed2/Discrete PI Controller  with anti-windup & reset/P Copy/Disabled'
 * '<S491>' : 'mcb_pmsm_foc_sensorless_f28379d/Speed Control/PI_Controller_Speed2/Discrete PI Controller  with anti-windup & reset/Parallel P Gain/External Parameters'
 * '<S492>' : 'mcb_pmsm_foc_sensorless_f28379d/Speed Control/PI_Controller_Speed2/Discrete PI Controller  with anti-windup & reset/Reset Signal/External Reset'
 * '<S493>' : 'mcb_pmsm_foc_sensorless_f28379d/Speed Control/PI_Controller_Speed2/Discrete PI Controller  with anti-windup & reset/Saturation/Enabled'
 * '<S494>' : 'mcb_pmsm_foc_sensorless_f28379d/Speed Control/PI_Controller_Speed2/Discrete PI Controller  with anti-windup & reset/Saturation Fdbk/Disabled'
 * '<S495>' : 'mcb_pmsm_foc_sensorless_f28379d/Speed Control/PI_Controller_Speed2/Discrete PI Controller  with anti-windup & reset/Sum/Sum_PI'
 * '<S496>' : 'mcb_pmsm_foc_sensorless_f28379d/Speed Control/PI_Controller_Speed2/Discrete PI Controller  with anti-windup & reset/Sum Fdbk/Disabled'
 * '<S497>' : 'mcb_pmsm_foc_sensorless_f28379d/Speed Control/PI_Controller_Speed2/Discrete PI Controller  with anti-windup & reset/Tracking Mode/Disabled'
 * '<S498>' : 'mcb_pmsm_foc_sensorless_f28379d/Speed Control/PI_Controller_Speed2/Discrete PI Controller  with anti-windup & reset/Tracking Mode Sum/Passthrough'
 * '<S499>' : 'mcb_pmsm_foc_sensorless_f28379d/Speed Control/PI_Controller_Speed2/Discrete PI Controller  with anti-windup & reset/Tsamp - Integral/TsSignalSpecification'
 * '<S500>' : 'mcb_pmsm_foc_sensorless_f28379d/Speed Control/PI_Controller_Speed2/Discrete PI Controller  with anti-windup & reset/Tsamp - Ngain/Passthrough'
 * '<S501>' : 'mcb_pmsm_foc_sensorless_f28379d/Speed Control/PI_Controller_Speed2/Discrete PI Controller  with anti-windup & reset/postSat Signal/Forward_Path'
 * '<S502>' : 'mcb_pmsm_foc_sensorless_f28379d/Speed Control/PI_Controller_Speed2/Discrete PI Controller  with anti-windup & reset/preSat Signal/Forward_Path'
 * '<S503>' : 'mcb_pmsm_foc_sensorless_f28379d/Speed Control/PI_Controller_Speed2/Subsystem/IIR Filter'
 * '<S504>' : 'mcb_pmsm_foc_sensorless_f28379d/Speed Control/PI_Controller_Speed2/Subsystem/Speed Measurement'
 * '<S505>' : 'mcb_pmsm_foc_sensorless_f28379d/Speed Control/PI_Controller_Speed2/Subsystem/IIR Filter/IIR Filter'
 * '<S506>' : 'mcb_pmsm_foc_sensorless_f28379d/Speed Control/PI_Controller_Speed2/Subsystem/IIR Filter/IIR Filter/Low-pass'
 * '<S507>' : 'mcb_pmsm_foc_sensorless_f28379d/Speed Control/PI_Controller_Speed2/Subsystem/IIR Filter/IIR Filter/Low-pass/IIR Low Pass Filter'
 * '<S508>' : 'mcb_pmsm_foc_sensorless_f28379d/Speed Control/PI_Controller_Speed2/Subsystem/Speed Measurement/DT_Handle'
 * '<S509>' : 'mcb_pmsm_foc_sensorless_f28379d/Speed Control/PI_Controller_Speed2/Subsystem/Speed Measurement/DT_Handle/floating-point'
 * '<S510>' : 'mcb_pmsm_foc_sensorless_f28379d/Speed Control/PI_Controller_Speed2/Switch Case Action Subsystem2/Subsystem'
 * '<S511>' : 'mcb_pmsm_foc_sensorless_f28379d/Speed Control/PI_Controller_Speed2/Switch Case Action Subsystem2/Subsystem1'
 * '<S512>' : 'mcb_pmsm_foc_sensorless_f28379d/Speed Control/PI_Controller_Speed2/Switch Case Action Subsystem2/Subsystem2'
 * '<S513>' : 'mcb_pmsm_foc_sensorless_f28379d/Speed Control/PI_Controller_Speed2/Switch Case Action Subsystem2/Subsystem1/Saturation Dynamic1'
 * '<S514>' : 'mcb_pmsm_foc_sensorless_f28379d/Speed Control/PI_Controller_Speed2/Switch Case Action Subsystem2/Subsystem1/atan2'
 * '<S515>' : 'mcb_pmsm_foc_sensorless_f28379d/Speed Control/PI_Controller_Speed2/Switch Case Action Subsystem2/Subsystem1/atan2/Per Unit'
 * '<S516>' : 'mcb_pmsm_foc_sensorless_f28379d/Speed Control/PI_Controller_Speed2/Switch Case Action Subsystem2/Subsystem2/Compare To Constant'
 * '<S517>' : 'mcb_pmsm_foc_sensorless_f28379d/Speed Control/PI_Controller_Speed2/Switch Case Action Subsystem2/Subsystem2/Mechanical to Electrical Position'
 * '<S518>' : 'mcb_pmsm_foc_sensorless_f28379d/Speed Control/PI_Controller_Speed2/Switch Case Action Subsystem2/Subsystem2/Saturation Dynamic'
 * '<S519>' : 'mcb_pmsm_foc_sensorless_f28379d/Speed Control/PI_Controller_Speed2/Switch Case Action Subsystem2/Subsystem2/Mechanical to Electrical Position/MechToElec'
 * '<S520>' : 'mcb_pmsm_foc_sensorless_f28379d/Speed Control/PI_Controller_Speed2/Switch Case Action Subsystem2/Subsystem2/Mechanical to Electrical Position/MechToElec/floating-point'
 * '<S521>' : 'mcb_pmsm_foc_sensorless_f28379d/Speed Control/PI_Controller_Speed2/Switch Case Action Subsystem2/Subsystem2/Mechanical to Electrical Position/MechToElec/floating-point/Compensate Offset'
 * '<S522>' : 'mcb_pmsm_foc_sensorless_f28379d/Speed Control/PI_Controller_Speed2/Switch Case Action Subsystem2/Subsystem2/Mechanical to Electrical Position/MechToElec/floating-point/Mech To Elec'
 * '<S523>' : 'mcb_pmsm_foc_sensorless_f28379d/Speed Control/PI_Controller_Speed2/Switch Case Action Subsystem2/Subsystem2/Mechanical to Electrical Position/MechToElec/floating-point/Compensate Offset/If Action Subsystem'
 * '<S524>' : 'mcb_pmsm_foc_sensorless_f28379d/Speed Control/PI_Controller_Speed2/Switch Case Action Subsystem2/Subsystem2/Mechanical to Electrical Position/MechToElec/floating-point/Compensate Offset/If Action Subsystem1'
 * '<S525>' : 'mcb_pmsm_foc_sensorless_f28379d/Speed Control/PI_Controller_Speed2/Switch Case Action Subsystem2/Subsystem2/Mechanical to Electrical Position/MechToElec/floating-point/Mech To Elec/Variant Subsystem'
 * '<S526>' : 'mcb_pmsm_foc_sensorless_f28379d/Speed Control/PI_Controller_Speed2/Switch Case Action Subsystem2/Subsystem2/Mechanical to Electrical Position/MechToElec/floating-point/Mech To Elec/Variant Subsystem/Dialog'
 * '<S527>' : 'mcb_pmsm_foc_sensorless_f28379d/Speed Control/PI_Controller_Speed2/Zero_Cancellation/IIR Filter'
 * '<S528>' : 'mcb_pmsm_foc_sensorless_f28379d/Speed Control/PI_Controller_Speed2/Zero_Cancellation/IIR Filter/Low-pass'
 * '<S529>' : 'mcb_pmsm_foc_sensorless_f28379d/Speed Control/PI_Controller_Speed2/Zero_Cancellation/IIR Filter/Low-pass/IIR Low Pass Filter'
 * '<S530>' : 'mcb_pmsm_foc_sensorless_f28379d/Subsystem/MATLAB Function'
 */
#endif                       /* RTW_HEADER_mcb_pmsm_foc_sensorless_f28379d_h_ */

/*
 * File trailer for generated code.
 *
 * [EOF]
 */
