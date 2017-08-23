_Targetname = _this select 0;
_requestid = _this select 1;

if (name player == _targetname) then
{
    switch (_requestid) do 
    {
        case 0:
        {
         disableuserinput false;
        };
        
        case 1:
        {
         disableuserinput true;
        };
    };
};