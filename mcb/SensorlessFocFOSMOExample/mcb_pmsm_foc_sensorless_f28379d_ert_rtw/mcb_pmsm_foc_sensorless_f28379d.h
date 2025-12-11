/*
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * File: mcb_pmsm_foc_sensorless_f28379d.h
 *
 * Code generated for Simulink model 'mcb_pmsm_foc_sensorless_f28379d'.
 *
 * Model version                  : 7.2
 * Simulink Coder version         : 23.2 (R2023b) 01-Aug-2023
 * C/C++ source code generated on : Thu Dec  4 20:29:46 2025
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
#include <string.h>
#include "rt_nonfinite.h"
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

/* Block signals for system '<S145>/Accumulate' */
typedef struct {
  real32_T Add;                        /* '<S146>/Add' */
  real32_T DataTypeConversion1;        /* '<S146>/Data Type Conversion1' */
  real32_T Add1;                       /* '<S146>/Add1' */
  real32_T Input;                      /* '<S147>/Input' */
  int16_T DataTypeConversion;          /* '<S146>/Data Type Conversion' */
  boolean_T Delay;                     /* '<S146>/Delay' */
} rtB_Accumulate_mcb_pmsm_foc_sen;

/* Block states (default storage) for system '<S145>/Accumulate' */
typedef struct {
  boolean_T Delay_DSTATE;              /* '<S146>/Delay' */
} rtDW_Accumulate_mcb_pmsm_foc_se;

/* Block signals for system '<S151>/If Action Subsystem' */
typedef struct {
  real32_T Convert_back;               /* '<S153>/Convert_back' */
  int16_T Convert_uint16;              /* '<S153>/Convert_uint16' */
} rtB_IfActionSubsystem_mcb_pmsm_;

/* Block signals for system '<S151>/If Action Subsystem1' */
typedef struct {
  real32_T Convert_back;               /* '<S154>/Convert_back' */
  int16_T Convert_uint16;              /* '<S154>/Convert_uint16' */
} rtB_IfActionSubsystem1_mcb_pmsm;

/* Block signals for system '<S346>/Dir_Sense' */
typedef struct {
  int16_T Switch;                      /* '<S354>/Switch' */
  boolean_T LogicalOperator;           /* '<S354>/Logical Operator' */
} rtB_Dir_Sense_mcb_pmsm_foc_sens;

/* Zero-crossing (trigger) state for system '<S346>/Dir_Sense' */
typedef struct {
  ZCSigState Dir_Sense_Trig_ZCE;       /* '<S346>/Dir_Sense' */
} rtZCE_Dir_Sense_mcb_pmsm_foc_se;

/* Block signals for system '<S402>/SPI Master Transfer' */
typedef struct {
  uint16_T SPIMasterTransfer;          /* '<S402>/SPI Master Transfer' */
} rtB_SPIMasterTransfer_mcb_pmsm_;

/* Block states (default storage) for system '<S402>/SPI Master Transfer' */
typedef struct {
  codertarget_tic2000_blocks_SPIM obj; /* '<S402>/SPI Master Transfer' */
  boolean_T objisempty;                /* '<S402>/SPI Master Transfer' */
} rtDW_SPIMasterTransfer_mcb_pmsm;

/* Block signals for system '<Root>/Speed Control' */
typedef struct {
  real32_T Constant2;                  /* '<S7>/Constant2' */
  real32_T RateLimiter;                /* '<S413>/Rate Limiter' */
  real32_T RateLimiter1;               /* '<S413>/Rate Limiter1' */
  real32_T Switch;                     /* '<S414>/Switch' */
  real32_T Product;                    /* '<S469>/Product' */
  real32_T UnitDelay;                  /* '<S469>/Unit Delay' */
  real32_T Product1;                   /* '<S469>/Product1' */
  real32_T Add1;                       /* '<S469>/Add1' */
  real32_T Sum;                        /* '<S412>/Sum' */
  real32_T PProdOut;                   /* '<S455>/PProd Out' */
  real32_T Ki2;                        /* '<S412>/Ki2' */
  real32_T Integrator;                 /* '<S450>/Integrator' */
  real32_T Sum_b;                      /* '<S459>/Sum' */
  real32_T DeadZone;                   /* '<S443>/DeadZone' */
  real32_T IProdOut;                   /* '<S447>/IProd Out' */
  real32_T Switch_p;                   /* '<S441>/Switch' */
  real32_T Saturation;                 /* '<S457>/Saturation' */
  real32_T DataStoreRead;              /* '<S414>/Data Store Read' */
  real32_T Switch1;                    /* '<S414>/Switch1' */
  real32_T Switch_po;                  /* '<S413>/Switch' */
  int16_T Switch1_o;                   /* '<S441>/Switch1' */
  int16_T Switch2;                     /* '<S441>/Switch2' */
  boolean_T DataStoreRead1;            /* '<S412>/Data Store Read1' */
  boolean_T DataStoreRead2;            /* '<S412>/Data Store Read2' */
  boolean_T AND;                       /* '<S412>/AND' */
  boolean_T DataStoreRead1_e;          /* '<S414>/Data Store Read1' */
  boolean_T LogicalOperator;           /* '<S412>/Logical Operator' */
  boolean_T RelationalOperator;        /* '<S441>/Relational Operator' */
  boolean_T fixforDTpropagationissue;/* '<S441>/fix for DT propagation issue' */
  boolean_T fixforDTpropagationissue1;
                                    /* '<S441>/fix for DT propagation issue1' */
  boolean_T Equal1;                    /* '<S441>/Equal1' */
  boolean_T AND3;                      /* '<S441>/AND3' */
} rtB_SpeedControl_mcb_pmsm_foc_s;

/* Block states (default storage) for system '<Root>/Speed Control' */
typedef struct {
  real32_T UnitDelay_DSTATE;           /* '<S469>/Unit Delay' */
  real32_T Integrator_DSTATE;          /* '<S450>/Integrator' */
  real32_T PrevY;                      /* '<S413>/Rate Limiter' */
  real32_T PrevY_d;                    /* '<S413>/Rate Limiter1' */
  int16_T Integrator_PrevResetState;   /* '<S450>/Integrator' */
} rtDW_SpeedControl_mcb_pmsm_foc_;

