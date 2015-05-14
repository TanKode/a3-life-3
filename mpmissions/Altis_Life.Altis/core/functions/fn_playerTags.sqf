/*
#include <macro.h>

private["_ui","_units"];

#define iconID 78000
#define scale 0.8

if(visibleMap OR {!alive player} OR {dialog}) exitWith {
	500 cutText["","PLAIN"];
};

_ui = uiNamespace getVariable ["Life_HUD_nameTags",displayNull];
if(isNull _ui) then {
	500 cutRsc["Life_HUD_nameTags","PLAIN"];
	_ui = uiNamespace getVariable ["Life_HUD_nameTags",displayNull];
};

_units = nearestObjects[(visiblePosition player),["Man","Land_Pallet_MilBoxes_F","Land_Sink_F"], 50];
_units = _units - [player];

{
	private["_name", "_text", "_icon", "_hasName"];
	_name = _x getVariable ["realname", name _x];
	_hasName = if(!isNil {(_x getVariable "realname")}) then {true} else {false};

	_idc = _ui displayCtrl (iconID + _forEachIndex);

	if(!(lineIntersects [eyePos player, eyePos _x, player, _x]) && {!isNil {_x getVariable "realname"}}) then {
		_pos = switch(typeOf _x) do {
			case "Land_Pallet_MilBoxes_F": {[visiblePosition _x select 0, visiblePosition _x select 1, (getPosATL _x select 2) + 1.5]};
			case "Land_Sink_F": {[visiblePosition _x select 0, visiblePosition _x select 1, (getPosATL _x select 2) + 2]};
			default {[visiblePosition _x select 0, visiblePosition _x select 1, ((_x modelToWorld (_x selectionPosition "head")) select 2)+.5]};
		};

		_sPos = worldToScreen _pos;
		_distance = _pos distance player;

		if(count _sPos > 1 && {_distance < 35}) then {
			_text = "";
			_icon = "";

			switch (true) do {
				//My Group
				case (_x in (units grpPlayer) && playerSide == civilian): {
					_text = format["<t color='#00FF00'>%1</t>", _name];
				};

				//Dead Players
				case (!alive _x): {
					_icon = "a3\UI_F\data\GUI\Cfg\Hints\death_ca.paa";
					_text = format["<t color='#FF0000'><img image='%2' size='2'></img> %1</t>", _name, _icon];
				};
				case ((goggles _x) in RLP_goggles_Array): {_text = format["<t color='#000000'>Maskierte Person</t>"];};
				case ((headgear _x) in RLP_headgear_Array): {_text = format["<t color='#000000'>Maskierte Person</t>"];};
				case ((uniform _x) in RLP_uniform_Array): {_text = format["<t color='#000000'>Maskierte Person</t>"];};
				//Cops
				case(_x getVariable["coplevel", 0] > 0) : {
					switch (_x getVariable["coplevel", 0]) do {
						case (1) : {_icon = ""; _text = format["<t color='#2E64FE'><img image='%1' size='1'></img> [Rekrut] %1</t>", _icon];};
						case (2) : {_icon = "a3\UI_F\data\GUI\Cfg\Ranks\private_gs.paa"; _text = format["<t color='#2E64FE'><img image='%1' size='1'></img> [Wachtmeister] </t>", _icon];};
						case (3) : {_icon = "a3\UI_F\data\GUI\Cfg\Ranks\corporal_gs.paa"; _text = format["<t color='#2E64FE'><img image='%1' size='1'></img> [Polizeikommissar] </t>", _icon];};
						case (4) : {_icon = "a3\UI_F\data\GUI\Cfg\Ranks\corporal_gs.paa"; _text = format["<t color='#2E64FE'><img image='%1' size='1'></img> [Polizeioberkommissar] </t>", _icon];};
						case (5) : {_icon = "a3\UI_F\data\GUI\Cfg\Ranks\corporal_gs.paa"; _text = format["<t color='#2E64FE'><img image='%1' size='1'></img> [Polizeihauptkommissar] </t>", _icon];};
						case (6) : {_icon = "a3\UI_F\data\GUI\Cfg\Ranks\major_gs.paa"; _text = format["<t color='#2E64FE'><img image='%1' size='1'></img> [Bundespolizist] </t>", _icon];};
						case (7) : {_icon = "a3\UI_F\data\GUI\Cfg\Ranks\major_gs.paa"; _text = format["<t color='#2E64FE'><img image='%1' size='1'></img> [SEK-Anwärter] </t>", _icon];};
						case (8) : {_icon = "a3\UI_F\data\GUI\Cfg\Ranks\sergeant_gs.paa"; _text = format["<t color='#2E64FE'><img image='%1' size='1'></img> [SEK-Mitglied] </t>", _icon];};
						case (9) : {_icon = "a3\UI_F\data\GUI\Cfg\Ranks\sergeant_gs.paa"; _text = format["<t color='#2E64FE'><img image='%1' size='1'></img> [SEK-Leiter] </t>", _icon];};
						case (10) : {_icon = "a3\UI_F\data\GUI\Cfg\Ranks\sergeant_gs.paa"; _text = format["<t color='#2E64FE'><img image='%1' size='1'></img> [SEK-Veteran] </t>", _icon];};
						case (11) : {_icon = "a3\UI_F\data\GUI\Cfg\Ranks\sergeant_gs.paa"; _text = format["<t color='#2E64FE'><img image='%1' size='1'></img> [Polizeichef] </t>", _icon];};
						default {};
					};
				};

				//Medics
				case(_x getVariable["medlevel", 0] > 0) : {
					switch (_x getVariable["medlevel", 0]) do {
						case (1) : {_icon = "a3\UI_F\data\GUI\Cfg\cursors\add_gs.paa"; _text = format["<t color='#FF0000'><img image='%1' size='1'></img> [Assistenzarzt]<br/> </t>", _icon];};
						case (2) : {_icon = "a3\UI_F\data\GUI\Cfg\cursors\add_gs.paa"; _text = format["<t color='#FF0000'><img image='%1' size='1'></img> [Allgemeinmediziner]<br/> </t>", _icon];};
						case (3) : {_icon = "a3\UI_F\data\GUI\Cfg\cursors\add_gs.paa"; _text = format["<t color='#FF0000'><img image='%1' size='1'></img> [Rettungssanitäter]<br/> </t>", _icon];};
						case (4) : {_icon = "a3\UI_F\data\GUI\Cfg\cursors\add_gs.paa"; _text = format["<t color='#FF0000'><img image='%1' size='1'></img> [Notarzt]<br/> </t>", _icon];};
						case (5) : {_icon = "a3\UI_F\data\GUI\Cfg\cursors\add_gs.paa"; _text = format["<t color='#FF0000'><img image='%1' size='1'></img> [Chefarzt]<br/> </t>", _icon];};
						default {};
					};
				};

				//Medics
				case(_x getVariable["adaclevel", 0] > 0) : {
					switch (_x getVariable["adaclevel", 0]) do {
						case (1) : {_icon = "a3\UI_F\data\GUI\Cfg\cursors\add_gs.paa"; _text = format["<t color='#FF0000'><img image='%1' size='1'></img> [ADAC Praktikant]<br/> </t>", _icon];};
						case (2) : {_icon = "a3\UI_F\data\GUI\Cfg\cursors\add_gs.paa"; _text = format["<t color='#FF0000'><img image='%1' size='1'></img> [ADAC Mitglied]<br/> </t>", _icon];};
						case (3) : {_icon = "a3\UI_F\data\GUI\Cfg\cursors\add_gs.paa"; _text = format["<t color='#FF0000'><img image='%1' size='1'></img> [ADAC Schrauber]<br/> </t>", _icon];};
						case (4) : {_icon = "a3\UI_F\data\GUI\Cfg\cursors\add_gs.paa"; _text = format["<t color='#FF0000'><img image='%1' size='1'></img> [ADAC Leiter]<br/> </t>", _icon];};
						case (5) : {_icon = "a3\UI_F\data\GUI\Cfg\cursors\add_gs.paa"; _text = format["<t color='#FF0000'><img image='%1' size='1'></img> [ADAC Chef]<br/> </t>", _icon];};
						default {};
					};
				};

				//Others
				default {
					//Others with gang
 					if(!isNil {(group _x) getVariable "gang_name"}) then {
 						_groupname = (group _x) getVariable ["gang_name",""];
						_text = format["<t size='0.9' color='#B6B6B6'>%1</t>", _groupname];
 					};
				};
			};

			_idc ctrlSetStructuredText parseText _text;
			_idc ctrlSetPosition [_sPos select 0, _sPos select 1, 0.4, 0.65];
			_idc ctrlSetScale scale;
			_idc ctrlSetFade 0;
			_idc ctrlCommit 0;
			_idc ctrlShow true;
		} else {
			_idc ctrlShow false;
		};
	} else {
		_idc ctrlShow false;
	};
} foreach _units;
*/