class CfgPatches
{
	class Tonis_Admin_Menu_Main
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
#include "Dialogs\MainGUI.hpp"
#include "Dialogs\Tonisdebug.hpp"
#include "BIS_addoninfo.hpp"
class CfgNotifications { 
    class Tonialert {
        title = "Toni's Admin Menu v1.0";
        iconPicture = "\Tonis_Admin_Menu_Main\rsc\check.paa";
        description = "%1";
        duration = 10;
        priority = 5;
    };
};
class RscDisplayInventory
{
	class Controls
	{
            class Toni_GUI_LoadDev: RscButton
            {
               idc = 2797;
               text = "Load Toni's Admin Menu"; //--- ToDo: Localize;
               x = -2.5 * GUI_GRID_W + GUI_GRID_X;
               y = -0.5 * GUI_GRID_H + GUI_GRID_Y;
               w = 14 * GUI_GRID_W;
               h = 1 * GUI_GRID_H;
               tooltip = "Does what it says silly."; //--- ToDo: Localize;
               action = "[] Spawn Admin_fnc_init;";
            };
    };
};