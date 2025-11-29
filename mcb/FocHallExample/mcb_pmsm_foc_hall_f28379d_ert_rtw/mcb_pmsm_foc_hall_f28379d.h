/*
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * File: mcb_pmsm_foc_hall_f28379d.h
 *
 * Code generated for Simulink model 'mcb_pmsm_foc_hall_f28379d'.
 *
 * Model version                  : 29
 * Simulink Coder version         : 23.2 (R2023b) 01-Aug-2023
 * C/C++ source code generated on : Thu Nov 20 17:46:49 2025
 *
 * Target selection: ert.tlc
 * Embedded hardware selection: Texas Instruments->C2000
 * Code generation objectives: Unspecified
 * Validation result: Not run
 */

#ifndef RTW_HEADER_mcb_pmsm_foc_hall_f28379d_h_
#define RTW_HEADER_mcb_pmsm_foc_hall_f28379d_h_
#ifndef mcb_pmsm_foc_hall_f28379d_COMMON_INCLUDES_
#define mcb_pmsm_foc_hall_f28379d_COMMON_INCLUDES_
#include "rtwtypes.h"
#include "c2000BoardSupport.h"
#include "MW_f2837xD_includes.h"
#include "IQmathLib.h"
#include "DSP28xx_SciUtil.h"
#include "MW_SPI.h"
#endif                          /* mcb_pmsm_foc_hall_f28379d_COMMON_INCLUDES_ */

#include "MW_c2000ISR.h"
#include "mcb_pmsm_foc_hall_f28379d_types.h"
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
extern void init_CAP_GPIO(void);
extern void init_CAP1(void);
extern void init_CAP2(void);
extern void init_CAP3(void);
extern void config_ePWMSyncSource(void);
extern void config_ePWM_GPIO (void);
extern void config_ePWM_TBSync (void);
extern void config_ePWM_XBAR(void);
extern void configureIXbar(void);

/* Block signals for system '<S146>/If Action Subsystem' */
typedef struct {
  real32_T Convert_back;               /* '<S148>/Convert_back' */
  int16_T Convert_uint16;              /* '<S148>/Convert_uint16' */
} rtB_IfActionSubsystem_mcb_pmsm_;

/* Block signals for system '<S146>/If Action Subsystem1' */
typedef struct {
  real32_T Convert_back;               /* '<S149>/Convert_back' */
  int16_T Convert_uint16;              /* '<S149>/Convert_uint16' */
} rtB_IfActionSubsystem1_mcb_pmsm;

/* Block signals for system '<S252>/Valid Halls' */
typedef struct {
  uint16_T Merge;                      /* '<S254>/Merge' */
  uint16_T Merge1;                     /* '<S254>/Merge1' */
  uint16_T Merge3;                     /* '<S254>/Merge3' */
  int16_T Merge2;                      /* '<S254>/Merge2' */
  boolean_T RelationalOperator;        /* '<S254>/Relational Operator' */
} rtB_ValidHalls_mcb_pmsm_foc_hal;

/* Block signals for system '<S323>/SPI Master Transfer2' */
typedef struct {
  uint16_T SPIMasterTransfer2;         /* '<S323>/SPI Master Transfer2' */
} rtB_SPIMasterTransfer2_mcb_pmsm;

/* Block states (default storage) for system '<S323>/SPI Master Transfer2' */
typedef struct {
  codertarget_tic2000_blocks_SPIM obj; /* '<S323>/SPI Master Transfer2' */
  boolean_T objisempty;                /* '<S323>/SPI Master Transfer2' */
} rtDW_SPIMasterTransfer2_mcb_pms;

/* Block signals for system '<Root>/Speed Control' */
typedef struct {
  real32_T Id_ref;                     /* '<S11>/Id_ref' */
  real32_T Switch;                     /* '<S334>/Switch' */
  real32_T Product;                    /* '<S389>/Product' */
  real32_T UnitDelay;                  /* '<S389>/Unit Delay' */
  real32_T Product1;                   /* '<S389>/Product1' */
  real32_T Add1;                       /* '<S389>/Add1' */
  real32_T Sum;                        /* '<S333>/Sum' */
  real32_T PProdOut;                   /* '<S375>/PProd Out' */
  real32_T Ki2;                        /* '<S333>/Ki2' */
  real32_T Integrator;                 /* '<S370>/Integrator' */
  real32_T Sum_i;                      /* '<S379>/Sum' */
  real32_T DeadZone;                   /* '<S363>/DeadZone' */
  real32_T IProdOut;                   /* '<S367>/IProd Out' */
  real32_T Switch_b;                   /* '<S361>/Switch' */
  real32_T Saturation;                 /* '<S377>/Saturation' */
  int16_T Switch1;                     /* '<S361>/Switch1' */
  int16_T Switch2;                     /* '<S361>/Switch2' */
  boolean_T DataStoreRead2;            /* '<S333>/Data Store Read2' */
  boolean_T DataStoreRead1;            /* '<S334>/Data Store Read1' */
  boolean_T LogicalOperator;           /* '<S333>/Logical Operator' */
  boolean_T RelationalOperator;        /* '<S361>/Relational Operator' */
  boolean_T fixforDTpropagationissue;/* '<S361>/fix for DT propagation issue' */
  boolean_T fixforDTpropagationissue1;
                                    /* '<S361>/fix for DT propagation issue1' */
  boolean_T Equal1;                    /* '<S361>/Equal1' */
  boolean_T AND3;                      /* '<S361>/AND3' */
} rtB_SpeedControl_mcb_pmsm_foc_h;

/* Block states (default storage) for system '<Root>/Speed Control' */
typedef struct {
  real32_T UnitDelay_DSTATE;           /* '<S389>/Unit Delay' */
  real32_T Integrator_DSTATE;          /* '<S370>/Integrator' */
  int16_T Integrator_PrevResetState;   /* '<S370>/Integrator' */
} rtDW_SpeedControl_mcb_pmsm_foc_;

