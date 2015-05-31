#include <macro.h>
/*
	File: fn_initAdac.sqf
	Author: Bryan "Tonic" Boardwine

	Description:
	Initializes the PMC
*/
private["_end"];
player addRating 99999999;
waitUntil {!(isNull (findDisplay 46))};

if((__GETC__(life_adaclevel)) < 1) exitWith {
	["Notwhitelisted",FALSE,TRUE] call BIS_fnc_endMission;
	sleep 35;
};
if(__GETC__(life_whitelist) == 0) exitWith
{
    ["NotWhitelisted",false,true] call BIS_fnc_endMission;
    sleep 30;
};
_igiload = execVM "IgiLoad\IgiLoadInit.sqf";

	[] spawn life_fnc_welcome;
	waitUntil{!isNull (findDisplay 999999)}; //Wait for the welcome to be open.
	waitUntil{isNull (findDisplay 999999)}; //Wait for the welcome to be done.

[] call life_fnc_spawnMenu;
waitUntil{!isNull (findDisplay 38500)}; //Wait for the spawn selection to be open.
waitUntil{isNull (findDisplay 38500)}; //Wait for the spawn selection to be done.

//Show Ranks
player setVariable["coplevel", (__GETC__(life_coplevel)), true];
player setVariable["medlevel", (__GETC__(life_medicLevel)), true];
player setVariable["adaclevel", (__GETC__(life_adaclevel)), true];