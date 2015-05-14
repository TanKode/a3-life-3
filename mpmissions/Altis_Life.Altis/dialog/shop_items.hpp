class shops_menu {
	idd = 2400;
	name= "shops_menu";
	movingEnable = false;
	enableSimulation = true;	
	class controlsBackground {
		class Life_RscTitleBackground:Life_RscText {
			idc = -1;
			x = 0;
			y = 0;
			w = 1;
			h = 0.04;
			colorBackground[] = {0,0,0,0.9};
		};
		class unten: Life_RscText
		{
			idc = 1001;
			x = 0;
			y = 0.96;
			w = 1;
			h = 0.04;
			colorBackground[] = {0,0,0,0.9};
		};
		class links: Life_RscText
		{
			idc = 1003;
			x = 0;
			y = 0;
			w = 0.025;
			h = 1;
			colorBackground[] = {0,0,0,0.9};
		};
		class rechts: Life_RscText
		{
			idc = 1004;
			x = 0.975;
			y = 0;
			w = 0.025;
			h = 1;
			colorBackground[] = {0,0,0,0.9};
		};
		class MainBackground:Life_RscText {
			idc = -1;
			x = 8.6613e-008;
			y = 0;
			w = 1;
			h = 1;
			colorBackground[] = {0,0,0,0.7};
		};
	};
	
	class controls {

		class itemList : Life_RscListBox 
		{
			idc = 2401;
			text = "";
			sizeEx = 0.030;
			x = 0.1;
			y = 0.08;
			w = 0.375;
			h = 0.72;
		};
		
		class pItemlist : Life_RscListBox 
		{
			idc = 2402;
			text = "";
			sizeEx = 0.030;
			x = 0.525;
			y = 0.08;
			w = 0.375;
			h = 0.72;
		};
		
		class buyEdit : Life_RscEdit 
		{
			idc = 2404;
			
			text = "1";
			sizeEx = 0.030;
			x = 0.1;
			y = 0.8;
			w = 0.375;
			h = 0.04;
		};
			
		class ButtonAddbuy : Life_RscButtonMenu
		{
			idc = -1;
			text = "+1";
			onButtonClick = "[0,0] spawn life_fnc_addsubstract;";
			
			x = 0.05;
			y = 0.62;
			w = 0.05;
			h = 0.08;
		};
		class ButtonSubbuy : Life_RscButtonMenu
		{
			idc = -1;
			text = "-1";
			onButtonClick = "[0,1] spawn life_fnc_addsubstract;";
			
			x = 0.05;
			y = 0.72;
			w = 0.05;
			h = 0.08;
		};
		
		class ButtonAddG : Life_RscButtonMenu
		{
			idc = -1;
			text = "$STR_VS_BuyItem";
			onButtonClick = "[] call life_fnc_virt_buy;";
			
			x = 0.1;
			y = 0.86;
			w = 0.375;
			h = 0.06;
		};
		
		class sellEdit : Life_RscEdit 
		{
			idc = 2405;
			
			text = "1";
			sizeEx = 0.030;
			x = 0.525;
			y = 0.8;
			w = 0.375;
			h = 0.04;
		};
		class ButtonRemoveG : Life_RscButtonMenu
		{
			idc = -1;
			text = "$STR_VS_SellItem";
			onButtonClick = "[] call life_fnc_virt_sell";
			
			x = 0.525;
			y = 0.86;
			w = 0.375;
			h = 0.06;
		};
		
		class ButtonAddSell : Life_RscButtonMenu
		{
			idc = -1;
			text = "+1";
			onButtonClick = "[1,0] spawn life_fnc_addsubstract;";
			
			x = 0.9;
			y = 0.62;
			w = 0.05;
			h = 0.08;
		};
		class ButtonSubSell : Life_RscButtonMenu
		{
			idc = -1;
			text = "-1";
			onButtonClick = "[1,1] spawn life_fnc_addsubstract;";
			
			x = 0.9;
			y = 0.72;
			w = 0.05;
			h = 0.08;
		};
		
		class ButtonClose : Life_RscButtonMenu {
			idc = -1;
			//shortcuts[] = {0x00050000 + 2};
			text = "$STR_Global_Close";
			onButtonClick = "closeDialog 0;";
			x = 0.75;
			y = 1.02;
			w = 0.25;
			h = 0.06;
		};
	};
};