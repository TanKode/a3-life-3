#include <macro.h>
/*
File: fn_initSkin.sqf

Description:
Skin changer
*/


while {true} do
{
	if(playerSide == west) then 
	{
		if (uniform player == "U_Rangemaster") then {
		player setObjectTextureGlobal[0,"textures\PoliceOfficer.paa"];
		};
	};
	if(playerSide == independent) then
	{
		if (uniform player == "C_man_w_worker_F") then {
			player setObjectTextureGlobal[0,"textures\medic\notarzt_kleidung.paa"];
		};
	};
	if(playerSide == east) then
	{
		if (uniform player == "U_Rangemaster") then {
		player setObjectTextureGlobal[0,"textures\uniforms\recruit_uniform_adac.paa"];
		};
	};
	if(playerSide == civilian) then 
	{
		if (uniform player == "U_B_CombatUniform_mcam") then {
		player setObjectTextureGlobal[0,"textures\asf.paa"];
		};
		
		if (uniform player == "U_BG_Guerilla2_2") then {
		player setObjectTextureGlobal[0,"textures\civ\ig_wan_co_w.paa"];
		};
		
		if (uniform player == "U_OG_Guerilla2_1") then {
		player setObjectTextureGlobal[0,"textures\civ\ig_wan_co.paa"];
		};

		if (headGear player == "H_Cap_press") then {
		player setObjectTextureGlobal[0,"textures\civ\capb_wan_co.paa"];
		};
	};
	sleep 2;//safe some cpu
};