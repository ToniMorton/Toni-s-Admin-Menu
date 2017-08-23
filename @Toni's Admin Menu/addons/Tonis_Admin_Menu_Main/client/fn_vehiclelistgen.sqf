vehclass_array = [];
vehname_array = [];
_cfgvehicles = configFile >> "cfgVehicles";
for "_i" from 0 to (count _cfgvehicles)-1 do 
{
    _vehicle = _cfgvehicles select _i;
    if (isClass _vehicle) then 
    {
        _veh_type = configName(_vehicle);
        if ((getNumber(_vehicle >> "scope")==2) && ((_veh_type isKindOf 'Air') || (_veh_type isKindOf 'LandVehicle') || (_veh_type isKindOf 'Ship'))) then 
        {
            _displayName = getText(_vehicle >> 'displayName');
            vehclass_array pushback _veh_type;
            vehname_array pushback format ["%1 -- (%2)",_displayName, _veh_type];
        };
	};
};
                        