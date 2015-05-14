class life_seite_cop_1 {
	idd = -1;
	name= "life_seite_cop_1";
	movingEnable = false;
	enableSimulation = true;
	
	class controlsBackground {
		class Life_RscTitleBackground:Life_RscText {
			idc = 1002;
			x = 0.05;
			y = 0.08;
			w = 0.875;
			h = 0.04;
			colorBackground[] = {0,0,0,0.9};
		};
		
		class Life_RscTitleBackgroundRechts:Life_RscText {
			idc = 1003;
			x = 0.9;
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
			idc = 1001;
			x = 0.05;
			y = 0.88;
			w = 0.875;
			h = 0.04;
			colorBackground[] = {0,0,0,0.9};
		};
		
		class MainBackground:Life_RscText {
			idc = 1000;
			x = 0.05;
			y = 0.08;
			w = 0.875;
			h = 0.84;
			colorBackground[] = {0,0,0,0.7};
		};
	};
	
	class controls {
		
		class textMain: Life_RscStructuredText
		{
			idc = 1100;
			text = "Hir könnte mein Text stehen!<br / >Hir könnte mein Text stehen!<br / >"; //--- ToDo: Localize;
			x = 0.1;
			y = 0.16;
			w = 0.775;
			h = 0.6;
		};

		class buttonMain: Life_RscButtonMenu
		{
			idc = 2402;
			text = "Startseite"; //--- ToDo: Localize;
			onButtonClick = "closeDialog 0; createDialog ""life_rules_main"";";
			x = 0.625;
			y = 0.92;
			w = 0.15;
			h = 0.04;
		};
		class buttonNext: Life_RscButtonMenu
		{
			idc = 2403;
			text = "weiter"; //--- ToDo: Localize;
			x = 0.775;
			y = 0.8;
			w = 0.1;
			h = 0.04;
		};
		class buttonBack: Life_RscButtonMenu
		{
			idc = 2401;
			text = "Zurueck"; //--- ToDo: Localize;
			onButtonClick = "closeDialog 0; createDialog ""life_rules_main"";";
			x = 0.1;
			y = 0.8;
			w = 0.1;
			h = 0.04;
		};
		class CloseButtonKey : Life_RscButtonMenu {
			idc = -1;
			text = "$STR_Global_Close";
			onButtonClick = "closeDialog 0;";
			x = 0.775;
			y = 0.92;
			w = 0.15;
			h = 0.04;
		};
	};
};