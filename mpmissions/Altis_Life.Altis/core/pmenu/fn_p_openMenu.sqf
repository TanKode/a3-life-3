#include <macro.h>
/*
	File: fn_p_openMenu.sqf
	Author: Bryan "Tonic" Boardwine

	Description:
	Opens the players virtual inventory menu
*/
if(!alive player || dialog) exitWith {}; //Prevent them from opening this for exploits while dead.
createDialog "playerSettings";
disableSerialization;

switch(playerSide) do
{
	case west:
	{
		ctrlShow[2418,false];
	};
	case independent:
	{
       	ctrlShow[2421,false];
		ctrlShow[2422,false];
		ctrlShow[2418,false];
	};
	case east:
	{
       	ctrlShow[2421,false];
		ctrlShow[2422,false];
		ctrlShow[2418,false];
	};
	case civilian:
	{
		ctrlShow[2421,false];
		ctrlShow[2422,false];
	};
};

if(__GETC__(life_adminlevel) < 1) then
{
	ctrlShow[2423,false];
};

if(__GETC__(life_adminlevel) < 2) then
{
	ctrlShow[2911,false];
	ctrlShow[2910,false];
	ctrlShow[2909,false];
	ctrlShow[2908,false];
	ctrlShow[2907,false];
	ctrlShow[2906,false];
	ctrlShow[2904,false];
};

