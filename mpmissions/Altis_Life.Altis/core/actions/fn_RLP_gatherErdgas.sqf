//::::::::::::  ::::::::::::\\
//	Filename: actions/fn_RLP_gatherErdgas.sqf
//	Author: RLP - Risk
//
//	Beschreibung: Sammelt Erdgas?
//::::::::::::  ::::::::::::\\

private["_sum","_dice","_profName","_time","_GatheredText"];

_dice= ceil(random 5);
_sum = ["gas",_dice,life_carryWeight,life_maxWeight] call life_fnc_calWeightDiff;
//_profName = [39] call life_fnc_profType; //39
_time = 5;
_GatheredText = {titleText[format["Du hast %1 Einheiten Erdgas abgebaut.",_dice],"PLAIN"];}; //gather beendet

if(life_action_inUse) exitWith {hint format ["Du darfst nur einmal alle %1 Sekunden abbauen!",_time];};

if(_sum > 0) then
{
    life_action_inUse = true;
    titleText["Sammle Erdgas...","PLAIN"];
    player playMove "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";
    sleep _time;
    if(([true,"gas",_sum] call life_fnc_handleInv)) then
    {
        call _GatheredText;
    };
};
//[Gas_Prof,20] call life_fnc_addExp;
life_action_inUse = false;