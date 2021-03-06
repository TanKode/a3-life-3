/*
	File: fn_spawnPointCfg.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration for available spawn points depending on the units side.
	
	Return:
	[Spawn Marker,Spawn Name,Image Path]
*/
private["_side","_return"];
_side = [_this,0,civilian,[civilian]] call BIS_fnc_param;

//Spawn Marker, Spawn Name, PathToImage
switch (_side) do
{
	case west:
	{
		if(license_cop_sek && playerSide == west && !license_cop_tf) then {
			_return = [
				["cop_spawn_1","HQ","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
				["cop_spawn_2","CP Kavala","\a3\ui_f\data\map\MapControl\fuelstation_ca.paa"],
				["cop_spawn_5","Autobahn","\a3\ui_f\data\map\GroupIcons\badge_rotate_0_gs.paa"]
			];
		};

		if(!license_cop_sek && playerSide == west && !license_cop_tf) then {
		_return = [
				["cop_spawn_1","HQ","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
				["cop_spawn_2","CP Kavala","\a3\ui_f\data\map\MapControl\fuelstation_ca.paa"],
				["cop_spawn_5","Autobahn","\a3\ui_f\data\map\GroupIcons\badge_rotate_0_gs.paa"]
			];
		};
	};
	
		
	case civilian:
	{
		_return = [
			["civ_spawn_1","Kavala","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
			["civ_spawn_2","Pyrgos","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
			["civ_spawn_3","Athira","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
			["civ_spawn_4","Sofia","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
		];
		
		if(license_civ_sec) then {
			_return = [
				["civ_spawn_1","Kavala","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
				["civ_spawn_3","Athira","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
				["civ_spawn_4","Sofia","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
				["spawn_tf_1","HQ Berg","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
				["spawn_tf_2","Pyrgos","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]			
			];
		};
		
		if(license_civ_rebel) then
		{
		_return = _return + [
			["reb_spawn_hq_1","Rebellenlager","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
			];
		};
		if(license_civ_bm) then
		{
		_return = _return + [
			["bm_spawn_1","Schwarzmarkt","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
			];
		};
		if(license_civ_bus) then
		{
		_return = _return + [
			["spawn_bus_1","Busdepot Kavala","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
			];
		};
		if(license_civ_taxi) then
		{
		_return = _return + [
			["spawn_taxi","Taxi HQ","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
			];
		};
		if(license_civ_donator) then
		{
		_return = _return + [
			["donator_spawn","Donatorcamp","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
			];
		};
	
		if(count life_houses > 0) then {
			{
				_pos = call compile format["%1",_x select 0];
				_house = nearestBuilding _pos;
				_houseName = getText(configFile >> "CfgVehicles" >> (typeOf _house) >> "displayName");
				
				_return pushBack [format["house_%1",_house getVariable "uid"],_houseName,"\a3\ui_f\data\map\MapControl\lighthouse_ca.paa"];;
			} foreach life_houses;
		};	
	};
	
	case independent: {
		_return = [
			["medic_spawn_1","Kavala Krankenhaus","\a3\ui_f\data\map\MapControl\hospital_ca.paa"],
			["medic_spawn_2","Flugfeld","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
			["medic_spawn_3","Pygros Station","\a3\ui_f\data\map\MapControl\hospital_ca.paa"]
		];
	};
	
	case east: 
	{
		_return = [
			["adac_spawn_1","ADAC Athira HQ","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
			["adac_spawn_2","ADAC Kavala HQ","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]			
		];
	};    
};

_return;