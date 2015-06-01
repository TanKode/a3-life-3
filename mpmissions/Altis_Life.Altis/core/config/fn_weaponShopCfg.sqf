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
						["NVGoggles_OPFOR","Nachtsicht Klein",50],
						["A3_GPNVG18_BLK_F","Nachtsicht Gross",100],
						["FirstAidKit","Verbandkasten",250],
						["ToolKit","Werkzeugkasten",250],
						["ItemMap","Karte von Altis",50],
						["ItemGPS","GPS",50],
						["Rangefinder","Entfernungsmesser",50],
						["ItemRadio","Handy",80],
						["ItemWatch","Uhr",55],
						["itemCompass","Kompass",50],
						["Rangefinder_mas_h","EntfernungsmesserNachtsicht",20000],
						["SmokeShellYellow","Rauchgranate Gelb",50],
						["SmokeShellGreen","Tränengas",300],
						//["HandGrenade_Stone","Blendgranate",300],
						["Chemlight_yellow","Knicklicht Gelb",25],
						["Chemlight_red","Knicklicht Rot",25],
						["Chemlight_blue","Knicklicht Blau",25]
						//["acc_flashlight","WaffenLampe",400],
						//["acc_pointer_IR","WaffenLaserPointer",500]
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
				["Anwaerter",
					[
						//Waffen und Munition
						//Anwärter
						["hgun_ACPC2_snds_F","ACP",100],
						["9Rnd_45ACP_Mag","ACP. 45 Mag",50],
						["arifle_mas_g36c","G36C",1000],
						["30Rnd_556x45_Stanag","G36C Mag",100],
						["hlc_rifle_hk53","HK53",1000],
						["hlc_30rnd_556x45_b_HK33","HK53 Mag",100],
						["arifle_sdar_F","Taser Gewehr",1000],
						["20Rnd_556x45_UW_mag","Taser Gewehr Magazin",100],
						//Extras
						["acc_pointer_IR","Laiserpointer",500],
						["acc_flashlight","Taschenlampe",500],
						//Schalldämpfer
						["muzzle_snds_H","Schalldämpfer 6.5mm",1000],
						["muzzle_snds_L","Schalldämpfer 9mm",1000],
						["muzzle_snds_M","Schalldämpfer 5.56mm",1000],
						["muzzle_snds_B","Schalldämpfer 7.62mm",1000],
						["muzzle_mas_snds_SM","Schalldämpfer m4, m16, HK",1000],
						["muzzle_mas_snds_SH","Schalldämpfer M24",1000],
						["hlc_muzzle_556nato_KAC","Schalldämpfer Jack C.",1000],
						//Visire
						["optic_Hamr","RCO",500],
						["optic_Arco","ARCO",500],
						["optic_Holosight","Holosight",500],
						["optic_Aco","ACO",500],
						["optic_ACO_grn","ACO Grün",500],
						["optic_MRCO","MRCO",500],
						["optic_SOS","SOS",500],
						["optic_DMS","DMS",500],
						["optic_mas_zeiss","Zeiss",500],
						["optic_mas_zeiss_eo","Zeiss Holo",500],
						["optic_mas_DMS","Leupold",500],
						["optic_mas_acog","Acog",500],
						["optic_mas_acog_eo","Acog Holo",500],
						["optic_mas_handle","M4 Handle",500],
						["optic_mas_aim","Aimpoint",500],
						["optic_mas_pso","PSO",500],
						["optic_mas_pso_eo","PSO Holo",500],
						["optic_mas_pso_nv","PSO Sniper",500],
						["optic_AMS","AMS",500],
						["optic_KHS_blk","Kahlia Black",500],
						["optic_KHS_tan","Kahlia Tan",500],
						//Zweibein
						["bipod_01_F_snd","Zweibein Sand",1500],
						["bipod_01_F_blk","Zweibein Schw.",1500],
						["bipod_01_F_mtp","Zweibein MTP",1500],
						["bipod_02_F_blk","Zweibein Schw, CSAT",1500],
						["bipod_02_F_tan","Zweibein Tan CSAT",1500],
						["bipod_02_F_hex","Zweibein Hex CSAT",1500],
						["bipod_03_F_blk","Zweibein Black AAF",1500],
						["bipod_03_F_oli","Zweibein Olive AAF",1500]
					]
				];
			};
			case (__GETC__(life_coplevel) == 2):
			{
				["Wachtmeister",
					[
						//Waffen und Munition
						//Anwärter
						["hgun_ACPC2_snds_F","ACP",100],
						["9Rnd_45ACP_Mag","ACP. 45 Mag",50],
						["arifle_mas_g36c","G36C",1000],
						["30Rnd_556x45_Stanag","G36C Mag",100],
						["hlc_rifle_hk53","HK53",1000],
						["hlc_30rnd_556x45_b_HK33","HK53 Mag",100],
						["arifle_sdar_F","Taser Gewehr",1000],
						["20Rnd_556x45_UW_mag","Taser Gewehr Magazin",100],
						//Wachtmeister
						["arifle_mas_m4","M4A1",5000],
						["30Rnd_556x45_Stanag","M4A1 Mag",500],
						["arifle_mx_F","MX",7000],
						["30Rnd_65x39_caseless_mag","MX Mag",500],
						//Extras
						["acc_pointer_IR","Laiserpointer",500],
						["acc_flashlight","Taschenlampe",500],
						//Schalldämpfer
						["muzzle_snds_H","Schalldämpfer 6.5mm",1000],
						["muzzle_snds_L","Schalldämpfer 9mm",1000],
						["muzzle_snds_M","Schalldämpfer 5.56mm",1000],
						["muzzle_snds_B","Schalldämpfer 7.62mm",1000],
						["muzzle_mas_snds_SM","Schalldämpfer m4, m16, HK",1000],
						["muzzle_mas_snds_SH","Schalldämpfer M24",1000],
						["hlc_muzzle_556nato_KAC","Schalldämpfer Jack C.",1000],
						//Visire
						["optic_Hamr","RCO",500],
						["optic_Arco","ARCO",500],
						["optic_Holosight","Holosight",500],
						["optic_Aco","ACO",500],
						["optic_ACO_grn","ACO Grün",500],
						["optic_MRCO","MRCO",500],
						["optic_SOS","SOS",500],
						["optic_DMS","DMS",500],
						["optic_mas_zeiss","Zeiss",500],
						["optic_mas_zeiss_eo","Zeiss Holo",500],
						["optic_mas_DMS","Leupold",500],
						["optic_mas_acog","Acog",500],
						["optic_mas_acog_eo","Acog Holo",500],
						["optic_mas_handle","M4 Handle",500],
						["optic_mas_aim","Aimpoint",500],
						["optic_mas_pso","PSO",500],
						["optic_mas_pso_eo","PSO Holo",500],
						["optic_mas_pso_nv","PSO Sniper",500],
						["optic_AMS","AMS",500],
						["optic_KHS_blk","Kahlia Black",500],
						["optic_KHS_tan","Kahlia Tan",500],
						//Zweibein
						["bipod_01_F_snd","Zweibein Sand",1500],
						["bipod_01_F_blk","Zweibein Schw.",1500],
						["bipod_01_F_mtp","Zweibein MTP",1500],
						["bipod_02_F_blk","Zweibein Schw, CSAT",1500],
						["bipod_02_F_tan","Zweibein Tan CSAT",1500],
						["bipod_02_F_hex","Zweibein Hex CSAT",1500],
						["bipod_03_F_blk","Zweibein Black AAF",1500],
						["bipod_03_F_oli","Zweibein Olive AAF",1500]
					]
				];
			};
			case (__GETC__(life_coplevel) == 3):
			{
				["Kommissar",
					[
						//Waffen und Munition
						//Anwärter
						["hgun_ACPC2_snds_F","ACP",100],
						["9Rnd_45ACP_Mag","ACP. 45 Mag",50],
						["arifle_mas_g36c","G36C",1000],
						["30Rnd_556x45_Stanag","G36C Mag",100],
						["hlc_rifle_hk53","HK53",1000],
						["hlc_30rnd_556x45_b_HK33","HK53 Mag",100],
						["arifle_sdar_F","Taser Gewehr",1000],
						["20Rnd_556x45_UW_mag","Taser Gewehr Magazin",100],
						//Wachtmeister
						["arifle_mas_m4","M4A1",5000],
						["30Rnd_556x45_Stanag","M4A1 Mag",500],
						["arifle_mx_F","MX",7000],
						["30Rnd_65x39_caseless_mag","MX Mag",500],
						//Komissar
						["arifle_mas_hk416","HK416",5000],
						["30Rnd_556x45_Stanag","HK416 Mag",500],
						["hlc_rifle_auga3_b","AUG A3",5000],
						["hlc_30Rnd_556x45_B_AUG","AUG A3 Mag",500],
						["arifle_MXM_F","MXM",7500],
						["30Rnd_65x39_caseless_mag","MXM Mag",500],
						//Extras
						["acc_pointer_IR","Laiserpointer",500],
						["acc_flashlight","Taschenlampe",500],
						//Schalldämpfer
						["muzzle_snds_H","Schalldämpfer 6.5mm",1000],
						["muzzle_snds_L","Schalldämpfer 9mm",1000],
						["muzzle_snds_M","Schalldämpfer 5.56mm",1000],
						["muzzle_snds_B","Schalldämpfer 7.62mm",1000],
						["muzzle_mas_snds_SM","Schalldämpfer m4, m16, HK",1000],
						["muzzle_mas_snds_SH","Schalldämpfer M24",1000],
						["hlc_muzzle_556nato_KAC","Schalldämpfer Jack C.",1000],
						//Visire
						["optic_Hamr","RCO",500],
						["optic_Arco","ARCO",500],
						["optic_Holosight","Holosight",500],
						["optic_Aco","ACO",500],
						["optic_ACO_grn","ACO Grün",500],
						["optic_MRCO","MRCO",500],
						["optic_SOS","SOS",500],
						["optic_DMS","DMS",500],
						["optic_mas_zeiss","Zeiss",500],
						["optic_mas_zeiss_eo","Zeiss Holo",500],
						["optic_mas_DMS","Leupold",500],
						["optic_mas_acog","Acog",500],
						["optic_mas_acog_eo","Acog Holo",500],
						["optic_mas_handle","M4 Handle",500],
						["optic_mas_aim","Aimpoint",500],
						["optic_mas_pso","PSO",500],
						["optic_mas_pso_eo","PSO Holo",500],
						["optic_mas_pso_nv","PSO Sniper",500],
						["optic_AMS","AMS",500],
						["optic_KHS_blk","Kahlia Black",500],
						["optic_KHS_tan","Kahlia Tan",500],
						//Zweibein
						["bipod_01_F_snd","Zweibein Sand",1500],
						["bipod_01_F_blk","Zweibein Schw.",1500],
						["bipod_01_F_mtp","Zweibein MTP",1500],
						["bipod_02_F_blk","Zweibein Schw, CSAT",1500],
						["bipod_02_F_tan","Zweibein Tan CSAT",1500],
						["bipod_02_F_hex","Zweibein Hex CSAT",1500],
						["bipod_03_F_blk","Zweibein Black AAF",1500],
						["bipod_03_F_oli","Zweibein Olive AAF",1500]
					]
				];
			};
			case (__GETC__(life_coplevel) == 4):
			{
				["Hauptkommissar",
					[
						//Waffen und Munition
						//Anwärter
						["hgun_ACPC2_snds_F","ACP",100],
						["9Rnd_45ACP_Mag","ACP. 45 Mag",50],
						["arifle_mas_g36c","G36C",1000],
						["30Rnd_556x45_Stanag","G36C Mag",100],
						["hlc_rifle_hk53","HK53",1000],
						["hlc_30rnd_556x45_b_HK33","HK53 Mag",100],
						["arifle_sdar_F","Taser Gewehr",1000],
						["20Rnd_556x45_UW_mag","Taser Gewehr Magazin",100],
						//Wachtmeister
						["arifle_mas_m4","M4A1",5000],
						["30Rnd_556x45_Stanag","M4A1 Mag",500],
						["arifle_mx_F","MX",7000],
						["30Rnd_65x39_caseless_mag","MX Mag",500],
						//Komissar
						["arifle_mas_hk416","HK416",5000],
						["30Rnd_556x45_Stanag","HK416 Mag",500],
						["hlc_rifle_auga3_b","AUG A3",5000],
						["hlc_30Rnd_556x45_B_AUG","AUG A3 Mag",500],
						["arifle_MXM_F","MXM",7500],
						["30Rnd_65x39_caseless_mag","MXM Mag",500],
						//HauptKomissar
						["srifle_EBR_F","Mk18",8500],
						["20Rnd_762x51_Mag","MK18 Mag",1000],
						["srifle_mas_m110","M110",8500],
						["20Rnd_762x51_Mag","M110 Mag",1000],
						["srifle_DMR_03_F","MK-1 EMR",9000],
						["20Rnd_762x51_Mag","MK-1 EMR Mag",1000],
						//Extras
						["acc_pointer_IR","Laiserpointer",500],
						["acc_flashlight","Taschenlampe",500],
						//Schalldämpfer
						["muzzle_snds_H","Schalldämpfer 6.5mm",1000],
						["muzzle_snds_L","Schalldämpfer 9mm",1000],
						["muzzle_snds_M","Schalldämpfer 5.56mm",1000],
						["muzzle_snds_B","Schalldämpfer 7.62mm",1000],
						["muzzle_mas_snds_SM","Schalldämpfer m4, m16, HK",1000],
						["muzzle_mas_snds_SH","Schalldämpfer M24",1000],
						["hlc_muzzle_556nato_KAC","Schalldämpfer Jack C.",1000],
						//Visire
						["optic_Hamr","RCO",500],
						["optic_Arco","ARCO",500],
						["optic_Holosight","Holosight",500],
						["optic_Aco","ACO",500],
						["optic_ACO_grn","ACO Grün",500],
						["optic_MRCO","MRCO",500],
						["optic_SOS","SOS",500],
						["optic_DMS","DMS",500],
						["optic_mas_zeiss","Zeiss",500],
						["optic_mas_zeiss_eo","Zeiss Holo",500],
						["optic_mas_DMS","Leupold",500],
						["optic_mas_acog","Acog",500],
						["optic_mas_acog_eo","Acog Holo",500],
						["optic_mas_handle","M4 Handle",500],
						["optic_mas_aim","Aimpoint",500],
						["optic_mas_pso","PSO",500],
						["optic_mas_pso_eo","PSO Holo",500],
						["optic_mas_pso_nv","PSO Sniper",500],
						["optic_AMS","AMS",500],
						["optic_KHS_blk","Kahlia Black",500],
						["optic_KHS_tan","Kahlia Tan",500],
						//Zweibein
						["bipod_01_F_snd","Zweibein Sand",1500],
						["bipod_01_F_blk","Zweibein Schw.",1500],
						["bipod_01_F_mtp","Zweibein MTP",1500],
						["bipod_02_F_blk","Zweibein Schw, CSAT",1500],
						["bipod_02_F_tan","Zweibein Tan CSAT",1500],
						["bipod_02_F_hex","Zweibein Hex CSAT",1500],
						["bipod_03_F_blk","Zweibein Black AAF",1500],
						["bipod_03_F_oli","Zweibein Olive AAF",1500]
					]
				];
			};
			case (__GETC__(life_coplevel) == 5):
			{
				["Polizei-Ausbilder",
					[
						//Waffen und Munition
						//Anwärter
						["hgun_ACPC2_snds_F","ACP",100],
						["9Rnd_45ACP_Mag","ACP. 45 Mag",50],
						["arifle_mas_g36c","G36C",1000],
						["30Rnd_556x45_Stanag","G36C Mag",100],
						["hlc_rifle_hk53","HK53",1000],
						["hlc_30rnd_556x45_b_HK33","HK53 Mag",100],
						["arifle_sdar_F","Taser Gewehr",1000],
						["20Rnd_556x45_UW_mag","Taser Gewehr Magazin",100],
						//Wachtmeister
						["arifle_mas_m4","M4A1",5000],
						["30Rnd_556x45_Stanag","M4A1 Mag",500],
						["arifle_mx_F","MX",7000],
						["30Rnd_65x39_caseless_mag","MX Mag",500],
						//Komissar
						["arifle_mas_hk416","HK416",5000],
						["30Rnd_556x45_Stanag","HK416 Mag",500],
						["hlc_rifle_auga3_b","AUG A3",5000],
						["hlc_30Rnd_556x45_B_AUG","AUG A3 Mag",500],
						["arifle_MXM_F","MXM",7500],
						["30Rnd_65x39_caseless_mag","MXM Mag",500],
						//HauptKomissar
						["srifle_EBR_F","Mk18",8500],
						["20Rnd_762x51_Mag","MK18 Mag",1000],
						["srifle_mas_m110","M110",8500],
						["20Rnd_762x51_Mag","M110 Mag",1000],
						["srifle_DMR_03_F","MK-1 EMR",9000],
						["20Rnd_762x51_Mag","MK-1 EMR Mag",1000],
						//PolizeiAusbilder
						["hlc_rifle_SAMR","LAR 15",6000],
						["30Rnd_556x45Stanag","LAR Mag",500],
						["arifle_MXC_Black_F","MXC Black",7000],
						["30Rnd_65x39_caseless_mag","MXC Mag",500],
						["srifle_mas_hk417","HK417",8500],
						["20Rnd_762x51","HK417 Mag",1000],
						["srifle_DMR_06_olive_F","MK14",9000],
						["20Rnd_762x51","MK14 Mag",1000],
						["srifle_mas_m24_v","M24",10000],
						["5Rnd_mas_762x51_Stanag","M24 Mag",1500],
						//Extras
						["acc_pointer_IR","Laiserpointer",500],
						["acc_flashlight","Taschenlampe",500],
						//Schalldämpfer
						["muzzle_snds_H","Schalldämpfer 6.5mm",1000],
						["muzzle_snds_L","Schalldämpfer 9mm",1000],
						["muzzle_snds_M","Schalldämpfer 5.56mm",1000],
						["muzzle_snds_B","Schalldämpfer 7.62mm",1000],
						["muzzle_mas_snds_SM","Schalldämpfer m4, m16, HK",1000],
						["muzzle_mas_snds_SH","Schalldämpfer M24",1000],
						["hlc_muzzle_556nato_KAC","Schalldämpfer Jack C.",1000],
						//Visire
						["optic_Hamr","RCO",500],
						["optic_Arco","ARCO",500],
						["optic_Holosight","Holosight",500],
						["optic_Aco","ACO",500],
						["optic_ACO_grn","ACO Grün",500],
						["optic_MRCO","MRCO",500],
						["optic_SOS","SOS",500],
						["optic_DMS","DMS",500],
						["optic_mas_zeiss","Zeiss",500],
						["optic_mas_zeiss_eo","Zeiss Holo",500],
						["optic_mas_DMS","Leupold",500],
						["optic_mas_acog","Acog",500],
						["optic_mas_acog_eo","Acog Holo",500],
						["optic_mas_handle","M4 Handle",500],
						["optic_mas_aim","Aimpoint",500],
						["optic_mas_pso","PSO",500],
						["optic_mas_pso_eo","PSO Holo",500],
						["optic_mas_pso_nv","PSO Sniper",500],
						["optic_AMS","AMS",500],
						["optic_KHS_blk","Kahlia Black",500],
						["optic_KHS_tan","Kahlia Tan",500],
						//Zweibein
						["bipod_01_F_snd","Zweibein Sand",1500],
						["bipod_01_F_blk","Zweibein Schw.",1500],
						["bipod_01_F_mtp","Zweibein MTP",1500],
						["bipod_02_F_blk","Zweibein Schw, CSAT",1500],
						["bipod_02_F_tan","Zweibein Tan CSAT",1500],
						["bipod_02_F_hex","Zweibein Hex CSAT",1500],
						["bipod_03_F_blk","Zweibein Black AAF",1500],
						["bipod_03_F_oli","Zweibein Olive AAF",1500]
					]
				];
			};
			case (__GETC__(life_coplevel) == 6):
			{
				["Bundespolizei/SEK",
					[
						//Waffen und Munition
						//Anwärter
						["hgun_ACPC2_snds_F","ACP",100],
						["9Rnd_45ACP_Mag","ACP. 45 Mag",50],
						["arifle_mas_g36c","G36C",1000],
						["30Rnd_556x45_Stanag","G36C Mag",100],
						["hlc_rifle_hk53","HK53",1000],
						["hlc_30rnd_556x45_b_HK33","HK53 Mag",100],
						["arifle_sdar_F","Taser Gewehr",1000],
						["20Rnd_556x45_UW_mag","Taser Gewehr Magazin",100],
						//Wachtmeister
						["arifle_mas_m4","M4A1",5000],
						["30Rnd_556x45_Stanag","M4A1 Mag",500],
						["arifle_mx_F","MX",7000],
						["30Rnd_65x39_caseless_mag","MX Mag",500],
						//Komissar
						["arifle_mas_hk416","HK416",5000],
						["30Rnd_556x45_Stanag","HK416 Mag",500],
						["hlc_rifle_auga3_b","AUG A3",5000],
						["hlc_30Rnd_556x45_B_AUG","AUG A3 Mag",500],
						["arifle_MXM_F","MXM",7500],
						["30Rnd_65x39_caseless_mag","MXM Mag",500],
						//HauptKomissar
						["srifle_EBR_F","Mk18",8500],
						["20Rnd_762x51_Mag","MK18 Mag",1000],
						["srifle_mas_m110","M110",8500],
						["20Rnd_762x51_Mag","M110 Mag",1000],
						["srifle_DMR_03_F","MK-1 EMR",9000],
						["20Rnd_762x51_Mag","MK-1 EMR Mag",1000],
						//PolizeiAusbilder
						["hlc_rifle_SAMR","LAR 15",6000],
						["30Rnd_556x45Stanag","LAR Mag",500],
						["arifle_MXC_Black_F","MXC Black",7000],
						["30Rnd_65x39_caseless_mag","MXC Mag",500],
						["srifle_mas_hk417","HK417",8500],
						["20Rnd_762x51","HK417 Mag",1000],
						["srifle_DMR_06_olive_F","MK14",9000],
						["20Rnd_762x51","MK14 Mag",1000],
						["srifle_mas_m24_v","M24",10000],
						["5Rnd_mas_762x51_Stanag","M24 Mag",1500],
						//BundesPolizei/SEK
						["B_UAV_01_backpack_F","UAV Drohne",2500],
						["B_UavTerminal","UAV Terminal",500],
						["HandGrenade_Stone","Blendgranate",300],
						//Extras
						["acc_pointer_IR","Laiserpointer",500],
						["acc_flashlight","Taschenlampe",500],
						//Schalldämpfer
						["muzzle_snds_H","Schalldämpfer 6.5mm",1000],
						["muzzle_snds_L","Schalldämpfer 9mm",1000],
						["muzzle_snds_M","Schalldämpfer 5.56mm",1000],
						["muzzle_snds_B","Schalldämpfer 7.62mm",1000],
						["muzzle_mas_snds_SM","Schalldämpfer m4, m16, HK",1000],
						["muzzle_mas_snds_SH","Schalldämpfer M24",1000],
						["hlc_muzzle_556nato_KAC","Schalldämpfer Jack C.",1000],
						//Visire
						["optic_Hamr","RCO",500],
						["optic_Arco","ARCO",500],
						["optic_Holosight","Holosight",500],
						["optic_Aco","ACO",500],
						["optic_ACO_grn","ACO Grün",500],
						["optic_MRCO","MRCO",500],
						["optic_SOS","SOS",500],
						["optic_DMS","DMS",500],
						["optic_mas_zeiss","Zeiss",500],
						["optic_mas_zeiss_eo","Zeiss Holo",500],
						["optic_mas_DMS","Leupold",500],
						["optic_mas_acog","Acog",500],
						["optic_mas_acog_eo","Acog Holo",500],
						["optic_mas_handle","M4 Handle",500],
						["optic_mas_aim","Aimpoint",500],
						["optic_mas_pso","PSO",500],
						["optic_mas_pso_eo","PSO Holo",500],
						["optic_mas_pso_nv","PSO Sniper",500],
						["optic_AMS","AMS",500],
						["optic_KHS_blk","Kahlia Black",500],
						["optic_KHS_tan","Kahlia Tan",500],
						//Zweibein
						["bipod_01_F_snd","Zweibein Sand",1500],
						["bipod_01_F_blk","Zweibein Schw.",1500],
						["bipod_01_F_mtp","Zweibein MTP",1500],
						["bipod_02_F_blk","Zweibein Schw, CSAT",1500],
						["bipod_02_F_tan","Zweibein Tan CSAT",1500],
						["bipod_02_F_hex","Zweibein Hex CSAT",1500],
						["bipod_03_F_blk","Zweibein Black AAF",1500],
						["bipod_03_F_oli","Zweibein Olive AAF",1500]
					]
				];
			};
			case (__GETC__(life_coplevel) >= 7):
			{
				["P.Chef/Leiter",
					[
						//Waffen und Munition
						//Anwärter
						["hgun_ACPC2_snds_F","ACP",100],
						["9Rnd_45ACP_Mag","ACP. 45 Mag",50],
						["arifle_mas_g36c","G36C",1000],
						["30Rnd_556x45_Stanag","G36C Mag",100],
						["hlc_rifle_hk53","HK53",1000],
						["hlc_30rnd_556x45_b_HK33","HK53 Mag",100],
						["arifle_sdar_F","Taser Gewehr",1000],
						["20Rnd_556x45_UW_mag","Taser Gewehr Magazin",100],
						//Wachtmeister
						["arifle_mas_m4","M4A1",5000],
						["30Rnd_556x45_Stanag","M4A1 Mag",500],
						["arifle_mx_F","MX",7000],
						["30Rnd_65x39_caseless_mag","MX Mag",500],
						//Komissar
						["arifle_mas_hk416","HK416",5000],
						["30Rnd_556x45_Stanag","HK416 Mag",500],
						["hlc_rifle_auga3_b","AUG A3",5000],
						["hlc_30Rnd_556x45_B_AUG","AUG A3 Mag",500],
						["arifle_MXM_F","MXM",7500],
						["30Rnd_65x39_caseless_mag","MXM Mag",500],
						//HauptKomissar
						["srifle_EBR_F","Mk18",8500],
						["20Rnd_762x51_Mag","MK18 Mag",1000],
						["srifle_mas_m110","M110",8500],
						["20Rnd_762x51_Mag","M110 Mag",1000],
						["srifle_DMR_03_F","MK-1 EMR",9000],
						["20Rnd_762x51_Mag","MK-1 EMR Mag",1000],
						//PolizeiAusbilder
						["hlc_rifle_SAMR","LAR 15",6000],
						["30Rnd_556x45Stanag","LAR Mag",500],
						["arifle_MXC_Black_F","MXC Black",7000],
						["30Rnd_65x39_caseless_mag","MXC Mag",500],
						["srifle_mas_hk417","HK417",8500],
						["20Rnd_762x51","HK417 Mag",1000],
						["srifle_DMR_06_olive_F","MK14",9000],
						["20Rnd_762x51","MK14 Mag",1000],
						["srifle_mas_m24_v","M24",10000],
						["5Rnd_mas_762x51_Stanag","M24 Mag",1500],
						//BundesPolizei/SEK
						["B_UAV_01_backpack_F","UAV Drohne",2500],
						["B_UavTerminal","UAV Terminal",500],
						["HandGrenade_Stone","Blendgranate",300],
						//Extras
						["acc_pointer_IR","Laiserpointer",500],
						["acc_flashlight","Taschenlampe",500],
						//Schalldämpfer
						["muzzle_snds_H","Schalldämpfer 6.5mm",1000],
						["muzzle_snds_L","Schalldämpfer 9mm",1000],
						["muzzle_snds_M","Schalldämpfer 5.56mm",1000],
						["muzzle_snds_B","Schalldämpfer 7.62mm",1000],
						["muzzle_mas_snds_SM","Schalldämpfer m4, m16, HK",1000],
						["muzzle_mas_snds_SH","Schalldämpfer M24",1000],
						["hlc_muzzle_556nato_KAC","Schalldämpfer Jack C.",1000],
						//Visire
						["optic_Hamr","RCO",500],
						["optic_Arco","ARCO",500],
						["optic_Holosight","Holosight",500],
						["optic_Aco","ACO",500],
						["optic_ACO_grn","ACO Grün",500],
						["optic_MRCO","MRCO",500],
						["optic_SOS","SOS",500],
						["optic_DMS","DMS",500],
						["optic_mas_zeiss","Zeiss",500],
						["optic_mas_zeiss_eo","Zeiss Holo",500],
						["optic_mas_DMS","Leupold",500],
						["optic_mas_acog","Acog",500],
						["optic_mas_acog_eo","Acog Holo",500],
						["optic_mas_handle","M4 Handle",500],
						["optic_mas_aim","Aimpoint",500],
						["optic_mas_pso","PSO",500],
						["optic_mas_pso_eo","PSO Holo",500],
						["optic_mas_pso_nv","PSO Sniper",500],
						["optic_AMS","AMS",500],
						["optic_KHS_blk","Kahlia Black",500],
						["optic_KHS_tan","Kahlia Tan",500],
						//Zweibein
						["bipod_01_F_snd","Zweibein Sand",1500],
						["bipod_01_F_blk","Zweibein Schw.",1500],
						["bipod_01_F_mtp","Zweibein MTP",1500],
						["bipod_02_F_blk","Zweibein Schw, CSAT",1500],
						["bipod_02_F_tan","Zweibein Tan CSAT",1500],
						["bipod_02_F_hex","Zweibein Hex CSAT",1500],
						["bipod_03_F_blk","Zweibein Black AAF",1500],
						["bipod_03_F_oli","Zweibein Olive AAF",1500]
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
						["20Rnd_556x45_UW_mag","Taser Gewehr Magazin",100*5]
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
				["EMS Handel",//Medic
					[
						["ItemRadio","Smartphone",10],
						["ItemGPS",nil,10],
						["NVGoggles",nil,10],
						["ToolKit",nil,100],
						["FirstAidKit",nil,25],
						["Medikit",nil,25],
						["B_Kitbag_sgg",nil,80],
						["Chemlight_yellow",nil,5],
						["SmokeShellyellow",nil,5],
						["SmokeShellred",nil,5],
						["ItemWatch",nil,5],
						["ItemCompass",nil,5],
						["ItemMap",nil,5],
						["Rangefinder",nil,80],
						["A3_GPNVG18_REC_BLK_F",nil,300]
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
				["RLP Waffenkammer",//Rebellenlager
					[
						["arifle_MK20_plain_F","MK20",90000],
						["30Rnd_556x45_Stanag","MK20 Mag",9000],
						["hgun_mas_uzi_F","Uzi",50000],
						["30Rnd_mas_9x21_Stanag"," Uzi Mag",5000],
						["hgun_mas_sa61_F","Skorpion",55000],
						["20Rnd_mas_765x17_Mag","Skorpion Mag",5500],
						["arifle_Katiba_F","Katiba",120000],
						["30Rnd_65x39_caseless_green","Katiba Mag",12000],
						["arifle_mas_l119","L119A1",150000],
						["30Rnd_556x45_Stanag","L119A1 Mag",15000],
						["hlc_rifle_auga3","AUG A3",150000],
						["hlc_30Rnd_556x45_B_AUG","AUG A3 Mag",15000],
						["arifle_MXC_F","MXC",160000],
						["30Rnd_65x39_caseless_mag","MXC Mag",16000],
						["arifle_mx_F","MX",170000],
						["30Rnd_65x39_caseless_mag","MX Mag",17000],
						["arifle_mas_bizon","Bizon",180000],
						["64Rnd_mas_9x18_mag","Bizon Mag",18000],
						["hlc_rifle_Bushmaster300","Bushmaster",200000],
						["29rnd_300BLK_STANAG","Bushmaster Mag",20000],
						["srifle_DMR_01_F","Rahim",220000],
						["10Rnd_762x54_Mag","Rahim Mag",22000],
						//Visire
						["optic_mas_DMS","Leupold",5000],
						["optic_Arco","ARCO",5000],
						["optic_Hamr","RCO",5000],
						["optic_Aco","ACO",5000],
						["optic_ACO_grn","ACO Grün",5000],
						["optic_Aco_smg","ACO SMG",5000],
						["optic_ACO_grn_smg","ACO Grün SMG",5000],
						["optic_Holosight","Holosight",5000],
						["optic_Holosight_smg","Holosight SMG",5000],
						["optic_SOS","SOS-Visir",5000],
						["optic_MRCO","MRCO-Visir",5000],
						["optic_DMS","DMS-Visir",5000],
						["optic_NVS","NVS-Visir",5000],
						["optic_LRPS","LRPS-Visir",5000],
						["optic_AMS","AMS-Visir",5000],
						["optic_AMS_khk","AMS Kahki-Visir",5000],
						["optic_AMS_snd","AMS Sand-Visir",5000],
						["optic_KHS_blk","Kahlia Black-Visir",5000],
						["optic_KHS_hex","Kahlia Hex",5000],
						["optic_KHS_old","Kahlia Old",5000],
						["optic_KHS_tan","Kahlia Tan",5000],
						//Zweibeine
						["bipod_01_F_snd","Zweibein Sand",15000],
						["bipod_01_F_blk","Zweibein Schw.",15000],
						["bipod_01_F_mtp","Zweibein MTP",15000],
						["bipod_02_F_blk","Zweibein Schw, CSAT",15000],
						["bipod_02_F_tan","Zweibein Tan CSAT",15000],
						["bipod_02_F_hex","Zweibein Hex CSAT",15000],
						["bipod_03_F_blk","Zweibein Black AAF",15000],
						["bipod_03_F_oli","Zweibein Olive AAF",15000]

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
						["arifle_TRG21_F","TRG-21 5.56mm",90000],
						["arifle_Mk20_F",nil,100000],
						["30Rnd_556x45_Stanag",nil,10000],
						["arifle_Katiba_F",nil,125000],
						["30Rnd_65x39_caseless_green",nil,12500],
						["srifle_DMR_01_F",nil,250000],
						["20Rnd_762x51_Mag",nil,25000],
						["arifle_TRG21_F","TRG-21 5.56mm",90000],
						["arifle_Mk20_F",nil,100000],
						["30Rnd_556x45_Stanag",nil,10000],
						["arifle_Katiba_F",nil,125000],
						["30Rnd_65x39_caseless_green",nil,12500],
						["srifle_EBR_F",nil,600000],
						["20Rnd_762x51_Mag",nil,60000],
						["arifle_mas_bizon",nil,100000],
						["64Rnd_mas_9x18_mag",nil,5000],
						["arifle_mas_aks74",nil,250000],
						["30Rnd_mas_545x39_mag",nil,10000],
						["arifle_mas_akm",nil,300000],
						["30Rnd_mas_762x39_mag",nil,10000],
						["arifle_mas_aks74u",nil,200000],
						["30Rnd_mas_545x39_mag",nil,10000],
						["hgun_mas_uzi_F",nil,80000],
						["25Rnd_mas_9x19_Mag",nil,1000],
						["hgun_mas_sa61_F",nil,80000],
						["20Rnd_mas_765x17_Mag",nil,1000],
						["hgun_mas_mak_F",nil,80000],
						["8Rnd_mas_9x18_Mag",nil,1000],
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
						["acc_flashlight",nil,8000]
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
						["hgun_Rook40_F",nil,10000*0.5],
						["30Rnd_9x21_Mag",nil,100*0.5],
						["hgun_Pistol_heavy_02_F",nil,12500*0.5],
						["6Rnd_45ACP_Cylinder",nil,125*0.5],
						["hgun_ACPC2_F",nil,15000*0.5],
						["9Rnd_45ACP_Mag",nil,150*0.5],
						["hgun_Pistol_heavy_01_F",nil,17500*0.5],
						["11Rnd_45ACP_Mag",nil,175*0.5],
						["hgun_Pistol_heavy_01_snds_F",nil,27500*0.5],
						["11Rnd_45ACP_Mag",nil,175*0.5],
						["hgun_PDW2000_F",nil,20000*0.5],
						["16Rnd_9x21_Mag",nil,200*0.5],
						["30Rnd_9x21_Mag",nil,400*0.5],
						["SMG_01_F",nil,30000*0.5],
						["30Rnd_45ACP_Mag_SMG_01",nil,300*0.5],
						["arifle_SDAR_F",nil,50000*0.5],
						["20Rnd_556x45_UW_mag",nil,2500*0.5],
						["arifle_TRG20_F","TRG-20 5.56mm",75000*0.5],
						["30Rnd_556x45_Stanag_Tracer_Red",nil,3750*0.5],
						["optic_Yorris",nil,2500*0.5],
						["optic_ACO_grn_smg",nil,5000*0.5],
						["optic_Holosight_smg",nil,5000*0.5],
						["optic_Aco",nil,10000*0.5],
						["optic_Holosight",nil,10000*0.5],
						["V_Rangemaster_belt",nil,4900*0.5]
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
						["arifle_TRG21_F","TRG-21 5.56mm",90000*0.5],
						["arifle_Mk20_F",nil,100000*0.5],
						["30Rnd_556x45_Stanag",nil,10000*0.5],
						["arifle_Katiba_F",nil,125000*0.5],
						["30Rnd_65x39_caseless_green",nil,12500*0.5],
						["srifle_DMR_01_F",nil,250000*0.5],
						["20Rnd_762x51_Mag",nil,25000*0.5],
						["srifle_EBR_F",nil,600000*0.5],
						["20Rnd_762x51_Mag",nil,60000*0.5],
						["arifle_mas_bizon",nil,100000*0.5],
						["64Rnd_mas_9x18_mag",nil,5000*0.5],
						["arifle_mas_aks74",nil,250000*0.5],
						["30Rnd_mas_545x39_mag",nil,10000*0.5],
						["arifle_mas_akm",nil,300000*0.5],
						["30Rnd_mas_762x39_mag",nil,10000*0.5],
						["arifle_mas_aks74u",nil,200000*0.5],
						["30Rnd_mas_545x39_mag",nil,10000*0.5],
						["hgun_mas_uzi_F",nil,80000*0.5],
						["25Rnd_mas_9x19_Mag",nil,1000*0.5],
						["hgun_mas_sa61_F",nil,80000*0.5],
						["20Rnd_mas_765x17_Mag",nil,1000*0.5],
						["hgun_mas_mak_F",nil,80000*0.5],
						["8Rnd_mas_9x18_Mag",nil,1000*0.5]
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
						["arifle_MXC_Black_F",nil,250000*0.5],
						["arifle_MX_Black_F",nil,300000*0.5],
						["arifle_MX_SW_Black_F",nil,320000*0.5],
						["arifle_MXM_Black_F",nil,300000*0.5],
						["30Rnd_65x39_caseless_mag",nil,500*0.5],
						["100Rnd_65x39_caseless_mag",nil,500*0.5],
						["srifle_mas_m110",nil,800000*0.5],
						["srifle_mas_ebr",nil,600000*0.5],
						["srifle_mas_sr25",nil,400000*0.5],
						["srifle_mas_m24_v",nil,1500000*0.5],
						["20Rnd_mas_762x51_Stanag",nil,10000*0.5],
						["5Rnd_mas_762x51_Stanag",nil,100000*0.5],
						["srifle_mas_m91",nil,1900000*0.5],
						["10Rnd_mas_762x54_mag",nil,100000*0.5],
						["muzzle_mas_snds_SVD",nil,1000*0.5],
						["muzzle_mas_snds_SMc",nil,50000*0.5],
						["hlc_rifle_Bushmaster300",nil,300000*0.5],
						["29rnd_300BLK_STANAG",nil,50000*0.5],
						["hlc_rifle_vendimus",nil,200000*0.5],
						["29rnd_300BLK_STANAG",nil,50000*0.5],
						["hlc_rifle_psg1",nil,700000*0.5],
						["hlc_20rnd_762x51_b_G3",nil,100000*0.5],
						["hlc_rifle_bcmjack",nil,200000*0.5],
						["hlc_30rnd_556x45_EPR",nil,10000*0.5],
						["hlc_muzzle_556NATO_KAC",nil,1000*0.5],
						["arifle_mas_m1014",nil,350000*0.5],
						["7Rnd_mas_12Gauge_Pellets",nil,50000*0.5],
						["HandGrenade_Stone","Blendgranate",100000*0.5],
						//["srifle_DMR_05_hex_F",nil,1000000*0.5],
						//["muzzle_snds_93mmg_tan",nil,50000*0.5],
						//["10Rnd_93x64_DMR_05_Mag",nil,30000*0.5],
						["muzzle_snds_L",nil,50000*0.5],
						["muzzle_snds_M",nil,50000*0.5],
						["muzzle_snds_H",nil,50000*0.5],
						["muzzle_snds_B",nil,50000*0.5],
						["bipod_01_F_blk",nil,25000*0.5],
						["bipod_01_F_snd",nil,25000*0.5],
						["bipod_03_F_oli",nil,25000*0.5],
						["optic_AMS_khk",nil,25000*0.5],
						["optic_AMS_snd",nil,25000*0.5],
						["optic_AMS",nil,25000*0.5],
						["optic_KHS_tan",nil,25000*0.5],
						["optic_KHS_hex",nil,25000*0.5],
						["optic_KHS_blk",nil,25000*0.5]
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
						["HandGrenade_Stone","Blendgranate",10000]
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
						["hgun_mas_acp_F","1911 ACP",75000],
						["12Rnd_mas_45acp_Mag","1911ACP Mag",7500],
						["hgun_Pistol_heavy_02_F","Zudr. 45",75000],
						["6Rnd_45ACP_Cylinder","Zudr. Mag",7500],
						["arifle_mas_m1014","Benelli",150000],
						["7Rnd_mas_12Gauge_Pellets","Benelli Mag",15000],
						["arifle_MXM_F","MXM",185000],
						["30Rnd_65x39_caseless_mag","MXM Mag",18500],
						["arifle_mas_akm","AKM",220000],
						["30Rnd_mas_762x39_mag","AKM Mag",22000],
						["hlc_rifle_bcmjack","Jack Carabine",280000],
						["hlc_30rnd_556x45_EPR","Jack Carabine Mag",28000],
						["srifle_mas_m110","M110",300000],
						["20Rnd_762x51_Mag","M110 Mag",30000],
						["srifle_EBR_F","Mk18",300000],
						["20Rnd_762x51_Mag","MK18 Mag",30000],
						["srifle_mas_sr25","SR25",320000],
						["20Rnd_762x51_Mag","SR25 Mag",32000],
						["hlc_rifle_psg1","PSG-1",350000],
						["hlc_20rnd_762x51_b_G3","PSG-1 Mag",35000],
						["srifle_DMR_03_F","MK-1 EMR",400000],
						["20Rnd_762x51_Mag","MK-1 EMR Mag",40000],
						["arifle_mas_mk17","SCAR-H",420000],
						["20Rnd_762x51_Mag","SCAR-H Mag",42000],
						["srifle_mas_svd","SVD Dragunov",450000],
						["10Rnd_mas_762x54_mag","Dragunov Mag",45000],
						//Extras
						["acc_pointer_IR","Laserpointer",10000],
						["acc_flashlight","Taschenlampe",10000],
						//Visire
						["optic_Hamr","RCO",5000],
						["optic_Arco","ARCO",5000],
						["optic_Holosight","Holosight",5000],
						["optic_Aco","ACO",5000],
						["optic_ACO_grn","ACO Grün",5000],
						["optic_MRCO","MRCO",5000],
						["optic_SOS","SOS",5000],
						["optic_DMS","DMS",5000],
						["optic_mas_zeiss","Zeiss",5000],
						["optic_mas_zeiss_eo","Zeiss Holo",5000],
						["optic_mas_DMS","Leupold",5000],
						["optic_mas_acog","Acog",5000],
						["optic_mas_acog_eo","Acog Holo",5000],
						["optic_mas_handle","M4 Handle",5000],
						["optic_mas_aim","Aimpoint",5000],
						["optic_mas_pso","PSO",5000],
						["optic_mas_pso_eo","PSO Holo",5000],
						["optic_mas_pso_nv","PSO Sniper",5000],
						["optic_AMS","AMS",5000],
						["optic_KHS_blk","Kahlia Black",5000],
						//Schalldämpfer
						["muzzle_snds_H","Schalldämpfer 6.5mm",35000],
						["muzzle_snds_L","Schalldämpfer 9mm",35000],
						["muzzle_snds_M","Schalldämpfer 5.56mm",35000],
						["muzzle_snds_B","Schalldämpfer 7.62mm",35000],
						["muzzle_mas_snds_SM","Schalldämpfer m4, m16, HK",35000],
						["muzzle_mas_snds_SH","Schalldämpfer M24",35000],
						["hlc_muzzle_556nato_KAC","Schalldämpfer Jack C.",35000],
						//Zweibeine
						["bipod_01_F_snd","Zweibein Sand",15000],
						["bipod_01_F_blk","Zweibein Schw.",15000],
						["bipod_01_F_mtp","Zweibein MTP",15000],
						["bipod_02_F_blk","Zweibein Schw, CSAT",15000],
						["bipod_02_F_tan","Zweibein Tan CSAT",15000],
						["bipod_02_F_hex","Zweibein Hex CSAT",15000],
						["bipod_03_F_blk","Zweibein Black AAF",15000],
						["bipod_03_F_oli","Zweibein Olive AAF",15000]
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
						["optic_ACO_grn",nil,10000*0.5],
						["optic_mas_ACO_grn_camo",nil,10000*0.5],
						["optic_mas_Aco_camo",nil,10000*0.5],
						["optic_Aco",nil,10000*0.5],
						["optic_Aco_smg",nil,10000*0.5],
						["optic_mas_acog",nil,10000*0.5],
						["optic_mas_acog_c",nil,10000*0.5],
						["optic_mas_acog_eo",nil,10000*0.5],
						["optic_mas_acog_eo_c",nil,10000*0.5],
						["optic_mas_acog_rd",nil,10000*0.5],
						["optic_mas_acog_rd_c",nil,10000*0.5],
						["optic_mas_aim",nil,10000*0.5],
						["optic_mas_aim_c",nil,10000*0.5],
						["optic_Arco",nil,10000*0.5],
						["optic_mas_Arco_blk",nil,10000*0.5],
						["optic_mas_Arco_camo",nil,10000*0.5],
						["optic_DMS",nil,10000*0.5],
						["optic_Holosight",nil,10000*0.5],
						["optic_mas_Holosight_blk",nil,10000*0.5],
						["optic_mas_Holosight_camo",nil,10000*0.5],
						["optic_mas_DMS",nil,10000*0.5],
						["optic_mas_DMS_c",nil,10000*0.5],
						["optic_LRPS",nil,10000*0.5],
						["optic_mas_handle",nil,10000*0.5],
						["optic_Holosight_smg",nil,10000*0.5],
						["optic_MRCO",nil,10000*0.5],
						["optic_mas_MRCO_camo",nil,10000*0.5],
						["optic_NVS",nil,10000*0.5],
						["optic_Hamr",nil,10000*0.5],
						["optic_mas_Hamr_camo",nil,10000*0.5],
						["optic_SOS",nil,10000*0.5],
						["optic_mas_zeiss",nil,10000*0.5],
						["optic_mas_zeiss_c",nil,10000*0.5],
						["optic_mas_zeiss_eo",nil,10000*0.5],
						["optic_mas_zeiss_eo_c",nil,10000*0.5],
						["acc_pointer_IR",nil,8000*0.5],
						["acc_flashlight",nil,8000*0.5]
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
						["hgun_ACPC_F","ACP",20000],
						["9Rnd_45ACP_Mag","ACP. 45 Mag",2000],
						["hgun_P07_F","P07 9 mm",25000],
						["16Rnd_9x21_Mag","P07 9mm Mag",2500],
						["hgun_Pistol_heavy_01_F","4-five .45",30000],
						["11Rnd_45ACP_Mag","4-five Mag",3000],
						["hgun_PDW2000_F","PDW2000 9 mm",30000],
						["30Rnd_9x21_Mag","PDW Mag",3000],
						["hgun_mas_glock_F","Glock17",35000],
						["17Rnd_mas_9x21_Mag","Glock17 Mag",3500],
						["hgun_mas_m9_F","M9",35000],
						["15Rnd_mas_9x21_Mag","M9 Mag",3500],
						["SMG_01_F","Vermin SMG .45 ACP",40000],
						["30Rnd_45ACP_Mag_SMG_01","Vermin Mag",4000],
						["SMG_02_F","Sting 9 mm",45000],
						["30Rnd_9x21_Mag","Sting Mag",4500],
						["arifle_SDAR_F","SDAR 5.56 mm",50000],
						["20Rnd_556x45_UW_mag","SDAR Mag",5000],
						["arifle_TRG21_F","TRG-20 5.56 mm",55000],
						["30Rnd_556x45_Stanag","TRG21 Mag",5500],
						["optic_Yorris","Yorris J2-Visir",5000],
						["optic_MRD","MRD-Visir",5000],
						["optic_Aco","ACO-Visir",3500],
						["optic_Holosight","Holosight-Visir",3500]
					]
				];
			};
		};
	};

	case "genstore":
	{
		["Altis Gemischtwaren",
			[
				["ItemRadio","Handy",80],
				["Binocular","Fernglass",50],
				["ItemGPS","Navi",50],
				["ToolKit","Werkzeugkasten",250],
				["ItemMap","Karte Altis",50],
				["FirstAidKit","Erstehilfekasten",250],
				["NVGoggles_OPFOR","Nachtsichtgerät",100],
				["ItemWatch","Uhr",55],
				["ItemCompass","Kompass",50],
				["Rangefinder","Entfernungsmesser",100],
				["Chemlight_green","Knicklicht Gelb",25],
				["Chemlight_yellow","Knicklicht Gelb",25],
				["Chemlight_red","Knicklicht Rot",25],
				["Chemlight_blue","Knicklicht Blau",25]
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
						["ToolKit",nil,5000],
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
                        ["Binocular",nil,20],
						["ItemRadio","Smartphone",20],
						["ItemGPS",nil,20],
						["FirstAidKit",nil,50],
						["NVGoggles",nil,60],
						["rangefinder",nil,100],
						["Chemlight_yellow",nil,5],
						["SmokeShellyellow",nil,5],
						["SmokeShellred",nil,15],
						["ToolKit",nil,30],
						["ItemWatch",nil,5],
						["ItemCompass",nil,5],
						["ItemMap",nil,5]
                    ]
                ];
            };
        };
    };
};