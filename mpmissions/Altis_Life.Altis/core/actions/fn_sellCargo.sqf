/*
    File: fn_sellCargo.sqf
    Author: Matthias Bun

    Description:
    Sells and delets the cargo
*/
private["_cargo","_price"];


_cargo = nearestObjects[getPos player,["CargoNet_01_barrels_F"],8] select 0;
_price= 150000;

if(isNil "_cargo") then 
{
	_cargo = nearestObjects[getPos player,["Land_CargoBox_V1_F"],8] select 0;
	_price= 300000;//here you can edit the sell price
};

if(isNil "_cargo") exitWith {};

life_RLP_handgeld = life_RLP_handgeld + _price;
titleText["Du hast den container mit Steinen Verkauft.","PLAIN"];
deleteVehicle _cargo;