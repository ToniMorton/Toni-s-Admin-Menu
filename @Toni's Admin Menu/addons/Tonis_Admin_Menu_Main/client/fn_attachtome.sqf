_attachcase = _this select 0;

switch (_attachcase) do 
{
    case 1:
    {
        _attachedveh = cursortarget attachTo [player, [0, 0, 4]];
    };    
    
    case 2:
    {
       {_x setpos (screenToWorld [0.5,0.5]); detach _x}foreach attachedobjects player; 
    };   
    
    case 3:
    {
       [] spawn 
       {
        suicidevest = "DemoCharge_Remote_Ammo" createVehicle position player;
        suicidevest attachTo [player, [-0.1, 0.1, 0.15], "Pelvis"];
        suicidevest setVectorDirAndUp [ [0.5, 0.5, 0], [-0.5, 0.5, 0] ];        
        suicidevest = "DemoCharge_Remote_Ammo" createVehicle position player;
        suicidevest attachTo [player, [-0.1, 0.1, 0.15], "Pelvis"];
        suicidevest setVectorDirAndUp [ [0.5, 0.5, 0], [-0.5, 0.5, 0] ];        
        suicidevest = "DemoCharge_Remote_Ammo" createVehicle position player;
        suicidevest attachTo [player, [-0.1, 0.1, 0.15], "Pelvis"];
        suicidevest setVectorDirAndUp [ [0.5, 0.5, 0], [-0.5, 0.5, 0] ];        
        suicidevest = "DemoCharge_Remote_Ammo" createVehicle position player;
        suicidevest attachTo [player, [-0.1, 0.1, 0.15], "Pelvis"];
        suicidevest setVectorDirAndUp [ [0.5, 0.5, 0], [-0.5, 0.5, 0] ];
        removeVest player;
        player addVest "V_HarnessOGL_brn";
        systemchat "Toni's Admin Menu: You have 20 secconds before detonation!";
        sleep 20;
        detach suicidevest;
        suicidevest setdamage 1;
       };
    };
};