class Toni_GUI_AdminGUI {
	idd = 1710;
    style = 32;
    name = "Toni_GUI_AdminGUI";
	movingEnable = 0;
    onload = "[] spawn Toni_fnc_LoadAdminGUI";
class controlsbackground {
    
    class Toni_GUI_Background: IGUIBack
    {
        idc = -1;
        x = -1 * GUI_GRID_W + GUI_GRID_X;
        y = -1 * GUI_GRID_H + GUI_GRID_Y;
        w = 42 * GUI_GRID_W;
        h = 25.5 * GUI_GRID_H;
        colorBackground[] = {0,0,0,0.5};
    };

};
class controls {

    class Toni_GUI_Titlebar: RscText
    {
        idc = -1;
        text = "Toni's Admin Menu: V.1.0 Alpha"; //--- ToDo: Localize;
        x = -1 * GUI_GRID_W + GUI_GRID_X;
        y = -2 * GUI_GRID_H + GUI_GRID_Y;
        w = 40 * GUI_GRID_W;
        h = 1 * GUI_GRID_H;
        colorBackground[] = {0,0.4,0.8,0.8};
    };
    class Toni_GUI_PlayerList: RscListbox
    {
        idc = 1701;
        x = 1 * GUI_GRID_W + GUI_GRID_X;
        y = 0.5 * GUI_GRID_H + GUI_GRID_Y;
        w = 11 * GUI_GRID_W;
        h = 22 * GUI_GRID_H;
    };
    class Toni_GUI_Scriptlist: RscListbox
    {
        idc = 1702;
        x = 13 * GUI_GRID_W + GUI_GRID_X;
        y = 0.5 * GUI_GRID_H + GUI_GRID_Y;
        w = 26 * GUI_GRID_W;
        h = 22 * GUI_GRID_H;
    };
    class Toni_GUI_ExecButton: RscButton
    {
        idc = 1600;
        text = "Execute"; //--- ToDo: Localize;
        x = 1 * GUI_GRID_W + GUI_GRID_X;
        y = 23 * GUI_GRID_H + GUI_GRID_Y;
        w = 38 * GUI_GRID_W;
        h = 1 * GUI_GRID_H;
        tooltip = "Loads The Currently Selected Script";
        action = "[lbtext[1701,(lbCurSel 1701)]] call Toni_fnc_execute";
    };
    class Toni_GUI_CloseButton: RscButtonMenuCancel
    {
        text = "X"; //--- ToDo: Localize;
        x = 39 * GUI_GRID_W + GUI_GRID_X;
        y = -2 * GUI_GRID_H + GUI_GRID_Y;
        w = 2 * GUI_GRID_W;
        h = 1 * GUI_GRID_H;
        tooltip = "Close Window"; //--- ToDo: Localize;
    };

};
};