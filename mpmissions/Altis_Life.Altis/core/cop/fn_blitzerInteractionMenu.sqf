#define Btn1 37450
#define Btn2 37451
#define Btn3 37452
#define Btn4 37453
#define Btn5 37454
#define Btn6 37455
#define Btn7 37456
#define Btn8 37457
#define Title 37401

private["_display","_curTarget","_Btn1","_Btn2","_Btn3","_Btn4","_Btn5","_Btn6","_Btn7","_Btn8"];
if(!dialog) then {
	createDialog "pInteraction_Menu";
};

disableSerialization;
_curTarget = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;

if(isNull _curTarget) exitWith {closeDialog 0;}; //Bad target


if(_curTarget isKindOf "SpeedRadar4") exitWith
{

		_display = findDisplay 37400;
		_Btn1 = _display displayCtrl Btn1;
		_Btn2 = _display displayCtrl Btn2;
		_Btn3 = _display displayCtrl Btn3;
		_Btn4 = _display displayCtrl Btn4;
		_Btn5 = _display displayCtrl Btn5;
		_Btn6 = _display displayCtrl Btn6;
		_Btn7 = _display displayCtrl Btn7;
		_Btn8 = _display displayCtrl Btn8;
		life_pInact_curTarget = _curTarget;

		_Btn1 ctrlSetText "Messung: 30";
		_Btn1 buttonSetAction "[1] spawn life_fnc_RLP_blitzer; _curTarget setVariable [""RLP_Blitzer"", false, true]; closeDialog 0;";
		_Btn2 ctrlSetText "Messung: 50";
		_Btn2 buttonSetAction "[2] spawn life_fnc_RLP_blitzer; _curTarget setVariable [""RLP_Blitzer"", false, true]; closeDialog 0;";
		_Btn3 ctrlSetText "Messung: 70";
		_Btn3 buttonSetAction "[3] spawn life_fnc_RLP_blitzer; _curTarget setVariable [""RLP_Blitzer"", false, true]; closeDialog 0;";
		_Btn4 ctrlSetText "Messung: 80";
		_Btn4 buttonSetAction "[4] spawn life_fnc_RLP_blitzer; _curTarget setVariable [""RLP_Blitzer"", false, true]; closeDialog 0;";
		_Btn5 ctrlSetText "Messung: 100";
		_Btn5 buttonSetAction "[5] spawn life_fnc_RLP_blitzer; _curTarget setVariable [""RLP_Blitzer"", false, true]; closeDialog 0;";
		_Btn6 ctrlSetText "Messung: 130";
		_Btn6 buttonSetAction "[6] spawn life_fnc_RLP_blitzer; _curTarget setVariable [""RLP_Blitzer"", false, true]; closeDialog 0;";
		_Btn7 ctrlSetText "Blitzer einpacken";
		_Btn7 buttonSetAction "[] spawn life_fnc_packupblitzer; closeDialog 0;";
		_Btn8 ctrlShow false;
};