/*
	File: fn_vehicleColorStr.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration for color strings depending on their index location.
*/
private["_vehicle","_color","_index"];
_vehicle = [_this,0,"",[""]] call BIS_fnc_param;
_index = [_this,1,-1,[0]] call BIS_fnc_param;
_color = "";

switch (_vehicle) do
{
	// Quad
	case "B_Quadbike_01_F" :
	{
		switch (_index) do
		{
			case 0: {_color = "Digi-Wueste"};
			case 1: {_color = "Schwarz"};
			case 2: {_color = "Blau"};
			case 3: {_color = "Rot"};
			case 4: {_color = "Weiss"};
			case 5: {_color = "Digi-Gruen"};
			case 6: {_color = "Jagd-Camo"};
			case 7: {_color = "Rebellen-Camo"};
		};
	};
	// Offroad
	case "C_Offroad_01_F" :
	{
		switch (_index) do
		{
			case 0: {_color = "Rot";};
			case 1: {_color = "Gelb";};
			case 2: {_color = "Weiss";};
			case 3: {_color = "Blau";};
			case 4: {_color = "Dunkelrot";};
			case 5: {_color = "Blau / Weiss"};
			case 6: {_color = "Polizei"};
			case 7: {_color = "Notarzt"};
		};
	};
	// Hatchback
	case "C_Hatchback_01_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Beige";};
			case 1: {_color = "Gruen";};
			case 2: {_color = "Blau";};
			case 3: {_color = "Dunkelblau";};
			case 4: {_color = "Gelb";};
			case 5: {_color = "Weiss"};
			case 6: {_color = "Grau"};
			case 7: {_color = "Schwarz"};
			case 8: {_color = "Feuer";};
			case 9: {_color = "Metallica"};
			case 10: {_color = "Polizei"};
			case 11: {_color = "Unicorn"};
			};
	};
	// Hatchback Sport
	case "C_Hatchback_01_sport_F":
	{
		switch(_index) do
		{
			case 0: {_color = "Rot"};
			case 1: {_color = "Dunkelblau"};
			case 2: {_color = "Orange"};
			case 3: {_color = "Schwarz / Weiss"};
			case 4: {_color = "Hellbraun"};
			case 5: {_color = "Gruen"};
			case 6: {_color = "Feuer";};
			case 7: {_color = "Metallica"};
			case 8: {_color = "Undercover"};
			case 9: {_color = "Polizei"};
			case 10: {_color = "Unicorn"};
		};
	};
	// SUV	
	case "C_SUV_01_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Dunkelrot";};
			case 1: {_color = "Silber";};
			case 2: {_color = "Orange";};
			case 3: {_color = "Polizei";};
			case 4: {_color = "Notarzt"};
			case 5: {_color = "SEK"};
			case 6: {_color = "ADAC"};			
		};
	};	
	// Truck
	case "C_Van_01_transport_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Weiss"};
			case 1: {_color = "Rot"};
		};
	};	
	case "DAR_CVPIPolice":
	{
		switch (_index) do
		{
			case 0: {_color = "Polizei"};
		};
	};	
	// Truck Box
	case "C_Van_01_box_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Weiss"};
			case 1: {_color = "Rot"};
			case 2: {_color = "Notarzt"};
		};
	};
	// Truck Fuel
	case "C_Van_01_fuel_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Weiss"};
			case 1: {_color = "Rot"};
		};
	};
	// Zamak
	case "I_Truck_02_covered_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Orange"};
		};
	};
	// Zamak
	case "I_Truck_02_transport_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Orange"};
		};
	};
	// HEMTT
	case "B_Truck_01_box_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Standard"};
			case 1: {_color = "Kitty"};
			case 2: {_color = "Devil"};
		};
	};
	// HEMTT
	case "B_Truck_01_covered_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Standard"};
			case 1: {_color = "Kitty"};
			case 2: {_color = "Devil"};
		};
	};
	// HEMTT
	case "B_Truck_01_transport_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Standard"};
			case 1: {_color = "Kitty"};
			case 2: {_color = "Devil"};
			case 3: {_color = "ADAC"};
		};
	};
	// HEMTT
	case "B_Truck_01_mover_F":
	{
		switch (_index) do
		{
			case 0: {_color = "pmo"};
		};
	};
	// HEMTT
	case "B_Truck_01_ammo_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Radioaktiv"};
		};
	};	
	// Hummingbird
	case "B_Heli_Light_01_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Schwarz"};
			case 1: {_color = "Digi-Gruen"};
			case 2: {_color = "Blueline"};
			case 3: {_color = "Elliptical"};
			case 4: {_color = "Furious"};
			case 5: {_color = "Jeans Blue"};
			case 6: {_color = "Speedy Redline"};
			case 7: {_color = "Sunset"};
			case 8: {_color = "Vrana"};
			case 9: {_color = "Waves Blue"};
			case 10: {_color = "Rebellen-Digital"};
			case 11: {_color = "Polizei"};
			case 12: {_color = "Notarzt"};
			case 13: {_color = "RedBull"};
			case 14: {_color = "Rebel"};
			case 15: {_color = "Schwarz"};
			case 16: {_color = "pmo"};
			case 17: {_color = "ADAC"};
		};
	};
	// Orca
	case "O_Heli_Light_02_unarmed_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Schwarz"};
			case 1: {_color = "Weiss / Blau"};
			case 2: {_color = "Digi-Gruen"};
			case 3: {_color = "Wuesten-Digi"};
			case 4: {_color = "Polizei"};
			case 5: {_color = "Notarzt"};
			case 6: {_color = "Rebellen"};
		};
	};
	// Ghosthawk
	case "B_Heli_Transport_01_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Polizei"};
			case 1: {_color = "PEK"};
			case 2: {_color = "Rebel"};
		};
	};
	// Hellcat
	case "I_Heli_light_03_unarmed_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Polizei"};
			case 1: {_color = "Donator"};
			case 2: {_color = "Rebel"};
			case 3: {_color = "Notarzt"};
		};
	};
	// Mohawk
	case "I_Heli_Transport_02_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Ion"};
			case 1: {_color = "Dahoman"};
			case 2: {_color = "Rebel"};
			case 3: {_color = "Luftrettung"};
		};
	};
	// Hunter
	case "B_MRAP_01_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Polizei"};
			case 1: {_color = "Polizei"};
			case 2: {_color = "PEK"};
			case 3: {_color = "Donator"};
			case 4: {_color = "Die Macht"};
			case 5: {_color = "Unicorn"};
			case 6: {_color = "Rot"};
			case 7: {_color = "Blau"};
			case 8: {_color = "Gruen"};
			case 9: {_color = "Grau"};
			case 10: {_color = "Notarzt"};
		};
	};
	// Hunter
	case "B_MRAP_01_hmg_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Polizei weiss"};
			case 1: {_color = "Polizei schwarz"};
		};
	};
	// Ifrit
	case "O_MRAP_02_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Braun"};
			case 1: {_color = "Grau"};
			case 2: {_color = "Unicorn"};
			case 3: {_color = "Blau"};
			case 4: {_color = "Rot"};
		};
	};
	// Strider
	case "I_MRAP_03_F":
	{
		switch (_index) do
		{
			case 0: {_color = "PEK"};
			case 1: {_color = "Rebel"};
		};
	};
	// Strider
	case "I_MRAP_03_hmg_F":
	{
		switch (_index) do
		{
			case 0: {_color = "PEK"};
		};
	};
};

_color;