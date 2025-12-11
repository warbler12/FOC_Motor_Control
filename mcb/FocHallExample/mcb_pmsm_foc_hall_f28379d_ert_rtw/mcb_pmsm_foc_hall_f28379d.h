/*
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * File: mcb_pmsm_foc_hall_f28379d.h
 *
 * Code generated for Simulink model 'mcb_pmsm_foc_hall_f28379d'.
 *
 * Model version                  : 17
 * Simulink Coder version         : 23.2 (R2023b) 01-Aug-2023
 * C/C++ source code generated on : Thu Dec 11 18:11:22 2025
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
#include "string.h"
#include "c2000BoardSupport.h"
#include "MW_f2837xD_includes.h"
#include "DSP28xx_SciUtil.h"
#include "IQmathLib.h"
#include "MW_SPI.h"
#endif                          /* mcb_pmsm_foc_hall_f28379d_COMMON_INCLUDES_ */

#include "MW_c2000ISR.h"
#include "mcb_pmsm_foc_hall_f28379d_types.h"
#include "rt_nonfinite.h"
#include "rtGetNaN.h"
#include <string.h>
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

/* Block signals for system '<S148>/If Action Subsystem' */
typedef struct {
  real32_T Convert_back;               /* '<S150>/Convert_back' */
  int16_T Convert_uint16;              /* '<S150>/Convert_uint16' */
} rtB_IfActionSubsystem_mcb_pmsm_;

/* Block signals for system '<S148>/If Action Subsystem1' */
typedef struct {
  real32_T Convert_back;               /* '<S151>/Convert_back' */
  int16_T Convert_uint16;              /* '<S151>/Convert_uint16' */
} rtB_IfActionSubsystem1_mcb_pmsm;

/* Block signals for system '<S276>/Valid Halls' */
typedef struct {
  uint16_T Merge;                      /* '<S278>/Merge' */
  uint16_T Merge1;                     /* '<S278>/Merge1' */
  uint16_T Merge3;                     /* '<S278>/Merge3' */
  int16_T Merge2;                      /* '<S278>/Merge2' */
  boolean_T RelationalOperator;        /* '<S278>/Relational Operator' */
} rtB_ValidHalls_mcb_pmsm_foc_hal;

/* Block signals for system '<S347>/SPI Master Transfer2' */
typedef struct {
  uint16_T SPIMasterTransfer2;         /* '<S347>/SPI Master Transfer2' */
} rtB_SPIMasterTransfer2_mcb_pmsm;

/* Block states (default storage) for system '<S347>/SPI Master Transfer2' */
typedef struct {
  codertarget_tic2000_blocks_SPIM obj; /* '<S347>/SPI Master Transfer2' */
  boolean_T objisempty;                /* '<S347>/SPI Master Transfer2' */
} rtDW_SPIMasterTransfer2_mcb_pms;

/* Block signals for system '<Root>/Speed Control' */
typedef struct {
  real_T Gain1;                        /* '<S357>/Gain1' */
  real_T MinMax;                       /* '<S426>/MinMax' */
  real_T Abs1;                         /* '<S424>/Abs1' */
  real_T Sum2;                         /* '<S424>/Sum2' */
  real_T Divide1;                      /* '<S425>/Divide1' */
  real_T Divide;                       /* '<S426>/Divide' */
  real_T Gain4;                        /* '<S426>/Gain4' */
  real_T Gain2;                        /* '<S426>/Gain2' */
  uint32_T PositionToCount;            /* '<S418>/PositionToCount' */
  uint32_T Delay;                      /* '<S418>/Delay' */
  real32_T Id_ref;                     /* '<S10>/Id_ref' */
  real32_T Switch;                     /* '<S358>/Switch' */
  real32_T Product;                    /* '<S443>/Product' */
  real32_T UnitDelay;                  /* '<S443>/Unit Delay' */
  real32_T Product1;                   /* '<S443>/Product1' */
  real32_T Add1;                       /* '<S443>/Add1' */
  real32_T Sum;                        /* '<S357>/Sum' */
  real32_T PProdOut;                   /* '<S405>/PProd Out' */
  real32_T Ki2;                        /* '<S357>/Ki2' */
  real32_T Integrator;                 /* '<S400>/Integrator' */
  real32_T Sum_e;                      /* '<S409>/Sum' */
  real32_T DeadZone;                   /* '<S393>/DeadZone' */
  real32_T IProdOut;                   /* '<S397>/IProd Out' */
  real32_T Switch_k;                   /* '<S391>/Switch' */
  real32_T Saturation;                 /* '<S407>/Saturation' */
  real32_T Merge;                      /* '<S357>/Merge' */
  real32_T Unwrap;                     /* '<S361>/Unwrap' */
  real32_T DTC;                        /* '<S423>/DTC' */
  real32_T SpeedGain;                  /* '<S418>/SpeedGain' */
  real32_T Product_c;                  /* '<S421>/Product' */
  real32_T UnitDelay_m;                /* '<S421>/Unit Delay' */
  real32_T Product1_h;                 /* '<S421>/Product1' */
  real32_T Add1_k;                     /* '<S421>/Add1' */
  real32_T Gain2_g;                    /* '<S357>/Gain2' */
  real32_T Merge1;                     /* '<S357>/Merge1' */
  real32_T DiscreteTimeIntegrator1;    /* '<S426>/Discrete-Time Integrator1' */
  real32_T Sum_k;                      /* '<S424>/Sum' */
  real32_T Delay_c;                    /* '<S424>/Delay' */
  real32_T Sum1;                       /* '<S424>/Sum1' */
  real32_T Abs;                        /* '<S424>/Abs' */
  real32_T Abs2;                       /* '<S424>/Abs2' */
  real32_T DiscreteTimeIntegrator2;    /* '<S425>/Discrete-Time Integrator2' */
  real32_T Gain1_h;                    /* '<S425>/Gain1' */
  real32_T Product1_i;                 /* '<S425>/Product1' */
  real32_T Switch2;                    /* '<S427>/Switch2' */
  real32_T DiscreteTimeIntegrator;     /* '<S426>/Discrete-Time Integrator' */
  real32_T Switch_ki;                  /* '<S434>/Switch' */
  real32_T Merge_h;                    /* '<S435>/Merge' */
  real32_T Numberofpolepairs;          /* '<S440>/Number of pole pairs' */
  real32_T Floor;                      /* '<S436>/Floor' */
  real32_T Add;                        /* '<S436>/Add' */
  real32_T Product_l;                  /* '<S426>/Product' */
  real32_T Switch2_i;                  /* '<S432>/Switch2' */
  real32_T Switch_a;                   /* '<S432>/Switch' */
  real32_T Switch_m;                   /* '<S427>/Switch' */
  int32_T SpeedCount;                  /* '<S418>/SpeedCount' */
  uint16_T Motor_State;                /* '<S357>/Chart' */
  int16_T Switch1;                     /* '<S391>/Switch1' */
  int16_T Switch2_f;                   /* '<S391>/Switch2' */
  boolean_T DataStoreRead1;            /* '<S357>/Data Store Read1' */
  boolean_T DataStoreRead2;            /* '<S357>/Data Store Read2' */
  boolean_T AND;                       /* '<S357>/AND' */
  boolean_T DataStoreRead3;            /* '<S357>/Data Store Read3' */
  boolean_T UnitDelay_e;               /* '<S357>/Unit Delay' */
  boolean_T DataStoreRead1_e;          /* '<S358>/Data Store Read1' */
  boolean_T LogicalOperator;           /* '<S357>/Logical Operator' */
  boolean_T RelationalOperator;        /* '<S391>/Relational Operator' */
  boolean_T fixforDTpropagationissue;/* '<S391>/fix for DT propagation issue' */
  boolean_T fixforDTpropagationissue1;
                                    /* '<S391>/fix for DT propagation issue1' */
  boolean_T Equal1;                    /* '<S391>/Equal1' */
  boolean_T AND3;                      /* '<S391>/AND3' */
  boolean_T Merge2;                    /* '<S357>/Merge2' */
  boolean_T Switch_o;                  /* '<S424>/Switch' */
  boolean_T Switch1_d;                 /* '<S424>/Switch1' */
  boolean_T LogicalOperator_p;         /* '<S424>/Logical Operator' */
  boolean_T LogicalOperator2;          /* '<S424>/Logical Operator2' */
  boolean_T LowerRelop1;               /* '<S427>/LowerRelop1' */
  boolean_T LowerRelop1_l;             /* '<S432>/LowerRelop1' */
  boolean_T UpperRelop;                /* '<S432>/UpperRelop' */
  boolean_T UpperRelop_i;              /* '<S427>/UpperRelop' */
} rtB_SpeedControl_mcb_pmsm_foc_h;

/* Block states (default storage) for system '<Root>/Speed Control' */
typedef struct {
  real_T Sum2_DWORK1;                  /* '<S424>/Sum2' */
  real32_T UnitDelay_DSTATE;           /* '<S443>/Unit Delay' */
  real32_T Integrator_DSTATE;          /* '<S400>/Integrator' */
  real32_T UnitDelay_DSTATE_p;         /* '<S421>/Unit Delay' */
  real32_T DiscreteTimeIntegrator1_DSTATE;/* '<S426>/Discrete-Time Integrator1' */
  real32_T Delay_DSTATE;               /* '<S424>/Delay' */
  real32_T DiscreteTimeIntegrator2_DSTATE;/* '<S425>/Discrete-Time Integrator2' */
  real32_T DiscreteTimeIntegrator_DSTATE;/* '<S426>/Discrete-Time Integrator' */
  uint32_T Delay_DSTATE_a[20];         /* '<S418>/Delay' */
  real32_T Unwrap_Prev;                /* '<S361>/Unwrap' */
  real32_T Unwrap_Cumsum;              /* '<S361>/Unwrap' */
  int32_T SpeedCount_DWORK1;           /* '<S418>/SpeedCount' */
  uint16_T CircBufIdx;                 /* '<S418>/Delay' */
  uint16_T temporalCounter_i1;         /* '<S357>/Chart' */
  boolean_T UnitDelay_DSTATE_a;        /* '<S357>/Unit Delay' */
  int16_T Integrator_PrevResetState;   /* '<S400>/Integrator' */
  uint16_T is_active_c3_mcb_pmsm_foc_hall_;/* '<S357>/Chart' */
  uint16_T is_c3_mcb_pmsm_foc_hall_f28379d;/* '<S357>/Chart' */
  boolean_T Unwrap_FirstStep;          /* '<S361>/Unwrap' */
} rtDW_SpeedControl_mcb_pmsm_foc_;

