/*
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * File: mcb_pmsm_foc_qep_f28379d.h
 *
 * Code generated for Simulink model 'mcb_pmsm_foc_qep_f28379d'.
 *
 * Model version                  : 7.4
 * Simulink Coder version         : 23.2 (R2023b) 01-Aug-2023
 * C/C++ source code generated on : Mon Oct 27 20:59:34 2025
 *
 * Target selection: ert.tlc
 * Embedded hardware selection: Texas Instruments->C2000
 * Code generation objectives: Unspecified
 * Validation result: Not run
 */

#ifndef RTW_HEADER_mcb_pmsm_foc_qep_f28379d_h_
#define RTW_HEADER_mcb_pmsm_foc_qep_f28379d_h_
#ifndef mcb_pmsm_foc_qep_f28379d_COMMON_INCLUDES_
#define mcb_pmsm_foc_qep_f28379d_COMMON_INCLUDES_
#include "rtwtypes.h"
#include "c2000BoardSupport.h"
#include "MW_f2837xD_includes.h"
#include "string.h"
#include "DSP28xx_SciUtil.h"
#include "IQmathLib.h"
#include "MW_SPI.h"
#endif                           /* mcb_pmsm_foc_qep_f28379d_COMMON_INCLUDES_ */

#include "MW_c2000ISR.h"
#include "mcb_pmsm_foc_qep_f28379d_types.h"
#include <string.h>
#include "rt_nonfinite.h"
#include <stddef.h>
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

extern void init_SCI(void);
extern void init_SCI_GPIO(void);
extern void config_ePWMSyncSource(void);
extern void config_ePWM_GPIO (void);
extern void config_ePWM_TBSync (void);
extern void config_ePWM_XBAR(void);

/* Block signals for system '<S146>/If Action Subsystem' */
typedef struct {
  real32_T Convert_back;               /* '<S148>/Convert_back' */
  int16_T Convert_uint16;              /* '<S148>/Convert_uint16' */
} B_IfActionSubsystem_mcb_pmsm__T;

/* Block signals for system '<S146>/If Action Subsystem1' */
typedef struct {
  real32_T Convert_back;               /* '<S149>/Convert_back' */
  int16_T Convert_uint16;              /* '<S149>/Convert_uint16' */
} B_IfActionSubsystem1_mcb_pmsm_T;

/* Block signals for system '<S19>/Two inputs CRL' */
typedef struct {
  real32_T qcos;                       /* '<S144>/qcos' */
  real32_T dsin;                       /* '<S144>/dsin' */
  real32_T sum_beta;                   /* '<S144>/sum_beta' */
  real32_T dcos;                       /* '<S144>/dcos' */
  real32_T qsin;                       /* '<S144>/qsin' */
  real32_T sum_alpha;                  /* '<S144>/sum_alpha' */
  real32_T Switch[2];                  /* '<S150>/Switch' */
  real32_T algDD_o1;
  real32_T algDD_o2;
} B_TwoinputsCRL_mcb_pmsm_foc_q_T;

/* Block signals for system '<S246>/SPI Master Transfer' */
typedef struct {
  uint16_T SPIMasterTransfer;          /* '<S246>/SPI Master Transfer' */
} B_SPIMasterTransfer_mcb_pmsm__T;

/* Block states (default storage) for system '<S246>/SPI Master Transfer' */
typedef struct {
  codertarget_tic2000_blocks_SP_T obj; /* '<S246>/SPI Master Transfer' */
  boolean_T objisempty;                /* '<S246>/SPI Master Transfer' */
} DW_SPIMasterTransfer_mcb_pmsm_T;

/* Block signals for system '<Root>/Speed Control' */
typedef struct {
  real32_T Sum;                        /* '<S258>/Sum' */
  real32_T Merge;                      /* '<S258>/Merge' */
  real32_T PProdOut;                   /* '<S356>/PProd Out' */
  real32_T Ki2;                        /* '<S258>/Ki2' */
  real32_T Integrator;                 /* '<S351>/Integrator' */
  real32_T Sum_j;                      /* '<S360>/Sum' */
  real32_T Saturation;                 /* '<S358>/Saturation' */
  real32_T TmpSignalConversionAtSelectorIn[2];
  real32_T Selector;                   /* '<S258>/Selector' */
  real32_T Id_ref;                     /* '<S7>/Id_ref' */
  real32_T Switch;                     /* '<S257>/Switch' */
  real32_T Product;                    /* '<S313>/Product' */
  real32_T UnitDelay;                  /* '<S313>/Unit Delay' */
  real32_T Product1;                   /* '<S313>/Product1' */
  real32_T Add1;                       /* '<S313>/Add1' */
  real32_T Sum_i;                      /* '<S256>/Sum' */
  real32_T PProdOut_d;                 /* '<S299>/PProd Out' */
  real32_T Ki2_n;                      /* '<S256>/Ki2' */
  real32_T Integrator_a;               /* '<S294>/Integrator' */
  real32_T Sum_c;                      /* '<S303>/Sum' */
  real32_T DeadZone;                   /* '<S287>/DeadZone' */
  real32_T IProdOut;                   /* '<S291>/IProd Out' */
  real32_T Switch_d;                   /* '<S285>/Switch' */
  real32_T Saturation_a;               /* '<S301>/Saturation' */
  real32_T DeadZone_e;                 /* '<S344>/DeadZone' */
  real32_T IProdOut_f;                 /* '<S348>/IProd Out' */
  real32_T Switch_f;                   /* '<S342>/Switch' */
  uint16_T DataStoreRead;              /* '<S258>/Data Store Read' */
  int16_T Switch1;                     /* '<S285>/Switch1' */
  int16_T Switch2;                     /* '<S285>/Switch2' */
  int16_T Switch1_e;                   /* '<S342>/Switch1' */
  int16_T Switch2_k;                   /* '<S342>/Switch2' */
  boolean_T DataStoreRead1;            /* '<S256>/Data Store Read1' */
  boolean_T DataStoreRead_b;           /* '<S257>/Data Store Read' */
  boolean_T DataStoreRead1_k;          /* '<S257>/Data Store Read1' */
  boolean_T AND;                       /* '<S257>/AND' */
  boolean_T LogicalOperator;           /* '<S256>/Logical Operator' */
  boolean_T RelationalOperator;        /* '<S285>/Relational Operator' */
  boolean_T fixforDTpropagationissue;/* '<S285>/fix for DT propagation issue' */
  boolean_T fixforDTpropagationissue1;
                                    /* '<S285>/fix for DT propagation issue1' */
  boolean_T Equal1;                    /* '<S285>/Equal1' */
  boolean_T AND3;                      /* '<S285>/AND3' */
  boolean_T RelationalOperator_m;      /* '<S342>/Relational Operator' */
  boolean_T fixforDTpropagationissue_h;
                                     /* '<S342>/fix for DT propagation issue' */
  boolean_T fixforDTpropagationissue1_o;
                                    /* '<S342>/fix for DT propagation issue1' */
  boolean_T Equal1_h;                  /* '<S342>/Equal1' */
  boolean_T AND3_k;                    /* '<S342>/AND3' */
} B_SpeedControl_mcb_pmsm_foc_q_T;

/* Block states (default storage) for system '<Root>/Speed Control' */
typedef struct {
  real32_T Integrator_DSTATE;          /* '<S351>/Integrator' */
  real32_T UnitDelay_DSTATE;           /* '<S313>/Unit Delay' */
  real32_T Integrator_DSTATE_n;        /* '<S294>/Integrator' */
  int16_T Integrator_PrevResetState;   /* '<S351>/Integrator' */
  int16_T Integrator_PrevResetState_l; /* '<S294>/Integrator' */
} DW_SpeedControl_mcb_pmsm_foc__T;

