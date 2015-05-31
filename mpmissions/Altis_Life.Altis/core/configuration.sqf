#include <macro.h>
/*
	Master Life Configuration File
	This file is to setup variables for the client, there are still other configuration files in the system

*****************************
****** Backend Variables *****
*****************************
*/
life_query_time = time;
life_action_delay = time;
life_trunk_vehicle = Objnull;
life_session_completed = false;
life_garage_store = false;
life_session_tries = 0;
life_net_dropped = false;
life_hit_explosive = false;
life_siren_active = false;
life_siren2_active = false;
life_clothing_filter = 0;
life_clothing_uniform = -1;
life_redgull_effect = time;
life_is_processing = false;
life_bail_paid = false;
life_impound_inuse = false;
life_action_inUse = false;
life_spikestrip = ObjNull;
life_mauer = ObjNull;
life_schranke = ObjNull;
life_Blitzer = ObjNull;
D41_TrawlerHorn = false;
//life_respawn_timer = 1; //Scaled in minutes
life_knockout = false;
life_interrupted = false;
life_respawned = false;
life_removeWanted = false;
life_sit = false;
life_action_gather = false;
life_tracked = [];
life_fatigue = 0.5; //Set the max fatigue limit (50%)
life_schutz = false;
life_channel_send = false;
life_TankLaster = 1;
nn_last_vehicles = [];
nn_empInUse = false;
life_fadeSound = false;
TrawlerHorn = false;
life_kw_athira = false;
life_kw_kavala = false;
life_kw_sofia = false;
life_kw_kavala = false;
joinmode = 0;
life_maskiert = 0;
RLP_BlitzerCounter = 0;


/*
*****************************
****** Maskieren *****
*****************************
*/
RLP_goggles_Array = ["G_Balaclava_blk","G_Balaclava_combat","G_Balaclava_lowprofile","G_Bandanna_blk","G_Balaclava_oli","G_Bandanna_aviator","G_Bandanna_blk","G_Bandanna_khk","G_Bandanna_oli","G_Bandanna_shades","G_Bandanna_sport","G_Bandanna_tan","G_Bandanna_shades","G_Bandanna_beast","G_Balaclava_blk"];
RLP_uniform_Array = ["U_O_GhillieSuit","U_B_GhillieSuit","U_I_GhillieSuit"];
RLP_headgear_Array = ["H_Shemag_olive","H_Shemag_khk","H_Shemag_tan","H_Shemag_olive_hs","H_ShemagOpen_khk","H_ShemagOpen_tan","H_Bandanna_camo","H_CrewHelmetHeli_I","H_CrewHelmetHeli_B"];

//////
//Persistent Saving
__CONST__(life_save_civ,TRUE); //Save weapons for civs?
__CONST__(life_save_yinv,TRUE); //Save Y-Inventory for civs and cops? (Medics excluded for now)

//Revive constant variables.
__CONST__(life_revive_cops,FALSE); //Set to false if you don't want cops to be able to revive downed players.
__CONST__(life_revive_fee,10000); //Fee for players to pay when revived.

//House Limit
__CONST__(life_houseLimit,8); //Maximum amount of houses a player can buy (TODO: Make Tiered licenses).

//Gang related stuff?
__CONST__(life_gangPrice,2000000); //Price for creating a gang (They're all persistent so keep it high to avoid 345345345 gangs).
__CONST__(life_gangUpgradeBase,1500000); //MASDASDASD
__CONST__(life_gangUpgradeMultipler,2.5); //BLAH

__CONST__(life_enableFatigue,true); //Enable / Disable the ARMA 3 Fatigue System

//Uniform price (0),Hat Price (1),Glasses Price (2),Vest Price (3),Backpack Price (4)
life_clothing_purchase = [-1,-1,-1,-1,-1];

/*
*****************************
****** Weight Variables *****
*****************************
*/
life_maxWeight = 40; //Identifies the max carrying weight (gets adjusted throughout game when wearing different types of clothing).
life_maxWeightT = 40; //Static variable representing the players max carrying weight on start.
life_carryWeight = 0; //Represents the players current inventory weight (MUST START AT 0).

