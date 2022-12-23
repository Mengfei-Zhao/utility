#include "led.h"
#include "Arduino.h"

/*** 
 * LED初始化函数
 * param ledNo: LED引脚号，例如1,2,3,13
 */
void LedInit(unsigned char ledNo)
{
   pinMode(ledNo, OUTPUT);
}


/*** 
 * LED控制函数
 * param ledNo: LED引脚号，例如1,2,3,13
 * param cmd: 对LED进行的命令，LED_ON,LED_OFF
 */
void LedCtrl(unsigned char ledNo,unsigned char cmd)
{
   if(cmd==LED_ON)
      digitalWrite(ledNo, HIGH); 
   else if(cmd==LED_OFF)
      digitalWrite(ledNo, LOW); 
}

