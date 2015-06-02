/*
	File: fn_clothing_bruce.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration file for Bruce's Outback Outfits.
*/
private["_filter"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Geklaute Kleidung"];

switch (_filter) do
{
	//Uniformen
	case 0:
	{
		[
		["U_C_Poloshirt_burgundy","Poloshirt Burgund",50],
		["U_C_Poor_1","Poor",50],
		["U_C_WorkerCoveralls","Arbeiteranzug",50],
		["U_C_HunterBody_grn","Jaeger Outfit",50],
		["U_C_Jurnalist","Presse",50],
		["A3L_Suit_Uniform","Suit Uniform",50],
		["A3L_Character_Uniform","Character Uniform",50],
		["arma3","Arma Polo Shirt",50],
		["arma3black","Arma Polo Shirt Schwarz",50],
		["tacobell","Delgado Shirt",50],
		["HI1","Hawaii Shirt",50],
		["A3L_SkullBlack","Skull",50],
		["A3L_Poop2day","I Pooped Today",50],
		["RastaCiv","Rasta Outfit",50],
		["RFShirt","Red Faction Shirt",50],
		["hanacd","Hannes Shirt",50],
		["A3L_Dude:Outfit","Dude Outfit",50],
		["A3L_Farmer_Outfit","Farmer Outfit",50],
		["TMBass_uni","Touch My Bass",50],
		["vacationshirt_uni","Vacatation Shirt",50],
		["checkered_uni","Checker Polo",50],
		["kingfish_uni","King Fish Polo",50],
		["sohoku_uni"," Sohoku Polo",50],
		["poloranger_uni","Polo Grün",50],
		["BlGyBr_uni","Polo Bl GY BR",50],
		["rds_uniform_Worker1","Worker 1",50],
		["rds_uniform_Worker2","Worker 2",50],
		["rds_uniform_Worker3","Worker 3",50],
		["rds_uniform_Worker4","Worker 4",50],
		["rds_uniform_Functionary1","Functionary 1",50],
		["U_BG_Guerilla2_2","Wahnschaffe-Kleidung",100]

		];
	};
	
	//Kopfbedeckungen
	case 1:
	{
		[
			["A3L_sombrero","Sombrero",25],
			["A3L_mexicanhat","Mexican Hat",25],
			["A3L_russianhat","Ushanka",25],
			["H_caf_ag_boonie_01","Booniehat (EUR1)",25],
			["H_caf_ag_boonie_02","Booniehat (EUR2)",25],
			["H_caf_ag_beanie","Beanie",25],
			["H_caf_ag_fur1","Fur Hat (BRN)",25],
			["H_caf_ag_fur2","Fur Hat (BLK)",25],
			["Kio_Capital_Hat","Capital Hat",25],
			["H_Cap_red","Rote Mütze",25],
			["H_Cap_blu","Blaue Mütze",25],
			["H_Cap_oli","Olive Mütze",25],
			["H_Cap_press","Mütze (Presse)",25],
			["H_StrawHat","Strohhut",25],
			["H_StrawHat_dark","Strohhut (Dunkel)",25],
			["Hs_Cap_pres","Hut (Blau)",25],
			["H_Hat_brown","Hut (Braun)",25],
			["H_Hat_grey","Hut (Grau)",25],
			["H_Hat_checker","Hut (Kariert)",25],
			["H_Hat_tan","Hut (Hellbraun)",25],
			["rds_worker_cap1","Worker Cap 1",25],
			["rds_worker_cap2","Worker Cap 2",25],
			["rds_worker_cap3","Worker Cap 3",25],
			["rds_worker_cap4","Worker Cap 4",25],
			["rds_Villager_cap1","Villager Cap 1",25],
			["rds_Villager_cap2","Villager Cap 2",25],
			["rds_Villager_cap3","Villager Cap 3",25],
			["rds_Villager_cap4","Villager Cap 4",25],
			["rds_Profiteer_cap1","Profiteer Cap 1",25],
			["rds_Profiteer_cap2","Profiteer Cap 2",25],
			["rds_Profiteer_cap3","Profiteer Cap 3",25],
			["rds_Profiteer_cap4","Profiteer Cap 4",25],
			["rds_Woodlander_cap1","Ushanka 1",25],
			["rds_Woodlander_cap2","Ushanka 2",25],
			["rds_Woodlander_cap3","Ushanka 3",25],
			["rds_Woodlander_cap4","Ushanka 4",25]

		];
	};
	
	//Brillen
	case 2:
	{
		[
			["G_Shades_Black",nil,5],
			["G_Shades_Blue",nil,5],
			["G_Sport_Blackred",nil,5],
			["G_Sport_Checkered",nil,5],
			["G_Sport_Blackyellow",nil,5],
			["G_Sport_BlackWhite",nil,5],
			["G_Squares",nil,5],
			["G_Aviator",nil,5],
			["G_Lady_Mirror",nil,5],
			["G_Lady_Dark",nil,5],
			["G_Lady_Blue",nil,5],
			["G_Lowprofile",nil,5],
			["G_Combat",nil,5]
		];
	};
	
	//Westen
	case 3:
	{
		[
		       ["V_Press_F",nil,100],
		       ["V_Rangemaster_belt","Schießplatzverwalter-Gürtel",100]
		];
	};
	
	//Rucksäcke
	case 4:
	{
		[
			["B_mas_AssaultPack_wint","Assault Pack Wint",100],
			["B_Kitbag_mcamo","Seesack (MTR)",100],
			["B_Kitbag_cbr","Seesack (Coyote)",100],
			["B_FieldPack_oucamo","Feldpack (Urban)",100],
			["B_FieldPack_blk","Feldpack (Schwarz)",100],
			["B_mas_Kitbag_black","Fast pack black",100],
			["B_mas_Kitbag_wint","Fast pack Wint",100],
			["B_Carryall_oucamo","Großer Rucksack (Urban)",100],
			["B_Carryall_khk","Großer Rucksack (Khaki)",100],
			["B_Carryall_oli","Großer Rucksack (Oliv)",100],
			["B_O_Parachute_02_F","Fallschirm",100]
		];
	};
};
