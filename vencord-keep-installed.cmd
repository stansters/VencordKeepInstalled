@echo off
cd C:\Users\%USERNAME%\VencordUpdater



VencordInstallerCli.exe -update-self
VencordInstallerCli.exe -branch canary -install-openasar
VencordInstallerCli.exe -branch canary -install
VencordInstallerCli.exe -branch stable -install-openasar
VencordInstallerCli.exe -branch stable -install
VencordInstallerCli.exe -branch ptb -install-openasar
VencordInstallerCli.exe -branch ptb -install

start "" "C:\Users\%USERNAME%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Discord Inc\Discord Canary.lnk"
