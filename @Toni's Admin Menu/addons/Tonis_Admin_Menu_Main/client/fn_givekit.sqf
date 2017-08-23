_kitselection = _this select 0;
switch (_kitselection) do
{
    case 0:
    {
    		removeallweapons player;
			{player removeMagazine _x} forEach magazines player;
            player addMagazine "9Rnd_45ACP_Mag";
            player addMagazine "9Rnd_45ACP_Mag";
            player addMagazine "9Rnd_45ACP_Mag";
            player addWeapon "hgun_ACPC2_F";
            player additem "ItemMap";
            player assignitem "ItemMap";
            player additem "NVGoggles";
            player Assignitem "NVGoggles";
            systemchat "Tonis Admin Menu: (.45 Pistol) Kit Obtained Sucessfully";
            
     };
     case 1:
     {
     		removeallweapons player;
     		{player removeMagazine _x} forEach magazines player;
            player addMagazine "30Rnd_65x39_caseless_mag";
            player addMagazine "30Rnd_65x39_caseless_mag";
            player addMagazine "30Rnd_65x39_caseless_mag";
            player addWeapon "arifle_MXM_Black_F";
            player additem "ItemMap";
            player assignitem "ItemMap";
            player additem "NVGoggles";
            player Assignitem "NVGoggles";
            systemchat "Tonis Admin Menu: (MXM Black) Kit Obtained Sucessfully";
     };
     case 2:
     {
            player additem "ItemMap";
            player assignitem "ItemMap";
            player additem "NVGoggles";
            player Assignitem "NVGoggles";
            systemchat "Tonis Admin Menu: (Map & NVGs) Kit Obtained Sucessfully";
     };
     case 3:
     {
     		removeallweapons player;
     		{player removeMagazine _x} forEach magazines player;
            player addMagazine "30Rnd_9x21_Mag";
            player addMagazine "30Rnd_9x21_Mag";
            player addMagazine "30Rnd_9x21_Mag";
            player addWeapon "hgun_PDW2000_snds_F";
            player additem "ItemMap";
            player assignitem "ItemMap";
            player additem "NVGoggles";
            player Assignitem "NVGoggles";
            systemchat "Tonis Admin Menu: (PDW2000 9mm SMG) Kit Obtained Sucessfully";
     };
     case 4:
     {
     		removeallweapons player;
     		{player removeMagazine _x} forEach magazines player;
            player addMagazine "30Rnd_545x39_Mag_F";
            player addMagazine "30Rnd_545x39_Mag_F";
            player addMagazine "30Rnd_545x39_Mag_F";
            player addWeapon "arifle_AKS_F";
            player additem "ItemMap";
            player assignitem "ItemMap";
            player additem "NVGoggles";
            player Assignitem "NVGoggles";
            systemchat "Tonis Admin Menu: (AK74U 5.45mm) Kit Obtained Sucessfully";
     };
     case 5:
     {
     		removeallweapons player;
     		{player removeMagazine _x} forEach magazines player;
            player addMagazine "20Rnd_762x51_Mag";
            player addMagazine "20Rnd_762x51_Mag";
            player addMagazine "20Rnd_762x51_Mag";
            player addWeapon "arifle_SPAR_03_blk_F";
            player additem "ItemMap";
            player assignitem "ItemMap";
            player additem "NVGoggles";
            player Assignitem "NVGoggles";
            systemchat "Tonis Admin Menu: (SPAR Marksman Rifle) Kit Obtained Sucessfully";
     };
     case 6:
     {
     		{
                player removemagazine _x
            }foreach magazines player;
     		systemchat "Tonis Admin Menu: All Magazines Removed from Inventory";
     };
     case 7:
     {
     		removeallweapons player;
     		{player removemagazine _x}foreach magazines player;
     		systemchat "Tonis Admin Menu: All Weapons and Magazines have been removed from Inventory";
     };     
     case 8:
     {
     		removeallweapons player;
     		player forceadduniform "U_B_FullGhillie_sard";
            player addWeapon "srifle_EBR_ARCO_pointer_snds_F";
            player addWeapon "hgun_ACPC2_snds_F";
            player addMagazine "20Rnd_762x51_Mag";
            player addMagazine "20Rnd_762x51_Mag";
            player addMagazine "20Rnd_762x51_Mag";
            player addMagazine "20Rnd_762x51_Mag";
            player addMagazine "9Rnd_45ACP_Mag";
            player addMagazine "9Rnd_45ACP_Mag";
            player addMagazine "9Rnd_45ACP_Mag";
            player addMagazine "9Rnd_45ACP_Mag";
            player additem "ItemMap";
            player assignitem "ItemMap";
            player additem "NVGoggles";
            player Assignitem "NVGoggles";
     		systemchat "Tonis Admin Menu: Toni's Loadout Obtained (1911 SD & Ghillie)";
     };     
};