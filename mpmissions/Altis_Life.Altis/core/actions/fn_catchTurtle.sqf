/*
	File: fn_catchTurtle.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Catches a dead turtle?
*/
private["_obj"];
_obj = cursorTarget;
if(isNull _obj) exitWith {}; //Not valid
if(alive _obj) exitWith {}; //It's alive, don't take it charlie!

if(([true,"turtle",1] call life_fnc_handleInv)) then
{
    deleteVehicle _obj;
    titleText[localize "STR_NOTF_CaughtTurtle","PLAIN"];
    _data = missionNamespace getVariable ("Fishing_Prof");
    _addExpAmount = 10;
    _addExpAmount = _addExpAmount + (5 * (_data select 0));
    ["Fishing_Prof",_AddExpAmount] call life_fnc_addExp;
};