switch (_this select 0) do 
{     
    case 0:
    {
        If ((vehicle player) == player) then
        {
            player removeAllEventHandlers "fired";
            Systemchat "Toni's Admin Menu: Unlimited Ammo OFF";
        }
        else
        {
            vehicle player removeAllEventHandlers "fired";
            Systemchat "Toni's Admin Menu: Unlimited Vehicle Ammo OFF";
        };
    };
    case 1:
    {
        if ((vehicle player) == player) then
        {
            player addeventhandler ["fired", {(_this select 0) setvehicleammo 1}];
            Systemchat "Toni's Admin Menu: Unlimited Ammo ON";
        }
        else
        {
            vehicle player addeventhandler ["fired", {(_this select 0) setvehicleammo 1}];
            Systemchat "Toni's Admin Menu: Ulimited Vehicle Ammo ON";
        };
    };
};