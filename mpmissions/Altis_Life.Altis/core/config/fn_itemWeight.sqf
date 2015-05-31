/*
	File: fn_itemWeight.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Gets the items weight and returns it.
*/
private["_item"];
_item = [_this,0,"",[""]] call BIS_fnc_param;
if(_item == "") exitWith {};

switch (_item) do
{
	case "AntiFuel": {2};
	case "Handschuhe": {2};
	case "Skalpel": {3};
	case "kidney": {15};
	case "oilu": {6};
	case "oilp": {3};
	case "heroinu": {6};
	case "heroinp": {3};
	case "cannabis": {6};
	case "marijuana": {3};
	case "apple": {1};
	case "water": {1};
	case "rabbit": {1};
	case "salema": {2};
	case "ornate": {2};
	case "mackerel": {4};
	case "tuna": {6};
	case "mullet": {4};
	case "catshark": {6};
	case "turtle": {6};
	case "fishing": {2};
	case "turtlesoup": {2};
	case "donuts": {1};
	case "coffee": {1};
	case "fuelE": {3};
	case "fuelF": {6};
	case "money": {0};
	case "pickaxe": {2};
	case "copperore": {6};
	case "ironore": {6};
	case "copper_r": {3};
	case "iron_r": {3};
	case "sand": {6};
	case "salt": {6};
	case "salt_r": {3};
	case "glass": {3};
	case "diamond": {6};
	case "diamondc": {3};
	case "cocaine": {6};
	case "cocainep": {3};
	case "spikeStrip": {5};
	case "rock": {6};
	case "cement": {3};
	case "goldbar": {10};
	case "blastingcharge": {15};
	case "boltcutter": {5};
	case "defusekit": {2};
	case "storagesmall": {5};
	case "storagebig": {10};
	case "tracker": {2};
	case "getreideu": {4};
	case "holzu": {6};
	case "hopfenu": {6};
	case "pfandu": {6};
	case "silberu": {6};
	case "tabaku": {6};
	case "traubenu": {3};
	case "zinnu": {6};
	case "zuckeru": {6};
	case "getreideip": {3};
	case "tabakip": {3};
	case "zuckerip": {3};
	case "eisenp": {3};
	case "getreidep": {3};
	case "holzp": {2};
	case "hopfenp": {3};
	case "pfandp": {3};
	case "silberp": {3};
	case "tabakp": {3};
	case "traubenp": {3};
	case "zinnp": {3};
	case "zuckerp": {3};
	case "schmuck": {3};
	case "bronze": {6};
	case "pbrau": {3};
	case "kkugel": {6};
	case "spulver": {2};
	case "pkugel": {4};	
	case "speedbomb": {10};
	case "uran1": {6};
	case "uranip": {3};
	case "handcuffkey": {1};
	case "mauer": {5};
	case "schranke": {5};
	case "henraw": {1};
    case "roosterraw": {1};
    case "goatraw": {1};
    case "sheepraw": {1};
    case "rabbitraw": {1};
    case "uwsl": {5};
    case "krabben": {6};
    case "krabbenv": {3};
    case "grab": {6};
    case "grabv": {3};
    case "reli": {6};
    case "reliv": {3};
    case "blitzer": {2};
    case "gas": {6};
    case "gasv": {3};
    case "gold": {10};
    case "goldv": {2};
    case "knochen": {6};
    case "knochenv": {3};
    case "pfandflascheu": {6};
    case "pfandflaschep": {3};
    case "datenu": {6};
    case "datenp": {3};
    case "datennsau": {6};
    case "datennsap": {3};
    case "reichsgoldu": {6};
    case "reichsgoldp": {3};
    case "erdenu": {6};
    case "erdenp": {3};
    case "bernsteinu": {6};
    case "bernsteinp": {3};
    case "reliefenu": {6};
    case "reliefenp": {3};
    case "uranuweu": {6};
    case "uranuwep": {3};
	default {1};
};
