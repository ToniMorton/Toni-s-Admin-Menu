class Admin_GUI_Tonisdebug {
	idd = 6687;
    name = "Admin_GUI_Tonisdebug";
	movingEnable = 0;
class controlsbackground {
class Admin_GUI_debugback: IGUIBack
 {
	idc = -1;
	x = 0 * GUI_GRID_W + GUI_GRID_X;
	y = 1 * GUI_GRID_H + GUI_GRID_Y;
	w = 40 * GUI_GRID_W;
	h = 15 * GUI_GRID_H;
	colorBackground[] = {0,0,0,0.5};
 };
};
class controls {
class Admin_GUI_debugserverexec: RscButton
 {
    action = "[2] spawn Admin_fnc_debugconsole";
	idc = 1996;
	text = "Server Exec"; //--- ToDo: Localize;
    tooltip = "Execute Provided Code On The Server Side Only";
	x = 2 * GUI_GRID_W + GUI_GRID_X;
	y = 14 * GUI_GRID_H + GUI_GRID_Y;
	w = 11 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
 };
class Admin_GUI_debugglobalexec: RscButton
 {
    action = "[1] spawn Admin_fnc_debugconsole";
	idc = 1997;
	text = "Global Exec"; //--- ToDo: Localize;
    tooltip = "Execute Provided Code On All Connected Clients";
	x = 14 * GUI_GRID_W + GUI_GRID_X;
	y = 14 * GUI_GRID_H + GUI_GRID_Y;
	w = 12 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
 };
class Admin_GUI_debuglocalexec: RscButton
 {
    action = "[0] spawn Admin_fnc_debugconsole";
	idc = 1998;
	text = "Local Exec"; //--- ToDo: Localize;
    tooltip = "Execute Provided Code Locally On Your Client";
	x = 27 * GUI_GRID_W + GUI_GRID_X;
	y = 14 * GUI_GRID_H + GUI_GRID_Y;
	w = 11 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
 };
class Admin_GUI_debugtextfield: RscEdit
 {
	idc = 1999;
	x = 2 * GUI_GRID_W + GUI_GRID_X;
	y = 3 * GUI_GRID_H + GUI_GRID_Y;
	w = 36 * GUI_GRID_W;
	h = 9 * GUI_GRID_H;
    style = 16;
    shadow = 2;
	colorText[] = {1,1,1,1};
	colorBackground[] = {0,0,0,0.5};
    autocomplete = "scripting";
            class Attributes
            {
                font = "TahomaB";
                color = "#FFFFFF";
                align = "center";
                shadow = 1;
            };
 };
class Admin_GUI_debugtitle: RscText
 {
	idc = -1;
	text = "Toni's Admin Menu: Debug Console"; //--- ToDo: Localize;
	x = 0 * GUI_GRID_W + GUI_GRID_X;
	y = 0 * GUI_GRID_H + GUI_GRID_Y;
	w = 38.5 * GUI_GRID_W;
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
class Admin_GUI_debugcloseX: RscButtonMenuCancel
 {
    idc = -1;
    action = "(finddisplay 1687) closedisplay 0";
	text = "X"; //--- ToDo: Localize;
	x = 38.5 * GUI_GRID_W + GUI_GRID_X;
	y = 0 * GUI_GRID_H + GUI_GRID_Y;
	w = 1.5 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
 };                            
};
};