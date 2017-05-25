_invldselect = 
{
Systemchat "Toni's Admin Menu: Invalid Selection";
};
_targetname = _this select 0;
_adminname = name player;
_adminpos = player modelToWorld [0,3.5,0];
switch (lbtext[1702,(lbCurSel 1702)]) do 
{
    case "Godmode - ON":
    {
        player allowdamage false;
        systemchat "Toni's Admin Menu: Godmode Enabled";
    };
    case "Godmode - OFF":
    {
        player allowdamage true;
        systemchat "Toni's Admin Menu: Godmode Disabled";
    };    
    case "Open Arsenal":
    {
        closedialog 0;
        ["Open",true] spawn BIS_fnc_arsenal;
    };    
    case "Open Debug Console":
    {
        closedialog 0;
        createdialog "RscDisplayDebugPublic";
    };
    case "Unlock Vehicle (Cursortarget)":
    {
        Cursortarget lock 0;
    };      
    case "Lock Vehicle (Cursortarget)":
    {
        Cursortarget lock 2;
    };     
    case "Unrestrain Self":
    {
        player setVariable["restrained",FALSE,TRUE];
        Systemchat "Toni's Admin Menu: You have been Unrestrained.";
    };
    case "Teleport Player Here":
    {
        [1, _targetname, getpos player, name player] call Toni_fnc_tpfncs;
    };    
    case "Teleport To Player":
    {
        [2, _targetname, getpos player, name player] call Toni_fnc_tpfncs;
    };
    case "Kick Player":
    {
        [_targetname, name player] remoteexec ["Toni_fnc_KickPlayer", 2, false];
    };
    case "Restrain Player":
    {
        [_targetname, 1] call Toni_fnc_restrain;
    };    
    case "Unrestrain Player":
    {
        [_targetname, 2] call Toni_fnc_restrain;
    };
    case "Global Message":
    {
          closedialog 0;
          createdialog "Toni_GUI_messagewindow";
    };    
    case "Spawn Hummingbird":
    {
        _veh = 'B_Heli_Light_01_F' createVehicle (player modelToWorld [0,6,0.1]);
        _veh setVariable ["BIS_enableRandomization", false];
        _veh = nil;
    };        
    case "Spawn Quadbike":
    {
        _veh = 'O_Quadbike_01_F' createVehicle (player modelToWorld [0,6,0.1]);
        _veh setVariable ["BIS_enableRandomization", false];
        _veh = nil;
    };        
    case "Spawn Hatchback Sport":
    {
        _veh = 'C_Hatchback_01_sport_F' createVehicle (player modelToWorld [0,6,0.1]);
        _veh setVariable ["BIS_enableRandomization", false];
        _veh = nil;
    };     
    case "Spawn GhostHawk":
    {
        _veh = 'B_Heli_Transport_01_F' createVehicle (player modelToWorld [0,10,0.1]);
        _veh setVariable ["BIS_enableRandomization", false];
        _veh = nil;
    };      
    case "Spawn Strider":
    {
        _veh = 'I_MRAP_03_F' createVehicle (player modelToWorld [0,6,0.1]);
        _veh setVariable ["BIS_enableRandomization", false];
        _veh = nil;
    };        
    case "M-900 Stripped (Black)":
    {
        _veh = 'I_C_Heli_Light_01_civil_F' createVehicle (player modelToWorld [0,6,0.1]);
        _veh setVariable ["BIS_enableRandomization", false];
        _veh setObjectTextureGlobal [0, "#(rgb,8,8,3)color(0,0,0,0.3)"];
        _veh = nil;
    };    
    case "Give Player $1000":
    {
        [_targetname,"1000",name player] remoteexec ["Toni_fnc_altismoney",0,false];
    };      
    case "Give Player $10000":
    {
        [_targetname,"10000",name player] remoteexec ["Toni_fnc_altismoney",0,false];
    };       
    case "Give Player $100000":
    {
        [_targetname,"100000",name player] remoteexec ["Toni_fnc_altismoney",0,false];
    };        
    case "Give Player $1000000":
    {
        [_targetname,"1000000",name player] remoteexec ["Toni_fnc_altismoney",0,false];
    };       
    case "Give Player $1000000":
    {
        [_targetname,"10000000",name player] remoteexec ["Toni_fnc_altismoney",0,false];
    };    
    case "":
    {
        [] call _invldselect;
    };
};