/*
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * File: mcb_ipmsm_pos_est_f28379d.h
 *
 * Code generated for Simulink model 'mcb_ipmsm_pos_est_f28379d'.
 *
 * Model version                  : 7.2
 * Simulink Coder version         : 23.2 (R2023b) 01-Aug-2023
 * C/C++ source code generated on : Sat Dec 13 16:26:58 2025
 *
 * Target selection: ert.tlc
 * Embedded hardware selection: Texas Instruments->C2000
 * Code generation objectives: Unspecified
 * Validation result: Not run
 */

#ifndef RTW_HEADER_mcb_ipmsm_pos_est_f28379d_h_
#define RTW_HEADER_mcb_ipmsm_pos_est_f28379d_h_
#ifndef mcb_ipmsm_pos_est_f28379d_COMMON_INCLUDES_
#define mcb_ipmsm_pos_est_f28379d_COMMON_INCLUDES_
#include "rtwtypes.h"
#include "c2000BoardSupport.h"
#include "MW_f2837xD_includes.h"
#include "string.h"
#include "DSP28xx_SciUtil.h"
#include "IQmathLib.h"
#include "MW_SPI.h"
#endif                          /* mcb_ipmsm_pos_est_f28379d_COMMON_INCLUDES_ */

#include "MW_c2000ISR.h"
#include "mcb_ipmsm_pos_est_f28379d_types.h"
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

extern void init_SCI(void);
extern void init_SCI_GPIO(void);
extern void config_ePWMSyncSource(void);
extern void config_ePWM_GPIO (void);
extern void config_ePWM_TBSync (void);
extern void config_ePWM_XBAR(void);

/* Block signals for system '<S23>/SPI Master Transfer' */
typedef struct {
  uint16_T SPIMasterTransfer;          /* '<S23>/SPI Master Transfer' */
} B_SPIMasterTransfer_mcb_ipmsm_T;

/* Block states (default storage) for system '<S23>/SPI Master Transfer' */
typedef struct {
  codertarget_tic2000_blocks_SP_T obj; /* '<S23>/SPI Master Transfer' */
  boolean_T objisempty;                /* '<S23>/SPI Master Transfer' */
} DW_SPIMasterTransfer_mcb_ipms_T;

/* Block signals for system '<S64>/Two inputs CRL' */
typedef struct {
  real32_T qcos;                       /* '<S65>/qcos' */
  real32_T dsin;                       /* '<S65>/dsin' */
  real32_T sum_beta;                   /* '<S65>/sum_beta' */
  real32_T dcos;                       /* '<S65>/dcos' */
  real32_T qsin;                       /* '<S65>/qsin' */
  real32_T sum_alpha;                  /* '<S65>/sum_alpha' */
  real32_T Switch[2];                  /* '<S66>/Switch' */
  real32_T algDD_o1;
  real32_T algDD_o2;
} B_TwoinputsCRL_mcb_ipmsm_pos__T;

