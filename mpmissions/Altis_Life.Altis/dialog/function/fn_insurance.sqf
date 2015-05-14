#include <macro.h>
/*
Filename: fn_insurance.sqf
Author: Kevin Webb
Description: Simple way of insuring the vehicle. Will be modified in the future.
*/
private["_nearVehicles","_vehicle","_price"];
if(vehicle player != player) then
{
	_vehicle = vehicle player;
}
	else
{
	_nearVehicles = nearestObjects[getPos player,["Car","Air","Ship"],50];
	if(count _nearVehicles > 0) then
	{
		{
			if(!isNil "_vehicle") exitWith {}; //Kill the loop.
			_vehData = _x getVariable["vehicle_info_owners",[]];
			if(count _vehData  > 0) then
			{
				_vehOwner = (_vehData select 0) select 0;
				if((getPlayerUID player) == _vehOwner) exitWith
				{
					_vehicle = _x;
				};
			};
		} foreach _nearVehicles;
	};
};

if(isNil "_vehicle") exitWith {hint "Make sure your vehicle is closest to the NPC and try again";};
if(isNull _vehicle) exitWith {};
if(_vehicle getVariable["isInsured",false]) exitWith { hint "This vehicle already has insurance."; };
if(!(_vehicle in life_vehicles)) exitWith {hint "The target vehicle doesn't seem to be your own."; };
_price = switch(typeOf _vehicle) do
{
case "B_Heli_Light_01_F": { 25000 };
case "C_SUV_01_F": { 11000};
case "C_Offroad_01_F": { 4000};
case "C_Hatchback_01_sport_F": { 22500};
case "O_Heli_Light_02_unarmed_F": { 50000};
case "B_Quadbike_01_F": { 700};
case "C_Van_01_transport_F": { 12000};
case "C_Van_01_box_F": { 18000};
case "C_Van_01_fuel_F": { 21000};
case "I_Truck_02_transport_F": { 22500};
case "I_Truck_02_covered_F": { 30000};
case "B_Truck_01_fuel_F": { 40000};
case "B_Truck_01_transport_F": { 40000};
case "B_Truck_01_box_F": { 45000};
case "B_Truck_01_covered_F": { 41500};
case "O_Truck_03_fuel_F": { 32000};
case "O_Truck_03_covered_F": { 38000};
case "O_Truck_03_device_F": { 44000};
case "I_G_Offroad_01_F": { 4500};
case "I_G_Offroad_01_armed_F": { 76000};
case "O_MRAP_02_F": { 58000};
case "I_Heli_Transport_02_F": { 100000};
case "I_Heli_light_03_unarmed_F": { 50000};
case "B_Heli_Transport_01_F": { 15000};
case "C_Rubberboat": { 1500};
case "C_Boat_Civil_01_F": { 6600};
case "C_Boat_Civil_01_rescue_F": { 6600};
case "O_SDV_01_F": { 30000};
case "B_Boat_Transport_01_F": { 900};
case "C_Boat_Civil_01_police_F": { 6000};
case "B_SDV_01_F": { 30000};
case "B_Boat_Armed_01_minigun_F": { 40000};
case "B_Heli_Transport_03_F": {50000};
case "B_Heli_Transport_03_unarmed_F": {50000};
case "O_Heli_Transport_04_F": {50000};
case "O_Heli_Transport_04_ammo_F": {50000};
case "O_Heli_Transport_04_box_F": {50000};
case "O_Heli_Transport_04_medevac_F": {50000};
case "O_Heli_Transport_04_fuel_F": {50000};
case "O_Heli_Transport_04_bench_F": {50000};
case "O_Heli_Transport_04_repair_F": {50000};
case "O_Heli_Transport_04_covered_F": {50000};
case "C_Heli_Light_01_civil_F": {25000};
case "cl_arielatom_race_white": {10000};
case "cl_golf_mk2_black": {5000};
case "cl_golf_mk2_red": {5000};
case "cl_golf_mk2_blue": {5000};
case "max_CrownVic_taxi": {20000};
case "cl_porsche_carrera_gt_red": {200000};
case "cl_porsche_carrera_gt_black": {200000};
case "cl_bmw_z4_2008_black": {200000};
case "cl_bmw_z4_2008_blue": {200000};
case "cl_ferrari_458_red": {200000};
case "cl_lamborghini_gt1_white": {200000};
case "cl_lamborghini_gt1_black": {200000};
case "cl_audi_r8_spyder_blue": {200000};
case "cl_audi_r8_spyder_red": {200000};
case "cl_aston_dbs_volante_black" : {200000};   
case "cl_dodge_charger_black": {200000};
case "cl_mercedes_e63_amg_white": {200000};    
case "cl_mercedes_e63_amg_red": {200000};
case "cl_veyron_brn_blk": {200000};
case "cl_veyron_black": {200000};
case "DAR_MK23": {50000};
case "DAR_MK27T": {70000};
case "GNT_C185F": {500000};
case "GNT_C185": {500000};
case "mv22": {1000000};
case "LandRover_CZ_EP1": {20000};
case "BAF_Offroad_D": {20000};
case "DAR_M1151WoodlandUA": {25000};
case "DAR_M1151_Deploy": {500000};
case "DAR_MK23A": {500000};
case "max_CrownVic_lapd": {10000};
case "max_Charger_highway": {10000};
case "max_CrownVic_undercover": {10000};
case "max_Charger_undercover": {10000};
case "DAR_DAR_02FirebirdSSVPolice": {30000};
case "max_Charger_Lapd": {10000};
case "DAR_ExplorerPoliceStealth": {10000};
case "Cha_Mi17_CDF": {80000};
case "DAR_SWATPolice": {10000};
case "DAR_M1151_Deploy": {100000};

default { -1};
};
if(_price == -1) exitWith { hint "Ne dat geht nicht"; };
if(playerSide == independent) then { _price = _price / 4; };
if(life_myfunds < _price) exitWith { hint format["Ey wenn du kein Geld in der Tasche hast dann hau ab! Ich will $%1 von dir haben!",_price]; };
hint format["Dein Schrotthaufen ist jetzt sicher vor Explosionen. Es hat dich schlappe $%1 gekostet.",_price];
life_RLP_atmgeld = life_RLP_atmgeld - _price;
closeDialog 0;
_vehicle setVariable["isInsured",true,true];
[[_vehicle],"TON_fnc_vehicleInsurance",false,false] spawn life_fnc_MP; 