/*
    File: fn_sellCargo.sqf
    Author: Matthias Bun

    Description:
    seizes the Cargo
*/
private["_cargo","_price"];
	_cargo = nearestObjects[getPos player,["CargoNet_01_barrels_F"],8] select 0;
	_price= 150000;
	
if(isNil "_cargo") then 
{
	_cargo = nearestObjects[getPos player,["Land_CargoBox_V1_F"],8] select 0;
	_price= 300000;
};

if(isNil "_cargo") then 
{
	_cargo = nearestObjects[getPos player,["Land_Cargo10_military_green_F"],8] select 0;
	_price= 300000;
};

if(isNil "_cargo") exitWith {};

	life_cash = life_RLP_handgeld + _price;
    titleText["Du hast den container Beschlagnahmt","PLAIN"];
    deleteVehicle _cargo;