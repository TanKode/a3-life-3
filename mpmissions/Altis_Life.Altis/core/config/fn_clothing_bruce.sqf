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
	//Uniforms
	case 0:
	{
		[
		["U_C_Poloshirt_blue","Blaues Polohemd",250],
		["U_C_Poloshirt_burgundy","Burgunderfarbenes Polohemd",205],
		["U_C_Poloshirt_redwhite","Rotweißes Polohemd",150],
		["U_C_Poloshirt_salmon","Rosafarbendes Polohemd",175],
		["U_C_Poloshirt_stripped","Gestreiftes Polohemd",125],
		["U_C_Poloshirt_tricolour","Dreifarbiges Polohemd",250],
		["U_C_Poor_2","Standartkleidung",250],
		["U_IG_Guerilla2_2","Grün gestreiftes Shirt & Hose",250],
		["U_IG_Guerilla3_1","Braune Jacke & Hose",735],
		["U_IG_Guerilla2_3","Landstreicher Outfit",200],
		["U_C_HunterBody_grn","Jägerkleidung",150],
		["U_C_WorkerCoveralls","Mechaniker Overall",50],
		["rds_uniform_priest",nil,250],
		["rds_uniform_assistant",nil,250],
		["rds_uniform_doctor",nil,250],
		["rds_uniform_schoolteacher",nil,250],
		["rds_uniform_Woodlander1",nil,250],
		["rds_uniform_Woodlander2",nil,250],
		["rds_uniform_Woodlander3",nil,250],
		["rds_uniform_Woodlander5",nil,250],
		["rds_uniform_citizen1",nil,250],
		["rds_uniform_citizen2",nil,250],
		["rds_uniform_citizen3",nil,250],
		["rds_uniform_citizen4",nil,250],
		["rds_uniform_Functionary1",nil,250],
		["rds_uniform_Functionary2",nil,250],
		["U_OrestesBody","Strandoutfit",280],
		["U_NikosAgedBody","Alltagskleidung",250],
		["U_C_Journalist","Pressekleidung",260],
		["U_OG_Guerilla2_1","Wahnschaffe-Kleidung",100],
		["U_BG_Guerilla2_2","Wahnschaffe-Kleidung",100]

		];
	};
	
	//Hats
	case 1:
	{
		[
			["H_Bandanna_camo","Tarnfleck Bandanna",120],
			["H_Bandanna_surfer","Surfer Bandanna",130],
			["H_Bandanna_gry","Graues Bandanna",150],
			["H_Bandanna_cbr",nil,165],
			["H_Bandanna_surfer",nil,135],
			["H_Bandanna_khk","Khaki Bandanna",145],
			["H_Bandanna_sgg","Salbeifarbene Bandanna",160],
			["H_StrawHat","Straw Fedora",225],
			["H_BandMask_blk","Hut & Bandanna",300],
			["H_Booniehat_tan",nil,425],
			["rds_worker_cap1",nil,425],
            ["rds_worker_cap2",nil,425],
            ["rds_worker_cap3",nil,425],
            ["rds_worker_cap4",nil,425],
            ["rds_Villager_cap1",nil,425],
            ["rds_Villager_cap2",nil,425],
            ["rds_Villager_cap3",nil,425],
            ["rds_Villager_cap4",nil,425],
            ["rds_Profiteer_cap1",nil,425],
            ["rds_Profiteer_cap2",nil,425],
            ["rds_Profiteer_cap3",nil,425],
            ["rds_Profiteer_cap4",nil,425],
            ["rds_Woodlander_cap1",nil,425],
            ["rds_Woodlander_cap2",nil,425],
            ["rds_Woodlander_cap3",nil,425],
            ["rds_Woodlander_cap4",nil,425],
            ["Kio_Afro_Hat",nil,425],
            ["Kio_Capital_Hat",nil,425],
            ["Kio_Pirate_Hat",nil,425],
            ["Kio_Santa_Hat",nil,425],
            ["Kio_Spinning_Hat",nil,425],
            ["Kio_Hat",nil,425],
			["H_Cap_press","Wahnschaffe-Kappe",500],
			["H_Hat_blue",nil,310],
			["H_Hat_brown",nil,276],
			["H_Hat_checker",nil,340],
			["H_Hat_grey",nil,280],
			["H_Hat_tan",nil,265],
			["H_Cap_blu",nil,150],
			["H_Cap_grn",nil,150],
			["H_Cap_grn_BI",nil,150],
			["H_Cap_oli",nil,150],
			["H_Cap_red",nil,150],
			["H_Cap_tan",nil,150]
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
			["G_Squares",nil,10],
			["G_Aviator",nil,100],
			["G_Lady_Mirror",nil,150],
			["G_Lady_Dark",nil,150],
			["G_Lady_Blue",nil,150],
			["G_Lowprofile",nil,30],
			["G_Combat",nil,55]
		];
	};
	
	//Vest
	case 3:
	{
		[
		       ["V_Press_F",nil,25000]
		];
	};
	
	//Backpacks
	case 4:
	{
		[
			["B_AssaultPack_cbr",nil,500],
			["B_Kitbag_mcamo",nil,500],
			["B_TacticalPack_oli",nil,500],
			["B_FieldPack_ocamo",nil,500],
			["B_Bergen_sgg",nil,500],
			["B_Kitbag_cbr",nil,500],
			["B_Carryall_oli",nil,500],
			["B_Carryall_khk",nil,500]
		];
	};
};