/*
*****************************
****** Life Variables *******
*****************************
*/
life_net_dropped = false;
life_hit_explosive = false;
life_siren_active = false;
life_bank_fail = false;
life_use_atm = true;
life_use_atm_2 = true;
life_is_arrested = false;
life_delivery_in_progress = false;
life_action_in_use = false;
life_thirst = 100;
life_hunger = 100;
life_toilet = 100;
__CONST__(life_RLP_paycheck_period,5); //Five minutes
life_RLP_handgeld = 0;
__CONST__(life_impound_car,1500);
__CONST__(life_impound_boat,2000);
__CONST__(life_impound_air,2500);
life_istazed = false;
RLP_gummi = false;
life_my_gang = ObjNull;
life_god = false; //Add this
life_frozen = false; //And this
life_markers = false; //Finally this
life_drugged_cocaine = -1;
life_drugged_cocaine_duration = 10;
life_drugged_weed = -1;
life_drugged_weed_duration = 3;
life_nlrtimer_stop = false;
life_nlrtimer_running = false;

life_vehicles = [];
bank_robber = [];
switch (playerSide) do
{
	case west:
	{
		life_RLP_atmgeld = 100000; //Starting Bank Money    Polizei
		life_RLP_paycheck = 720;
	};
	case civilian:
	{
		life_RLP_atmgeld = 7500; //Starting Bank Money   ZIVIS
		life_RLP_paycheck = 360; //Paycheck Amount
	};

	case independent:
	{
		life_RLP_atmgeld = 100000;           //Medic
		life_RLP_paycheck = 720;
	};

	case east:
	{
		life_RLP_atmgeld = 100000; //Starting Bank Money  ADAC
		life_RLP_paycheck = 720; //Paycheck Amount
	};
};

/*
	Master Array of items?
*/
life_vShop_rentalOnly = ["B_MRAP_01_hmg_F","O_MRAP_02_hmg_F"];
__CONST__(life_vShop_rentalOnly,life_vShop_rentalOnly); //These vehicles can never be bought and only 'rented'. Used as a balancer & money sink. If you want your server to be chaotic then fine.. Remove it..

