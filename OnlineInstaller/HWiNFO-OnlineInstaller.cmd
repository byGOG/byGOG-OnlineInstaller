@ECHO OFF
SET "OUTPUT=HWiNFO.exe"
SET "NAME=HWiNFO"
TITLE %NAME% Online Installer

curl -sL https://sourceforge.net/projects/hwinfo/files/Windows_Installer/ | findstr /C:"hwi64_" > %temp%\version.txt
FOR /F "tokens=2 delims=_" %%G IN (%temp%\version.txt) DO SET VERSION=%%G
SET VERSION=%VERSION:~0,3%

SET "URL=https://sourceforge.net/projects/hwinfo/files/Windows_Installer/hwi64_%VERSION%.exe"

ECHO ---------------------------------------------------
ECHO Downloading %NAME%:%VERSION%
curl -# -L -o %TEMP%\%OUTPUT% "%URL%"

ECHO Installing %NAME%...
    START /WAIT %TEMP%\%OUTPUT% /VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-
	
ECHO Adding %NAME% shortcut to desktop.
    SET "TARGET=%ProgramFiles%\HWiNFO64\HWiNFO64.exe"
    SET "SHORTCUT=%USERPROFILE%\Desktop\HWiNFO 64.lnk"
    powershell -Command "$ws = New-Object -ComObject WScript.Shell; $s = $ws.CreateShortcut('%SHORTCUT%'); $s.TargetPath = '%TARGET%'; $s.Save()"

ECHO Cleaning temporary files...
    DEL %TEMP%\%OUTPUT%
    DEL %TEMP%\version*

ECHO Closing %NAME%...
	 TASKKILL /IM HWiNFO64.EXE /F /T   

ECHO Installation completed successfully! by GOG [sordum.net]
ECHO ---------------------------------------------------