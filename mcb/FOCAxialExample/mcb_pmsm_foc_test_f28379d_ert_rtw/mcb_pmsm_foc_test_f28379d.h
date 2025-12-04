/*
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * File: mcb_pmsm_foc_test_f28379d.h
 *
 * Code generated for Simulink model 'mcb_pmsm_foc_test_f28379d'.
 *
 * Model version                  : 7.11
 * Simulink Coder version         : 23.2 (R2023b) 01-Aug-2023
 * C/C++ source code generated on : Wed Dec  3 16:05:33 2025
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
extern void init_I2C_GPIO(void);
extern void init_I2C_A(void);

/* Block signals for system '<S152>/If Action Subsystem' */
typedef struct {
  real32_T Convert_back;               /* '<S154>/Convert_back' */
  int16_T Convert_uint16;              /* '<S154>/Convert_uint16' */
} B_IfActionSubsystem_mcb_pmsm__T;

/* Block signals for system '<S152>/If Action Subsystem1' */
typedef struct {
  real32_T Convert_back;               /* '<S155>/Convert_back' */
  int16_T Convert_uint16;              /* '<S155>/Convert_uint16' */
} B_IfActionSubsystem1_mcb_pmsm_T;

/* Block signals for system '<S228>/SPI Master Transfer' */
typedef struct {
  uint16_T SPIMasterTransfer;          /* '<S228>/SPI Master Transfer' */
} B_SPIMasterTransfer_mcb_pmsm__T;

/* Block states (default storage) for system '<S228>/SPI Master Transfer' */
typedef struct {
  codertarget_tic2000_blocks_SP_T obj; /* '<S228>/SPI Master Transfer' */
  boolean_T objisempty;                /* '<S228>/SPI Master Transfer' */
} DW_SPIMasterTransfer_mcb_pmsm_T;

/* Block signals for system '<Root>/Speed Control' */
typedef struct {
  real32_T Id_ref;                     /* '<S8>/Id_ref' */
  real32_T CastToSingle1;              /* '<S238>/Cast To Single1' */
  real32_T Sum;                        /* '<S239>/Sum' */
  real32_T Merge;                      /* '<S239>/Merge' */
  boolean_T DataStoreRead1;            /* '<S238>/Data Store Read1' */
  boolean_T DataStoreRead1_k;          /* '<S240>/Data Store Read1' */
} B_SpeedControl_mcb_pmsm_foc_t_T;

