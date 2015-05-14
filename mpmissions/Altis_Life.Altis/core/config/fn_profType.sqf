/*
File: fn_profType
Author: Jacob "PapaBear" Tyler
 
Description:
Text changing
*/
//convert name to prof name
_type = [_this,0,"",[""]] call BIS_fnc_param;
 
if(_type == "" ) exitWith {[]};
 
    //diag_log format["Type::%1",_type];
_profName = "";
switch ( _type ) do
{
//text to license
case "heroin": {_profName = "Heroin_Prof"; };
case "cocaine": { _profName = "Cocain_Prof";};
case "marijuana": { _profName = "Canabis_Prof";};
case "copper": { _profName = "Copper_Prof"; };
case "iron": { _profName = "Iron_Prof";};
case "salt": {_profName = "Salt_Prof"; };
case "sand": { _profName = "Sand_Prof";};
case "diamond": { _profName = "Diamond_Prof";};
case "oil": { _profName = "Oil_Prof";};
case "cement": { _profName = "Rock_Prof";};
case "apple": { _profName = "Fruit_Prof"; };
case "peach": { _profName = "Fruit_Prof";};
case "heroinu": {_profName = "Heroin_Prof"; };
case "cannabis": { _profName = "Canabis_Prof";};
case "copperore": { _profName = "Copper_Prof"; };
case "ironore": { _profName = "Iron_Prof";};
case "oilu": { _profName = "Oil_Prof";};
case "rock": { _profName = "Rock_Prof";};  
case "traubenu": { _profName = "Wein_Prof";}; 
case "zuckeru": { _profName = "Zucker_Prof";}; 
case "getreideu": { _profName = "Getreide_Prof";};  
case "hopfenu": { _profName = "Bier_Prof";}; 
case "tabaku": { _profName = "Tabak_Prof";};  
case "zinnu": { _profName = "Zinn_Prof";}; 
case "silberu": { _profName = "Silber_Prof";}; 
case "holzu": { _profName = "Holz_Prof";}; 
case "schwefelu": { _profName = "Schwefel_Prof";}; 
case "uran1": { _profName = "Uran_Prof";};
case "grab": { _profName = "Grab_Prof";};
case "krabben": { _profName = "Krabben_Prof";};
case "reli": { _profName = "Reli_Prof";};
case "salema": { _profName = "Fishing_Prof";};
case "ornate": { _profName = "Fishing_Prof";};
case "mackerel": { _profName = "Fishing_Prof";};
case "mullet": { _profName = "Fishing_Prof";};
case "tuna": { _profName = "Fishing_Prof";};
case "catshark": { _profName = "Fishing_Prof";};
case "turtle": { _profName = "Fishing_Prof";};
case "gas": { _profName = "Gas_Prof";};
case "gasv": { _profName = "Gas_Prof";};
 
//license to text
case "Heroin_Prof": {_profName = "Heroin"; };
case "Cocain_Prof": { _profName = "Kokain";};
case "Canabis_Prof": { _profName = "Canabis";};
case "Copper_Prof": { _profName = "Copper"; };
case "Iron_Prof": { _profName = "Iron";};
case "Salt_Prof": {_profName = "Salt"; };
case "Sand_Prof": { _profName = "Sand";};
case "Diamond_Prof": { _profName = "Diamond";};
case "Oil_Prof": { _profName = "Oil";};
case "Rock_Prof": { _profName = "Rock";};
case "Fruit_Prof": { _profName = "Fruit"; };
case "Wein_Prof": { _profName = "Wein";};
case "Zucker_Prof": { _profName = "Zucker";};
case "Getreide_Prof": { _profName = "Getreide";};
case "Bier_Prof": { _profName = "Bier";};
case "Tabak_Prof": { _profName = "Tabak";};
case "Zinn_Prof": { _profName = "Zinn";};
case "Silber_Prof": { _profName = "Silber";};
case "Holz_Prof": { _profName = "Holz";};
case "Schwefel_Prof": { _profName = "Schwefel";};
case "Uran_Prof": { _profName = "Uran";};
case "Grab_Prof": { _profName = "Grabbeilagen";};
case "Krabben_Prof": { _profName = "Krabben";};
case "Reli_Prof": { _profName = "Relikte";};
case "Fishing_Prof": { _profName = "Angeln"; };
case "Thief_Prof": { _profName = "Rauben"; };
case "Ticket_Prof": { _profName = "Ticket(Cop)"; };
case "Arrest_Prof": { _profName = "Einbuchten(Cop)"; };
case "Impound_Prof": { _profName = "Aufräumen(Cop)"; };
case "Gas_Prof": { _profName = "Bohrmeister"; };

//text to license
case "Heroin": {_profName = "Heroin_Prof"; };
case "Kokain": { _profName = "Cocain_Prof";};
case "Canabis": { _profName = "Canabis_Prof";};
case "Copper": { _profName = "Copper_Prof"; };
case "Iron": { _profName = "Iron_Prof";};
case "Salt": {_profName = "Salt_Prof"; };
case "Sand": { _profName = "Sand_Prof";};
case "Diamond": { _profName = "Diamond_Prof";};
case "Oil": { _profName = "Oil_Prof";};
case "Rock": { _profName = "Rock_Prof";};
case "Fruit": { _profName = "Fruit_Prof"; };
case "Wein": { _profName = "Wein_Prof";};
case "Zucker": { _profName = "Zucker_Prof";};
case "Getreide": { _profName = "Getreide_Prof";};
case "Bier": { _profName = "Bier_Prof";};
case "Tabak": { _profName = "Tabak_Prof";};
case "Zinn": { _profName = "Zinn_Prof";};
case "Silber": { _profName = "Silber_Prof";};
case "Holz": { _profName = "Holz_Prof";};
case "Schwefel": { _profName = "Schwefel_Prof";};
case "Uran": { _profName = "Uran_Prof";};
case "Grabbeilagen": { _profName = "grab_Prof";};
case "Krabben": { _profName = "krabben_Prof";};
case "Relikte": { _profName = "reli_Prof";};
case "Angeln": { _profName = "Fishing_Prof"; };
case "Rauben": { _profName = "Thief_Prof"; };
case "Ticket(Cop)": { _profName = "Ticket_Prof"; };
case "Einbuchten(Cop)": { _profName = "Arrest_Prof"; };
case "Aufräumen(Cop)": { _profName = "Impound_Prof"; };
case "Bohrmeister": { _profName = "Gas_Prof"; };

default{""};
};
 
 
 
_profName;