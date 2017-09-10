/*
Title: Fn_Keys.sqf
Desc: This is a Keyhandler. Don't fuck with it.
Author: Toni Morton 
Last Edited: 11/12/2016 6:28 PM PST
*/
private ['_handled','_altkey','_shiftkey','_ctrlkey','_bleh'];
_bleh = _this select 0;
_keypress = _this select 1;
_shiftkey = _this select 2;
_ctrlkey = _this select 3;
_altkey = _this select 4;
_handled = false;

if (alive player) then
{
    switch (_keypress) do 
    {   
        //GUI Menu Key: F6
        case 0x40:
        {
                    closedialog 0;
                    createdialog "Admin_GUI_MainGUI";
                    _handled = true;
		};        
        //Heal player (or vehicle) : F3 Key        
        case 61:
        {
                    [] call Admin_fnc_healself;
                    _handled = true;
		};     
        //Debug Console: F8 Key        
        case 0x42:
        {             
                   createdialog "Admin_GUI_Tonisdebug";
                    _handled = true;
		};
        //Destroy/delete cursortarget: Del Key
        case 211:
        {
                if (_shiftkey) then {_handled = true;};
                if (_shiftkey) then 
                {
                    if (!(isNull cursortarget)) then
                    {
                        cursortarget setdamage 1;;
                        systemchat "Toni's Admin Menu: Cursortarget Destroyed.";
                    };
                    _handled = true;
                }
                else
                {
                        if (!(isNull cursorObject)) then
                        {
                            deletevehicle cursorObject; 
                            systemchat "Toni's Admin Menu: Target Deleted";
                        };
                        _handled = true;
                };
		};          
        //Missile Strike: shift + ~ Key 
        case 0x29:
        {
                if (_shiftkey) then {_handled = true;};
                if (_shiftkey) then 
                {
                    [false, true] call Admin_fnc_Rainoverme;
                    _handled = true;
                };
		};     
        //Clone/Delete Gear Of cursortarget    
        case 0xD2:
        {
                if (_shiftkey) then {_handled = true;};
                if (_shiftkey) then
                {
                    removeAllWeapons cursortarget;
                    removeAllItems cursortarget;
                    removeBackpack cursortarget;
                    removeUniform cursortarget;
                    systemchat "Toni's Admin Menu: Target Gear Deleted.";
                    _handled = true;
                }
                else
                {
                    player setUnitLoadout (getUnitLoadout cursortarget);
                    systemchat "Toni's Admin Menu: Loadout Cloned to your player.";
                    _handled = true;
                };
		};
        //shift + 1 key : unlock cursorTarget
        case 0x02:
        {
            if (_shiftkey) then
            {
                cursortarget lock 0;
                systemchat "Toni's Admin Menu: Vehicle Unlocked";
                _handled = true;
            };
        };              
        //shift + 2 key : lock cursorTarget
        case 0x03:
        {
            if (_shiftkey) then
            {
                cursortarget lock 2;
                systemchat "Toni's Admin Menu: Vehicle Locked";
                _handled = true;
            };
        };             
        //Shift + 3 key : revive cursorTarget (Altis Life Only)
        case 0x04:
        {
            if (_shiftkey) then
            {
              if (alive player) then
                {
                    [name player] remoteExecCall ["life_fnc_revived",cursorTarget];
                    systemchat "Toni's Admin Menu: CursorTarget Revived";
                    _handled = true;
                };
            };
        };          
        //Shift + 4 key : Attach CursorTarget To you.
        case 0x05:
        {   
            if (_shiftkey) then {_handled = true;};
            if (_shiftkey) then
            {
                cursortarget attachTo [player, [0, 0, 4]];
                systemchat "Toni's Admin Menu: CursorTarget Attached to your player.";
                _handled = true;
            }
            else
            {
                {_x setpos (screenToWorld [0.5,0.5]); detach _x}foreach attachedobjects player; 
                systemchat "Toni's Admin Menu: Object detached from your player";
                _handled = true;
            };
        }; 











        
	};
};
_handled = true;

/*
https://community.bistudio.com/wiki/ListOfKeyCodes
*/