/* Block signals (default storage) */
typedef struct {
  uint32_T Sum[4];                     /* '<S20>/Sum' */
  uint32_T BytePack[2];                /* '<S377>/Byte Pack' */
  uint32_T SCI_Tx_Data[3];             /* '<S375>/Merge' */
  uint32_T SCI_Tx_Iteration;           /* '<S375>/Merge1' */
  uint32_T IndexVector;                /* '<S376>/Index Vector' */
  uint32_T Add;                        /* '<S376>/Add' */
  uint32_T Data[2];                    /* '<S379>/Data' */
  uint32_T Data_f[2];                  /* '<S380>/Data' */
  uint32_T Data_fw[2];                 /* '<S381>/Data' */
  uint32_T DataTypeConversion;         /* '<S197>/Data Type Conversion' */
  uint32_T Sum_p[4];                   /* '<S304>/Sum' */
  uint32_T PositionToCount;            /* '<S315>/PositionToCount' */
  uint32_T Delay;                      /* '<S315>/Delay' */
  uint32_T PositionToCount_e;          /* '<S352>/PositionToCount' */
  uint32_T Delay_p;                    /* '<S352>/Delay' */
  real32_T RT_f;                       /* '<Root>/RT' */
  real32_T RT3;                        /* '<Root>/RT3' */
  real32_T RT2[2];                     /* '<Root>/RT2' */
  real32_T SCIReceive[2];              /* '<S411>/SCI Receive' */
  real32_T DataStoreRead;              /* '<S18>/Data Store Read' */
  real32_T Abs;                        /* '<S18>/Abs' */
  real32_T Gain;                       /* '<S18>/Gain' */
  real32_T UnitDelay;                  /* '<S145>/Unit Delay' */
  real32_T Delay5[4];                  /* '<S1>/Delay5' */
  real32_T Merge[2];                   /* '<S164>/Merge' */
  real32_T Switch;                     /* '<S18>/Switch' */
  real32_T GetADCVoltage[2];           /* '<S166>/Get ADC Voltage' */
  real32_T GetCurrents[2];             /* '<S166>/Get Currents' */
  real32_T PU_Conversion[2];           /* '<S166>/PU_Conversion' */
  real32_T Merge_g;                    /* '<S151>/Merge' */
  real32_T indexing;                   /* '<S20>/indexing' */
  real32_T Lookup[4];                  /* '<S20>/Lookup' */
  real32_T Sum3;                       /* '<S150>/Sum3' */
  real32_T DataTypeConversion1;        /* '<S20>/Data Type Conversion1' */
  real32_T Sum2;                       /* '<S20>/Sum2' */
  real32_T Product;                    /* '<S150>/Product' */
  real32_T Sum4;                       /* '<S150>/Sum4' */
  real32_T Sum5;                       /* '<S150>/Sum5' */
  real32_T Product1;                   /* '<S150>/Product1' */
  real32_T Sum6;                       /* '<S150>/Sum6' */
  real32_T Sum_g;                      /* '<S26>/Sum' */
  real32_T PProdOut;                   /* '<S131>/PProd Out' */
  real32_T UnitDelay_c;                /* '<S26>/Unit Delay' */
  real32_T Integrator;                 /* '<S126>/Integrator' */
  real32_T Sum_l;                      /* '<S135>/Sum' */
  real32_T Switch_h;                   /* '<S26>/Switch' */
  real32_T Sum_k;                      /* '<S25>/Sum' */
  real32_T PProdOut_a;                 /* '<S80>/PProd Out' */
  real32_T UnitDelay_m;                /* '<S25>/Unit Delay' */
  real32_T Integrator_c;               /* '<S75>/Integrator' */
  real32_T Sum_kn;                     /* '<S84>/Sum' */
  real32_T Switch_l;                   /* '<S25>/Switch' */
  real32_T Switch_f;                   /* '<S29>/Switch' */
  real32_T Product_b;                  /* '<S29>/Product' */
  real32_T Product_k;                  /* '<S30>/Product' */
  real32_T Product1_n;                 /* '<S30>/Product1' */
  real32_T Sum1;                       /* '<S30>/Sum1' */
  real32_T Merge_e[2];                 /* '<S24>/Merge' */
  real32_T DeadZone;                   /* '<S68>/DeadZone' */
  real32_T IProdOut;                   /* '<S72>/IProd Out' */
  real32_T Switch_fm;                  /* '<S66>/Switch' */
  real32_T DeadZone_d;                 /* '<S119>/DeadZone' */
  real32_T IProdOut_h;                 /* '<S123>/IProd Out' */
  real32_T Switch_m;                   /* '<S117>/Switch' */
  real32_T DataStoreRead1;             /* '<S9>/Data Store Read1' */
  real32_T TmpSignalConversionAtSelectorIn[9];
  real32_T Selector[2];                /* '<S9>/Selector' */
  real32_T DataTypeConversion_c;       /* '<S13>/Data Type Conversion' */
  real32_T Switch_p;                   /* '<S372>/Switch' */
  real32_T OutportBufferForSpeed_fb;   /* '<S1>/Input Scaling' */
  real32_T TmpSignalConversionAtDelay5Inpo[4];
  real32_T sqrt3_by_two;               /* '<S161>/sqrt3_by_two' */
  real32_T one_by_two;                 /* '<S161>/one_by_two' */
  real32_T add_c;                      /* '<S161>/add_c' */
  real32_T add_b;                      /* '<S161>/add_b' */
  real32_T Min;                        /* '<S158>/Min' */
  real32_T Max;                        /* '<S158>/Max' */
  real32_T Add_c;                      /* '<S158>/Add' */
  real32_T one_by_two_p;               /* '<S158>/one_by_two' */
  real32_T Add3;                       /* '<S157>/Add3' */
  real32_T Add2;                       /* '<S157>/Add2' */
  real32_T Add1;                       /* '<S157>/Add1' */
  real32_T Gain_f[3];                  /* '<S157>/Gain' */
  real32_T One_by_Two[3];              /* '<S13>/One_by_Two' */
  real32_T PWM_Duty_Cycles[3];         /* '<S13>/Sum' */
  real32_T Delay1;                     /* '<S170>/Delay1' */
  real32_T Delay_c[2];                 /* '<S171>/Delay' */
  real32_T Gain_b;                     /* '<S176>/Gain' */
  real32_T UnaryMinus;                 /* '<S184>/Unary Minus' */
  real32_T Product1_i;                 /* '<S173>/Product1' */
  real32_T Gain1;                      /* '<S183>/Gain1' */
  real32_T Product2;                   /* '<S184>/Product2' */
  real32_T Product_p;                  /* '<S173>/Product' */
  real32_T Gain_m;                     /* '<S183>/Gain' */
  real32_T Product_m;                  /* '<S184>/Product' */
  real32_T Sum_c;                      /* '<S184>/Sum' */
  real32_T Product1_j;                 /* '<S184>/Product1' */
  real32_T Product3;                   /* '<S184>/Product3' */
  real32_T Sum1_e;                     /* '<S184>/Sum1' */
  real32_T Product3_n;                 /* '<S173>/Product3' */
  real32_T Product1_o;                 /* '<S180>/Product1' */
  real32_T Product2_i;                 /* '<S173>/Product2' */
  real32_T Gain_fr;                    /* '<S175>/Gain' */
  real32_T Product3_i;                 /* '<S180>/Product3' */
  real32_T Sum1_c;                     /* '<S180>/Sum1' */
  real32_T Product1_ja;                /* '<S179>/Product1' */
  real32_T UnaryMinus_k;               /* '<S179>/Unary Minus' */
  real32_T UnaryMinus_g;               /* '<S180>/Unary Minus' */
  real32_T Product2_f;                 /* '<S180>/Product2' */
  real32_T Product_e;                  /* '<S180>/Product' */
  real32_T Sum_n;                      /* '<S180>/Sum' */
  real32_T Product_d;                  /* '<S179>/Product' */
  real32_T UnaryMinus_a;               /* '<S181>/Unary Minus' */
  real32_T Gain1_d;                    /* '<S178>/Gain1' */
  real32_T UnaryMinus1;                /* '<S178>/Unary Minus1' */
  real32_T Product2_p;                 /* '<S181>/Product2' */
  real32_T Gain_p;                     /* '<S178>/Gain' */
  real32_T UnaryMinus_b;               /* '<S178>/Unary Minus' */
  real32_T Product_kp;                 /* '<S181>/Product' */
  real32_T Sum_f;                      /* '<S181>/Sum' */
  real32_T Product1_g;                 /* '<S181>/Product1' */
  real32_T Product3_p;                 /* '<S181>/Product3' */
  real32_T Sum1_k;                     /* '<S181>/Sum1' */
  real32_T UnaryMinus_a2;              /* '<S182>/Unary Minus' */
  real32_T Product_o;                  /* '<S177>/Product' */
  real32_T Product3_a;                 /* '<S177>/Product3' */
  real32_T UnaryMinus1_c;              /* '<S177>/Unary Minus1' */
  real32_T Product5;                   /* '<S177>/Product5' */
  real32_T Sum1_h;                     /* '<S177>/Sum1' */
  real32_T Product2_b;                 /* '<S182>/Product2' */
  real32_T Product4;                   /* '<S177>/Product4' */
  real32_T Product1_l;                 /* '<S177>/Product1' */
  real32_T UnaryMinus_j;               /* '<S177>/Unary Minus' */
  real32_T Product2_d;                 /* '<S177>/Product2' */
  real32_T Sum_b;                      /* '<S177>/Sum' */
  real32_T Product_h;                  /* '<S182>/Product' */
  real32_T Sum_k1;                     /* '<S182>/Sum' */
  real32_T Product1_b;                 /* '<S182>/Product1' */
  real32_T Product3_c;                 /* '<S182>/Product3' */
  real32_T Sum1_a;                     /* '<S182>/Sum1' */
  real32_T Sum_ba[2];                  /* '<S175>/Sum' */
  real32_T Sum_m[2];                   /* '<S171>/Sum' */
  real32_T Gain1_m[2];                 /* '<S171>/Gain1' */
  real32_T Sum2_j[2];                  /* '<S171>/Sum2' */
  real32_T Gain2[2];                   /* '<S171>/Gain2' */
  real32_T Sum1_o[2];                  /* '<S171>/Sum1' */
  real32_T Product_pr[2];              /* '<S170>/Product' */
  real32_T Product_kb[2];              /* '<S187>/Product' */
  real32_T UnitDelay_i[2];             /* '<S187>/Unit Delay' */
  real32_T Product1_oy[2];             /* '<S187>/Product1' */
  real32_T Add1_a[2];                  /* '<S187>/Add1' */
  real32_T Merge_k;                    /* '<S188>/Merge' */
  real32_T Merge1;                     /* '<S188>/Merge1' */
  real32_T Merge_l[2];                 /* '<S197>/Merge' */
  real32_T Product_f;                  /* '<S194>/Product' */
  real32_T Product1_nx;                /* '<S194>/Product1' */
  real32_T Sum_k0;                     /* '<S194>/Sum' */
  real32_T Merge_p;                    /* '<S194>/Merge' */
  real32_T Merge1_g;                   /* '<S194>/Merge1' */
  real32_T Merge_i;                    /* '<S196>/Merge' */
  real32_T Product_k3;                 /* '<S278>/Product' */
  real32_T UnitDelay_ik;               /* '<S278>/Unit Delay' */
  real32_T Product1_ls;                /* '<S278>/Product1' */
  real32_T Add1_p;                     /* '<S278>/Add1' */
  real32_T Delay_i;                    /* '<S302>/Delay' */
  real32_T Merge_h;                    /* '<S308>/Merge' */
  real32_T indexing_i;                 /* '<S304>/indexing' */
  real32_T Lookup_a[4];                /* '<S304>/Lookup' */
  real32_T Sum5_h;                     /* '<S307>/Sum5' */
  real32_T DataTypeConversion1_c;      /* '<S304>/Data Type Conversion1' */
  real32_T Sum2_k;                     /* '<S304>/Sum2' */
  real32_T Product1_e;                 /* '<S307>/Product1' */
  real32_T Sum6_l;                     /* '<S307>/Sum6' */
  real32_T Product_oz;                 /* '<S189>/Product' */
  real32_T Sum3_c;                     /* '<S307>/Sum3' */
  real32_T Product_c;                  /* '<S307>/Product' */
  real32_T Sum4_m;                     /* '<S307>/Sum4' */
  real32_T Product1_m;                 /* '<S189>/Product1' */
  real32_T Sum_mt;                     /* '<S189>/Sum' */
  real32_T ProportionalGain;           /* '<S240>/Proportional Gain' */
  real32_T IntegralGain;               /* '<S232>/Integral Gain' */
  real32_T Integrator_b;               /* '<S235>/Integrator' */
  real32_T Sum_o;                      /* '<S244>/Sum' */
  real32_T speed;                      /* '<S189>/Sum1' */
  real32_T Product_j;                  /* '<S201>/Product' */
  real32_T UnitDelay_e;                /* '<S201>/Unit Delay' */
  real32_T Product1_p;                 /* '<S201>/Product1' */
  real32_T Add1_l;                     /* '<S201>/Add1' */
  real32_T Gain_b3;                    /* '<S302>/Gain' */
  real32_T UnitDelay_g;                /* '<S303>/Unit Delay' */
  real32_T In1;                        /* '<S299>/In1' */
  real32_T Delay2;                     /* '<S289>/Delay2' */
  real32_T Delay3;                     /* '<S289>/Delay3' */
  real32_T Product_ml;                 /* '<S298>/Product' */
  real32_T UnitDelay_gc;               /* '<S298>/Unit Delay' */
  real32_T Product1_k;                 /* '<S298>/Product1' */
  real32_T Add1_g;                     /* '<S298>/Add1' */
  real32_T Gain_a;                     /* '<S289>/Gain' */
  real32_T Sum1_p;                     /* '<S289>/Sum1' */
  real32_T Gain1_p;                    /* '<S289>/Gain1' */
  real32_T Delay2_h;                   /* '<S290>/Delay2' */
  real32_T Delay3_h;                   /* '<S290>/Delay3' */
  real32_T Product_fa;                 /* '<S295>/Product' */
  real32_T UnitDelay_e3;               /* '<S295>/Unit Delay' */
  real32_T Product1_eu;                /* '<S295>/Product1' */
  real32_T Add1_o;                     /* '<S295>/Add1' */
  real32_T Gain_n;                     /* '<S290>/Gain' */
  real32_T Sum1_ad;                    /* '<S290>/Sum1' */
  real32_T Gain1_f;                    /* '<S290>/Gain1' */
  real32_T Product_o0;                 /* '<S255>/Product' */
  real32_T Product1_nd;                /* '<S255>/Product1' */
  real32_T Product_g;                  /* '<S288>/Product' */
  real32_T UnitDelay_n;                /* '<S288>/Unit Delay' */
  real32_T Product1_m1;                /* '<S288>/Product1' */
  real32_T Add1_h;                     /* '<S288>/Add1' */
  real32_T Delay1_b;                   /* '<S281>/Delay1' */
  real32_T Sum_h;                      /* '<S281>/Sum' */
  real32_T Gain1_g;                    /* '<S281>/Gain1' */
  real32_T Delay_a;                    /* '<S281>/Delay' */
  real32_T Gain2_p;                    /* '<S281>/Gain2' */
  real32_T Sum1_m;                     /* '<S281>/Sum1' */
  real32_T Product_g0;                 /* '<S254>/Product' */
  real32_T Product_co;                 /* '<S285>/Product' */
  real32_T UnitDelay_gt;               /* '<S285>/Unit Delay' */
  real32_T Product1_f;                 /* '<S285>/Product1' */
  real32_T Add1_oz;                    /* '<S285>/Add1' */
  real32_T Delay1_h;                   /* '<S282>/Delay1' */
  real32_T Sum_n4;                     /* '<S282>/Sum' */
  real32_T Gain1_pc;                   /* '<S282>/Gain1' */
  real32_T Delay_l;                    /* '<S282>/Delay' */
  real32_T Gain2_h;                    /* '<S282>/Gain2' */
  real32_T Sum1_i;                     /* '<S282>/Sum1' */
  real32_T Product1_nm;                /* '<S254>/Product1' */
  real32_T Sum_k2;                     /* '<S254>/Sum' */
  real32_T MathFunction;               /* '<S254>/Math Function' */
  real32_T Abs_n;                      /* '<S254>/Abs' */
  real32_T Delay2_g;                   /* '<S256>/Delay2' */
  real32_T Delay3_l;                   /* '<S256>/Delay3' */
  real32_T Product_bn;                 /* '<S270>/Product' */
  real32_T UnitDelay_k;                /* '<S270>/Unit Delay' */
  real32_T Product1_g1;                /* '<S270>/Product1' */
  real32_T Add1_m;                     /* '<S270>/Add1' */
  real32_T Gain_e;                     /* '<S256>/Gain' */
  real32_T Sum1_id;                    /* '<S256>/Sum1' */
  real32_T Gain1_pv;                   /* '<S256>/Gain1' */
  real32_T Delay2_l;                   /* '<S257>/Delay2' */
  real32_T Delay3_n;                   /* '<S257>/Delay3' */
  real32_T Product_ck;                 /* '<S264>/Product' */
  real32_T UnitDelay_nf;               /* '<S264>/Unit Delay' */
  real32_T Product1_kb;                /* '<S264>/Product1' */
  real32_T Add1_h3;                    /* '<S264>/Add1' */
  real32_T Gain_c;                     /* '<S257>/Gain' */
  real32_T Sum1_l;                     /* '<S257>/Sum1' */
  real32_T Gain1_i;                    /* '<S257>/Gain1' */
  real32_T Delay_n;                    /* '<S261>/Delay' */
  real32_T Delay1_p;                   /* '<S261>/Delay1' */
  real32_T Switch1;                    /* '<S261>/Switch1' */
  real32_T Product_hj;                 /* '<S267>/Product' */
  real32_T UnitDelay_d;                /* '<S267>/Unit Delay' */
  real32_T Product1_m5;                /* '<S267>/Product1' */
  real32_T Add1_k;                     /* '<S267>/Add1' */
  real32_T Square;                     /* '<S252>/Square' */
  real32_T Square1;                    /* '<S252>/Square1' */
  real32_T Sum2_m;                     /* '<S252>/Sum2' */
  real32_T Sqrt;                       /* '<S252>/Sqrt' */
  real32_T UnaryMinus_i;               /* '<S252>/Unary Minus' */
  real32_T Sum_l5;                     /* '<S261>/Sum' */
  real32_T Sqrt_b;                     /* '<S203>/Sqrt' */
  real32_T Divide;                     /* '<S203>/Divide' */
  real32_T Divide1;                    /* '<S203>/Divide1' */
  real32_T Product_ep[4];              /* '<S319>/Product' */
  real32_T UnitDelay_h[4];             /* '<S319>/Unit Delay' */
  real32_T Product1_h[4];              /* '<S319>/Product1' */
  real32_T Add1_n[4];                  /* '<S319>/Add1' */
  real32_T Sum6_i[4];                  /* '<S312>/Sum6' */
  real32_T ScalingR;                   /* '<S336>/ScalingR' */
  real32_T Sum3_b;                     /* '<S333>/Sum3' */
  real32_T Delay1_px;                  /* '<S335>/Delay1' */
  real32_T Sum_mm;                     /* '<S335>/Sum' */
  real32_T Gain1_k;                    /* '<S335>/Gain1' */
  real32_T Delay_no;                   /* '<S335>/Delay' */
  real32_T Gain2_e;                    /* '<S335>/Gain2' */
  real32_T Sum1_on;                    /* '<S335>/Sum1' */
  real32_T ScalingL;                   /* '<S336>/ScalingL' */
  real32_T Sum1_j;                     /* '<S333>/Sum1' */
  real32_T Product_en;                 /* '<S339>/Product' */
  real32_T UnitDelay_er;               /* '<S339>/Unit Delay' */
  real32_T Product1_p3;                /* '<S339>/Product1' */
  real32_T Add1_d;                     /* '<S339>/Add1' */
  real32_T Switch_c;                   /* '<S333>/Switch' */
  real32_T ScalingR_g;                 /* '<S329>/ScalingR' */
  real32_T Sum3_d;                     /* '<S326>/Sum3' */
  real32_T Delay1_j;                   /* '<S328>/Delay1' */
  real32_T Sum_c5;                     /* '<S328>/Sum' */
  real32_T Gain1_k1;                   /* '<S328>/Gain1' */
  real32_T Delay_b;                    /* '<S328>/Delay' */
  real32_T Gain2_j;                    /* '<S328>/Gain2' */
  real32_T Sum1_co;                    /* '<S328>/Sum1' */
  real32_T ScalingL_e;                 /* '<S329>/ScalingL' */
  real32_T Sum1_f;                     /* '<S326>/Sum1' */
  real32_T Product_jy;                 /* '<S332>/Product' */
  real32_T UnitDelay_m1;               /* '<S332>/Unit Delay' */
  real32_T Product1_kt;                /* '<S332>/Product1' */
  real32_T Add1_ah;                    /* '<S332>/Add1' */
  real32_T Switch_i;                   /* '<S326>/Switch' */
  real32_T DTC;                        /* '<S344>/DTC' */
  real32_T SpeedGain;                  /* '<S315>/SpeedGain' */
  real32_T Product_i;                  /* '<S342>/Product' */
  real32_T UnitDelay_my;               /* '<S342>/Unit Delay' */
  real32_T Product1_hz;                /* '<S342>/Product1' */
  real32_T Add1_k1;                    /* '<S342>/Add1' */
  real32_T elect2mech;                 /* '<S168>/elect2mech' */
  real32_T Sum_i;                      /* '<S338>/Sum' */
  real32_T Sum_bi;                     /* '<S331>/Sum' */
  real32_T Atan2;                      /* '<S324>/Atan2' */
  real32_T Switch_c3;                  /* '<S324>/Switch' */
  real32_T algDD;
  real32_T Gain_c2;                    /* '<S325>/Gain' */
  real32_T Switch_k;                   /* '<S325>/Switch' */
  real32_T Bias;                       /* '<S325>/Bias' */
  real32_T UnitDelay1;                 /* '<S357>/Unit Delay1' */
  real32_T UnitDelay_b;                /* '<S357>/Unit Delay' */
  real32_T a;                          /* '<S357>/a' */
  real32_T Delay_g;                    /* '<S347>/Delay' */
  real32_T Sum2_p;                     /* '<S347>/Sum2' */
  real32_T Sum3_g;                     /* '<S357>/Sum3' */
  real32_T b_invg;                     /* '<S357>/b_inv*g' */
  real32_T Delay1_i;                   /* '<S357>/Delay1' */
  real32_T Sum4_k;                     /* '<S357>/Sum4' */
  real32_T Product_c4;                 /* '<S361>/Product' */
  real32_T UnitDelay_o;                /* '<S361>/Unit Delay' */
  real32_T Product1_ei;                /* '<S361>/Product1' */
  real32_T Add1_km;                    /* '<S361>/Add1' */
  real32_T UnitDelay1_k;               /* '<S358>/Unit Delay1' */
  real32_T UnitDelay_ev;               /* '<S358>/Unit Delay' */
  real32_T a_g;                        /* '<S358>/a' */
  real32_T Delay_cd;                   /* '<S348>/Delay' */
  real32_T Sum2_b;                     /* '<S348>/Sum2' */
  real32_T Sum3_n;                     /* '<S358>/Sum3' */
  real32_T b_invg_n;                   /* '<S358>/b_inv*g' */
  real32_T Delay1_n;                   /* '<S358>/Delay1' */
  real32_T Sum4_g;                     /* '<S358>/Sum4' */
  real32_T Product_ed;                 /* '<S364>/Product' */
  real32_T UnitDelay_l;                /* '<S364>/Unit Delay' */
  real32_T Product1_m1j;               /* '<S364>/Product1' */
  real32_T Add1_i;                     /* '<S364>/Add1' */
  real32_T Merge_l1;                   /* '<S346>/Merge' */
  real32_T Merge1_e;                   /* '<S346>/Merge1' */
  real32_T Delay_f;                    /* '<S345>/Delay' */
  real32_T Sign;                       /* '<S347>/Sign' */
  real32_T Eta;                        /* '<S347>/Eta' */
  real32_T Sum_i4;                     /* '<S347>/Sum' */
  real32_T b;                          /* '<S347>/b' */
  real32_T a_o;                        /* '<S347>/a' */
  real32_T Sum1_c0;                    /* '<S347>/Sum1' */
  real32_T Sign_m;                     /* '<S348>/Sign' */
  real32_T Eta_e;                      /* '<S348>/Eta' */
  real32_T Sum_iv;                     /* '<S348>/Sum' */
  real32_T b_n;                        /* '<S348>/b' */
  real32_T a_gy;                       /* '<S348>/a' */
  real32_T Sum1_hy;                    /* '<S348>/Sum1' */
  real32_T DTC_c;                      /* '<S369>/DTC' */
  real32_T SpeedGain_h;                /* '<S352>/SpeedGain' */
  real32_T Product_my;                 /* '<S367>/Product' */
  real32_T UnitDelay_gq;               /* '<S367>/Unit Delay' */
  real32_T Product1_mm;                /* '<S367>/Product1' */
  real32_T Add1_c;                     /* '<S367>/Add1' */
  real32_T Product_cp;                 /* '<S353>/Product' */
  real32_T Product2_m;                 /* '<S353>/Product2' */
  real32_T Sum1_h1;                    /* '<S353>/Sum1' */
  real32_T Product1_fi;                /* '<S353>/Product1' */
  real32_T Product3_pb;                /* '<S353>/Product3' */
  real32_T Sum2_kb;                    /* '<S353>/Sum2' */
  real32_T Switch_l4;                  /* '<S353>/Switch' */
  real32_T Atan2_m;                    /* '<S370>/Atan2' */
  real32_T Switch_ia;                  /* '<S370>/Switch' */
  real32_T algDD_f;
  real32_T Gain_nd;                    /* '<S371>/Gain' */
  real32_T Switch_b;                   /* '<S371>/Switch' */
  real32_T Bias_l;                     /* '<S371>/Bias' */
  real32_T Bias_e;                     /* '<S353>/Bias' */
  real32_T acos_k;                     /* '<S148>/acos' */
  real32_T bsin;                       /* '<S148>/bsin' */
  real32_T sum_Ds;                     /* '<S148>/sum_Ds' */
  real32_T bcos;                       /* '<S148>/bcos' */
  real32_T asin_e;                     /* '<S148>/asin' */
  real32_T sum_Qs;                     /* '<S148>/sum_Qs' */
  real32_T Switch_o[2];                /* '<S149>/Switch' */
  real32_T algDD_o1;
  real32_T algDD_o2;
  real32_T qcos;                       /* '<S143>/qcos' */
  real32_T dsin;                       /* '<S143>/dsin' */
  real32_T sum_beta;                   /* '<S143>/sum_beta' */
  real32_T dcos;                       /* '<S143>/dcos' */
  real32_T qsin;                       /* '<S143>/qsin' */
  real32_T sum_alpha;                  /* '<S143>/sum_alpha' */
  real32_T Switch_ih[2];               /* '<S144>/Switch' */
  real32_T algDD_o1_o;
  real32_T algDD_o2_k;
  real32_T Saturation;                 /* '<S133>/Saturation' */
  real32_T Vd_OpenLoop;                /* '<S25>/Vd_OpenLoop' */
  real32_T Abs_f;                      /* '<S25>/Abs' */
  real32_T Saturation_h;               /* '<S25>/Saturation' */
  real32_T Saturation_i;               /* '<S82>/Saturation' */
  real32_T Product_l[2];               /* '<S31>/Product' */
  real32_T SquareRoot;                 /* '<S31>/Square Root' */
  real32_T Switch_a;                   /* '<S31>/Switch' */
  real32_T Reciprocal;                 /* '<S31>/Reciprocal' */
  real32_T Switch_fu[2];               /* '<S28>/Switch' */
  real32_T Switch2;                    /* '<S38>/Switch2' */
  real32_T Product_dh;                 /* '<S37>/Product' */
  real32_T Sum_nt;                     /* '<S37>/Sum' */
  real32_T Product2_l;                 /* '<S37>/Product2' */
  real32_T Merge_gk;                   /* '<S37>/Merge' */
  real32_T Gain_d;                     /* '<S37>/Gain' */
  real32_T Switch_ps;                  /* '<S38>/Switch' */
  real32_T Switch1_n;                  /* '<S39>/Switch1' */
  real32_T Sqrt_b5;                    /* '<S39>/Sqrt' */
  real32_T Gain_du;                    /* '<S39>/Gain' */
  real32_T a_plus_2b;                  /* '<S23>/a_plus_2b' */
  real32_T one_by_sqrt3;               /* '<S23>/one_by_sqrt3' */
  real32_T algDD_o1_n;
  real32_T algDD_o2_e;
  int32_T DataTypeConversion_j[2];     /* '<S163>/Data Type Conversion' */
  int32_T Add_p[2];                    /* '<S163>/Add' */
  int32_T SpeedCount;                  /* '<S315>/SpeedCount' */
  int32_T SpeedCount_h;                /* '<S352>/SpeedCount' */
  uint16_T Switch_e;                   /* '<S394>/Switch' */
  uint16_T Divide_p;                   /* '<S393>/Divide' */
  uint16_T Divide1_l;                  /* '<S393>/Divide1' */
  uint16_T ForIterator;                /* '<S396>/For Iterator' */
  uint16_T ADC_B2;                     /* '<S396>/ADC_B2' */
  uint16_T ADC_C2;                     /* '<S396>/ADC_C2' */
  uint16_T Memory;                     /* '<S401>/Memory' */
  uint16_T Sum_ij;                     /* '<S401>/Sum' */
  uint16_T Memory1;                    /* '<S401>/Memory1' */
  uint16_T Sum1_jw;                    /* '<S401>/Sum1' */
  uint16_T DataTypeConversion2;        /* '<S409>/Data Type Conversion2' */
  uint16_T BitwiseOperator;            /* '<S408>/Bitwise Operator' */
  uint16_T BitwiseOperator1;           /* '<S408>/Bitwise Operator1' */
  uint16_T ShiftArithmetic1;           /* '<S408>/Shift Arithmetic1' */
  uint16_T Switch2_c;                  /* '<S18>/Switch2' */
  uint16_T DataStoreRead1_f;           /* '<S163>/Data Store Read1' */
  uint16_T DataStoreRead2;             /* '<S163>/Data Store Read2' */
  uint16_T ADC_C_IN2;                  /* '<S162>/ADC_C_IN2' */
  uint16_T ADC_B_IN2;                  /* '<S162>/ADC_B_IN2' */
  uint16_T Switch1_h;                  /* '<S29>/Switch1' */
  uint16_T DataTypeConversion_jp;      /* '<S151>/Data Type Conversion' */
  uint16_T Get_Integer;                /* '<S20>/Get_Integer' */
  uint16_T Output;                     /* '<S378>/Output' */
  uint16_T DataStoreRead_f;            /* '<S9>/Data Store Read' */
  uint16_T MultiportSwitch[2];         /* '<S9>/Multiport Switch' */
  uint16_T FixPtSum1;                  /* '<S382>/FixPt Sum1' */
  uint16_T FixPtSwitch;                /* '<S383>/FixPt Switch' */
  uint16_T Switch1_nh[3];              /* '<S372>/Switch1' */
  uint16_T Scale_to_PWM_Counter_PRD[3];/* '<S372>/Scale_to_PWM_Counter_PRD' */
  uint16_T DataTypeConversion_b;       /* '<S308>/Data Type Conversion' */
  uint16_T Get_Integer_n;              /* '<S304>/Get_Integer' */
  uint16_T DataTypeConversion_m;       /* '<S27>/Data Type Conversion' */
  uint16_T DataTypeConversion_e;       /* '<S37>/Data Type Conversion' */
  int16_T WhileIterator;               /* '<S376>/While Iterator' */
  int16_T Switch1_m;                   /* '<S66>/Switch1' */
  int16_T Switch2_p;                   /* '<S66>/Switch2' */
  int16_T Switch1_l;                   /* '<S117>/Switch1' */
  int16_T Switch2_k;                   /* '<S117>/Switch2' */
  boolean_T NOT;                       /* '<S392>/NOT' */
  boolean_T DataTypeConversion3;       /* '<S408>/Data Type Conversion3' */
  boolean_T DataTypeConversion_o;      /* '<S18>/Data Type Conversion' */
  boolean_T NOT_f;                     /* '<S145>/NOT' */
  boolean_T Compare;                   /* '<S152>/Compare' */
  boolean_T DataStoreRead1_h;          /* '<S26>/Data Store Read1' */
  boolean_T LogicalOperator;           /* '<S26>/Logical Operator' */
  boolean_T DataStoreRead1_o;          /* '<S25>/Data Store Read1' */
  boolean_T LogicalOperator_n;         /* '<S25>/Logical Operator' */
  boolean_T RelationalOperator;        /* '<S66>/Relational Operator' */
  boolean_T fixforDTpropagationissue; /* '<S66>/fix for DT propagation issue' */
  boolean_T fixforDTpropagationissue1;
                                     /* '<S66>/fix for DT propagation issue1' */
  boolean_T Equal1;                    /* '<S66>/Equal1' */
  boolean_T AND3;                      /* '<S66>/AND3' */
  boolean_T RelationalOperator_c;      /* '<S117>/Relational Operator' */
  boolean_T fixforDTpropagationissue_p;
                                     /* '<S117>/fix for DT propagation issue' */
  boolean_T fixforDTpropagationissue1_o;
                                    /* '<S117>/fix for DT propagation issue1' */
  boolean_T Equal1_b;                  /* '<S117>/Equal1' */
  boolean_T AND3_b;                    /* '<S117>/AND3' */
  boolean_T Enable;                    /* '<S13>/Enable' */
  boolean_T DataStoreRead1_c;          /* '<S167>/Data Store Read1' */
  boolean_T LogicalOperator_g;         /* '<S167>/Logical Operator' */
  boolean_T AlphaRelay;                /* '<S188>/AlphaRelay' */
  boolean_T BetaRelay;                 /* '<S188>/BetaRelay' */
  boolean_T CastToBoolean;             /* '<S194>/Cast To Boolean' */
  boolean_T Compare_h;                 /* '<S309>/Compare' */
  boolean_T NOT_fg;                    /* '<S303>/NOT' */
  boolean_T Compare_g;                 /* '<S272>/Compare' */
  boolean_T Compare_e;                 /* '<S274>/Compare' */
  boolean_T Compare_k;                 /* '<S271>/Compare' */
  boolean_T LogicalOperator1;          /* '<S261>/Logical Operator1' */
  boolean_T Compare_gv;                /* '<S275>/Compare' */
  boolean_T LogicalOperator2;          /* '<S261>/Logical Operator2' */
  boolean_T AND;                       /* '<S261>/AND' */
  boolean_T UnitDelay_o1;              /* '<S261>/Unit Delay' */
  boolean_T Switch_j;                  /* '<S261>/Switch' */
  boolean_T Compare_l;                 /* '<S273>/Compare' */
  boolean_T LogicalOperator_b;         /* '<S261>/Logical Operator' */
  boolean_T DataStoreRead1_fm;         /* '<S168>/Data Store Read1' */
  boolean_T LogicalOperator_j;         /* '<S168>/Logical Operator' */
  boolean_T DataStoreRead1_ha;         /* '<S169>/Data Store Read1' */
  boolean_T LogicalOperator_go;        /* '<S169>/Logical Operator' */
  boolean_T AlphaRelay_l;              /* '<S346>/AlphaRelay' */
  boolean_T BetaRelay_l;               /* '<S346>/BetaRelay' */
  boolean_T RelationalOperator_e;      /* '<S27>/Relational Operator' */
  boolean_T Compare_ee;                /* '<S33>/Compare' */
  boolean_T Compare_ga;                /* '<S34>/Compare' */
  boolean_T LowerRelop1;               /* '<S38>/LowerRelop1' */
  boolean_T RelationalOperator_h;      /* '<S37>/Relational Operator' */
  boolean_T UpperRelop;                /* '<S38>/UpperRelop' */
  rtB_SpeedControl_mcb_pmsm_foc_s SpeedControl;/* '<Root>/Speed Control' */
  rtB_SPIMasterTransfer_mcb_pmsm_ SPIMasterTransfer1;/* '<S402>/SPI Master Transfer' */
  rtB_SPIMasterTransfer_mcb_pmsm_ SPIMasterTransfer;/* '<S402>/SPI Master Transfer' */
  rtB_IfActionSubsystem1_mcb_pmsm IfActionSubsystem1_f;/* '<S308>/If Action Subsystem1' */
  rtB_IfActionSubsystem_mcb_pmsm_ IfActionSubsystem_f;/* '<S308>/If Action Subsystem' */
  rtB_Accumulate_mcb_pmsm_foc_sen Accumulate_g;/* '<S303>/Accumulate' */
  rtB_Dir_Sense_mcb_pmsm_foc_sens Dir_Sense_d;/* '<S188>/Dir_Sense' */
  rtB_Dir_Sense_mcb_pmsm_foc_sens Dir_Sense;/* '<S346>/Dir_Sense' */
  rtB_IfActionSubsystem1_mcb_pmsm IfActionSubsystem1;/* '<S151>/If Action Subsystem1' */
  rtB_IfActionSubsystem_mcb_pmsm_ IfActionSubsystem;/* '<S151>/If Action Subsystem' */
  rtB_Accumulate_mcb_pmsm_foc_sen Accumulate;/* '<S145>/Accumulate' */
} BlockIO_mcb_pmsm_foc_sensorless;