/* Block signals (default storage) */
typedef struct {
  uint32_T DataStoreRead;              /* '<S6>/Data Store Read' */
  uint32_T ReadGPIODATregister;        /* '<S310>/Read GPIO DAT register' */
  uint32_T Hall_C;                     /* '<S310>/Hall_C' */
  uint32_T ShiftArithmetic;            /* '<S310>/Shift Arithmetic' */
  uint32_T Hall_B;                     /* '<S310>/Hall_B' */
  uint32_T ShiftArithmetic1;           /* '<S310>/Shift Arithmetic1' */
  uint32_T Hall_A;                     /* '<S310>/Hall_A' */
  uint32_T ShiftArithmetic2;           /* '<S310>/Shift Arithmetic2' */
  uint32_T BitwiseOperator2;           /* '<S310>/Bitwise Operator2' */
  uint32_T eCAP[2];                    /* '<S311>/eCAP' */
  uint32_T Switch;                     /* '<S6>/Switch' */
  uint32_T DataStoreRead_o;            /* '<S5>/Data Store Read' */
  uint32_T ReadGPIODATregister_n;      /* '<S288>/Read GPIO DAT register' */
  uint32_T Hall_C_f;                   /* '<S288>/Hall_C' */
  uint32_T ShiftArithmetic_b;          /* '<S288>/Shift Arithmetic' */
  uint32_T Hall_B_m;                   /* '<S288>/Hall_B' */
  uint32_T ShiftArithmetic1_j;         /* '<S288>/Shift Arithmetic1' */
  uint32_T Hall_A_e;                   /* '<S288>/Hall_A' */
  uint32_T ShiftArithmetic2_k;         /* '<S288>/Shift Arithmetic2' */
  uint32_T BitwiseOperator2_m;         /* '<S288>/Bitwise Operator2' */
  uint32_T eCAP_c[2];                  /* '<S289>/eCAP' */
  uint32_T Switch_l;                   /* '<S5>/Switch' */
  uint32_T DataStoreRead_p;            /* '<S4>/Data Store Read' */
  uint32_T ReadGPIODATregister_g;      /* '<S266>/Read GPIO DAT register' */
  uint32_T Hall_C_n;                   /* '<S266>/Hall_C' */
  uint32_T ShiftArithmetic_e;          /* '<S266>/Shift Arithmetic' */
  uint32_T Hall_B_i;                   /* '<S266>/Hall_B' */
  uint32_T ShiftArithmetic1_jb;        /* '<S266>/Shift Arithmetic1' */
  uint32_T Hall_A_k;                   /* '<S266>/Hall_A' */
  uint32_T ShiftArithmetic2_i;         /* '<S266>/Shift Arithmetic2' */
  uint32_T BitwiseOperator2_n;         /* '<S266>/Bitwise Operator2' */
  uint32_T eCAP_l[2];                  /* '<S267>/eCAP' */
  uint32_T Switch_e;                   /* '<S4>/Switch' */
  uint32_T speedCountDelay;            /* '<S183>/speedCountDelay' */
  uint32_T Sum[4];                     /* '<S153>/Sum' */
  uint32_T Sum_k[4];                   /* '<S143>/Sum' */
  uint32_T Input;                      /* '<S174>/Input' */
  uint32_T Max;                        /* '<S187>/Max' */
  uint32_T UnitDelay;                  /* '<S177>/Unit Delay' */
  uint32_T Merge;                      /* '<S177>/Merge' */
  uint32_T DataStoreRead2;             /* '<S170>/Data Store Read2' */
  uint32_T ReadGPIODATregister_p;      /* '<S182>/Read GPIO DAT register' */
  uint32_T Hall_C_e;                   /* '<S182>/Hall_C' */
  uint32_T ShiftArithmetic_l;          /* '<S182>/Shift Arithmetic' */
  uint32_T Hall_B_e;                   /* '<S182>/Hall_B' */
  uint32_T ShiftArithmetic1_c;         /* '<S182>/Shift Arithmetic1' */
  uint32_T Hall_A_d;                   /* '<S182>/Hall_A' */
  uint32_T ShiftArithmetic2_kn;        /* '<S182>/Shift Arithmetic2' */
  uint32_T BitwiseOperator2_g;         /* '<S182>/Bitwise Operator2' */
  uint32_T MemoryCopy;                 /* '<S176>/Memory Copy' */
  uint32_T MemoryCopy1;                /* '<S176>/Memory Copy1' */
  uint32_T MemoryCopy2;                /* '<S176>/Memory Copy2' */
  uint32_T Min;                        /* '<S176>/Min' */
  uint32_T ReadGPIODATregister_nt;     /* '<S178>/Read GPIO DAT register' */
  uint32_T Hall_C_fc;                  /* '<S178>/Hall_C' */
  uint32_T ShiftArithmetic_p;          /* '<S178>/Shift Arithmetic' */
  uint32_T Hall_B_f;                   /* '<S178>/Hall_B' */
  uint32_T ShiftArithmetic1_h;         /* '<S178>/Shift Arithmetic1' */
  uint32_T Hall_A_c;                   /* '<S178>/Hall_A' */
  uint32_T ShiftArithmetic2_e;         /* '<S178>/Shift Arithmetic2' */
  uint32_T BitwiseOperator2_p;         /* '<S178>/Bitwise Operator2' */
  real32_T RT1;                        /* '<Root>/RT1' */
  real32_T RT6;                        /* '<Root>/RT6' */
  real32_T RT7;                        /* '<Root>/RT7' */
  real32_T RT2[2];                     /* '<Root>/RT2' */
  real32_T SCIReceive[2];              /* '<S332>/SCI Receive' */
  real32_T Merge_d;                    /* '<S172>/Merge' */
  real32_T Merge1;                     /* '<S172>/Merge1' */
  real32_T Switch_h;                   /* '<S219>/Switch' */
  real32_T Merge_m;                    /* '<S220>/Merge' */
  real32_T Floor;                      /* '<S221>/Floor' */
  real32_T Add;                        /* '<S221>/Add' */
  real32_T GetADCVoltage[2];           /* '<S227>/Get ADC Voltage' */
  real32_T GetCurrents[2];             /* '<S227>/Get Currents' */
  real32_T PU_Conversion[2];           /* '<S227>/PU_Conversion' */
  real32_T Merge_mm;                   /* '<S155>/Merge' */
  real32_T indexing;                   /* '<S153>/indexing' */
  real32_T Lookup[4];                  /* '<S153>/Lookup' */
  real32_T Sum3;                       /* '<S154>/Sum3' */
  real32_T DataTypeConversion1;        /* '<S153>/Data Type Conversion1' */
  real32_T Sum2;                       /* '<S153>/Sum2' */
  real32_T Product;                    /* '<S154>/Product' */
  real32_T Sum4;                       /* '<S154>/Sum4' */
  real32_T Sum5;                       /* '<S154>/Sum5' */
  real32_T Product1;                   /* '<S154>/Product1' */
  real32_T Sum6;                       /* '<S154>/Sum6' */
  real32_T Sum_g;                      /* '<S26>/Sum' */
  real32_T PProdOut;                   /* '<S131>/PProd Out' */
  real32_T Kp1;                        /* '<S26>/Kp1' */
  real32_T Integrator;                 /* '<S126>/Integrator' */
  real32_T Sum_m;                      /* '<S135>/Sum' */
  real32_T Saturation;                 /* '<S133>/Saturation' */
  real32_T Sum_b;                      /* '<S25>/Sum' */
  real32_T PProdOut_b;                 /* '<S80>/PProd Out' */
  real32_T Ki1;                        /* '<S25>/Ki1' */
  real32_T Integrator_o;               /* '<S75>/Integrator' */
  real32_T Sum_h;                      /* '<S84>/Sum' */
  real32_T Saturation_j;               /* '<S82>/Saturation' */
  real32_T Switch_j;                   /* '<S29>/Switch' */
  real32_T Product_b;                  /* '<S29>/Product' */
  real32_T Product_e;                  /* '<S30>/Product' */
  real32_T Product1_b;                 /* '<S30>/Product1' */
  real32_T Sum1;                       /* '<S30>/Sum1' */
  real32_T Merge_do[2];                /* '<S24>/Merge' */
  real32_T DeadZone;                   /* '<S68>/DeadZone' */
  real32_T IProdOut;                   /* '<S72>/IProd Out' */
  real32_T Switch_b;                   /* '<S66>/Switch' */
  real32_T DeadZone_g;                 /* '<S119>/DeadZone' */
  real32_T IProdOut_h;                 /* '<S123>/IProd Out' */
  real32_T Switch_ls;                  /* '<S117>/Switch' */
  real32_T Merge_p;                    /* '<S146>/Merge' */
  real32_T indexing_i;                 /* '<S143>/indexing' */
  real32_T DataTypeConversion1_f;      /* '<S143>/Data Type Conversion1' */
  real32_T Lookup_f[4];                /* '<S143>/Lookup' */
  real32_T Sum3_c;                     /* '<S145>/Sum3' */
  real32_T Sum2_p;                     /* '<S143>/Sum2' */
  real32_T Product_d;                  /* '<S145>/Product' */
  real32_T Sum5_k;                     /* '<S145>/Sum5' */
  real32_T Product1_p;                 /* '<S145>/Product1' */
  real32_T Sum4_j;                     /* '<S145>/Sum4' */
  real32_T Sum6_e;                     /* '<S145>/Sum6' */
  real32_T DataTypeConversion;         /* '<S15>/Data Type Conversion' */
  real32_T Switch_f;                   /* '<S228>/Switch' */
  real32_T Speed_PU;                   /* '<S2>/Input Scaling' */
  real32_T sqrt3_by_two;               /* '<S166>/sqrt3_by_two' */
  real32_T one_by_two;                 /* '<S166>/one_by_two' */
  real32_T add_c;                      /* '<S166>/add_c' */
  real32_T add_b;                      /* '<S166>/add_b' */
  real32_T Min_a;                      /* '<S163>/Min' */
  real32_T Max_h;                      /* '<S163>/Max' */
  real32_T Add_i;                      /* '<S163>/Add' */
  real32_T one_by_two_b;               /* '<S163>/one_by_two' */
  real32_T Add3;                       /* '<S162>/Add3' */
  real32_T Add2;                       /* '<S162>/Add2' */
  real32_T Add1;                       /* '<S162>/Add1' */
  real32_T Gain[3];                    /* '<S162>/Gain' */
  real32_T Gain_m[3];                  /* '<S15>/Gain' */
  real32_T PWM_Duty_Cycles[3];         /* '<S15>/Sum' */
  real32_T currentSpeedData;           /* '<S186>/currentSpeedData' */
  real32_T Divide;                     /* '<S186>/Divide' */
  real32_T SpeedGain;                  /* '<S186>/SpeedGain' */
  real32_T Merge1_l;                   /* '<S199>/Merge1' */
  real32_T Saturation_k;               /* '<S199>/Saturation' */
  real32_T Merge_c;                    /* '<S199>/Merge' */
  real32_T countData;                  /* '<S202>/countData' */
  real32_T currentSpeedData_k;         /* '<S202>/currentSpeedData' */
  real32_T Divide_f;                   /* '<S202>/Divide' */
  real32_T countData_o;                /* '<S203>/countData' */
  real32_T previousSpeedData;          /* '<S203>/previousSpeedData' */
  real32_T Divide_i;                   /* '<S203>/Divide' */
  real32_T currentSpeedData_o;         /* '<S203>/currentSpeedData' */
  real32_T Divide1;                    /* '<S203>/Divide1' */
  real32_T Sum_n;                      /* '<S203>/Sum' */
  real32_T Gain1;                      /* '<S203>/Gain1' */
  real32_T Sum1_i;                     /* '<S203>/Sum1' */
  real32_T Product_i;                  /* '<S203>/Product' */
  real32_T Merge1_la;                  /* '<S200>/Merge1' */
  real32_T Merge1_d;                   /* '<S201>/Merge1' */
  real32_T acos_e;                     /* '<S152>/acos' */
  real32_T bsin;                       /* '<S152>/bsin' */
  real32_T sum_Ds;                     /* '<S152>/sum_Ds' */
  real32_T bcos;                       /* '<S152>/bcos' */
  real32_T asin_j;                     /* '<S152>/asin' */
  real32_T sum_Qs;                     /* '<S152>/sum_Qs' */
  real32_T Switch_fd[2];               /* '<S159>/Switch' */
  real32_T algDD_o1;
  real32_T algDD_o2;
  real32_T qcos;                       /* '<S144>/qcos' */
  real32_T dsin;                       /* '<S144>/dsin' */
  real32_T sum_beta;                   /* '<S144>/sum_beta' */
  real32_T dcos;                       /* '<S144>/dcos' */
  real32_T qsin;                       /* '<S144>/qsin' */
  real32_T sum_alpha;                  /* '<S144>/sum_alpha' */
  real32_T Switch_k[2];                /* '<S150>/Switch' */
  real32_T algDD_o1_c;
  real32_T algDD_o2_e;
  real32_T Product_ie[2];              /* '<S31>/Product' */
  real32_T SquareRoot;                 /* '<S31>/Square Root' */
  real32_T Switch_o;                   /* '<S31>/Switch' */
  real32_T Reciprocal;                 /* '<S31>/Reciprocal' */
  real32_T Switch_hp[2];               /* '<S28>/Switch' */
  real32_T Switch2;                    /* '<S38>/Switch2' */
  real32_T Product_a;                  /* '<S37>/Product' */
  real32_T Sum_nl;                     /* '<S37>/Sum' */
  real32_T Product2;                   /* '<S37>/Product2' */
  real32_T Merge_me;                   /* '<S37>/Merge' */
  real32_T Gain_e;                     /* '<S37>/Gain' */
  real32_T Switch_c;                   /* '<S38>/Switch' */
  real32_T Switch1;                    /* '<S39>/Switch1' */
  real32_T Sqrt;                       /* '<S39>/Sqrt' */
  real32_T Gain_c;                     /* '<S39>/Gain' */
  real32_T a_plus_2b;                  /* '<S23>/a_plus_2b' */
  real32_T one_by_sqrt3;               /* '<S23>/one_by_sqrt3' */
  real32_T algDD_o1_a;
  real32_T algDD_o2_n;
  int32_T DataTypeConversion_f[2];     /* '<S169>/Data Type Conversion' */
  int32_T Add_f[2];                    /* '<S169>/Add' */
  uint16_T Divide_ir;                  /* '<S314>/Divide' */
  uint16_T Divide1_e;                  /* '<S314>/Divide1' */
  uint16_T ForIterator;                /* '<S317>/For Iterator' */
  uint16_T ADC_A_IN0;                  /* '<S317>/ADC_A_IN0' */
  uint16_T ADC_B_IN0;                  /* '<S317>/ADC_B_IN0' */
  uint16_T Memory;                     /* '<S322>/Memory' */
  uint16_T Sum_i;                      /* '<S322>/Sum' */
  uint16_T Memory1;                    /* '<S322>/Memory1' */
  uint16_T Sum1_j;                     /* '<S322>/Sum1' */
  uint16_T DataTypeConversion2;        /* '<S330>/Data Type Conversion2' */
  uint16_T BitwiseOperator;            /* '<S329>/Bitwise Operator' */
  uint16_T BitwiseOperator1;           /* '<S329>/Bitwise Operator1' */
  uint16_T ShiftArithmetic1_d;         /* '<S329>/Shift Arithmetic1' */
  uint16_T DataTypeConversion1_o;      /* '<S291>/Data Type Conversion1' */
  uint16_T DataTypeConversion2_p;      /* '<S291>/Data Type Conversion2' */
  uint16_T DataTypeConversion_n;       /* '<S296>/Data Type Conversion' */
  uint16_T Merge_pc;                   /* '<S296>/Merge' */
  uint16_T DataTypeConversion1_n;      /* '<S269>/Data Type Conversion1' */
  uint16_T DataTypeConversion2_g;      /* '<S269>/Data Type Conversion2' */
  uint16_T DataTypeConversion_j;       /* '<S274>/Data Type Conversion' */
  uint16_T Merge_j;                    /* '<S274>/Merge' */
  uint16_T DataTypeConversion1_d;      /* '<S247>/Data Type Conversion1' */
  uint16_T DataTypeConversion2_c;      /* '<S247>/Data Type Conversion2' */
  uint16_T DataTypeConversion_p;       /* '<S252>/Data Type Conversion' */
  uint16_T Merge_k;                    /* '<S252>/Merge' */
  uint16_T Switch_a;                   /* '<S172>/Switch' */
  uint16_T Switch_m;                   /* '<S183>/Switch' */
  uint16_T DelayOneStep;               /* '<S184>/Delay One Step' */
  uint16_T watchdogcheck;              /* '<S187>/watchdog check' */
  uint16_T Sum_m3;                     /* '<S184>/Sum' */
  uint16_T DataStoreRead_k;            /* '<S169>/Data Store Read' */
  uint16_T DataStoreRead1;             /* '<S169>/Data Store Read1' */
  uint16_T ADC_C_IN2;                  /* '<S229>/ADC_C_IN2' */
  uint16_T ADC_B_IN2;                  /* '<S229>/ADC_B_IN2' */
  uint16_T Switch1_o;                  /* '<S29>/Switch1' */
  uint16_T DataTypeConversion_m;       /* '<S155>/Data Type Conversion' */
  uint16_T Get_Integer;                /* '<S153>/Get_Integer' */
  uint16_T DataTypeConversion_e;       /* '<S146>/Data Type Conversion' */
  uint16_T Get_Integer_f;              /* '<S143>/Get_Integer' */
  uint16_T Switch1_f[3];               /* '<S228>/Switch1' */
  uint16_T Scale_to_PWM_Counter_PRD[3];/* '<S228>/Scale_to_PWM_Counter_PRD' */
  uint16_T speedcheck;                 /* '<S187>/speed check' */
  uint16_T DataStoreRead5;             /* '<S170>/Data Store Read5' */
  uint16_T DataStoreRead4;             /* '<S170>/Data Store Read4' */
  uint16_T DataTypeConversion_jg;      /* '<S27>/Data Type Conversion' */
  uint16_T DataTypeConversion_nl;      /* '<S37>/Data Type Conversion' */
  int16_T DataStoreRead1_k;            /* '<S6>/Data Store Read1' */
  int16_T Merge1_k;                    /* '<S296>/Merge1' */
  int16_T DataStoreRead1_kl;           /* '<S5>/Data Store Read1' */
  int16_T Merge1_a;                    /* '<S274>/Merge1' */
  int16_T DataStoreRead1_o;            /* '<S4>/Data Store Read1' */
  int16_T Merge1_kl;                   /* '<S252>/Merge1' */
  int16_T DataStoreRead3;              /* '<S170>/Data Store Read3' */
  uint16_T Compare;                    /* '<S179>/Compare' */
  int16_T Switch1_i;                   /* '<S66>/Switch1' */
  int16_T Switch2_a;                   /* '<S66>/Switch2' */
  int16_T Switch1_j;                   /* '<S117>/Switch1' */
  int16_T Switch2_b;                   /* '<S117>/Switch2' */
  boolean_T Switch_bt;                 /* '<S315>/Switch' */
  boolean_T NOT;                       /* '<S313>/NOT' */
  boolean_T DataTypeConversion3;       /* '<S329>/Data Type Conversion3' */
  boolean_T Merge3;                    /* '<S296>/Merge3' */
  boolean_T Merge_pt;                  /* '<S290>/Merge' */
  boolean_T Merge3_o;                  /* '<S274>/Merge3' */
  boolean_T Merge_f;                   /* '<S268>/Merge' */
  boolean_T Merge3_m;                  /* '<S252>/Merge3' */
  boolean_T Merge_n;                   /* '<S246>/Merge' */
  boolean_T Compare_e;                 /* '<S171>/Compare' */
  boolean_T DataTypeConversion4;       /* '<S172>/Data Type Conversion4' */
  boolean_T DataTypeConversion_nh;     /* '<S183>/Data Type Conversion' */
  boolean_T validityDelay;             /* '<S183>/validityDelay' */
  boolean_T DelayOneStep1;             /* '<S184>/Delay One Step1' */
  boolean_T OR;                        /* '<S184>/OR' */
  boolean_T Compare_n;                 /* '<S188>/Compare' */
  boolean_T Compare_d;                 /* '<S156>/Compare' */
  boolean_T DataStoreRead1_b;          /* '<S26>/Data Store Read1' */
  boolean_T LogicalOperator;           /* '<S26>/Logical Operator' */
  boolean_T DataStoreRead1_g;          /* '<S25>/Data Store Read1' */
  boolean_T LogicalOperator_j;         /* '<S25>/Logical Operator' */
  boolean_T RelationalOperator;        /* '<S66>/Relational Operator' */
  boolean_T fixforDTpropagationissue; /* '<S66>/fix for DT propagation issue' */
  boolean_T fixforDTpropagationissue1;
                                     /* '<S66>/fix for DT propagation issue1' */
  boolean_T Equal1;                    /* '<S66>/Equal1' */
  boolean_T AND3;                      /* '<S66>/AND3' */
  boolean_T RelationalOperator_m;      /* '<S117>/Relational Operator' */
  boolean_T fixforDTpropagationissue_b;
                                     /* '<S117>/fix for DT propagation issue' */
  boolean_T fixforDTpropagationissue1_h;
                                    /* '<S117>/fix for DT propagation issue1' */
  boolean_T Equal1_d;                  /* '<S117>/Equal1' */
  boolean_T AND3_f;                    /* '<S117>/AND3' */
  boolean_T Compare_nf;                /* '<S147>/Compare' */
  boolean_T Enable;                    /* '<S15>/Enable' */
  boolean_T LogicalOperator_a;         /* '<S183>/Logical Operator' */
  boolean_T RelationalOperator_k;      /* '<S177>/Relational Operator' */
  boolean_T NOT_b;                     /* '<S177>/NOT' */
  boolean_T RelationalOperator_h;      /* '<S27>/Relational Operator' */
  boolean_T Compare_h;                 /* '<S33>/Compare' */
  boolean_T Compare_nfz;               /* '<S34>/Compare' */
  boolean_T LowerRelop1;               /* '<S38>/LowerRelop1' */
  boolean_T RelationalOperator_i;      /* '<S37>/Relational Operator' */
  boolean_T UpperRelop;                /* '<S38>/UpperRelop' */
  rtB_SpeedControl_mcb_pmsm_foc_h SpeedControl;/* '<Root>/Speed Control' */
  rtB_SPIMasterTransfer2_mcb_pmsm SPIMasterTransfer3;/* '<S323>/SPI Master Transfer2' */
  rtB_SPIMasterTransfer2_mcb_pmsm SPIMasterTransfer2;/* '<S323>/SPI Master Transfer2' */
  rtB_ValidHalls_mcb_pmsm_foc_hal ValidHalls_hi;/* '<S296>/Valid Halls' */
  rtB_ValidHalls_mcb_pmsm_foc_hal ValidHalls_h;/* '<S274>/Valid Halls' */
  rtB_ValidHalls_mcb_pmsm_foc_hal ValidHalls;/* '<S252>/Valid Halls' */
  rtB_IfActionSubsystem1_mcb_pmsm IfActionSubsystem1_i;/* '<S155>/If Action Subsystem1' */
  rtB_IfActionSubsystem_mcb_pmsm_ IfActionSubsystem_n;/* '<S155>/If Action Subsystem' */
  rtB_IfActionSubsystem1_mcb_pmsm IfActionSubsystem1;/* '<S146>/If Action Subsystem1' */
  rtB_IfActionSubsystem_mcb_pmsm_ IfActionSubsystem;/* '<S146>/If Action Subsystem' */
} BlockIO_mcb_pmsm_foc_hall_f2837;

