class CfgPatches
{
	class Toni_Admin_Menu
	{
		weapons[] = {};
		requiredVersion = 1.0;
		author[] = {"Toni Morton"};
		authorUrl = "http://steamcommunity.com/id/ToniMorton/";
		version = 1.0;
        units[] = {};
		requiredAddons[] = {};
	};
};
class CfgFunctions
{
  #include "CfgFunctions.hpp"
};

#include "Dialogs\Defines.hpp"
#include "Dialogs\AdminGUI.hpp"
#include "Dialogs\adminmessage.hpp"
#include "BIS_addoninfo.hpp"

class RscDisplayInventory
{
	class Controls
	{
        class Toni_GUI_LoadAdmin: RscButtonMenu
        {
            action = "[] Spawn Toni_fnc_menuinit;";
            text = "Open Toni's Admin Menu"; //--- ToDo: Localize;
            x = 13.5 * GUI_GRID_W + GUI_GRID_X;
            y = -0.5 * GUI_GRID_H + GUI_GRID_Y;
            w = 14 * GUI_GRID_W;
            h = 1 * GUI_GRID_H;
            colorText[] = {1,1,1,1};
            colorBackground[] = {0,0,0,0.8};
            tooltip = "This Button Opens Toni's Admin Menu"; //--- ToDo: Localize;
        };
    };
};