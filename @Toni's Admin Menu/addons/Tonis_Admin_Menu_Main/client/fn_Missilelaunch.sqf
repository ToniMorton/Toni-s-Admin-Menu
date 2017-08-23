_activate = _this select 0;
switch (_activate) do
{
    
  case "ON":
  { 
        vehicle player addEventHandler ["Fired", 
        {   
            _projectile = _this select 6; 
            bombyo = "Missile_AA_03_F" createVehicle (screenToWorld [0.5,0.5]); 
            bombyo attachto [_projectile,[0,0,0]]; 
        }];
  };
  case "OFF":
  {
        player removeAllEventHandlers "Fired";
  };
};