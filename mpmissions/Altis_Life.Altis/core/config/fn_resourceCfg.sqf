//need to store
// _resource : the name of the resource as input
// _zoneSize : the diameter of the resource zone in meters
// _batchSize : how many items should be gathererd in one go
// _requiredItem : is an item required to grather this resource?
private["_var", "_zoneSize", "_batchSize", "_requiredItem", "_resourcetypeof"];
_resource = [_this,0,"",[""]] call BIS_fnc_param;

//default values
_zoneSize = 50;
_batchSize = 1;
_requiredItem = "";
_resourceZones = [];

//if you want to overwrite a value for one of the resource just add a case for it here
switch(_resource) do {

	case ("apple") : {
		_batchSize = round(random 3) +1;
		_resourceZones = ["apple_1","apple_2","apple_3","apple_4"];
		_resourcetypeof = 1;
	};

	case ("peach") : {
		_batchSize = round(random 3) +1;
		_resourceZones = ["peaches_1","peaches_2","peaches_3","peaches_4"];
		_resourcetypeof = 1;
	};

	case  ("heroinu") : {
		_batchSize = round(random 3) +1;
		_resourceZones = ["heroin_1"];
		_resourcetypeof = 1;
	};

	case ("grab") : {
	    _batchSize = round(random 3) +1;
	    _resourceZones = ["gatherGrabbeilagen"];
	    _resourcetypeof = 1;
	};

	case ("krabben") : {
	    _batchSize = round(random 3) +1;
	    _resourceZones = ["Krabbenzone_01","Krabbenzone_02"];
	    _resourcetypeof = 1;
	};

	case ("reli") : {
        _batchSize = round(random 3) +1;
        _resourceZones = ["gatherRelikte"];
        _resourcetypeof = 1;
    };

	case  ("cocaine") : {
		_batchSize = round(random 3) +1;
		_resourceZones = ["cocaine_1"];
		_resourcetypeof = 1;
	};

	case  ("cannabis") : {
		_batchSize = round(random 3) +1;
		_resourceZones = ["weed_1"];
		_resourcetypeof = 1;
	};

	case  ("methu") : {
		_batchSize = round(random 3) +1;
		_resourceZones = ["meth_1"];
		_resourcetypeof = 1;
	};

	case  ("pfandu") : {
		_batchSize = round(random 3) +1;
		_resourceZones = ["pfandflascheu"];
		_resourcetypeof = 1;
	};

	case  ("zuckeru") : {
		_batchSize = round(random 3) +1;
		_resourceZones = ["zucker_1"];
		_resourcetypeof = 1;
	};

	case  ("getreideu") : {
		_batchSize = round(random 3) +1;
		_resourceZones = ["getreide_1"];
		_resourcetypeof = 1;
	};

	case  ("hopfenu") : {
		_batchSize = round(random 3) +1;
		_resourceZones = ["hopfen_1"];
		_resourcetypeof = 1;
	};

	case  ("tabaku") : {
		_batchSize = round(random 3) +1;
		_resourceZones = ["tabak_1"];
		_resourcetypeof = 1;
	};

	case ("copperore") : {
		_batchSize = 2;
		_resourceZones = ["lead_1"];
		_resourcetypeof = 2;
	};

	case ("ironore") : {
		_batchSize = 2;
		_requiredItem = "pickaxe";
		_resourceZones = ["iron_1"];
		_resourcetypeof = 2;
	};

	case ("salt") : {
		_batchSize = round(random 3) +1;
		_requiredItem = "pickaxe";
		_resourceZones = ["salt_1"];
		_resourcetypeof = 2;
	};

	case ("sand") : {
		_batchSize = round(random 3) +1;
		_requiredItem = "pickaxe";
		_resourceZones = ["sand_1"];
		_resourcetypeof = 2;
	};

	case ("diamond") : {
		_batchSize = round(random 3) +1;
		_requiredItem = "pickaxe";
		_resourceZones = ["diamond_1"];
		_resourcetypeof = 2;
	};

	case ("oilu") : {
		_batchSize = round(random 3) +1;
		_requiredItem = "pickaxe";
		_resourceZones = ["oil_1","oil_2"];
		_resourcetypeof = 2;
	};

	case ("rock") : {
		_batchSize = round(random 3) +1;
		_requiredItem = "pickaxe";
		_resourceZones = ["rock_1"];
		_resourcetypeof = 2;
	};

	case ("zinnu") : {
		_batchSize = round(random 3) +1;
		_requiredItem = "pickaxe";
		_resourceZones = ["zinn_1"];
		_resourcetypeof = 2;
	};

	case ("silberu") : {
		_batchSize = round(random 3) +1;
		_requiredItem = "pickaxe";
		_resourceZones = ["silber_1"];
		_resourcetypeof = 2;
	};
	case ("holzu") :{
		_batchSize = round(random 3) +1;
		_requiredItem = "pickaxe";
		_resourceZones = ["holz_01"];
		_resourcetypeof = 2;
	};
	case ("reliefenu") : {
		_batchSize = round(random 3) +1;
		_requiredItem = "pickaxe";
		_resourceZones = ["reliefenu"];
		_resourcetypeof = 2;
	};
	case ("knochen") : {
		_batchSize = round(random 3) +1;
		_requiredItem = "pickaxe";
		_resourceZones = ["knochen"];
		_resourcetypeof = 2;
	};
	case ("uranuweu") : {
		_batchSize = round(random 3) +1;
		_requiredItem = "pickaxe";
		_resourceZones = ["uranuweu1"];
		_resourcetypeof = 2;
	};
	case ("bernsteinu") : {
		_batchSize = round(random 3) +1;
		_requiredItem = "pickaxe";
		_resourceZones = ["bernsteinu"];
		_resourcetypeof = 2;
	};
	case ("erdenu") : {
		_batchSize = round(random 3) +1;
		_resourceZones = ["erdenu"];
		_resourcetypeof = 2;
	};
	case ("reichsgoldu") : {
		_batchSize = round(random 3) +1;
		_requiredItem = "pickaxe";
		_resourceZones = ["reichsgoldu"];
		_resourcetypeof = 2;
	};
	case ("datenu") : {
		_batchSize = round(random 3) +1;
		_resourceZones = ["datenu"];
		_resourcetypeof = 2;
	};
	case ("datennsau") : {
		_batchSize = round(random 3) +1;
		_resourceZones = ["datennsau"];
		_resourcetypeof = 2;
	};
	case ("pfandflascheu") : {
		_batchSize = round(random 3) +1;
		_resourceZones = ["pfandflaschenix"];
		_resourcetypeof = 2;
	};

};

[_resourceZones, _zoneSize, _batchSize, _requiredItem, _resourcetypeof];