/* Block signals (default storage) */
typedef struct {
  uint32_T PositionToCount;            /* '<S178>/PositionToCount' */
  uint32_T Delay;                      /* '<S178>/Delay' */
  uint32_T Sum[4];                     /* '<S159>/Sum' */
  uint32_T BytePack[2];                /* '<S203>/Byte Pack' */
  uint32_T SCI_Tx_Data[3];             /* '<S201>/Merge' */
  uint32_T SCI_Tx_Iteration;           /* '<S201>/Merge1' */
  uint32_T Sum_h[4];                   /* '<S149>/Sum' */
  uint32_T IndexVector;                /* '<S202>/Index Vector' */
  uint32_T Add;                        /* '<S202>/Add' */
  uint32_T Data[2];                    /* '<S205>/Data' */
  uint32_T Data_f[2];                  /* '<S206>/Data' */
  uint32_T Data_fw[2];                 /* '<S207>/Data' */
  real32_T RT1;                        /* '<Root>/RT1' */
  real32_T RT13;                       /* '<Root>/RT13' */
  real32_T RT7;                        /* '<Root>/RT7' */
  real32_T RT3;                        /* '<Root>/RT3' */
  real32_T CastToSingle1;              /* '<S10>/Cast To Single1' */
  real32_T Gain;                       /* '<S10>/Gain' */
  real32_T RT2[2];                     /* '<Root>/RT2' */
  real32_T RT4;                        /* '<Root>/RT4' */
  real32_T SCIReceive[2];              /* '<S237>/SCI Receive' */
  real32_T DataStoreRead2;             /* '<S2>/Data Store Read2' */
  real32_T Unwrap;                     /* '<S174>/Unwrap' */
  real32_T DTC;                        /* '<S194>/DTC' */
  real32_T SpeedGain;                  /* '<S178>/SpeedGain' */
  real32_T Product;                    /* '<S184>/Product' */
  real32_T UnitDelay;                  /* '<S184>/Unit Delay' */
  real32_T Product1;                   /* '<S184>/Product1' */
  real32_T Add1;                       /* '<S184>/Add1' */
  real32_T GetADCVoltage[2];           /* '<S196>/Get ADC Voltage' */
  real32_T GetCurrents[2];             /* '<S196>/Get Currents' */
  real32_T PU_Conversion[2];           /* '<S196>/PU_Conversion' */
  real32_T Switch;                     /* '<S186>/Switch' */
  real32_T Merge;                      /* '<S187>/Merge' */
  real32_T Numberofpolepairs;          /* '<S192>/Number of pole pairs' */
  real32_T Floor;                      /* '<S188>/Floor' */
  real32_T Add_c;                      /* '<S188>/Add' */
  real32_T Merge_o;                    /* '<S161>/Merge' */
  real32_T indexing;                   /* '<S159>/indexing' */
  real32_T Lookup[4];                  /* '<S159>/Lookup' */
  real32_T Sum3;                       /* '<S160>/Sum3' */
  real32_T DataTypeConversion1;        /* '<S159>/Data Type Conversion1' */
  real32_T Sum2;                       /* '<S159>/Sum2' */
  real32_T Product_i;                  /* '<S160>/Product' */
  real32_T Sum4;                       /* '<S160>/Sum4' */
  real32_T Sum5;                       /* '<S160>/Sum5' */
  real32_T Product1_b;                 /* '<S160>/Product1' */
  real32_T Sum6;                       /* '<S160>/Sum6' */
  real32_T DataStoreRead1;             /* '<S2>/Data Store Read1' */
  real32_T TmpSignalConversionAtSelectorIn[11];
  real32_T Selector[2];                /* '<S16>/Selector' */
  real32_T Sum_o;                      /* '<S32>/Sum' */
  real32_T PProdOut;                   /* '<S137>/PProd Out' */
  real32_T Kp1;                        /* '<S32>/Kp1' */
  real32_T Integrator;                 /* '<S132>/Integrator' */
  real32_T Sum_m;                      /* '<S141>/Sum' */
  real32_T Saturation;                 /* '<S139>/Saturation' */
  real32_T Sum_j;                      /* '<S31>/Sum' */
  real32_T PProdOut_g;                 /* '<S86>/PProd Out' */
  real32_T Ki1;                        /* '<S31>/Ki1' */
  real32_T Integrator_f;               /* '<S81>/Integrator' */
  real32_T Sum_g;                      /* '<S90>/Sum' */
  real32_T Saturation_f;               /* '<S88>/Saturation' */
  real32_T Switch_n;                   /* '<S35>/Switch' */
  real32_T Product_j;                  /* '<S35>/Product' */
  real32_T Product_f;                  /* '<S36>/Product' */
  real32_T Product1_g;                 /* '<S36>/Product1' */
  real32_T Sum1;                       /* '<S36>/Sum1' */
  real32_T Merge_i[2];                 /* '<S30>/Merge' */
  real32_T DeadZone;                   /* '<S74>/DeadZone' */
  real32_T IProdOut;                   /* '<S78>/IProd Out' */
  real32_T Switch_f;                   /* '<S72>/Switch' */
  real32_T DeadZone_a;                 /* '<S125>/DeadZone' */
  real32_T IProdOut_b;                 /* '<S129>/IProd Out' */
  real32_T Switch_a;                   /* '<S123>/Switch' */
  real32_T Merge_a;                    /* '<S152>/Merge' */
  real32_T indexing_d;                 /* '<S149>/indexing' */
  real32_T DataTypeConversion1_n;      /* '<S149>/Data Type Conversion1' */
  real32_T Lookup_p[4];                /* '<S149>/Lookup' */
  real32_T Sum3_j;                     /* '<S151>/Sum3' */
  real32_T Sum2_p;                     /* '<S149>/Sum2' */
  real32_T Product_d;                  /* '<S151>/Product' */
  real32_T Sum5_l;                     /* '<S151>/Sum5' */
  real32_T Product1_d;                 /* '<S151>/Product1' */
  real32_T Sum4_h;                     /* '<S151>/Sum4' */
  real32_T Sum6_h;                     /* '<S151>/Sum6' */
  real32_T Delay_c;                    /* '<S174>/Delay' */
  real32_T Sum_a;                      /* '<S174>/Sum' */
  real32_T Merge_c;                    /* '<S174>/Merge' */
  real32_T DataTypeConversion;         /* '<S20>/Data Type Conversion' */
  real32_T Switch_g;                   /* '<S197>/Switch' */
  real32_T sqrt3_by_two;               /* '<S172>/sqrt3_by_two' */
  real32_T one_by_two;                 /* '<S172>/one_by_two' */
  real32_T add_c;                      /* '<S172>/add_c' */
  real32_T add_b;                      /* '<S172>/add_b' */
  real32_T Min;                        /* '<S169>/Min' */
  real32_T Max;                        /* '<S169>/Max' */
  real32_T Add_n;                      /* '<S169>/Add' */
  real32_T one_by_two_l;               /* '<S169>/one_by_two' */
  real32_T Add3;                       /* '<S168>/Add3' */
  real32_T Add2;                       /* '<S168>/Add2' */
  real32_T Add1_d;                     /* '<S168>/Add1' */
  real32_T Gain_a[3];                  /* '<S168>/Gain' */
  real32_T One_by_Two[3];              /* '<S20>/One_by_Two' */
  real32_T PWM_Duty_Cycles[3];         /* '<S20>/Sum' */
  real32_T acos_b;                     /* '<S158>/acos' */
  real32_T bsin;                       /* '<S158>/bsin' */
  real32_T sum_Ds;                     /* '<S158>/sum_Ds' */
  real32_T bcos;                       /* '<S158>/bcos' */
  real32_T asin_o;                     /* '<S158>/asin' */
  real32_T sum_Qs;                     /* '<S158>/sum_Qs' */
  real32_T Switch_h[2];                /* '<S165>/Switch' */
  real32_T algDD_o1;
  real32_T algDD_o2;
  real32_T qcos;                       /* '<S150>/qcos' */
  real32_T dsin;                       /* '<S150>/dsin' */
  real32_T sum_beta;                   /* '<S150>/sum_beta' */
  real32_T dcos;                       /* '<S150>/dcos' */
  real32_T qsin;                       /* '<S150>/qsin' */
  real32_T sum_alpha;                  /* '<S150>/sum_alpha' */
  real32_T Switch_b[2];                /* '<S156>/Switch' */
  real32_T algDD_o1_p;
  real32_T algDD_o2_o;
  real32_T Product_o[2];               /* '<S37>/Product' */
  real32_T SquareRoot;                 /* '<S37>/Square Root' */
  real32_T Switch_as;                  /* '<S37>/Switch' */
  real32_T Reciprocal;                 /* '<S37>/Reciprocal' */
  real32_T Switch_j[2];                /* '<S34>/Switch' */
  real32_T Switch2;                    /* '<S44>/Switch2' */
  real32_T Product_b;                  /* '<S43>/Product' */
  real32_T Sum_jr;                     /* '<S43>/Sum' */
  real32_T Product2;                   /* '<S43>/Product2' */
  real32_T Merge_d;                    /* '<S43>/Merge' */
  real32_T Gain_b;                     /* '<S43>/Gain' */
  real32_T Switch_m;                   /* '<S44>/Switch' */
  real32_T Switch1;                    /* '<S45>/Switch1' */
  real32_T Sqrt;                       /* '<S45>/Sqrt' */
  real32_T Gain_l;                     /* '<S45>/Gain' */
  real32_T a_plus_2b;                  /* '<S29>/a_plus_2b' */
  real32_T one_by_sqrt3;               /* '<S29>/one_by_sqrt3' */
  real32_T algDD_o1_e;
  real32_T algDD_o2_h;
  int32_T SpeedCount;                  /* '<S178>/SpeedCount' */
  int32_T DataTypeConversion_c[2];     /* '<S175>/Data Type Conversion' */
  int32_T Add_e[2];                    /* '<S175>/Add' */
  uint16_T Switch_c;                   /* '<S220>/Switch' */
  uint16_T Divide;                     /* '<S219>/Divide' */
  uint16_T Divide1;                    /* '<S219>/Divide1' */
  uint16_T ForIterator;                /* '<S222>/For Iterator' */
  uint16_T ADC_A_IN0;                  /* '<S222>/ADC_A_IN0' */
  uint16_T ADC_B_IN0;                  /* '<S222>/ADC_B_IN0' */
  uint16_T Memory;                     /* '<S227>/Memory' */
  uint16_T Sum_hk;                     /* '<S227>/Sum' */
  uint16_T Memory1;                    /* '<S227>/Memory1' */
  uint16_T Sum1_j;                     /* '<S227>/Sum1' */
  uint16_T DataTypeConversion2;        /* '<S235>/Data Type Conversion2' */
  uint16_T BitwiseOperator;            /* '<S234>/Bitwise Operator' */
  uint16_T BitwiseOperator1;           /* '<S234>/Bitwise Operator1' */
  uint16_T ShiftArithmetic1;           /* '<S234>/Shift Arithmetic1' */
  uint16_T BitwiseOperator2;           /* '<S234>/Bitwise Operator2' */
  uint16_T ShiftArithmetic2;           /* '<S234>/Shift Arithmetic2' */
  uint16_T Output;                     /* '<S204>/Output' */
  uint16_T DataStoreRead1_o;           /* '<S175>/Data Store Read1' */
  uint16_T DataStoreRead2_j;           /* '<S175>/Data Store Read2' */
  uint16_T ADC_C_IN2;                  /* '<S173>/ADC_C_IN2' */
  uint16_T ADC_B_IN2;                  /* '<S173>/ADC_B_IN2' */
  uint16_T DataTypeConversion_i;       /* '<S161>/Data Type Conversion' */
  uint16_T Get_Integer;                /* '<S159>/Get_Integer' */
  uint16_T DataStoreRead;              /* '<S16>/Data Store Read' */
  uint16_T MultiportSwitch[2];         /* '<S16>/Multiport Switch' */
  uint16_T FixPtSum1;                  /* '<S208>/FixPt Sum1' */
  uint16_T FixPtSwitch;                /* '<S209>/FixPt Switch' */
  uint16_T Switch1_j;                  /* '<S35>/Switch1' */
  uint16_T DataTypeConversion_h;       /* '<S152>/Data Type Conversion' */
  uint16_T Get_Integer_j;              /* '<S149>/Get_Integer' */
  uint16_T Switch1_jv[3];              /* '<S197>/Switch1' */
  uint16_T Scale_to_PWM_Counter_PRD[3];/* '<S197>/Scale_to_PWM_Counter_PRD' */
  uint16_T DataTypeConversion_f;       /* '<S33>/Data Type Conversion' */
  uint16_T DataTypeConversion_fl;      /* '<S43>/Data Type Conversion' */
  uint16_T I2CTransmit1;               /* '<S13>/I2C Transmit1' */
  uint16_T raw_angle;                  /* '<S10>/MATLAB Function' */
  uint16_T I2CReceive_o2;              /* '<S9>/I2C Receive' */
  uint16_T I2CTransmit;                /* '<S9>/I2C Transmit' */
  int16_T WhileIterator;               /* '<S202>/While Iterator' */
  uint16_T I2CReceive_o1[2];           /* '<S9>/I2C Receive' */
  int16_T Switch1_h;                   /* '<S72>/Switch1' */
  int16_T Switch2_l;                   /* '<S72>/Switch2' */
  int16_T Switch1_l;                   /* '<S123>/Switch1' */
  int16_T Switch2_c;                   /* '<S123>/Switch2' */
  boolean_T DataStoreRead_g;           /* '<S1>/Data Store Read' */
  boolean_T RT4_h;                     /* '<S1>/RT4' */
  boolean_T UnitDelay_l;               /* '<S1>/Unit Delay' */
  boolean_T LogicalOperator2;          /* '<S1>/Logical Operator2' */
  boolean_T NOT;                       /* '<S218>/NOT' */
  boolean_T DataTypeConversion3;       /* '<S234>/Data Type Conversion3' */
  boolean_T Compare;                   /* '<S162>/Compare' */
  boolean_T DataStoreRead1_b;          /* '<S32>/Data Store Read1' */
  boolean_T LogicalOperator;           /* '<S32>/Logical Operator' */
  boolean_T DataStoreRead1_m;          /* '<S31>/Data Store Read1' */
  boolean_T LogicalOperator_a;         /* '<S31>/Logical Operator' */
  boolean_T RelationalOperator;        /* '<S72>/Relational Operator' */
  boolean_T fixforDTpropagationissue; /* '<S72>/fix for DT propagation issue' */
  boolean_T fixforDTpropagationissue1;
                                     /* '<S72>/fix for DT propagation issue1' */
  boolean_T Equal1;                    /* '<S72>/Equal1' */
  boolean_T AND3;                      /* '<S72>/AND3' */
  boolean_T RelationalOperator_e;      /* '<S123>/Relational Operator' */
  boolean_T fixforDTpropagationissue_j;
                                     /* '<S123>/fix for DT propagation issue' */
  boolean_T fixforDTpropagationissue1_o;
                                    /* '<S123>/fix for DT propagation issue1' */
  boolean_T Equal1_i;                  /* '<S123>/Equal1' */
  boolean_T AND3_n;                    /* '<S123>/AND3' */
  boolean_T Compare_f;                 /* '<S153>/Compare' */
  boolean_T PWM_En;                    /* '<S20>/Enable' */
  boolean_T RelationalOperator_k;      /* '<S33>/Relational Operator' */
  boolean_T Compare_k;                 /* '<S39>/Compare' */
  boolean_T Compare_f0;                /* '<S40>/Compare' */
  boolean_T LowerRelop1;               /* '<S44>/LowerRelop1' */
  boolean_T RelationalOperator_l;      /* '<S43>/Relational Operator' */
  boolean_T UpperRelop;                /* '<S44>/UpperRelop' */
  B_SpeedControl_mcb_pmsm_foc_t_T SpeedControl;/* '<Root>/Speed Control' */
  B_SPIMasterTransfer_mcb_pmsm__T SPIMasterTransfer1;/* '<S228>/SPI Master Transfer' */
  B_SPIMasterTransfer_mcb_pmsm__T SPIMasterTransfer;/* '<S228>/SPI Master Transfer' */
  B_IfActionSubsystem1_mcb_pmsm_T IfActionSubsystem1_k;/* '<S161>/If Action Subsystem1' */
  B_IfActionSubsystem_mcb_pmsm__T IfActionSubsystem_e;/* '<S161>/If Action Subsystem' */
  B_IfActionSubsystem1_mcb_pmsm_T IfActionSubsystem1;/* '<S152>/If Action Subsystem1' */
  B_IfActionSubsystem_mcb_pmsm__T IfActionSubsystem;/* '<S152>/If Action Subsystem' */
} B_mcb_pmsm_foc_test_f28379d_T;

