#ifndef _LED_H_
#define _LED_H_

#define LED_ON 1
#define LED_OFF 0

void LedInit(unsigned char ledNo);
void LedCtrl(unsigned char ledNo,unsigned char cmd);

#endif