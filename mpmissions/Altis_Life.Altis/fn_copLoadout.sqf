/*
File: fn_copLoadout.sqf
Author: Bryan "Tonic" Boardwine
Edited: Itsyuka

Description:
Loads the cops out with the default gear.
*/
private["_handle"];
_handle = [] spawn life_fnc_stripDownPlayer;
waitUntil {scriptDone _handle};

//Load player with default cop gear.
player addUniform "security_uniform";
player addVest "cpd_policevest";
player addBackPack 'B_TacticalPack_oli'; //This adds a backpack to player

player addWeapon "hgun_ACPC2_snds_F";
player addMagazine "9Rnd_45ACP_Mag";
player addMagazine "9Rnd_45ACP_Mag";
player addMagazine "9Rnd_45ACP_Mag";
player addMagazine "9Rnd_45ACP_Mag";
player addMagazine "9Rnd_45ACP_Mag";
player addMagazine "9Rnd_45ACP_Mag";
player addMagazine "9Rnd_45ACP_Mag";

// Add shortrange radio
player addItem "tf_ex8550"; 
player assignItem "tf_ex8550";

/* ITEMS */
player addItem "ItemMap";
player assignItem "ItemMap";
player addItem "ItemCompass";
player assignItem "ItemCompass";
player addItem "ItemGPS";
player assignItem "ItemGPS";
player addItem "ItemRadio";
player assignItem "ItemRadio"; 

[] call life_fnc_updateClothing;
[] call life_fnc_saveGear;