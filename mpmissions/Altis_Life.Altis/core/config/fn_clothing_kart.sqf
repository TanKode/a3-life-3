/*
	File: fn_clothing_kart.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration file for Bobby's Kart Racing Outfits
*/
private["_filter"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price
//FUN SHOP
//Shop Title Name
ctrlSetText[3103,"Bobby's Kart-Racing Outfits"];

switch (_filter) do
{
	//Anzüge
	case 0:
	{
		[
		["RastaCiv","Rastafari",150],
		["tacobell","TaccoShirt",150],
		["rds_uniform_priest","Prister Uniform"200],
		["U_C_Driver_1_black","RennAnzug Schwarz",150],
		["U_C_Driver_1_blue","RennAnzug Blau",150],
		["U_C_Driver_1_red","RennAnzug Rot",150],
		["U_C_Driver_1_orange","RennAnzug Orange",150],
		["U_C_Driver_1_green","RennAnzug Grün",150],
		["U_C_Driver_1_white","RennAnzug Weiß",150],
		["U_C_Driver_1_yellow","RennAnzug Gelb",150],
		["U_C_Driver_1","RennAnzug 1", 150],
		["U_C_Driver_2","RennAnzug 2",150],
		["U_C_Driver_3","RennAnzug 3",150],
		["U_C_Driver_4","RennAnzug 4",150]
		];
	};
	
	//Kopfbedeckungen
	case 1:
	{
		[
			["A3L_sombreero","Sombreero",200],
			["A3L_russianhat","RussenMütze",200],
			["A3L_sargehat","Sarghat",200],
			["A3L_crown","Crown",200],
			["A3L_loghairblond","Blonde Haare",200],
			["A3L_loghairblack","Schwarze Haare",200],
			["A3L_longhairbrown","Braune Haare",200],
			["A3L_mexicanhat","MexianerHut",200],
			["A3L_soa_helmet","Helm",200],
			["A3L_gangster_hat","GangsterMütze",200],
			["A3L_Mask","Maske",200],
			["A3L_SkateHelmet_green","Skater Helm Grün",200],
			["A3L_Halloween_PredatorMask","PredatorMaske",200],
			["A3L_Halloween_Pumpkinhead","KürbisKopf",200],
			["A3L_Halloween_JigSaw","Jigsaw",200],
			["Kio_afro_Hat","Afro Parücke",200],
			["TRYK_Kio_Balaclava","Balaclava",200],
			["Kio_Capital_Hat","Kapitänsmütze",200],
			["Kio_No1_Hat","Nr1 Hut",200],
			["Kio_Pirate_Hat","Piraten Hut",200],
			["Kio_Santa_Hat","Nicolaus Mütze",200],
			["Kio_Sskl_msk","Sskl Masek",200],
			["Kio_Spinning_Hat","SpinnerHut"200],
			["cowboyhat","Cowboy Hut",200],
			["H_RacingHelmet_1_black_F","Helm Schwarz",100],
			["H_RacingHelmet_1_red_F","Helm Rot",100],
			["H_RacingHelmet_1_white_F","Helm Weiß",100],
			["H_RacingHelmet_1_blue_F","Helm Blau",100],
			["H_RacingHelmet_1_yellow_F","Helm Gelb",100],
			["H_RacingHelmet_1_green_F","Helm Grün",100],
			["H_RacingHelmet_1_F","Helm1",100],
			["H_RacingHelmet_2_F","Helm2",100],
			["H_RacingHelmet_3_F","Helm3",100],
			["H_RacingHelmet_4_F","Helm4",100]
		];
	};
	
	//Brillen
	case 2:
	{
		[
		];
	};
	
	//Westen
	case 3:
	{
		[
		];
	};
	
	//Rucksäcke
	case 4:
	{
		[
		];
	};
};