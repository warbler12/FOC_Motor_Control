/*
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * File: soc_pmsm_dualcpu_foc_sw_c28xCPU2.c
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
#include "soc_pmsm_cpu2_ref.h"

/* Block signals (default storage) */
B_soc_pmsm_dualcpu_foc_sw_c28_T soc_pmsm_dualcpu_foc_sw_c28xC_B;

/* Real-time model */
static RT_MODEL_soc_pmsm_dualcpu_foc_T soc_pmsm_dualcpu_foc_sw_c28x_M_;
RT_MODEL_soc_pmsm_dualcpu_foc_T *const soc_pmsm_dualcpu_foc_sw_c28x_M =
  &soc_pmsm_dualcpu_foc_sw_c28x_M_;

/* Model step function */
void soc_pmsm_dualcpu_foc_sw_c28xCPU2_step(void)
{
  /* ModelReference: '<Root>/Current Control' */
  soc_pmsm_cpu2_ref();
}

/* Model initialize function */
void soc_pmsm_dualcpu_foc_sw_c28xCPU2_initialize(void)
{
  /* Registration code */

  /* initialize error status */
  rtmSetErrorStatus(soc_pmsm_dualcpu_foc_sw_c28x_M, (NULL));

  /* block I/O */
  (void) memset(((void *) &soc_pmsm_dualcpu_foc_sw_c28xC_B), 0,
                sizeof(B_soc_pmsm_dualcpu_foc_sw_c28_T));

  /* Model Initialize function for ModelReference Block: '<Root>/Current Control' */
  soc_pmsm_cpu2_ref_initialize(rtmGetErrorStatusPointer
    (soc_pmsm_dualcpu_foc_sw_c28x_M));

  /* SystemInitialize for ModelReference: '<Root>/Current Control' */
  soc_pmsm_cpu2_ref_Init(&soc_pmsm_dualcpu_foc_sw_c28xC_B.CurrentControl_o1,
    &soc_pmsm_dualcpu_foc_sw_c28xC_B.CurrentControl_o2,
    &soc_pmsm_dualcpu_foc_sw_c28xC_B.CurrentControl_o3,
    &soc_pmsm_dualcpu_foc_sw_c28xC_B.CurrentControl_o4);
}

/* Model terminate function */
void soc_pmsm_dualcpu_foc_sw_c28xCPU2_terminate(void)
{
  /* Terminate for ModelReference: '<Root>/Current Control' */
  soc_pmsm_cpu2_ref_Term();
}

void soc_pmsm_dualcpu_foc_sw_c28xCPU2_configure_interrupts(void)
{
  /* Register interrupt service routine */
  HWI_TIC28x_ConfigureIRQ(33,&ADCB1_INT,0);
  HWI_TIC28x_EnableIRQ(33);
}

/* Hardware Interrupt Block: '<S35>/S-Function1' */
interrupt void ADCB1_INT(void)
{
  volatile unsigned int PIEIER1_stack_save = PieCtrlRegs.PIEIER1.all;
  PieCtrlRegs.PIEIER1.all &= ~66;
                              /*disable group1 lower/equal priority interrupts*/
  asm(" RPT #5 || NOP");               /*wait 5 cycles        */
  IFR &= ~1;      /*eventually disable lower/equal priority pending interrupts*/
  PieCtrlRegs.PIEACK.all = 1;
                   /*ACK to allow other interrupts from the same group to fire*/
  IER |= 1;
  EINT;
  if (MODEL_APPLICATION_RUNNING == runModel) {
    {
      /* S-Function (esb_task): '<S35>/S-Function1' */

      /* ModelReference: '<Root>/Current Control' */
      soc_pmsm_cpu2_ref_In1(&soc_pmsm_dualcpu_foc_sw_c28xC_B.CurrentControl_o1,
                            &soc_pmsm_dualcpu_foc_sw_c28xC_B.CurrentControl_o2,
                            &soc_pmsm_dualcpu_foc_sw_c28xC_B.CurrentControl_o3,
                            &soc_pmsm_dualcpu_foc_sw_c28xC_B.CurrentControl_o4);

      /* End of Outputs for S-Function (esb_task): '<S35>/S-Function1' */
    }
  }

  AdcbRegs.ADCINTFLGCLR.bit.ADCINT1= 1;
  AdcbRegs.ADCINTOVFCLR.bit.ADCINT1= 1;
  DINT;
  /* disable global interrupts during context switch, CPU will enable global interrupts after exiting ISR */
  PieCtrlRegs.PIEIER1.all = PIEIER1_stack_save;
                                   /*restore PIEIER register that was modified*/
}

void soc_pmsm_dualcpu_foc_sw_c28xCPU2_unconfigure_interrupts (void)
{
  HWI_TIC28x_DisableIRQ(33);
}

/*
 * File trailer for generated code.
 *
 * [EOF]
 */
