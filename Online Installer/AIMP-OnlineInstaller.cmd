@ECHO OFF
SETLOCAL
SET "OUTPUT=AIMP-Installer.exe"
SET "NAME=AIMP"
TITLE %NAME% Online Installer

REM Set the download URL based on the processor architecture
IF "%PROCESSOR_ARCHITECTURE%"=="AMD64" (
    SET "URL=https://www.aimp.ru/?do=download.file&id=29"
) ELSE (
    SET "URL=https://www.aimp.ru/?do=download.file&id=4"
)

ECHO ---------------------------------------------------
ECHO Downloading %NAME%
	 curl -# -L -o %TEMP%\%OUTPUT% "%URL%"

ECHO Installing %NAME%...
	 start /wait %TEMP%\%OUTPUT% /SILENT /AUTO
	 
ECHO Cleaning temporary files...
	 DEL %TEMP%\%OUTPUT%

ECHO Installation completed successfully! by GOG [sordum.net]
ECHO ---------------------------------------------------

TIMEOUT /T 10