while{true} do
{
	_random1 = random 500;
	_random2 = random 500;
	_random1 = random 500;
	_random2 = random 500;
	_random1 = random 500;
	_random2 = random 500;
	_random1 = random 500;
	_random2 = random 500;
	if(_random1 > 80 && _random2 < 20) then //tornado will happen
	{
		_tornadoLocs = ["tornado_1","tornado_2","tornado_3"];
		_pickedLoc = _tornadoLocs call BIS_fnc_selectRandom;
		_pickedLocReal = getMarkerpos _pickedLoc;
		_tortime = 500;
		tornadoActive = true;
		nul = [_pickedLocReal,_tortime] execVM "tornado\fn_tornado.sqf";
		//nul = [source] execVM "tornado\tornadoLightning.sqf";
		//nul = [[_pickedLocReal,_tortime],"life_fnc_tornado",true,false] spawn life_fnc_MP;
		//nul = [[source],"life_fnc_tornadoLightning",true,false] spawn life_fnc_MP;
	};
	waituntil{!tornadoActive};
};
