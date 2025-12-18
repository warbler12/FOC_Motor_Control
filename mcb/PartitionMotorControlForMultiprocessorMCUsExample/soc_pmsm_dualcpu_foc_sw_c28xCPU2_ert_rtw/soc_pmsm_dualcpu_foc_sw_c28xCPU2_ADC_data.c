#include "soc_pmsm_dualcpu_foc_sw_c28xCPU2_ADC_data.h"

MW_ADC_CustomHW_Params_T soc_pmsm_cpu2_ref_681;
MW_ADC_CustomHW_Params_T soc_pmsm_cpu2_ref_682;

void soc_pmsm_dualcpu_foc_sw_c28xCPU2_ADC_data_initialize(void) {
    /* Initialize structure soc_pmsm_cpu2_ref_681 required for block: soc_pmsm_cpu2_ref/Current Control/ADC Read B */
    soc_pmsm_cpu2_ref_681.ModuleNum = (uint16_T)1;
    soc_pmsm_cpu2_ref_681.SOCChannelSelect = (uint16_T)0;
    soc_pmsm_cpu2_ref_681.Resolution = (uint16_T)0;
    soc_pmsm_cpu2_ref_681.ChannelNum = (uint16_T)2;
    soc_pmsm_cpu2_ref_681.ChannelNumDifferential = (uint16_T)0;
    soc_pmsm_cpu2_ref_681.AcqTimeInCycles = (uint16_T)13;
    soc_pmsm_cpu2_ref_681.TiggerSrc = (uint16_T)5;
    soc_pmsm_cpu2_ref_681.SOCIntrSelect = (uint16_T)0;
    soc_pmsm_cpu2_ref_681.EOCIntrEnable = (uint32_T)1;
    soc_pmsm_cpu2_ref_681.EOCIntrTrigger = (uint32_T)0;
    soc_pmsm_cpu2_ref_681.IntrMode = (uint16_T)1;
    /* Initialize structure soc_pmsm_cpu2_ref_682 required for block: soc_pmsm_cpu2_ref/Current Control/ADC Read C */
    soc_pmsm_cpu2_ref_682.ModuleNum = (uint16_T)2;
    soc_pmsm_cpu2_ref_682.SOCChannelSelect = (uint16_T)0;
    soc_pmsm_cpu2_ref_682.Resolution = (uint16_T)0;
    soc_pmsm_cpu2_ref_682.ChannelNum = (uint16_T)2;
    soc_pmsm_cpu2_ref_682.ChannelNumDifferential = (uint16_T)0;
    soc_pmsm_cpu2_ref_682.AcqTimeInCycles = (uint16_T)13;
    soc_pmsm_cpu2_ref_682.TiggerSrc = (uint16_T)5;
    soc_pmsm_cpu2_ref_682.SOCIntrSelect = (uint16_T)0;
    soc_pmsm_cpu2_ref_682.EOCIntrEnable = (uint32_T)0;
    soc_pmsm_cpu2_ref_682.EOCIntrTrigger = (uint32_T)0;
    soc_pmsm_cpu2_ref_682.IntrMode = (uint16_T)0;
}

