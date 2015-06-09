/*
	File: fn_clothing_kart.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration file for Bobby's Kart Racing Outfits
*/
private["_filter"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Bobby's Kart-Racing Outfits"];

switch (_filter) do
{
	//Uniforms
	case 0:
	{
		[
		["U_C_Driver_1_black",nil,1500],
		["U_C_Driver_1_blue",nil,1500],
		["U_C_Driver_1_red",nil,1500],
		["U_C_Driver_1_orange",nil,1500],
		["U_C_Driver_1_green",nil,1500],
		["U_C_Driver_1_white",nil,1500],
		["U_C_Driver_1_yellow",nil,1500],
		["U_C_Driver_2",nil,3500],
		["U_C_Driver_1",nil,3600],
		["U_C_Driver_3",nil,3700],
		["U_C_Driver_4",nil,3700]
		];
	};
	
	//Hats
	case 1:
	{
		[
			["H_RacingHelmet_1_black_F",nil,100],
			["H_RacingHelmet_1_red_F",nil,100],
			["H_RacingHelmet_1_white_F",nil,100],
			["H_RacingHelmet_1_blue_F",nil,100],
			["H_RacingHelmet_1_yellow_F",nil,100],
			["H_RacingHelmet_1_green_F",nil,100],
			["H_RacingHelmet_1_F",nil,250],
			["H_RacingHelmet_2_F",nil,250],
			["H_RacingHelmet_3_F",nil,250],
			["H_RacingHelmet_4_F",nil,250],
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
			["Kio_afro_Hat","Afro Parücke",200],
			["TRYK_Kio_Balaclava","Balaclava",200],
			["Kio_Capital_Hat","Kapitänsmütze",200],
			["Kio_No1_Hat","Nr1 Hut",200],
			["Kio_Pirate_Hat","Piraten Hut",200],
			["Kio_Santa_Hat","Nicolaus Mütze",200],
			["Kio_Sskl_msk","Sskl Masek",200],
			["Kio_Spinning_Hat","SpinnerHut"200],
			["cowboyhat","Cowboy Hut",200]
		];
	};
	
	//Glasses
	case 2:
	{
		[
		];
	};
	
	//Vest
	case 3:
	{
		[
		];
	};
	
	//Backpacks
	case 4:
	{
		[
		];
	};
};