/* Block signals (default storage) */
typedef struct {
  uint32_T PositionToCount;            /* '<S190>/PositionToCount' */
  uint32_T Delay;                      /* '<S190>/Delay' */
  uint32_T BytePack[2];                /* '<S221>/Byte Pack' */
  uint32_T SCI_Tx_Data[3];             /* '<S219>/Merge' */
  uint32_T SCI_Tx_Iteration;           /* '<S219>/Merge1' */
  uint32_T IndexVector;                /* '<S220>/Index Vector' */
  uint32_T Add;                        /* '<S220>/Add' */
  uint32_T Data[2];                    /* '<S223>/Data' */
  uint32_T Data_f[2];                  /* '<S224>/Data' */
  uint32_T Data_fw[2];                 /* '<S225>/Data' */
  uint32_T Sum[4];                     /* '<S172>/Sum' */
  uint32_T Sum_n[4];                   /* '<S153>/Sum' */
  uint32_T Sum_h[4];                   /* '<S143>/Sum' */
  real32_T RT1;                        /* '<Root>/RT1' */
  real32_T RT3;                        /* '<Root>/RT3' */
  real32_T RT5;                        /* '<Root>/RT5' */
  real32_T RT2[2];                     /* '<Root>/RT2' */
  real32_T SCIReceive[2];              /* '<S255>/SCI Receive' */
  real32_T GetADCVoltage[2];           /* '<S215>/Get ADC Voltage' */
  real32_T GetCurrents[2];             /* '<S215>/Get Currents' */
  real32_T PU_Conversion[2];           /* '<S215>/PU_Conversion' */
  real32_T DTC;                        /* '<S208>/DTC' */
  real32_T Product;                    /* '<S189>/Product' */
  real32_T Switch;                     /* '<S197>/Switch' */
  real32_T Merge;                      /* '<S198>/Merge' */
  real32_T Numberofpolepairs;          /* '<S203>/Number of pole pairs' */
  real32_T Floor;                      /* '<S199>/Floor' */
  real32_T Add_c;                      /* '<S199>/Add' */
  real32_T DataStoreRead;              /* '<S1>/Data Store Read' */
  real32_T DTC_p;                      /* '<S213>/DTC' */
  real32_T SpeedGain;                  /* '<S190>/SpeedGain' */
  real32_T Product_m;                  /* '<S193>/Product' */
  real32_T UnitDelay;                  /* '<S193>/Unit Delay' */
  real32_T Product1;                   /* '<S193>/Product1' */
  real32_T Add1;                       /* '<S193>/Add1' */
  real32_T DataStoreRead1;             /* '<S1>/Data Store Read1' */
  real32_T TmpSignalConversionAtSelectorIn[11];
  real32_T Selector[2];                /* '<S9>/Selector' */
  real32_T DataTypeConversion;         /* '<S13>/Data Type Conversion' */
  real32_T Switch_g;                   /* '<S216>/Switch' */
  real32_T Switch_b[3];                /* '<S8>/Switch' */
  real32_T One_by_Two[3];              /* '<S13>/One_by_Two' */
  real32_T PWM_Duty_Cycles[3];         /* '<S13>/Sum' */
  real32_T rpm2freq;                   /* '<S16>/rpm2freq' */
  real32_T Eps;                        /* '<S169>/Ramp Generator' */
  real32_T Product_k;                  /* '<S16>/Product' */
  real32_T Frequency;                  /* '<S16>/Abs' */
  real32_T Vbyf;                       /* '<S16>/V-by-f' */
  real32_T Correction_Factor_sinePWM;  /* '<S16>/Correction_Factor_sinePWM' */
  real32_T Amplitude;                  /* '<S16>/Saturation' */
  real32_T UnaryMinus;                 /* '<S167>/Unary Minus' */
  real32_T position_increment;         /* '<S16>/position_increment' */
  real32_T scaleIn;                    /* '<S168>/scaleIn' */
  real32_T UnitDelay_d;                /* '<S168>/Unit Delay' */
  real32_T scaleOut;                   /* '<S168>/scaleOut' */
  real32_T DataStoreRead_p;            /* '<S16>/Data Store Read' */
  real32_T Eps_g;                      /* '<S16>/Direction' */
  real32_T convert_pu;                 /* '<S177>/convert_pu' */
  real32_T Merge_f;                    /* '<S177>/Merge' */
  real32_T indexing;                   /* '<S172>/indexing' */
  real32_T Lookup[4];                  /* '<S172>/Lookup' */
  real32_T Sum3;                       /* '<S176>/Sum3' */
  real32_T DataTypeConversion1;        /* '<S172>/Data Type Conversion1' */
  real32_T Sum2;                       /* '<S172>/Sum2' */
  real32_T Product_l;                  /* '<S176>/Product' */
  real32_T Sum4;                       /* '<S176>/Sum4' */
  real32_T Sum5;                       /* '<S176>/Sum5' */
  real32_T Product1_a;                 /* '<S176>/Product1' */
  real32_T Sum6;                       /* '<S176>/Sum6' */
  real32_T Ka;                         /* '<S173>/Ka' */
  real32_T one_by_two;                 /* '<S173>/one_by_two' */
  real32_T sqrt3_by_two;               /* '<S173>/sqrt3_by_two' */
  real32_T add_b;                      /* '<S173>/add_b' */
  real32_T Kb;                         /* '<S173>/Kb' */
  real32_T add_c;                      /* '<S173>/add_c' */
  real32_T Kc;                         /* '<S173>/Kc' */
  real32_T Divide;                     /* '<S169>/Divide' */
  real32_T Sample_Time;                /* '<S169>/Sample_Time' */
  real32_T Sum_f;                      /* '<S16>/Sum' */
  real32_T Add_m;                      /* '<S181>/Add' */
  real32_T DataTypeConversion1_f;      /* '<S181>/Data Type Conversion1' */
  real32_T Add1_c;                     /* '<S181>/Add1' */
  real32_T Input;                      /* '<S182>/Input' */
  real32_T Idq_ref_PU[2];              /* '<S15>/Idq_ref_PU' */
  real32_T Merge_o;                    /* '<S155>/Merge' */
  real32_T indexing_n;                 /* '<S153>/indexing' */
  real32_T Lookup_i[4];                /* '<S153>/Lookup' */
  real32_T Sum3_h;                     /* '<S154>/Sum3' */
  real32_T DataTypeConversion1_d;      /* '<S153>/Data Type Conversion1' */
  real32_T Sum2_d;                     /* '<S153>/Sum2' */
  real32_T Product_i;                  /* '<S154>/Product' */
  real32_T Sum4_m;                     /* '<S154>/Sum4' */
  real32_T Sum5_g;                     /* '<S154>/Sum5' */
  real32_T Product1_b;                 /* '<S154>/Product1' */
  real32_T Sum6_m;                     /* '<S154>/Sum6' */
  real32_T Sum_o;                      /* '<S26>/Sum' */
  real32_T PProdOut;                   /* '<S131>/PProd Out' */
  real32_T Kp1;                        /* '<S26>/Kp1' */
  real32_T Integrator;                 /* '<S126>/Integrator' */
  real32_T Sum_m;                      /* '<S135>/Sum' */
  real32_T Saturation;                 /* '<S133>/Saturation' */
  real32_T Sum_j;                      /* '<S25>/Sum' */
  real32_T PProdOut_g;                 /* '<S80>/PProd Out' */
  real32_T Ki1;                        /* '<S25>/Ki1' */
  real32_T Integrator_f;               /* '<S75>/Integrator' */
  real32_T Sum_g;                      /* '<S84>/Sum' */
  real32_T Saturation_f;               /* '<S82>/Saturation' */
  real32_T Switch_n;                   /* '<S29>/Switch' */
  real32_T Product_j;                  /* '<S29>/Product' */
  real32_T Product_f;                  /* '<S30>/Product' */
  real32_T Product1_g;                 /* '<S30>/Product1' */
  real32_T Sum1;                       /* '<S30>/Sum1' */
  real32_T Merge_i[2];                 /* '<S24>/Merge' */
  real32_T DeadZone;                   /* '<S68>/DeadZone' */
  real32_T IProdOut;                   /* '<S72>/IProd Out' */
  real32_T Switch_f;                   /* '<S66>/Switch' */
  real32_T DeadZone_a;                 /* '<S119>/DeadZone' */
  real32_T IProdOut_b;                 /* '<S123>/IProd Out' */
  real32_T Switch_a;                   /* '<S117>/Switch' */
  real32_T Merge_a;                    /* '<S146>/Merge' */
  real32_T indexing_d;                 /* '<S143>/indexing' */
  real32_T DataTypeConversion1_n;      /* '<S143>/Data Type Conversion1' */
  real32_T Lookup_p[4];                /* '<S143>/Lookup' */
  real32_T Sum3_j;                     /* '<S145>/Sum3' */
  real32_T Sum2_p;                     /* '<S143>/Sum2' */
  real32_T Product_d;                  /* '<S145>/Product' */
  real32_T Sum5_l;                     /* '<S145>/Sum5' */
  real32_T Product1_d;                 /* '<S145>/Product1' */
  real32_T Sum4_h;                     /* '<S145>/Sum4' */
  real32_T Sum6_h;                     /* '<S145>/Sum6' */
  real32_T one_by_two_l;               /* '<S166>/one_by_two' */
  real32_T sqrt3_by_two_l;             /* '<S166>/sqrt3_by_two' */
  real32_T add_b_e;                    /* '<S166>/add_b' */
  real32_T add_c_m;                    /* '<S166>/add_c' */
  real32_T Max;                        /* '<S163>/Max' */
  real32_T Min;                        /* '<S163>/Min' */
  real32_T Add_n;                      /* '<S163>/Add' */
  real32_T one_by_two_lh;              /* '<S163>/one_by_two' */
  real32_T Add1_d;                     /* '<S162>/Add1' */
  real32_T Add2;                       /* '<S162>/Add2' */
  real32_T Add3;                       /* '<S162>/Add3' */
  real32_T Gain[3];                    /* '<S162>/Gain' */
  real32_T acos_b;                     /* '<S152>/acos' */
  real32_T bsin;                       /* '<S152>/bsin' */
  real32_T sum_Ds;                     /* '<S152>/sum_Ds' */
  real32_T bcos;                       /* '<S152>/bcos' */
  real32_T asin_o;                     /* '<S152>/asin' */
  real32_T sum_Qs;                     /* '<S152>/sum_Qs' */
  real32_T Switch_h[2];                /* '<S159>/Switch' */
  real32_T algDD_o1;
  real32_T algDD_o2;
  real32_T Product_o[2];               /* '<S31>/Product' */
  real32_T SquareRoot;                 /* '<S31>/Square Root' */
  real32_T Switch_as;                  /* '<S31>/Switch' */
  real32_T Reciprocal;                 /* '<S31>/Reciprocal' */
  real32_T Switch_j[2];                /* '<S28>/Switch' */
  real32_T Switch2;                    /* '<S38>/Switch2' */
  real32_T Product_b;                  /* '<S37>/Product' */
  real32_T Sum_jr;                     /* '<S37>/Sum' */
  real32_T Product2;                   /* '<S37>/Product2' */
  real32_T Merge_d;                    /* '<S37>/Merge' */
  real32_T Gain_b;                     /* '<S37>/Gain' */
  real32_T Switch_m;                   /* '<S38>/Switch' */
  real32_T Switch1;                    /* '<S39>/Switch1' */
  real32_T Sqrt;                       /* '<S39>/Sqrt' */
  real32_T Gain_l;                     /* '<S39>/Gain' */
  real32_T a_plus_2b;                  /* '<S23>/a_plus_2b' */
  real32_T one_by_sqrt3;               /* '<S23>/one_by_sqrt3' */
  real32_T algDD_o1_e;
  real32_T algDD_o2_h;
  int32_T DataTypeConversion_c[2];     /* '<S185>/Data Type Conversion' */
  int32_T Add_e[2];                    /* '<S185>/Add' */
  int32_T SpeedCount;                  /* '<S190>/SpeedCount' */
  uint16_T Switch_c;                   /* '<S238>/Switch' */
  uint16_T Divide_o;                   /* '<S237>/Divide' */
  uint16_T Divide1;                    /* '<S237>/Divide1' */
  uint16_T ForIterator;                /* '<S240>/For Iterator' */
  uint16_T ADC_A_IN0;                  /* '<S240>/ADC_A_IN0' */
  uint16_T ADC_B_IN0;                  /* '<S240>/ADC_B_IN0' */
  uint16_T Memory;                     /* '<S245>/Memory' */
  uint16_T Sum_hk;                     /* '<S245>/Sum' */
  uint16_T Memory1;                    /* '<S245>/Memory1' */
  uint16_T Sum1_j;                     /* '<S245>/Sum1' */
  uint16_T DataTypeConversion2;        /* '<S253>/Data Type Conversion2' */
  uint16_T BitwiseOperator;            /* '<S252>/Bitwise Operator' */
  uint16_T BitwiseOperator1;           /* '<S252>/Bitwise Operator1' */
  uint16_T ShiftArithmetic1;           /* '<S252>/Shift Arithmetic1' */
  uint16_T BitwiseOperator2;           /* '<S252>/Bitwise Operator2' */
  uint16_T ShiftArithmetic2;           /* '<S252>/Shift Arithmetic2' */
  uint16_T eQEP_o1;                    /* '<S183>/eQEP' */
  uint16_T eQEP_o2;                    /* '<S183>/eQEP' */
  uint16_T DataStoreRead1_o;           /* '<S185>/Data Store Read1' */
  uint16_T DataStoreRead2;             /* '<S185>/Data Store Read2' */
  uint16_T ADC_C_IN2;                  /* '<S183>/ADC_C_IN2' */
  uint16_T ADC_B_IN2;                  /* '<S183>/ADC_B_IN2' */
  uint16_T Merge_h;                    /* '<S189>/Merge' */
  uint16_T Output;                     /* '<S222>/Output' */
  uint16_T DataStoreRead_j;            /* '<S9>/Data Store Read' */
  uint16_T MultiportSwitch[2];         /* '<S9>/Multiport Switch' */
  uint16_T FixPtSum1;                  /* '<S226>/FixPt Sum1' */
  uint16_T FixPtSwitch;                /* '<S227>/FixPt Switch' */
  uint16_T Switch1_j[3];               /* '<S216>/Switch1' */
  uint16_T Scale_to_PWM_Counter_PRD[3];/* '<S216>/Scale_to_PWM_Counter_PRD' */
  uint16_T Sum3_a;                     /* '<S205>/Sum3' */
  uint16_T Sum7;                       /* '<S205>/Sum7' */
  uint16_T Delay3;                     /* '<S187>/Delay3' */
  uint16_T DataTypeConversion_j;       /* '<S177>/Data Type Conversion' */
  uint16_T Get_Integer;                /* '<S172>/Get_Integer' */
  uint16_T Switch1_jb;                 /* '<S29>/Switch1' */
  uint16_T DataTypeConversion_i;       /* '<S155>/Data Type Conversion' */
  uint16_T Get_Integer_m;              /* '<S153>/Get_Integer' */
  uint16_T DataTypeConversion_h;       /* '<S146>/Data Type Conversion' */
  uint16_T Get_Integer_j;              /* '<S143>/Get_Integer' */
  uint16_T DataTypeConversion_f;       /* '<S27>/Data Type Conversion' */
  uint16_T DataTypeConversion_fl;      /* '<S37>/Data Type Conversion' */
  int16_T WhileIterator;               /* '<S220>/While Iterator' */
  int16_T DataTypeConversion_flc;      /* '<S181>/Data Type Conversion' */
  int16_T Switch1_h;                   /* '<S66>/Switch1' */
  int16_T Switch2_l;                   /* '<S66>/Switch2' */
  int16_T Switch1_l;                   /* '<S117>/Switch1' */
  int16_T Switch2_c;                   /* '<S117>/Switch2' */
  boolean_T NOT;                       /* '<S236>/NOT' */
  boolean_T DataTypeConversion3;       /* '<S252>/Data Type Conversion3' */
  boolean_T Delay_p;                   /* '<S184>/Delay' */
  boolean_T NOT_m;                     /* '<S184>/NOT' */
  boolean_T NOT_p;                     /* '<S8>/NOT' */
  boolean_T PWM_En;                    /* '<S13>/Enable' */
  boolean_T Compare;                   /* '<S194>/Compare' */
  boolean_T Compare_e;                 /* '<S195>/Compare' */
  boolean_T AND;                       /* '<S187>/AND' */
  boolean_T DataStoreRead1_c;          /* '<S16>/Data Store Read1' */
  boolean_T NOT_b;                     /* '<S169>/NOT' */
  boolean_T NOT_o;                     /* '<S168>/NOT' */
  boolean_T Compare_ep;                /* '<S178>/Compare' */
  boolean_T Delay_o;                   /* '<S181>/Delay' */
  boolean_T Compare_o;                 /* '<S156>/Compare' */
  boolean_T DataStoreRead1_b;          /* '<S26>/Data Store Read1' */
  boolean_T LogicalOperator;           /* '<S26>/Logical Operator' */
  boolean_T DataStoreRead1_m;          /* '<S25>/Data Store Read1' */
  boolean_T LogicalOperator_a;         /* '<S25>/Logical Operator' */
  boolean_T RelationalOperator;        /* '<S66>/Relational Operator' */
  boolean_T fixforDTpropagationissue; /* '<S66>/fix for DT propagation issue' */
  boolean_T fixforDTpropagationissue1;
                                     /* '<S66>/fix for DT propagation issue1' */
  boolean_T Equal1;                    /* '<S66>/Equal1' */
  boolean_T AND3;                      /* '<S66>/AND3' */
  boolean_T RelationalOperator_e;      /* '<S117>/Relational Operator' */
  boolean_T fixforDTpropagationissue_j;
                                     /* '<S117>/fix for DT propagation issue' */
  boolean_T fixforDTpropagationissue1_o;
                                    /* '<S117>/fix for DT propagation issue1' */
  boolean_T Equal1_i;                  /* '<S117>/Equal1' */
  boolean_T AND3_n;                    /* '<S117>/AND3' */
  boolean_T Compare_f;                 /* '<S147>/Compare' */
  boolean_T RelationalOperator_k;      /* '<S27>/Relational Operator' */
  boolean_T Compare_k;                 /* '<S33>/Compare' */
  boolean_T Compare_f0;                /* '<S34>/Compare' */
  boolean_T LowerRelop1;               /* '<S38>/LowerRelop1' */
  boolean_T RelationalOperator_l;      /* '<S37>/Relational Operator' */
  boolean_T UpperRelop;                /* '<S38>/UpperRelop' */
  B_SpeedControl_mcb_pmsm_foc_q_T SpeedControl;/* '<Root>/Speed Control' */
  B_SPIMasterTransfer_mcb_pmsm__T SPIMasterTransfer1;/* '<S246>/SPI Master Transfer' */
  B_SPIMasterTransfer_mcb_pmsm__T SPIMasterTransfer;/* '<S246>/SPI Master Transfer' */
  B_IfActionSubsystem1_mcb_pmsm_T IfActionSubsystem1_g;/* '<S177>/If Action Subsystem1' */
  B_IfActionSubsystem_mcb_pmsm__T IfActionSubsystem_c;/* '<S177>/If Action Subsystem' */
  B_TwoinputsCRL_mcb_pmsm_foc_q_T TwoinputsCRL_l;/* '<S171>/Two inputs CRL' */
  B_IfActionSubsystem1_mcb_pmsm_T IfActionSubsystem1_k;/* '<S155>/If Action Subsystem1' */
  B_IfActionSubsystem_mcb_pmsm__T IfActionSubsystem_e;/* '<S155>/If Action Subsystem' */
  B_TwoinputsCRL_mcb_pmsm_foc_q_T TwoinputsCRL;/* '<S19>/Two inputs CRL' */
  B_IfActionSubsystem1_mcb_pmsm_T IfActionSubsystem1_d;/* '<S146>/If Action Subsystem1' */
  B_IfActionSubsystem_mcb_pmsm__T IfActionSubsystem_j;/* '<S146>/If Action Subsystem' */
} B_mcb_pmsm_foc_qep_f28379d_T;

