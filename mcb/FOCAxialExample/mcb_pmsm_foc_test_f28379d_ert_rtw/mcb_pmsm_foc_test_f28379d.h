/*
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * File: mcb_pmsm_foc_test_f28379d.h
 *
 * Code generated for Simulink model 'mcb_pmsm_foc_test_f28379d'.
 *
 * Model version                  : 7.13
 * Simulink Coder version         : 23.2 (R2023b) 01-Aug-2023
 * C/C++ source code generated on : Tue Dec  9 23:18:23 2025
 *
 * Target selection: ert.tlc
 * Embedded hardware selection: Texas Instruments->C2000
 * Code generation objectives: Unspecified
 * Validation result: Not run
 */

#ifndef RTW_HEADER_mcb_pmsm_foc_test_f28379d_h_
#define RTW_HEADER_mcb_pmsm_foc_test_f28379d_h_
#ifndef mcb_pmsm_foc_test_f28379d_COMMON_INCLUDES_
#define mcb_pmsm_foc_test_f28379d_COMMON_INCLUDES_
#include "rtwtypes.h"
#include "c2000BoardSupport.h"
#include "MW_f2837xD_includes.h"
#include "string.h"
#include "DSP28xx_SciUtil.h"
#include "IQmathLib.h"
#include "MW_SPI.h"
#endif                          /* mcb_pmsm_foc_test_f28379d_COMMON_INCLUDES_ */

#include "MW_c2000ISR.h"
#include "mcb_pmsm_foc_test_f28379d_types.h"
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
extern void config_ePWMSyncSource(void);
extern void config_ePWM_GPIO (void);
extern void config_ePWM_TBSync (void);
extern void config_ePWM_XBAR(void);
extern void init_I2C_GPIO(void);
extern void init_I2C_A(void);

/* Block signals for system '<S153>/If Action Subsystem' */
typedef struct {
  real32_T Convert_back;               /* '<S155>/Convert_back' */
  int16_T Convert_uint16;              /* '<S155>/Convert_uint16' */
} B_IfActionSubsystem_mcb_pmsm__T;

/* Block signals for system '<S153>/If Action Subsystem1' */
typedef struct {
  real32_T Convert_back;               /* '<S156>/Convert_back' */
  int16_T Convert_uint16;              /* '<S156>/Convert_uint16' */
} B_IfActionSubsystem1_mcb_pmsm_T;

/* Block signals for system '<S229>/SPI Master Transfer' */
typedef struct {
  uint16_T SPIMasterTransfer;          /* '<S229>/SPI Master Transfer' */
} B_SPIMasterTransfer_mcb_pmsm__T;

/* Block states (default storage) for system '<S229>/SPI Master Transfer' */
typedef struct {
  codertarget_tic2000_blocks_SP_T obj; /* '<S229>/SPI Master Transfer' */
  boolean_T objisempty;                /* '<S229>/SPI Master Transfer' */
} DW_SPIMasterTransfer_mcb_pmsm_T;

/* Block signals for system '<Root>/Speed Control' */
typedef struct {
  real32_T Id_ref;                     /* '<S8>/Id_ref' */
  real32_T CastToSingle1;              /* '<S239>/Cast To Single1' */
  boolean_T DataStoreRead1;            /* '<S239>/Data Store Read1' */
  boolean_T DataStoreRead1_k;          /* '<S240>/Data Store Read1' */
} B_SpeedControl_mcb_pmsm_foc_t_T;