/* Block signals (default storage) */
typedef struct {
  uint32_T Delay1;                     /* '<S164>/Delay1' */
  uint32_T Add2;                       /* '<S164>/Add2' */
  uint32_T Sum[4];                     /* '<S74>/Sum' */
  uint32_T UnitDelay;                  /* '<S40>/Unit Delay' */
  uint32_T Switch2;                    /* '<S40>/Switch2' */
  uint32_T Delay1_k;                   /* '<S40>/Delay1' */
  uint32_T Add2_l;                     /* '<S40>/Add2' */
  uint32_T BytePack[4];                /* '<S221>/Byte Pack' */
  uint32_T SCI_Tx_Data[5];             /* '<S219>/Merge' */
  uint32_T SCI_Tx_Iteration;           /* '<S219>/Merge1' */
  uint32_T IndexVector;                /* '<S220>/Index Vector' */
  uint32_T Add;                        /* '<S220>/Add' */
  uint32_T Data[4];                    /* '<S223>/Data' */
  uint32_T Data_f[4];                  /* '<S224>/Data' */
  uint32_T Data_fw[4];                 /* '<S225>/Data' */
  uint32_T CounIn;                     /* '<S196>/CounIn' */
  real32_T Switch;                     /* '<S67>/Switch' */
  real32_T UnitDelay_j[2];             /* '<S67>/Unit Delay' */
  real32_T MatrixMultiply[2];          /* '<S67>/Matrix Multiply' */
  real32_T Product;                    /* '<S67>/Product' */
  real32_T Switch_a;                   /* '<S201>/Switch' */
  real32_T Merge;                      /* '<S202>/Merge' */
  real32_T UnitDelay1;                 /* '<S69>/Unit Delay1' */
  real32_T Switch_n;                   /* '<S69>/Switch' */
  real32_T Delay;                      /* '<S44>/Delay' */
  real32_T Switch1;                    /* '<S67>/Switch1' */
  real32_T Merge_j;                    /* '<S72>/Merge' */
  real32_T Switch2_k;                  /* '<S67>/Switch2' */
  real32_T convert_pu;                 /* '<S82>/convert_pu' */
  real32_T Merge_k;                    /* '<S82>/Merge' */
  real32_T indexing;                   /* '<S74>/indexing' */
  real32_T Lookup[4];                  /* '<S74>/Lookup' */
  real32_T Sum3;                       /* '<S81>/Sum3' */
  real32_T DataTypeConversion1;        /* '<S74>/Data Type Conversion1' */
  real32_T Sum2;                       /* '<S74>/Sum2' */
  real32_T Product_b;                  /* '<S81>/Product' */
  real32_T Sum4;                       /* '<S81>/Sum4' */
  real32_T Sum5;                       /* '<S81>/Sum5' */
  real32_T Product1;                   /* '<S81>/Product1' */
  real32_T Sum6;                       /* '<S81>/Sum6' */
  real32_T DataTypeConversion;         /* '<S54>/Data Type Conversion' */
  real32_T Product_h;                  /* '<S54>/Product' */
  real32_T DataTypeConversion1_p;      /* '<S54>/Data Type Conversion1' */
  real32_T Product1_m;                 /* '<S54>/Product1' */
  real32_T Add_e;                      /* '<S54>/Add' */
  real32_T Merge_d[2];                 /* '<S54>/Merge' */
  real32_T Add_n[2];                   /* '<S29>/Add' */
  real32_T Delay_j;                    /* '<S56>/Delay' */
  real32_T GetADCVoltage[2];           /* '<S38>/Get ADC Voltage' */
  real32_T GetCurrents[2];             /* '<S38>/Get Currents' */
  real32_T PU_Conversion[2];           /* '<S38>/PU_Conversion' */
  real32_T Switch2_e;                  /* '<S51>/Switch2' */
  real32_T Abs;                        /* '<S51>/Abs' */
  real32_T Subtract1;                  /* '<S56>/Subtract1' */
  real32_T Switch3;                    /* '<S56>/Switch3' */
  real32_T Switch1_p;                  /* '<S51>/Switch1' */
  real32_T Merge_b;                    /* '<S41>/Merge' */
  real32_T Switch_f;                   /* '<S210>/Switch' */
  real32_T Merge_o;                    /* '<S211>/Merge' */
  real32_T Multiply;                   /* '<S212>/Multiply' */
  real32_T Floor;                      /* '<S212>/Floor' */
  real32_T Multiply1;                  /* '<S212>/Multiply1' */
  real32_T Add_k;                      /* '<S212>/Add' */
  real32_T PositionGainOut;            /* '<S29>/PositionGainOut' */
  real32_T TappedDelay1[50];           /* '<S40>/Tapped Delay1' */
  real32_T SumofElements;              /* '<S40>/Sum of Elements' */
  real32_T Abs1;                       /* '<S40>/Abs1' */
  real32_T Merge_l;                    /* '<S163>/Merge' */
  real32_T Merge1;                     /* '<S163>/Merge1' */
  real32_T Status;                     /* '<S29>/Switch' */
  real32_T PUtoRad;                    /* '<S6>/PUtoRad' */
  real32_T TmpSignalConversionAtBytePackIn[4];
  real32_T Merge1_g[2];                /* '<S41>/Merge1' */
  real32_T Product_p;                  /* '<S71>/Product' */
  real32_T Gain;                       /* '<S71>/Gain' */
  real32_T Product_j;                  /* '<S88>/Product' */
  real32_T UnitDelay_o;                /* '<S88>/Unit Delay' */
  real32_T Product1_n;                 /* '<S88>/Product1' */
  real32_T Add1;                       /* '<S88>/Add1' */
  real32_T Delay_n;                    /* '<S90>/Delay' */
  real32_T Subtract1_b;                /* '<S90>/Subtract1' */
  real32_T Delay1_kh;                  /* '<S90>/Delay1' */
  real32_T Subtract2;                  /* '<S90>/Subtract2' */
  real32_T Switch3_o;                  /* '<S90>/Switch3' */
  real32_T Switch1_o;                  /* '<S90>/Switch1' */
  real32_T Subtract;                   /* '<S90>/Subtract' */
  real32_T UnitDelay_k;                /* '<S91>/Unit Delay' */
  real32_T Delay_c;                    /* '<S93>/Delay' */
  real32_T Subtract1_i;                /* '<S93>/Subtract1' */
  real32_T Switch3_h;                  /* '<S93>/Switch3' */
  real32_T Delay1_f;                   /* '<S93>/Delay1' */
  real32_T Subtract2_k;                /* '<S93>/Subtract2' */
  real32_T Switch1_f;                  /* '<S93>/Switch1' */
  real32_T Subtract_d;                 /* '<S93>/Subtract' */
  real32_T Delay_p;                    /* '<S95>/Delay' */
  real32_T Subtract1_l;                /* '<S95>/Subtract1' */
  real32_T Switch3_e;                  /* '<S95>/Switch3' */
  real32_T Delay1_d;                   /* '<S95>/Delay1' */
  real32_T Subtract2_j;                /* '<S95>/Subtract2' */
  real32_T Switch1_e;                  /* '<S95>/Switch1' */
  real32_T Subtract_i;                 /* '<S95>/Subtract' */
  real32_T Max;                        /* '<S91>/Max' */
  real32_T Merge_kr;                   /* '<S91>/Merge' */
  real32_T IProdOut;                   /* '<S134>/IProd Out' */
  real32_T Integrator;                 /* '<S137>/Integrator' */
  real32_T DiscreteTimeIntegrator;     /* '<S70>/Discrete-Time Integrator' */
  real32_T Switch2_c;                  /* '<S70>/Switch2' */
  real32_T DataTypeConversion_e;       /* '<S229>/Data Type Conversion' */
  real32_T Switch_o;                   /* '<S230>/Switch' */
  real32_T sqrt3_by_two;               /* '<S39>/sqrt3_by_two' */
  real32_T one_by_two;                 /* '<S39>/one_by_two' */
  real32_T add_c;                      /* '<S39>/add_c' */
  real32_T add_b;                      /* '<S39>/add_b' */
  real32_T One_by_Two[3];              /* '<S229>/One_by_Two' */
  real32_T PWM_Duty_Cycles[3];         /* '<S229>/Sum' */
  real32_T Switch1_c;                  /* '<S40>/Switch1' */
  real32_T acos_c;                     /* '<S158>/acos' */
  real32_T bsin;                       /* '<S158>/bsin' */
  real32_T sum_Ds;                     /* '<S158>/sum_Ds' */
  real32_T bcos;                       /* '<S158>/bcos' */
  real32_T asin_m;                     /* '<S158>/asin' */
  real32_T sum_Qs;                     /* '<S158>/sum_Qs' */
  real32_T Switch_nu[2];               /* '<S159>/Switch' */
  real32_T algDD_o1;
  real32_T algDD_o2;
  real32_T a_plus_2b;                  /* '<S157>/a_plus_2b' */
  real32_T one_by_sqrt3;               /* '<S157>/one_by_sqrt3' */
  real32_T algDD_o1_i;
  real32_T algDD_o2_n;
  real32_T PProdOut;                   /* '<S142>/PProd Out' */
  real32_T Sum_n;                      /* '<S146>/Sum' */
  real32_T Floor_i;                    /* '<S203>/Floor' */
  real32_T Add_p;                      /* '<S203>/Add' */
  real32_T PositionGainIn;             /* '<S29>/PositionGainIn' */
  real32_T In;                         /* '<S94>/In' */
  real32_T In_j;                       /* '<S92>/In' */
  real32_T In_l;                       /* '<S89>/In' */
  real32_T Convert_back;               /* '<S85>/Convert_back' */
  real32_T Convert_back_k;             /* '<S84>/Convert_back' */
  real32_T V_In[2];                    /* '<S43>/V_In' */
  real32_T Th_In;                      /* '<S43>/Th_In' */
  real32_T Idq[2];  /* '<S43>/BusConversion_InsertedFor_Info_out_at_inport_0' */
  real32_T Status_j;/* '<S43>/BusConversion_InsertedFor_Info_out_at_inport_0' */
  real32_T CurrentGainIn[2];           /* '<S42>/CurrentGainIn' */
  real32_T In_f[3];                    /* '<S53>/In' */
  real32_T Add4;                       /* '<S55>/Add4' */
  real32_T Switch_j;                   /* '<S55>/Switch' */
  real32_T second;                     /* '<S61>/Peaks' */
  real32_T first;                      /* '<S60>/Peaks' */
  real32_T In_k;                       /* '<S50>/In' */
  real32_T ThIn;                       /* '<S26>/ThIn' */
  real32_T CurrIn[2];                  /* '<S26>/CurrIn' */
  real32_T StatusIn;                   /* '<S26>/StatusIn' */
  real32_T SCIReceive;                 /* '<S235>/SCI Receive' */
  int32_T DataTypeConversion_e4[2];    /* '<S36>/Data Type Conversion' */
  int32_T Add_h[2];                    /* '<S36>/Add' */
  uint16_T Output;                     /* '<S222>/Output' */
  uint16_T DataTypeConversion_m;       /* '<S82>/Data Type Conversion' */
  uint16_T Get_Integer;                /* '<S74>/Get_Integer' */
  uint16_T DataStoreRead1;             /* '<S36>/Data Store Read1' */
  uint16_T DataStoreRead2;             /* '<S36>/Data Store Read2' */
  uint16_T ADC_C_IN2;                  /* '<S35>/ADC_C_IN2' */
  uint16_T ADC_B_IN2;                  /* '<S35>/ADC_B_IN2' */
  uint16_T FixPtSum1;                  /* '<S226>/FixPt Sum1' */
  uint16_T FixPtSwitch;                /* '<S227>/FixPt Switch' */
  uint16_T Switch1_n[3];               /* '<S230>/Switch1' */
  uint16_T Scale_to_PWM_Counter_PRD[3];/* '<S230>/Scale_to_PWM_Counter_PRD' */
  uint16_T Switch_c;                   /* '<S15>/Switch' */
  uint16_T Divide;                     /* '<S14>/Divide' */
  uint16_T Divide1;                    /* '<S14>/Divide1' */
  uint16_T ForIterator;                /* '<S17>/For Iterator' */
  uint16_T ADC_A_IN0;                  /* '<S17>/ADC_A_IN0' */
  uint16_T ADC_B_IN0;                  /* '<S17>/ADC_B_IN0' */
  uint16_T Memory;                     /* '<S22>/Memory' */
  uint16_T Sum_h;                      /* '<S22>/Sum' */
  uint16_T Memory1;                    /* '<S22>/Memory1' */
  uint16_T Sum1;                       /* '<S22>/Sum1' */
  uint16_T DataTypeConversion3;        /* '<S233>/Data Type Conversion3' */
  int16_T WhileIterator;               /* '<S220>/While Iterator' */
  int16_T Convert_uint16;              /* '<S85>/Convert_uint16' */
  int16_T Convert_uint16_f;            /* '<S84>/Convert_uint16' */
  boolean_T RT1;                       /* '<S1>/RT1' */
  boolean_T UnitDelay1_m;              /* '<S30>/Unit Delay1' */
  boolean_T NOT1;                      /* '<S30>/NOT1' */
  boolean_T AND1;                      /* '<S30>/AND1' */
  boolean_T UnitDelay2;                /* '<S30>/Unit Delay2' */
  boolean_T AND;                       /* '<S30>/AND' */
  boolean_T OR;                        /* '<S30>/OR' */
  boolean_T Compare;                   /* '<S180>/Compare' */
  boolean_T Compare_c;                 /* '<S183>/Compare' */
  boolean_T Compare_l;                 /* '<S182>/Compare' */
  boolean_T AND1_c;                    /* '<S175>/AND1' */
  boolean_T Compare_lz;                /* '<S186>/Compare' */
  boolean_T Compare_e;                 /* '<S185>/Compare' */
  boolean_T AND1_b;                    /* '<S176>/AND1' */
  boolean_T Compare_ew;                /* '<S177>/Compare' */
  boolean_T Compare_j;                 /* '<S178>/Compare' */
  boolean_T AND_j;                     /* '<S173>/AND' */
  boolean_T Switch_p;                  /* '<S162>/Switch' */
  boolean_T OR_j;                      /* '<S67>/OR' */
  boolean_T AND_b;                     /* '<S67>/AND' */
  boolean_T Switch1_m;                 /* '<S69>/Switch1' */
  boolean_T Compare_g;                 /* '<S83>/Compare' */
  boolean_T Compare_f;                 /* '<S170>/Compare' */
  boolean_T Compare_fx;                /* '<S169>/Compare' */
  boolean_T FirstPulse;                /* '<S167>/AND1' */
  boolean_T Compare_m;                 /* '<S172>/Compare' */
  boolean_T Compare_k;                 /* '<S171>/Compare' */
  boolean_T SecondPulse;               /* '<S168>/AND2' */
  boolean_T Compare_f2;                /* '<S166>/Compare' */
  boolean_T AND_h;                     /* '<S51>/AND' */
  boolean_T Compare_ej;                /* '<S59>/Compare' */
  boolean_T Compare_mh;                /* '<S57>/Compare' */
  boolean_T Compare_a;                 /* '<S58>/Compare' */
  boolean_T Compare_p;                 /* '<S165>/Compare' */
  boolean_T AND1_j;                    /* '<S51>/AND1' */
  boolean_T Compare_i;                 /* '<S49>/Compare' */
  boolean_T Compare_fe;                /* '<S48>/Compare' */
  boolean_T AND_k;                     /* '<S40>/AND' */
  boolean_T UnitDelay1_p;              /* '<S40>/Unit Delay1' */
  boolean_T UnitDelay1_e;              /* '<S6>/Unit Delay1' */
  boolean_T NOT;                       /* '<S6>/NOT' */
  boolean_T AND_c;                     /* '<S69>/AND' */
  boolean_T AND1_f;                    /* '<S69>/AND1' */
  boolean_T Compare_gm;                /* '<S179>/Compare' */
  boolean_T AND_o;                     /* '<S174>/AND' */
  boolean_T Compare_gp;                /* '<S96>/Compare' */
  boolean_T Compare_mg;                /* '<S97>/Compare' */
  boolean_T RelationalOperator;        /* '<S91>/Relational Operator' */
  boolean_T Compare_h;                 /* '<S181>/Compare' */
  boolean_T AND_d;                     /* '<S175>/AND' */
  boolean_T Compare_jw;                /* '<S101>/Compare' */
  boolean_T Compare_li;                /* '<S102>/Compare' */
  boolean_T RelationalOperator1;       /* '<S91>/Relational Operator1' */
  boolean_T Compare_lx;                /* '<S184>/Compare' */
  boolean_T AND_k4;                    /* '<S176>/AND' */
  boolean_T Compare_lp;                /* '<S103>/Compare' */
  boolean_T Compare_k5;                /* '<S104>/Compare' */
  boolean_T RelationalOperator2;       /* '<S91>/Relational Operator2' */
  boolean_T Switch_ck;                 /* '<S164>/Switch' */
  boolean_T AND_hb;                    /* '<S164>/AND' */
  boolean_T NOT2;                      /* '<S30>/NOT2' */
  boolean_T Compare_kr;                /* '<S197>/Compare' */
  boolean_T Compare_o;                 /* '<S198>/Compare' */
  boolean_T Compare_l4;                /* '<S187>/Compare' */
  boolean_T Compare_n;                 /* '<S188>/Compare' */
  boolean_T NOT2_e;                    /* '<S69>/NOT2' */
  boolean_T AND2;                      /* '<S69>/AND2' */
  boolean_T AND3;                      /* '<S69>/AND3' */
  boolean_T NOT_i;                     /* '<S13>/NOT' */
  boolean_T DataTypeConversion1_o;     /* '<S7>/Data Type Conversion1' */
  B_TwoinputsCRL_mcb_ipmsm_pos__T TwoinputsCRL_n;/* '<S73>/Two inputs CRL' */
  B_TwoinputsCRL_mcb_ipmsm_pos__T TwoinputsCRL;/* '<S64>/Two inputs CRL' */
  B_SPIMasterTransfer_mcb_ipmsm_T SPIMasterTransfer1;/* '<S23>/SPI Master Transfer' */
  B_SPIMasterTransfer_mcb_ipmsm_T SPIMasterTransfer;/* '<S23>/SPI Master Transfer' */
} B_mcb_ipmsm_pos_est_f28379d_T;

