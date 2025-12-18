#include "c2000BoardSupport.h"
#include "MW_f2837xD_includes.h"
#include "rtwtypes.h"
#include "soc_pmsm_cpu2_ref.h"
#include "soc_pmsm_cpu2_ref_private.h"

extern void configureInputXBar(uint32_T gpioNumber, uint32_T inputXbarNumber);
void enableExtInterrupt (void);
void configureGPIOExtInterrupt(void);
void disableWatchdog(void)
{
  int *WatchdogWDCR = (void *) 0x7029;
  asm(" EALLOW ");
  *WatchdogWDCR = 0x0068;
  asm(" EDIS ");
}