/* Block signals (default storage) */
typedef struct {
  uint32_T PositionToCount;            /* '<S179>/PositionToCount' */
  uint32_T Delay;                      /* '<S179>/Delay' */
  uint32_T Sum[4];                     /* '<S160>/Sum' */
  uint32_T BytePack[2];                /* '<S204>/Byte Pack' */
  uint32_T SCI_Tx_Data[3];             /* '<S202>/Merge' */
  uint32_T SCI_Tx_Iteration;           /* '<S202>/Merge1' */
  uint32_T Sum_h[4];                   /* '<S150>/Sum' */
  uint32_T IndexVector;                /* '<S203>/Index Vector' */
  uint32_T Add;                        /* '<S203>/Add' */
  uint32_T Data[2];                    /* '<S206>/Data' */
  uint32_T Data_f[2];                  /* '<S207>/Data' */
  uint32_T Data_fw[2];                 /* '<S208>/Data' */
  real32_T RT1;                        /* '<Root>/RT1' */
  real32_T RT13;                       /* '<Root>/RT13' */
  real32_T RT3;                        /* '<Root>/RT3' */
  real32_T RT7;                        /* '<Root>/RT7' */
  real32_T CastToSingle1;              /* '<S11>/Cast To Single1' */
  real32_T Gain;                       /* '<S11>/Gain' */
  real32_T RT2[2];                     /* '<Root>/RT2' */
  real32_T RT4;                        /* '<Root>/RT4' */
  real32_T RT15;                       /* '<Root>/RT15' */
  real32_T pu;                         /* '<S9>/MATLAB Function' */
  real32_T SCIReceive[2];              /* '<S238>/SCI Receive' */
  real32_T DataStoreRead2;             /* '<S2>/Data Store Read2' */
  real32_T Unwrap;                     /* '<S175>/Unwrap' */
  real32_T DTC;                        /* '<S195>/DTC' */
  real32_T SpeedGain;                  /* '<S179>/SpeedGain' */
  real32_T Product;                    /* '<S185>/Product' */
  real32_T UnitDelay;                  /* '<S185>/Unit Delay' */
  real32_T Product1;                   /* '<S185>/Product1' */
  real32_T Add1;                       /* '<S185>/Add1' */
  real32_T GetADCVoltage[2];           /* '<S197>/Get ADC Voltage' */
  real32_T GetCurrents[2];             /* '<S197>/Get Currents' */
  real32_T PU_Conversion[2];           /* '<S197>/PU_Conversion' */
  real32_T Switch;                     /* '<S187>/Switch' */
  real32_T Merge;                      /* '<S188>/Merge' */
  real32_T Numberofpolepairs;          /* '<S193>/Number of pole pairs' */
  real32_T Floor;                      /* '<S189>/Floor' */
  real32_T Add_c;                      /* '<S189>/Add' */
  real32_T Merge_o;                    /* '<S162>/Merge' */
  real32_T indexing;                   /* '<S160>/indexing' */
  real32_T Lookup[4];                  /* '<S160>/Lookup' */
  real32_T Sum3;                       /* '<S161>/Sum3' */
  real32_T DataTypeConversion1;        /* '<S160>/Data Type Conversion1' */
  real32_T Sum2;                       /* '<S160>/Sum2' */
  real32_T Product_i;                  /* '<S161>/Product' */
  real32_T Sum4;                       /* '<S161>/Sum4' */
  real32_T Sum5;                       /* '<S161>/Sum5' */
  real32_T Product1_b;                 /* '<S161>/Product1' */
  real32_T Sum6;                       /* '<S161>/Sum6' */
  real32_T TmpSignalConversionAtSelectorIn[11];
  real32_T Selector[2];                /* '<S17>/Selector' */
  real32_T Sum_o;                      /* '<S33>/Sum' */
  real32_T PProdOut;                   /* '<S138>/PProd Out' */
  real32_T Kp1;                        /* '<S33>/Kp1' */
  real32_T Integrator;                 /* '<S133>/Integrator' */
  real32_T Sum_m;                      /* '<S142>/Sum' */
  real32_T Saturation;                 /* '<S140>/Saturation' */
  real32_T Sum_j;                      /* '<S32>/Sum' */
  real32_T PProdOut_g;                 /* '<S87>/PProd Out' */
  real32_T Ki1;                        /* '<S32>/Ki1' */
  real32_T Integrator_f;               /* '<S82>/Integrator' */
  real32_T Sum_g;                      /* '<S91>/Sum' */
  real32_T Saturation_f;               /* '<S89>/Saturation' */
  real32_T Switch_n;                   /* '<S36>/Switch' */
  real32_T Product_j;                  /* '<S36>/Product' */
  real32_T Product_f;                  /* '<S37>/Product' */
  real32_T Product1_g;                 /* '<S37>/Product1' */
  real32_T Sum1;                       /* '<S37>/Sum1' */
  real32_T Merge_i[2];                 /* '<S31>/Merge' */
  real32_T DeadZone;                   /* '<S75>/DeadZone' */
  real32_T IProdOut;                   /* '<S79>/IProd Out' */
  real32_T Switch_f;                   /* '<S73>/Switch' */
  real32_T DeadZone_a;                 /* '<S126>/DeadZone' */
  real32_T IProdOut_b;                 /* '<S130>/IProd Out' */
  real32_T Switch_a;                   /* '<S124>/Switch' */
  real32_T Merge_a;                    /* '<S153>/Merge' */
  real32_T indexing_d;                 /* '<S150>/indexing' */
  real32_T DataTypeConversion1_n;      /* '<S150>/Data Type Conversion1' */
  real32_T Lookup_p[4];                /* '<S150>/Lookup' */
  real32_T Sum3_j;                     /* '<S152>/Sum3' */
  real32_T Sum2_p;                     /* '<S150>/Sum2' */
  real32_T Product_d;                  /* '<S152>/Product' */
  real32_T Sum5_l;                     /* '<S152>/Sum5' */
  real32_T Product1_d;                 /* '<S152>/Product1' */
  real32_T Sum4_h;                     /* '<S152>/Sum4' */
  real32_T Sum6_h;                     /* '<S152>/Sum6' */
  real32_T Delay_c;                    /* '<S175>/Delay' */
  real32_T Sum_a;                      /* '<S175>/Sum' */
  real32_T Merge_c;                    /* '<S175>/Merge' */
  real32_T DataTypeConversion;         /* '<S21>/Data Type Conversion' */
  real32_T Switch_g;                   /* '<S198>/Switch' */
  real32_T DataStoreRead1;             /* '<S2>/Data Store Read1' */
  real32_T sqrt3_by_two;               /* '<S173>/sqrt3_by_two' */
  real32_T one_by_two;                 /* '<S173>/one_by_two' */
  real32_T add_c;                      /* '<S173>/add_c' */
  real32_T add_b;                      /* '<S173>/add_b' */
  real32_T Min;                        /* '<S170>/Min' */
  real32_T Max;                        /* '<S170>/Max' */
  real32_T Add_n;                      /* '<S170>/Add' */
  real32_T one_by_two_l;               /* '<S170>/one_by_two' */
  real32_T Add3;                       /* '<S169>/Add3' */
  real32_T Add2;                       /* '<S169>/Add2' */
  real32_T Add1_d;                     /* '<S169>/Add1' */
  real32_T Gain_a[3];                  /* '<S169>/Gain' */
  real32_T One_by_Two[3];              /* '<S21>/One_by_Two' */
  real32_T PWM_Duty_Cycles[3];         /* '<S21>/Sum' */
  real32_T acos_b;                     /* '<S159>/acos' */
  real32_T bsin;                       /* '<S159>/bsin' */
  real32_T sum_Ds;                     /* '<S159>/sum_Ds' */
  real32_T bcos;                       /* '<S159>/bcos' */
  real32_T asin_o;                     /* '<S159>/asin' */
  real32_T sum_Qs;                     /* '<S159>/sum_Qs' */
  real32_T Switch_h[2];                /* '<S166>/Switch' */
  real32_T algDD_o1;
  real32_T algDD_o2;
  real32_T qcos;                       /* '<S151>/qcos' */
  real32_T dsin;                       /* '<S151>/dsin' */
  real32_T sum_beta;                   /* '<S151>/sum_beta' */
  real32_T dcos;                       /* '<S151>/dcos' */
  real32_T qsin;                       /* '<S151>/qsin' */
  real32_T sum_alpha;                  /* '<S151>/sum_alpha' */
  real32_T Switch_b[2];                /* '<S157>/Switch' */
  real32_T algDD_o1_p;
  real32_T algDD_o2_o;
  real32_T Product_o[2];               /* '<S38>/Product' */
  real32_T SquareRoot;                 /* '<S38>/Square Root' */
  real32_T Switch_as;                  /* '<S38>/Switch' */
  real32_T Reciprocal;                 /* '<S38>/Reciprocal' */
  real32_T Switch_j[2];                /* '<S35>/Switch' */
  real32_T Switch2;                    /* '<S45>/Switch2' */
  real32_T Product_b;                  /* '<S44>/Product' */
  real32_T Sum_jr;                     /* '<S44>/Sum' */
  real32_T Product2;                   /* '<S44>/Product2' */
  real32_T Merge_d;                    /* '<S44>/Merge' */
  real32_T Gain_b;                     /* '<S44>/Gain' */
  real32_T Switch_m;                   /* '<S45>/Switch' */
  real32_T Switch1;                    /* '<S46>/Switch1' */
  real32_T Sqrt;                       /* '<S46>/Sqrt' */
  real32_T Gain_l;                     /* '<S46>/Gain' */
  real32_T a_plus_2b;                  /* '<S30>/a_plus_2b' */
  real32_T one_by_sqrt3;               /* '<S30>/one_by_sqrt3' */
  real32_T algDD_o1_e;
  real32_T algDD_o2_h;
  int32_T SpeedCount;                  /* '<S179>/SpeedCount' */
  int32_T DataTypeConversion_c[2];     /* '<S176>/Data Type Conversion' */
  int32_T Add_e[2];                    /* '<S176>/Add' */
  uint16_T Switch_c;                   /* '<S221>/Switch' */
  uint16_T Divide;                     /* '<S220>/Divide' */
  uint16_T Divide1;                    /* '<S220>/Divide1' */
  uint16_T ForIterator;                /* '<S223>/For Iterator' */
  uint16_T ADC_A_IN0;                  /* '<S223>/ADC_A_IN0' */
  uint16_T ADC_B_IN0;                  /* '<S223>/ADC_B_IN0' */
  uint16_T Memory;                     /* '<S228>/Memory' */
  uint16_T Sum_hk;                     /* '<S228>/Sum' */
  uint16_T Memory1;                    /* '<S228>/Memory1' */
  uint16_T Sum1_j;                     /* '<S228>/Sum1' */
  uint16_T DataTypeConversion2;        /* '<S236>/Data Type Conversion2' */
  uint16_T BitwiseOperator;            /* '<S235>/Bitwise Operator' */
  uint16_T BitwiseOperator1;           /* '<S235>/Bitwise Operator1' */
  uint16_T ShiftArithmetic1;           /* '<S235>/Shift Arithmetic1' */
  uint16_T BitwiseOperator2;           /* '<S235>/Bitwise Operator2' */
  uint16_T ShiftArithmetic2;           /* '<S235>/Shift Arithmetic2' */
  uint16_T Output;                     /* '<S205>/Output' */
  uint16_T DataStoreRead1_o;           /* '<S176>/Data Store Read1' */
  uint16_T DataStoreRead2_j;           /* '<S176>/Data Store Read2' */
  uint16_T ADC_C_IN2;                  /* '<S174>/ADC_C_IN2' */
  uint16_T ADC_B_IN2;                  /* '<S174>/ADC_B_IN2' */
  uint16_T DataTypeConversion_i;       /* '<S162>/Data Type Conversion' */
  uint16_T Get_Integer;                /* '<S160>/Get_Integer' */
  uint16_T DataStoreRead;              /* '<S17>/Data Store Read' */
  uint16_T MultiportSwitch[2];         /* '<S17>/Multiport Switch' */
  uint16_T FixPtSum1;                  /* '<S209>/FixPt Sum1' */
  uint16_T FixPtSwitch;                /* '<S210>/FixPt Switch' */
  uint16_T Switch1_j;                  /* '<S36>/Switch1' */
  uint16_T DataTypeConversion_h;       /* '<S153>/Data Type Conversion' */
  uint16_T Get_Integer_j;              /* '<S150>/Get_Integer' */
  uint16_T Switch1_jv[3];              /* '<S198>/Switch1' */
  uint16_T Scale_to_PWM_Counter_PRD[3];/* '<S198>/Scale_to_PWM_Counter_PRD' */
  uint16_T DataTypeConversion_f;       /* '<S34>/Data Type Conversion' */
  uint16_T DataTypeConversion_fl;      /* '<S44>/Data Type Conversion' */
  uint16_T I2CTransmit1;               /* '<S14>/I2C Transmit1' */
  uint16_T raw_angle;                  /* '<S11>/MATLAB Function' */
  uint16_T I2CReceive_o2;              /* '<S10>/I2C Receive' */
  uint16_T I2CTransmit;                /* '<S10>/I2C Transmit' */
  int16_T WhileIterator;               /* '<S203>/While Iterator' */
  uint16_T I2CReceive_o1[2];           /* '<S10>/I2C Receive' */
  int16_T Switch1_h;                   /* '<S73>/Switch1' */
  int16_T Switch2_l;                   /* '<S73>/Switch2' */
  int16_T Switch1_l;                   /* '<S124>/Switch1' */
  int16_T Switch2_c;                   /* '<S124>/Switch2' */
  boolean_T DataStoreRead_g;           /* '<S1>/Data Store Read' */
  boolean_T RT14;                      /* '<Root>/RT14' */
  boolean_T RT4_h;                     /* '<S1>/RT4' */
  boolean_T InitTrigger;               /* '<Root>/InitTrigger' */
  boolean_T UnitDelay_l;               /* '<S1>/Unit Delay' */
  boolean_T LogicalOperator2;          /* '<S1>/Logical Operator2' */
  boolean_T NOT;                       /* '<S219>/NOT' */
  boolean_T DataTypeConversion3;       /* '<S235>/Data Type Conversion3' */
  boolean_T Compare;                   /* '<S163>/Compare' */
  boolean_T DataStoreRead1_b;          /* '<S33>/Data Store Read1' */
  boolean_T LogicalOperator;           /* '<S33>/Logical Operator' */
  boolean_T DataStoreRead1_m;          /* '<S32>/Data Store Read1' */
  boolean_T LogicalOperator_a;         /* '<S32>/Logical Operator' */
  boolean_T RelationalOperator;        /* '<S73>/Relational Operator' */
  boolean_T fixforDTpropagationissue; /* '<S73>/fix for DT propagation issue' */
  boolean_T fixforDTpropagationissue1;
                                     /* '<S73>/fix for DT propagation issue1' */
  boolean_T Equal1;                    /* '<S73>/Equal1' */
  boolean_T AND3;                      /* '<S73>/AND3' */
  boolean_T RelationalOperator_e;      /* '<S124>/Relational Operator' */
  boolean_T fixforDTpropagationissue_j;
                                     /* '<S124>/fix for DT propagation issue' */
  boolean_T fixforDTpropagationissue1_o;
                                    /* '<S124>/fix for DT propagation issue1' */
  boolean_T Equal1_i;                  /* '<S124>/Equal1' */
  boolean_T AND3_n;                    /* '<S124>/AND3' */
  boolean_T Compare_f;                 /* '<S154>/Compare' */
  boolean_T PWM_En;                    /* '<S21>/Enable' */
  boolean_T RelationalOperator_k;      /* '<S34>/Relational Operator' */
  boolean_T Compare_k;                 /* '<S40>/Compare' */
  boolean_T Compare_f0;                /* '<S41>/Compare' */
  boolean_T LowerRelop1;               /* '<S45>/LowerRelop1' */
  boolean_T RelationalOperator_l;      /* '<S44>/Relational Operator' */
  boolean_T UpperRelop;                /* '<S45>/UpperRelop' */
  B_SpeedControl_mcb_pmsm_foc_t_T SpeedControl;/* '<Root>/Speed Control' */
  B_SPIMasterTransfer_mcb_pmsm__T SPIMasterTransfer1;/* '<S229>/SPI Master Transfer' */
  B_SPIMasterTransfer_mcb_pmsm__T SPIMasterTransfer;/* '<S229>/SPI Master Transfer' */
  B_IfActionSubsystem1_mcb_pmsm_T IfActionSubsystem1_k;/* '<S162>/If Action Subsystem1' */
  B_IfActionSubsystem_mcb_pmsm__T IfActionSubsystem_e;/* '<S162>/If Action Subsystem' */
  B_IfActionSubsystem1_mcb_pmsm_T IfActionSubsystem1;/* '<S153>/If Action Subsystem1' */
  B_IfActionSubsystem_mcb_pmsm__T IfActionSubsystem;/* '<S153>/If Action Subsystem' */
} B_mcb_pmsm_foc_test_f28379d_T;

