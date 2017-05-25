//Important Settings
Toni_var_Server_pswd_cmds = "Your Server Command Password Here";
Toni_Array_AdminList = ["0","0","0","0","0","0","0","0","0","0","0","0"];
Toni_var_gamemode = "";//change me to your missions gamemode. The pre-programed gamemodes are: AltisLife, Exile, Development, And Limited


//GUI Menu List
Toni_Array_universal =
[
"-----------------------",
"--- Local Functions ---",
"-----------------------",
"Godmode - ON",
"Godmode - OFF",
"Open Arsenal",
"Unlock Vehicle (Cursortarget)",
"Lock Vehicle (Cursortarget)"
"--------------------------",
"--- Targeted Functions ---",
"--------------------------",
"Teleport Player Here",
"Teleport To Player",
"Kick Player",
"Ban Player",
"------------------------",
"--- Global Functions ---",
"------------------------",
"Global Message",
"------------------------",
"------  Spawning  ------",
"------------------------",
"Spawn Hummingbird",
"Spawn Quadbike",
"Spawn Hatchback Sport",
"Spawn GhostHawk",
"Spawn Strider",
""
];
Toni_Array_altislife = 
[
"------------------------",
"-----  Altis Life  -----",
"------------------------",
"Unrestrain Self",
"Restrain Player",
"Unrestrain Player",
"Give Player $1000",
"Give Player $10000",
"Give Player $100000",
"Give Player $1000000",
"Give Player $10000000"
];
Toni_Array_development = 
[
"Open Debug Console",
];
//
//----------------------------------------------please dont touch below this line----------------------------------------------------------------------
//

Toni_fnc_BanPlayer = 
{
_Playertoban = _this select 0;
_requestingadmin = _this select 1;
Toni_var_Server_pswd_cmds servercommand format [["#exec ban %1",_Playertoban]];
diag_log format ["Toni's Admin Menu: %1 has been banned at the request of %2",_Playertoban,_requestingadmin];
};

Toni_fnc_KickPlayer = 
{
_Playertokick = _this select 0;
_requestingadmin = _this select 1;
Toni_var_Server_pswd_cmds servercommand format [["#kick %1;",_Playertokick]];
diag_log format ["Toni's Admin Menu: %1 has been kicked at the request of %2",_Playertokick,_requestingadmin];
};

Toni_fnc_UnlockVehicle = 
{
        _requestingadminsid = _this select 0;
        if (getplayeruid player == _requestingadminsid) then
        {
            if (alive player && !isnull cursorTarget) then
            {
                life_vehicles set[count life_vehicles,cursorTarget];
                cursortarget lock 0;
                systemchat "Toni's Admin Menu: Vehicle At Your Cursortarget Has Been Unlocked";
            };
        };
};

Toni_fnc_broadcast = 
{
_adminmessage = _this select 0;
_adminname = _this select 1;
_adminsteamid = _this select 2;
diag_log format ["Toni's Admin Menu: %1 (SteamID: %2) Has Sent an Admin Message Stating %3", _adminname,_adminsteamid,_adminmessage];
_title = parseText "<t color='#ff0000' align='center' font='EtelkaMonospaceProBold'>Admin Message:</t>";
_separator1 = parseText "<br /><br />";
_message = parseText format ["<t align='center' font='EtelkaMonospaceProBold'>%1</t>",_adminmessage];
_txt = composeText [_title,_separator1,_message]; 
hintsilent _txt;

};

Toni_fnc_Restrain = 
{
 _targetplayername = _this select 0;
 _aid = _this select 1;
 switch _aid do 
 {
    case 1:
    {
        if (name player == _targetplayername) then
        {
            player setVariable["restrained",TRUE,TRUE];
        };
    };
    case 2:
    {
        if (name player == _targetplayername) then
        {
            player setVariable["restrained",FALSE,TRUE];
        };
    };
 };
};

Toni_fnc_admintome = 
{
   _targetpos = _this select 0;
   _adminsname = _this select 1;
    if (name player == _adminsname) then
    {  
        player setpos _targetpos;
    };
};

Toni_fnc_tpfncs = 
{
_optionid = _this select 0;
_targetname = _this select 1;
_adminpos = _this select 2;
_adminname = _this select 3;
    switch _optionid do
    {
        case 1:
        {
           if (_targetname == name player) then
           {
                player setpos _adminpos;
           };
        };
        case 2:
        {
           if (_targetname == name player) then
           {
                [getpos player,_adminname] remoteexec ["Toni_fnc_admintome",0,false];
           };
        };
    };
    
};

Toni_fnc_alitsmoney = 
{
_playername = _this select 0;
_amount = _this select 1;
_adminname = _this select 2; 
    switch (_amount) do
    {
        case "1000":
        {
           if (name player == _playername) exitwith 
           {
                life_cash = life_cash + 1000;
                diag_log format ["<Toni's Admin Menu>: ADMIN LOG | %1 has been given $%2 by %3",_playername,_amount,_adminname];
           };
        };      
        case "10000":
        {
           if (name player == _playername) exitwith 
           {
                life_cash = life_cash + 10000;
                diag_log format ["<Toni's Admin Menu>: ADMIN LOG | %1 has been given $%2 by %3",_playername,_amount,_adminname];
           };
        };       
        case "100000":
        {
           if (name player == _playername) exitwith 
           {
                life_cash = life_cash + 100000;
                diag_log format ["<Toni's Admin Menu>: ADMIN LOG | %1 has been given $%2 by %3",_playername,_amount,_adminname];
           };
        };        
        case "1000000":
        {
           if (name player == _playername) exitwith 
           {
                life_cash = life_cash + 1000000;
                diag_log format ["<Toni's Admin Menu>: ADMIN LOG | %1 has been given $%2 by %3",_playername,_amount,_adminname];
           };
        };       
        case "1000000":
        {
           if (name player == _playername) exitwith 
           {
                life_cash = life_cash + 10000000;
                diag_log format ["<Toni's Admin Menu>: ADMIN LOG | %1 has been given $%2 by %3",_playername,_amount,_adminname];
           };
        };    
    };
};

// Making the Needed Vars Functions & Arrays Public
publicvariable "Toni_Array_universal";
publicvariable "Toni_Array_development";
publicvariable "Toni_Array_altislife";
publicvariable "Toni_fnc_UnlockVehicle";
publicvariable "Toni_fnc_broadcast";
publicvariable "Toni_fnc_GenerateUUID";
publicvariable "Toni_fnc_tpfncs";
publicvariable "Toni_fnc_admintome";
publicvariable "Toni_fnc_Restrain";
publicvariable "Toni_fnc_alitsmoney";