#include <macro.h>
#define IDD_LIFE_MAIN_DISP 2203
#define IDC_LIFE_BAR_FOOD 2200
#define IDC_LIFE_BAR_WATER 2201
#define IDC_LIFE_BAR_HEALTH 2202
#define IDC_LIFE_BAR_MONEY 2204
#define IDC_LIFE_FOOD_TEXT 1000
#define IDC_LIFE_WATER_TEXT 1001
#define IDC_LIFE_HEALTH_TEXT 1002
#define IDC_LIFE_MONEY_TEXT 1003

#define IDC_LIFE_BAR_WEIGHT 2205
#define IDC_LIFE_WEIGHT_TEXT 100400

#define LIFEdisplay (GVAR_UINS ["playerHUD",displayNull])
#define LIFEctrl(ctrl) ((GVAR_UINS ["playerHUD",displayNull]) displayCtrl ctrl)


disableSerialization;

if(isNull LIFEdisplay) then {[] call life_fnc_hudSetup;};
if(life_hunger > 0) then
{
	LIFEctrl(IDC_LIFE_BAR_FOOD) progressSetPosition (1 / (100 / life_hunger));
}
else
{
	LIFEctrl(IDC_LIFE_BAR_FOOD) progressSetPosition 0;
};
if(life_thirst > 0) then
{
	LIFEctrl(IDC_LIFE_BAR_WATER) progressSetPosition (1 / (100 / life_thirst));
}
else
{
	LIFEctrl(IDC_LIFE_BAR_WATER) progressSetPosition 0;
};
if(life_RLP_handgeld > 0) then
	{
	LIFEctrl(IDC_LIFE_BAR_MONEY) progressSetPosition (1 / (9999999 / life_RLP_handgeld));
	}
else
	{
	LIFEctrl(IDC_LIFE_BAR_MONEY) progressSetPosition 0;
	};
if(life_toilet > 0) then
	{
	LIFEctrl(IDC_LIFE_BAR_WEIGHT) progressSetPosition (1 / (100 / life_toilet));
	}
else
	{
	LIFEctrl(IDC_LIFE_BAR_WEIGHT) progressSetPosition 0;
	};

LIFEctrl(IDC_LIFE_BAR_HEALTH) progressSetPosition (1 - (damage player));


LIFEctrl(IDC_LIFE_FOOD_TEXT) ctrlsetText format["%1", life_hunger];
LIFEctrl(IDC_LIFE_WATER_TEXT) ctrlsetText format["%1", life_thirst];
LIFEctrl(IDC_LIFE_HEALTH_TEXT) ctrlsetText format["%1", round((1 - (damage player)) * 100)];
LIFEctrl(IDC_LIFE_MONEY_TEXT) ctrlSetText format["%1", [life_RLP_handgeld] call life_fnc_numberText];
LIFEctrl(IDC_LIFE_WEIGHT_TEXT) ctrlSetText format["%1", life_toilet];