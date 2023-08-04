@echo off
setlocal enabledelayedexpansion
SET "NAME=by GOG [sordum.net]"
TITLE %NAME%

:menu
cls
echo =================================================================================================================
echo                                                __          __________  ______
echo                                               / /_  __  __/ ____/ __ \/ ____/
echo                                              / __ \/ / / / / __/ / / / / __  
echo                                             / /_/ / /_/ / /_/ / /_/ / /_/ /  
echo                                            /_.___/\__, /\____/\____/\____/   
echo                                                  /____/                      
echo =================================================================================================================
echo                                             ONLINE SOFTWARE INSTALLER
echo                                                    [sordum.net] 
echo =================================================================================================================
echo ==================================================( with cURL )==================================================
echo [7z] 7-Zip                   [dl] DeepL                       [ot] Office Tool Plus   [sy] Spotify 
echo [ap] AIMP                    [dc] Discord                     [pt] PowerToys          [sm] Steam
echo [ad] AnyDesk                 [et] Everything                  [pv] ProtonVPN          [so] Stremio 
echo [bw] Bitwarden               [gc] Google Chrome               [wu] WingetUI           [tv] TeamViewer
echo [cc] CCleaner                [gd] Google Drive                [rs] Rufus              [tg] Telegram
echo [cl] Chocolatey              [id] Internet Download Manager   [sb] Sandboxie          [vs] Visual Studio Code
echo [cq] CopyQ                   [mf] Mozilla Firefox             [sp] Scoop              [vm] VLC Media Player 
echo [kc] K-Lite Codec Pack Mega  [np] Notepad++                   [sx] ShareX             [wr] WinRAR       
echo [bc] Bulk Crap Uninstaller   [qt] qBittorrent EE    
echo =================================================( with WinGET )=================================================
echo [vc] Visual C++ Redist       [nr] .NET Desktop Runtime        [nf] .NET Framework     [dx] DirectX 
echo [vw] VMware Workstation Pro  [cg] ChatGPT
echo ==================================================( with Web )===================================================
echo [st] sordum.net              [sg] sordum.org                  [dr] DriversCloud.com
echo =================================================================================================================
echo                                                     [e] Exit 
echo =================================================================================================================
set choices=
set /p choices="Please select option:"

if not defined choices (
    goto menu
)

