/*
	File: fn_processAction.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master handling for processing an item.
*/
private["_vendor","_type","_itemInfo","_oldItem","_newItem","_cost","_upp","_hasLicense","_itemName","_oldVal","_ui","_progress","_pgText","_cP"];
_vendor = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
_type = [_this,3,"",[""]] call BIS_fnc_param;
//Error check
if(isNull _vendor OR _type == "" OR (player distance _vendor > 10)) exitWith {};

//unprocessed item,processed item, cost if no license,Text to display (I.e Processing  (percent) ..."
_itemInfo = switch (_type) do
{
	case "oil": {["oilu","oilp",5000,"Öl verarbeiten"];};
	case "diamond": {["diamond","diamondc",5000,"Diamanten schleifen"]};
	case "krabben": {["krabben","krabbenv",5000,"Krabben Schaelen"]};
	case "gas": {["gas","gasv",5000,"Erdgas verarbeiten"]};
	case "grab": {["grab","grabv",5000,"Grabbeilagen restaurieren"]};
	case "reli": {["reli","reliv",5000,"Relikte restaurieren"]};
	case "heroin": {["heroinu","heroinp",5000,"Schlafmohn verarbeiten"]};
	case "copper": {["copperore","copper_r",5000,"Kupfer verarbeiten"]};
	case "iron": {["ironore","iron_r",5000,"Eisen verarbeiten"]};
	case "sand": {["sand","glass",5000,"Sand verarbeiten"]};
	case "salt": {["salt","salt_r",5000,"Salz verarbeiten"]};
	case "cocaine": {["cocaine","cocainep",5000,"Kokain verarbeiten"]};
	case "marijuana": {["cannabis","marijuana",5000,"Marihuana verarbeiten"]};
	case "cement": {["rock","cement",5000,"Zement mischen"]};
	case "whiskey": {["getreideu","getreideip",5000,"Ruehre Maische"]};
	case "zigarren": {["tabaku","tabakip",5000,"Drehe Zigarren"]};
	case "rum": {["zuckeru","zuckerip",5000,"Brenne Rum"]};
	case "gusseisen": {["ironore","eisenp",5000,"Gieße Form"]};
	case "nudeln": {["getreideu","getreidep",5000,"Mahle Mehl"]};
	case "holz": {["holzu","holzp",5000,"Verkohle Holz"]};
	case "brauer": {["hopfenu","hopfenp",5000,"Braue Bier"]};
	case "schwefel": {["schwefelu","schwefelp",5000,"Zerkleinere Schwefel"]};
	case "silber": {["silberu","silberp",5000,"Schmelze Silber"]};
	case "zigaretten": {["tabaku","tabakp",5000,"Stopfe Zigaretten"]};
	case "wein": {["traubenu","traubenp",5000,"Keltere Wein"]};
	case "zinn": {["zinnu","zinnp",5000,"Schmelze Zinn"]};
	case "zucker": {["zuckeru","zuckerp",5000,"Raffiniere Zucker"]};
	case "uran2": {["uran1","uran2",5000,"Reinige Uran"]};
	case "uran3": {["uran2","uran3",5000,"Verarbeite Uran"]};
	case "uran4": {["uran3","uran4",5000,"Reichere Uran an"]};
	case "uranip": {["uran2","uranip",5000,"Uran verschmutzen"]};
	case "pfandflasche": {["pfandflascheu","pfandflaschep",250,"Plastik Recycling"]};
	case "daten": {["datenU","datenP","datennsaU","datennsaP",2500,"Daten verarbeiten"]};
	case "reichsgold": {["reichsgoldU","reichsgoldP",2500,"Reichsgold verarbeiten"]};
	case "erden": {["erdenU","erdenP",2500,"Erden verarbeiten"]};
	case "bernstein": {["bernsteinU","bernsteinP",2500,"Bernstein verarbeiten"]};
	default {[]};
};

//Error checking
if(count _itemInfo == 0) exitWith {};

//Setup vars.
_oldItem = _itemInfo select 0;
_newItem = _itemInfo select 1;
_cost = _itemInfo select 2;
_upp = _itemInfo select 3;

