/*
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * File: ert_main.c
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
#include "MW_target_hardware_resources.h"

volatile int IsrOverrun = 0;
boolean_T isRateRunning[2] = { 0, 0 };

boolean_T need2runFlags[2] = { 0, 0 };

uint16_T SOCB_RateTimerEventCounter[2] = {
  1,
  1,
};

uint16_T SOCB_RateTimerEventCounterTrigVal[2] = {
  1,
  10,
};

void updateBaseRateTime(void);
void updateBaseRateTime(void)
{
  /* Update absolute time */
  /* The "clockTick1" counts the number of times the code of this task has
   * been executed. The resolution of this integer timer is 0.0005, which is the step size
   * of the task. Size of "clockTick1" ensures timer will not overflow during the
   * application lifespan selected.
   */
  soc_pmsm_dualcpu_foc_sw_c28x_M->Timing.clockTick1++;
}

void rt_OneStep(void)
{
  if (--SOCB_RateTimerEventCounter[1] == 0) {
    SOCB_RateTimerEventCounter[1] = SOCB_RateTimerEventCounterTrigVal[1];
    if (need2runFlags[1]++) {
      IsrOverrun = 1;
      need2runFlags[1]--;              /* allow future iterations to succeed*/
    }
  }

  /* Check base rate for overrun */
  if (isRateRunning[0]++) {
    IsrOverrun = 1;
    isRateRunning[0]--;                /* allow future iterations to succeed*/
    return;
  }

  /* Set model state to running when first base rate is triggered */
  if (MODEL_APPLICATION_WAIT_FOR_SCHEDULER_TO_START == runModel) {
    runModel = MODEL_APPLICATION_RUNNING;
  }

  enableTimer0Interrupt();
  soc_pmsm_dualcpu_foc_sw_c28xCPU1_step0();

  /* Get model outputs here */
  disableTimer0Interrupt();
  isRateRunning[0]--;
  if (need2runFlags[1]) {
    if (isRateRunning[1]) {
      /* Yield to higher priority*/
      return;
    }

    isRateRunning[1]++;
    enableTimer0Interrupt();

    /* Step the model for subrate "1" */
    switch (1)
    {
     case 1 :
      soc_pmsm_dualcpu_foc_sw_c28xCPU1_step1();

      /* Get model outputs here */
      break;

     default :
      break;
    }

    disableTimer0Interrupt();
    need2runFlags[1]--;
    isRateRunning[1]--;
  }
}

volatile boolean_T stopRequested;
volatile RunModelStates_T runModel;
int main(void)
{
  float modelBaseRate = 5.0E-5;
  float systemClock = 200;

  /* Initialize variables */
  stopRequested = false;
  runModel = MODEL_APPLICATION_NOT_RUNNING;

  /* Do not start execution until all slave CPUs are
     in a ready state to receive boot command from master CPU */
  waitUntilAllSlaveCPUsReadyToBoot();
  c2000_flash_init();
  init_board();

#if defined(MW_EXEC_PROFILER_ON) || (defined(MW_EXTMODE_RUNNING) && !defined(XCP_TIMESTAMP_BASED_ON_SIMULATION_TIME))

  hardwareTimer1Init();

#endif

  ;
  allotADCPeripheralModuleToCPU(1,2);
  allotADCPeripheralModuleToCPU(2,2);
  allotPWMPeripheralModuleToCPU(0,2);
  allotPWMPeripheralModuleToCPU(1,2);
  allotPWMPeripheralModuleToCPU(2,2);

  /* Once microcontroller's system clock is initialized,
     send start Boot command to all CPUs */
  sendStartBootCmdToSlaveCPU(2);

  /* Wait for Model Initialization of slave CPU 2 */
  sendStartModelInitCmdToSlaveCPU(2);
  waitForAckForStartModelInitCmdFromSlaveCPU(2);
  do {
  } while (0 == receiveEndModelInitCmdFromSlaveCPU(2));

  rtmSetErrorStatus(soc_pmsm_dualcpu_foc_sw_c28x_M, 0);
  soc_pmsm_dualcpu_foc_sw_c28xCPU1_initialize();
  globalInterruptDisable();
  if (rtmGetErrorStatus(soc_pmsm_dualcpu_foc_sw_c28x_M) == (NULL)) {
    runModel = MODEL_APPLICATION_READY_TO_START;
  } else {
    runModel = MODEL_APPLICATION_NOT_RUNNING;
  }

  globalInterruptEnable();
  while ((MODEL_APPLICATION_READY_TO_START == runModel) ||
         (MODEL_APPLICATION_WAIT_FOR_SCHEDULER_TO_START == runModel) ||
         (MODEL_APPLICATION_RUNNING == runModel)) {
    /*  Start scheduler */
    if (MODEL_APPLICATION_READY_TO_START == runModel) {
      if (checkSlaveCPUReadyToRunApplication(2)) {
        sendRunApplicationCmdToAllSlaveCPUs();

        /* Set application running status to scheduler configuring state */
        runModel = MODEL_APPLICATION_WAIT_FOR_SCHEDULER_TO_START;

        /* Start scheduler */
        configureTimer0(modelBaseRate, systemClock);

        /* Enable scheduler interrupt */
        enableTimer0Interrupt();
      }
    }

    stopRequested = !(rtmGetErrorStatus(soc_pmsm_dualcpu_foc_sw_c28x_M) == (NULL));
    if (stopRequested)
      disableTimer0Interrupt();
  }

  /* Terminate model */
  soc_pmsm_dualcpu_foc_sw_c28xCPU1_terminate();
  globalInterruptDisable();
  return 0;
}

/*
 * File trailer for generated code.
 *
 * [EOF]
 */