/* Block states (default storage) for system '<Root>' */
typedef struct {
  real32_T UnitDelay_DSTATE;           /* '<S145>/Unit Delay' */
  real32_T Delay5_DSTATE[4];           /* '<S1>/Delay5' */
  real32_T UnitDelay_DSTATE_a;         /* '<S26>/Unit Delay' */
  real32_T Integrator_DSTATE;          /* '<S126>/Integrator' */
  real32_T UnitDelay_DSTATE_p;         /* '<S25>/Unit Delay' */
  real32_T Integrator_DSTATE_a;        /* '<S75>/Integrator' */
  real32_T Delay1_DSTATE;              /* '<S170>/Delay1' */
  real32_T Delay_DSTATE[2];            /* '<S171>/Delay' */
  real32_T UnitDelay_DSTATE_j[2];      /* '<S187>/Unit Delay' */
  real32_T UnitDelay_DSTATE_i;         /* '<S278>/Unit Delay' */
  real32_T Delay_DSTATE_n;             /* '<S302>/Delay' */
  real32_T Integrator_DSTATE_m;        /* '<S235>/Integrator' */
  real32_T UnitDelay_DSTATE_l;         /* '<S201>/Unit Delay' */
  real32_T UnitDelay_DSTATE_f;         /* '<S303>/Unit Delay' */
  real32_T Delay2_DSTATE;              /* '<S289>/Delay2' */
  real32_T Delay3_DSTATE;              /* '<S289>/Delay3' */
  real32_T UnitDelay_DSTATE_m;         /* '<S298>/Unit Delay' */
  real32_T Delay2_DSTATE_p;            /* '<S290>/Delay2' */
  real32_T Delay3_DSTATE_g;            /* '<S290>/Delay3' */
  real32_T UnitDelay_DSTATE_fz;        /* '<S295>/Unit Delay' */
  real32_T Delay1_DSTATE_k;            /* '<S281>/Delay1' */
  real32_T Delay_DSTATE_l;             /* '<S281>/Delay' */
  real32_T Delay1_DSTATE_f;            /* '<S282>/Delay1' */
  real32_T Delay_DSTATE_k;             /* '<S282>/Delay' */
  real32_T Delay2_DSTATE_m;            /* '<S256>/Delay2' */
  real32_T Delay3_DSTATE_p;            /* '<S256>/Delay3' */
  real32_T Delay2_DSTATE_k;            /* '<S257>/Delay2' */
  real32_T Delay3_DSTATE_gs;           /* '<S257>/Delay3' */
  real32_T Delay1_DSTATE_h;            /* '<S335>/Delay1' */
  real32_T Delay_DSTATE_lq;            /* '<S335>/Delay' */
  real32_T Delay1_DSTATE_p;            /* '<S328>/Delay1' */
  real32_T Delay_DSTATE_ka;            /* '<S328>/Delay' */
  real32_T Delay_DSTATE_kar;           /* '<S347>/Delay' */
  real32_T Delay1_DSTATE_m;            /* '<S357>/Delay1' */
  real32_T Delay_DSTATE_kb;            /* '<S348>/Delay' */
  real32_T Delay1_DSTATE_e;            /* '<S358>/Delay1' */
  real32_T Delay_DSTATE_e;             /* '<S345>/Delay' */
  volatile real32_T RT_Buffer[2];      /* '<Root>/RT' */
  volatile real32_T RT3_Buffer[2];     /* '<Root>/RT3' */
  volatile real32_T RT2_Buffer[4];     /* '<Root>/RT2' */
  real32_T Speed_ref;                  /* '<Root>/Data Store Memory3' */
  int32_T DigitalOutput_FRAC_LEN;      /* '<S404>/Digital Output' */
  int32_T DigitalOutput_FRAC_LEN_k;    /* '<S394>/Digital Output' */
  int32_T DigitalOutput1_FRAC_LEN;     /* '<S394>/Digital Output1' */
  int32_T Add_DWORK1[2];               /* '<S163>/Add' */
  int32_T DRV830xEnable_FRAC_LEN;      /* '<S372>/DRV830x Enable' */
  int32_T SpeedCount_DWORK1;           /* '<S315>/SpeedCount' */
  uint32_T Sum_DWORK1[4];              /* '<S20>/Sum' */
  uint32_T Add_DWORK1_a;               /* '<S376>/Add' */
  uint16_T Output_DSTATE;              /* '<S378>/Output' */
  volatile int16_T RT_ActiveBufIdx;    /* '<Root>/RT' */
  volatile int16_T RT3_ActiveBufIdx;   /* '<Root>/RT3' */
  volatile int16_T RT3_semaphoreTaken; /* '<Root>/RT3' */
  volatile int16_T RT2_ActiveBufIdx;   /* '<Root>/RT2' */
  uint16_T IaOffset;                   /* '<Root>/Data Store Memory1' */
  uint16_T IbOffset;                   /* '<Root>/Data Store Memory2' */
  uint16_T Debug_signals;              /* '<Root>/Data Store Memory4' */
  uint16_T Memory_PreviousInput;       /* '<S401>/Memory' */
  uint16_T Memory1_PreviousInput;      /* '<S401>/Memory1' */
  uint16_T CircBufIdx;                 /* '<S315>/Delay' */
  uint16_T CircBufIdx_g;               /* '<S352>/Delay' */
  int16_T Integrator_PrevResetState;   /* '<S126>/Integrator' */
  int16_T Integrator_PrevResetState_e; /* '<S75>/Integrator' */
  int16_T Integrator_PrevResetState_h; /* '<S235>/Integrator' */
  uint16_T Integrator_IC_LOADING;      /* '<S126>/Integrator' */
  uint16_T Integrator_IC_LOADING_b;    /* '<S75>/Integrator' */
  boolean_T Enable;                    /* '<Root>/Data Store Memory29' */
  boolean_T EnClosedLoop;              /* '<Root>/Data Store Memory5' */
  boolean_T AlphaRelay_Mode;           /* '<S188>/AlphaRelay' */
  boolean_T BetaRelay_Mode;            /* '<S188>/BetaRelay' */
  boolean_T AlphaRelay_Mode_d;         /* '<S346>/AlphaRelay' */
  boolean_T BetaRelay_Mode_f;          /* '<S346>/BetaRelay' */
  rtDW_SpeedControl_mcb_pmsm_foc_ SpeedControl;/* '<Root>/Speed Control' */
  rtDW_SPIMasterTransfer_mcb_pmsm SPIMasterTransfer1;/* '<S402>/SPI Master Transfer' */
  rtDW_SPIMasterTransfer_mcb_pmsm SPIMasterTransfer;/* '<S402>/SPI Master Transfer' */
  rtDW_Accumulate_mcb_pmsm_foc_se Accumulate_g;/* '<S303>/Accumulate' */
  rtDW_Accumulate_mcb_pmsm_foc_se Accumulate;/* '<S145>/Accumulate' */
} D_Work_mcb_pmsm_foc_sensorless_;

