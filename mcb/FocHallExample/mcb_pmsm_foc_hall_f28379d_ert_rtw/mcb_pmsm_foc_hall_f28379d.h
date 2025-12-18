/*
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * File: mcb_pmsm_foc_hall_f28379d.h
 *
 * Code generated for Simulink model 'mcb_pmsm_foc_hall_f28379d'.
 *
 * Model version                  : 20
 * Simulink Coder version         : 23.2 (R2023b) 01-Aug-2023
 * C/C++ source code generated on : Mon Dec 15 22:31:57 2025
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

/* Block signals for system '<S19>/If Action Subsystem' */
typedef struct {
  real32_T Switch;                     /* '<S252>/Switch' */
  real32_T Merge;                      /* '<S253>/Merge' */
  real32_T Floor;                      /* '<S254>/Floor' */
  real32_T Add;                        /* '<S254>/Add' */
} rtB_IfActionSubsystem_mcb_pms_g;

/* Block signals for system '<S299>/Valid Halls' */
typedef struct {
  uint16_T Merge;                      /* '<S301>/Merge' */
  uint16_T Merge1;                     /* '<S301>/Merge1' */
  uint16_T Merge3;                     /* '<S301>/Merge3' */
  int16_T Merge2;                      /* '<S301>/Merge2' */
  boolean_T RelationalOperator;        /* '<S301>/Relational Operator' */
} rtB_ValidHalls_mcb_pmsm_foc_hal;

/* Block signals for system '<S370>/SPI Master Transfer2' */
typedef struct {
  uint16_T SPIMasterTransfer2;         /* '<S370>/SPI Master Transfer2' */
} rtB_SPIMasterTransfer2_mcb_pmsm;

/* Block states (default storage) for system '<S370>/SPI Master Transfer2' */
typedef struct {
  codertarget_tic2000_blocks_SPIM obj; /* '<S370>/SPI Master Transfer2' */
  boolean_T objisempty;                /* '<S370>/SPI Master Transfer2' */
} rtDW_SPIMasterTransfer2_mcb_pms;

/* Block signals for system '<Root>/Speed Control' */
typedef struct {
  real_T Gain1;                        /* '<S380>/Gain1' */
  real_T MinMax;                       /* '<S449>/MinMax' */
  real_T Abs1;                         /* '<S447>/Abs1' */
  real_T Sum2;                         /* '<S447>/Sum2' */
  real_T Divide1;                      /* '<S448>/Divide1' */
  real_T Divide;                       /* '<S449>/Divide' */
  real_T Gain4;                        /* '<S449>/Gain4' */
  real_T Gain2;                        /* '<S449>/Gain2' */
  uint32_T PositionToCount;            /* '<S441>/PositionToCount' */
  uint32_T Delay;                      /* '<S441>/Delay' */
  real32_T Id_ref;                     /* '<S10>/Id_ref' */
  real32_T Switch;                     /* '<S381>/Switch' */
  real32_T Product;                    /* '<S466>/Product' */
  real32_T UnitDelay;                  /* '<S466>/Unit Delay' */
  real32_T Product1;                   /* '<S466>/Product1' */
  real32_T Add1;                       /* '<S466>/Add1' */
  real32_T Sum;                        /* '<S380>/Sum' */
  real32_T PProdOut;                   /* '<S428>/PProd Out' */
  real32_T Ki2;                        /* '<S380>/Ki2' */
  real32_T Integrator;                 /* '<S423>/Integrator' */
  real32_T Sum_e;                      /* '<S432>/Sum' */
  real32_T DeadZone;                   /* '<S416>/DeadZone' */
  real32_T IProdOut;                   /* '<S420>/IProd Out' */
  real32_T Switch_k;                   /* '<S414>/Switch' */
  real32_T Saturation;                 /* '<S430>/Saturation' */
  real32_T Merge;                      /* '<S380>/Merge' */
  real32_T Unwrap;                     /* '<S384>/Unwrap' */
  real32_T DTC;                        /* '<S446>/DTC' */
  real32_T SpeedGain;                  /* '<S441>/SpeedGain' */
  real32_T Product_c;                  /* '<S444>/Product' */
  real32_T UnitDelay_m;                /* '<S444>/Unit Delay' */
  real32_T Product1_h;                 /* '<S444>/Product1' */
  real32_T Add1_k;                     /* '<S444>/Add1' */
  real32_T Gain2_g;                    /* '<S380>/Gain2' */
  real32_T Merge1;                     /* '<S380>/Merge1' */
  real32_T DiscreteTimeIntegrator1;    /* '<S449>/Discrete-Time Integrator1' */
  real32_T Sum_k;                      /* '<S447>/Sum' */
  real32_T Delay_c;                    /* '<S447>/Delay' */
  real32_T Sum1;                       /* '<S447>/Sum1' */
  real32_T Abs;                        /* '<S447>/Abs' */
  real32_T Abs2;                       /* '<S447>/Abs2' */
  real32_T DiscreteTimeIntegrator2;    /* '<S448>/Discrete-Time Integrator2' */
  real32_T Gain1_h;                    /* '<S448>/Gain1' */
  real32_T Product1_i;                 /* '<S448>/Product1' */
  real32_T Switch2;                    /* '<S450>/Switch2' */
  real32_T DiscreteTimeIntegrator;     /* '<S449>/Discrete-Time Integrator' */
  real32_T Switch_ki;                  /* '<S457>/Switch' */
  real32_T Merge_h;                    /* '<S458>/Merge' */
  real32_T Numberofpolepairs;          /* '<S463>/Number of pole pairs' */
  real32_T Floor;                      /* '<S459>/Floor' */
  real32_T Add;                        /* '<S459>/Add' */
  real32_T Product_l;                  /* '<S449>/Product' */
  real32_T Switch2_i;                  /* '<S455>/Switch2' */
  real32_T Switch_a;                   /* '<S455>/Switch' */
  real32_T Switch_m;                   /* '<S450>/Switch' */
  int32_T SpeedCount;                  /* '<S441>/SpeedCount' */
  uint16_T Motor_State;                /* '<S380>/Chart' */
  int16_T Switch1;                     /* '<S414>/Switch1' */
  int16_T Switch2_f;                   /* '<S414>/Switch2' */
  boolean_T DataStoreRead1;            /* '<S380>/Data Store Read1' */
  boolean_T DataStoreRead2;            /* '<S380>/Data Store Read2' */
  boolean_T AND;                       /* '<S380>/AND' */
  boolean_T DataStoreRead3;            /* '<S380>/Data Store Read3' */
  boolean_T UnitDelay_e;               /* '<S380>/Unit Delay' */
  boolean_T DataStoreRead1_e;          /* '<S381>/Data Store Read1' */
  boolean_T LogicalOperator;           /* '<S380>/Logical Operator' */
  boolean_T RelationalOperator;        /* '<S414>/Relational Operator' */
  boolean_T fixforDTpropagationissue;/* '<S414>/fix for DT propagation issue' */
  boolean_T fixforDTpropagationissue1;
                                    /* '<S414>/fix for DT propagation issue1' */
  boolean_T Equal1;                    /* '<S414>/Equal1' */
  boolean_T AND3;                      /* '<S414>/AND3' */
  boolean_T Merge2;                    /* '<S380>/Merge2' */
  boolean_T Switch_o;                  /* '<S447>/Switch' */
  boolean_T Switch1_d;                 /* '<S447>/Switch1' */
  boolean_T LogicalOperator_p;         /* '<S447>/Logical Operator' */
  boolean_T LogicalOperator2;          /* '<S447>/Logical Operator2' */
  boolean_T LowerRelop1;               /* '<S450>/LowerRelop1' */
  boolean_T LowerRelop1_l;             /* '<S455>/LowerRelop1' */
  boolean_T UpperRelop;                /* '<S455>/UpperRelop' */
  boolean_T UpperRelop_i;              /* '<S450>/UpperRelop' */
} rtB_SpeedControl_mcb_pmsm_foc_h;

/* Block states (default storage) for system '<Root>/Speed Control' */
typedef struct {
  real_T Sum2_DWORK1;                  /* '<S447>/Sum2' */
  real32_T UnitDelay_DSTATE;           /* '<S466>/Unit Delay' */
  real32_T Integrator_DSTATE;          /* '<S423>/Integrator' */
  real32_T UnitDelay_DSTATE_p;         /* '<S444>/Unit Delay' */
  real32_T DiscreteTimeIntegrator1_DSTATE;/* '<S449>/Discrete-Time Integrator1' */
  real32_T Delay_DSTATE;               /* '<S447>/Delay' */
  real32_T DiscreteTimeIntegrator2_DSTATE;/* '<S448>/Discrete-Time Integrator2' */
  real32_T DiscreteTimeIntegrator_DSTATE;/* '<S449>/Discrete-Time Integrator' */
  uint32_T Delay_DSTATE_a[20];         /* '<S441>/Delay' */
  real32_T Unwrap_Prev;                /* '<S384>/Unwrap' */
  real32_T Unwrap_Cumsum;              /* '<S384>/Unwrap' */
  int32_T SpeedCount_DWORK1;           /* '<S441>/SpeedCount' */
  uint16_T CircBufIdx;                 /* '<S441>/Delay' */
  uint16_T temporalCounter_i1;         /* '<S380>/Chart' */
  boolean_T UnitDelay_DSTATE_a;        /* '<S380>/Unit Delay' */
  int16_T Integrator_PrevResetState;   /* '<S423>/Integrator' */
  uint16_T is_active_c3_mcb_pmsm_foc_hall_;/* '<S380>/Chart' */
  uint16_T is_c3_mcb_pmsm_foc_hall_f28379d;/* '<S380>/Chart' */
  boolean_T Unwrap_FirstStep;          /* '<S384>/Unwrap' */
} rtDW_SpeedControl_mcb_pmsm_foc_;

