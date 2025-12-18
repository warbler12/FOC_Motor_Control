/*
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * File: ert_main.c
 *
 * Code generated for Simulink model 'soc_pmsm_dualcpu_foc_sw_c28xCPU2'.
 *
 * Model version                  : 1.2
 * Simulink Coder version         : 23.2 (R2023b) 01-Aug-2023
 * C/C++ source code generated on : Fri Dec 12 12:07:56 2025
 *
 * Target selection: ert.tlc
 * Embedded hardware selection: Texas Instruments->C2000
 * Code generation objectives: Unspecified
 * Validation result: Not run
 */

#include "soc_pmsm_dualcpu_foc_sw_c28xCPU2.h"
#include "rtwtypes.h"
#include "MW_target_hardware_resources.h"

volatile int IsrOverrun = 0;
static boolean_T OverrunFlag = 0;
void updateBaseRateTime(void);
void updateBaseRateTime(void)
{
}

void rt_OneStep(void)
{
  /* Check for overrun. Protect OverrunFlag against preemption */
  if (OverrunFlag++) {
    IsrOverrun = 1;
    OverrunFlag--;
    updateBaseRateTime();
    return;
  }

  /* Set model state to running when first base rate is triggered */
  if (MODEL_APPLICATION_WAIT_FOR_SCHEDULER_TO_START == runModel) {
    runModel = MODEL_APPLICATION_RUNNING;
  }

  enableTimer0Interrupt();
  soc_pmsm_dualcpu_foc_sw_c28xCPU2_step();

  /* Get model outputs here */
  disableTimer0Interrupt();
  OverrunFlag--;
}

volatile boolean_T stopRequested;
volatile RunModelStates_T runModel;
int main(void)
{
  float modelBaseRate = 0.02;
  float systemClock = 200;

  /* Initialize variables */
  stopRequested = false;
  runModel = MODEL_APPLICATION_NOT_RUNNING;

  /* Slave CPU should put itself in wait or stop mode and wait untill
     boot command is received from Master CPU */
  notifySlaveCPUReadyToBoot(0,2);
  waitForBootCommandFromMasterCPU(0,2);
  HWI_TIC28x_EnablePeripheralInterrupt();
  c2000_flash_init();
  init_board();

#if defined(MW_EXEC_PROFILER_ON) || (defined(MW_EXTMODE_RUNNING) && !defined(XCP_TIMESTAMP_BASED_ON_SIMULATION_TIME))

  hardwareTimer1Init();

#endif

  ;
  soc_pmsm_dualcpu_foc_sw_c28xCPU2_ADC_data_initialize();
  soc_pmsm_dualcpu_foc_sw_c28xCPU2_PWM_data_initialize();

  /* Wait for Model Init command from Master */
  waitForModelInitCmdFromMasterCPU(0,2);
  sendAckForStartModelInitCmdToMasterCPU(0,2);
  rtmSetErrorStatus(soc_pmsm_dualcpu_foc_sw_c28x_M, 0);
  soc_pmsm_dualcpu_foc_sw_c28xCPU2_initialize();

  /* Send end of Model initialization to Master CPU */
  sendEndModelInitCmdToMasterCPU(0,2);
  globalInterruptDisable();
  if (rtmGetErrorStatus(soc_pmsm_dualcpu_foc_sw_c28x_M) == (NULL)) {
    runModel = MODEL_APPLICATION_READY_TO_START;
  } else {
    runModel = MODEL_APPLICATION_NOT_RUNNING;
  }

  ePWMSyncEnable();
  soc_pmsm_dualcpu_foc_sw_c28xCPU2_configure_interrupts();
  globalInterruptEnable();
  while ((MODEL_APPLICATION_READY_TO_START == runModel) ||
         (MODEL_APPLICATION_WAIT_FOR_SCHEDULER_TO_START == runModel) ||
         (MODEL_APPLICATION_RUNNING == runModel)) {
    /*  Start scheduler */
    if (MODEL_APPLICATION_READY_TO_START == runModel) {
      sendReadyToRunApplicationToMasterCPU(2);
      if (checkRunApplicationCmdFromMaster(2)) {
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

  soc_pmsm_dualcpu_foc_sw_c28xCPU2_unconfigure_interrupts();

  /* Terminate model */
  soc_pmsm_dualcpu_foc_sw_c28xCPU2_terminate();
  HWI_TIC28x_DisablePeripheralInterrupt();
  globalInterruptDisable();
  return 0;
}

/*
 * File trailer for generated code.
 *
 * [EOF]
 */
