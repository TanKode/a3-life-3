/*
	File: fn_varHandle.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master handler for getting a variables name, short name, etc.
*/
private["_var","_mode"];
_var = [_this,0,"",[""]] call BIS_fnc_param;
_mode = [_this,1,-1,[0]] call BIS_fnc_param;
if(_var == "" OR _mode == -1) exitWith {""};

switch (_mode) do
{
	case 0:
	{
		switch (_var) do
		{
			case "AntiFuel": {"life_inv_AntiFuel"};
			case "Handschuhe": {"life_inv_Handschuhe"};
			case "Skalpel": {"life_inv_Skalpel"};
			case "kidney": {"life_inv_kidney"};
			case "oilu": {"life_inv_oilu"};
			case "oilp": {"life_inv_oilp"};
			case "heroinu": {"life_inv_heroinu"};
			case "heroinp": {"life_inv_heroinp"};
			case "cannabis": {"life_inv_cannabis"};
			case "marijuana": {"life_inv_marijuana"};
			case "apple": {"life_inv_apple"};
			case "water": {"life_inv_water"};
			case "rabbit": {"life_inv_rabbit"};
			case "salema": {"life_inv_salema"};
			case "ornate": {"life_inv_ornate"};
			case "mackerel": {"life_inv_mackerel"};
			case "tuna": {"life_inv_tuna"};
			case "mullet": {"life_inv_mullet"};
			case "catshark": {"life_inv_catshark"};
			case "turtle": {"life_inv_turtle"};
			case "fishing": {"life_inv_fishingpoles"};
			case "coffee": {"life_inv_coffee"};
			case "turtlesoup": {"life_inv_turtlesoup"};
			case "donuts": {"life_inv_donuts"};
			case "fuelE": {"life_inv_fuelE"};
			case "fuelF": {"life_inv_fuelF"};
			case "money": {"life_RLP_handgeld"};
			case "pickaxe": {"life_inv_pickaxe"};
			case "copperore": {"life_inv_copperore"};
			case "ironore": {"life_inv_ironore"};
			case "iron_r": {"life_inv_ironr"};
			case "copper_r": {"life_inv_copperr"};
			case "salt": {"life_inv_salt"};
			case "salt_r": {"life_inv_saltr"};
			case "sand": {"life_inv_sand"};
			case "glass": {"life_inv_glass"};
			case "tbacon": {"life_inv_tbacon"};
			case "lockpick": {"life_inv_lockpick"};
			case "handcuffkey": {"life_inv_handcuffkey"};
			case "redgull": {"life_inv_redgull"};
			case "peach": {"life_inv_peach"};
			case "diamond": {"life_inv_diamond"};
			case "diamondc": {"life_inv_diamondr"};
			case "cocaine": {"life_inv_coke"};
			case "cocainep": {"life_inv_cokep"};
			case "spikeStrip": {"life_inv_spikeStrip"};
			case "cement": {"life_inv_cement"};
			case "rock": {"life_inv_rock"};
			case "goldbar": {"life_inv_goldbar"};
			case "blastingcharge": {"life_inv_blastingcharge"};
			case "boltcutter": {"life_inv_boltcutter"};
			case "defusekit": {"life_inv_defusekit"};
			case "storagesmall": {"life_inv_storagesmall"};
			case "storagebig": {"life_inv_storagebig"};
			case "tracker": {"life_inv_tracker"};
			case "getreideu": {"life_inv_getreideu"};
			case "holzu": {"life_inv_holzu"};
			case "hopfenu": {"life_inv_hopfenu"};
			case "schwefelu": {"life_inv_schwefelu"};
			case "silberu": {"life_inv_silberu"};
			case "tabaku": {"life_inv_tabaku"};
			case "traubenu": {"life_inv_traubenu"};
			case "zinnu": {"life_inv_zinnu"};
			case "zuckeru": {"life_inv_zuckeru"};
			case "getreideip": {"life_inv_getreideip"};
			case "tabakip": {"life_inv_tabakip"};
			case "zuckerip": {"life_inv_zuckerip"};
			case "eisenp": {"life_inv_eisenp"};
			case "getreidep": {"life_inv_getreidep"};
			case "holzp": {"life_inv_holzp"};
			case "hopfenp": {"life_inv_hopfenp"};
			case "schwefelp": {"life_inv_schwefelp"};
			case "silberp": {"life_inv_silberp"};
			case "tabakp": {"life_inv_tabakp"};
			case "traubenp": {"life_inv_traubenp"};
			case "zinnp": {"life_inv_zinnp"};
			case "zuckerp": {"life_inv_zuckerp"};
			case "bronze": {"life_inv_bronze"};
			case "schmuck": {"life_inv_schmuck"};
			case "pbrau": {"life_inv_pbrau"};
			case "kkugel": {"life_inv_kkugel"};
			case "spulver": {"life_inv_spulver"};
			case "pkugel": {"life_inv_pkugel"};
			case "speedbomb": {"life_inv_speedbomb"};
			case "uran1": {"life_inv_uran1"};
			case "uranip": {"life_inv_uranip"};
			case "verschluss": {"life_inv_verschluss"};
			case "laufa": {"life_inv_laufa"};
			case "laufb": {"life_inv_laufb"};
			case "laufc": {"life_inv_laufc"};
			case "laufd": {"life_inv_laufd"};
			case "griff": {"life_inv_griff"};
			case "magazina": {"life_inv_magazina"};
			case "magazinb": {"life_inv_magazinb"};
			case "feder": {"life_inv_feder"};
			case "gasantrieb": {"life_inv_gasantrieb"};
			case "gaskolben": {"life_inv_gaskolben"};
			case "antrieb": {"life_inv_antrieb"};
			case "abnahme": {"life_inv_abnahme"};
			case "mauer": {"life_inv_mauer"};
			case "schranke": {"life_inv_schranke"};
			case "zyankali": {"life_inv_zyankali"};
			case "diaper": {"life_inv_diaper"};
			case "dirtydiaper": {"life_inv_dirtydiaper"};	
			case "henraw": {"life_inv_henraw"};
            case "roosterraw": {"life_inv_roosterraw"};
            case "goatraw": {"life_inv_goatraw"};
            case "sheepraw": {"life_inv_sheepraw"};
            case "rabbitraw": {"life_inv_rabbitraw"};
            case "uwsl": {"life_inv_uwsl"};
            case "krabben": {"life_inv_krabben"};
            case "krabbenv": {"life_inv_krabbenv"};
            case "grab": {"life_inv_grab"};
            case "grabv": {"life_inv_grabv"};
            case "reli": {"life_inv_reli"};
            case "reliv": {"life_inv_reliv"};
            case "blitzer": {"life_inv_blitzer"};
            case "gas": {"life_inv_gas"};
            case "gasv": {"life_inv_gasv"};

            case "gold": {"life_inv_gold"};
            case "goldv": {"life_inv_goldv"};
            case "knochen": {"life_inv_knochen"};
            case "knochenv": {"life_inv_knochenv"};
            case "pfandflascheu": {"life_inv_pfandflascheu"};
            case "pfandflaschep": {"life_inv_pfandflaschep"};
            case "datenu": {"life_inv_datenu"};
            case "datenp": {"life_inv_datenp"};
            case "datennsau": {"life_inv_datennsau"};
            case "datennsap": {"life_inv_datennsap"};
            case "reichsgoldu": {"life_inv_reichsgoldu"};
            case "reichsgoldp": {"life_inv_reichsgoldp"};
            case "erdenu": {"life_inv_erdenu"};
            case "erdenp": {"life_inv_erdenp"};
            case "bernsteinu": {"life_inv_bernsteinu"};
            case "bernsteinp": {"life_inv_bernsteinp"};
            case "reliefenu": {"life_inv_reliefenu"};
            case "reliefenp": {"life_inv_reliefenp"};
			};
	};
	
	case 1:
	{
		switch (_var) do
		{
			case "life_inv_AntiFuel": {"AntiFuel"}; 
			case "life_inv_Handschuhe": {"Handschuhe"}; 
			case "life_inv_Skalpel": {"Skalpel"}; 
			case "life_inv_kidney": {"kidney"}; 
			case "life_inv_oilu": {"oilu"};
			case "life_inv_oilp": {"oilp"};
			case "life_inv_heroinu": {"heroinu"};
			case "life_inv_heroinp": {"heroinp"};
			case "life_inv_cannabis": {"cannabis"};
			case "life_inv_marijuana": {"marijuana"};
			case "life_inv_apple": {"apple"};
			case "life_inv_water": {"water"};
			case "life_inv_rabbit": {"rabbit"};
			case "life_inv_salema": {"salema"};
			case "life_inv_ornate": {"ornate"};
			case "life_inv_mackerel": {"mackerel"};
			case "life_inv_tuna": {"tuna"};
			case "life_inv_mullet": {"mullet"};
			case "life_inv_catshark": {"catshark"};
			case "life_inv_turtle": {"turtle"};
			case "life_inv_fishingpoles": {"fishing"};
			case "life_inv_coffee": {"coffee"};
			case "life_inv_turtlesoup": {"turtlesoup"};
			case "life_inv_donuts": {"donuts"};
			case "life_inv_fuelE": {"fuelE"};
			case "life_inv_fuelF": {"fuelF"};
			case "life_RLP_handgeld": {"money"};
			case "life_inv_pickaxe": {"pickaxe"};
			case "life_inv_copperore": {"copperore"};
			case "life_inv_ironore": {"ironore"};
			case "life_inv_ironr": {"iron_r"};
			case "life_inv_copperr": {"copper_r"};
			case "life_inv_sand": {"sand"};
			case "life_inv_salt": {"salt"};
			case "life_inv_glass": {"glass"};
			case "life_inv_redgull": {"redgull"};
			case "life_inv_lockpick": {"lockpick"};
			case "life_inv_handcuffkey": {"handcuffkey"};
			case "life_inv_tbacon": {"tbacon"};
			case "life_inv_peach": {"peach"};
			case "life_inv_diamond": {"diamond"};
			case "life_inv_diamondr": {"diamondc"};
			case "life_inv_saltr": {"salt_r"};
			case "life_inv_coke": {"cocaine"};
			case "life_inv_cokep": {"cocainep"};
			case "life_inv_spikeStrip": {"spikeStrip"};
			case "life_inv_cement": {"cement"};
			case "life_inv_rock": {"rock"};
			case "life_inv_goldbar": {"goldbar"};
			case "life_inv_blastingcharge": {"blastingcharge"};
			case "life_inv_boltcutter": {"boltcutter"};
			case "life_inv_defusekit": {"defusekit"};
			case "life_inv_storagesmall": {"storagesmall"};
			case "life_inv_storagebig": {"storagebig"};
			case "life_inv_tracker": {"tracker"};
			case "life_inv_getreideu": {"getreideu"};
			case "life_inv_holzu": {"holzu"};
			case "life_inv_hopfenu": {"hopfenu"};
			case "life_inv_schwefelu": {"schwefelu"};
			case "life_inv_silberu": {"silberu"};
			case "life_inv_tabaku": {"tabaku"};
			case "life_inv_traubenu": {"traubenu"};
			case "life_inv_zinnu": {"zinnu"};
			case "life_inv_zuckeru": {"zuckeru"};
			case "life_inv_getreideip": {"getreideip"};
			case "life_inv_tabakip": {"tabakip"};
			case "life_inv_zuckerip": {"zuckerip"};
			case "life_inv_eisenp": {"eisenp"};
			case "life_inv_getreidep": {"getreidep"};
			case "life_inv_holzp": {"holzp"};
			case "life_inv_hopfenp": {"hopfenp"};
			case "life_inv_schwefelp": {"schwefelp"};
			case "life_inv_silberp": {"silberp"};
			case "life_inv_tabakp": {"tabakp"};
			case "life_inv_traubenp": {"traubenp"};
			case "life_inv_zinnp": {"zinnp"};
			case "life_inv_zuckerp": {"zuckerp"};
			case "life_inv_bronze": {"bronze"};
			case "life_inv_schmuck": {"schmuck"};
			case "life_inv_pbrau": {"pbrau"};
			case "life_inv_spulver": {"spulver"};
			case "life_inv_kkugel": {"kkugel"};
			case "life_inv_pkugel": {"pkugel"};
			case "life_inv_speedbomb": {"speedbomb"};
			case "life_inv_zipties": {"zipties"};
			case "life_inv_uran1": {"uran1"};
			case "life_inv_uranip": {"uranip"};
			case "life_inv_verschluss": {"verschluss"};
			case "life_inv_laufa": {"laufa"};
			case "life_inv_laufb": {"laufb"};
			case "life_inv_laufc": {"laufc"};
			case "life_inv_laufd": {"laufd"};
			case "life_inv_griff": {"griff"};
			case "life_inv_magazina": {"magazina"};
			case "life_inv_magazinb": {"magazinb"};
			case "life_inv_feder": {"feder"};
			case "life_inv_gasantrieb": {"gasantrieb"};
			case "life_inv_gaskolben": {"gaskolben"};
			case "life_inv_antrieb": {"antrieb"};
			case "life_inv_abnahme": {"abnahme"};
			case "life_inv_mauer": {"mauer"};
			case "life_inv_schranke": {"schranke"};
			case "life_inv_zyankali": {"zyankali"};
			case "life_inv_diaper": {"diaper"};
			case "life_inv_dirtydiaper": {"dirtydiaper"};
			case "life_inv_henraw": {"henraw"};
            case "life_inv_roosterraw": {"roosterraw"};
            case "life_inv_goatraw": {"goatraw"};
            case "life_inv_sheepraw": {"sheepraw"};
            case "life_inv_rabbitraw": {"rabbitraw"};
            case "life_inv_uwsl": {"uwsl"};
            case "life_inv_krabben": {"krabben"};
            case "life_inv_krabbenv": {"krabbenv"};
            case "life_inv_grab": {"grab"};
            case "life_inv_grabv": {"grabv"};
            case "life_inv_reli": {"reli"};
            case "life_inv_reliv": {"reliv"};
            case "life_inv_blitzer": {"blitzer"};
            case "life_inv_gas": {"gas"};
            case "life_inv_gasv": {"gasv"};
            case "life_inv_gold": {"gold"};
            case "life_inv_goldv": {"goldv"};
            case "life_inv_knochen": {"knochen"};
            case "life_inv_knochenv": {"knochenv"};
            case "life_inv_pfandflascheu": {"pfandflascheu"};
            case "life_inv_pfandflaschep": {"pfandflaschep"};
            case "life_inv_datenu": {"datenu"};
            case "life_inv_datenp": {"datenp"};
            case "life_inv_datennsau": {"datennsau"};
            case "life_inv_datennsap": {"datennsap"};
            case "life_inv_reichsgoldu": {"reichsgoldu"};
            case "life_inv_reichsgoldp": {"reichsgoldp"};
            case "life_inv_erdenu": {"erdenu"};
            case "life_inv_erdenp": {"erdenp"};
            case "life_inv_bernsteinu": {"bernsteinu"};
            case "life_inv_bernsteinp": {"bernsteinp"};
            case "life_inv_reliefenu": {"reliefenu"};
            case "life_inv_reliefenp": {"reliefenp"};
		};
	};
};