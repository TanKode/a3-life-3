/*
	COPY PASTE TIME
*/
private["_val"];
_val = parseNumber(ctrlText 2702);
if(_val > 999999999) exitWith {hint localize "STR_ATM_WithdrawMax";};
if(_val < 0) exitwith {};
if(!([str(_val)] call life_fnc_isnumeric)) exitWith {hint localize "STR_ATM_notnumeric"};
if(_val > life_RLP_atmgeld) exitWith {hint localize "STR_ATM_NotEnoughFunds"};
if(_val < 100 && life_RLP_atmgeld > 999999) exitWith {hint localize "STR_ATM_WithdrawMin"}; //Temp fix for something.

life_RLP_handgeld = life_RLP_handgeld + _val;
life_RLP_atmgeld = life_RLP_atmgeld - _val;
hint format [localize "STR_ATM_WithdrawSuccess",[_val] call life_fnc_numberText];
diag_log format ["%1 hat %2 von seinem Konto abgehoben",player getVariable["realname",name player],[_val] call life_fnc_numberText];
[] call life_fnc_atmMenu;
[6] call SOCK_fnc_updatePartial;