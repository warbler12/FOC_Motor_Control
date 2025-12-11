/*
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * File: mcb_pmsm_foc_I2C_f28379d_origin.h
 *
 * Code generated for Simulink model 'mcb_pmsm_foc_I2C_f28379d_origin'.
 *
 * Model version                  : 7.10
 * Simulink Coder version         : 23.2 (R2023b) 01-Aug-2023
 * C/C++ source code generated on : Tue Dec  9 21:42:48 2025
 *
 * Target selection: ert.tlc
 * Embedded hardware selection: Texas Instruments->C2000
 * Code generation objectives: Unspecified
 * Validation result: Not run
 */

#ifndef RTW_HEADER_mcb_pmsm_foc_I2C_f28379d_origin_h_
#define RTW_HEADER_mcb_pmsm_foc_I2C_f28379d_origin_h_
#ifndef mcb_pmsm_foc_I2C_f28379d_origin_COMMON_INCLUDES_
#define mcb_pmsm_foc_I2C_f28379d_origin_COMMON_INCLUDES_
#include <math.h>
#include <string.h>
#include "rtwtypes.h"
#include "c2000BoardSupport.h"
#include "MW_f2837xD_includes.h"
#include "string.h"
#include "can_message.h"
#include "F2837xD_device.h"
#include "DSP28xx_SciUtil.h"
#include "IQmathLib.h"
#include "MW_SPI.h"
#endif                    /* mcb_pmsm_foc_I2C_f28379d_origin_COMMON_INCLUDES_ */

#include "MW_c2000ISR.h"
#include "mcb_pmsm_foc_I2C_f28379d_origin_types.h"
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

#define mcb_pmsm_foc_I2C_f28379d_origin_M (mcb_pmsm_foc_I2C_f28379d_ori_M)

extern void init_eCAN_B ( uint16_T bitRatePrescaler, uint16_T timeSeg1, uint16_T
  timeSeg2, uint16_T sbg, uint16_T sjw, uint16_T sam);
extern void init_SCI(void);
extern void init_SCI_GPIO(void);
extern void config_ePWMSyncSource(void);
extern void config_ePWM_GPIO (void);
extern void config_ePWM_TBSync (void);
extern void config_ePWM_XBAR(void);
extern void init_I2C_GPIO(void);
extern void init_I2C_A(void);
void CANB0_ClearFlag();
void CANB1_ClearFlag();

/* user code (top of export header file) */
#include "can_message.h"

/* Block signals for system '<S159>/If Action Subsystem' */
typedef struct {
  real32_T Convert_back;               /* '<S161>/Convert_back' */
  int16_T Convert_uint16;              /* '<S161>/Convert_uint16' */
} B_IfActionSubsystem_mcb_pmsm__T;

/* Block signals for system '<S159>/If Action Subsystem1' */
typedef struct {
  real32_T Convert_back;               /* '<S162>/Convert_back' */
  int16_T Convert_uint16;              /* '<S162>/Convert_uint16' */
} B_IfActionSubsystem1_mcb_pmsm_T;

/* Block signals for system '<S235>/SPI Master Transfer' */
typedef struct {
  uint16_T SPIMasterTransfer;          /* '<S235>/SPI Master Transfer' */
} B_SPIMasterTransfer_mcb_pmsm__T;

/* Block states (default storage) for system '<S235>/SPI Master Transfer' */
typedef struct {
  codertarget_tic2000_blocks_SP_T obj; /* '<S235>/SPI Master Transfer' */
  boolean_T objisempty;                /* '<S235>/SPI Master Transfer' */
} DW_SPIMasterTransfer_mcb_pmsm_T;

/* Block signals for system '<Root>/Speed Control' */
typedef struct {
  real32_T Id_ref;                     /* '<S10>/Id_ref' */
  real32_T Switch;                     /* '<S246>/Switch' */
  real32_T Product;                    /* '<S301>/Product' */
  real32_T UnitDelay;                  /* '<S301>/Unit Delay' */
  real32_T Product1;                   /* '<S301>/Product1' */
  real32_T Add1;                       /* '<S301>/Add1' */
  real32_T Sum;                        /* '<S245>/Sum' */
  real32_T PProdOut;                   /* '<S287>/PProd Out' */
  real32_T Ki2;                        /* '<S245>/Ki2' */
  real32_T Integrator;                 /* '<S282>/Integrator' */
  real32_T Sum_c;                      /* '<S291>/Sum' */
  real32_T DeadZone;                   /* '<S275>/DeadZone' */
  real32_T IProdOut;                   /* '<S279>/IProd Out' */
  real32_T Switch_d;                   /* '<S273>/Switch' */
  real32_T Saturation;                 /* '<S289>/Saturation' */
  int16_T Switch1;                     /* '<S273>/Switch1' */
  int16_T Switch2;                     /* '<S273>/Switch2' */
  boolean_T DataStoreRead1;            /* '<S245>/Data Store Read1' */
  boolean_T DataStoreRead1_k;          /* '<S246>/Data Store Read1' */
  boolean_T LogicalOperator;           /* '<S245>/Logical Operator' */
  boolean_T RelationalOperator;        /* '<S273>/Relational Operator' */
  boolean_T fixforDTpropagationissue;/* '<S273>/fix for DT propagation issue' */
  boolean_T fixforDTpropagationissue1;
                                    /* '<S273>/fix for DT propagation issue1' */
  boolean_T Equal1;                    /* '<S273>/Equal1' */
  boolean_T AND3;                      /* '<S273>/AND3' */
} B_SpeedControl_mcb_pmsm_foc_I_T;

/* Block states (default storage) for system '<Root>/Speed Control' */
typedef struct {
  real32_T UnitDelay_DSTATE;           /* '<S301>/Unit Delay' */
  real32_T Integrator_DSTATE;          /* '<S282>/Integrator' */
  int16_T Integrator_PrevResetState;   /* '<S282>/Integrator' */
} DW_SpeedControl_mcb_pmsm_foc__T;

