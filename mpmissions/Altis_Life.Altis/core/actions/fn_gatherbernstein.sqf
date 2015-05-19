/*
File: fn_gatherBernstein.sqf


Description:
Gathers Bernstein?
*/
private["_sum"];
_sum = ["Bernstein",2,life_carryWeight,life_maxWeight] call life_fnc_calWeightDiff;

if(_sum > 0) then
{
life_action_gather = true;

[player,"take"] call life_fnc_globalSound;

titleText["Sammel Bernstein...","PLAIN"];
player playMove "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon"; //Bewegungs animation
titleFadeOut 5;
sleep 5;
if(([true,"Bernstein",3] call life_fnc_handleInv)) then
{
titleText[format["Bernstein gesammelt",_sum],"PLAIN"];
};
};

life_action_gather = false;