/* Block states (default storage) for system '<Root>' */
typedef struct {
  real32_T UnitDelay_DSTATE;           /* '<S193>/Unit Delay' */
  real32_T RampGenerator_DSTATE;       /* '<S169>/Ramp Generator' */
  real32_T UnitDelay_DSTATE_h;         /* '<S168>/Unit Delay' */
  real32_T Integrator_DSTATE;          /* '<S126>/Integrator' */
  real32_T Integrator_DSTATE_o;        /* '<S75>/Integrator' */
  uint32_T Delay_DSTATE[20];           /* '<S190>/Delay' */
  volatile real32_T RT1_Buffer[2];     /* '<Root>/RT1' */
  volatile real32_T RT3_Buffer[2];     /* '<Root>/RT3' */
  volatile real32_T RT5_Buffer[2];     /* '<Root>/RT5' */
  volatile real32_T RT2_Buffer[4];     /* '<Root>/RT2' */
  real32_T SpeedRef;                   /* '<Root>/Data Store Memory4' */
  real32_T PosRef;                     /* '<Root>/Data Store Memory7' */
  int32_T DigitalOutput_FRAC_LEN;      /* '<S248>/Digital Output' */
  int32_T DigitalOutput_FRAC_LEN_e;    /* '<S238>/Digital Output' */
  int32_T DigitalOutput1_FRAC_LEN;     /* '<S238>/Digital Output1' */
  int32_T Add_DWORK1[2];               /* '<S185>/Add' */
  int32_T SpeedCount_DWORK1;           /* '<S190>/SpeedCount' */
  int32_T DRV830xEnable_FRAC_LEN;      /* '<S216>/DRV830x Enable' */
  uint32_T Add_DWORK1_n;               /* '<S220>/Add' */
  uint32_T Sum_DWORK1[4];              /* '<S172>/Sum' */
  uint16_T Output_DSTATE;              /* '<S222>/Output' */
  uint16_T Delay3_DSTATE;              /* '<S187>/Delay3' */
  volatile int16_T RT1_ActiveBufIdx;   /* '<Root>/RT1' */
  volatile int16_T RT1_semaphoreTaken; /* '<Root>/RT1' */
  volatile int16_T RT3_ActiveBufIdx;   /* '<Root>/RT3' */
  volatile int16_T RT5_ActiveBufIdx;   /* '<Root>/RT5' */
  volatile int16_T RT5_semaphoreTaken; /* '<Root>/RT5' */
  volatile int16_T RT2_ActiveBufIdx;   /* '<Root>/RT2' */
  uint16_T Control_Mode;               /* '<Root>/Data Store Memory5' */
  uint16_T IaOffset;                   /* '<Root>/Data Store Memory1' */
  uint16_T IbOffset;                   /* '<Root>/Data Store Memory2' */
  uint16_T Debug_signals;              /* '<Root>/Data Store Memory6' */
  uint16_T Memory_PreviousInput;       /* '<S245>/Memory' */
  uint16_T Memory1_PreviousInput;      /* '<S245>/Memory1' */
  uint16_T CircBufIdx;                 /* '<S190>/Delay' */
  boolean_T Delay_DSTATE_m;            /* '<S184>/Delay' */
  boolean_T Delay_DSTATE_j;            /* '<S181>/Delay' */
  int16_T Integrator_PrevResetState;   /* '<S126>/Integrator' */
  int16_T Integrator_PrevResetState_k; /* '<S75>/Integrator' */
  boolean_T Enable;                    /* '<Root>/Data Store Memory29' */
  boolean_T EnClosedLoop;              /* '<Root>/Data Store Memory3' */
  boolean_T OpenLoopStartUp_MODE;      /* '<S8>/Open Loop Start-Up' */
  DW_SpeedControl_mcb_pmsm_foc__T SpeedControl;/* '<Root>/Speed Control' */
  DW_SPIMasterTransfer_mcb_pmsm_T SPIMasterTransfer1;/* '<S246>/SPI Master Transfer' */
  DW_SPIMasterTransfer_mcb_pmsm_T SPIMasterTransfer;/* '<S246>/SPI Master Transfer' */
} DW_mcb_pmsm_foc_qep_f28379d_T;

/* Invariant block signals (default storage) */
typedef struct {
  const uint32_T Width;                /* '<S219>/Width' */
} ConstB_mcb_pmsm_foc_qep_f2837_T;

/* Constant parameters (default storage) */
typedef struct {
  /* Pooled Parameter (Expression: )
   * Referenced by:
   *   '<S143>/sine_table_values'
   *   '<S172>/sine_table_values'
   *   '<S153>/sine_table_values'
   */
  real32_T pooled5[1002];
} ConstP_mcb_pmsm_foc_qep_f2837_T;