/* Block signals (default storage) */
typedef struct {
  uint32_T DataStoreRead;              /* '<S5>/Data Store Read' */
  uint32_T ReadGPIODATregister;        /* '<S334>/Read GPIO DAT register' */
  uint32_T Hall_C;                     /* '<S334>/Hall_C' */
  uint32_T ShiftArithmetic;            /* '<S334>/Shift Arithmetic' */
  uint32_T Hall_B;                     /* '<S334>/Hall_B' */
  uint32_T ShiftArithmetic1;           /* '<S334>/Shift Arithmetic1' */
  uint32_T Hall_A;                     /* '<S334>/Hall_A' */
  uint32_T ShiftArithmetic2;           /* '<S334>/Shift Arithmetic2' */
  uint32_T BitwiseOperator2;           /* '<S334>/Bitwise Operator2' */
  uint32_T eCAP[2];                    /* '<S335>/eCAP' */
  uint32_T Switch;                     /* '<S5>/Switch' */
  uint32_T DataStoreRead_o;            /* '<S4>/Data Store Read' */
  uint32_T ReadGPIODATregister_n;      /* '<S312>/Read GPIO DAT register' */
  uint32_T Hall_C_f;                   /* '<S312>/Hall_C' */
  uint32_T ShiftArithmetic_b;          /* '<S312>/Shift Arithmetic' */
  uint32_T Hall_B_m;                   /* '<S312>/Hall_B' */
  uint32_T ShiftArithmetic1_j;         /* '<S312>/Shift Arithmetic1' */
  uint32_T Hall_A_e;                   /* '<S312>/Hall_A' */
  uint32_T ShiftArithmetic2_k;         /* '<S312>/Shift Arithmetic2' */
  uint32_T BitwiseOperator2_m;         /* '<S312>/Bitwise Operator2' */
  uint32_T eCAP_c[2];                  /* '<S313>/eCAP' */
  uint32_T Switch_l;                   /* '<S4>/Switch' */
  uint32_T DataStoreRead_p;            /* '<S3>/Data Store Read' */
  uint32_T ReadGPIODATregister_g;      /* '<S290>/Read GPIO DAT register' */
  uint32_T Hall_C_n;                   /* '<S290>/Hall_C' */
  uint32_T ShiftArithmetic_e;          /* '<S290>/Shift Arithmetic' */
  uint32_T Hall_B_i;                   /* '<S290>/Hall_B' */
  uint32_T ShiftArithmetic1_jb;        /* '<S290>/Shift Arithmetic1' */
  uint32_T Hall_A_k;                   /* '<S290>/Hall_A' */
  uint32_T ShiftArithmetic2_i;         /* '<S290>/Shift Arithmetic2' */
  uint32_T BitwiseOperator2_n;         /* '<S290>/Bitwise Operator2' */
  uint32_T eCAP_l[2];                  /* '<S291>/eCAP' */
  uint32_T Switch_e;                   /* '<S3>/Switch' */
  uint32_T speedCountDelay;            /* '<S185>/speedCountDelay' */
  uint32_T Sum[4];                     /* '<S155>/Sum' */
  uint32_T BytePack[2];                /* '<S235>/Byte Pack' */
  uint32_T SCI_Tx_Data[3];             /* '<S233>/Merge' */
  uint32_T SCI_Tx_Iteration;           /* '<S233>/Merge1' */
  uint32_T Sum_k[4];                   /* '<S145>/Sum' */
  uint32_T IndexVector;                /* '<S234>/Index Vector' */
  uint32_T Add;                        /* '<S234>/Add' */
  uint32_T Data[2];                    /* '<S237>/Data' */
  uint32_T Data_f[2];                  /* '<S238>/Data' */
  uint32_T Data_fw[2];                 /* '<S239>/Data' */
  uint32_T Input;                      /* '<S176>/Input' */
  uint32_T Max;                        /* '<S189>/Max' */
  uint32_T UnitDelay;                  /* '<S179>/Unit Delay' */
  uint32_T Merge;                      /* '<S179>/Merge' */
  uint32_T DataStoreRead2;             /* '<S172>/Data Store Read2' */
  uint32_T ReadGPIODATregister_p;      /* '<S184>/Read GPIO DAT register' */
  uint32_T Hall_C_e;                   /* '<S184>/Hall_C' */
  uint32_T ShiftArithmetic_l;          /* '<S184>/Shift Arithmetic' */
  uint32_T Hall_B_e;                   /* '<S184>/Hall_B' */
  uint32_T ShiftArithmetic1_c;         /* '<S184>/Shift Arithmetic1' */
  uint32_T Hall_A_d;                   /* '<S184>/Hall_A' */
  uint32_T ShiftArithmetic2_kn;        /* '<S184>/Shift Arithmetic2' */
  uint32_T BitwiseOperator2_g;         /* '<S184>/Bitwise Operator2' */
  uint32_T MemoryCopy;                 /* '<S178>/Memory Copy' */
  uint32_T MemoryCopy1;                /* '<S178>/Memory Copy1' */
  uint32_T MemoryCopy2;                /* '<S178>/Memory Copy2' */
  uint32_T Min;                        /* '<S178>/Min' */
  uint32_T ReadGPIODATregister_nt;     /* '<S180>/Read GPIO DAT register' */
  uint32_T Hall_C_fc;                  /* '<S180>/Hall_C' */
  uint32_T ShiftArithmetic_p;          /* '<S180>/Shift Arithmetic' */
  uint32_T Hall_B_f;                   /* '<S180>/Hall_B' */
  uint32_T ShiftArithmetic1_h;         /* '<S180>/Shift Arithmetic1' */
  uint32_T Hall_A_c;                   /* '<S180>/Hall_A' */
  uint32_T ShiftArithmetic2_e;         /* '<S180>/Shift Arithmetic2' */
  uint32_T BitwiseOperator2_p;         /* '<S180>/Bitwise Operator2' */
  uint32_T Gain[2];                    /* '<S171>/Gain' */
  real32_T RT6;                        /* '<Root>/RT6' */
  real32_T RT7;                        /* '<Root>/RT7' */
  real32_T RT12;                       /* '<Root>/RT12' */
  real32_T RT2[2];                     /* '<Root>/RT2' */
  real32_T RT11;                       /* '<Root>/RT11' */
  real32_T RT13;                       /* '<Root>/RT13' */
  real32_T SCIReceive[2];              /* '<S356>/SCI Receive' */
  real32_T Merge_d;                    /* '<S174>/Merge' */
  real32_T Merge1;                     /* '<S174>/Merge1' */
  real32_T Switch_h;                   /* '<S221>/Switch' */
  real32_T Merge_m;                    /* '<S222>/Merge' */
  real32_T Floor;                      /* '<S223>/Floor' */
  real32_T Add_e;                      /* '<S223>/Add' */
  real32_T CastToSingle[2];            /* '<S171>/Cast To Single' */
  real32_T GetADCVoltage[2];           /* '<S229>/Get ADC Voltage' */
  real32_T GetCurrents[2];             /* '<S229>/Get Currents' */
  real32_T PU_Conversion[2];           /* '<S229>/PU_Conversion' */
  real32_T DataStoreRead1;             /* '<S12>/Data Store Read1' */
  real32_T Merge1_m;                   /* '<S18>/Merge1' */
  real32_T Merge_mm;                   /* '<S157>/Merge' */
  real32_T indexing;                   /* '<S155>/indexing' */
  real32_T Lookup[4];                  /* '<S155>/Lookup' */
  real32_T Sum3;                       /* '<S156>/Sum3' */
  real32_T DataTypeConversion1;        /* '<S155>/Data Type Conversion1' */
  real32_T Sum2;                       /* '<S155>/Sum2' */
  real32_T Product;                    /* '<S156>/Product' */
  real32_T Sum4;                       /* '<S156>/Sum4' */
  real32_T Sum5;                       /* '<S156>/Sum5' */
  real32_T Product1;                   /* '<S156>/Product1' */
  real32_T Sum6;                       /* '<S156>/Sum6' */
  real32_T Merge_o;                    /* '<S18>/Merge' */
  real32_T CastToSingle_f;             /* '<S12>/Cast To Single' */
  real32_T Sum_g;                      /* '<S28>/Sum' */
  real32_T PProdOut;                   /* '<S133>/PProd Out' */
  real32_T Kp1;                        /* '<S28>/Kp1' */
  real32_T Integrator;                 /* '<S128>/Integrator' */
  real32_T Sum_m;                      /* '<S137>/Sum' */
  real32_T Saturation;                 /* '<S135>/Saturation' */
  real32_T Sum_b;                      /* '<S27>/Sum' */
  real32_T PProdOut_b;                 /* '<S82>/PProd Out' */
  real32_T Ki1;                        /* '<S27>/Ki1' */
  real32_T Integrator_o;               /* '<S77>/Integrator' */
  real32_T Sum_h;                      /* '<S86>/Sum' */
  real32_T Saturation_j;               /* '<S84>/Saturation' */
  real32_T Switch_j;                   /* '<S31>/Switch' */
  real32_T Product_b;                  /* '<S31>/Product' */
  real32_T Product_e;                  /* '<S32>/Product' */
  real32_T Product1_b;                 /* '<S32>/Product1' */
  real32_T Sum1;                       /* '<S32>/Sum1' */
  real32_T Merge_do[2];                /* '<S26>/Merge' */
  real32_T TmpSignalConversionAtSelectorIn[15];
  real32_T Selector[2];                /* '<S12>/Selector' */
  real32_T DeadZone;                   /* '<S70>/DeadZone' */
  real32_T IProdOut;                   /* '<S74>/IProd Out' */
  real32_T Switch_b;                   /* '<S68>/Switch' */
  real32_T DeadZone_g;                 /* '<S121>/DeadZone' */
  real32_T IProdOut_h;                 /* '<S125>/IProd Out' */
  real32_T Switch_ls;                  /* '<S119>/Switch' */
  real32_T Merge_p;                    /* '<S148>/Merge' */
  real32_T indexing_i;                 /* '<S145>/indexing' */
  real32_T DataTypeConversion1_f;      /* '<S145>/Data Type Conversion1' */
  real32_T Lookup_f[4];                /* '<S145>/Lookup' */
  real32_T Sum3_c;                     /* '<S147>/Sum3' */
  real32_T Sum2_p;                     /* '<S145>/Sum2' */
  real32_T Product_d;                  /* '<S147>/Product' */
  real32_T Sum5_k;                     /* '<S147>/Sum5' */
  real32_T Product1_p;                 /* '<S147>/Product1' */
  real32_T Sum4_j;                     /* '<S147>/Sum4' */
  real32_T Sum6_e;                     /* '<S147>/Sum6' */
  real32_T DataTypeConversion;         /* '<S15>/Data Type Conversion' */
  real32_T Switch_f;                   /* '<S230>/Switch' */
  real32_T Speed_PU;                   /* '<S1>/Input Scaling' */
  real32_T Switch_g;                   /* '<S247>/Switch' */
  real32_T Merge_pw;                   /* '<S248>/Merge' */
  real32_T Floor_k;                    /* '<S249>/Floor' */
  real32_T Add_l;                      /* '<S249>/Add' */
  real32_T sqrt3_by_two;               /* '<S168>/sqrt3_by_two' */
  real32_T one_by_two;                 /* '<S168>/one_by_two' */
  real32_T add_c;                      /* '<S168>/add_c' */
  real32_T add_b;                      /* '<S168>/add_b' */
  real32_T Min_a;                      /* '<S165>/Min' */
  real32_T Max_h;                      /* '<S165>/Max' */
  real32_T Add_i;                      /* '<S165>/Add' */
  real32_T one_by_two_b;               /* '<S165>/one_by_two' */
  real32_T Add3;                       /* '<S164>/Add3' */
  real32_T Add2;                       /* '<S164>/Add2' */
  real32_T Add1;                       /* '<S164>/Add1' */
  real32_T Gain_o[3];                  /* '<S164>/Gain' */
  real32_T Gain_m[3];                  /* '<S15>/Gain' */
  real32_T PWM_Duty_Cycles[3];         /* '<S15>/Sum' */
  real32_T currentSpeedData;           /* '<S188>/currentSpeedData' */
  real32_T Divide;                     /* '<S188>/Divide' */
  real32_T SpeedGain;                  /* '<S188>/SpeedGain' */
  real32_T Merge1_l;                   /* '<S201>/Merge1' */
  real32_T Saturation_k;               /* '<S201>/Saturation' */
  real32_T Merge_c;                    /* '<S201>/Merge' */
  real32_T countData;                  /* '<S204>/countData' */
  real32_T currentSpeedData_k;         /* '<S204>/currentSpeedData' */
  real32_T Divide_f;                   /* '<S204>/Divide' */
  real32_T countData_o;                /* '<S205>/countData' */
  real32_T previousSpeedData;          /* '<S205>/previousSpeedData' */
  real32_T Divide_i;                   /* '<S205>/Divide' */
  real32_T currentSpeedData_o;         /* '<S205>/currentSpeedData' */
  real32_T Divide1;                    /* '<S205>/Divide1' */
  real32_T Sum_n;                      /* '<S205>/Sum' */
  real32_T Gain1;                      /* '<S205>/Gain1' */
  real32_T Sum1_i;                     /* '<S205>/Sum1' */
  real32_T Product_i;                  /* '<S205>/Product' */
  real32_T Merge1_la;                  /* '<S202>/Merge1' */
  real32_T Merge1_d;                   /* '<S203>/Merge1' */
  real32_T acos_e;                     /* '<S154>/acos' */
  real32_T bsin;                       /* '<S154>/bsin' */
  real32_T sum_Ds;                     /* '<S154>/sum_Ds' */
  real32_T bcos;                       /* '<S154>/bcos' */
  real32_T asin_j;                     /* '<S154>/asin' */
  real32_T sum_Qs;                     /* '<S154>/sum_Qs' */
  real32_T Switch_fd[2];               /* '<S161>/Switch' */
  real32_T algDD_o1;
  real32_T algDD_o2;
  real32_T qcos;                       /* '<S146>/qcos' */
  real32_T dsin;                       /* '<S146>/dsin' */
  real32_T sum_beta;                   /* '<S146>/sum_beta' */
  real32_T dcos;                       /* '<S146>/dcos' */
  real32_T qsin;                       /* '<S146>/qsin' */
  real32_T sum_alpha;                  /* '<S146>/sum_alpha' */
  real32_T Switch_k[2];                /* '<S152>/Switch' */
  real32_T algDD_o1_c;
  real32_T algDD_o2_e;
  real32_T Product_ie[2];              /* '<S33>/Product' */
  real32_T SquareRoot;                 /* '<S33>/Square Root' */
  real32_T Switch_o;                   /* '<S33>/Switch' */
  real32_T Reciprocal;                 /* '<S33>/Reciprocal' */
  real32_T Switch_hp[2];               /* '<S30>/Switch' */
  real32_T Switch2;                    /* '<S40>/Switch2' */
  real32_T Product_a;                  /* '<S39>/Product' */
  real32_T Sum_nl;                     /* '<S39>/Sum' */
  real32_T Product2;                   /* '<S39>/Product2' */
  real32_T Merge_me;                   /* '<S39>/Merge' */
  real32_T Gain_e;                     /* '<S39>/Gain' */
  real32_T Switch_c;                   /* '<S40>/Switch' */
  real32_T Switch1;                    /* '<S41>/Switch1' */
  real32_T Sqrt;                       /* '<S41>/Sqrt' */
  real32_T Gain_c;                     /* '<S41>/Gain' */
  real32_T a_plus_2b;                  /* '<S25>/a_plus_2b' */
  real32_T one_by_sqrt3;               /* '<S25>/one_by_sqrt3' */
  real32_T algDD_o1_a;
  real32_T algDD_o2_n;
  int32_T DataTypeConversion_f[2];     /* '<S171>/Data Type Conversion' */
  int32_T Add_f[2];                    /* '<S171>/Add' */
  uint16_T RT9;                        /* '<Root>/RT9' */
  uint16_T Divide_ir;                  /* '<S338>/Divide' */
  uint16_T Divide1_e;                  /* '<S338>/Divide1' */
  uint16_T ForIterator;                /* '<S341>/For Iterator' */
  uint16_T ADC_A_IN0;                  /* '<S341>/ADC_A_IN0' */
  uint16_T ADC_B_IN0;                  /* '<S341>/ADC_B_IN0' */
  uint16_T Memory;                     /* '<S346>/Memory' */
  uint16_T Sum_i;                      /* '<S346>/Sum' */
  uint16_T Memory1;                    /* '<S346>/Memory1' */
  uint16_T Sum1_j;                     /* '<S346>/Sum1' */
  uint16_T DataTypeConversion2;        /* '<S354>/Data Type Conversion2' */
  uint16_T BitwiseOperator;            /* '<S353>/Bitwise Operator' */
  uint16_T BitwiseOperator1;           /* '<S353>/Bitwise Operator1' */
  uint16_T ShiftArithmetic1_d;         /* '<S353>/Shift Arithmetic1' */
  uint16_T DataTypeConversion1_o;      /* '<S315>/Data Type Conversion1' */
  uint16_T DataTypeConversion2_p;      /* '<S315>/Data Type Conversion2' */
  uint16_T DataTypeConversion_n;       /* '<S320>/Data Type Conversion' */
  uint16_T Merge_pc;                   /* '<S320>/Merge' */
  uint16_T DataTypeConversion1_n;      /* '<S293>/Data Type Conversion1' */
  uint16_T DataTypeConversion2_g;      /* '<S293>/Data Type Conversion2' */
  uint16_T DataTypeConversion_j;       /* '<S298>/Data Type Conversion' */
  uint16_T Merge_j;                    /* '<S298>/Merge' */
  uint16_T DataTypeConversion1_d;      /* '<S271>/Data Type Conversion1' */
  uint16_T DataTypeConversion2_c;      /* '<S271>/Data Type Conversion2' */
  uint16_T DataTypeConversion_p;       /* '<S276>/Data Type Conversion' */
  uint16_T Merge_k;                    /* '<S276>/Merge' */
  uint16_T Switch_a;                   /* '<S174>/Switch' */
  uint16_T Switch_m;                   /* '<S185>/Switch' */
  uint16_T DelayOneStep;               /* '<S186>/Delay One Step' */
  uint16_T watchdogcheck;              /* '<S189>/watchdog check' */
  uint16_T Sum_m3;                     /* '<S186>/Sum' */
  uint16_T DataStoreRead_k;            /* '<S171>/Data Store Read' */
  uint16_T DataStoreRead1_h;           /* '<S171>/Data Store Read1' */
  uint16_T ADC_C_IN2;                  /* '<S242>/ADC_C_IN2' */
  uint16_T ADC_B_IN2;                  /* '<S242>/ADC_B_IN2' */
  uint16_T TmpSignalConversionAtGainInport[2];
  uint16_T Output;                     /* '<S236>/Output' */
  uint16_T DataTypeConversion_m;       /* '<S157>/Data Type Conversion' */
  uint16_T Get_Integer;                /* '<S155>/Get_Integer' */
  uint16_T Switch1_o;                  /* '<S31>/Switch1' */
  uint16_T DataStoreRead_g;            /* '<S12>/Data Store Read' */
  uint16_T MultiportSwitch[2];         /* '<S12>/Multiport Switch' */
  uint16_T FixPtSum1;                  /* '<S240>/FixPt Sum1' */
  uint16_T FixPtSwitch;                /* '<S241>/FixPt Switch' */
  uint16_T DataTypeConversion_e;       /* '<S148>/Data Type Conversion' */
  uint16_T Get_Integer_f;              /* '<S145>/Get_Integer' */
  uint16_T Switch1_f[3];               /* '<S230>/Switch1' */
  uint16_T Scale_to_PWM_Counter_PRD[3];/* '<S230>/Scale_to_PWM_Counter_PRD' */
  uint16_T speedcheck;                 /* '<S189>/speed check' */
  uint16_T DataStoreRead5;             /* '<S172>/Data Store Read5' */
  uint16_T DataStoreRead4;             /* '<S172>/Data Store Read4' */
  uint16_T DataTypeConversion_jg;      /* '<S29>/Data Type Conversion' */
  uint16_T DataTypeConversion_nl;      /* '<S39>/Data Type Conversion' */
  int16_T DataStoreRead1_k;            /* '<S5>/Data Store Read1' */
  int16_T Merge1_k;                    /* '<S320>/Merge1' */
  int16_T DataStoreRead1_kl;           /* '<S4>/Data Store Read1' */
  int16_T Merge1_a;                    /* '<S298>/Merge1' */
  int16_T DataStoreRead1_o;            /* '<S3>/Data Store Read1' */
  int16_T Merge1_kl;                   /* '<S276>/Merge1' */
  int16_T WhileIterator;               /* '<S234>/While Iterator' */
  int16_T DataStoreRead3;              /* '<S172>/Data Store Read3' */
  uint16_T Compare;                    /* '<S181>/Compare' */
  int16_T Switch1_i;                   /* '<S68>/Switch1' */
  int16_T Switch2_a;                   /* '<S68>/Switch2' */
  int16_T Switch1_j;                   /* '<S119>/Switch1' */
  int16_T Switch2_b;                   /* '<S119>/Switch2' */
  boolean_T Switch_bt;                 /* '<S339>/Switch' */
  boolean_T NOT;                       /* '<S337>/NOT' */
  boolean_T DataTypeConversion3;       /* '<S353>/Data Type Conversion3' */
  boolean_T Merge3;                    /* '<S320>/Merge3' */
  boolean_T Merge_pt;                  /* '<S314>/Merge' */
  boolean_T Merge3_o;                  /* '<S298>/Merge3' */
  boolean_T Merge_f;                   /* '<S292>/Merge' */
  boolean_T Merge3_m;                  /* '<S276>/Merge3' */
  boolean_T Merge_n;                   /* '<S270>/Merge' */
  boolean_T Compare_e;                 /* '<S173>/Compare' */
  boolean_T DataTypeConversion4;       /* '<S174>/Data Type Conversion4' */
  boolean_T DataTypeConversion_nh;     /* '<S185>/Data Type Conversion' */
  boolean_T validityDelay;             /* '<S185>/validityDelay' */
  boolean_T DelayOneStep1;             /* '<S186>/Delay One Step1' */
  boolean_T OR;                        /* '<S186>/OR' */
  boolean_T Compare_n;                 /* '<S190>/Compare' */
  boolean_T Compare_d;                 /* '<S158>/Compare' */
  boolean_T DataStoreRead1_b;          /* '<S28>/Data Store Read1' */
  boolean_T LogicalOperator;           /* '<S28>/Logical Operator' */
  boolean_T DataStoreRead1_g;          /* '<S27>/Data Store Read1' */
  boolean_T LogicalOperator_j;         /* '<S27>/Logical Operator' */
  boolean_T RelationalOperator;        /* '<S68>/Relational Operator' */
  boolean_T fixforDTpropagationissue; /* '<S68>/fix for DT propagation issue' */
  boolean_T fixforDTpropagationissue1;
                                     /* '<S68>/fix for DT propagation issue1' */
  boolean_T Equal1;                    /* '<S68>/Equal1' */
  boolean_T AND3;                      /* '<S68>/AND3' */
  boolean_T RelationalOperator_m;      /* '<S119>/Relational Operator' */
  boolean_T fixforDTpropagationissue_b;
                                     /* '<S119>/fix for DT propagation issue' */
  boolean_T fixforDTpropagationissue1_h;
                                    /* '<S119>/fix for DT propagation issue1' */
  boolean_T Equal1_d;                  /* '<S119>/Equal1' */
  boolean_T AND3_f;                    /* '<S119>/AND3' */
  boolean_T Compare_nf;                /* '<S149>/Compare' */
  boolean_T Enable;                    /* '<S15>/Enable' */
  boolean_T LogicalOperator_a;         /* '<S185>/Logical Operator' */
  boolean_T RelationalOperator_k;      /* '<S179>/Relational Operator' */
  boolean_T NOT_b;                     /* '<S179>/NOT' */
  boolean_T RelationalOperator_h;      /* '<S29>/Relational Operator' */
  boolean_T Compare_h;                 /* '<S35>/Compare' */
  boolean_T Compare_nfz;               /* '<S36>/Compare' */
  boolean_T LowerRelop1;               /* '<S40>/LowerRelop1' */
  boolean_T RelationalOperator_i;      /* '<S39>/Relational Operator' */
  boolean_T UpperRelop;                /* '<S40>/UpperRelop' */
  rtB_SpeedControl_mcb_pmsm_foc_h SpeedControl;/* '<Root>/Speed Control' */
  rtB_SPIMasterTransfer2_mcb_pmsm SPIMasterTransfer3;/* '<S347>/SPI Master Transfer2' */
  rtB_SPIMasterTransfer2_mcb_pmsm SPIMasterTransfer2;/* '<S347>/SPI Master Transfer2' */
  rtB_ValidHalls_mcb_pmsm_foc_hal ValidHalls_hi;/* '<S320>/Valid Halls' */
  rtB_ValidHalls_mcb_pmsm_foc_hal ValidHalls_h;/* '<S298>/Valid Halls' */
  rtB_ValidHalls_mcb_pmsm_foc_hal ValidHalls;/* '<S276>/Valid Halls' */
  rtB_IfActionSubsystem1_mcb_pmsm IfActionSubsystem1_i;/* '<S157>/If Action Subsystem1' */
  rtB_IfActionSubsystem_mcb_pmsm_ IfActionSubsystem_n;/* '<S157>/If Action Subsystem' */
  rtB_IfActionSubsystem1_mcb_pmsm IfActionSubsystem1;/* '<S148>/If Action Subsystem1' */
  rtB_IfActionSubsystem_mcb_pmsm_ IfActionSubsystem;/* '<S148>/If Action Subsystem' */
} BlockIO_mcb_pmsm_foc_hall_f2837;

