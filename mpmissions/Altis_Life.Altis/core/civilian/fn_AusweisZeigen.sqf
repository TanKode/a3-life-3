private["_target", "_message"];
_target = cursorTarget;
if( isNull _target) then {_target = player;};
if( !(_target isKindOf "Man") ) then {_target = player;};
if( !(alive _target) ) then {_target = player;};
_message = format["<img size='256' color='#FFFFFF' image='textures\reisepass.jpg' <t align='center' color='#fbfca2' underline='true' size='3'>Reisepass</t><br/><br/><t size='1'>Name:</t><br/><t size='2'>%1</t>", name player];
[[player, _message],"life_fnc_AusweisGezeigt",_target,false] spawn life_fnc_MP;