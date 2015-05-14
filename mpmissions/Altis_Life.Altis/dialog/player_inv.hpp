#include "player_sys.sqf"

class playerSettings {

	idd = playersys_DIALOG;
	movingEnable = true;
	enableSimulation = true;
	
	class controlsBackground {
		class life_RscTitleBackground:life_RscText {
			idc = -1;
			x = 0;
			y = 0;
			w = 1;
			h = 0.04;
			colorBackground[] = {0,0,0,0.9};
		};
		
		class logo: life_RscPicture
		{
			idc = 1201;
			text = "textures/Logo2.paa";
			x = 0.05;
			y = 0.68;
			w = 0.2;
			h = 0.24;
		};
		
		class life_RscTitleBackgroundRechts:life_RscText {
			idc = -1;
			x = 0.975;
			y = 0;
			w = 0.025;
			h = 1;
			colorBackground[] = {0,0,0,0.9};
		};
		
		class life_RscTitleBackgroundLinks:life_RscText {
			idc = -1;
			x = 5.58794e-009;
			y = 0;
			w = 0.025;
			h = 1;
			colorBackground[] = {0,0,0,0.9};
		};
		
		class life_RscTitleBackgroundUnten:life_RscText {
			idc = -1;
			x = 0;
			y = 0.96;
			w = 1;
			h = 0.04;
			colorBackground[] = {0,0,0,0.9};
		};
		
		class MainBackground:life_RscText {
			idc = -1;
			x = 0;
			y = 0;
			w = 1;
			h = 1;
			colorBackground[] = {0,0,0,0.7};
		};
		
		class Title : life_RscTitle {
			idc = -1;
			text = "$STR_PM_Title";
			x = 0.025;
			y = 0;
			w = 0.95;
			h = 0.04;
			colorBackground[] = {0,0,0,0};
		};
		
		class moneyStatusInfo : Life_RscStructuredText
		{
			idc = 2015;
			sizeEx = 0.020;
			text = "";
        	x = 0.05;
        	y = 0.16;
        	w = 0.2;
        	h = 0.12;
		};
		
		class PlayersName : Title {
			idc = carry_weight;
			style = 1;
			text = "";
		};
	};
	
	class controls {
		
		class itemHeader : Life_RscText
		{
			idc = -1;
			text = "$STR_PM_cItems";
			sizeEx = 0.04;
			x = 0.6;
			y = 0.08;
			w = 0.35;
			h = 0.04;
			colorBackground[] = {0,0,0,0.9};
		};
		
		class licenseHeader : Life_RscText
		{
			idc = -1;
			text = "$STR_PM_Licenses";
			sizeEx = 0.04;
			x = 0.275;
			y = 0.08;
			w = 0.3;
			h = 0.04;
			colorBackground[] = {0,0,0,0.9};
		};
		
		class moneySHeader : Life_RscText
		{
			idc = -1;
			text = "$STR_PM_MoneyStats";
			sizeEx = 0.04;
	        x = 0.05;
	        y = 0.08;
	        w = 0.2;
	        h = 0.04;
			colorBackground[] = {0,0,0,0.9};
		};
	
		class itemList : life_RscListBox 
		{
			idc = item_list;
			sizeEx = 0.030;
			x = 0.6;
			y = 0.16;
			w = 0.35;
			h = 0.56;
		};
		
		class moneyEdit : Life_RscEdit 
		{
			idc = 2018;
			
			text = "1";
			sizeEx = 0.030;
	        x = 0.05;
	        y = 0.4;
	        w = 0.2;
	        h = 0.04;
		};
		
		class NearPlayers : Life_RscCombo 
		{
			idc = 2022;
	        x = 0.05;
	        y = 0.32;
	        w = 0.2;
	        h = 0.04;
		};
		
		class moneyDrop : Life_RscButtonMenu
		{
			idc = 2001;
			text = "$STR_Global_Give";
			onButtonClick = "[] call life_fnc_giveMoney";
			sizeEx = 0.025;
	        x = 0.05;
	        y = 0.48;
	        w = 0.2;
	        h = 0.04;
		};
		
		class itemEdit : Life_RscEdit {
		
		idc = item_edit;
		
		text = "1";
		sizeEx = 0.030;
		x = 0.6;
		y = 0.78;
		w = 0.35;
		h = 0.04;
		
		};
		class iNearPlayers : Life_RscCombo
		{
			idc = 2023;
			x = 0.6;
			y = 0.72;
			w = 0.35;
			h = 0.04;
		};
		/*
		Disabled till it can be redone
		class moneyInput: life_RscCombo {
			
			idc = money_value;
			
			x  = 0.02; y = 0.402;
			w = .1; h = .030;
		};
		*/
		
		class DropButton : life_RscButtonMenu {
			