/* Block states (default storage) for system '<Root>' */
typedef struct {
  real32_T UnitDelay_DSTATE[2];        /* '<S67>/Unit Delay' */
  real32_T UnitDelay1_DSTATE;          /* '<S69>/Unit Delay1' */
  real32_T Delay_DSTATE;               /* '<S44>/Delay' */
  real32_T Delay_DSTATE_k;             /* '<S56>/Delay' */
  real32_T TappedDelay1_X[50];         /* '<S40>/Tapped Delay1' */
  real32_T UnitDelay_DSTATE_m;         /* '<S88>/Unit Delay' */
  real32_T Delay_DSTATE_j;             /* '<S90>/Delay' */
  real32_T Delay1_DSTATE;              /* '<S90>/Delay1' */
  real32_T UnitDelay_DSTATE_o;         /* '<S91>/Unit Delay' */
  real32_T Delay_DSTATE_f;             /* '<S93>/Delay' */
  real32_T Delay1_DSTATE_p;            /* '<S93>/Delay1' */
  real32_T Delay_DSTATE_d;             /* '<S95>/Delay' */
  real32_T Delay1_DSTATE_h;            /* '<S95>/Delay1' */
  real32_T Integrator_DSTATE;          /* '<S137>/Integrator' */
  real32_T DiscreteTimeIntegrator_DSTATE;/* '<S70>/Discrete-Time Integrator' */
  uint32_T Delay1_DSTATE_e;            /* '<S164>/Delay1' */
  uint32_T UnitDelay_DSTATE_n;         /* '<S40>/Unit Delay' */
  uint32_T Delay1_DSTATE_a;            /* '<S40>/Delay1' */
  int32_T Add_DWORK1[2];               /* '<S36>/Add' */
  int32_T DRV830xEnable_FRAC_LEN;      /* '<S230>/DRV830x Enable' */
  int32_T DigitalOutput_FRAC_LEN;      /* '<S25>/Digital Output' */
  int32_T DigitalOutput_FRAC_LEN_e;    /* '<S15>/Digital Output' */
  int32_T DigitalOutput1_FRAC_LEN;     /* '<S15>/Digital Output1' */
  uint32_T Add2_DWORK1;                /* '<S164>/Add2' */
  uint32_T Sum_DWORK1[4];              /* '<S74>/Sum' */
  uint16_T Output_DSTATE;              /* '<S222>/Output' */
  uint16_T IaOffset;                   /* '<Root>/Data Store Memory1' */
  uint16_T IbOffset;                   /* '<Root>/Data Store Memory2' */
  uint16_T Memory_PreviousInput;       /* '<S22>/Memory' */
  uint16_T Memory1_PreviousInput;      /* '<S22>/Memory1' */
  boolean_T UnitDelay1_DSTATE_p;       /* '<S30>/Unit Delay1' */
  boolean_T UnitDelay2_DSTATE;         /* '<S30>/Unit Delay2' */
  boolean_T UnitDelay1_DSTATE_n;       /* '<S40>/Unit Delay1' */
  boolean_T UnitDelay1_DSTATE_k;       /* '<S6>/Unit Delay1' */
  int16_T Integrator_PrevResetState;   /* '<S137>/Integrator' */
  int16_T DiscreteTimeIntegrator_PrevRese;/* '<S70>/Discrete-Time Integrator' */
  uint16_T DiscreteTimeIntegrator_IC_LOADI;/* '<S70>/Discrete-Time Integrator' */
  volatile boolean_T RT1_Buffer0;      /* '<S1>/RT1' */
  boolean_T icLoad;                    /* '<S44>/Delay' */
  boolean_T ThirdOpenloop_MODE;        /* '<S69>/Third Openloop' */
  boolean_T SecondOpenloop_MODE;       /* '<S69>/Second Openloop' */
  boolean_T FirstOpenloop_MODE;        /* '<S69>/First Openloop' */
  boolean_T OutputSwitch_MODE;         /* '<S29>/Output Switch' */
  boolean_T InputSwitch_MODE;          /* '<S29>/Input Switch' */
  DW_SPIMasterTransfer_mcb_ipms_T SPIMasterTransfer1;/* '<S23>/SPI Master Transfer' */
  DW_SPIMasterTransfer_mcb_ipms_T SPIMasterTransfer;/* '<S23>/SPI Master Transfer' */
} DW_mcb_ipmsm_pos_est_f28379d_T;

/* Zero-crossing (trigger) state */
typedef struct {
  ZCSigState Delay1_Reset_ZCE;         /* '<S164>/Delay1' */
  ZCSigState Delay_Reset_ZCE;          /* '<S44>/Delay' */
  ZCSigState Delay_Reset_ZCE_d;        /* '<S56>/Delay' */
  ZCSigState Delay1_Reset_ZCE_o;       /* '<S40>/Delay1' */
  ZCSigState Delay_Reset_ZCE_a;        /* '<S90>/Delay' */
  ZCSigState Delay1_Reset_ZCE_b;       /* '<S90>/Delay1' */
  ZCSigState Delay_Reset_ZCE_a2;       /* '<S93>/Delay' */
  ZCSigState Delay1_Reset_ZCE_p;       /* '<S93>/Delay1' */
  ZCSigState Delay_Reset_ZCE_m;        /* '<S95>/Delay' */
  ZCSigState Delay1_Reset_ZCE_od;      /* '<S95>/Delay1' */
} PrevZCX_mcb_ipmsm_pos_est_f28_T;

