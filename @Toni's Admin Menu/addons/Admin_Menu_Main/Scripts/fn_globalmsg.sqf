disableserialization;
_textbox = (finddisplay 1666) displayctrl 2000;
_message = ctrltext _textbox;
[_message, name player, getplayeruid player] remoteExec ["Toni_fnc_broadcast", 0,true];