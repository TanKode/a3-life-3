private["_dice"];

if(life_RLP_handgeld >= 10) then
{
    _dice = round random(100);
    life_RLP_handgeld = life_RLP_handgeld - 10;
    life_toilet = 100;

    if(_dice > 8) then
    {
	hint parseText "Das war gut! Jetzt musst du nicht mehr pinkeln. <br/><br/>Mommy is proud of you.!";
    }
    else
    {
	hint "Du hast vergessen den Deckel hoch zu klappen. Jetzt ist der scheiß überall verteilt.. Immerhin musst du nicht mehr pinkeln.";
    };
    [] call life_fnc_hudUpdate;
}
else
{
    hint "Du hast nicht genug Geld für die Toilettenputzfrau.";
};


