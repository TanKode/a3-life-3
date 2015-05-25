/*
	File: fn_itemIcon.sqf
	Author: EdgeKiller

	Description:
	Return the icon for each altis life item.
*/
private["_var"];
_var = [_this,0,"",[""]] call BIS_fnc_param;
if(_var == "") exitWith {""};

switch (_var) do
{
	//Virtual Inventory Items
	case "life_inv_oilu": {("icons\items\oil_unprocessed.paa")};
	case "life_inv_oilp": {("icons\items\oil_processed.paa")};
	case "life_inv_heroinu": {("icons\items\heroin_unprocessed.paa")};
	case "life_inv_heroinp": {("icons\items\heroin_processed.paa")};
	case "life_inv_cannabis": {("icons\items\cannabis.paa")};
	case "life_inv_marijuana": {("icons\items\marijuana.paa")};
	case "life_inv_apple": {("icons\items\apple.paa")};
	case "life_inv_rabbit": {("icons\items\meat.paa")};
	case "life_inv_salema": {("icons\items\fish.paa")};
	case "life_inv_ornate": {("icons\items\fish.paa")};
	case "life_inv_mackerel": {("icons\items\fish.paa")};
	case "life_inv_tuna": {("icons\items\fish.paa")};
	case "life_inv_mullet": {("icons\items\fish.paa")};
	case "life_inv_catshark": {("icons\items\fish.paa")};
	case "life_inv_krabben": {("icons\items\fish.paa")};
	case "life_inv_krabbenv": {("icons\items\fish.paa")};
	case "life_inv_turtle": {("icons\items\turtle.paa")};
	case "life_inv_fishingpoles": {("icons\items\fishingpoles.paa")};
	case "life_inv_water": {("icons\items\water.paa")};
	case "life_inv_coffee": {("icons\items\coffee.paa")};
	case "life_inv_turtlesoup": {("icons\items\turtle_soup.paa")};
	case "life_inv_donuts": {("icons\items\donut.paa")};
	case "life_inv_fuelE": {("icons\items\fuel_can.paa")};
	case "life_inv_fuelF": {("icons\items\fuel_can.paa")};
	case "life_inv_pickaxe": {("icons\items\pickaxe.paa")};
	case "life_inv_copperore": {("icons\items\copper_ore.paa")};
	case "life_inv_ironore": {("icons\items\iron_ore.paa")};
	case "life_inv_ironr": {("icons\items\iron.paa")};
	case "life_inv_copperr": {("icons\items\copper.paa")};
	case "life_inv_sand": {("icons\items\sand.paa")};
	case "life_inv_salt": {("icons\items\salt_unprocessed.paa")};
	case "life_inv_saltr": {("icons\items\salt.paa")};
	case "life_inv_glass": {("icons\items\glass.paa")};
	case "life_inv_diamond": {("icons\items\diamond_unprocessed.paa")};
	case "life_inv_diamondr": {("icons\items\diamond.paa")};
	case "life_inv_tbacon": {("icons\items\sandwich.paa")};
	case "life_inv_redgull": {("icons\items\redgull.paa")};
	case "life_inv_lockpick": {("icons\items\lockpick.paa")};
	case "life_inv_peach": {("icons\items\peach.paa")};
	case "life_inv_coke": {("icons\items\cocain_unprocessed.paa")};
	case "life_inv_cokep": {("icons\items\cocain_processed.paa")};
	case "life_inv_spikeStrip": {("icons\items\spikestrip.paa")};
	case "life_inv_rock": {("icons\items\rock.paa")};
	case "life_inv_cement": {("icons\items\cement.paa")};
	case "life_inv_goldbar": {("icons\items\goldbar.paa")};
	case "life_inv_blastingcharge": {("icons\items\blastingcharge.paa")};
	case "life_inv_tracker": {("icons\items\Laptop.paa")};
	case "life_inv_handcuffkey": {("icons\items\multitool.paa")};
	case "life_inv_housewarn": {("icons\items\smartphone.paa")};
	case "life_inv_speedbomb": {("icons\items\Speedbomb.paa")};
	case "life_inv_boltcutter": {("icons\items\boltcutter.paa")};
	case "life_inv_defusekit": {("icons\items\defusekit.paa")};
	case "life_inv_storagesmall": {("icons\items\storagesmall.paa")};
	case "life_inv_storagebig": {("icons\items\storagebig.paa")};
	case "life_inv_getreideu": {("icons\items\wheat.paa")};
	case "life_inv_holzu": {("icons\items\holz.paa")};
	case "life_inv_hopfenu": {("icons\items\hopfen.paa")};
	case "life_inv_schwefelu": {("icons\items\schwefel.paa")};
	case "life_inv_silberu": {("icons\items\silver.paa")};
	case "life_inv_tabaku": {("icons\items\tabak.paa")};
	case "life_inv_traubenu": {("icons\items\traube.paa")};
	case "life_inv_zinnu": {("icons\items\zinn.paa")};
	case "life_inv_zuckeru": {("icons\items\sugarcane.paa")};
	case "life_inv_getreideip": {("icons\items\wheat.paa")};
	case "life_inv_tabakip": {("icons\items\tabak.paa")};
	case "life_inv_zuckerip": {("icons\items\sugar.paa")};
	case "life_inv_eisenp": {("icons\items\silver.paa")};
	case "life_inv_getreidep": {("icons\items\wheat.paa")};
	case "life_inv_holzp": {("icons\items\holz.paa")};
	case "life_inv_hopfenp": {("icons\items\beer.paa")};
	case "life_inv_schwefelp": {("icons\items\schwefel.paa")};
	case "life_inv_silberp": {("icons\items\silver.paa")};
	case "life_inv_tabakp": {("icons\items\tabakp.paa")};
	case "life_inv_traubenp": {("icons\items\traube.paa")};
	case "life_inv_zinnp": {("icons\items\zinn.paa")};
	case "life_inv_zuckerp": {("icons\items\sugarcane.paa")};
	case "life_inv_bronze": {("icons\items\bronze.paa")};
	case "life_inv_schmuck": {("icons\items\schmuck.paa")};
	case "life_inv_pbrau": {("icons\items\pbrau.paa")};
	case "life_inv_spulver": {("icons\items\gunpowder.paa")};
	case "life_inv_kkugel": {("icons\items\kanonball.paa")};
	case "life_inv_pkugel": {("icons\items\kanonball.paa")};
	case "life_inv_uran1": {("icons\items\uran.paa")};
	case "life_inv_uranip": {("icons\items\brennstab.paa")};
	case "life_inv_pfandflascheu": {("icons\items\beer.paa")};
	case "life_inv_pfandflaschep": {("icons\items\beer.paa")};
	case "life_inv_datenu": {("icons\items\beer.paa")};
	case "life_inv_datenp": {("icons\items\beer.paa")};
	default {("textures\Logo2.paa")};
};