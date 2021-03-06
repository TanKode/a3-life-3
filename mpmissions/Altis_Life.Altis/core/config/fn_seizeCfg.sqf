#include <macro.h>
/*
	File: fn_seizeCfg.sqf
	Author: Tabakhase
	Slightly adapted by Daniel Larusso (Keep Calm and Roleplay)
	
	Description:
	Master configuration file for seize player everything.
	
	Parameters:
	0 = All
	1 = Weapons
	2 = Uniform
	3 = Backpack
	4 = Vest
	5 = Items
	
	ToDo:
	Adding list 0,2,3,4&5
*/
private["_mode"];
_mode = [_this,0,objNull,[""]] call BIS_fnc_param;

switch(_mode) do
{
	if(license_civ_gun) then
		{
			case 1: {
			[
			    //Waffen Schwarzmarkt
				"arifle_MXC_Black_F",
            	"arifle_MX_Black_F",
            	"arifle_MX_SW_Black_F",
            	"arifle_MXM_Black_F",
            	"30Rnd_65x39_caseless_mag",
            	"100Rnd_65x39_caseless_mag",
            	"srifle_mas_m110",
            	"srifle_mas_ebr",
            	"srifle_mas_sr25",
            	"srifle_mas_m24_v",
            	"20Rnd_mas_762x51_Stanag",
            	"5Rnd_mas_762x51_Stanag",
            	"srifle_mas_m91",
            	"10Rnd_mas_762x54_mag",
            	"muzzle_mas_snds_SVD",
            	"muzzle_mas_snds_SMc",
            	"hlc_rifle_Bushmaster300",
            	"29rnd_300BLK_STANAG",
            	"hlc_rifle_vendimus",
            	"29rnd_300BLK_STANAG",
            	"hlc_rifle_psg1",
            	"hlc_20rnd_762x51_b_G3",
            	"hlc_rifle_bcmjack",
            	"hlc_muzzle_556NATO_KAC",
            	"hlc_30rnd_556x45_EPR",
            	"arifle_mas_m1014",
            	"7Rnd_mas_12Gauge_Slug",
            	"HandGrenade_Stone",

            	//Cop
            	"hgun_ACPC2_snds_F",
                "9Rnd_45ACP_Mag",
                "arifle_sdar_F",
                "20Rnd_556x45_UW_mag",
                "arifle_MXC_F",
                "arifle_MX_F",
                "30Rnd_65x39_caseless_mag",
                "hlc_smg_mp5a3",
                "hlc_30Rnd_9x19_B_MP5",
                "arifle_mas_hk416c",
                "30Rnd_mas_556x45_Stanag",
                "arifle_mas_g3",
                "20Rnd_mas_762x51_Stanag",
                "srifle_mas_m110",
                "20Rnd_mas_762x51_Stanag",
                "muzzle_mas_snds_SMc",
                "hlc_rifle_SAMR",
                "30Rnd_556x45_Stanag",
                "hlc_muzzle_556NATO_KAC",
                "LMG_mas_Mk200_F",
                "200Rnd_mas_556x45_Stanag",
                "muzzle_snds_H_MG",
                "arifle_mas_m4",
                "arifle_mas_m4c",
                "30Rnd_mas_556x45_Stanag",
                "muzzle_mas_snds_M",
                "hlc_rifle_RU5562",
                "hlc_30rnd_556x45_EPR",
                "hlc_muzzle_556NATO_KAC",
                "hlc_rifle_honeybadger",
                "29rnd_300BLK_STANAG",
                "muzzle_HBADGER",
                "srifle_mas_ebr",
                "20Rnd_mas_762x51_Stanag",
                "muzzle_mas_snds_SM",
                "hlc_smg_MP5N",
                "hlc_30Rnd_9x19_B_MP5",
                "hlc_muzzle_Agendasix",
                "srifle_mas_m24",
                "5Rnd_mas_762x51_Stanag",
                "muzzle_mas_snds_SH",

            	//Waffen Rebel
            	"arifle_TRG21_F",
                "arifle_Mk20_F",
                "30Rnd_556x45_Stanag",
                "arifle_Katiba_F",
                "30Rnd_65x39_caseless_green",
                "srifle_DMR_01_F",
                "10Rnd_762x51_Mag",
                "arifle_TRG21_F","TRG-21 5.56mm",
                "arifle_Mk20_F",
                "30Rnd_556x45_Stanag",
                "arifle_Katiba_F",
                "30Rnd_65x39_caseless_green",
                "srifle_DMR_01_F",
                "10Rnd_762x51_Mag",
                "srifle_EBR_F",
                "20Rnd_762x51_Mag",
                "arifle_mas_bizon",
                "64Rnd_mas_9x18_mag",
                "arifle_mas_aks74",
                "30Rnd_mas_545x39_mag",
                "arifle_mas_akm",
                "30Rnd_mas_762x39_mag",
                "arifle_mas_aks74u",
                "30Rnd_mas_545x39_mag",
                "hgun_mas_uzi_F",
                "25Rnd_mas_9x19_Mag",
                "hgun_mas_sa61_F",
                "20Rnd_mas_765x17_Mag",
                "hgun_mas_mak_F",
                "8Rnd_mas_9x18_Mag",

                //Waffenshop
                "hgun_Rook40_F",
                "30Rnd_9x21_Mag",
                "hgun_Pistol_heavy_02_F",
                "6Rnd_45ACP_Cylinder",
                "hgun_ACPC2_F",
                "9Rnd_45ACP_Mag",
                "hgun_Pistol_heavy_01_F",
                "11Rnd_45ACP_Mag",
                "hgun_Pistol_heavy_01_snds_F",
                "11Rnd_45ACP_Mag",
                "hgun_PDW2000_F",
                "16Rnd_9x21_Mag",
                "30Rnd_9x21_Mag",
                "SMG_01_F",
                "30Rnd_45ACP_Mag_SMG_01",
                "arifle_SDAR_F",
                "20Rnd_556x45_UW_mag",
                "arifle_TRG20_F","TRG-20 5.56mm",
                "30Rnd_556x45_Stanag_Tracer_Red",
                "optic_Yorris",
                "optic_ACO_grn_smg",
                "optic_Holosight_smg",
                "optic_Aco",
                "optic_Holosight",
                "V_Rangemaster_belt",

				//scopes
				"optic_ACO_grn",
                "optic_mas_ACO_grn_camo",
                "optic_mas_Aco_camo",
                "optic_Aco",
                "optic_Aco_smg",
                "optic_mas_acog",
                "optic_mas_acog_c",
                "optic_mas_acog_eo",
                "optic_mas_acog_eo_c",
                "optic_mas_acog_rd",
                "optic_mas_acog_rd_c",
                "optic_mas_aim",
                "optic_mas_aim_c",
                "optic_Arco",
                "optic_mas_Arco_blk",
                "optic_mas_Arco_camo",
                "optic_DMS",
                "optic_Holosight",
                "optic_mas_Holosight_blk",
                "optic_mas_Holosight_camo",
                "optic_mas_DMS",
                "optic_mas_DMS_c",
                "optic_LRPS",
                "optic_mas_handle",
                "optic_Holosight_smg",
                "optic_MRCO",
                "optic_mas_MRCO_camo",
                "optic_NVS",
                "optic_Hamr",
                "optic_mas_Hamr_camo",
                "optic_SOS",
                "optic_mas_zeiss",
                "optic_mas_zeiss_c",
                "optic_mas_zeiss_eo",
                "optic_mas_zeiss_eo_c"
				];
			};
		} else {
			case 0: {
			[
			    //Waffen Schwarzmarkt
				"arifle_MXC_Black_F",
            	"arifle_MX_Black_F",
            	"arifle_MX_SW_Black_F",
            	"arifle_MXM_Black_F",
            	"30Rnd_65x39_caseless_mag",
            	"100Rnd_65x39_caseless_mag",
            	"srifle_mas_m110",
            	"srifle_mas_ebr",
            	"srifle_mas_sr25",
            	"srifle_mas_m24_v",
            	"20Rnd_mas_762x51_Stanag",
            	"5Rnd_mas_762x51_Stanag",
            	"srifle_mas_m91",
            	"10Rnd_mas_762x54_mag",
            	"muzzle_mas_snds_SVD",
            	"muzzle_mas_snds_SMc",
            	"hlc_rifle_Bushmaster300",
            	"29rnd_300BLK_STANAG",
            	"hlc_rifle_vendimus",
            	"29rnd_300BLK_STANAG",
            	"hlc_rifle_psg1",
            	"hlc_20rnd_762x51_b_G3",
            	"hlc_rifle_bcmjack",
            	"hlc_muzzle_556NATO_KAC",
            	"hlc_30rnd_556x45_EPR",
            	"arifle_mas_m1014",
            	"7Rnd_mas_12Gauge_Slug",
            	"HandGrenade_Stone",

            	//Cop
            	"hgun_ACPC2_snds_F",
                "9Rnd_45ACP_Mag",
                "arifle_sdar_F",
                "20Rnd_556x45_UW_mag",
                "arifle_MXC_F",
                "arifle_MX_F",
                "30Rnd_65x39_caseless_mag",
                "hlc_smg_mp5a3",
                "hlc_30Rnd_9x19_B_MP5",
                "arifle_mas_hk416c",
                "30Rnd_mas_556x45_Stanag",
                "arifle_mas_g3",
                "20Rnd_mas_762x51_Stanag",
                "srifle_mas_m110",
                "20Rnd_mas_762x51_Stanag",
                "muzzle_mas_snds_SMc",
                "hlc_rifle_SAMR",
                "30Rnd_556x45_Stanag",
                "hlc_muzzle_556NATO_KAC",
                "LMG_mas_Mk200_F",
                "200Rnd_mas_556x45_Stanag",
                "muzzle_snds_H_MG",
                "arifle_mas_m4",
                "arifle_mas_m4c",
                "30Rnd_mas_556x45_Stanag",
                "muzzle_mas_snds_M",
                "hlc_rifle_RU5562",
                "hlc_30rnd_556x45_EPR",
                "hlc_muzzle_556NATO_KAC",
                "hlc_rifle_honeybadger",
                "29rnd_300BLK_STANAG",
                "muzzle_HBADGER",
                "srifle_mas_ebr",
                "20Rnd_mas_762x51_Stanag",
                "muzzle_mas_snds_SM",
                "hlc_smg_MP5N",
                "hlc_30Rnd_9x19_B_MP5",
                "hlc_muzzle_Agendasix",
                "srifle_mas_m24",
                "5Rnd_mas_762x51_Stanag",
                "muzzle_mas_snds_SH",

            	//Waffen Rebel
            	"arifle_TRG21_F",
                "arifle_Mk20_F",
                "30Rnd_556x45_Stanag",
                "arifle_Katiba_F",
                "30Rnd_65x39_caseless_green",
                "srifle_DMR_01_F",
                "10Rnd_762x51_Mag",
                "arifle_TRG21_F","TRG-21 5.56mm",
                "arifle_Mk20_F",
                "30Rnd_556x45_Stanag",
                "arifle_Katiba_F",
                "30Rnd_65x39_caseless_green",
                "srifle_DMR_01_F",
                "10Rnd_762x51_Mag",
                "srifle_EBR_F",
                "20Rnd_762x51_Mag",
                "arifle_mas_bizon",
                "64Rnd_mas_9x18_mag",
                "arifle_mas_aks74",
                "30Rnd_mas_545x39_mag",
                "arifle_mas_akm",
                "30Rnd_mas_762x39_mag",
                "arifle_mas_aks74u",
                "30Rnd_mas_545x39_mag",
                "hgun_mas_uzi_F",
                "25Rnd_mas_9x19_Mag",
                "hgun_mas_sa61_F",
                "20Rnd_mas_765x17_Mag",
                "hgun_mas_mak_F",
                "8Rnd_mas_9x18_Mag",

                //Waffenshop
                "hgun_Rook40_F",
                "30Rnd_9x21_Mag",
                "hgun_Pistol_heavy_02_F",
                "6Rnd_45ACP_Cylinder",
                "hgun_ACPC2_F",
                "9Rnd_45ACP_Mag",
                "hgun_Pistol_heavy_01_F",
                "11Rnd_45ACP_Mag",
                "hgun_Pistol_heavy_01_snds_F",
                "11Rnd_45ACP_Mag",
                "hgun_PDW2000_F",
                "16Rnd_9x21_Mag",
                "30Rnd_9x21_Mag",
                "SMG_01_F",
                "30Rnd_45ACP_Mag_SMG_01",
                "arifle_SDAR_F",
                "20Rnd_556x45_UW_mag",
                "arifle_TRG20_F","TRG-20 5.56mm",
                "30Rnd_556x45_Stanag_Tracer_Red",
                "optic_Yorris",
                "optic_ACO_grn_smg",
                "optic_Holosight_smg",
                "optic_Aco",
                "optic_Holosight",
                "V_Rangemaster_belt",

				//scopes
				"optic_ACO_grn",
                "optic_mas_ACO_grn_camo",
                "optic_mas_Aco_camo",
                "optic_Aco",
                "optic_Aco_smg",
                "optic_mas_acog",
                "optic_mas_acog_c",
                "optic_mas_acog_eo",
                "optic_mas_acog_eo_c",
                "optic_mas_acog_rd",
                "optic_mas_acog_rd_c",
                "optic_mas_aim",
                "optic_mas_aim_c",
                "optic_Arco",
                "optic_mas_Arco_blk",
                "optic_mas_Arco_camo",
                "optic_DMS",
                "optic_Holosight",
                "optic_mas_Holosight_blk",
                "optic_mas_Holosight_camo",
                "optic_mas_DMS",
                "optic_mas_DMS_c",
                "optic_LRPS",
                "optic_mas_handle",
                "optic_Holosight_smg",
                "optic_MRCO",
                "optic_mas_MRCO_camo",
                "optic_NVS",
                "optic_Hamr",
                "optic_mas_Hamr_camo",
                "optic_SOS",
                "optic_mas_zeiss",
                "optic_mas_zeiss_c",
                "optic_mas_zeiss_eo",
                "optic_mas_zeiss_eo_c"
			];
		};
	};
};