/* Block states (default storage) for system '<Root>' */
typedef struct {
  real32_T Integrator_DSTATE;          /* '<S128>/Integrator' */
  real32_T Integrator_DSTATE_j;        /* '<S77>/Integrator' */
  uint32_T UnitDelay_DSTATE;           /* '<S179>/Unit Delay' */
  volatile real32_T RT6_Buffer[2];     /* '<Root>/RT6' */
  volatile real32_T RT7_Buffer[2];     /* '<Root>/RT7' */
  volatile real32_T RT12_Buffer[2];    /* '<Root>/RT12' */
  volatile real32_T RT11_Buffer[2];    /* '<Root>/RT11' */
  volatile real32_T RT13_Buffer[2];    /* '<Root>/RT13' */
  volatile real32_T RT2_Buffer[4];     /* '<Root>/RT2' */
  real32_T Speed_ref;                  /* '<Root>/Data Store Memory8' */
  int32_T DigitalOutput2_FRAC_LEN;     /* '<S349>/Digital Output2' */
  int32_T DRV830xEnable_FRAC_LEN;      /* '<S339>/DRV830x Enable' */
  int32_T Add_DWORK1[2];               /* '<S171>/Add' */
  int32_T InverterEnable_FRAC_LEN;     /* '<S230>/Inverter Enable' */
  uint32_T GlobalSpeedCount;           /* '<Root>/Data Store Memory1' */
  uint32_T GlobalHallState;            /* '<Root>/Data Store Memory4' */
  uint32_T Sum_DWORK1[4];              /* '<S155>/Sum' */
  uint32_T Add_DWORK1_j;               /* '<S234>/Add' */
  uint16_T DelayOneStep_DSTATE;        /* '<S186>/Delay One Step' */
  uint16_T Output_DSTATE;              /* '<S236>/Output' */
  volatile int16_T RT6_ActiveBufIdx;   /* '<Root>/RT6' */
  volatile int16_T RT7_ActiveBufIdx;   /* '<Root>/RT7' */
  volatile int16_T RT7_semaphoreTaken; /* '<Root>/RT7' */
  volatile int16_T RT12_ActiveBufIdx;  /* '<Root>/RT12' */
  volatile int16_T RT12_semaphoreTaken;/* '<Root>/RT12' */
  volatile int16_T RT11_ActiveBufIdx;  /* '<Root>/RT11' */
  volatile int16_T RT13_ActiveBufIdx;  /* '<Root>/RT13' */
  volatile int16_T RT2_ActiveBufIdx;   /* '<Root>/RT2' */
  int16_T GlobalDirection;             /* '<Root>/Data Store Memory3' */
  volatile uint16_T RT9_Buffer0;       /* '<Root>/RT9' */
  uint16_T HallStateChangeFlag;        /* '<Root>/Data Store Memory' */
  uint16_T GlobalSpeedValidity;        /* '<Root>/Data Store Memory2' */
  uint16_T IaOffset;                   /* '<Root>/Data Store Memory5' */
  uint16_T IbOffset;                   /* '<Root>/Data Store Memory6' */
  uint16_T Debug_signals;              /* '<Root>/Data Store Memory7' */
  uint16_T Memory_PreviousInput;       /* '<S346>/Memory' */
  uint16_T Memory1_PreviousInput;      /* '<S346>/Memory1' */
  boolean_T DelayOneStep1_DSTATE;      /* '<S186>/Delay One Step1' */
  int16_T Integrator_PrevResetState;   /* '<S128>/Integrator' */
  int16_T Integrator_PrevResetState_m; /* '<S77>/Integrator' */
  boolean_T Enable;                    /* '<Root>/Data Store Memory29' */
  boolean_T EnClosedLoop;              /* '<Root>/Data Store Memory9' */
  rtDW_SpeedControl_mcb_pmsm_foc_ SpeedControl;/* '<Root>/Speed Control' */
  rtDW_SPIMasterTransfer2_mcb_pms SPIMasterTransfer3;/* '<S347>/SPI Master Transfer2' */
  rtDW_SPIMasterTransfer2_mcb_pms SPIMasterTransfer2;/* '<S347>/SPI Master Transfer2' */
} D_Work_mcb_pmsm_foc_hall_f28379;

