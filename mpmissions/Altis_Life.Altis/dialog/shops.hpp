class life_weapon_shop
{
	idd = 38400;
	movingEnabled = false;
	enableSimulation = true;
	
	class controlsBackground
	{
		class RscTitleBackground : Life_RscText
		{
			idc = -1;
			x = 0.25;
			y = 0.04;
			w = 0.475;
			h = 0.04;
			colorBackground[] = {0,0,0,0.9};
		};
		
		class RscTitleBackgroundLeft : Life_RscText
		{
			idc = -1;
			x = 0.25;
			y = 0.04;
			w = 0.025;
			h = 0.68;
			colorBackground[] = {0,0,0,0.9};
		};
		
		class RscTitleBackgroundRight : Life_RscText
		{
			idc = -1;
			x = 0.7;
			y = 0.04;
			w = 0.025;
			h = 0.68;
			colorBackground[] = {0,0,0,0.9};
		};
		
		class RscTitleBackgroundDown : Life_RscText
		{
			idc = -1;
			x = 0.25;
			y = 0.68;
			w = 0.475;
			h = 0.04;
			colorBackground[] = {0,0,0,0.9};
		};
		
		class Mainbackground : Life_RscText
		{
			idc = -1;
			x = 0.25;
			y = 0.04;
			w = 0.475;
			h = 0.68;
			colorBackground[] = {0,0,0,0.7};
		};
		/*
		class Title : Life_RscTitle
		{
			colorBackground[] = {0,0,0,0};
			idc = 38401;
			text = "";
			x = 0.1; y = 0.2;
			w = 0.32; h = (1 / 25);
		};*/
		
		class itemInfo : Life_RscStructuredText
		{
			idc = 38404;
			text = "";
			x = 0.25;
			y = 0.72;
			w = 0.475;
			h = 0.04;
		};
		
		class FilterList : Life_RscCombo
		{
			idc = 38402;
			onLBSelChanged = "_this call life_fnc_weaponShopFilter";
			x = 0.25;
			y = 0.88;
			w = 0.475;
			h = 0.04;
		};
	};
	
	class controls
	{
		class itemList : Life_RscListBox
		{
			idc = 38403;
			sizeEx = 0.035;
			onLBSelChanged = "_this call life_fnc_weaponShopSelection";
			x = 0.2875;
			y = 0.1;
			w = 0.4;
			h = 0.56;
		};
		
		class ButtonBuySell : Life_RscButtonMenu
		{
			idc = 38405;
			text = "$STR_Global_Buy";
			onButtonClick = "[] spawn life_fnc_weaponShopBuySell; true";
			x = 0.25;
			y = 0.76;
			w = 0.225;
			h = 0.12;
		};
		
		class ButtonClose : life_RscButtonMenu 
		{
			idc = -1;
			text = "$STR_Global_Close";
			onButtonClick = "closeDialog 0;";
			x = 0.5;
			y = 0.76;
			w = 0.225;
			h = 0.12;
		};
	};
};
