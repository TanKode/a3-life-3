class Life_impound_menu
{
	idd = 2800;
	name="life_vehicle_shop";
	movingEnabled = 0;
	enableSimulation = 1;
	onLoad = "ctrlShow [2330,false];";
	
	class controlsBackground
	{
		class Life_RscTitleBackground : Life_RscText
		{
			idc = -1;
			x = 0.1;
			y = 0.12;
			w = 0.825;
			h = 0.04;
			colorBackground[] = {0,0,0,0.9};
		};
		
		class Life_RscTitleBackgroundDown : Life_RscText
		{
			idc = -1;
			x = 0.1;
			y = 0.84;
			w = 0.825;
			h = 0.04;
			colorBackground[] = {0,0,0,0.9};
		};
		
		class Life_RscTitleBackgroundLeft : Life_RscText
		{
			idc = -1;
			x = 0.1;
			y = 0.16;
			w = 0.025;
			h = 0.72;
			colorBackground[] = {0,0,0,0.9};
		};
		
		class Life_RscTitleBackgroundRight : Life_RscText
		{
			idc = -1;
			x = 0.9;
			y = 0.12;
			w = 0.025;
			h = 0.72;
			colorBackground[] = {0,0,0,0.9};
		};
		
		class MainBackground : Life_RscText
		{
			idc = -1;
			x = 0.1;
			y = 0.12;
			w = 0.825;
			h = 0.76;
			colorBackground[] = {0,0,0,0.7};
		};
		
		/*class Title : Life_RscTitle
		{
			idc = 2801;
			text = "$STR_GUI_Garage";
			x = 0.1;
			y = 0.2;
			w = 0.8;
			h = (1 / 25);
		};
		
		class VehicleTitleBox : Life_RscText
		{
			idc = -1;
			text = "$STR_GUI_YourVeh";
			colorBackground[] = {0.502,0.004,0.004,1};
			x = 0.11; y = 0.26;
			w = 0.3;
			h = (1 / 25);
		};
		
		class VehicleInfoHeader : Life_RscText
		{
			idc = 2830;
			text = "$STR_GUI_VehInfo";
			colorBackground[] = {0.502,0.004,0.004,1};
			x = 0.42; y = 0.26;
			w = 0.46;
			h = (1 / 25);
		};*/
		
		class CloseBtn : Life_RscButtonMenu
		{
			idc = -1;
			text = "$STR_Global_Close";
			onButtonClick = "closeDialog 0;";
			x = 0.475;
			y = 0.72;
			w = 0.15;
			h = 0.12;
			colorActive[] = {0,0,0,0.8};
		};
		
		class RentCar : Life_RscButtonMenu
		{
			idc = -1;
			text = "$STR_Global_Retrieve";
			onButtonClick = "[] call life_fnc_unimpound;";
			x = 0.125;
			y = 0.72;
			w = 0.15;
			h = 0.12;
			colorActive[] = {0,0,0,0.8};
		};
		
		class BuyCar : life_RscButtonMenu 
		{
			idc = -1;
			text = "$STR_Global_Sell";
			onButtonClick = "[] call life_fnc_sellGarage;";
			x = 0.3;
			y = 0.72;
			w = 0.15;
			h = 0.12;
			colorActive[] = {0,0,0,0.8};
		};
		
		/*class Insure : life_RscButtonMenu 
		{
			idc = -1;
			text = "Versicherung";
			colorBackground[] = {0.502,0.004,0.004,1};
			onButtonClick = "[] call life_fnc_insurance;";
			x = 0.1 + (6.25 / 40) + (1 / 250 / (safezoneW / safezoneH));
			y = 0.95 - (1 / 25);
			w = (13 / 40);
			h = (1 / 25);
		};*/

	};
	
	
	
	class controls
	{
		class VehicleList : Life_RscListBox
		{
			idc = 2802;
			text = "";
			onLBSelChanged = "_this call life_fnc_garageLBChange;";
			x = 0.125;
			y = 0.16;
			w = 0.5;
			h = 0.52;
		};
		
		class vehicleInfomationList : Life_RscStructuredText
		{
			idc = 2803;
			text = "";
			x = 0.65;
			y = 0.16;
			w = 0.25;
			h = 0.68;
		};
		
		/*class MainBackgroundHider : Life_RscText
		{
			colorBackground[] = {0,0,0,1};
			idc = 2810;
			x = 0.1;
			y = 0.2 + (11 / 250);
			w = 0.8;
			h = 0.7 - (22 / 250);
		};
		
		class MainHideText : Life_RscText
		{
			idc = 2811;
			text = "$STR_ANOTF_QueryGarage";
			sizeEx = 0.06;
			x = 0.24; y = 0.5;
			w = 0.6;
			h = (1 / 15);
		};*/
	};
};