/* Invariant block signals (default storage) */
typedef struct {
  const uint32_T Width;                /* '<S233>/Width' */
  const real32_T SpeedConstData;       /* '<S188>/SpeedConstData' */
} ConstBlockIO_mcb_pmsm_foc_hall_;

/* Constant parameters (default storage) */
typedef struct {
  /* Pooled Parameter (Expression: )
   * Referenced by:
   *   '<S145>/sine_table_values'
   *   '<S155>/sine_table_values'
   */
  real32_T pooled13[1002];
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
      uint16_T TID[2];
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
 * '<S1>'   : 'mcb_pmsm_foc_hall_f28379d/Current Control'
 * '<S2>'   : 'mcb_pmsm_foc_hall_f28379d/HW Interrupt'
 * '<S3>'   : 'mcb_pmsm_foc_hall_f28379d/Hall Sensor A'
 * '<S4>'   : 'mcb_pmsm_foc_hall_f28379d/Hall Sensor B'
 * '<S5>'   : 'mcb_pmsm_foc_hall_f28379d/Hall Sensor C'
 * '<S6>'   : 'mcb_pmsm_foc_hall_f28379d/Hardware Init'
 * '<S7>'   : 'mcb_pmsm_foc_hall_f28379d/Heartbeat LED'
 * '<S8>'   : 'mcb_pmsm_foc_hall_f28379d/Inverter and Motor - Plant Model'
 * '<S9>'   : 'mcb_pmsm_foc_hall_f28379d/Serial Receive'
 * '<S10>'  : 'mcb_pmsm_foc_hall_f28379d/Speed Control'
 * '<S11>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System'
 * '<S12>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Debug_signals'
 * '<S13>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Input Scaling'
 * '<S14>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Inverter'
 * '<S15>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Output Scaling'
 * '<S16>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/SCI_Tx'
 * '<S17>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Sensor Driver Blocks'
 * '<S18>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Subsystem'
 * '<S19>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Clarke Transform'
 * '<S20>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers'
 * '<S21>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Inverse Park Transform'
 * '<S22>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Park Transform'
 * '<S23>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Space Vector Generator'
 * '<S24>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Clarke Transform/Two phase input'
 * '<S25>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Clarke Transform/Two phase input/Two phase CRL wrap'
 * '<S26>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/DQ Limiter'
 * '<S27>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id'
 * '<S28>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq'
 * '<S29>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/DQ Limiter/D-Q Equivalence'
 * '<S30>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/DQ Limiter/D//Q Axis Priority'
 * '<S31>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/DQ Limiter/Inport//Dialog Selection'
 * '<S32>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/DQ Limiter/Magnitude_calc'
 * '<S33>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/DQ Limiter/D-Q Equivalence/Limiter'
 * '<S34>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/DQ Limiter/D-Q Equivalence/Passthrough'
 * '<S35>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/DQ Limiter/D//Q Axis Priority/Compare To Constant'
 * '<S36>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/DQ Limiter/D//Q Axis Priority/Compare To Constant1'
 * '<S37>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/DQ Limiter/D//Q Axis Priority/flipInputs'
 * '<S38>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/DQ Limiter/D//Q Axis Priority/flipInputs1'
 * '<S39>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/DQ Limiter/D//Q Axis Priority/limiter'
 * '<S40>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/DQ Limiter/D//Q Axis Priority/limiter/limitRef1'
 * '<S41>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/DQ Limiter/D//Q Axis Priority/limiter/limitRef2'
 * '<S42>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/DQ Limiter/D//Q Axis Priority/limiter/passThrough'
 * '<S43>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset'
 * '<S44>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Anti-windup'
 * '<S45>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/D Gain'
 * '<S46>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Filter'
 * '<S47>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Filter ICs'
 * '<S48>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/I Gain'
 * '<S49>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Ideal P Gain'
 * '<S50>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Ideal P Gain Fdbk'
 * '<S51>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Integrator'
 * '<S52>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Integrator ICs'
 * '<S53>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/N Copy'
 * '<S54>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/N Gain'
 * '<S55>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/P Copy'
 * '<S56>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Parallel P Gain'
 * '<S57>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Reset Signal'
 * '<S58>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Saturation'
 * '<S59>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Saturation Fdbk'
 * '<S60>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Sum'
 * '<S61>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Sum Fdbk'
 * '<S62>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Tracking Mode'
 * '<S63>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Tracking Mode Sum'
 * '<S64>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Tsamp - Integral'
 * '<S65>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Tsamp - Ngain'
 * '<S66>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/postSat Signal'
 * '<S67>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/preSat Signal'
 * '<S68>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Anti-windup/Disc. Clamping Parallel'
 * '<S69>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Anti-windup/Disc. Clamping Parallel/Dead Zone'
 * '<S70>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Anti-windup/Disc. Clamping Parallel/Dead Zone/Enabled'
 * '<S71>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/D Gain/Disabled'
 * '<S72>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Filter/Disabled'
 * '<S73>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Filter ICs/Disabled'
 * '<S74>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/I Gain/External Parameters'
 * '<S75>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Ideal P Gain/Passthrough'
 * '<S76>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Ideal P Gain Fdbk/Disabled'
 * '<S77>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Integrator/Discrete'
 * '<S78>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Integrator ICs/External IC'
 * '<S79>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/N Copy/Disabled wSignal Specification'
 * '<S80>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/N Gain/Disabled'
 * '<S81>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/P Copy/Disabled'
 * '<S82>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Parallel P Gain/External Parameters'
 * '<S83>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Reset Signal/External Reset'
 * '<S84>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Saturation/Enabled'
 * '<S85>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Saturation Fdbk/Disabled'
 * '<S86>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Sum/Sum_PI'
 * '<S87>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Sum Fdbk/Disabled'
 * '<S88>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Tracking Mode/Disabled'
 * '<S89>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Tracking Mode Sum/Passthrough'
 * '<S90>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Tsamp - Integral/TsSignalSpecification'
 * '<S91>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Tsamp - Ngain/Passthrough'
 * '<S92>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/postSat Signal/Forward_Path'
 * '<S93>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/preSat Signal/Forward_Path'
 * '<S94>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset'
 * '<S95>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Anti-windup'
 * '<S96>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/D Gain'
 * '<S97>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Filter'
 * '<S98>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Filter ICs'
 * '<S99>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/I Gain'
 * '<S100>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Ideal P Gain'
 * '<S101>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Ideal P Gain Fdbk'
 * '<S102>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Integrator'
 * '<S103>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Integrator ICs'
 * '<S104>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/N Copy'
 * '<S105>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/N Gain'
 * '<S106>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/P Copy'
 * '<S107>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Parallel P Gain'
 * '<S108>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Reset Signal'
 * '<S109>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Saturation'
 * '<S110>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Saturation Fdbk'
 * '<S111>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Sum'
 * '<S112>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Sum Fdbk'
 * '<S113>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Tracking Mode'
 * '<S114>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Tracking Mode Sum'
 * '<S115>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Tsamp - Integral'
 * '<S116>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Tsamp - Ngain'
 * '<S117>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/postSat Signal'
 * '<S118>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/preSat Signal'
 * '<S119>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Anti-windup/Disc. Clamping Parallel'
 * '<S120>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Anti-windup/Disc. Clamping Parallel/Dead Zone'
 * '<S121>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Anti-windup/Disc. Clamping Parallel/Dead Zone/Enabled'
 * '<S122>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/D Gain/Disabled'
 * '<S123>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Filter/Disabled'
 * '<S124>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Filter ICs/Disabled'
 * '<S125>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/I Gain/External Parameters'
 * '<S126>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Ideal P Gain/Passthrough'
 * '<S127>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Ideal P Gain Fdbk/Disabled'
 * '<S128>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Integrator/Discrete'
 * '<S129>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Integrator ICs/External IC'
 * '<S130>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/N Copy/Disabled wSignal Specification'
 * '<S131>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/N Gain/Disabled'
 * '<S132>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/P Copy/Disabled'
 * '<S133>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Parallel P Gain/External Parameters'
 * '<S134>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Reset Signal/External Reset'
 * '<S135>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Saturation/Enabled'
 * '<S136>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Saturation Fdbk/Disabled'
 * '<S137>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Sum/Sum_PI'
 * '<S138>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Sum Fdbk/Disabled'
 * '<S139>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Tracking Mode/Disabled'
 * '<S140>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Tracking Mode Sum/Passthrough'
 * '<S141>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Tsamp - Integral/TsSignalSpecification'
 * '<S142>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Tsamp - Ngain/Passthrough'
 * '<S143>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/postSat Signal/Forward_Path'
 * '<S144>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/preSat Signal/Forward_Path'
 * '<S145>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Inverse Park Transform/Sine Cosine'
 * '<S146>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Inverse Park Transform/Two inputs CRL'
 * '<S147>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Inverse Park Transform/Sine Cosine/Interpolation'
 * '<S148>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Inverse Park Transform/Sine Cosine/WrapUp'
 * '<S149>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Inverse Park Transform/Sine Cosine/WrapUp/Compare To Zero'
 * '<S150>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Inverse Park Transform/Sine Cosine/WrapUp/If Action Subsystem'
 * '<S151>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Inverse Park Transform/Sine Cosine/WrapUp/If Action Subsystem1'
 * '<S152>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Inverse Park Transform/Two inputs CRL/Switch_Axis'
 * '<S153>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Park Transform/Sine Cosine'
 * '<S154>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Park Transform/Two inputs CRL'
 * '<S155>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Park Transform/Sine Cosine/Sine-Cosine Lookup'
 * '<S156>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Park Transform/Sine Cosine/Sine-Cosine Lookup/Interpolation'
 * '<S157>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Park Transform/Sine Cosine/Sine-Cosine Lookup/WrapUp'
 * '<S158>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Park Transform/Sine Cosine/Sine-Cosine Lookup/WrapUp/Compare To Zero'
 * '<S159>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Park Transform/Sine Cosine/Sine-Cosine Lookup/WrapUp/If Action Subsystem'
 * '<S160>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Park Transform/Sine Cosine/Sine-Cosine Lookup/WrapUp/If Action Subsystem1'
 * '<S161>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Park Transform/Two inputs CRL/Switch_Axis'
 * '<S162>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Space Vector Generator/Modulation method'
 * '<S163>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Space Vector Generator/Voltage Input'
 * '<S164>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Space Vector Generator/Modulation method/SVPWM'
 * '<S165>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Space Vector Generator/Modulation method/SVPWM/Half(Vmin+Vmax)'
 * '<S166>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Space Vector Generator/Voltage Input/Valphabeta'
 * '<S167>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Space Vector Generator/Voltage Input/Valphabeta/Inverse Clarke Transform'
 * '<S168>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Space Vector Generator/Voltage Input/Valphabeta/Inverse Clarke Transform/Two phase input'
 * '<S169>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Input Scaling/Read_Sensor (codegen)'
 * '<S170>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Input Scaling/Read_Sensor (codegen)/Calculate Position from Hall'
 * '<S171>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Input Scaling/Read_Sensor (codegen)/Convert ADC value to PU'
 * '<S172>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Input Scaling/Read_Sensor (codegen)/Calculate Position from Hall/Atomic Hall Reading'
 * '<S173>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Input Scaling/Read_Sensor (codegen)/Calculate Position from Hall/Glitch Filter'
 * '<S174>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Input Scaling/Read_Sensor (codegen)/Calculate Position from Hall/Hall Speed and Position'
 * '<S175>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Input Scaling/Read_Sensor (codegen)/Calculate Position from Hall/Mechanical to Electrical Position1'
 * '<S176>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Input Scaling/Read_Sensor (codegen)/Calculate Position from Hall/Subsystem'
 * '<S177>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Input Scaling/Read_Sensor (codegen)/Calculate Position from Hall/Atomic Hall Reading/Function-Call Subsystem'
 * '<S178>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Input Scaling/Read_Sensor (codegen)/Calculate Position from Hall/Atomic Hall Reading/Function-Call Subsystem1'
 * '<S179>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Input Scaling/Read_Sensor (codegen)/Calculate Position from Hall/Atomic Hall Reading/Integrity_Check'
 * '<S180>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Input Scaling/Read_Sensor (codegen)/Calculate Position from Hall/Atomic Hall Reading/Function-Call Subsystem/Read Halls'
 * '<S181>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Input Scaling/Read_Sensor (codegen)/Calculate Position from Hall/Atomic Hall Reading/Integrity_Check/Compare To Constant'
 * '<S182>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Input Scaling/Read_Sensor (codegen)/Calculate Position from Hall/Atomic Hall Reading/Integrity_Check/No_Integrity_issue'
 * '<S183>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Input Scaling/Read_Sensor (codegen)/Calculate Position from Hall/Atomic Hall Reading/Integrity_Check/Refresh_Halls'
 * '<S184>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Input Scaling/Read_Sensor (codegen)/Calculate Position from Hall/Atomic Hall Reading/Integrity_Check/Refresh_Halls/Read Halls'
 * '<S185>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Input Scaling/Read_Sensor (codegen)/Calculate Position from Hall/Hall Speed and Position/ExtrapolationOrder'
 * '<S186>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Input Scaling/Read_Sensor (codegen)/Calculate Position from Hall/Hall Speed and Position/Software Watchdog Timer'
 * '<S187>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Input Scaling/Read_Sensor (codegen)/Calculate Position from Hall/Hall Speed and Position/Speed and direction are not valid Position will be set to the middle of the Hall quadrant'
 * '<S188>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Input Scaling/Read_Sensor (codegen)/Calculate Position from Hall/Hall Speed and Position/Speed and direction are valid Use speed to extrapolate position'
 * '<S189>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Input Scaling/Read_Sensor (codegen)/Calculate Position from Hall/Hall Speed and Position/VaidityCheck'
 * '<S190>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Input Scaling/Read_Sensor (codegen)/Calculate Position from Hall/Hall Speed and Position/Software Watchdog Timer/Compare To Zero'
 * '<S191>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Input Scaling/Read_Sensor (codegen)/Calculate Position from Hall/Hall Speed and Position/Speed and direction are not valid Position will be set to the middle of the Hall quadrant/independent Direction'
 * '<S192>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Input Scaling/Read_Sensor (codegen)/Calculate Position from Hall/Hall Speed and Position/Speed and direction are not valid Position will be set to the middle of the Hall quadrant/independent Direction/Hall Value of 1'
 * '<S193>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Input Scaling/Read_Sensor (codegen)/Calculate Position from Hall/Hall Speed and Position/Speed and direction are not valid Position will be set to the middle of the Hall quadrant/independent Direction/Hall Value of 2'
 * '<S194>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Input Scaling/Read_Sensor (codegen)/Calculate Position from Hall/Hall Speed and Position/Speed and direction are not valid Position will be set to the middle of the Hall quadrant/independent Direction/Hall Value of 3'
 * '<S195>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Input Scaling/Read_Sensor (codegen)/Calculate Position from Hall/Hall Speed and Position/Speed and direction are not valid Position will be set to the middle of the Hall quadrant/independent Direction/Hall Value of 4'
 * '<S196>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Input Scaling/Read_Sensor (codegen)/Calculate Position from Hall/Hall Speed and Position/Speed and direction are not valid Position will be set to the middle of the Hall quadrant/independent Direction/Hall Value of 5'
 * '<S197>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Input Scaling/Read_Sensor (codegen)/Calculate Position from Hall/Hall Speed and Position/Speed and direction are not valid Position will be set to the middle of the Hall quadrant/independent Direction/Hall Value of 6'
 * '<S198>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Input Scaling/Read_Sensor (codegen)/Calculate Position from Hall/Hall Speed and Position/Speed and direction are not valid Position will be set to the middle of the Hall quadrant/independent Direction/Hall Value of 7'
 * '<S199>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Input Scaling/Read_Sensor (codegen)/Calculate Position from Hall/Hall Speed and Position/Speed and direction are valid Use speed to extrapolate position/If Action Subsystem'
 * '<S200>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Input Scaling/Read_Sensor (codegen)/Calculate Position from Hall/Hall Speed and Position/Speed and direction are valid Use speed to extrapolate position/If Action Subsystem1'
 * '<S201>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Input Scaling/Read_Sensor (codegen)/Calculate Position from Hall/Hall Speed and Position/Speed and direction are valid Use speed to extrapolate position/Subsystem1'
 * '<S202>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Input Scaling/Read_Sensor (codegen)/Calculate Position from Hall/Hall Speed and Position/Speed and direction are valid Use speed to extrapolate position/Subsystem1/+ve Direction'
 * '<S203>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Input Scaling/Read_Sensor (codegen)/Calculate Position from Hall/Hall Speed and Position/Speed and direction are valid Use speed to extrapolate position/Subsystem1/-ve Direction'
 * '<S204>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Input Scaling/Read_Sensor (codegen)/Calculate Position from Hall/Hall Speed and Position/Speed and direction are valid Use speed to extrapolate position/Subsystem1/first_order'
 * '<S205>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Input Scaling/Read_Sensor (codegen)/Calculate Position from Hall/Hall Speed and Position/Speed and direction are valid Use speed to extrapolate position/Subsystem1/second_order'
 * '<S206>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Input Scaling/Read_Sensor (codegen)/Calculate Position from Hall/Hall Speed and Position/Speed and direction are valid Use speed to extrapolate position/Subsystem1/+ve Direction/Hall Value of 1'
 * '<S207>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Input Scaling/Read_Sensor (codegen)/Calculate Position from Hall/Hall Speed and Position/Speed and direction are valid Use speed to extrapolate position/Subsystem1/+ve Direction/Hall Value of 2'
 * '<S208>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Input Scaling/Read_Sensor (codegen)/Calculate Position from Hall/Hall Speed and Position/Speed and direction are valid Use speed to extrapolate position/Subsystem1/+ve Direction/Hall Value of 3'
 * '<S209>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Input Scaling/Read_Sensor (codegen)/Calculate Position from Hall/Hall Speed and Position/Speed and direction are valid Use speed to extrapolate position/Subsystem1/+ve Direction/Hall Value of 4'
 * '<S210>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Input Scaling/Read_Sensor (codegen)/Calculate Position from Hall/Hall Speed and Position/Speed and direction are valid Use speed to extrapolate position/Subsystem1/+ve Direction/Hall Value of 5'
 * '<S211>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Input Scaling/Read_Sensor (codegen)/Calculate Position from Hall/Hall Speed and Position/Speed and direction are valid Use speed to extrapolate position/Subsystem1/+ve Direction/Hall Value of 6'
 * '<S212>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Input Scaling/Read_Sensor (codegen)/Calculate Position from Hall/Hall Speed and Position/Speed and direction are valid Use speed to extrapolate position/Subsystem1/+ve Direction/Hall Value of 7'
 * '<S213>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Input Scaling/Read_Sensor (codegen)/Calculate Position from Hall/Hall Speed and Position/Speed and direction are valid Use speed to extrapolate position/Subsystem1/-ve Direction/Hall Value of 1'
 * '<S214>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Input Scaling/Read_Sensor (codegen)/Calculate Position from Hall/Hall Speed and Position/Speed and direction are valid Use speed to extrapolate position/Subsystem1/-ve Direction/Hall Value of 2'
 * '<S215>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Input Scaling/Read_Sensor (codegen)/Calculate Position from Hall/Hall Speed and Position/Speed and direction are valid Use speed to extrapolate position/Subsystem1/-ve Direction/Hall Value of 3'
 * '<S216>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Input Scaling/Read_Sensor (codegen)/Calculate Position from Hall/Hall Speed and Position/Speed and direction are valid Use speed to extrapolate position/Subsystem1/-ve Direction/Hall Value of 4'
 * '<S217>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Input Scaling/Read_Sensor (codegen)/Calculate Position from Hall/Hall Speed and Position/Speed and direction are valid Use speed to extrapolate position/Subsystem1/-ve Direction/Hall Value of 5'
 * '<S218>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Input Scaling/Read_Sensor (codegen)/Calculate Position from Hall/Hall Speed and Position/Speed and direction are valid Use speed to extrapolate position/Subsystem1/-ve Direction/Hall Value of 6'
 * '<S219>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Input Scaling/Read_Sensor (codegen)/Calculate Position from Hall/Hall Speed and Position/Speed and direction are valid Use speed to extrapolate position/Subsystem1/-ve Direction/Hall Value of 7'
 * '<S220>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Input Scaling/Read_Sensor (codegen)/Calculate Position from Hall/Mechanical to Electrical Position1/MechToElec'
 * '<S221>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Input Scaling/Read_Sensor (codegen)/Calculate Position from Hall/Mechanical to Electrical Position1/MechToElec/floating-point'
 * '<S222>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Input Scaling/Read_Sensor (codegen)/Calculate Position from Hall/Mechanical to Electrical Position1/MechToElec/floating-point/Compensate Offset'
 * '<S223>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Input Scaling/Read_Sensor (codegen)/Calculate Position from Hall/Mechanical to Electrical Position1/MechToElec/floating-point/Mech To Elec'
 * '<S224>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Input Scaling/Read_Sensor (codegen)/Calculate Position from Hall/Mechanical to Electrical Position1/MechToElec/floating-point/Compensate Offset/If Action Subsystem'
 * '<S225>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Input Scaling/Read_Sensor (codegen)/Calculate Position from Hall/Mechanical to Electrical Position1/MechToElec/floating-point/Compensate Offset/If Action Subsystem1'
 * '<S226>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Input Scaling/Read_Sensor (codegen)/Calculate Position from Hall/Mechanical to Electrical Position1/MechToElec/floating-point/Mech To Elec/Variant Subsystem'
 * '<S227>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Input Scaling/Read_Sensor (codegen)/Calculate Position from Hall/Mechanical to Electrical Position1/MechToElec/floating-point/Mech To Elec/Variant Subsystem/Dialog'
 * '<S228>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Input Scaling/Read_Sensor (codegen)/Convert ADC value to PU/Data_Type'
 * '<S229>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Input Scaling/Read_Sensor (codegen)/Convert ADC value to PU/Data_Type/Data_Type_Float'
 * '<S230>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Inverter/Code Generation'
 * '<S231>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/SCI_Tx/Code Generation'
 * '<S232>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/SCI_Tx/Code Generation/Data_Conditioning_Tx'
 * '<S233>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/SCI_Tx/Code Generation/Data_Logging'
 * '<S234>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/SCI_Tx/Code Generation/While Iterator Subsystem'
 * '<S235>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/SCI_Tx/Code Generation/Data_Conditioning_Tx/Data_Type_Float'
 * '<S236>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/SCI_Tx/Code Generation/Data_Logging/Counter Limited'
 * '<S237>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/SCI_Tx/Code Generation/Data_Logging/Data'
 * '<S238>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/SCI_Tx/Code Generation/Data_Logging/End'
 * '<S239>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/SCI_Tx/Code Generation/Data_Logging/Start'
 * '<S240>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/SCI_Tx/Code Generation/Data_Logging/Counter Limited/Increment Real World'
 * '<S241>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/SCI_Tx/Code Generation/Data_Logging/Counter Limited/Wrap To Zero'
 * '<S242>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Sensor Driver Blocks/Sensor Driver Blocks (codegen)'
 * '<S243>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Subsystem/If Action Subsystem'
 * '<S244>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Subsystem/If Action Subsystem1'
 * '<S245>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Subsystem/If Action Subsystem/Mechanical to Electrical Position'
 * '<S246>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Subsystem/If Action Subsystem/Mechanical to Electrical Position/MechToElec'
 * '<S247>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Subsystem/If Action Subsystem/Mechanical to Electrical Position/MechToElec/floating-point'
 * '<S248>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Subsystem/If Action Subsystem/Mechanical to Electrical Position/MechToElec/floating-point/Compensate Offset'
 * '<S249>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Subsystem/If Action Subsystem/Mechanical to Electrical Position/MechToElec/floating-point/Mech To Elec'
 * '<S250>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Subsystem/If Action Subsystem/Mechanical to Electrical Position/MechToElec/floating-point/Compensate Offset/If Action Subsystem'
 * '<S251>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Subsystem/If Action Subsystem/Mechanical to Electrical Position/MechToElec/floating-point/Compensate Offset/If Action Subsystem1'
 * '<S252>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Subsystem/If Action Subsystem/Mechanical to Electrical Position/MechToElec/floating-point/Mech To Elec/Variant Subsystem'
 * '<S253>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Subsystem/If Action Subsystem/Mechanical to Electrical Position/MechToElec/floating-point/Mech To Elec/Variant Subsystem/Dialog'
 * '<S254>' : 'mcb_pmsm_foc_hall_f28379d/HW Interrupt/Code Generation'
 * '<S255>' : 'mcb_pmsm_foc_hall_f28379d/HW Interrupt/Code Generation/HWI_ADCB1_INT'
 * '<S256>' : 'mcb_pmsm_foc_hall_f28379d/HW Interrupt/Code Generation/HWI_ECAP1_INT'
 * '<S257>' : 'mcb_pmsm_foc_hall_f28379d/HW Interrupt/Code Generation/HWI_ECAP2_INT'
 * '<S258>' : 'mcb_pmsm_foc_hall_f28379d/HW Interrupt/Code Generation/HWI_ECAP3_INT'
 * '<S259>' : 'mcb_pmsm_foc_hall_f28379d/HW Interrupt/Code Generation/HWI_SCIA_RX_INT'
 * '<S260>' : 'mcb_pmsm_foc_hall_f28379d/HW Interrupt/Code Generation/HWI_ADCB1_INT/ECSoC'
 * '<S261>' : 'mcb_pmsm_foc_hall_f28379d/HW Interrupt/Code Generation/HWI_ADCB1_INT/ECSoC/ECSimCodegen'
 * '<S262>' : 'mcb_pmsm_foc_hall_f28379d/HW Interrupt/Code Generation/HWI_ECAP1_INT/ECSoC'
 * '<S263>' : 'mcb_pmsm_foc_hall_f28379d/HW Interrupt/Code Generation/HWI_ECAP1_INT/ECSoC/ECSimCodegen'
 * '<S264>' : 'mcb_pmsm_foc_hall_f28379d/HW Interrupt/Code Generation/HWI_ECAP2_INT/ECSoC'
 * '<S265>' : 'mcb_pmsm_foc_hall_f28379d/HW Interrupt/Code Generation/HWI_ECAP2_INT/ECSoC/ECSimCodegen'
 * '<S266>' : 'mcb_pmsm_foc_hall_f28379d/HW Interrupt/Code Generation/HWI_ECAP3_INT/ECSoC'
 * '<S267>' : 'mcb_pmsm_foc_hall_f28379d/HW Interrupt/Code Generation/HWI_ECAP3_INT/ECSoC/ECSimCodegen'
 * '<S268>' : 'mcb_pmsm_foc_hall_f28379d/HW Interrupt/Code Generation/HWI_SCIA_RX_INT/ECSoC'
 * '<S269>' : 'mcb_pmsm_foc_hall_f28379d/HW Interrupt/Code Generation/HWI_SCIA_RX_INT/ECSoC/ECSimCodegen'
 * '<S270>' : 'mcb_pmsm_foc_hall_f28379d/Hall Sensor A/Capture Event Selection'
 * '<S271>' : 'mcb_pmsm_foc_hall_f28379d/Hall Sensor A/Hall Validity'
 * '<S272>' : 'mcb_pmsm_foc_hall_f28379d/Hall Sensor A/HallValidity'
 * '<S273>' : 'mcb_pmsm_foc_hall_f28379d/Hall Sensor A/eCAP'
 * '<S274>' : 'mcb_pmsm_foc_hall_f28379d/Hall Sensor A/Capture Event Selection/Output 0'
 * '<S275>' : 'mcb_pmsm_foc_hall_f28379d/Hall Sensor A/Capture Event Selection/Output 1'
 * '<S276>' : 'mcb_pmsm_foc_hall_f28379d/Hall Sensor A/Hall Validity/Subsystem'
 * '<S277>' : 'mcb_pmsm_foc_hall_f28379d/Hall Sensor A/Hall Validity/Subsystem/Bad hall (glitch or wrong connection)'
 * '<S278>' : 'mcb_pmsm_foc_hall_f28379d/Hall Sensor A/Hall Validity/Subsystem/Valid Halls'
 * '<S279>' : 'mcb_pmsm_foc_hall_f28379d/Hall Sensor A/Hall Validity/Subsystem/Valid Halls/If Action Subsystem'
 * '<S280>' : 'mcb_pmsm_foc_hall_f28379d/Hall Sensor A/Hall Validity/Subsystem/Valid Halls/If Action Subsystem1'
 * '<S281>' : 'mcb_pmsm_foc_hall_f28379d/Hall Sensor A/Hall Validity/Subsystem/Valid Halls/If Action Subsystem2'
 * '<S282>' : 'mcb_pmsm_foc_hall_f28379d/Hall Sensor A/Hall Validity/Subsystem/Valid Halls/If Action Subsystem3'
 * '<S283>' : 'mcb_pmsm_foc_hall_f28379d/Hall Sensor A/Hall Validity/Subsystem/Valid Halls/If Action Subsystem4'
 * '<S284>' : 'mcb_pmsm_foc_hall_f28379d/Hall Sensor A/Hall Validity/Subsystem/Valid Halls/If Action Subsystem5'
 * '<S285>' : 'mcb_pmsm_foc_hall_f28379d/Hall Sensor A/Hall Validity/Subsystem/Valid Halls/If Action Subsystem6'
 * '<S286>' : 'mcb_pmsm_foc_hall_f28379d/Hall Sensor A/Hall Validity/Subsystem/Valid Halls/If Action Subsystem7'
 * '<S287>' : 'mcb_pmsm_foc_hall_f28379d/Hall Sensor A/Hall Validity/Subsystem/Valid Halls/If Action Subsystem8'
 * '<S288>' : 'mcb_pmsm_foc_hall_f28379d/Hall Sensor A/Hall Validity/Subsystem/Valid Halls/Switch Case Action Subsystem'
 * '<S289>' : 'mcb_pmsm_foc_hall_f28379d/Hall Sensor A/HallValidity/CodeGen'
 * '<S290>' : 'mcb_pmsm_foc_hall_f28379d/Hall Sensor A/HallValidity/CodeGen/Read Halls'
 * '<S291>' : 'mcb_pmsm_foc_hall_f28379d/Hall Sensor A/eCAP/Code generation'
 * '<S292>' : 'mcb_pmsm_foc_hall_f28379d/Hall Sensor B/Capture Event Selection'
 * '<S293>' : 'mcb_pmsm_foc_hall_f28379d/Hall Sensor B/Hall Validity'
 * '<S294>' : 'mcb_pmsm_foc_hall_f28379d/Hall Sensor B/HallValidity'
 * '<S295>' : 'mcb_pmsm_foc_hall_f28379d/Hall Sensor B/eCAP'
 * '<S296>' : 'mcb_pmsm_foc_hall_f28379d/Hall Sensor B/Capture Event Selection/Output 0'
 * '<S297>' : 'mcb_pmsm_foc_hall_f28379d/Hall Sensor B/Capture Event Selection/Output 1'
 * '<S298>' : 'mcb_pmsm_foc_hall_f28379d/Hall Sensor B/Hall Validity/Subsystem'
 * '<S299>' : 'mcb_pmsm_foc_hall_f28379d/Hall Sensor B/Hall Validity/Subsystem/Bad hall (glitch or wrong connection)'
 * '<S300>' : 'mcb_pmsm_foc_hall_f28379d/Hall Sensor B/Hall Validity/Subsystem/Valid Halls'
 * '<S301>' : 'mcb_pmsm_foc_hall_f28379d/Hall Sensor B/Hall Validity/Subsystem/Valid Halls/If Action Subsystem'
 * '<S302>' : 'mcb_pmsm_foc_hall_f28379d/Hall Sensor B/Hall Validity/Subsystem/Valid Halls/If Action Subsystem1'
 * '<S303>' : 'mcb_pmsm_foc_hall_f28379d/Hall Sensor B/Hall Validity/Subsystem/Valid Halls/If Action Subsystem2'
 * '<S304>' : 'mcb_pmsm_foc_hall_f28379d/Hall Sensor B/Hall Validity/Subsystem/Valid Halls/If Action Subsystem3'
 * '<S305>' : 'mcb_pmsm_foc_hall_f28379d/Hall Sensor B/Hall Validity/Subsystem/Valid Halls/If Action Subsystem4'
 * '<S306>' : 'mcb_pmsm_foc_hall_f28379d/Hall Sensor B/Hall Validity/Subsystem/Valid Halls/If Action Subsystem5'
 * '<S307>' : 'mcb_pmsm_foc_hall_f28379d/Hall Sensor B/Hall Validity/Subsystem/Valid Halls/If Action Subsystem6'
 * '<S308>' : 'mcb_pmsm_foc_hall_f28379d/Hall Sensor B/Hall Validity/Subsystem/Valid Halls/If Action Subsystem7'
 * '<S309>' : 'mcb_pmsm_foc_hall_f28379d/Hall Sensor B/Hall Validity/Subsystem/Valid Halls/If Action Subsystem8'
 * '<S310>' : 'mcb_pmsm_foc_hall_f28379d/Hall Sensor B/Hall Validity/Subsystem/Valid Halls/Switch Case Action Subsystem'
 * '<S311>' : 'mcb_pmsm_foc_hall_f28379d/Hall Sensor B/HallValidity/CodeGen'
 * '<S312>' : 'mcb_pmsm_foc_hall_f28379d/Hall Sensor B/HallValidity/CodeGen/Read Halls'
 * '<S313>' : 'mcb_pmsm_foc_hall_f28379d/Hall Sensor B/eCAP/Code generation'
 * '<S314>' : 'mcb_pmsm_foc_hall_f28379d/Hall Sensor C/Capture Event Selection'
 * '<S315>' : 'mcb_pmsm_foc_hall_f28379d/Hall Sensor C/Hall Validity'
 * '<S316>' : 'mcb_pmsm_foc_hall_f28379d/Hall Sensor C/HallValidity'
 * '<S317>' : 'mcb_pmsm_foc_hall_f28379d/Hall Sensor C/eCAP'
 * '<S318>' : 'mcb_pmsm_foc_hall_f28379d/Hall Sensor C/Capture Event Selection/Output 0'
 * '<S319>' : 'mcb_pmsm_foc_hall_f28379d/Hall Sensor C/Capture Event Selection/Output 1'
 * '<S320>' : 'mcb_pmsm_foc_hall_f28379d/Hall Sensor C/Hall Validity/Subsystem'
 * '<S321>' : 'mcb_pmsm_foc_hall_f28379d/Hall Sensor C/Hall Validity/Subsystem/Bad hall (glitch or wrong connection)'
 * '<S322>' : 'mcb_pmsm_foc_hall_f28379d/Hall Sensor C/Hall Validity/Subsystem/Valid Halls'
 * '<S323>' : 'mcb_pmsm_foc_hall_f28379d/Hall Sensor C/Hall Validity/Subsystem/Valid Halls/If Action Subsystem'
 * '<S324>' : 'mcb_pmsm_foc_hall_f28379d/Hall Sensor C/Hall Validity/Subsystem/Valid Halls/If Action Subsystem1'
 * '<S325>' : 'mcb_pmsm_foc_hall_f28379d/Hall Sensor C/Hall Validity/Subsystem/Valid Halls/If Action Subsystem2'
 * '<S326>' : 'mcb_pmsm_foc_hall_f28379d/Hall Sensor C/Hall Validity/Subsystem/Valid Halls/If Action Subsystem3'
 * '<S327>' : 'mcb_pmsm_foc_hall_f28379d/Hall Sensor C/Hall Validity/Subsystem/Valid Halls/If Action Subsystem4'
 * '<S328>' : 'mcb_pmsm_foc_hall_f28379d/Hall Sensor C/Hall Validity/Subsystem/Valid Halls/If Action Subsystem5'
 * '<S329>' : 'mcb_pmsm_foc_hall_f28379d/Hall Sensor C/Hall Validity/Subsystem/Valid Halls/If Action Subsystem6'
 * '<S330>' : 'mcb_pmsm_foc_hall_f28379d/Hall Sensor C/Hall Validity/Subsystem/Valid Halls/If Action Subsystem7'
 * '<S331>' : 'mcb_pmsm_foc_hall_f28379d/Hall Sensor C/Hall Validity/Subsystem/Valid Halls/If Action Subsystem8'
 * '<S332>' : 'mcb_pmsm_foc_hall_f28379d/Hall Sensor C/Hall Validity/Subsystem/Valid Halls/Switch Case Action Subsystem'
 * '<S333>' : 'mcb_pmsm_foc_hall_f28379d/Hall Sensor C/HallValidity/CodeGen'
 * '<S334>' : 'mcb_pmsm_foc_hall_f28379d/Hall Sensor C/HallValidity/CodeGen/Read Halls'
 * '<S335>' : 'mcb_pmsm_foc_hall_f28379d/Hall Sensor C/eCAP/Code generation'
 * '<S336>' : 'mcb_pmsm_foc_hall_f28379d/Hardware Init/Variant Subsystem'
 * '<S337>' : 'mcb_pmsm_foc_hall_f28379d/Hardware Init/Variant Subsystem/Code Generation'
 * '<S338>' : 'mcb_pmsm_foc_hall_f28379d/Hardware Init/Variant Subsystem/Code Generation/Calculate ADC Offset '
 * '<S339>' : 'mcb_pmsm_foc_hall_f28379d/Hardware Init/Variant Subsystem/Code Generation/DRV Enable'
 * '<S340>' : 'mcb_pmsm_foc_hall_f28379d/Hardware Init/Variant Subsystem/Code Generation/Default ADC Offset'
 * '<S341>' : 'mcb_pmsm_foc_hall_f28379d/Hardware Init/Variant Subsystem/Code Generation/Calculate ADC Offset /For Iterator Subsystem'
 * '<S342>' : 'mcb_pmsm_foc_hall_f28379d/Hardware Init/Variant Subsystem/Code Generation/Calculate ADC Offset /If Action Subsystem'
 * '<S343>' : 'mcb_pmsm_foc_hall_f28379d/Hardware Init/Variant Subsystem/Code Generation/Calculate ADC Offset /If Action Subsystem1'
 * '<S344>' : 'mcb_pmsm_foc_hall_f28379d/Hardware Init/Variant Subsystem/Code Generation/Calculate ADC Offset /If Action Subsystem2'
 * '<S345>' : 'mcb_pmsm_foc_hall_f28379d/Hardware Init/Variant Subsystem/Code Generation/Calculate ADC Offset /If Action Subsystem3'
 * '<S346>' : 'mcb_pmsm_foc_hall_f28379d/Hardware Init/Variant Subsystem/Code Generation/Calculate ADC Offset /For Iterator Subsystem/If Action Subsystem'
 * '<S347>' : 'mcb_pmsm_foc_hall_f28379d/Hardware Init/Variant Subsystem/Code Generation/DRV Enable/ADC Gain Setting'
 * '<S348>' : 'mcb_pmsm_foc_hall_f28379d/Heartbeat LED/Heartbeat LED'
 * '<S349>' : 'mcb_pmsm_foc_hall_f28379d/Heartbeat LED/Heartbeat LED/Code generation'
 * '<S350>' : 'mcb_pmsm_foc_hall_f28379d/Inverter and Motor - Plant Model/Codegeneration'
 * '<S351>' : 'mcb_pmsm_foc_hall_f28379d/Serial Receive/Data_Conditioning_Rx'
 * '<S352>' : 'mcb_pmsm_foc_hall_f28379d/Serial Receive/SCI_Rx'
 * '<S353>' : 'mcb_pmsm_foc_hall_f28379d/Serial Receive/unParse'
 * '<S354>' : 'mcb_pmsm_foc_hall_f28379d/Serial Receive/Data_Conditioning_Rx/Data_Type_Float'
 * '<S355>' : 'mcb_pmsm_foc_hall_f28379d/Serial Receive/SCI_Rx/Code Generation'
 * '<S356>' : 'mcb_pmsm_foc_hall_f28379d/Serial Receive/SCI_Rx/Code Generation/Data_Type_Float'
 * '<S357>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed2'
 * '<S358>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/Speed_Ref_Selector'
 * '<S359>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed2/Chart'
 * '<S360>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed2/Discrete PI Controller  with anti-windup & reset'
 * '<S361>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed2/Subsystem'
 * '<S362>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed2/Switch Case Action Subsystem'
 * '<S363>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed2/Switch Case Action Subsystem1'
 * '<S364>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed2/Switch Case Action Subsystem2'
 * '<S365>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed2/Switch Case Action Subsystem3'
 * '<S366>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed2/Zero_Cancellation'
 * '<S367>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed2/Discrete PI Controller  with anti-windup & reset/Anti-windup'
 * '<S368>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed2/Discrete PI Controller  with anti-windup & reset/D Gain'
 * '<S369>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed2/Discrete PI Controller  with anti-windup & reset/Filter'
 * '<S370>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed2/Discrete PI Controller  with anti-windup & reset/Filter ICs'
 * '<S371>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed2/Discrete PI Controller  with anti-windup & reset/I Gain'
 * '<S372>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed2/Discrete PI Controller  with anti-windup & reset/Ideal P Gain'
 * '<S373>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed2/Discrete PI Controller  with anti-windup & reset/Ideal P Gain Fdbk'
 * '<S374>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed2/Discrete PI Controller  with anti-windup & reset/Integrator'
 * '<S375>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed2/Discrete PI Controller  with anti-windup & reset/Integrator ICs'
 * '<S376>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed2/Discrete PI Controller  with anti-windup & reset/N Copy'
 * '<S377>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed2/Discrete PI Controller  with anti-windup & reset/N Gain'
 * '<S378>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed2/Discrete PI Controller  with anti-windup & reset/P Copy'
 * '<S379>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed2/Discrete PI Controller  with anti-windup & reset/Parallel P Gain'
 * '<S380>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed2/Discrete PI Controller  with anti-windup & reset/Reset Signal'
 * '<S381>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed2/Discrete PI Controller  with anti-windup & reset/Saturation'
 * '<S382>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed2/Discrete PI Controller  with anti-windup & reset/Saturation Fdbk'
 * '<S383>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed2/Discrete PI Controller  with anti-windup & reset/Sum'
 * '<S384>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed2/Discrete PI Controller  with anti-windup & reset/Sum Fdbk'
 * '<S385>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed2/Discrete PI Controller  with anti-windup & reset/Tracking Mode'
 * '<S386>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed2/Discrete PI Controller  with anti-windup & reset/Tracking Mode Sum'
 * '<S387>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed2/Discrete PI Controller  with anti-windup & reset/Tsamp - Integral'
 * '<S388>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed2/Discrete PI Controller  with anti-windup & reset/Tsamp - Ngain'
 * '<S389>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed2/Discrete PI Controller  with anti-windup & reset/postSat Signal'
 * '<S390>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed2/Discrete PI Controller  with anti-windup & reset/preSat Signal'
 * '<S391>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed2/Discrete PI Controller  with anti-windup & reset/Anti-windup/Disc. Clamping Parallel'
 * '<S392>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed2/Discrete PI Controller  with anti-windup & reset/Anti-windup/Disc. Clamping Parallel/Dead Zone'
 * '<S393>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed2/Discrete PI Controller  with anti-windup & reset/Anti-windup/Disc. Clamping Parallel/Dead Zone/Enabled'
 * '<S394>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed2/Discrete PI Controller  with anti-windup & reset/D Gain/Disabled'
 * '<S395>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed2/Discrete PI Controller  with anti-windup & reset/Filter/Disabled'
 * '<S396>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed2/Discrete PI Controller  with anti-windup & reset/Filter ICs/Disabled'
 * '<S397>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed2/Discrete PI Controller  with anti-windup & reset/I Gain/External Parameters'
 * '<S398>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed2/Discrete PI Controller  with anti-windup & reset/Ideal P Gain/Passthrough'
 * '<S399>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed2/Discrete PI Controller  with anti-windup & reset/Ideal P Gain Fdbk/Disabled'
 * '<S400>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed2/Discrete PI Controller  with anti-windup & reset/Integrator/Discrete'
 * '<S401>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed2/Discrete PI Controller  with anti-windup & reset/Integrator ICs/External IC'
 * '<S402>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed2/Discrete PI Controller  with anti-windup & reset/N Copy/Disabled wSignal Specification'
 * '<S403>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed2/Discrete PI Controller  with anti-windup & reset/N Gain/Disabled'
 * '<S404>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed2/Discrete PI Controller  with anti-windup & reset/P Copy/Disabled'
 * '<S405>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed2/Discrete PI Controller  with anti-windup & reset/Parallel P Gain/External Parameters'
 * '<S406>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed2/Discrete PI Controller  with anti-windup & reset/Reset Signal/External Reset'
 * '<S407>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed2/Discrete PI Controller  with anti-windup & reset/Saturation/Enabled'
 * '<S408>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed2/Discrete PI Controller  with anti-windup & reset/Saturation Fdbk/Disabled'
 * '<S409>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed2/Discrete PI Controller  with anti-windup & reset/Sum/Sum_PI'
 * '<S410>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed2/Discrete PI Controller  with anti-windup & reset/Sum Fdbk/Disabled'
 * '<S411>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed2/Discrete PI Controller  with anti-windup & reset/Tracking Mode/Disabled'
 * '<S412>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed2/Discrete PI Controller  with anti-windup & reset/Tracking Mode Sum/Passthrough'
 * '<S413>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed2/Discrete PI Controller  with anti-windup & reset/Tsamp - Integral/TsSignalSpecification'
 * '<S414>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed2/Discrete PI Controller  with anti-windup & reset/Tsamp - Ngain/Passthrough'
 * '<S415>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed2/Discrete PI Controller  with anti-windup & reset/postSat Signal/Forward_Path'
 * '<S416>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed2/Discrete PI Controller  with anti-windup & reset/preSat Signal/Forward_Path'
 * '<S417>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed2/Subsystem/IIR Filter'
 * '<S418>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed2/Subsystem/Speed Measurement'
 * '<S419>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed2/Subsystem/IIR Filter/IIR Filter'
 * '<S420>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed2/Subsystem/IIR Filter/IIR Filter/Low-pass'
 * '<S421>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed2/Subsystem/IIR Filter/IIR Filter/Low-pass/IIR Low Pass Filter'
 * '<S422>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed2/Subsystem/Speed Measurement/DT_Handle'
 * '<S423>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed2/Subsystem/Speed Measurement/DT_Handle/floating-point'
 * '<S424>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed2/Switch Case Action Subsystem2/Subsystem'
 * '<S425>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed2/Switch Case Action Subsystem2/Subsystem1'
 * '<S426>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed2/Switch Case Action Subsystem2/Subsystem2'
 * '<S427>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed2/Switch Case Action Subsystem2/Subsystem1/Saturation Dynamic1'
 * '<S428>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed2/Switch Case Action Subsystem2/Subsystem1/atan2'
 * '<S429>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed2/Switch Case Action Subsystem2/Subsystem1/atan2/Per Unit'
 * '<S430>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed2/Switch Case Action Subsystem2/Subsystem2/Compare To Constant'
 * '<S431>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed2/Switch Case Action Subsystem2/Subsystem2/Mechanical to Electrical Position'
 * '<S432>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed2/Switch Case Action Subsystem2/Subsystem2/Saturation Dynamic'
 * '<S433>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed2/Switch Case Action Subsystem2/Subsystem2/Mechanical to Electrical Position/MechToElec'
 * '<S434>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed2/Switch Case Action Subsystem2/Subsystem2/Mechanical to Electrical Position/MechToElec/floating-point'
 * '<S435>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed2/Switch Case Action Subsystem2/Subsystem2/Mechanical to Electrical Position/MechToElec/floating-point/Compensate Offset'
 * '<S436>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed2/Switch Case Action Subsystem2/Subsystem2/Mechanical to Electrical Position/MechToElec/floating-point/Mech To Elec'
 * '<S437>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed2/Switch Case Action Subsystem2/Subsystem2/Mechanical to Electrical Position/MechToElec/floating-point/Compensate Offset/If Action Subsystem'
 * '<S438>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed2/Switch Case Action Subsystem2/Subsystem2/Mechanical to Electrical Position/MechToElec/floating-point/Compensate Offset/If Action Subsystem1'
 * '<S439>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed2/Switch Case Action Subsystem2/Subsystem2/Mechanical to Electrical Position/MechToElec/floating-point/Mech To Elec/Variant Subsystem'
 * '<S440>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed2/Switch Case Action Subsystem2/Subsystem2/Mechanical to Electrical Position/MechToElec/floating-point/Mech To Elec/Variant Subsystem/Dialog'
 * '<S441>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed2/Zero_Cancellation/IIR Filter'
 * '<S442>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed2/Zero_Cancellation/IIR Filter/Low-pass'
 * '<S443>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed2/Zero_Cancellation/IIR Filter/Low-pass/IIR Low Pass Filter'
 */
#endif                             /* RTW_HEADER_mcb_pmsm_foc_hall_f28379d_h_ */

/*
 * File trailer for generated code.
 *
 * [EOF]
 */