/* Block signals (default storage) */
typedef struct {
  CAN_DATATYPE CANReceive_o2;          /* '<S2>/CAN Receive' */
  CAN_DATATYPE CANPack;                /* '<S20>/CAN Pack' */
  real_T RT12;                         /* '<Root>/RT12' */
  real_T Constant;                     /* '<Root>/Constant' */
  real_T CANUnpack_o1;                 /* '<S17>/CAN Unpack' */
  real_T CANUnpack_o2;                 /* '<S17>/CAN Unpack' */
  real_T Gain;                         /* '<S17>/Gain' */
  real_T Gain2;                        /* '<S17>/Gain2' */
  uint32_T PositionToCount;            /* '<S185>/PositionToCount' */
  uint32_T Delay;                      /* '<S185>/Delay' */
  uint32_T Sum[4];                     /* '<S166>/Sum' */
  uint32_T BytePack[2];                /* '<S210>/Byte Pack' */
  uint32_T SCI_Tx_Data[3];             /* '<S208>/Merge' */
  uint32_T SCI_Tx_Iteration;           /* '<S208>/Merge1' */
  uint32_T Sum_h[4];                   /* '<S156>/Sum' */
  uint32_T IndexVector;                /* '<S209>/Index Vector' */
  uint32_T Add;                        /* '<S209>/Add' */
  uint32_T Data[2];                    /* '<S212>/Data' */
  uint32_T Data_f[2];                  /* '<S213>/Data' */
  uint32_T Data_fw[2];                 /* '<S214>/Data' */
  real32_T RT1;                        /* '<Root>/RT1' */
  real32_T RT13;                       /* '<Root>/RT13' */
  real32_T RT3;                        /* '<Root>/RT3' */
  real32_T RT7;                        /* '<Root>/RT7' */
  real32_T CastToSingle1;              /* '<S12>/Cast To Single1' */
  real32_T Gain_f;                     /* '<S12>/Gain' */
  real32_T RT8;                        /* '<Root>/RT8' */
  real32_T RT9;                        /* '<Root>/RT9' */
  real32_T RT10[2];                    /* '<Root>/RT10' */
  real32_T RT11[2];                    /* '<Root>/RT11' */
  real32_T RT2[2];                     /* '<Root>/RT2' */
  real32_T RT4;                        /* '<Root>/RT4' */
  real32_T SCIReceive[2];              /* '<S244>/SCI Receive' */
  real32_T DataStoreRead2;             /* '<S4>/Data Store Read2' */
  real32_T Unwrap;                     /* '<S181>/Unwrap' */
  real32_T DTC;                        /* '<S201>/DTC' */
  real32_T SpeedGain;                  /* '<S185>/SpeedGain' */
  real32_T Product;                    /* '<S191>/Product' */
  real32_T UnitDelay;                  /* '<S191>/Unit Delay' */
  real32_T Product1;                   /* '<S191>/Product1' */
  real32_T Add1;                       /* '<S191>/Add1' */
  real32_T GetADCVoltage[2];           /* '<S203>/Get ADC Voltage' */
  real32_T GetCurrents[2];             /* '<S203>/Get Currents' */
  real32_T PU_Conversion[2];           /* '<S203>/PU_Conversion' */
  real32_T Switch;                     /* '<S193>/Switch' */
  real32_T Merge;                      /* '<S194>/Merge' */
  real32_T Numberofpolepairs;          /* '<S199>/Number of pole pairs' */
  real32_T Floor;                      /* '<S195>/Floor' */
  real32_T Add_c;                      /* '<S195>/Add' */
  real32_T Merge_o;                    /* '<S168>/Merge' */
  real32_T indexing;                   /* '<S166>/indexing' */
  real32_T Lookup[4];                  /* '<S166>/Lookup' */
  real32_T Sum3;                       /* '<S167>/Sum3' */
  real32_T DataTypeConversion1;        /* '<S166>/Data Type Conversion1' */
  real32_T Sum2;                       /* '<S166>/Sum2' */
  real32_T Product_i;                  /* '<S167>/Product' */
  real32_T Sum4;                       /* '<S167>/Sum4' */
  real32_T Sum5;                       /* '<S167>/Sum5' */
  real32_T Product1_b;                 /* '<S167>/Product1' */
  real32_T Sum6;                       /* '<S167>/Sum6' */
  real32_T DataStoreRead1;             /* '<S4>/Data Store Read1' */
  real32_T TmpSignalConversionAtSelectorIn[11];
  real32_T Selector[2];                /* '<S23>/Selector' */
  real32_T Sum_o;                      /* '<S39>/Sum' */
  real32_T PProdOut;                   /* '<S144>/PProd Out' */
  real32_T Kp1;                        /* '<S39>/Kp1' */
  real32_T Integrator;                 /* '<S139>/Integrator' */
  real32_T Sum_m;                      /* '<S148>/Sum' */
  real32_T Saturation;                 /* '<S146>/Saturation' */
  real32_T Sum_j;                      /* '<S38>/Sum' */
  real32_T PProdOut_g;                 /* '<S93>/PProd Out' */
  real32_T Ki1;                        /* '<S38>/Ki1' */
  real32_T Integrator_f;               /* '<S88>/Integrator' */
  real32_T Sum_g;                      /* '<S97>/Sum' */
  real32_T Saturation_f;               /* '<S95>/Saturation' */
  real32_T Switch_n;                   /* '<S42>/Switch' */
  real32_T Product_j;                  /* '<S42>/Product' */
  real32_T Product_f;                  /* '<S43>/Product' */
  real32_T Product1_g;                 /* '<S43>/Product1' */
  real32_T Sum1;                       /* '<S43>/Sum1' */
  real32_T Merge_i[2];                 /* '<S37>/Merge' */
  real32_T DeadZone;                   /* '<S81>/DeadZone' */
  real32_T IProdOut;                   /* '<S85>/IProd Out' */
  real32_T Switch_f;                   /* '<S79>/Switch' */
  real32_T DeadZone_a;                 /* '<S132>/DeadZone' */
  real32_T IProdOut_b;                 /* '<S136>/IProd Out' */
  real32_T Switch_a;                   /* '<S130>/Switch' */
  real32_T Merge_a;                    /* '<S159>/Merge' */
  real32_T indexing_d;                 /* '<S156>/indexing' */
  real32_T DataTypeConversion1_n;      /* '<S156>/Data Type Conversion1' */
  real32_T Lookup_p[4];                /* '<S156>/Lookup' */
  real32_T Sum3_j;                     /* '<S158>/Sum3' */
  real32_T Sum2_p;                     /* '<S156>/Sum2' */
  real32_T Product_d;                  /* '<S158>/Product' */
  real32_T Sum5_l;                     /* '<S158>/Sum5' */
  real32_T Product1_d;                 /* '<S158>/Product1' */
  real32_T Sum4_h;                     /* '<S158>/Sum4' */
  real32_T Sum6_h;                     /* '<S158>/Sum6' */
  real32_T Delay_c;                    /* '<S181>/Delay' */
  real32_T Sum_a;                      /* '<S181>/Sum' */
  real32_T Merge_c;                    /* '<S181>/Merge' */
  real32_T DataTypeConversion;         /* '<S27>/Data Type Conversion' */
  real32_T Switch_g;                   /* '<S204>/Switch' */
  real32_T OutportBufferForVdq_ref[2]; /* '<S4>/Control_System' */
  real32_T sqrt3_by_two;               /* '<S179>/sqrt3_by_two' */
  real32_T one_by_two;                 /* '<S179>/one_by_two' */
  real32_T add_c;                      /* '<S179>/add_c' */
  real32_T add_b;                      /* '<S179>/add_b' */
  real32_T Min;                        /* '<S176>/Min' */
  real32_T Max;                        /* '<S176>/Max' */
  real32_T Add_n;                      /* '<S176>/Add' */
  real32_T one_by_two_l;               /* '<S176>/one_by_two' */
  real32_T Add3;                       /* '<S175>/Add3' */
  real32_T Add2;                       /* '<S175>/Add2' */
  real32_T Add1_d;                     /* '<S175>/Add1' */
  real32_T Gain_a[3];                  /* '<S175>/Gain' */
  real32_T One_by_Two[3];              /* '<S27>/One_by_Two' */
  real32_T PWM_Duty_Cycles[3];         /* '<S27>/Sum' */
  real32_T acos_b;                     /* '<S165>/acos' */
  real32_T bsin;                       /* '<S165>/bsin' */
  real32_T sum_Ds;                     /* '<S165>/sum_Ds' */
  real32_T bcos;                       /* '<S165>/bcos' */
  real32_T asin_o;                     /* '<S165>/asin' */
  real32_T sum_Qs;                     /* '<S165>/sum_Qs' */
  real32_T Switch_h[2];                /* '<S172>/Switch' */
  real32_T algDD_o1;
  real32_T algDD_o2;
  real32_T qcos;                       /* '<S157>/qcos' */
  real32_T dsin;                       /* '<S157>/dsin' */
  real32_T sum_beta;                   /* '<S157>/sum_beta' */
  real32_T dcos;                       /* '<S157>/dcos' */
  real32_T qsin;                       /* '<S157>/qsin' */
  real32_T sum_alpha;                  /* '<S157>/sum_alpha' */
  real32_T Switch_b[2];                /* '<S163>/Switch' */
  real32_T algDD_o1_p;
  real32_T algDD_o2_o;
  real32_T Product_o[2];               /* '<S44>/Product' */
  real32_T SquareRoot;                 /* '<S44>/Square Root' */
  real32_T Switch_as;                  /* '<S44>/Switch' */
  real32_T Reciprocal;                 /* '<S44>/Reciprocal' */
  real32_T Switch_j[2];                /* '<S41>/Switch' */
  real32_T Switch2;                    /* '<S51>/Switch2' */
  real32_T Product_b;                  /* '<S50>/Product' */
  real32_T Sum_jr;                     /* '<S50>/Sum' */
  real32_T Product2;                   /* '<S50>/Product2' */
  real32_T Merge_d;                    /* '<S50>/Merge' */
  real32_T Gain_b;                     /* '<S50>/Gain' */
  real32_T Switch_m;                   /* '<S51>/Switch' */
  real32_T Switch1;                    /* '<S52>/Switch1' */
  real32_T Sqrt;                       /* '<S52>/Sqrt' */
  real32_T Gain_l;                     /* '<S52>/Gain' */
  real32_T a_plus_2b;                  /* '<S36>/a_plus_2b' */
  real32_T one_by_sqrt3;               /* '<S36>/one_by_sqrt3' */
  real32_T algDD_o1_e;
  real32_T algDD_o2_h;
  real32_T Gain_p;                     /* '<S21>/Gain' */
  real32_T Gain_po;                    /* '<S3>/Gain' */
  real32_T Gain1;                      /* '<S3>/Gain1' */
  real32_T Gain2_b;                    /* '<S3>/Gain2' */
  real32_T Gain3;                      /* '<S3>/Gain3' */
  real32_T Gain2_g;                    /* '<S21>/Gain2' */
  real32_T T;                          /* '<S21>/T' */
  real32_T Loss;                       /* '<S21>/Loss' */
  real32_T Gain3_m;                    /* '<S21>/Gain3' */
  real32_T Bias1;                      /* '<S21>/Bias1' */
  real32_T Gain1_f;                    /* '<S21>/Gain1' */
  real32_T Bias;                       /* '<S21>/Bias' */
  real32_T CastToSingle;               /* '<S17>/Cast To Single' */
  real32_T CastToSingle1_m;            /* '<S17>/Cast To Single1' */
  real32_T UnitDelay_l;                /* '<S18>/Unit Delay' */
  real32_T UnitDelay1;                 /* '<S18>/Unit Delay1' */
  int32_T SpeedCount;                  /* '<S185>/SpeedCount' */
  int32_T DataTypeConversion_c[2];     /* '<S182>/Data Type Conversion' */
  int32_T Add_e[2];                    /* '<S182>/Add' */
  uint16_T Switch_c;                   /* '<S227>/Switch' */
  uint16_T Divide;                     /* '<S226>/Divide' */
  uint16_T Divide1;                    /* '<S226>/Divide1' */
  uint16_T ForIterator;                /* '<S229>/For Iterator' */
  uint16_T ADC_A_IN0;                  /* '<S229>/ADC_A_IN0' */
  uint16_T ADC_B_IN0;                  /* '<S229>/ADC_B_IN0' */
  uint16_T Memory;                     /* '<S234>/Memory' */
  uint16_T Sum_hk;                     /* '<S234>/Sum' */
  uint16_T Memory1;                    /* '<S234>/Memory1' */
  uint16_T Sum1_j;                     /* '<S234>/Sum1' */
  uint16_T DataTypeConversion2;        /* '<S242>/Data Type Conversion2' */
  uint16_T BitwiseOperator;            /* '<S241>/Bitwise Operator' */
  uint16_T BitwiseOperator1;           /* '<S241>/Bitwise Operator1' */
  uint16_T ShiftArithmetic1;           /* '<S241>/Shift Arithmetic1' */
  uint16_T BitwiseOperator2;           /* '<S241>/Bitwise Operator2' */
  uint16_T ShiftArithmetic2;           /* '<S241>/Shift Arithmetic2' */
  uint16_T Output;                     /* '<S211>/Output' */
  uint16_T DataStoreRead1_o;           /* '<S182>/Data Store Read1' */
  uint16_T DataStoreRead2_j;           /* '<S182>/Data Store Read2' */
  uint16_T ADC_C_IN2;                  /* '<S180>/ADC_C_IN2' */
  uint16_T ADC_B_IN2;                  /* '<S180>/ADC_B_IN2' */
  uint16_T DataTypeConversion_i;       /* '<S168>/Data Type Conversion' */
  uint16_T Get_Integer;                /* '<S166>/Get_Integer' */
  uint16_T DataStoreRead;              /* '<S23>/Data Store Read' */
  uint16_T MultiportSwitch[2];         /* '<S23>/Multiport Switch' */
  uint16_T FixPtSum1;                  /* '<S215>/FixPt Sum1' */
  uint16_T FixPtSwitch;                /* '<S216>/FixPt Switch' */
  uint16_T Switch1_j;                  /* '<S42>/Switch1' */
  uint16_T DataTypeConversion_h;       /* '<S159>/Data Type Conversion' */
  uint16_T Get_Integer_j;              /* '<S156>/Get_Integer' */
  uint16_T Switch1_jv[3];              /* '<S204>/Switch1' */
  uint16_T Scale_to_PWM_Counter_PRD[3];/* '<S204>/Scale_to_PWM_Counter_PRD' */
  uint16_T DataTypeConversion_f;       /* '<S40>/Data Type Conversion' */
  uint16_T DataTypeConversion_fl;      /* '<S50>/Data Type Conversion' */
  uint16_T DataTypeConversion1_l;      /* '<S20>/Data Type Conversion1' */
  uint16_T DataTypeConversion2_m;      /* '<S21>/Data Type Conversion2' */
  uint16_T DataTypeConversion4;        /* '<S21>/Data Type Conversion4' */
  uint16_T DataTypeConversion3;        /* '<S21>/Data Type Conversion3' */
  uint16_T I2CTransmit1;               /* '<S15>/I2C Transmit1' */
  uint16_T raw_angle;                  /* '<S12>/MATLAB Function' */
  uint16_T I2CReceive_o2;              /* '<S11>/I2C Receive' */
  uint16_T I2CTransmit;                /* '<S11>/I2C Transmit' */
  int16_T WhileIterator;               /* '<S209>/While Iterator' */
  uint16_T I2CReceive_o1[2];           /* '<S11>/I2C Receive' */
  int16_T Switch1_h;                   /* '<S79>/Switch1' */
  int16_T Switch2_l;                   /* '<S79>/Switch2' */
  int16_T Switch1_l;                   /* '<S130>/Switch1' */
  int16_T Switch2_c;                   /* '<S130>/Switch2' */
  boolean_T DataStoreRead_g;           /* '<S1>/Data Store Read' */
  boolean_T RT4_h;                     /* '<S1>/RT4' */
  boolean_T UnitDelay_l4;              /* '<S1>/Unit Delay' */
  boolean_T LogicalOperator2;          /* '<S1>/Logical Operator2' */
  boolean_T NOT;                       /* '<S225>/NOT' */
  boolean_T DataTypeConversion3_f;     /* '<S241>/Data Type Conversion3' */
  boolean_T Compare;                   /* '<S169>/Compare' */
  boolean_T DataStoreRead1_b;          /* '<S39>/Data Store Read1' */
  boolean_T LogicalOperator;           /* '<S39>/Logical Operator' */
  boolean_T DataStoreRead1_m;          /* '<S38>/Data Store Read1' */
  boolean_T LogicalOperator_a;         /* '<S38>/Logical Operator' */
  boolean_T RelationalOperator;        /* '<S79>/Relational Operator' */
  boolean_T fixforDTpropagationissue; /* '<S79>/fix for DT propagation issue' */
  boolean_T fixforDTpropagationissue1;
                                     /* '<S79>/fix for DT propagation issue1' */
  boolean_T Equal1;                    /* '<S79>/Equal1' */
  boolean_T AND3;                      /* '<S79>/AND3' */
  boolean_T RelationalOperator_e;      /* '<S130>/Relational Operator' */
  boolean_T fixforDTpropagationissue_j;
                                     /* '<S130>/fix for DT propagation issue' */
  boolean_T fixforDTpropagationissue1_o;
                                    /* '<S130>/fix for DT propagation issue1' */
  boolean_T Equal1_i;                  /* '<S130>/Equal1' */
  boolean_T AND3_n;                    /* '<S130>/AND3' */
  boolean_T Compare_f;                 /* '<S160>/Compare' */
  boolean_T PWM_En;                    /* '<S27>/Enable' */
  boolean_T RelationalOperator_k;      /* '<S40>/Relational Operator' */
  boolean_T Compare_k;                 /* '<S46>/Compare' */
  boolean_T Compare_f0;                /* '<S47>/Compare' */
  boolean_T LowerRelop1;               /* '<S51>/LowerRelop1' */
  boolean_T RelationalOperator_l;      /* '<S50>/Relational Operator' */
  boolean_T UpperRelop;                /* '<S51>/UpperRelop' */
  boolean_T DataStoreRead1_a;          /* '<S20>/Data Store Read1' */
  boolean_T RelationalOperator_b;      /* '<S18>/Relational Operator' */
  boolean_T RelationalOperator1;       /* '<S18>/Relational Operator1' */
  boolean_T LogicalOperator_g;         /* '<S18>/Logical Operator' */
  B_SpeedControl_mcb_pmsm_foc_I_T SpeedControl;/* '<Root>/Speed Control' */
  B_SPIMasterTransfer_mcb_pmsm__T SPIMasterTransfer1;/* '<S235>/SPI Master Transfer' */
  B_SPIMasterTransfer_mcb_pmsm__T SPIMasterTransfer;/* '<S235>/SPI Master Transfer' */
  B_IfActionSubsystem1_mcb_pmsm_T IfActionSubsystem1_k;/* '<S168>/If Action Subsystem1' */
  B_IfActionSubsystem_mcb_pmsm__T IfActionSubsystem_e;/* '<S168>/If Action Subsystem' */
  B_IfActionSubsystem1_mcb_pmsm_T IfActionSubsystem1;/* '<S159>/If Action Subsystem1' */
  B_IfActionSubsystem_mcb_pmsm__T IfActionSubsystem;/* '<S159>/If Action Subsystem' */
} B_mcb_pmsm_foc_I2C_f28379d_or_T;

