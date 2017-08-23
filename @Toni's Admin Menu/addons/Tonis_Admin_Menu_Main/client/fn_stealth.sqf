_toggle = _this select 0;


switch _toggle do 
{

    case "ON":
    {
        {player hideObject true;}foreach allPlayers;
    };
    
    case "OFF":
    {
        {player hideObject false;}foreach allPlayers;
    };

};