/* Block states (default storage) for system '<Root>' */
typedef struct {
  real_T ERR;                          /* '<Root>/Data Store Memory8' */
  real_T EnClosedLoop;                 /* '<Root>/Data Store Memory' */
  real_T theta;                        /* '<S9>/MATLAB Function' */
  real32_T UnitDelay_DSTATE;           /* '<S185>/Unit Delay' */
  real32_T Integrator_DSTATE;          /* '<S133>/Integrator' */
  real32_T Integrator_DSTATE_o;        /* '<S82>/Integrator' */
  real32_T Delay_DSTATE;               /* '<S175>/Delay' */
  uint32_T Delay_DSTATE_p[20];         /* '<S179>/Delay' */
  volatile real32_T RT1_Buffer[2];     /* '<Root>/RT1' */
  volatile real32_T RT15_Buffer[2];    /* '<Root>/RT15' */
  volatile real32_T RT2_Buffer[4];     /* '<Root>/RT2' */
  volatile real32_T RT3_Buffer[2];     /* '<Root>/RT3' */
  volatile real32_T RT4_Buffer[2];     /* '<Root>/RT4' */
  real32_T SpeedRef;                   /* '<Root>/Data Store Memory4' */
  real32_T PosRef;                     /* '<Root>/Data Store Memory5' */
  real32_T Unwrap_Prev;                /* '<S175>/Unwrap' */
  real32_T Unwrap_Cumsum;              /* '<S175>/Unwrap' */
  int32_T DigitalOutput_FRAC_LEN;      /* '<S231>/Digital Output' */
  int32_T DigitalOutput_FRAC_LEN_e;    /* '<S221>/Digital Output' */
  int32_T DigitalOutput1_FRAC_LEN;     /* '<S221>/Digital Output1' */
  int32_T SpeedCount_DWORK1;           /* '<S179>/SpeedCount' */
  int32_T Add_DWORK1[2];               /* '<S176>/Add' */
  int32_T DRV830xEnable_FRAC_LEN;      /* '<S198>/DRV830x Enable' */
  uint32_T Sum_DWORK1[4];              /* '<S160>/Sum' */
  uint32_T Add_DWORK1_n;               /* '<S203>/Add' */
  uint16_T Output_DSTATE;              /* '<S205>/Output' */
  volatile int16_T RT1_ActiveBufIdx;   /* '<Root>/RT1' */
  volatile int16_T RT1_semaphoreTaken; /* '<Root>/RT1' */
  volatile int16_T RT15_ActiveBufIdx;  /* '<Root>/RT15' */
  volatile int16_T RT2_ActiveBufIdx;   /* '<Root>/RT2' */
  volatile int16_T RT3_ActiveBufIdx;   /* '<Root>/RT3' */
  volatile int16_T RT4_ActiveBufIdx;   /* '<Root>/RT4' */
  uint16_T IaOffset;                   /* '<Root>/Data Store Memory1' */
  uint16_T IbOffset;                   /* '<Root>/Data Store Memory2' */
  uint16_T Debug_signals;              /* '<Root>/Data Store Memory6' */
  uint16_T Control_Mode;               /* '<Root>/Data Store Memory7' */
  uint16_T CircBufIdx;                 /* '<S179>/Delay' */
  boolean_T UnitDelay_DSTATE_f;        /* '<S1>/Unit Delay' */
  int16_T Integrator_PrevResetState;   /* '<S133>/Integrator' */
  int16_T Integrator_PrevResetState_k; /* '<S82>/Integrator' */
  boolean_T Enable;                    /* '<Root>/Data Store Memory29' */
  boolean_T Enable_I2C;                /* '<Root>/Data Store Memory3' */
  volatile boolean_T RT14_Buffer0;     /* '<Root>/RT14' */
  boolean_T Unwrap_FirstStep;          /* '<S175>/Unwrap' */
  DW_SPIMasterTransfer_mcb_pmsm_T SPIMasterTransfer1;/* '<S229>/SPI Master Transfer' */
  DW_SPIMasterTransfer_mcb_pmsm_T SPIMasterTransfer;/* '<S229>/SPI Master Transfer' */
} DW_mcb_pmsm_foc_test_f28379d_T;