/* Zero-crossing (trigger) state */
typedef struct {
  ZCSigState Delay1_Reset_ZCE;         /* '<S170>/Delay1' */
  ZCSigState Delay_Reset_ZCE;          /* '<S171>/Delay' */
  ZCSigState Delay_Reset_ZCE_h;        /* '<S302>/Delay' */
  ZCSigState Delay2_Reset_ZCE;         /* '<S289>/Delay2' */
  ZCSigState Delay3_Reset_ZCE;         /* '<S289>/Delay3' */
  ZCSigState Delay2_Reset_ZCE_j;       /* '<S290>/Delay2' */
  ZCSigState Delay3_Reset_ZCE_c;       /* '<S290>/Delay3' */
  ZCSigState Delay1_Reset_ZCE_h;       /* '<S281>/Delay1' */
  ZCSigState Delay_Reset_ZCE_a;        /* '<S281>/Delay' */
  ZCSigState Delay1_Reset_ZCE_k;       /* '<S282>/Delay1' */
  ZCSigState Delay_Reset_ZCE_p;        /* '<S282>/Delay' */
  ZCSigState Delay2_Reset_ZCE_h;       /* '<S256>/Delay2' */
  ZCSigState Delay3_Reset_ZCE_e;       /* '<S256>/Delay3' */
  ZCSigState Delay2_Reset_ZCE_b;       /* '<S257>/Delay2' */
  ZCSigState Delay3_Reset_ZCE_cv;      /* '<S257>/Delay3' */
  rtZCE_Dir_Sense_mcb_pmsm_foc_se Dir_Sense_d;/* '<S188>/Dir_Sense' */
  ZCSigState Delay1_Reset_ZCE_p;       /* '<S335>/Delay1' */
  ZCSigState Delay_Reset_ZCE_k;        /* '<S335>/Delay' */
  ZCSigState Delay1_Reset_ZCE_kq;      /* '<S328>/Delay1' */
  ZCSigState Delay_Reset_ZCE_e;        /* '<S328>/Delay' */
  ZCSigState Delay_Reset_ZCE_pv;       /* '<S347>/Delay' */
  ZCSigState Delay1_Reset_ZCE_kr;      /* '<S357>/Delay1' */
  ZCSigState Delay_Reset_ZCE_l;        /* '<S348>/Delay' */
  ZCSigState Delay1_Reset_ZCE_n;       /* '<S358>/Delay1' */
  ZCSigState Delay_Reset_ZCE_hd;       /* '<S345>/Delay' */
  rtZCE_Dir_Sense_mcb_pmsm_foc_se Dir_Sense;/* '<S346>/Dir_Sense' */
} PrevZCSigStates_mcb_pmsm_foc_se;

