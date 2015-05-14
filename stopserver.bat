:: Autor: Vinzent "TroniX" Herrschmann
:: Nutzung nur mit Erlaubnis des Autors
:: Version: 1.01 for RLP
@echo off
::KILL ARMA3 SERVER
taskkill /f /fi "status eq not responding" /im arma3server.exe
taskkill /f /im arma3server.exe
timeout 1
::DOUBLE CHECK KILL
taskkill /f /fi "status eq not responding" /im arma3server.exe
taskkill /f /im arma3server.exe
timeout 1
:: KILL BATTLEYE
taskkill /im Bec.exe
timeout 1
::KILL SERVER MONITOR
taskkill /f /im cmd.exe /fi "windowtitle eq servermonitor.bat"
::KILL ALL COMMAND.EXE THAT ARE OPEN
taskkill /f /fi "status eq not responding" /im cmd.exe
taskkill /f /im cmd.exe
timeout 1
::DOUBLE TAP
taskkill /f /fi "status eq not responding" /im cmd.exe
taskkill /f /im cmd.exe
timeout 1