/* Block states (default storage) for system '<Root>' */
typedef struct {
  real_T ERR;                          /* '<Root>/Data Store Memory8' */
  real32_T UnitDelay_DSTATE;           /* '<S184>/Unit Delay' */
  real32_T Integrator_DSTATE;          /* '<S132>/Integrator' */
  real32_T Integrator_DSTATE_o;        /* '<S81>/Integrator' */
  real32_T Delay_DSTATE;               /* '<S174>/Delay' */
  uint32_T Delay_DSTATE_p[20];         /* '<S178>/Delay' */
  volatile real32_T RT1_Buffer[2];     /* '<Root>/RT1' */
  volatile real32_T RT7_Buffer[2];     /* '<Root>/RT7' */
  volatile real32_T RT2_Buffer[4];     /* '<Root>/RT2' */
  volatile real32_T RT3_Buffer[2];     /* '<Root>/RT3' */
  volatile real32_T RT4_Buffer[2];     /* '<Root>/RT4' */
  real32_T SpeedRef;                   /* '<Root>/Data Store Memory4' */
  real32_T PosRef;                     /* '<Root>/Data Store Memory5' */
  real32_T Unwrap_Prev;                /* '<S174>/Unwrap' */
  real32_T Unwrap_Cumsum;              /* '<S174>/Unwrap' */
  int32_T DigitalOutput_FRAC_LEN;      /* '<S230>/Digital Output' */
  int32_T DigitalOutput_FRAC_LEN_e;    /* '<S220>/Digital Output' */
  int32_T DigitalOutput1_FRAC_LEN;     /* '<S220>/Digital Output1' */
  int32_T SpeedCount_DWORK1;           /* '<S178>/SpeedCount' */
  int32_T Add_DWORK1[2];               /* '<S175>/Add' */
  int32_T DRV830xEnable_FRAC_LEN;      /* '<S197>/DRV830x Enable' */
  uint32_T Sum_DWORK1[4];              /* '<S159>/Sum' */
  uint32_T Add_DWORK1_n;               /* '<S202>/Add' */
  uint16_T Output_DSTATE;              /* '<S204>/Output' */
  volatile int16_T RT1_ActiveBufIdx;   /* '<Root>/RT1' */
  volatile int16_T RT1_semaphoreTaken; /* '<Root>/RT1' */
  volatile int16_T RT7_ActiveBufIdx;   /* '<Root>/RT7' */
  volatile int16_T RT2_ActiveBufIdx;   /* '<Root>/RT2' */
  volatile int16_T RT3_ActiveBufIdx;   /* '<Root>/RT3' */
  volatile int16_T RT4_ActiveBufIdx;   /* '<Root>/RT4' */
  uint16_T IaOffset;                   /* '<Root>/Data Store Memory1' */
  uint16_T IbOffset;                   /* '<Root>/Data Store Memory2' */
  uint16_T Debug_signals;              /* '<Root>/Data Store Memory6' */
  uint16_T Control_Mode;               /* '<Root>/Data Store Memory7' */
  uint16_T CircBufIdx;                 /* '<S178>/Delay' */
  boolean_T UnitDelay_DSTATE_f;        /* '<S1>/Unit Delay' */
  int16_T Integrator_PrevResetState;   /* '<S132>/Integrator' */
  int16_T Integrator_PrevResetState_k; /* '<S81>/Integrator' */
  boolean_T Enable;                    /* '<Root>/Data Store Memory29' */
  boolean_T Enable_I2C;                /* '<Root>/Data Store Memory3' */
  boolean_T Unwrap_FirstStep;          /* '<S174>/Unwrap' */
  DW_SPIMasterTransfer_mcb_pmsm_T SPIMasterTransfer1;/* '<S228>/SPI Master Transfer' */
  DW_SPIMasterTransfer_mcb_pmsm_T SPIMasterTransfer;/* '<S228>/SPI Master Transfer' */
} DW_mcb_pmsm_foc_test_f28379d_T;

