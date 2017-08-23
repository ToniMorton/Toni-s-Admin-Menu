_targetname = _this select 0;

{
if (name _x == _targetname) then
{
vehicle player setdamage 1;
};
}forEach playableUnits;
