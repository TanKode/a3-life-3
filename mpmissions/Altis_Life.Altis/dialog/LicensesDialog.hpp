class LicenseShop {
idd = 5546;
name= "life_license_shop";
movingEnable = false;
enableSimulation = true;
onLoad = "uiNamespace setVariable [""LicenseShop"", _this select 0];";
objects[] = { };
	class controls {
		class unten: Life_RscText
		{
			idc = 1001;
			x = 0;
			y = 0.96;
			w = 1;
			h = 0.04;
			colorBackground[] = {0,0,0,0.9};
		};
		class oben: Life_RscText
		{
			idc = 1002;
			x = 0;
			y = 0;
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
 
		class Mainbackground : Life_RscText
		{
			idc = -1;
			x = 0;
			y = 0;
			w = 1;
			h = 1;
			colorBackground[] = {0,0,0,0.7};
		};
		class listbox: Life_RscListBox
		{
			idc = 55126;
			sizeEx = 0.035;
			x = 0.05;
			y = 0.12;
			w = 0.4;
			h = 0.8;
		};
		class ShowLicenseslistbox: Life_RscListBox
		{
			idc = 55131;
			sizeEx = 0.035;
			x = 0.55;
			y = 0.12;
			w = 0.4;
			h = 0.8;
		};
		class MyLicenses : Life_RscText
		{
			idc = 55130;
			text = "Lizenzen zum kaufen"; //--- ToDo: Localize;
			x = 0.05;
			y = 0.08;
			w = 0.425;
			h = 0.04;
			colorBackground[] = {0,0,0,0.9};
		};
		class ShowLicenses : Life_RscText
		{
			idc = 55129;
			text = "Deine Lizenzen"; //--- ToDo: Localize;
			x = 0.525;
			y = 0.08;
			w = 0.425;
			h = 0.04;
			colorBackground[] = {0,0,0,0.9};
		};
		class buybutton: Life_RscButtonMenu
		{
			idc = 55127;
			text = "$STR_Global_Buy";
			x = 0.7;
			y = 1.02;
			w = 0.1375;
			h = 0.08;
			action = "if( (lbData[55126,lbCurSel (55126)] != """") ) then { [false, false, false, lbData[55126,lbCurSel (55126)]] call life_fnc_buyLicense; closeDialog 0; };";
		};
		class buttonClose: Life_RscButtonMenu
		{
			idc = -1;
			text = "$STR_Global_Close";
			onButtonClick = "closeDialog 0;";
			x = 0.85;
			y = 1.02;
			w = 0.15;
			h = 0.08;
		};
	};
};