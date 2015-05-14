#include <macro.h>
/*
	File: fn_clothing_cop.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master config file for Cop clothing store.
*/
private["_filter","_ret"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Altis Police Department Shop"];

_ret = [];
switch (_filter) do
{
	//Uniforms
	case 0:
	{
		_ret pushBack ["police_man_uniform","Streifenuniform",25];
		_ret pushBack ["U_B_Wetsuit",nil,25];
		if(__GETC__(life_coplevel) > 1) then
		{
			_ret pushBack ["police_man_uniform","Streifenuniform",50];			
		};
		if(__GETC__(life_coplevel) > 2) then
		{
			_ret pushBack ["demian2435_swat_leader_uniform","Einsatzuniform",50];			
		};		
		if(__GETC__(life_coplevel) > 5) then
		{
			_ret pushBack ["swat_officer_uniform","Einsatzuniform",50];			
		};
		if(license_cop_sek) then
		{
			_ret pushBack ["swat_unit_uniform","S.W.A.T Einsatzuniform",100];
			_ret pushBack ["U_B_GhillieSuit","S.W.A.Ts Einsatzghillie",100];
			_ret pushBack ["U_O_FullGhillie_ard","S.W.A.Ts Einsatzghillie",100];
		};
		if(license_civ_sec) then
		{
			_ret pushBack ["U_B_CombatUniform_mcam","Task Force Kleidung 1",100];
			_ret pushBack ["U_B_CombatUniform_mcam_vest","Task Force Kleidung 2",100];
			_ret pushBack ["U_B_CombatUniform_mcam_tshirt","Task Force Kleidung 3",100];
			_ret pushBack ["U_B_GhillieSuit","Task Force Kleidung 4",100];			
		};
	};
	
	//Hats
	case 1:
	{
		_ret pushBack ["H_Booniehat_khk_hs",nil,75];
		_ret pushBack ["H_Cap_police",nil,75];
		_ret pushBack ["rds_police_cap",nil,75];
		if(__GETC__(life_coplevel) > 2) then
		{
			_ret pushBack ["H_Beret_blk_POLICE",nil,120];
		};
		if(__GETC__(life_coplevel) > 6) then
		{
			_ret pushBack ["H_Beret_02","Chef!",120];
		};
		if(license_cop_sek) then
		{
			_ret pushBack ["H_Beret_Colonel",nil,100];	
			_ret pushBack ["Police_Swat_Helmet",nil,750];			
		};
		if(license_civ_sec) then
		{
			_ret pushBack ["H_HelmetSpecB_paint2","Task Force Helm",100];	
			_ret pushBack ["H_Bandanna_khk","Task Force Bandanne",750];			
		};		
	};
	
	//Glasses
	case 2:
	{
		_ret = 
		[
			["G_Diving",nil,10],
			["G_Shades_Black",nil,25],
			["G_Shades_Blue",nil,20],
			["G_Sport_Blackred",nil,20],
			["G_Sport_Checkered",nil,20],
			["G_Sport_Blackyellow",nil,20],
			["G_Sport_BlackWhite",nil,20],
			["G_Bandanna_beast",nil,20],			
			["G_Aviator",nil,75],
			["G_Squares",nil,10],
			["G_Lowprofile",nil,30],
			["G_Combat",nil,55],
			["G_Balaclava_combat",nil,55],
			["G_Balaclava_blk",nil,50]
		];
	};
	
	//Vest
	case 3:
	{
		_ret pushBack ["cpd_policevest",nil,50];
		if(__GETC__(life_coplevel) > 3) then
		{
		_ret pushBack ["V_RebreatherB",nil,50];
		_ret pushBack ["V_Rangemaster_belt",nil,80];
		_ret pushBack ["V_PlateCarrier2_rgr",nil,150];
		_ret pushBack ["demian2435_police_vest","Kugelsichere Einsatzweste",150];
		_ret pushBack ["demian2435_swat_leader_vest","Kugelsichere Sondereinsatzweste",150];
		_ret pushBack ["demian2435_sniper_vest","Kugelsichere Weste",150];
		_ret pushBack["V_PlateCarrier1_blk","Anti-Tränengas",2500];
		};
		if(license_cop_sek) then
		{
			_ret pushBack ["V_TacVest_blk_POLICE","S.W.A.T Einsatzweste",100];		
		};
		if(license_civ_sec) then
		{
			_ret pushBack ["V_PlateCarrierGL_rgr","Task Force Einsatzweste",100];		
			_ret pushBack ["V_TacVest_camo","Task Force Einsatzweste",100];					
			_ret pushBack ["V_I_G_resistanceLeader_F","Task Force Einsatzweste",100];		
		};
	};
	
	//Backpacks
	case 4:
	{
		_ret =
		[
			["B_Carryall_mcamo",nil,100],
			["B_mas_AssaultPack_rng_MAAWS","Task Force Rucksack",100]
		];
	};
};

_ret;