/* Invariant block signals (default storage) */
typedef struct {
  const uint32_T Width;                /* '<S375>/Width' */
} ConstBlockIO_mcb_pmsm_foc_senso;

/* Constant parameters (default storage) */
typedef struct {
  /* Pooled Parameter (Expression: )
   * Referenced by:
   *   '<S20>/sine_table_values'
   *   '<S304>/sine_table_values'
   */
  real32_T pooled37[1002];
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
    struct {
      uint16_T TID[2];
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
 * '<S8>'   : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop'
 * '<S9>'   : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Debug_signals'
 * '<S10>'  : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/HW_Inputs'
 * '<S11>'  : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling'
 * '<S12>'  : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Inverter'
 * '<S13>'  : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Output Scaling'
 * '<S14>'  : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/SCI_Tx'
 * '<S15>'  : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Clarke Transform'
 * '<S16>'  : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers'
 * '<S17>'  : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Inverse Park Transform'
 * '<S18>'  : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Open_Loop_Control'
 * '<S19>'  : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Park Transform'
 * '<S20>'  : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Sine-Cosine Lookup'
 * '<S21>'  : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Space Vector Generator'
 * '<S22>'  : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Clarke Transform/Two phase input'
 * '<S23>'  : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Clarke Transform/Two phase input/Two phase CRL wrap'
 * '<S24>'  : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/DQ Limiter'
 * '<S25>'  : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/PI_Controller_Id'
 * '<S26>'  : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/PI_Controller_Iq'
 * '<S27>'  : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/DQ Limiter/D-Q Equivalence'
 * '<S28>'  : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/DQ Limiter/D//Q Axis Priority'
 * '<S29>'  : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/DQ Limiter/Inport//Dialog Selection'
 * '<S30>'  : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/DQ Limiter/Magnitude_calc'
 * '<S31>'  : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/DQ Limiter/D-Q Equivalence/Limiter'
 * '<S32>'  : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/DQ Limiter/D-Q Equivalence/Passthrough'
 * '<S33>'  : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/DQ Limiter/D//Q Axis Priority/Compare To Constant'
 * '<S34>'  : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/DQ Limiter/D//Q Axis Priority/Compare To Constant1'
 * '<S35>'  : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/DQ Limiter/D//Q Axis Priority/flipInputs'
 * '<S36>'  : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/DQ Limiter/D//Q Axis Priority/flipInputs1'
 * '<S37>'  : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/DQ Limiter/D//Q Axis Priority/limiter'
 * '<S38>'  : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/DQ Limiter/D//Q Axis Priority/limiter/limitRef1'
 * '<S39>'  : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/DQ Limiter/D//Q Axis Priority/limiter/limitRef2'
 * '<S40>'  : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/DQ Limiter/D//Q Axis Priority/limiter/passThrough'
 * '<S41>'  : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset'
 * '<S42>'  : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Anti-windup'
 * '<S43>'  : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/D Gain'
 * '<S44>'  : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Filter'
 * '<S45>'  : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Filter ICs'
 * '<S46>'  : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/I Gain'
 * '<S47>'  : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Ideal P Gain'
 * '<S48>'  : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Ideal P Gain Fdbk'
 * '<S49>'  : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Integrator'
 * '<S50>'  : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Integrator ICs'
 * '<S51>'  : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/N Copy'
 * '<S52>'  : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/N Gain'
 * '<S53>'  : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/P Copy'
 * '<S54>'  : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Parallel P Gain'
 * '<S55>'  : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Reset Signal'
 * '<S56>'  : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Saturation'
 * '<S57>'  : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Saturation Fdbk'
 * '<S58>'  : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Sum'
 * '<S59>'  : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Sum Fdbk'
 * '<S60>'  : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Tracking Mode'
 * '<S61>'  : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Tracking Mode Sum'
 * '<S62>'  : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Tsamp - Integral'
 * '<S63>'  : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Tsamp - Ngain'
 * '<S64>'  : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/postSat Signal'
 * '<S65>'  : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/preSat Signal'
 * '<S66>'  : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Anti-windup/Disc. Clamping Parallel'
 * '<S67>'  : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Anti-windup/Disc. Clamping Parallel/Dead Zone'
 * '<S68>'  : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Anti-windup/Disc. Clamping Parallel/Dead Zone/Enabled'
 * '<S69>'  : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/D Gain/Disabled'
 * '<S70>'  : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Filter/Disabled'
 * '<S71>'  : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Filter ICs/Disabled'
 * '<S72>'  : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/I Gain/External Parameters'
 * '<S73>'  : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Ideal P Gain/Passthrough'
 * '<S74>'  : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Ideal P Gain Fdbk/Disabled'
 * '<S75>'  : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Integrator/Discrete'
 * '<S76>'  : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Integrator ICs/External IC'
 * '<S77>'  : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/N Copy/Disabled wSignal Specification'
 * '<S78>'  : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/N Gain/Disabled'
 * '<S79>'  : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/P Copy/Disabled'
 * '<S80>'  : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Parallel P Gain/External Parameters'
 * '<S81>'  : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Reset Signal/External Reset'
 * '<S82>'  : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Saturation/Enabled'
 * '<S83>'  : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Saturation Fdbk/Disabled'
 * '<S84>'  : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Sum/Sum_PI'
 * '<S85>'  : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Sum Fdbk/Disabled'
 * '<S86>'  : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Tracking Mode/Disabled'
 * '<S87>'  : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Tracking Mode Sum/Passthrough'
 * '<S88>'  : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Tsamp - Integral/TsSignalSpecification'
 * '<S89>'  : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Tsamp - Ngain/Passthrough'
 * '<S90>'  : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/postSat Signal/Forward_Path'
 * '<S91>'  : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/preSat Signal/Forward_Path'
 * '<S92>'  : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset'
 * '<S93>'  : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Anti-windup'
 * '<S94>'  : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/D Gain'
 * '<S95>'  : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Filter'
 * '<S96>'  : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Filter ICs'
 * '<S97>'  : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/I Gain'
 * '<S98>'  : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Ideal P Gain'
 * '<S99>'  : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Ideal P Gain Fdbk'
 * '<S100>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Integrator'
 * '<S101>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Integrator ICs'
 * '<S102>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/N Copy'
 * '<S103>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/N Gain'
 * '<S104>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/P Copy'
 * '<S105>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Parallel P Gain'
 * '<S106>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Reset Signal'
 * '<S107>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Saturation'
 * '<S108>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Saturation Fdbk'
 * '<S109>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Sum'
 * '<S110>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Sum Fdbk'
 * '<S111>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Tracking Mode'
 * '<S112>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Tracking Mode Sum'
 * '<S113>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Tsamp - Integral'
 * '<S114>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Tsamp - Ngain'
 * '<S115>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/postSat Signal'
 * '<S116>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/preSat Signal'
 * '<S117>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Anti-windup/Disc. Clamping Parallel'
 * '<S118>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Anti-windup/Disc. Clamping Parallel/Dead Zone'
 * '<S119>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Anti-windup/Disc. Clamping Parallel/Dead Zone/Enabled'
 * '<S120>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/D Gain/Disabled'
 * '<S121>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Filter/Disabled'
 * '<S122>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Filter ICs/Disabled'
 * '<S123>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/I Gain/External Parameters'
 * '<S124>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Ideal P Gain/Passthrough'
 * '<S125>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Ideal P Gain Fdbk/Disabled'
 * '<S126>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Integrator/Discrete'
 * '<S127>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Integrator ICs/External IC'
 * '<S128>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/N Copy/Disabled wSignal Specification'
 * '<S129>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/N Gain/Disabled'
 * '<S130>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/P Copy/Disabled'
 * '<S131>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Parallel P Gain/External Parameters'
 * '<S132>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Reset Signal/External Reset'
 * '<S133>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Saturation/Enabled'
 * '<S134>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Saturation Fdbk/Disabled'
 * '<S135>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Sum/Sum_PI'
 * '<S136>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Sum Fdbk/Disabled'
 * '<S137>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Tracking Mode/Disabled'
 * '<S138>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Tracking Mode Sum/Passthrough'
 * '<S139>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Tsamp - Integral/TsSignalSpecification'
 * '<S140>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Tsamp - Ngain/Passthrough'
 * '<S141>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/postSat Signal/Forward_Path'
 * '<S142>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/preSat Signal/Forward_Path'
 * '<S143>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Inverse Park Transform/Two inputs CRL'
 * '<S144>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Inverse Park Transform/Two inputs CRL/Switch_Axis'
 * '<S145>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Open_Loop_Control/Position Generator'
 * '<S146>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Open_Loop_Control/Position Generator/Accumulate'
 * '<S147>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Open_Loop_Control/Position Generator/Accumulate/Subsystem'
 * '<S148>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Park Transform/Two inputs CRL'
 * '<S149>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Park Transform/Two inputs CRL/Switch_Axis'
 * '<S150>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Sine-Cosine Lookup/Interpolation'
 * '<S151>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Sine-Cosine Lookup/WrapUp'
 * '<S152>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Sine-Cosine Lookup/WrapUp/Compare To Zero'
 * '<S153>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Sine-Cosine Lookup/WrapUp/If Action Subsystem'
 * '<S154>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Sine-Cosine Lookup/WrapUp/If Action Subsystem1'
 * '<S155>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Space Vector Generator/Modulation method'
 * '<S156>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Space Vector Generator/Voltage Input'
 * '<S157>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Space Vector Generator/Modulation method/SVPWM'
 * '<S158>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Space Vector Generator/Modulation method/SVPWM/Half(Vmin+Vmax)'
 * '<S159>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Space Vector Generator/Voltage Input/Valphabeta'
 * '<S160>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Space Vector Generator/Voltage Input/Valphabeta/Inverse Clarke Transform'
 * '<S161>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Closed Loop/Space Vector Generator/Voltage Input/Valphabeta/Inverse Clarke Transform/Two phase input'
 * '<S162>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/HW_Inputs/Sensor Driver Blocks (codegen)'
 * '<S163>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate Phase Currents'
 * '<S164>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed'
 * '<S165>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate Phase Currents/Data_Type'
 * '<S166>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate Phase Currents/Data_Type/Data_Type_Float'
 * '<S167>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer'
 * '<S168>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Flux Observer'
 * '<S169>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Sliding Mode Observer'
 * '<S170>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer'
 * '<S171>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/EEMF Observer'
 * '<S172>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/IIR Filter'
 * '<S173>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/PerUnit'
 * '<S174>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer'
 * '<S175>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/EEMF Observer/Subsystem'
 * '<S176>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/EEMF Observer/Subsystem2'
 * '<S177>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/EEMF Observer/Subsystem/A11'
 * '<S178>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/EEMF Observer/Subsystem/A12'
 * '<S179>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/EEMF Observer/Subsystem/A22'
 * '<S180>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/EEMF Observer/Subsystem/L'
 * '<S181>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/EEMF Observer/Subsystem/L1'
 * '<S182>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/EEMF Observer/Subsystem/L2'
 * '<S183>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/EEMF Observer/Subsystem2/B'
 * '<S184>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/EEMF Observer/Subsystem2/L'
 * '<S185>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/IIR Filter/IIR Filter'
 * '<S186>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/IIR Filter/IIR Filter/Low-pass'
 * '<S187>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/IIR Filter/IIR Filter/Low-pass/IIR Low Pass Filter'
 * '<S188>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/Direction_Latch'
 * '<S189>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL'
 * '<S190>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/Direction_Latch/Dir_Sense'
 * '<S191>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/Direction_Latch/Subsystem2'
 * '<S192>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/Direction_Latch/Subsystem3'
 * '<S193>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/IIR Filter'
 * '<S194>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/Normalize'
 * '<S195>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/PID Controller'
 * '<S196>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/SpeedFeedforward'
 * '<S197>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/Subsystem'
 * '<S198>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/VCO'
 * '<S199>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/IIR Filter/IIR Filter'
 * '<S200>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/IIR Filter/IIR Filter/Low-pass'
 * '<S201>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/IIR Filter/IIR Filter/Low-pass/IIR Low Pass Filter'
 * '<S202>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/Normalize/If Action Subsystem'
 * '<S203>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/Normalize/Subsystem'
 * '<S204>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/PID Controller/Anti-windup'
 * '<S205>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/PID Controller/D Gain'
 * '<S206>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/PID Controller/Filter'
 * '<S207>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/PID Controller/Filter ICs'
 * '<S208>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/PID Controller/I Gain'
 * '<S209>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/PID Controller/Ideal P Gain'
 * '<S210>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/PID Controller/Ideal P Gain Fdbk'
 * '<S211>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/PID Controller/Integrator'
 * '<S212>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/PID Controller/Integrator ICs'
 * '<S213>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/PID Controller/N Copy'
 * '<S214>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/PID Controller/N Gain'
 * '<S215>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/PID Controller/P Copy'
 * '<S216>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/PID Controller/Parallel P Gain'
 * '<S217>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/PID Controller/Reset Signal'
 * '<S218>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/PID Controller/Saturation'
 * '<S219>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/PID Controller/Saturation Fdbk'
 * '<S220>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/PID Controller/Sum'
 * '<S221>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/PID Controller/Sum Fdbk'
 * '<S222>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/PID Controller/Tracking Mode'
 * '<S223>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/PID Controller/Tracking Mode Sum'
 * '<S224>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/PID Controller/Tsamp - Integral'
 * '<S225>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/PID Controller/Tsamp - Ngain'
 * '<S226>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/PID Controller/postSat Signal'
 * '<S227>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/PID Controller/preSat Signal'
 * '<S228>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/PID Controller/Anti-windup/Passthrough'
 * '<S229>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/PID Controller/D Gain/Disabled'
 * '<S230>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/PID Controller/Filter/Disabled'
 * '<S231>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/PID Controller/Filter ICs/Disabled'
 * '<S232>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/PID Controller/I Gain/Internal Parameters'
 * '<S233>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/PID Controller/Ideal P Gain/Passthrough'
 * '<S234>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/PID Controller/Ideal P Gain Fdbk/Disabled'
 * '<S235>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/PID Controller/Integrator/Discrete'
 * '<S236>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/PID Controller/Integrator ICs/Internal IC'
 * '<S237>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/PID Controller/N Copy/Disabled wSignal Specification'
 * '<S238>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/PID Controller/N Gain/Disabled'
 * '<S239>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/PID Controller/P Copy/Disabled'
 * '<S240>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/PID Controller/Parallel P Gain/Internal Parameters'
 * '<S241>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/PID Controller/Reset Signal/External Reset'
 * '<S242>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/PID Controller/Saturation/Passthrough'
 * '<S243>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/PID Controller/Saturation Fdbk/Disabled'
 * '<S244>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/PID Controller/Sum/Sum_PI'
 * '<S245>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/PID Controller/Sum Fdbk/Disabled'
 * '<S246>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/PID Controller/Tracking Mode/Disabled'
 * '<S247>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/PID Controller/Tracking Mode Sum/Passthrough'
 * '<S248>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/PID Controller/Tsamp - Integral/TsSignalSpecification'
 * '<S249>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/PID Controller/Tsamp - Ngain/Passthrough'
 * '<S250>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/PID Controller/postSat Signal/Forward_Path'
 * '<S251>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/PID Controller/preSat Signal/Forward_Path'
 * '<S252>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/SpeedFeedforward/DifferentiationMethod'
 * '<S253>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/SpeedFeedforward/IIR Filter'
 * '<S254>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/SpeedFeedforward/IntegralMethod'
 * '<S255>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/SpeedFeedforward/OptimizedDifferentiationMethod'
 * '<S256>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/SpeedFeedforward/DifferentiationMethod/Differentiator'
 * '<S257>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/SpeedFeedforward/DifferentiationMethod/Differentiator1'
 * '<S258>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/SpeedFeedforward/DifferentiationMethod/IIR Filter1'
 * '<S259>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/SpeedFeedforward/DifferentiationMethod/IIR Filter2'
 * '<S260>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/SpeedFeedforward/DifferentiationMethod/IIR Filter3'
 * '<S261>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/SpeedFeedforward/DifferentiationMethod/Subsystem'
 * '<S262>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/SpeedFeedforward/DifferentiationMethod/IIR Filter1/IIR Filter'
 * '<S263>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/SpeedFeedforward/DifferentiationMethod/IIR Filter1/IIR Filter/Low-pass'
 * '<S264>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/SpeedFeedforward/DifferentiationMethod/IIR Filter1/IIR Filter/Low-pass/IIR Low Pass Filter'
 * '<S265>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/SpeedFeedforward/DifferentiationMethod/IIR Filter2/IIR Filter'
 * '<S266>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/SpeedFeedforward/DifferentiationMethod/IIR Filter2/IIR Filter/Low-pass'
 * '<S267>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/SpeedFeedforward/DifferentiationMethod/IIR Filter2/IIR Filter/Low-pass/IIR Low Pass Filter'
 * '<S268>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/SpeedFeedforward/DifferentiationMethod/IIR Filter3/IIR Filter'
 * '<S269>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/SpeedFeedforward/DifferentiationMethod/IIR Filter3/IIR Filter/Low-pass'
 * '<S270>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/SpeedFeedforward/DifferentiationMethod/IIR Filter3/IIR Filter/Low-pass/IIR Low Pass Filter'
 * '<S271>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/SpeedFeedforward/DifferentiationMethod/Subsystem/Compare To Constant'
 * '<S272>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/SpeedFeedforward/DifferentiationMethod/Subsystem/Compare To Constant1'
 * '<S273>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/SpeedFeedforward/DifferentiationMethod/Subsystem/Compare To Constant2'
 * '<S274>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/SpeedFeedforward/DifferentiationMethod/Subsystem/Compare To Constant4'
 * '<S275>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/SpeedFeedforward/DifferentiationMethod/Subsystem/Compare To Constant5'
 * '<S276>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/SpeedFeedforward/IIR Filter/IIR Filter'
 * '<S277>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/SpeedFeedforward/IIR Filter/IIR Filter/Low-pass'
 * '<S278>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/SpeedFeedforward/IIR Filter/IIR Filter/Low-pass/IIR Low Pass Filter'
 * '<S279>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/SpeedFeedforward/IntegralMethod/IIR Filter1'
 * '<S280>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/SpeedFeedforward/IntegralMethod/IIR Filter3'
 * '<S281>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/SpeedFeedforward/IntegralMethod/Integrator'
 * '<S282>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/SpeedFeedforward/IntegralMethod/Integrator1'
 * '<S283>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/SpeedFeedforward/IntegralMethod/IIR Filter1/IIR Filter'
 * '<S284>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/SpeedFeedforward/IntegralMethod/IIR Filter1/IIR Filter/Low-pass'
 * '<S285>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/SpeedFeedforward/IntegralMethod/IIR Filter1/IIR Filter/Low-pass/IIR Low Pass Filter'
 * '<S286>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/SpeedFeedforward/IntegralMethod/IIR Filter3/IIR Filter'
 * '<S287>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/SpeedFeedforward/IntegralMethod/IIR Filter3/IIR Filter/Low-pass'
 * '<S288>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/SpeedFeedforward/IntegralMethod/IIR Filter3/IIR Filter/Low-pass/IIR Low Pass Filter'
 * '<S289>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/SpeedFeedforward/OptimizedDifferentiationMethod/Differentiator'
 * '<S290>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/SpeedFeedforward/OptimizedDifferentiationMethod/Differentiator1'
 * '<S291>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/SpeedFeedforward/OptimizedDifferentiationMethod/IIR Filter1'
 * '<S292>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/SpeedFeedforward/OptimizedDifferentiationMethod/IIR Filter3'
 * '<S293>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/SpeedFeedforward/OptimizedDifferentiationMethod/IIR Filter1/IIR Filter'
 * '<S294>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/SpeedFeedforward/OptimizedDifferentiationMethod/IIR Filter1/IIR Filter/Low-pass'
 * '<S295>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/SpeedFeedforward/OptimizedDifferentiationMethod/IIR Filter1/IIR Filter/Low-pass/IIR Low Pass Filter'
 * '<S296>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/SpeedFeedforward/OptimizedDifferentiationMethod/IIR Filter3/IIR Filter'
 * '<S297>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/SpeedFeedforward/OptimizedDifferentiationMethod/IIR Filter3/IIR Filter/Low-pass'
 * '<S298>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/SpeedFeedforward/OptimizedDifferentiationMethod/IIR Filter3/IIR Filter/Low-pass/IIR Low Pass Filter'
 * '<S299>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/Subsystem/Switch Case Action Subsystem'
 * '<S300>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/Subsystem/Switch Case Action Subsystem1'
 * '<S301>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/VCO/Variant Subsystem'
 * '<S302>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/VCO/Variant Subsystem/LookupTableBased'
 * '<S303>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/VCO/Variant Subsystem/LookupTableBased/Position Generator'
 * '<S304>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/VCO/Variant Subsystem/LookupTableBased/Sine-Cosine Lookup'
 * '<S305>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/VCO/Variant Subsystem/LookupTableBased/Position Generator/Accumulate'
 * '<S306>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/VCO/Variant Subsystem/LookupTableBased/Position Generator/Accumulate/Subsystem'
 * '<S307>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/VCO/Variant Subsystem/LookupTableBased/Sine-Cosine Lookup/Interpolation'
 * '<S308>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/VCO/Variant Subsystem/LookupTableBased/Sine-Cosine Lookup/WrapUp'
 * '<S309>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/VCO/Variant Subsystem/LookupTableBased/Sine-Cosine Lookup/WrapUp/Compare To Zero'
 * '<S310>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/VCO/Variant Subsystem/LookupTableBased/Sine-Cosine Lookup/WrapUp/If Action Subsystem'
 * '<S311>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Extended EMF Observer/Extended EMF Observer/Speed Observer/PLL/VCO/Variant Subsystem/LookupTableBased/Sine-Cosine Lookup/WrapUp/If Action Subsystem1'
 * '<S312>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Flux Observer/DC component removal'
 * '<S313>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Flux Observer/Flux Observer'
 * '<S314>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Flux Observer/IIR Filter4'
 * '<S315>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Flux Observer/Speed Measurement'
 * '<S316>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Flux Observer/DC component removal/IIR Filter'
 * '<S317>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Flux Observer/DC component removal/IIR Filter/IIR Filter'
 * '<S318>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Flux Observer/DC component removal/IIR Filter/IIR Filter/Low-pass'
 * '<S319>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Flux Observer/DC component removal/IIR Filter/IIR Filter/Low-pass/IIR Low Pass Filter'
 * '<S320>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Flux Observer/Flux Observer/Atan2'
 * '<S321>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Flux Observer/Flux Observer/psiAlpha'
 * '<S322>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Flux Observer/Flux Observer/psiBeta'
 * '<S323>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Flux Observer/Flux Observer/Atan2/Default'
 * '<S324>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Flux Observer/Flux Observer/Atan2/Default/atan2'
 * '<S325>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Flux Observer/Flux Observer/Atan2/Default/atan2/Per Unit'
 * '<S326>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Flux Observer/Flux Observer/psiAlpha/Default'
 * '<S327>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Flux Observer/Flux Observer/psiAlpha/Default/IIR Filter'
 * '<S328>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Flux Observer/Flux Observer/psiAlpha/Default/Integrator'
 * '<S329>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Flux Observer/Flux Observer/psiAlpha/Default/Scaling'
 * '<S330>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Flux Observer/Flux Observer/psiAlpha/Default/IIR Filter/IIR Filter'
 * '<S331>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Flux Observer/Flux Observer/psiAlpha/Default/IIR Filter/IIR Filter/High-pass'
 * '<S332>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Flux Observer/Flux Observer/psiAlpha/Default/IIR Filter/IIR Filter/High-pass/IIR Low Pass Filter'
 * '<S333>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Flux Observer/Flux Observer/psiBeta/Default'
 * '<S334>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Flux Observer/Flux Observer/psiBeta/Default/IIR Filter'
 * '<S335>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Flux Observer/Flux Observer/psiBeta/Default/Integrator'
 * '<S336>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Flux Observer/Flux Observer/psiBeta/Default/Scaling'
 * '<S337>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Flux Observer/Flux Observer/psiBeta/Default/IIR Filter/IIR Filter'
 * '<S338>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Flux Observer/Flux Observer/psiBeta/Default/IIR Filter/IIR Filter/High-pass'
 * '<S339>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Flux Observer/Flux Observer/psiBeta/Default/IIR Filter/IIR Filter/High-pass/IIR Low Pass Filter'
 * '<S340>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Flux Observer/IIR Filter4/IIR Filter'
 * '<S341>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Flux Observer/IIR Filter4/IIR Filter/Low-pass'
 * '<S342>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Flux Observer/IIR Filter4/IIR Filter/Low-pass/IIR Low Pass Filter'
 * '<S343>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Flux Observer/Speed Measurement/DT_Handle'
 * '<S344>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Flux Observer/Speed Measurement/DT_Handle/floating-point'
 * '<S345>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Sliding Mode Observer/Sliding Mode Observer'
 * '<S346>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Sliding Mode Observer/Sliding Mode Observer/Direction_Latch'
 * '<S347>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Sliding Mode Observer/Sliding Mode Observer/Ealpha_est'
 * '<S348>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Sliding Mode Observer/Sliding Mode Observer/Ebeta_est'
 * '<S349>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Sliding Mode Observer/Sliding Mode Observer/Filter_Ealpha'
 * '<S350>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Sliding Mode Observer/Sliding Mode Observer/Filter_Ebeta'
 * '<S351>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Sliding Mode Observer/Sliding Mode Observer/IIR Filter'
 * '<S352>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Sliding Mode Observer/Sliding Mode Observer/Speed Measurement'
 * '<S353>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Sliding Mode Observer/Sliding Mode Observer/angleCompensation'
 * '<S354>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Sliding Mode Observer/Sliding Mode Observer/Direction_Latch/Dir_Sense'
 * '<S355>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Sliding Mode Observer/Sliding Mode Observer/Direction_Latch/Subsystem2'
 * '<S356>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Sliding Mode Observer/Sliding Mode Observer/Direction_Latch/Subsystem3'
 * '<S357>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Sliding Mode Observer/Sliding Mode Observer/Ealpha_est/DisturbanceObserver'
 * '<S358>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Sliding Mode Observer/Sliding Mode Observer/Ebeta_est/DisturbanceObserver'
 * '<S359>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Sliding Mode Observer/Sliding Mode Observer/Filter_Ealpha/IIR Filter'
 * '<S360>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Sliding Mode Observer/Sliding Mode Observer/Filter_Ealpha/IIR Filter/Low-pass'
 * '<S361>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Sliding Mode Observer/Sliding Mode Observer/Filter_Ealpha/IIR Filter/Low-pass/IIR Low Pass Filter'
 * '<S362>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Sliding Mode Observer/Sliding Mode Observer/Filter_Ebeta/IIR Filter'
 * '<S363>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Sliding Mode Observer/Sliding Mode Observer/Filter_Ebeta/IIR Filter/Low-pass'
 * '<S364>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Sliding Mode Observer/Sliding Mode Observer/Filter_Ebeta/IIR Filter/Low-pass/IIR Low Pass Filter'
 * '<S365>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Sliding Mode Observer/Sliding Mode Observer/IIR Filter/IIR Filter'
 * '<S366>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Sliding Mode Observer/Sliding Mode Observer/IIR Filter/IIR Filter/Low-pass'
 * '<S367>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Sliding Mode Observer/Sliding Mode Observer/IIR Filter/IIR Filter/Low-pass/IIR Low Pass Filter'
 * '<S368>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Sliding Mode Observer/Sliding Mode Observer/Speed Measurement/DT_Handle'
 * '<S369>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Sliding Mode Observer/Sliding Mode Observer/Speed Measurement/DT_Handle/floating-point'
 * '<S370>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Sliding Mode Observer/Sliding Mode Observer/angleCompensation/atan1'
 * '<S371>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Input Scaling/Calculate position and speed/Sliding Mode Observer/Sliding Mode Observer/angleCompensation/atan1/Per Unit'
 * '<S372>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/Inverter/Code Generation'
 * '<S373>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/SCI_Tx/Code Generation'
 * '<S374>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/SCI_Tx/Code Generation/Data_Conditioning_Tx'
 * '<S375>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/SCI_Tx/Code Generation/Data_Logging'
 * '<S376>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/SCI_Tx/Code Generation/While Iterator Subsystem'
 * '<S377>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/SCI_Tx/Code Generation/Data_Conditioning_Tx/Data_Type_Float'
 * '<S378>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/SCI_Tx/Code Generation/Data_Logging/Counter Limited'
 * '<S379>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/SCI_Tx/Code Generation/Data_Logging/Data'
 * '<S380>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/SCI_Tx/Code Generation/Data_Logging/End'
 * '<S381>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/SCI_Tx/Code Generation/Data_Logging/Start'
 * '<S382>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/SCI_Tx/Code Generation/Data_Logging/Counter Limited/Increment Real World'
 * '<S383>' : 'mcb_pmsm_foc_sensorless_f28379d/Current Control/SCI_Tx/Code Generation/Data_Logging/Counter Limited/Wrap To Zero'
 * '<S384>' : 'mcb_pmsm_foc_sensorless_f28379d/HW Interrupt/Code generation'
 * '<S385>' : 'mcb_pmsm_foc_sensorless_f28379d/HW Interrupt/Code generation/HWI_ADCB1_INT'
 * '<S386>' : 'mcb_pmsm_foc_sensorless_f28379d/HW Interrupt/Code generation/HWI_SCIA_RX_INT'
 * '<S387>' : 'mcb_pmsm_foc_sensorless_f28379d/HW Interrupt/Code generation/HWI_ADCB1_INT/ECSoC'
 * '<S388>' : 'mcb_pmsm_foc_sensorless_f28379d/HW Interrupt/Code generation/HWI_ADCB1_INT/ECSoC/ECSimCodegen'
 * '<S389>' : 'mcb_pmsm_foc_sensorless_f28379d/HW Interrupt/Code generation/HWI_SCIA_RX_INT/ECSoC'
 * '<S390>' : 'mcb_pmsm_foc_sensorless_f28379d/HW Interrupt/Code generation/HWI_SCIA_RX_INT/ECSoC/ECSimCodegen'
 * '<S391>' : 'mcb_pmsm_foc_sensorless_f28379d/Hardware Init/Variant Subsystem'
 * '<S392>' : 'mcb_pmsm_foc_sensorless_f28379d/Hardware Init/Variant Subsystem/Code Generation'
 * '<S393>' : 'mcb_pmsm_foc_sensorless_f28379d/Hardware Init/Variant Subsystem/Code Generation/Calculate ADC Offset '
 * '<S394>' : 'mcb_pmsm_foc_sensorless_f28379d/Hardware Init/Variant Subsystem/Code Generation/DRV Enable'
 * '<S395>' : 'mcb_pmsm_foc_sensorless_f28379d/Hardware Init/Variant Subsystem/Code Generation/Default ADC Offset'
 * '<S396>' : 'mcb_pmsm_foc_sensorless_f28379d/Hardware Init/Variant Subsystem/Code Generation/Calculate ADC Offset /For Iterator Subsystem'
 * '<S397>' : 'mcb_pmsm_foc_sensorless_f28379d/Hardware Init/Variant Subsystem/Code Generation/Calculate ADC Offset /If Action Subsystem'
 * '<S398>' : 'mcb_pmsm_foc_sensorless_f28379d/Hardware Init/Variant Subsystem/Code Generation/Calculate ADC Offset /If Action Subsystem1'
 * '<S399>' : 'mcb_pmsm_foc_sensorless_f28379d/Hardware Init/Variant Subsystem/Code Generation/Calculate ADC Offset /If Action Subsystem2'
 * '<S400>' : 'mcb_pmsm_foc_sensorless_f28379d/Hardware Init/Variant Subsystem/Code Generation/Calculate ADC Offset /If Action Subsystem3'
 * '<S401>' : 'mcb_pmsm_foc_sensorless_f28379d/Hardware Init/Variant Subsystem/Code Generation/Calculate ADC Offset /For Iterator Subsystem/If Action Subsystem'
 * '<S402>' : 'mcb_pmsm_foc_sensorless_f28379d/Hardware Init/Variant Subsystem/Code Generation/DRV Enable/ADC Gain Setting'
 * '<S403>' : 'mcb_pmsm_foc_sensorless_f28379d/Heartbeat LED/Heartbeat LED'
 * '<S404>' : 'mcb_pmsm_foc_sensorless_f28379d/Heartbeat LED/Heartbeat LED/Code generation'
 * '<S405>' : 'mcb_pmsm_foc_sensorless_f28379d/Inverter and Motor - Plant Model/Codegeneration'
 * '<S406>' : 'mcb_pmsm_foc_sensorless_f28379d/Serial Receive/Data_Conditioning_Rx'
 * '<S407>' : 'mcb_pmsm_foc_sensorless_f28379d/Serial Receive/SCI_Rx'
 * '<S408>' : 'mcb_pmsm_foc_sensorless_f28379d/Serial Receive/unParse'
 * '<S409>' : 'mcb_pmsm_foc_sensorless_f28379d/Serial Receive/Data_Conditioning_Rx/Data_Type_Float'
 * '<S410>' : 'mcb_pmsm_foc_sensorless_f28379d/Serial Receive/SCI_Rx/Code Generation'
 * '<S411>' : 'mcb_pmsm_foc_sensorless_f28379d/Serial Receive/SCI_Rx/Code Generation/Data_Type_Float'
 * '<S412>' : 'mcb_pmsm_foc_sensorless_f28379d/Speed Control/PI_Controller_Speed'
 * '<S413>' : 'mcb_pmsm_foc_sensorless_f28379d/Speed Control/SlewRate'
 * '<S414>' : 'mcb_pmsm_foc_sensorless_f28379d/Speed Control/Speed_Ref_Selector'
 * '<S415>' : 'mcb_pmsm_foc_sensorless_f28379d/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset'
 * '<S416>' : 'mcb_pmsm_foc_sensorless_f28379d/Speed Control/PI_Controller_Speed/Zero_Cancellation'
 * '<S417>' : 'mcb_pmsm_foc_sensorless_f28379d/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/Anti-windup'
 * '<S418>' : 'mcb_pmsm_foc_sensorless_f28379d/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/D Gain'
 * '<S419>' : 'mcb_pmsm_foc_sensorless_f28379d/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/Filter'
 * '<S420>' : 'mcb_pmsm_foc_sensorless_f28379d/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/Filter ICs'
 * '<S421>' : 'mcb_pmsm_foc_sensorless_f28379d/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/I Gain'
 * '<S422>' : 'mcb_pmsm_foc_sensorless_f28379d/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/Ideal P Gain'
 * '<S423>' : 'mcb_pmsm_foc_sensorless_f28379d/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/Ideal P Gain Fdbk'
 * '<S424>' : 'mcb_pmsm_foc_sensorless_f28379d/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/Integrator'
 * '<S425>' : 'mcb_pmsm_foc_sensorless_f28379d/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/Integrator ICs'
 * '<S426>' : 'mcb_pmsm_foc_sensorless_f28379d/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/N Copy'
 * '<S427>' : 'mcb_pmsm_foc_sensorless_f28379d/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/N Gain'
 * '<S428>' : 'mcb_pmsm_foc_sensorless_f28379d/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/P Copy'
 * '<S429>' : 'mcb_pmsm_foc_sensorless_f28379d/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/Parallel P Gain'
 * '<S430>' : 'mcb_pmsm_foc_sensorless_f28379d/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/Reset Signal'
 * '<S431>' : 'mcb_pmsm_foc_sensorless_f28379d/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/Saturation'
 * '<S432>' : 'mcb_pmsm_foc_sensorless_f28379d/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/Saturation Fdbk'
 * '<S433>' : 'mcb_pmsm_foc_sensorless_f28379d/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/Sum'
 * '<S434>' : 'mcb_pmsm_foc_sensorless_f28379d/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/Sum Fdbk'
 * '<S435>' : 'mcb_pmsm_foc_sensorless_f28379d/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/Tracking Mode'
 * '<S436>' : 'mcb_pmsm_foc_sensorless_f28379d/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/Tracking Mode Sum'
 * '<S437>' : 'mcb_pmsm_foc_sensorless_f28379d/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/Tsamp - Integral'
 * '<S438>' : 'mcb_pmsm_foc_sensorless_f28379d/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/Tsamp - Ngain'
 * '<S439>' : 'mcb_pmsm_foc_sensorless_f28379d/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/postSat Signal'
 * '<S440>' : 'mcb_pmsm_foc_sensorless_f28379d/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/preSat Signal'
 * '<S441>' : 'mcb_pmsm_foc_sensorless_f28379d/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/Anti-windup/Disc. Clamping Parallel'
 * '<S442>' : 'mcb_pmsm_foc_sensorless_f28379d/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/Anti-windup/Disc. Clamping Parallel/Dead Zone'
 * '<S443>' : 'mcb_pmsm_foc_sensorless_f28379d/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/Anti-windup/Disc. Clamping Parallel/Dead Zone/Enabled'
 * '<S444>' : 'mcb_pmsm_foc_sensorless_f28379d/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/D Gain/Disabled'
 * '<S445>' : 'mcb_pmsm_foc_sensorless_f28379d/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/Filter/Disabled'
 * '<S446>' : 'mcb_pmsm_foc_sensorless_f28379d/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/Filter ICs/Disabled'
 * '<S447>' : 'mcb_pmsm_foc_sensorless_f28379d/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/I Gain/External Parameters'
 * '<S448>' : 'mcb_pmsm_foc_sensorless_f28379d/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/Ideal P Gain/Passthrough'
 * '<S449>' : 'mcb_pmsm_foc_sensorless_f28379d/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/Ideal P Gain Fdbk/Disabled'
 * '<S450>' : 'mcb_pmsm_foc_sensorless_f28379d/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/Integrator/Discrete'
 * '<S451>' : 'mcb_pmsm_foc_sensorless_f28379d/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/Integrator ICs/External IC'
 * '<S452>' : 'mcb_pmsm_foc_sensorless_f28379d/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/N Copy/Disabled wSignal Specification'
 * '<S453>' : 'mcb_pmsm_foc_sensorless_f28379d/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/N Gain/Disabled'
 * '<S454>' : 'mcb_pmsm_foc_sensorless_f28379d/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/P Copy/Disabled'
 * '<S455>' : 'mcb_pmsm_foc_sensorless_f28379d/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/Parallel P Gain/External Parameters'
 * '<S456>' : 'mcb_pmsm_foc_sensorless_f28379d/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/Reset Signal/External Reset'
 * '<S457>' : 'mcb_pmsm_foc_sensorless_f28379d/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/Saturation/Enabled'
 * '<S458>' : 'mcb_pmsm_foc_sensorless_f28379d/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/Saturation Fdbk/Disabled'
 * '<S459>' : 'mcb_pmsm_foc_sensorless_f28379d/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/Sum/Sum_PI'
 * '<S460>' : 'mcb_pmsm_foc_sensorless_f28379d/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/Sum Fdbk/Disabled'
 * '<S461>' : 'mcb_pmsm_foc_sensorless_f28379d/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/Tracking Mode/Disabled'
 * '<S462>' : 'mcb_pmsm_foc_sensorless_f28379d/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/Tracking Mode Sum/Passthrough'
 * '<S463>' : 'mcb_pmsm_foc_sensorless_f28379d/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/Tsamp - Integral/TsSignalSpecification'
 * '<S464>' : 'mcb_pmsm_foc_sensorless_f28379d/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/Tsamp - Ngain/Passthrough'
 * '<S465>' : 'mcb_pmsm_foc_sensorless_f28379d/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/postSat Signal/Forward_Path'
 * '<S466>' : 'mcb_pmsm_foc_sensorless_f28379d/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/preSat Signal/Forward_Path'
 * '<S467>' : 'mcb_pmsm_foc_sensorless_f28379d/Speed Control/PI_Controller_Speed/Zero_Cancellation/IIR Filter'
 * '<S468>' : 'mcb_pmsm_foc_sensorless_f28379d/Speed Control/PI_Controller_Speed/Zero_Cancellation/IIR Filter/Low-pass'
 * '<S469>' : 'mcb_pmsm_foc_sensorless_f28379d/Speed Control/PI_Controller_Speed/Zero_Cancellation/IIR Filter/Low-pass/IIR Low Pass Filter'
 */
#endif                       /* RTW_HEADER_mcb_pmsm_foc_sensorless_f28379d_h_ */

/*
 * File trailer for generated code.
 *
 * [EOF]
 */
