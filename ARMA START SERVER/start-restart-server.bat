@echo off
echo Stopping the server for restart
echo Stopping arma3server.exe ...
taskkill /f /im arma3server.exe
echo Server is stopped now ... restarting
timeout /t 1 /nobreak
echo Starting Server
cd C:\Program Files (x86)\Steam\steamapps\common\Arma 3 Server
start "arma3" /min /high "arma3server.exe" "-profiles=C:\Program Files (x86)\Steam\steamapps\common\Arma 3 Server\config" "-BEPath=C:\Program Files (x86)\Steam\steamapps\common\Arma 3 Server\battleye" "-config=C:\Program Files (x86)\Steam\steamapps\common\Arma 3 Server\config\config.cfg" "-cfg=C:\Program Files (x86)\Steam\steamapps\common\Arma 3 Server\config\basic.cfg" -port=2302 -world=empty  -noSound -nologs -malloc=tbbmalloc -nosplash -cpuCount=4 -maxmem=3047 "-mod=@extDB;@life_server;@RLP"