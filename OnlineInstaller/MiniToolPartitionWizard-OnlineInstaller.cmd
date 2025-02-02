@ECHO OFF
SET "OUTPUT=MiniToolPartitionWizard.exe"
SET "NAME=MiniTool Partition Wizard"
TITLE %NAME% Online Installer

SET "URL=https://cdn2.minitool.com/?p=pw&e=pw-free-offline"

ECHO ---------------------------------------------------
ECHO Downloading %NAME%:%VERSION%
curl -# -L -o %TEMP%\%OUTPUT% "%URL%"

ECHO Installing %NAME%...
    START /WAIT %TEMP%\%OUTPUT% /VERYSILENT

ECHO Cleaning temporary files...
    DEL %TEMP%\%OUTPUT%

ECHO Closing %NAME%...
    POWERSHELL -Command "Start-Process cmd -Args '/c TASKKILL /IM msedge.exe /F /T' -Verb RunAs -WindowStyle Hidden"
    POWERSHELL -Command "Start-Process cmd -Args '/c TASKKILL /IM partitionwizard.exe /F /T' -Verb RunAs -WindowStyle Hidden"
    POWERSHELL -Command "Start-Process cmd -Args '/c TASKKILL /IM zen.exe /F /T' -Verb RunAs -WindowStyle Hidden"
    POWERSHELL -Command "Start-Process cmd -Args '/c TASKKILL /IM chrome.exe /F /T' -Verb RunAs -WindowStyle Hidden"
    POWERSHELL -Command "Start-Process cmd -Args '/c TASKKILL /IM brave.exe /F /T' -Verb RunAs -WindowStyle Hidden"
    POWERSHELL -Command "Start-Process cmd -Args '/c TASKKILL /IM firefox.exe /F /T' -Verb RunAs -WindowStyle Hidden"
	reg add "HKCU\Software\MiniTool Software Limited\MiniTool Partition Wizard" /v "00cfb691-7786-46e4-a4af-7e2cb0eb10c5" /t REG_DWORD /d 2 /f

ECHO Installation completed successfully! by GOG [sordum.net]
ECHO ---------------------------------------------------