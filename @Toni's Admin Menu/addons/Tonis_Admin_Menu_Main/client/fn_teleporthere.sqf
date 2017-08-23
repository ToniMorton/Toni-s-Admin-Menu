_targetname = _this select 0;  
  
{  
if (name _x == _targetname) then  
{   
_x setPos (getpos player);  
};  
}forEach playableUnits;