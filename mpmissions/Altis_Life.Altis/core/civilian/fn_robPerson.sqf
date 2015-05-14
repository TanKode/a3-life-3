/*
	File: fn_robPerson.sqf
	Author: Bryan "Tonic" Boardwine

	Description:
	Getting tired of adding descriptions...
*/
private["_robber","_unit2"];
_robber = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
if(isNull _robber) exitWith {}; //No one to return it to?

if(life_RLP_handgeld > 0) then
{
		life_maskiert = 0;
		if ((goggles _unit2) in RLP_goggles_Array) then {life_maskiert = 1};
		if ((uniform _unit2) in RLP_uniform_Array) then {life_maskiert = 1};
		if ((headgear _unit2) in RLP_headgear_Array) then {life_maskiert = 1};

	if (life_maskiert > 0) then
	{
	[[1,format["%1 hat %2 ausgeraubt und €%3 erbeutet","Eine Maskierte Person",profileName,[life_RLP_handgeld] call life_fnc_numberText]],"life_fnc_broadcast",nil,false] spawn life_fnc_MP;
	[[life_RLP_handgeld],"life_fnc_robReceive",_robber,false] spawn life_fnc_MP;
	[[getPlayerUID _robber,_robber getVariable["realname",name _robber],"211"],"life_fnc_wantedAdd",false,false] spawn life_fnc_MP;
	[[player, _robber, life_RLP_handgeld, 4, life_RLP_atmgeld, 0],"TON_fnc_handleDBLog",false] spawn life_fnc_MP;
	life_RLP_handgeld = 0;
	["1"] call SOCK_fnc_syncData;
	}
	else
	{
	[[1,"STR_NOTF_Robbed",true,[_robber getVariable["realname",name _robber],profileName,[life_RLP_handgeld] call life_fnc_numberText]],"life_fnc_broadcast",nil,false] spawn life_fnc_MP;
	[[life_RLP_handgeld],"life_fnc_robReceive",_robber,false] spawn life_fnc_MP;
	[[getPlayerUID _robber,_robber getVariable["realname",name _robber],"211"],"life_fnc_wantedAdd",false,false] spawn life_fnc_MP;
	[[player, _robber, life_RLP_handgeld, 4, life_RLP_atmgeld, 0],"TON_fnc_handleDBLog",false] spawn life_fnc_MP;
	life_RLP_handgeld = 0;
	["1"] call SOCK_fnc_syncData;
	}
}
	else
{
	//X 1 [[2,"STR_NOTF_RobFail",true,[profileName]],"life_fnc_broadcast",_robber,false] spawn life_fnc_MP;
	//X 1 [[1,format["%1 hat versucht %2 auszurauben!","Eine Maskierte Person",profileName call life_fnc_numberText]],"life_fnc_broadcast",nil,false] spawn life_fnc_MP;
    if (life_maskiert > 0) then //A
    {
        [[2,"STR_NOTF_RobFail",true,[profileName]],"life_fnc_broadcast",_robber,false] spawn life_fnc_MP;
        [[1,format["%1 hat versucht %2 auszurauben!","Eine Maskierte Person",profileName call life_fnc_numberText]],"life_fnc_broadcast",nil,false] spawn life_fnc_MP;
    }else{
    	[[2,"STR_NOTF_RobFail",true,[profileName]],"life_fnc_broadcast",_robber,false] spawn life_fnc_MP;
    	[[1,"%1 hat versucht %2 auszurauben!",true,[_robber getVariable["realname",name _robber],profileName,[life_RLP_handgeld] call life_fnc_numberText]],"life_fnc_broadcast",nil,false] spawn life_fnc_MP;
    } //B

};
// Sync life_RLP_handgeld to DB:
[[getPlayerUID player,playerSide,life_RLP_handgeld,0],"DB_fnc_updatePartial",false,false] spawn life_fnc_MP;

// Sync life_RLP_atmgeld to DB:
[[getPlayerUID player,playerSide,life_RLP_atmgeld,1],"DB_fnc_updatePartial",false,false] spawn life_fnc_MP