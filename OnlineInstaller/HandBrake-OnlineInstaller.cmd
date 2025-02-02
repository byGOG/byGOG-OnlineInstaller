@ECHO OFF
SET "OUTPUT=HandBrake.exe"
SET "NAME=HandBrake"
TITLE %NAME% Online Installer

curl -sL https://github.com/HandBrake/HandBrake/releases/latest | findstr /C:"<title>Release " > %temp%\version.txt
FOR /F "tokens=3 delims=<> " %%G IN (%temp%\version.txt) DO SET VERSION=%%G

SET "URL=https://github.com/HandBrake/HandBrake/releases/download/%VERSION%/HandBrake-%VERSION%-x86_64-Win_GUI.exe"

ECHO ---------------------------------------------------
ECHO Downloading %NAME%:%VERSION%
    curl -# -L -o %TEMP%\%OUTPUT% "%URL%"

ECHO Installing %NAME%...
    start /wait %TEMP%\%OUTPUT% /S /desktopshortcut /quicklaunchshortcut /startmenu

ECHO Adding HandBrake shortcut to desktop.
    SET "TARGET=%ProgramFiles%\HandBrake\HandBrake.exe"
    SET "SHORTCUT=%USERPROFILE%\Desktop\HandBrake.lnk"
    powershell -Command "$ws = New-Object -ComObject WScript.Shell; $s = $ws.CreateShortcut('%SHORTCUT%'); $s.TargetPath = '%TARGET%'; $s.Save()"

ECHO Cleaning temporary files...
    DEL %TEMP%\%OUTPUT%
    DEL %TEMP%\version*

ECHO Installation completed successfully! by GOG [sordum.net]
ECHO ---------------------------------------------------