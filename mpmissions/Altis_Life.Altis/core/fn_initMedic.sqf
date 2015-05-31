#include <macro.h>
/*
	File: fn_initMedic.sqf
	Author: Bryan "Tonic" Boardwine

	Description:
	Initializes the medic..
*/
private["_end"];
player addRating 99999999;
waitUntil {!(isNull (findDisplay 46))};

if((__GETC__(life_medicLevel)) < 1) exitWith {
	["Notwhitelisted",FALSE,TRUE] call BIS_fnc_endMission;
	sleep 35;
};

[] spawn life_fnc_welcome;
waitUntil{!isNull (findDisplay 999999)}; //Wait for the welcome to be open.
waitUntil{isNull (findDisplay 999999)}; //Wait for the welcome to be done.

[] call life_fnc_spawnMenu;
waitUntil{!isNull (findDisplay 38500)}; //Wait for the spawn selection to be open.
waitUntil{isNull (findDisplay 38500)}; //Wait for the spawn selection to be done.

switch(__GETC__(life_medicLevel)) do
{
	case 1: {life_RLP_paycheck = 720;};
	case 2: {life_RLP_paycheck = 720;};
	case 3: {life_RLP_paycheck = 720;};
	case 4: {life_RLP_paycheck = 720;};
	case 5: {life_RLP_paycheck = 720;};
	default {life_RLP_paycheck = 720;};
};

//Show Ranks
player setVariable["coplevel", (__GETC__(life_coplevel)), true];
player setVariable["medlevel", (__GETC__(life_medicLevel)), true];
//player setVariable["adminlevel", (__GETC__(life_adminlevel)), true];

[] spawn
{
	while {true} do
	{
		waitUntil {uniform player == "U_Rangemaster"};
		player setObjectTextureGlobal [0,"textures\medic\medicskin.paa"];
		waitUntil {uniform player != "U_Rangemaster"};
	};
};