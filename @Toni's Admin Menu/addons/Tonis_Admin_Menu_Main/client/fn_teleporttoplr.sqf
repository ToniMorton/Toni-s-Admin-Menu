_targetname = _this select 0;

{
if (name _x == _targetname) then
{
if (_x == (vehicle _x)) then 
{
player moveInCargo (vehicle _x);
}
else
{
vehicle player setPos (getpos _x);
};
};
}forEach playableUnits;