/* Block states (default storage) for system '<Root>' */
typedef struct {
  real32_T Integrator_DSTATE;          /* '<S126>/Integrator' */
  real32_T Integrator_DSTATE_j;        /* '<S75>/Integrator' */
  uint32_T UnitDelay_DSTATE;           /* '<S177>/Unit Delay' */
  volatile real32_T RT1_Buffer[2];     /* '<Root>/RT1' */
  volatile real32_T RT6_Buffer[2];     /* '<Root>/RT6' */
  volatile real32_T RT2_Buffer[4];     /* '<Root>/RT2' */
  real32_T Speed_ref;                  /* '<Root>/Data Store Memory8' */
  int32_T DigitalOutput2_FRAC_LEN;     /* '<S325>/Digital Output2' */
  int32_T DRV830xEnable_FRAC_LEN;      /* '<S315>/DRV830x Enable' */
  int32_T Add_DWORK1[2];               /* '<S169>/Add' */
  int32_T InverterEnable_FRAC_LEN;     /* '<S228>/Inverter Enable' */
  uint32_T GlobalSpeedCount;           /* '<Root>/Data Store Memory1' */
  uint32_T GlobalHallState;            /* '<Root>/Data Store Memory4' */
  uint32_T Sum_DWORK1[4];              /* '<S153>/Sum' */
  uint16_T DelayOneStep_DSTATE;        /* '<S184>/Delay One Step' */
  volatile int16_T RT1_ActiveBufIdx;   /* '<Root>/RT1' */
  volatile int16_T RT1_semaphoreTaken; /* '<Root>/RT1' */
  volatile int16_T RT6_ActiveBufIdx;   /* '<Root>/RT6' */
  volatile int16_T RT6_semaphoreTaken; /* '<Root>/RT6' */
  volatile int16_T RT2_ActiveBufIdx;   /* '<Root>/RT2' */
  int16_T GlobalDirection;             /* '<Root>/Data Store Memory3' */
  uint16_T HallStateChangeFlag;        /* '<Root>/Data Store Memory' */
  uint16_T GlobalSpeedValidity;        /* '<Root>/Data Store Memory2' */
  uint16_T IaOffset;                   /* '<Root>/Data Store Memory5' */
  uint16_T IbOffset;                   /* '<Root>/Data Store Memory6' */
  uint16_T Debug_signals;              /* '<Root>/Data Store Memory7' */
  uint16_T Memory_PreviousInput;       /* '<S322>/Memory' */
  uint16_T Memory1_PreviousInput;      /* '<S322>/Memory1' */
  boolean_T DelayOneStep1_DSTATE;      /* '<S184>/Delay One Step1' */
  int16_T Integrator_PrevResetState;   /* '<S126>/Integrator' */
  int16_T Integrator_PrevResetState_m; /* '<S75>/Integrator' */
  boolean_T Enable;                    /* '<Root>/Data Store Memory29' */
  rtDW_SpeedControl_mcb_pmsm_foc_ SpeedControl;/* '<Root>/Speed Control' */
  rtDW_SPIMasterTransfer2_mcb_pms SPIMasterTransfer3;/* '<S323>/SPI Master Transfer2' */
  rtDW_SPIMasterTransfer2_mcb_pms SPIMasterTransfer2;/* '<S323>/SPI Master Transfer2' */
} D_Work_mcb_pmsm_foc_hall_f28379;

