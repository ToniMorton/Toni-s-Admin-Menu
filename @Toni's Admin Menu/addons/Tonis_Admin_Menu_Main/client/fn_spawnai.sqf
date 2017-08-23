switch (side player) do 
{
    case "WEST":
    {
        "B_CTRG_Soldier_LAT_tna_F" createUnit [position player, group player];
    };
    
    case "EAST":
    {
        "O_Soldier_LAT_F" createUnit [position player, group player];
    };
    
    case "GUER":
    {
        "I_Soldier_AT_F" createUnit [position player, group player];
    };

    case "CIV":
    {
        "C_man_polo_4_F" createUnit [position player, group player];
    };
};