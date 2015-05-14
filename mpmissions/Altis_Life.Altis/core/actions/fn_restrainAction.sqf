/*
	File: fn_restrainAction.sqf
	Author: Bryan "Tonic" Boardwine

	Description:
	Retrains the target.
*/
private["_unit","_unit2","_goggles","_uniform","_headgear"];
_unit = cursorTarget;
if(isNull _unit) exitWith {}; //Not valid
if((_unit getVariable "restrained")) exitWith {};
if((player distance _unit > 3)) exitWith {};
if(player == _unit) exitWith {};
if(!isPlayer _unit) exitWith {};
		life_maskiert = 0;
		if ((goggles _unit2) in RLP_goggles_Array) then {life_maskiert = 1};
		if ((uniform _unit2) in RLP_uniform_Array) then {life_maskiert = 1};
		if ((headgear _unit2) in RLP_headgear_Array) then {life_maskiert = 1};
//Broadcast!

if (life_maskiert > 0) then //ToClient
	{
		[player,"handcuffs"] call life_fnc_globalSound;
		_unit setVariable["restrained",true,true];
		[[player], "life_fnc_restrain", _unit, false] spawn life_fnc_MP;
		[[0,format["Du wurdest von %2 festgenommen",_unit getVariable["realname", name _unit], "einer Maskierten Person"]],"life_fnc_broadcast",west,false] call life_fnc_MP;
	}
		else
	{
		[player,"handcuffs"] call life_fnc_globalSound;
		_unit setVariable["restrained",true,true];
		[[player], "life_fnc_restrain", _unit, false] spawn life_fnc_MP;
		[[0,"STR_NOTF_Restrained",true,[_unit getVariable["realname", name _unit], profileName]],"life_fnc_broadcast",west,false] spawn life_fnc_MP;
	};