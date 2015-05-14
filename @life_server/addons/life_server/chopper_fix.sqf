globalChopDelay = true;
chopUsedBy = nil;
publicVariable "globalChopDelay";

chopperCooldown = {
	globalChopDelay = false;
	publicVariable "globalChopDelay";
	[] spawn {
		sleep 5;
		globalChopDelay = true;
		publicVariable "globalChopDelay";
	};
};

chopperDiscoFix = {
	[] spawn {
		sleep 600;
		chopUsedBy = nil;
		publicVariable "globalChopDelay";
	};
};