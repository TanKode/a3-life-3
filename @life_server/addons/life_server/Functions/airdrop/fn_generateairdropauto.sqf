/*
	@file Version: 1.0.0.0
	@file Author: RYN_Ryan
	@file edit: 20.01.2015
	Copyright © 2015 Ryan Torzynski, All rights reserved
	All servers are allowed to use this code, modify and publish it. Every modified release of this script must contain "Original by RTT"!
*/

sleep 1;

if (!airdrop_enable) exitWith {};
if (airdrop_goingon) exitWith {};

_chance = floor(random 100);
if (_chance>airdrop_chance) exitWith {};
_toWait = (random (airdrop_time_max - airdrop_time_min)) + airdrop_time_min;
sleep _toWait; // Wait abit for the airdrop
if (!airdrop_enable) exitWith {};
if (airdrop_goingon) exitWith {};
airdrop_goingon=true;

// AIRDROP STARTEN
[[5,"<t size='1.2'><t color='#FF0000'>Airdrop-Mission</t></t><br/><br/><t size='1'>Das PvP Event startet in 15 Minuten! Die Position wird dann durchgesagt!</t>"],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
_poses = count airdrop_positions;
_inArr = floor(random _poses);
_dest = airdrop_positions select _inArr;

sleep 300;

_marker = createMarker ["Airdropmarker", _dest];
"Airdropmarker" setMarkerColor "ColorRed";
"Airdropmarker" setMarkerType "Empty";
"Airdropmarker" setMarkerShape "ELLIPSE";
"Airdropmarker" setMarkerSize [500,500];
_markerText = createMarker ["Airdropmarkertext", _dest];
"Airdropmarkertext" setMarkerColor "ColorBlack";
"Airdropmarkertext" setMarkerText "Airdrop-Mission";
"Airdropmarkertext" setMarkerType "mil_warning";

[[5,"<t size='1.2'><t color='#FF0000'>Airdrop-Mission</t></t><br/><br/><t size='1'>10 Minuten bis zum PvP Event! Die Position ist jetzt makiert!</t>"],"life_fnc_broadcast",true,false] spawn life_fnc_MP;

sleep 300;

[[5,"<t size='1.2'><t color='#FF0000'>Airdrop-Mission</t></t><br/><br/><t size='1'>5 Minuten bis zum PvP Event! Die Position ist jetzt makiert!</t>"],"life_fnc_broadcast",true,false] spawn life_fnc_MP;

sleep 60;

[[5,"<t size='1.2'><t color='#FF0000'>Airdrop-Mission</t></t><br/><br/><t size='1'>4 Minuten bis zum PvP Event! Die Position ist jetzt makiert!</t>"],"life_fnc_broadcast",true,false] spawn life_fnc_MP;

sleep 60;

[[5,"<t size='1.2'><t color='#FF0000'>Airdrop-Mission</t></t><br/><br/><t size='1'>3 Minuten bis zum PvP Event! Die Position ist jetzt makiert!</t>"],"life_fnc_broadcast",true,false] spawn life_fnc_MP;

sleep 60;

[[5,"<t size='1.2'><t color='#FF0000'>Airdrop-Mission</t></t><br/><br/><t size='1'>2 Minuten bis zum PvP Event! Die Position ist jetzt makiert!</t>"],"life_fnc_broadcast",true,false] spawn life_fnc_MP;

sleep 60;

[[5,"<t size='1.2'><t color='#FF0000'>Airdrop-Mission</t></t><br/><br/><t size='1'>1 Minute bis zum PvP Event! Die Position ist jetzt makiert!</t>"],"life_fnc_broadcast",true,false] spawn life_fnc_MP;

heli1 = CreateVehicle [airdrop_helicopter_main, [7950, 9667, 0], [], 0, "FLY"];
heli2 = CreateVehicle [airdrop_helicopter_scnd, [7950, 9700, 0], [], 0, "FLY"];
heli3 = CreateVehicle [airdrop_helicopter_scnd, [7950, 9630, 0], [], 0, "FLY"];

heli1 allowDamage false;
heli2 allowDamage false;
heli3 allowDamage false;

_mygroup1 = [[7950, 9667, 0], CIVILIAN, ["O_G_Soldier_SL_F"],[],[],[],[],[],180] call BIS_fnc_spawnGroup;
_mygroup2 = [[7950, 9667, 0], CIVILIAN, ["O_G_Soldier_SL_F"],[],[],[],[],[],180] call BIS_fnc_spawnGroup;
_mygroup3 = [[7950, 9667, 0], CIVILIAN, ["O_G_Soldier_SL_F"],[],[],[],[],[],180] call BIS_fnc_spawnGroup;

{_x moveInDriver heli1} forEach units _mygroup1;
{_x moveInDriver heli2} forEach units _mygroup2;
{_x moveInDriver heli3} forEach units _mygroup3;

_mygroup1 addWaypoint [_dest, 0];
_mygroup1 addWaypoint [[2380.47,22267.8,0], 0];
_mygroup2 addWaypoint [_dest, 0];
_mygroup2 addWaypoint [[2380.47,22267.8,0], 0];
_mygroup3 addWaypoint [_dest, 0];
_mygroup3 addWaypoint [[2380.47,22267.8,0], 0];

_markerText = createMarker ["airbox_marker", [14028.5,18719.7,0.0014267]];
"airbox_marker" setMarkerColor "ColorBlue";
"airbox_marker" setMarkerText " Airdrop-Box";
"airbox_marker" setMarkerType "mil_destroy";

_containerdummy = createVehicle ["Land_Cargo20_blue_F", [3450.7363, 16708.432, 90], [], 0, "CAN_COLLIDE"];
_containerdummy attachTo [heli1,[0,0,-3.5]];
_containerdummy setDir 90;


while { _dest distance heli1 > 250 } do { "airbox_marker" setMarkerPos getPos heli1; sleep 1; };
[[5,"<t size='1.2'><t color='#FF0000'>Airdrop-Mission</t></t><br/><br/><t size='1'>Die Beute des Events zerstört sich in 20 Minuten!</t>"],"life_fnc_broadcast",true,false] spawn life_fnc_MP;

// Drop the container

deleteVehicle _containerdummy;
sleep 0.1;
_container = createVehicle ["Land_Cargo20_blue_F", [3450.7363, 16708.432, 90], [], 0, "CAN_COLLIDE"];
_para = createVehicle ["O_Parachute_02_F", [getPos heli1 select 0, getPos heli1 select 1, getPos heli1 select 2], [], 0, ""];
_para setPosATL (heli1 modelToWorld[0,0,100]);
_para attachTo [heli1,[0,0,-10]];
detach _para;
_container attachTo [_para,[0,0,-2]];
_container setDir 90;
playSound3D ["a3\sounds_f\weapons\Flare_Gun\flaregun_1_shoot.wss", _container];
_smoke="SmokeShellGreen" createVehicle [getpos _container select 0, getpos _container select 1,0];
_smoke attachTo [_container,[0,0,0]];
_light = "Chemlight_green" createVehicle getPos _container;
_light attachTo [_container,[0,0,0]];
_flare = "F_40mm_Green" createVehicle getPos _container;
_flare attachTo [_container,[0,0,0]];
sleep 0.1;
while { (getPos _container select 2) > 2 } do { "airbox_marker" setMarkerPos getPos _container;sleep 1; };
detach _container;
_container setPos [getPos _container select 0, getPos _container select 1, (getPos _container select 2)+0.5];
playSound3D ["A3\Sounds_F\sfx\alarm_independent.wss", _container];
sleep 6;
"M_NLAW_AT_F" createVehicle [getPos _container select 0, getPos _container select 1, 0];
_pos_container = getPos _container;
deleteVehicle _container;
sleep 0.5;
_box = createVehicle ["CargoNet_01_box_F", _pos_container, [], 0, "CAN_COLLIDE"];
_box allowDamage false;
_box setMass 100;
_smoke="SmokeShellGreen" createVehicle [getpos _box select 0,getpos _box select 1,0];
_flare = "F_40mm_Green" createVehicle getPos _container;
_light attachTo [_box,[0,0,0]];
_flare attachTo [_box,[0,0,0]];

// Fill box

clearWeaponCargoGlobal _box;
clearMagazineCargoGlobal _box;
clearItemCargoGlobal _box;

// Nightstalker
sleep 0.1;
_var=floor(random 2);
if(_var==1) then {
	_box addWeaponCargoGlobal ["optic_Nightstalker", 1];
};
// 4-five
sleep 0.1;
_var=floor(random 1);
_amount=floor(random 5);
if (_var==1) then {
	_box addMagazineCargoGlobal ["hgun_Pistol_heavy_01_F", _amount];
	_box addMagazineCargoGlobal ["muzzle_snds_acp", floor(random _amount)];
	_box addMagazineCargoGlobal ["optic_MRD", floor(random _amount)];
	_box addMagazineCargoGlobal ["11Rnd_45ACP_Mag", floor(random _amount) * 5];
};
// MK18
sleep 0.1;
_var=floor(random 2);
_amount=floor(random 5);
if (_var==1) then {
	_box addMagazineCargoGlobal ["srifle_EBR_F", _amount];
	_box addMagazineCargoGlobal ["muzzle_snds_B", floor(random _amount)];
	_box addMagazineCargoGlobal ["20Rnd_762x51_Mag", floor(random _amount) * 5];
};
// Zafir
sleep 0.1;
_var=floor(random 2);
_amount=floor(random 5);
if (_var==1) then {
	_box addMagazineCargoGlobal ["LMG_Zafir_F", _amount];
	_box addMagazineCargoGlobal ["muzzle_snds_H_MG", floor(random _amount)];
	_box addMagazineCargoGlobal ["150Rnd_762x51_Box", floor(random _amount) * 3];
	_box addMagazineCargoGlobal ["150Rnd_762x51_Box_Tracer", floor(random _amount) * 5];
};
// Katiba
sleep 0.1;
_var=floor(random 2);
_amount=floor(random 5);
if (_var==1) then {
	_box addMagazineCargoGlobal ["arifle_Katiba_GL_F", _amount];
	_box addMagazineCargoGlobal ["muzzle_snds_H", floor(random _amount)];
	_box addMagazineCargoGlobal ["30Rnd_65x39_caseless_green", floor(random _amount) * 3];
	_box addMagazineCargoGlobal ["30Rnd_65x39_caseless_green_mag_Tracer", floor(random _amount) * 5];
	_box addMagazineCargoGlobal ["1Rnd_Smoke_Grenade_shell", floor(random _amount) * 2];
	_box addMagazineCargoGlobal ["3Rnd_Smoke_Grenade_shell", floor(random _amount) / 2];
};
// MX
sleep 0.1;
_var=floor(random 2);
_amount=floor(random 5);
if (_var==1) then {
	_box addMagazineCargoGlobal ["arifle_MX_GL_F", _amount];
	_box addMagazineCargoGlobal ["muzzle_snds_H", floor(random _amount)];
	_box addMagazineCargoGlobal ["30Rnd_65x39_caseless_mag", floor(random _amount) * 3];
	_box addMagazineCargoGlobal ["30Rnd_65x39_caseless_mag_Tracer", floor(random _amount) * 5];
	_box addMagazineCargoGlobal ["1Rnd_Smoke_Grenade_shell", floor(random _amount) * 2];
	_box addMagazineCargoGlobal ["3Rnd_Smoke_Grenade_shell", floor(random _amount) / 2];
};
// TRG
sleep 0.1;
_var=floor(random 2);
_amount=floor(random 5);
if (_var==1) then {
	_box addMagazineCargoGlobal ["arifle_TRG21_GL_F", _amount];
	_box addMagazineCargoGlobal ["muzzle_snds_M", floor(random _amount)];
	_box addMagazineCargoGlobal ["30Rnd_556x45_Stanag", floor(random _amount) * 3];
	_box addMagazineCargoGlobal ["30Rnd_556x45_Stanag_Tracer_Red", floor(random _amount) * 5];
	_box addMagazineCargoGlobal ["30Rnd_556x45_Stanag_Tracer_Green", floor(random _amount) * 5];
	_box addMagazineCargoGlobal ["30Rnd_556x45_Stanag_Tracer_Yellow", floor(random _amount) * 5];
	_box addMagazineCargoGlobal ["1Rnd_Smoke_Grenade_shell", floor(random _amount) * 2];
	_box addMagazineCargoGlobal ["3Rnd_Smoke_Grenade_shell", floor(random _amount) / 2];
};
// MK20
sleep 0.1;
_var=floor(random 2);
_amount=floor(random 5);
if (_var==1) then {
	_box addMagazineCargoGlobal ["arifle_Mk20_GL_F", _amount];
	_box addMagazineCargoGlobal ["muzzle_snds_M", floor(random _amount)];
	_box addMagazineCargoGlobal ["200Rnd_65x39_cased_Box", floor(random _amount) * 3];
	_box addMagazineCargoGlobal ["200Rnd_65x39_cased_Box_Tracer", floor(random _amount) * 5];
	_box addMagazineCargoGlobal ["1Rnd_Smoke_Grenade_shell", floor(random _amount) * 2];
	_box addMagazineCargoGlobal ["3Rnd_Smoke_Grenade_shell", floor(random _amount) / 2];
};
sleep 0.1;
// M24
_var=floor(random 2);
_amount=floor(random 5);
if (_var==1) then {
	_box addMagazineCargoGlobal ["srifle_mas_m24_v", _amount];
	_box addMagazineCargoGlobal ["muzzle_mas_snds_SHc", floor(random _amount)];
	_box addMagazineCargoGlobal ["5Rnd_mas_762x51_Stanag", floor(random _amount) * 5];
};
sleep 0.1;
// MAR-10
_var=floor(random 2);
if (_var==1) then {
	_box addMagazineCargoGlobal ["srifle_DMR_02_camo_F", 1];
	_box addMagazineCargoGlobal ["muzzle_snds_338_green", floor(random 1)];
	_box addMagazineCargoGlobal ["bipod_03_F_oli", floor(random 1)];
	_box addMagazineCargoGlobal ["optic_AMS_khk", 1];
	_box addMagazineCargoGlobal ["10Rnd_338_Mag", 3];
};
sleep 0.1;
// MK-1
_var=floor(random 2);
if (_var==1) then {
	_box addMagazineCargoGlobal ["srifle_DMR_03_F", 1];
	_box addMagazineCargoGlobal ["muzzle_snds_B", floor(random 1)];
	_box addMagazineCargoGlobal ["bipod_01_F_blk", floor(random 1)];
	_box addMagazineCargoGlobal ["optic_AMS", 1];
	_box addMagazineCargoGlobal ["20Rnd_762x51_Mag", 3];
};
sleep 0.1;
// Cyrus
_var=floor(random 2);
if (_var==1) then {
	_box addMagazineCargoGlobal ["srifle_DMR_05_hex_F", 1];
	_box addMagazineCargoGlobal ["muzzle_snds_93mmg_tan", floor(random 1)];
	_box addMagazineCargoGlobal ["bipod_02_F_hex", floor(random 1)];
	_box addMagazineCargoGlobal ["optic_KHS_hex", 1];
	_box addMagazineCargoGlobal ["10Rnd_93x64_DMR_05_Mag", 3];
};
sleep 0.1;
// Fill box end

sleep 300;
deleteVehicle heli1;
deleteVehicle heli2;
deleteVehicle heli3;
sleep 600;
[[5,"<t size='1.2'><t color='#FF0000'>Airdrop-Mission</t></t><br/><br/><t size='1'>Noch 5 Minuten bis zur Zerstörung</t>"],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
sleep 240;
[[5,"<t size='1.2'><t color='#FF0000'>Airdrop-Mission</t></t><br/><br/><t size='1'>1 Minute bis zur Zerstörung</t>"],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
sleep 50;
[[5,"<t size='1.2'><t color='#FF0000'>Airdrop-Mission</t></t><br/><br/><t size='1'>10 Sekunden bis zur Zerstörung</t>"],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
sleep 10;
[[5,"<t size='1.2'><t color='#FF0000'>Airdrop-Mission beendet!</t></t><br/><br/><t size='1'>Das PvP Event ist nun zuende!</t>"],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
deleteVehicle _box;
_bmb = "BO_GBU12_LGB" createVehicle [(getPos _box select 0)-21,(getPos _box select 1)+21,0];
sleep 1;
_bmb = "BO_GBU12_LGB" createVehicle [(getPos _box select 0)-1,(getPos _box select 1)+56,0];
sleep 1;
_bmb = "BO_GBU12_LGB" createVehicle [(getPos _box select 0)+23,(getPos _box select 1)-75,0];
sleep 1;
_bmb = "BO_GBU12_LGB" createVehicle [(getPos _box select 0)-50,(getPos _box select 1)+1,0];
sleep 1;
_bmb = "BO_GBU12_LGB" createVehicle [(getPos _box select 0)+87,(getPos _box select 1)-22,0];
sleep 1;
_bmb = "BO_GBU12_LGB" createVehicle [(getPos _box select 0)+0,(getPos _box select 1)-0,0];
sleep 1;
_bmb = "BO_GBU12_LGB" createVehicle [(getPos _box select 0)+20,(getPos _box select 1)-20,0];
sleep 1;
_bmb = "BO_GBU12_LGB" createVehicle [(getPos _box select 0)-100,(getPos _box select 1)+56,0];
sleep 1;
_bmb = "BO_GBU12_LGB" createVehicle [(getPos _box select 0)+100,(getPos _box select 1)-100,0];
sleep 1;
_bmb = "BO_GBU12_LGB" createVehicle [(getPos _box select 0)-55,(getPos _box select 1)+123,0];
sleep 1;
_bmb = "BO_GBU12_LGB" createVehicle [(getPos _box select 0)+577,(getPos _box select 1)-83,0];
sleep 1;
_bmb = "BO_GBU12_LGB" createVehicle [(getPos _box select 0)+35,(getPos _box select 1)-99,0];
sleep 1;
_bmb = "BO_GBU12_LGB" createVehicle [(getPos _box select 0)+100,(getPos _box select 1)-100,0];
sleep 1;
_bmb = "BO_GBU12_LGB" createVehicle [(getPos _box select 0)-431,(getPos _box select 1)-431,0];

"Airdropmarker" setMarkerAlpha 0;
"Airdropmarkertext" setMarkerAlpha 0;

deleteMarker "airbox_marker";
deleteMarker "Airdropmarker";
deleteMarker "Airdropmarkertext";


airdrop_goingon = false;