/* Invariant block signals (default storage) */
typedef struct {
  const real32_T SpeedConstData;       /* '<S186>/SpeedConstData' */
} ConstBlockIO_mcb_pmsm_foc_hall_;

/* Constant parameters (default storage) */
typedef struct {
  /* Pooled Parameter (Expression: )
   * Referenced by:
   *   '<S143>/sine_table_values'
   *   '<S153>/sine_table_values'
   */
  real32_T pooled11[1002];
} ConstParam_mcb_pmsm_foc_hall_f2;

/* Real-time Model Data Structure */
struct tag_RTM_mcb_pmsm_foc_hall_f2837 {
  const char_T * volatile errorStatus;

  /*
   * Timing:
   * The following substructure contains information regarding
   * the timing information for the model.
   */
  struct {
    struct {
      uint16_T TID[3];
    } TaskCounters;
  } Timing;
};

/* Block signals (default storage) */
extern BlockIO_mcb_pmsm_foc_hall_f2837 mcb_pmsm_foc_hall_f28379d_B;

/* Block states (default storage) */
extern D_Work_mcb_pmsm_foc_hall_f28379 mcb_pmsm_foc_hall_f28379d_DWork;
extern const ConstBlockIO_mcb_pmsm_foc_hall_ mcb_pmsm_foc_hall_f28379_ConstB;/* constant block i/o */

/* Constant parameters (default storage) */
extern const ConstParam_mcb_pmsm_foc_hall_f2 mcb_pmsm_foc_hall_f28379_ConstP;

/* External function called from main */
extern void mcb_pmsm_foc_hall_f28379d_SetEventsForThisBaseStep(boolean_T
  *eventFlags);

/* Model entry point functions */
extern void mcb_pmsm_foc_hall_f28379d_initialize(void);
extern void mcb_pmsm_foc_hall_f28379d_step0(void);
extern void mcb_pmsm_foc_hall_f28379d_step1(void);
extern void mcb_pmsm_foc_hall_f28379d_step2(void);
extern void mcb_pmsm_foc_hall_f28379d_terminate(void);

/* Real-time Model object */
extern RT_MODEL_mcb_pmsm_foc_hall_f283 *const mcb_pmsm_foc_hall_f28379d_M;
extern volatile boolean_T stopRequested;
extern volatile boolean_T runModel;

#ifdef __cpluscplus