			idc = 2002;
			text = "$STR_Global_Give";
			onButtonClick = "[] call life_fnc_giveItem;";
			x = 0.7875;
			y = 0.84;
			w = 0.1625;
			h = 0.04;
			
		};
		
		class UseButton : life_RscButtonMenu {
			
			text = "$STR_Global_Use";
			onButtonClick = "[] call life_fnc_useItem;";	
			x = 0.6;
			y = 0.84;
			w = 0.1625;
			h = 0.04;
		};
		
		class buttonCall: Life_RscButtonMenu
		{
			idc = 2406;
			text = "$STR_PM_CellPhone";
			x = 0.7875;
			y = 0.9;
			w = 0.1625;
			h = 0.04;
			onButtonClick = "[] call life_fnc_cellphone2;"; 
		};
		
		class RemoveButton : life_RscButtonMenu {
			
			text = "$STR_Global_Remove";
			onButtonClick = "[] call life_fnc_removeItem;";
			x = 0.6;
			y = 0.9;
			w = 0.1625;
			h = 0.04;
			
		};
		
		class Licenses_Menu : Life_RscControlsGroup
		{
			idc = -1
			x = 0.275;
			y = 0.12;
			w = 0.3;
			h = 0.82;
			
			class Controls
			{
				class Life_Licenses : Life_RscStructuredText
				{
					idc = 2014;
					sizeEx = 0.020;
					text = "";
					x = 0;
					y = 0;
					w = 0.3; h = 0.78;
				};
			};
		};

		class 9: Life_RscButtonMenu
		{
			idc = 2403;
			text = "Regeln"; //--- ToDo: Localize;
			onButtonClick = "createDialog ""life_rules_main"";";
	        x = -0.275;
	        y = 0.64;
	        w = 0.25;
	        h = 0.12;
		};

		class 13: Life_RscButtonMenu
		{
			idc = 2405;
			text = "$STR_Global_Settings";
			onButtonClick = "[] call life_fnc_settingsMenu;";
	        x = -0.275;
	        y = 0;
	        w = 0.25;
	        h = 0.12;
		};

		class 6: Life_RscButtonMenu
		{
			idc = 2409;
			text = "$STR_PM_SyncData";
			onButtonClick = "[] call SOCK_fnc_syncData;";
	        x = -0.275;
	        y = 0.32;
	        w = 0.25;
	        h = 0.12;
		};

		class 4: Life_RscButtonMenu
		{
			idc = 2418;
			text = "$STR_PM_MyGang";
			onButtonClick = "if(isNil ""life_action_gangInUse"") then {if(isNil {(group player) getVariable ""gang_owner""}) then {createDialog ""Life_Create_Gang_Diag"";} else {[] spawn life_fnc_gangMenu;};};";
	        x = -0.275;
	        y = 0.16;
	        w = 0.25;
	        h = 0.12;
		};
		class 7: Life_RscButtonMenu
		{
			idc = 2419;
			text = "$STR_PM_KeyChain";
			onButtonClick = "createDialog ""Life_key_management"";";
	        x = -0.275;
	        y = 0.48;
	        w = 0.25;
	        h = 0.12;
		};
		
		class buttonCop1: Life_RscButtonMenu
		{
			idc = 2421;
			text = "Wanted +";
			onButtonClick = "createDialog ""life_wantedadd2"";";
	        x = 1.025;
	        y = 0.16;
	        w = 0.25;
	        h = 0.12;
		};
		class buttonCop2: Life_RscButtonMenu
		{
			idc = 2422;
			text = "$STR_PM_WantedList";
			onButtonClick = "[] call life_fnc_wantedMenu";
	        x = 1.025;
	        y = 0;
	        w = 0.25;
	        h = 0.12;
		};
		class buttonAdmin: Life_RscButtonMenu
		{
			idc = 2423;
			text = "$STR_PM_AdminMenu";
			onButtonClick = "createDialog ""life_admin_menu"";";
	        x = 1.025;
	        y = 0.32;
	        w = 0.25;
	        h = 0.12;
		};
		class buttonRefresh: Life_RscButtonMenu
		{
			idc = 24999;
			text = "Umgebung Update";
			onButtonClick = "[] call life_fnc_p_updateMenu";
	        x = 1.025;
	        y = 0.46;
	        w = 0.40;
	        h = 0.12;
		};		
		class buttonDownload: Life_RscButtonMenu
		{
			idc = 249949;
			text = "Info";
	        onButtonClick = "createDialog ""RscDisplayWelcome"";";
			x = 1.025;
	        y = 0.60;
	        w = 0.40;
	        h = 0.12;
		};
		class buttonClose: Life_RscButtonMenu
        {
        	idc = 2405;
        	text = "Schließen"; //--- ToDo: Localize;
        	onButtonClick = "closeDialog 0;";
        	x = -0.275;
        	y = 0.8;
        	w = 0.25;
        	h = 0.2;
        };
	};
};
