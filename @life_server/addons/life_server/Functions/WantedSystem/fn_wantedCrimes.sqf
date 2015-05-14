/*
	File: fn_wantedCrimes.sqf
	Author: ColinM
	Assistance by: Paronity
	Stress Tests by: Midgetgrimm
	
	Description:
	Grabs a list of crimes committed by a person.
*/
private["_display","_criminal","_tab","_queryResult","_result","_ret","_crimesDb","_crimesArr","_type"];
disableSerialization;
_ret = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
_criminal = [_this,1,[],[]] call BIS_fnc_param;

_result = format["SELECT wantedCrimes, wantedBounty FROM wanted WHERE active='1' AND wantedID='%1'",(_criminal select 0)];
waitUntil{!DB_Async_Active};
_tickTime = diag_tickTime;
_queryResult = [_result,2] call DB_fnc_asyncCall;

_ret = owner _ret;
_crimesArr = [];

_crimesDB = [(_queryResult select 0)] call DB_fnc_mresToArray;
if(typeName _crimesDb == "STRING") then {_crimesDb = call compile _crimesDb;};
_queryResult set[0,_crimesDb];
_type = _queryResult select 0;
{
	switch(_x) do
	{
		case "187V": {_x = "Mord durch Überfahren"};
		case "187": {_x = "Mord"};
		case "901": {_x = "Gefängnis Ausbruch"};
		case "261": {_x = "vergewaltigung"};
		case "261A": {_x = "Versuchter Vergewaltigung"};
		case "215": {_x = "versuchter Autodiebstahl"};
		case "213": {_x = "gebrauch von illegalen explosiven"};
		case "211": {_x = "Raub"};
		case "207": {_x = "Geiselnahme"};
		case "207A": {_x = "Versuchte Geiselnahme"};
		case "390": {_x = "öffenliche Intoxication"};
		case "487": {_x = "Autodiebstahl"};
		case "488": {_x = "Diebstahl"};
		case "480": {_x = "Hit and run"};
		case "481": {_x = "Drogendelikte"};
		case "482": {_x = "Verteilung von Drogen"};
		case "483": {_x = "Drogenhandeln"};
		case "459": {_x = "Einbruch"};
		case "666": {_x = "Steuerhinterziehung"};
		case "667": {_x = "Terrorismus"};
		case "668": {_x = "Ohne Lizens Jagen"};
		case "919": {_x = "OrganHandel"};
		case "919A": {_x = "Versuchter OrganHandel"};
		
		case "1": {_x = "Fahren ohne Führerschein"};
		case "2": {_x = "Versuchter Diebstahl Fahrzeugs"};
		case "3": {_x = "Diebstahl/Führen e.fremden Zivilfahrzeugs"};
		case "4": {_x = "Fahren ohne Licht"};
		case "5": {_x = "Überhöhte Geschwindigkeit"};
		case "6": {_x = "Gefährliche Fahrweise"};
		case "7": {_x = "Versuchter Diebstahl e.Polizeifahrzeugs"};
		case "8": {_x = "Diebstahl von Polizeifahrzeugen"};
		case "9": {_x = "Landen in einer Flugverbotszone"};
		case "10": {_x = "Fahren von illegalen Fahrzeugen"};
		case "11": {_x = "Unfallverursacher/Fahrerflucht nach Unfall"};
		case "12": {_x = "Fahrerflucht vor der Polizei"};
		case "13": {_x = "Überfahren eines anderen Spielers"};
		case "14": {_x = "Illegale Strassensperren"};
		case "15": {_x = "Widerstand gegen die Staatsgewalt"};
		case "16": {_x = "Nicht befolgen e.pol.Anordnung"};
		case "17": {_x = "Beamtenbeleidigung"};
		case "18": {_x = "Belästigung eines Polizisten"};
		case "19": {_x = "Betreten der pol.Sperrzone"};
		case "20": {_x = "Töten eines Polizisten"};
		case "21": {_x = "Beschuss auf Polizei/Beamte/Eigentum"};
		case "22": {_x = "Zerstörung von Polizeieigentum"};
		case "23": {_x = "Drogendelikte"};
		case "24": {_x = "Waffenbesitz ohne Lizenz"};
		case "25": {_x = "Mit gez.Waffe durch Stadt"};
		case "26": {_x = "Besitz einer verbotenen Waffe"};
		case "27": {_x = "Schusswaffengebrauch innerhalb Stadt"};
		case "28": {_x = "Geiselnahme"};
		case "29": {_x = "Überfall auf Personen/Fahrzeuge"};
		case "30": {_x = "Bankraub"};
		case "31": {_x = "Mord"};
		case "32": {_x = "Aufstand"};
		case "33": {_x = "Angriff durch Rebellen"};
		case "34": {_x = "Angriff/Belagerung von Hauptstädten"};
		case "35": {_x = "Vers.Landung in einer Flugverbotszone"};
		case "36": {_x = "Fliegen/Schweben unterhalb 150m ü.Stadt"};
		case "37": {_x = "Ausbruch aus dem Gefaengnis"};
		case "38": {_x = "Fliegen ohne Fluglizenz"};
		case "39": {_x = "Dauerhaft störendes Hupen"};
		case "40": {_x = "Handel mit exotischen Gütern"};	
	};
	_crimesArr pushBack _x;
}forEach _type;
_queryResult set[0,_crimesArr];

diag_log "------------- Client Query Request -------------";
diag_log format["QUERY: %1",_result];
diag_log format["Time to complete: %1 (in seconds)",(diag_tickTime - _tickTime)];
diag_log format["Result: %1",_queryResult];
diag_log "------------------------------------------------";

[[_queryResult],"life_fnc_wantedInfo",_ret,false] spawn life_fnc_MP;