set "options=!choices:,= !"
set "options=!options:-= !"
for %%o in (!options!) do (
    set "last_option=%%o"
    if "%%o"=="7z" (
        curl -sL#o "%TEMP%\7zip-OnlineInstaller.cmd" "https://github.com/byGOG/byGOG-OnlineInstaller/raw/main/OnlineInstaller/7zip-OnlineInstaller.cmd" && CALL %TEMP%\7zip-OnlineInstaller.cmd
    )
      if "%%o"=="gc" (
        curl -sL#o "%TEMP%\GoogleChrome-OnlineInstaller.cmd" "https://github.com/byGOG/byGOG-OnlineInstaller/raw/main/OnlineInstaller/GoogleChrome-OnlineInstaller.cmd" && CALL %TEMP%\GoogleChrome-OnlineInstaller.cmd
    )
      if "%%o"=="mf" (
        curl -sL#o "%TEMP%\MozillaFirefox-OnlineInstaller.cmd" "https://github.com/byGOG/byGOG-OnlineInstaller/raw/main/OnlineInstaller/MozillaFirefox-OnlineInstaller.cmd" && CALL %TEMP%\MozillaFirefox-OnlineInstaller.cmd
    )
      if "%%o"=="np" (
        curl -sL#o "%TEMP%\NotepadPlusPlus-OnlineInstaller.cmd" "https://github.com/byGOG/byGOG-OnlineInstaller/raw/main/OnlineInstaller/NotepadPlusPlus-OnlineInstaller.cmd" && CALL %TEMP%\NotepadPlusPlus-OnlineInstaller.cmd
    )
      if "%%o"=="vm" (
        curl -sL#o "%TEMP%\VLC-OnlineInstaller.cmd" "https://raw.githubusercontent.com/byGOG/byGOG-OnlineInstaller/main/OnlineInstaller/VLC-OnlineInstaller.cmd" && CALL %TEMP%\VLC-OnlineInstaller.cmd
    )
      if "%%o"=="wr" (
        curl -sL#o "%TEMP%\WinRAR-OnlineInstaller.cmd" "https://raw.githubusercontent.com/byGOG/byGOG-OnlineInstaller/main/OnlineInstaller/WinRAR-OnlineInstaller.cmd" && CALL %TEMP%\WinRAR-OnlineInstaller.cmd
    )
	  if "%%o"=="ap" (
        curl -sL#o "%TEMP%\AIMP-OnlineInstaller.cmd" "https://raw.githubusercontent.com/byGOG/byGOG-OnlineInstaller/main/OnlineInstaller/AIMP-OnlineInstaller.cmd" && CALL %TEMP%\AIMP-OnlineInstaller.cmd
    )
	  if "%%o"=="ad" (
        curl -sL#o "%TEMP%\AnyDesk-OnlineInstaller.cmd" "https://raw.githubusercontent.com/byGOG/byGOG-OnlineInstaller/main/OnlineInstaller/AnyDesk-OnlineInstaller.cmd" && CALL %TEMP%\AnyDesk-OnlineInstaller.cmd
    )
	  if "%%o"=="bw" (
        curl -sL#o "%TEMP%\Bitwarden-OnlineInstaller.cmd" "https://raw.githubusercontent.com/byGOG/byGOG-OnlineInstaller/main/OnlineInstaller/Bitwarden-OnlineInstaller.cmd" && CALL %TEMP%\Bitwarden-OnlineInstaller.cmd
    )
	  if "%%o"=="cc" (
        curl -sL#o "%TEMP%\CCleaner-OnlineInstaller.cmd" "https://raw.githubusercontent.com/byGOG/byGOG-OnlineInstaller/main/OnlineInstaller/CCleaner-OnlineInstaller.cmd" && CALL %TEMP%\CCleaner-OnlineInstaller.cmd
    )
	  if "%%o"=="cl" (
        curl -sL#o "%TEMP%\Chocolatey-OnlineInstaller.cmd" "https://raw.githubusercontent.com/byGOG/byGOG-OnlineInstaller/main/OnlineInstaller/Chocolatey-OnlineInstaller.cmd" && CALL %TEMP%\Chocolatey-OnlineInstaller.cmd
    )
	  if "%%o"=="cq" (
        curl -sL#o "%TEMP%\CopyQ-OnlineInstaller.cmd" "https://raw.githubusercontent.com/byGOG/byGOG-OnlineInstaller/main/OnlineInstaller/CopyQ-OnlineInstaller.cmd" && CALL %TEMP%\CopyQ-OnlineInstaller.cmd
    )
	  if "%%o"=="dl" (
        curl -sL#o "%TEMP%\DeepL-OnlineInstaller.cmd" "https://raw.githubusercontent.com/byGOG/byGOG-OnlineInstaller/main/OnlineInstaller/DeepL-OnlineInstaller.cmd" && CALL %TEMP%\DeepL-OnlineInstaller.cmd
    )
	  if "%%o"=="dc" (
        curl -sL#o "%TEMP%\Discord-OnlineInstaller.cmd" "https://raw.githubusercontent.com/byGOG/byGOG-OnlineInstaller/main/OnlineInstaller/Discord-OnlineInstaller.cmd" && CALL %TEMP%\Discord-OnlineInstaller.cmd
    )
	  if "%%o"=="et" (
        curl -sL#o "%TEMP%\Everything-OnlineInstaller.cmd" "https://raw.githubusercontent.com/byGOG/byGOG-OnlineInstaller/main/OnlineInstaller/Everything-OnlineInstaller.cmd" && CALL %TEMP%\Everything-OnlineInstaller.cmd
    )
	  if "%%o"=="gd" (
        curl -sL#o "%TEMP%\GoogleDrive-OnlineInstaller.cmd" "https://raw.githubusercontent.com/byGOG/byGOG-OnlineInstaller/main/OnlineInstaller/GoogleDrive-OnlineInstaller.cmd" && CALL %TEMP%\GoogleDrive-OnlineInstaller.cmd
    )
	  if "%%o"=="id" (
        curl -sL#o "%TEMP%\InternetDownloadManager-OnlineInstaller.cmd" "https://raw.githubusercontent.com/byGOG/byGOG-OnlineInstaller/main/OnlineInstaller/InternetDownloadManager-OnlineInstaller.cmd" && CALL %TEMP%\InternetDownloadManager-OnlineInstaller.cmd
    )
	  if "%%o"=="ot" (
        curl -sL#o "%TEMP%\OfficeToolPlus-OnlineInstaller.cmd" "https://raw.githubusercontent.com/byGOG/byGOG-OnlineInstaller/main/OnlineInstaller/OfficeToolPlus-OnlineInstaller.cmd" && CALL %TEMP%\OfficeToolPlus-OnlineInstaller.cmd
    )
	  if "%%o"=="pt" (
        curl -sL#o "%TEMP%\PowerToys-OnlineInstaller.cmd" "https://raw.githubusercontent.com/byGOG/byGOG-OnlineInstaller/main/OnlineInstaller/PowerToys-OnlineInstaller.cmd" && CALL %TEMP%\PowerToys-OnlineInstaller.cmd
    )
	  if "%%o"=="pv" (
        curl -sL#o "%TEMP%\ProtonVPN-OnlineInstaller.cmd" "https://raw.githubusercontent.com/byGOG/byGOG-OnlineInstaller/main/OnlineInstaller/ProtonVPN-OnlineInstaller.cmd" && CALL %TEMP%\ProtonVPN-OnlineInstaller.cmd
    )
	  if "%%o"=="rs" (
        curl -sL#o "%TEMP%\Rufus-OnlineInstaller.cmd" "https://raw.githubusercontent.com/byGOG/byGOG-OnlineInstaller/main/OnlineInstaller/Rufus-OnlineInstaller.cmd" && CALL %TEMP%\Rufus-OnlineInstaller.cmd
    )
	  if "%%o"=="sb" (
        curl -sL#o "%TEMP%\Sandboxie-OnlineInstaller.cmd" "https://raw.githubusercontent.com/byGOG/byGOG-OnlineInstaller/main/OnlineInstaller/Sandboxie-OnlineInstaller.cmd" && CALL %TEMP%\Sandboxie-OnlineInstaller.cmd
    )
	  if "%%o"=="sp" (
        curl -sL#o "%TEMP%\Scoop-OnlineInstaller.cmd" "https://raw.githubusercontent.com/byGOG/byGOG-OnlineInstaller/main/OnlineInstaller/Scoop-OnlineInstaller.cmd" && CALL %TEMP%\Scoop-OnlineInstaller.cmd
    )
	  if "%%o"=="sx" (
        curl -sL#o "%TEMP%\ShareX-OnlineInstaller.cmd" "https://raw.githubusercontent.com/byGOG/byGOG-OnlineInstaller/main/OnlineInstaller/ShareX-OnlineInstaller.cmd" && CALL %TEMP%\ShareX-OnlineInstaller.cmd
    )
	  if "%%o"=="sy" (
        curl -sL#o "%TEMP%\Spotify-OnlineInstaller.cmd" "https://raw.githubusercontent.com/byGOG/byGOG-OnlineInstaller/main/OnlineInstaller/Spotify-OnlineInstaller.cmd" && CALL %TEMP%\Spotify-OnlineInstaller.cmd
    )
	  if "%%o"=="sm" (
        curl -sL#o "%TEMP%\Steam-OnlineInstaller.cmd" "https://raw.githubusercontent.com/byGOG/byGOG-OnlineInstaller/main/OnlineInstaller/Steam-OnlineInstaller.cmd" && CALL %TEMP%\Steam-OnlineInstaller.cmd
    )
	  if "%%o"=="so" (
        curl -sL#o "%TEMP%\Stremio-OnlineInstaller.cmd" "https://raw.githubusercontent.com/byGOG/byGOG-OnlineInstaller/main/OnlineInstaller/Stremio-OnlineInstaller.cmd" && CALL %TEMP%\Stremio-OnlineInstaller.cmd
    )
	  if "%%o"=="tv" (
        curl -sL#o "%TEMP%\TeamViewer-OnlineInstaller.cmd" "https://raw.githubusercontent.com/byGOG/byGOG-OnlineInstaller/main/OnlineInstaller/TeamViewer-OnlineInstaller.cmd" && CALL %TEMP%\TeamViewer-OnlineInstaller.cmd
    )
	  if "%%o"=="tg" (
        curl -sL#o "%TEMP%\Telegram-OnlineInstaller.cmd" "https://raw.githubusercontent.com/byGOG/byGOG-OnlineInstaller/main/OnlineInstaller/Telegram-OnlineInstaller.cmd" && CALL %TEMP%\Telegram-OnlineInstaller.cmd
    )
	  if "%%o"=="vs" (
        curl -sL#o "%TEMP%\VisualStudioCode-OnlineInstaller.cmd" "https://raw.githubusercontent.com/byGOG/byGOG-OnlineInstaller/main/OnlineInstaller/VisualStudioCode-OnlineInstaller.cmd" && CALL %TEMP%\VisualStudioCode-OnlineInstaller.cmd
    )
	  if "%%o"=="kc" (
        curl -sL#o "%TEMP%\K-LiteCodecPackMega-OnlineInstaller.cmd" "https://raw.githubusercontent.com/byGOG/byGOG-OnlineInstaller/main/OnlineInstaller/K-LiteCodecPackMega-OnlineInstaller.cmd" && CALL %TEMP%\K-LiteCodecPackMega-OnlineInstaller.cmd
    )
	  if "%%o"=="bc" (
        curl -sL#o "%TEMP%\BulkCrapUninstaller-OnlineInstaller.cmd" "https://raw.githubusercontent.com/byGOG/byGOG-OnlineInstaller/main/OnlineInstaller/BulkCrapUninstaller-OnlineInstaller.cmd" && CALL %TEMP%\BulkCrapUninstaller-OnlineInstaller.cmd
    )
	  if "%%o"=="qt" (
        curl -sL#o "%TEMP%\qBittorrentEE-OnlineInstaller.cmd" "https://raw.githubusercontent.com/byGOG/byGOG-OnlineInstaller/main/OnlineInstaller/qBittorrentEE-OnlineInstaller.cmd" && CALL %TEMP%\qBittorrentEE-OnlineInstaller.cmd
    )
	  if "%%o"=="dr" (
        echo DriversCloud.com...
        start https://www.driverscloud.com/
    )
	  if "%%o"=="dx" (
        winget install --id Microsoft.DirectX --accept-source-agreements --source winget
    )
      if "%%o"=="nf" (
		winget install --id Microsoft.DotNet.Framework.DeveloperPack_4 --source winget --accept-source-agreements
    )
	  if "%%o"=="nr" (
		winget install --id Microsoft.DotNet.DesktopRuntime.3_1 --source winget --accept-source-agreements
		winget install --id Microsoft.DotNet.DesktopRuntime.5 --source winget --accept-source-agreements
		winget install --id Microsoft.DotNet.DesktopRuntime.6 --source winget --accept-source-agreements
		winget install --id Microsoft.DotNet.DesktopRuntime.7 --source winget --accept-source-agreements
		winget install --id Microsoft.DotNet.DesktopRuntime.Preview --source winget --accept-source-agreements
    )
	  if "%%o"=="vc" (
		winget install --id Microsoft.VCRedist.2005.x86 --source winget --accept-source-agreements
		winget install --id Microsoft.VCRedist.2005.x64 --source winget --accept-source-agreements
		winget install --id Microsoft.VCRedist.2008.x86 --source winget --accept-source-agreements
		winget install --id Microsoft.VCRedist.2008.x64 --source winget --accept-source-agreements
		winget install --id Microsoft.VCRedist.2010.x64 --source winget --accept-source-agreements
		winget install --id Microsoft.VCRedist.2010.x86 --source winget --accept-source-agreements
		winget install --id Microsoft.VCRedist.2012.x86 --source winget --accept-source-agreements
		winget install --id Microsoft.VCRedist.2012.x64 --source winget --accept-source-agreements
		winget install --id Microsoft.VCRedist.2013.x86 --source winget --accept-source-agreements
		winget install --id Microsoft.VCRedist.2013.x64 --source winget --accept-source-agreements
		winget install --id Microsoft.VCRedist.2015+.x86 --source winget --accept-source-agreements
		winget install --id Microsoft.VCRedist.2015+.x64 --source winget --accept-source-agreements
    )
	  if "%%o"=="vw" (
        winget install --id=VMware.WorkstationPro --source winget --accept-source-agreements
	)
	  if "%%o"=="st" (
        echo sordum.net...
        start https://www.sordum.net/
    )
	  if "%%o"=="sg" (
        echo sordum.org...
        start https://www.sordum.org/
    )
	  if "%%o"=="wu" (
        curl -sL#o "%TEMP%\WingetUI-OnlineInstaller.cmd" "https://raw.githubusercontent.com/byGOG/byGOG-OnlineInstaller/main/OnlineInstaller/WingetUI-OnlineInstaller.cmd" && CALL %TEMP%\WingetUI-OnlineInstaller.cmd
    )
	  if "%%o"=="cg" (
		winget install --id lencx.ChatGPT --source winget --accept-source-agreements
    )
)

if not defined last_option (
    goto menu
	TITLE %NAME%
)

if "%last_option%"=="e" (
    echo Exiting...
    exit
)

pause
TITLE %NAME%
goto menu