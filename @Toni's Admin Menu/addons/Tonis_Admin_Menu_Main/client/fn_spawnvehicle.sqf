_arrayid = _this select 0;
_vehicle = vehclass_array select _arrayid;
_spawnedveh = _vehicle createvehicle (player modeltoworld[0,8,0]);
hint format ["%1 Spawned",_vehicle];




