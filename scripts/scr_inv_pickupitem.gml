// scr_inv_pickupiitem(item)
var itemToAdd_ID = argument[0];

// Does item already exists in inventory ?
if (!item_is_weapon(itemToAdd_ID)) // WEAPONS ARE NOT STACKABLE
{
    for (tmp_y = 0; tmp_y < obj_inventory.height; tmp_y++)
    {
        for (tmp_x = 0; tmp_x < obj_inventory.width; tmp_x++)
        {
            if (obj_inventory.box[# tmp_x, tmp_y] == itemToAdd_ID)
            {
                obj_inventory.count[# tmp_x, tmp_y]++;
                return (true);
            }
        }
    }
}

// Is there an empty space ?
for (tmp_y = 0; tmp_y < obj_inventory.height; tmp_y++)
{
    for (tmp_x = 0; tmp_x < obj_inventory.width; tmp_x++)
    {
        if (obj_inventory.box[# tmp_x, tmp_y] == -1)
        {
            obj_inventory.box[# tmp_x, tmp_y] = itemToAdd_ID;
            obj_inventory.count[# tmp_x, tmp_y]++;
            return (true);
        }
    }
}

// Inventory full
show_debug_message("Inventory full");
return (false);
