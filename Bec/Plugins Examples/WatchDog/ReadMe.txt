
This Plugin will reloade current files if they change, get edited etc.

* - Your-Admin.xml
* - Your-Command.xml
* - Your-WhiteList.txt
* - Your-BadWords.txt
* - Your-BadNames.txt
* - Be Filter Files

This means that you can edit your Admins.xml or WhiteList.txt ,..., without restarting Bec.exe for it to have effect.
The plugin is set to watch over the files every 5th second.

Note. its unknown if the plugin will work if the file(s) are stored on network drive(s). 
I am unsure if "os.stat(filename).st_mtime" will work on them nor do i know if it will work with Linux/Wine. 

--------------------------------------------------------------------------------------------------
Info About Multiple Server Configuration..
 
If you use one Bec.exe with multiple config files in Bec's directory READ ON!!!

If you have multiple servers and if you only want to run the plugin with Bec for a|or spesific server(s).
Then define the config names in the SERVERS variable , you'll find it in: __init__.py

Example: 
you run 3 servers, named: 

* - server-1.cfg
* - dayZ-foobar.cfg
* - peter-pans-wasteland.cfg

But you only want to run the plugin on the 2 first servers (server-1.cfg and dayZ-foobar)
You then define it like this, "remember quotes around the name"

SERVERS = ["server-1.cfg", "dayZ-foobar"]

If you want it to start no matter what server, then leave it empty
Default it is set to start on any configuration...
