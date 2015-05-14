:: Autor: Vinzent "TroniX" Herrschmann
:: Nutzung nur mit Erlaubnis des Autors
:: Version: 1.01 for RLP
@echo off
::MAKE SURE ALL TASKS ARE REALLY STOPPED

taskkill /f /fi "status eq not responding" /im arma3server.exe
taskkill /f /im arma3server.exe
timeout 1

::IF YOU PLAY ON SAME PC AS SERVER, SOMETIMES RESTARTS GET HUNG UP BECAUSE OF IT SO MAKE SURE TO KILL CLIENTSIDE TOO, I DONT, BUT JUST IN CASE YOU DO

taskkill /f /fi "status eq not responding" /im arma3.exe
taskkill /f /im arma3.exe
timeout 1

:: KILL BATTLEYE IF IT ISN'T ALREADY
taskkill /im Bec.exe

::SHUTDOWN SERVERMONITOR IF IT IS ALREADY RUNNING - WE RESTART IT AT THE END OF THIS
taskkill /f /im cmd.exe /fi "windowtitle eq servermonitor.bat
echo Make sure all is clear

::RESTARTING BATTLEYE
set becpath="C:\Users\root\Desktop\ARMA-EPOCH\arma3\Bec"
cd /d %becpath%
start "" /min "Bec.exe" -f config.cfg
timeout 3
echo Battleye has started.. 
echo.
echo.
echo Starting ARMA 3 Server...

::RESTARTING THE ARMA 3 SERVER BE SURE TO EDIT THIS TO YOUR SERVER .EXE LOCATION -NOTE ALSO THIS IS WHERE YOU DEFINE WHERE YOU CONFIG.CFG IS
cd C:\Users\root\Desktop\ARMA-EPOCH\arma3
timeout 3
start "arma3" /min /high "arma3server.exe" "-profiles=C:\Users\root\Desktop\ARMA-EPOCH\arma3\config" "-BEPath=C:\Users\root\Desktop\ARMA-EPOCH\arma3\TADST\1\BattlEye" "-config=C:\Users\root\Desktop\ARMA-EPOCH\arma3\config\config.cfg" "-cfg=C:\Users\root\Desktop\ARMA-EPOCH\arma3\config\basic.cfg" -port=2302 -world=empty -autoinit -noSound -nosplash -cpuCount=4 -maxmem=2047 "-mod=@extDB;@life_server;@RLP;@asm"
timeout 6
echo ARMA 3 Server has started
timeout 5
exit 