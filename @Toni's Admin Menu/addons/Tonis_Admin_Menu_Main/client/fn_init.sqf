Rainobj = 1;
disableSerialization;
steam64UID = getPlayerUID player;
waituntil {alive player};
Systemchat "Toni's Admin Menu: Starting Keyhandler.";
(findDisplay 46) displayAddEventHandler ["KeyDown","_this call Admin_fnc_keys;false;"];
onMapSingleClick "if(_alt) then {vehicle player setPos _pos};";
player addeventhandler ["Respawn",{onMapSingleClick "if(_alt) then {vehicle player setPos _pos};";}];
systemchat "Toni's Admin Menu: Init Complete!";

[] spawn {
while{true} do {
waitUntil{!isNull (findDisplay 49)};
((findDisplay 49) displayCtrl 2) ctrlEnable false;
((findDisplay 49) displayCtrl 2) ctrlSetText "Toni's Admin Menu v1.0";
((findDisplay 49) displayCtrl 103) ctrlEnable false;
((findDisplay 49) displayCtrl 103) ctrlSetText "Copyright 2017, Toni Morton";
((findDisplay 49) displayCtrl 122) ctrlEnable false;
((findDisplay 49) displayCtrl 122) ctrlShow false;
waitUntil{isNull (findDisplay 49)}
};
};