/*
File: fn_adacLoadout.sqf
Author: Bryan "Tonic" Boardwine
Edited: Itsyuka
 
Description:
Loads the ADAC out with the default gear.
*/
private["_handle"];
_handle = [] spawn life_fnc_stripDownPlayer;
waitUntil {scriptDone _handle};
 
//Load player with default adac gear.
player forceAddUniform "U_Rangemaster";
player setObjectTextureGlobal [0,"textures\uniforms\recruit_uniform_adac.paa"];
 
/* ITEMS */
player addBackpack "B_Carryall_oli";
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
player addItem "SmokeShellYellow";
player addItem "SmokeShellYellow";
player addItem "SmokeShellYellow";
player addItem "SmokeShellYellow";
player addItem "SmokeShellYellow";
player addItem "Chemlight_yellow";
player addItem "Chemlight_yellow";
player addItem "Chemlight_yellow";
player addItem "Chemlight_yellow";
player addItem "Chemlight_yellow";
player addItem "Chemlight_yellow";
player addItem "SmokeShellRed";
player addItem "Medikit";
player addItem "ToolKit";
player addItem "NVGoggles";

 
[] call life_fnc_saveGear;
[] call life_fnc_updateClothing