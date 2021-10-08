#include "led.h"


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
