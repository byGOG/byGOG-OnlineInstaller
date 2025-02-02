@ECHO OFF
SETLOCAL
SET "OUTPUT_32=Java-Installer-32.exe"
SET "OUTPUT_64=Java-Installer-64.exe"
SET "NAME=Java"
TITLE %NAME% Online Installer

ECHO ---------------------------------------------------
ECHO Downloading %NAME% 32-bit version...
curl -# -L -o %TEMP%\%OUTPUT_32% "https://javadl.oracle.com/webapps/download/AutoDL?BundleId=251407_0d8f12bc927a4e2c9f8568ca567db4ee"

ECHO Downloading %NAME% 64-bit version...
curl -# -L -o %TEMP%\%OUTPUT_64% "https://javadl.oracle.com/webapps/download/AutoDL?BundleId=251408_0d8f12bc927a4e2c9f8568ca567db4ee"

ECHO Installing %NAME% 32-bit version...
start /wait %TEMP%\%OUTPUT_32% /s

ECHO Installing %NAME% 64-bit version...
start /wait %TEMP%\%OUTPUT_64% /s

ECHO Cleaning temporary files...
DEL %TEMP%\%OUTPUT_32%
DEL %TEMP%\%OUTPUT_64%

ECHO Installation completed successfully! by GOG [sordum.net]
ECHO ---------------------------------------------------
