#include <macro.h>
/*
	File: fn_initCop.sqf
	Author: Bryan "Tonic" Boardwine

	Description:
	Cop Initialization file.
*/
private["_end"];
player addRating 9999999;
waitUntil {!(isNull (findDisplay 46))};
_end = false;
if(life_blacklisted) exitWith
{
	["Blacklisted",false,true] call BIS_fnc_endMission;
	sleep 30;
};

switch(__GETC__(life_coplevel)) do
{
	case 1: {life_RLP_paycheck = 1000;};
	case 2: {life_RLP_paycheck = 1250;};
	case 3: {life_RLP_paycheck = 1500;};
	case 4: {life_RLP_paycheck = 1750;};
	case 5: {life_RLP_paycheck = 2000;};
	case 6: {life_RLP_paycheck = 2250;};
	case 7: {life_RLP_paycheck = 2500;};
	case 8: {life_RLP_paycheck = 2750;};
	case 9: {life_RLP_paycheck = 3000;};
	case 10: {life_RLP_paycheck = 3250;};
	case 11: {life_RLP_paycheck = 3500;};
	default { life_RLP_paycheck = 1000; };
};

if((__GETC__(life_coplevel) == 0) && (__GETC__(life_adminlevel) == 0)) then {
	["NotWhitelisted",false,true] call BIS_fnc_endMission;
	sleep 35;
};

//Show Ranks
player setVariable["coplevel", (__GETC__(life_coplevel)), true];
player setVariable["medlevel", (__GETC__(life_medicLevel)), true];
//player setVariable["adminlevel", (__GETC__(life_adminlevel)), true];

[] spawn life_fnc_welcome;
waitUntil{!isNull (findDisplay 999999)}; //Wait for the welcome to be open.
waitUntil{isNull (findDisplay 999999)}; //Wait for the welcome to be done.

[] call life_fnc_spawnMenu;
waitUntil{!isNull (findDisplay 38500)}; //Wait for the spawn selection to be open.
waitUntil{isNull (findDisplay 38500)}; //Wait for the spawn selection to be done.