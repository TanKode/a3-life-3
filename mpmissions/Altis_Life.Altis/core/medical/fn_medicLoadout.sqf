/*
	File: fn_medicLoadout.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Loads the medic out with the default gear.
*/
private["_handle"];
_handle = [] spawn life_fnc_stripDownPlayer;
waitUntil {scriptDone _handle};

player forceAddUniform "U_Rangemaster";
player setObjectTextureGlobal [0,"textures\medic\medicskin.paa"];

player addBackpack "B_Bergen_mcamo";
player addItem "ItemMap";
player assignItem "ItemMap";
player addItem "ItemCompass";
player assignItem "ItemCompass";
player addItem "ItemWatch";
player assignItem "ItemWatch";
player addItem "ItemGPS";
player assignItem "ItemGPS";
player addItem "ItemRadio";
player assignItem "ItemRadio";
player addItem "SmokeShellred";
player addItem "SmokeShellyellow";
player addItem "Chemlight_yellow";
player addItem "Chemlight_yellow";
player addItem "Chemlight_yellow";
player addItem "SmokeShellyellow";
player addItem "Chemlight_yellow";
player addItem "Medikit";
player addItem "ToolKit";
player addItem "A3_GPNVG18_REC_BLK_F";
player addItem "Rangefinder";


[] call life_fnc_updateClothing;
[] call life_fnc_saveGear;