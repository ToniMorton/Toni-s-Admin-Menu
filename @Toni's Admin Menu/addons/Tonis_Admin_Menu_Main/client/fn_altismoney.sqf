targetplr = _this select 0;
publicvariable "targetplr";
amount = random [250,15000,20000];
publicvariable "amount";

if (name player isequalto targetplr) then
{
life_cash = life_cash + amount;
Systemchat format ["Toni's Admin Menu: %1 Added To Player Cash",amount];
};