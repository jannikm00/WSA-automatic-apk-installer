echo off
NET SESSION >nul 2>&1
IF %ERRORLEVEL% EQU 0 (
    ECHO Administrator privileges Detected.
color 0a
) ELSE (
    ECHO Please start this Script with Administrator Privileges!
color c0
pause
exit
)
set /p case= "Do want to install WSA with Magisk and Play Store? Y=Yes N=No:"
if %case% EQU Y (
echo press CTRL+M and select this link then CTRL+C and download the zip file https://mega.nz/file/htBgESIJ#F4FZaXT1xmfm-lP0bOv5mHx99VI9fTdXcw8_KPsZNJg
echo Unpack this .zip file to C:\ and name it 64
echo Open powershell as administrator
echo Input cd C:\64 into powershell and hit enter
echo Input .\Install.ps1 into powershell and hit enter
echo Close powershell after installation
)
cd C:\64
set /p IP= "Please input the IP+Port of the ADB in Windows Subsystem for Android, for example:127.0.0.1:58526:"
adb connect %IP%
echo Allow WSA ADB Debugging
pause
echo Put the .apk in the C:\64\ folder
set /p APK= "Please write the exact name of the file, for example:store.apk:"
echo %APK% is installing please wait...
adb install %APK%
pause