/* Invariant block signals (default storage) */
typedef struct {
  const uint32_T Width;                /* '<S202>/Width' */
} ConstB_mcb_pmsm_foc_test_f283_T;

/* Constant parameters (default storage) */
typedef struct {
  /* Pooled Parameter (Expression: )
   * Referenced by:
   *   '<S150>/sine_table_values'
   *   '<S160>/sine_table_values'
   */
  real32_T pooled6[1002];
} ConstP_mcb_pmsm_foc_test_f283_T;

/* Real-time Model Data Structure */
struct tag_RTM_mcb_pmsm_foc_test_f28_T {
  const char_T * volatile errorStatus;

  /*
   * Timing:
   * The following substructure contains information regarding
   * the timing information for the model.
   */
  struct {
    struct {
      uint16_T TID[4];
    } TaskCounters;
  } Timing;
};

/* Block signals (default storage) */
extern B_mcb_pmsm_foc_test_f28379d_T mcb_pmsm_foc_test_f28379d_B;

/* Block states (default storage) */
extern DW_mcb_pmsm_foc_test_f28379d_T mcb_pmsm_foc_test_f28379d_DW;
extern const ConstB_mcb_pmsm_foc_test_f283_T mcb_pmsm_foc_test_f28379_ConstB;/* constant block i/o */

/* Constant parameters (default storage) */
extern const ConstP_mcb_pmsm_foc_test_f283_T mcb_pmsm_foc_test_f28379_ConstP;

/* External function called from main */
extern void mcb_pmsm_foc_test_f28379d_SetEventsForThisBaseStep(boolean_T
  *eventFlags);

/* Model entry point functions */
extern void mcb_pmsm_foc_test_f28379d_initialize(void);
extern void mcb_pmsm_foc_test_f28379d_step0(void);
extern void mcb_pmsm_foc_test_f28379d_step1(void);
extern void mcb_pmsm_foc_test_f28379d_step2(void);
extern void mcb_pmsm_foc_test_f28379d_step3(void);
extern void mcb_pmsm_foc_test_f28379d_terminate(void);

/* Real-time Model object */
extern RT_MODEL_mcb_pmsm_foc_test_f2_T *const mcb_pmsm_foc_test_f28379d_M;
extern volatile boolean_T stopRequested;
extern volatile boolean_T runModel;

#ifdef __cpluscplus