/* Block states (default storage) for system '<Root>' */
typedef struct {
  volatile real_T RT12_Buffer[2];      /* '<Root>/RT12' */
  real32_T UnitDelay_DSTATE;           /* '<S191>/Unit Delay' */
  real32_T Integrator_DSTATE;          /* '<S139>/Integrator' */
  real32_T Integrator_DSTATE_o;        /* '<S88>/Integrator' */
  real32_T Delay_DSTATE;               /* '<S181>/Delay' */
  real32_T UnitDelay_DSTATE_l;         /* '<S18>/Unit Delay' */
  real32_T UnitDelay1_DSTATE;          /* '<S18>/Unit Delay1' */
  uint32_T Delay_DSTATE_p[20];         /* '<S185>/Delay' */
  volatile real32_T RT1_Buffer[2];     /* '<Root>/RT1' */
  volatile real32_T RT3_Buffer[2];     /* '<Root>/RT3' */
  volatile real32_T RT2_Buffer[4];     /* '<Root>/RT2' */
  volatile real32_T RT4_Buffer[2];     /* '<Root>/RT4' */
  volatile real32_T RT8_Buffer0;       /* '<Root>/RT8' */
  volatile real32_T RT9_Buffer0;       /* '<Root>/RT9' */
  real32_T SpeedRef;                   /* '<Root>/Data Store Memory4' */
  real32_T PosRef;                     /* '<Root>/Data Store Memory5' */
  volatile real32_T RT10_Buffer[4];    /* '<Root>/RT10' */
  volatile real32_T RT11_Buffer[4];    /* '<Root>/RT11' */
  real32_T Unwrap_Prev;                /* '<S181>/Unwrap' */
  real32_T Unwrap_Cumsum;              /* '<S181>/Unwrap' */
  int32_T DigitalOutput_FRAC_LEN;      /* '<S237>/Digital Output' */
  int32_T DigitalOutput_FRAC_LEN_e;    /* '<S227>/Digital Output' */
  int32_T DigitalOutput1_FRAC_LEN;     /* '<S227>/Digital Output1' */
  int32_T SpeedCount_DWORK1;           /* '<S185>/SpeedCount' */
  int32_T Add_DWORK1[2];               /* '<S182>/Add' */
  int32_T DRV830xEnable_FRAC_LEN;      /* '<S204>/DRV830x Enable' */
  uint32_T Sum_DWORK1[4];              /* '<S166>/Sum' */
  uint32_T Add_DWORK1_n;               /* '<S209>/Add' */
  int_T CANPack_ModeSignalID;          /* '<S20>/CAN Pack' */
  int_T CANUnpack_ModeSignalID;        /* '<S17>/CAN Unpack' */
  int_T CANUnpack_StatusPortID;        /* '<S17>/CAN Unpack' */
  uint16_T Output_DSTATE;              /* '<S211>/Output' */
  volatile int16_T RT1_ActiveBufIdx;   /* '<Root>/RT1' */
  volatile int16_T RT1_semaphoreTaken; /* '<Root>/RT1' */
  volatile int16_T RT3_ActiveBufIdx;   /* '<Root>/RT3' */
  volatile int16_T RT2_ActiveBufIdx;   /* '<Root>/RT2' */
  volatile int16_T RT4_ActiveBufIdx;   /* '<Root>/RT4' */
  volatile int16_T RT8_semaphoreTaken; /* '<Root>/RT8' */
  volatile int16_T RT9_semaphoreTaken; /* '<Root>/RT9' */
  volatile int16_T RT10_ActiveBufIdx;  /* '<Root>/RT10' */
  volatile int16_T RT10_semaphoreTaken;/* '<Root>/RT10' */
  volatile int16_T RT11_ActiveBufIdx;  /* '<Root>/RT11' */
  volatile int16_T RT11_semaphoreTaken;/* '<Root>/RT11' */
  volatile int16_T RT12_ActiveBufIdx;  /* '<Root>/RT12' */
  uint16_T IaOffset;                   /* '<Root>/Data Store Memory1' */
  uint16_T IbOffset;                   /* '<Root>/Data Store Memory2' */
  uint16_T Debug_signals;              /* '<Root>/Data Store Memory6' */
  uint16_T Control_Mode;               /* '<Root>/Data Store Memory7' */
  uint16_T CircBufIdx;                 /* '<S185>/Delay' */
  boolean_T UnitDelay_DSTATE_f;        /* '<S1>/Unit Delay' */
  int16_T Integrator_PrevResetState;   /* '<S139>/Integrator' */
  int16_T Integrator_PrevResetState_k; /* '<S88>/Integrator' */
  boolean_T Enable;                    /* '<Root>/Data Store Memory29' */
  boolean_T Enable_I2C;                /* '<Root>/Data Store Memory3' */
  boolean_T ERR;                       /* '<Root>/Data Store Memory8' */
  boolean_T Unwrap_FirstStep;          /* '<S181>/Unwrap' */
  DW_SpeedControl_mcb_pmsm_foc__T SpeedControl;/* '<Root>/Speed Control' */
  DW_SPIMasterTransfer_mcb_pmsm_T SPIMasterTransfer1;/* '<S235>/SPI Master Transfer' */
  DW_SPIMasterTransfer_mcb_pmsm_T SPIMasterTransfer;/* '<S235>/SPI Master Transfer' */
} DW_mcb_pmsm_foc_I2C_f28379d_o_T;

