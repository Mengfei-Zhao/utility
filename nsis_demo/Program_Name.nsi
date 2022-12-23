; example2.nsi
;
; This script is based on example1.nsi, but it remember the directory, 
; has uninstall support and (optionally) installs start menu shortcuts.
;
; It will install example2.nsi into a directory that the user selects.
;
; See install-shared.nsi for a more robust way of checking for administrator rights.
; See install-per-user.nsi for a file association example.

;--------------------------------

; The name of the installer
Name "Program_Name"

; The file to write
OutFile "Install_Program_Name.exe"

; Request application privileges for Windows Vista and higher
RequestExecutionLevel user

; Build Unicode installer
Unicode True

; The default installation directory
InstallDir $PROGRAMFILES\Program_Name

; Registry key to check for directory (so if you install again, it will 
; overwrite the old one automatically)
InstallDirRegKey HKLM "Software\Program_Name" "Install_Dir"

;--------------------------------

; Pages

Page components
Page directory
Page instfiles

UninstPage uninstConfirm
UninstPage instfiles

;--------------------------------

; The stuff to install
Section "Program_Name (required)"

  SectionIn RO
  
  ; Set output path to the installation directory.
  SetOutPath $INSTDIR
  
  ; Put file there. Program_Name is the folder name that you wanna release, this is rightly the folder that pyinstaller packaged.
  File /r Program_Name\*.*
  
  ; Write the installation path into the registry
  WriteRegStr HKLM SOFTWARE\Program_Name "Install_Dir" "$INSTDIR"
  
  ; Write the uninstall keys for Windows
  WriteRegStr HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\Program_Name" "DisplayName" "Program_Name"
  WriteRegStr HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\Program_Name" "UninstallString" '"$INSTDIR\uninstall.exe"'
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\Program_Name" "NoModify" 1
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\Program_Name" "NoRepair" 1
  WriteUninstaller "$INSTDIR\uninstall.exe"
  
SectionEnd

; Optional section (can be disabled by the user)
Section "Start Menu Shortcuts"

  CreateDirectory "$SMPROGRAMS\Program_Name"
  CreateShortcut "$SMPROGRAMS\Program_Name\Uninstall.lnk" "$INSTDIR\uninstall.exe"
  CreateShortcut "$SMPROGRAMS\Program_Name\Program_Name.lnk" "$INSTDIR\Program_Name.exe"

SectionEnd

; Optional section (can be disabled by the user)
Section "Desktop Shortcut" SectionX
    SetShellVarContext current
    CreateShortCut "$DESKTOP\Program_Name.lnk" "$INSTDIR\Program_Name.exe"
SectionEnd

;--------------------------------

; Uninstaller

Section "Uninstall"
  
  ; Remove registry keys
  DeleteRegKey HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\Program_Name"
  DeleteRegKey HKLM SOFTWARE\Program_Name

  ; Remove all files in INSTDIR
  Delete $INSTDIR\*.*

  ; Remove all shortcuts, if any
  Delete "$SMPROGRAMS\Program_Name\*.lnk"
  Delete "$DESKTOP\*.lnk"

  ; Remove directories
  RMDir "$SMPROGRAMS\Program_Name"
  RMDir "$INSTDIR"

SectionEnd
