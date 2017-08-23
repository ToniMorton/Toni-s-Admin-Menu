private["_display","_list"];
disableSerialization;
_display = (findDisplay 6686);
_playerlist = _display displayCtrl 1501;
_scriptlist = _display displayCtrl 1700;
_vehiclelist = _display displayCtrl 1502;
lbClear _playerlist;
{
	_playerlist lbAdd format["%1", name _x];
	_playerlist lbSetdata [(lbSize _playerlist)-1,str(_x)];
} foreach allplayers;

_scriptlistarray = 
[
"Godmode - ON",
"Godmode - OFF",
"Unlimited Ammo - ON",
"Unlimited Ammo - OFF",
"Heal Yourself",
"Fill Current Weapon",
"Open Full Arsenal",
"Change Airstrike Type (LShift + ~)",
"AA Missile Bullets (ON)",
"AA Missile Bullets (OFF)",
"Suicide Vest (20 Sec Timer)",
"Teleport Player Here",
"Teleport To Player",
"Kill Selected Player",
"Give Money (Randomized Amount)",
"Spawn Money Pile (Local)",
"Money Gun - ON",
"Money Gun - OFF",
"Unrestrain Self",
"Unrestrain CursorTarget",
"Teleport All Players Here",
"Destroy Nearest Objects",
".45 1911 Kit",
"MXM Black Kit",
"Map & NVGs Kit",
"PDW2000 SMG Kit",
"AK74U 5.45mm Kit",
"SPAR Marksman Rifle Kit",
"Remove All Mags From Inventory",
"Remove ALL Weapons and Mags",
""
];

lbclear _scriptlist;
{
_scriptlist lbAdd _x;
}foreach _scriptlistarray;


[] call Admin_fnc_vehiclelistgen;
{
_vehiclelist lbAdd format['%1',_x];
} forEach vehname_array;
                        
{
_vehiclelist lbSetData [(lbsize _vehiclelist)-1,_x];
} forEach vehclass_array;