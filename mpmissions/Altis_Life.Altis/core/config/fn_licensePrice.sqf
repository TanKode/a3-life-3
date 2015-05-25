/*
	File: fn_licensePrice.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Returns the license price.
*/
private["_type"];
_type = [_this,0,"",[""]] call BIS_fnc_param;
if(_type == "") exitWith {-1};

switch (_type) do
{
	case "cair": {15000}; //Cop Pilot License cost
	case "sek": {35000}; //Swat License cost
	case "cg": {8000}; //Coast guard license cost
	case "mair": {15000};
	case "sec": {1};
	case "driver": {2500}; //Drivers License cost
	case "truck": {100000}; //Truck license cost
	case "pilot": {250000}; //Pilot/air license cost
	case "boat": {60000}; //Boating license cost
	case "dive": {125000}; //Diving license cost
	case "gun": {75000}; //Firearm/gun license cost	
	case "rebel": {2000000}; //Rebel license cost	
	case "donator": {1};
	case "tf": {1};	
	case "home": {1000000};
	case "heroin": {500000}; //Heroin processing license cost
	case "marijuana": {400000}; //Marijuana processing license cost
	case "cocaine": {600000};
	case "oil": {30000}; //Oil processing license cost
	case "diamond": {105000};
	case "copper": {24000};
	case "iron": {28500};
	case "sand": {43500};
	case "salt": {36000};
	case "cement": {19500};
	case "brauer": {60000};
	case "nudeln": {34500};
	case "wein": {30000};
	case "zigaretten": {82500};
	case "zucker": {34500};
	case "whiskey": {85500};
	case "zigarren": {82500};
	case "rum": {78000};
	case "holz": {15000};
	case "schwefel": {55500};
	case "silber": {75000};
	case "zinn": {21000};
	case "gusseisen": {31500};
	case "bronze": {195000};
	case "schmuck": {210000};
	case "pbrau": {225000};
	case "kkugel": {300000};
	case "pkugel": {300000};
	case "spulver": {600000};
	case "uran1": {150000};
	case "uranip": {450000};
	case "bm": {6000000};
	case "good": {600000};
	case "bus": {0};
	case "taxi": {0};	
	case "car": {500};
    case "air": {5000};
    case "hunting": {40000};
    case "krabben": {500000};
    case "grab": {200000};
    case "reli": {350000};
    case "gas": {300000};
    case "gold": {300000};
    case "knochen": {300000};
    case "pfandflasche": {3500};
    case "daten": {350000};
    case "reichsgold": {800000};
    case "erden": {800000};
    case "bernstein": {800000};
    case "datennsa": {900000};
    case "reliefen": {800000};
};