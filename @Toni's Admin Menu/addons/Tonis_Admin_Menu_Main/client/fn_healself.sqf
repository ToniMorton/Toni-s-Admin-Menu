If ((vehicle player) == player) then
{
player setdamage 0;
life_thirst = 100;
life_hunger = 100;
[] call life_fnc_hudUpdate;
systemchat "Toni's Admin Menu: You have been healed";

}
else
{
Vehicle Player Setdamage 0;
player setdamage 0;
vehicle player setfuel 1;
vehicle player setvectorup surfaceNormal position player;
life_thirst = 100;
life_hunger = 100;
[] call life_fnc_hudUpdate;
systemchat "Toni's Admin Menu: Your Vehicle has been Fully Repaired And Refueled";
};