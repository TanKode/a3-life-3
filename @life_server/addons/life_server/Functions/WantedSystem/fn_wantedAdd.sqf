/*
	File: fn_wantedAdd.sqf
	Author: Bryan "Tonic" Boardwine"
	Database Persistence By: ColinM
	Assistance by: Paronity
	Stress Tests by: Midgetgrimm
	
	Description:
	Adds or appends a unit to the wanted list.
*/
private["_uid","_type","_index","_data","_crimes","_val","_customBounty","_name","_pastCrimes","_query","_queryResult"];
_uid = [_this,0,"",[""]] call BIS_fnc_param;
_name = [_this,1,"",[""]] call BIS_fnc_param;
_type = [_this,2,"",[""]] call BIS_fnc_param;
_customBounty = [_this,3,-1,[0]] call BIS_fnc_param;
if(_uid == "" OR _type == "" OR _name == "") exitWith {}; //Bad data passed.

//What is the crime?
switch(_type) do
{
	case "187V": {_type = ["187V",600000]};
	case "187": {_type = ["187",600000]};
	case "901": {_type = ["901",300000]};
	case "261": {_type = ["261",225000]};
	case "261A": {_type = ["261A",100000]};
	case "215": {_type = ["215",120000]};
	case "213": {_type = ["213",100000]};
	case "211": {_type = ["211",225000]};
	case "207": {_type = ["207",300000]};
	case "207A": {_type = ["207A",150000]};
	case "390": {_type = ["390",30000]};
	case "487": {_type = ["487",200000]};
	case "488": {_type = ["488",100000]};
	case "480": {_type = ["480",50000]};
	case "481": {_type = ["481",180000]};
	case "482": {_type = ["482",100000]};
	case "483": {_type = ["483",180000]};
	case "459": {_type = ["459",200000]};
	case "666": {_type = ["666",500000]};
	case "667": {_type = ["667",150000]};
	case "668": {_type = ["668",150000]};
	case "120S": {_type = ["120S",5000]};
	case "120H": {_type = ["120H",8000]};
	case "120WL": {_type = ["120WL",8000]};
	case "120FS": {_type = ["120FS",8000]};
	
    case "1": {_type = ["1",10000]};
    case "2": {_type = ["2",120000]};
    case "3": {_type = ["3",200000]};
    case "4": {_type = ["4",5000]};
    case "5": {_type = ["5",15000]};
    case "6": {_type = ["6",30000]};
    case "7": {_type = ["7",240000]};
    case "8": {_type = ["8",300000]};
    case "9": {_type = ["9",50000]};
    case "10": {_type = ["10",300000]};
    case "11": {_type = ["11",100000]};
    case "12": {_type = ["12",150000]};
    case "13": {_type = ["13",600000]};
    case "14": {_type = ["14",200000]};
    case "15": {_type = ["15",100000]};
    case "16": {_type = ["16",50000]};
    case "17": {_type = ["17",50000]};
    case "18": {_type = ["18",50000]};
    case "19": {_type = ["19",100000]};
    case "20": {_type = ["20",800000]};
    case "21": {_type = ["21",80000]};
    case "22": {_type = ["22",150000]};
    case "23": {_type = ["23",180000]};
    case "24": {_type = ["24",100000]};
    case "25": {_type = ["25",75000]};
    case "26": {_type = ["26",200000]};
    case "27": {_type = ["27",50000]};
    case "28": {_type = ["28",300000]};
    case "29": {_type = ["29",225000]};
    case "30": {_type = ["30",500000]};
    case "31": {_type = ["31",600000]};
    case "32": {_type = ["32",250000]};
    case "33": {_type = ["33",150000]};
    case "34": {_type = ["34",300000]};
    case "35": {_type = ["35",50000]};
    case "36": {_type = ["36",70000]};
    case "37": {_type = ["37",500000]};
    case "38": {_type = ["38",100000]};
    case "39": {_type = ["39",25000]};
    case "40": {_type = ["40",100000]};
	default {_type = [];};
};

if(count _type == 0) exitWith {}; //Not our information being passed...
//Is there a custom bounty being sent? Set that as the pricing.
if(_customBounty != -1) then {_type set[1,_customBounty];};
//Search the wanted list to make sure they are not on it.

_result = format["SELECT wantedID, wantedCrimes FROM wanted WHERE wantedID='%1'",_uid];
waitUntil{!DB_Async_Active};
_queryResult = [_result,2] call DB_fnc_asyncCall;

_name = [_name] call DB_fnc_mresString;
_val = [(_type select 1)] call DB_fnc_numberSafe;

if(count _queryResult != 0) then
{
	_pastCrimes = [(_queryResult select 1)] call DB_fnc_mresToArray;
	_pastCrimes pushBack (_type select 0);
	_pastCrimes = [_pastCrimes] call DB_fnc_mresArray;
	_query = format["UPDATE wanted SET wantedCrimes = '%1', wantedBounty = wantedBounty + '%2', active = '1' WHERE wantedID='%3'",_pastCrimes,_val,_uid];
} else {
	_crimes = [[(_type select 0)]] call DB_fnc_mresArray;
	_query = format["INSERT INTO wanted (wantedID, wantedName, wantedCrimes, wantedBounty, active) VALUES('%1','%2','%3','%4', '1')",_uid,_name,_crimes,_val];
};

if(!isNil "_query") then {
	waitUntil{!DB_Async_Active};
	[_query,2] call DB_fnc_asyncCall;
};