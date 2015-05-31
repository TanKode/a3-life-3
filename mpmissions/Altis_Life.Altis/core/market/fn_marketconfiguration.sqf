/*

	Main configuration for non-persistent market system
	Will need triggers to hook into vanilla pricing methods

*/

////////////MAIN CONFIG

life_market_resources = [

	//Schema: SHORTNAME, DEFAULT-WERT, MIN-WERT, MAX-WERT, VERÄNDERUNG BEI AKTION [VERKAUF Multipliziert mit 1, Kauf multipliziert um -1
	//["gold", 1500, 450, 2300, 8, 5],	
	["oilp", 2100, 1600, 2500, 5, 3,
		[ 
			["cement",1], 
			["iron_r",1], 
			["glass",1], 
			["eisenp",1]
		] 
	],

	["gasv", 5000, 1285, 7858, 5, 3,
		[
			["cement",1],
			["iron_r",1],
			["glass",1],
			["eisenp",1]
		]
	],
	
	["iron_r", 1000, 500, 1500, 5, 3,
		[ 
			["cement",1], 
			["oilp",1], 
			["glass",1], 
			["eisenp",1]
		] 
	],
	
	["eisenp", 1000, 500, 1500, 5, 3,
		[ 
			["cement",1], 
			["iron_r",1], 
			["glass",1], 
			["oilp",1]
		] 
	],
	
	["cement", 500, 400, 664, 5, 3,
		[ 
			["oilp",1], 
			["iron_r",1], 
			["glass",1], 
			["eisenp",1]
		] 
	],

	["glass", 1000, 500, 1500, 5, 3,
		[ 
			["oilp",1], 
			["iron_r",1], 
			["cement",1], 
			["eisenp",1]
		] 
	],
	
	["salt_r", 1000, 500, 1500, 5, 3,
		[ 
			["getreidep",1], 
			["zuckerp",1] 
		] 
	],
	
	["zuckerp", 3565, 2379, 9130, 5, 3,
		[ 
			["getreidep",1], 
			["salt_r",1] 
		] 
	],
	
	["getreidep", 2210, 1605, 6420, 5, 3,
		[ 
			["salt_r",1], 
			["zuckerp",1] 
		] 
	],
	
	["silberp", 1400, 800, 1700, 5, 3,
		[ 
			["zinnp",1], 
			["diamondc",1],
			["bronze",1],
			["copper_r",1]
		] 
	],
	["zinnp", 3274, 1637, 6550, 5, 3,
		[ 
			["silberp",1], 
			["diamondc",1],
			["bronze",1],
			["copper_r",1]
		] 
	],
	["diamondc", 1300, 783, 1632, 5, 3,
		[ 
			["zinnp",1], 
			["silberp",1],
			["bronze",1],
			["copper_r",1]
		] 
	],
	["grab", 1500, 567, 2345, 5, 3,
    	[
    		["zinnp",1],
    		["silberp",1],
    		["bronze",1],
    		["grabv",1],
    		["reli",1],
    		["reliv",1]
    	]
    ],
    ["grabv", 1500, 567, 2345, 5, 3,
        [
        	["zinnp",1],
        	["silberp",1],
        	["bronze",1],
        	["copper_r",1],
    		["grab",1],
    		["reli",1],
    		["reliv",1]
        ]
    ],
    ["reli", 400, 100, 600, 5, 3,
       	[
       		["zinnp",1],
       		["silberp",1],
       		["bronze",1],
       		["copper_r",1],
    		["grab",1],
    		["grabv",1],
    		["reliv",1]
       	]
    ],
    ["reliv", 1500, 1000, 2000, 5, 3,
      	[
      		["zinnp",1],
      		["silberp",1],
      		["bronze",1],
      		["copper_r",1],
    		["grab",1],
    		["reli",1],
    		["grabv",1]
      	]
    ],
	["bronze", 13375, 6687, 26750, 5, 3,
		[ 
			["zinnp",1], 
			["diamondc",1],
			["silberp",1],
			["copper_r",1]
		] 
	],
	["copper_r", 500, 400, 600, 5, 3,
		[ 
			["zinnp",1], 
			["diamondc",1],
			["diamond",1],
			["bronze",1],
			["silberp",1]
		] 
	],
	["getreideip", 4244, 2122, 8488, 5, 3,
		[ 
			["zuckerip",1], 
			["tabakp",1],
			["traubenp",1],
			["hopfenp",1],
			["tabakip",1]
		] 
	],
	["zuckerip", 4922, 2461, 9844, 5, 3,
		[ 
			["getreideip",1], 
			["tabakp",1],
			["traubenp",1],
			["hopfenp",1],
			["tabakip",1]
		] 
	],
	["tabakp", 4577, 2288, 9154, 5, 3,
		[ 
			["zuckerip",1], 
			["getreideip",1],
			["traubenp",1],
			["hopfenp",1],
			["tabakip",1]
		] 
	],
	["tabakip", 3977, 1988, 7954, 5, 3,
		[ 
			["zuckerip",1], 
			["tabakp",1],
			["traubenp",1],
			["hopfenp",1],
			["getreideip",1]
		] 
	],
	["hopfenp", 3540, 1785, 7080, 5, 3,
		[ 
			["zuckerip",1], 
			["tabakp",1],
			["traubenp",1],
			["tabakip",1],
			["getreideip",1]
		] 
	],
	["traubenp", 4006, 2003, 8012, 5, 3,
		[ 
			["zuckerip",1], 
			["tabakp",1],
			["tabakip",1],
			["hopfenp",1],
			["getreideip",1]
		] 
	],
	["holzp", 500, 300, 600, 5, 3,
		[ 
			["pfandp",1],
			["uran5",1],
			["schmuck",1],
			["uranip",1]
		] 
	],
	["pfandp", 280, 150, 334, 5, 3,
		[ 
			["holzp",1], 
			["uran5",1],
			["schmuck",1],
			["uranip",1]
		] 
	],
	["uran5", 31531, 2196, 40658, 5, 3,
		[ 
			["pfandp",1],
			["holzp",1],
			["schmuck",1],
			["uranip",1]
		] 
	],
	["schmuck", 4000, 3800, 4500, 5, 3,
		[ 
			["pfandp",1],
			["uran5",1],
			["holzp",1],
			["uranip",1]
		] 
	],
	["uranip", 45045, 32300, 58200, 5, 3,
		[ 
			["pfandp",1],
			["uran5",1],
			["holzp",1],
			["schmuck",1]
		] 
	],
	["pbrau", 24701, 12350, 49402, 5, 3,
		[ 
			["kkugel",1], 
			["spulver",1],
			["pkugel",1]
		] 
	],
	["kkugel", 13987, 6993, 28000, 5, 3,
		[ 
			["pbrau",1], 
			["spulver",1],
			["pkugel",1]
		] 
	],
	["spulver", 11408, 5704, 22000, 5, 3,
		[ 
			["kkugel",1], 
			["pbrau",1],
			["pkugel",1]
		] 
	],
	["pkugel", 62727, 31363, 125000, 5, 3,
		[ 
			["kkugel",1], 
			["spulver",1],
			["pbrau",1]
		] 
	],

	
	///////////////////////////////////
	
	["turtle", 5000, 3000, 7000, 250, 25,
		[ 
			["marijuana",1], 
			["cocainep",1],
			["heroinp",1]
		] 
	],
	
	["marijuana", 1500, 1000, 2000, 2, 2,
		[ 
			["turtle",1], 
			["cocainep",1],
			["heroinp",1]
		] 
	],
	
	["cocainep", 1700, 1300, 2300, 2, 2,
		[ 
			["marijuana",1], 
			["turtle",1],
			["heroinp",1]
		] 
	],
	
	["heroinp", 1700, 1300, 2300, 2, 2,
		[ 
			["marijuana",1], 
			["cocainep",1],
			["turtle",1]
		] 
	],

	///////////////Fisch////////////////////


	["mackerel", 300, 125, 5000, 2, 2,
		[
            ["salema",1],
            ["ornate",1],
            ["tuna",1],
            ["mullet",1],
            ["catshark",1]
		]
	],
	["tuna", 500, 335, 976, 2, 2,
		[
            ["salema",1],
            ["ornate",1],
            ["mackerel",1],
            ["mullet",1],
            ["catshark",1]
		]
	],
	["mullet", 400, 234, 600, 2, 2,
		[
            ["salema",1],
            ["ornate",1],
            ["mackerel",1],
            ["tuna",1],
            ["catshark",1]
		]
	],
	["catshark", 500, 334, 776, 2, 2,
		[
            ["salema",1],
            ["ornate",1],
            ["mackerel",1],
            ["tuna",1],
            ["mullet",1]
		]
	],
	["krabbenv", 500, 343, 702, 5, 3,
		[
            ["salema",1],
            ["ornate",1],
            ["mackerel",1],
            ["tuna",1],
            ["mullet",1],
            ["catshark",1],
            ["krabben",1]
		]
	]


];
publicVariable "life_market_resources";

////////////GENERATED CONFIG
//life_market_changes = []; //[SHORTNAME,SELL,BUY]
life_market_shortnames = []; //shortnames if in market
//life_market_clampprices = []; //[SHORTNAME,MIN,MAX]

{
	life_market_shortnames set [count life_market_shortnames, _x select 0];
	//life_market_clampprices set [count life_market_clampprices, [_x select 0, _x select 2, _x select 3] ];
	//life_market_changes set [count life_market_changes, [_x select 0, _x select 4, _x select 5] ];
}
foreach life_market_resources;

publicVariable "life_market_shortnames";
//publicVariable "life_market_clampprices";

////////////SYNC PRICES WITH SERVER IF EMPTY
//if(isNil("life_market_prices")) then
//{
	life_market_prices = []; //[SHORTNAME,CURRENTPRICE,DIRECTIONGLOBAL,DIRECTIONLOCAL]
	{
	
		life_market_prices set [count life_market_prices, [_x select 0, _x select 1, 0, 0] ];
	}
	foreach life_market_resources;
	
	publicVariable "life_market_prices";
	
	systemChat "Market Prices Generated!";
//};