life_inv_items =
[
	"life_inv_oilu",
	"life_inv_oilp",
	"life_inv_heroinu",
	"life_inv_heroinp",
	"life_inv_cannabis",
	"life_inv_marijuana",
	"life_inv_apple",
	"life_inv_rabbit",
	"life_inv_salema",
	"life_inv_ornate",
	"life_inv_mackerel",
	"life_inv_tuna",
	"life_inv_mullet",
	"life_inv_catshark",
	"life_inv_turtle",
	"life_inv_fishingpoles",
	"life_inv_water",
	"life_inv_donuts",
	"life_inv_turtlesoup",
	"life_inv_coffee",
	"life_inv_fuelF",
	"life_inv_fuelE",
	"life_inv_pickaxe",
	"life_inv_copperore",
	"life_inv_ironore",
	"life_inv_ironr",
	"life_inv_copperr",
	"life_inv_sand",
	"life_inv_salt",
	"life_inv_saltr",
	"life_inv_glass",
	"life_inv_tbacon",
	"life_inv_lockpick",
	"life_inv_handcuffkey",
	"life_inv_redgull",
	"life_inv_peach",
	"life_inv_diamond",
	"life_inv_coke",
	"life_inv_cokep",
	"life_inv_diamondr",
	"life_inv_spikeStrip",
	"life_inv_rock",
	"life_inv_cement",
	"life_inv_goldbar",
	"life_inv_blastingcharge",
	"life_inv_boltcutter",
	"life_inv_defusekit",
	"life_inv_storagesmall",
	"life_inv_storagebig",
	"life_inv_tracker",
	"life_inv_getreideu",
	"life_inv_holzu",
	"life_inv_hopfenu",
	"life_inv_schwefelu",
	"life_inv_silberu",
	"life_inv_tabaku",
	"life_inv_traubenu",
	"life_inv_zinnu",
	"life_inv_zuckeru",
	"life_inv_getreideip",
	"life_inv_tabakip",
	"life_inv_zuckerip",
	"life_inv_eisenp",
	"life_inv_getreidep",
	"life_inv_holzp",
	"life_inv_hopfenp",
	"life_inv_schwefelp",
	"life_inv_silberp",
	"life_inv_tabakp",
	"life_inv_traubenp",
	"life_inv_zinnp",
	"life_inv_zuckerp",
	"life_inv_bronze",
	"life_inv_schmuck",
	"life_inv_pbrau",
	"life_inv_spulver",
	"life_inv_kkugel",
	"life_inv_pkugel",
	"life_inv_speedbomb",
	"life_inv_uran1",
	"life_inv_uranip",
	"life_inv_verschluss",
	"life_inv_laufa",
	"life_inv_laufb",
	"life_inv_laufc",
	"life_inv_laufd",
	"life_inv_griff",
	"life_inv_magazina",
	"life_inv_magazinb",
	"life_inv_feder",
	"life_inv_gasantrieb",
	"life_inv_gaskolben",
	"life_inv_antrieb",
	"life_inv_abnahme",
	"life_inv_mauer",
	"life_inv_zyankali",
	"life_inv_schranke",
	"life_inv_diaper",
	"life_inv_dirtydiaper",
	"life_inv_henraw",
    "life_inv_roosterraw",
    "life_inv_sheepraw",
    "life_inv_goatraw",
    "life_inv_uwsl",
	"life_inv_krabben",
	"life_inv_krabbenv",
	"life_inv_grab",
	"life_inv_grabv",
	"life_inv_reli",
	"life_inv_reliv",
	"life_inv_blitzer",
	"life_inv_gas",
	"life_inv_gasv",
	"life_inv_gold",
	"life_inv_goldv",
	"life_inv_knochen",
    "life_inv_knochenv",
    "life_inv_pfandflascheu",
    "life_inv_pfandflaschep",
    "life_inv_datenu",
    "life_inv_datenp",
    "life_inv_reichsgoldu",
    "life_inv_reichsgoldp",
    "life_inv_erdenu",
    "life_inv_erdenp",
    "life_inv_bernsteinu",
    "life_inv_bernsteinp",
    "life_inv_datennsau",
    "life_inv_datennsap",
    "life_inv_reliefenu",
    "life_inv_reliefenp",
    "life_inv_uranuweu",
    "life_inv_uranuwep"
];

//Setup variable inv vars.
{missionNamespace setVariable[_x,0];} foreach life_inv_items;

life_fnc_D41_Anker =
	{
		if((vehicle player isKindOf "ship") && ((speed vehicle player) < 4) && ((speed vehicle player) > -4) && !((speed vehicle player) == 0)) then {(vehicle player) setVelocity [0, 0, 0];};
	};


//Licenses [license var, civ/cop]
life_licenses =
[

	["license_cop_air","cop"],
	["license_cop_sek","cop"],
	["license_cop_cg","cop"],
	["license_cop_tf","cop"],
	["license_civ_sec","civ"],
	["license_med_air","med"],
	["license_civ_donator","civ"],
	["license_civ_home","civ"],
	["license_civ_rebel","civ"],
	["license_civ_bm","civ"],
	["license_civ_gun","civ"],
	["license_civ_driver","civ"],
	["license_civ_truck","civ"],
	["license_civ_air","civ"],
	["license_civ_boat","civ"],
	["license_civ_dive","civ"],
	["license_civ_heroin","civ"],
	["license_civ_coke","civ"],
	["license_civ_marijuana","civ"],
	["license_civ_oil","civ"],
	["license_civ_diamond","civ"],
	["license_civ_copper","civ"],
	["license_civ_iron","civ"],
	["license_civ_sand","civ"],
	["license_civ_salt","civ"],
	["license_civ_cement","civ"],
	["license_civ_brauer","civ"],
	["license_civ_nudeln","civ"],
	["license_civ_wein","civ"],
	["license_civ_zigaretten","civ"],
	["license_civ_zucker","civ"],
	["license_civ_whiskey","civ"],
	["license_civ_zigarren","civ"],
	["license_civ_rum","civ"],
	["license_civ_holz","civ"],
	["license_civ_schwefel","civ"],
	["license_civ_silber","civ"],
	["license_civ_zinn","civ"],
	["license_civ_gusseisen","civ"],
	["license_civ_bronze","civ"],
	["license_civ_schmuck","civ"],
	["license_civ_pbrau","civ"],
	["license_civ_kkugel","civ"],
	["license_civ_pkugel","civ"],
	["license_civ_spulver","civ"],
	["license_civ_uran2","civ"],
	["license_civ_uran3","civ"],
	["license_civ_uran4","civ"],
	["license_civ_uran5","civ"],
	["license_civ_uranip","civ"],
	["license_civ_good","civ"],
	["license_civ_bus","civ"],
	["license_civ_taxi","civ"],
	["license_adac_car","adac"],
    ["license_adac_air","adac"],
    ["license_civ_hunting","civ"],
    ["license_med_mohawk","med"],
    ["license_civ_krabben", "civ"],
    ["license_civ_grab", "civ"],
    ["license_civ_reli", "civ"],
    ["license_civ_gas", "civ"],
    ["license_civ_gold", "civ"],
    ["license_civ_knochen", "civ"],
    ["license_civ_pfandflasche", "civ"],
    ["license_civ_daten", "civ"],
    ["license_civ_datennsa", "civ"],
    ["license_civ_reichsgold", "civ"],
    ["license_civ_erden", "civ"],
    ["license_civ_bernstein", "civ"],
    ["license_civ_reliefen", "civ"],
    ["license_civ_uranuwe", "civ"]
];

