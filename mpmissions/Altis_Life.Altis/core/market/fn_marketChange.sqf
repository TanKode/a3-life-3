/*

	Some random and dynamical stuff for market

*/

private["_rand","_modifier","_price", "_globalchange","_defaultprice","_shortname","_difference"];

_rand = [0,200] call life_fnc_randomRound; //0-200

/*

	HINWEIS: obige Zahl in random erhöhen, um alle ereignisse seltener zu machen!
	
*/

diag_log "[MARKET] marketChange called.";

switch(true) do
{
	case (_rand <= 30): //30% default market change value (strong version)
	{
		{
			if(random(10) <= 4) then //Random for each resource
			{
				/*_price = _x select 1;
				_globalchange = _x select 2;*/
				
				_modifier = [-20,20] call life_fnc_randomRound; //Verkaufte/Gekaufte Items
				/*_modifier = _price * _modifier;
				
				_price = _price + _modifier;
				_globalchange = _globalchange + _modifier;
				
				life_market_prices set [_forEachIndex, [_x select 0, _price, _globalchange, _modifier] ];*/
				
				if(_modifier < 0) then
				{
					[_x select 0, -(_modifier), true] call life_fnc_marketSell; 
				}
				else
				{
					[_x select 0, _modifier, true] call life_fnc_marketBuy; 
				};
			};
		}
		foreach life_market_prices;
	};
	case (_rand <= 30): //6% Drogenpreis erhöhen
	{
		[[0,"News: Ein Drogenschmugglerring wurde auf Altis hochgenommen!"],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
		
		//Erhöhe Marktpreis mit marketSell
		["marijuana", [15,30] call life_fnc_randomRound, true] call life_fnc_marketBuy; 
		["cocainep", [15,30] call life_fnc_randomRound, true] call life_fnc_marketBuy; 
		["heroinp", [15,30] call life_fnc_randomRound, true] call life_fnc_marketBuy; 
		
		diag_log "+Market+ Event drugp";
	};
	case (_rand <= 40): //8% Ölpreis erhöhen
	{
		[[0,"News: Ölzulieferer meldet gesunkenen Ölfrachter!"],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
		
		["oilp", [20,40] call life_fnc_randomRound, true] call life_fnc_marketBuy; 
		
		diag_log "+Market+ Event oilp";
	};
	case (_rand <= 40): //10% Eisenpreis + zementpreis + glaspreis erhöhen
	{
		[[0,"News: Die Regierung genehmigt den Bau des neue Einkaufszentrum in Kavala!"],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
		
		["cement", [20,40] call life_fnc_randomRound, true] call life_fnc_marketBuy; 
		["iron_r", [20,40] call life_fnc_randomRound, true] call life_fnc_marketBuy; 
		["glass", [20,40] call life_fnc_randomRound, true] call life_fnc_marketBuy; 
		
		diag_log "+Market+ Event wcc";
	};
	case (_rand <= 40): //4% Schmuck+Dia
	{
		[[0,"News: Eine große Schmuckaustellung steht bevor!"],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
		
		["schmuck", [15,30] call life_fnc_randomRound, true] call life_fnc_marketBuy; 
		["diamondc", [15,30] call life_fnc_randomRound, true] call life_fnc_marketBuy; 
		["diamond", [15,30] call life_fnc_randomRound, true] call life_fnc_marketBuy; 

		diag_log "+Market+ Event goldm";
	};
	case (_rand <= 40): //8% Kupfer+Silber+Bronze+Eisen
	{
		[[0,"News: Elektronikindustrie benötigt Edelmetalle!"],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
		
		["silberp", [15,30] call life_fnc_randomRound, true] call life_fnc_marketBuy; 
		["bronze", [15,30] call life_fnc_randomRound, true] call life_fnc_marketBuy; 
		["copper_r", [15,30] call life_fnc_randomRound, true] call life_fnc_marketBuy; 
		["iron_r", [15,30] call life_fnc_randomRound, true] call life_fnc_marketBuy; 
		["eisenp", [15,30] call life_fnc_randomRound, true] call life_fnc_marketBuy; 

		diag_log "+Market+ Event copperp";
	};
	case (_rand <= 10): //6% Goldpreis erhöht sich
	{
		[[0,"News: Anleger verlieren Vertrauen in Dollar!"],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
		
		["goldbar", [15,30] call life_fnc_randomRound, true] call life_fnc_marketBuy; 
		
		diag_log "+Market+ Event goldp";
	};
	case (_rand <= 50): //10% Schildkröten höher
	{
		[[0,"News: Eine zuhohe Population an Schildkröten gefährdet die Naturschutzgebiete!"],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
		
		//Erhöhe Marktpreis mit marketSell
		["turtle", [4,10] call life_fnc_randomRound, true] call life_fnc_marketBuy; 	
		
		diag_log "+Market+ Event turtlep";
	};
	case (_rand <= 20): //10% Piraten erhöht
	{
		[[0,"News: Piraten treiben auf Altis wieder ihr Unwesen! Arrr!"],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
		
		//Erhöhe Marktpreis mit marketSell
		["pbrau", [4,10] call life_fnc_randomRound, true] call life_fnc_marketBuy; 	
		["kkugel", [4,10] call life_fnc_randomRound, true] call life_fnc_marketBuy; 	
		["spulver", [4,10] call life_fnc_randomRound, true] call life_fnc_marketBuy; 	
		["pkugel", [4,10] call life_fnc_randomRound, true] call life_fnc_marketBuy; 	
		
		diag_log "+Market+ Event turtlep";
	};
	case (_rand <= 35): //6% Drogenpreis niedriger
	{
		[[0,"News: Neue synthetische Droge überschwemmt Drogenmarkt!"],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
		
		//Erhöhe Marktpreis mit marketSell
		["marijuana", [15,30] call life_fnc_randomRound, true] call life_fnc_marketSell; 
		["cocainep", [15,30] call life_fnc_randomRound, true] call life_fnc_marketSell; 
		["heroinp", [15,30] call life_fnc_randomRound, true] call life_fnc_marketSell; 
		
		diag_log "+Market+ Event drugm";
	};
	case (_rand <= 35): //8% Ölpreis sinkt
	{
		[[0,"News: Neuer Biotreibstoff überschwemmt den Markt!"],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
		
		["oilp", [20,40] call life_fnc_randomRound, true] call life_fnc_marketSell; 
		
		diag_log "+Market+ Event oilp";
	};
	case (_rand <= 35): //10% Eisenpreis + zementpreis + glaspreis erhöhen
	{
		[[0,"News: Die Regierung lehnt den Bau des neue Einkaufszentrum in Kavala ab!"],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
		
		["cement", [20,40] call life_fnc_randomRound, true] call life_fnc_marketSell; 
		["iron_r", [20,40] call life_fnc_randomRound, true] call life_fnc_marketSell; 
		["glass", [20,40] call life_fnc_randomRound, true] call life_fnc_marketSell; 
		
		diag_log "+Market+ Event wcc";
	};
	case (_rand <= 35): //4% Goldpreis steigt
	{
		[[0,"News: Schmuckausstellung wurde abgesagt, da Diebe ihr Unwesen treiben!"],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
		
		["schmuck", [15,30] call life_fnc_randomRound, true] call life_fnc_marketSell; 
		["diamondc", [15,30] call life_fnc_randomRound, true] call life_fnc_marketSell; 
		["diamond", [15,30] call life_fnc_randomRound, true] call life_fnc_marketSell; 

		diag_log "+Market+ Event goldm";
	};
	case (_rand <= 35): //8% Kupfer/Silber erhöht sich
	{
		[[0,"News: Bedarf an Edelmetalle sinkt!"],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
		
		["silberp", [15,30] call life_fnc_randomRound, true] call life_fnc_marketSell; 
		["bronze", [15,30] call life_fnc_randomRound, true] call life_fnc_marketSell; 
		["copper_r", [15,30] call life_fnc_randomRound, true] call life_fnc_marketSell; 
		["iron_r", [15,30] call life_fnc_randomRound, true] call life_fnc_marketSell; 
		["eisenp", [15,30] call life_fnc_randomRound, true] call life_fnc_marketSell; 

		diag_log "+Market+ Event copperp";
	};
	case (_rand <= 15): //6% Goldpreis erhöht sich
	{
		[[0,"News: Der Dollar festigt seinen Wert!"],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
		
		["goldbar", [15,30] call life_fnc_randomRound, true] call life_fnc_marketSell; 
		
		diag_log "+Market+ Event goldp";
	};
	case (_rand <= 45): //10% Schildkröten höher
	{
		[[0,"News: Schildkröten sind vor den Aussterben bedroht!"],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
		
		//Erhöhe Marktpreis mit marketSell
		["turtle", [4,10] call life_fnc_randomRound, true] call life_fnc_marketSell; 	
		
		diag_log "+Market+ Event turtlep";
	};
	case (_rand <= 25): //10% Piraten erhöht
	{
		[[0,"News: Piraten verlassen Altis wieder!"],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
		
		//Erhöhe Marktpreis mit marketSell
		["pbrau", [4,10] call life_fnc_randomRound, true] call life_fnc_marketSell; 	
		["kkugel", [4,10] call life_fnc_randomRound, true] call life_fnc_marketSell; 	
		["spulver", [4,10] call life_fnc_randomRound, true] call life_fnc_marketSell; 	
		["pkugel", [4,10] call life_fnc_randomRound, true] call life_fnc_marketSell; 	
		
		diag_log "+Market+ Event turtlep";
	};
	case (_rand <= 35): //10% Piraten erhöht
	{
		[[0,"News: Die staatlichen Festlichkeiten wurden abgesagt!"],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
		
		//Erhöhe Marktpreis mit marketSell
		["getreideip", [4,10] call life_fnc_randomRound, true] call life_fnc_marketSell; 	
		["zuckerip", [4,10] call life_fnc_randomRound, true] call life_fnc_marketSell; 	
		["traubenp", [4,10] call life_fnc_randomRound, true] call life_fnc_marketSell; 	
		["hopfenp", [4,10] call life_fnc_randomRound, true] call life_fnc_marketSell; 	
		
		diag_log "+Market+ Event turtlep";
	};

	default //market change: default version
	{
		//diag_log format["[MARKET] marketChange did nothing. Rand=%1", _rand];
		{
			//Get default price
			_defaultprice = 0;
			_shortname = _x select 0;
			_price = _x select 1;
			_globalchange = _x select 2;
		
			{
				if((_x select 0) == _shortname) exitWith
				{
					_defaultprice = _x select 1;
				};
			}
			foreach life_market_resources;
			
			if(_defaultprice > 0) then
			{
			
				//Get difference
				_difference = _defaultprice - _price; //Defaultprice - current price
			
				_modifier = _difference * (random 0.4);
				_modifier = round _modifier;
			
				//Protecting hard caps
				/*if( _modifier < -700) then {_modifier = -700;};
				if( _modifier > 700) then {_modifier = 700;};*/
			
				//_modifier = [-15,25] call life_fnc_randomRound; //Verkaufte/Gekaufte Items
				
				/*if(_modifier < 0) then
				{
					[_x select 0, -(_modifier), true] call life_fnc_marketSell; 
				}
				else
				{
					[_x select 0, _modifier, true] call life_fnc_marketBuy; 
				};*/
				
				diag_log format["+Market+ Correcting market value of %1 from %2 to %3 by %4", _shortname, _price, (_price + _modifier), _modifier];
				
				_price = _price + _modifier;
				_globalchange = _globalchange + _modifier;
				
				
				
				//New price arr
				life_market_prices set [_forEachIndex, [_shortname, _price,_globalchange,_modifier] ]; //set raw values
			
			}
			else
			{
				diag_log format["+Market+ Cannot correct market value of %1", _shortname];
			};
		}
		foreach life_market_prices;
	};
};

publicVariable "life_market_prices";