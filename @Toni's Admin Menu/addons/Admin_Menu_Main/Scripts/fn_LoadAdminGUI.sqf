private["_display","_playerlist","_scriptlist"];
disableSerialization;
_display = (findDisplay 1710);
_playerlist = _display displayCtrl 1701;
_scriptlist = _display displayCtrl 1702;

lbClear _playerlist;
{
	_playerlist lbAdd format["%1", name _x];
	_playerlist lbSetdata [(lbSize _playerlist)-1,str(_x)];
} foreach allplayers;

[] remoteexec ["Toni_fnc_sinit",2,false];

switch (Toni_var_gamemode) do
{
    case "Altislife":
    {
        _scriptlistarray = Toni_Array_universal + Toni_Array_alitslife + Toni_Array_development;
    };
    case "Exile":
    {
    };
    case "Development":
    {
    };
    case "Limited":
    {
    };
};

lbclear _scriptlist;
{
_scriptlist lbAdd _x;
}foreach _scriptlistarray;