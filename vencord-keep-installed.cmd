@echo off
cd C:\Users\%USERNAME%\VencordUpdater



VencordInstallerCli.exe -update-self
VencordInstallerCli.exe -branch canary -install-openasar
VencordInstallerCli.exe -branch canary -install

start "" "C:\Users\%USERNAME%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Discord Inc\Discord Canary.lnk"
