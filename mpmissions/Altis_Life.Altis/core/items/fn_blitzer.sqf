/*
    File: fn_blitzer.sqf
    Author: OLLI aka Hauklotz
    
    Description:
    Holt das Item aus dem Inventar und setzt es auf der Map.

private["_position","_blitzer"];
_blitzer = "SpeedRadar4" createVehicle [0,0,0];
_blitzer attachTo[player,[0,5.5,0.2]];
_blitzer setDir 90;
_blitzer setVariable["item","blitzerDeployed",true];

life_action_blitzerDeploy = player addAction["<t color='#00FF00'>Blitzer aufstellen</t>",{if(!isNull life_blitzer) then {detach life_blitzer; life_blitzer = ObjNull;}; player removeAction life_action_blitzerDeploy; life_action_blitzerDeploy = nil;},"",999,false,false,"",'!isNull life_blitzer'];
life_blitzer = _blitzer;
waitUntil {isNull life_blitzer};
if(!isNil "life_action_blitzerDeploy") then {player removeAction life_action_blitzerDeploy;};
if(isNull _blitzer) exitWith {life_blitzer = ObjNull;};
_blitzer setPos [(getPos _blitzer select 0),(getPos _blitzer select 1),0];
_blitzer allowDamage false;*/

private["_position","_Blitzer"];
if(RLP_BlitzerCounter == 2) exitWith {hint "Du hast bereits zwei Blitzer aufgestellt!"};
_Blitzer = "SpeedRadar4" createVehicle [0,0,0];
_Blitzer attachTo[player,[0,3.0,0.25]];
_Blitzer setDir 180;
_Blitzer setVariable["item","BlitzerDeployed",true];

life_action_BlitzerDeploy =
player addAction["<t color='#00FF00'>Blitzer aufstellen</t>",{if(!isNull life_Blitzer) then {detach life_Blitzer; life_Blitzer = ObjNull;};
player removeAction life_action_BlitzerDeploy; life_action_BlitzerDeploy = nil;},"",999,false,false,"",'!isNull life_Blitzer'];

life_Blitzer = _Blitzer;
waitUntil {isNull life_Blitzer};
if(!isNil "life_action_BlitzerDeploy") then {player removeAction life_action_BlitzerDeploy;};
if(isNull _Blitzer) exitWith {life_Blitzer = ObjNull;};
_Blitzer setPos [(getPos _Blitzer select 0),(getPos _Blitzer select 1),(getPos _Blitzer select 2)];
_Blitzer setName "RLP_Blitzer";
_Blitzer setVariable ["RLP_Blitzer", false, true];
_Blitzer allowDamage false;
RLP_BlitzerCounter = RLP_BlitzerCounter + 1;
