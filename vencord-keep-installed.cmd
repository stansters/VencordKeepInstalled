@echo off
cd C:\Users\%USERNAME%\VencordUpdater


TASKKILL /IM Discord.exe /F
TASKKILL /IM DiscordCanary.exe /F
TASKKILL /IM DiscordPTB.exe /F
VencordInstallerCli.exe -update-self
VencordInstallerCli.exe -branch canary -install-openasar
VencordInstallerCli.exe -branch canary -install
VencordInstallerCli.exe -branch stable -install-openasar
VencordInstallerCli.exe -branch stable -install
VencordInstallerCli.exe -branch ptb -install-openasar
VencordInstallerCli.exe -branch ptb -install


IF EXIST "C:\Users\%USERNAME%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Discord Inc\Discord.lnk" (start "" "C:\Users\%USERNAME%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Discord Inc\Discord.lnk")

IF EXIST "C:\Users\%USERNAME%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Discord Inc\Discord Canary.lnk" (start "" "C:\Users\%USERNAME%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Discord Inc\Discord Canary.lnk")

IF EXIST "C:\Users\%USERNAME%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Discord Inc\Discord PTB.lnk" (start "" "C:\Users\%USERNAME%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Discord Inc\Discord PTB.lnk")
