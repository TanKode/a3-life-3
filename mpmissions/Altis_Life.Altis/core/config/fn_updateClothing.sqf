/*

	Updates player clothing by replacing vanilla by custom ones

*/

/* ===Cops=== */
/* Streife */
if(playerSide == west && {uniform player == "U_B_CombatUniform_mcam"}) then {
	[[player,0,"textures\uniforms\polizei_uniform.paa"],"life_fnc_setTexture",true,false] spawn life_fnc_MP;
};
/* Einsatz */
if(playerSide == west && {uniform player == "U_B_CombatUniform_mcam_worn"}) then {
	[[player,0,"textures\uniforms\polizei_einsatz_uniform.paa"],"life_fnc_setTexture",true,false] spawn life_fnc_MP;
};
/* SEK */
if(playerSide == west && {uniform player == "U_B_CombatUniform_mcam_vest"}) then {
	[[player,0,"textures\uniforms\sek_uniform.paa"],"life_fnc_setTexture",true,false] spawn life_fnc_MP;
};
/* HideBackpack */
if(playerSide == west && {backpack player != ""}) then {
	unitBackpack player setObjectTextureGlobal [0,""];
};

/* ===Medics=== */
/* Normal */
if(playerSide == independent && {uniform player == "U_Rangemaster"}) then {
	[[player,0,"textures\medic\medicskin.paa"],"life_fnc_setTexture",true,false] spawn life_fnc_MP;
};
if(playerSide == independent && {uniform player == "C_man_w_worker_F"}) then {
	[[player,0,"textures\uniforms\medic_uniform.paa"],"life_fnc_setTexture",true,false] spawn life_fnc_MP;
};
/* MedicBackpack */
if(playerSide == independent && {backpack player != ""}) then {
	unitBackpack player setObjectTextureGlobal [0,"textures\uniforms\medic_backpack.paa"];
};
/* ===Civ=== */
/* Rebelle */
if(playerSide == civilian && {uniform player == "U_B_CombatUniform_mcam"}) then {
	[[player,0,"textures\sec\bec.paa"],"life_fnc_setTexture",true,false] spawn life_fnc_MP;
	
};


if(playerSide == civilian && {uniform player == "U_OG_Guerilla2_1"}) then {
	[[player,0,"textures\civ\ig_wan_co_b.paa"],"life_fnc_setTexture",true,false] spawn life_fnc_MP;

};

/* Rebelle */
if(playerSide == civilian && {uniform player == "U_BG_Guerilla2_2"}) then {
	[[player,0,"textures\civ\ig_wan_co_w.paa"],"life_fnc_setTexture",true,false] spawn life_fnc_MP;

};

/* ===ADAC=== */
/* Normal */
if(playerSide == east && {uniform player == "U_Rangemaster"}) then {
	[[player,0,"textures\uniforms\recruit_uniform_adac.paa"],"life_fnc_setTexture",true,false] spawn life_fnc_MP;	
	
};
/* HideBackpack */
if(playerSide == east && {backpack player != ""}) then {
	unitBackpack player setObjectTextureGlobal [0,""];
};	