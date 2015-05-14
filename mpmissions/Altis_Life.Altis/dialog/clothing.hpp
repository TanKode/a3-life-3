class Life_Clothing {
	idd = 3100;
	name= "Life_Clothing";
	movingEnable = true;
	enableSimulation = true;
	//onLoad = "[] execVM 'core\client\keychain\init.sqf'";
	
	class controlsBackground {
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
	};
	
	class controls 
	{		
		class ClothingList : Life_RscListBox 
		{
			idc = 3101;
			text = "";
			sizeEx = 0.035;
			onLBSelChanged = "[_this] call life_fnc_changeClothes;";
			
			x = 0.2875;
			y = 0.1;
			w = 0.4;
			h = 0.56;
		};
		
		class PriceTag : Life_RscStructuredText
		{
			idc = 3102;
			text = "";
			sizeEx = 0.035;
			
			x = 0.25;
			y = 0.72;
			w = 0.475;
			h = 0.04;
		};
		
		class TotalPrice : Life_RscStructuredText
		{
			idc = 3106;
			text = "";
			sizeEx = 0.035;
			
			x = 0.5;
			y = 0.72;
			w = 0.225;
			h = 0.04;
		};
		
		class FilterList : Life_RscCombo
		{
			idc = 3105;
			colorBackground[] = {0,0,0,0.7};
			onLBSelChanged  = "_this call life_fnc_clothingFilter";
			x = 0.25;
			y = 0.88;
			w = 0.475;
			h = 0.04;
		};
		
		class CloseButtonKey : Life_RscButtonMenu 
		{
			idc = -1;
			text = "$STR_Global_Close";
			onButtonClick = "closeDialog 0;";
			x = 0.5;
			y = 0.76;
			w = 0.225;
			h = 0.12;
		};
		
		class BuyButtonKey : Life_RscButtonMenu 
		{
			idc = -1;
			text = "$STR_Global_Buy";
			onButtonClick = "[] call life_fnc_buyClothes;";
			x = 0.25;
			y = 0.76;
			w = 0.225;
			h = 0.12;
		};
	};
};