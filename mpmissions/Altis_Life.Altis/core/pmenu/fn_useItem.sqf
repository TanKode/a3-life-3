/*
	File: fn_useItem.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Main function for item effects and functionality through the player menu.
*/
private["_item"];
disableSerialization;
if((lbCurSel 2005) == -1) exitWith {hint "You need to select an item first!";};
_item = lbData[2005,(lbCurSel 2005)];

switch (true) do
{
	case (_item == "water" or _item == "coffee"):
	{
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			life_thirst = 100;
			player setFatigue 0;
		};
	};
	
	case (_item == "zyankali"):									   
	{															  
		if(([false,_item,1] call life_fnc_handleInv)) then		  
		{	
			hint "Du Feigling!!";
			[]spawn life_fnc_zyankali
			//sleep 3;							
			//player setdamage 100;								  						
		};												   
	};
	
	case (_item == "boltcutter"): {
		[cursorTarget] spawn life_fnc_boltcutter;
		closeDialog 0;
	};

	case (_item == "uwsl"): {
                   _OBJ = nearestObject [player, "Land_Wreck_Traw_F"];
                   if (_OBJ==objNull) then {_OBJ = nearestObject [player, "Land_Wreck_Traw2_F"];};
    	if (("Land_Wreck_Traw_F" == typeOf _OBJ) OR ("Land_Wreck_Traw2_F" == typeOf _OBJ)&&(player distance _OBJ < 30)) then {
                           if (!([false,_item,1] call life_fnc_handleInv)) exitWith {hint "Error: Kiste nicht gefunden!";};
    		_ship = _OBJ getVariable "opened";
    		_ship_obj = _OBJ;
    		if (_ship) then {hint "Das Schiff wurde bereits geoeffnet!"};
    		if (!_ship) then {
    			hint "Die Bombe wurde angebracht! Schnell weg von dem Wrack!";
    			playSound3D ["A3\Sounds_F\sfx\alarm_independent.wss", _ship_obj];
    			sleep 10;
    			"M_NLAW_AT_F" createVehicle [getPos _ship_obj select 0, getPos _ship_obj select 1, 0];
    			schiffwoffen = true;
    			publicVariableServer "schiffwoffen";
    		};
    	};
    };
	
	case (_item == "diaper"): {
	if(([false,_item,1] call life_fnc_handleInv)) then
		{
		life_toilet = 100;
		[true,"dirtydiaper",1] call life_fnc_handleInv;
		hint "Du ziehst eine neue Windel an, du kannst es jetzt laufen lassen - Zieh sie lieber schnell wieder raus sonst gucken die Leute.";
		};
	};
	
	case (_item == "blastingcharge"): {
		player reveal fed_bank;
		(group player) reveal fed_bank;
		[cursorTarget] spawn life_fnc_blastingCharge;
	};
	
	case (_item == "defusekit"): {
		[cursorTarget] spawn life_fnc_defuseKit;
	};
	
	case (_item in ["storagesmall","storagebig"]): {
		[_item] call life_fnc_storageBox;
	};
	
	case (_item == "redgull"):
	{
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			life_thirst = 100;
			player setFatigue 0;
			[] spawn
			{
				life_redgull_effect = time;
				titleText["Du kannst nun 3 Minuten lang sprinten","PLAIN"];
				player enableFatigue false;
				waitUntil {!alive player OR ((time - life_redgull_effect) > (3 * 60))};
				player enableFatigue true;
			};
		};
	};
	
	case (_item == "spikeStrip"):
	{
		if(!isNull life_spikestrip) exitWith {hint "Du hast bereits ein Nagelband gelegt"};
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			[] spawn life_fnc_spikeStrip;
		};
	};
	
	case (_item == "mauer"):
	{
		if(!isNull life_mauer) exitWith {hint "Du hast bereits eine Mauer gebaut"};
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			[] spawn life_fnc_mauer;
		};
	};

	case (_item == "blitzer"):
    {
    	if(!isNull life_blitzer) exitWith {hint "Du hast bereits einen Blitzer gebaut"};
    	if(([false,_item,1] call life_fnc_handleInv)) then
    	{
    		[] spawn life_fnc_blitzer;
    	};
    };

	case (_item == "schranke"):
	{
		if(!isNull life_schranke) exitWith {hint "Du hast bereits eine schranke gebaut"};
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			[] spawn life_fnc_schranke;
		};
	};
	
	case (_item == "fuelF"):
	{
		if(vehicle player != player) exitWith {hint "You can't refuel the vehicle while in it!"};
		[] spawn life_fnc_jerryRefuel;
	};
	
	case (_item == "lockpick"):
	{
		[] spawn life_fnc_lockpick;
	};
	
	case (_item == "handcuffkey"):
	{
		[] spawn life_fnc_handcuffkey;
	};
	
	case (_item in ["apple","rabbit","salema","ornate","mackerel","tuna","mullet","catshark","turtle","turtlesoup","donuts","tbacon","peach"]):
	{
		[_item] call life_fnc_eatFood;
	};

	case (_item == "tracker"):
	{
		[] spawn life_fnc_tracker;
	};
	
	case (_item == "heroinp"):
	{
 		if(([false,_item,1] call life_fnc_handleInv)) then
 	{
      	[] spawn life_fnc_useHeroin;
    	};
	};
	case (_item == "cocainep"):
	{
 		if(([false,_item,1] call life_fnc_handleInv)) then
 	{
      	[] spawn life_fnc_useKokain2;
    	};
	};	
	case (_item == "marijuana"):
	{
		if(life_drugged_weed == 1) then {
			hint "Du rauchst bereits ein Joint!";
		} else {
			if(([false,_item,1] call life_fnc_handleInv)) then
			{
				[] spawn life_fnc_useMarihuana;
			};
		};
	};
	
	case (_item in ["hopfenp","traubenp"]):
	{
 		if(([false,_item,1] call life_fnc_handleInv)) then
 	{
      	[] spawn life_fnc_useAlkohol;
    	};
	};
	
	case (_item in ["getreideip","zuckerip"]):
	{
 		if(([false,_item,1] call life_fnc_handleInv)) then
 	{
      	[] spawn life_fnc_useSpirituosen;
    	};
	};
	
	case (_item == "pbrau"):
	{
 		if(([false,_item,1] call life_fnc_handleInv)) then
 	{
      	[] spawn life_fnc_usePbrau;
    	};
	};
	
	case (_item == "pkugel"):
	{
		if(([false,_item,1] call life_fnc_handleInv)) then
		{		
			closeDialog 0;
			[] spawn life_fnc_usePkugel;
		};
	};
	
	case (_item == "speedbomb"):
	{
		[] spawn life_fnc_speedBomb;
    };
	
	case (_item == "kidney"):
	{
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			player setVariable["missingOrgan",false,true];
			life_thirst = 100;
			life_hunger = 100;
			player setFatigue .5;
		};
	};
	default
	{
		hint "Das Item ist nicht benutzbar.";
	};
};
	
[] call life_fnc_p_updateMenu;
[] call life_fnc_hudUpdate;