// scr_createitem(name, item_type, usable ?, description)
// scr_createitem(name, weapon, equipable (=true), description, level, attack_bonus, defense_bonus, speed_bonus, stat4_bonus)

var i = 0;

while (global.items_list[i] != -1)
    i++;

global.items_list[i, items_list_index.ID] = i;
global.items_list[i, items_list_index.name] = argument[0];
global.items_list[i, items_list_index.type] = argument[1];
global.items_list[i, items_list_index.usable] = argument[2];
global.items_list[i, items_list_index.description] = argument[3];
if (global.items_list[i, items_list_index.type] == i_type.i_weapon)
{
    show_debug_message("WEAPON CREATED");
    global.items_list[i, items_list_index.level] = argument[4];
    global.items_list[i, items_list_index.attack_bonus] = argument[5];
    global.items_list[i, items_list_index.defense_bonus] = argument[6];
    global.items_list[i, items_list_index.speed_bonus] = argument[7];
    global.items_list[i, items_list_index.stat4_bonus] = argument[8];
}

global.items_list[i + 1] = -1;
