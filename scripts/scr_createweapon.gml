// scr_createweapon(name, level, stat1, stat2, stat3, stat4, description)

var i = 0;

while (global.weapons_list[i] != -1)
    i++;

global.weapons_list[i, name] = argument[0];
global.weapons_list[i, level] = argument[1];
global.weapons_list[i, stat1] = argument[2];
global.weapons_list[i, stat2] = argument[3];
global.weapons_list[i, stat3] = argument[4];
global.weapons_list[i, stat4] = argument[5];
global.weapons_list[i, description] = argument[6];
global.weapons_list[i + 1] = -1;
