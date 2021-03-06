class Life_Vehicle_Shop_v2
{
	idd = 2300;
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
			idc = 2301;
			text = "";
			x = 0.1;
			y = 0.2;
			w = 0.8;
			h = (1 / 25);
		};
		
		class VehicleTitleBox : Life_RscText
		{
			idc = -1;
			text = "$STR_GUI_ShopStock";
			colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", "(profilenamespace getvariable ['GUI_BCG_RGB_A',0.7])"};
			x = 0.11; y = 0.26;
			w = 0.3;
			h = (1 / 25);
		};
		
		
		class VehicleInfoHeader : Life_RscText
		{
			idc = 2330;
			text = "$STR_GUI_VehInfo";
			colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", "(profilenamespace getvariable ['GUI_BCG_RGB_A',0.7])"};
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
		};
		
		class RentCar : Life_RscButtonMenu
		{
			idc = -1;
			text = "$STR_Global_RentVeh";
			onButtonClick = "[false] spawn life_fnc_vehicleShopBuy;";
			x = 0.3;
			y = 0.72;
			w = 0.15;
			h = 0.12;
			colorActive[] = {0,0,0,0.8};
		};
		
		class BuyCar : life_RscButtonMenu 
		{
			idc = 2309;
			text = "$STR_Global_Buy";
			onButtonClick = "[true] spawn life_fnc_vehicleShopBuy;";
			x = 0.125;
			y = 0.72;
			w = 0.15;
			h = 0.12;
			colorActive[] = {0,0,0,0.8};
		};
	};
	
	class controls
	{
		class VehicleList : Life_RscListBox
		{
			idc = 2302;
			text = "";
			sizeEx = 0.035;
			onLBSelChanged = "_this call life_fnc_vehicleShopLBChange";
			x = 0.125;
			y = 0.16;
			w = 0.5;
			h = 0.52;
		};
		
		class ColorList : Life_RscCombo
		{
			idc = 2304;
			x = 0.125;
			y = 0.68;
			w = 0.5;
			h = 0.04;
		};
		
		class vehicleInfomationList : Life_RscStructuredText
		{
			idc = 2303;
			text = "";
			x = 0.65;
			y = 0.16;
			w = 0.25;
			h = 0.68;
		};
	};
};