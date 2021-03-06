class Life_cell_phone {
	idd = 3000;
	name= "life_cell_phone";
	movingEnable = false;
	enableSimulation = true;
	onLoad = "[] spawn life_fnc_cellphone";
	
	class controlsBackground {

		
		class EXphone : Life_RscPicture 
		{
			idc = 3001;
			text = "textures\phone.paa";
			x = 0.384999;
			y = -0.00433818;
			w = 0.8125;
			h = 1.03676;
		};
	
	};
			
	class controls {
		
		class TextToSend : Life_RscTitle 
		{
		
			colorBackground[] = {0, 0, 0, 0};
			idc = 3002;
			text = "$STR_CELL_TextToSend";
			x = 0.605607;
			y = 0.210809;
			w = 0.2725;
			h = 0.04;
		};
		
		   class textEdit : Life_RscEdit 
		{
		
		idc = 3003;
		
		text = "";
		x = 0.607904; y = 0.340086;
		w = 0.325; h = 0.26;
		
		};
		
		class TextMsgButton : life_RscButtonMenu 
		{
			idc = 3015;
			text = "Spieler";
			colorBackground[] = {0.031,0.78,0.055,1};
			colorText[] = {0,0,0,1};
			onButtonClick = "[] call TON_fnc_cell_textmsg";
			colorActive[] = {0,0,0,0};
			
			x = 0.6125;
			y = 0.64;
			w = 0.15;
			h = 0.05;
		};
		
		class PlayerList : Life_RscCombo 
		{
			idc = 3004;
			
			x = 0.6125; y = 0.28;
			w = 0.2375; h = 0.04;
		};

		class TextCopButton : life_RscButtonMenu 
		{
			idc = 3016;
			text = "Polizei";
			colorBackground[] = {0.051,0,1,1};
			colorText[] = {0,0,0,1};
			onButtonClick = "[] call TON_fnc_cell_textcop";
			
			x = 0.775;
			y = 0.64;
			w = 0.15;
			h = 0.05;
		};
		
		class TextAdminButton : life_RscButtonMenu 
		{
			idc = 3017;
			text = "An Admin";
			colorBackground[] = {0.549,0.027,0.027,1};
			colorText[] = {0,0,0,1};
			onButtonClick = "[] call TON_fnc_cell_textadmin";
			
			x = 0.775;
			y = 0.72;
			w = 0.15;
			h = 0.05;
		};
		
		class CoptoAll : life_RscButtonMenu
		{
			idc = 3020;
			text = "Meldung";
			colorBackground[] = {0.051,0,1,1};
			colorText[] = {0,0,0,1};
			onButtonClick = "[] call TON_fnc_cell_copmsgall";
			
			x = 0.6125;
			y = 0.8;
			w = 0.15;
			h = 0.05;
		};
		
		class AdminMsgAllButton : life_RscButtonMenu 
		{
			idc = 3021;
			text = "an alle";
			colorBackground[] = {0.549,0.027,0.027,1};
			colorText[] = {0,0,0,1};
			onButtonClick = "[] call TON_fnc_cell_adminmsgall";
			
			x = 0.775;
			y = 0.8;
			w = 0.15;
			h = 0.05;
		};
		
		class EMSRequest : life_RscButtonMenu
		{
			idc = 3022;
			text = "ADAC";
			colorBackground[] = {0.949,1,0,1};
			colorText[] = {0,0,0,1};
			onButtonClick = "[] call TON_fnc_cell_emsrequest";
			
			x = 0.6125;
			y = 0.72;
			w = 0.15;
			h = 0.05;
		};
		
		class CloseButtonKey : Life_RscButtonInvisible {
			idc = -1;
			text = "";
			onButtonClick = "closeDialog 0;";
			colorBackground[] = {0,0,0,0};
			x = 0.743107;
			y = 0.886213;
			w = 0.05;
			h = 0.06;
		};
	};
};