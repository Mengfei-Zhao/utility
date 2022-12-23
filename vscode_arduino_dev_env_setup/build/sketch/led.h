#line 1 "f:\\Python_Prj\\SIMIT\\SFQIbCtrlSim\\prngFpga\\led.h"
#ifndef _LED_H_
#define _LED_H_

#define LED_ON 1
#define LED_OFF 0

void LedInit(unsigned char ledNo);
void LedCtrl(unsigned char ledNo,unsigned char cmd);

#endif