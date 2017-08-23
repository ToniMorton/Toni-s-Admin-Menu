actionid = _this select 0;

switch (actionid) do
{
    case 1:
    {
        player setdamage 0;
        player setVariable["restrained",FALSE,TRUE];
        Systemchat "Toni's Admin Menu: You have been Unrestrained.";
    };
    case 2:
    {
        cursortarget setdamage 0;
        cursortarget setVariable["restrained",FALSE,TRUE];
    };
};