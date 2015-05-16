/*
	File: fn_virt_shops.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Config for virtual shops.
*/
private["_shop"];
_shop = _this select 0;

switch (_shop) do
{
	case "market": {["Altis Markt",["diaper","water","rabbit","apple","redgull","tbacon","lockpick","handcuffkey","pickaxe","fuelF","peach","storagesmall","storagebig","pfandflascheu","pfandflaschep"]]};
	case "rebel": {["Rebellen Markt",["diaper","water","rabbit","handcuffkey","apple","redgull","tbacon","lockpick","pickaxe","fuelF","peach","boltcutter","blastingcharge","uwsl","tracker","speedbomb"]]};
	case "gang": {["Gang Markt",["diaper","water","rabbit","handcuffkey","apple","redgull","tbacon","lockpick","pickaxe","fuelF","peach","boltcutter","blastingcharge","tracker","speedbomb"]]};
	case "wongs": {["Wong's Feinkost",["turtlesoup","turtle"]]};
	case "grab": {["Friedhofsladen",["grab","grabv"]]};
	case "reli": {["Museum",["reli","reliv"]]};
	case "gas": {["Erdgaskäufer",["gas","gasv"]]};
	case "coffee": {["Stratis Cafeclub",["coffee","donuts"]]};
	case "heroin": {["Drogendealer",["cocainep","heroinp","marijuana"]]};
	case "oil": {["Oelhandel",["oilp","pickaxe","fuelF"]]};
	case "fishmarket": {["Altis Fischmarkt",["krabben","krabbenv","salema","ornate","mackerel","mullet","tuna","catshark"]]};
	case "glass": {["Altis Glashandel",["glass"]]};
	case "iron": {["Altis Metallhandel",["iron_r","copper_r","eisenp"]]};
	case "diamond": {["Diamantenhandel",["diamond","diamondc"]]};
	case "salt": {["Salzhandel",["salt_r"]]};
	case "cop": {["Polizeihandel",["blitzer","diaper","donuts","coffee","spikeStrip","mauer","schranke","water","rabbit","apple","redgull","fuelF","defusekit","tracker"]]};
	case "cement": {["Cement Dealer",["cement"]]};
	case "sprit": {["Spirituosenhandel",["getreideip","zuckerip"]]};
	case "tabak": {["Tabakfachhandel",["tabakp","tabakip"]]};
	case "backen": {["Baeckerei",["getreidep","zuckerp","donuts"]]};
	case "kohle": {["Verkohler",["holzp"]]};
	case "trinken": {["Getraenkehandel",["traubenp","hopfenp"]]};
	case "zinn": {["Zinnhandel",["zinnp"]]};
	case "silber": {["Silberhandel",["silberp"]]};
	case "schwefel": {["Schwefelhaftes",["schwefelp"]]};
	case "schmuck": {["Juwelier",["schmuck"]]};
	case "bronze": {["Bronzehandel",["bronze"]]};
	case "pirat": {["Piratenhandel",["pbrau","kkugel","spulver","pkugel"]]};
	case "gold": {["Goldhandel",["goldbar"]]};
	case "nazi": {["Goldhandel",["goldv"]]};
	case "knochen": {["Goldhandel",["knochenv"]]};
	case "uran": {["Kraftwerk",["uran5"]]};
	case "uranip": {["Waffennarr",["uranip"]]};
	case "adacmarkt": {["ADAC Markt",["diaper","fuelF","apple","peach","tbacon","rabbit","water","lockpick","redgull","tracker","diaper"]]};
	case "huntingmarkt": {["Jägermarkt",["diaper","water","rabbit","apple","redgull","tbacon","lockpick","handcuffkey","pickaxe","fuelF","peach","storagesmall","storagebig","henraw","roosterraw","goatraw","sheepraw","rabbitraw"]]};
	case "datenhaendler": {["datenhaendler",["datenP","datenP"]]};
};
