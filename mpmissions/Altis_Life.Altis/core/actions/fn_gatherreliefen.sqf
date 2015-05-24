/*
File: fn_gatherreliefen.sqf


Description:
Gathers reliefen?
*/
private["_sum"];
_sum = ["reliefen",2,life_carryWeight,life_maxWeight] call life_fnc_calWeightDiff;

if(_sum > 0) then
{
life_action_gather = true;

[player,"take"] call life_fnc_globalSound;

titleText["Sammel Reliefen...","PLAIN"];
player playMove "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon"; //Bewegungs animation
titleFadeOut 5;
sleep 5;
if(([true,"reliefen",3] call life_fnc_handleInv)) then
{
titleText[format["Reliefen gesammelt",_sum],"PLAIN"];
};
};

life_action_gather = false;
