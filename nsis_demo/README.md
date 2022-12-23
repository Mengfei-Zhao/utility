This is a demo of NSIS, used to learn how to make an install and uninstall program for my own project.



如何使用：右击Program_Name.nsi文件，用NSIS进行Compile，会生成一个Install_Program_Name.exe，然后双击Install_Program_Name.exe，可以来安装用户的Program_Name程序。

* Install_Dir\：软件安装到的位置。
* Program_Name\：我用pyinstaller打包好的东西。
* Install_Program_Name.exe：利用`Program_Name.nsi`编译后生成的.exe文件，双击该文件可以进行安装 `Program_Name`程序。
* Program_Name.nsi：NSIS用的脚本文件。