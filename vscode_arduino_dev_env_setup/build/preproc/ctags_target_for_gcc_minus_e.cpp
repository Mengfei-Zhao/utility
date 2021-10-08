# 1 "f:\\Python_Prj\\SIMIT\\SFQIbCtrlSim\\prngFpga\\appMain.ino"
# 2 "f:\\Python_Prj\\SIMIT\\SFQIbCtrlSim\\prngFpga\\appMain.ino" 2

void setup()
{
  LedInit(13);
}

void loop()
{
  LedCtrl(13, 1);
  delay(500);
  LedCtrl(13, 0);
  delay(500);
}
