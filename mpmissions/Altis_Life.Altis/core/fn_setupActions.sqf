/*
	File: fn_setupActions.sqf
	
	Description:
	Master addAction file handler for all client-based actions.
*/
switch (playerSide) do
{
	case civilian:
	{
		//Drop fishing net
		life_actions = [player addAction["Drop Fishing Net",life_fnc_dropFishingNet,"",0,false,false,"",'
		(surfaceisWater (getPos vehicle player)) && (vehicle player isKindOf "C_Rubberboat" OR vehicle player isKindOF "C_Boat_Civil_01_F" OR vehicle player isKindOf "D41_Trawler") && speed (vehicle player) < 2 && speed (vehicle player) > -1 && ((getPos player) distance (getMarkerPos "Fischzone_01") < 500 OR (getPos player) distance (getMarkerPos "Fischzone_02") < 500 OR (getPos player) distance (getMarkerPos "Fischzone_03") < 500 OR (getPos player) distance (getMarkerPos "Fischzone_04") < 500) && !life_net_dropped ']];

		//Drop fishing net
		life_actions = [player addAction["Erdgas sammeln",life_fnc_RLP_gatherErdgas,"",0,false,false,"",'
		((getPos player) distance (getMarkerPos "Gaszone_01") < 50 OR (getPos player) distance (getMarkerPos "Gaszone_02") < 50) ']];


		//Rob person
		life_actions = life_actions + [player addAction["Ausrauben",life_fnc_robAction,"",0,false,false,"",'!isNull cursorTarget && player distance cursorTarget < 3.5 && isPlayer cursorTarget && (animationState cursorTarget=="Incapacitated" or animationState cursorTarget=="amovpercmstpsnonwnondnon_amovpercmstpssurwnondnon" or cursorTarget getVariable "restrained") && !(cursorTarget getVariable["robbed",FALSE])']];
		//Rob person
		life_actions = life_actions + [player addAction["Smartphone abnehmen",life_fnc_robsmartphoneAction,"",0,false,false,"",'!isNull cursorTarget && player distance cursorTarget < 3.5 && isPlayer cursorTarget && (animationState cursorTarget=="Incapacitated" or animationState cursorTarget=="amovpercmstpsnonwnondnon_amovpercmstpssurwnondnon" or cursorTarget getVariable "restrained") ']];
		//Ausweis
        life_actions = life_actions + [player addAction["<t color='#00FF00'>Ausweis zeigen</t>",life_fnc_AusweisZeigen,"",1,false,true,"",' playerSide == civilian && !isNull cursorTarget && (isPlayer cursorTarget) && cursorTarget isKindOf "Man" ']];

        // Head Set for Chopper
        life_actions = life_actions + [player addAction["<t color='#00FF00'>Headset auf/absetzen</t>",life_fnc_earplug,"",99,false,false,"", ' (vehicle player) != player && !isNull (vehicle player) && (vehicle player) isKindOf "Air" ']];
		//Trawler: Anker werfen (Stop auf 0)
		life_actions = life_actions + [player addaction["Anker werfen",life_fnc_D41_Anker,"",0,false,false,"",'
		((vehicle player isKindOf "ship") && ((speed vehicle player) < 4) && ((speed vehicle player) > -4) && !((speed vehicle player) == 0))']];
		
      	};
	case west:
	{
	    life_actions = [player addAction["Drogen und Alkoholtest",life_fnc_drugtestAction,cursorTarget,0,false,true,"",
	    ' !isNull cursorTarget && cursorTarget isKindOf "Man" && (isPlayer cursorTarget) && animationState cursorTarget == "AmovPercMstpSnonWnonDnon_Ease" && (cursorTarget getVariable "restrained") && (side cursorTarget == civilian) && player distance cursorTarget < 2.5 && !(cursorTarget getVariable "Escorting") ']];
	    life_actions = [player addAction["<t color='#FF0000'>Joint ausmachen</t>",life_fnc_extinguishJoint,"",6, false, true, "",
	    ' !isNull cursorTarget && cursorTarget isKindOf "Man" && (isPlayer cursorTarget) && animationState cursorTarget == "AmovPercMstpSnonWnonDnon_Ease" && (cursorTarget getVariable "restrained") && (side cursorTarget == civilian) && player distance cursorTarget < 2.5 && (cursorTarget getVariable ["smoke_weed",false]) && (cursorTarget getVariable ["restrained",false]) ']];
        //life_actions = life_actions + [player addAction["Waffe beschlagnahmen",life_fnc_seizePlayerWeapon,cursorTarget,0,false,false,"",'!isNull cursorTarget && (player distance cursorTarget) < 6 && speed cursorTarget < 2 && cursorTarget isKindOf "Man" && (isPlayer cursorTarget) && (side cursorTarget == civilian) && (cursorTarget getVariable "restrained")']];

        //Entwaffnen
        life_actions = life_actions + [player addAction["Person entwaffnen!",life_fnc_entwaffnenAction,"",0,false,false,"",'
        !isNull cursorTarget && player distance cursorTarget < 3.5 && isPlayer cursorTarget && (cursorTarget getVariable "restrained") ']];

	    //Polizeimarke
        life_actions = life_actions + [player addAction["<t color='#00FF00'>Polizeimarke zeigen</t>",life_fnc_copShowLicense,"",1,false,true,"",' playerSide == west && !isNull cursorTarget && cursorTarget isKindOf "Man" ']];

	    //life_actions = life_actions + [player addAction["<t color='#FF0000'>Mauer aufheben</t>",life_fnc_packupmauer,"",0,false,false,"",' _mauer = nearestObjects[getPos player,["Land_Concrete_SmallWall_4m_F"],8] select 0; !isNil "_mauer" && !isNil {(_mauer getVariable "item")}']];
	    //life_actions = life_actions + [player addAction["<t color='#FF0000'>Schranke aufheben</t>",life_fnc_packupschranke,"",0,false,false,"",' _schranke = nearestObjects[getPos player,["Land_BarGate_F"],8] select 0; !isNil "_schranke" && !isNil {(_schranke getVariable "item")}']];
	
		life_actions = life_actions + [player addAction[localize "STR_pAct_DriverSeat",life_fnc_copEnter,"driver",200,false,false,"",'!isNull cursorTarget && ((cursorTarget isKindOf "Car")||(cursorTarget isKindOf "Air")||(cursorTarget isKindOf "Ship")) && (locked cursorTarget) != 0 && cursorTarget distance player < 3.5']];
		//CopEnter - Passenger Seat
		life_actions = life_actions + [player addAction[localize "STR_pAct_PassengerSeat",life_fnc_copEnter,"passenger",100,false,false,"",'!isNull cursorTarget && ((cursorTarget isKindOf "Car")||(cursorTarget isKindOf "Air")||(cursorTarget isKindOf "Ship")) && (locked cursorTarget) != 0 && cursorTarget distance player < 3.5']]; 
		//CopEnter - Exit
		life_actions = life_actions + [player addAction[localize "STR_pAct_GoOut",life_fnc_copEnter,"exit",100,false,false,"",'(vehicle player != player) && (locked(vehicle player)==2)']];
		//Weapon Removing
		 life_actions = life_actions + [player addAction["Waffen entfernen",life_fnc_seizeObjects,cursorTarget,0,false,false,"",'count(nearestObjects [player,["weaponholder"],3])>0']];

		// Head Set for Chopper
        life_actions = life_actions + [player addAction["<t color='#00FF00'>Headset auf/absetzen</t>",life_fnc_earplug,"",99,false,false,"", ' (vehicle player) != player && !isNull (vehicle player) && (vehicle player) isKindOf "Air" ']];
	};
	case east:
	{
		life_actions = life_actions + [player addAction[localize "STR_pAct_DriverSeat",life_fnc_copEnter,"driver",200,false,false,"",'!isNull cursorTarget && ((cursorTarget isKindOf "Car")||(cursorTarget isKindOf "Air")||(cursorTarget isKindOf "Ship")) && (locked cursorTarget) != 0 && cursorTarget distance player < 3.5']];
		//CopEnter - Passenger Seat
		life_actions = life_actions + [player addAction[localize "STR_pAct_PassengerSeat",life_fnc_copEnter,"passenger",100,false,false,"",'!isNull cursorTarget && ((cursorTarget isKindOf "Car")||(cursorTarget isKindOf "Air")||(cursorTarget isKindOf "Ship")) && (locked cursorTarget) != 0 && cursorTarget distance player < 3.5']]; 
		//CopEnter - Exit
		life_actions = life_actions + [player addAction[localize "STR_pAct_GoOut",life_fnc_copEnter,"exit",100,false,false,"",'(vehicle player != player) && (locked(vehicle player)==2)']];
		// Head Set for Chopper
        life_actions = life_actions + [player addAction["<t color='#00FF00'>Headset auf/absetzen</t>",life_fnc_earplug,"",99,false,false,"", ' (vehicle player) != player && !isNull (vehicle player) && (vehicle player) isKindOf "Air" ']];
        // For all EarPlugs

     };
	case independent:
	{
		life_actions = life_actions + [player addAction[localize "STR_pAct_DriverSeat",life_fnc_copEnter,"driver",200,false,false,"",'!isNull cursorTarget && ((cursorTarget isKindOf "Car")||(cursorTarget isKindOf "Air")||(cursorTarget isKindOf "Ship")) && (locked cursorTarget) != 0 && cursorTarget distance player < 3.5']];
    	//CopEnter - Passenger Seat
    	life_actions = life_actions + [player addAction[localize "STR_pAct_PassengerSeat",life_fnc_copEnter,"passenger",100,false,false,"",'!isNull cursorTarget && ((cursorTarget isKindOf "Car")||(cursorTarget isKindOf "Air")||(cursorTarget isKindOf "Ship")) && (locked cursorTarget) != 0 && cursorTarget distance player < 3.5']];
    	//CopEnter - Exit
    	life_actions = life_actions + [player addAction[localize "STR_pAct_GoOut",life_fnc_copEnter,"exit",100,false,false,"",'(vehicle player != player) && (locked(vehicle player)==2)']];

    	// Head Set for Chopper
        life_actions = life_actions + [player addAction["<t color='#00FF00'>Headset auf/absetzen</t>",life_fnc_earplug,"",99,false,false,"", ' (vehicle player) != player && !isNull (vehicle player) && (vehicle player) isKindOf "Air" ']];
	};
};


