if (!isMultiplayer) exitwith
{
    systemchat "Toni's Admin Menu: Single Player is currently not supported.";
};
[name player, getplayeruid player] remoteExec ["Toni_fnc_AdminCheck",2,false];
onMapSingleClick "if(_alt) then {vehicle player setPos _pos};";
player addeventhandler ["Respawn",{onMapSingleClick "if(_alt) then {vehicle player setPos _pos};";}];
createdialog "Toni_GUI_AdminGUI";
disableSerialization;
[] spawn 
    {
            while{true} do 
            {
                waitUntil{!isNull (findDisplay 49)};
                ((findDisplay 49) displayCtrl 2) ctrlEnable false;
                ((findDisplay 49) displayCtrl 2) ctrlSetText "Toni's Admin Menu";
                ((findDisplay 49) displayCtrl 103) ctrlEnable false;
                ((findDisplay 49) displayCtrl 103) ctrlSetText "Copyright 2017, Toni Morton";
                ((findDisplay 49) displayCtrl 122) ctrlEnable false;
                ((findDisplay 49) displayCtrl 122) ctrlShow false;
                waitUntil{isNull (findDisplay 49)}
            };
    };
};


    
