class Toni_GUI_messagewindow {
	idd = 1666;
    name = "Toni_GUI_messagewindow";
	movingEnable = 0;
class controlsbackground {
class Toni_GUI_messageback: IGUIBack
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
class Toni_GUI_messagelocalexec: RscButton
 {
    action = "[] spawn Toni_fnc_globalmsg";
	idc = -1;
	text = "Send Message"; //--- ToDo: Localize;
    tooltip = "Sends the provided Admin Message to all Players";
	x = 27 * GUI_GRID_W + GUI_GRID_X;
	y = 14 * GUI_GRID_H + GUI_GRID_Y;
	w = 11 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
 };
class Toni_GUI_messagetextfield: RscEdit
 {
	idc = 2000;
	x = 2 * GUI_GRID_W + GUI_GRID_X;
	y = 3 * GUI_GRID_H + GUI_GRID_Y;
	w = 36 * GUI_GRID_W;
	h = 9 * GUI_GRID_H;
    style = 16;
    shadow = 2
	colorText[] = {1,1,1,1};
	colorBackground[] = {0,0,0,0.5};
    autocomplete = "scripting";
            class Attributes
            {
                font = "Puristamedium";
                color = "#FFFFFF";
                align = "center";
                shadow = 1;
            };
 };
class Toni_GUI_messagetitle: RscText
 {
	idc = -1;
	text = "Toni's Admin Menu"; //--- ToDo: Localize;
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
class Toni_GUI_messagecloseX: RscButtonMenuCancel
 {
    idc = -1;
    action = "(finddisplay 1666) closedisplay 0";
	text = "X"; //--- ToDo: Localize;
	x = 38.5 * GUI_GRID_W + GUI_GRID_X;
	y = 0 * GUI_GRID_H + GUI_GRID_Y;
	w = 1.5 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
 };                            
};
};