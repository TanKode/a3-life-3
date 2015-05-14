class life_rules_main {
	idd = -1;
	name= "life_rules_main";
	movingEnable = false;
	enableSimulation = true;
	
	class controlsBackground {
		class Life_RscTitleBackground:Life_RscText {
			idc = 1001;
			x = 0.05;
			y = 0.08;
			w = 0.9;
			h = 0.04;
			colorBackground[] = {0,0,0,0.9};
		};
		
		class Life_RscTitleBackgroundRechts:Life_RscText {
			idc = 1003;
			x = 0.925;
			y = 0.08;
			w = 0.025;
			h = 0.84;
			colorBackground[] = {0,0,0,0.9};
		};
		
		class Life_RscTitleBackgroundLinks:Life_RscText {
			idc = 1004;
			x = 0.05;
			y = 0.08;
			w = 0.025;
			h = 0.84;
			colorBackground[] = {0,0,0,0.9};
		};
		
		class Life_RscTitleBackgroundUnten:Life_RscText {
			idc = 1002;
			x = 0.05;
			y = 0.88;
			w = 0.9;
			h = 0.04;
			colorBackground[] = {0,0,0,0.9};
		};
		
		class logo: RscPicture
		{
			idc = 1200;
			text = "textures/logo2.paa";
			x = 0.8;
			y = 0.72;
			w = 0.1;
			h = 0.12;
		};
		
		class MainBackground:Life_RscText {
			idc = 1000;
			x = 0.0499999;
			y = 0.08;
			w = 0.9;
			h = 0.84;
			colorBackground[] = {0,0,0,0.7};

		};
	};
	
	class controls {

		
		class Title : Life_RscTitle {
			idc = 1005;
			text = "Regeln"; //--- ToDo: Localize;
			x = 0.1;
			y = 0.16;
			w = 0.8;
			h = 0.04;
			colorBackground[] = {0,0,0,0.9};
		};
		
		class buttonPolizei: RscButtonMenu
		{
			idc = 2400;
			text = "Polizeiliche Regelungen"; //--- ToDo: Localize;
			onButtonClick = "closeDialog 0; createDialog ""life_seite_cop_1"";";
			x = 0.1;
			y = 0.28;
			w = 0.45;
			h = 0.04;
		};
		class buttonMedic: RscButtonMenu
		{
			idc = 2401;
			text = "Aerztliche Regelungen"; //--- ToDo: Localize;
			x = 0.1;
			y = 0.4;
			w = 0.45;
			h = 0.04;
		};
		class buttonAdac: RscButtonMenu
		{
			idc = 2402;
			text = "ADAC Regelungen"; //--- ToDo: Localize;
			x = 0.1;
			y = 0.52;
			w = 0.45;
			h = 0.04;
		};
		class buttonCiv: RscButtonMenu
		{
			idc = 2403;
			text = "Zivilisten Regelungen"; //--- ToDo: Localize;
			x = 0.1;
			y = 0.64;
			w = 0.45;
			h = 0.04;
		};
		class buttonAlg: RscButtonMenu
		{
			idc = 2404;
			text = "Allgemeines"; //--- ToDo: Localize;
			x = 0.1;
			y = 0.76;
			w = 0.45;
			h = 0.04;
		};
	};
};