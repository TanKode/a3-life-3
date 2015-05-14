/*
	File: fn_robReceive.sqf
	Author: Bryan "Tonic" Boardwine
*/
private["_cash"];
_cash = [_this,0,0,[0]] call BIS_fnc_param;
if(_cash == 0) exitWith {titleText[localize "STR_Civ_RobFail","PLAIN"]};

life_RLP_handgeld = life_RLP_handgeld + _cash;
_data = missionNamespace getVariable "Thief_Prof";
_addExpAmount = 25;
_addExpAmount = _addExpAmount + (5 * (_data select 0));
["Thief_Prof",_AddExpAmount] call life_fnc_addExp;
[[0,format["You have earned %1 XP for robbing someone", _addExpAmount]],"life_fnc_broadcast",player,false] spawn life_fnc_MP;
titleText[format[localize "STR_Civ_Robbed",[_cash] call life_fnc_numberText],"PLAIN"];
// Sync life_RLP_handgeld to DB:
[[getPlayerUID player,playerSide,life_RLP_handgeld,0],"DB_fnc_updatePartial",false,false] spawn life_fnc_MP;

// Sync life_RLP_atmgeld to DB:
[[getPlayerUID player,playerSide,life_RLP_atmgeld,1],"DB_fnc_updatePartial",false,false] spawn life_fnc_MP