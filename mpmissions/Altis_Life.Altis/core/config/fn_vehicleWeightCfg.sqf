/*
	File: fn_vehicleWeightCfg.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration for vehicle weight.
*/
private["_className"];
_className = [_this,0,"",[""]] call BIS_fnc_param;

switch (_className) do
{
	case "B_Quadbike_01_F": {65};
	case "C_Offroad_01_F": {65};
	case "B_G_Offroad_01_F": {65};
	case "C_Hatchback_01_F": {40};
	case "cl_golf_mk2_black": {60};
	case "cl_golf_mk2_blue": {60};
	case "cl_golf_mk2_red": {60};	
	case "C_Hatchback_01_sport_F": {45};
	case "C_SUV_01_F": {50};
	case "cl_suv_black": {50};
	case "C_Van_01_transport_F": {100};
	case "I_G_Van_01_transport_F": {100};
	case "B_MRAP_01_F": {60};
	case "O_MRAP_02_F": {60};
	case "I_MRAP_03_F": {60};

	case "B_Heli_Light_01_F": {50}; // MH-9 Hummingbird
	case "O_Heli_Light_02_unarmed_F": {275}; // PO-30 Orca (Unarmed)
	case "ARMSCor_A109_Civ": {275}; // A109 (Unarmed)
	case "I_Heli_light_03_unarmed_F": {100}; // WY-55 Hellcat (Green)
	case "C_Heli_Light_01_civil_F": {50}; // M-900
	case "O_Heli_Transport_04_F": {10}; // Mi-290 Taru
	case "O_Heli_Transport_04_bench_F": {75}; // Mi-290 Taru (Bench)
	case "O_Heli_Transport_04_covered_F": {150}; // Mi-290 Taru (Transport)
	case "I_Heli_Transport_02_F": {800}; // CH-49 Mohawk
	case "O_Heli_Transport_04_box_F": {1000}; // Mi-290 Taru (Box)
	case "B_Heli_Transport_03_unarmed_F": {1200}; // CH-67 Huron (Black)

	case "C_Van_01_box_F": {150}; //Truck Boxer
	case "C_Van_01_fuel_F": {150}; //Truck Fuel
	case "I_Truck_02_transport_F": {250}; //Zamak Transport
	case "I_Truck_02_covered_F": {400}; //Zamak Transport (covered)
	case "O_Truck_02_fuel_F": {500}; //Zamak fuel
	case "O_Truck_03_transport_F": {500}; //Tempest Transport
	case "DAR_MK23": {500}; //MK 23
	case "O_Truck_03_covered_F": {1000}; //Tempest Transport (covered)
	case "O_Truck_03_fuel_F": {750}; //Tempest Fuel
	case "O_Truck_03_device_F": {1000}; //Tempest Device
	case "B_Truck_01_transport_F": {750}; //HEMTT Transport
	case "DAR_MK27T": {750}; //MK27
	case "B_Truck_01_covered_F": {1000}; //HEMTT Transport (covered)
	case "B_Truck_01_fuel_F": {1000}; //HEMTT Fuel
	case "B_Truck_01_box_F": {2000}; //HEMTT Boxed
	case "B_Truck_01_ammo_F": {1000}; //HEMTT ATOM

	case "C_Rubberboat": {75};
	case "O_Boat_Armed_01_hmg_F": {175};
	case "DAR_4X4": {200};
	case "cl3_range_rover_aqua": {65};
	case "cl3_range_rover_babyblue": {65};
	case "cl3_range_rover_babypink": {65};
	case "cl3_range_rover_black": {65};
	case "cl3_range_rover_blue": {65};
	case "cl3_range_rover_burgundy": {65};
	case "cl3_range_rover_camo": {65};
	case "cl3_range_rover_camo_urban": {65};
	case "cl3_range_rover_cardinal": {65};
	case "cl3_range_rover_dark_green": {65};
	case "cl3_range_rover_gold": {65};
	case "cl3_range_rover_green": {65};
	case "cl3_range_rover_grey": {65};
	case "cl3_range_rover_lavender": {65};
	case "cl3_range_rover_light_blue": {65};
	case "cl3_range_rover_light_yellow": {65};
	case "cl3_range_rover_lime": {65};
	case "cl3_range_rover_marina_blue": {65};
	case "cl3_range_rover_navy_blue": {65};
	case "cl3_range_rover_orange": {65};
	case "cl3_range_rover_purple": {65};
	case "cl3_range_rover_red": {65};
	case "cl3_range_rover_sand": {65};
	case "cl3_range_rover_silver": {65};
	case "cl3_range_rover_violet": {65};
	case "cl3_range_rover_white": {65};
	case "cl3_range_rover_yellow": {65};
	case "BAF_Offroad_w": {200};
	case "MV22": {1000};
	case "GNT_C185F": {100};
	case "GNT_C185": {100};
	case "DAR_M1151WoodlandUA": {50};
	case "BAF_Offroad_D": {50};
	case "LandRover_CZ_EP1": {50};	
	case "DAR_M1151_Deploy": {50};
	case "B_Boat_Armed_01_minigun_F": {175};
	case "I_Boat_Armed_01_minigun_F": {175};
	case "B_G_Boat_Transport_01_F": {45};
	case "B_Boat_Transport_01_F": {45};
	case "C_Boat_Civil_01_F": {250};
	case "C_Boat_Civil_01_police_F": {85};
	case "C_Boat_Civil_01_rescue_F": {85};
	case "B_Truck_01_mover_F": {1000};
	case "I_Truck_02_medical_F": {100};
	case "O_Truck_03_medical_F": {100};
	case "B_Truck_01_medical_F": {100};
	case "Land_CargoBox_V1_F": {10000};
	case "Box_IND_Grenades_F": {350};
	case "B_supplyCrate_F": {700};
	case "SAL_IROCCivBlack": {50};
	case "SAL_IROCCivBlue": {50};
	case "SAL_IROCCivRed": {50};
	case "SAL_IROCCiv": {50};
	case "SAL_IROCCivSilver": {50};
	case "DAR_FusionCivBlack": {50};
	case "DAR_FusionCivRed": {50};
	case "DAR_FusionCivBlue": {50};
	case "DAR_FusionCiv": {50};
	case "SAL_AudiCivBlack": {50};
	case "SAL_AudiCivRed": {50};	
	case "SAL_AudiCivSilver": {50};
	case "SAL_AudiCiv": {50};		
	case "DAR_ChallengerCivBlack": {50};
	case "DAR_ChallengerCivOrange": {50};
	case "DAR_ChallengerCivRed": {50};
	case "DAR_ChallengerCivWhite": {50};
	case "DAR_Charger_Blue": {50};
	case "DAR_ChargerCiv": {50};
	case "CargoNet_01_barrels_F": {0};
	case "Land_CargoBox_V1_F": {0};
	case "Land_Cargo10_military_green_F": {0};
	case "D41_Trawler": {5000};
	case "Land_Wreck_Traw_F": {10000000};
    case "Land_Wreck_Traw2_F": {10000000};
    case "Sab_sea_An2": {1000};
    case "Sab_sea2_An2": {1000};
    case "Sab_sea3_An2": {1000};
    case "Sab_sea4_An2": {1000};
    case "Sab_Amphi_An2": {1000};
    case "sab_BI_An2": {1000};
    case "Sab_cz_An2": {1000};
    case "Sab_fd_An2": {1000};
    case "Sab_yel_An2": {1000};
    case "Sab_ana_An2": {1000};
    case "sab_AH_An2": {1000};
    case "sab_ca_An2": {1000};
    case "Sab_ru_An2": {1000};
    case "Sab_ee_An2": {1000};
    case "Sab_tk_An2": {1000};
    case "Sab_af_An2": {1000};
    case "Sab_A2_An2": {1000};
    case "B_SDV_01_F": {120};
	default {10};
};
