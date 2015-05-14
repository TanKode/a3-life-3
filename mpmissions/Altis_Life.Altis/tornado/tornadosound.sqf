_object = _this select 0;
while{true} do
{
	if(player distance _object < 150) then {[source, "tornado"] call life_fnc_globalsound;};
	sleep 33;
};