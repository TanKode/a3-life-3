/*
File: fn_gatheruranuwe.sqf


Description:
Gathers uranuwe?
*/
private["_sum"];
_sum = ["uranuwe",2,life_carryWeight,life_maxWeight] call life_fnc_calWeightDiff;

if(_sum > 0) then
{
life_action_gather = true;

[player,"take"] call life_fnc_globalSound;

titleText["Sammel Schrott...","PLAIN"];
player playMove "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon"; //Bewegungs animation
titleFadeOut 5;
sleep 5;
if(([true,"uranuwe",3] call life_fnc_handleInv)) then
{
titleText[format["Schrott gesammelt",_sum],"PLAIN"];
};
};

life_action_gather = false;
