#include "c2000BoardSupport.h"
#include "MW_f2837xD_includes.h"
#include "rtwtypes.h"
#include "c28x_i2c_sensor.h"
#include "c28x_i2c_sensor_private.h"

void enableExtInterrupt (void);
void configureGPIOExtInterrupt(void);
void disableWatchdog(void)
{
  int *WatchdogWDCR = (void *) 0x7029;
  asm(" EALLOW ");
  *WatchdogWDCR = 0x0068;
  asm(" EDIS ");
}
