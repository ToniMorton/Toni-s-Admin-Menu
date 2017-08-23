_invldselect = 
{
    Systemchat "Toni's Admin Menu: Invalid Selection";
};
_playername = _this select 0;
_sendername = name player;
_senderpos = player modelToWorld [0,3.5,0];

switch (lbtext[1700,(lbCurSel 1700)]) do 
{
    case "-----------------------":
    {
        [] call _invldselect;
    };
    case "--- Local Functions ---":
    {
        [] call _invldselect;
    };
    case "Godmode - ON":
    {
        [1] call Admin_fnc_Godmode;
    };
    case "Godmode - OFF":
    {
        [0] call Admin_fnc_Godmode;
    };
    case "Unlimited Ammo - ON":
    {
        [1] call Admin_fnc_infammo;
    };
    case "Unlimited Ammo - OFF":
    {
        [0] call Admin_fnc_infammo;
    };
    case "Heal Yourself":
    {
        [] call Admin_fnc_healself;
    };
    case "Fill Current Weapon":
    {
        [] call Admin_fnc_fillammo;
    };    
    case "Open Full Arsenal":
    {
        [] call Admin_fnc_spawnwep;
    };    
    case "Change Airstrike Type (LShift + ~)":
    {
        [true, false] call Admin_fnc_Rainoverme;
    };    
    case "AA Missile Bullets (ON)":
    {
        ["ON"] call Admin_fnc_Missilelaunch;
        Systemchat "Toni's Admin Menu: Missile Bullets Enabled";       
    };    
    case "AA Missile Bullets (OFF)":
    {
        ["OFF"] call Admin_fnc_Missilelaunch;
        Systemchat "Toni's Admin Menu: Missile Bullets Disabled";  
    };    
    case "Suicide Vest (20 Sec Timer)":
    {
        [3] call Admin_fnc_attachtome;
        Systemchat "Toni's Admin Menu: Suicide Vest Spawned on your player";  
    };
    case "--------------------------":
    {
        [] call _invldselect;
    };
    case "--- Targeted Functions ---":
    {
        [] call _invldselect;
    };
    case "Disable Player Input":
    {
        [{[_playername, 1] call Admin_fnc_TargetInput}] call Admin_fnc_mpexec;
        systemchat format ["Tonis Admin Menu: %1s Input Disabled",_playername];
    };
    case "Enable Player Input":
    {
        [{[_playername, 0] call Admin_fnc_TargetInput}] call Admin_fnc_mpexec;
        systemchat format ["Tonis Admin Menu: %1s Input Restored",_playername];
    };
    case "Teleport Player Here":
    {
        [_playername] call Admin_fnc_teleporthere;
        systemchat format ["Tonis Admin Menu: %1 Teleported To Your Location",_playername];
    };    
    case "Teleport To Player":
    {
        [_playername] call Admin_fnc_teleporttoplr;
        systemchat format ["Tonis Admin Menu: You Have Teleported To %1",_playername];
    };
    case "Kick To Lobby":
    {
        [{[_playername] call Admin_fnc_kickplr}] call Admin_fnc_mpexec;
        systemchat format ["Tonis Admin Menu: %1 Kicked To Lobby",_playername];
    };
    case "Eject EVERYONE From Target Vehicle":
    {
        [{[_playername,1] call Admin_fnc_ejectplr}] call Admin_fnc_mpexec;
        systemchat "Toni's Admin Menu: Players Ejected From Target Vehicle";
    };    
    case "Eject Target From Target Vehicle":
    {
        [{[_playername,2] call Admin_fnc_ejectplr}] call Admin_fnc_mpexec;
        systemchat format ["Tonis Admin Menu: %1 Ejected From Vehicle",_playername];
    };    
    case "Kill Selected Player":
    {
        [_playername] call Admin_fnc_killtarget;
    };
    case "----------------------------":
    {
        [] call _invldselect;
    };
    case "--- Altis Life Functions ---":
    {
        [] call _invldselect;
    };
    case "Give Money (Randomized Amount)":
    {
        if (_playername == _sendername or _playername isequalto '') then
        {
            [name player] call Admin_fnc_altismoney;
        }
        else 
        {
            [{[_playername] call Admin_fnc_altismoney}] call Admin_fnc_mpexec;
        };
    };   
    case "Spawn Money Pile (Local)":
    {
        [1] call Admin_fnc_moneypile;
    };    
    case "Money Gun - ON":
    {
        [3] call Admin_fnc_moneypile;
    };    
    case "Money Gun - OFF":
    {
        [4] call Admin_fnc_moneypile;
    };       
    case "Unrestrain Self":
    {
        [1] call Admin_fnc_unrestrain;
    };    
    case "Unrestrain CursorTarget":
    {
        [2] call Admin_fnc_unrestrain;
    };
    case "------------------------":
    {
        [] call _invldselect;
    };    
    case "--- Global Functions ---":
    {
        [] call _invldselect;
    }; 
    case "Teleport All Players Here":
    {
        [] call Admin_fnc_Teleporteveryone;
    };       
    case "-------------------------":
    {
        [] call _invldselect;
    };
    case "------------------------":
    {
        [] call _invldselect;
    };
    case "--- Weapon Functions ---":
    {
        [] call _invldselect;
    };    
    case ".45 1911 Kit":
    {
        [0] call Admin_fnc_givekit;
    };      
    case "MXM Black Kit":
    {
        [1] call Admin_fnc_givekit;
    };      
    case "Map & NVGs Kit":
    {
        [2] call Admin_fnc_givekit;
    };     
    case "PDW2000 SMG Kit":
    {
        [3] call Admin_fnc_givekit;
    };       
    case "AK74U 5.45mm Kit":
    {
        [4] call Admin_fnc_givekit;
    };      
    case "SPAR Marksman Rifle Kit":
    {
        [5] call Admin_fnc_givekit;
    };
    case "Remove All Mags From Inventory":
    {
        [6] call Admin_fnc_givekit;
    };
    case "Remove ALL Weapons and Mags":
    {
        [7] call Admin_fnc_givekit;
    };
    case "":
    {
        [] call _invldselect;
    };
};