/* Block signals (default storage) */
typedef struct {
  real_T Merge1;                       /* '<S13>/Merge1' */
  real_T Saturation;                   /* '<S136>/Saturation' */
  real_T Saturation_j;                 /* '<S85>/Saturation' */
  real_T Switch;                       /* '<S32>/Switch' */
  real_T Product;                      /* '<S32>/Product' */
  real_T Product_e;                    /* '<S33>/Product' */
  real_T Product1;                     /* '<S33>/Product1' */
  real_T Sum1;                         /* '<S33>/Sum1' */
  real_T Merge[2];                     /* '<S27>/Merge' */
  real_T Sum;                          /* '<S11>/Sum' */
  real_T sqrt3_by_two;                 /* '<S169>/sqrt3_by_two' */
  real_T one_by_two;                   /* '<S169>/one_by_two' */
  real_T add_c;                        /* '<S169>/add_c' */
  real_T add_b;                        /* '<S169>/add_b' */
  real_T Min;                          /* '<S166>/Min' */
  real_T Max;                          /* '<S166>/Max' */
  real_T Add;                          /* '<S166>/Add' */
  real_T one_by_two_b;                 /* '<S166>/one_by_two' */
  real_T Add3;                         /* '<S165>/Add3' */
  real_T Add2;                         /* '<S165>/Add2' */
  real_T Add1;                         /* '<S165>/Add1' */
  real_T Gain[3];                      /* '<S165>/Gain' */
  real_T DiscretePulseGenerator;       /* '<S170>/Discrete Pulse Generator' */
  real_T qcos;                         /* '<S147>/qcos' */
  real_T dsin;                         /* '<S147>/dsin' */
  real_T sum_beta;                     /* '<S147>/sum_beta' */
  real_T dcos;                         /* '<S147>/dcos' */
  real_T qsin;                         /* '<S147>/qsin' */
  real_T sum_alpha;                    /* '<S147>/sum_alpha' */
  real_T Switch_k[2];                  /* '<S153>/Switch' */
  real_T algDD_o1;
  real_T algDD_o2;
  real_T Product_i[2];                 /* '<S34>/Product' */
  real_T SquareRoot;                   /* '<S34>/Square Root' */
  real_T Switch_o;                     /* '<S34>/Switch' */
  real_T Reciprocal;                   /* '<S34>/Reciprocal' */
  real_T Switch_h[2];                  /* '<S31>/Switch' */
  real_T Switch2;                      /* '<S41>/Switch2' */
  real_T Product_a;                    /* '<S40>/Product' */
  real_T Sum_n;                        /* '<S40>/Sum' */
  real_T Product2;                     /* '<S40>/Product2' */
  real_T Merge_m;                      /* '<S40>/Merge' */
  real_T Gain_e;                       /* '<S40>/Gain' */
  real_T Switch_c;                     /* '<S41>/Switch' */
  real_T Switch1;                      /* '<S42>/Switch1' */
  real_T Sqrt;                         /* '<S42>/Sqrt' */
  real_T Gain_c;                       /* '<S42>/Gain' */
  uint32_T DataStoreRead;              /* '<S5>/Data Store Read' */
  uint32_T ReadGPIODATregister;        /* '<S357>/Read GPIO DAT register' */
  uint32_T Hall_C;                     /* '<S357>/Hall_C' */
  uint32_T ShiftArithmetic;            /* '<S357>/Shift Arithmetic' */
  uint32_T Hall_B;                     /* '<S357>/Hall_B' */
  uint32_T ShiftArithmetic1;           /* '<S357>/Shift Arithmetic1' */
  uint32_T Hall_A;                     /* '<S357>/Hall_A' */
  uint32_T ShiftArithmetic2;           /* '<S357>/Shift Arithmetic2' */
  uint32_T BitwiseOperator2;           /* '<S357>/Bitwise Operator2' */
  uint32_T eCAP[2];                    /* '<S358>/eCAP' */
  uint32_T Switch_e;                   /* '<S5>/Switch' */
  uint32_T DataStoreRead_o;            /* '<S4>/Data Store Read' */
  uint32_T ReadGPIODATregister_n;      /* '<S335>/Read GPIO DAT register' */
  uint32_T Hall_C_f;                   /* '<S335>/Hall_C' */
  uint32_T ShiftArithmetic_b;          /* '<S335>/Shift Arithmetic' */
  uint32_T Hall_B_m;                   /* '<S335>/Hall_B' */
  uint32_T ShiftArithmetic1_j;         /* '<S335>/Shift Arithmetic1' */
  uint32_T Hall_A_e;                   /* '<S335>/Hall_A' */
  uint32_T ShiftArithmetic2_k;         /* '<S335>/Shift Arithmetic2' */
  uint32_T BitwiseOperator2_m;         /* '<S335>/Bitwise Operator2' */
  uint32_T eCAP_c[2];                  /* '<S336>/eCAP' */
  uint32_T Switch_l;                   /* '<S4>/Switch' */
  uint32_T DataStoreRead_p;            /* '<S3>/Data Store Read' */
  uint32_T ReadGPIODATregister_g;      /* '<S313>/Read GPIO DAT register' */
  uint32_T Hall_C_n;                   /* '<S313>/Hall_C' */
  uint32_T ShiftArithmetic_e;          /* '<S313>/Shift Arithmetic' */
  uint32_T Hall_B_i;                   /* '<S313>/Hall_B' */
  uint32_T ShiftArithmetic1_jb;        /* '<S313>/Shift Arithmetic1' */
  uint32_T Hall_A_k;                   /* '<S313>/Hall_A' */
  uint32_T ShiftArithmetic2_i;         /* '<S313>/Shift Arithmetic2' */
  uint32_T BitwiseOperator2_n;         /* '<S313>/Bitwise Operator2' */
  uint32_T eCAP_l[2];                  /* '<S314>/eCAP' */
  uint32_T Switch_es;                  /* '<S3>/Switch' */
  uint32_T speedCountDelay;            /* '<S188>/speedCountDelay' */
  uint32_T Sum_g[4];                   /* '<S156>/Sum' */
  uint32_T BytePack[2];                /* '<S238>/Byte Pack' */
  uint32_T SCI_Tx_Data[3];             /* '<S236>/Merge' */
  uint32_T SCI_Tx_Iteration;           /* '<S236>/Merge1' */
  uint32_T Sum_k[4];                   /* '<S146>/Sum' */
  uint32_T IndexVector;                /* '<S237>/Index Vector' */
  uint32_T Add_f;                      /* '<S237>/Add' */
  uint32_T Data[2];                    /* '<S240>/Data' */
  uint32_T Data_f[2];                  /* '<S241>/Data' */
  uint32_T Data_fw[2];                 /* '<S242>/Data' */
  uint32_T Input;                      /* '<S179>/Input' */
  uint32_T Max_i;                      /* '<S192>/Max' */
  uint32_T UnitDelay;                  /* '<S182>/Unit Delay' */
  uint32_T Merge_i;                    /* '<S182>/Merge' */
  uint32_T DataStoreRead2;             /* '<S175>/Data Store Read2' */
  uint32_T ReadGPIODATregister_p;      /* '<S187>/Read GPIO DAT register' */
  uint32_T Hall_C_e;                   /* '<S187>/Hall_C' */
  uint32_T ShiftArithmetic_l;          /* '<S187>/Shift Arithmetic' */
  uint32_T Hall_B_e;                   /* '<S187>/Hall_B' */
  uint32_T ShiftArithmetic1_c;         /* '<S187>/Shift Arithmetic1' */
  uint32_T Hall_A_d;                   /* '<S187>/Hall_A' */
  uint32_T ShiftArithmetic2_kn;        /* '<S187>/Shift Arithmetic2' */
  uint32_T BitwiseOperator2_g;         /* '<S187>/Bitwise Operator2' */
  uint32_T MemoryCopy;                 /* '<S181>/Memory Copy' */
  uint32_T MemoryCopy1;                /* '<S181>/Memory Copy1' */
  uint32_T MemoryCopy2;                /* '<S181>/Memory Copy2' */
  uint32_T Min_h;                      /* '<S181>/Min' */
  uint32_T ReadGPIODATregister_nt;     /* '<S183>/Read GPIO DAT register' */
  uint32_T Hall_C_fc;                  /* '<S183>/Hall_C' */
  uint32_T ShiftArithmetic_p;          /* '<S183>/Shift Arithmetic' */
  uint32_T Hall_B_f;                   /* '<S183>/Hall_B' */
  uint32_T ShiftArithmetic1_h;         /* '<S183>/Shift Arithmetic1' */
  uint32_T Hall_A_c;                   /* '<S183>/Hall_A' */
  uint32_T ShiftArithmetic2_e;         /* '<S183>/Shift Arithmetic2' */
  uint32_T BitwiseOperator2_p;         /* '<S183>/Bitwise Operator2' */
  uint32_T Gain_o[2];                  /* '<S174>/Gain' */
  real32_T RT6;                        /* '<Root>/RT6' */
  real32_T RT7;                        /* '<Root>/RT7' */
  real32_T RT12;                       /* '<Root>/RT12' */
  real32_T RT2[2];                     /* '<Root>/RT2' */
  real32_T RT11;                       /* '<Root>/RT11' */
  real32_T RT13;                       /* '<Root>/RT13' */
  real32_T SCIReceive[2];              /* '<S379>/SCI Receive' */
  real32_T CastToSingle;               /* '<S13>/Cast To Single' */
  real32_T DataStoreRead2_l;           /* '<S13>/Data Store Read2' */
  real32_T Merge1_f;                   /* '<S177>/Merge1' */
  real32_T Switch_hp;                  /* '<S224>/Switch' */
  real32_T Merge_me;                   /* '<S225>/Merge' */
  real32_T Floor;                      /* '<S226>/Floor' */
  real32_T Add_e;                      /* '<S226>/Add' */
  real32_T Merge_d;                    /* '<S177>/Merge' */
  real32_T Merge1_m;                   /* '<S19>/Merge1' */
  real32_T CastToSingle_e[2];          /* '<S174>/Cast To Single' */
  real32_T GetADCVoltage[2];           /* '<S232>/Get ADC Voltage' */
  real32_T GetCurrents[2];             /* '<S232>/Get Currents' */
  real32_T PU_Conversion[2];           /* '<S232>/PU_Conversion' */
  real32_T DataStoreRead1;             /* '<S12>/Data Store Read1' */
  real32_T Merge_o;                    /* '<S19>/Merge' */
  real32_T Merge_mm;                   /* '<S158>/Merge' */
  real32_T indexing;                   /* '<S156>/indexing' */
  real32_T Lookup[4];                  /* '<S156>/Lookup' */
  real32_T Sum3;                       /* '<S157>/Sum3' */
  real32_T DataTypeConversion1;        /* '<S156>/Data Type Conversion1' */
  real32_T Sum2;                       /* '<S156>/Sum2' */
  real32_T Product_m;                  /* '<S157>/Product' */
  real32_T Sum4;                       /* '<S157>/Sum4' */
  real32_T Sum5;                       /* '<S157>/Sum5' */
  real32_T Product1_k;                 /* '<S157>/Product1' */
  real32_T Sum6;                       /* '<S157>/Sum6' */
  real32_T CastToSingle_f;             /* '<S12>/Cast To Single' */
  real32_T Sum_gs;                     /* '<S29>/Sum' */
  real32_T PProdOut;                   /* '<S134>/PProd Out' */
  real32_T Kp1;                        /* '<S29>/Kp1' */
  real32_T Integrator;                 /* '<S129>/Integrator' */
  real32_T Sum_m;                      /* '<S138>/Sum' */
  real32_T Sum_b;                      /* '<S28>/Sum' */
  real32_T PProdOut_b;                 /* '<S83>/PProd Out' */
  real32_T Ki1;                        /* '<S28>/Ki1' */
  real32_T Integrator_o;               /* '<S78>/Integrator' */
  real32_T Sum_h;                      /* '<S87>/Sum' */
  real32_T CastToSingle1;              /* '<S12>/Cast To Single1' */
  real32_T CastToSingle2;              /* '<S12>/Cast To Single2' */
  real32_T TmpSignalConversionAtSelectorIn[16];
  real32_T Selector[2];                /* '<S12>/Selector' */
  real32_T DeadZone;                   /* '<S71>/DeadZone' */
  real32_T IProdOut;                   /* '<S75>/IProd Out' */
  real32_T Switch_b;                   /* '<S69>/Switch' */
  real32_T DeadZone_g;                 /* '<S122>/DeadZone' */
  real32_T IProdOut_h;                 /* '<S126>/IProd Out' */
  real32_T Switch_ls;                  /* '<S120>/Switch' */
  real32_T Merge_p;                    /* '<S149>/Merge' */
  real32_T indexing_i;                 /* '<S146>/indexing' */
  real32_T DataTypeConversion1_f;      /* '<S146>/Data Type Conversion1' */
  real32_T Lookup_f[4];                /* '<S146>/Lookup' */
  real32_T Sum3_c;                     /* '<S148>/Sum3' */
  real32_T Sum2_p;                     /* '<S146>/Sum2' */
  real32_T Product_d;                  /* '<S148>/Product' */
  real32_T Sum5_k;                     /* '<S148>/Sum5' */
  real32_T Product1_p;                 /* '<S148>/Product1' */
  real32_T Sum4_j;                     /* '<S148>/Sum4' */
  real32_T Sum6_e;                     /* '<S148>/Sum6' */
  real32_T DataTypeConversion;         /* '<S16>/Data Type Conversion' */
  real32_T Switch_f;                   /* '<S233>/Switch' */
  real32_T Speed_PU;                   /* '<S1>/Input Scaling' */
  real32_T Gain_m[3];                  /* '<S16>/Gain' */
  real32_T PWM_Duty_Cycles[3];         /* '<S16>/Sum' */
  real32_T currentSpeedData;           /* '<S191>/currentSpeedData' */
  real32_T Divide;                     /* '<S191>/Divide' */
  real32_T SpeedGain;                  /* '<S191>/SpeedGain' */
  real32_T Merge1_l;                   /* '<S204>/Merge1' */
  real32_T Saturation_k;               /* '<S204>/Saturation' */
  real32_T Merge_c;                    /* '<S204>/Merge' */
  real32_T countData;                  /* '<S207>/countData' */
  real32_T currentSpeedData_k;         /* '<S207>/currentSpeedData' */
  real32_T Divide_f;                   /* '<S207>/Divide' */
  real32_T countData_o;                /* '<S208>/countData' */
  real32_T previousSpeedData;          /* '<S208>/previousSpeedData' */
  real32_T Divide_i;                   /* '<S208>/Divide' */
  real32_T currentSpeedData_o;         /* '<S208>/currentSpeedData' */
  real32_T Divide1;                    /* '<S208>/Divide1' */
  real32_T Sum_nl;                     /* '<S208>/Sum' */
  real32_T Gain1;                      /* '<S208>/Gain1' */
  real32_T Sum1_i;                     /* '<S208>/Sum1' */
  real32_T Product_ii;                 /* '<S208>/Product' */
  real32_T Merge1_la;                  /* '<S205>/Merge1' */
  real32_T Merge1_d;                   /* '<S206>/Merge1' */
  real32_T acos_e;                     /* '<S155>/acos' */
  real32_T bsin;                       /* '<S155>/bsin' */
  real32_T sum_Ds;                     /* '<S155>/sum_Ds' */
  real32_T bcos;                       /* '<S155>/bcos' */
  real32_T asin_j;                     /* '<S155>/asin' */
  real32_T sum_Qs;                     /* '<S155>/sum_Qs' */
  real32_T Switch_fd[2];               /* '<S162>/Switch' */
  real32_T algDD_o1_h;
  real32_T algDD_o2_l;
  real32_T a_plus_2b;                  /* '<S26>/a_plus_2b' */
  real32_T one_by_sqrt3;               /* '<S26>/one_by_sqrt3' */
  real32_T algDD_o1_a;
  real32_T algDD_o2_n;
  int32_T DataTypeConversion_f[2];     /* '<S174>/Data Type Conversion' */
  int32_T Add_fi[2];                   /* '<S174>/Add' */
  uint16_T RT9;                        /* '<Root>/RT9' */
  uint16_T Divide_ir;                  /* '<S361>/Divide' */
  uint16_T Divide1_e;                  /* '<S361>/Divide1' */
  uint16_T ForIterator;                /* '<S364>/For Iterator' */
  uint16_T ADC_A_IN0;                  /* '<S364>/ADC_A_IN0' */
  uint16_T ADC_B_IN0;                  /* '<S364>/ADC_B_IN0' */
  uint16_T Memory;                     /* '<S369>/Memory' */
  uint16_T Sum_i;                      /* '<S369>/Sum' */
  uint16_T Memory1;                    /* '<S369>/Memory1' */
  uint16_T Sum1_j;                     /* '<S369>/Sum1' */
  uint16_T DataTypeConversion2;        /* '<S377>/Data Type Conversion2' */
  uint16_T BitwiseOperator;            /* '<S376>/Bitwise Operator' */
  uint16_T BitwiseOperator1;           /* '<S376>/Bitwise Operator1' */
  uint16_T ShiftArithmetic1_d;         /* '<S376>/Shift Arithmetic1' */
  uint16_T DataTypeConversion1_o;      /* '<S338>/Data Type Conversion1' */
  uint16_T DataTypeConversion2_p;      /* '<S338>/Data Type Conversion2' */
  uint16_T DataTypeConversion_n;       /* '<S343>/Data Type Conversion' */
  uint16_T Merge_pc;                   /* '<S343>/Merge' */
  uint16_T DataTypeConversion1_n;      /* '<S316>/Data Type Conversion1' */
  uint16_T DataTypeConversion2_g;      /* '<S316>/Data Type Conversion2' */
  uint16_T DataTypeConversion_j;       /* '<S321>/Data Type Conversion' */
  uint16_T Merge_j;                    /* '<S321>/Merge' */
  uint16_T DataTypeConversion1_d;      /* '<S294>/Data Type Conversion1' */
  uint16_T DataTypeConversion2_c;      /* '<S294>/Data Type Conversion2' */
  uint16_T DataTypeConversion_p;       /* '<S299>/Data Type Conversion' */
  uint16_T Merge_k;                    /* '<S299>/Merge' */
  uint16_T Switch_m;                   /* '<S188>/Switch' */
  uint16_T DelayOneStep;               /* '<S189>/Delay One Step' */
  uint16_T watchdogcheck;              /* '<S192>/watchdog check' */
  uint16_T Switch_a;                   /* '<S177>/Switch' */
  uint16_T Sum_m3;                     /* '<S189>/Sum' */
  uint16_T DataStoreRead_k;            /* '<S174>/Data Store Read' */
  uint16_T DataStoreRead1_h;           /* '<S174>/Data Store Read1' */
  uint16_T ADC_C_IN2;                  /* '<S245>/ADC_C_IN2' */
  uint16_T ADC_B_IN2;                  /* '<S245>/ADC_B_IN2' */
  uint16_T TmpSignalConversionAtGainInport[2];
  uint16_T Output;                     /* '<S239>/Output' */
  uint16_T DataTypeConversion_m;       /* '<S158>/Data Type Conversion' */
  uint16_T Get_Integer;                /* '<S156>/Get_Integer' */
  uint16_T Switch1_o;                  /* '<S32>/Switch1' */
  uint16_T DataStoreRead_g;            /* '<S12>/Data Store Read' */
  uint16_T MultiportSwitch[2];         /* '<S12>/Multiport Switch' */
  uint16_T FixPtSum1;                  /* '<S243>/FixPt Sum1' */
  uint16_T FixPtSwitch;                /* '<S244>/FixPt Switch' */
  uint16_T DataTypeConversion_e;       /* '<S149>/Data Type Conversion' */
  uint16_T Get_Integer_f;              /* '<S146>/Get_Integer' */
  uint16_T Switch1_f[3];               /* '<S233>/Switch1' */
  uint16_T Scale_to_PWM_Counter_PRD[3];/* '<S233>/Scale_to_PWM_Counter_PRD' */
  uint16_T speedcheck;                 /* '<S192>/speed check' */
  uint16_T DataStoreRead5;             /* '<S175>/Data Store Read5' */
  uint16_T DataStoreRead4;             /* '<S175>/Data Store Read4' */
  uint16_T DataTypeConversion_jg;      /* '<S30>/Data Type Conversion' */
  uint16_T DataTypeConversion_nl;      /* '<S40>/Data Type Conversion' */
  int16_T DataStoreRead1_k;            /* '<S5>/Data Store Read1' */
  int16_T Merge1_k;                    /* '<S343>/Merge1' */
  int16_T DataStoreRead1_kl;           /* '<S4>/Data Store Read1' */
  int16_T Merge1_a;                    /* '<S321>/Merge1' */
  int16_T DataStoreRead1_o;            /* '<S3>/Data Store Read1' */
  int16_T Merge1_kl;                   /* '<S299>/Merge1' */
  int16_T WhileIterator;               /* '<S237>/While Iterator' */
  int16_T DataStoreRead3;              /* '<S175>/Data Store Read3' */
  uint16_T Merge_l;                    /* '<S13>/Merge' */
  uint16_T Compare;                    /* '<S184>/Compare' */
  int16_T Switch1_i;                   /* '<S69>/Switch1' */
  int16_T Switch2_a;                   /* '<S69>/Switch2' */
  int16_T Switch1_j;                   /* '<S120>/Switch1' */
  int16_T Switch2_b;                   /* '<S120>/Switch2' */
  boolean_T Switch_bt;                 /* '<S362>/Switch' */
  boolean_T NOT;                       /* '<S360>/NOT' */
  boolean_T DataTypeConversion3;       /* '<S376>/Data Type Conversion3' */
  boolean_T Merge3;                    /* '<S343>/Merge3' */
  boolean_T Merge_pt;                  /* '<S337>/Merge' */
  boolean_T Merge3_o;                  /* '<S321>/Merge3' */
  boolean_T Merge_f;                   /* '<S315>/Merge' */
  boolean_T Merge3_m;                  /* '<S299>/Merge3' */
  boolean_T Merge_n;                   /* '<S293>/Merge' */
  boolean_T DataStoreRead1_f;          /* '<S13>/Data Store Read1' */
  boolean_T Compare_e;                 /* '<S176>/Compare' */
  boolean_T DataTypeConversion_nh;     /* '<S188>/Data Type Conversion' */
  boolean_T validityDelay;             /* '<S188>/validityDelay' */
  boolean_T DelayOneStep1;             /* '<S189>/Delay One Step1' */
  boolean_T DataTypeConversion4;       /* '<S177>/Data Type Conversion4' */
  boolean_T OR;                        /* '<S189>/OR' */
  boolean_T Compare_n;                 /* '<S193>/Compare' */
  boolean_T Compare_d;                 /* '<S159>/Compare' */
  boolean_T DataStoreRead1_b;          /* '<S29>/Data Store Read1' */
  boolean_T LogicalOperator;           /* '<S29>/Logical Operator' */
  boolean_T DataStoreRead1_g;          /* '<S28>/Data Store Read1' */
  boolean_T LogicalOperator_j;         /* '<S28>/Logical Operator' */
  boolean_T RelationalOperator;        /* '<S69>/Relational Operator' */
  boolean_T fixforDTpropagationissue; /* '<S69>/fix for DT propagation issue' */
  boolean_T fixforDTpropagationissue1;
                                     /* '<S69>/fix for DT propagation issue1' */
  boolean_T Equal1;                    /* '<S69>/Equal1' */
  boolean_T AND3;                      /* '<S69>/AND3' */
  boolean_T RelationalOperator_m;      /* '<S120>/Relational Operator' */
  boolean_T fixforDTpropagationissue_b;
                                     /* '<S120>/fix for DT propagation issue' */
  boolean_T fixforDTpropagationissue1_h;
                                    /* '<S120>/fix for DT propagation issue1' */
  boolean_T Equal1_d;                  /* '<S120>/Equal1' */
  boolean_T AND3_f;                    /* '<S120>/AND3' */
  boolean_T Compare_nf;                /* '<S150>/Compare' */
  boolean_T Enable;                    /* '<S16>/Enable' */
  boolean_T LogicalOperator_a;         /* '<S188>/Logical Operator' */
  boolean_T RelationalOperator_k;      /* '<S182>/Relational Operator' */
  boolean_T NOT_b;                     /* '<S182>/NOT' */
  boolean_T RelationalOperator_h;      /* '<S30>/Relational Operator' */
  boolean_T Compare_h;                 /* '<S36>/Compare' */
  boolean_T Compare_nfz;               /* '<S37>/Compare' */
  boolean_T LowerRelop1;               /* '<S41>/LowerRelop1' */
  boolean_T RelationalOperator_i;      /* '<S40>/Relational Operator' */
  boolean_T UpperRelop;                /* '<S41>/UpperRelop' */
  rtB_SpeedControl_mcb_pmsm_foc_h SpeedControl;/* '<Root>/Speed Control' */
  rtB_SPIMasterTransfer2_mcb_pmsm SPIMasterTransfer3;/* '<S370>/SPI Master Transfer2' */
  rtB_SPIMasterTransfer2_mcb_pmsm SPIMasterTransfer2;/* '<S370>/SPI Master Transfer2' */
  rtB_ValidHalls_mcb_pmsm_foc_hal ValidHalls_hi;/* '<S343>/Valid Halls' */
  rtB_ValidHalls_mcb_pmsm_foc_hal ValidHalls_h;/* '<S321>/Valid Halls' */
  rtB_ValidHalls_mcb_pmsm_foc_hal ValidHalls;/* '<S299>/Valid Halls' */
  rtB_IfActionSubsystem_mcb_pms_g IfActionSubsystem3;/* '<S19>/If Action Subsystem3' */
  rtB_IfActionSubsystem_mcb_pms_g IfActionSubsystem2;/* '<S19>/If Action Subsystem2' */
  rtB_IfActionSubsystem_mcb_pms_g IfActionSubsystem_e;/* '<S19>/If Action Subsystem' */
  rtB_IfActionSubsystem1_mcb_pmsm IfActionSubsystem1_i;/* '<S158>/If Action Subsystem1' */
  rtB_IfActionSubsystem_mcb_pmsm_ IfActionSubsystem_n;/* '<S158>/If Action Subsystem' */
  rtB_IfActionSubsystem1_mcb_pmsm IfActionSubsystem1;/* '<S149>/If Action Subsystem1' */
  rtB_IfActionSubsystem_mcb_pmsm_ IfActionSubsystem;/* '<S149>/If Action Subsystem' */
} BlockIO_mcb_pmsm_foc_hall_f2837;

