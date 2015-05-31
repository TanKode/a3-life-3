/*
	File: fn_clothing_reb.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration file for Reb shop.
*/
private["_filter"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Mohammeds Rebellenshop"];

switch (_filter) do
{
	//Uniforms
	case 0:
	{
		[
			["U_IG_leader","Rebellenanführer Outfit",22500],
			["U_IG_Guerilla1_1",nil,10000],
			["U_I_G_Story_Protagonist_F",nil,12500],
			["U_I_G_resistanceLeader_F",nil,15000],
			["U_O_SpecopsUniform_ocamo",nil,17500],
			["U_O_PilotCoveralls",nil,25000],
			["U_B_PilotCoveralls",nil,25000],
			["U_IG_Guerilla3_1",nil,22500],
			["U_IG_Guerilla2_3",nil,22500],
			["U_IG_Guerilla3_2",nil,22500],
			["U_IG_Guerilla1_1",nil,22500],
			["U_O_CombatUniform_oucamo",nil,22500],
			["U_I_CombatUniform_tshirt",nil,22500],
			["U_O_OfficerUniform_ocamo",nil,17500],
            ["U_I_OfficerUniform",nil,17500],
            ["U_B_GhillieSuit",nil,100000],
            ["U_O_GhillieSuit",nil,100000],
            ["U_I_GhillieSuit",nil,100000],
            ["U_O_FullGhillie_ard",nil,100000],
            ["U_O_FullGhillie_sard",nil,100000],
            ["U_O_FullGhillie_lsh",nil,100000],
            ["U_CAF_AG_ME_ROBES_01",nil,17500],
            ["U_CAF_AG_ME_ROBES_01a",nil,17500],
            ["U_CAF_AG_ME_ROBES_01c",nil,17500],
            ["U_CAF_AG_ME_ROBES_01d",nil,17500],
            ["U_CAF_AG_ME_ROBES_02",nil,17500],
            ["U_CAF_AG_ME_ROBES_02a",nil,17500],
            ["U_CAF_AG_ME_ROBES_02b",nil,17500],
            ["U_CAF_AG_ME_ROBES_02c",nil,17500],
            ["U_CAF_AG_ME_ROBES_02d",nil,17500],
            ["U_CAF_AG_ME_ROBES_03",nil,17500],
            ["U_CAF_AG_ME_ROBES_03a",nil,17500],
            ["U_CAF_AG_ME_ROBES_03b",nil,17500],
            ["U_CAF_AG_ME_ROBES_03c",nil,17500],
            ["U_CAF_AG_ME_ROBES_03d",nil,17500],
            ["U_CAF_AG_ME_ROBES_04",nil,17500],
            ["U_CAF_AG_ME_ROBES_04a",nil,17500],
            ["U_CAF_AG_ME_ROBES_04b",nil,17500],
            ["U_CAF_AG_ME_ROBES_04c",nil,17500],
            ["U_CAF_AG_ME_ROBES_04d",nil,17500],
            ["U_CAF_AG_ME_ROBES_mil_01",nil,17500],
            ["U_CAF_AG_ME_ROBES_mil_01a",nil,17500],
            ["U_CAF_AG_ME_FATIGUES_01",nil,17500],
            ["U_CAF_AG_ME_FATIGUES_01a",nil,17500],
            ["U_CAF_AG_ME_FATIGUES_01b",nil,17500],
            ["U_CAF_AG_ME_FATIGUES_01c",nil,17500],
            ["U_CAF_AG_ME_FATIGUES_01d",nil,17500],
            ["U_CAF_AG_AFR_CLOTHES_01",nil,17500],
            ["U_CAF_AG_AFR_CLOTHES_01a",nil,17500],
            ["U_CAF_AG_AFR_CLOTHES_01b",nil,17500],
            ["U_CAF_AG_AFR_CLOTHES_01c",nil,17500],
            ["U_CAF_AG_AFR_CLOTHES_01d",nil,17500],
            ["U_CAF_AG_AFR_CLOTHES_01e",nil,17500],
            ["U_CAF_AG_AFR_CLOTHES_02",nil,17500],
            ["U_CAF_AG_AFR_CLOTHES_02a",nil,17500],
            ["U_CAF_AG_AFR_CLOTHES_02b",nil,17500],
            ["U_CAF_AG_EEUR_FATIGUES_01",nil,17500],
            ["U_CAF_AG_EEUR_FATIGUES_01a",nil,17500],
            ["U_CAF_AG_EEUR_FATIGUES_02",nil,17500],
            ["U_CAF_AG_EEUR_FATIGUES_02a",nil,17500],
            ["U_CAF_AG_EEUR_FATIGUES_03",nil,17500],
            ["U_CAF_AG_EEUR_FATIGUES_03a",nil,17500],
            ["U_CAF_AG_EEUR_FATIGUES_03b",nil,17500],
            ["U_CAF_AG_EEUR_FATIGUES_03c",nil,17500],
            ["mgsr_civ_01_uniform",nil,17500],
            ["mgsr_civ_02_uniform",nil,17500],
            ["mgsr_civ_03_uniform",nil,17500]
		];
	};
	
	//Hats
	case 1:
	{
		[
		    ["H_Cap_press","Wahnschaffe-Kappe",500],
			["H_ShemagOpen_tan",nil,5000],
			["H_Shemag_olive",nil,5000],
			["H_ShemagOpen_khk",nil,5000],
			["H_HelmetO_ocamo",nil,5000],
			["H_MilCap_oucamo",nil,5000],
			["H_HelmetB_camo",nil,5000],
			["H_HelmetB_paint",nil,5000],
			["H_HelmetCrew_I",nil,5000],
			["H_HelmetSpecB",nil,5000],
		    ["H_CrewHelmetHeli_B",nil,5000],
			["H_PilotHelmetHeli_O",nil,5000],
			["H_Bandanna_camo",nil,5000],
			["H_Watchcap_camo",nil,5000],
			["H_Watchcap_khk",nil,5000],
			["H_PilotHelmetFighter_I",nil,5000],
            ["H_AG_BANDANNA_01",nil,5000],
            ["H_AG_BANDANNA_02",nil,5000],
            ["H_AG_BANDANNA_03",nil,5000],
            ["H_AG_BANDANNA_04",nil,5000],
            ["H_CAF_AG_TURBAN",nil,5000],
            ["H_CAF_AG_PAKTOL",nil,5000],
            ["H_CAF_AG_PAKTOL_01",nil,5000],
            ["H_CAF_AG_PAKTOL_02",nil,5000],
            ["H_CAF_AG_PAKTOL_03",nil,5000],
            ["H_CAF_AG_WRAP",nil,5000],
            ["H_CAF_AG_FUR",nil,5000],
            ["H_CAF_AG_FUR2",nil,5000],
            ["H_CAF_AG_BEANIE",nil,5000],
            ["H_CAF_AG_BOONIE_01",nil,5000],
            ["H_CAF_AG_BOONIE_02",nil,5000],
            ["mgsr_eyepatch",nil,5000],
            ["mgsr_headbag",nil,5000],
            ["mgsr_beret",nil,5000]
		];
	};
	
	//Glasses
	case 2:
	{
		[
			["G_Shades_Black",nil,25],
			["G_Shades_Blue",nil,20],
			["G_Sport_Blackred",nil,20],
			["G_Sport_Checkered",nil,20],
			["G_Sport_Blackyellow",nil,20],
			["G_Sport_BlackWhite",nil,20],
			["G_Bandanna_aviator",nil,500],
			["G_Bandanna_oli",nil,500],
			["G_Bandanna_beast",nil,500],
			["G_Bandanna_blk",nil,500],
			["G_Squares",nil,10],
			["Balaclava_Black",nil,30],
			["Balaclava_OD",nil,30],
			["G_Combat",nil,55],
			["mgsr_eyepatch_goggles",nil,200]
		];
	};
	
	//Vest
	case 3:
	{
		[
			["V_TacVest_khk",nil,25000],
			["V_BandollierB_cbr",nil,25000],
			["V_HarnessO_brn",nil,25000],
			["V_PlateCarrier1_blk","Anti-Tränengas",250000],
			["V_I_G_resistanceLeader_F",nil,25000]
		];
	};
	
	//Backpacks
	case 4:
	{
		[
			["B_AssaultPack_cbr",nil,2500],
			["B_Kitbag_mcamo",nil,4500],
			["B_TacticalPack_oli",nil,3500],
			["B_FieldPack_ocamo",nil,3000],
			["B_Bergen_sgg",nil,4500],
			["B_Kitbag_cbr",nil,4500],
			["B_Carryall_oli",nil,5000],
			["B_Carryall_khk",nil,5000]			
		];
	};
};
