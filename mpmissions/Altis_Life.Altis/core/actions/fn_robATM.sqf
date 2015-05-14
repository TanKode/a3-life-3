/*
file: fn_robShops.sqf
Author: MrKraken
Description:
Executes the rob shob action!
Modified by: KrisSerbia
*/
private["_robber","_shop","_timer","_funds","_dist","_success","_pos","_robberyreward"];
_shop = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
_robber = [_this,1,ObjNull,[ObjNull]] call BIS_fnc_param;
_action = [_this,2] call BIS_fnc_param;
_timer = 300;
_funds = 50000 + round(random 50000);
_dist = _robber distance _shop;
_success = false;
_pos = GetPos player;


if(!([false,"boltcutter",1] call life_fnc_handleInv)) exitWith {"Du hast keinen Bolzenschneider"};
if ({side _x == west} count playableUnits < 2) exitWith {hint "Es müssen mindestens 2 Cops online sein."};
if (vehicle player != _robber) exitWith { hint "Du musst aus deinem Fahrzeug aussteigen!";};
if (side _robber != Civilian) exitWith { hint "Sie sind ein Polizeibeamter! Verziehen Sie sich bevor ich mich bei ihren Vorgesetzten beschweren werde!";};
if (alive _robber && {currentWeapon _robber == ""}) exitWith { hint "Du willst mich ohne Waffe ausrauben, dein Ernst? Du siehst die Tür? Nutze sie!";};
if (alive _robber && side _robber == Civilian && {currentWeapon _robber != ""} && {_funds > 0}) then
{
	hint format ["Du knackst den ATM! Warte %1 sec.",_timer];
	[[2,"Ein ATM wird ausgeraubt!"],"life_fnc_broadcast",nil,false] call life_fnc_MP;
	_shop switchMove "AmovPercMstpSsurWnonDnon";
	_shop removeAction _action;


		_Pos = position player;
					_marker = createMarker ["Marker200", _Pos];
					"Marker200" setMarkerColor "ColorRed";
					"Marker200" setMarkerText "ACHTUNG, Überfall!";
					"Marker200" setMarkerType "mil_warning";

	while {true} do
	{
		hintsilent format ["%1 Sekunden verbleibend. Bleib innerhalb 5m des ATM!",_timer];
		sleep 1;
		_timer = _timer - 1;
		_dist = _robber distance _shop;
		
		if (!alive _robber) exitwith
		{
			hint "Hier spricht die Stimme aus dem Jenseits! Du bist tot! (P.S. Dein Überfall ist somit fehlgeschlagen! Toll, ne?";
			deleteMarker "Marker200";
			_shop switchMove "";
			_action = _shop addAction["ATM ausrauben",life_fnc_robShops];
		};
		
		if (_dist >= 6) exitwith
		{
			hint "Bleibe innerhalb von 5m zum ATM";
			deleteMarker "Marker200";
			_shop switchMove "";
			_action = _shop addAction["ATM ausrauben",life_fnc_robShops];
		};
		
		if(life_istazed) exitwith
		{
			hint "Überfall fehlgeschlagen, du wurdest getazert. *bizzelbizzel*";
			deleteMarker "Marker200";
			_shop switchMove "";
			_action = _shop addAction["ATM ausrauben",life_fnc_robShops];
		};
		
		if(_timer < 1) exitWith { _success = true;};
	};
	
	if(!_success) exitWith {};
	life_RLP_handgeld = life_RLP_handgeld + _funds;
	hint format["Du hast €%1 gestohlen",_funds];
	deleteMarker "Marker200";
	[[getPlayerUID _robber,name _robber,"212"],"life_fnc_wantedAdd",false,false] call life_fnc_MP;

	_shop switchMove "";
	_funds = 0;
    life_use_atm_2 = false;
	sleep 800;//Cooldown between the robberies
    life_use_atm_2 = true;
	_action = _shop addAction["ATM ausrauben",life_fnc_robShops];
	[] call life_fnc_hudUpdate;
};