//Setup License Variables
{missionNamespace setVariable[(_x select 0),false];} foreach life_licenses;

life_prof =
[
//civ
["Oil_Prof","civ"],
["Gas_Prof","civ"],
["Iron_Prof","civ"],
["Copper_Prof","civ"],
["Heroin_Prof","civ"],
["Canabis_Prof","civ"],
["Cocain_Prof","civ"],
["Salt_Prof","civ"],
["Fruit_Prof","civ"],
["Diamond_Prof","civ"],
["Rock_Prof","civ"],
["Sand_Prof","civ"],
["Wein_Prof","civ"],
["Zucker_Prof","civ"],
["Getreide_Prof","civ"],
["Bier_Prof","civ"],
["Tabak_Prof","civ"],
["Zinn_Prof","civ"],
["Silber_Prof","civ"],
["Holz_Prof","civ"],
["Schwefel_Prof","civ"],
["Uran_Prof","civ"],
["Grab_Prof","civ"],
["Reli_Prof","civ"],
["Krabben_Prof","civ"],
["Fishing_Prof","civ"],
["Thief_Prof","civ"],
["Pfandflasche_Prof","civ"],
["daten_Prof","civ"],
["datennsa_Prof","civ"],
["reichsgold_Prof","civ"],
["erden_Prof","civ"],
["bernstein_Prof","civ"],
["reliefen_Prof","civ"],
["uranuwe_Prof","civ"],
//Cop
["Ticket_Prof","cop"],
["Arrest_Prof","cop"],
["Impound_Prof","cop"]
];


//Setup License Variables
{missionNamespace setVariable[(_x select 0),[1,0]];} foreach life_prof;

life_dp_points = ["dp_1","dp_2","dp_3","dp_4","dp_5","dp_6","dp_7","dp_8","dp_9","dp_10","dp_11","dp_12","dp_13","dp_14","dp_15","dp_16","dp_17","dp_18","dp_19","dp_20","dp_21","dp_22","dp_23","dp_24","dp_25"];
//[shortVar,reward]
life_illegal_items = [
["heroinu",2263],
["heroinp",4527],
["grab",2263],
["grabv",4527],
["cocaine",2674],
["cocainep",5348],
["cannabis",2182],
["marijuana",4365],
["turtle",30077],
["blastingcharge",100000],
["boltcutter",75000],
["getreideip",4244],
["zuckerip",4922],
["tabakip",3977],
["kkugel",13987],
["spulver",11408],
["pbrau",24701],
["pkugel",62727],
["goldbar",75000],
["uranip",12598],
["gold",6000],
["datenu",500],
["datenp",3000],
["datennsau",500],
["datennsap",3500],
["reichsgoldu",3000],
["bernsteinu",500],
["bernsteinp",2300],
["uranuweu",500],
["uranuwep",2500]
];

