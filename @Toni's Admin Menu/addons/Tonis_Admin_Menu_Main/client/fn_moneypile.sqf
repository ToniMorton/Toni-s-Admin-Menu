_selection = _this select 0;
_simplify = _this select 1;
amountmoney = random [2561,14560,59435];
_moneyrainfnc = 
{
        while {_moneyrainactive} do 
        {
             _cashdropper = "Land_Money_F" createVehicle (screenToWorld [0.5,0.5]);
             _cashdropper setVariable ["item",["money",amountmoney],true];
             _cashdropper setPos [getPos _cashdropper select 0, getPos _cashdropper select 1,100];
             _cashdropper setVectorUp surfacenormal position player;  
             _cashdropper setVelocity [0, 0, -100];
        }foreach allplayers;
};
_lifemoneytonimoney = 
{
        _obj = "LandMoneyF" createVehicle (position vehicle player); 
        _obj setPos [getPos _obj select 0, getPos _obj select 1,10];
        _obj setVectorUp [0, -90, 0];
        _obj setVariable ["item",["money",amountmoney],true];
};


switch (_selection) do 
{
    case 0:
    {
        systemchat "Tonis Admin Menu: ERROR: Seems like an invalid selection was passed. Please restart arma if the problem persists in this session.";
    };
    case 1:
    {
        [] call _lifemoneytonimoney;
    };
    case 2: 
    {
        [[] call _lifemoneytonimoney] call Admin_fnc_mpexec;
    };
    case 3:
    {
        systemchat "Toni's Admin Menu: Money Bullets - ON";
        vehicle player addEventHandler ["Fired",
        {
        _projectile = _this select 6;
        _cashyo = "Land_Money_F" createVehicle (position player);
        _cashyo setVariable ["item",["money",amountmoney],true];
        _cashyo attachto [_projectile,[0,0,0]];
        }
        ];
    };    
    case 4:
    {
       systemchat "Toni's Admin Menu: Money Bullets - OFF";
       vehicle player removeAllEventHandlers "Fired";
    };    
    case 5:
    {
        switch (_simplify) do
        {
            case 0:
            {
                _moneyrainactive = false;
                [] call _moneyrainfnc;
                systemchat "Toni's Admin Menu: MoneyRain - OFF";
            };
            case 1:
            {
                _moneyrainactive = true;
                [] call _moneyrainfnc;
                systemchat "Toni's Admin Menu: MoneyRain - ON";
            };
            
        };
    };
};