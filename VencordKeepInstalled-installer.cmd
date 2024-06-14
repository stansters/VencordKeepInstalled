@echo off
echo Creating folder
mkdir "C:\Users\%USERNAME%\VencordUpdater"
cd "C:\Users\%USERNAME%\VencordUpdater"
echo Done
echo Downloading VencordInstallerCli.exe
powershell -Command "Invoke-WebRequest https://github.com/Vencord/Installer/releases/latest/download/VencordInstallerCli.exe -OutFile VencordInstallerCli.exe"
echo Done
echo Downloading script
powershell -Command "Invoke-WebRequest https://raw.githubusercontent.com/stansters/VencordKeepInstalled/main/vencord-keep-installed.cmd -OutFile vencord-keep-installed.cmd"
echo Done
echo Making the script run on startup
powershell "$s=(New-Object -COM WScript.Shell).CreateShortcut('%userprofile%\Start Menu\Programs\Startup\vencord-keep-installed.lnk');$s.TargetPath='C:\Users\%USERNAME%\VencordUpdater\vencord-keep-installed.cmd';$s.Save()"
echo Done
pause