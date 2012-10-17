;NSIS Modern User Interface
; VLC Subtitles Finder installer script
;Written by thePanz

;--------------------------------
;Include Modern UI

  !include "MUI2.nsh"

;--------------------------------
;General
  
  !define MAIN_NAME "VLCSub"
  !define VERSION "0.7"
  !define AUTHOR "Guillaume Le Maout and thePanz"
  !define REG_UNINSTALL "Software\Microsoft\Windows\CurrentVersion\Uninstall\${MAIN_NAME}"

  ;Name and file
  Name "VLC Sub (v. ${VERSION})"
  OutFile "${MAIN_NAME}-${VERSION}-install.exe"

  ;Default installation folder
  InstallDir "$APPDATA\vlc\lua\extensions"

  ;Request application privileges for Windows Vista
  RequestExecutionLevel user

;--------------------------------
;Interface Settings

  !define MUI_ABORTWARNING

;--------------------------------
;Pages

  ; !insertmacro MUI_PAGE_LICENSE "${NSISDIR}\Docs\Modern UI\License.txt"
  ;!insertmacro MUI_PAGE_COMPONENTS
  !insertmacro MUI_PAGE_DIRECTORY
  !insertmacro MUI_PAGE_INSTFILES
  
  !insertmacro MUI_UNPAGE_CONFIRM
  !insertmacro MUI_UNPAGE_INSTFILES
  
;--------------------------------
;Languages
  !insertmacro MUI_LANGUAGE "English"

;--------------------------------
; Include Functions
!include "functions.nsh"

;--------------------------------
;Installer Sections
Section "Dummy Section" SecDummy

  SetOutPath "$INSTDIR"
  File vlcsub.lua
  Call AddRegistry
SectionEnd

;--------------------------------
;Uninstaller Section
Section "Uninstall"
  Delete "$INSTDIR\vlcsub.lua"
  Delete "$INSTDIR\${MAIN_NAME}-uninstall.exe"
SectionEnd
