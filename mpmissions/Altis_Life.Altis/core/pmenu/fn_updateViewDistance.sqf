/*
	File: fn_updateViewDistance.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Updates the view distance dependant on whether the player is on foot, a car or an aircraft.
*/

if(tawvd_auto) then {
	_fps = diag_fps;
	if((vehicle player) isKindOf "Man") then {
		if(_fps < 36) then {
			if((player distance (getMarkerPos "safezone_kavalla")) < 400) then {
				tawvd_foot = (tawvd_foot - 100) max 500;
			} else {
				tawvd_foot = (tawvd_foot - 100) max 1000;
			};
		};
		if(_fps > 45) then {
			tawvd_foot = (tawvd_foot + 100) min 1800;
		};
		if(viewDistance != tawvd_foot) then { setViewDistance tawvd_foot; };
	};
	if((vehicle player) isKindOf "LandVehicle") then {
		if(_fps < 30) then {
			if((player distance (getMarkerPos "safezone_kavalla")) < 400) then {
				tawvd_car = (tawvd_car - 100) max 600;
			} else {
				tawvd_car = (tawvd_car - 100) max 1000;
			};
		};
		if(_fps > 40) then {
			tawvd_car = (tawvd_car + 100) min 2000;
		};
		if(viewDistance != tawvd_car) then { setViewDistance tawvd_car; };
	};
	if((vehicle player) isKindOf "Air") then {
		if(_fps < 25) then {
			tawvd_air = (tawvd_air - 100) max 1600;
		};
		if(_fps > 33) then {
			tawvd_air = (tawvd_air + 100) min 3000;
		};
		if(viewDistance != tawvd_air) then { setViewDistance tawvd_air; };
	};
	
} else {

	switch (true) do
	{
		case ((vehicle player) isKindOf "Man"): {setViewDistance tawvd_foot};
		case ((vehicle player) isKindOf "LandVehicle"): {setViewDistance tawvd_car};
		case ((vehicle player) isKindOf "Air"): {setViewDistance tawvd_air};
	};

};