/*
	Resources list

	to remove the ability to gather a specific resource just comment it out on the list (all zones will be deactivated)
*/
resource_list = [
	"apple",
	"peach",
	"heroinu",
	"grab",
	"reli",
	"cocaine",
	"cannabis",
	"methu",
	"traubenu",
	"zuckeru",
	"getreideu",
	"hopfenu",
	"tabaku",
	"copperore",
	"ironore",
	"salt",
	"sand",
    "diamond",
    "oilu",
	"rock",
	"zinnu",
	"silberu",
	"holzu",
	"schwefelu",
	"uran1",
	"krabben",
	"pfandflascheu",
	"datenu",
	"datennsau",
	"reichsgoldu",
	"erdenu",
	"bernsteinu",
	"reliefenu",
	"knochen",
	"uranuweu"
];


/*
	Sell / buy arrays
*/
sell_array =
[

	["apple",25],
	["salema",15],
	["ornate",20],
	["mackerel",30],
	["tuna",10],
	["mullet",40],
	["catshark",50],
	["rabbit",5],
	["turtle",3007],
	["water",2],
	["coffee",2],
	["turtlesoup",10],
	["donuts",4],
	["tbacon",4],
	["lockpick",1],
	["handcuffkey",1],
	["pickaxe",5],
	["redgull",5],
	["peach",5],
	["fuelF",10],
	["spikeStrip",1],
	["tracker",1],
	["goldbar",125000],
	["cocainep",7348],
	["heroinp",6527],
	["marijuana",5365],
	["iron_r",2517],
	["copper_r",2046],
	["salt_r",3759],
	["glass",1368],
	["oilp",2571],
	["cement",3342],
	["diamondc",4866],
	["eisenp",3053],
	["getreidep",2210],
	["holzp",3248],
	["hopfenp",3540],
	["schwefelp",3222],
	["silberp",4566],
	["tabakp",4577],
	["traubenp",4006],
	["zinnp",3274],
	["zuckerp",3565],
	["schmuck",14825],
	["bronze",13375],
	["getreideip",4244],
	["zuckerip",4922],
	["tabakip",3977],
	["kkugel",13987],
	["spulver",11408],
	["pbrau",24701],
	["pkugel",62727],
	["uranip",45045],
	["uran5",31531],
	["mauer",20],
	["zyankali",0],
	["schranke",20],
	["henraw",3000],
    ["roosterraw",3000],
    ["sheepraw",3000],
    ["goatraw",3000],
    ["rabbitraw",3000],
    ["uwsl",500],
    ["krabben",1500],
    ["krabbenv",3500],
    ["grab",1500],
    ["grabv",4866],
    ["reli",2000],
    ["reliv",5500],
    ["blitzer",10],
    ["gas",2000],
    ["gasv",5000],
    ["goldv",5000],
    ["knochenv",5000],
    ["pfandflascheu",500],
    ["pfandflaschep",2500],
    ["datenu",500],
    ["datenp",3000],
    ["datennsau",500],
    ["datennsap",3500],
    ["reichsgoldu",500],
    ["reichsgoldp",3000],
    ["erdenu",500],
    ["erdenp",2300],
    ["bernsteinu",500],
    ["bernsteinp",2300],
    ["reliefenu",2200],
    ["reliefenp",500],
    ["uranuweu",500],
    ["uranuwep",2500]

];
__CONST__(sell_array,sell_array);

buy_array =
[
	["apple",25],
	["rabbit",75],
	["salema",150],
	["ornate",200],
	["mackerel",300],
	["tuna",1000],
	["mullet",400],
	["catshark",500],
	["water",10],
	["turtlesoup",2500],
	["donuts",12],
	["coffee",10],
	["tbacon",5],
	["lockpick",50000],
	["handcuffkey",2000],
	["pickaxe",100],
	["redgull",700],
	["fuelF",100],
	["peach",25],
	["spikeStrip",1250],
	["blastingcharge",50000],
	["boltcutter",15000],
	["defusekit",1250],
	["storagesmall",350000],
	["storagebig",700000],
	["tracker",5000],
	["hopfenp",10000],
	["traubenp",10000],
	["speedbomb",2000000],
	["mauer",1250],
	["zyankali",15000000],
	["schranke",1250],
	["diaper",25],
	["uwsl",500000],
    ["blitzer",500]

];
__CONST__(buy_array,buy_array);

