:: Autor: Vinzent "TroniX" Herrschmann
:: Nutzung nur mit Erlaubnis des Autors
:: Version: 1.01 for RLP
@echo off
::IMPORTANT TO NAME IT SO WE CAN KILL IT
title servermonitor.bat
:start
C:\Windows\System32\tasklist /FI "IMAGENAME eq arma3server.exe" 2>NUL | C:\Windows\System32\find /I /N "arma3server.exe">NUL
if "%ERRORLEVEL%"=="0" goto loop
echo Server is not running, will be started now 
start "" /min /wait "R:\arma3\restartserver.bat" 
timeout 30
echo Server started succesfully
goto started
:loop
cls
echo Server ist online, und funktioniert
:started
::THE 80 REFERS TO SECONDS AND HOW OFTEN IT WILL CHECK,YOU CAN SET IT TO WHATEVER YOU WANT. I JUST DONT WANT MY SERVER DOWN FOR MUCH LONGER THAN THAT!
C:\Windows\System32\timeout /t 80
C:\Windows\System32\tasklist /FI "IMAGENAME eq arma3server.exe" 2>NUL | C:\Windows\System32\find /I /N "arma3server.exe">NUL
if "%ERRORLEVEL%"=="0" goto loop
goto start