/*
	File: fn_tracker.sqf
	Author: John "Paratus" VanderZwet
	
	Description:
	Attaches a tracking device to a vehicle.
*/
private["_unit","_markers","_vehicleName"];
_unit = cursorTarget;

if((!(_unit isKindOf "LandVehicle"))&&(!(_unit getVariable ["restrained",false]))) exitWith {hint "Du bist kein Busfahrer."};
if(player distance _unit > 7) exitWith {hint "Du musst unter 7m sein!"};
if(_unit in life_tracked) exitWith {hint "Du bist bereits im Dienst!"};
if(!license_civ_bus) exitWith {hint "Du bist kein Busfahrer."};
closeDialog 0;

life_action_inUse = true;

player playMove "AinvPknlMstpSnonWnonDnon_medic_1";
sleep 4.5;
waitUntil {animationState player != "ainvpknlmstpsnonwnondnon_medic_1"};

life_action_inUse = false;
if(player distance _unit > 7) exitWith {titleText["Du bist nicht in Reichweite!","PLAIN"];};

life_tracked set [count life_tracked, _unit];
titleText["Du bist absofort im Dienst.","PLAIN"];

while {true} do
{
	waitUntil {alive player};
	_markers = [];

	{
		if(!isNil "_x") then
		{
			if(!isNull _x) then
			{
				_vehicleName = getText(configFile >> "CfgVehicles" >> (typeOf _x) >> "displayName");
				_marker = createMarker [format["%1_marker",_x],getPos _x];
				_marker setMarkerColor "ColorGreen";
				_marker setMarkerType "Mil_destroy";
				_marker setMarkerText format["Bus Linie %1", _vehicleName];
				_markers set[count _markers,[_marker,_x]];
			};
		};
	} foreach life_tracked;
			
	while {alive player} do
	{
		{
			private["_marker","_veh"];
			_marker = _x select 0;
			_veh = _x select 1;
			if(!isNil "_veh") then
			{
				if(!isNull _veh) then
				{
					_marker setMarkerPos (getPos _veh);
				};
			};
		} foreach _markers;
		if(!alive player) exitWith {};
		sleep 1;
	};
	
	{deleteMarker (_x select 0);} foreach _markers;
};