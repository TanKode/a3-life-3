private["_ui","_essen_BAR","_essen_TEXT","_wasser_BAR","_wasser_TEXT","_leben_BAR","_leben_TEXT","_status_BAR"];
disableSerialization;

2 cutRsc ["playerHUD","PLAIN"];
_ui = uiNameSpace getVariable ["playerHUD",displayNull];
if(isNull _ui) then {[] call life_fnc_hudSetup;};

_leben_BAR = _ui displayCtrl 1202;
_essen_BAR = _ui displayCtrl 1205;
_wasser_BAR = _ui displayCtrl 1208;
_toilet_BAR = _ui displayCtrl 1211;
_leben_TEXT = _ui displayCtrl 1203;
_essen_TEXT = _ui displayCtrl 1206;
_wasser_TEXT = _ui displayCtrl 1209;
_toilet_TEXT = _ui displayCtrl 1212;
_status_BAR = _ui displayCtrl 1000;

_leben_BAR progressSetPosition (-(damage player - 1));
_wasser_BAR progressSetPosition (life_thirst / 100);
_essen_BAR progressSetPosition (life_hunger / 100);
_toilet_BAR progressSetPosition (life_carryWeight * (100 / life_maxWeight) / 100 );

_leben_TEXT ctrlSetText format["%1", round((1 - (damage player)) * 100)];
_leben_TEXT ctrlCommit 0;

_essen_TEXT ctrlSetText format["%1", life_hunger];
_essen_TEXT ctrlCommit 0;

_wasser_TEXT ctrlSetText format["%1", life_thirst];
_wasser_TEXT ctrlCommit 0;

_toilet_TEXT ctrlSetText format["%1 / %2", life_carryWeight, life_maxWeight];
_toilet_TEXT ctrlCommit 0; 

_status_BAR ctrlSetText format["Polizei: %1 | Zivilisten: %2 | Notarzt: %3 | ADAC: %4 | Bargeld: %5 | Konto: %6", west countSide playableUnits, civilian countSide playableUnits, independent countSide playableUnits, east countSide playableUnits,[life_RLP_handgeld] call life_fnc_numberText,[life_RLP_atmgeld] call life_fnc_numberText];