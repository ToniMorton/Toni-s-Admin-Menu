if (isnil "Toni_Array_AdminList") then {[] call Toni_fnc_sinit};
_requestingplayername = _this select 0;
_pidforcheck = _this select 1;
if (!_pidforcheck in Toni_Array_AdminList) then 
{
}
else
{
  systemchat "Toni's Admin Menu: You are Not whitelisted as an admin on this server and will now be disconnected";
  [_requestingplayername,"AdminCheck"] remoteexec [Toni_fnc_KickPlayer,2,false];
};