/*
File: fn_gatherdaten.sqf


Description:
Gathers daten?
*/
private["_sum"];
_sum = ["daten",2,life_carryWeight,life_maxWeight] call life_fnc_calWeightDiff;

if(_sum > 0) then
{
life_action_gather = true;

[player,"take"] call life_fnc_globalSound;

titleText["Sammel Datenpakete...","PLAIN"];
player playMove "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon"; //Bewegungs animation
titleFadeOut 5;
sleep 5;
if(([true,"daten",3] call life_fnc_handleInv)) then
{
titleText[format["Datenpakete gesammelt",_sum],"PLAIN"];
};
};

life_action_gather = false;