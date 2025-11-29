#include "c2000BoardSupport.h"
#include "MW_f2837xD_includes.h"
#include "rtwtypes.h"
#include "mcb_pmsm_qep_offset_f28379d.h"
#include "mcb_pmsm_qep_offset_f28379d_private.h"

void init_I2C_GPIO(void)
{
  EALLOW;                              /* Initial I2C GPIO pin*/
  GpioCtrlRegs.GPBPUD.bit.GPIO42 = 0;  /* Enable pull-up on GPIO42 (SDAA)*/
  GpioCtrlRegs.GPBGMUX1.bit.GPIO42 = 1;/* Configure GPIO42 as SDAA*/
  GpioCtrlRegs.GPBMUX1.bit.GPIO42 = 2; /* Configure GPIO42 as SDAA*/
  GpioCtrlRegs.GPBPUD.bit.GPIO43 = 0;  /* Enable pull-up on GPIO43 (SCLA)*/
  GpioCtrlRegs.GPBGMUX1.bit.GPIO43 = 1;/* Configure GPIO43 as SCLA*/
  GpioCtrlRegs.GPBMUX1.bit.GPIO43 = 2; /* Configure GPIO43 as SCLA*/
  EDIS;
}

void init_I2C_A(void)
{
  /* Initialize I2C*/
  EALLOW;
  CpuSysRegs.PCLKCR9.bit.I2C_A = 1;    /* Enable pheripheral clocks for I2C */
  EDIS;
  I2caRegs.I2CMDR.bit.MST = 1;         /* Select controller or peripheral mode*/
  I2caRegs.I2CMDR.bit.DLB = 0;         /* Enable digital loopback bit */
  I2caRegs.I2CPSC.all = 9;          /* Prescaler - need 7-12 Mhz on module clk*/
  I2caRegs.I2CCLKL = 20;               /* NOTE: must be non zero*/
  I2caRegs.I2CCLKH = 20;               /* NOTE: must be non zero*/
  I2caRegs.I2CFFTX.bit.TXFFIL = 0;     /* Set fifo interrupt level*/
  I2caRegs.I2CFFRX.bit.RXFFIENA = 1;   /* Enable Rx Fifo interrupt*/
  I2caRegs.I2CFFRX.bit.RXFFIL = 0;     /* Set fifo interrupt level*/
  I2caRegs.I2CFFRX.bit.RXFFINTCLR = 1; /* Clear Rx interrupt flag*/
  I2caRegs.I2CFFTX.all |= 0x6000;      /* Enable TxFIFO mode*/
  I2caRegs.I2CFFRX.all |= 0x2000;      /* Enable RxFIFO mode*/
  I2caRegs.I2CMDR.bit.IRS = 1;         /* Take I2C out of reset*/
}
