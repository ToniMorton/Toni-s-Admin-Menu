class Admin_GUI_MainGUI {
	idd = 6686;
    style = 32;
    name = "Admin_GUI_MainGUI";
	movingEnable = 0;
    onload = "[] spawn Admin_fnc_GUIMain";
class controlsbackground {
class Toni_GUI_Backpanel1: IGUIBack
{
	idc = -1;
	x = -19 * GUI_GRID_W + GUI_GRID_X;
	y = 0 * GUI_GRID_H + GUI_GRID_Y;
	w = 78 * GUI_GRID_W;
	h = 28 * GUI_GRID_H;
	colorBackground[] = {0,0,0,0.5};
};
};
class controls {
    class Toni_GUI_Header: RscText
    {
        idc = -1;
        text = "                                                                                                                                                                     Toni's Admin Menu v1.0"; //--- ToDo: Localize;
        x = -19 * GUI_GRID_W + GUI_GRID_X;
        y = -1 * GUI_GRID_H + GUI_GRID_Y;
        w = 78 * GUI_GRID_W;
        h = 1 * GUI_GRID_H;
        colorBackground[] = {0.6,-1,-1,0.6};
            class Attributes
            {
                font = "Puristamedium";
                color = "#FFFFFF";
                align = "center";
                shadow = 1;
            };
        };
    class Toni_GUI_ScriptSelect: RscListBox
    {
        idc = 1700;
        x = 11 * GUI_GRID_W + GUI_GRID_X;
        y = 2.5 * GUI_GRID_H + GUI_GRID_Y;
        w = 19 * GUI_GRID_W;
        h = 22.5 * GUI_GRID_H;
        colorBackground[] = {0.1,0.1,0.1,0.6};
    };
    class Toni_GUI_Playerlist: RscListBox
    {
        idc = 1501;
        x = -18 * GUI_GRID_W + GUI_GRID_X;
        y = 2.5 * GUI_GRID_H + GUI_GRID_Y;
        w = 19 * GUI_GRID_W;
        h = 23 * GUI_GRID_H;
        colorBackground[] = {0.1,0.1,0.1,0.6};
    };
    class Toni_GUI_Execute: RscButtonMenu
    {
        action = "[lbtext[1501,(lbCurSel 1501)]] call Admin_fnc_runscript";
        text = "Execute"; //--- ToDo: Localize;
        x = 11 * GUI_GRID_W + GUI_GRID_X;
        y = 26 * GUI_GRID_H + GUI_GRID_Y;
        w = 19 * GUI_GRID_W;
        h = 1 * GUI_GRID_H;
        colorText[] = {1,1,1,1};
        colorBackground[] = {0,0,0,0.8};
    };
    class Toni_GUI_CloseMenu: RscButtonMenuCancel
    {
        action = "(finddisplay 1686) closedisplay 0";
        text = "X"; //--- ToDo: Localize;
        x = 57 * GUI_GRID_W + GUI_GRID_X;
        y = -1 * GUI_GRID_H + GUI_GRID_Y;
        w = 2 * GUI_GRID_W;
        h = 1 * GUI_GRID_H;
        colorText[] = {1,1,1,1};
        colorBackground[] = {0,0,0,1};
    };
    class Toni_GUI_Playerlisttxt: RscText
    {
        idc = 1002;
        text = "Player List"; //--- ToDo: Localize;
        x = -18 * GUI_GRID_W + GUI_GRID_X;
        y = 0.5 * GUI_GRID_H + GUI_GRID_Y;
        w = 19 * GUI_GRID_W;
        h = 1 * GUI_GRID_H;
        colorBackground[] = {0.6,-1,-1,0.6};
    };
    class Toni_GUI_Scriptlisttxt: RscText
    {
        idc = -1;
        text = "Script List"; //--- ToDo: Localize;
        x = 11 * GUI_GRID_W + GUI_GRID_X;
        y = 0.5 * GUI_GRID_H + GUI_GRID_Y;
        w = 19 * GUI_GRID_W;
        h = 1 * GUI_GRID_H;
        colorBackground[] = {0.6,-1,-1,0.6};
    };
    class Toni_GUI_VehicleList: RscListBox
    {
        idc = 1502;
        x = 39 * GUI_GRID_W + GUI_GRID_X;
        y = 2 * GUI_GRID_H + GUI_GRID_Y;
        w = 19 * GUI_GRID_W;
        h = 23 * GUI_GRID_H;
        colorBackground[] = {0.1,0.1,0.1,0.6};
    };
    class Toni_GUI_VehicleSpawnerTxt: RscText
    {
        idc = -1;
        text = "Vehicle & Weapons List"; //--- ToDo: Localize;
        x = 39 * GUI_GRID_W + GUI_GRID_X;
        y = 0.5 * GUI_GRID_H + GUI_GRID_Y;
        w = 19 * GUI_GRID_W;
        h = 1 * GUI_GRID_H;
        colorBackground[] = {0.6,-1,-1,0.6};
    };
    class Toni_GUI_Spawnselectionbtn: RscButtonMenuOK
    {
        action = "[lbCurSel 1502] call Admin_fnc_spawnvehicle";
        text = "Spawn Selected"; //--- ToDo: Localize;
        x = 39 * GUI_GRID_W + GUI_GRID_X;
        y = 26 * GUI_GRID_H + GUI_GRID_Y;
        w = 19 * GUI_GRID_W;
        h = 1 * GUI_GRID_H;
        colorText[] = {1,1,1,1};
        colorBackground[] = {0,0,0,0.8};
    };
    class Toni_GUI_Footer: RscText
    {
        idc = -1;
        text = "                                                                                                                                                  Copyright Toni Morton 2017, All Rights Reserved"; //--- ToDo: Localize;
        x = -19 * GUI_GRID_W + GUI_GRID_X;
        y = 28 * GUI_GRID_H + GUI_GRID_Y;
        w = 78 * GUI_GRID_W;
        h = 1 * GUI_GRID_H;
        colorBackground[] = {0.6,-1,-1,0.6};
            class Attributes
            {
                font = "Puristamedium";
                color = "#FFFFFF";
                align = "center";
                shadow = 1;
            };
    };
    class Toni_GUI_Opendebug: RscButtonMenuOK
    {
        action = "createdialog 'Admin_GUI_Tonisdebug'";
        text = "Debug Console"; //--- ToDo: Localize;
        x = -18 * GUI_GRID_W + GUI_GRID_X;
        y = 26 * GUI_GRID_H + GUI_GRID_Y;
        w = 19 * GUI_GRID_W;
        h = 1 * GUI_GRID_H;
        colorText[] = {1,1,1,1};
        colorBackground[] = {0,0,0,0.8};
    };
    };
};