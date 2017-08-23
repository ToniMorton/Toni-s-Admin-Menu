_toexecute = _this select 0;


_agent = createAgent [typeOf player, position player, [], 0, "NONE"]; 
    _agent addMPEventHandler ['mpkilled',_toexecute]; 
    _agent setDamage 1; 
    deleteVehicle _agent;