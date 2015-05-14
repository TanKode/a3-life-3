/*
    File: fn_packupmauer.sqf
    Author: Bryan "Tonic" Boardwine
    Edited by: OLLI aka Hauklotz

    Description:
    Packs up a deployed wall.
*/
private["_blitzer"];
_blitzer = nearestObjects[getPos player,["SpeedRadar4"],8] select 0;
if(isNil "_blitzer") exitWith {};

if(([true,"blitzer",1] call life_fnc_handleInv)) then
{
    titleText["Du hast den Blitzer aufgehoben.","PLAIN"];
    player removeAction life_action_blitzerPickup;
    life_action_blitzerPickup = nil;
    deleteVehicle _blitzer;
    RLP_BlitzerCounter = RLP_BlitzerCounter - 1;
};