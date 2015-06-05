#include <macro.h>
/*
	File:
	Author: Bryan "Tonic" Boardwine

	Description:
	Master configuration list / array for buyable vehicles & prices and their shop.
*/
private["_shop","_return"];
_shop = [_this,0,"",[""]] call BIS_fnc_param;
if(_shop == "") exitWith {[]};
_return = [];
switch (_shop) do
{
	case "kart_shop":
	{
		_return = [
			["C_Kart_01_Blu_F",1500],
			["C_Kart_01_Fuel_F",1500],
			["C_Kart_01_Red_F",1500],
			["C_Kart_01_Vrana_F",1500],
			["A3L_Atom",5000],
			["cl_skatesb4",500],
			["cl_skatesb5",500],
			["cl_skatesb7",500]
		];
	};
	 case "med_shop":
    {
        _return = [
            ["A3L_Amberlamps",10000],
			["max_ambulance",15000],
			["IVORY_PRIUS_ems",8000],
			["A3L_CVPILBFD",8000],
			["DAR_TahoeEMS",5000],
			["Jonzie_Ambulance",18000],
			["sfp_wheelchair",500]
        ];
    };

    case "med_air_hs": {
        if(license_med_air) then
        {
            _return = [
                ["B_Heli_Light_01_F",8000],
                ["ARMSCor_A109LUH_i",18000],
                ["O_Heli_Light_02_unarmed_F", 18000],
                ["I_Heli_light_03_unarmed_F",20000]
			];
            if(license_med_mohawk) then {
                _return pushBack ["I_Heli_Transport_02_F",80000];
                _return pushBack ["0_Heli_transport_04_medevac_F",100000];
            };
        }
    };

	case "adac_car":
    {
        _return =
        [
			["C_SUV_01_F",35000],
			["B_Truck_01_transport_F",100000],
			["cl3_f150repo_orange",10000],
			["dbo_CIV_ol_bike",500]
        ];
    };

    case "adac_air":
    {
        _return =
        [
			["B_Heli_Light_01_F",20000],
            ["B_Heli_Transport_03_unarmed_F",100000],
			["O_HELI_TRANSPORT_04_F",100000],
			["C_Heli_Light_01_civil_F",30000],
			["GNT_C185",50000],
			["GNT_C185F",50000],
			["ARMSCor_A109LUH_O",200000]
        ];
    };

	case "civ_car":
	{
		_return =
		[
			["B_Quadbike_01_F",800],
			["C_Hatchback_01_F",4000],
			["C_Offroad_01_F",10000],
			["C_Van_01_transport_F",50000],
			["C_Hatchback_01_sport_F",67000],
			["rds_gaz24_civ_03",750],
			["rds_gaz24_civ_02",800],
			["rds_lada_civ_01",750],
			["rds_lada_civ_03",750],
			["rds_lada_civ_04",750],
			["RDS_Lada_Civ_02",800],
			["C_SUV_01_F",20000],
			["CL3_Black_SUV_01_F",7000]
		];
	};

	case "cargo_s":
	{
		_return = [
			["CargoNet_01_barrels_F",50000]
		];
	};

	case "civ_good":
	{
		_return = [
			["Land_Cargo10_military_green_F",100000]
		];
	};

	case "civ_bus":
	{
		_return = [

		];
		if(license_civ_bus) then
		{
			_return pushBack ["A3L_Bus",100000];
		};
	};

	case "civ_taxi":
	{
		_return = [];
		if(license_civ_taxi) then
		{
			_return pushBack ["A3L_EscortTaxi",5000];
			_return pushBack ["cl3_e60_m5_yellow",1000000];
			_return pushBack ["C_Heli_Light_01_civil_F",300000];
		};
	};

	case "cargo_i":
	{
		_return = [
			["Land_Cargo10_military_green_F",100000]
		];
	};

    case "civ_bmw":
	{
        _return =
        [
			["cl3_e60_m5_aqua",1000000],
			["cl3_z4_2008_aqua",1000000],
			["cl3_e60_m5_babyblue",1000000],
			["cl3_e60_m5_babypink",1000000],
			["cl3_z4_2008_babypink",1000000],
			["cl3_e60_m5_black",1000000],
			["cl3_z4_2008_black",1000000],
			["cl3_e60_m5_blue",1000000],
			["cl3_z4_2008_blue",1000000],
			["cl3_e60_m5_burgundy",1000000],
			["cl3_z4_2008_burgundy",1000000],
			["cl3_e60_m5_camo",1000000],
			["cl3_z4_2008_camo",1000000],
			["cl3_e60_m5_camo_urban",1000000],
			["cl3_z4_2008_camo_urban",1000000],
			["cl3_e60_m5_cardinal",1000000],
			["cl3_z4_2008_cardinal",1000000],
			["cl3_e60_m5_dark_green",1000000],
			["cl3_z4_2008_dark_green",1000000],
			["cl3_e60_m5_gold",1000000],
			["cl3_z4_2008_gold",1000000],
			["cl3_e60_m5_green",1000000],
			["cl3_z4_2008_green",1000000],
			["cl3_e60_m5_grey",1000000],
			["cl3_z4_2008_grey",1000000],
			["cl3_e60_m5_lavender",1000000],
			["cl3_z4_2008_lavender",1000000],
			["cl3_e60_m5_light_blue",1000000],
			["cl3_z4_2008_light_blue",1000000],
			["cl3_e60_m5_lime",1000000],
			["cl3_z4_2008_lime",1000000],
			["cl3_e60_m5_marina_blue",1000000],
			["cl3_z4_2008_marina_blue",1000000],
			["cl3_e60_m5_navy_blue",1000000],
			["cl3_z4_2008_navy_blue",1000000],
			["cl3_e60_m5_orange",1000000],
			["cl3_z4_2008_orange",1000000],
			["cl3_e60_m5_purple",1000000],
			["cl3_z4_2008_purple",1000000],
			["cl3_e60_m5_red",1000000],
			["cl3_z4_2008_red",1000000],
			["cl3_e60_m5_sand",1000000],
			["cl3_z4_2008_sand",1000000],
			["cl3_e60_m5_silver",1000000],
			["cl3_z4_2008_silver",1000000],
			["cl3_e60_m5_violet",1000000],
			["cl3_z4_2008_violet",1000000],
			["cl3_e60_m5_white",1000000],
			["cl3_z4_2008_white",1000000],
			["cl3_e60_m5_yellow",1000000],
			["cl3_z4_2008_yellow",1000001]
        ];
	};

	case "civ_audi":
	{
        _return =
        [
			["cl3_r8_spyder_2tone1",1000000],
			["cl3_r8_spyder_2tone2",1000000],
			["cl3_r8_spyder_2tone3",1000000],
			["cl3_r8_spyder_2tone4",1000000],
			["cl3_r8_spyder_2tone5",1000000],
			["cl3_r8_spyder_aqua",1000000],
			["cl3_r8_spyder_babyblue",1000000],
			["cl3_r8_spyder_babypink",1000000],
			["cl3_r8_spyder_black",1000000],
			["cl3_r8_spyder_blue",1000000],
			["cl3_r8_spyder_burgundy",1000000],
			["cl3_r8_spyder_camo",1000000],
			["cl3_r8_spyder_camo_urban",1000000],
			["cl3_r8_spyder_cardinal",1000000],
			["cl3_r8_spyder_dark_green",1000000],
			["cl3_r8_spyder_flame",1000000],
			["cl3_r8_spyder_flame1",1000000],
			["cl3_r8_spyder_flame2",1000000],
			["cl3_r8_spyder_gold",1000000],
			["cl3_r8_spyder_green",1000000],
			["cl3_r8_spyder_grey",1000000],
			["cl3_r8_spyder_lavender",1000000],
			["cl3_r8_spyder_light_blue",1000000],
			["cl3_r8_spyder_lime",1000000],
			["cl3_r8_spyder_marina_blue",1000000],
			["cl3_r8_spyder_navy_blue",1000000],
			["cl3_r8_spyder_orange",1000000],
			["cl3_r8_spyder_purple",1000000],
			["cl3_r8_spyder_red",1000000],
			["cl3_r8_spyder_sand",1000000],
			["cl3_r8_spyder_silver",1000000],
			["cl3_r8_spyder_violet",1000000],
			["cl3_r8_spyder_white",1000000],
			["cl3_r8_spyder_yellow",1000000]
        ];
	};

	case "civ_porsche":
	{
        _return =
        [
			["cl3_carrera_gt_aqua",1000000],
			["cl3_carrera_gt_babypink",1000000],
			["cl3_carrera_gt_black",1000000],
			["cl3_carrera_gt_blue",1000000],
			["cl3_carrera_gt_burgundy",1000000],
			["cl3_carrera_gt_camo",1000000],
			["cl3_carrera_gt_camo_urban",1000000],
			["cl3_carrera_gt_cardinal",1000000],
			["cl3_carrera_gt_dark_green",1000000],
			["cl3_carrera_gt_gold",1000000],
			["cl3_carrera_gt_green",1000000],
			["cl3_carrera_gt_grey",1000000],
			["cl3_carrera_gt_lavender",1000000],
			["cl3_carrera_gt_light_blue",1000000],
			["cl3_carrera_gt_light_yellow",1000000],
			["cl3_carrera_gt_lime",1000000],
			["cl3_carrera_gt_marina_blue",1000000],
			["cl3_carrera_gt_navy_blue",1000000],
			["cl3_carrera_gt_orange",1000000],
			["cl3_carrera_gt_purple",1000000],
			["cl3_carrera_gt_red",1000000],
			["cl3_carrera_gt_sand",1000000],
			["cl3_carrera_gt_silver",1000000],
			["cl3_carrera_gt_violet",1000000],
			["cl3_carrera_gt_white",1000000],
			["cl3_carrera_gt_yellow",1000000]
        ];
	};

	case "civ_vw":
	{
        _return =
        [
			["cl3_golf_mk2_aqua",100000],
			["cl3_polo_gti_aqua",100000],
			["cl3_golf_mk2_babyblue",100000],
			["cl3_polo_gti_babyblue",100000],
			["cl3_golf_mk2_babypink",100000],
			["cl3_polo_gti_babypink",100000],
			["cl3_golf_mk2_black",100000],
			["cl3_polo_gti_black",100000],
			["cl3_golf_mk2_blue",100000],
			["cl3_polo_gti_blue",100000],
			["cl3_golf_mk2_burgundy",100000],
			["cl3_polo_gti_burgundy",100000],
			["cl3_golf_mk2_camo_urban",100000],
			["cl3_polo_gti_camo_urban",100000],
			["cl3_golf_mk2_camo",100000],
			["cl3_polo_gti_camo",100000],
			["cl3_golf_mk2_cardinal",100000],
			["cl3_polo_gti_cardinal",100000],
			["cl3_golf_mk2_dark_green",100000],
			["cl3_polo_gti_dark_green",100000],
			["cl3_golf_mk2_gold",100000],
			["cl3_polo_gti_gold",100000],
			["cl3_golf_mk2_green",100000],
			["cl3_polo_gti_green",100000],
			["cl3_golf_mk2_grey",100000],
			["cl3_polo_gti_grey",100000],
			["cl3_golf_mk2_lavender",100000],
			["cl3_polo_gti_lavender",100000],
			["cl3_golf_mk2_light_blue",100000],
			["cl3_polo_gti_light_blue",100000],
			["cl3_golf_mk2_lime",100000],
			["cl3_polo_gti_lime",100000],
			["cl3_golf_mk2_orange",100000],
			["cl3_polo_gti_orange",100000],
			["RDS_Golf4_Civ_01",105000]
        ];
	};

	case "civ_lambo":
	{
        _return =
        [
			["cl3_lamborghini_gt1_2tone1",1000000],
			["cl3_murcielago_2tone1",1000000],
			["cl3_reventon_2tone1",1000000],
			["cl3_lamborghini_gt1_2tone2",1000000],
			["cl3_murcielago_2tone2",1000000],
			["cl3_reventon_2tone2",1000000],
			["cl3_lamborghini_gt1_2tone3",1000000],
			["cl3_murcielago_2tone3",1000000],
			["cl3_reventon_2tone3",1000000],
			["cl3_lamborghini_gt1_2tone4",1000000],
			["cl3_murcielago_2tone4",1000000],
			["cl3_reventon_2tone4",1000000],
			["cl3_lamborghini_gt1_2tone5",1000000],
			["cl3_murcielago_2tone5",1000000],
			["cl3_reventon_2tone5",1000000],
			["cl3_lamborghini_gt1_aqua",1000000],
			["cl3_murcielago_aqua",1000000],
			["cl3_reventon_aqua",1000000],
			["cl3_lamborghini_gt1_babyblue",1000000],
			["cl3_murcielago_babyblue",1000000],
			["cl3_reventon_babyblue",1000000],
			["cl3_lamborghini_gt1_babypink",1000000],
			["cl3_murcielago_babypink",1000000],
			["cl3_reventon_babypink",1000000],
			["cl3_lamborghini_gt1_black",1000000],
			["cl3_murcielago_black",1000000],
			["cl3_reventon_black",1000000],
			["cl3_lamborghini_gt1_blue",1000000],
			["cl3_murcielago_blue",1000000],
			["cl3_reventon_blue",1000000],
			["cl3_lamborghini_gt1_burgundy",1000000],
			["cl3_murcielago_burgundy",1000000],
			["cl3_reventon_burgundy",1000000],
			["cl3_lamborghini_gt1_camo",1000000],
			["cl3_murcielago_camo",1000000],
			["cl3_reventon_camo",1000000],
			["cl3_lamborghini_gt1_camo_urban",1000000],
			["cl3_murcielago_camo_urban",1000000],
			["cl3_reventon_camo_urban",1000000],
			["cl3_lamborghini_gt1_cardinal",1000000],
			["cl3_murcielago_cardinal",1000000],
			["cl3_reventon_cardinal",1000000],
			["cl3_lamborghini_gt1_dark_green",1000000],
			["cl3_murcielago_dark_green",1000000],
			["cl3_reventon_dark_green",1000000],
			["cl3_lamborghini_gt1_flame",1000000],
			["cl3_murcielago_flame",1000000],
			["cl3_reventon_flame",1000000],
			["cl3_lamborghini_gt1_flame1",1000000],
			["cl3_murcielago_flame1",1000000],
			["cl3_reventon_flame1",1000000],
			["cl3_lamborghini_gt1_flame2",1000000],
			["cl3_murcielago_flame2",1000000],
			["cl3_reventon_flame2",1000000],
			["cl3_lamborghini_gt1_gold",1000000],
			["cl3_murcielago_gold",1000000],
			["cl3_reventon_gold",1000000],
			["cl3_lamborghini_gt1_green",1000000],
			["cl3_murcielago_green",1000000],
			["cl3_reventon_green",1000000],
			["cl3_lamborghini_gt1_grey",1000000],
			["cl3_murcielago_grey",1000000],
			["cl3_reventon_grey",1000000],
			["cl3_lamborghini_gt1_lavender",1000000],
			["cl3_murcielago_lavender",1000000],
			["cl3_reventon_lavender",1000000],
			["cl3_lamborghini_gt1_light_blue",1000000],
			["cl3_murcielago_light_blue",1000000],
			["cl3_reventon_light_blue",1000000],
			["cl3_lamborghini_gt1_light_yellow",1000000],
			["cl3_murcielago_light_yellow",1000000],
			["cl3_reventon_light_yellow",1000000],
			["cl3_lamborghini_gt1_lime",1000000],
			["cl3_murcielago_lime",1000000],
			["cl3_reventon_lime",1000000],
			["cl3_lamborghini_gt1_marina_blue",1000000],
			["cl3_murcielago_marina_blue",1000000],
			["cl3_reventon_marina_blue",1000000],
			["cl3_lamborghini_gt1_navy_blue",1000000],
			["cl3_murcielago_navy_blue",1000000],
			["cl3_reventon_navy_blue",1000000],
			["cl3_lamborghini_gt1_orange",1000000],
			["cl3_murcielago_orange",1000000],
			["cl3_reventon_orange",1000000],
			["cl3_lamborghini_gt1_purple",1000000],
			["cl3_murcielago_purple",1000000],
			["cl3_reventon_purple",1000000],
			["cl3_lamborghini_gt1_red",1000000],
			["cl3_murcielago_red",1000000],
			["cl3_reventon_red",1000000],
			["cl3_lamborghini_gt1_sand",1000000],
			["cl3_murcielago_sand",1000000],
			["cl3_reventon_sand",1000000],
			["cl3_lamborghini_gt1_silver",1000000],
			["cl3_murcielago_silver",1000000],
			["cl3_reventon_silver",1000000],
			["cl3_lamborghini_gt1_violet",1000000],
			["cl3_murcielago_violet",1000000],
			["cl3_reventon_violet",1000000],
			["cl3_lamborghini_gt1_white",1000000],
			["cl3_murcielago_white",1000000],
			["cl3_reventon_white",1000000],
			["cl3_lamborghini_gt1_yellow",1000000],
			["cl3_murcielago_yellow",1000000],
			["cl3_reventon_yellow",1000000]
        ];
	};

	case "civ_dodge":
	{
        _return =
        [
			["cl3_dodge_charger_s_black",1000000],
			["cl3_dodge_charger_s_blue",1000000],
			["cl3_dodge_charger_s_white",1000000],
			["cl3_dodge_charger_s_camo",1000000],
			["cl3_dodge_charger_s_camourban",1000000],
			["cl3_dodge_charger_s_darkgreen",1000000],
			["cl3_dodge_charger_s_darkred",1000000],
			["cl3_dodge_charger_s_green",1000000],
			["cl3_dodge_charger_s_grey",1000000],
			["cl3_dodge_charger_s_lime",1000000],
			["cl3_dodge_charger_s_orange",1000000],
			["cl3_dodge_charger_s_pink",1000000],
			["cl3_dodge_chargerum_s_black",1000000],
			["cl3_dodge_chargerum_s_blue",1000000],
			["cl3_dodge_chargerum_s_camo",1000000],
			["cl3_dodge_chargerum_s_camourban",1000000],
			["cl3_dodge_chargerum_s_darkgreen",1000000],
			["cl3_dodge_chargerum_s_darkred",1000000],
			["cl3_dodge_chargerum_s_green",1000000],
			["cl3_dodge_chargerum_s_grey",1000000],
			["cl3_dodge_chargerum_s_lime",1000000],
			["cl3_dodge_chargerum_s_orange",1000000],
			["cl3_dodge_chargerum_s_pink",1000000],
			["cl3_dodge_chargerum_s_purple",1000000],
			["cl3_dodge_chargerum_s_red",1000000],
			["cl3_dodge_chargerum_s_white",1000000],
			["cl3_dodge_chargerum_s_yellow",1000000],
			["cl3_dodge_charger_s_yellow",1000000]
        ];
	};

	case "civ_aston":
	{
        _return =
        [
			["cl3_dbs_volante_aqua",1000000],
			["cl3_dbs_volante_babyblue",1000000],
			["cl3_dbs_volante_babypink",1000000],
			["cl3_dbs_volante_black",1000000],
			["cl3_dbs_volante_blue",1000000],
			["cl3_dbs_volante_burgundy",1000000],
			["cl3_dbs_volante_camo",1000000],
			["cl3_dbs_volante_camo_urban",1000000],
			["cl3_dbs_volante_cardinal",1000000],
			["cl3_dbs_volante_dark_green",1000000],
			["cl3_dbs_volante_flame",1000000],
			["cl3_dbs_volante_flame1",1000000],
			["cl3_dbs_volante_flame2",1000000],
			["cl3_dbs_volante_gold",1000000],
			["cl3_dbs_volante_green",1000000],
			["cl3_dbs_volante_grey",1000000],
			["cl3_dbs_volante_lavender",1000000],
			["cl3_dbs_volante_light_blue",1000000],
			["cl3_dbs_volante_light_yellow",1000000],
			["cl3_dbs_volante_lime",1000000],
			["cl3_dbs_volante_marina_blue",1000000],
			["cl3_dbs_volante_navy_blue",1000000],
			["cl3_dbs_volante_orange",1000000],
			["cl3_dbs_volante_purple",1000000],
			["cl3_dbs_volante_red",1000000],
			["cl3_dbs_volante_sand",1000000],
			["cl3_dbs_volante_silver",1000000],
			["cl3_dbs_volante_violet",1000000],
			["cl3_dbs_volante_white",1000000],
			["cl3_dbs_volante_yellow",1000000]
        ];
	};

	case "civ_ferrari":
	{
        _return =
        [
			["cl3_458_2tone1",1000000],
			["cl3_458_2tone2",1000000],
			["cl3_458_2tone3",1000000],
			["cl3_458_2tone4",1000000],
			["cl3_458_aqua",1000000],
			["cl3_458_2tone5",1000000],
			["cl3_458_babyblue",1000000],
			["cl3_458_babypink",1000000],
			["cl3_458_black",1000000],
			["cl3_458_blue",1000000],
			["cl3_458_burgundy",1000000],
			["cl3_458_camo",1000000],
			["cl3_458_camo_urban",1000000],
			["cl3_458_cardinal",1000000],
			["cl3_458_dark_green",1000000],
			["cl3_458_flame",1000000],
			["cl3_458_flame1",1000000],
			["cl3_458_flame2",1000000],
			["cl3_458_gold",1000000],
			["cl3_458_green",1000000],
			["cl3_458_grey",1000000],
			["cl3_458_lavender",1000000],
			["cl3_458_lavender",1000000],
			["cl3_458_light_yellow",1000000],
			["cl3_458_lime",1000000],
			["cl3_458_marina_blue",1000000],
			["cl3_458_navy_blue",1000000],
			["cl3_458_orange",1000000],
			["cl3_458_purple",1000000],
			["cl3_458_red",1000000],
			["cl3_458_sand",1000000],
			["cl3_458_silver",1000000],
			["cl3_458_violet",1000000],
			["cl3_458_white",1000000],
			["cl3_458_yellow",1000000]
        ];
	};

	case "civ_benz":
	{
        _return =
        [
			["cl3_e63_amg_aqua",1000000],
			["cl3_e63_amg_babyblue",1000000],
			["cl3_e63_amg_babypink",1000000],
			["cl3_e63_amg_black",1000000],
			["cl3_e63_amg_blue",1000000],
			["cl3_e63_amg_burgundy",1000000],
			["cl3_e63_amg_camo",1000000],
			["cl3_e63_amg_camo_urban",1000000],
			["cl3_e63_amg_cardinal",1000000],
			["cl3_e63_amg_dark_green",1000000],
			["cl3_e63_amg_gold",1000000],
			["cl3_e63_amg_grey",1000000],
			["cl3_e63_amg_lavender",1000000],
			["cl3_e63_amg_light_blue",1000000],
			["cl3_e63_amg_lime",1000000],
			["cl3_e63_amg_marina_blue",1000000],
			["cl3_e63_amg_navy_blue",1000000],
			["cl3_e63_amg_orange",1000000],
			["cl3_e63_amg_red",1000000],
			["cl3_e63_amg_sand",1000000],
			["cl3_e63_amg_silver",1000000],
			["cl3_e63_amg_violet",1000000],
			["cl3_e63_amg_white",1000000],
			["cl3_e63_amg_yellow",1000000]
        ];
	};

	case "civ_bugatti":
	{
        _return =
        [
			["cl3_veyron_black",1000000],
			["cl3_veyron_blk_wht",1000000],
			["cl3_veyron_lblue_dblue",1000000],
			["cl3_veyron_lblue_lblue",1000000],
			["cl3_veyron_brn_blk",1000000],
			["cl3_veyron_red_red",1000000],
			["cl3_veyron_wht_blu",1000000]
        ];
	};

	case "civ_ford":
	{
        _return =
        [
			["cl3_taurus_aqua",100000],
			["cl3_taurus_babypink",100000],
			["cl3_taurus_black",100000],
			["cl3_taurus_blue",100000],
			["cl3_taurus_burgundy",100000],
			["cl3_taurus_camo",100000],
			["cl3_taurus_camo_urban",100000],
			["cl3_taurus_dark_green",100000],
			["cl3_taurus_gold",100000],
			["cl3_taurus_green",100000],
			["cl3_taurus_grey",100000],
			["cl3_taurus_lavender",100000],
			["cl3_taurus_light_blue",100000],
			["cl3_taurus_marina_blue",100000],
			["cl3_taurus_navy_blue",100000],
			["cl3_taurus_orange",100000],
			["cl3_taurus_purple",100000],
			["cl3_taurus_red",100000],
			["cl3_taurus_sand",100000],
			["cl3_taurus_silver",100000],
			["cl3_taurus_yellow",100000]
        ];

		if(license_civ_donator) then
		{
			_return pushBack ["cl3_taurus_aqua",100000*0.3];
			_return pushBack ["cl3_taurus_babypink",100000*0.3];
			_return pushBack ["cl3_taurus_black",100000*0.3];
			_return pushBack ["cl3_taurus_blue",100000*0.3];
			_return pushBack ["cl3_taurus_burgundy",100000*0.3];
			_return pushBack ["cl3_taurus_camo",100000*0.3];
			_return pushBack ["cl3_taurus_camo_urban",100000*0.3];
			_return pushBack ["cl3_taurus_dark_green",100000*0.3];
			_return pushBack ["cl3_taurus_gold",100000*0.3];
			_return pushBack ["cl3_taurus_green",100000*0.3];
			_return pushBack ["cl3_taurus_grey",100000*0.3];
			_return pushBack ["cl3_taurus_lavender",100000*0.3];
			_return pushBack ["cl3_taurus_light_blue",100000*0.3];
			_return pushBack ["cl3_taurus_marina_blue",100000*0.3];
			_return pushBack ["cl3_taurus_navy_blue",100000*0.3];
			_return pushBack ["cl3_taurus_orange",100000*0.3];
			_return pushBack ["cl3_taurus_purple",100000*0.3];
			_return pushBack ["cl3_taurus_red",100000*0.3];
			_return pushBack ["cl3_taurus_sand",100000*0.3];
			_return pushBack ["cl3_taurus_silver",100000*0.3];
			_return pushBack ["cl3_taurus_yellow",100000*0.3];
		};
	};



	case "civ_truck":
	{
		_return =
		[
		    ["RDS_Van_01_transport_F",14000], //Truck lager 10lager
		    ["C_Van_01_fuel_F",17000], //Tanklaster 150lager
		    ["C_Van_01_box_F",20000], //Truck Boxer 150
		    ["I_Truck_02_transport_F",40000], //Zamak Transporter 250lager
		    ["DAR_4X4",40000], //MTV 4x4 200lager
		    ["O_Truck_02_fuel_F",70000], //Zamak Tank 450
		    ["O_Truck_02_covered_F",70000], //Zamak transport abgedeckt 10lager
		    ["O_Truck_03_transport_F",140000], //Tempest Transporter 650lager
		    ["O_Truck_03_fuel_F",140000], //Tempest Tank 650lager
		    ["O_Truck_03_covered_F",340000], //Tempest Transporter abgedeckt 850
		    ["O_Truck_03_device_F",670000], //Tempest GERÄT 750lager
		    ["B_Truck_01_transport_F",940000], //Hemet Transporter 750lager
		    ["B_Truck_01_fuel_F",670000], //Hemet Treibstoff 1000lager
		    ["B_Truck_01_covered_F",1070000], //Hemett Transporter abgedeckt 1200
		    ["B_Truck_01_box_F",1340000] //Hemet Transport 1500


		];
		if(license_civ_bus) then
		{
			_return pushBack ["A3L_Bus",100000];
		};
	};

	case "civ_air":
	{
		_return =
		[
			["C_Heli_Light_01_civil_F",170000],
			["B_Heli_Light_01_F",170000],
			["O_Heli_Transport_04_bench_F",500000],
			["O_Heli_Light_02_unarmed_F",500000],
			["I_Heli_light_03_unarmed_F",670000],
			["O_Heli_Transport_04_fuel_F",300000],
			["O_Heli_Transport_04_box_F",840000],
			["I_Heli_Transport_02_F",1000000],
			["B_Heli_Transport_03_unarmed_green_F",1670000],
			["GNT_C185",1000000],
			["GNT_C185F",1000000],
            ["sab_BI_An2",1000000],
            ["Sab_cz_An2",1000000],
            ["Sab_fd_An2",1000000],
            ["Sab_yel_An2",1000000],
            ["Sab_ana_An2",1000000],
            ["sab_AH_An2",1000000],
            ["sab_ca_An2",1000000],
            ["Sab_ru_An2",1000000],
            ["Sab_ee_An2",1000000],
            ["Sab_tk_An2",1000000],
            ["Sab_af_An2",1000000],
            ["Sab_A2_An2",1000000],
            ["Sab_sea_An2",1000000],
            ["Sab_sea2_An2",1000000],
            ["Sab_sea3_An2",1000000],
            ["Sab_sea4_An2",1000000],
            ["Sab_Amphi_An2",1000000],
			["MV22",1700000]
		];

		if(license_civ_donator) then
		{
			_return pushBack ["C_Heli_Light_01_civil_F",750000];
		};
	};

	case "civ_ship":
	{
		_return =
		[
			["C_Rubberboat",5000],
			["C_Boat_Civil_01_F",22000],
			["B_SDV_01_F",1000000],
            ["I_CBS_WaterShadow730_F",30000],
			["jetski_epoch_blu",15000]
		];
	};

	case "reb_car":
	{
		_return =
		[
			["C_Quadbike_01_black_F",800],
			["C_Offroad_01_F",10000],
			["O_MRAP_02_F",1000000],
			["B_MRAP_01_F",1000000],
			["B_Heli_Light_01_F",170000],
			["I_Heli_light_03_unarmed_F",670000],
			["B_Heli_Transport_03_unarmed_green_F",1670000],
			["O_Heli_Transport_04_bench_F",500000]
		];
	};

	case "tf_car":
	{
		if(license_cop_tf) then
		{
			_return pushBack ["B_G_Offroad_01_armed_F",5000000];
			_return pushBack ["B_Quadbike_01_F",2500];
			_return pushBack ["B_G_Offroad_01_F",15000];
			_return pushBack ["O_MRAP_02_F",2000000];
			_return pushBack ["B_MRAP_01_F",2000000];
			_return pushBack ["B_Heli_Light_01_F",250000];
			_return pushBack ["O_Heli_Light_02_unarmed_F",1500000];
			_return pushBack ["I_Heli_light_03_unarmed_F",2500000];
			_return pushBack ["I_Heli_Transport_02_F",3500000];
			_return pushBack ["O_Heli_Transport_04_F",10000000];
			_return pushBack ["O_Heli_Transport_04_bench_F",9000000];
			_return pushBack ["O_Heli_Transport_04_covered_F",12000000];
			_return pushBack ["B_Heli_Transport_03_unarmed_F",15000000];
		};
	};

	case "cop_car":
	{

		if(__GETC__(life_coplevel) > 1) then
		{
			_return pushBack ["max_Police_Quadbike",100];
			_return pushBack ["DAR_DAR_02FirebirdSSVPolice",1800];
			_return pushBack ["DAR_ChargerPolice",1800];

		};
		if(__GETC__(life_coplevel) > 2) then
		{
			_return pushBack ["DAR_TaurusPolice",3000];
			_return pushBack ["DAR_ExplorerPolice",5000];
			_return pushBack ["A3L_TaurusFPBLBPD",4000];
			_return pushBack ["A3L_TaurusFPBPDGM",4000];
		};

		if(__GETC__(life_coplevel) > 3) then
		{
			_return pushBack ["A3L_EvoXFPBLBPD",5000];
			_return pushBack ["IVORY_PRIUS_police",5000];
			_return pushBack ["tcg_hrlycop",1000];
		};

		if(__GETC__(life_coplevel) > 4) then
        {
        	_return pushBack ["DAR_CVPIPolice",5000];
        };
		if(__GETC__(life_coplevel) > 6) then
		{
			_return pushBack ["DAR_ChargerPoliceStateSlick",8000];
			_return pushBack ["DAR_EXplorerPoliceStealth",8000];
			_return pushBack ["A3L_EvoXFPBLBSO",8000];
			_return pushBack ["DAR_CVPIAuxiliary",8000];
			_return pushBack ["cl3_e60_m5_black",8000];

		};
	};
	case "cop_air":
	{
		if(__GETC__(life_coplevel) > 2) then
		{
			_return pushBack ["B_Heli_Light_01_F",12500];
		};
		if(__GETC__(life_coplevel) > 3) then
		{
			_return pushBack ["dezkit_b206_police",22500];
		};
		if(__GETC__(life_coplevel) > 4) then
        {
        	_return pushBack ["ARMSCor_A109LUH_B",22500];
        	_return pushBack ["O_Heli_Light_02_unarmed_F",15000];
        };
        if(__GETC__(life_coplevel) > 6) then
        {
            _return pushBack ["I_Heli_light_03_unarmed_F",20000];
            _return pushBack ["B_Heli_Transport_01_F",50000];
            _return pushBack ["B_Heli_Transport_03_unarmed_F",100000];
            _return pushBack ["dezkit_b206_fbi", 22500];
        };
	};

	case "cop_air_t":
	{
		if(license_cop_air) then
		{
			_return pushBack ["B_Heli_Light_01_F",75000];
		};
	};

	case "sek_hq":
	{
		if(license_cop_sek) then
		{
			_return pushBack ["DAR_ExplorerPoliceStealth",50000];
			_return pushBack ["DAR_SWATPolice",50000];
			_return pushBack ["I_MRAP_03_F",200000];
		};
	};

	case "cop_ship":
	{
		_return = [
			["B_Boat_Transport_01_F",3000],
			["C_Boat_Civil_01_police_F",20000],
			["B_Boat_Armed_01_minigun_F",75000],
			["B_SDV_01_F",100000]
		];
	};

	case "donator":
	{
		if(license_civ_donator) then
		{
			_return pushBack ["C_Van_01_box_F",100000*0.3];
			_return pushBack ["C_Van_01_fuel_F",130000*0.3];
			_return pushBack ["I_Truck_02_transport_F",200000*0.3];
			_return pushBack ["I_Truck_02_covered_F",300000*0.3];
			_return pushBack ["O_Truck_02_fuel_F",350000*0.3];
			_return pushBack ["O_Truck_03_transport_F",550000*0.3];
			_return pushBack ["DAR_MK23",550000*0.3];
			_return pushBack ["O_Truck_03_covered_F",650000*0.3];
			_return pushBack ["O_Truck_03_fuel_F",700000*0.3];
			_return pushBack ["O_Truck_03_device_F",4000000*0.3];
			_return pushBack ["B_Truck_01_transport_F",1000000*0.3];
			_return pushBack ["DAR_MK27T",1000000*0.3];
			_return pushBack ["B_Truck_01_covered_F",1500000*0.3];
			_return pushBack ["B_Truck_01_fuel_F",1700000*0.3];
			_return pushBack ["B_Truck_01_box_F",2200000*0.3];
			_return pushBack ["B_Truck_01_ammo_F",2500000*0.3];
			_return pushBack ["B_Quadbike_01_F",10000*0.3];
			_return pushBack ["C_Hatchback_01_F",15000*0.3];
			_return pushBack ["C_Offroad_01_F",25000*0.3];
			_return pushBack ["C_SUV_01_F",35000*0.3];
			_return pushBack ["C_Van_01_transport_F",50000*0.3];
			_return pushBack ["C_Hatchback_01_sport_F",50000*0.3];
			_return pushBack ["DAR_4X4",130000*0.3];
			_return pushBack ["O_MRAP_02_F",2000000*0.3];
			_return pushBack ["B_MRAP_01_F",2000000*0.3];
		};
	};
};
_return;