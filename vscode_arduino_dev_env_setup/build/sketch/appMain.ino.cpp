#include <Arduino.h>
#line 1 "f:\\Python_Prj\\SIMIT\\SFQIbCtrlSim\\prngFpga\\appMain.ino"
#include "led.h"

#line 3 "f:\\Python_Prj\\SIMIT\\SFQIbCtrlSim\\prngFpga\\appMain.ino"
void setup();
#line 8 "f:\\Python_Prj\\SIMIT\\SFQIbCtrlSim\\prngFpga\\appMain.ino"
void loop();
#line 3 "f:\\Python_Prj\\SIMIT\\SFQIbCtrlSim\\prngFpga\\appMain.ino"
void setup()
{
  LedInit(13);
}

void loop()
{
  LedCtrl(13, LED_ON);
  delay(500);
  LedCtrl(13, LED_OFF);
  delay(500);
}