if(_vendor in [mari_processor,coke_processor,heroin_processor]) then {
	_hasLicense = true;
} else {
	_hasLicense = missionNamespace getVariable (([_type,0] call life_fnc_licenseType) select 0);
};

_itemName = [([_newItem,0] call life_fnc_varHandle)] call life_fnc_varToStr;
_oldVal = missionNamespace getVariable ([_oldItem,0] call life_fnc_varHandle);

_cost = _cost * _oldVal;
//Some more checks
if(_oldVal == 0) exitWith {};

//Setup our progress bar.
disableSerialization;
5 cutRsc ["life_progress","PLAIN"];
_ui = uiNameSpace getVariable "life_progress";
_progress = _ui displayCtrl 38201;
_pgText = _ui displayCtrl 38202;
_pgText ctrlSetText format["%2 (1%1)...","%",_upp];
_progress progressSetPosition 0.01;
_cP = 0.01;

life_is_processing = true;
if(_hasLicense) then
{
_time = 0.3;
_cpUp = 0.01;
_profName = [_type] call life_fnc_profType;
_data = missionNamespace getVariable "_profName";
if( _profName != "" ) then
{
        if((_data select 0) > 0) then {
                _addExpAmount = _addExpAmount + round(2.5 * (_data select 0));
        };
 
    switch ( _data select 0 ) do
    {
            case 0: { _time = 0.5; _cpUp = 0.009; };
            case 1: { _time = 0.4; _cpUp = 0.01; };
            case 2: { _time = 0.35; _cpUp = 0.01; };
            case 3: { _time = 0.3; _cpUp = 0.01; };
            case 4: { _time = 0.25; _cpUp = 0.01; };
            case 5: { _time = 0.2; _cpUp = 0.01; };
            case 6: { _time = 0.2; _cpUp = 0.02; };
            case 7: { _time = 0.2; _cpUp = 0.03; };
            case 8: { _time = 0.2; _cpUp = 0.04; };
            case 9: { _time = 0.15; _cpUp = 0.05; };
            case 10: { _time = 0.1; _cpUp = 0.07; };
            case 11: { _time = 0.1; _cpUp = 0.08; };
            case 12: { _time = 0.1; _cpUp = 0.09; };
            case 13: { _time = 0.09; _cpUp = 0.09; };
            case 14: { _time = 0.09; _cpUp = 0.09; };
            case 15: { _time = 0.09; _cpUp = 0.10; };
            case 16: { _time = 0.08; _cpUp = 0.11; };
            case 17: { _time = 0.08; _cpUp = 0.12; };
            case 18: { _time = 0.07; _cpUp = 0.12; };
            case 19: { _time = 0.06; _cpUp = 0.13; };
            case 20: { _time = 0.05; _cpUp = 0.14; };
    };
};
while{true} do {
            
            if((_data select 0) <= 3) then {    
                if(animationState player != "AinvPknlMstpSnonWnonDnon_medic_1") then {
                        player switchMove "AinvPknlMstpSnonWnonDnon_medic_1";
                        player playMoveNow "AinvPknlMstpSnonWnonDnon_medic_1";
                };
            };    
            sleep _time;
            _cP = _cP + _cpUp;
            _progress progressSetPosition _cP;
            _pgText ctrlSetText format["%3 (%1%2)...",round(_cP * 100),"%",_upp];
            if(_cP >= 1) exitWith {};
            if(player distance _vendor > 10) exitWith {};
};
 
if(player distance _vendor > 10) exitWith {hint localize "STR_Process_Stay"; 5 cutText ["","PLAIN"]; life_is_processing = false;};
if(!([false,_oldItem,_oldVal] call life_fnc_handleInv)) exitWith {5 cutText ["","PLAIN"]; life_is_processing = false;};
if(!([true,_newItem,_oldVal] call life_fnc_handleInv)) exitWith {5 cutText ["","PLAIN"]; [true,_oldItem,_oldVal] call life_fnc_handleInv; life_is_processing = false;};
5 cutText ["","PLAIN"];
titleText[format[localize "STR_Process_Processed",_oldVal,_itemName],"PLAIN"];
 
 
if( _profName != "" ) then
{
[_profName,_addExpAmount] call life_fnc_addExp;
};
life_is_processing = false;
}
else
{
if(life_RLP_handgeld < _cost) exitWith {hint format[localize "STR_Process_License",[_cost] call life_fnc_numberText]; 5 cutText ["","PLAIN"]; life_is_processing = false;};
 
_time = 0.9;
_cpUp = 0.01;
 
_profName = [_type] call life_fnc_profType;
_data = missionNamespace getVariable "_profName";
if( _profName != "" ) then {
 
        if((_data select 0) > 0) then {
                _addExpAmount = _addExpAmount + round(2.5 * (_data select 0));
        };
        switch ( _data select 0) do {
                case 0: { _time = 0.99; _cpUp = 0.009; };
                case 1: { _time = 0.9; _cpUp = 0.01; };
                case 2: { _time = 0.8; _cpUp = 0.01; };
                case 3: { _time = 0.7; _cpUp = 0.01; };
                case 4: { _time = 0.6; _cpUp = 0.01; };
                case 5: { _time = 0.5; _cpUp = 0.01; };
                case 6: { _time = 0.4; _cpUp = 0.01; };
                case 7: { _time = 0.3; _cpUp = 0.01; };
                case 8: { _time = 0.2; _cpUp = 0.01; };
                case 9: { _time = 0.2; _cpUp = 0.02; };
                case 10: { _time = 0.15; _cpUp = 0.021; };
                case 11: { _time = 0.14; _cpUp = 0.022; };
                case 12: { _time = 0.13; _cpUp = 0.023; };
                case 13: { _time = 0.12; _cpUp = 0.024; };
                case 14: { _time = 0.11; _cpUp = 0.025; };
                case 15: { _time = 0.1; _cpUp = 0.026; };
                case 16: { _time = 0.09; _cpUp = 0.027; };
                case 17: { _time = 0.08; _cpUp = 0.028; };
                case 18: { _time = 0.07; _cpUp = 0.029; };
                case 19: { _time = 0.06; _cpUp = 0.030; };
                case 20: { _time = 0.05; _cpUp = 0.031; };
            };
            
};
while{true} do {
    
    
    if((_data select 0) <= 3) then {    
            if(animationState player != "AinvPknlMstpSnonWnonDnon_medic_1") then {
                    player switchMove "AinvPknlMstpSnonWnonDnon_medic_1";
                    player playMoveNow "AinvPknlMstpSnonWnonDnon_medic_1";
            };
    };
    sleep _time;
    _cP = _cP + _cpUp;
    _progress progressSetPosition _cP;
    _pgText ctrlSetText format["%3 (%1%2)...",round(_cP * 100),"%",_upp];
    if(_cP >= 1) exitWith {};
    if(player distance _vendor > 10) exitWith {};
};
 
if(player distance _vendor > 10) exitWith {hint localize "STR_Process_Stay"; 5 cutText ["","PLAIN"]; life_is_processing = false;};
 
if(life_RLP_handgeld < _cost) exitWith {hint format[localize "STR_Process_License",[_cost] call life_fnc_numberText]; 5 cutText ["","PLAIN"]; life_is_processing = false;};
 
if(!([false,_oldItem,_oldVal] call life_fnc_handleInv)) exitWith {5 cutText ["","PLAIN"]; life_is_processing = false;};
 
if(!([true,_newItem,_oldVal] call life_fnc_handleInv)) exitWith {5 cutText ["","PLAIN"]; [true,_oldItem,_oldVal] call life_fnc_handleInv; life_is_processing = false;};
 
5 cutText ["","PLAIN"];
 
titleText[format[localize "STR_Process_Processed2",_oldVal,_itemName,[_cost] call life_fnc_numberText],"PLAIN"];
life_RLP_handgeld = life_RLP_handgeld - _cost;
if( _profName != "" ) then {
        [_profName,_addExpAmount] call life_fnc_addExp;
};
life_is_processing = false;
};  