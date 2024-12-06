@echo off
cd C:\Users\%USERNAME%\VencordUpdater

echo Checking vencord installer is updated
VencordInstallerCli.exe -update-self
echo.
TASKKILL /IM Discord.exe /F
echo.
TASKKILL /IM DiscordCanary.exe /F
echo.
TASKKILL /IM DiscordPTB.exe /F
echo.
echo Attempting to reinstall openasar on canary build
VencordInstallerCli.exe -branch canary -install-openasar
echo Attempting to reinstall vencord on canary build
VencordInstallerCli.exe -branch canary -install
echo.
echo Attempting to reinstall openasar on stable build
VencordInstallerCli.exe -branch stable -install-openasar
echo Attempting to reinstall vencord on stable build
VencordInstallerCli.exe -branch stable -install
echo.
echo Attempting to reinstall openasar on PTB build
VencordInstallerCli.exe -branch ptb -install-openasar
echo Attempting to reinstall vencord on PTB build
VencordInstallerCli.exe -branch ptb -install
echo.
echo Reopening in 3 seconds...
ping 127.0.0.1 -n 4 > nul
echo Opening

IF EXIST "C:\Users\%USERNAME%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Discord Inc\Discord.lnk" (start "" "C:\Users\%USERNAME%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Discord Inc\Discord.lnk")

IF EXIST "C:\Users\%USERNAME%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Discord Inc\Discord Canary.lnk" (start "" "C:\Users\%USERNAME%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Discord Inc\Discord Canary.lnk")

IF EXIST "C:\Users\%USERNAME%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Discord Inc\Discord PTB.lnk" (start "" "C:\Users\%USERNAME%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Discord Inc\Discord PTB.lnk")


