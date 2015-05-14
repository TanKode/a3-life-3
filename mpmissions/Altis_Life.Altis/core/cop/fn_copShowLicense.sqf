/*
File : fn_copShowLicense.sqf
Create : Black Lagoon
Edit : Noldy and CYNX
Link : http://www.global-gamer.com/home/wbb/index.php/Thread/509-Turorial-Polizeimarke-zeigen/

Beschreibung : Fuegt einen 'Polizeiausweis' hinzu, den man ueber scrollen Zivilisten zeigen kann
*/

private["_target", "_message","_coplevel","_rang"];

_target = cursorTarget;

if(playerSide != west) exitWith
{
	hint "Du bist kein Cop!";
};

if( isNull _target) then {_target = player;};

if( !(_target isKindOf "Man") ) then {_target = player;};

if( !(alive _target) ) then {_target = player;};

_coplevel = call life_coplevel;

switch ( _coplevel ) do
{
	case 1: { _rang = "Polizeianwaerter"; };
	case 2: { _rang = "Wachtmeister"; };
	case 3: { _rang = "Pol. Komissar"; };
	case 4: { _rang = "Ober Komissar"; };
	case 5: { _rang = "Haupt Komissar"; };
	case 6: { _rang = "B.Polizist"; };
	case 7: { _rang = "SEK"; };
	case 8: { _rang = "Ausbilder"; };
	case 9: { _rang = "Polizeileiter"; };
	case 10: { _rang = "SEK Leiter"; };
	case 11: { _rang = "Polizei Chef"; };
	default {_rank =  "Error";};
};

_message = format["<img size='10' color='#FFFFFF' image='textures\marke.paa'/><br/><br/><t size='2.5'>%1</t><br/><t size='1.8'>%2</t><br/><t size='1'>Polizei Altis</t>", name player, _rang];

[[player, _message],"life_fnc_copLicenseShown",_target,false] spawn life_fnc_MP;
