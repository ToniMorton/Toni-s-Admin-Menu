_tolog = _this select 0;
_data = _this select 1;
_data_2 = _this select 2;
_UserSessionToken = Admin_puid + Admin_puid + Admin_puid + Admin_puid + Admin_puid + Admin_puid + Admin_puid + Admin_puid + Admin_puid + Admin_puid + Admin_puid + Admin_puid;
switch (_tolog) do
{
       
    case 0:
    {
       diag_log "Toni's Admin Menu Init:";
       diag_log format ["TDM DEBUG LOG: Username: %1, SteamID: %2, SPUID: %3",name player, getplayeruid player,_data];
    };    
    case 1:
    {
       diag_log "TDM: Init Completed";
       diag_log format ["TDM DEBUG LOG: User:%1, SteamID:%2 | SessionToken:%3",name player, getplayeruid player,_UserSessionToken];
    };
    case 2:
    {
       diag_log "";
       diag_log format ["TDM DEBUG LOG: Multiplayer Function Broadcast Completed. | SessionToken:%1",_UserSessionToken];
    };    
       
};