life_weapon_shop_array =
[
	["hgun_P07_snds_F",0],
	["hgun_P07_F",0],
	["hgun_Rook40_F",0],
	["hgun_Pistol_heavy_01_F",0],
	["SMG_01_F",0],
	["arifle_sdar_F",0],
	["arifle_Mk20C_F",0],
	["arifle_TRG21_F",0],
	["arifle_TRG20_F",0],
	["arifle_Katiba_F",0],
	["arifle_Katiba_C_F",0],
	["arifle_MXC_Black_F",0],
	["arifle_MX_Black_F",0],
	["arifle_MXM_Black_F",0],
	["arifle_MXC_F",0],
	["arifle_MX_F",0],
	["arifle_MXM_F",0],
	["SMG_02_F",0],
	["srifle_LRR_LRPS_F",0],
	["srifle_EBR_F",0],
	["arifle_MX_SW_Black_F",0],
	["arifle_MX_SW_F",0],
	["LMG_Zafir_F",0],
	["srifle_GM6_F",0],

	["muzzle_snds_M",0],
	["muzzle_snds_L",0],
	["muzzle_snds_H",0],
	["optic_Aco_smg",0],
	["optic_ACO_grn",0],
	["optic_Aco",0],
	["optic_Arco",0],
	["optic_Hamr",0],
	["optic_Holosight",0],
	["optic_Holosight_smg",0],
	["optic_SOS",0],
	["optic_LRPS",0],
	["optic_MRCO",0],
	["optic_DMS",0],
	["optic_NVS",0],
	["acc_pointer_IR",0],
	["acc_flashlight",0],
	["optic_Yorris",0],

	["HandGrenade_Stone",0],

	["Rangefinder",0],
	["Binocular",0],
	["ItemGPS",0],
	["ToolKit",0],
	["FirstAidKit",0],
	["Medikit",0],
	["NVGoggles",0],
	["NVGoggles_OPFOR",0],
	["ItemMap",0],
	["ItemCompass",0],
	["ItemWatch",0],
	["DemoCharge_Remote_Mag",0],
	["SLAMDirectionalMine_Wire_Mag",0],
	["MineDetector",0],

	["5Rnd_127x108_Mag",0],
	["5Rnd_127x108_APDS_Mag",0],
	["150Rnd_762x51_Box",0],
	["100Rnd_65x39_caseless_mag",0],
	["7Rnd_408_Mag",0],
	["20Rnd_762x51_Mag",0],
	["30Rnd_45ACP_Mag_SMG_01",0],
	["30Rnd_9x21_Mag",0],
	["30Rnd_556x45_Stanag",0],
	["20Rnd_762x51_Mag",0],
	["30Rnd_65x39_caseless_green",0],
	["16Rnd_9x21_Mag",0],
	["6Rnd_45ACP_Cylinder",0],
	["20Rnd_556x45_UW_mag",0],
	["9Rnd_45ACP_Mag",0],
	["11Rnd_45ACP_Mag",0],
	["30Rnd_556x45_Stanag_Tracer_Red",0]
];
__CONST__(life_weapon_shop_array,life_weapon_shop_array);

