﻿/*
    File: fn_clothing_adac.sqf
    Author: Bryan "Tonic" Boardwine
    
    Description:
    Master configuration file for adac Outfits.
*/
private["_filter"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Adac Kleidershop"];

switch (_filter) do
{
    //Uniforms
    case 0:
    {
        [
        ["U_C_WorkerCoveralls",nil,250],
		["U_Rangemaster","Arbeitskleidung",nil,400]
        ];
    };
    
    //Hats
    case 1:
    {
        [
            ["H_Bandanna_camo","Camo Bandanna",120],
            ["H_Bandanna_surfer","Surfer Bandanna",130],
            ["H_Bandanna_gry","Grey Bandanna",150],
            ["H_Bandanna_cbr",nil,165],
            ["H_Bandanna_surfer",nil,135]
        ];
    };
    
    //Glasses
    case 2:
    {
        [
            ["G_Shades_Black",nil,25],
            ["G_Shades_Blue",nil,20],
            ["G_Sport_Blackred",nil,20]
        ];
    };
    
    //Vest
    case 3:
    {
        [
        ];
    };
    
    //Backpacks
    case 4:
    {
        [
            ["B_AssaultPack_cbr",nil,2500],
            ["B_Kitbag_mcamo",nil,4500],
            ["B_TacticalPack_oli",nil,3500],
			["B_mas_AssaultPack_rng_MAAWS","Arbeitsrucksack",100]
        ];
    };
};