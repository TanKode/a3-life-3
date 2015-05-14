/*
    file: fn_vehicleSaveItems.sqf
    Author: Nukefliege
    Description: Fix the item duping!
*/
private["_uid","_plate","_trunk","_cargo","_vInfo","_vehicle"];
_vehicle = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;

//Items auslesen{
_vInfo = _vehicle getVariable["dbInfo",[]];
_trunk = _vehicle getVariable["Trunk",[[],0]];
_trunk = [_trunk] call DB_fnc_mresArray;

if(count _vInfo > 0) then
{
    _plate = _vInfo select 1;
    _uid = _vInfo select 0;
};

_vehItems = getItemCargo _vehicle;
_vehMags = getMagazineCargo _vehicle;
_vehWeapons = getWeaponCargo _vehicle;
_vehBackpacks = getBackpackCargo _vehicle;

_cargo = [_vehItems,_vehMags,_vehWeapons,_vehBackpacks];
_cargo = [_cargo] call DB_fnc_mresArray;
//}ENDE

_query = format["UPDATE vehicles SET inventory='%3', gear='%4' WHERE pid='%1' AND plate='%2'",_uid,_plate,_trunk,_cargo];
diag_log format["Query: %1",_query];
waitUntil{!DB_Async_Active};
[_query,1] call DB_fnc_asyncCall;