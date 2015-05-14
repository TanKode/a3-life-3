/*
	File: fn_robAction.sqf
	Author: Bryan "Tonic" Boardwine

	Description:
	Starts the robbing process?
*/
private["_target"]; //Ka ob es geht testen wir dann mal :D
_target = cursorTarget;

RLP_goggles_Array = ["G_Balaclava_blk","G_Balaclava_combat","G_Balaclava_lowprofile","G_Bandanna_blk","G_Balaclava_oli","G_Bandanna_aviator","G_Bandanna_blk","G_Bandanna_khk","G_Bandanna_oli","G_Bandanna_shades","G_Bandanna_sport","G_Bandanna_tan","G_Bandanna_shades","G_Bandanna_beast","G_Balaclava_blk"];
RLP_headgear_Array = ["H_Shemag_olive","H_Shemag_khk","H_Shemag_tan","H_Shemag_olive_hs","H_ShemagOpen_khk","H_ShemagOpen_tan","H_Bandanna_camo","H_CrewHelmetHeli_I","H_CrewHelmetHeli_B"];

//Error checks
if(isNull _target) exitWith {};
if(!isPlayer _target) exitWith {};

if("RLP_goggles_Array" || "RLP_headgear_Array" in assignedItems cursorTarget) then {
cursorTarget removeweapon "RLP_goggles_Array" || "RLP_headgear_Array" ;
hint "Du hast die Maske deines gegenübers runter gerissen!";
} else { hint "Die Person hat keine Maske!"};