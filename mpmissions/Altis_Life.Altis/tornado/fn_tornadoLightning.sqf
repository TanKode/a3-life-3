_pos = getpos source;
while{tornadoActive} do
{
	if(random 100 > 70 && random 100 < 35) then
	{
		_newpos = [(_pos select 0) + (random 100 - random 100),(_pos select 1) + (random 100 - random 100),0];
		_bolt = createvehicle ["LightningBolt",_newpos,[],0,"can collide"]; //randomize position then trigger explosion
		_bolt setposatl _pos;
		_bolt setdamage 1;

		_light = "#lightpoint" createvehiclelocal _newpos; //spawn some light
		_light setposatl [_newpos select 0,_newpos select 1,(_newpos select 2) + 10];
		_light setLightDayLight true;
		_light setLightBrightness 300;
		_light setLightAmbient [0.05, 0.05, 0.1];
		_light setlightcolor [1, 1, 2];

		sleep 0.1;
		_light setLightBrightness 0;
		sleep (random 0.1);

		_class = ["lightning1_F","lightning2_F"] call bis_fnc_selectrandom; //choose a visual indicator for lightning
		_lightning = _class createvehiclelocal [100,100,100];
		_lightning setdir (random 360);
		_lightning setpos _newpos;

		_duration = (3 + random 1);


		for "_i" from 0 to _duration do { //randomize brightness of light over a few seconds to make it look cooler
			_time = time + 0.1;
			_light setLightBrightness (100 + random 100);
			waituntil {time > _time};
		};

		deletevehicle _lightning;
		deletevehicle _light;

		0 setlightnings 0;
		_random = random 20; //wait before we strike again
		sleep (5 + _random);
	};
};

