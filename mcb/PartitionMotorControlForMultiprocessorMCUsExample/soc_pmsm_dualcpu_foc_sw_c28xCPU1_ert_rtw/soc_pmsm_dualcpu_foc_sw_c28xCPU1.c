/*
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * File: soc_pmsm_dualcpu_foc_sw_c28xCPU1.c
 *
 * Code generated for Simulink model 'soc_pmsm_dualcpu_foc_sw_c28xCPU1'.
 *
 * Model version                  : 1.2
 * Simulink Coder version         : 23.2 (R2023b) 01-Aug-2023
 * C/C++ source code generated on : Fri Dec 12 11:44:17 2025
 *
 * Target selection: ert.tlc
 * Embedded hardware selection: Texas Instruments->C2000
 * Code generation objectives: Unspecified
 * Validation result: Not run
 */

#include "soc_pmsm_dualcpu_foc_sw_c28xCPU1.h"
#include "rtwtypes.h"
#include "soc_pmsm_cpu1_ref.h"

rtTimingBridge soc_pmsm_dualcpu_foc_TimingBrdg;

/* Block signals (default storage) */
B_soc_pmsm_dualcpu_foc_sw_c28_T soc_pmsm_dualcpu_foc_sw_c28xC_B;

/* Real-time model */
static RT_MODEL_soc_pmsm_dualcpu_foc_T soc_pmsm_dualcpu_foc_sw_c28x_M_;
RT_MODEL_soc_pmsm_dualcpu_foc_T *const soc_pmsm_dualcpu_foc_sw_c28x_M =
  &soc_pmsm_dualcpu_foc_sw_c28x_M_;
static void rate_monotonic_scheduler(void);

/*
 * Set which subrates need to run this base step (base rate always runs).
 * This function must be called prior to calling the model step function
 * in order to remember which rates need to run this base step.  The
 * buffering of events allows for overlapping preemption.
 */
void soc_pmsm_dualcpu_foc_sw_c28xCPU1_SetEventsForThisBaseStep(boolean_T
  *eventFlags)
{
  /* Task runs when its counter is zero, computed via rtmStepTask macro */
  eventFlags[1] = ((boolean_T)rtmStepTask(soc_pmsm_dualcpu_foc_sw_c28x_M, 1));
}

/*
 *         This function updates active task flag for each subrate
 *         and rate transition flags for tasks that exchange data.
 *         The function assumes rate-monotonic multitasking scheduler.
 *         The function must be called at model base rate so that
 *         the generated code self-manages all its subrates and rate
 *         transition flags.
 */
static void rate_monotonic_scheduler(void)
{
  /* Compute which subrates run during the next base time step.  Subrates
   * are an integer multiple of the base rate counter.  Therefore, the subtask
   * counter is reset when it reaches its limit (zero means run).
   */
  (soc_pmsm_dualcpu_foc_sw_c28x_M->Timing.TaskCounters.TID[1])++;
  if ((soc_pmsm_dualcpu_foc_sw_c28x_M->Timing.TaskCounters.TID[1]) > 9) {/* Sample time: [0.0005s, 0.0s] */
    soc_pmsm_dualcpu_foc_sw_c28x_M->Timing.TaskCounters.TID[1] = 0;
  }
}

/* Model step function for TID0 */
void soc_pmsm_dualcpu_foc_sw_c28xCPU1_step0(void) /* Sample time: [5.0E-5s, 0.0s] */
{
  {                                    /* Sample time: [5.0E-5s, 0.0s] */
    rate_monotonic_scheduler();
  }

  /* S-Function (fcgen): '<S8>/FluxObserverBlk' */

  /* ModelReference: '<Root>/Speed Control' */
  soc_pmsm_cpu1_refTID0();

  /* End of Outputs for S-Function (fcgen): '<S8>/FluxObserverBlk' */
}

/* Model step function for TID1 */
void soc_pmsm_dualcpu_foc_sw_c28xCPU1_step1(void) /* Sample time: [0.0005s, 0.0s] */
{
  /* S-Function (fcgen): '<S8>/SpeedLoopBlk' */

  /* ModelReference: '<Root>/Speed Control' */
  soc_pmsm_cpu1_refTID1();

  /* End of Outputs for S-Function (fcgen): '<S8>/SpeedLoopBlk' */

  /* Update absolute time */
  /* The "clockTick1" counts the number of times the code of this task has
   * been executed. The resolution of this integer timer is 0.0005, which is the step size
   * of the task. Size of "clockTick1" ensures timer will not overflow during the
   * application lifespan selected.
   */
  soc_pmsm_dualcpu_foc_sw_c28x_M->Timing.clockTick1++;
}

/* Model initialize function */
void soc_pmsm_dualcpu_foc_sw_c28xCPU1_initialize(void)
{
  /* Registration code */

  /* initialize real-time model */
  (void) memset((void *)soc_pmsm_dualcpu_foc_sw_c28x_M, 0,
                sizeof(RT_MODEL_soc_pmsm_dualcpu_foc_T));

  /* block I/O */
  {
    soc_pmsm_dualcpu_foc_sw_c28xC_B.SpeedControl = 0.0F;
  }

  {
    static uint32_T *clockTickPtrs[2];
    static uint32_T *taskCounterPtrs;
    soc_pmsm_dualcpu_foc_TimingBrdg.nTasks = 2;
    clockTickPtrs[0] = (NULL);
    clockTickPtrs[1] = &(soc_pmsm_dualcpu_foc_sw_c28x_M->Timing.clockTick1);
    soc_pmsm_dualcpu_foc_TimingBrdg.clockTick = clockTickPtrs;
    soc_pmsm_dualcpu_foc_TimingBrdg.clockTickH = (NULL);
    taskCounterPtrs = &(soc_pmsm_dualcpu_foc_sw_c28x_M->Timing.TaskCounters.TID
                        [0]);
    soc_pmsm_dualcpu_foc_TimingBrdg.taskCounter = taskCounterPtrs;
  }

  /* Model Initialize function for ModelReference Block: '<Root>/Speed Control' */
  soc_pmsm_cpu1_re_initialize(rtmGetErrorStatusPointer
    (soc_pmsm_dualcpu_foc_sw_c28x_M), &soc_pmsm_dualcpu_foc_TimingBrdg, 0, 1);

  /* SystemInitialize for ModelReference: '<Root>/Speed Control' */
  soc_pmsm_cpu1_ref_Init();
}

/* Model terminate function */
void soc_pmsm_dualcpu_foc_sw_c28xCPU1_terminate(void)
{
  /* Terminate for ModelReference: '<Root>/Speed Control' */
  soc_pmsm_cpu1_ref_Term();
}

/*
 * File trailer for generated code.
 *
 * [EOF]
 */
