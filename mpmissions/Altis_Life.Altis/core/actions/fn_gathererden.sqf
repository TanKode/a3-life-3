/*
File: fn_gathererden.sqf


Description:
Gathers erden?
*/
private["_sum"];
_sum = ["erden",2,life_carryWeight,life_maxWeight] call life_fnc_calWeightDiff;

if(_sum > 0) then
{
life_action_gather = true;

[player,"take"] call life_fnc_globalSound;

titleText["Sammel Seltene Erde...","PLAIN"];
player playMove "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon"; //Bewegungs animation
titleFadeOut 5;
sleep 5;
if(([true,"erden",3] call life_fnc_handleInv)) then
{
titleText[format["Seltene Erde gesammelt",_sum],"PLAIN"];
};
};

life_action_gather = false;