/* Block states (default storage) for system '<Root>' */
typedef struct {
  real32_T Integrator_DSTATE;          /* '<S129>/Integrator' */
  real32_T Integrator_DSTATE_j;        /* '<S78>/Integrator' */
  uint32_T UnitDelay_DSTATE;           /* '<S182>/Unit Delay' */
  volatile real32_T RT6_Buffer[2];     /* '<Root>/RT6' */
  volatile real32_T RT7_Buffer[2];     /* '<Root>/RT7' */
  volatile real32_T RT12_Buffer[2];    /* '<Root>/RT12' */
  volatile real32_T RT11_Buffer[2];    /* '<Root>/RT11' */
  volatile real32_T RT13_Buffer[2];    /* '<Root>/RT13' */
  volatile real32_T RT2_Buffer[4];     /* '<Root>/RT2' */
  real32_T Speed_ref;                  /* '<Root>/Data Store Memory8' */
  int32_T DigitalOutput2_FRAC_LEN;     /* '<S372>/Digital Output2' */
  int32_T DRV830xEnable_FRAC_LEN;      /* '<S362>/DRV830x Enable' */
  int32_T Add_DWORK1[2];               /* '<S174>/Add' */
  int32_T InverterEnable_FRAC_LEN;     /* '<S233>/Inverter Enable' */
  int32_T clockTickCounter;            /* '<S170>/Discrete Pulse Generator' */
  uint32_T GlobalSpeedCount;           /* '<Root>/Data Store Memory1' */
  uint32_T GlobalHallState;            /* '<Root>/Data Store Memory4' */
  uint32_T Sum_DWORK1[4];              /* '<S156>/Sum' */
  uint32_T Add_DWORK1_j;               /* '<S237>/Add' */
  uint16_T DelayOneStep_DSTATE;        /* '<S189>/Delay One Step' */
  uint16_T Output_DSTATE;              /* '<S239>/Output' */
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
  uint16_T Memory_PreviousInput;       /* '<S369>/Memory' */
  uint16_T Memory1_PreviousInput;      /* '<S369>/Memory1' */
  boolean_T DelayOneStep1_DSTATE;      /* '<S189>/Delay One Step1' */
  int16_T Integrator_PrevResetState;   /* '<S129>/Integrator' */
  int16_T Integrator_PrevResetState_m; /* '<S78>/Integrator' */
  uint16_T ERROR;                      /* '<Root>/Data Store Memory10' */
  boolean_T Enable;                    /* '<Root>/Data Store Memory29' */
  boolean_T EnClosedLoop;              /* '<Root>/Data Store Memory9' */
  rtDW_SpeedControl_mcb_pmsm_foc_ SpeedControl;/* '<Root>/Speed Control' */
  rtDW_SPIMasterTransfer2_mcb_pms SPIMasterTransfer3;/* '<S370>/SPI Master Transfer2' */
  rtDW_SPIMasterTransfer2_mcb_pms SPIMasterTransfer2;/* '<S370>/SPI Master Transfer2' */
} D_Work_mcb_pmsm_foc_hall_f28379;

