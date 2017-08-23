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
                    [] call Admin_fnc_destroycursor;
                    _handled = true;
                }
                else
                {
                    [] call Admin_fnc_deletevehicle;
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
                    [] call Admin_fnc_delgear;
                    _handled = true;
                }
                else
                {
                    
                    [] call Admin_fnc_clonegear;
                    _handled = true;
                };
		};
        //shift + 1 key : unlock cursorTarget
        case 0x02:
        {
            if (_shiftkey) then
            {
                [] call Admin_fnc_unlockveh;
            };
        };              
        //shift + 2 key : lock cursorTarget
        case 0x03:
        {
            if (_shiftkey) then
            {
                [] call Admin_fnc_unlockveh;
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
                };
            };
        };          
        //Shift + 4 key : Attach CursorTarget To you.
        case 0x05:
        {   
            if (_shiftkey) then {_handled = true;};
            if (_shiftkey) then
            {
                [1] call Admin_fnc_attachtome;
                systemchat "Toni's Admin Menu: CursorTarget Attached to your player.";
            }
            else
            {
                [2] call Admin_fnc_attachtome;
                systemchat "Toni's Admin Menu: Object detached from your player";
            };
        }; 











        
	};
};
_handled = true;

/*
https://community.bistudio.com/wiki/ListOfKeyCodes
*/