extern "C"
{

#endif

  interrupt void ADCB1_INT(void);
  interrupt void SCIA_RX_INT(void);
  void mcb_pmsm_foc_test_f28379d_configure_interrupts (void);
  void mcb_pmsm_foc_test_f28379d_unconfigure_interrupts (void);

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
 * '<Root>' : 'mcb_pmsm_foc_test_f28379d'
 * '<S1>'   : 'mcb_pmsm_foc_test_f28379d/AS5600 Read'
 * '<S2>'   : 'mcb_pmsm_foc_test_f28379d/Current Control'
 * '<S3>'   : 'mcb_pmsm_foc_test_f28379d/HW Interrupt'
 * '<S4>'   : 'mcb_pmsm_foc_test_f28379d/Hardware Init'
 * '<S5>'   : 'mcb_pmsm_foc_test_f28379d/Heartbeat LED'
 * '<S6>'   : 'mcb_pmsm_foc_test_f28379d/Inverter and Motor - Plant Model'
 * '<S7>'   : 'mcb_pmsm_foc_test_f28379d/Serial Receive'
 * '<S8>'   : 'mcb_pmsm_foc_test_f28379d/Speed Control'
 * '<S9>'   : 'mcb_pmsm_foc_test_f28379d/Subsystem'
 * '<S10>'  : 'mcb_pmsm_foc_test_f28379d/AS5600 Read/Data Read'
 * '<S11>'  : 'mcb_pmsm_foc_test_f28379d/AS5600 Read/Data Realignment '
 * '<S12>'  : 'mcb_pmsm_foc_test_f28379d/AS5600 Read/Initialization'
 * '<S13>'  : 'mcb_pmsm_foc_test_f28379d/AS5600 Read/Data Realignment /MATLAB Function'
 * '<S14>'  : 'mcb_pmsm_foc_test_f28379d/AS5600 Read/Initialization/Address - Data read'
 * '<S15>'  : 'mcb_pmsm_foc_test_f28379d/AS5600 Read/Initialization/Delay 1ms'
 * '<S16>'  : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System'
 * '<S17>'  : 'mcb_pmsm_foc_test_f28379d/Current Control/Debug_signals'
 * '<S18>'  : 'mcb_pmsm_foc_test_f28379d/Current Control/HW_Inputs'
 * '<S19>'  : 'mcb_pmsm_foc_test_f28379d/Current Control/Input Scaling'
 * '<S20>'  : 'mcb_pmsm_foc_test_f28379d/Current Control/Inverter'
 * '<S21>'  : 'mcb_pmsm_foc_test_f28379d/Current Control/Output Scaling'
 * '<S22>'  : 'mcb_pmsm_foc_test_f28379d/Current Control/Pos_selection'
 * '<S23>'  : 'mcb_pmsm_foc_test_f28379d/Current Control/SCI_Tx'
 * '<S24>'  : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Clarke Transform'
 * '<S25>'  : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers'
 * '<S26>'  : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Inverse Park Transform'
 * '<S27>'  : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Park Transform'
 * '<S28>'  : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Space Vector Generator'
 * '<S29>'  : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Clarke Transform/Two phase input'
 * '<S30>'  : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Clarke Transform/Two phase input/Two phase CRL wrap'
 * '<S31>'  : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/DQ Limiter'
 * '<S32>'  : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id'
 * '<S33>'  : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq'
 * '<S34>'  : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/DQ Limiter/D-Q Equivalence'
 * '<S35>'  : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/DQ Limiter/D//Q Axis Priority'
 * '<S36>'  : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/DQ Limiter/Inport//Dialog Selection'
 * '<S37>'  : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/DQ Limiter/Magnitude_calc'
 * '<S38>'  : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/DQ Limiter/D-Q Equivalence/Limiter'
 * '<S39>'  : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/DQ Limiter/D-Q Equivalence/Passthrough'
 * '<S40>'  : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/DQ Limiter/D//Q Axis Priority/Compare To Constant'
 * '<S41>'  : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/DQ Limiter/D//Q Axis Priority/Compare To Constant1'
 * '<S42>'  : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/DQ Limiter/D//Q Axis Priority/flipInputs'
 * '<S43>'  : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/DQ Limiter/D//Q Axis Priority/flipInputs1'
 * '<S44>'  : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/DQ Limiter/D//Q Axis Priority/limiter'
 * '<S45>'  : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/DQ Limiter/D//Q Axis Priority/limiter/limitRef1'
 * '<S46>'  : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/DQ Limiter/D//Q Axis Priority/limiter/limitRef2'
 * '<S47>'  : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/DQ Limiter/D//Q Axis Priority/limiter/passThrough'
 * '<S48>'  : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset'
 * '<S49>'  : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Anti-windup'
 * '<S50>'  : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/D Gain'
 * '<S51>'  : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Filter'
 * '<S52>'  : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Filter ICs'
 * '<S53>'  : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/I Gain'
 * '<S54>'  : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Ideal P Gain'
 * '<S55>'  : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Ideal P Gain Fdbk'
 * '<S56>'  : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Integrator'
 * '<S57>'  : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Integrator ICs'
 * '<S58>'  : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/N Copy'
 * '<S59>'  : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/N Gain'
 * '<S60>'  : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/P Copy'
 * '<S61>'  : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Parallel P Gain'
 * '<S62>'  : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Reset Signal'
 * '<S63>'  : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Saturation'
 * '<S64>'  : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Saturation Fdbk'
 * '<S65>'  : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Sum'
 * '<S66>'  : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Sum Fdbk'
 * '<S67>'  : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Tracking Mode'
 * '<S68>'  : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Tracking Mode Sum'
 * '<S69>'  : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Tsamp - Integral'
 * '<S70>'  : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Tsamp - Ngain'
 * '<S71>'  : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/postSat Signal'
 * '<S72>'  : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/preSat Signal'
 * '<S73>'  : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Anti-windup/Disc. Clamping Parallel'
 * '<S74>'  : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Anti-windup/Disc. Clamping Parallel/Dead Zone'
 * '<S75>'  : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Anti-windup/Disc. Clamping Parallel/Dead Zone/Enabled'
 * '<S76>'  : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/D Gain/Disabled'
 * '<S77>'  : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Filter/Disabled'
 * '<S78>'  : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Filter ICs/Disabled'
 * '<S79>'  : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/I Gain/External Parameters'
 * '<S80>'  : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Ideal P Gain/Passthrough'
 * '<S81>'  : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Ideal P Gain Fdbk/Disabled'
 * '<S82>'  : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Integrator/Discrete'
 * '<S83>'  : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Integrator ICs/External IC'
 * '<S84>'  : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/N Copy/Disabled wSignal Specification'
 * '<S85>'  : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/N Gain/Disabled'
 * '<S86>'  : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/P Copy/Disabled'
 * '<S87>'  : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Parallel P Gain/External Parameters'
 * '<S88>'  : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Reset Signal/External Reset'
 * '<S89>'  : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Saturation/Enabled'
 * '<S90>'  : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Saturation Fdbk/Disabled'
 * '<S91>'  : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Sum/Sum_PI'
 * '<S92>'  : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Sum Fdbk/Disabled'
 * '<S93>'  : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Tracking Mode/Disabled'
 * '<S94>'  : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Tracking Mode Sum/Passthrough'
 * '<S95>'  : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Tsamp - Integral/TsSignalSpecification'
 * '<S96>'  : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Tsamp - Ngain/Passthrough'
 * '<S97>'  : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/postSat Signal/Forward_Path'
 * '<S98>'  : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/preSat Signal/Forward_Path'
 * '<S99>'  : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset'
 * '<S100>' : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Anti-windup'
 * '<S101>' : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/D Gain'
 * '<S102>' : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Filter'
 * '<S103>' : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Filter ICs'
 * '<S104>' : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/I Gain'
 * '<S105>' : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Ideal P Gain'
 * '<S106>' : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Ideal P Gain Fdbk'
 * '<S107>' : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Integrator'
 * '<S108>' : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Integrator ICs'
 * '<S109>' : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/N Copy'
 * '<S110>' : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/N Gain'
 * '<S111>' : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/P Copy'
 * '<S112>' : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Parallel P Gain'
 * '<S113>' : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Reset Signal'
 * '<S114>' : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Saturation'
 * '<S115>' : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Saturation Fdbk'
 * '<S116>' : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Sum'
 * '<S117>' : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Sum Fdbk'
 * '<S118>' : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Tracking Mode'
 * '<S119>' : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Tracking Mode Sum'
 * '<S120>' : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Tsamp - Integral'
 * '<S121>' : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Tsamp - Ngain'
 * '<S122>' : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/postSat Signal'
 * '<S123>' : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/preSat Signal'
 * '<S124>' : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Anti-windup/Disc. Clamping Parallel'
 * '<S125>' : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Anti-windup/Disc. Clamping Parallel/Dead Zone'
 * '<S126>' : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Anti-windup/Disc. Clamping Parallel/Dead Zone/Enabled'
 * '<S127>' : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/D Gain/Disabled'
 * '<S128>' : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Filter/Disabled'
 * '<S129>' : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Filter ICs/Disabled'
 * '<S130>' : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/I Gain/External Parameters'
 * '<S131>' : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Ideal P Gain/Passthrough'
 * '<S132>' : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Ideal P Gain Fdbk/Disabled'
 * '<S133>' : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Integrator/Discrete'
 * '<S134>' : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Integrator ICs/External IC'
 * '<S135>' : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/N Copy/Disabled wSignal Specification'
 * '<S136>' : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/N Gain/Disabled'
 * '<S137>' : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/P Copy/Disabled'
 * '<S138>' : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Parallel P Gain/External Parameters'
 * '<S139>' : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Reset Signal/External Reset'
 * '<S140>' : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Saturation/Enabled'
 * '<S141>' : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Saturation Fdbk/Disabled'
 * '<S142>' : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Sum/Sum_PI'
 * '<S143>' : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Sum Fdbk/Disabled'
 * '<S144>' : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Tracking Mode/Disabled'
 * '<S145>' : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Tracking Mode Sum/Passthrough'
 * '<S146>' : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Tsamp - Integral/TsSignalSpecification'
 * '<S147>' : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Tsamp - Ngain/Passthrough'
 * '<S148>' : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/postSat Signal/Forward_Path'
 * '<S149>' : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/preSat Signal/Forward_Path'
 * '<S150>' : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Inverse Park Transform/Sine Cosine'
 * '<S151>' : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Inverse Park Transform/Two inputs CRL'
 * '<S152>' : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Inverse Park Transform/Sine Cosine/Interpolation'
 * '<S153>' : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Inverse Park Transform/Sine Cosine/WrapUp'
 * '<S154>' : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Inverse Park Transform/Sine Cosine/WrapUp/Compare To Zero'
 * '<S155>' : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Inverse Park Transform/Sine Cosine/WrapUp/If Action Subsystem'
 * '<S156>' : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Inverse Park Transform/Sine Cosine/WrapUp/If Action Subsystem1'
 * '<S157>' : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Inverse Park Transform/Two inputs CRL/Switch_Axis'
 * '<S158>' : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Park Transform/Sine Cosine'
 * '<S159>' : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Park Transform/Two inputs CRL'
 * '<S160>' : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Park Transform/Sine Cosine/Sine-Cosine Lookup'
 * '<S161>' : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Park Transform/Sine Cosine/Sine-Cosine Lookup/Interpolation'
 * '<S162>' : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Park Transform/Sine Cosine/Sine-Cosine Lookup/WrapUp'
 * '<S163>' : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Park Transform/Sine Cosine/Sine-Cosine Lookup/WrapUp/Compare To Zero'
 * '<S164>' : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Park Transform/Sine Cosine/Sine-Cosine Lookup/WrapUp/If Action Subsystem'
 * '<S165>' : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Park Transform/Sine Cosine/Sine-Cosine Lookup/WrapUp/If Action Subsystem1'
 * '<S166>' : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Park Transform/Two inputs CRL/Switch_Axis'
 * '<S167>' : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Space Vector Generator/Modulation method'
 * '<S168>' : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Space Vector Generator/Voltage Input'
 * '<S169>' : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Space Vector Generator/Modulation method/SVPWM'
 * '<S170>' : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Space Vector Generator/Modulation method/SVPWM/Half(Vmin+Vmax)'
 * '<S171>' : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Space Vector Generator/Voltage Input/Valphabeta'
 * '<S172>' : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Space Vector Generator/Voltage Input/Valphabeta/Inverse Clarke Transform'
 * '<S173>' : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Space Vector Generator/Voltage Input/Valphabeta/Inverse Clarke Transform/Two phase input'
 * '<S174>' : 'mcb_pmsm_foc_test_f28379d/Current Control/HW_Inputs/Sensor Driver Blocks (codegen)'
 * '<S175>' : 'mcb_pmsm_foc_test_f28379d/Current Control/Input Scaling/ Calculate Position and Speed'
 * '<S176>' : 'mcb_pmsm_foc_test_f28379d/Current Control/Input Scaling/Calculate Phase Currents'
 * '<S177>' : 'mcb_pmsm_foc_test_f28379d/Current Control/Input Scaling/ Calculate Position and Speed/IIR Filter'
 * '<S178>' : 'mcb_pmsm_foc_test_f28379d/Current Control/Input Scaling/ Calculate Position and Speed/Mechanical to Electrical Position'
 * '<S179>' : 'mcb_pmsm_foc_test_f28379d/Current Control/Input Scaling/ Calculate Position and Speed/Speed Measurement'
 * '<S180>' : 'mcb_pmsm_foc_test_f28379d/Current Control/Input Scaling/ Calculate Position and Speed/Subsystem'
 * '<S181>' : 'mcb_pmsm_foc_test_f28379d/Current Control/Input Scaling/ Calculate Position and Speed/Subsystem1'
 * '<S182>' : 'mcb_pmsm_foc_test_f28379d/Current Control/Input Scaling/ Calculate Position and Speed/Subsystem2'
 * '<S183>' : 'mcb_pmsm_foc_test_f28379d/Current Control/Input Scaling/ Calculate Position and Speed/IIR Filter/IIR Filter'
 * '<S184>' : 'mcb_pmsm_foc_test_f28379d/Current Control/Input Scaling/ Calculate Position and Speed/IIR Filter/IIR Filter/Low-pass'
 * '<S185>' : 'mcb_pmsm_foc_test_f28379d/Current Control/Input Scaling/ Calculate Position and Speed/IIR Filter/IIR Filter/Low-pass/IIR Low Pass Filter'
 * '<S186>' : 'mcb_pmsm_foc_test_f28379d/Current Control/Input Scaling/ Calculate Position and Speed/Mechanical to Electrical Position/MechToElec'
 * '<S187>' : 'mcb_pmsm_foc_test_f28379d/Current Control/Input Scaling/ Calculate Position and Speed/Mechanical to Electrical Position/MechToElec/floating-point'
 * '<S188>' : 'mcb_pmsm_foc_test_f28379d/Current Control/Input Scaling/ Calculate Position and Speed/Mechanical to Electrical Position/MechToElec/floating-point/Compensate Offset'
 * '<S189>' : 'mcb_pmsm_foc_test_f28379d/Current Control/Input Scaling/ Calculate Position and Speed/Mechanical to Electrical Position/MechToElec/floating-point/Mech To Elec'
 * '<S190>' : 'mcb_pmsm_foc_test_f28379d/Current Control/Input Scaling/ Calculate Position and Speed/Mechanical to Electrical Position/MechToElec/floating-point/Compensate Offset/If Action Subsystem'
 * '<S191>' : 'mcb_pmsm_foc_test_f28379d/Current Control/Input Scaling/ Calculate Position and Speed/Mechanical to Electrical Position/MechToElec/floating-point/Compensate Offset/If Action Subsystem1'
 * '<S192>' : 'mcb_pmsm_foc_test_f28379d/Current Control/Input Scaling/ Calculate Position and Speed/Mechanical to Electrical Position/MechToElec/floating-point/Mech To Elec/Variant Subsystem'
 * '<S193>' : 'mcb_pmsm_foc_test_f28379d/Current Control/Input Scaling/ Calculate Position and Speed/Mechanical to Electrical Position/MechToElec/floating-point/Mech To Elec/Variant Subsystem/Dialog'
 * '<S194>' : 'mcb_pmsm_foc_test_f28379d/Current Control/Input Scaling/ Calculate Position and Speed/Speed Measurement/DT_Handle'
 * '<S195>' : 'mcb_pmsm_foc_test_f28379d/Current Control/Input Scaling/ Calculate Position and Speed/Speed Measurement/DT_Handle/floating-point'
 * '<S196>' : 'mcb_pmsm_foc_test_f28379d/Current Control/Input Scaling/Calculate Phase Currents/Data_Type'
 * '<S197>' : 'mcb_pmsm_foc_test_f28379d/Current Control/Input Scaling/Calculate Phase Currents/Data_Type/Data_Type_Float'
 * '<S198>' : 'mcb_pmsm_foc_test_f28379d/Current Control/Inverter/Code Generation'
 * '<S199>' : 'mcb_pmsm_foc_test_f28379d/Current Control/Pos_selection/Sensor Driver Blocks (codegen)'
 * '<S200>' : 'mcb_pmsm_foc_test_f28379d/Current Control/SCI_Tx/Code Generation'
 * '<S201>' : 'mcb_pmsm_foc_test_f28379d/Current Control/SCI_Tx/Code Generation/Data_Conditioning_Tx'
 * '<S202>' : 'mcb_pmsm_foc_test_f28379d/Current Control/SCI_Tx/Code Generation/Data_Logging'
 * '<S203>' : 'mcb_pmsm_foc_test_f28379d/Current Control/SCI_Tx/Code Generation/While Iterator Subsystem'
 * '<S204>' : 'mcb_pmsm_foc_test_f28379d/Current Control/SCI_Tx/Code Generation/Data_Conditioning_Tx/Data_Type_Float'
 * '<S205>' : 'mcb_pmsm_foc_test_f28379d/Current Control/SCI_Tx/Code Generation/Data_Logging/Counter Limited'
 * '<S206>' : 'mcb_pmsm_foc_test_f28379d/Current Control/SCI_Tx/Code Generation/Data_Logging/Data'
 * '<S207>' : 'mcb_pmsm_foc_test_f28379d/Current Control/SCI_Tx/Code Generation/Data_Logging/End'
 * '<S208>' : 'mcb_pmsm_foc_test_f28379d/Current Control/SCI_Tx/Code Generation/Data_Logging/Start'
 * '<S209>' : 'mcb_pmsm_foc_test_f28379d/Current Control/SCI_Tx/Code Generation/Data_Logging/Counter Limited/Increment Real World'
 * '<S210>' : 'mcb_pmsm_foc_test_f28379d/Current Control/SCI_Tx/Code Generation/Data_Logging/Counter Limited/Wrap To Zero'
 * '<S211>' : 'mcb_pmsm_foc_test_f28379d/HW Interrupt/Code generation'
 * '<S212>' : 'mcb_pmsm_foc_test_f28379d/HW Interrupt/Code generation/HWI_ADCB1_INT'
 * '<S213>' : 'mcb_pmsm_foc_test_f28379d/HW Interrupt/Code generation/HWI_SCIA_RX_INT'
 * '<S214>' : 'mcb_pmsm_foc_test_f28379d/HW Interrupt/Code generation/HWI_ADCB1_INT/ECSoC'
 * '<S215>' : 'mcb_pmsm_foc_test_f28379d/HW Interrupt/Code generation/HWI_ADCB1_INT/ECSoC/ECSimCodegen'
 * '<S216>' : 'mcb_pmsm_foc_test_f28379d/HW Interrupt/Code generation/HWI_SCIA_RX_INT/ECSoC'
 * '<S217>' : 'mcb_pmsm_foc_test_f28379d/HW Interrupt/Code generation/HWI_SCIA_RX_INT/ECSoC/ECSimCodegen'
 * '<S218>' : 'mcb_pmsm_foc_test_f28379d/Hardware Init/Variant Subsystem'
 * '<S219>' : 'mcb_pmsm_foc_test_f28379d/Hardware Init/Variant Subsystem/Code Generation'
 * '<S220>' : 'mcb_pmsm_foc_test_f28379d/Hardware Init/Variant Subsystem/Code Generation/Calculate ADC Offset '
 * '<S221>' : 'mcb_pmsm_foc_test_f28379d/Hardware Init/Variant Subsystem/Code Generation/DRV Enable'
 * '<S222>' : 'mcb_pmsm_foc_test_f28379d/Hardware Init/Variant Subsystem/Code Generation/Default ADC Offset'
 * '<S223>' : 'mcb_pmsm_foc_test_f28379d/Hardware Init/Variant Subsystem/Code Generation/Calculate ADC Offset /For Iterator Subsystem'
 * '<S224>' : 'mcb_pmsm_foc_test_f28379d/Hardware Init/Variant Subsystem/Code Generation/Calculate ADC Offset /If Action Subsystem'
 * '<S225>' : 'mcb_pmsm_foc_test_f28379d/Hardware Init/Variant Subsystem/Code Generation/Calculate ADC Offset /If Action Subsystem1'
 * '<S226>' : 'mcb_pmsm_foc_test_f28379d/Hardware Init/Variant Subsystem/Code Generation/Calculate ADC Offset /If Action Subsystem2'
 * '<S227>' : 'mcb_pmsm_foc_test_f28379d/Hardware Init/Variant Subsystem/Code Generation/Calculate ADC Offset /If Action Subsystem3'
 * '<S228>' : 'mcb_pmsm_foc_test_f28379d/Hardware Init/Variant Subsystem/Code Generation/Calculate ADC Offset /For Iterator Subsystem/If Action Subsystem'
 * '<S229>' : 'mcb_pmsm_foc_test_f28379d/Hardware Init/Variant Subsystem/Code Generation/DRV Enable/ADC Gain setting'
 * '<S230>' : 'mcb_pmsm_foc_test_f28379d/Heartbeat LED/Heartbeat LED'
 * '<S231>' : 'mcb_pmsm_foc_test_f28379d/Heartbeat LED/Heartbeat LED/Code generation'
 * '<S232>' : 'mcb_pmsm_foc_test_f28379d/Inverter and Motor - Plant Model/Codegeneration'
 * '<S233>' : 'mcb_pmsm_foc_test_f28379d/Serial Receive/Data_Conditioning_Rx'
 * '<S234>' : 'mcb_pmsm_foc_test_f28379d/Serial Receive/SCI_Rx'
 * '<S235>' : 'mcb_pmsm_foc_test_f28379d/Serial Receive/unParse'
 * '<S236>' : 'mcb_pmsm_foc_test_f28379d/Serial Receive/Data_Conditioning_Rx/Data_Type_Float'
 * '<S237>' : 'mcb_pmsm_foc_test_f28379d/Serial Receive/SCI_Rx/Code Generation'
 * '<S238>' : 'mcb_pmsm_foc_test_f28379d/Serial Receive/SCI_Rx/Code Generation/Data_Type_Float'
 * '<S239>' : 'mcb_pmsm_foc_test_f28379d/Speed Control/PI_Controller_Speed'
 * '<S240>' : 'mcb_pmsm_foc_test_f28379d/Speed Control/Speed_Ref_Selector'
 * '<S241>' : 'mcb_pmsm_foc_test_f28379d/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset'
 * '<S242>' : 'mcb_pmsm_foc_test_f28379d/Speed Control/PI_Controller_Speed/Zero_Cancellation'
 * '<S243>' : 'mcb_pmsm_foc_test_f28379d/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/Anti-windup'
 * '<S244>' : 'mcb_pmsm_foc_test_f28379d/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/D Gain'
 * '<S245>' : 'mcb_pmsm_foc_test_f28379d/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/Filter'
 * '<S246>' : 'mcb_pmsm_foc_test_f28379d/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/Filter ICs'
 * '<S247>' : 'mcb_pmsm_foc_test_f28379d/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/I Gain'
 * '<S248>' : 'mcb_pmsm_foc_test_f28379d/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/Ideal P Gain'
 * '<S249>' : 'mcb_pmsm_foc_test_f28379d/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/Ideal P Gain Fdbk'
 * '<S250>' : 'mcb_pmsm_foc_test_f28379d/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/Integrator'
 * '<S251>' : 'mcb_pmsm_foc_test_f28379d/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/Integrator ICs'
 * '<S252>' : 'mcb_pmsm_foc_test_f28379d/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/N Copy'
 * '<S253>' : 'mcb_pmsm_foc_test_f28379d/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/N Gain'
 * '<S254>' : 'mcb_pmsm_foc_test_f28379d/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/P Copy'
 * '<S255>' : 'mcb_pmsm_foc_test_f28379d/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/Parallel P Gain'
 * '<S256>' : 'mcb_pmsm_foc_test_f28379d/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/Reset Signal'
 * '<S257>' : 'mcb_pmsm_foc_test_f28379d/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/Saturation'
 * '<S258>' : 'mcb_pmsm_foc_test_f28379d/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/Saturation Fdbk'
 * '<S259>' : 'mcb_pmsm_foc_test_f28379d/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/Sum'
 * '<S260>' : 'mcb_pmsm_foc_test_f28379d/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/Sum Fdbk'
 * '<S261>' : 'mcb_pmsm_foc_test_f28379d/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/Tracking Mode'
 * '<S262>' : 'mcb_pmsm_foc_test_f28379d/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/Tracking Mode Sum'
 * '<S263>' : 'mcb_pmsm_foc_test_f28379d/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/Tsamp - Integral'
 * '<S264>' : 'mcb_pmsm_foc_test_f28379d/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/Tsamp - Ngain'
 * '<S265>' : 'mcb_pmsm_foc_test_f28379d/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/postSat Signal'
 * '<S266>' : 'mcb_pmsm_foc_test_f28379d/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/preSat Signal'
 * '<S267>' : 'mcb_pmsm_foc_test_f28379d/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/Anti-windup/Disc. Clamping Parallel'
 * '<S268>' : 'mcb_pmsm_foc_test_f28379d/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/Anti-windup/Disc. Clamping Parallel/Dead Zone'
 * '<S269>' : 'mcb_pmsm_foc_test_f28379d/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/Anti-windup/Disc. Clamping Parallel/Dead Zone/Enabled'
 * '<S270>' : 'mcb_pmsm_foc_test_f28379d/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/D Gain/Disabled'
 * '<S271>' : 'mcb_pmsm_foc_test_f28379d/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/Filter/Disabled'
 * '<S272>' : 'mcb_pmsm_foc_test_f28379d/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/Filter ICs/Disabled'
 * '<S273>' : 'mcb_pmsm_foc_test_f28379d/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/I Gain/External Parameters'
 * '<S274>' : 'mcb_pmsm_foc_test_f28379d/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/Ideal P Gain/Passthrough'
 * '<S275>' : 'mcb_pmsm_foc_test_f28379d/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/Ideal P Gain Fdbk/Disabled'
 * '<S276>' : 'mcb_pmsm_foc_test_f28379d/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/Integrator/Discrete'
 * '<S277>' : 'mcb_pmsm_foc_test_f28379d/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/Integrator ICs/External IC'
 * '<S278>' : 'mcb_pmsm_foc_test_f28379d/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/N Copy/Disabled wSignal Specification'
 * '<S279>' : 'mcb_pmsm_foc_test_f28379d/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/N Gain/Disabled'
 * '<S280>' : 'mcb_pmsm_foc_test_f28379d/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/P Copy/Disabled'
 * '<S281>' : 'mcb_pmsm_foc_test_f28379d/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/Parallel P Gain/External Parameters'
 * '<S282>' : 'mcb_pmsm_foc_test_f28379d/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/Reset Signal/External Reset'
 * '<S283>' : 'mcb_pmsm_foc_test_f28379d/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/Saturation/Enabled'
 * '<S284>' : 'mcb_pmsm_foc_test_f28379d/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/Saturation Fdbk/Disabled'
 * '<S285>' : 'mcb_pmsm_foc_test_f28379d/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/Sum/Sum_PI'
 * '<S286>' : 'mcb_pmsm_foc_test_f28379d/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/Sum Fdbk/Disabled'
 * '<S287>' : 'mcb_pmsm_foc_test_f28379d/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/Tracking Mode/Disabled'
 * '<S288>' : 'mcb_pmsm_foc_test_f28379d/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/Tracking Mode Sum/Passthrough'
 * '<S289>' : 'mcb_pmsm_foc_test_f28379d/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/Tsamp - Integral/TsSignalSpecification'
 * '<S290>' : 'mcb_pmsm_foc_test_f28379d/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/Tsamp - Ngain/Passthrough'
 * '<S291>' : 'mcb_pmsm_foc_test_f28379d/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/postSat Signal/Forward_Path'
 * '<S292>' : 'mcb_pmsm_foc_test_f28379d/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/preSat Signal/Forward_Path'
 * '<S293>' : 'mcb_pmsm_foc_test_f28379d/Speed Control/PI_Controller_Speed/Zero_Cancellation/IIR Filter'
 * '<S294>' : 'mcb_pmsm_foc_test_f28379d/Speed Control/PI_Controller_Speed/Zero_Cancellation/IIR Filter/Low-pass'
 * '<S295>' : 'mcb_pmsm_foc_test_f28379d/Speed Control/PI_Controller_Speed/Zero_Cancellation/IIR Filter/Low-pass/IIR Low Pass Filter'
 * '<S296>' : 'mcb_pmsm_foc_test_f28379d/Subsystem/MATLAB Function'
 */
#endif                             /* RTW_HEADER_mcb_pmsm_foc_test_f28379d_h_ */

/*
 * File trailer for generated code.
 *
 * [EOF]
 */
