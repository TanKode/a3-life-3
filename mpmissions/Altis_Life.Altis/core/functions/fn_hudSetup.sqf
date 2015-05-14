/*
	File: fn_hudSetup.sqf
	Author: Bryan "Tonic" Boardwine

	Description:
	Setups the hud for the player?
*/
#include <macro.h>
private["_display","_alpha","_version","_p","_pg"];
disableSerialization;
_display = findDisplay 46;
_alpha = _display displayCtrl 1001;
_version = _display displayCtrl 1000;

2 cutRsc ["playerHUD","PLAIN"];
_version ctrlSetText format["BETA: 0.%1.%2",(productVersion select 2),(productVersion select 3)];
[] call life_fnc_hudUpdate;

[] spawn
{
	private["_dam"];
	while {true} do
	{
		_dam = damage player;
		waitUntil {(damage player) != _dam};
		[] call life_fnc_hudUpdate;
	};
};

[] spawn
{
	private["_money"];
	while {true} do
	{
		_money = life_RLP_handgeld;
		waitUntil {(life_RLP_handgeld) != _money};
		[] call life_fnc_hudUpdate;
	};
};

[] spawn
{
	private["_toilet"];
	while {true} do
	{
		_toilet = life_toilet;
		waitUntil {(life_toilet) != _toilet};
		[] call life_fnc_hudUpdate;
	};
};