/* Invariant block signals (default storage) */
typedef struct {
  const uint32_T Width;                /* '<S201>/Width' */
} ConstB_mcb_pmsm_foc_test_f283_T;

/* Constant parameters (default storage) */
typedef struct {
  /* Pooled Parameter (Expression: )
   * Referenced by:
   *   '<S149>/sine_table_values'
   *   '<S159>/sine_table_values'
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
 * '<S9>'   : 'mcb_pmsm_foc_test_f28379d/AS5600 Read/Data Read'
 * '<S10>'  : 'mcb_pmsm_foc_test_f28379d/AS5600 Read/Data Realignment '
 * '<S11>'  : 'mcb_pmsm_foc_test_f28379d/AS5600 Read/Initialization'
 * '<S12>'  : 'mcb_pmsm_foc_test_f28379d/AS5600 Read/Data Realignment /MATLAB Function'
 * '<S13>'  : 'mcb_pmsm_foc_test_f28379d/AS5600 Read/Initialization/Address - Data read'
 * '<S14>'  : 'mcb_pmsm_foc_test_f28379d/AS5600 Read/Initialization/Delay 1ms'
 * '<S15>'  : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System'
 * '<S16>'  : 'mcb_pmsm_foc_test_f28379d/Current Control/Debug_signals'
 * '<S17>'  : 'mcb_pmsm_foc_test_f28379d/Current Control/HW_Inputs'
 * '<S18>'  : 'mcb_pmsm_foc_test_f28379d/Current Control/Input Scaling'
 * '<S19>'  : 'mcb_pmsm_foc_test_f28379d/Current Control/Inverter'
 * '<S20>'  : 'mcb_pmsm_foc_test_f28379d/Current Control/Output Scaling'
 * '<S21>'  : 'mcb_pmsm_foc_test_f28379d/Current Control/Pos_selection'
 * '<S22>'  : 'mcb_pmsm_foc_test_f28379d/Current Control/SCI_Tx'
 * '<S23>'  : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Clarke Transform'
 * '<S24>'  : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers'
 * '<S25>'  : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Inverse Park Transform'
 * '<S26>'  : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Park Transform'
 * '<S27>'  : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Space Vector Generator'
 * '<S28>'  : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Clarke Transform/Two phase input'
 * '<S29>'  : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Clarke Transform/Two phase input/Two phase CRL wrap'
 * '<S30>'  : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/DQ Limiter'
 * '<S31>'  : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id'
 * '<S32>'  : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq'
 * '<S33>'  : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/DQ Limiter/D-Q Equivalence'
 * '<S34>'  : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/DQ Limiter/D//Q Axis Priority'
 * '<S35>'  : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/DQ Limiter/Inport//Dialog Selection'
 * '<S36>'  : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/DQ Limiter/Magnitude_calc'
 * '<S37>'  : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/DQ Limiter/D-Q Equivalence/Limiter'
 * '<S38>'  : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/DQ Limiter/D-Q Equivalence/Passthrough'
 * '<S39>'  : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/DQ Limiter/D//Q Axis Priority/Compare To Constant'
 * '<S40>'  : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/DQ Limiter/D//Q Axis Priority/Compare To Constant1'
 * '<S41>'  : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/DQ Limiter/D//Q Axis Priority/flipInputs'
 * '<S42>'  : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/DQ Limiter/D//Q Axis Priority/flipInputs1'
 * '<S43>'  : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/DQ Limiter/D//Q Axis Priority/limiter'
 * '<S44>'  : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/DQ Limiter/D//Q Axis Priority/limiter/limitRef1'
 * '<S45>'  : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/DQ Limiter/D//Q Axis Priority/limiter/limitRef2'
 * '<S46>'  : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/DQ Limiter/D//Q Axis Priority/limiter/passThrough'
 * '<S47>'  : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset'
 * '<S48>'  : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Anti-windup'
 * '<S49>'  : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/D Gain'
 * '<S50>'  : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Filter'
 * '<S51>'  : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Filter ICs'
 * '<S52>'  : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/I Gain'
 * '<S53>'  : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Ideal P Gain'
 * '<S54>'  : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Ideal P Gain Fdbk'
 * '<S55>'  : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Integrator'
 * '<S56>'  : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Integrator ICs'
 * '<S57>'  : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/N Copy'
 * '<S58>'  : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/N Gain'
 * '<S59>'  : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/P Copy'
 * '<S60>'  : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Parallel P Gain'
 * '<S61>'  : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Reset Signal'
 * '<S62>'  : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Saturation'
 * '<S63>'  : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Saturation Fdbk'
 * '<S64>'  : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Sum'
 * '<S65>'  : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Sum Fdbk'
 * '<S66>'  : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Tracking Mode'
 * '<S67>'  : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Tracking Mode Sum'
 * '<S68>'  : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Tsamp - Integral'
 * '<S69>'  : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Tsamp - Ngain'
 * '<S70>'  : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/postSat Signal'
 * '<S71>'  : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/preSat Signal'
 * '<S72>'  : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Anti-windup/Disc. Clamping Parallel'
 * '<S73>'  : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Anti-windup/Disc. Clamping Parallel/Dead Zone'
 * '<S74>'  : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Anti-windup/Disc. Clamping Parallel/Dead Zone/Enabled'
 * '<S75>'  : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/D Gain/Disabled'
 * '<S76>'  : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Filter/Disabled'
 * '<S77>'  : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Filter ICs/Disabled'
 * '<S78>'  : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/I Gain/External Parameters'
 * '<S79>'  : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Ideal P Gain/Passthrough'
 * '<S80>'  : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Ideal P Gain Fdbk/Disabled'
 * '<S81>'  : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Integrator/Discrete'
 * '<S82>'  : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Integrator ICs/External IC'
 * '<S83>'  : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/N Copy/Disabled wSignal Specification'
 * '<S84>'  : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/N Gain/Disabled'
 * '<S85>'  : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/P Copy/Disabled'
 * '<S86>'  : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Parallel P Gain/External Parameters'
 * '<S87>'  : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Reset Signal/External Reset'
 * '<S88>'  : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Saturation/Enabled'
 * '<S89>'  : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Saturation Fdbk/Disabled'
 * '<S90>'  : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Sum/Sum_PI'
 * '<S91>'  : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Sum Fdbk/Disabled'
 * '<S92>'  : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Tracking Mode/Disabled'
 * '<S93>'  : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Tracking Mode Sum/Passthrough'
 * '<S94>'  : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Tsamp - Integral/TsSignalSpecification'
 * '<S95>'  : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Tsamp - Ngain/Passthrough'
 * '<S96>'  : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/postSat Signal/Forward_Path'
 * '<S97>'  : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/preSat Signal/Forward_Path'
 * '<S98>'  : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset'
 * '<S99>'  : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Anti-windup'
 * '<S100>' : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/D Gain'
 * '<S101>' : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Filter'
 * '<S102>' : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Filter ICs'
 * '<S103>' : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/I Gain'
 * '<S104>' : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Ideal P Gain'
 * '<S105>' : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Ideal P Gain Fdbk'
 * '<S106>' : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Integrator'
 * '<S107>' : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Integrator ICs'
 * '<S108>' : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/N Copy'
 * '<S109>' : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/N Gain'
 * '<S110>' : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/P Copy'
 * '<S111>' : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Parallel P Gain'
 * '<S112>' : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Reset Signal'
 * '<S113>' : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Saturation'
 * '<S114>' : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Saturation Fdbk'
 * '<S115>' : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Sum'
 * '<S116>' : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Sum Fdbk'
 * '<S117>' : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Tracking Mode'
 * '<S118>' : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Tracking Mode Sum'
 * '<S119>' : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Tsamp - Integral'
 * '<S120>' : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Tsamp - Ngain'
 * '<S121>' : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/postSat Signal'
 * '<S122>' : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/preSat Signal'
 * '<S123>' : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Anti-windup/Disc. Clamping Parallel'
 * '<S124>' : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Anti-windup/Disc. Clamping Parallel/Dead Zone'
 * '<S125>' : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Anti-windup/Disc. Clamping Parallel/Dead Zone/Enabled'
 * '<S126>' : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/D Gain/Disabled'
 * '<S127>' : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Filter/Disabled'
 * '<S128>' : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Filter ICs/Disabled'
 * '<S129>' : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/I Gain/External Parameters'
 * '<S130>' : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Ideal P Gain/Passthrough'
 * '<S131>' : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Ideal P Gain Fdbk/Disabled'
 * '<S132>' : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Integrator/Discrete'
 * '<S133>' : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Integrator ICs/External IC'
 * '<S134>' : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/N Copy/Disabled wSignal Specification'
 * '<S135>' : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/N Gain/Disabled'
 * '<S136>' : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/P Copy/Disabled'
 * '<S137>' : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Parallel P Gain/External Parameters'
 * '<S138>' : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Reset Signal/External Reset'
 * '<S139>' : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Saturation/Enabled'
 * '<S140>' : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Saturation Fdbk/Disabled'
 * '<S141>' : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Sum/Sum_PI'
 * '<S142>' : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Sum Fdbk/Disabled'
 * '<S143>' : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Tracking Mode/Disabled'
 * '<S144>' : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Tracking Mode Sum/Passthrough'
 * '<S145>' : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Tsamp - Integral/TsSignalSpecification'
 * '<S146>' : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Tsamp - Ngain/Passthrough'
 * '<S147>' : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/postSat Signal/Forward_Path'
 * '<S148>' : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/preSat Signal/Forward_Path'
 * '<S149>' : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Inverse Park Transform/Sine Cosine'
 * '<S150>' : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Inverse Park Transform/Two inputs CRL'
 * '<S151>' : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Inverse Park Transform/Sine Cosine/Interpolation'
 * '<S152>' : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Inverse Park Transform/Sine Cosine/WrapUp'
 * '<S153>' : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Inverse Park Transform/Sine Cosine/WrapUp/Compare To Zero'
 * '<S154>' : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Inverse Park Transform/Sine Cosine/WrapUp/If Action Subsystem'
 * '<S155>' : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Inverse Park Transform/Sine Cosine/WrapUp/If Action Subsystem1'
 * '<S156>' : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Inverse Park Transform/Two inputs CRL/Switch_Axis'
 * '<S157>' : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Park Transform/Sine Cosine'
 * '<S158>' : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Park Transform/Two inputs CRL'
 * '<S159>' : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Park Transform/Sine Cosine/Sine-Cosine Lookup'
 * '<S160>' : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Park Transform/Sine Cosine/Sine-Cosine Lookup/Interpolation'
 * '<S161>' : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Park Transform/Sine Cosine/Sine-Cosine Lookup/WrapUp'
 * '<S162>' : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Park Transform/Sine Cosine/Sine-Cosine Lookup/WrapUp/Compare To Zero'
 * '<S163>' : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Park Transform/Sine Cosine/Sine-Cosine Lookup/WrapUp/If Action Subsystem'
 * '<S164>' : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Park Transform/Sine Cosine/Sine-Cosine Lookup/WrapUp/If Action Subsystem1'
 * '<S165>' : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Park Transform/Two inputs CRL/Switch_Axis'
 * '<S166>' : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Space Vector Generator/Modulation method'
 * '<S167>' : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Space Vector Generator/Voltage Input'
 * '<S168>' : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Space Vector Generator/Modulation method/SVPWM'
 * '<S169>' : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Space Vector Generator/Modulation method/SVPWM/Half(Vmin+Vmax)'
 * '<S170>' : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Space Vector Generator/Voltage Input/Valphabeta'
 * '<S171>' : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Space Vector Generator/Voltage Input/Valphabeta/Inverse Clarke Transform'
 * '<S172>' : 'mcb_pmsm_foc_test_f28379d/Current Control/Control_System/Space Vector Generator/Voltage Input/Valphabeta/Inverse Clarke Transform/Two phase input'
 * '<S173>' : 'mcb_pmsm_foc_test_f28379d/Current Control/HW_Inputs/Sensor Driver Blocks (codegen)'
 * '<S174>' : 'mcb_pmsm_foc_test_f28379d/Current Control/Input Scaling/ Calculate Position and Speed'
 * '<S175>' : 'mcb_pmsm_foc_test_f28379d/Current Control/Input Scaling/Calculate Phase Currents'
 * '<S176>' : 'mcb_pmsm_foc_test_f28379d/Current Control/Input Scaling/ Calculate Position and Speed/IIR Filter'
 * '<S177>' : 'mcb_pmsm_foc_test_f28379d/Current Control/Input Scaling/ Calculate Position and Speed/Mechanical to Electrical Position'
 * '<S178>' : 'mcb_pmsm_foc_test_f28379d/Current Control/Input Scaling/ Calculate Position and Speed/Speed Measurement'
 * '<S179>' : 'mcb_pmsm_foc_test_f28379d/Current Control/Input Scaling/ Calculate Position and Speed/Subsystem'
 * '<S180>' : 'mcb_pmsm_foc_test_f28379d/Current Control/Input Scaling/ Calculate Position and Speed/Subsystem1'
 * '<S181>' : 'mcb_pmsm_foc_test_f28379d/Current Control/Input Scaling/ Calculate Position and Speed/Subsystem2'
 * '<S182>' : 'mcb_pmsm_foc_test_f28379d/Current Control/Input Scaling/ Calculate Position and Speed/IIR Filter/IIR Filter'
 * '<S183>' : 'mcb_pmsm_foc_test_f28379d/Current Control/Input Scaling/ Calculate Position and Speed/IIR Filter/IIR Filter/Low-pass'
 * '<S184>' : 'mcb_pmsm_foc_test_f28379d/Current Control/Input Scaling/ Calculate Position and Speed/IIR Filter/IIR Filter/Low-pass/IIR Low Pass Filter'
 * '<S185>' : 'mcb_pmsm_foc_test_f28379d/Current Control/Input Scaling/ Calculate Position and Speed/Mechanical to Electrical Position/MechToElec'
 * '<S186>' : 'mcb_pmsm_foc_test_f28379d/Current Control/Input Scaling/ Calculate Position and Speed/Mechanical to Electrical Position/MechToElec/floating-point'
 * '<S187>' : 'mcb_pmsm_foc_test_f28379d/Current Control/Input Scaling/ Calculate Position and Speed/Mechanical to Electrical Position/MechToElec/floating-point/Compensate Offset'
 * '<S188>' : 'mcb_pmsm_foc_test_f28379d/Current Control/Input Scaling/ Calculate Position and Speed/Mechanical to Electrical Position/MechToElec/floating-point/Mech To Elec'
 * '<S189>' : 'mcb_pmsm_foc_test_f28379d/Current Control/Input Scaling/ Calculate Position and Speed/Mechanical to Electrical Position/MechToElec/floating-point/Compensate Offset/If Action Subsystem'
 * '<S190>' : 'mcb_pmsm_foc_test_f28379d/Current Control/Input Scaling/ Calculate Position and Speed/Mechanical to Electrical Position/MechToElec/floating-point/Compensate Offset/If Action Subsystem1'
 * '<S191>' : 'mcb_pmsm_foc_test_f28379d/Current Control/Input Scaling/ Calculate Position and Speed/Mechanical to Electrical Position/MechToElec/floating-point/Mech To Elec/Variant Subsystem'
 * '<S192>' : 'mcb_pmsm_foc_test_f28379d/Current Control/Input Scaling/ Calculate Position and Speed/Mechanical to Electrical Position/MechToElec/floating-point/Mech To Elec/Variant Subsystem/Dialog'
 * '<S193>' : 'mcb_pmsm_foc_test_f28379d/Current Control/Input Scaling/ Calculate Position and Speed/Speed Measurement/DT_Handle'
 * '<S194>' : 'mcb_pmsm_foc_test_f28379d/Current Control/Input Scaling/ Calculate Position and Speed/Speed Measurement/DT_Handle/floating-point'
 * '<S195>' : 'mcb_pmsm_foc_test_f28379d/Current Control/Input Scaling/Calculate Phase Currents/Data_Type'
 * '<S196>' : 'mcb_pmsm_foc_test_f28379d/Current Control/Input Scaling/Calculate Phase Currents/Data_Type/Data_Type_Float'
 * '<S197>' : 'mcb_pmsm_foc_test_f28379d/Current Control/Inverter/Code Generation'
 * '<S198>' : 'mcb_pmsm_foc_test_f28379d/Current Control/Pos_selection/Sensor Driver Blocks (codegen)'
 * '<S199>' : 'mcb_pmsm_foc_test_f28379d/Current Control/SCI_Tx/Code Generation'
 * '<S200>' : 'mcb_pmsm_foc_test_f28379d/Current Control/SCI_Tx/Code Generation/Data_Conditioning_Tx'
 * '<S201>' : 'mcb_pmsm_foc_test_f28379d/Current Control/SCI_Tx/Code Generation/Data_Logging'
 * '<S202>' : 'mcb_pmsm_foc_test_f28379d/Current Control/SCI_Tx/Code Generation/While Iterator Subsystem'
 * '<S203>' : 'mcb_pmsm_foc_test_f28379d/Current Control/SCI_Tx/Code Generation/Data_Conditioning_Tx/Data_Type_Float'
 * '<S204>' : 'mcb_pmsm_foc_test_f28379d/Current Control/SCI_Tx/Code Generation/Data_Logging/Counter Limited'
 * '<S205>' : 'mcb_pmsm_foc_test_f28379d/Current Control/SCI_Tx/Code Generation/Data_Logging/Data'
 * '<S206>' : 'mcb_pmsm_foc_test_f28379d/Current Control/SCI_Tx/Code Generation/Data_Logging/End'
 * '<S207>' : 'mcb_pmsm_foc_test_f28379d/Current Control/SCI_Tx/Code Generation/Data_Logging/Start'
 * '<S208>' : 'mcb_pmsm_foc_test_f28379d/Current Control/SCI_Tx/Code Generation/Data_Logging/Counter Limited/Increment Real World'
 * '<S209>' : 'mcb_pmsm_foc_test_f28379d/Current Control/SCI_Tx/Code Generation/Data_Logging/Counter Limited/Wrap To Zero'
 * '<S210>' : 'mcb_pmsm_foc_test_f28379d/HW Interrupt/Code generation'
 * '<S211>' : 'mcb_pmsm_foc_test_f28379d/HW Interrupt/Code generation/HWI_ADCB1_INT'
 * '<S212>' : 'mcb_pmsm_foc_test_f28379d/HW Interrupt/Code generation/HWI_SCIA_RX_INT'
 * '<S213>' : 'mcb_pmsm_foc_test_f28379d/HW Interrupt/Code generation/HWI_ADCB1_INT/ECSoC'
 * '<S214>' : 'mcb_pmsm_foc_test_f28379d/HW Interrupt/Code generation/HWI_ADCB1_INT/ECSoC/ECSimCodegen'
 * '<S215>' : 'mcb_pmsm_foc_test_f28379d/HW Interrupt/Code generation/HWI_SCIA_RX_INT/ECSoC'
 * '<S216>' : 'mcb_pmsm_foc_test_f28379d/HW Interrupt/Code generation/HWI_SCIA_RX_INT/ECSoC/ECSimCodegen'
 * '<S217>' : 'mcb_pmsm_foc_test_f28379d/Hardware Init/Variant Subsystem'
 * '<S218>' : 'mcb_pmsm_foc_test_f28379d/Hardware Init/Variant Subsystem/Code Generation'
 * '<S219>' : 'mcb_pmsm_foc_test_f28379d/Hardware Init/Variant Subsystem/Code Generation/Calculate ADC Offset '
 * '<S220>' : 'mcb_pmsm_foc_test_f28379d/Hardware Init/Variant Subsystem/Code Generation/DRV Enable'
 * '<S221>' : 'mcb_pmsm_foc_test_f28379d/Hardware Init/Variant Subsystem/Code Generation/Default ADC Offset'
 * '<S222>' : 'mcb_pmsm_foc_test_f28379d/Hardware Init/Variant Subsystem/Code Generation/Calculate ADC Offset /For Iterator Subsystem'
 * '<S223>' : 'mcb_pmsm_foc_test_f28379d/Hardware Init/Variant Subsystem/Code Generation/Calculate ADC Offset /If Action Subsystem'
 * '<S224>' : 'mcb_pmsm_foc_test_f28379d/Hardware Init/Variant Subsystem/Code Generation/Calculate ADC Offset /If Action Subsystem1'
 * '<S225>' : 'mcb_pmsm_foc_test_f28379d/Hardware Init/Variant Subsystem/Code Generation/Calculate ADC Offset /If Action Subsystem2'
 * '<S226>' : 'mcb_pmsm_foc_test_f28379d/Hardware Init/Variant Subsystem/Code Generation/Calculate ADC Offset /If Action Subsystem3'
 * '<S227>' : 'mcb_pmsm_foc_test_f28379d/Hardware Init/Variant Subsystem/Code Generation/Calculate ADC Offset /For Iterator Subsystem/If Action Subsystem'
 * '<S228>' : 'mcb_pmsm_foc_test_f28379d/Hardware Init/Variant Subsystem/Code Generation/DRV Enable/ADC Gain setting'
 * '<S229>' : 'mcb_pmsm_foc_test_f28379d/Heartbeat LED/Heartbeat LED'
 * '<S230>' : 'mcb_pmsm_foc_test_f28379d/Heartbeat LED/Heartbeat LED/Code generation'
 * '<S231>' : 'mcb_pmsm_foc_test_f28379d/Inverter and Motor - Plant Model/Codegeneration'
 * '<S232>' : 'mcb_pmsm_foc_test_f28379d/Serial Receive/Data_Conditioning_Rx'
 * '<S233>' : 'mcb_pmsm_foc_test_f28379d/Serial Receive/SCI_Rx'
 * '<S234>' : 'mcb_pmsm_foc_test_f28379d/Serial Receive/unParse'
 * '<S235>' : 'mcb_pmsm_foc_test_f28379d/Serial Receive/Data_Conditioning_Rx/Data_Type_Float'
 * '<S236>' : 'mcb_pmsm_foc_test_f28379d/Serial Receive/SCI_Rx/Code Generation'
 * '<S237>' : 'mcb_pmsm_foc_test_f28379d/Serial Receive/SCI_Rx/Code Generation/Data_Type_Float'
 * '<S238>' : 'mcb_pmsm_foc_test_f28379d/Speed Control/PI_Controller_Speed'
 * '<S239>' : 'mcb_pmsm_foc_test_f28379d/Speed Control/POS_Loop'
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
 * '<S296>' : 'mcb_pmsm_foc_test_f28379d/Speed Control/POS_Loop/Discrete PI Controller  with anti-windup & reset'
 * '<S297>' : 'mcb_pmsm_foc_test_f28379d/Speed Control/POS_Loop/Subsystem'
 * '<S298>' : 'mcb_pmsm_foc_test_f28379d/Speed Control/POS_Loop/Subsystem1'
 * '<S299>' : 'mcb_pmsm_foc_test_f28379d/Speed Control/POS_Loop/Subsystem2'
 * '<S300>' : 'mcb_pmsm_foc_test_f28379d/Speed Control/POS_Loop/Discrete PI Controller  with anti-windup & reset/Anti-windup'
 * '<S301>' : 'mcb_pmsm_foc_test_f28379d/Speed Control/POS_Loop/Discrete PI Controller  with anti-windup & reset/D Gain'
 * '<S302>' : 'mcb_pmsm_foc_test_f28379d/Speed Control/POS_Loop/Discrete PI Controller  with anti-windup & reset/Filter'
 * '<S303>' : 'mcb_pmsm_foc_test_f28379d/Speed Control/POS_Loop/Discrete PI Controller  with anti-windup & reset/Filter ICs'
 * '<S304>' : 'mcb_pmsm_foc_test_f28379d/Speed Control/POS_Loop/Discrete PI Controller  with anti-windup & reset/I Gain'
 * '<S305>' : 'mcb_pmsm_foc_test_f28379d/Speed Control/POS_Loop/Discrete PI Controller  with anti-windup & reset/Ideal P Gain'
 * '<S306>' : 'mcb_pmsm_foc_test_f28379d/Speed Control/POS_Loop/Discrete PI Controller  with anti-windup & reset/Ideal P Gain Fdbk'
 * '<S307>' : 'mcb_pmsm_foc_test_f28379d/Speed Control/POS_Loop/Discrete PI Controller  with anti-windup & reset/Integrator'
 * '<S308>' : 'mcb_pmsm_foc_test_f28379d/Speed Control/POS_Loop/Discrete PI Controller  with anti-windup & reset/Integrator ICs'
 * '<S309>' : 'mcb_pmsm_foc_test_f28379d/Speed Control/POS_Loop/Discrete PI Controller  with anti-windup & reset/N Copy'
 * '<S310>' : 'mcb_pmsm_foc_test_f28379d/Speed Control/POS_Loop/Discrete PI Controller  with anti-windup & reset/N Gain'
 * '<S311>' : 'mcb_pmsm_foc_test_f28379d/Speed Control/POS_Loop/Discrete PI Controller  with anti-windup & reset/P Copy'
 * '<S312>' : 'mcb_pmsm_foc_test_f28379d/Speed Control/POS_Loop/Discrete PI Controller  with anti-windup & reset/Parallel P Gain'
 * '<S313>' : 'mcb_pmsm_foc_test_f28379d/Speed Control/POS_Loop/Discrete PI Controller  with anti-windup & reset/Reset Signal'
 * '<S314>' : 'mcb_pmsm_foc_test_f28379d/Speed Control/POS_Loop/Discrete PI Controller  with anti-windup & reset/Saturation'
 * '<S315>' : 'mcb_pmsm_foc_test_f28379d/Speed Control/POS_Loop/Discrete PI Controller  with anti-windup & reset/Saturation Fdbk'
 * '<S316>' : 'mcb_pmsm_foc_test_f28379d/Speed Control/POS_Loop/Discrete PI Controller  with anti-windup & reset/Sum'
 * '<S317>' : 'mcb_pmsm_foc_test_f28379d/Speed Control/POS_Loop/Discrete PI Controller  with anti-windup & reset/Sum Fdbk'
 * '<S318>' : 'mcb_pmsm_foc_test_f28379d/Speed Control/POS_Loop/Discrete PI Controller  with anti-windup & reset/Tracking Mode'
 * '<S319>' : 'mcb_pmsm_foc_test_f28379d/Speed Control/POS_Loop/Discrete PI Controller  with anti-windup & reset/Tracking Mode Sum'
 * '<S320>' : 'mcb_pmsm_foc_test_f28379d/Speed Control/POS_Loop/Discrete PI Controller  with anti-windup & reset/Tsamp - Integral'
 * '<S321>' : 'mcb_pmsm_foc_test_f28379d/Speed Control/POS_Loop/Discrete PI Controller  with anti-windup & reset/Tsamp - Ngain'
 * '<S322>' : 'mcb_pmsm_foc_test_f28379d/Speed Control/POS_Loop/Discrete PI Controller  with anti-windup & reset/postSat Signal'
 * '<S323>' : 'mcb_pmsm_foc_test_f28379d/Speed Control/POS_Loop/Discrete PI Controller  with anti-windup & reset/preSat Signal'
 * '<S324>' : 'mcb_pmsm_foc_test_f28379d/Speed Control/POS_Loop/Discrete PI Controller  with anti-windup & reset/Anti-windup/Disc. Clamping Parallel'
 * '<S325>' : 'mcb_pmsm_foc_test_f28379d/Speed Control/POS_Loop/Discrete PI Controller  with anti-windup & reset/Anti-windup/Disc. Clamping Parallel/Dead Zone'
 * '<S326>' : 'mcb_pmsm_foc_test_f28379d/Speed Control/POS_Loop/Discrete PI Controller  with anti-windup & reset/Anti-windup/Disc. Clamping Parallel/Dead Zone/Enabled'
 * '<S327>' : 'mcb_pmsm_foc_test_f28379d/Speed Control/POS_Loop/Discrete PI Controller  with anti-windup & reset/D Gain/Disabled'
 * '<S328>' : 'mcb_pmsm_foc_test_f28379d/Speed Control/POS_Loop/Discrete PI Controller  with anti-windup & reset/Filter/Disabled'
 * '<S329>' : 'mcb_pmsm_foc_test_f28379d/Speed Control/POS_Loop/Discrete PI Controller  with anti-windup & reset/Filter ICs/Disabled'
 * '<S330>' : 'mcb_pmsm_foc_test_f28379d/Speed Control/POS_Loop/Discrete PI Controller  with anti-windup & reset/I Gain/External Parameters'
 * '<S331>' : 'mcb_pmsm_foc_test_f28379d/Speed Control/POS_Loop/Discrete PI Controller  with anti-windup & reset/Ideal P Gain/Passthrough'
 * '<S332>' : 'mcb_pmsm_foc_test_f28379d/Speed Control/POS_Loop/Discrete PI Controller  with anti-windup & reset/Ideal P Gain Fdbk/Disabled'
 * '<S333>' : 'mcb_pmsm_foc_test_f28379d/Speed Control/POS_Loop/Discrete PI Controller  with anti-windup & reset/Integrator/Discrete'
 * '<S334>' : 'mcb_pmsm_foc_test_f28379d/Speed Control/POS_Loop/Discrete PI Controller  with anti-windup & reset/Integrator ICs/External IC'
 * '<S335>' : 'mcb_pmsm_foc_test_f28379d/Speed Control/POS_Loop/Discrete PI Controller  with anti-windup & reset/N Copy/Disabled wSignal Specification'
 * '<S336>' : 'mcb_pmsm_foc_test_f28379d/Speed Control/POS_Loop/Discrete PI Controller  with anti-windup & reset/N Gain/Disabled'
 * '<S337>' : 'mcb_pmsm_foc_test_f28379d/Speed Control/POS_Loop/Discrete PI Controller  with anti-windup & reset/P Copy/Disabled'
 * '<S338>' : 'mcb_pmsm_foc_test_f28379d/Speed Control/POS_Loop/Discrete PI Controller  with anti-windup & reset/Parallel P Gain/External Parameters'
 * '<S339>' : 'mcb_pmsm_foc_test_f28379d/Speed Control/POS_Loop/Discrete PI Controller  with anti-windup & reset/Reset Signal/External Reset'
 * '<S340>' : 'mcb_pmsm_foc_test_f28379d/Speed Control/POS_Loop/Discrete PI Controller  with anti-windup & reset/Saturation/Enabled'
 * '<S341>' : 'mcb_pmsm_foc_test_f28379d/Speed Control/POS_Loop/Discrete PI Controller  with anti-windup & reset/Saturation Fdbk/Disabled'
 * '<S342>' : 'mcb_pmsm_foc_test_f28379d/Speed Control/POS_Loop/Discrete PI Controller  with anti-windup & reset/Sum/Sum_PI'
 * '<S343>' : 'mcb_pmsm_foc_test_f28379d/Speed Control/POS_Loop/Discrete PI Controller  with anti-windup & reset/Sum Fdbk/Disabled'
 * '<S344>' : 'mcb_pmsm_foc_test_f28379d/Speed Control/POS_Loop/Discrete PI Controller  with anti-windup & reset/Tracking Mode/Disabled'
 * '<S345>' : 'mcb_pmsm_foc_test_f28379d/Speed Control/POS_Loop/Discrete PI Controller  with anti-windup & reset/Tracking Mode Sum/Passthrough'
 * '<S346>' : 'mcb_pmsm_foc_test_f28379d/Speed Control/POS_Loop/Discrete PI Controller  with anti-windup & reset/Tsamp - Integral/TsSignalSpecification'
 * '<S347>' : 'mcb_pmsm_foc_test_f28379d/Speed Control/POS_Loop/Discrete PI Controller  with anti-windup & reset/Tsamp - Ngain/Passthrough'
 * '<S348>' : 'mcb_pmsm_foc_test_f28379d/Speed Control/POS_Loop/Discrete PI Controller  with anti-windup & reset/postSat Signal/Forward_Path'
 * '<S349>' : 'mcb_pmsm_foc_test_f28379d/Speed Control/POS_Loop/Discrete PI Controller  with anti-windup & reset/preSat Signal/Forward_Path'
 */
#endif                             /* RTW_HEADER_mcb_pmsm_foc_test_f28379d_h_ */

/*
 * File trailer for generated code.
 *
 * [EOF]
 */