/* Invariant block signals (default storage) */
typedef struct {
  const uint32_T Width;                /* '<S236>/Width' */
  const real32_T Gain1;                /* '<S13>/Gain1' */
  const real32_T SpeedConstData;       /* '<S191>/SpeedConstData' */
} ConstBlockIO_mcb_pmsm_foc_hall_;

/* Constant parameters (default storage) */
typedef struct {
  /* Pooled Parameter (Expression: )
   * Referenced by:
   *   '<S146>/sine_table_values'
   *   '<S156>/sine_table_values'
   */
  real32_T pooled14[1002];
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
 * '<S13>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Error Trigger'
 * '<S14>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Input Scaling'
 * '<S15>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Inverter'
 * '<S16>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Output Scaling'
 * '<S17>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/SCI_Tx'
 * '<S18>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Sensor Driver Blocks'
 * '<S19>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Subsystem'
 * '<S20>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Clarke Transform'
 * '<S21>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers'
 * '<S22>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Inverse Park Transform'
 * '<S23>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Park Transform'
 * '<S24>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Space Vector Generator'
 * '<S25>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Clarke Transform/Two phase input'
 * '<S26>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Clarke Transform/Two phase input/Two phase CRL wrap'
 * '<S27>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/DQ Limiter'
 * '<S28>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id'
 * '<S29>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq'
 * '<S30>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/DQ Limiter/D-Q Equivalence'
 * '<S31>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/DQ Limiter/D//Q Axis Priority'
 * '<S32>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/DQ Limiter/Inport//Dialog Selection'
 * '<S33>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/DQ Limiter/Magnitude_calc'
 * '<S34>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/DQ Limiter/D-Q Equivalence/Limiter'
 * '<S35>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/DQ Limiter/D-Q Equivalence/Passthrough'
 * '<S36>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/DQ Limiter/D//Q Axis Priority/Compare To Constant'
 * '<S37>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/DQ Limiter/D//Q Axis Priority/Compare To Constant1'
 * '<S38>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/DQ Limiter/D//Q Axis Priority/flipInputs'
 * '<S39>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/DQ Limiter/D//Q Axis Priority/flipInputs1'
 * '<S40>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/DQ Limiter/D//Q Axis Priority/limiter'
 * '<S41>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/DQ Limiter/D//Q Axis Priority/limiter/limitRef1'
 * '<S42>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/DQ Limiter/D//Q Axis Priority/limiter/limitRef2'
 * '<S43>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/DQ Limiter/D//Q Axis Priority/limiter/passThrough'
 * '<S44>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset'
 * '<S45>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Anti-windup'
 * '<S46>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/D Gain'
 * '<S47>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Filter'
 * '<S48>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Filter ICs'
 * '<S49>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/I Gain'
 * '<S50>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Ideal P Gain'
 * '<S51>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Ideal P Gain Fdbk'
 * '<S52>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Integrator'
 * '<S53>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Integrator ICs'
 * '<S54>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/N Copy'
 * '<S55>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/N Gain'
 * '<S56>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/P Copy'
 * '<S57>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Parallel P Gain'
 * '<S58>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Reset Signal'
 * '<S59>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Saturation'
 * '<S60>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Saturation Fdbk'
 * '<S61>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Sum'
 * '<S62>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Sum Fdbk'
 * '<S63>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Tracking Mode'
 * '<S64>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Tracking Mode Sum'
 * '<S65>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Tsamp - Integral'
 * '<S66>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Tsamp - Ngain'
 * '<S67>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/postSat Signal'
 * '<S68>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/preSat Signal'
 * '<S69>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Anti-windup/Disc. Clamping Parallel'
 * '<S70>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Anti-windup/Disc. Clamping Parallel/Dead Zone'
 * '<S71>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Anti-windup/Disc. Clamping Parallel/Dead Zone/Enabled'
 * '<S72>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/D Gain/Disabled'
 * '<S73>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Filter/Disabled'
 * '<S74>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Filter ICs/Disabled'
 * '<S75>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/I Gain/External Parameters'
 * '<S76>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Ideal P Gain/Passthrough'
 * '<S77>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Ideal P Gain Fdbk/Disabled'
 * '<S78>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Integrator/Discrete'
 * '<S79>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Integrator ICs/External IC'
 * '<S80>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/N Copy/Disabled wSignal Specification'
 * '<S81>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/N Gain/Disabled'
 * '<S82>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/P Copy/Disabled'
 * '<S83>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Parallel P Gain/External Parameters'
 * '<S84>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Reset Signal/External Reset'
 * '<S85>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Saturation/Enabled'
 * '<S86>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Saturation Fdbk/Disabled'
 * '<S87>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Sum/Sum_PI'
 * '<S88>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Sum Fdbk/Disabled'
 * '<S89>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Tracking Mode/Disabled'
 * '<S90>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Tracking Mode Sum/Passthrough'
 * '<S91>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Tsamp - Integral/TsSignalSpecification'
 * '<S92>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Tsamp - Ngain/Passthrough'
 * '<S93>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/postSat Signal/Forward_Path'
 * '<S94>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/preSat Signal/Forward_Path'
 * '<S95>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset'
 * '<S96>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Anti-windup'
 * '<S97>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/D Gain'
 * '<S98>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Filter'
 * '<S99>'  : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Filter ICs'
 * '<S100>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/I Gain'
 * '<S101>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Ideal P Gain'
 * '<S102>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Ideal P Gain Fdbk'
 * '<S103>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Integrator'
 * '<S104>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Integrator ICs'
 * '<S105>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/N Copy'
 * '<S106>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/N Gain'
 * '<S107>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/P Copy'
 * '<S108>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Parallel P Gain'
 * '<S109>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Reset Signal'
 * '<S110>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Saturation'
 * '<S111>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Saturation Fdbk'
 * '<S112>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Sum'
 * '<S113>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Sum Fdbk'
 * '<S114>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Tracking Mode'
 * '<S115>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Tracking Mode Sum'
 * '<S116>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Tsamp - Integral'
 * '<S117>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Tsamp - Ngain'
 * '<S118>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/postSat Signal'
 * '<S119>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/preSat Signal'
 * '<S120>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Anti-windup/Disc. Clamping Parallel'
 * '<S121>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Anti-windup/Disc. Clamping Parallel/Dead Zone'
 * '<S122>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Anti-windup/Disc. Clamping Parallel/Dead Zone/Enabled'
 * '<S123>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/D Gain/Disabled'
 * '<S124>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Filter/Disabled'
 * '<S125>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Filter ICs/Disabled'
 * '<S126>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/I Gain/External Parameters'
 * '<S127>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Ideal P Gain/Passthrough'
 * '<S128>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Ideal P Gain Fdbk/Disabled'
 * '<S129>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Integrator/Discrete'
 * '<S130>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Integrator ICs/External IC'
 * '<S131>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/N Copy/Disabled wSignal Specification'
 * '<S132>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/N Gain/Disabled'
 * '<S133>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/P Copy/Disabled'
 * '<S134>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Parallel P Gain/External Parameters'
 * '<S135>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Reset Signal/External Reset'
 * '<S136>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Saturation/Enabled'
 * '<S137>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Saturation Fdbk/Disabled'
 * '<S138>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Sum/Sum_PI'
 * '<S139>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Sum Fdbk/Disabled'
 * '<S140>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Tracking Mode/Disabled'
 * '<S141>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Tracking Mode Sum/Passthrough'
 * '<S142>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Tsamp - Integral/TsSignalSpecification'
 * '<S143>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Tsamp - Ngain/Passthrough'
 * '<S144>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/postSat Signal/Forward_Path'
 * '<S145>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/preSat Signal/Forward_Path'
 * '<S146>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Inverse Park Transform/Sine Cosine'
 * '<S147>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Inverse Park Transform/Two inputs CRL'
 * '<S148>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Inverse Park Transform/Sine Cosine/Interpolation'
 * '<S149>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Inverse Park Transform/Sine Cosine/WrapUp'
 * '<S150>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Inverse Park Transform/Sine Cosine/WrapUp/Compare To Zero'
 * '<S151>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Inverse Park Transform/Sine Cosine/WrapUp/If Action Subsystem'
 * '<S152>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Inverse Park Transform/Sine Cosine/WrapUp/If Action Subsystem1'
 * '<S153>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Inverse Park Transform/Two inputs CRL/Switch_Axis'
 * '<S154>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Park Transform/Sine Cosine'
 * '<S155>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Park Transform/Two inputs CRL'
 * '<S156>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Park Transform/Sine Cosine/Sine-Cosine Lookup'
 * '<S157>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Park Transform/Sine Cosine/Sine-Cosine Lookup/Interpolation'
 * '<S158>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Park Transform/Sine Cosine/Sine-Cosine Lookup/WrapUp'
 * '<S159>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Park Transform/Sine Cosine/Sine-Cosine Lookup/WrapUp/Compare To Zero'
 * '<S160>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Park Transform/Sine Cosine/Sine-Cosine Lookup/WrapUp/If Action Subsystem'
 * '<S161>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Park Transform/Sine Cosine/Sine-Cosine Lookup/WrapUp/If Action Subsystem1'
 * '<S162>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Park Transform/Two inputs CRL/Switch_Axis'
 * '<S163>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Space Vector Generator/Modulation method'
 * '<S164>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Space Vector Generator/Voltage Input'
 * '<S165>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Space Vector Generator/Modulation method/SVPWM'
 * '<S166>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Space Vector Generator/Modulation method/SVPWM/Half(Vmin+Vmax)'
 * '<S167>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Space Vector Generator/Voltage Input/Valphabeta'
 * '<S168>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Space Vector Generator/Voltage Input/Valphabeta/Inverse Clarke Transform'
 * '<S169>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Control_System/Space Vector Generator/Voltage Input/Valphabeta/Inverse Clarke Transform/Two phase input'
 * '<S170>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Error Trigger/堵转'
 * '<S171>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Error Trigger/正常运行'
 * '<S172>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Input Scaling/Read_Sensor (codegen)'
 * '<S173>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Input Scaling/Read_Sensor (codegen)/Calculate Position from Hall'
 * '<S174>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Input Scaling/Read_Sensor (codegen)/Convert ADC value to PU'
 * '<S175>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Input Scaling/Read_Sensor (codegen)/Calculate Position from Hall/Atomic Hall Reading'
 * '<S176>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Input Scaling/Read_Sensor (codegen)/Calculate Position from Hall/Glitch Filter'
 * '<S177>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Input Scaling/Read_Sensor (codegen)/Calculate Position from Hall/Hall Speed and Position'
 * '<S178>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Input Scaling/Read_Sensor (codegen)/Calculate Position from Hall/Mechanical to Electrical Position1'
 * '<S179>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Input Scaling/Read_Sensor (codegen)/Calculate Position from Hall/Subsystem'
 * '<S180>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Input Scaling/Read_Sensor (codegen)/Calculate Position from Hall/Atomic Hall Reading/Function-Call Subsystem'
 * '<S181>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Input Scaling/Read_Sensor (codegen)/Calculate Position from Hall/Atomic Hall Reading/Function-Call Subsystem1'
 * '<S182>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Input Scaling/Read_Sensor (codegen)/Calculate Position from Hall/Atomic Hall Reading/Integrity_Check'
 * '<S183>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Input Scaling/Read_Sensor (codegen)/Calculate Position from Hall/Atomic Hall Reading/Function-Call Subsystem/Read Halls'
 * '<S184>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Input Scaling/Read_Sensor (codegen)/Calculate Position from Hall/Atomic Hall Reading/Integrity_Check/Compare To Constant'
 * '<S185>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Input Scaling/Read_Sensor (codegen)/Calculate Position from Hall/Atomic Hall Reading/Integrity_Check/No_Integrity_issue'
 * '<S186>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Input Scaling/Read_Sensor (codegen)/Calculate Position from Hall/Atomic Hall Reading/Integrity_Check/Refresh_Halls'
 * '<S187>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Input Scaling/Read_Sensor (codegen)/Calculate Position from Hall/Atomic Hall Reading/Integrity_Check/Refresh_Halls/Read Halls'
 * '<S188>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Input Scaling/Read_Sensor (codegen)/Calculate Position from Hall/Hall Speed and Position/ExtrapolationOrder'
 * '<S189>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Input Scaling/Read_Sensor (codegen)/Calculate Position from Hall/Hall Speed and Position/Software Watchdog Timer'
 * '<S190>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Input Scaling/Read_Sensor (codegen)/Calculate Position from Hall/Hall Speed and Position/Speed and direction are not valid Position will be set to the middle of the Hall quadrant'
 * '<S191>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Input Scaling/Read_Sensor (codegen)/Calculate Position from Hall/Hall Speed and Position/Speed and direction are valid Use speed to extrapolate position'
 * '<S192>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Input Scaling/Read_Sensor (codegen)/Calculate Position from Hall/Hall Speed and Position/VaidityCheck'
 * '<S193>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Input Scaling/Read_Sensor (codegen)/Calculate Position from Hall/Hall Speed and Position/Software Watchdog Timer/Compare To Zero'
 * '<S194>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Input Scaling/Read_Sensor (codegen)/Calculate Position from Hall/Hall Speed and Position/Speed and direction are not valid Position will be set to the middle of the Hall quadrant/independent Direction'
 * '<S195>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Input Scaling/Read_Sensor (codegen)/Calculate Position from Hall/Hall Speed and Position/Speed and direction are not valid Position will be set to the middle of the Hall quadrant/independent Direction/Hall Value of 1'
 * '<S196>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Input Scaling/Read_Sensor (codegen)/Calculate Position from Hall/Hall Speed and Position/Speed and direction are not valid Position will be set to the middle of the Hall quadrant/independent Direction/Hall Value of 2'
 * '<S197>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Input Scaling/Read_Sensor (codegen)/Calculate Position from Hall/Hall Speed and Position/Speed and direction are not valid Position will be set to the middle of the Hall quadrant/independent Direction/Hall Value of 3'
 * '<S198>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Input Scaling/Read_Sensor (codegen)/Calculate Position from Hall/Hall Speed and Position/Speed and direction are not valid Position will be set to the middle of the Hall quadrant/independent Direction/Hall Value of 4'
 * '<S199>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Input Scaling/Read_Sensor (codegen)/Calculate Position from Hall/Hall Speed and Position/Speed and direction are not valid Position will be set to the middle of the Hall quadrant/independent Direction/Hall Value of 5'
 * '<S200>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Input Scaling/Read_Sensor (codegen)/Calculate Position from Hall/Hall Speed and Position/Speed and direction are not valid Position will be set to the middle of the Hall quadrant/independent Direction/Hall Value of 6'
 * '<S201>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Input Scaling/Read_Sensor (codegen)/Calculate Position from Hall/Hall Speed and Position/Speed and direction are not valid Position will be set to the middle of the Hall quadrant/independent Direction/Hall Value of 7'
 * '<S202>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Input Scaling/Read_Sensor (codegen)/Calculate Position from Hall/Hall Speed and Position/Speed and direction are valid Use speed to extrapolate position/If Action Subsystem'
 * '<S203>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Input Scaling/Read_Sensor (codegen)/Calculate Position from Hall/Hall Speed and Position/Speed and direction are valid Use speed to extrapolate position/If Action Subsystem1'
 * '<S204>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Input Scaling/Read_Sensor (codegen)/Calculate Position from Hall/Hall Speed and Position/Speed and direction are valid Use speed to extrapolate position/Subsystem1'
 * '<S205>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Input Scaling/Read_Sensor (codegen)/Calculate Position from Hall/Hall Speed and Position/Speed and direction are valid Use speed to extrapolate position/Subsystem1/+ve Direction'
 * '<S206>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Input Scaling/Read_Sensor (codegen)/Calculate Position from Hall/Hall Speed and Position/Speed and direction are valid Use speed to extrapolate position/Subsystem1/-ve Direction'
 * '<S207>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Input Scaling/Read_Sensor (codegen)/Calculate Position from Hall/Hall Speed and Position/Speed and direction are valid Use speed to extrapolate position/Subsystem1/first_order'
 * '<S208>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Input Scaling/Read_Sensor (codegen)/Calculate Position from Hall/Hall Speed and Position/Speed and direction are valid Use speed to extrapolate position/Subsystem1/second_order'
 * '<S209>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Input Scaling/Read_Sensor (codegen)/Calculate Position from Hall/Hall Speed and Position/Speed and direction are valid Use speed to extrapolate position/Subsystem1/+ve Direction/Hall Value of 1'
 * '<S210>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Input Scaling/Read_Sensor (codegen)/Calculate Position from Hall/Hall Speed and Position/Speed and direction are valid Use speed to extrapolate position/Subsystem1/+ve Direction/Hall Value of 2'
 * '<S211>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Input Scaling/Read_Sensor (codegen)/Calculate Position from Hall/Hall Speed and Position/Speed and direction are valid Use speed to extrapolate position/Subsystem1/+ve Direction/Hall Value of 3'
 * '<S212>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Input Scaling/Read_Sensor (codegen)/Calculate Position from Hall/Hall Speed and Position/Speed and direction are valid Use speed to extrapolate position/Subsystem1/+ve Direction/Hall Value of 4'
 * '<S213>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Input Scaling/Read_Sensor (codegen)/Calculate Position from Hall/Hall Speed and Position/Speed and direction are valid Use speed to extrapolate position/Subsystem1/+ve Direction/Hall Value of 5'
 * '<S214>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Input Scaling/Read_Sensor (codegen)/Calculate Position from Hall/Hall Speed and Position/Speed and direction are valid Use speed to extrapolate position/Subsystem1/+ve Direction/Hall Value of 6'
 * '<S215>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Input Scaling/Read_Sensor (codegen)/Calculate Position from Hall/Hall Speed and Position/Speed and direction are valid Use speed to extrapolate position/Subsystem1/+ve Direction/Hall Value of 7'
 * '<S216>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Input Scaling/Read_Sensor (codegen)/Calculate Position from Hall/Hall Speed and Position/Speed and direction are valid Use speed to extrapolate position/Subsystem1/-ve Direction/Hall Value of 1'
 * '<S217>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Input Scaling/Read_Sensor (codegen)/Calculate Position from Hall/Hall Speed and Position/Speed and direction are valid Use speed to extrapolate position/Subsystem1/-ve Direction/Hall Value of 2'
 * '<S218>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Input Scaling/Read_Sensor (codegen)/Calculate Position from Hall/Hall Speed and Position/Speed and direction are valid Use speed to extrapolate position/Subsystem1/-ve Direction/Hall Value of 3'
 * '<S219>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Input Scaling/Read_Sensor (codegen)/Calculate Position from Hall/Hall Speed and Position/Speed and direction are valid Use speed to extrapolate position/Subsystem1/-ve Direction/Hall Value of 4'
 * '<S220>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Input Scaling/Read_Sensor (codegen)/Calculate Position from Hall/Hall Speed and Position/Speed and direction are valid Use speed to extrapolate position/Subsystem1/-ve Direction/Hall Value of 5'
 * '<S221>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Input Scaling/Read_Sensor (codegen)/Calculate Position from Hall/Hall Speed and Position/Speed and direction are valid Use speed to extrapolate position/Subsystem1/-ve Direction/Hall Value of 6'
 * '<S222>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Input Scaling/Read_Sensor (codegen)/Calculate Position from Hall/Hall Speed and Position/Speed and direction are valid Use speed to extrapolate position/Subsystem1/-ve Direction/Hall Value of 7'
 * '<S223>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Input Scaling/Read_Sensor (codegen)/Calculate Position from Hall/Mechanical to Electrical Position1/MechToElec'
 * '<S224>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Input Scaling/Read_Sensor (codegen)/Calculate Position from Hall/Mechanical to Electrical Position1/MechToElec/floating-point'
 * '<S225>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Input Scaling/Read_Sensor (codegen)/Calculate Position from Hall/Mechanical to Electrical Position1/MechToElec/floating-point/Compensate Offset'
 * '<S226>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Input Scaling/Read_Sensor (codegen)/Calculate Position from Hall/Mechanical to Electrical Position1/MechToElec/floating-point/Mech To Elec'
 * '<S227>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Input Scaling/Read_Sensor (codegen)/Calculate Position from Hall/Mechanical to Electrical Position1/MechToElec/floating-point/Compensate Offset/If Action Subsystem'
 * '<S228>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Input Scaling/Read_Sensor (codegen)/Calculate Position from Hall/Mechanical to Electrical Position1/MechToElec/floating-point/Compensate Offset/If Action Subsystem1'
 * '<S229>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Input Scaling/Read_Sensor (codegen)/Calculate Position from Hall/Mechanical to Electrical Position1/MechToElec/floating-point/Mech To Elec/Variant Subsystem'
 * '<S230>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Input Scaling/Read_Sensor (codegen)/Calculate Position from Hall/Mechanical to Electrical Position1/MechToElec/floating-point/Mech To Elec/Variant Subsystem/Dialog'
 * '<S231>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Input Scaling/Read_Sensor (codegen)/Convert ADC value to PU/Data_Type'
 * '<S232>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Input Scaling/Read_Sensor (codegen)/Convert ADC value to PU/Data_Type/Data_Type_Float'
 * '<S233>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Inverter/Code Generation'
 * '<S234>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/SCI_Tx/Code Generation'
 * '<S235>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/SCI_Tx/Code Generation/Data_Conditioning_Tx'
 * '<S236>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/SCI_Tx/Code Generation/Data_Logging'
 * '<S237>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/SCI_Tx/Code Generation/While Iterator Subsystem'
 * '<S238>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/SCI_Tx/Code Generation/Data_Conditioning_Tx/Data_Type_Float'
 * '<S239>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/SCI_Tx/Code Generation/Data_Logging/Counter Limited'
 * '<S240>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/SCI_Tx/Code Generation/Data_Logging/Data'
 * '<S241>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/SCI_Tx/Code Generation/Data_Logging/End'
 * '<S242>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/SCI_Tx/Code Generation/Data_Logging/Start'
 * '<S243>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/SCI_Tx/Code Generation/Data_Logging/Counter Limited/Increment Real World'
 * '<S244>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/SCI_Tx/Code Generation/Data_Logging/Counter Limited/Wrap To Zero'
 * '<S245>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Sensor Driver Blocks/Sensor Driver Blocks (codegen)'
 * '<S246>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Subsystem/If Action Subsystem'
 * '<S247>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Subsystem/If Action Subsystem1'
 * '<S248>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Subsystem/If Action Subsystem2'
 * '<S249>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Subsystem/If Action Subsystem3'
 * '<S250>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Subsystem/If Action Subsystem/Mechanical to Electrical Position'
 * '<S251>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Subsystem/If Action Subsystem/Mechanical to Electrical Position/MechToElec'
 * '<S252>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Subsystem/If Action Subsystem/Mechanical to Electrical Position/MechToElec/floating-point'
 * '<S253>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Subsystem/If Action Subsystem/Mechanical to Electrical Position/MechToElec/floating-point/Compensate Offset'
 * '<S254>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Subsystem/If Action Subsystem/Mechanical to Electrical Position/MechToElec/floating-point/Mech To Elec'
 * '<S255>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Subsystem/If Action Subsystem/Mechanical to Electrical Position/MechToElec/floating-point/Compensate Offset/If Action Subsystem'
 * '<S256>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Subsystem/If Action Subsystem/Mechanical to Electrical Position/MechToElec/floating-point/Compensate Offset/If Action Subsystem1'
 * '<S257>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Subsystem/If Action Subsystem/Mechanical to Electrical Position/MechToElec/floating-point/Mech To Elec/Variant Subsystem'
 * '<S258>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Subsystem/If Action Subsystem/Mechanical to Electrical Position/MechToElec/floating-point/Mech To Elec/Variant Subsystem/Dialog'
 * '<S259>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Subsystem/If Action Subsystem2/Mechanical to Electrical Position'
 * '<S260>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Subsystem/If Action Subsystem2/Mechanical to Electrical Position/MechToElec'
 * '<S261>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Subsystem/If Action Subsystem2/Mechanical to Electrical Position/MechToElec/floating-point'
 * '<S262>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Subsystem/If Action Subsystem2/Mechanical to Electrical Position/MechToElec/floating-point/Compensate Offset'
 * '<S263>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Subsystem/If Action Subsystem2/Mechanical to Electrical Position/MechToElec/floating-point/Mech To Elec'
 * '<S264>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Subsystem/If Action Subsystem2/Mechanical to Electrical Position/MechToElec/floating-point/Compensate Offset/If Action Subsystem'
 * '<S265>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Subsystem/If Action Subsystem2/Mechanical to Electrical Position/MechToElec/floating-point/Compensate Offset/If Action Subsystem1'
 * '<S266>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Subsystem/If Action Subsystem2/Mechanical to Electrical Position/MechToElec/floating-point/Mech To Elec/Variant Subsystem'
 * '<S267>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Subsystem/If Action Subsystem2/Mechanical to Electrical Position/MechToElec/floating-point/Mech To Elec/Variant Subsystem/Dialog'
 * '<S268>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Subsystem/If Action Subsystem3/Mechanical to Electrical Position'
 * '<S269>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Subsystem/If Action Subsystem3/Mechanical to Electrical Position/MechToElec'
 * '<S270>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Subsystem/If Action Subsystem3/Mechanical to Electrical Position/MechToElec/floating-point'
 * '<S271>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Subsystem/If Action Subsystem3/Mechanical to Electrical Position/MechToElec/floating-point/Compensate Offset'
 * '<S272>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Subsystem/If Action Subsystem3/Mechanical to Electrical Position/MechToElec/floating-point/Mech To Elec'
 * '<S273>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Subsystem/If Action Subsystem3/Mechanical to Electrical Position/MechToElec/floating-point/Compensate Offset/If Action Subsystem'
 * '<S274>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Subsystem/If Action Subsystem3/Mechanical to Electrical Position/MechToElec/floating-point/Compensate Offset/If Action Subsystem1'
 * '<S275>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Subsystem/If Action Subsystem3/Mechanical to Electrical Position/MechToElec/floating-point/Mech To Elec/Variant Subsystem'
 * '<S276>' : 'mcb_pmsm_foc_hall_f28379d/Current Control/Subsystem/If Action Subsystem3/Mechanical to Electrical Position/MechToElec/floating-point/Mech To Elec/Variant Subsystem/Dialog'
 * '<S277>' : 'mcb_pmsm_foc_hall_f28379d/HW Interrupt/Code Generation'
 * '<S278>' : 'mcb_pmsm_foc_hall_f28379d/HW Interrupt/Code Generation/HWI_ADCB1_INT'
 * '<S279>' : 'mcb_pmsm_foc_hall_f28379d/HW Interrupt/Code Generation/HWI_ECAP1_INT'
 * '<S280>' : 'mcb_pmsm_foc_hall_f28379d/HW Interrupt/Code Generation/HWI_ECAP2_INT'
 * '<S281>' : 'mcb_pmsm_foc_hall_f28379d/HW Interrupt/Code Generation/HWI_ECAP3_INT'
 * '<S282>' : 'mcb_pmsm_foc_hall_f28379d/HW Interrupt/Code Generation/HWI_SCIA_RX_INT'
 * '<S283>' : 'mcb_pmsm_foc_hall_f28379d/HW Interrupt/Code Generation/HWI_ADCB1_INT/ECSoC'
 * '<S284>' : 'mcb_pmsm_foc_hall_f28379d/HW Interrupt/Code Generation/HWI_ADCB1_INT/ECSoC/ECSimCodegen'
 * '<S285>' : 'mcb_pmsm_foc_hall_f28379d/HW Interrupt/Code Generation/HWI_ECAP1_INT/ECSoC'
 * '<S286>' : 'mcb_pmsm_foc_hall_f28379d/HW Interrupt/Code Generation/HWI_ECAP1_INT/ECSoC/ECSimCodegen'
 * '<S287>' : 'mcb_pmsm_foc_hall_f28379d/HW Interrupt/Code Generation/HWI_ECAP2_INT/ECSoC'
 * '<S288>' : 'mcb_pmsm_foc_hall_f28379d/HW Interrupt/Code Generation/HWI_ECAP2_INT/ECSoC/ECSimCodegen'
 * '<S289>' : 'mcb_pmsm_foc_hall_f28379d/HW Interrupt/Code Generation/HWI_ECAP3_INT/ECSoC'
 * '<S290>' : 'mcb_pmsm_foc_hall_f28379d/HW Interrupt/Code Generation/HWI_ECAP3_INT/ECSoC/ECSimCodegen'
 * '<S291>' : 'mcb_pmsm_foc_hall_f28379d/HW Interrupt/Code Generation/HWI_SCIA_RX_INT/ECSoC'
 * '<S292>' : 'mcb_pmsm_foc_hall_f28379d/HW Interrupt/Code Generation/HWI_SCIA_RX_INT/ECSoC/ECSimCodegen'
 * '<S293>' : 'mcb_pmsm_foc_hall_f28379d/Hall Sensor A/Capture Event Selection'
 * '<S294>' : 'mcb_pmsm_foc_hall_f28379d/Hall Sensor A/Hall Validity'
 * '<S295>' : 'mcb_pmsm_foc_hall_f28379d/Hall Sensor A/HallValidity'
 * '<S296>' : 'mcb_pmsm_foc_hall_f28379d/Hall Sensor A/eCAP'
 * '<S297>' : 'mcb_pmsm_foc_hall_f28379d/Hall Sensor A/Capture Event Selection/Output 0'
 * '<S298>' : 'mcb_pmsm_foc_hall_f28379d/Hall Sensor A/Capture Event Selection/Output 1'
 * '<S299>' : 'mcb_pmsm_foc_hall_f28379d/Hall Sensor A/Hall Validity/Subsystem'
 * '<S300>' : 'mcb_pmsm_foc_hall_f28379d/Hall Sensor A/Hall Validity/Subsystem/Bad hall (glitch or wrong connection)'
 * '<S301>' : 'mcb_pmsm_foc_hall_f28379d/Hall Sensor A/Hall Validity/Subsystem/Valid Halls'
 * '<S302>' : 'mcb_pmsm_foc_hall_f28379d/Hall Sensor A/Hall Validity/Subsystem/Valid Halls/If Action Subsystem'
 * '<S303>' : 'mcb_pmsm_foc_hall_f28379d/Hall Sensor A/Hall Validity/Subsystem/Valid Halls/If Action Subsystem1'
 * '<S304>' : 'mcb_pmsm_foc_hall_f28379d/Hall Sensor A/Hall Validity/Subsystem/Valid Halls/If Action Subsystem2'
 * '<S305>' : 'mcb_pmsm_foc_hall_f28379d/Hall Sensor A/Hall Validity/Subsystem/Valid Halls/If Action Subsystem3'
 * '<S306>' : 'mcb_pmsm_foc_hall_f28379d/Hall Sensor A/Hall Validity/Subsystem/Valid Halls/If Action Subsystem4'
 * '<S307>' : 'mcb_pmsm_foc_hall_f28379d/Hall Sensor A/Hall Validity/Subsystem/Valid Halls/If Action Subsystem5'
 * '<S308>' : 'mcb_pmsm_foc_hall_f28379d/Hall Sensor A/Hall Validity/Subsystem/Valid Halls/If Action Subsystem6'
 * '<S309>' : 'mcb_pmsm_foc_hall_f28379d/Hall Sensor A/Hall Validity/Subsystem/Valid Halls/If Action Subsystem7'
 * '<S310>' : 'mcb_pmsm_foc_hall_f28379d/Hall Sensor A/Hall Validity/Subsystem/Valid Halls/If Action Subsystem8'
 * '<S311>' : 'mcb_pmsm_foc_hall_f28379d/Hall Sensor A/Hall Validity/Subsystem/Valid Halls/Switch Case Action Subsystem'
 * '<S312>' : 'mcb_pmsm_foc_hall_f28379d/Hall Sensor A/HallValidity/CodeGen'
 * '<S313>' : 'mcb_pmsm_foc_hall_f28379d/Hall Sensor A/HallValidity/CodeGen/Read Halls'
 * '<S314>' : 'mcb_pmsm_foc_hall_f28379d/Hall Sensor A/eCAP/Code generation'
 * '<S315>' : 'mcb_pmsm_foc_hall_f28379d/Hall Sensor B/Capture Event Selection'
 * '<S316>' : 'mcb_pmsm_foc_hall_f28379d/Hall Sensor B/Hall Validity'
 * '<S317>' : 'mcb_pmsm_foc_hall_f28379d/Hall Sensor B/HallValidity'
 * '<S318>' : 'mcb_pmsm_foc_hall_f28379d/Hall Sensor B/eCAP'
 * '<S319>' : 'mcb_pmsm_foc_hall_f28379d/Hall Sensor B/Capture Event Selection/Output 0'
 * '<S320>' : 'mcb_pmsm_foc_hall_f28379d/Hall Sensor B/Capture Event Selection/Output 1'
 * '<S321>' : 'mcb_pmsm_foc_hall_f28379d/Hall Sensor B/Hall Validity/Subsystem'
 * '<S322>' : 'mcb_pmsm_foc_hall_f28379d/Hall Sensor B/Hall Validity/Subsystem/Bad hall (glitch or wrong connection)'
 * '<S323>' : 'mcb_pmsm_foc_hall_f28379d/Hall Sensor B/Hall Validity/Subsystem/Valid Halls'
 * '<S324>' : 'mcb_pmsm_foc_hall_f28379d/Hall Sensor B/Hall Validity/Subsystem/Valid Halls/If Action Subsystem'
 * '<S325>' : 'mcb_pmsm_foc_hall_f28379d/Hall Sensor B/Hall Validity/Subsystem/Valid Halls/If Action Subsystem1'
 * '<S326>' : 'mcb_pmsm_foc_hall_f28379d/Hall Sensor B/Hall Validity/Subsystem/Valid Halls/If Action Subsystem2'
 * '<S327>' : 'mcb_pmsm_foc_hall_f28379d/Hall Sensor B/Hall Validity/Subsystem/Valid Halls/If Action Subsystem3'
 * '<S328>' : 'mcb_pmsm_foc_hall_f28379d/Hall Sensor B/Hall Validity/Subsystem/Valid Halls/If Action Subsystem4'
 * '<S329>' : 'mcb_pmsm_foc_hall_f28379d/Hall Sensor B/Hall Validity/Subsystem/Valid Halls/If Action Subsystem5'
 * '<S330>' : 'mcb_pmsm_foc_hall_f28379d/Hall Sensor B/Hall Validity/Subsystem/Valid Halls/If Action Subsystem6'
 * '<S331>' : 'mcb_pmsm_foc_hall_f28379d/Hall Sensor B/Hall Validity/Subsystem/Valid Halls/If Action Subsystem7'
 * '<S332>' : 'mcb_pmsm_foc_hall_f28379d/Hall Sensor B/Hall Validity/Subsystem/Valid Halls/If Action Subsystem8'
 * '<S333>' : 'mcb_pmsm_foc_hall_f28379d/Hall Sensor B/Hall Validity/Subsystem/Valid Halls/Switch Case Action Subsystem'
 * '<S334>' : 'mcb_pmsm_foc_hall_f28379d/Hall Sensor B/HallValidity/CodeGen'
 * '<S335>' : 'mcb_pmsm_foc_hall_f28379d/Hall Sensor B/HallValidity/CodeGen/Read Halls'
 * '<S336>' : 'mcb_pmsm_foc_hall_f28379d/Hall Sensor B/eCAP/Code generation'
 * '<S337>' : 'mcb_pmsm_foc_hall_f28379d/Hall Sensor C/Capture Event Selection'
 * '<S338>' : 'mcb_pmsm_foc_hall_f28379d/Hall Sensor C/Hall Validity'
 * '<S339>' : 'mcb_pmsm_foc_hall_f28379d/Hall Sensor C/HallValidity'
 * '<S340>' : 'mcb_pmsm_foc_hall_f28379d/Hall Sensor C/eCAP'
 * '<S341>' : 'mcb_pmsm_foc_hall_f28379d/Hall Sensor C/Capture Event Selection/Output 0'
 * '<S342>' : 'mcb_pmsm_foc_hall_f28379d/Hall Sensor C/Capture Event Selection/Output 1'
 * '<S343>' : 'mcb_pmsm_foc_hall_f28379d/Hall Sensor C/Hall Validity/Subsystem'
 * '<S344>' : 'mcb_pmsm_foc_hall_f28379d/Hall Sensor C/Hall Validity/Subsystem/Bad hall (glitch or wrong connection)'
 * '<S345>' : 'mcb_pmsm_foc_hall_f28379d/Hall Sensor C/Hall Validity/Subsystem/Valid Halls'
 * '<S346>' : 'mcb_pmsm_foc_hall_f28379d/Hall Sensor C/Hall Validity/Subsystem/Valid Halls/If Action Subsystem'
 * '<S347>' : 'mcb_pmsm_foc_hall_f28379d/Hall Sensor C/Hall Validity/Subsystem/Valid Halls/If Action Subsystem1'
 * '<S348>' : 'mcb_pmsm_foc_hall_f28379d/Hall Sensor C/Hall Validity/Subsystem/Valid Halls/If Action Subsystem2'
 * '<S349>' : 'mcb_pmsm_foc_hall_f28379d/Hall Sensor C/Hall Validity/Subsystem/Valid Halls/If Action Subsystem3'
 * '<S350>' : 'mcb_pmsm_foc_hall_f28379d/Hall Sensor C/Hall Validity/Subsystem/Valid Halls/If Action Subsystem4'
 * '<S351>' : 'mcb_pmsm_foc_hall_f28379d/Hall Sensor C/Hall Validity/Subsystem/Valid Halls/If Action Subsystem5'
 * '<S352>' : 'mcb_pmsm_foc_hall_f28379d/Hall Sensor C/Hall Validity/Subsystem/Valid Halls/If Action Subsystem6'
 * '<S353>' : 'mcb_pmsm_foc_hall_f28379d/Hall Sensor C/Hall Validity/Subsystem/Valid Halls/If Action Subsystem7'
 * '<S354>' : 'mcb_pmsm_foc_hall_f28379d/Hall Sensor C/Hall Validity/Subsystem/Valid Halls/If Action Subsystem8'
 * '<S355>' : 'mcb_pmsm_foc_hall_f28379d/Hall Sensor C/Hall Validity/Subsystem/Valid Halls/Switch Case Action Subsystem'
 * '<S356>' : 'mcb_pmsm_foc_hall_f28379d/Hall Sensor C/HallValidity/CodeGen'
 * '<S357>' : 'mcb_pmsm_foc_hall_f28379d/Hall Sensor C/HallValidity/CodeGen/Read Halls'
 * '<S358>' : 'mcb_pmsm_foc_hall_f28379d/Hall Sensor C/eCAP/Code generation'
 * '<S359>' : 'mcb_pmsm_foc_hall_f28379d/Hardware Init/Variant Subsystem'
 * '<S360>' : 'mcb_pmsm_foc_hall_f28379d/Hardware Init/Variant Subsystem/Code Generation'
 * '<S361>' : 'mcb_pmsm_foc_hall_f28379d/Hardware Init/Variant Subsystem/Code Generation/Calculate ADC Offset '
 * '<S362>' : 'mcb_pmsm_foc_hall_f28379d/Hardware Init/Variant Subsystem/Code Generation/DRV Enable'
 * '<S363>' : 'mcb_pmsm_foc_hall_f28379d/Hardware Init/Variant Subsystem/Code Generation/Default ADC Offset'
 * '<S364>' : 'mcb_pmsm_foc_hall_f28379d/Hardware Init/Variant Subsystem/Code Generation/Calculate ADC Offset /For Iterator Subsystem'
 * '<S365>' : 'mcb_pmsm_foc_hall_f28379d/Hardware Init/Variant Subsystem/Code Generation/Calculate ADC Offset /If Action Subsystem'
 * '<S366>' : 'mcb_pmsm_foc_hall_f28379d/Hardware Init/Variant Subsystem/Code Generation/Calculate ADC Offset /If Action Subsystem1'
 * '<S367>' : 'mcb_pmsm_foc_hall_f28379d/Hardware Init/Variant Subsystem/Code Generation/Calculate ADC Offset /If Action Subsystem2'
 * '<S368>' : 'mcb_pmsm_foc_hall_f28379d/Hardware Init/Variant Subsystem/Code Generation/Calculate ADC Offset /If Action Subsystem3'
 * '<S369>' : 'mcb_pmsm_foc_hall_f28379d/Hardware Init/Variant Subsystem/Code Generation/Calculate ADC Offset /For Iterator Subsystem/If Action Subsystem'
 * '<S370>' : 'mcb_pmsm_foc_hall_f28379d/Hardware Init/Variant Subsystem/Code Generation/DRV Enable/ADC Gain Setting'
 * '<S371>' : 'mcb_pmsm_foc_hall_f28379d/Heartbeat LED/Heartbeat LED'
 * '<S372>' : 'mcb_pmsm_foc_hall_f28379d/Heartbeat LED/Heartbeat LED/Code generation'
 * '<S373>' : 'mcb_pmsm_foc_hall_f28379d/Inverter and Motor - Plant Model/Codegeneration'
 * '<S374>' : 'mcb_pmsm_foc_hall_f28379d/Serial Receive/Data_Conditioning_Rx'
 * '<S375>' : 'mcb_pmsm_foc_hall_f28379d/Serial Receive/SCI_Rx'
 * '<S376>' : 'mcb_pmsm_foc_hall_f28379d/Serial Receive/unParse'
 * '<S377>' : 'mcb_pmsm_foc_hall_f28379d/Serial Receive/Data_Conditioning_Rx/Data_Type_Float'
 * '<S378>' : 'mcb_pmsm_foc_hall_f28379d/Serial Receive/SCI_Rx/Code Generation'
 * '<S379>' : 'mcb_pmsm_foc_hall_f28379d/Serial Receive/SCI_Rx/Code Generation/Data_Type_Float'
 * '<S380>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed2'
 * '<S381>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/Speed_Ref_Selector'
 * '<S382>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed2/Chart'
 * '<S383>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed2/Discrete PI Controller  with anti-windup & reset'
 * '<S384>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed2/Subsystem'
 * '<S385>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed2/Switch Case Action Subsystem'
 * '<S386>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed2/Switch Case Action Subsystem1'
 * '<S387>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed2/Switch Case Action Subsystem2'
 * '<S388>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed2/Switch Case Action Subsystem3'
 * '<S389>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed2/Zero_Cancellation'
 * '<S390>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed2/Discrete PI Controller  with anti-windup & reset/Anti-windup'
 * '<S391>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed2/Discrete PI Controller  with anti-windup & reset/D Gain'
 * '<S392>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed2/Discrete PI Controller  with anti-windup & reset/Filter'
 * '<S393>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed2/Discrete PI Controller  with anti-windup & reset/Filter ICs'
 * '<S394>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed2/Discrete PI Controller  with anti-windup & reset/I Gain'
 * '<S395>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed2/Discrete PI Controller  with anti-windup & reset/Ideal P Gain'
 * '<S396>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed2/Discrete PI Controller  with anti-windup & reset/Ideal P Gain Fdbk'
 * '<S397>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed2/Discrete PI Controller  with anti-windup & reset/Integrator'
 * '<S398>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed2/Discrete PI Controller  with anti-windup & reset/Integrator ICs'
 * '<S399>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed2/Discrete PI Controller  with anti-windup & reset/N Copy'
 * '<S400>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed2/Discrete PI Controller  with anti-windup & reset/N Gain'
 * '<S401>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed2/Discrete PI Controller  with anti-windup & reset/P Copy'
 * '<S402>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed2/Discrete PI Controller  with anti-windup & reset/Parallel P Gain'
 * '<S403>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed2/Discrete PI Controller  with anti-windup & reset/Reset Signal'
 * '<S404>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed2/Discrete PI Controller  with anti-windup & reset/Saturation'
 * '<S405>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed2/Discrete PI Controller  with anti-windup & reset/Saturation Fdbk'
 * '<S406>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed2/Discrete PI Controller  with anti-windup & reset/Sum'
 * '<S407>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed2/Discrete PI Controller  with anti-windup & reset/Sum Fdbk'
 * '<S408>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed2/Discrete PI Controller  with anti-windup & reset/Tracking Mode'
 * '<S409>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed2/Discrete PI Controller  with anti-windup & reset/Tracking Mode Sum'
 * '<S410>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed2/Discrete PI Controller  with anti-windup & reset/Tsamp - Integral'
 * '<S411>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed2/Discrete PI Controller  with anti-windup & reset/Tsamp - Ngain'
 * '<S412>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed2/Discrete PI Controller  with anti-windup & reset/postSat Signal'
 * '<S413>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed2/Discrete PI Controller  with anti-windup & reset/preSat Signal'
 * '<S414>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed2/Discrete PI Controller  with anti-windup & reset/Anti-windup/Disc. Clamping Parallel'
 * '<S415>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed2/Discrete PI Controller  with anti-windup & reset/Anti-windup/Disc. Clamping Parallel/Dead Zone'
 * '<S416>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed2/Discrete PI Controller  with anti-windup & reset/Anti-windup/Disc. Clamping Parallel/Dead Zone/Enabled'
 * '<S417>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed2/Discrete PI Controller  with anti-windup & reset/D Gain/Disabled'
 * '<S418>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed2/Discrete PI Controller  with anti-windup & reset/Filter/Disabled'
 * '<S419>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed2/Discrete PI Controller  with anti-windup & reset/Filter ICs/Disabled'
 * '<S420>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed2/Discrete PI Controller  with anti-windup & reset/I Gain/External Parameters'
 * '<S421>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed2/Discrete PI Controller  with anti-windup & reset/Ideal P Gain/Passthrough'
 * '<S422>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed2/Discrete PI Controller  with anti-windup & reset/Ideal P Gain Fdbk/Disabled'
 * '<S423>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed2/Discrete PI Controller  with anti-windup & reset/Integrator/Discrete'
 * '<S424>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed2/Discrete PI Controller  with anti-windup & reset/Integrator ICs/External IC'
 * '<S425>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed2/Discrete PI Controller  with anti-windup & reset/N Copy/Disabled wSignal Specification'
 * '<S426>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed2/Discrete PI Controller  with anti-windup & reset/N Gain/Disabled'
 * '<S427>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed2/Discrete PI Controller  with anti-windup & reset/P Copy/Disabled'
 * '<S428>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed2/Discrete PI Controller  with anti-windup & reset/Parallel P Gain/External Parameters'
 * '<S429>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed2/Discrete PI Controller  with anti-windup & reset/Reset Signal/External Reset'
 * '<S430>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed2/Discrete PI Controller  with anti-windup & reset/Saturation/Enabled'
 * '<S431>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed2/Discrete PI Controller  with anti-windup & reset/Saturation Fdbk/Disabled'
 * '<S432>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed2/Discrete PI Controller  with anti-windup & reset/Sum/Sum_PI'
 * '<S433>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed2/Discrete PI Controller  with anti-windup & reset/Sum Fdbk/Disabled'
 * '<S434>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed2/Discrete PI Controller  with anti-windup & reset/Tracking Mode/Disabled'
 * '<S435>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed2/Discrete PI Controller  with anti-windup & reset/Tracking Mode Sum/Passthrough'
 * '<S436>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed2/Discrete PI Controller  with anti-windup & reset/Tsamp - Integral/TsSignalSpecification'
 * '<S437>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed2/Discrete PI Controller  with anti-windup & reset/Tsamp - Ngain/Passthrough'
 * '<S438>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed2/Discrete PI Controller  with anti-windup & reset/postSat Signal/Forward_Path'
 * '<S439>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed2/Discrete PI Controller  with anti-windup & reset/preSat Signal/Forward_Path'
 * '<S440>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed2/Subsystem/IIR Filter'
 * '<S441>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed2/Subsystem/Speed Measurement'
 * '<S442>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed2/Subsystem/IIR Filter/IIR Filter'
 * '<S443>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed2/Subsystem/IIR Filter/IIR Filter/Low-pass'
 * '<S444>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed2/Subsystem/IIR Filter/IIR Filter/Low-pass/IIR Low Pass Filter'
 * '<S445>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed2/Subsystem/Speed Measurement/DT_Handle'
 * '<S446>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed2/Subsystem/Speed Measurement/DT_Handle/floating-point'
 * '<S447>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed2/Switch Case Action Subsystem2/Subsystem'
 * '<S448>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed2/Switch Case Action Subsystem2/Subsystem1'
 * '<S449>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed2/Switch Case Action Subsystem2/Subsystem2'
 * '<S450>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed2/Switch Case Action Subsystem2/Subsystem1/Saturation Dynamic1'
 * '<S451>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed2/Switch Case Action Subsystem2/Subsystem1/atan2'
 * '<S452>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed2/Switch Case Action Subsystem2/Subsystem1/atan2/Per Unit'
 * '<S453>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed2/Switch Case Action Subsystem2/Subsystem2/Compare To Constant'
 * '<S454>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed2/Switch Case Action Subsystem2/Subsystem2/Mechanical to Electrical Position'
 * '<S455>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed2/Switch Case Action Subsystem2/Subsystem2/Saturation Dynamic'
 * '<S456>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed2/Switch Case Action Subsystem2/Subsystem2/Mechanical to Electrical Position/MechToElec'
 * '<S457>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed2/Switch Case Action Subsystem2/Subsystem2/Mechanical to Electrical Position/MechToElec/floating-point'
 * '<S458>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed2/Switch Case Action Subsystem2/Subsystem2/Mechanical to Electrical Position/MechToElec/floating-point/Compensate Offset'
 * '<S459>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed2/Switch Case Action Subsystem2/Subsystem2/Mechanical to Electrical Position/MechToElec/floating-point/Mech To Elec'
 * '<S460>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed2/Switch Case Action Subsystem2/Subsystem2/Mechanical to Electrical Position/MechToElec/floating-point/Compensate Offset/If Action Subsystem'
 * '<S461>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed2/Switch Case Action Subsystem2/Subsystem2/Mechanical to Electrical Position/MechToElec/floating-point/Compensate Offset/If Action Subsystem1'
 * '<S462>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed2/Switch Case Action Subsystem2/Subsystem2/Mechanical to Electrical Position/MechToElec/floating-point/Mech To Elec/Variant Subsystem'
 * '<S463>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed2/Switch Case Action Subsystem2/Subsystem2/Mechanical to Electrical Position/MechToElec/floating-point/Mech To Elec/Variant Subsystem/Dialog'
 * '<S464>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed2/Zero_Cancellation/IIR Filter'
 * '<S465>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed2/Zero_Cancellation/IIR Filter/Low-pass'
 * '<S466>' : 'mcb_pmsm_foc_hall_f28379d/Speed Control/PI_Controller_Speed2/Zero_Cancellation/IIR Filter/Low-pass/IIR Low Pass Filter'
 */
#endif                             /* RTW_HEADER_mcb_pmsm_foc_hall_f28379d_h_ */

/*
 * File trailer for generated code.
 *
 * [EOF]
 */
