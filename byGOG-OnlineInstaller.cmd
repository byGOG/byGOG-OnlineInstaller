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
echo [bw] Bitwarden               [gc] Google Chrome               [qt] qBittorrent        [tv] TeamViewer
echo [cc] CCleaner                [gd] Google Drive                [rs] Rufus              [tg] Telegram
echo [cl] Chocolatey              [id] Internet Download Manager   [sb] Sandboxie          [vs] Visual Studio Code
echo [cq] CopyQ                   [mf] Mozilla Firefox             [sp] Scoop              [vm] VLC Media Player 
echo [kc] K-Lite Codec Pack Mega  [np] Notepad++                   [sx] ShareX             [wr] WinRAR       
echo [bc] Bulk Crap Uninstaller          
echo =================================================( with WinGET )=================================================
echo [vc] Visual C++ Redist       [nr] .NET Desktop Runtime        [nf] .NET Framework     [dx] DirectX 
echo [vw] VMware Workstation Pro            
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
        echo Installing 7-Zip...
        curl -sL#o "%TEMP%\7zip-OnlineInstaller.cmd" "https://github.com/byGOG/byGOG-OnlineInstaller/raw/main/OnlineInstaller/7zip-OnlineInstaller.cmd" && CALL %TEMP%\7zip-OnlineInstaller.cmd
    )
      if "%%o"=="gc" (
        echo Installing Google Chrome...
        curl -sL#o "%TEMP%\GoogleChrome-OnlineInstaller.cmd" "https://github.com/byGOG/byGOG-OnlineInstaller/raw/main/OnlineInstaller/GoogleChrome-OnlineInstaller.cmd" && CALL %TEMP%\GoogleChrome-OnlineInstaller.cmd
    )
      if "%%o"=="mf" (
        echo Installing Mozilla Firefox...
        curl -sL#o "%TEMP%\MozillaFirefox-OnlineInstaller.cmd" "https://github.com/byGOG/byGOG-OnlineInstaller/raw/main/OnlineInstaller/MozillaFirefox-OnlineInstaller.cmd" && CALL %TEMP%\MozillaFirefox-OnlineInstaller.cmd
    )
      if "%%o"=="np" (
        echo Installing Notepad++...
        curl -sL#o "%TEMP%\NotepadPlusPlus-OnlineInstaller.cmd" "https://github.com/byGOG/byGOG-OnlineInstaller/raw/main/OnlineInstaller/NotepadPlusPlus-OnlineInstaller.cmd" && CALL %TEMP%\NotepadPlusPlus-OnlineInstaller.cmd
    )
      if "%%o"=="vm" (
        echo Installing VLC Media Player...
        curl -sL#o "%TEMP%\VLC-OnlineInstaller.cmd" "https://raw.githubusercontent.com/byGOG/byGOG-OnlineInstaller/main/OnlineInstaller/VLC-OnlineInstaller.cmd" && CALL %TEMP%\VLC-OnlineInstaller.cmd
    )
      if "%%o"=="wr" (
        echo Installing WinRAR...
        curl -sL#o "%TEMP%\WinRAR-OnlineInstaller.cmd" "https://raw.githubusercontent.com/byGOG/byGOG-OnlineInstaller/main/OnlineInstaller/WinRAR-OnlineInstaller.cmd" && CALL %TEMP%\WinRAR-OnlineInstaller.cmd
    )
	  if "%%o"=="ap" (
        echo Installing AIMP...
        curl -sL#o "%TEMP%\AIMP-OnlineInstaller.cmd" "https://raw.githubusercontent.com/byGOG/byGOG-OnlineInstaller/main/OnlineInstaller/AIMP-OnlineInstaller.cmd" && CALL %TEMP%\AIMP-OnlineInstaller.cmd
    )
	  if "%%o"=="ad" (
        echo Installing AnyDesk...
        curl -sL#o "%TEMP%\AnyDesk-OnlineInstaller.cmd" "https://raw.githubusercontent.com/byGOG/byGOG-OnlineInstaller/main/OnlineInstaller/AnyDesk-OnlineInstaller.cmd" && CALL %TEMP%\AnyDesk-OnlineInstaller.cmd
    )
	  if "%%o"=="bw" (
        echo Installing Bitwarden...
        curl -sL#o "%TEMP%\Bitwarden-OnlineInstaller.cmd" "https://raw.githubusercontent.com/byGOG/byGOG-OnlineInstaller/main/OnlineInstaller/Bitwarden-OnlineInstaller.cmd" && CALL %TEMP%\Bitwarden-OnlineInstaller.cmd
    )
	  if "%%o"=="cc" (
        echo Installing CCleaner...
        curl -sL#o "%TEMP%\CCleaner-OnlineInstaller.cmd" "https://raw.githubusercontent.com/byGOG/byGOG-OnlineInstaller/main/OnlineInstaller/CCleaner-OnlineInstaller.cmd" && CALL %TEMP%\CCleaner-OnlineInstaller.cmd
    )
	  if "%%o"=="cl" (
        echo Installing Chocolatey...
        curl -sL#o "%TEMP%\Chocolatey-OnlineInstaller.cmd" "https://raw.githubusercontent.com/byGOG/byGOG-OnlineInstaller/main/OnlineInstaller/Chocolatey-OnlineInstaller.cmd" && CALL %TEMP%\Chocolatey-OnlineInstaller.cmd
    )
	  if "%%o"=="cq" (
        echo Installing CopyQ...
        curl -sL#o "%TEMP%\CopyQ-OnlineInstaller.cmd" "https://raw.githubusercontent.com/byGOG/byGOG-OnlineInstaller/main/OnlineInstaller/CopyQ-OnlineInstaller.cmd" && CALL %TEMP%\CopyQ-OnlineInstaller.cmd
    )
	  if "%%o"=="dl" (
        echo Installing DeepL...
        curl -sL#o "%TEMP%\DeepL-OnlineInstaller.cmd" "https://raw.githubusercontent.com/byGOG/byGOG-OnlineInstaller/main/OnlineInstaller/DeepL-OnlineInstaller.cmd" && CALL %TEMP%\DeepL-OnlineInstaller.cmd
    )
	  if "%%o"=="dc" (
        echo Installing Discord...
        curl -sL#o "%TEMP%\Discord-OnlineInstaller.cmd" "https://raw.githubusercontent.com/byGOG/byGOG-OnlineInstaller/main/OnlineInstaller/Discord-OnlineInstaller.cmd" && CALL %TEMP%\Discord-OnlineInstaller.cmd
    )
	  if "%%o"=="et" (
        echo Installing Everything...
        curl -sL#o "%TEMP%\Everything-OnlineInstaller.cmd" "https://raw.githubusercontent.com/byGOG/byGOG-OnlineInstaller/main/OnlineInstaller/Everything-OnlineInstaller.cmd" && CALL %TEMP%\Everything-OnlineInstaller.cmd
    )
	  if "%%o"=="gd" (
        echo Installing Google Drive...
        curl -sL#o "%TEMP%\GoogleDrive-OnlineInstaller.cmd" "https://raw.githubusercontent.com/byGOG/byGOG-OnlineInstaller/main/OnlineInstaller/GoogleDrive-OnlineInstaller.cmd" && CALL %TEMP%\GoogleDrive-OnlineInstaller.cmd
    )
	  if "%%o"=="id" (
        echo Installing Internet Download Manager...
        curl -sL#o "%TEMP%\InternetDownloadManager-OnlineInstaller.cmd" "https://raw.githubusercontent.com/byGOG/byGOG-OnlineInstaller/main/OnlineInstaller/InternetDownloadManager-OnlineInstaller.cmd" && CALL %TEMP%\InternetDownloadManager-OnlineInstaller.cmd
    )
	  if "%%o"=="ot" (
        echo Installing Office Tool Plus...
        curl -sL#o "%TEMP%\OfficeToolPlus-OnlineInstaller.cmd" "https://raw.githubusercontent.com/byGOG/byGOG-OnlineInstaller/main/OnlineInstaller/OfficeToolPlus-OnlineInstaller.cmd" && CALL %TEMP%\OfficeToolPlus-OnlineInstaller.cmd
    )
	  if "%%o"=="pt" (
        echo Installing PowerToys...
        curl -sL#o "%TEMP%\PowerToys-OnlineInstaller.cmd" "https://raw.githubusercontent.com/byGOG/byGOG-OnlineInstaller/main/OnlineInstaller/PowerToys-OnlineInstaller.cmd" && CALL %TEMP%\PowerToys-OnlineInstaller.cmd
    )
	  if "%%o"=="pv" (
        echo Installing Proton VPN...
        curl -sL#o "%TEMP%\ProtonVPN-OnlineInstaller.cmd" "https://raw.githubusercontent.com/byGOG/byGOG-OnlineInstaller/main/OnlineInstaller/ProtonVPN-OnlineInstaller.cmd" && CALL %TEMP%\ProtonVPN-OnlineInstaller.cmd
    )
	  if "%%o"=="rs" (
        echo Installing Rufus...
        curl -sL#o "%TEMP%\Rufus-OnlineInstaller.cmd" "https://raw.githubusercontent.com/byGOG/byGOG-OnlineInstaller/main/OnlineInstaller/Rufus-OnlineInstaller.cmd" && CALL %TEMP%\Rufus-OnlineInstaller.cmd
    )
	  if "%%o"=="sb" (
        echo Installing Sandboxie...
        curl -sL#o "%TEMP%\Sandboxie-OnlineInstaller.cmd" "https://raw.githubusercontent.com/byGOG/byGOG-OnlineInstaller/main/OnlineInstaller/Sandboxie-OnlineInstaller.cmd" && CALL %TEMP%\Sandboxie-OnlineInstaller.cmd
    )
	  if "%%o"=="sp" (
        echo Installing Scoop...
        curl -sL#o "%TEMP%\Scoop-OnlineInstaller.cmd" "https://raw.githubusercontent.com/byGOG/byGOG-OnlineInstaller/main/OnlineInstaller/Scoop-OnlineInstaller.cmd" && CALL %TEMP%\Scoop-OnlineInstaller.cmd
    )
	  if "%%o"=="sx" (
        echo Installing ShareX...
        curl -sL#o "%TEMP%\ShareX-OnlineInstaller.cmd" "https://raw.githubusercontent.com/byGOG/byGOG-OnlineInstaller/main/OnlineInstaller/ShareX-OnlineInstaller.cmd" && CALL %TEMP%\ShareX-OnlineInstaller.cmd
    )
	  if "%%o"=="sy" (
        echo Installing Spotify...
        curl -sL#o "%TEMP%\Spotify-OnlineInstaller.cmd" "https://raw.githubusercontent.com/byGOG/byGOG-OnlineInstaller/main/OnlineInstaller/Spotify-OnlineInstaller.cmd" && CALL %TEMP%\Spotify-OnlineInstaller.cmd
    )
	  if "%%o"=="sm" (
        echo Installing Steam...
        curl -sL#o "%TEMP%\Steam-OnlineInstaller.cmd" "https://raw.githubusercontent.com/byGOG/byGOG-OnlineInstaller/main/OnlineInstaller/Steam-OnlineInstaller.cmd" && CALL %TEMP%\Steam-OnlineInstaller.cmd
    )
	  if "%%o"=="so" (
        echo Installing Stremio...
        curl -sL#o "%TEMP%\Stremio-OnlineInstaller.cmd" "https://raw.githubusercontent.com/byGOG/byGOG-OnlineInstaller/main/OnlineInstaller/Stremio-OnlineInstaller.cmd" && CALL %TEMP%\Stremio-OnlineInstaller.cmd
    )
	  if "%%o"=="tv" (
        echo Installing TeamViewer...
        curl -sL#o "%TEMP%\TeamViewer-OnlineInstaller.cmd" "https://raw.githubusercontent.com/byGOG/byGOG-OnlineInstaller/main/OnlineInstaller/TeamViewer-OnlineInstaller.cmd" && CALL %TEMP%\TeamViewer-OnlineInstaller.cmd
    )
	  if "%%o"=="tg" (
        echo Installing Telegram...
        curl -sL#o "%TEMP%\Telegram-OnlineInstaller.cmd" "https://raw.githubusercontent.com/byGOG/byGOG-OnlineInstaller/main/OnlineInstaller/Telegram-OnlineInstaller.cmd" && CALL %TEMP%\Telegram-OnlineInstaller.cmd
    )
	  if "%%o"=="vs" (
        echo Installing Visual Studio Code...
        curl -sL#o "%TEMP%\VisualStudioCode-OnlineInstaller.cmd" "https://raw.githubusercontent.com/byGOG/byGOG-OnlineInstaller/main/OnlineInstaller/VisualStudioCode-OnlineInstaller.cmd" && CALL %TEMP%\VisualStudioCode-OnlineInstaller.cmd
    )
	  if "%%o"=="kc" (
        echo Installing K-Lite Codec Pack Mega...
        curl -sL#o "%TEMP%\K-LiteCodecPackMega-OnlineInstaller.cmd" "https://raw.githubusercontent.com/byGOG/byGOG-OnlineInstaller/main/OnlineInstaller/K-LiteCodecPackMega-OnlineInstaller.cmd" && CALL %TEMP%\K-LiteCodecPackMega-OnlineInstaller.cmd
    )
	  if "%%o"=="bc" (
        echo Installing Bulk Crap Uninstaller...
        curl -sL#o "%TEMP%\BulkCrapUninstaller-OnlineInstaller.cmd" "https://raw.githubusercontent.com/byGOG/byGOG-OnlineInstaller/main/OnlineInstaller/BulkCrapUninstaller-OnlineInstaller.cmd" && CALL %TEMP%\BulkCrapUninstaller-OnlineInstaller.cmd
    )
	  if "%%o"=="qt" (
        echo Installing qBittorrent...
        curl -sL#o "%TEMP%\qBittorrent-OnlineInstaller.cmd" "https://raw.githubusercontent.com/byGOG/byGOG-OnlineInstaller/main/OnlineInstaller/qBittorrent-OnlineInstaller.cmd" && CALL %TEMP%\qBittorrent-OnlineInstaller.cmd
    )
	  if "%%o"=="dr" (
        echo DriversCloud.com...
        start https://www.driverscloud.com/
    )
	  if "%%o"=="dx" (
        echo Installing DirectX...
        winget install --id Microsoft.DirectX --accept-source-agreements --source winget
    )
      if "%%o"=="nf" (
        echo Installing .NET Framework...
		winget install --id Microsoft.DotNet.Framework.DeveloperPack_4 --source winget --accept-source-agreements
    )
	  if "%%o"=="nr" (
        echo Installing .NET Desktop Runtime...
		winget install --id Microsoft.DotNet.DesktopRuntime.3_1 --source winget --accept-source-agreements
		winget install --id Microsoft.DotNet.DesktopRuntime.5 --source winget --accept-source-agreements
		winget install --id Microsoft.DotNet.DesktopRuntime.6 --source winget --accept-source-agreements
		winget install --id Microsoft.DotNet.DesktopRuntime.7 --source winget --accept-source-agreements
		winget install --id Microsoft.DotNet.DesktopRuntime.Preview --source winget --accept-source-agreements
    )
	  if "%%o"=="vc" (
        echo Installing Visual C++ Redist...
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
        echo Installing VMware Workstation Pro ...
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