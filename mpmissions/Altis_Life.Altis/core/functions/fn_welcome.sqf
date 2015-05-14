
disableSerialization;
[
	"",
	0,
	0.2,
	10,
	0,
	0,
	8
] spawn BIS_fnc_dynamicText;

createDialog "RscDisplayWelcome";

_display = findDisplay 999999;
_text1 = _display displayCtrl 1100;
_buttonSpoiler = _display displayctrl 2400;
_textSpoiler = _display displayctrl 1101;
_text2 = _display displayCtrl 1102;

_message = "";
_message = _message + "<t align='center' size='8' shadow='0'><img image='textures\logo.jpg' /></t><br /><br />";
_message = _message + "Willkommen auf <a href='http://altis.rlp-clan.de/' color='#5600FF'>RLP</a> ein Deutscher Addon Server<br /><br />";
_message = _message + "Bitte lest die Regeln auf  <a href='http://altis.rlp-clan.de' color='#5600FF'>Regeln RLP</a>  sonst wirst du vielleicht noch gebannt und das wollen wir nicht<br /><br />";
_message = _message + "Ihr könnt euch mit einem Klick den Mod Downloaden <a href='http://5.196.90.77/@RLP.rar' color='#5600FF'>DOWNLOAD</a>  Danke!<br /><br />";
_message = _message + "Viel Spaß!<br />";
_message = _message + "<t size='3' shadow='0'><img image='textures\logo2.paa' /></t>";


//Fill only the first text
_text1 ctrlSetStructuredText (parseText _message);

//Resize StructuredText component to display the scrollbar if needed
_positionText1 = ctrlPosition _text1;
_yText1 = _positionText1 select 1;
_hText1 = ctrlTextHeight _text1;
_text1 ctrlSetPosition [_positionText1 select 0, _yText1, _positionText1 select 2, _hText1];
_text1 ctrlcommit 0;
//Hide second text, spoiler text and button
_buttonSpoiler ctrlSetFade 1;
_buttonSpoiler ctrlCommit 0;
_buttonSpoiler ctrlEnable false;
_textSpoiler ctrlSetFade 1;
_textSpoiler ctrlCommit 0;
_text2 ctrlSetFade 1;
_text2 ctrlCommit 0;