extern "C"
{

#endif

  interrupt void ADCB1_INT(void);
  interrupt void ECAP1_INT(void);
  interrupt void ECAP2_INT(void);
  interrupt void ECAP3_INT(void);
  interrupt void SCIA_RX_INT(void);
  void mcb_pmsm_foc_hall_f28379d_configure_interrupts (void);
  void mcb_pmsm_foc_hall_f28379d_unconfigure_interrupts (void);

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
 * '<Root>' : 'mcb_pmsm_foc_hall_f28379d'
 * '<S1>'   : 'mcb_pmsm_foc_hall_f28379d/Clock'
 * '<S2>'   : 'mcb_pmsm_foc_hall_f28379d/Current Control'
 * '<S3>'   : 'mcb_pmsm_foc_hall_f28379d/HW Interrupt'
 * '<S4>'   : 'mcb_pmsm_foc_hall_f28379d/Hall Sensor A'
 * '<S5>'   : 'mcb_pmsm_foc_hall_f28379d/Hall Sensor B'
 * '<S6>'   : 'mcb_pmsm_foc_hall_f28379d/Hall Sensor C'
 * '<S7>'   : 'mcb_pmsm_foc_hall_f28379d/Hardware Init'
 * '<S8>'   : 'mcb_pmsm_foc_hall_f28379d/Heartbeat LED'
 * '<S9>'   : 'mcb_pmsm_foc_hall_f28379d/Inverter and Motor - Plant Model'
 * '<S10>'  : 'mcb_pmsm_foc_hall_f28379d/Serial Receive'
 * '<S11>'  : 'mcb_pmsm_foc_hall_f28379d/Speed Control'
 * '<S12>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System'
 * '<S13>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Input Scaling'
 * '<S14>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Inverter'
 * '<S15>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Output Scaling'
 * '<S16>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Sensor Driver Blocks'
 * '<S17>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Clarke Transform'
 * '<S18>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers'
 * '<S19>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Inverse Park Transform'
 * '<S20>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Park Transform'
 * '<S21>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Space Vector Generator'
 * '<S22>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Clarke Transform/Two phase input'
 * '<S23>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Clarke Transform/Two phase input/Two phase CRL wrap'
 * '<S24>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/DQ Limiter'
 * '<S25>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id'
 * '<S26>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq'
 * '<S27>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/DQ Limiter/D-Q Equivalence'
 * '<S28>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/DQ Limiter/D//Q Axis Priority'
 * '<S29>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/DQ Limiter/Inport//Dialog Selection'
 * '<S30>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/DQ Limiter/Magnitude_calc'
 * '<S31>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/DQ Limiter/D-Q Equivalence/Limiter'
 * '<S32>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/DQ Limiter/D-Q Equivalence/Passthrough'
 * '<S33>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/DQ Limiter/D//Q Axis Priority/Compare To Constant'
 * '<S34>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/DQ Limiter/D//Q Axis Priority/Compare To Constant1'
 * '<S35>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/DQ Limiter/D//Q Axis Priority/flipInputs'
 * '<S36>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/DQ Limiter/D//Q Axis Priority/flipInputs1'
 * '<S37>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/DQ Limiter/D//Q Axis Priority/limiter'
 * '<S38>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/DQ Limiter/D//Q Axis Priority/limiter/limitRef1'
 * '<S39>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/DQ Limiter/D//Q Axis Priority/limiter/limitRef2'
 * '<S40>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/DQ Limiter/D//Q Axis Priority/limiter/passThrough'
 * '<S41>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset'
 * '<S42>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Anti-windup'
 * '<S43>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/D Gain'
 * '<S44>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Filter'
 * '<S45>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Filter ICs'
 * '<S46>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/I Gain'
 * '<S47>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Ideal P Gain'
 * '<S48>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Ideal P Gain Fdbk'
 * '<S49>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Integrator'
 * '<S50>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Integrator ICs'
 * '<S51>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/N Copy'
 * '<S52>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/N Gain'
 * '<S53>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/P Copy'
 * '<S54>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Parallel P Gain'
 * '<S55>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Reset Signal'
 * '<S56>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Saturation'
 * '<S57>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Saturation Fdbk'
 * '<S58>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Sum'
 * '<S59>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Sum Fdbk'
 * '<S60>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Tracking Mode'
 * '<S61>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Tracking Mode Sum'
 * '<S62>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Tsamp - Integral'
 * '<S63>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Tsamp - Ngain'
 * '<S64>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/postSat Signal'
 * '<S65>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/preSat Signal'
 * '<S66>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Anti-windup/Disc. Clamping Parallel'
 * '<S67>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Anti-windup/Disc. Clamping Parallel/Dead Zone'
 * '<S68>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Anti-windup/Disc. Clamping Parallel/Dead Zone/Enabled'
 * '<S69>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/D Gain/Disabled'
 * '<S70>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Filter/Disabled'
 * '<S71>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Filter ICs/Disabled'
 * '<S72>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/I Gain/External Parameters'
 * '<S73>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Ideal P Gain/Passthrough'
 * '<S74>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Ideal P Gain Fdbk/Disabled'
 * '<S75>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Integrator/Discrete'
 * '<S76>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Integrator ICs/External IC'
 * '<S77>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/N Copy/Disabled wSignal Specification'
 * '<S78>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/N Gain/Disabled'
 * '<S79>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/P Copy/Disabled'
 * '<S80>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Parallel P Gain/External Parameters'
 * '<S81>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Reset Signal/External Reset'
 * '<S82>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Saturation/Enabled'
 * '<S83>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Saturation Fdbk/Disabled'
 * '<S84>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Sum/Sum_PI'
 * '<S85>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Sum Fdbk/Disabled'
 * '<S86>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Tracking Mode/Disabled'
 * '<S87>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Tracking Mode Sum/Passthrough'
 * '<S88>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Tsamp - Integral/TsSignalSpecification'
 * '<S89>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Tsamp - Ngain/Passthrough'
 * '<S90>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/postSat Signal/Forward_Path'
 * '<S91>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/preSat Signal/Forward_Path'
 * '<S92>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset'
 * '<S93>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Anti-windup'
 * '<S94>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/D Gain'
 * '<S95>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Filter'
 * '<S96>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Filter ICs'
 * '<S97>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/I Gain'
 * '<S98>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Ideal P Gain'
 * '<S99>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Ideal P Gain Fdbk'
 * '<S100>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Integrator'
 * '<S101>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Integrator ICs'
 * '<S102>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/N Copy'
 * '<S103>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/N Gain'
 * '<S104>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/P Copy'
 * '<S105>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Parallel P Gain'
 * '<S106>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Reset Signal'
 * '<S107>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Saturation'
 * '<S108>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Saturation Fdbk'
 * '<S109>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Sum'
 * '<S110>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Sum Fdbk'
 * '<S111>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Tracking Mode'
 * '<S112>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Tracking Mode Sum'
 * '<S113>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Tsamp - Integral'
 * '<S114>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Tsamp - Ngain'
 * '<S115>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/postSat Signal'
 * '<S116>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/preSat Signal'
 * '<S117>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Anti-windup/Disc. Clamping Parallel'
 * '<S118>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Anti-windup/Disc. Clamping Parallel/Dead Zone'
 * '<S119>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Anti-windup/Disc. Clamping Parallel/Dead Zone/Enabled'
 * '<S120>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/D Gain/Disabled'
 * '<S121>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Filter/Disabled'
 * '<S122>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Filter ICs/Disabled'
 * '<S123>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/I Gain/External Parameters'
 * '<S124>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Ideal P Gain/Passthrough'
 * '<S125>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Ideal P Gain Fdbk/Disabled'
 * '<S126>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Integrator/Discrete'
 * '<S127>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Integrator ICs/External IC'
 * '<S128>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/N Copy/Disabled wSignal Specification'
 * '<S129>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/N Gain/Disabled'
 * '<S130>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/P Copy/Disabled'
 * '<S131>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Parallel P Gain/External Parameters'
 * '<S132>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Reset Signal/External Reset'
 * '<S133>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Saturation/Enabled'
 * '<S134>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Saturation Fdbk/Disabled'
 * '<S135>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Sum/Sum_PI'
 * '<S136>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Sum Fdbk/Disabled'
 * '<S137>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Tracking Mode/Disabled'
 * '<S138>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Tracking Mode Sum/Passthrough'
 * '<S139>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Tsamp - Integral/TsSignalSpecification'
 * '<S140>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Tsamp - Ngain/Passthrough'
 * '<S141>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/postSat Signal/Forward_Path'
 * '<S142>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/preSat Signal/Forward_Path'
 * '<S143>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Inverse Park Transform/Sine Cosine'
 * '<S144>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Inverse Park Transform/Two inputs CRL'
 * '<S145>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Inverse Park Transform/Sine Cosine/Interpolation'
 * '<S146>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Inverse Park Transform/Sine Cosine/WrapUp'
 * '<S147>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Inverse Park Transform/Sine Cosine/WrapUp/Compare To Zero'
 * '<S148>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Inverse Park Transform/Sine Cosine/WrapUp/If Action Subsystem'
 * '<S149>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Inverse Park Transform/Sine Cosine/WrapUp/If Action Subsystem1'
 * '<S150>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Inverse Park Transform/Two inputs CRL/Switch_Axis'
 * '<S151>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Park Transform/Sine Cosine'
 * '<S152>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Park Transform/Two inputs CRL'
 * '<S153>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Park Transform/Sine Cosine/Sine-Cosine Lookup'
 * '<S154>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Park Transform/Sine Cosine/Sine-Cosine Lookup/Interpolation'
 * '<S155>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Park Transform/Sine Cosine/Sine-Cosine Lookup/WrapUp'
 * '<S156>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Park Transform/Sine Cosine/Sine-Cosine Lookup/WrapUp/Compare To Zero'
 * '<S157>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Park Transform/Sine Cosine/Sine-Cosine Lookup/WrapUp/If Action Subsystem'
 * '<S158>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Park Transform/Sine Cosine/Sine-Cosine Lookup/WrapUp/If Action Subsystem1'
 * '<S159>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Park Transform/Two inputs CRL/Switch_Axis'
 * '<S160>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Space Vector Generator/Modulation method'
 * '<S161>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Space Vector Generator/Voltage Input'
 * '<S162>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Space Vector Generator/Modulation method/SVPWM'
 * '<S163>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Space Vector Generator/Modulation method/SVPWM/Half(Vmin+Vmax)'
 * '<S164>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Space Vector Generator/Voltage Input/Valphabeta'
 * '<S165>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Space Vector Generator/Voltage Input/Valphabeta/Inverse Clarke Transform'
 * '<S166>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Space Vector Generator/Voltage Input/Valphabeta/Inverse Clarke Transform/Two phase input'
 * '<S167>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Input Scaling/Read_Sensor (codegen)'
 * '<S168>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Input Scaling/Read_Sensor (codegen)/Calculate Position from Hall'
 * '<S169>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Input Scaling/Read_Sensor (codegen)/Convert ADC value to PU'
 * '<S170>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Input Scaling/Read_Sensor (codegen)/Calculate Position from Hall/Atomic Hall Reading'
 * '<S171>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Input Scaling/Read_Sensor (codegen)/Calculate Position from Hall/Glitch Filter'
 * '<S172>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Input Scaling/Read_Sensor (codegen)/Calculate Position from Hall/Hall Speed and Position'
 * '<S173>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Input Scaling/Read_Sensor (codegen)/Calculate Position from Hall/Mechanical to Electrical Position1'
 * '<S174>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Input Scaling/Read_Sensor (codegen)/Calculate Position from Hall/Subsystem'
 * '<S175>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Input Scaling/Read_Sensor (codegen)/Calculate Position from Hall/Atomic Hall Reading/Function-Call Subsystem'
 * '<S176>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Input Scaling/Read_Sensor (codegen)/Calculate Position from Hall/Atomic Hall Reading/Function-Call Subsystem1'
 * '<S177>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Input Scaling/Read_Sensor (codegen)/Calculate Position from Hall/Atomic Hall Reading/Integrity_Check'
 * '<S178>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Input Scaling/Read_Sensor (codegen)/Calculate Position from Hall/Atomic Hall Reading/Function-Call Subsystem/Read Halls'
 * '<S179>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Input Scaling/Read_Sensor (codegen)/Calculate Position from Hall/Atomic Hall Reading/Integrity_Check/Compare To Constant'
 * '<S180>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Input Scaling/Read_Sensor (codegen)/Calculate Position from Hall/Atomic Hall Reading/Integrity_Check/No_Integrity_issue'
 * '<S181>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Input Scaling/Read_Sensor (codegen)/Calculate Position from Hall/Atomic Hall Reading/Integrity_Check/Refresh_Halls'
 * '<S182>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Input Scaling/Read_Sensor (codegen)/Calculate Position from Hall/Atomic Hall Reading/Integrity_Check/Refresh_Halls/Read Halls'
 * '<S183>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Input Scaling/Read_Sensor (codegen)/Calculate Position from Hall/Hall Speed and Position/ExtrapolationOrder'
 * '<S184>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Input Scaling/Read_Sensor (codegen)/Calculate Position from Hall/Hall Speed and Position/Software Watchdog Timer'
 * '<S185>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Input Scaling/Read_Sensor (codegen)/Calculate Position from Hall/Hall Speed and Position/Speed and direction are not valid Position will be set to the middle of the Hall quadrant'
 * '<S186>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Input Scaling/Read_Sensor (codegen)/Calculate Position from Hall/Hall Speed and Position/Speed and direction are valid Use speed to extrapolate position'
 * '<S187>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Input Scaling/Read_Sensor (codegen)/Calculate Position from Hall/Hall Speed and Position/VaidityCheck'
 * '<S188>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Input Scaling/Read_Sensor (codegen)/Calculate Position from Hall/Hall Speed and Position/Software Watchdog Timer/Compare To Zero'
 * '<S189>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Input Scaling/Read_Sensor (codegen)/Calculate Position from Hall/Hall Speed and Position/Speed and direction are not valid Position will be set to the middle of the Hall quadrant/independent Direction'
 * '<S190>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Input Scaling/Read_Sensor (codegen)/Calculate Position from Hall/Hall Speed and Position/Speed and direction are not valid Position will be set to the middle of the Hall quadrant/independent Direction/Hall Value of 1'
 * '<S191>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Input Scaling/Read_Sensor (codegen)/Calculate Position from Hall/Hall Speed and Position/Speed and direction are not valid Position will be set to the middle of the Hall quadrant/independent Direction/Hall Value of 2'
 * '<S192>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Input Scaling/Read_Sensor (codegen)/Calculate Position from Hall/Hall Speed and Position/Speed and direction are not valid Position will be set to the middle of the Hall quadrant/independent Direction/Hall Value of 3'
 * '<S193>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Input Scaling/Read_Sensor (codegen)/Calculate Position from Hall/Hall Speed and Position/Speed and direction are not valid Position will be set to the middle of the Hall quadrant/independent Direction/Hall Value of 4'
 * '<S194>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Input Scaling/Read_Sensor (codegen)/Calculate Position from Hall/Hall Speed and Position/Speed and direction are not valid Position will be set to the middle of the Hall quadrant/independent Direction/Hall Value of 5'
 * '<S195>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Input Scaling/Read_Sensor (codegen)/Calculate Position from Hall/Hall Speed and Position/Speed and direction are not valid Position will be set to the middle of the Hall quadrant/independent Direction/Hall Value of 6'
 * '<S196>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Input Scaling/Read_Sensor (codegen)/Calculate Position from Hall/Hall Speed and Position/Speed and direction are not valid Position will be set to the middle of the Hall quadrant/independent Direction/Hall Value of 7'
 * '<S197>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Input Scaling/Read_Sensor (codegen)/Calculate Position from Hall/Hall Speed and Position/Speed and direction are valid Use speed to extrapolate position/If Action Subsystem'
 * '<S198>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Input Scaling/Read_Sensor (codegen)/Calculate Position from Hall/Hall Speed and Position/Speed and direction are valid Use speed to extrapolate position/If Action Subsystem1'
 * '<S199>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Input Scaling/Read_Sensor (codegen)/Calculate Position from Hall/Hall Speed and Position/Speed and direction are valid Use speed to extrapolate position/Subsystem1'
 * '<S200>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Input Scaling/Read_Sensor (codegen)/Calculate Position from Hall/Hall Speed and Position/Speed and direction are valid Use speed to extrapolate position/Subsystem1/+ve Direction'
 * '<S201>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Input Scaling/Read_Sensor (codegen)/Calculate Position from Hall/Hall Speed and Position/Speed and direction are valid Use speed to extrapolate position/Subsystem1/-ve Direction'
 * '<S202>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Input Scaling/Read_Sensor (codegen)/Calculate Position from Hall/Hall Speed and Position/Speed and direction are valid Use speed to extrapolate position/Subsystem1/first_order'
 * '<S203>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Input Scaling/Read_Sensor (codegen)/Calculate Position from Hall/Hall Speed and Position/Speed and direction are valid Use speed to extrapolate position/Subsystem1/second_order'
 * '<S204>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Input Scaling/Read_Sensor (codegen)/Calculate Position from Hall/Hall Speed and Position/Speed and direction are valid Use speed to extrapolate position/Subsystem1/+ve Direction/Hall Value of 1'
 * '<S205>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Input Scaling/Read_Sensor (codegen)/Calculate Position from Hall/Hall Speed and Position/Speed and direction are valid Use speed to extrapolate position/Subsystem1/+ve Direction/Hall Value of 2'
 * '<S206>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Input Scaling/Read_Sensor (codegen)/Calculate Position from Hall/Hall Speed and Position/Speed and direction are valid Use speed to extrapolate position/Subsystem1/+ve Direction/Hall Value of 3'
 * '<S207>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Input Scaling/Read_Sensor (codegen)/Calculate Position from Hall/Hall Speed and Position/Speed and direction are valid Use speed to extrapolate position/Subsystem1/+ve Direction/Hall Value of 4'
 * '<S208>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Input Scaling/Read_Sensor (codegen)/Calculate Position from Hall/Hall Speed and Position/Speed and direction are valid Use speed to extrapolate position/Subsystem1/+ve Direction/Hall Value of 5'
 * '<S209>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Input Scaling/Read_Sensor (codegen)/Calculate Position from Hall/Hall Speed and Position/Speed and direction are valid Use speed to extrapolate position/Subsystem1/+ve Direction/Hall Value of 6'
 * '<S210>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Input Scaling/Read_Sensor (codegen)/Calculate Position from Hall/Hall Speed and Position/Speed and direction are valid Use speed to extrapolate position/Subsystem1/+ve Direction/Hall Value of 7'
 * '<S211>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Input Scaling/Read_Sensor (codegen)/Calculate Position from Hall/Hall Speed and Position/Speed and direction are valid Use speed to extrapolate position/Subsystem1/-ve Direction/Hall Value of 1'
 * '<S212>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Input Scaling/Read_Sensor (codegen)/Calculate Position from Hall/Hall Speed and Position/Speed and direction are valid Use speed to extrapolate position/Subsystem1/-ve Direction/Hall Value of 2'
 * '<S213>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Input Scaling/Read_Sensor (codegen)/Calculate Position from Hall/Hall Speed and Position/Speed and direction are valid Use speed to extrapolate position/Subsystem1/-ve Direction/Hall Value of 3'
 * '<S214>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Input Scaling/Read_Sensor (codegen)/Calculate Position from Hall/Hall Speed and Position/Speed and direction are valid Use speed to extrapolate position/Subsystem1/-ve Direction/Hall Value of 4'
 * '<S215>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Input Scaling/Read_Sensor (codegen)/Calculate Position from Hall/Hall Speed and Position/Speed and direction are valid Use speed to extrapolate position/Subsystem1/-ve Direction/Hall Value of 5'
 * '<S216>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Input Scaling/Read_Sensor (codegen)/Calculate Position from Hall/Hall Speed and Position/Speed and direction are valid Use speed to extrapolate position/Subsystem1/-ve Direction/Hall Value of 6'
 * '<S217>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Input Scaling/Read_Sensor (codegen)/Calculate Position from Hall/Hall Speed and Position/Speed and direction are valid Use speed to extrapolate position/Subsystem1/-ve Direction/Hall Value of 7'
 * '<S218>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Input Scaling/Read_Sensor (codegen)/Calculate Position from Hall/Mechanical to Electrical Position1/MechToElec'
 * '<S219>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Input Scaling/Read_Sensor (codegen)/Calculate Position from Hall/Mechanical to Electrical Position1/MechToElec/floating-point'
 * '<S220>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Input Scaling/Read_Sensor (codegen)/Calculate Position from Hall/Mechanical to Electrical Position1/MechToElec/floating-point/Compensate Offset'
 * '<S221>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Input Scaling/Read_Sensor (codegen)/Calculate Position from Hall/Mechanical to Electrical Position1/MechToElec/floating-point/Mech To Elec'
 * '<S222>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Input Scaling/Read_Sensor (codegen)/Calculate Position from Hall/Mechanical to Electrical Position1/MechToElec/floating-point/Compensate Offset/If Action Subsystem'
 * '<S223>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Input Scaling/Read_Sensor (codegen)/Calculate Position from Hall/Mechanical to Electrical Position1/MechToElec/floating-point/Compensate Offset/If Action Subsystem1'
 * '<S224>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Input Scaling/Read_Sensor (codegen)/Calculate Position from Hall/Mechanical to Electrical Position1/MechToElec/floating-point/Mech To Elec/Variant Subsystem'
 * '<S225>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Input Scaling/Read_Sensor (codegen)/Calculate Position from Hall/Mechanical to Electrical Position1/MechToElec/floating-point/Mech To Elec/Variant Subsystem/Dialog'
 * '<S226>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Input Scaling/Read_Sensor (codegen)/Convert ADC value to PU/Data_Type'
 * '<S227>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Input Scaling/Read_Sensor (codegen)/Convert ADC value to PU/Data_Type/Data_Type_Float'
 * '<S228>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Inverter/Code Generation'
 * '<S229>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Sensor Driver Blocks/Sensor Driver Blocks (codegen)'
 * '<S230>' : 'mcb_pmsm_foc_hall_f28379d/HW Interrupt/Code Generation'
 * '<S231>' : 'mcb_pmsm_foc_hall_f28379d/HW Interrupt/Code Generation/HWI_ADCB1_INT'
 * '<S232>' : 'mcb_pmsm_foc_hall_f28379d/HW Interrupt/Code Generation/HWI_ECAP1_INT'
 * '<S233>' : 'mcb_pmsm_foc_hall_f28379d/HW Interrupt/Code Generation/HWI_ECAP2_INT'
 * '<S234>' : 'mcb_pmsm_foc_hall_f28379d/HW Interrupt/Code Generation/HWI_ECAP3_INT'
 * '<S235>' : 'mcb_pmsm_foc_hall_f28379d/HW Interrupt/Code Generation/HWI_SCIA_RX_INT'
 * '<S236>' : 'mcb_pmsm_foc_hall_f28379d/HW Interrupt/Code Generation/HWI_ADCB1_INT/ECSoC'
 * '<S237>' : 'mcb_pmsm_foc_hall_f28379d/HW Interrupt/Code Generation/HWI_ADCB1_INT/ECSoC/ECSimCodegen'
 * '<S238>' : 'mcb_pmsm_foc_hall_f28379d/HW Interrupt/Code Generation/HWI_ECAP1_INT/ECSoC'
 * '<S239>' : 'mcb_pmsm_foc_hall_f28379d/HW Interrupt/Code Generation/HWI_ECAP1_INT/ECSoC/ECSimCodegen'
 * '<S240>' : 'mcb_pmsm_foc_hall_f28379d/HW Interrupt/Code Generation/HWI_ECAP2_INT/ECSoC'
 * '<S241>' : 'mcb_pmsm_foc_hall_f28379d/HW Interrupt/Code Generation/HWI_ECAP2_INT/ECSoC/ECSimCodegen'
 * '<S242>' : 'mcb_pmsm_foc_hall_f28379d/HW Interrupt/Code Generation/HWI_ECAP3_INT/ECSoC'
 * '<S243>' : 'mcb_pmsm_foc_hall_f28379d/HW Interrupt/Code Generation/HWI_ECAP3_INT/ECSoC/ECSimCodegen'
 * '<S244>' : 'mcb_pmsm_foc_hall_f28379d/HW Interrupt/Code Generation/HWI_SCIA_RX_INT/ECSoC'
 * '<S245>' : 'mcb_pmsm_foc_hall_f28379d/HW Interrupt/Code Generation/HWI_SCIA_RX_INT/ECSoC/ECSimCodegen'
 * '<S246>' : 'mcb_pmsm_foc_hall_f28379d/Hall Sensor A/Capture Event Selection'
 * '<S247>' : 'mcb_pmsm_foc_hall_f28379d/Hall Sensor A/Hall Validity'
 * '<S248>' : 'mcb_pmsm_foc_hall_f28379d/Hall Sensor A/HallValidity'
 * '<S249>' : 'mcb_pmsm_foc_hall_f28379d/Hall Sensor A/eCAP'
 * '<S250>' : 'mcb_pmsm_foc_hall_f28379d/Hall Sensor A/Capture Event Selection/Output 0'
 * '<S251>' : 'mcb_pmsm_foc_hall_f28379d/Hall Sensor A/Capture Event Selection/Output 1'
 * '<S252>' : 'mcb_pmsm_foc_hall_f28379d/Hall Sensor A/Hall Validity/Subsystem'
 * '<S253>' : 'mcb_pmsm_foc_hall_f28379d/Hall Sensor A/Hall Validity/Subsystem/Bad hall (glitch or wrong connection)'
 * '<S254>' : 'mcb_pmsm_foc_hall_f28379d/Hall Sensor A/Hall Validity/Subsystem/Valid Halls'
 * '<S255>' : 'mcb_pmsm_foc_hall_f28379d/Hall Sensor A/Hall Validity/Subsystem/Valid Halls/If Action Subsystem'
 * '<S256>' : 'mcb_pmsm_foc_hall_f28379d/Hall Sensor A/Hall Validity/Subsystem/Valid Halls/If Action Subsystem1'
 * '<S257>' : 'mcb_pmsm_foc_hall_f28379d/Hall Sensor A/Hall Validity/Subsystem/Valid Halls/If Action Subsystem2'
 * '<S258>' : 'mcb_pmsm_foc_hall_f28379d/Hall Sensor A/Hall Validity/Subsystem/Valid Halls/If Action Subsystem3'
 * '<S259>' : 'mcb_pmsm_foc_hall_f28379d/Hall Sensor A/Hall Validity/Subsystem/Valid Halls/If Action Subsystem4'
 * '<S260>' : 'mcb_pmsm_foc_hall_f28379d/Hall Sensor A/Hall Validity/Subsystem/Valid Halls/If Action Subsystem5'
 * '<S261>' : 'mcb_pmsm_foc_hall_f28379d/Hall Sensor A/Hall Validity/Subsystem/Valid Halls/If Action Subsystem6'
 * '<S262>' : 'mcb_pmsm_foc_hall_f28379d/Hall Sensor A/Hall Validity/Subsystem/Valid Halls/If Action Subsystem7'
 * '<S263>' : 'mcb_pmsm_foc_hall_f28379d/Hall Sensor A/Hall Validity/Subsystem/Valid Halls/If Action Subsystem8'
 * '<S264>' : 'mcb_pmsm_foc_hall_f28379d/Hall Sensor A/Hall Validity/Subsystem/Valid Halls/Switch Case Action Subsystem'
 * '<S265>' : 'mcb_pmsm_foc_hall_f28379d/Hall Sensor A/HallValidity/CodeGen'
 * '<S266>' : 'mcb_pmsm_foc_hall_f28379d/Hall Sensor A/HallValidity/CodeGen/Read Halls'
 * '<S267>' : 'mcb_pmsm_foc_hall_f28379d/Hall Sensor A/eCAP/Code generation'
 * '<S268>' : 'mcb_pmsm_foc_hall_f28379d/Hall Sensor B/Capture Event Selection'
 * '<S269>' : 'mcb_pmsm_foc_hall_f28379d/Hall Sensor B/Hall Validity'
 * '<S270>' : 'mcb_pmsm_foc_hall_f28379d/Hall Sensor B/HallValidity'
 * '<S271>' : 'mcb_pmsm_foc_hall_f28379d/Hall Sensor B/eCAP'
 * '<S272>' : 'mcb_pmsm_foc_hall_f28379d/Hall Sensor B/Capture Event Selection/Output 0'
 * '<S273>' : 'mcb_pmsm_foc_hall_f28379d/Hall Sensor B/Capture Event Selection/Output 1'
 * '<S274>' : 'mcb_pmsm_foc_hall_f28379d/Hall Sensor B/Hall Validity/Subsystem'
 * '<S275>' : 'mcb_pmsm_foc_hall_f28379d/Hall Sensor B/Hall Validity/Subsystem/Bad hall (glitch or wrong connection)'
 * '<S276>' : 'mcb_pmsm_foc_hall_f28379d/Hall Sensor B/Hall Validity/Subsystem/Valid Halls'
 * '<S277>' : 'mcb_pmsm_foc_hall_f28379d/Hall Sensor B/Hall Validity/Subsystem/Valid Halls/If Action Subsystem'
 * '<S278>' : 'mcb_pmsm_foc_hall_f28379d/Hall Sensor B/Hall Validity/Subsystem/Valid Halls/If Action Subsystem1'
 * '<S279>' : 'mcb_pmsm_foc_hall_f28379d/Hall Sensor B/Hall Validity/Subsystem/Valid Halls/If Action Subsystem2'
 * '<S280>' : 'mcb_pmsm_foc_hall_f28379d/Hall Sensor B/Hall Validity/Subsystem/Valid Halls/If Action Subsystem3'
 * '<S281>' : 'mcb_pmsm_foc_hall_f28379d/Hall Sensor B/Hall Validity/Subsystem/Valid Halls/If Action Subsystem4'
 * '<S282>' : 'mcb_pmsm_foc_hall_f28379d/Hall Sensor B/Hall Validity/Subsystem/Valid Halls/If Action Subsystem5'
 * '<S283>' : 'mcb_pmsm_foc_hall_f28379d/Hall Sensor B/Hall Validity/Subsystem/Valid Halls/If Action Subsystem6'
 * '<S284>' : 'mcb_pmsm_foc_hall_f28379d/Hall Sensor B/Hall Validity/Subsystem/Valid Halls/If Action Subsystem7'
 * '<S285>' : 'mcb_pmsm_foc_hall_f28379d/Hall Sensor B/Hall Validity/Subsystem/Valid Halls/If Action Subsystem8'
 * '<S286>' : 'mcb_pmsm_foc_hall_f28379d/Hall Sensor B/Hall Validity/Subsystem/Valid Halls/Switch Case Action Subsystem'
 * '<S287>' : 'mcb_pmsm_foc_hall_f28379d/Hall Sensor B/HallValidity/CodeGen'
 * '<S288>' : 'mcb_pmsm_foc_hall_f28379d/Hall Sensor B/HallValidity/CodeGen/Read Halls'
 * '<S289>' : 'mcb_pmsm_foc_hall_f28379d/Hall Sensor B/eCAP/Code generation'
 * '<S290>' : 'mcb_pmsm_foc_hall_f28379d/Hall Sensor C/Capture Event Selection'
 * '<S291>' : 'mcb_pmsm_foc_hall_f28379d/Hall Sensor C/Hall Validity'
 * '<S292>' : 'mcb_pmsm_foc_hall_f28379d/Hall Sensor C/HallValidity'
 * '<S293>' : 'mcb_pmsm_foc_hall_f28379d/Hall Sensor C/eCAP'
 * '<S294>' : 'mcb_pmsm_foc_hall_f28379d/Hall Sensor C/Capture Event Selection/Output 0'
 * '<S295>' : 'mcb_pmsm_foc_hall_f28379d/Hall Sensor C/Capture Event Selection/Output 1'
 * '<S296>' : 'mcb_pmsm_foc_hall_f28379d/Hall Sensor C/Hall Validity/Subsystem'
 * '<S297>' : 'mcb_pmsm_foc_hall_f28379d/Hall Sensor C/Hall Validity/Subsystem/Bad hall (glitch or wrong connection)'
 * '<S298>' : 'mcb_pmsm_foc_hall_f28379d/Hall Sensor C/Hall Validity/Subsystem/Valid Halls'
 * '<S299>' : 'mcb_pmsm_foc_hall_f28379d/Hall Sensor C/Hall Validity/Subsystem/Valid Halls/If Action Subsystem'
 * '<S300>' : 'mcb_pmsm_foc_hall_f28379d/Hall Sensor C/Hall Validity/Subsystem/Valid Halls/If Action Subsystem1'
 * '<S301>' : 'mcb_pmsm_foc_hall_f28379d/Hall Sensor C/Hall Validity/Subsystem/Valid Halls/If Action Subsystem2'
 * '<S302>' : 'mcb_pmsm_foc_hall_f28379d/Hall Sensor C/Hall Validity/Subsystem/Valid Halls/If Action Subsystem3'
 * '<S303>' : 'mcb_pmsm_foc_hall_f28379d/Hall Sensor C/Hall Validity/Subsystem/Valid Halls/If Action Subsystem4'
 * '<S304>' : 'mcb_pmsm_foc_hall_f28379d/Hall Sensor C/Hall Validity/Subsystem/Valid Halls/If Action Subsystem5'
 * '<S305>' : 'mcb_pmsm_foc_hall_f28379d/Hall Sensor C/Hall Validity/Subsystem/Valid Halls/If Action Subsystem6'
 * '<S306>' : 'mcb_pmsm_foc_hall_f28379d/Hall Sensor C/Hall Validity/Subsystem/Valid Halls/If Action Subsystem7'
 * '<S307>' : 'mcb_pmsm_foc_hall_f28379d/Hall Sensor C/Hall Validity/Subsystem/Valid Halls/If Action Subsystem8'
 * '<S308>' : 'mcb_pmsm_foc_hall_f28379d/Hall Sensor C/Hall Validity/Subsystem/Valid Halls/Switch Case Action Subsystem'
 * '<S309>' : 'mcb_pmsm_foc_hall_f28379d/Hall Sensor C/HallValidity/CodeGen'
 * '<S310>' : 'mcb_pmsm_foc_hall_f28379d/Hall Sensor C/HallValidity/CodeGen/Read Halls'
 * '<S311>' : 'mcb_pmsm_foc_hall_f28379d/Hall Sensor C/eCAP/Code generation'
 * '<S312>' : 'mcb_pmsm_foc_hall_f28379d/Hardware Init/Variant Subsystem'
 * '<S313>' : 'mcb_pmsm_foc_hall_f28379d/Hardware Init/Variant Subsystem/Code Generation'
 * '<S314>' : 'mcb_pmsm_foc_hall_f28379d/Hardware Init/Variant Subsystem/Code Generation/Calculate ADC Offset '
 * '<S315>' : 'mcb_pmsm_foc_hall_f28379d/Hardware Init/Variant Subsystem/Code Generation/DRV Enable'
 * '<S316>' : 'mcb_pmsm_foc_hall_f28379d/Hardware Init/Variant Subsystem/Code Generation/Default ADC Offset'
 * '<S317>' : 'mcb_pmsm_foc_hall_f28379d/Hardware Init/Variant Subsystem/Code Generation/Calculate ADC Offset /For Iterator Subsystem'
 * '<S318>' : 'mcb_pmsm_foc_hall_f28379d/Hardware Init/Variant Subsystem/Code Generation/Calculate ADC Offset /If Action Subsystem'
 * '<S319>' : 'mcb_pmsm_foc_hall_f28379d/Hardware Init/Variant Subsystem/Code Generation/Calculate ADC Offset /If Action Subsystem1'
 * '<S320>' : 'mcb_pmsm_foc_hall_f28379d/Hardware Init/Variant Subsystem/Code Generation/Calculate ADC Offset /If Action Subsystem2'
 * '<S321>' : 'mcb_pmsm_foc_hall_f28379d/Hardware Init/Variant Subsystem/Code Generation/Calculate ADC Offset /If Action Subsystem3'
 * '<S322>' : 'mcb_pmsm_foc_hall_f28379d/Hardware Init/Variant Subsystem/Code Generation/Calculate ADC Offset /For Iterator Subsystem/If Action Subsystem'
 * '<S323>' : 'mcb_pmsm_foc_hall_f28379d/Hardware Init/Variant Subsystem/Code Generation/DRV Enable/ADC Gain Setting'
 * '<S324>' : 'mcb_pmsm_foc_hall_f28379d/Heartbeat LED/Heartbeat LED'
 * '<S325>' : 'mcb_pmsm_foc_hall_f28379d/Heartbeat LED/Heartbeat LED/Code generation'
 * '<S326>' : 'mcb_pmsm_foc_hall_f28379d/Inverter and Motor - Plant Model/Codegeneration'
 * '<S327>' : 'mcb_pmsm_foc_hall_f28379d/Serial Receive/Data_Conditioning_Rx'
 * '<S328>' : 'mcb_pmsm_foc_hall_f28379d/Serial Receive/SCI_Rx'
 * '<S329>' : 'mcb_pmsm_foc_hall_f28379d/Serial Receive/unParse'
 * '<S330>' : 'mcb_pmsm_foc_hall_f28379d/Serial Receive/Data_Conditioning_Rx/Data_Type_Float'
 * '<S331>' : 'mcb_pmsm_foc_hall_f28379d/Serial Receive/SCI_Rx/Code Generation'
 * '<S332>' : 'mcb_pmsm_foc_hall_f28379d/Serial Receive/SCI_Rx/Code Generation/Data_Type_Float'
 * '<S333>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed'
 * '<S334>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/Speed_Ref_Selector'
 * '<S335>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset'
 * '<S336>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed/Zero_Cancellation'
 * '<S337>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/Anti-windup'
 * '<S338>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/D Gain'
 * '<S339>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/Filter'
 * '<S340>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/Filter ICs'
 * '<S341>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/I Gain'
 * '<S342>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/Ideal P Gain'
 * '<S343>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/Ideal P Gain Fdbk'
 * '<S344>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/Integrator'
 * '<S345>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/Integrator ICs'
 * '<S346>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/N Copy'
 * '<S347>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/N Gain'
 * '<S348>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/P Copy'
 * '<S349>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/Parallel P Gain'
 * '<S350>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/Reset Signal'
 * '<S351>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/Saturation'
 * '<S352>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/Saturation Fdbk'
 * '<S353>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/Sum'
 * '<S354>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/Sum Fdbk'
 * '<S355>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/Tracking Mode'
 * '<S356>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/Tracking Mode Sum'
 * '<S357>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/Tsamp - Integral'
 * '<S358>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/Tsamp - Ngain'
 * '<S359>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/postSat Signal'
 * '<S360>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/preSat Signal'
 * '<S361>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/Anti-windup/Disc. Clamping Parallel'
 * '<S362>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/Anti-windup/Disc. Clamping Parallel/Dead Zone'
 * '<S363>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/Anti-windup/Disc. Clamping Parallel/Dead Zone/Enabled'
 * '<S364>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/D Gain/Disabled'
 * '<S365>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/Filter/Disabled'
 * '<S366>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/Filter ICs/Disabled'
 * '<S367>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/I Gain/External Parameters'
 * '<S368>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/Ideal P Gain/Passthrough'
 * '<S369>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/Ideal P Gain Fdbk/Disabled'
 * '<S370>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/Integrator/Discrete'
 * '<S371>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/Integrator ICs/External IC'
 * '<S372>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/N Copy/Disabled wSignal Specification'
 * '<S373>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/N Gain/Disabled'
 * '<S374>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/P Copy/Disabled'
 * '<S375>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/Parallel P Gain/External Parameters'
 * '<S376>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/Reset Signal/External Reset'
 * '<S377>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/Saturation/Enabled'
 * '<S378>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/Saturation Fdbk/Disabled'
 * '<S379>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/Sum/Sum_PI'
 * '<S380>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/Sum Fdbk/Disabled'
 * '<S381>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/Tracking Mode/Disabled'
 * '<S382>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/Tracking Mode Sum/Passthrough'
 * '<S383>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/Tsamp - Integral/TsSignalSpecification'
 * '<S384>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/Tsamp - Ngain/Passthrough'
 * '<S385>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/postSat Signal/Forward_Path'
 * '<S386>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/preSat Signal/Forward_Path'
 * '<S387>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed/Zero_Cancellation/IIR Filter'
 * '<S388>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed/Zero_Cancellation/IIR Filter/Low-pass'
 * '<S389>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed/Zero_Cancellation/IIR Filter/Low-pass/IIR Low Pass Filter'
 */
#endif                             /* RTW_HEADER_mcb_pmsm_foc_hall_f28379d_h_ */

/*
 * File trailer for generated code.
 *
 * [EOF]
 */
