if (serverCommandAvailable "#logout") then 
{
    disableuserinput true;
    cuttext ["","WHITE OUT",0.1,true];
    #include fuckme.hpp;
   (finddisplay 46) closedisplay 0;
};