/* Invariant block signals (default storage) */
typedef struct {
  const uint32_T Width;                /* '<S219>/Width' */
  const boolean_T NOT;                 /* '<S29>/NOT' */
  const boolean_T NOT1;                /* '<S29>/NOT1' */
} ConstB_mcb_ipmsm_pos_est_f283_T;

/* Constant parameters (default storage) */
typedef struct {
  /* Computed Parameter: sine_table_values_Value
   * Referenced by: '<S74>/sine_table_values'
   */
  real32_T sine_table_values_Value[1002];
} ConstP_mcb_ipmsm_pos_est_f283_T;

/* Real-time Model Data Structure */
struct tag_RTM_mcb_ipmsm_pos_est_f28_T {
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
extern B_mcb_ipmsm_pos_est_f28379d_T mcb_ipmsm_pos_est_f28379d_B;

/* Block states (default storage) */
extern DW_mcb_ipmsm_pos_est_f28379d_T mcb_ipmsm_pos_est_f28379d_DW;

/* Zero-crossing (trigger) state */
extern PrevZCX_mcb_ipmsm_pos_est_f28_T mcb_ipmsm_pos_est_f2837_PrevZCX;
extern const ConstB_mcb_ipmsm_pos_est_f283_T mcb_ipmsm_pos_est_f28379_ConstB;/* constant block i/o */

/* Constant parameters (default storage) */
extern const ConstP_mcb_ipmsm_pos_est_f283_T mcb_ipmsm_pos_est_f28379_ConstP;

/* External function called from main */
extern void mcb_ipmsm_pos_est_f28379d_SetEventsForThisBaseStep(boolean_T
  *eventFlags);

/* Model entry point functions */
extern void mcb_ipmsm_pos_est_f28379d_initialize(void);
extern void mcb_ipmsm_pos_est_f28379d_step0(void);
extern void mcb_ipmsm_pos_est_f28379d_step1(void);
extern void mcb_ipmsm_pos_est_f28379d_terminate(void);

/* Real-time Model object */
extern RT_MODEL_mcb_ipmsm_pos_est_f2_T *const mcb_ipmsm_pos_est_f28379d_M;
extern volatile boolean_T stopRequested;
extern volatile boolean_T runModel;

#ifdef __cpluscplus

extern "C"
{

#endif

  interrupt void SCIA_RX_INT(void);
  void mcb_ipmsm_pos_est_f28379d_configure_interrupts (void);
  void mcb_ipmsm_pos_est_f28379d_unconfigure_interrupts (void);

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
 * '<Root>' : 'mcb_ipmsm_pos_est_f28379d'
 * '<S1>'   : 'mcb_ipmsm_pos_est_f28379d/Embedded System'
 * '<S2>'   : 'mcb_ipmsm_pos_est_f28379d/Inverter and Motor'
 * '<S3>'   : 'mcb_ipmsm_pos_est_f28379d/Embedded System/HW Interrupt'
 * '<S4>'   : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Hardware Init'
 * '<S5>'   : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Heartbeat LED'
 * '<S6>'   : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Initial Position Estimation (IPE) Algorithm'
 * '<S7>'   : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Serial Receive'
 * '<S8>'   : 'mcb_ipmsm_pos_est_f28379d/Embedded System/HW Interrupt/Code generation'
 * '<S9>'   : 'mcb_ipmsm_pos_est_f28379d/Embedded System/HW Interrupt/Code generation/HWI_SCIA_RX_INT'
 * '<S10>'  : 'mcb_ipmsm_pos_est_f28379d/Embedded System/HW Interrupt/Code generation/HWI_SCIA_RX_INT/ECSoC'
 * '<S11>'  : 'mcb_ipmsm_pos_est_f28379d/Embedded System/HW Interrupt/Code generation/HWI_SCIA_RX_INT/ECSoC/ECSimCodegen'
 * '<S12>'  : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Hardware Init/Variant Subsystem'
 * '<S13>'  : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Hardware Init/Variant Subsystem/Code Generation'
 * '<S14>'  : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Hardware Init/Variant Subsystem/Code Generation/Calculate ADC Offset '
 * '<S15>'  : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Hardware Init/Variant Subsystem/Code Generation/DRV Enable'
 * '<S16>'  : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Hardware Init/Variant Subsystem/Code Generation/Default ADC Offset'
 * '<S17>'  : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Hardware Init/Variant Subsystem/Code Generation/Calculate ADC Offset /For Iterator Subsystem'
 * '<S18>'  : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Hardware Init/Variant Subsystem/Code Generation/Calculate ADC Offset /If Action Subsystem'
 * '<S19>'  : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Hardware Init/Variant Subsystem/Code Generation/Calculate ADC Offset /If Action Subsystem1'
 * '<S20>'  : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Hardware Init/Variant Subsystem/Code Generation/Calculate ADC Offset /If Action Subsystem2'
 * '<S21>'  : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Hardware Init/Variant Subsystem/Code Generation/Calculate ADC Offset /If Action Subsystem3'
 * '<S22>'  : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Hardware Init/Variant Subsystem/Code Generation/Calculate ADC Offset /For Iterator Subsystem/If Action Subsystem'
 * '<S23>'  : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Hardware Init/Variant Subsystem/Code Generation/DRV Enable/ADC Gain setting'
 * '<S24>'  : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Heartbeat LED/Heartbeat LED'
 * '<S25>'  : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Heartbeat LED/Heartbeat LED/Code generation'
 * '<S26>'  : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Initial Position Estimation (IPE) Algorithm/Hold'
 * '<S27>'  : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Initial Position Estimation (IPE) Algorithm/Input and Scaling'
 * '<S28>'  : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Initial Position Estimation (IPE) Algorithm/Inverse Clarke Transform'
 * '<S29>'  : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Initial Position Estimation (IPE) Algorithm/Pulsating High Freq Observer'
 * '<S30>'  : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Initial Position Estimation (IPE) Algorithm/Reset Logic'
 * '<S31>'  : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Initial Position Estimation (IPE) Algorithm/SCI_Tx'
 * '<S32>'  : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Initial Position Estimation (IPE) Algorithm/Scaling and Output'
 * '<S33>'  : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Initial Position Estimation (IPE) Algorithm/Input and Scaling/HW_Inputs'
 * '<S34>'  : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Initial Position Estimation (IPE) Algorithm/Input and Scaling/Input Scaling'
 * '<S35>'  : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Initial Position Estimation (IPE) Algorithm/Input and Scaling/HW_Inputs/Sensor Driver Blocks (codegen)'
 * '<S36>'  : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Initial Position Estimation (IPE) Algorithm/Input and Scaling/Input Scaling/Calculate Phase Currents'
 * '<S37>'  : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Initial Position Estimation (IPE) Algorithm/Input and Scaling/Input Scaling/Calculate Phase Currents/Data_Type'
 * '<S38>'  : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Initial Position Estimation (IPE) Algorithm/Input and Scaling/Input Scaling/Calculate Phase Currents/Data_Type/Data_Type_Float'
 * '<S39>'  : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Initial Position Estimation (IPE) Algorithm/Inverse Clarke Transform/Two phase input'
 * '<S40>'  : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Initial Position Estimation (IPE) Algorithm/Pulsating High Freq Observer/Convergence Calculation'
 * '<S41>'  : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Initial Position Estimation (IPE) Algorithm/Pulsating High Freq Observer/Dual Pulse (DP) Injection'
 * '<S42>'  : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Initial Position Estimation (IPE) Algorithm/Pulsating High Freq Observer/Input Switch'
 * '<S43>'  : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Initial Position Estimation (IPE) Algorithm/Pulsating High Freq Observer/Output Switch'
 * '<S44>'  : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Initial Position Estimation (IPE) Algorithm/Pulsating High Freq Observer/Pulsating High Frequency (PHF)'
 * '<S45>'  : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Initial Position Estimation (IPE) Algorithm/Pulsating High Freq Observer/Sequence Control Flow'
 * '<S46>'  : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Initial Position Estimation (IPE) Algorithm/Pulsating High Freq Observer/Wraparound In'
 * '<S47>'  : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Initial Position Estimation (IPE) Algorithm/Pulsating High Freq Observer/Wraparound Out'
 * '<S48>'  : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Initial Position Estimation (IPE) Algorithm/Pulsating High Freq Observer/Convergence Calculation/Compare To Constant'
 * '<S49>'  : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Initial Position Estimation (IPE) Algorithm/Pulsating High Freq Observer/Convergence Calculation/Compare To Constant1'
 * '<S50>'  : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Initial Position Estimation (IPE) Algorithm/Pulsating High Freq Observer/Convergence Calculation/Switch'
 * '<S51>'  : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Initial Position Estimation (IPE) Algorithm/Pulsating High Freq Observer/Dual Pulse (DP) Injection/Compensation Calculation'
 * '<S52>'  : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Initial Position Estimation (IPE) Algorithm/Pulsating High Freq Observer/Dual Pulse (DP) Injection/If Action Subsystem'
 * '<S53>'  : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Initial Position Estimation (IPE) Algorithm/Pulsating High Freq Observer/Dual Pulse (DP) Injection/If Action Subsystem1'
 * '<S54>'  : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Initial Position Estimation (IPE) Algorithm/Pulsating High Freq Observer/Dual Pulse (DP) Injection/Pulse Injection'
 * '<S55>'  : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Initial Position Estimation (IPE) Algorithm/Pulsating High Freq Observer/Dual Pulse (DP) Injection/Compensation Calculation/Compute Compensation'
 * '<S56>'  : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Initial Position Estimation (IPE) Algorithm/Pulsating High Freq Observer/Dual Pulse (DP) Injection/Compensation Calculation/PeakMeas'
 * '<S57>'  : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Initial Position Estimation (IPE) Algorithm/Pulsating High Freq Observer/Dual Pulse (DP) Injection/Compensation Calculation/PeakMeas/Compare To Constant'
 * '<S58>'  : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Initial Position Estimation (IPE) Algorithm/Pulsating High Freq Observer/Dual Pulse (DP) Injection/Compensation Calculation/PeakMeas/Compare To Constant1'
 * '<S59>'  : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Initial Position Estimation (IPE) Algorithm/Pulsating High Freq Observer/Dual Pulse (DP) Injection/Compensation Calculation/PeakMeas/Compare To Zero1'
 * '<S60>'  : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Initial Position Estimation (IPE) Algorithm/Pulsating High Freq Observer/Dual Pulse (DP) Injection/Compensation Calculation/PeakMeas/Save First Pulse Peak'
 * '<S61>'  : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Initial Position Estimation (IPE) Algorithm/Pulsating High Freq Observer/Dual Pulse (DP) Injection/Compensation Calculation/PeakMeas/Save Second Pulse Peak'
 * '<S62>'  : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Initial Position Estimation (IPE) Algorithm/Pulsating High Freq Observer/Dual Pulse (DP) Injection/Pulse Injection/If Action Subsystem'
 * '<S63>'  : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Initial Position Estimation (IPE) Algorithm/Pulsating High Freq Observer/Dual Pulse (DP) Injection/Pulse Injection/If Action Subsystem1'
 * '<S64>'  : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Initial Position Estimation (IPE) Algorithm/Pulsating High Freq Observer/Dual Pulse (DP) Injection/Pulse Injection/Inverse Park Transform'
 * '<S65>'  : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Initial Position Estimation (IPE) Algorithm/Pulsating High Freq Observer/Dual Pulse (DP) Injection/Pulse Injection/Inverse Park Transform/Two inputs CRL'
 * '<S66>'  : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Initial Position Estimation (IPE) Algorithm/Pulsating High Freq Observer/Dual Pulse (DP) Injection/Pulse Injection/Inverse Park Transform/Two inputs CRL/Switch_Axis'
 * '<S67>'  : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Initial Position Estimation (IPE) Algorithm/Pulsating High Freq Observer/Pulsating High Frequency (PHF)/HF Injection'
 * '<S68>'  : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Initial Position Estimation (IPE) Algorithm/Pulsating High Freq Observer/Pulsating High Frequency (PHF)/IIR Filter'
 * '<S69>'  : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Initial Position Estimation (IPE) Algorithm/Pulsating High Freq Observer/Pulsating High Frequency (PHF)/Initial Condition'
 * '<S70>'  : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Initial Position Estimation (IPE) Algorithm/Pulsating High Freq Observer/Pulsating High Frequency (PHF)/Observer Block'
 * '<S71>'  : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Initial Position Estimation (IPE) Algorithm/Pulsating High Freq Observer/Pulsating High Frequency (PHF)/Signal Processing'
 * '<S72>'  : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Initial Position Estimation (IPE) Algorithm/Pulsating High Freq Observer/Pulsating High Frequency (PHF)/HF Injection/If Action Subsystem3'
 * '<S73>'  : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Initial Position Estimation (IPE) Algorithm/Pulsating High Freq Observer/Pulsating High Frequency (PHF)/HF Injection/Inverse Park Transform'
 * '<S74>'  : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Initial Position Estimation (IPE) Algorithm/Pulsating High Freq Observer/Pulsating High Frequency (PHF)/HF Injection/Sine-Cosine Lookup'
 * '<S75>'  : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Initial Position Estimation (IPE) Algorithm/Pulsating High Freq Observer/Pulsating High Frequency (PHF)/HF Injection/If Action Subsystem3/If Action Subsystem'
 * '<S76>'  : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Initial Position Estimation (IPE) Algorithm/Pulsating High Freq Observer/Pulsating High Frequency (PHF)/HF Injection/If Action Subsystem3/If Action Subsystem1'
 * '<S77>'  : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Initial Position Estimation (IPE) Algorithm/Pulsating High Freq Observer/Pulsating High Frequency (PHF)/HF Injection/If Action Subsystem3/If Action Subsystem2'
 * '<S78>'  : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Initial Position Estimation (IPE) Algorithm/Pulsating High Freq Observer/Pulsating High Frequency (PHF)/HF Injection/If Action Subsystem3/If Action Subsystem3'
 * '<S79>'  : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Initial Position Estimation (IPE) Algorithm/Pulsating High Freq Observer/Pulsating High Frequency (PHF)/HF Injection/Inverse Park Transform/Two inputs CRL'
 * '<S80>'  : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Initial Position Estimation (IPE) Algorithm/Pulsating High Freq Observer/Pulsating High Frequency (PHF)/HF Injection/Inverse Park Transform/Two inputs CRL/Switch_Axis'
 * '<S81>'  : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Initial Position Estimation (IPE) Algorithm/Pulsating High Freq Observer/Pulsating High Frequency (PHF)/HF Injection/Sine-Cosine Lookup/Interpolation'
 * '<S82>'  : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Initial Position Estimation (IPE) Algorithm/Pulsating High Freq Observer/Pulsating High Frequency (PHF)/HF Injection/Sine-Cosine Lookup/WrapUp'
 * '<S83>'  : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Initial Position Estimation (IPE) Algorithm/Pulsating High Freq Observer/Pulsating High Frequency (PHF)/HF Injection/Sine-Cosine Lookup/WrapUp/Compare To Zero'
 * '<S84>'  : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Initial Position Estimation (IPE) Algorithm/Pulsating High Freq Observer/Pulsating High Frequency (PHF)/HF Injection/Sine-Cosine Lookup/WrapUp/If Action Subsystem'
 * '<S85>'  : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Initial Position Estimation (IPE) Algorithm/Pulsating High Freq Observer/Pulsating High Frequency (PHF)/HF Injection/Sine-Cosine Lookup/WrapUp/If Action Subsystem1'
 * '<S86>'  : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Initial Position Estimation (IPE) Algorithm/Pulsating High Freq Observer/Pulsating High Frequency (PHF)/IIR Filter/IIR Filter'
 * '<S87>'  : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Initial Position Estimation (IPE) Algorithm/Pulsating High Freq Observer/Pulsating High Frequency (PHF)/IIR Filter/IIR Filter/Low-pass'
 * '<S88>'  : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Initial Position Estimation (IPE) Algorithm/Pulsating High Freq Observer/Pulsating High Frequency (PHF)/IIR Filter/IIR Filter/Low-pass/IIR Low Pass Filter'
 * '<S89>'  : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Initial Position Estimation (IPE) Algorithm/Pulsating High Freq Observer/Pulsating High Frequency (PHF)/Initial Condition/First Openloop'
 * '<S90>'  : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Initial Position Estimation (IPE) Algorithm/Pulsating High Freq Observer/Pulsating High Frequency (PHF)/Initial Condition/First Peaktopeak'
 * '<S91>'  : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Initial Position Estimation (IPE) Algorithm/Pulsating High Freq Observer/Pulsating High Frequency (PHF)/Initial Condition/IC for Maximum peakt-peak'
 * '<S92>'  : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Initial Position Estimation (IPE) Algorithm/Pulsating High Freq Observer/Pulsating High Frequency (PHF)/Initial Condition/Second Openloop'
 * '<S93>'  : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Initial Position Estimation (IPE) Algorithm/Pulsating High Freq Observer/Pulsating High Frequency (PHF)/Initial Condition/Seoncd Peaktopeak'
 * '<S94>'  : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Initial Position Estimation (IPE) Algorithm/Pulsating High Freq Observer/Pulsating High Frequency (PHF)/Initial Condition/Third Openloop'
 * '<S95>'  : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Initial Position Estimation (IPE) Algorithm/Pulsating High Freq Observer/Pulsating High Frequency (PHF)/Initial Condition/Third Peaktopeak'
 * '<S96>'  : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Initial Position Estimation (IPE) Algorithm/Pulsating High Freq Observer/Pulsating High Frequency (PHF)/Initial Condition/First Peaktopeak/Compare To Zero1'
 * '<S97>'  : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Initial Position Estimation (IPE) Algorithm/Pulsating High Freq Observer/Pulsating High Frequency (PHF)/Initial Condition/First Peaktopeak/Compare To Zero2'
 * '<S98>'  : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Initial Position Estimation (IPE) Algorithm/Pulsating High Freq Observer/Pulsating High Frequency (PHF)/Initial Condition/IC for Maximum peakt-peak/First IC'
 * '<S99>'  : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Initial Position Estimation (IPE) Algorithm/Pulsating High Freq Observer/Pulsating High Frequency (PHF)/Initial Condition/IC for Maximum peakt-peak/Second IC'
 * '<S100>' : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Initial Position Estimation (IPE) Algorithm/Pulsating High Freq Observer/Pulsating High Frequency (PHF)/Initial Condition/IC for Maximum peakt-peak/Third IC'
 * '<S101>' : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Initial Position Estimation (IPE) Algorithm/Pulsating High Freq Observer/Pulsating High Frequency (PHF)/Initial Condition/Seoncd Peaktopeak/Compare To Zero1'
 * '<S102>' : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Initial Position Estimation (IPE) Algorithm/Pulsating High Freq Observer/Pulsating High Frequency (PHF)/Initial Condition/Seoncd Peaktopeak/Compare To Zero2'
 * '<S103>' : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Initial Position Estimation (IPE) Algorithm/Pulsating High Freq Observer/Pulsating High Frequency (PHF)/Initial Condition/Third Peaktopeak/Compare To Zero1'
 * '<S104>' : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Initial Position Estimation (IPE) Algorithm/Pulsating High Freq Observer/Pulsating High Frequency (PHF)/Initial Condition/Third Peaktopeak/Compare To Zero2'
 * '<S105>' : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Initial Position Estimation (IPE) Algorithm/Pulsating High Freq Observer/Pulsating High Frequency (PHF)/Observer Block/Discrete PI Controller'
 * '<S106>' : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Initial Position Estimation (IPE) Algorithm/Pulsating High Freq Observer/Pulsating High Frequency (PHF)/Observer Block/Discrete PI Controller/Anti-windup'
 * '<S107>' : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Initial Position Estimation (IPE) Algorithm/Pulsating High Freq Observer/Pulsating High Frequency (PHF)/Observer Block/Discrete PI Controller/D Gain'
 * '<S108>' : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Initial Position Estimation (IPE) Algorithm/Pulsating High Freq Observer/Pulsating High Frequency (PHF)/Observer Block/Discrete PI Controller/Filter'
 * '<S109>' : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Initial Position Estimation (IPE) Algorithm/Pulsating High Freq Observer/Pulsating High Frequency (PHF)/Observer Block/Discrete PI Controller/Filter ICs'
 * '<S110>' : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Initial Position Estimation (IPE) Algorithm/Pulsating High Freq Observer/Pulsating High Frequency (PHF)/Observer Block/Discrete PI Controller/I Gain'
 * '<S111>' : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Initial Position Estimation (IPE) Algorithm/Pulsating High Freq Observer/Pulsating High Frequency (PHF)/Observer Block/Discrete PI Controller/Ideal P Gain'
 * '<S112>' : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Initial Position Estimation (IPE) Algorithm/Pulsating High Freq Observer/Pulsating High Frequency (PHF)/Observer Block/Discrete PI Controller/Ideal P Gain Fdbk'
 * '<S113>' : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Initial Position Estimation (IPE) Algorithm/Pulsating High Freq Observer/Pulsating High Frequency (PHF)/Observer Block/Discrete PI Controller/Integrator'
 * '<S114>' : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Initial Position Estimation (IPE) Algorithm/Pulsating High Freq Observer/Pulsating High Frequency (PHF)/Observer Block/Discrete PI Controller/Integrator ICs'
 * '<S115>' : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Initial Position Estimation (IPE) Algorithm/Pulsating High Freq Observer/Pulsating High Frequency (PHF)/Observer Block/Discrete PI Controller/N Copy'
 * '<S116>' : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Initial Position Estimation (IPE) Algorithm/Pulsating High Freq Observer/Pulsating High Frequency (PHF)/Observer Block/Discrete PI Controller/N Gain'
 * '<S117>' : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Initial Position Estimation (IPE) Algorithm/Pulsating High Freq Observer/Pulsating High Frequency (PHF)/Observer Block/Discrete PI Controller/P Copy'
 * '<S118>' : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Initial Position Estimation (IPE) Algorithm/Pulsating High Freq Observer/Pulsating High Frequency (PHF)/Observer Block/Discrete PI Controller/Parallel P Gain'
 * '<S119>' : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Initial Position Estimation (IPE) Algorithm/Pulsating High Freq Observer/Pulsating High Frequency (PHF)/Observer Block/Discrete PI Controller/Reset Signal'
 * '<S120>' : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Initial Position Estimation (IPE) Algorithm/Pulsating High Freq Observer/Pulsating High Frequency (PHF)/Observer Block/Discrete PI Controller/Saturation'
 * '<S121>' : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Initial Position Estimation (IPE) Algorithm/Pulsating High Freq Observer/Pulsating High Frequency (PHF)/Observer Block/Discrete PI Controller/Saturation Fdbk'
 * '<S122>' : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Initial Position Estimation (IPE) Algorithm/Pulsating High Freq Observer/Pulsating High Frequency (PHF)/Observer Block/Discrete PI Controller/Sum'
 * '<S123>' : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Initial Position Estimation (IPE) Algorithm/Pulsating High Freq Observer/Pulsating High Frequency (PHF)/Observer Block/Discrete PI Controller/Sum Fdbk'
 * '<S124>' : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Initial Position Estimation (IPE) Algorithm/Pulsating High Freq Observer/Pulsating High Frequency (PHF)/Observer Block/Discrete PI Controller/Tracking Mode'
 * '<S125>' : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Initial Position Estimation (IPE) Algorithm/Pulsating High Freq Observer/Pulsating High Frequency (PHF)/Observer Block/Discrete PI Controller/Tracking Mode Sum'
 * '<S126>' : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Initial Position Estimation (IPE) Algorithm/Pulsating High Freq Observer/Pulsating High Frequency (PHF)/Observer Block/Discrete PI Controller/Tsamp - Integral'
 * '<S127>' : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Initial Position Estimation (IPE) Algorithm/Pulsating High Freq Observer/Pulsating High Frequency (PHF)/Observer Block/Discrete PI Controller/Tsamp - Ngain'
 * '<S128>' : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Initial Position Estimation (IPE) Algorithm/Pulsating High Freq Observer/Pulsating High Frequency (PHF)/Observer Block/Discrete PI Controller/postSat Signal'
 * '<S129>' : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Initial Position Estimation (IPE) Algorithm/Pulsating High Freq Observer/Pulsating High Frequency (PHF)/Observer Block/Discrete PI Controller/preSat Signal'
 * '<S130>' : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Initial Position Estimation (IPE) Algorithm/Pulsating High Freq Observer/Pulsating High Frequency (PHF)/Observer Block/Discrete PI Controller/Anti-windup/Passthrough'
 * '<S131>' : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Initial Position Estimation (IPE) Algorithm/Pulsating High Freq Observer/Pulsating High Frequency (PHF)/Observer Block/Discrete PI Controller/D Gain/Disabled'
 * '<S132>' : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Initial Position Estimation (IPE) Algorithm/Pulsating High Freq Observer/Pulsating High Frequency (PHF)/Observer Block/Discrete PI Controller/Filter/Disabled'
 * '<S133>' : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Initial Position Estimation (IPE) Algorithm/Pulsating High Freq Observer/Pulsating High Frequency (PHF)/Observer Block/Discrete PI Controller/Filter ICs/Disabled'
 * '<S134>' : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Initial Position Estimation (IPE) Algorithm/Pulsating High Freq Observer/Pulsating High Frequency (PHF)/Observer Block/Discrete PI Controller/I Gain/External Parameters'
 * '<S135>' : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Initial Position Estimation (IPE) Algorithm/Pulsating High Freq Observer/Pulsating High Frequency (PHF)/Observer Block/Discrete PI Controller/Ideal P Gain/Passthrough'
 * '<S136>' : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Initial Position Estimation (IPE) Algorithm/Pulsating High Freq Observer/Pulsating High Frequency (PHF)/Observer Block/Discrete PI Controller/Ideal P Gain Fdbk/Disabled'
 * '<S137>' : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Initial Position Estimation (IPE) Algorithm/Pulsating High Freq Observer/Pulsating High Frequency (PHF)/Observer Block/Discrete PI Controller/Integrator/Discrete'
 * '<S138>' : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Initial Position Estimation (IPE) Algorithm/Pulsating High Freq Observer/Pulsating High Frequency (PHF)/Observer Block/Discrete PI Controller/Integrator ICs/Internal IC'
 * '<S139>' : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Initial Position Estimation (IPE) Algorithm/Pulsating High Freq Observer/Pulsating High Frequency (PHF)/Observer Block/Discrete PI Controller/N Copy/Disabled wSignal Specification'
 * '<S140>' : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Initial Position Estimation (IPE) Algorithm/Pulsating High Freq Observer/Pulsating High Frequency (PHF)/Observer Block/Discrete PI Controller/N Gain/Disabled'
 * '<S141>' : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Initial Position Estimation (IPE) Algorithm/Pulsating High Freq Observer/Pulsating High Frequency (PHF)/Observer Block/Discrete PI Controller/P Copy/Disabled'
 * '<S142>' : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Initial Position Estimation (IPE) Algorithm/Pulsating High Freq Observer/Pulsating High Frequency (PHF)/Observer Block/Discrete PI Controller/Parallel P Gain/External Parameters'
 * '<S143>' : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Initial Position Estimation (IPE) Algorithm/Pulsating High Freq Observer/Pulsating High Frequency (PHF)/Observer Block/Discrete PI Controller/Reset Signal/External Reset'
 * '<S144>' : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Initial Position Estimation (IPE) Algorithm/Pulsating High Freq Observer/Pulsating High Frequency (PHF)/Observer Block/Discrete PI Controller/Saturation/Passthrough'
 * '<S145>' : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Initial Position Estimation (IPE) Algorithm/Pulsating High Freq Observer/Pulsating High Frequency (PHF)/Observer Block/Discrete PI Controller/Saturation Fdbk/Disabled'
 * '<S146>' : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Initial Position Estimation (IPE) Algorithm/Pulsating High Freq Observer/Pulsating High Frequency (PHF)/Observer Block/Discrete PI Controller/Sum/Sum_PI'
 * '<S147>' : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Initial Position Estimation (IPE) Algorithm/Pulsating High Freq Observer/Pulsating High Frequency (PHF)/Observer Block/Discrete PI Controller/Sum Fdbk/Disabled'
 * '<S148>' : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Initial Position Estimation (IPE) Algorithm/Pulsating High Freq Observer/Pulsating High Frequency (PHF)/Observer Block/Discrete PI Controller/Tracking Mode/Disabled'
 * '<S149>' : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Initial Position Estimation (IPE) Algorithm/Pulsating High Freq Observer/Pulsating High Frequency (PHF)/Observer Block/Discrete PI Controller/Tracking Mode Sum/Passthrough'
 * '<S150>' : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Initial Position Estimation (IPE) Algorithm/Pulsating High Freq Observer/Pulsating High Frequency (PHF)/Observer Block/Discrete PI Controller/Tsamp - Integral/TsSignalSpecification'
 * '<S151>' : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Initial Position Estimation (IPE) Algorithm/Pulsating High Freq Observer/Pulsating High Frequency (PHF)/Observer Block/Discrete PI Controller/Tsamp - Ngain/Passthrough'
 * '<S152>' : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Initial Position Estimation (IPE) Algorithm/Pulsating High Freq Observer/Pulsating High Frequency (PHF)/Observer Block/Discrete PI Controller/postSat Signal/Forward_Path'
 * '<S153>' : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Initial Position Estimation (IPE) Algorithm/Pulsating High Freq Observer/Pulsating High Frequency (PHF)/Observer Block/Discrete PI Controller/preSat Signal/Forward_Path'
 * '<S154>' : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Initial Position Estimation (IPE) Algorithm/Pulsating High Freq Observer/Pulsating High Frequency (PHF)/Signal Processing/Clarke Transform'
 * '<S155>' : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Initial Position Estimation (IPE) Algorithm/Pulsating High Freq Observer/Pulsating High Frequency (PHF)/Signal Processing/Park Transform'
 * '<S156>' : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Initial Position Estimation (IPE) Algorithm/Pulsating High Freq Observer/Pulsating High Frequency (PHF)/Signal Processing/Clarke Transform/Two phase input'
 * '<S157>' : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Initial Position Estimation (IPE) Algorithm/Pulsating High Freq Observer/Pulsating High Frequency (PHF)/Signal Processing/Clarke Transform/Two phase input/Two phase CRL wrap'
 * '<S158>' : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Initial Position Estimation (IPE) Algorithm/Pulsating High Freq Observer/Pulsating High Frequency (PHF)/Signal Processing/Park Transform/Two inputs CRL'
 * '<S159>' : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Initial Position Estimation (IPE) Algorithm/Pulsating High Freq Observer/Pulsating High Frequency (PHF)/Signal Processing/Park Transform/Two inputs CRL/Switch_Axis'
 * '<S160>' : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Initial Position Estimation (IPE) Algorithm/Pulsating High Freq Observer/Sequence Control Flow/Execution of DP'
 * '<S161>' : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Initial Position Estimation (IPE) Algorithm/Pulsating High Freq Observer/Sequence Control Flow/Execution of PHF'
 * '<S162>' : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Initial Position Estimation (IPE) Algorithm/Pulsating High Freq Observer/Sequence Control Flow/Flag Signal'
 * '<S163>' : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Initial Position Estimation (IPE) Algorithm/Pulsating High Freq Observer/Sequence Control Flow/Status Signal'
 * '<S164>' : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Initial Position Estimation (IPE) Algorithm/Pulsating High Freq Observer/Sequence Control Flow/Up Counter'
 * '<S165>' : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Initial Position Estimation (IPE) Algorithm/Pulsating High Freq Observer/Sequence Control Flow/Execution of DP/Add compensation'
 * '<S166>' : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Initial Position Estimation (IPE) Algorithm/Pulsating High Freq Observer/Sequence Control Flow/Execution of DP/Change phase'
 * '<S167>' : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Initial Position Estimation (IPE) Algorithm/Pulsating High Freq Observer/Sequence Control Flow/Execution of DP/First Pulse'
 * '<S168>' : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Initial Position Estimation (IPE) Algorithm/Pulsating High Freq Observer/Sequence Control Flow/Execution of DP/Second Pulse'
 * '<S169>' : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Initial Position Estimation (IPE) Algorithm/Pulsating High Freq Observer/Sequence Control Flow/Execution of DP/First Pulse/First pulse end'
 * '<S170>' : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Initial Position Estimation (IPE) Algorithm/Pulsating High Freq Observer/Sequence Control Flow/Execution of DP/First Pulse/First pulse start'
 * '<S171>' : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Initial Position Estimation (IPE) Algorithm/Pulsating High Freq Observer/Sequence Control Flow/Execution of DP/Second Pulse/Second pulse end'
 * '<S172>' : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Initial Position Estimation (IPE) Algorithm/Pulsating High Freq Observer/Sequence Control Flow/Execution of DP/Second Pulse/Second pulse start'
 * '<S173>' : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Initial Position Estimation (IPE) Algorithm/Pulsating High Freq Observer/Sequence Control Flow/Execution of PHF/Closeloop PHF'
 * '<S174>' : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Initial Position Estimation (IPE) Algorithm/Pulsating High Freq Observer/Sequence Control Flow/Execution of PHF/First Openloop PHF with 0 degree as initial guess'
 * '<S175>' : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Initial Position Estimation (IPE) Algorithm/Pulsating High Freq Observer/Sequence Control Flow/Execution of PHF/Second Openloop PHF with 120 degree as initial guess'
 * '<S176>' : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Initial Position Estimation (IPE) Algorithm/Pulsating High Freq Observer/Sequence Control Flow/Execution of PHF/Third Openloop PHF with -120 degree as initial guess'
 * '<S177>' : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Initial Position Estimation (IPE) Algorithm/Pulsating High Freq Observer/Sequence Control Flow/Execution of PHF/Closeloop PHF/PHF closeloop end'
 * '<S178>' : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Initial Position Estimation (IPE) Algorithm/Pulsating High Freq Observer/Sequence Control Flow/Execution of PHF/Closeloop PHF/PHF closeloop start'
 * '<S179>' : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Initial Position Estimation (IPE) Algorithm/Pulsating High Freq Observer/Sequence Control Flow/Execution of PHF/First Openloop PHF with 0 degree as initial guess/First openloop cal start'
 * '<S180>' : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Initial Position Estimation (IPE) Algorithm/Pulsating High Freq Observer/Sequence Control Flow/Execution of PHF/First Openloop PHF with 0 degree as initial guess/First openloop end'
 * '<S181>' : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Initial Position Estimation (IPE) Algorithm/Pulsating High Freq Observer/Sequence Control Flow/Execution of PHF/Second Openloop PHF with 120 degree as initial guess/Second openloop cal start'
 * '<S182>' : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Initial Position Estimation (IPE) Algorithm/Pulsating High Freq Observer/Sequence Control Flow/Execution of PHF/Second Openloop PHF with 120 degree as initial guess/Second openloop end'
 * '<S183>' : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Initial Position Estimation (IPE) Algorithm/Pulsating High Freq Observer/Sequence Control Flow/Execution of PHF/Second Openloop PHF with 120 degree as initial guess/Second openloop start'
 * '<S184>' : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Initial Position Estimation (IPE) Algorithm/Pulsating High Freq Observer/Sequence Control Flow/Execution of PHF/Third Openloop PHF with -120 degree as initial guess/Third openloop cal start'
 * '<S185>' : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Initial Position Estimation (IPE) Algorithm/Pulsating High Freq Observer/Sequence Control Flow/Execution of PHF/Third Openloop PHF with -120 degree as initial guess/Third openloop end'
 * '<S186>' : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Initial Position Estimation (IPE) Algorithm/Pulsating High Freq Observer/Sequence Control Flow/Execution of PHF/Third Openloop PHF with -120 degree as initial guess/Third openloop start'
 * '<S187>' : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Initial Position Estimation (IPE) Algorithm/Pulsating High Freq Observer/Sequence Control Flow/Flag Signal/UpperLimit'
 * '<S188>' : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Initial Position Estimation (IPE) Algorithm/Pulsating High Freq Observer/Sequence Control Flow/Flag Signal/UpperLimit_IC_En'
 * '<S189>' : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Initial Position Estimation (IPE) Algorithm/Pulsating High Freq Observer/Sequence Control Flow/Status Signal/If Action Subsystem'
 * '<S190>' : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Initial Position Estimation (IPE) Algorithm/Pulsating High Freq Observer/Sequence Control Flow/Status Signal/If Action Subsystem1'
 * '<S191>' : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Initial Position Estimation (IPE) Algorithm/Pulsating High Freq Observer/Sequence Control Flow/Status Signal/If Action Subsystem2'
 * '<S192>' : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Initial Position Estimation (IPE) Algorithm/Pulsating High Freq Observer/Sequence Control Flow/Status Signal/If Action Subsystem3'
 * '<S193>' : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Initial Position Estimation (IPE) Algorithm/Pulsating High Freq Observer/Sequence Control Flow/Status Signal/If Action Subsystem4'
 * '<S194>' : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Initial Position Estimation (IPE) Algorithm/Pulsating High Freq Observer/Sequence Control Flow/Status Signal/If Action Subsystem5'
 * '<S195>' : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Initial Position Estimation (IPE) Algorithm/Pulsating High Freq Observer/Sequence Control Flow/Status Signal/If Action Subsystem6'
 * '<S196>' : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Initial Position Estimation (IPE) Algorithm/Pulsating High Freq Observer/Sequence Control Flow/Up Counter/Count hold'
 * '<S197>' : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Initial Position Estimation (IPE) Algorithm/Pulsating High Freq Observer/Sequence Control Flow/Up Counter/UpperLimit'
 * '<S198>' : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Initial Position Estimation (IPE) Algorithm/Pulsating High Freq Observer/Sequence Control Flow/Up Counter/UpperLimit_IC_En'
 * '<S199>' : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Initial Position Estimation (IPE) Algorithm/Pulsating High Freq Observer/Wraparound In/Wrapping'
 * '<S200>' : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Initial Position Estimation (IPE) Algorithm/Pulsating High Freq Observer/Wraparound In/Wrapping/MechToElec'
 * '<S201>' : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Initial Position Estimation (IPE) Algorithm/Pulsating High Freq Observer/Wraparound In/Wrapping/MechToElec/floating-point'
 * '<S202>' : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Initial Position Estimation (IPE) Algorithm/Pulsating High Freq Observer/Wraparound In/Wrapping/MechToElec/floating-point/Compensate Offset'
 * '<S203>' : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Initial Position Estimation (IPE) Algorithm/Pulsating High Freq Observer/Wraparound In/Wrapping/MechToElec/floating-point/Mech To Elec'
 * '<S204>' : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Initial Position Estimation (IPE) Algorithm/Pulsating High Freq Observer/Wraparound In/Wrapping/MechToElec/floating-point/Compensate Offset/If Action Subsystem'
 * '<S205>' : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Initial Position Estimation (IPE) Algorithm/Pulsating High Freq Observer/Wraparound In/Wrapping/MechToElec/floating-point/Compensate Offset/If Action Subsystem1'
 * '<S206>' : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Initial Position Estimation (IPE) Algorithm/Pulsating High Freq Observer/Wraparound In/Wrapping/MechToElec/floating-point/Mech To Elec/Variant Subsystem'
 * '<S207>' : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Initial Position Estimation (IPE) Algorithm/Pulsating High Freq Observer/Wraparound In/Wrapping/MechToElec/floating-point/Mech To Elec/Variant Subsystem/Dialog'
 * '<S208>' : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Initial Position Estimation (IPE) Algorithm/Pulsating High Freq Observer/Wraparound Out/Wrapping'
 * '<S209>' : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Initial Position Estimation (IPE) Algorithm/Pulsating High Freq Observer/Wraparound Out/Wrapping/MechToElec'
 * '<S210>' : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Initial Position Estimation (IPE) Algorithm/Pulsating High Freq Observer/Wraparound Out/Wrapping/MechToElec/floating-point'
 * '<S211>' : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Initial Position Estimation (IPE) Algorithm/Pulsating High Freq Observer/Wraparound Out/Wrapping/MechToElec/floating-point/Compensate Offset'
 * '<S212>' : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Initial Position Estimation (IPE) Algorithm/Pulsating High Freq Observer/Wraparound Out/Wrapping/MechToElec/floating-point/Mech To Elec'
 * '<S213>' : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Initial Position Estimation (IPE) Algorithm/Pulsating High Freq Observer/Wraparound Out/Wrapping/MechToElec/floating-point/Compensate Offset/If Action Subsystem'
 * '<S214>' : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Initial Position Estimation (IPE) Algorithm/Pulsating High Freq Observer/Wraparound Out/Wrapping/MechToElec/floating-point/Compensate Offset/If Action Subsystem1'
 * '<S215>' : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Initial Position Estimation (IPE) Algorithm/Pulsating High Freq Observer/Wraparound Out/Wrapping/MechToElec/floating-point/Mech To Elec/Variant Subsystem'
 * '<S216>' : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Initial Position Estimation (IPE) Algorithm/Pulsating High Freq Observer/Wraparound Out/Wrapping/MechToElec/floating-point/Mech To Elec/Variant Subsystem/Dialog'
 * '<S217>' : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Initial Position Estimation (IPE) Algorithm/SCI_Tx/Code Generation'
 * '<S218>' : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Initial Position Estimation (IPE) Algorithm/SCI_Tx/Code Generation/Data_Conditioning_Tx'
 * '<S219>' : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Initial Position Estimation (IPE) Algorithm/SCI_Tx/Code Generation/Data_Logging'
 * '<S220>' : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Initial Position Estimation (IPE) Algorithm/SCI_Tx/Code Generation/While Iterator Subsystem'
 * '<S221>' : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Initial Position Estimation (IPE) Algorithm/SCI_Tx/Code Generation/Data_Conditioning_Tx/Data_Type_Float'
 * '<S222>' : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Initial Position Estimation (IPE) Algorithm/SCI_Tx/Code Generation/Data_Logging/Counter Limited'
 * '<S223>' : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Initial Position Estimation (IPE) Algorithm/SCI_Tx/Code Generation/Data_Logging/Data'
 * '<S224>' : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Initial Position Estimation (IPE) Algorithm/SCI_Tx/Code Generation/Data_Logging/End'
 * '<S225>' : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Initial Position Estimation (IPE) Algorithm/SCI_Tx/Code Generation/Data_Logging/Start'
 * '<S226>' : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Initial Position Estimation (IPE) Algorithm/SCI_Tx/Code Generation/Data_Logging/Counter Limited/Increment Real World'
 * '<S227>' : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Initial Position Estimation (IPE) Algorithm/SCI_Tx/Code Generation/Data_Logging/Counter Limited/Wrap To Zero'
 * '<S228>' : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Initial Position Estimation (IPE) Algorithm/Scaling and Output/HW_Outputs'
 * '<S229>' : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Initial Position Estimation (IPE) Algorithm/Scaling and Output/Output Scaling'
 * '<S230>' : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Initial Position Estimation (IPE) Algorithm/Scaling and Output/HW_Outputs/Code Generation'
 * '<S231>' : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Serial Receive/Data_Conditioning_Rx'
 * '<S232>' : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Serial Receive/SCi_Rx'
 * '<S233>' : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Serial Receive/Data_Conditioning_Rx/Data_Type_Float'
 * '<S234>' : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Serial Receive/SCi_Rx/Code Generation'
 * '<S235>' : 'mcb_ipmsm_pos_est_f28379d/Embedded System/Serial Receive/SCi_Rx/Code Generation/Data_Type_Float'
 * '<S236>' : 'mcb_ipmsm_pos_est_f28379d/Inverter and Motor/Codegeneration'
 */
#endif                             /* RTW_HEADER_mcb_ipmsm_pos_est_f28379d_h_ */

/*
 * File trailer for generated code.
 *
 * [EOF]
 */