life_garage_prices =
[
	["C_Kart_01_Blu_F",1500],
	["C_Kart_01_Fuel_F",1500],
	["C_Kart_01_Red_F",1500],
	["C_Kart_01_Vrana_F",1500],
	["B_Quadbike_01_F",0],
	["C_Offroad_01_F",2000],
	["C_SUV_01_F",2500],
	["C_Hatchback_01_F",3000],
	["C_Hatchback_01_sport_F",50000],
	["C_Van_01_transport_F",10000],
	["C_Van_01_box_F",15000],
	["I_Truck_02_transport_F",17500],
	["I_Truck_02_covered_F",20000],
	["I_Truck_02_medical_F",2500],
	["O_Truck_03_transport_F",22500],
	["O_Truck_03_covered_F",27500],
	["O_Truck_03_medical_F",4500],
	["O_Truck_03_device_F",50000],
	["B_Truck_01_transport_F",25000],
	["B_Truck_01_covered_F",27500],
	["B_Truck_01_medical_F",6000],
	["B_Truck_01_box_F",30000],
	["B_Truck_01_ammo_F",25000],
	["C_Rubberboat",4000],
	["C_Boat_Civil_01_F",5000],
	["B_SDV_01_F",10000],
	["B_Boat_Transport_01_F",1000],
	["C_Boat_Civil_01_police_F",2000],
	["B_Boat_Armed_01_minigun_F",7500],
	["B_Heli_Light_01_F",15000],
	["O_Heli_Light_02_unarmed_F",25000],
	["I_Heli_Transport_02_F",50000],
	["B_Heli_Transport_01_F",50000],
	["I_Heli_light_03_unarmed_F",50000],
	["B_G_Offroad_01_armed_F",125000],
	["O_MRAP_02_F",150000],
	["O_MRAP_02_hmg_F",100000],
	["B_MRAP_01_F",5000],
	["B_MRAP_01_hmg_F",50000],
	["I_MRAP_03_F",25000],
	["I_MRAP_03_hmg_F",50000],
	["A3L_Bus",10],
	["a3l_towtruck",40000],
	["a3l_f350",50000],
	["IVDRY_CRJ200_BASE",75000],
	["IVDRY_CRJ200_1",75000]
];
__CONST__(life_garage_prices,life_garage_prices);

life_garage_sell =
[
	["C_Kart_01_Blu_F",1500],
	["C_Kart_01_Fuel_F",1500],
	["C_Kart_01_Red_F",1500],
	["C_Kart_01_Vrana_F",1500],
	["B_Quadbike_01_F",500],
	["C_Offroad_01_F",5000],
	["C_SUV_01_F",7500],
	["C_Hatchback_01_F",6250],
	["C_Hatchback_01_sport_F",10000],
	["C_Van_01_transport_F",25000],
	["C_Van_01_box_F",50000],
	["I_Truck_02_transport_F",50000],
	["I_Truck_02_covered_F",75000],
	["O_Truck_03_transport_F",125000],
	["O_Truck_03_covered_F",225000],
	["O_Truck_03_device_F",500000],
	["B_Truck_01_transport_F",150000],
	["B_Truck_01_covered_F",200000],
	["B_Truck_01_box_F",300000],
	["B_Truck_01_fuel_F",250000],
	["O_Truck_03_fuel_F",175000],
	["O_Truck_02_fuel_F",100000],
	["B_Truck_01_ammo_F",200000],
	["C_Van_01_fuel_F",50000],
	["C_Rubberboat",2500],
	["C_Boat_Civil_01_F",11000],
	["B_SDV_01_F",500000],
	["B_Boat_Transport_01_F",1500],
	["C_Boat_Civil_01_police_F",10000],
	["B_Boat_Armed_01_minigun_F",37500],
	["B_Heli_Light_01_F",75000],
	["O_Heli_Light_02_unarmed_F",100000],
	["I_Heli_Transport_02_F",100000], // CH-49 Mohawk
	["B_Heli_Transport_01_F",100000],
	["I_Heli_light_03_unarmed_F",100000],
    ["B_Heli_Transport_03_unarmed_F",13000000], // CH-67 Huron (Black)
	["C_Heli_Light_01_civil_F",75000],
	["O_Heli_Transport_04_bench_F",100000],
	["O_Heli_Transport_04_covered_F",100000],
	["B_G_Offroad_01_armed_F",50000],
	["O_MRAP_02_F",30000],
	["O_MRAP_02_hmg_F",100000],
	["B_MRAP_01_F",30000],
	["B_MRAP_01_hmg_F",100000],
	["I_MRAP_03_F",30000],
	["I_MRAP_03_hmg_F",100000],
	["A3L_Bus",10],
	["a3l_towtruck",40000],
	["a3l_f350",50000],
	["IVDRY_CRJ200_BASE",75000],
	["IVDRY_CRJ200_1",75000]
];
__CONST__(life_garage_sell,life_garage_sell);