/* Real-time Model Data Structure */
struct tag_RTM_mcb_pmsm_foc_qep_f283_T {
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
extern B_mcb_pmsm_foc_qep_f28379d_T mcb_pmsm_foc_qep_f28379d_B;

/* Block states (default storage) */
extern DW_mcb_pmsm_foc_qep_f28379d_T mcb_pmsm_foc_qep_f28379d_DW;
extern const ConstB_mcb_pmsm_foc_qep_f2837_T mcb_pmsm_foc_qep_f28379d_ConstB;/* constant block i/o */

/* Constant parameters (default storage) */
extern const ConstP_mcb_pmsm_foc_qep_f2837_T mcb_pmsm_foc_qep_f28379d_ConstP;

/* External function called from main */
extern void mcb_pmsm_foc_qep_f28379d_SetEventsForThisBaseStep(boolean_T
  *eventFlags);

/* Model entry point functions */
extern void mcb_pmsm_foc_qep_f28379d_initialize(void);
extern void mcb_pmsm_foc_qep_f28379d_step0(void);
extern void mcb_pmsm_foc_qep_f28379d_step1(void);
extern void mcb_pmsm_foc_qep_f28379d_terminate(void);

/* Real-time Model object */
extern RT_MODEL_mcb_pmsm_foc_qep_f28_T *const mcb_pmsm_foc_qep_f28379d_M;
extern volatile boolean_T stopRequested;
extern volatile boolean_T runModel;

#ifdef __cpluscplus

extern "C"
{

#endif

  interrupt void ADCB1_INT(void);
  interrupt void SCIA_RX_INT(void);
  void mcb_pmsm_foc_qep_f28379d_configure_interrupts (void);
  void mcb_pmsm_foc_qep_f28379d_unconfigure_interrupts (void);

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
 * '<Root>' : 'mcb_pmsm_foc_qep_f28379d'
 * '<S1>'   : 'mcb_pmsm_foc_qep_f28379d/Current Control'
 * '<S2>'   : 'mcb_pmsm_foc_qep_f28379d/HW Interrupt'
 * '<S3>'   : 'mcb_pmsm_foc_qep_f28379d/Hardware Init'
 * '<S4>'   : 'mcb_pmsm_foc_qep_f28379d/Heartbeat LED'
 * '<S5>'   : 'mcb_pmsm_foc_qep_f28379d/Inverter and Motor - Plant Model'
 * '<S6>'   : 'mcb_pmsm_foc_qep_f28379d/Serial Receive'
 * '<S7>'   : 'mcb_pmsm_foc_qep_f28379d/Speed Control'
 * '<S8>'   : 'mcb_pmsm_foc_qep_f28379d/Current Control/Control_System'
 * '<S9>'   : 'mcb_pmsm_foc_qep_f28379d/Current Control/Debug_signals'
 * '<S10>'  : 'mcb_pmsm_foc_qep_f28379d/Current Control/HW_Inputs'
 * '<S11>'  : 'mcb_pmsm_foc_qep_f28379d/Current Control/Input Scaling'
 * '<S12>'  : 'mcb_pmsm_foc_qep_f28379d/Current Control/Inverter'
 * '<S13>'  : 'mcb_pmsm_foc_qep_f28379d/Current Control/Output Scaling'
 * '<S14>'  : 'mcb_pmsm_foc_qep_f28379d/Current Control/SCI_Tx'
 * '<S15>'  : 'mcb_pmsm_foc_qep_f28379d/Current Control/Control_System/Closed Loop Control'
 * '<S16>'  : 'mcb_pmsm_foc_qep_f28379d/Current Control/Control_System/Open Loop Start-Up'
 * '<S17>'  : 'mcb_pmsm_foc_qep_f28379d/Current Control/Control_System/Closed Loop Control/Clarke Transform'
 * '<S18>'  : 'mcb_pmsm_foc_qep_f28379d/Current Control/Control_System/Closed Loop Control/Current_Controllers'
 * '<S19>'  : 'mcb_pmsm_foc_qep_f28379d/Current Control/Control_System/Closed Loop Control/Inverse Park Transform'
 * '<S20>'  : 'mcb_pmsm_foc_qep_f28379d/Current Control/Control_System/Closed Loop Control/Park Transform'
 * '<S21>'  : 'mcb_pmsm_foc_qep_f28379d/Current Control/Control_System/Closed Loop Control/Space Vector Generator'
 * '<S22>'  : 'mcb_pmsm_foc_qep_f28379d/Current Control/Control_System/Closed Loop Control/Clarke Transform/Two phase input'
 * '<S23>'  : 'mcb_pmsm_foc_qep_f28379d/Current Control/Control_System/Closed Loop Control/Clarke Transform/Two phase input/Two phase CRL wrap'
 * '<S24>'  : 'mcb_pmsm_foc_qep_f28379d/Current Control/Control_System/Closed Loop Control/Current_Controllers/DQ Limiter'
 * '<S25>'  : 'mcb_pmsm_foc_qep_f28379d/Current Control/Control_System/Closed Loop Control/Current_Controllers/PI_Controller_Id'
 * '<S26>'  : 'mcb_pmsm_foc_qep_f28379d/Current Control/Control_System/Closed Loop Control/Current_Controllers/PI_Controller_Iq'
 * '<S27>'  : 'mcb_pmsm_foc_qep_f28379d/Current Control/Control_System/Closed Loop Control/Current_Controllers/DQ Limiter/D-Q Equivalence'
 * '<S28>'  : 'mcb_pmsm_foc_qep_f28379d/Current Control/Control_System/Closed Loop Control/Current_Controllers/DQ Limiter/D//Q Axis Priority'
 * '<S29>'  : 'mcb_pmsm_foc_qep_f28379d/Current Control/Control_System/Closed Loop Control/Current_Controllers/DQ Limiter/Inport//Dialog Selection'
 * '<S30>'  : 'mcb_pmsm_foc_qep_f28379d/Current Control/Control_System/Closed Loop Control/Current_Controllers/DQ Limiter/Magnitude_calc'
 * '<S31>'  : 'mcb_pmsm_foc_qep_f28379d/Current Control/Control_System/Closed Loop Control/Current_Controllers/DQ Limiter/D-Q Equivalence/Limiter'
 * '<S32>'  : 'mcb_pmsm_foc_qep_f28379d/Current Control/Control_System/Closed Loop Control/Current_Controllers/DQ Limiter/D-Q Equivalence/Passthrough'
 * '<S33>'  : 'mcb_pmsm_foc_qep_f28379d/Current Control/Control_System/Closed Loop Control/Current_Controllers/DQ Limiter/D//Q Axis Priority/Compare To Constant'
 * '<S34>'  : 'mcb_pmsm_foc_qep_f28379d/Current Control/Control_System/Closed Loop Control/Current_Controllers/DQ Limiter/D//Q Axis Priority/Compare To Constant1'
 * '<S35>'  : 'mcb_pmsm_foc_qep_f28379d/Current Control/Control_System/Closed Loop Control/Current_Controllers/DQ Limiter/D//Q Axis Priority/flipInputs'
 * '<S36>'  : 'mcb_pmsm_foc_qep_f28379d/Current Control/Control_System/Closed Loop Control/Current_Controllers/DQ Limiter/D//Q Axis Priority/flipInputs1'
 * '<S37>'  : 'mcb_pmsm_foc_qep_f28379d/Current Control/Control_System/Closed Loop Control/Current_Controllers/DQ Limiter/D//Q Axis Priority/limiter'
 * '<S38>'  : 'mcb_pmsm_foc_qep_f28379d/Current Control/Control_System/Closed Loop Control/Current_Controllers/DQ Limiter/D//Q Axis Priority/limiter/limitRef1'
 * '<S39>'  : 'mcb_pmsm_foc_qep_f28379d/Current Control/Control_System/Closed Loop Control/Current_Controllers/DQ Limiter/D//Q Axis Priority/limiter/limitRef2'
 * '<S40>'  : 'mcb_pmsm_foc_qep_f28379d/Current Control/Control_System/Closed Loop Control/Current_Controllers/DQ Limiter/D//Q Axis Priority/limiter/passThrough'
 * '<S41>'  : 'mcb_pmsm_foc_qep_f28379d/Current Control/Control_System/Closed Loop Control/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset'
 * '<S42>'  : 'mcb_pmsm_foc_qep_f28379d/Current Control/Control_System/Closed Loop Control/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Anti-windup'
 * '<S43>'  : 'mcb_pmsm_foc_qep_f28379d/Current Control/Control_System/Closed Loop Control/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/D Gain'
 * '<S44>'  : 'mcb_pmsm_foc_qep_f28379d/Current Control/Control_System/Closed Loop Control/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Filter'
 * '<S45>'  : 'mcb_pmsm_foc_qep_f28379d/Current Control/Control_System/Closed Loop Control/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Filter ICs'
 * '<S46>'  : 'mcb_pmsm_foc_qep_f28379d/Current Control/Control_System/Closed Loop Control/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/I Gain'
 * '<S47>'  : 'mcb_pmsm_foc_qep_f28379d/Current Control/Control_System/Closed Loop Control/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Ideal P Gain'
 * '<S48>'  : 'mcb_pmsm_foc_qep_f28379d/Current Control/Control_System/Closed Loop Control/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Ideal P Gain Fdbk'
 * '<S49>'  : 'mcb_pmsm_foc_qep_f28379d/Current Control/Control_System/Closed Loop Control/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Integrator'
 * '<S50>'  : 'mcb_pmsm_foc_qep_f28379d/Current Control/Control_System/Closed Loop Control/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Integrator ICs'
 * '<S51>'  : 'mcb_pmsm_foc_qep_f28379d/Current Control/Control_System/Closed Loop Control/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/N Copy'
 * '<S52>'  : 'mcb_pmsm_foc_qep_f28379d/Current Control/Control_System/Closed Loop Control/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/N Gain'
 * '<S53>'  : 'mcb_pmsm_foc_qep_f28379d/Current Control/Control_System/Closed Loop Control/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/P Copy'
 * '<S54>'  : 'mcb_pmsm_foc_qep_f28379d/Current Control/Control_System/Closed Loop Control/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Parallel P Gain'
 * '<S55>'  : 'mcb_pmsm_foc_qep_f28379d/Current Control/Control_System/Closed Loop Control/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Reset Signal'
 * '<S56>'  : 'mcb_pmsm_foc_qep_f28379d/Current Control/Control_System/Closed Loop Control/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Saturation'
 * '<S57>'  : 'mcb_pmsm_foc_qep_f28379d/Current Control/Control_System/Closed Loop Control/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Saturation Fdbk'
 * '<S58>'  : 'mcb_pmsm_foc_qep_f28379d/Current Control/Control_System/Closed Loop Control/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Sum'
 * '<S59>'  : 'mcb_pmsm_foc_qep_f28379d/Current Control/Control_System/Closed Loop Control/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Sum Fdbk'
 * '<S60>'  : 'mcb_pmsm_foc_qep_f28379d/Current Control/Control_System/Closed Loop Control/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Tracking Mode'
 * '<S61>'  : 'mcb_pmsm_foc_qep_f28379d/Current Control/Control_System/Closed Loop Control/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Tracking Mode Sum'
 * '<S62>'  : 'mcb_pmsm_foc_qep_f28379d/Current Control/Control_System/Closed Loop Control/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Tsamp - Integral'
 * '<S63>'  : 'mcb_pmsm_foc_qep_f28379d/Current Control/Control_System/Closed Loop Control/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Tsamp - Ngain'
 * '<S64>'  : 'mcb_pmsm_foc_qep_f28379d/Current Control/Control_System/Closed Loop Control/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/postSat Signal'
 * '<S65>'  : 'mcb_pmsm_foc_qep_f28379d/Current Control/Control_System/Closed Loop Control/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/preSat Signal'
 * '<S66>'  : 'mcb_pmsm_foc_qep_f28379d/Current Control/Control_System/Closed Loop Control/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Anti-windup/Disc. Clamping Parallel'
 * '<S67>'  : 'mcb_pmsm_foc_qep_f28379d/Current Control/Control_System/Closed Loop Control/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Anti-windup/Disc. Clamping Parallel/Dead Zone'
 * '<S68>'  : 'mcb_pmsm_foc_qep_f28379d/Current Control/Control_System/Closed Loop Control/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Anti-windup/Disc. Clamping Parallel/Dead Zone/Enabled'
 * '<S69>'  : 'mcb_pmsm_foc_qep_f28379d/Current Control/Control_System/Closed Loop Control/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/D Gain/Disabled'
 * '<S70>'  : 'mcb_pmsm_foc_qep_f28379d/Current Control/Control_System/Closed Loop Control/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Filter/Disabled'
 * '<S71>'  : 'mcb_pmsm_foc_qep_f28379d/Current Control/Control_System/Closed Loop Control/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Filter ICs/Disabled'
 * '<S72>'  : 'mcb_pmsm_foc_qep_f28379d/Current Control/Control_System/Closed Loop Control/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/I Gain/External Parameters'
 * '<S73>'  : 'mcb_pmsm_foc_qep_f28379d/Current Control/Control_System/Closed Loop Control/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Ideal P Gain/Passthrough'
 * '<S74>'  : 'mcb_pmsm_foc_qep_f28379d/Current Control/Control_System/Closed Loop Control/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Ideal P Gain Fdbk/Disabled'
 * '<S75>'  : 'mcb_pmsm_foc_qep_f28379d/Current Control/Control_System/Closed Loop Control/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Integrator/Discrete'
 * '<S76>'  : 'mcb_pmsm_foc_qep_f28379d/Current Control/Control_System/Closed Loop Control/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Integrator ICs/External IC'
 * '<S77>'  : 'mcb_pmsm_foc_qep_f28379d/Current Control/Control_System/Closed Loop Control/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/N Copy/Disabled wSignal Specification'
 * '<S78>'  : 'mcb_pmsm_foc_qep_f28379d/Current Control/Control_System/Closed Loop Control/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/N Gain/Disabled'
 * '<S79>'  : 'mcb_pmsm_foc_qep_f28379d/Current Control/Control_System/Closed Loop Control/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/P Copy/Disabled'
 * '<S80>'  : 'mcb_pmsm_foc_qep_f28379d/Current Control/Control_System/Closed Loop Control/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Parallel P Gain/External Parameters'
 * '<S81>'  : 'mcb_pmsm_foc_qep_f28379d/Current Control/Control_System/Closed Loop Control/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Reset Signal/External Reset'
 * '<S82>'  : 'mcb_pmsm_foc_qep_f28379d/Current Control/Control_System/Closed Loop Control/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Saturation/Enabled'
 * '<S83>'  : 'mcb_pmsm_foc_qep_f28379d/Current Control/Control_System/Closed Loop Control/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Saturation Fdbk/Disabled'
 * '<S84>'  : 'mcb_pmsm_foc_qep_f28379d/Current Control/Control_System/Closed Loop Control/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Sum/Sum_PI'
 * '<S85>'  : 'mcb_pmsm_foc_qep_f28379d/Current Control/Control_System/Closed Loop Control/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Sum Fdbk/Disabled'
 * '<S86>'  : 'mcb_pmsm_foc_qep_f28379d/Current Control/Control_System/Closed Loop Control/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Tracking Mode/Disabled'
 * '<S87>'  : 'mcb_pmsm_foc_qep_f28379d/Current Control/Control_System/Closed Loop Control/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Tracking Mode Sum/Passthrough'
 * '<S88>'  : 'mcb_pmsm_foc_qep_f28379d/Current Control/Control_System/Closed Loop Control/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Tsamp - Integral/TsSignalSpecification'
 * '<S89>'  : 'mcb_pmsm_foc_qep_f28379d/Current Control/Control_System/Closed Loop Control/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Tsamp - Ngain/Passthrough'
 * '<S90>'  : 'mcb_pmsm_foc_qep_f28379d/Current Control/Control_System/Closed Loop Control/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/postSat Signal/Forward_Path'
 * '<S91>'  : 'mcb_pmsm_foc_qep_f28379d/Current Control/Control_System/Closed Loop Control/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/preSat Signal/Forward_Path'
 * '<S92>'  : 'mcb_pmsm_foc_qep_f28379d/Current Control/Control_System/Closed Loop Control/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset'
 * '<S93>'  : 'mcb_pmsm_foc_qep_f28379d/Current Control/Control_System/Closed Loop Control/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Anti-windup'
 * '<S94>'  : 'mcb_pmsm_foc_qep_f28379d/Current Control/Control_System/Closed Loop Control/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/D Gain'
 * '<S95>'  : 'mcb_pmsm_foc_qep_f28379d/Current Control/Control_System/Closed Loop Control/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Filter'
 * '<S96>'  : 'mcb_pmsm_foc_qep_f28379d/Current Control/Control_System/Closed Loop Control/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Filter ICs'
 * '<S97>'  : 'mcb_pmsm_foc_qep_f28379d/Current Control/Control_System/Closed Loop Control/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/I Gain'
 * '<S98>'  : 'mcb_pmsm_foc_qep_f28379d/Current Control/Control_System/Closed Loop Control/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Ideal P Gain'
 * '<S99>'  : 'mcb_pmsm_foc_qep_f28379d/Current Control/Control_System/Closed Loop Control/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Ideal P Gain Fdbk'
 * '<S100>' : 'mcb_pmsm_foc_qep_f28379d/Current Control/Control_System/Closed Loop Control/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Integrator'
 * '<S101>' : 'mcb_pmsm_foc_qep_f28379d/Current Control/Control_System/Closed Loop Control/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Integrator ICs'
 * '<S102>' : 'mcb_pmsm_foc_qep_f28379d/Current Control/Control_System/Closed Loop Control/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/N Copy'
 * '<S103>' : 'mcb_pmsm_foc_qep_f28379d/Current Control/Control_System/Closed Loop Control/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/N Gain'
 * '<S104>' : 'mcb_pmsm_foc_qep_f28379d/Current Control/Control_System/Closed Loop Control/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/P Copy'
 * '<S105>' : 'mcb_pmsm_foc_qep_f28379d/Current Control/Control_System/Closed Loop Control/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Parallel P Gain'
 * '<S106>' : 'mcb_pmsm_foc_qep_f28379d/Current Control/Control_System/Closed Loop Control/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Reset Signal'
 * '<S107>' : 'mcb_pmsm_foc_qep_f28379d/Current Control/Control_System/Closed Loop Control/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Saturation'
 * '<S108>' : 'mcb_pmsm_foc_qep_f28379d/Current Control/Control_System/Closed Loop Control/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Saturation Fdbk'
 * '<S109>' : 'mcb_pmsm_foc_qep_f28379d/Current Control/Control_System/Closed Loop Control/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Sum'
 * '<S110>' : 'mcb_pmsm_foc_qep_f28379d/Current Control/Control_System/Closed Loop Control/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Sum Fdbk'
 * '<S111>' : 'mcb_pmsm_foc_qep_f28379d/Current Control/Control_System/Closed Loop Control/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Tracking Mode'
 * '<S112>' : 'mcb_pmsm_foc_qep_f28379d/Current Control/Control_System/Closed Loop Control/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Tracking Mode Sum'
 * '<S113>' : 'mcb_pmsm_foc_qep_f28379d/Current Control/Control_System/Closed Loop Control/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Tsamp - Integral'
 * '<S114>' : 'mcb_pmsm_foc_qep_f28379d/Current Control/Control_System/Closed Loop Control/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Tsamp - Ngain'
 * '<S115>' : 'mcb_pmsm_foc_qep_f28379d/Current Control/Control_System/Closed Loop Control/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/postSat Signal'
 * '<S116>' : 'mcb_pmsm_foc_qep_f28379d/Current Control/Control_System/Closed Loop Control/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/preSat Signal'
 * '<S117>' : 'mcb_pmsm_foc_qep_f28379d/Current Control/Control_System/Closed Loop Control/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Anti-windup/Disc. Clamping Parallel'
 * '<S118>' : 'mcb_pmsm_foc_qep_f28379d/Current Control/Control_System/Closed Loop Control/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Anti-windup/Disc. Clamping Parallel/Dead Zone'
 * '<S119>' : 'mcb_pmsm_foc_qep_f28379d/Current Control/Control_System/Closed Loop Control/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Anti-windup/Disc. Clamping Parallel/Dead Zone/Enabled'
 * '<S120>' : 'mcb_pmsm_foc_qep_f28379d/Current Control/Control_System/Closed Loop Control/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/D Gain/Disabled'
 * '<S121>' : 'mcb_pmsm_foc_qep_f28379d/Current Control/Control_System/Closed Loop Control/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Filter/Disabled'
 * '<S122>' : 'mcb_pmsm_foc_qep_f28379d/Current Control/Control_System/Closed Loop Control/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Filter ICs/Disabled'
 * '<S123>' : 'mcb_pmsm_foc_qep_f28379d/Current Control/Control_System/Closed Loop Control/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/I Gain/External Parameters'
 * '<S124>' : 'mcb_pmsm_foc_qep_f28379d/Current Control/Control_System/Closed Loop Control/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Ideal P Gain/Passthrough'
 * '<S125>' : 'mcb_pmsm_foc_qep_f28379d/Current Control/Control_System/Closed Loop Control/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Ideal P Gain Fdbk/Disabled'
 * '<S126>' : 'mcb_pmsm_foc_qep_f28379d/Current Control/Control_System/Closed Loop Control/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Integrator/Discrete'
 * '<S127>' : 'mcb_pmsm_foc_qep_f28379d/Current Control/Control_System/Closed Loop Control/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Integrator ICs/External IC'
 * '<S128>' : 'mcb_pmsm_foc_qep_f28379d/Current Control/Control_System/Closed Loop Control/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/N Copy/Disabled wSignal Specification'
 * '<S129>' : 'mcb_pmsm_foc_qep_f28379d/Current Control/Control_System/Closed Loop Control/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/N Gain/Disabled'
 * '<S130>' : 'mcb_pmsm_foc_qep_f28379d/Current Control/Control_System/Closed Loop Control/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/P Copy/Disabled'
 * '<S131>' : 'mcb_pmsm_foc_qep_f28379d/Current Control/Control_System/Closed Loop Control/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Parallel P Gain/External Parameters'
 * '<S132>' : 'mcb_pmsm_foc_qep_f28379d/Current Control/Control_System/Closed Loop Control/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Reset Signal/External Reset'
 * '<S133>' : 'mcb_pmsm_foc_qep_f28379d/Current Control/Control_System/Closed Loop Control/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Saturation/Enabled'
 * '<S134>' : 'mcb_pmsm_foc_qep_f28379d/Current Control/Control_System/Closed Loop Control/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Saturation Fdbk/Disabled'
 * '<S135>' : 'mcb_pmsm_foc_qep_f28379d/Current Control/Control_System/Closed Loop Control/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Sum/Sum_PI'
 * '<S136>' : 'mcb_pmsm_foc_qep_f28379d/Current Control/Control_System/Closed Loop Control/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Sum Fdbk/Disabled'
 * '<S137>' : 'mcb_pmsm_foc_qep_f28379d/Current Control/Control_System/Closed Loop Control/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Tracking Mode/Disabled'
 * '<S138>' : 'mcb_pmsm_foc_qep_f28379d/Current Control/Control_System/Closed Loop Control/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Tracking Mode Sum/Passthrough'
 * '<S139>' : 'mcb_pmsm_foc_qep_f28379d/Current Control/Control_System/Closed Loop Control/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Tsamp - Integral/TsSignalSpecification'
 * '<S140>' : 'mcb_pmsm_foc_qep_f28379d/Current Control/Control_System/Closed Loop Control/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Tsamp - Ngain/Passthrough'
 * '<S141>' : 'mcb_pmsm_foc_qep_f28379d/Current Control/Control_System/Closed Loop Control/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/postSat Signal/Forward_Path'
 * '<S142>' : 'mcb_pmsm_foc_qep_f28379d/Current Control/Control_System/Closed Loop Control/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/preSat Signal/Forward_Path'
 * '<S143>' : 'mcb_pmsm_foc_qep_f28379d/Current Control/Control_System/Closed Loop Control/Inverse Park Transform/Sine Cosine'
 * '<S144>' : 'mcb_pmsm_foc_qep_f28379d/Current Control/Control_System/Closed Loop Control/Inverse Park Transform/Two inputs CRL'
 * '<S145>' : 'mcb_pmsm_foc_qep_f28379d/Current Control/Control_System/Closed Loop Control/Inverse Park Transform/Sine Cosine/Interpolation'
 * '<S146>' : 'mcb_pmsm_foc_qep_f28379d/Current Control/Control_System/Closed Loop Control/Inverse Park Transform/Sine Cosine/WrapUp'
 * '<S147>' : 'mcb_pmsm_foc_qep_f28379d/Current Control/Control_System/Closed Loop Control/Inverse Park Transform/Sine Cosine/WrapUp/Compare To Zero'
 * '<S148>' : 'mcb_pmsm_foc_qep_f28379d/Current Control/Control_System/Closed Loop Control/Inverse Park Transform/Sine Cosine/WrapUp/If Action Subsystem'
 * '<S149>' : 'mcb_pmsm_foc_qep_f28379d/Current Control/Control_System/Closed Loop Control/Inverse Park Transform/Sine Cosine/WrapUp/If Action Subsystem1'
 * '<S150>' : 'mcb_pmsm_foc_qep_f28379d/Current Control/Control_System/Closed Loop Control/Inverse Park Transform/Two inputs CRL/Switch_Axis'
 * '<S151>' : 'mcb_pmsm_foc_qep_f28379d/Current Control/Control_System/Closed Loop Control/Park Transform/Sine Cosine'
 * '<S152>' : 'mcb_pmsm_foc_qep_f28379d/Current Control/Control_System/Closed Loop Control/Park Transform/Two inputs CRL'
 * '<S153>' : 'mcb_pmsm_foc_qep_f28379d/Current Control/Control_System/Closed Loop Control/Park Transform/Sine Cosine/Sine-Cosine Lookup'
 * '<S154>' : 'mcb_pmsm_foc_qep_f28379d/Current Control/Control_System/Closed Loop Control/Park Transform/Sine Cosine/Sine-Cosine Lookup/Interpolation'
 * '<S155>' : 'mcb_pmsm_foc_qep_f28379d/Current Control/Control_System/Closed Loop Control/Park Transform/Sine Cosine/Sine-Cosine Lookup/WrapUp'
 * '<S156>' : 'mcb_pmsm_foc_qep_f28379d/Current Control/Control_System/Closed Loop Control/Park Transform/Sine Cosine/Sine-Cosine Lookup/WrapUp/Compare To Zero'
 * '<S157>' : 'mcb_pmsm_foc_qep_f28379d/Current Control/Control_System/Closed Loop Control/Park Transform/Sine Cosine/Sine-Cosine Lookup/WrapUp/If Action Subsystem'
 * '<S158>' : 'mcb_pmsm_foc_qep_f28379d/Current Control/Control_System/Closed Loop Control/Park Transform/Sine Cosine/Sine-Cosine Lookup/WrapUp/If Action Subsystem1'
 * '<S159>' : 'mcb_pmsm_foc_qep_f28379d/Current Control/Control_System/Closed Loop Control/Park Transform/Two inputs CRL/Switch_Axis'
 * '<S160>' : 'mcb_pmsm_foc_qep_f28379d/Current Control/Control_System/Closed Loop Control/Space Vector Generator/Modulation method'
 * '<S161>' : 'mcb_pmsm_foc_qep_f28379d/Current Control/Control_System/Closed Loop Control/Space Vector Generator/Voltage Input'
 * '<S162>' : 'mcb_pmsm_foc_qep_f28379d/Current Control/Control_System/Closed Loop Control/Space Vector Generator/Modulation method/SVPWM'
 * '<S163>' : 'mcb_pmsm_foc_qep_f28379d/Current Control/Control_System/Closed Loop Control/Space Vector Generator/Modulation method/SVPWM/Half(Vmin+Vmax)'
 * '<S164>' : 'mcb_pmsm_foc_qep_f28379d/Current Control/Control_System/Closed Loop Control/Space Vector Generator/Voltage Input/Valphabeta'
 * '<S165>' : 'mcb_pmsm_foc_qep_f28379d/Current Control/Control_System/Closed Loop Control/Space Vector Generator/Voltage Input/Valphabeta/Inverse Clarke Transform'
 * '<S166>' : 'mcb_pmsm_foc_qep_f28379d/Current Control/Control_System/Closed Loop Control/Space Vector Generator/Voltage Input/Valphabeta/Inverse Clarke Transform/Two phase input'
 * '<S167>' : 'mcb_pmsm_foc_qep_f28379d/Current Control/Control_System/Open Loop Start-Up/3-Phase Sine Voltage Generator'
 * '<S168>' : 'mcb_pmsm_foc_qep_f28379d/Current Control/Control_System/Open Loop Start-Up/Position Generator1'
 * '<S169>' : 'mcb_pmsm_foc_qep_f28379d/Current Control/Control_System/Open Loop Start-Up/Ramp Generator'
 * '<S170>' : 'mcb_pmsm_foc_qep_f28379d/Current Control/Control_System/Open Loop Start-Up/3-Phase Sine Voltage Generator/Inverse Clarke Transform'
 * '<S171>' : 'mcb_pmsm_foc_qep_f28379d/Current Control/Control_System/Open Loop Start-Up/3-Phase Sine Voltage Generator/Inverse Park Transform'
 * '<S172>' : 'mcb_pmsm_foc_qep_f28379d/Current Control/Control_System/Open Loop Start-Up/3-Phase Sine Voltage Generator/Sine-Cosine Lookup'
 * '<S173>' : 'mcb_pmsm_foc_qep_f28379d/Current Control/Control_System/Open Loop Start-Up/3-Phase Sine Voltage Generator/Inverse Clarke Transform/Two phase input'
 * '<S174>' : 'mcb_pmsm_foc_qep_f28379d/Current Control/Control_System/Open Loop Start-Up/3-Phase Sine Voltage Generator/Inverse Park Transform/Two inputs CRL'
 * '<S175>' : 'mcb_pmsm_foc_qep_f28379d/Current Control/Control_System/Open Loop Start-Up/3-Phase Sine Voltage Generator/Inverse Park Transform/Two inputs CRL/Switch_Axis'
 * '<S176>' : 'mcb_pmsm_foc_qep_f28379d/Current Control/Control_System/Open Loop Start-Up/3-Phase Sine Voltage Generator/Sine-Cosine Lookup/Interpolation'
 * '<S177>' : 'mcb_pmsm_foc_qep_f28379d/Current Control/Control_System/Open Loop Start-Up/3-Phase Sine Voltage Generator/Sine-Cosine Lookup/WrapUp'
 * '<S178>' : 'mcb_pmsm_foc_qep_f28379d/Current Control/Control_System/Open Loop Start-Up/3-Phase Sine Voltage Generator/Sine-Cosine Lookup/WrapUp/Compare To Zero'
 * '<S179>' : 'mcb_pmsm_foc_qep_f28379d/Current Control/Control_System/Open Loop Start-Up/3-Phase Sine Voltage Generator/Sine-Cosine Lookup/WrapUp/If Action Subsystem'
 * '<S180>' : 'mcb_pmsm_foc_qep_f28379d/Current Control/Control_System/Open Loop Start-Up/3-Phase Sine Voltage Generator/Sine-Cosine Lookup/WrapUp/If Action Subsystem1'
 * '<S181>' : 'mcb_pmsm_foc_qep_f28379d/Current Control/Control_System/Open Loop Start-Up/Position Generator1/Accumulate'
 * '<S182>' : 'mcb_pmsm_foc_qep_f28379d/Current Control/Control_System/Open Loop Start-Up/Position Generator1/Accumulate/Subsystem'
 * '<S183>' : 'mcb_pmsm_foc_qep_f28379d/Current Control/HW_Inputs/Sensor Driver Blocks (codegen)'
 * '<S184>' : 'mcb_pmsm_foc_qep_f28379d/Current Control/Input Scaling/ Calculate Position and Speed'
 * '<S185>' : 'mcb_pmsm_foc_qep_f28379d/Current Control/Input Scaling/Calculate Phase Currents'
 * '<S186>' : 'mcb_pmsm_foc_qep_f28379d/Current Control/Input Scaling/ Calculate Position and Speed/IIR Filter'
 * '<S187>' : 'mcb_pmsm_foc_qep_f28379d/Current Control/Input Scaling/ Calculate Position and Speed/IndexFinder'
 * '<S188>' : 'mcb_pmsm_foc_qep_f28379d/Current Control/Input Scaling/ Calculate Position and Speed/Mechanical to Electrical Position'
 * '<S189>' : 'mcb_pmsm_foc_qep_f28379d/Current Control/Input Scaling/ Calculate Position and Speed/Quadrature Decoder'
 * '<S190>' : 'mcb_pmsm_foc_qep_f28379d/Current Control/Input Scaling/ Calculate Position and Speed/Speed Measurement'
 * '<S191>' : 'mcb_pmsm_foc_qep_f28379d/Current Control/Input Scaling/ Calculate Position and Speed/IIR Filter/IIR Filter'
 * '<S192>' : 'mcb_pmsm_foc_qep_f28379d/Current Control/Input Scaling/ Calculate Position and Speed/IIR Filter/IIR Filter/Low-pass'
 * '<S193>' : 'mcb_pmsm_foc_qep_f28379d/Current Control/Input Scaling/ Calculate Position and Speed/IIR Filter/IIR Filter/Low-pass/IIR Low Pass Filter'
 * '<S194>' : 'mcb_pmsm_foc_qep_f28379d/Current Control/Input Scaling/ Calculate Position and Speed/IndexFinder/Compare To Constant'
 * '<S195>' : 'mcb_pmsm_foc_qep_f28379d/Current Control/Input Scaling/ Calculate Position and Speed/IndexFinder/Compare To Constant1'
 * '<S196>' : 'mcb_pmsm_foc_qep_f28379d/Current Control/Input Scaling/ Calculate Position and Speed/Mechanical to Electrical Position/MechToElec'
 * '<S197>' : 'mcb_pmsm_foc_qep_f28379d/Current Control/Input Scaling/ Calculate Position and Speed/Mechanical to Electrical Position/MechToElec/floating-point'
 * '<S198>' : 'mcb_pmsm_foc_qep_f28379d/Current Control/Input Scaling/ Calculate Position and Speed/Mechanical to Electrical Position/MechToElec/floating-point/Compensate Offset'
 * '<S199>' : 'mcb_pmsm_foc_qep_f28379d/Current Control/Input Scaling/ Calculate Position and Speed/Mechanical to Electrical Position/MechToElec/floating-point/Mech To Elec'
 * '<S200>' : 'mcb_pmsm_foc_qep_f28379d/Current Control/Input Scaling/ Calculate Position and Speed/Mechanical to Electrical Position/MechToElec/floating-point/Compensate Offset/If Action Subsystem'
 * '<S201>' : 'mcb_pmsm_foc_qep_f28379d/Current Control/Input Scaling/ Calculate Position and Speed/Mechanical to Electrical Position/MechToElec/floating-point/Compensate Offset/If Action Subsystem1'
 * '<S202>' : 'mcb_pmsm_foc_qep_f28379d/Current Control/Input Scaling/ Calculate Position and Speed/Mechanical to Electrical Position/MechToElec/floating-point/Mech To Elec/Variant Subsystem'
 * '<S203>' : 'mcb_pmsm_foc_qep_f28379d/Current Control/Input Scaling/ Calculate Position and Speed/Mechanical to Electrical Position/MechToElec/floating-point/Mech To Elec/Variant Subsystem/Dialog'
 * '<S204>' : 'mcb_pmsm_foc_qep_f28379d/Current Control/Input Scaling/ Calculate Position and Speed/Quadrature Decoder/DT_Handle'
 * '<S205>' : 'mcb_pmsm_foc_qep_f28379d/Current Control/Input Scaling/ Calculate Position and Speed/Quadrature Decoder/PositionNoReset'
 * '<S206>' : 'mcb_pmsm_foc_qep_f28379d/Current Control/Input Scaling/ Calculate Position and Speed/Quadrature Decoder/PositionResetAtIndex'
 * '<S207>' : 'mcb_pmsm_foc_qep_f28379d/Current Control/Input Scaling/ Calculate Position and Speed/Quadrature Decoder/Variant Subsystem'
 * '<S208>' : 'mcb_pmsm_foc_qep_f28379d/Current Control/Input Scaling/ Calculate Position and Speed/Quadrature Decoder/DT_Handle/floating-point'
 * '<S209>' : 'mcb_pmsm_foc_qep_f28379d/Current Control/Input Scaling/ Calculate Position and Speed/Quadrature Decoder/PositionNoReset/Variant Subsystem'
 * '<S210>' : 'mcb_pmsm_foc_qep_f28379d/Current Control/Input Scaling/ Calculate Position and Speed/Quadrature Decoder/PositionNoReset/Variant Subsystem/Dialog'
 * '<S211>' : 'mcb_pmsm_foc_qep_f28379d/Current Control/Input Scaling/ Calculate Position and Speed/Quadrature Decoder/Variant Subsystem/Dialog'
 * '<S212>' : 'mcb_pmsm_foc_qep_f28379d/Current Control/Input Scaling/ Calculate Position and Speed/Speed Measurement/DT_Handle'
 * '<S213>' : 'mcb_pmsm_foc_qep_f28379d/Current Control/Input Scaling/ Calculate Position and Speed/Speed Measurement/DT_Handle/floating-point'
 * '<S214>' : 'mcb_pmsm_foc_qep_f28379d/Current Control/Input Scaling/Calculate Phase Currents/Data_Type'
 * '<S215>' : 'mcb_pmsm_foc_qep_f28379d/Current Control/Input Scaling/Calculate Phase Currents/Data_Type/Data_Type_Float'
 * '<S216>' : 'mcb_pmsm_foc_qep_f28379d/Current Control/Inverter/Code Generation'
 * '<S217>' : 'mcb_pmsm_foc_qep_f28379d/Current Control/SCI_Tx/Code Generation'
 * '<S218>' : 'mcb_pmsm_foc_qep_f28379d/Current Control/SCI_Tx/Code Generation/Data_Conditioning_Tx'
 * '<S219>' : 'mcb_pmsm_foc_qep_f28379d/Current Control/SCI_Tx/Code Generation/Data_Logging'
 * '<S220>' : 'mcb_pmsm_foc_qep_f28379d/Current Control/SCI_Tx/Code Generation/While Iterator Subsystem'
 * '<S221>' : 'mcb_pmsm_foc_qep_f28379d/Current Control/SCI_Tx/Code Generation/Data_Conditioning_Tx/Data_Type_Float'
 * '<S222>' : 'mcb_pmsm_foc_qep_f28379d/Current Control/SCI_Tx/Code Generation/Data_Logging/Counter Limited'
 * '<S223>' : 'mcb_pmsm_foc_qep_f28379d/Current Control/SCI_Tx/Code Generation/Data_Logging/Data'
 * '<S224>' : 'mcb_pmsm_foc_qep_f28379d/Current Control/SCI_Tx/Code Generation/Data_Logging/End'
 * '<S225>' : 'mcb_pmsm_foc_qep_f28379d/Current Control/SCI_Tx/Code Generation/Data_Logging/Start'
 * '<S226>' : 'mcb_pmsm_foc_qep_f28379d/Current Control/SCI_Tx/Code Generation/Data_Logging/Counter Limited/Increment Real World'
 * '<S227>' : 'mcb_pmsm_foc_qep_f28379d/Current Control/SCI_Tx/Code Generation/Data_Logging/Counter Limited/Wrap To Zero'
 * '<S228>' : 'mcb_pmsm_foc_qep_f28379d/HW Interrupt/Code generation'
 * '<S229>' : 'mcb_pmsm_foc_qep_f28379d/HW Interrupt/Code generation/HWI_ADCB1_INT'
 * '<S230>' : 'mcb_pmsm_foc_qep_f28379d/HW Interrupt/Code generation/HWI_SCIA_RX_INT'
 * '<S231>' : 'mcb_pmsm_foc_qep_f28379d/HW Interrupt/Code generation/HWI_ADCB1_INT/ECSoC'
 * '<S232>' : 'mcb_pmsm_foc_qep_f28379d/HW Interrupt/Code generation/HWI_ADCB1_INT/ECSoC/ECSimCodegen'
 * '<S233>' : 'mcb_pmsm_foc_qep_f28379d/HW Interrupt/Code generation/HWI_SCIA_RX_INT/ECSoC'
 * '<S234>' : 'mcb_pmsm_foc_qep_f28379d/HW Interrupt/Code generation/HWI_SCIA_RX_INT/ECSoC/ECSimCodegen'
 * '<S235>' : 'mcb_pmsm_foc_qep_f28379d/Hardware Init/Variant Subsystem'
 * '<S236>' : 'mcb_pmsm_foc_qep_f28379d/Hardware Init/Variant Subsystem/Code Generation'
 * '<S237>' : 'mcb_pmsm_foc_qep_f28379d/Hardware Init/Variant Subsystem/Code Generation/Calculate ADC Offset '
 * '<S238>' : 'mcb_pmsm_foc_qep_f28379d/Hardware Init/Variant Subsystem/Code Generation/DRV Enable'
 * '<S239>' : 'mcb_pmsm_foc_qep_f28379d/Hardware Init/Variant Subsystem/Code Generation/Default ADC Offset'
 * '<S240>' : 'mcb_pmsm_foc_qep_f28379d/Hardware Init/Variant Subsystem/Code Generation/Calculate ADC Offset /For Iterator Subsystem'
 * '<S241>' : 'mcb_pmsm_foc_qep_f28379d/Hardware Init/Variant Subsystem/Code Generation/Calculate ADC Offset /If Action Subsystem'
 * '<S242>' : 'mcb_pmsm_foc_qep_f28379d/Hardware Init/Variant Subsystem/Code Generation/Calculate ADC Offset /If Action Subsystem1'
 * '<S243>' : 'mcb_pmsm_foc_qep_f28379d/Hardware Init/Variant Subsystem/Code Generation/Calculate ADC Offset /If Action Subsystem2'
 * '<S244>' : 'mcb_pmsm_foc_qep_f28379d/Hardware Init/Variant Subsystem/Code Generation/Calculate ADC Offset /If Action Subsystem3'
 * '<S245>' : 'mcb_pmsm_foc_qep_f28379d/Hardware Init/Variant Subsystem/Code Generation/Calculate ADC Offset /For Iterator Subsystem/If Action Subsystem'
 * '<S246>' : 'mcb_pmsm_foc_qep_f28379d/Hardware Init/Variant Subsystem/Code Generation/DRV Enable/ADC Gain setting'
 * '<S247>' : 'mcb_pmsm_foc_qep_f28379d/Heartbeat LED/Heartbeat LED'
 * '<S248>' : 'mcb_pmsm_foc_qep_f28379d/Heartbeat LED/Heartbeat LED/Code generation'
 * '<S249>' : 'mcb_pmsm_foc_qep_f28379d/Inverter and Motor - Plant Model/Codegeneration'
 * '<S250>' : 'mcb_pmsm_foc_qep_f28379d/Serial Receive/Data_Conditioning_Rx'
 * '<S251>' : 'mcb_pmsm_foc_qep_f28379d/Serial Receive/SCI_Rx'
 * '<S252>' : 'mcb_pmsm_foc_qep_f28379d/Serial Receive/unParse'
 * '<S253>' : 'mcb_pmsm_foc_qep_f28379d/Serial Receive/Data_Conditioning_Rx/Data_Type_Float'
 * '<S254>' : 'mcb_pmsm_foc_qep_f28379d/Serial Receive/SCI_Rx/Code Generation'
 * '<S255>' : 'mcb_pmsm_foc_qep_f28379d/Serial Receive/SCI_Rx/Code Generation/Data_Type_Float'
 * '<S256>' : 'mcb_pmsm_foc_qep_f28379d/Speed Control/PI_Controller_Speed'
 * '<S257>' : 'mcb_pmsm_foc_qep_f28379d/Speed Control/Speed_Ref_Selector'
 * '<S258>' : 'mcb_pmsm_foc_qep_f28379d/Speed Control/Subsystem'
 * '<S259>' : 'mcb_pmsm_foc_qep_f28379d/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset'
 * '<S260>' : 'mcb_pmsm_foc_qep_f28379d/Speed Control/PI_Controller_Speed/Zero_Cancellation'
 * '<S261>' : 'mcb_pmsm_foc_qep_f28379d/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/Anti-windup'
 * '<S262>' : 'mcb_pmsm_foc_qep_f28379d/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/D Gain'
 * '<S263>' : 'mcb_pmsm_foc_qep_f28379d/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/Filter'
 * '<S264>' : 'mcb_pmsm_foc_qep_f28379d/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/Filter ICs'
 * '<S265>' : 'mcb_pmsm_foc_qep_f28379d/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/I Gain'
 * '<S266>' : 'mcb_pmsm_foc_qep_f28379d/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/Ideal P Gain'
 * '<S267>' : 'mcb_pmsm_foc_qep_f28379d/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/Ideal P Gain Fdbk'
 * '<S268>' : 'mcb_pmsm_foc_qep_f28379d/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/Integrator'
 * '<S269>' : 'mcb_pmsm_foc_qep_f28379d/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/Integrator ICs'
 * '<S270>' : 'mcb_pmsm_foc_qep_f28379d/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/N Copy'
 * '<S271>' : 'mcb_pmsm_foc_qep_f28379d/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/N Gain'
 * '<S272>' : 'mcb_pmsm_foc_qep_f28379d/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/P Copy'
 * '<S273>' : 'mcb_pmsm_foc_qep_f28379d/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/Parallel P Gain'
 * '<S274>' : 'mcb_pmsm_foc_qep_f28379d/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/Reset Signal'
 * '<S275>' : 'mcb_pmsm_foc_qep_f28379d/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/Saturation'
 * '<S276>' : 'mcb_pmsm_foc_qep_f28379d/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/Saturation Fdbk'
 * '<S277>' : 'mcb_pmsm_foc_qep_f28379d/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/Sum'
 * '<S278>' : 'mcb_pmsm_foc_qep_f28379d/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/Sum Fdbk'
 * '<S279>' : 'mcb_pmsm_foc_qep_f28379d/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/Tracking Mode'
 * '<S280>' : 'mcb_pmsm_foc_qep_f28379d/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/Tracking Mode Sum'
 * '<S281>' : 'mcb_pmsm_foc_qep_f28379d/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/Tsamp - Integral'
 * '<S282>' : 'mcb_pmsm_foc_qep_f28379d/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/Tsamp - Ngain'
 * '<S283>' : 'mcb_pmsm_foc_qep_f28379d/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/postSat Signal'
 * '<S284>' : 'mcb_pmsm_foc_qep_f28379d/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/preSat Signal'
 * '<S285>' : 'mcb_pmsm_foc_qep_f28379d/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/Anti-windup/Disc. Clamping Parallel'
 * '<S286>' : 'mcb_pmsm_foc_qep_f28379d/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/Anti-windup/Disc. Clamping Parallel/Dead Zone'
 * '<S287>' : 'mcb_pmsm_foc_qep_f28379d/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/Anti-windup/Disc. Clamping Parallel/Dead Zone/Enabled'
 * '<S288>' : 'mcb_pmsm_foc_qep_f28379d/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/D Gain/Disabled'
 * '<S289>' : 'mcb_pmsm_foc_qep_f28379d/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/Filter/Disabled'
 * '<S290>' : 'mcb_pmsm_foc_qep_f28379d/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/Filter ICs/Disabled'
 * '<S291>' : 'mcb_pmsm_foc_qep_f28379d/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/I Gain/External Parameters'
 * '<S292>' : 'mcb_pmsm_foc_qep_f28379d/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/Ideal P Gain/Passthrough'
 * '<S293>' : 'mcb_pmsm_foc_qep_f28379d/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/Ideal P Gain Fdbk/Disabled'
 * '<S294>' : 'mcb_pmsm_foc_qep_f28379d/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/Integrator/Discrete'
 * '<S295>' : 'mcb_pmsm_foc_qep_f28379d/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/Integrator ICs/External IC'
 * '<S296>' : 'mcb_pmsm_foc_qep_f28379d/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/N Copy/Disabled wSignal Specification'
 * '<S297>' : 'mcb_pmsm_foc_qep_f28379d/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/N Gain/Disabled'
 * '<S298>' : 'mcb_pmsm_foc_qep_f28379d/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/P Copy/Disabled'
 * '<S299>' : 'mcb_pmsm_foc_qep_f28379d/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/Parallel P Gain/External Parameters'
 * '<S300>' : 'mcb_pmsm_foc_qep_f28379d/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/Reset Signal/External Reset'
 * '<S301>' : 'mcb_pmsm_foc_qep_f28379d/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/Saturation/Enabled'
 * '<S302>' : 'mcb_pmsm_foc_qep_f28379d/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/Saturation Fdbk/Disabled'
 * '<S303>' : 'mcb_pmsm_foc_qep_f28379d/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/Sum/Sum_PI'
 * '<S304>' : 'mcb_pmsm_foc_qep_f28379d/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/Sum Fdbk/Disabled'
 * '<S305>' : 'mcb_pmsm_foc_qep_f28379d/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/Tracking Mode/Disabled'
 * '<S306>' : 'mcb_pmsm_foc_qep_f28379d/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/Tracking Mode Sum/Passthrough'
 * '<S307>' : 'mcb_pmsm_foc_qep_f28379d/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/Tsamp - Integral/TsSignalSpecification'
 * '<S308>' : 'mcb_pmsm_foc_qep_f28379d/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/Tsamp - Ngain/Passthrough'
 * '<S309>' : 'mcb_pmsm_foc_qep_f28379d/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/postSat Signal/Forward_Path'
 * '<S310>' : 'mcb_pmsm_foc_qep_f28379d/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/preSat Signal/Forward_Path'
 * '<S311>' : 'mcb_pmsm_foc_qep_f28379d/Speed Control/PI_Controller_Speed/Zero_Cancellation/IIR Filter'
 * '<S312>' : 'mcb_pmsm_foc_qep_f28379d/Speed Control/PI_Controller_Speed/Zero_Cancellation/IIR Filter/Low-pass'
 * '<S313>' : 'mcb_pmsm_foc_qep_f28379d/Speed Control/PI_Controller_Speed/Zero_Cancellation/IIR Filter/Low-pass/IIR Low Pass Filter'
 * '<S314>' : 'mcb_pmsm_foc_qep_f28379d/Speed Control/Subsystem/Discrete PI Controller  with anti-windup & reset'
 * '<S315>' : 'mcb_pmsm_foc_qep_f28379d/Speed Control/Subsystem/Subsystem'
 * '<S316>' : 'mcb_pmsm_foc_qep_f28379d/Speed Control/Subsystem/Subsystem1'
 * '<S317>' : 'mcb_pmsm_foc_qep_f28379d/Speed Control/Subsystem/Subsystem2'
 * '<S318>' : 'mcb_pmsm_foc_qep_f28379d/Speed Control/Subsystem/Discrete PI Controller  with anti-windup & reset/Anti-windup'
 * '<S319>' : 'mcb_pmsm_foc_qep_f28379d/Speed Control/Subsystem/Discrete PI Controller  with anti-windup & reset/D Gain'
 * '<S320>' : 'mcb_pmsm_foc_qep_f28379d/Speed Control/Subsystem/Discrete PI Controller  with anti-windup & reset/Filter'
 * '<S321>' : 'mcb_pmsm_foc_qep_f28379d/Speed Control/Subsystem/Discrete PI Controller  with anti-windup & reset/Filter ICs'
 * '<S322>' : 'mcb_pmsm_foc_qep_f28379d/Speed Control/Subsystem/Discrete PI Controller  with anti-windup & reset/I Gain'
 * '<S323>' : 'mcb_pmsm_foc_qep_f28379d/Speed Control/Subsystem/Discrete PI Controller  with anti-windup & reset/Ideal P Gain'
 * '<S324>' : 'mcb_pmsm_foc_qep_f28379d/Speed Control/Subsystem/Discrete PI Controller  with anti-windup & reset/Ideal P Gain Fdbk'
 * '<S325>' : 'mcb_pmsm_foc_qep_f28379d/Speed Control/Subsystem/Discrete PI Controller  with anti-windup & reset/Integrator'
 * '<S326>' : 'mcb_pmsm_foc_qep_f28379d/Speed Control/Subsystem/Discrete PI Controller  with anti-windup & reset/Integrator ICs'
 * '<S327>' : 'mcb_pmsm_foc_qep_f28379d/Speed Control/Subsystem/Discrete PI Controller  with anti-windup & reset/N Copy'
 * '<S328>' : 'mcb_pmsm_foc_qep_f28379d/Speed Control/Subsystem/Discrete PI Controller  with anti-windup & reset/N Gain'
 * '<S329>' : 'mcb_pmsm_foc_qep_f28379d/Speed Control/Subsystem/Discrete PI Controller  with anti-windup & reset/P Copy'
 * '<S330>' : 'mcb_pmsm_foc_qep_f28379d/Speed Control/Subsystem/Discrete PI Controller  with anti-windup & reset/Parallel P Gain'
 * '<S331>' : 'mcb_pmsm_foc_qep_f28379d/Speed Control/Subsystem/Discrete PI Controller  with anti-windup & reset/Reset Signal'
 * '<S332>' : 'mcb_pmsm_foc_qep_f28379d/Speed Control/Subsystem/Discrete PI Controller  with anti-windup & reset/Saturation'
 * '<S333>' : 'mcb_pmsm_foc_qep_f28379d/Speed Control/Subsystem/Discrete PI Controller  with anti-windup & reset/Saturation Fdbk'
 * '<S334>' : 'mcb_pmsm_foc_qep_f28379d/Speed Control/Subsystem/Discrete PI Controller  with anti-windup & reset/Sum'
 * '<S335>' : 'mcb_pmsm_foc_qep_f28379d/Speed Control/Subsystem/Discrete PI Controller  with anti-windup & reset/Sum Fdbk'
 * '<S336>' : 'mcb_pmsm_foc_qep_f28379d/Speed Control/Subsystem/Discrete PI Controller  with anti-windup & reset/Tracking Mode'
 * '<S337>' : 'mcb_pmsm_foc_qep_f28379d/Speed Control/Subsystem/Discrete PI Controller  with anti-windup & reset/Tracking Mode Sum'
 * '<S338>' : 'mcb_pmsm_foc_qep_f28379d/Speed Control/Subsystem/Discrete PI Controller  with anti-windup & reset/Tsamp - Integral'
 * '<S339>' : 'mcb_pmsm_foc_qep_f28379d/Speed Control/Subsystem/Discrete PI Controller  with anti-windup & reset/Tsamp - Ngain'
 * '<S340>' : 'mcb_pmsm_foc_qep_f28379d/Speed Control/Subsystem/Discrete PI Controller  with anti-windup & reset/postSat Signal'
 * '<S341>' : 'mcb_pmsm_foc_qep_f28379d/Speed Control/Subsystem/Discrete PI Controller  with anti-windup & reset/preSat Signal'
 * '<S342>' : 'mcb_pmsm_foc_qep_f28379d/Speed Control/Subsystem/Discrete PI Controller  with anti-windup & reset/Anti-windup/Disc. Clamping Parallel'
 * '<S343>' : 'mcb_pmsm_foc_qep_f28379d/Speed Control/Subsystem/Discrete PI Controller  with anti-windup & reset/Anti-windup/Disc. Clamping Parallel/Dead Zone'
 * '<S344>' : 'mcb_pmsm_foc_qep_f28379d/Speed Control/Subsystem/Discrete PI Controller  with anti-windup & reset/Anti-windup/Disc. Clamping Parallel/Dead Zone/Enabled'
 * '<S345>' : 'mcb_pmsm_foc_qep_f28379d/Speed Control/Subsystem/Discrete PI Controller  with anti-windup & reset/D Gain/Disabled'
 * '<S346>' : 'mcb_pmsm_foc_qep_f28379d/Speed Control/Subsystem/Discrete PI Controller  with anti-windup & reset/Filter/Disabled'
 * '<S347>' : 'mcb_pmsm_foc_qep_f28379d/Speed Control/Subsystem/Discrete PI Controller  with anti-windup & reset/Filter ICs/Disabled'
 * '<S348>' : 'mcb_pmsm_foc_qep_f28379d/Speed Control/Subsystem/Discrete PI Controller  with anti-windup & reset/I Gain/External Parameters'
 * '<S349>' : 'mcb_pmsm_foc_qep_f28379d/Speed Control/Subsystem/Discrete PI Controller  with anti-windup & reset/Ideal P Gain/Passthrough'
 * '<S350>' : 'mcb_pmsm_foc_qep_f28379d/Speed Control/Subsystem/Discrete PI Controller  with anti-windup & reset/Ideal P Gain Fdbk/Disabled'
 * '<S351>' : 'mcb_pmsm_foc_qep_f28379d/Speed Control/Subsystem/Discrete PI Controller  with anti-windup & reset/Integrator/Discrete'
 * '<S352>' : 'mcb_pmsm_foc_qep_f28379d/Speed Control/Subsystem/Discrete PI Controller  with anti-windup & reset/Integrator ICs/External IC'
 * '<S353>' : 'mcb_pmsm_foc_qep_f28379d/Speed Control/Subsystem/Discrete PI Controller  with anti-windup & reset/N Copy/Disabled wSignal Specification'
 * '<S354>' : 'mcb_pmsm_foc_qep_f28379d/Speed Control/Subsystem/Discrete PI Controller  with anti-windup & reset/N Gain/Disabled'
 * '<S355>' : 'mcb_pmsm_foc_qep_f28379d/Speed Control/Subsystem/Discrete PI Controller  with anti-windup & reset/P Copy/Disabled'
 * '<S356>' : 'mcb_pmsm_foc_qep_f28379d/Speed Control/Subsystem/Discrete PI Controller  with anti-windup & reset/Parallel P Gain/External Parameters'
 * '<S357>' : 'mcb_pmsm_foc_qep_f28379d/Speed Control/Subsystem/Discrete PI Controller  with anti-windup & reset/Reset Signal/External Reset'
 * '<S358>' : 'mcb_pmsm_foc_qep_f28379d/Speed Control/Subsystem/Discrete PI Controller  with anti-windup & reset/Saturation/Enabled'
 * '<S359>' : 'mcb_pmsm_foc_qep_f28379d/Speed Control/Subsystem/Discrete PI Controller  with anti-windup & reset/Saturation Fdbk/Disabled'
 * '<S360>' : 'mcb_pmsm_foc_qep_f28379d/Speed Control/Subsystem/Discrete PI Controller  with anti-windup & reset/Sum/Sum_PI'
 * '<S361>' : 'mcb_pmsm_foc_qep_f28379d/Speed Control/Subsystem/Discrete PI Controller  with anti-windup & reset/Sum Fdbk/Disabled'
 * '<S362>' : 'mcb_pmsm_foc_qep_f28379d/Speed Control/Subsystem/Discrete PI Controller  with anti-windup & reset/Tracking Mode/Disabled'
 * '<S363>' : 'mcb_pmsm_foc_qep_f28379d/Speed Control/Subsystem/Discrete PI Controller  with anti-windup & reset/Tracking Mode Sum/Passthrough'
 * '<S364>' : 'mcb_pmsm_foc_qep_f28379d/Speed Control/Subsystem/Discrete PI Controller  with anti-windup & reset/Tsamp - Integral/TsSignalSpecification'
 * '<S365>' : 'mcb_pmsm_foc_qep_f28379d/Speed Control/Subsystem/Discrete PI Controller  with anti-windup & reset/Tsamp - Ngain/Passthrough'
 * '<S366>' : 'mcb_pmsm_foc_qep_f28379d/Speed Control/Subsystem/Discrete PI Controller  with anti-windup & reset/postSat Signal/Forward_Path'
 * '<S367>' : 'mcb_pmsm_foc_qep_f28379d/Speed Control/Subsystem/Discrete PI Controller  with anti-windup & reset/preSat Signal/Forward_Path'
 */
#endif                              /* RTW_HEADER_mcb_pmsm_foc_qep_f28379d_h_ */

/*
 * File trailer for generated code.
 *
 * [EOF]
 */
