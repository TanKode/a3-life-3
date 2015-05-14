/*
    File: fn_sellCargo.sqf
    Author: Matthias Bun

    Description:
    Sells and delets the cargo
*/
private["_cargo","_price"];
	_cargo = nearestObjects[getPos player,["Land_Cargo10_military_green_F"],8] select 0;
	_price= 300000;

if(isNil "_cargo") then 
{
	_cargo = nearestObjects[getPos player,["Land_Cargo10_military_green_F"],8] select 0;
	_price= 300000;
};
if(isNil "_cargo") exitWith {};

	life_RLP_handgeld = life_RLP_handgeld + _price;
    titleText["Du hast den Container voller Nutten Verkauft.","PLAIN"];
    deleteVehicle _cargo;