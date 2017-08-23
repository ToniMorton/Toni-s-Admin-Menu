_player = _this select 0;
_actionid = _this select 1;
switch (_actionid) do
{
    case 1:
    {
        If (name player == _player) then
        {
            _car = vehicle player;
            {
                moveOut _x;
            } forEach crew _car;
        };
    };
    case 2:
    {
        if (name player == _player) then 
        {
            moveout player;
        };
    };
};