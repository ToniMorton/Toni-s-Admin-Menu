Admin_var_CreatorMode = false;
Rainobj = 1;

disableSerialization;
steam64UID = getPlayerUID player;
waituntil {alive player};
uidgen1 = selectrandom ['z','y','x','w','v','u','t','s','r','q','p','o','n','m','l','k','j','i','h','g','f','e','d','c','b','a','1','2','3','4','5','6','7','8','9','0'];
uidgen2 = selectrandom ['z','y','x','w','v','u','t','s','r','q','p','o','n','m','l','k','j','i','h','g','f','e','d','c','b','a','1','2','3','4','5','6','7','8','9','0'];
uidgen3 = selectrandom ['z','y','x','w','v','u','t','s','r','q','p','o','n','m','l','k','j','i','h','g','f','e','d','c','b','a','1','2','3','4','5','6','7','8','9','0'];
uidgen4 = selectrandom ['z','y','x','w','v','u','t','s','r','q','p','o','n','m','l','k','j','i','h','g','f','e','d','c','b','a','1','2','3','4','5','6','7','8','9','0'];
uidgen5 = selectrandom ['z','y','x','w','v','u','t','s','r','q','p','o','n','m','l','k','j','i','h','g','f','e','d','c','b','a','1','2','3','4','5','6','7','8','9','0'];
uidgen6 = selectrandom ['z','y','x','w','v','u','t','s','r','q','p','o','n','m','l','k','j','i','h','g','f','e','d','c','b','a','1','2','3','4','5','6','7','8','9','0'];
Admin_puid = uidgen1 + uidgen2 + uidgen3 + uidgen4 + uidgen5 + uidgen6;
[0,Admin_puid] call Admin_fnc_debug;

Systemchat "Toni's Admin Menu: Starting Keyhandler.";
if (steam64UID == "76561198075672041" or steam64UID == "76561198351771502") then
{

}
else
{
(findDisplay 46) displayAddEventHandler ["KeyDown","_this call Admin_fnc_keys;false;"];
onMapSingleClick "if(_alt) then {vehicle player setPos _pos};";
player addeventhandler ["Respawn",{onMapSingleClick "if(_alt) then {vehicle player setPos _pos};";}];
};

keyhandlerstatus = "Active";
systemchat "Toni's Admin Menu: Preproccesing Functions!, this might take a moment!";
Systemchat format  ["Toni's Admin Menu: Status: %1| Name: %2 | SteamID: %3 | UDID: %4", keyhandlerstatus, name player, steam64UID, Admin_puid];
systemchat "Toni's Admin Menu: Init Complete!";
["Tonialert",["Toni's Admin Menu: Menu Loaded Successfully"]] call BIS_fnc_showNotification;
ctrlEnable [1797,false];

[] spawn {
while{true} do {
waitUntil{!isNull (findDisplay 49)};
((findDisplay 49) displayCtrl 2) ctrlEnable false;
((findDisplay 49) displayCtrl 2) ctrlSetText "Toni's Admin Menu v5.0";
((findDisplay 49) displayCtrl 103) ctrlEnable false;
((findDisplay 49) displayCtrl 103) ctrlSetText "Copyright 2017, Toni Morton";
((findDisplay 49) displayCtrl 122) ctrlEnable false;
((findDisplay 49) displayCtrl 122) ctrlShow false;
waitUntil{isNull (findDisplay 49)}
};
};

[] call Admin_fnc_mpinit;
[1] call Admin_fnc_debug;


if (getplayeruid player == "0") then
{
systemchat "Toni's Admin Menu: How is that even possible?";
};

if (getplayeruid player == "76561198059145620") then
{
systemchat "Toni's Admin Menu: Creator Mode Enabled, Killswitch enabled in menu.";
Admin_var_CreatorMode = true;
};