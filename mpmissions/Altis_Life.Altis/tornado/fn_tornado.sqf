_essentialUnits = [source]; //you can mark essential editor placed units in here with what you named them, these units/objects will not be destoryed by the twister.
sleep 5;
if(!tornadoActive) exitWith {}; //wasn't supposed to happen
_position = _this select 0;
_maxtime = _this select 1;
source setpos _position;
_sourcem = "#particlesource" createVehicle getPos source;
_leaves  = "#particlesource" createVehicle getpos source;
_branches = "#particlesource" createVehicle getpos source;
_Village = (text (nearestLocations [(getPos source),["Nazi-Gold","der Brennstabherstellung","der Höhle"],5000]select 0));

hint parsetext format ["<t size='1' color='#FF0000'>WARNUNG</t><br/>Ein Tornado wurde in der Nähe von %1 gesichtet!", _Village];

sleep 0.5;

_sourcem setParticleCircle [5, [5, 5, 5]];
_sourcem setParticleRandom [0.5, [0.25, 0.25, 0], [0.175, 0.175, 2], 50, 0.25, [0, 0, 0, 0.1], 0.25, 0.5];
_sourcem setParticleParams [["\A3\data_f\ParticleEffects\Universal\smoke.p3d", 1, 0, 1], "", "Billboard", 1, 15, [0, 0, 0], [0, 0, 15], 250, 10, 7.9, 0.075, [15, 19, 25], [[0.1, 0.1, 0.1, 1], [0.1, 0.1, 0.1, 0.5], [0.1, 0.1, 0.1, 0]], [0.08], 1, 0.5, "", "", source];
_sourcem setDropInterval 0.014;

//A little surprised at whats below?
//don't ask yourself why I named the leaves branches and the branches leaves, I don't know why myself.

_branches setParticleCircle [25, [0, 0, 0]];
_branches setParticleRandom [2, [5, 5, 3], [-2, -2, -2], 0.15, 0.25, [0, 0, 0, 0], 0.5, -0.5];
_branches setParticleParams [["\A3\data_f\cl_leaf2", 1, 1, 1], "", "SpaceObject", 1, 20, [0, 0, 15], [0, 0, -2], 0.25, 10, 7.9, 0.065, [2, 2, 2], [[0.1, 0.65, 0.1, 1], [0.1, 0.65, 0.1, 0.5], [0.5, 0.5, 0.5, 0]], [0.08], 1, 2, "", "",source];
_branches setDropInterval 0.035; //decrease value for more debris flying around.

_leaves setParticleCircle [25, [0, 0, 0]]; //uses radius of 25 to give it some variety of debris flying around.
_leaves setParticleRandom [0, [0.25, 0.25, 0], [0.175, 0.175, 0], 2, 0.25, [0, 0, 0, 0.1], 1, 1];
_leaves setParticleParams [["\A3\data_f\ParticleEffects\Hit_Leaves\Sticks_Green", 1, 1, 1], "", "SpaceObject", 1, 15, [0, 0, 0], [0, 0, 25], 0.75, 15, 7.9, 0.085, [5, 5, 5], [[0, 0, 0, 1], [0.25, 0.25, 0.25, 0.5]], [0.08], 1, 0.25, "", "",source];
_leaves setDropInterval 0.23; //decrease value for more debris flying around.

nul = [source] execVM "tornado\tornadosound.sqf";

_timer = 0;

while {_timer < _maxtime} do
{
	source setpos [(getpos source select 0)  + (random 5 - random 5),(getpos source select 1) + (random 5 - random 5),0];
	_nearobjects = nearestObjects[source,[],20];
	{if(_x in _nearobjects || !alive _x) then {_nearobjects = _nearobjects - [_x];};} foreach _essentialUnits; //check for essential units, and remove dead ones
	{if(_x != source && random 250 > 180) then {if(_x isKindOf "AllVehicles") then {_x setvelocity [random 50,random 50, 60];}; _x setdamage 0.5;};} foreach _nearobjects;	
	sleep 0.35;
	//hintSilent format ["Tornado-Position %1 \n\n Was zerstört wird %2 \n\n Zeit bis Ende %3",getpos source,_nearobjects,_maxtime];
	_timer = _timer + 1;
};
tornadoActive = false;