/* Invariant block signals (default storage) */
typedef struct {
  const uint32_T Width;                /* '<S208>/Width' */
  const uint16_T DataTypeConversion;   /* '<S20>/Data Type Conversion' */
  const uint16_T DataTypeConversion5;  /* '<S20>/Data Type Conversion5' */
  const uint16_T DataTypeConversion6;  /* '<S20>/Data Type Conversion6' */
  const boolean_T CastToBoolean;       /* '<S19>/Cast To Boolean' */
} ConstB_mcb_pmsm_foc_I2C_f2837_T;

/* Constant parameters (default storage) */
typedef struct {
  /* Pooled Parameter (Expression: )
   * Referenced by:
   *   '<S156>/sine_table_values'
   *   '<S166>/sine_table_values'
   */
  real32_T pooled11[1002];
} ConstP_mcb_pmsm_foc_I2C_f2837_T;

/* Real-time Model Data Structure */
struct tag_RTM_mcb_pmsm_foc_I2C_f283_T {
  const char_T * volatile errorStatus;

  /*
   * Timing:
   * The following substructure contains information regarding
   * the timing information for the model.
   */
  struct {
    struct {
      uint16_T TID[6];
    } TaskCounters;
  } Timing;
};

extern CAN_DATATYPE CAN_DATATYPE_GROUND;
extern CAN_DATATYPE CAN_DATATYPE_GROUND;
extern CAN_DATATYPE CAN_DATATYPE_GROUND;

/* Block signals (default storage) */
extern B_mcb_pmsm_foc_I2C_f28379d_or_T mcb_pmsm_foc_I2C_f28379d_orig_B;

/* Block states (default storage) */
extern DW_mcb_pmsm_foc_I2C_f28379d_o_T mcb_pmsm_foc_I2C_f28379d_ori_DW;
extern const ConstB_mcb_pmsm_foc_I2C_f2837_T mcb_pmsm_foc_I2C_f28379d_ConstB;/* constant block i/o */

/* Constant parameters (default storage) */
extern const ConstP_mcb_pmsm_foc_I2C_f2837_T mcb_pmsm_foc_I2C_f28379d_ConstP;

/* External function called from main */
extern void mcb_pmsm_foc_I2C_f28379d_origin_SetEventsForThisBaseStep(boolean_T
  *eventFlags);

/* Model entry point functions */
extern void mcb_pmsm_foc_I2C_f28379d_origin_initialize(void);
extern void mcb_pmsm_foc_I2C_f28379d_origin_step0(void);
extern void mcb_pmsm_foc_I2C_f28379d_origin_step1(void);
extern void mcb_pmsm_foc_I2C_f28379d_origin_step2(void);
extern void mcb_pmsm_foc_I2C_f28379d_origin_step3(void);
extern void mcb_pmsm_foc_I2C_f28379d_origin_step4(void);
extern void mcb_pmsm_foc_I2C_f28379d_origin_step5(void);
extern void mcb_pmsm_foc_I2C_f28379d_origin_terminate(void);

/* Real-time Model object */
extern RT_MODEL_mcb_pmsm_foc_I2C_f28_T *const mcb_pmsm_foc_I2C_f28379d_ori_M;
extern volatile boolean_T stopRequested;
extern volatile boolean_T runModel;

#ifdef __cpluscplus

