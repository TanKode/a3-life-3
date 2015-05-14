#include <macro.h>
/*
	File: fn_craftCfg.sqf
	Author: EdgeKiller

	Description:
	Master configuration file for the crafting menu.

*/
private["_craft","_return"];
_craft = [_this,0,"",[""]] call BIS_fnc_param;
if(_craft == "") exitWith {closeDialog 0}; //Bad shop type passed.

switch(_craft) do
{
	case "weapon":
	{
		_return = [
				//[Object classname, [item #1,quantity item #1,item #2,quantity item #2]],]
						//[Object classname, [item #1,quantity item #1,item #2,quantity item #2]],]
						//Waffen
						//Magazine
						["hgun_Rook40_F", ["life_inv_laufa",5,"life_inv_verschluss",5,"life_inv_griff",5,"life_inv_feder",5]],
						["30Rnd_9x21_Mag", ["life_inv_magazina",5]],
						["hgun_Pistol_heavy_02_F", ["life_inv_laufa",5,"life_inv_verschluss",5,"life_inv_griff",5,"life_inv_feder",5]],
						["6Rnd_45ACP_Cylinder", ["life_inv_magazina",5]],
						["hgun_ACPC2_F", ["life_inv_laufa",5,"life_inv_verschluss",5,"life_inv_griff",5,"life_inv_feder",5]],
						["9Rnd_45ACP_Mag", ["life_inv_magazina",5]],
						["hgun_Pistol_heavy_01_F", ["life_inv_laufa",5,"life_inv_verschluss",5,"life_inv_griff",5,"life_inv_feder",5]],
						["11Rnd_45ACP_Mag", ["life_inv_magazina",5]],
						["hgun_Pistol_heavy_01_snds_F", ["life_inv_laufa",5,"life_inv_verschluss",5,"life_inv_griff",5,"life_inv_feder",5]],
						["11Rnd_45ACP_Mag", ["life_inv_magazina",5]],
						["hgun_PDW2000_F", ["life_inv_laufa",5,"life_inv_verschluss",5,"life_inv_griff",5,"life_inv_feder",5]],
						["16Rnd_9x21_Mag", ["life_inv_magazina",5]],
						["30Rnd_9x21_Mag", ["life_inv_magazina",5]],
						["SMG_01_F", ["life_inv_laufa",5,"life_inv_verschluss",5,"life_inv_griff",5,"life_inv_feder",5]],
						["30Rnd_45ACP_Mag_SMG_01", ["life_inv_magazina",5]],
						["arifle_SDAR_F", ["life_inv_laufa",5,"life_inv_verschluss",5,"life_inv_griff",5,"life_inv_feder",5]],
						["20Rnd_556x45_UW_mag", ["life_inv_magazina",5]],
						["30Rnd_556x45_Stanag_Tracer_Red", ["life_inv_magazina",5]]

			];
		if(license_civ_rebel) then
		{
				//[Object classname, [item #1,quantity item #1,item #2,quantity item #2]],]
						//[Object classname, [item #1,quantity item #1,item #2,quantity item #2]],]
						//Waffen
						//Magazine
						_return pushBack
						["arifle_TRG21_F", ["life_inv_laufb",5,"life_inv_verschluss",5,"life_inv_griff",5,"life_inv_feder",5,"life_inv_gasantrieb",5,"life_inv_abnahme",5]];
						_return pushBack
						["arifle_Mk20_F", ["life_inv_laufb",5,"life_inv_verschluss",5,"life_inv_griff",5,"life_inv_feder",5,"life_inv_gasantrieb",5,"life_inv_abnahme",5]];
						_return pushBack
						["30Rnd_556x45_Stanag", ["life_inv_magazina",5]];
						_return pushBack
						["arifle_Katiba_F", ["life_inv_laufb",5,"life_inv_verschluss",5,"life_inv_griff",5,"life_inv_feder",5,"life_inv_gasantrieb",5,"life_inv_abnahme",5]];
						_return pushBack
						["30Rnd_65x39_caseless_green", ["life_inv_magazina",5]];
						_return pushBack
						["srifle_DMR_01_F", ["life_inv_laufb",5,"life_inv_verschluss",5,"life_inv_griff",5,"life_inv_feder",5,"life_inv_gasantrieb",5,"life_inv_abnahme",5]];
						_return pushBack
						["10Rnd_762x51_Mag", ["life_inv_magazina",5]];
						_return pushBack
						["arifle_TRG21_F", ["life_inv_laufb",5,"life_inv_verschluss",5,"life_inv_griff",5,"life_inv_feder",5,"life_inv_gasantrieb",5,"life_inv_abnahme",5]];
						_return pushBack
						["arifle_Mk20_F", ["life_inv_laufb",5,"life_inv_verschluss",5,"life_inv_griff",5,"life_inv_feder",5,"life_inv_gasantrieb",5,"life_inv_abnahme",5]];
						_return pushBack
						["30Rnd_556x45_Stanag", ["life_inv_magazina",5]];
						_return pushBack
						["arifle_Katiba_F", ["life_inv_laufb",5,"life_inv_verschluss",5,"life_inv_griff",5,"life_inv_feder",5,"life_inv_gasantrieb",5,"life_inv_abnahme",5]];
						_return pushBack
						["30Rnd_65x39_caseless_green", ["life_inv_magazina",5]];
						_return pushBack
						["srifle_DMR_01_F", ["life_inv_laufb",5,"life_inv_verschluss",5,"life_inv_griff",5,"life_inv_feder",5,"life_inv_gasantrieb",5,"life_inv_abnahme",5]];
						_return pushBack
						["10Rnd_762x51_Mag", ["life_inv_magazina",5]];
						_return pushBack
						["srifle_EBR_F", ["life_inv_laufb",5,"life_inv_verschluss",5,"life_inv_griff",5,"life_inv_feder",5,"life_inv_gasantrieb",5,"life_inv_abnahme",5]];
						_return pushBack
						["20Rnd_762x51_Mag", ["life_inv_magazina",5]];
						_return pushBack
						["arifle_mas_bizon", ["life_inv_laufb",5,"life_inv_verschluss",5,"life_inv_griff",5,"life_inv_feder",5,"life_inv_gasantrieb",5,"life_inv_abnahme",5]];
						_return pushBack
						["64Rnd_mas_9x18_mag", ["life_inv_magazina",5]];
						_return pushBack
						["arifle_mas_aks74", ["life_inv_laufb",5,"life_inv_verschluss",5,"life_inv_griff",5,"life_inv_feder",5,"life_inv_gasantrieb",5,"life_inv_abnahme",5]];
						_return pushBack
						["30Rnd_mas_545x39_mag", ["life_inv_magazina",5]];
						["arifle_mas_akm", ["life_inv_laufb",5,"life_inv_verschluss",5,"life_inv_griff",5,"life_inv_feder",5,"life_inv_gasantrieb",5,"life_inv_abnahme",5]];
						_return pushBack
						["30Rnd_mas_762x39_mag", ["life_inv_magazina",5]];
						_return pushBack
						["arifle_mas_aks74u", ["life_inv_laufb",5,"life_inv_verschluss",5,"life_inv_griff",5,"life_inv_feder",5,"life_inv_gasantrieb",5,"life_inv_abnahme",5]];
						_return pushBack
						["30Rnd_mas_545x39_mag", ["life_inv_magazina",5]];
						_return pushBack
						["hgun_mas_uzi_F", ["life_inv_laufa",5,"life_inv_verschluss",5,"life_inv_griff",5,"life_inv_feder",5]];
						_return pushBack
						["25Rnd_mas_9x19_Mag", ["life_inv_magazina",5]];
						_return pushBack
						["hgun_mas_sa61_F", ["life_inv_laufa",5,"life_inv_verschluss",5,"life_inv_griff",5,"life_inv_feder",5]];
						_return pushBack
						["20Rnd_mas_765x17_Mag", ["life_inv_magazina",5]];
						_return pushBack
						["hgun_mas_mak_F", ["life_inv_laufa",5,"life_inv_verschluss",5,"life_inv_griff",5,"life_inv_feder",5]];
						_return pushBack
						["8Rnd_mas_9x18_Mag", ["life_inv_magazina",5]];
		};
/*		if(license_civ_bm) then
		(
						_return pushBack
						["arifle_MX_Black_F", ["life_inv_laufb",5,"life_inv_verschluss",5,"life_inv_griff",5,"life_inv_feder",5,"life_inv_gasantrieb",5,"life_inv_abnahme",5]];
						_return pushBack
						["arifle_MX_SW_Black_F", ["life_inv_laufb",5,"life_inv_verschluss",5,"life_inv_griff",5,"life_inv_feder",5,"life_inv_gasantrieb",5,"life_inv_abnahme",5]];
						_return pushBack
						["arifle_MXM_Black_F", ["life_inv_laufb",5,"life_inv_verschluss",5,"life_inv_griff",5,"life_inv_feder",5,"life_inv_gasantrieb",5,"life_inv_abnahme",5]];
						_return pushBack
						["30Rnd_65x39_caseless_mag", ["life_inv_magazina",5]];
						_return pushBack
						["100Rnd_65x39_caseless_mag", ["life_inv_magazina",5]];
						_return pushBack
						["srifle_mas_m110", ["life_inv_laufc",5,"life_inv_verschluss",5,"life_inv_griff",5,"life_inv_feder",5,"life_inv_gasantrieb",5,"life_inv_abnahme",5]];
						_return pushBack
						["srifle_mas_ebr", ["life_inv_laufc",5,"life_inv_verschluss",5,"life_inv_griff",5,"life_inv_feder",5,"life_inv_gasantrieb",5,"life_inv_abnahme",5]];
						_return pushBack
						["srifle_mas_sr25", ["life_inv_laufc",5,"life_inv_verschluss",5,"life_inv_griff",5,"life_inv_feder",5,"life_inv_gasantrieb",5,"life_inv_abnahme",5]];
						_return pushBack
						["srifle_mas_m24_v", ["life_inv_laufc",5,"life_inv_verschluss",5,"life_inv_griff",5,"life_inv_feder",5,"life_inv_gasantrieb",5,"life_inv_abnahme",5]];
						_return pushBack
						["20Rnd_mas_762x51_Stanag", ["life_inv_magazina",5]];
						_return pushBack
						["5Rnd_mas_762x51_Stanag", ["life_inv_magazina",5]];
						_return pushBack
						["srifle_mas_m91", ["life_inv_laufc",5,"life_inv_verschluss",5,"life_inv_griff",5,"life_inv_feder",5,"life_inv_gasantrieb",5,"life_inv_abnahme",5]];
						_return pushBack
						["10Rnd_mas_762x54_mag", ["life_inv_magazina",5]];
						_return pushBack
						["muzzle_mas_snds_SVD", ["life_inv_laufc",5]];
						_return pushBack
						["muzzle_mas_snds_SMc", ["life_inv_laufc",5]];
						_return pushBack
						["hlc_rifle_Bushmaster300", ["life_inv_laufb",5,"life_inv_verschluss",5,"life_inv_griff",5,"life_inv_feder",5,"life_inv_gasantrieb",5,"life_inv_abnahme",5]];
						_return pushBack
						["29rnd_300BLK_STANAG", ["life_inv_magazina",5]];
						_return pushBack
						["hlc_rifle_vendimus", ["life_inv_laufb",5,"life_inv_verschluss",5,"life_inv_griff",5,"life_inv_feder",5,"life_inv_gasantrieb",5,"life_inv_abnahme",5]];
						_return pushBack
						["29rnd_300BLK_STANAG", ["life_inv_magazina",5]];
						_return pushBack
						["hlc_rifle_psg1", ["life_inv_laufc",5,"life_inv_verschluss",5,"life_inv_griff",5,"life_inv_feder",5,"life_inv_gasantrieb",5,"life_inv_abnahme",5]];
						_return pushBack
						["hlc_20rnd_762x51_b_G3", ["life_inv_magazina",5]];
						_return pushBack
						["hlc_rifle_bcmjack", ["life_inv_laufb",5,"life_inv_verschluss",5,"life_inv_griff",5,"life_inv_feder",5,"life_inv_gasantrieb",5,"life_inv_abnahme",5]];
						_return pushBack
						["hlc_muzzle_556NATO_KAC", ["life_inv_magazina",5]];
						_return pushBack
						["hlc_30rnd_556x45_EPR", ["life_inv_magazina",5]];
						_return pushBack
						["arifle_mas_m1014", ["life_inv_laufb",5,"life_inv_verschluss",5,"life_inv_griff",5,"life_inv_feder",5,"life_inv_gasantrieb",5,"life_inv_abnahme",5]];
						_return pushBack
						["7Rnd_mas_12Gauge_Slug", ["life_inv_magazina",5]];
		);*/
	};

	case "uniform":
	{
		_return = [
				//[Object classname, [item #1,quantity item #1,item #2,quantity item #2]],]
						["U_IG_leader",["life_inv_getreideu",4]],
						["U_IG_Guerilla1_1",["life_inv_getreideu",4]],
						["U_I_G_Story_Protagonist_F",["life_inv_getreideu",4]],
						["U_I_G_resistanceLeader_F",["life_inv_getreideu",4]],
						["U_O_SpecopsUniform_ocamo",["life_inv_getreideu",4]],
						["U_O_PilotCoveralls",["life_inv_getreideu",4]],
						["U_B_PilotCoveralls",["life_inv_getreideu",4]],
						["U_IG_Guerilla3_1",["life_inv_getreideu",4]],
						["U_IG_Guerilla2_3",["life_inv_getreideu",4]],
						["U_IG_Guerilla3_2",["life_inv_getreideu",4]],
						["U_IG_Guerilla1_1",["life_inv_getreideu",4]],
						["U_O_CombatUniform_oucamo",["life_inv_getreideu",4]],
						["U_I_CombatUniform_tshirt",["life_inv_getreideu",4]],
						["U_O_OfficerUniform_ocamo",["life_inv_getreideu",4]],
						["U_I_OfficerUniform",["life_inv_getreideu",4]],
						["U_B_GhillieSuit",["life_inv_getreideu",4]],
						["U_O_GhillieSuit",["life_inv_getreideu",4]],
						["U_I_GhillieSuit",	["life_inv_getreideu",4]]					
			];
	};

	case "backpack":
	{
		_return = [
				//[Object classname, [item #1,quantity item #1,item #2,quantity item #2]],]
						["EMU_plecak_tor_blk", ["life_inv_getreideu",2,"life_inv_oilp",1]]
			];
	};

	case "item":
	{
		_return = [
				//[Object classname, [item #1,quantity item #1,item #2,quantity item #2]],]
						["life_inv_pickaxe", ["life_inv_holzu",1]],
						["life_inv_verschluss", ["life_inv_ironr",2]],
						["life_inv_laufa", ["life_inv_ironr",2]],
						["life_inv_laufb", ["life_inv_ironr",3]],
						["life_inv_laufc", ["life_inv_ironr",5]],
						["life_inv_laufd", ["life_inv_ironr",4]],
						["life_inv_griff", ["life_inv_holzu",1,"life_inv_copperr",1]],
						["life_inv_magazina", ["life_inv_copperr",2]],
						["life_inv_magazinb", ["life_inv_bronze",3]],
						["life_inv_feder", ["life_inv_ironr",1]],
						["life_inv_gasantrieb", ["life_inv_gaskolben",1,"life_inv_antrieb",1,"life_inv_abnahme",1]],
						["life_inv_gaskolben", ["life_inv_zinnp",2]],
						["life_inv_antrieb", ["life_inv_zinnp",2]],
						["life_inv_abnahme", ["life_inv_zinnp",2]]	
		];
	};
};

_return; 