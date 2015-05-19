#include <macro.h>
/*
	File: fn_weaponShopCfg.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration file for the weapon shops.
	
	Return:
	String: Close the menu
	Array: 
	[Shop Name,
	[ //Array of items to add to the store
		[classname,Custom Name (set nil for default),price]
	]]
*/
private["_shop"];
_shop = [_this,0,"",[""]] call BIS_fnc_param;
if(_shop == "") exitWith {closeDialog 0}; //Bad shop type passed.

switch(_shop) do
{
	case "cop_basic":
	{
		switch(true) do
		{
			case (playerSide != west): {"Du bist kein Polizist!"};
			default
			{
				["Altis Polizeihändler",
					[
						["Binocular",nil,150*5],
						["a3_gpnvg18_f",nil,500*5],
						["Rangefinder",nil,2000*5],
						["ItemRadio","Smartphone",100*5],
						["ItemGPS",nil,100*5],
						["ToolKit",nil,5000],
						["FirstAidKit",nil,150*5],
						["Medikit",nil,1000*5],
						["ItemWatch",nil,25*5],
						["ItemCompass",nil,25*5],
						["ItemMap",nil,25*5],
						["acc_flashlight",nil,250*5],
						["acc_pointer_IR",nil,250*5],
						["SmokeShellGreen","Tränengas",1000*5],
						["HandGrenade_Stone","Blendgranate",1000*5],
						["Chemlight_yellow",nil,200*5],
						["SmokeShellyellow",nil,200*5]
					]
				];
			};
		};
	};
	case "cop_waffen":
	{
		switch(true) do
		{
			case (playerSide != west): {"Du bist kein Polizist!"};
			case (__GETC__(life_coplevel) == 0): {"Du bist kein Polizist!"};
			case (__GETC__(life_coplevel) == 1):
			{
				["Rekrut",
					[
						["hgun_ACPC2_snds_F","Taser Pistole",100],
						["9Rnd_45ACP_Mag","Taser Pistolen Magazin",50],
						["arifle_sdar_F","Taser Gewehr",500],
						["20Rnd_556x45_UW_mag","Taser Gewehr Magazin",100],
                        //Rekrut
						["hlc_smg_MP5N",nil,2000],
						["hlc_30Rnd_9x19_GO_MP5",nil,250],
						["bipod_01_F_blk",nil,5000],
						//Schaldämpfer
						["muzzle_snds_H",nil,1000],
						["muzzle_snds_L",nil,1000],
						["muzzle_snds_M",nil,1000],
						["muzzle_snds_B",nil,1000],
						["muzzle_mas_snds_SHc",nil,1000],
						["hlc_muzzle_556NATO_KAC",nil,1000],
						["muzzle_mas_snds_SM",nil,1000],
						["muzzle_mas_snds_SH",nil,1000],
						["muzzle_mas_snds_M",nil,1000],
						["hlc_muzzle_snds_AUG",nil,1000],

                        ["optic_KHS_old",nil,800*5],
                        ["optic_AMS_khk",nil,800*5],
						["optic_ACO_grn",nil,800*5],
						["optic_mas_ACO_grn_camo",nil,800*5],
						["optic_mas_Aco_camo",nil,800*5],
						["optic_Aco",nil,800*5],
						["optic_Aco_smg",nil,800*5],
						["optic_mas_acog",nil,800*5],
						["optic_mas_acog_c",nil,800*5],
						["optic_mas_acog_eo",nil,800*5],
						["optic_mas_acog_eo_c",nil,800*5],
						["optic_mas_acog_rd",nil,800*5],
						["optic_mas_acog_rd_c",nil,800*5],
						["optic_mas_aim",nil,800*5],
						["optic_mas_aim_c",nil,800*5],
						["optic_Arco",nil,800*5],
						["optic_mas_Arco_blk",nil,800*5],
						["optic_mas_Arco_camo",nil,800*5],
						["optic_DMS",nil,800*5],
						["optic_Holosight",nil,800*5],
						["optic_mas_Holosight_blk",nil,800*5],
						["optic_mas_Holosight_camo",nil,800*5],
						["optic_mas_DMS",nil,800*5],
						["optic_mas_DMS_c",nil,800*5],
						["optic_LRPS",nil,800*5],
						["optic_mas_handle",nil,800*5],
						["optic_Holosight_smg",nil,800*5],
						["optic_MRCO",nil,800*5],
						["optic_mas_MRCO_camo",nil,800*5],
						["optic_NVS",nil,800*5],
						["optic_Hamr",nil,800*5],
						["optic_mas_Hamr_camo",nil,800*5],
						["optic_SOS",nil,800*5],
						["optic_mas_zeiss",nil,800*5],
						["optic_mas_zeiss_c",nil,800*5],
						["optic_mas_zeiss_eo",nil,800*5],
						["optic_mas_zeiss_eo_c",nil,800*5]
					]
				];
			};
			case (__GETC__(life_coplevel) == 2):
			{
				["Wachtmeister",
					[
						["hgun_ACPC2_snds_F","Taser Pistole",100],
						["9Rnd_45ACP_Mag","Taser Pistolen Magazin",50],
						["arifle_sdar_F","Taser Gewehr",500],
						["20Rnd_556x45_UW_mag","Taser Gewehr Magazin",100],
                       //Rekrut
						["hlc_smg_MP5N",nil,2000],
						["hlc_30Rnd_9x19_GO_MP5",nil,250],
						//Wachtmeister
						["arifle_mas_m4",nil,5000],
						["30Rnd_mas_556x45_Stanag",nil,500],
						["arifle_MX_F",nil,7000],
						["30Rnd_65x39_caseless_mag",nil,500],
						//Schaldämpfer
						["muzzle_snds_H",nil,1000],
						["muzzle_snds_L",nil,1000],
						["muzzle_snds_M",nil,1000],
						["muzzle_snds_B",nil,1000],
						["muzzle_mas_snds_SHc",nil,1000],
						["hlc_muzzle_556NATO_KAC",nil,1000],
						["muzzle_mas_snds_SM",nil,1000],
						["muzzle_mas_snds_SH",nil,1000],
						["muzzle_mas_snds_M",nil,1000],
						["hlc_muzzle_snds_AUG",nil,1000],


                        ["optic_KHS_old",nil,500],
                        ["optic_AMS_khk",nil,500],
						["optic_ACO_grn",nil,500],
						["optic_mas_ACO_grn_camo",nil,500],
						["optic_mas_Aco_camo",nil,500],
						["optic_Aco",nil,500],
						["optic_Aco_smg",nil,500],
						["optic_mas_acog",nil,500],
						["optic_mas_acog_c",nil,500],
						["optic_mas_acog_eo",nil,500],
						["optic_mas_acog_eo_c",nil,500],
						["optic_mas_acog_rd",nil,500],
						["optic_mas_acog_rd_c",nil,500],
						["optic_mas_aim",nil,500],
						["optic_mas_aim_c",nil,500],
						["optic_Arco",nil,500],
						["optic_mas_Arco_blk",nil,500],
						["optic_mas_Arco_camo",nil,500],
						["optic_DMS",nil,500],
						["optic_Holosight",nil,500],
						["optic_mas_Holosight_blk",nil,500],
						["optic_mas_Holosight_camo",nil,500],
						["optic_mas_DMS",nil,500],
						["optic_mas_DMS_c",nil,500],
						["optic_LRPS",nil,500],
						["optic_mas_handle",nil,500],
						["optic_Holosight_smg",nil,500],
						["optic_MRCO",nil,500],
						["optic_mas_MRCO_camo",nil,500],
						["optic_NVS",nil,500],
						["optic_Hamr",nil,500],
						["optic_mas_Hamr_camo",nil,500],
						["optic_SOS",nil,500],
						["optic_mas_zeiss",nil,500],
						["optic_mas_zeiss_c",nil,500],
						["optic_mas_zeiss_eo",nil,500],
						["optic_AMS",nil,500],
						["optic_KHS_blk",nil,500],
						["optic_KHS_hex",nil,500],
						["optic_mas_zeiss_eo_c",nil,500]
					]
				];
			};
			case (__GETC__(life_coplevel) == 3):
			{
				["Polizeikommisar",
					[
						["hgun_ACPC2_snds_F","Taser Pistole",100],
						["9Rnd_45ACP_Mag","Taser Pistolen Magazin",50],
						["arifle_sdar_F","Taser Gewehr",500],
						["20Rnd_556x45_UW_mag","Taser Gewehr Magazin",100],
                       //Rekrut
						["hlc_smg_MP5N",nil,2000],
						["hlc_30Rnd_9x19_GO_MP5",nil,250],
						//Wachtmeister
						["arifle_mas_m4",nil,5000],
						["30Rnd_mas_556x45_Stanag",nil,500],
						["arifle_MX_F",nil,7000],
						["30Rnd_65x39_caseless_mag",nil,500],
						//kommissar
						["arifle_MXM_F",nil,7500],
						["30Rnd_65x39_caseless_mag",nil,500],
						["hlc_rifle_auga3_b",nil,5000],
						["hlc_30Rnd_556x45_B_AUG",nil,500],
						//Schaldämpfer
						["muzzle_snds_H",nil,1000],
						["muzzle_snds_L",nil,1000],
						["muzzle_snds_M",nil,1000],
						["muzzle_snds_B",nil,1000],
						["muzzle_mas_snds_SHc",nil,1000],
						["hlc_muzzle_556NATO_KAC",nil,1000],
						["muzzle_mas_snds_SM",nil,1000],
						["muzzle_mas_snds_SH",nil,1000],
						["muzzle_mas_snds_M",nil,1000],
						["hlc_muzzle_snds_AUG",nil,1000],


                        ["optic_KHS_old",nil,500],
                        ["optic_AMS_khk",nil,500],
						["optic_ACO_grn",nil,500],
						["optic_mas_ACO_grn_camo",nil,500],
						["optic_mas_Aco_camo",nil,500],
						["optic_Aco",nil,500],
						["optic_Aco_smg",nil,500],
						["optic_mas_acog",nil,500],
						["optic_mas_acog_c",nil,500],
						["optic_mas_acog_eo",nil,500],
						["optic_mas_acog_eo_c",nil,500],
						["optic_mas_acog_rd",nil,500],
						["optic_mas_acog_rd_c",nil,500],
						["optic_mas_aim",nil,500],
						["optic_mas_aim_c",nil,500],
						["optic_Arco",nil,500],
						["optic_mas_Arco_blk",nil,500],
						["optic_mas_Arco_camo",nil,500],
						["optic_DMS",nil,500],
						["optic_Holosight",nil,500],
						["optic_mas_Holosight_blk",nil,500],
						["optic_mas_Holosight_camo",nil,500],
						["optic_mas_DMS",nil,500],
						["optic_mas_DMS_c",nil,500],
						["optic_LRPS",nil,500],
						["optic_mas_handle",nil,500],
						["optic_Holosight_smg",nil,500],
						["optic_MRCO",nil,500],
						["optic_mas_MRCO_camo",nil,500],
						["optic_NVS",nil,500],
						["optic_Hamr",nil,500],
						["optic_mas_Hamr_camo",nil,500],
						["optic_SOS",nil,500],
						["optic_mas_zeiss",nil,500],
						["optic_mas_zeiss_c",nil,500],
						["optic_mas_zeiss_eo",nil,500],
						["optic_AMS",nil,500],
						["optic_KHS_blk",nil,500],
						["optic_KHS_hex",nil,500],
						["optic_mas_zeiss_eo_c",nil,500]
					]
				];
			};
			case (__GETC__(life_coplevel) == 4):
			{
				["Polizeioberkommisar",
					[
						["hgun_ACPC2_snds_F","Taser Pistole",100],
						["9Rnd_45ACP_Mag","Taser Pistolen Magazin",50],
						["arifle_sdar_F","Taser Gewehr",500],
						["20Rnd_556x45_UW_mag","Taser Gewehr Magazin",100],
                       //Rekrut
						["hlc_smg_MP5N",nil,2000],
						["hlc_30Rnd_9x19_GO_MP5",nil,250],
						//Wachtmeister
						["arifle_mas_m4",nil,5000],
						["30Rnd_mas_556x45_Stanag",nil,500],
						["arifle_MX_F",nil,7000],
						["30Rnd_65x39_caseless_mag",nil,500],
						//kommissar
						["arifle_MXM_F",nil,7500],
						["30Rnd_65x39_caseless_mag",nil,500],
						["hlc_rifle_auga3_b",nil,5000],
						["hlc_30Rnd_556x45_B_AUG",nil,500],
						//Oberkomissar
						//Schaldämpfer
						["muzzle_snds_H",nil,1000],
						["muzzle_snds_L",nil,1000],
						["muzzle_snds_M",nil,1000],
						["muzzle_snds_B",nil,1000],
						["muzzle_mas_snds_SHc",nil,1000],
						["hlc_muzzle_556NATO_KAC",nil,1000],
						["muzzle_mas_snds_SM",nil,1000],
						["muzzle_mas_snds_SH",nil,1000],
						["muzzle_mas_snds_M",nil,1000],
						["hlc_muzzle_snds_AUG",nil,1000],


                        ["optic_KHS_old",nil,500],
                        ["optic_AMS_khk",nil,500],
						["optic_ACO_grn",nil,500],
						["optic_mas_ACO_grn_camo",nil,500],
						["optic_mas_Aco_camo",nil,500],
						["optic_Aco",nil,500],
						["optic_Aco_smg",nil,500],
						["optic_mas_acog",nil,500],
						["optic_mas_acog_c",nil,500],
						["optic_mas_acog_eo",nil,500],
						["optic_mas_acog_eo_c",nil,500],
						["optic_mas_acog_rd",nil,500],
						["optic_mas_acog_rd_c",nil,500],
						["optic_mas_aim",nil,500],
						["optic_mas_aim_c",nil,500],
						["optic_Arco",nil,500],
						["optic_mas_Arco_blk",nil,500],
						["optic_mas_Arco_camo",nil,500],
						["optic_DMS",nil,500],
						["optic_Holosight",nil,500],
						["optic_mas_Holosight_blk",nil,500],
						["optic_mas_Holosight_camo",nil,500],
						["optic_mas_DMS",nil,500],
						["optic_mas_DMS_c",nil,500],
						["optic_LRPS",nil,500],
						["optic_mas_handle",nil,500],
						["optic_Holosight_smg",nil,500],
						["optic_MRCO",nil,500],
						["optic_mas_MRCO_camo",nil,500],
						["optic_NVS",nil,500],
						["optic_Hamr",nil,500],
						["optic_mas_Hamr_camo",nil,500],
						["optic_SOS",nil,500],
						["optic_mas_zeiss",nil,500],
						["optic_mas_zeiss_c",nil,500],
						["optic_mas_zeiss_eo",nil,500],
						["optic_AMS",nil,500],
						["optic_KHS_blk",nil,500],
						["optic_KHS_hex",nil,500],
						["optic_mas_zeiss_eo_c",nil,500]
					]
				];
			};
			case (__GETC__(life_coplevel) == 5):
			{
				["Polizeihauptkommisar",
					[
						["hgun_ACPC2_snds_F","Taser Pistole",100],
						["9Rnd_45ACP_Mag","Taser Pistolen Magazin",50],
						["arifle_sdar_F","Taser Gewehr",500],
						["20Rnd_556x45_UW_mag","Taser Gewehr Magazin",100],
                       //Rekrut
						["hlc_smg_MP5N",nil,2000],
						["hlc_30Rnd_9x19_GO_MP5",nil,250],
						//Wachtmeister
						["arifle_mas_m4",nil,5000],
						["30Rnd_mas_556x45_Stanag",nil,500],
						["arifle_MX_F",nil,7000],
						["30Rnd_65x39_caseless_mag",nil,500],
						//kommissar
						["arifle_MXM_F",nil,7500],
						["30Rnd_65x39_caseless_mag",nil,500],
						["hlc_rifle_auga3_b",nil,5000],
						["hlc_30Rnd_556x45_B_AUG",nil,500],
						//Oberkomissar
						//Hauptkomissar
						["srifle_EBR_F",nil,8500],
						["20Rnd_762x51_Mag",nil,1000],
						["srifle_mas_m110",nil,8500],
						["20Rnd_762x51_Mag",nil,1000],
						["srifle_DMR_03_F",nil,9000],
						["20Rnd_762x51_Mag",nil,1000],
						//Schaldämpfer
						["muzzle_snds_H",nil,1000],
						["muzzle_snds_L",nil,1000],
						["muzzle_snds_M",nil,1000],
						["muzzle_snds_B",nil,1000],
						["muzzle_mas_snds_SHc",nil,1000],
						["hlc_muzzle_556NATO_KAC",nil,1000],
						["muzzle_mas_snds_SM",nil,1000],
						["muzzle_mas_snds_SH",nil,1000],
						["muzzle_mas_snds_M",nil,1000],
						["hlc_muzzle_snds_AUG",nil,1000],
					
                        ["optic_KHS_old",nil,500],
                        ["optic_AMS_khk",nil,500],
						["optic_ACO_grn",nil,500],
						["optic_mas_ACO_grn_camo",nil,500],
						["optic_mas_Aco_camo",nil,500],
						["optic_Aco",nil,500],
						["optic_Aco_smg",nil,500],
						["optic_mas_acog",nil,500],
						["optic_mas_acog_c",nil,500],
						["optic_mas_acog_eo",nil,500],
						["optic_mas_acog_eo_c",nil,500],
						["optic_mas_acog_rd",nil,500],
						["optic_mas_acog_rd_c",nil,500],
						["optic_mas_aim",nil,500],
						["optic_mas_aim_c",nil,500],
						["optic_Arco",nil,500],
						["optic_mas_Arco_blk",nil,500],
						["optic_mas_Arco_camo",nil,500],
						["optic_DMS",nil,500],
						["optic_Holosight",nil,500],
						["optic_mas_Holosight_blk",nil,500],
						["optic_mas_Holosight_camo",nil,500],
						["optic_mas_DMS",nil,500],
						["optic_mas_DMS_c",nil,500],
						["optic_LRPS",nil,500],
						["optic_mas_handle",nil,500],
						["optic_Holosight_smg",nil,500],
						["optic_MRCO",nil,500],
						["optic_mas_MRCO_camo",nil,500],
						["optic_NVS",nil,500],
						["optic_Hamr",nil,500],
						["optic_mas_Hamr_camo",nil,500],
						["optic_SOS",nil,500],
						["optic_mas_zeiss",nil,500],
						["optic_mas_zeiss_c",nil,500],
						["optic_mas_zeiss_eo",nil,500],
						["optic_AMS",nil,500],
						["optic_KHS_blk",nil,500],
						["optic_KHS_hex",nil,500],
						["optic_mas_zeiss_eo_c",nil,500]
					]
				];
			};
			case (__GETC__(life_coplevel) == 6):
			{
				["Bundespolizei",
					[
						["hgun_ACPC2_snds_F","Taser Pistole",100],
						["9Rnd_45ACP_Mag","Taser Pistolen Magazin",50],
						["arifle_sdar_F","Taser Gewehr",500],
						["20Rnd_556x45_UW_mag","Taser Gewehr Magazin",100],
                       //Rekrut
						["hlc_smg_MP5N",nil,2000],
						["hlc_30Rnd_9x19_GO_MP5",nil,250],
						//Wachtmeister
						["arifle_mas_m4",nil,5000],
						["30Rnd_mas_556x45_Stanag",nil,500],
						["arifle_MX_F",nil,7000],
						["30Rnd_65x39_caseless_mag",nil,500],
						//kommissar
						["arifle_MXM_F",nil,7500],
						["30Rnd_65x39_caseless_mag",nil,500],
						["hlc_rifle_auga3_b",nil,5000],
						["hlc_30Rnd_556x45_B_AUG",nil,500],
						//Oberkomissar
						//Hauptkomissar
						["srifle_EBR_F",nil,8500],
						["20Rnd_762x51_Mag",nil,1000],
						["srifle_mas_m110",nil,8500],
						["20Rnd_762x51_Mag",nil,1000],
						["srifle_DMR_03_F",nil,9000],
						["20Rnd_762x51_Mag",nil,1000],
						//Bundespolizei
						["hlc_rifle_SAMR",nil,6000],
						["hlc_30rnd_556x45_EPR",nil,500],
						["arifle_MXC_Black_F",nil,7000],
						["30Rnd_65x39_caseless_mag",nil,500],
						["srifle_mas_hk417",nil,8500],
						["20Rnd_762x51_Mag",nil,1000],
						["srifle_DMR_06_olive_F",nil,9000],
						["20Rnd_762x51_Mag",nil,1000],
						["srifle_mas_m24_v",nil,10000],
						["5Rnd_mas_762x51_Stanag",nil,1500],
						//Schaldämpfer
						["muzzle_snds_H",nil,1000],
						["muzzle_snds_L",nil,1000],
						["muzzle_snds_M",nil,1000],
						["muzzle_snds_B",nil,1000],
						["muzzle_mas_snds_SHc",nil,1000],
						["hlc_muzzle_556NATO_KAC",nil,1000],
						["muzzle_mas_snds_SM",nil,1000],
						["muzzle_mas_snds_SH",nil,1000],
                        ["bipod_01_F_blk",nil,5000],
						["muzzle_mas_snds_M",nil,1000],
						["hlc_muzzle_snds_AUG",nil,1000],

                        ["optic_KHS_old",nil,500],
                        ["optic_AMS_khk",nil,500],
						["optic_ACO_grn",nil,500],
						["optic_mas_ACO_grn_camo",nil,500],
						["optic_mas_Aco_camo",nil,500],
						["optic_Aco",nil,500],
						["optic_Aco_smg",nil,500],
						["optic_mas_acog",nil,500],
						["optic_mas_acog_c",nil,500],
						["optic_mas_acog_eo",nil,500],
						["optic_mas_acog_eo_c",nil,500],
						["optic_mas_acog_rd",nil,500],
						["optic_mas_acog_rd_c",nil,500],
						["optic_mas_aim",nil,500],
						["optic_mas_aim_c",nil,500],
						["optic_Arco",nil,500],
						["optic_mas_Arco_blk",nil,500],
						["optic_mas_Arco_camo",nil,500],
						["optic_DMS",nil,500],
						["optic_Holosight",nil,500],
						["optic_mas_Holosight_blk",nil,500],
						["optic_mas_Holosight_camo",nil,500],
						["optic_mas_DMS",nil,500],
						["optic_mas_DMS_c",nil,500],
						["optic_LRPS",nil,500],
						["optic_mas_handle",nil,500],
						["optic_Holosight_smg",nil,500],
						["optic_MRCO",nil,500],
						["optic_mas_MRCO_camo",nil,500],
						["optic_NVS",nil,500],
						["optic_Hamr",nil,500],
						["optic_mas_Hamr_camo",nil,500],
						["optic_SOS",nil,500],
						["optic_mas_zeiss",nil,500],
						["optic_mas_zeiss_c",nil,500],
						["optic_mas_zeiss_eo",nil,500],
						["optic_AMS",nil,500],
						["optic_KHS_blk",nil,500],
						["optic_KHS_hex",nil,500],
						["optic_mas_zeiss_eo_c",nil,500]
					]
				];
			};
			case (__GETC__(life_coplevel) >= 7):
			{
				["SEK",
					[
						//SEK
						["srifle_mas_sr25",nil,60000],
						["20Rnd_mas_762x51_Stanag",nil,100],
						["srifle_mas_m24",nil,60000],
						["5Rnd_mas_762x51_Stanag",nil,100],
						["arifle_mas_ak_74m_sf",nil,60000],
						["30Rnd_mas_545x39_mag",nil,100],
						//Schaldämpfer
						["muzzle_snds_H",nil,1000],
						["muzzle_snds_L",nil,1000],
						["muzzle_snds_M",nil,1000],
						["muzzle_snds_B",nil,1000],
						["muzzle_mas_snds_SHc",nil,1000],
						["hlc_muzzle_556NATO_KAC",nil,1000],
						["muzzle_mas_snds_SM",nil,1000],
						["muzzle_mas_snds_SH",nil,1000],
						["bipod_01_F_blk",nil,5000],
						//gummigeschoss
						["arifle_MXC_F","Gummigeschoss",30000],
						["30Rnd_65x39_caseless_mag","Gummimunition",500],

						["SmokeShellGreen","Rauchgranate",1000*5],
						["HandGrenade_Stone","Blendgranate",1000*5],
                        ["optic_KHS_old",nil,800*5],
                        ["optic_AMS_khk",nil,800*5],
						["optic_ACO_grn",nil,800*5],
						["optic_mas_ACO_grn_camo",nil,800*5],
						["optic_mas_Aco_camo",nil,800*5],
						["optic_Aco",nil,800*5],
						["optic_Aco_smg",nil,800*5],
						["optic_mas_acog",nil,800*5],
						["optic_mas_acog_c",nil,800*5],
						["optic_mas_acog_eo",nil,800*5],
						["optic_mas_acog_eo_c",nil,800*5],
						["optic_mas_acog_rd",nil,800*5],
						["optic_mas_acog_rd_c",nil,800*5],
						["optic_mas_aim",nil,800*5],
						["optic_mas_aim_c",nil,800*5],
						["optic_Arco",nil,800*5],
						["optic_mas_Arco_blk",nil,800*5],
						["optic_mas_Arco_camo",nil,800*5],
						["optic_DMS",nil,800*5],
						["optic_Holosight",nil,800*5],
						["optic_mas_Holosight_blk",nil,800*5],
						["optic_mas_Holosight_camo",nil,800*5],
						["optic_mas_DMS",nil,800*5],
						["optic_mas_DMS_c",nil,800*5],
						["optic_LRPS",nil,800*5],
						["optic_mas_handle",nil,800*5],
						["optic_Holosight_smg",nil,800*5],
						["optic_MRCO",nil,800*5],
						["optic_mas_MRCO_camo",nil,800*5],
						["optic_NVS",nil,800*5],
						["optic_Hamr",nil,800*5],
						["optic_mas_Hamr_camo",nil,800*5],
						["optic_SOS",nil,800*5],
						["optic_mas_zeiss",nil,800*5],
						["optic_mas_zeiss_c",nil,800*5],
						["optic_mas_zeiss_eo",nil,800*5],
						["optic_mas_zeiss_eo_c",nil,800*5],
						["B_UAV_01_backpack_F",nil,1000],
						["B_UavTerminal",nil,1000]
					]
				];
			};
		};
	};
	
	case "cop_sek":
	{
		switch(true) do
		{
			case (playerSide != west): {"Du bist kein Polizist!"};
			case (!license_cop_sek): {"Du gehörst nicht zum S.W.A.T!"};
			default
			{
				["SEK",
					[						
						["hgun_ACPC2_snds_F","Taser Pistole",100*5],
						["9Rnd_45ACP_Mag","Taser Pistolen Magazin",50*5],
						["arifle_sdar_F","Taser Gewehr",1000*5],
						["20Rnd_556x45_UW_mag","Taser Gewehr Magazin",100*5],
                       //Rekrut
						["SMG_02_F",nil,10000],
						["30Rnd_9x21_Mag",nil,100*5],
						["arifle_mas_mp5",nil,10000],
						["30Rnd_mas_9x21_Stanag",nil,100*5],
						//Wachtmeister
						["arifle_mas_hk416",nil,20000],
						["arifle_mas_m4",nil,20000],
						["30Rnd_mas_556x45_Stanag",nil,100*5],
						["arifle_MX_F",nil,20000],
						["30Rnd_65x39_caseless_mag",nil,100*5],
						//kommissar
						["arifle_MXM_F",nil,30000],
						["30Rnd_65x39_caseless_mag",nil,100*5],
						["hlc_rifle_RU5562",nil,30000],
						["hlc_30rnd_556x45_EPR",nil,100*5],
						//Oberkomissar
						["srifle_EBR_F",nil,40000],
						["20Rnd_762x51_Mag",nil,100*5],
						["srifle_DMR_03_F",nil,40000],
						["20Rnd_762x51_Mag",nil,100*5],
						//Hauptkomissar
						["srifle_mas_hk417",nil,40000],
						["20Rnd_mas_762x51_Stanag",nil,100*5],
						["srifle_DMR_06_olive_F",nil,40000],
						["20Rnd_762x51_Mag",nil,100*5],
						//Bundespolizei
						["srifle_mas_m110",nil,50000],
						["20Rnd_mas_762x51_Stanag",nil,100*5],
						["hlc_rifle_g3ka4",nil,50000],
						["hlc_20rnd_762x51_b_G3",nil,100*5],
						//SEK
						["srifle_mas_sr25",nil,60000],
						["20Rnd_mas_762x51_Stanag",nil,100*5],
						["srifle_mas_m24",nil,60000],
						["5Rnd_mas_762x51_Stanag",nil,100*5],
						["arifle_mas_ak_74m_sf",nil,60000],
						["30Rnd_mas_545x39_mag",nil,100*5],
						//Schaldämpfer
						["muzzle_snds_H",nil,5000],
						["muzzle_snds_L",nil,5000],
						["muzzle_snds_M",nil,5000],
						["muzzle_snds_B",nil,5000],
						["muzzle_mas_snds_SHc",nil,5000],
						["hlc_muzzle_556NATO_KAC",nil,5000],
						["muzzle_mas_snds_SM",nil,5000],
						["bipod_01_F_blk",nil,5000],
						//gummigeschoss
						["arifle_MXC_F","Gummigeschoss",30000],
						["30Rnd_65x39_caseless_mag","Gummimunition",500],

						["SmokeShellGreen","Rauchgranate",1000*5],
						["HandGrenade_Stone","Blendgranate",1000*5],
                        ["optic_KHS_old",nil,800*5],
                        ["optic_AMS_khk",nil,800*5],
						["optic_ACO_grn",nil,800*5],
						["optic_mas_ACO_grn_camo",nil,800*5],
						["optic_mas_Aco_camo",nil,800*5],
						["optic_Aco",nil,800*5],
						["optic_Aco_smg",nil,800*5],
						["optic_mas_acog",nil,800*5],
						["optic_mas_acog_c",nil,800*5],
						["optic_mas_acog_eo",nil,800*5],
						["optic_mas_acog_eo_c",nil,800*5],
						["optic_mas_acog_rd",nil,800*5],
						["optic_mas_acog_rd_c",nil,800*5],
						["optic_mas_aim",nil,800*5],
						["optic_mas_aim_c",nil,800*5],
						["optic_Arco",nil,800*5],
						["optic_mas_Arco_blk",nil,800*5],
						["optic_mas_Arco_camo",nil,800*5],
						["optic_DMS",nil,800*5],
						["optic_Holosight",nil,800*5],
						["optic_mas_Holosight_blk",nil,800*5],
						["optic_mas_Holosight_camo",nil,800*5],
						["optic_mas_DMS",nil,800*5],
						["optic_mas_DMS_c",nil,800*5],
						["optic_LRPS",nil,800*5],
						["optic_mas_handle",nil,800*5],
						["optic_Holosight_smg",nil,800*5],
						["optic_MRCO",nil,800*5],
						["optic_mas_MRCO_camo",nil,800*5],
						["optic_NVS",nil,800*5],
						["optic_Hamr",nil,800*5],
						["optic_mas_Hamr_camo",nil,800*5],
						["optic_SOS",nil,800*5],
						["optic_mas_zeiss",nil,800*5],
						["optic_mas_zeiss_c",nil,800*5],
						["optic_mas_zeiss_eo",nil,800*5],
						["optic_mas_zeiss_eo_c",nil,800*5],
						["B_UAV_01_backpack_F",nil,1000],
						["B_UavTerminal",nil,1000]
					]
				];
			};
		};
	};
			
	case "med_basic":
	{
		switch (true) do 
		{
			case (playerSide != independent): {"Du bist kein Sanitaeter"};
			default {
				["EMS Handel",
					[
						["ItemRadio","Smartphone",100],
						["ItemGPS",nil,100],
						["NVGoggles",nil,100],
						["ToolKit",nil,250],
						["FirstAidKit",nil,50],
						["Medikit",nil,50],						
						["B_Kitbag_sgg",nil,300],
						["Chemlight_yellow",nil,50],
						["SmokeShellyellow",nil,50],
						["SmokeShellred",nil,50],
						["ItemWatch",nil,25],
						["ItemCompass",nil,25],
						["ItemMap",nil,25],
						["Rangefinder",nil,800],
						["A3_GPNVG18_REC_BLK_F",nil,500]
					]
				];
			};
		};
	};
	
	case "rebel":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"Du bist kein Zivilist!"};
			case (!license_civ_rebel): {"Du hast keine Rebellenlizenz!"};
			default
			{
				["RLP Waffenkammer",
					[
                        ["arifle_MK20_plain_F",nil,90000],
                        ["30Rnd_556x45_Stanag",nil,9000],
                        ["hgun_mas_uzi_F",nil,50000],
                        ["30Rnd_mas_9x21_Stanag",5000],
                        ["hgun_mas_sa61_F",nil,55000],
                        ["20Rnd_mas_765x17_Mag",5500],
                        ["arifle_Katiba_F",nil,120000],
                        ["30Rnd_65x39_caseless_green",nil,12000],
                        ["arifle_mas_l119",nil,150000],
                        ["30Rnd_556x45_Stanag",nil,15000],
                        ["hlc_rifle_auga3",nil,150000],
                        ["hlc_30Rnd_556x45_B_AUG",nil,15000],
                        ["arifle_MXC_F",nil,160000],
                        ["arifle_mx_F",nil,170000],
                        ["30Rnd_65x39_caseless_mag",nil,16000],
                        ["arifle_mas_bizon",nil,180000],
                        ["64Rnd_mas_9x18_mag",nil,18000],
                        ["hlc_rifle_Bushmaster300",nil,200000],
                        ["29rnd_300BLK_STANAG",nil,20000],
                        ["srifle_DMR_01_F",nil,220000],
                        ["10Rnd_762x51_Mag",nil,22000]						
					]
				];
			};
		};
	};
	case "gang":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"Du bist kein Zivilist!"};
			case (!license_civ_rebel): {"Du hast keine Rebellenlizenz!"};
			default
			{
				["Gang Waffenkammer",
					[
                        ["arifle_MK20_plain_F",nil,90000],
                        ["30Rnd_556x45_Stanag",nil,9000],
                        ["hgun_mas_uzi_F",nil,50000],
                        ["30Rnd_mas_9x21_Stanag",5000],
                        ["hgun_mas_sa61_F",nil,55000],
                        ["20Rnd_mas_765x17_Mag",5500],
                        ["arifle_Katiba_F",nil,120000],
                        ["30Rnd_65x39_caseless_green",nil,12000],
                        ["arifle_mas_l119",nil,150000],
                        ["30Rnd_556x45_Stanag",nil,15000],
                        ["hlc_rifle_auga3",nil,150000],
                        ["hlc_30Rnd_556x45_B_AUG",nil,15000],
                        ["arifle_MXC_F",nil,160000],
                        ["arifle_mx_F",nil,170000],
                        ["30Rnd_65x39_caseless_mag",nil,16000],
                        ["arifle_mas_bizon",nil,180000],
                        ["64Rnd_mas_9x18_mag",nil,18000],
                        ["hlc_rifle_Bushmaster300",nil,200000],
                        ["29rnd_300BLK_STANAG",nil,20000],
                        ["srifle_DMR_01_F",nil,220000],
                        ["10Rnd_762x51_Mag",nil,22000]
						["ItemRadio","Smartphone",500],
						["NVGoggles",nil,2000],
						["Rangefinder",nil,2000],	
						["ItemGPS",nil,100],
						["ToolKit",nil,5000],
						["FirstAidKit",nil,1500],		
						["ItemWatch",nil,25],
						["ItemCompass",nil,25]
					]
				];
			};
		};
	};
	
	case "rebel_scopes":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"Du bist kein Zivilist!"};
			case (!license_civ_rebel): {"Du hast keine Rebellenlizenz!"};
			default
			{
				["RLP Waffenkammer",
					[
						["optic_ACO_grn",nil,5000],
						["optic_mas_ACO_grn_camo",nil,5000],
						["optic_mas_Aco_camo",nil,5000],
						["optic_Aco",nil,5000],
						["optic_Aco_smg",nil,5000],
						["optic_mas_acog",nil,5000],
						["optic_mas_acog_c",nil,5000],
						["optic_mas_acog_eo",nil,5000],
						["optic_mas_acog_eo_c",nil,5000],
						["optic_mas_acog_rd",nil,5000],
						["optic_mas_acog_rd_c",nil,5000],
						["optic_mas_aim",nil,5000],
						["optic_mas_aim_c",nil,5000],
						["optic_Arco",nil,5000],
						["optic_mas_Arco_blk",nil,5000],
						["optic_mas_Arco_camo",nil,5000],
						["optic_DMS",nil,5000],
						["optic_Holosight",nil,5000],
						["optic_mas_Holosight_blk",nil,5000],
						["optic_mas_Holosight_camo",nil,5000],
						["optic_mas_DMS",nil,5000],
						["optic_mas_DMS_c",nil,5000],
						["optic_LRPS",nil,5000],
						["optic_mas_handle",nil,5000],
						["optic_Holosight_smg",nil,5000],
						["optic_MRCO",nil,5000],
						["optic_mas_MRCO_camo",nil,5000],
						["optic_NVS",nil,5000],
						["optic_Hamr",nil,5000],
						["optic_mas_Hamr_camo",nil,5000],
						["optic_SOS",nil,5000],
						["optic_mas_zeiss",nil,5000],
						["optic_mas_zeiss_c",nil,5000],
						["optic_mas_zeiss_eo",nil,5000],
						["optic_mas_zeiss_eo_c",nil,5000],
						["acc_pointer_IR",nil,10000],
						["acc_flashlight",nil,10000]
					]
				];
			};
		};
	};
	
	case "donator_legal":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"Du bist kein Zivilist!"};
			case (!license_civ_donator): {"Du bist kein Donator!"};
			case (!license_civ_gun): {"Du hast keinen Waffenschein!"};
			default
			{
				["Donator Fundgrube",
					[
						["hgun_ACPC_F",nil,14000],
						["9Rnd_45ACP_Mag",nil,200],
						["hgun_P07_F",nil,17500],
						["16Rnd_9x21_Mag",nil,250],
						["hgun_Pistol_heavy_01_F",nil,21000],
						["11Rnd_45ACP_Mag",nil,250],
						["hgun_mas_glock_F",nil,21000],
						["17Rnd_mas_9x21_Mag",nil,275],						
						["hgun_Pistol_heavy_01_snds_F",nil,24500],
						["11Rnd_45ACP_Mag",nil,175],
						["hgun_mas_m9_F",nil,24500],
						["15Rnd_mas_9x21_Mag",nil,300],
						["hgun_mas_glock_F",nil,28000],
						["17Rnd_mas_9x21_Mag",nil,280]
						["hgun_PDW2000_F",nil,21000],
						["30Rnd_9x21_Mag",nil,300],
						["SMG_01_F",nil,28000],
						["30Rnd_45ACP_Mag_SMG_01",nil,400],
						["arifle_SDAR_F",nil,31500],
						["20Rnd_556x45_UW_mag",nil,500],
						["arifle_TRG21_F",nil,35000],
						["30Rnd_556x45_Stanag",nil,550],
						["optic_Yorris",nil,3500],
						["optic_ACO_grn_smg",nil,3500],
						["optic_Holosight_smg",nil,3500],
						["optic_Aco",nil,3500],
						["optic_Holosight",nil,3500],
						["V_Rangemaster_belt",nil,3500]
					]
				];
			};
		};
	};
	
	case "donator_illegal":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"Du bist kein Zivilist!"};
			case (!license_civ_donator): {"Du bist kein Donator!"};
			case (!license_civ_rebel): {"Du hast keine Rebellenlizenz!"};
			default
			{
				["Donator Fundgrube",
					[
                        ["arifle_MK20_plain_F",nil,63000],
                        ["30Rnd_556x45_Stanag",nil,6300],
                        ["hgun_mas_uzi_F",nil,35000],
                        ["30Rnd_mas_9x21_Stanag",3500],
                        ["hgun_mas_sa61_F",nil,38500],
                        ["20Rnd_mas_765x17_Mag",3850],
                        ["arifle_Katiba_F",nil,84000],
                        ["30Rnd_65x39_caseless_green",nil,8400],
                        ["arifle_mas_l119",nil,105000],
                        ["30Rnd_556x45_Stanag",nil,10500],
                        ["hlc_rifle_auga3",nil,105000],
                        ["hlc_30Rnd_556x45_B_AUG",nil,10500],
                        ["arifle_MXC_F",nil,112000],
                        ["arifle_mx_F",nil,119000],
                        ["30Rnd_65x39_caseless_mag",nil,11200],
                        ["arifle_mas_bizon",nil,126000],
                        ["64Rnd_mas_9x18_mag",nil,12600],
                        ["hlc_rifle_Bushmaster300",nil,140000],
                        ["29rnd_300BLK_STANAG",nil,14000],
                        ["srifle_DMR_01_F",nil,154000],
                        ["10Rnd_762x51_Mag",nil,15400]
					]
				];
			};
		};
	};
	
	case "donator_bm":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"Du bist kein Zivilist!"};
			case (!license_civ_donator): {"Du bist kein Donator!"};
			case (!license_civ_bm): {"Du hast keine Schwarzmarkt Lizenz!"};
			case (!license_civ_rebel): {"Du hast keine Rebellenlizenz!"};
			default
			{
				["Donator Fundgrube",
					[
						["hgun_mas_acp_F",nil,52500],
                        ["12Rnd_mas_45acp_Mag",nil,5250]						
						["hgun_Pistol_heavy_02_F",nil,52500],
						["6Rnd_45ACP_Cylinder",nil,5250],
						["arifle_mas_m1014",nil,105000],
						["7Rnd_mas_12Gauge_Pallets",nil,10500],
						["arifle_MXM_F",nil,129500],
						["30Rnd_65x39_caseless_mag"nil,12950],
						["arifle_mas_akm",nil,154000],
						["30Rnd_mas_762x39_mag",nil,15400],
						["hlc_rifle_bcmjack,nil,196000"],
						["hlc_30rnd_556x45_EPR",nil,19600],
						["srifle_mas_m110",nil,210000],
						["srifle_EBR_F",nil,210000],
						["srifle_mas_sr25",nil,224000],
						["20Rnd_762x51_Mag",nil,21000],
						["hlc_tifle_psg1",nil,245000],
						["hlc_20rnd_762x51_b_G3",nil,24500],
						["srifle_DMR_03_F",nil,280000],
						["20Rnd_762x51_Mag",nil,28000],
						["arifle_mas_mk17",nil,294000],
						["20Rnd_762x51_Mag",nil,29400],
						["srifle_mas_svd",nil,315000],
						["10Rnd_mas_762x54_mag",nil,31500],
						["muzzle_snds_L",nil,24500],
						["muzzle_snds_M",nil,24500],
						["muzzle_snds_H",nil,24500],
						["muzzle_snds_B",nil,24500],
						["muzzle_mas_snds_SM",nil,24500],
						["muzzle_mas_snds_SH",nil,24500],
						["hlc_muzzle_556nato_KAC",nil,24500],
						["bipod_01_F_blk",nil,7500],
						["bipod_01_F_snd",nil,7500],
						["bipod_03_F_oli",nil,7500],
						["optic_AMS_khk",nil,7500],
						["optic_AMS_snd",nil,7500],
						["optic_AMS",nil,7500],
						["optic_KHS_tan",nil,7500],
						["optic_KHS_hex",nil,7500],
						["optic_KHS_blk",nil,7500]
					]
				];
			};
		};
	};
	
	case "donator_sec":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"Du bist kein Zivilist!"};
			case (!license_civ_sec): {"Du hast keine Security Lizenz!"};
			default
			{
				["Security Shop",
					[
						["srifle_mas_m24_v",nil,150000],
						["5Rnd_mas_762x51_Stanag",nil,100000],
						["srifle_mas_mk17s",nil,10000],
						["20Rnd_mas_762x51_Stanag",nil,1000],
						["arifle_mas_m4_v",nil,10000],
						["muzzle_mas_snds_M",nil,1000],	
						["30Rnd_mas_556x45_Stanag",nil,1000],
						["srifle_mas_m110",nil,10000],
						["20Rnd_mas_762x51_Stanag",nil,1000],					
						["hgun_mas_m23_F",nil,10000],
						["12Rnd_mas_45acp_Mag",nil,1000],
						["hlc_rifle_bcmjack",nil,200000],
						["hlc_30rnd_556x45_EPR",nil,10000],
						["hlc_muzzle_556NATO_KAC",nil,1000],
						["muzzle_mas_snds_SVD",nil,1000],						
						["muzzle_mas_snds_SMc",nil,50000],
						["A3_GPNVG18_F",nil,1000],
						["Laserdesignator",nil,1000],					
						["optic_ACO_grn",nil,800],
						["optic_mas_ACO_grn_camo",nil,800],
						["optic_mas_Aco_camo",nil,800],
						["optic_Aco",nil,800],
						["optic_Aco_smg",nil,800],
						["optic_mas_acog",nil,800],
						["optic_mas_acog_c",nil,800],
						["optic_mas_acog_eo",nil,800],
						["optic_mas_acog_eo_c",nil,800],
						["optic_mas_acog_rd",nil,800],
						["optic_mas_acog_rd_c",nil,800],
						["optic_mas_aim",nil,800],
						["optic_mas_aim_c",nil,800],
						["optic_Arco",nil,800],
						["optic_mas_Arco_blk",nil,800],
						["optic_mas_Arco_camo",nil,800],
						["optic_DMS",nil,800],
						["optic_Holosight",nil,800],
						["optic_mas_Holosight_blk",nil,800],
						["optic_mas_Holosight_camo",nil,800],
						["optic_mas_DMS",nil,800],
						["optic_mas_DMS_c",nil,800],
						["optic_LRPS",nil,800],
						["optic_mas_handle",nil,800],
						["optic_Holosight_smg",nil,800],
						["optic_MRCO",nil,800],
						["optic_mas_MRCO_camo",nil,800],
						["optic_NVS",nil,800],
						["optic_Hamr",nil,800],
						["optic_mas_Hamr_camo",nil,800],
						["optic_SOS",nil,800],
						["optic_mas_zeiss",nil,800],
						["optic_mas_zeiss_c",nil,800],
						["optic_mas_zeiss_eo",nil,800],
						["optic_mas_zeiss_eo_c",nil,800],
						["HandGrenade_Stone","Blendgranate",1000]
					]
				];
			};
		};
	};
	
	case "bm":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"Du bist kein Zivilist!"};
			case (!license_civ_bm): {"Du hast keine Schwarzmarkt Lizenz!"};
			case (!license_civ_rebel): {"Du hast keine Rebellenlizenz!"};
			default
			{
				["Schwarzmarkt",
					[
						["hgun_mas_acp_F",nil,75000],
                        ["12Rnd_mas_45acp_Mag",nil,7500]						
						["hgun_Pistol_heavy_02_F",nil,75000],
						["6Rnd_45ACP_Cylinder",nil,7500],
						["arifle_mas_m1014",nil,150000],
						["7Rnd_mas_12Gauge_Pallets",nil,15000],
						["arifle_MXM_F",nil,185000],
						["30Rnd_65x39_caseless_mag"nil,18500],
						["arifle_mas_akm",nil,220000],
						["30Rnd_mas_762x39_mag",nil,22000],
						["hlc_rifle_bcmjack,nil,280000"],
						["hlc_30rnd_556x45_EPR",nil,28000],
						["srifle_mas_m110",nil,300000],
						["srifle_EBR_F",nil,300000],
						["srifle_mas_sr25",nil,320000],
						["20Rnd_762x51_Mag",nil,30000],
						["hlc_tifle_psg1",nil,350000],
						["hlc_20rnd_762x51_b_G3",nil,35000],
						["srifle_DMR_03_F",nil,400000],
						["20Rnd_762x51_Mag",nil,40000],
						["arifle_mas_mk17",nil,420000],
						["20Rnd_762x51_Mag",nil,42000],
						["srifle_mas_svd",nil,450000],
						["10Rnd_mas_762x54_mag",nil,45000],
						["muzzle_snds_L",nil,35000],
						["muzzle_snds_M",nil,35000],
						["muzzle_snds_H",nil,35000],
						["muzzle_snds_B",nil,35000],
						["muzzle_mas_snds_SM",nil,35000],
						["muzzle_mas_snds_SH",nil,35000],
						["hlc_muzzle_556nato_KAC",nil,35000]
						["bipod_01_F_blk",nil,15000],
						["bipod_01_F_snd",nil,15000],
						["bipod_03_F_oli",nil,15000],
						["optic_AMS_khk",nil,15000],
						["optic_AMS_snd",nil,15000],
						["optic_AMS",nil,15000],
						["optic_KHS_tan",nil,15000],
						["optic_KHS_hex",nil,15000],
						["optic_KHS_blk",nil,15000]
					]
				];
			};
		};
	};
	
	case "tf":
	{
		switch(true) do
		{
			case (!license_cop_tf): {"Du bist kein Mitglied des Black Water Security!"};
			default
			{
				["Secrurity Dildosammlung",
					[
						["srifle_mas_mk17s",nil,10000],
						["20Rnd_mas_762x51_Stanag",nil,1000],
						["arifle_mas_m4_v",nil,10000],
						["30Rnd_mas_556x45_Stanag",nil,1000],
						["srifle_mas_m110",nil,10000],
						["20Rnd_mas_762x51_Stanag",nil,1000],					
						["hgun_mas_m23_F",nil,10000],
						["12Rnd_mas_45acp_Mag",nil,1000],
						["A3_GPNVG18_F",nil,1000],
						["Laserdesignator",nil,1000],					
						["optic_ACO_grn",nil,10000],
						["optic_mas_ACO_grn_camo",nil,10000],
						["optic_mas_Aco_camo",nil,10000],
						["optic_Aco",nil,10000],
						["optic_Aco_smg",nil,10000],
						["optic_mas_acog",nil,10000],
						["optic_mas_acog_c",nil,10000],
						["optic_mas_acog_eo",nil,10000],
						["optic_mas_acog_eo_c",nil,10000],
						["optic_mas_acog_rd",nil,10000],
						["optic_mas_acog_rd_c",nil,10000],
						["optic_mas_aim",nil,10000],
						["optic_mas_aim_c",nil,10000],
						["optic_Arco",nil,10000],
						["optic_mas_Arco_blk",nil,10000],
						["optic_mas_Arco_camo",nil,10000],
						["optic_DMS",nil,10000],
						["optic_Holosight",nil,10000],
						["optic_mas_Holosight_blk",nil,10000],
						["optic_mas_Holosight_camo",nil,10000],
						["optic_mas_DMS",nil,10000],
						["optic_mas_DMS_c",nil,10000],
						["optic_LRPS",nil,10000],
						["optic_mas_handle",nil,10000],
						["optic_Holosight_smg",nil,10000],
						["optic_MRCO",nil,10000],
						["optic_mas_MRCO_camo",nil,10000],
						["optic_NVS",nil,10000],
						["optic_Hamr",nil,10000],
						["optic_mas_Hamr_camo",nil,10000],
						["optic_SOS",nil,10000],
						["optic_mas_zeiss",nil,10000],
						["optic_mas_zeiss_c",nil,10000],
						["optic_mas_zeiss_eo",nil,10000],
						["optic_mas_zeiss_eo_c",nil,10000],
						["acc_pointer_IR",nil,8000],
						["acc_flashlight",nil,8000],
						["HandGrenade_Stone","Blendgranate",100000],
						//srifle_DMR_05_hex_F",nil,1000000],
						//muzzle_snds_93mmg_tan",nil,50000],
						//10Rnd_93x64_DMR_05_Mag",nil,30000],
						["muzzle_snds_L",nil,50000],
						["muzzle_snds_M",nil,50000],
						["muzzle_snds_H",nil,50000],
						["muzzle_snds_B",nil,50000],
						["bipod_01_F_blk",nil,25000],
						["bipod_01_F_snd",nil,25000],
						["bipod_03_F_oli",nil,25000],
						["optic_AMS_khk",nil,25000],
						["optic_AMS_snd",nil,25000],
						["optic_AMS",nil,25000],
						["optic_KHS_tan",nil,25000],
						["optic_KHS_hex",nil,25000],
						["optic_KHS_blk",nil,25000]
					]
				];
			};
		};
	};
	
	case "donator_scopes":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"Du bist kein Zivilist!"};
			case (!license_civ_donator): {"Du bist kein Donator!"};
			default
			{
				["Donator Fundgrube",
					[
						["optic_ACO_grn",nil,3500],
						["optic_mas_ACO_grn_camo",nil,3500],
						["optic_mas_Aco_camo",nil,3500],
						["optic_Aco",nil,3500],
						["optic_Aco_smg",nil,3500],
						["optic_mas_acog",nil,3500],
						["optic_mas_acog_c",nil,3500],
						["optic_mas_acog_eo",nil,3500],
						["optic_mas_acog_eo_c",nil,3500],
						["optic_mas_acog_rd",nil,3500],
						["optic_mas_acog_rd_c",nil,3500],
						["optic_mas_aim",nil,3500],
						["optic_mas_aim_c",nil,3500],
						["optic_Arco",nil,3500],
						["optic_mas_Arco_blk",nil,3500],
						["optic_mas_Arco_camo",nil,3500],
						["optic_DMS",nil,3500],
						["optic_Holosight",nil,3500],
						["optic_mas_Holosight_blk",nil,3500],
						["optic_mas_Holosight_camo",nil,3500],
						["optic_mas_DMS",nil,3500],
						["optic_mas_DMS_c",nil,3500],
						["optic_LRPS",nil,3500],
						["optic_mas_handle",nil,3500],
						["optic_Holosight_smg",nil,3500],
						["optic_MRCO",nil,3500],
						["optic_mas_MRCO_camo",nil,3500],
						["optic_NVS",nil,3500],
						["optic_Hamr",nil,3500],
						["optic_mas_Hamr_camo",nil,3500],
						["optic_SOS",nil,3500],
						["optic_mas_zeiss",nil,3500],
						["optic_mas_zeiss_c",nil,3500],
						["optic_mas_zeiss_eo",nil,3500],
						["optic_mas_zeiss_eo_c",nil,3500],
						["acc_pointer_IR",nil,7500],
						["acc_flashlight",nil,7500]
					]
				];
			};
		};
	};
	
	case "gun":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"Du bist kein Zivilist!"};
			case (!license_civ_gun): {"Du hast keinen Waffenschein!"};
			default
			{
				["Billy Joe's Waffenladen",
					[
						["hgun_ACPC_F",nil,20000],
						["9Rnd_45ACP_Mag",nil,200],
						["hgun_P07_F",nil,22500],
						["16Rnd_9x21_Mag",nil,225],
						["hgun_Pistol_heavy_01_F",nil,25000],
						["11Rnd_45ACP_Mag",nil,250],
						["hgun_mas_glock_F",nil,27500],
						["17Rnd_mas_9x21_Mag",nil,275],						
						["hgun_Pistol_heavy_01_snds_F",nil,27500],
						["11Rnd_45ACP_Mag",nil,175],
						["hgun_mas_m9_F",nil,30000],
						["15Rnd_mas_9x21_Mag",nil,300],
						["hgun_mas_glock_F",nil,35000],
						["hgun_PDW2000_F",nil,30000],
						["30Rnd_9x21_Mag",nil,300],
						["SMG_01_F",nil,40000],
						["30Rnd_45ACP_Mag_SMG_01",nil,400],
						["arifle_SDAR_F",nil,50000],
						["20Rnd_556x45_UW_mag",nil,500],
						["arifle_TRG21_F",nil,55000],
						["30Rnd_556x45_Stanag",nil,550],
						["optic_Yorris",nil,5000],
						["optic_ACO_grn_smg",nil,5000],
						["optic_Holosight_smg",nil,5000],
						["optic_Aco",nil,5000],
						["optic_Holosight",nil,5000],
						["V_Rangemaster_belt",nil,5000]
					]
				];
			};
		};
	};
		
	case "genstore":
	{
		["Altis Gemischtwaren",
			[
				["ItemRadio","Smartphone",450],
				["Binocular",nil,500],
				["ItemGPS",nil,100],
				["ToolKit",nil,2500],
				["ItemMap",nil,250],
				["FirstAidKit",nil,2000],
				["NVGoggles",nil,2000],
				["ItemWatch",nil,25],
				["ItemCompass",nil,25],
				["Rangefinder",nil,9000],
				["Chemlight_yellow",nil,400],
				["SmokeShellyellow",nil,400]
			]
		];
	};
	case "umwelt":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"Du bist kein Zivilist!"};
			case (!license_civ_uran2): {"Du kannst nicht mit Uran umgehen!"};
			default
			{
				["Umweltamt",
					[
						["ToolKit",nil,2500],
						["FirstAidKit",nil,5000],
						["U_C_Scientist","Strahlenschutzanzug",10000]
					]
				];
			};
		};
	};
	case "hunting":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"Du bist kein Zivilist!"};
			case (!license_civ_gun): {"Du hast keinen Waffenschein!"};
			case (!license_civ_hunting): {"Du hast keinen Jagdschein!"};
			default
			{
				["Forstamt",
					[
						["srifle_mas_m24_v","Jagdgewehr",25000],
                        ["5Rnd_mas_762x51_Stanag",nil,150],
						["acc_flashlight",nil,8000],
						["optic_mas_Arco_camo",nil,10000]
					]
				];
			};
		};
	};
	
	case "adacgen":
    {
        switch(true) do    
        {
            case (playerSide != east): {"Du bist kein ADAC!"};
            default
            {
                ["ADAC Zubehör",
                    [
                        ["Binocular",nil,150],
						["ItemRadio","Smartphone",100],
						["ItemGPS",nil,100],
						["FirstAidKit",nil,150],
						["NVGoggles",nil,2000],
						["rangefinder",nil,200],
						["Chemlight_yellow",nil,50],
						["SmokeShellyellow",nil,50],
						["SmokeShellred",nil,150],
						["ToolKit",nil,100],
						["ItemWatch",nil,25],
						["ItemCompass",nil,25],
						["ItemMap",nil,25]
                    ]
                ];
            };
        };
    };
};