extern "C"
{

#endif

  interrupt void ADCB1_INT(void);
  interrupt void SCIA_RX_INT(void);
  void mcb_pmsm_foc_I2C_f28379d_origin_configure_interrupts (void);
  void mcb_pmsm_foc_I2C_f28379d_origin_unconfigure_interrupts (void);

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
 * '<Root>' : 'mcb_pmsm_foc_I2C_f28379d_origin'
 * '<S1>'   : 'mcb_pmsm_foc_I2C_f28379d_origin/AS5600 Read'
 * '<S2>'   : 'mcb_pmsm_foc_I2C_f28379d_origin/CAN Receive'
 * '<S3>'   : 'mcb_pmsm_foc_I2C_f28379d_origin/CAN_Transmit'
 * '<S4>'   : 'mcb_pmsm_foc_I2C_f28379d_origin/Current Control'
 * '<S5>'   : 'mcb_pmsm_foc_I2C_f28379d_origin/HW Interrupt'
 * '<S6>'   : 'mcb_pmsm_foc_I2C_f28379d_origin/Hardware Init'
 * '<S7>'   : 'mcb_pmsm_foc_I2C_f28379d_origin/Heartbeat LED'
 * '<S8>'   : 'mcb_pmsm_foc_I2C_f28379d_origin/Inverter and Motor - Plant Model'
 * '<S9>'   : 'mcb_pmsm_foc_I2C_f28379d_origin/Serial Receive'
 * '<S10>'  : 'mcb_pmsm_foc_I2C_f28379d_origin/Speed Control'
 * '<S11>'  : 'mcb_pmsm_foc_I2C_f28379d_origin/AS5600 Read/Data Read'
 * '<S12>'  : 'mcb_pmsm_foc_I2C_f28379d_origin/AS5600 Read/Data Realignment '
 * '<S13>'  : 'mcb_pmsm_foc_I2C_f28379d_origin/AS5600 Read/Initialization'
 * '<S14>'  : 'mcb_pmsm_foc_I2C_f28379d_origin/AS5600 Read/Data Realignment /MATLAB Function'
 * '<S15>'  : 'mcb_pmsm_foc_I2C_f28379d_origin/AS5600 Read/Initialization/Address - Data read'
 * '<S16>'  : 'mcb_pmsm_foc_I2C_f28379d_origin/AS5600 Read/Initialization/Delay 1ms'
 * '<S17>'  : 'mcb_pmsm_foc_I2C_f28379d_origin/CAN Receive/Subsystem2'
 * '<S18>'  : 'mcb_pmsm_foc_I2C_f28379d_origin/CAN Receive/Subsystem2/Change_detect'
 * '<S19>'  : 'mcb_pmsm_foc_I2C_f28379d_origin/CAN Receive/Subsystem2/Subsystem'
 * '<S20>'  : 'mcb_pmsm_foc_I2C_f28379d_origin/CAN_Transmit/CAN_Tx'
 * '<S21>'  : 'mcb_pmsm_foc_I2C_f28379d_origin/CAN_Transmit/DataLog'
 * '<S22>'  : 'mcb_pmsm_foc_I2C_f28379d_origin/Current Control/Control_System'
 * '<S23>'  : 'mcb_pmsm_foc_I2C_f28379d_origin/Current Control/Debug_signals'
 * '<S24>'  : 'mcb_pmsm_foc_I2C_f28379d_origin/Current Control/HW_Inputs'
 * '<S25>'  : 'mcb_pmsm_foc_I2C_f28379d_origin/Current Control/Input Scaling'
 * '<S26>'  : 'mcb_pmsm_foc_I2C_f28379d_origin/Current Control/Inverter'
 * '<S27>'  : 'mcb_pmsm_foc_I2C_f28379d_origin/Current Control/Output Scaling'
 * '<S28>'  : 'mcb_pmsm_foc_I2C_f28379d_origin/Current Control/Pos_selection'
 * '<S29>'  : 'mcb_pmsm_foc_I2C_f28379d_origin/Current Control/SCI_Tx'
 * '<S30>'  : 'mcb_pmsm_foc_I2C_f28379d_origin/Current Control/Control_System/Clarke Transform'
 * '<S31>'  : 'mcb_pmsm_foc_I2C_f28379d_origin/Current Control/Control_System/Current_Controllers'
 * '<S32>'  : 'mcb_pmsm_foc_I2C_f28379d_origin/Current Control/Control_System/Inverse Park Transform'
 * '<S33>'  : 'mcb_pmsm_foc_I2C_f28379d_origin/Current Control/Control_System/Park Transform'
 * '<S34>'  : 'mcb_pmsm_foc_I2C_f28379d_origin/Current Control/Control_System/Space Vector Generator'
 * '<S35>'  : 'mcb_pmsm_foc_I2C_f28379d_origin/Current Control/Control_System/Clarke Transform/Two phase input'
 * '<S36>'  : 'mcb_pmsm_foc_I2C_f28379d_origin/Current Control/Control_System/Clarke Transform/Two phase input/Two phase CRL wrap'
 * '<S37>'  : 'mcb_pmsm_foc_I2C_f28379d_origin/Current Control/Control_System/Current_Controllers/DQ Limiter'
 * '<S38>'  : 'mcb_pmsm_foc_I2C_f28379d_origin/Current Control/Control_System/Current_Controllers/PI_Controller_Id'
 * '<S39>'  : 'mcb_pmsm_foc_I2C_f28379d_origin/Current Control/Control_System/Current_Controllers/PI_Controller_Iq'
 * '<S40>'  : 'mcb_pmsm_foc_I2C_f28379d_origin/Current Control/Control_System/Current_Controllers/DQ Limiter/D-Q Equivalence'
 * '<S41>'  : 'mcb_pmsm_foc_I2C_f28379d_origin/Current Control/Control_System/Current_Controllers/DQ Limiter/D//Q Axis Priority'
 * '<S42>'  : 'mcb_pmsm_foc_I2C_f28379d_origin/Current Control/Control_System/Current_Controllers/DQ Limiter/Inport//Dialog Selection'
 * '<S43>'  : 'mcb_pmsm_foc_I2C_f28379d_origin/Current Control/Control_System/Current_Controllers/DQ Limiter/Magnitude_calc'
 * '<S44>'  : 'mcb_pmsm_foc_I2C_f28379d_origin/Current Control/Control_System/Current_Controllers/DQ Limiter/D-Q Equivalence/Limiter'
 * '<S45>'  : 'mcb_pmsm_foc_I2C_f28379d_origin/Current Control/Control_System/Current_Controllers/DQ Limiter/D-Q Equivalence/Passthrough'
 * '<S46>'  : 'mcb_pmsm_foc_I2C_f28379d_origin/Current Control/Control_System/Current_Controllers/DQ Limiter/D//Q Axis Priority/Compare To Constant'
 * '<S47>'  : 'mcb_pmsm_foc_I2C_f28379d_origin/Current Control/Control_System/Current_Controllers/DQ Limiter/D//Q Axis Priority/Compare To Constant1'
 * '<S48>'  : 'mcb_pmsm_foc_I2C_f28379d_origin/Current Control/Control_System/Current_Controllers/DQ Limiter/D//Q Axis Priority/flipInputs'
 * '<S49>'  : 'mcb_pmsm_foc_I2C_f28379d_origin/Current Control/Control_System/Current_Controllers/DQ Limiter/D//Q Axis Priority/flipInputs1'
 * '<S50>'  : 'mcb_pmsm_foc_I2C_f28379d_origin/Current Control/Control_System/Current_Controllers/DQ Limiter/D//Q Axis Priority/limiter'
 * '<S51>'  : 'mcb_pmsm_foc_I2C_f28379d_origin/Current Control/Control_System/Current_Controllers/DQ Limiter/D//Q Axis Priority/limiter/limitRef1'
 * '<S52>'  : 'mcb_pmsm_foc_I2C_f28379d_origin/Current Control/Control_System/Current_Controllers/DQ Limiter/D//Q Axis Priority/limiter/limitRef2'
 * '<S53>'  : 'mcb_pmsm_foc_I2C_f28379d_origin/Current Control/Control_System/Current_Controllers/DQ Limiter/D//Q Axis Priority/limiter/passThrough'
 * '<S54>'  : 'mcb_pmsm_foc_I2C_f28379d_origin/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset'
 * '<S55>'  : 'mcb_pmsm_foc_I2C_f28379d_origin/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Anti-windup'
 * '<S56>'  : 'mcb_pmsm_foc_I2C_f28379d_origin/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/D Gain'
 * '<S57>'  : 'mcb_pmsm_foc_I2C_f28379d_origin/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Filter'
 * '<S58>'  : 'mcb_pmsm_foc_I2C_f28379d_origin/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Filter ICs'
 * '<S59>'  : 'mcb_pmsm_foc_I2C_f28379d_origin/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/I Gain'
 * '<S60>'  : 'mcb_pmsm_foc_I2C_f28379d_origin/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Ideal P Gain'
 * '<S61>'  : 'mcb_pmsm_foc_I2C_f28379d_origin/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Ideal P Gain Fdbk'
 * '<S62>'  : 'mcb_pmsm_foc_I2C_f28379d_origin/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Integrator'
 * '<S63>'  : 'mcb_pmsm_foc_I2C_f28379d_origin/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Integrator ICs'
 * '<S64>'  : 'mcb_pmsm_foc_I2C_f28379d_origin/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/N Copy'
 * '<S65>'  : 'mcb_pmsm_foc_I2C_f28379d_origin/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/N Gain'
 * '<S66>'  : 'mcb_pmsm_foc_I2C_f28379d_origin/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/P Copy'
 * '<S67>'  : 'mcb_pmsm_foc_I2C_f28379d_origin/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Parallel P Gain'
 * '<S68>'  : 'mcb_pmsm_foc_I2C_f28379d_origin/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Reset Signal'
 * '<S69>'  : 'mcb_pmsm_foc_I2C_f28379d_origin/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Saturation'
 * '<S70>'  : 'mcb_pmsm_foc_I2C_f28379d_origin/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Saturation Fdbk'
 * '<S71>'  : 'mcb_pmsm_foc_I2C_f28379d_origin/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Sum'
 * '<S72>'  : 'mcb_pmsm_foc_I2C_f28379d_origin/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Sum Fdbk'
 * '<S73>'  : 'mcb_pmsm_foc_I2C_f28379d_origin/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Tracking Mode'
 * '<S74>'  : 'mcb_pmsm_foc_I2C_f28379d_origin/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Tracking Mode Sum'
 * '<S75>'  : 'mcb_pmsm_foc_I2C_f28379d_origin/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Tsamp - Integral'
 * '<S76>'  : 'mcb_pmsm_foc_I2C_f28379d_origin/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Tsamp - Ngain'
 * '<S77>'  : 'mcb_pmsm_foc_I2C_f28379d_origin/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/postSat Signal'
 * '<S78>'  : 'mcb_pmsm_foc_I2C_f28379d_origin/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/preSat Signal'
 * '<S79>'  : 'mcb_pmsm_foc_I2C_f28379d_origin/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Anti-windup/Disc. Clamping Parallel'
 * '<S80>'  : 'mcb_pmsm_foc_I2C_f28379d_origin/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Anti-windup/Disc. Clamping Parallel/Dead Zone'
 * '<S81>'  : 'mcb_pmsm_foc_I2C_f28379d_origin/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Anti-windup/Disc. Clamping Parallel/Dead Zone/Enabled'
 * '<S82>'  : 'mcb_pmsm_foc_I2C_f28379d_origin/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/D Gain/Disabled'
 * '<S83>'  : 'mcb_pmsm_foc_I2C_f28379d_origin/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Filter/Disabled'
 * '<S84>'  : 'mcb_pmsm_foc_I2C_f28379d_origin/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Filter ICs/Disabled'
 * '<S85>'  : 'mcb_pmsm_foc_I2C_f28379d_origin/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/I Gain/External Parameters'
 * '<S86>'  : 'mcb_pmsm_foc_I2C_f28379d_origin/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Ideal P Gain/Passthrough'
 * '<S87>'  : 'mcb_pmsm_foc_I2C_f28379d_origin/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Ideal P Gain Fdbk/Disabled'
 * '<S88>'  : 'mcb_pmsm_foc_I2C_f28379d_origin/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Integrator/Discrete'
 * '<S89>'  : 'mcb_pmsm_foc_I2C_f28379d_origin/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Integrator ICs/External IC'
 * '<S90>'  : 'mcb_pmsm_foc_I2C_f28379d_origin/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/N Copy/Disabled wSignal Specification'
 * '<S91>'  : 'mcb_pmsm_foc_I2C_f28379d_origin/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/N Gain/Disabled'
 * '<S92>'  : 'mcb_pmsm_foc_I2C_f28379d_origin/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/P Copy/Disabled'
 * '<S93>'  : 'mcb_pmsm_foc_I2C_f28379d_origin/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Parallel P Gain/External Parameters'
 * '<S94>'  : 'mcb_pmsm_foc_I2C_f28379d_origin/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Reset Signal/External Reset'
 * '<S95>'  : 'mcb_pmsm_foc_I2C_f28379d_origin/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Saturation/Enabled'
 * '<S96>'  : 'mcb_pmsm_foc_I2C_f28379d_origin/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Saturation Fdbk/Disabled'
 * '<S97>'  : 'mcb_pmsm_foc_I2C_f28379d_origin/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Sum/Sum_PI'
 * '<S98>'  : 'mcb_pmsm_foc_I2C_f28379d_origin/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Sum Fdbk/Disabled'
 * '<S99>'  : 'mcb_pmsm_foc_I2C_f28379d_origin/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Tracking Mode/Disabled'
 * '<S100>' : 'mcb_pmsm_foc_I2C_f28379d_origin/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Tracking Mode Sum/Passthrough'
 * '<S101>' : 'mcb_pmsm_foc_I2C_f28379d_origin/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Tsamp - Integral/TsSignalSpecification'
 * '<S102>' : 'mcb_pmsm_foc_I2C_f28379d_origin/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/Tsamp - Ngain/Passthrough'
 * '<S103>' : 'mcb_pmsm_foc_I2C_f28379d_origin/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/postSat Signal/Forward_Path'
 * '<S104>' : 'mcb_pmsm_foc_I2C_f28379d_origin/Current Control/Control_System/Current_Controllers/PI_Controller_Id/Discrete PI Controller  with anti-windup & reset/preSat Signal/Forward_Path'
 * '<S105>' : 'mcb_pmsm_foc_I2C_f28379d_origin/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset'
 * '<S106>' : 'mcb_pmsm_foc_I2C_f28379d_origin/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Anti-windup'
 * '<S107>' : 'mcb_pmsm_foc_I2C_f28379d_origin/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/D Gain'
 * '<S108>' : 'mcb_pmsm_foc_I2C_f28379d_origin/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Filter'
 * '<S109>' : 'mcb_pmsm_foc_I2C_f28379d_origin/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Filter ICs'
 * '<S110>' : 'mcb_pmsm_foc_I2C_f28379d_origin/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/I Gain'
 * '<S111>' : 'mcb_pmsm_foc_I2C_f28379d_origin/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Ideal P Gain'
 * '<S112>' : 'mcb_pmsm_foc_I2C_f28379d_origin/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Ideal P Gain Fdbk'
 * '<S113>' : 'mcb_pmsm_foc_I2C_f28379d_origin/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Integrator'
 * '<S114>' : 'mcb_pmsm_foc_I2C_f28379d_origin/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Integrator ICs'
 * '<S115>' : 'mcb_pmsm_foc_I2C_f28379d_origin/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/N Copy'
 * '<S116>' : 'mcb_pmsm_foc_I2C_f28379d_origin/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/N Gain'
 * '<S117>' : 'mcb_pmsm_foc_I2C_f28379d_origin/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/P Copy'
 * '<S118>' : 'mcb_pmsm_foc_I2C_f28379d_origin/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Parallel P Gain'
 * '<S119>' : 'mcb_pmsm_foc_I2C_f28379d_origin/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Reset Signal'
 * '<S120>' : 'mcb_pmsm_foc_I2C_f28379d_origin/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Saturation'
 * '<S121>' : 'mcb_pmsm_foc_I2C_f28379d_origin/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Saturation Fdbk'
 * '<S122>' : 'mcb_pmsm_foc_I2C_f28379d_origin/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Sum'
 * '<S123>' : 'mcb_pmsm_foc_I2C_f28379d_origin/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Sum Fdbk'
 * '<S124>' : 'mcb_pmsm_foc_I2C_f28379d_origin/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Tracking Mode'
 * '<S125>' : 'mcb_pmsm_foc_I2C_f28379d_origin/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Tracking Mode Sum'
 * '<S126>' : 'mcb_pmsm_foc_I2C_f28379d_origin/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Tsamp - Integral'
 * '<S127>' : 'mcb_pmsm_foc_I2C_f28379d_origin/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Tsamp - Ngain'
 * '<S128>' : 'mcb_pmsm_foc_I2C_f28379d_origin/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/postSat Signal'
 * '<S129>' : 'mcb_pmsm_foc_I2C_f28379d_origin/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/preSat Signal'
 * '<S130>' : 'mcb_pmsm_foc_I2C_f28379d_origin/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Anti-windup/Disc. Clamping Parallel'
 * '<S131>' : 'mcb_pmsm_foc_I2C_f28379d_origin/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Anti-windup/Disc. Clamping Parallel/Dead Zone'
 * '<S132>' : 'mcb_pmsm_foc_I2C_f28379d_origin/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Anti-windup/Disc. Clamping Parallel/Dead Zone/Enabled'
 * '<S133>' : 'mcb_pmsm_foc_I2C_f28379d_origin/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/D Gain/Disabled'
 * '<S134>' : 'mcb_pmsm_foc_I2C_f28379d_origin/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Filter/Disabled'
 * '<S135>' : 'mcb_pmsm_foc_I2C_f28379d_origin/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Filter ICs/Disabled'
 * '<S136>' : 'mcb_pmsm_foc_I2C_f28379d_origin/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/I Gain/External Parameters'
 * '<S137>' : 'mcb_pmsm_foc_I2C_f28379d_origin/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Ideal P Gain/Passthrough'
 * '<S138>' : 'mcb_pmsm_foc_I2C_f28379d_origin/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Ideal P Gain Fdbk/Disabled'
 * '<S139>' : 'mcb_pmsm_foc_I2C_f28379d_origin/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Integrator/Discrete'
 * '<S140>' : 'mcb_pmsm_foc_I2C_f28379d_origin/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Integrator ICs/External IC'
 * '<S141>' : 'mcb_pmsm_foc_I2C_f28379d_origin/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/N Copy/Disabled wSignal Specification'
 * '<S142>' : 'mcb_pmsm_foc_I2C_f28379d_origin/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/N Gain/Disabled'
 * '<S143>' : 'mcb_pmsm_foc_I2C_f28379d_origin/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/P Copy/Disabled'
 * '<S144>' : 'mcb_pmsm_foc_I2C_f28379d_origin/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Parallel P Gain/External Parameters'
 * '<S145>' : 'mcb_pmsm_foc_I2C_f28379d_origin/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Reset Signal/External Reset'
 * '<S146>' : 'mcb_pmsm_foc_I2C_f28379d_origin/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Saturation/Enabled'
 * '<S147>' : 'mcb_pmsm_foc_I2C_f28379d_origin/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Saturation Fdbk/Disabled'
 * '<S148>' : 'mcb_pmsm_foc_I2C_f28379d_origin/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Sum/Sum_PI'
 * '<S149>' : 'mcb_pmsm_foc_I2C_f28379d_origin/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Sum Fdbk/Disabled'
 * '<S150>' : 'mcb_pmsm_foc_I2C_f28379d_origin/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Tracking Mode/Disabled'
 * '<S151>' : 'mcb_pmsm_foc_I2C_f28379d_origin/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Tracking Mode Sum/Passthrough'
 * '<S152>' : 'mcb_pmsm_foc_I2C_f28379d_origin/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Tsamp - Integral/TsSignalSpecification'
 * '<S153>' : 'mcb_pmsm_foc_I2C_f28379d_origin/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/Tsamp - Ngain/Passthrough'
 * '<S154>' : 'mcb_pmsm_foc_I2C_f28379d_origin/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/postSat Signal/Forward_Path'
 * '<S155>' : 'mcb_pmsm_foc_I2C_f28379d_origin/Current Control/Control_System/Current_Controllers/PI_Controller_Iq/Discrete PI Controller  with anti-windup & reset/preSat Signal/Forward_Path'
 * '<S156>' : 'mcb_pmsm_foc_I2C_f28379d_origin/Current Control/Control_System/Inverse Park Transform/Sine Cosine'
 * '<S157>' : 'mcb_pmsm_foc_I2C_f28379d_origin/Current Control/Control_System/Inverse Park Transform/Two inputs CRL'
 * '<S158>' : 'mcb_pmsm_foc_I2C_f28379d_origin/Current Control/Control_System/Inverse Park Transform/Sine Cosine/Interpolation'
 * '<S159>' : 'mcb_pmsm_foc_I2C_f28379d_origin/Current Control/Control_System/Inverse Park Transform/Sine Cosine/WrapUp'
 * '<S160>' : 'mcb_pmsm_foc_I2C_f28379d_origin/Current Control/Control_System/Inverse Park Transform/Sine Cosine/WrapUp/Compare To Zero'
 * '<S161>' : 'mcb_pmsm_foc_I2C_f28379d_origin/Current Control/Control_System/Inverse Park Transform/Sine Cosine/WrapUp/If Action Subsystem'
 * '<S162>' : 'mcb_pmsm_foc_I2C_f28379d_origin/Current Control/Control_System/Inverse Park Transform/Sine Cosine/WrapUp/If Action Subsystem1'
 * '<S163>' : 'mcb_pmsm_foc_I2C_f28379d_origin/Current Control/Control_System/Inverse Park Transform/Two inputs CRL/Switch_Axis'
 * '<S164>' : 'mcb_pmsm_foc_I2C_f28379d_origin/Current Control/Control_System/Park Transform/Sine Cosine'
 * '<S165>' : 'mcb_pmsm_foc_I2C_f28379d_origin/Current Control/Control_System/Park Transform/Two inputs CRL'
 * '<S166>' : 'mcb_pmsm_foc_I2C_f28379d_origin/Current Control/Control_System/Park Transform/Sine Cosine/Sine-Cosine Lookup'
 * '<S167>' : 'mcb_pmsm_foc_I2C_f28379d_origin/Current Control/Control_System/Park Transform/Sine Cosine/Sine-Cosine Lookup/Interpolation'
 * '<S168>' : 'mcb_pmsm_foc_I2C_f28379d_origin/Current Control/Control_System/Park Transform/Sine Cosine/Sine-Cosine Lookup/WrapUp'
 * '<S169>' : 'mcb_pmsm_foc_I2C_f28379d_origin/Current Control/Control_System/Park Transform/Sine Cosine/Sine-Cosine Lookup/WrapUp/Compare To Zero'
 * '<S170>' : 'mcb_pmsm_foc_I2C_f28379d_origin/Current Control/Control_System/Park Transform/Sine Cosine/Sine-Cosine Lookup/WrapUp/If Action Subsystem'
 * '<S171>' : 'mcb_pmsm_foc_I2C_f28379d_origin/Current Control/Control_System/Park Transform/Sine Cosine/Sine-Cosine Lookup/WrapUp/If Action Subsystem1'
 * '<S172>' : 'mcb_pmsm_foc_I2C_f28379d_origin/Current Control/Control_System/Park Transform/Two inputs CRL/Switch_Axis'
 * '<S173>' : 'mcb_pmsm_foc_I2C_f28379d_origin/Current Control/Control_System/Space Vector Generator/Modulation method'
 * '<S174>' : 'mcb_pmsm_foc_I2C_f28379d_origin/Current Control/Control_System/Space Vector Generator/Voltage Input'
 * '<S175>' : 'mcb_pmsm_foc_I2C_f28379d_origin/Current Control/Control_System/Space Vector Generator/Modulation method/SVPWM'
 * '<S176>' : 'mcb_pmsm_foc_I2C_f28379d_origin/Current Control/Control_System/Space Vector Generator/Modulation method/SVPWM/Half(Vmin+Vmax)'
 * '<S177>' : 'mcb_pmsm_foc_I2C_f28379d_origin/Current Control/Control_System/Space Vector Generator/Voltage Input/Valphabeta'
 * '<S178>' : 'mcb_pmsm_foc_I2C_f28379d_origin/Current Control/Control_System/Space Vector Generator/Voltage Input/Valphabeta/Inverse Clarke Transform'
 * '<S179>' : 'mcb_pmsm_foc_I2C_f28379d_origin/Current Control/Control_System/Space Vector Generator/Voltage Input/Valphabeta/Inverse Clarke Transform/Two phase input'
 * '<S180>' : 'mcb_pmsm_foc_I2C_f28379d_origin/Current Control/HW_Inputs/Sensor Driver Blocks (codegen)'
 * '<S181>' : 'mcb_pmsm_foc_I2C_f28379d_origin/Current Control/Input Scaling/ Calculate Position and Speed'
 * '<S182>' : 'mcb_pmsm_foc_I2C_f28379d_origin/Current Control/Input Scaling/Calculate Phase Currents'
 * '<S183>' : 'mcb_pmsm_foc_I2C_f28379d_origin/Current Control/Input Scaling/ Calculate Position and Speed/IIR Filter'
 * '<S184>' : 'mcb_pmsm_foc_I2C_f28379d_origin/Current Control/Input Scaling/ Calculate Position and Speed/Mechanical to Electrical Position'
 * '<S185>' : 'mcb_pmsm_foc_I2C_f28379d_origin/Current Control/Input Scaling/ Calculate Position and Speed/Speed Measurement'
 * '<S186>' : 'mcb_pmsm_foc_I2C_f28379d_origin/Current Control/Input Scaling/ Calculate Position and Speed/Subsystem'
 * '<S187>' : 'mcb_pmsm_foc_I2C_f28379d_origin/Current Control/Input Scaling/ Calculate Position and Speed/Subsystem1'
 * '<S188>' : 'mcb_pmsm_foc_I2C_f28379d_origin/Current Control/Input Scaling/ Calculate Position and Speed/Subsystem2'
 * '<S189>' : 'mcb_pmsm_foc_I2C_f28379d_origin/Current Control/Input Scaling/ Calculate Position and Speed/IIR Filter/IIR Filter'
 * '<S190>' : 'mcb_pmsm_foc_I2C_f28379d_origin/Current Control/Input Scaling/ Calculate Position and Speed/IIR Filter/IIR Filter/Low-pass'
 * '<S191>' : 'mcb_pmsm_foc_I2C_f28379d_origin/Current Control/Input Scaling/ Calculate Position and Speed/IIR Filter/IIR Filter/Low-pass/IIR Low Pass Filter'
 * '<S192>' : 'mcb_pmsm_foc_I2C_f28379d_origin/Current Control/Input Scaling/ Calculate Position and Speed/Mechanical to Electrical Position/MechToElec'
 * '<S193>' : 'mcb_pmsm_foc_I2C_f28379d_origin/Current Control/Input Scaling/ Calculate Position and Speed/Mechanical to Electrical Position/MechToElec/floating-point'
 * '<S194>' : 'mcb_pmsm_foc_I2C_f28379d_origin/Current Control/Input Scaling/ Calculate Position and Speed/Mechanical to Electrical Position/MechToElec/floating-point/Compensate Offset'
 * '<S195>' : 'mcb_pmsm_foc_I2C_f28379d_origin/Current Control/Input Scaling/ Calculate Position and Speed/Mechanical to Electrical Position/MechToElec/floating-point/Mech To Elec'
 * '<S196>' : 'mcb_pmsm_foc_I2C_f28379d_origin/Current Control/Input Scaling/ Calculate Position and Speed/Mechanical to Electrical Position/MechToElec/floating-point/Compensate Offset/If Action Subsystem'
 * '<S197>' : 'mcb_pmsm_foc_I2C_f28379d_origin/Current Control/Input Scaling/ Calculate Position and Speed/Mechanical to Electrical Position/MechToElec/floating-point/Compensate Offset/If Action Subsystem1'
 * '<S198>' : 'mcb_pmsm_foc_I2C_f28379d_origin/Current Control/Input Scaling/ Calculate Position and Speed/Mechanical to Electrical Position/MechToElec/floating-point/Mech To Elec/Variant Subsystem'
 * '<S199>' : 'mcb_pmsm_foc_I2C_f28379d_origin/Current Control/Input Scaling/ Calculate Position and Speed/Mechanical to Electrical Position/MechToElec/floating-point/Mech To Elec/Variant Subsystem/Dialog'
 * '<S200>' : 'mcb_pmsm_foc_I2C_f28379d_origin/Current Control/Input Scaling/ Calculate Position and Speed/Speed Measurement/DT_Handle'
 * '<S201>' : 'mcb_pmsm_foc_I2C_f28379d_origin/Current Control/Input Scaling/ Calculate Position and Speed/Speed Measurement/DT_Handle/floating-point'
 * '<S202>' : 'mcb_pmsm_foc_I2C_f28379d_origin/Current Control/Input Scaling/Calculate Phase Currents/Data_Type'
 * '<S203>' : 'mcb_pmsm_foc_I2C_f28379d_origin/Current Control/Input Scaling/Calculate Phase Currents/Data_Type/Data_Type_Float'
 * '<S204>' : 'mcb_pmsm_foc_I2C_f28379d_origin/Current Control/Inverter/Code Generation'
 * '<S205>' : 'mcb_pmsm_foc_I2C_f28379d_origin/Current Control/Pos_selection/Sensor Driver Blocks (codegen)'
 * '<S206>' : 'mcb_pmsm_foc_I2C_f28379d_origin/Current Control/SCI_Tx/Code Generation'
 * '<S207>' : 'mcb_pmsm_foc_I2C_f28379d_origin/Current Control/SCI_Tx/Code Generation/Data_Conditioning_Tx'
 * '<S208>' : 'mcb_pmsm_foc_I2C_f28379d_origin/Current Control/SCI_Tx/Code Generation/Data_Logging'
 * '<S209>' : 'mcb_pmsm_foc_I2C_f28379d_origin/Current Control/SCI_Tx/Code Generation/While Iterator Subsystem'
 * '<S210>' : 'mcb_pmsm_foc_I2C_f28379d_origin/Current Control/SCI_Tx/Code Generation/Data_Conditioning_Tx/Data_Type_Float'
 * '<S211>' : 'mcb_pmsm_foc_I2C_f28379d_origin/Current Control/SCI_Tx/Code Generation/Data_Logging/Counter Limited'
 * '<S212>' : 'mcb_pmsm_foc_I2C_f28379d_origin/Current Control/SCI_Tx/Code Generation/Data_Logging/Data'
 * '<S213>' : 'mcb_pmsm_foc_I2C_f28379d_origin/Current Control/SCI_Tx/Code Generation/Data_Logging/End'
 * '<S214>' : 'mcb_pmsm_foc_I2C_f28379d_origin/Current Control/SCI_Tx/Code Generation/Data_Logging/Start'
 * '<S215>' : 'mcb_pmsm_foc_I2C_f28379d_origin/Current Control/SCI_Tx/Code Generation/Data_Logging/Counter Limited/Increment Real World'
 * '<S216>' : 'mcb_pmsm_foc_I2C_f28379d_origin/Current Control/SCI_Tx/Code Generation/Data_Logging/Counter Limited/Wrap To Zero'
 * '<S217>' : 'mcb_pmsm_foc_I2C_f28379d_origin/HW Interrupt/Code generation'
 * '<S218>' : 'mcb_pmsm_foc_I2C_f28379d_origin/HW Interrupt/Code generation/HWI_ADCB1_INT'
 * '<S219>' : 'mcb_pmsm_foc_I2C_f28379d_origin/HW Interrupt/Code generation/HWI_SCIA_RX_INT'
 * '<S220>' : 'mcb_pmsm_foc_I2C_f28379d_origin/HW Interrupt/Code generation/HWI_ADCB1_INT/ECSoC'
 * '<S221>' : 'mcb_pmsm_foc_I2C_f28379d_origin/HW Interrupt/Code generation/HWI_ADCB1_INT/ECSoC/ECSimCodegen'
 * '<S222>' : 'mcb_pmsm_foc_I2C_f28379d_origin/HW Interrupt/Code generation/HWI_SCIA_RX_INT/ECSoC'
 * '<S223>' : 'mcb_pmsm_foc_I2C_f28379d_origin/HW Interrupt/Code generation/HWI_SCIA_RX_INT/ECSoC/ECSimCodegen'
 * '<S224>' : 'mcb_pmsm_foc_I2C_f28379d_origin/Hardware Init/Variant Subsystem'
 * '<S225>' : 'mcb_pmsm_foc_I2C_f28379d_origin/Hardware Init/Variant Subsystem/Code Generation'
 * '<S226>' : 'mcb_pmsm_foc_I2C_f28379d_origin/Hardware Init/Variant Subsystem/Code Generation/Calculate ADC Offset '
 * '<S227>' : 'mcb_pmsm_foc_I2C_f28379d_origin/Hardware Init/Variant Subsystem/Code Generation/DRV Enable'
 * '<S228>' : 'mcb_pmsm_foc_I2C_f28379d_origin/Hardware Init/Variant Subsystem/Code Generation/Default ADC Offset'
 * '<S229>' : 'mcb_pmsm_foc_I2C_f28379d_origin/Hardware Init/Variant Subsystem/Code Generation/Calculate ADC Offset /For Iterator Subsystem'
 * '<S230>' : 'mcb_pmsm_foc_I2C_f28379d_origin/Hardware Init/Variant Subsystem/Code Generation/Calculate ADC Offset /If Action Subsystem'
 * '<S231>' : 'mcb_pmsm_foc_I2C_f28379d_origin/Hardware Init/Variant Subsystem/Code Generation/Calculate ADC Offset /If Action Subsystem1'
 * '<S232>' : 'mcb_pmsm_foc_I2C_f28379d_origin/Hardware Init/Variant Subsystem/Code Generation/Calculate ADC Offset /If Action Subsystem2'
 * '<S233>' : 'mcb_pmsm_foc_I2C_f28379d_origin/Hardware Init/Variant Subsystem/Code Generation/Calculate ADC Offset /If Action Subsystem3'
 * '<S234>' : 'mcb_pmsm_foc_I2C_f28379d_origin/Hardware Init/Variant Subsystem/Code Generation/Calculate ADC Offset /For Iterator Subsystem/If Action Subsystem'
 * '<S235>' : 'mcb_pmsm_foc_I2C_f28379d_origin/Hardware Init/Variant Subsystem/Code Generation/DRV Enable/ADC Gain setting'
 * '<S236>' : 'mcb_pmsm_foc_I2C_f28379d_origin/Heartbeat LED/Heartbeat LED'
 * '<S237>' : 'mcb_pmsm_foc_I2C_f28379d_origin/Heartbeat LED/Heartbeat LED/Code generation'
 * '<S238>' : 'mcb_pmsm_foc_I2C_f28379d_origin/Inverter and Motor - Plant Model/Codegeneration'
 * '<S239>' : 'mcb_pmsm_foc_I2C_f28379d_origin/Serial Receive/Data_Conditioning_Rx'
 * '<S240>' : 'mcb_pmsm_foc_I2C_f28379d_origin/Serial Receive/SCI_Rx'
 * '<S241>' : 'mcb_pmsm_foc_I2C_f28379d_origin/Serial Receive/unParse'
 * '<S242>' : 'mcb_pmsm_foc_I2C_f28379d_origin/Serial Receive/Data_Conditioning_Rx/Data_Type_Float'
 * '<S243>' : 'mcb_pmsm_foc_I2C_f28379d_origin/Serial Receive/SCI_Rx/Code Generation'
 * '<S244>' : 'mcb_pmsm_foc_I2C_f28379d_origin/Serial Receive/SCI_Rx/Code Generation/Data_Type_Float'
 * '<S245>' : 'mcb_pmsm_foc_I2C_f28379d_origin/Speed Control/PI_Controller_Speed'
 * '<S246>' : 'mcb_pmsm_foc_I2C_f28379d_origin/Speed Control/Speed_Ref_Selector'
 * '<S247>' : 'mcb_pmsm_foc_I2C_f28379d_origin/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset'
 * '<S248>' : 'mcb_pmsm_foc_I2C_f28379d_origin/Speed Control/PI_Controller_Speed/Zero_Cancellation'
 * '<S249>' : 'mcb_pmsm_foc_I2C_f28379d_origin/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/Anti-windup'
 * '<S250>' : 'mcb_pmsm_foc_I2C_f28379d_origin/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/D Gain'
 * '<S251>' : 'mcb_pmsm_foc_I2C_f28379d_origin/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/Filter'
 * '<S252>' : 'mcb_pmsm_foc_I2C_f28379d_origin/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/Filter ICs'
 * '<S253>' : 'mcb_pmsm_foc_I2C_f28379d_origin/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/I Gain'
 * '<S254>' : 'mcb_pmsm_foc_I2C_f28379d_origin/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/Ideal P Gain'
 * '<S255>' : 'mcb_pmsm_foc_I2C_f28379d_origin/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/Ideal P Gain Fdbk'
 * '<S256>' : 'mcb_pmsm_foc_I2C_f28379d_origin/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/Integrator'
 * '<S257>' : 'mcb_pmsm_foc_I2C_f28379d_origin/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/Integrator ICs'
 * '<S258>' : 'mcb_pmsm_foc_I2C_f28379d_origin/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/N Copy'
 * '<S259>' : 'mcb_pmsm_foc_I2C_f28379d_origin/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/N Gain'
 * '<S260>' : 'mcb_pmsm_foc_I2C_f28379d_origin/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/P Copy'
 * '<S261>' : 'mcb_pmsm_foc_I2C_f28379d_origin/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/Parallel P Gain'
 * '<S262>' : 'mcb_pmsm_foc_I2C_f28379d_origin/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/Reset Signal'
 * '<S263>' : 'mcb_pmsm_foc_I2C_f28379d_origin/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/Saturation'
 * '<S264>' : 'mcb_pmsm_foc_I2C_f28379d_origin/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/Saturation Fdbk'
 * '<S265>' : 'mcb_pmsm_foc_I2C_f28379d_origin/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/Sum'
 * '<S266>' : 'mcb_pmsm_foc_I2C_f28379d_origin/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/Sum Fdbk'
 * '<S267>' : 'mcb_pmsm_foc_I2C_f28379d_origin/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/Tracking Mode'
 * '<S268>' : 'mcb_pmsm_foc_I2C_f28379d_origin/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/Tracking Mode Sum'
 * '<S269>' : 'mcb_pmsm_foc_I2C_f28379d_origin/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/Tsamp - Integral'
 * '<S270>' : 'mcb_pmsm_foc_I2C_f28379d_origin/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/Tsamp - Ngain'
 * '<S271>' : 'mcb_pmsm_foc_I2C_f28379d_origin/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/postSat Signal'
 * '<S272>' : 'mcb_pmsm_foc_I2C_f28379d_origin/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/preSat Signal'
 * '<S273>' : 'mcb_pmsm_foc_I2C_f28379d_origin/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/Anti-windup/Disc. Clamping Parallel'
 * '<S274>' : 'mcb_pmsm_foc_I2C_f28379d_origin/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/Anti-windup/Disc. Clamping Parallel/Dead Zone'
 * '<S275>' : 'mcb_pmsm_foc_I2C_f28379d_origin/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/Anti-windup/Disc. Clamping Parallel/Dead Zone/Enabled'
 * '<S276>' : 'mcb_pmsm_foc_I2C_f28379d_origin/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/D Gain/Disabled'
 * '<S277>' : 'mcb_pmsm_foc_I2C_f28379d_origin/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/Filter/Disabled'
 * '<S278>' : 'mcb_pmsm_foc_I2C_f28379d_origin/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/Filter ICs/Disabled'
 * '<S279>' : 'mcb_pmsm_foc_I2C_f28379d_origin/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/I Gain/External Parameters'
 * '<S280>' : 'mcb_pmsm_foc_I2C_f28379d_origin/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/Ideal P Gain/Passthrough'
 * '<S281>' : 'mcb_pmsm_foc_I2C_f28379d_origin/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/Ideal P Gain Fdbk/Disabled'
 * '<S282>' : 'mcb_pmsm_foc_I2C_f28379d_origin/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/Integrator/Discrete'
 * '<S283>' : 'mcb_pmsm_foc_I2C_f28379d_origin/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/Integrator ICs/External IC'
 * '<S284>' : 'mcb_pmsm_foc_I2C_f28379d_origin/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/N Copy/Disabled wSignal Specification'
 * '<S285>' : 'mcb_pmsm_foc_I2C_f28379d_origin/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/N Gain/Disabled'
 * '<S286>' : 'mcb_pmsm_foc_I2C_f28379d_origin/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/P Copy/Disabled'
 * '<S287>' : 'mcb_pmsm_foc_I2C_f28379d_origin/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/Parallel P Gain/External Parameters'
 * '<S288>' : 'mcb_pmsm_foc_I2C_f28379d_origin/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/Reset Signal/External Reset'
 * '<S289>' : 'mcb_pmsm_foc_I2C_f28379d_origin/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/Saturation/Enabled'
 * '<S290>' : 'mcb_pmsm_foc_I2C_f28379d_origin/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/Saturation Fdbk/Disabled'
 * '<S291>' : 'mcb_pmsm_foc_I2C_f28379d_origin/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/Sum/Sum_PI'
 * '<S292>' : 'mcb_pmsm_foc_I2C_f28379d_origin/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/Sum Fdbk/Disabled'
 * '<S293>' : 'mcb_pmsm_foc_I2C_f28379d_origin/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/Tracking Mode/Disabled'
 * '<S294>' : 'mcb_pmsm_foc_I2C_f28379d_origin/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/Tracking Mode Sum/Passthrough'
 * '<S295>' : 'mcb_pmsm_foc_I2C_f28379d_origin/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/Tsamp - Integral/TsSignalSpecification'
 * '<S296>' : 'mcb_pmsm_foc_I2C_f28379d_origin/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/Tsamp - Ngain/Passthrough'
 * '<S297>' : 'mcb_pmsm_foc_I2C_f28379d_origin/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/postSat Signal/Forward_Path'
 * '<S298>' : 'mcb_pmsm_foc_I2C_f28379d_origin/Speed Control/PI_Controller_Speed/Discrete PI Controller  with anti-windup & reset/preSat Signal/Forward_Path'
 * '<S299>' : 'mcb_pmsm_foc_I2C_f28379d_origin/Speed Control/PI_Controller_Speed/Zero_Cancellation/IIR Filter'
 * '<S300>' : 'mcb_pmsm_foc_I2C_f28379d_origin/Speed Control/PI_Controller_Speed/Zero_Cancellation/IIR Filter/Low-pass'
 * '<S301>' : 'mcb_pmsm_foc_I2C_f28379d_origin/Speed Control/PI_Controller_Speed/Zero_Cancellation/IIR Filter/Low-pass/IIR Low Pass Filter'
 */
#endif                       /* RTW_HEADER_mcb_pmsm_foc_I2C_f28379d_origin_h_ */

/*
 * File trailer for generated code.
 *
 * [EOF]
 */
