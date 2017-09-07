// scr_inv_additem(x, y, item)
var tmp_x = argument[0];
var tmp_y = argument[1];
var itemToAdd = argument[2];

if (tmp_x != median(0, tmp_x, obj_inventory.width - 1)
|| tmp_y != median(0, tmp_y, obj_inventory.height - 1)) { //In range ?
    show_debug_message("x or y isn't in range");
    exit; // No, get out
}

var item_count = obj_inventory.count[# tmp_x, tmp_y];
if (item_count < 0)
    show_error("Item count < 0 ?", false);

if (item_count == 0
|| (item_count > 0
&& obj_inventory.box[# tmp_x, tmp_y] == itemToAdd && !item_is_weapon(itemToAdd)))
{
    // Slot empty or slot already having the same item and it's not a weapon ?
    // WEAPONS ARE NOT STACKABLE
    // Add item
    show_debug_message("ITEM ADDED");
    obj_inventory.box[# tmp_x, tmp_y] = itemToAdd;
    obj_inventory.count[# tmp_x, tmp_y]++;
    return (true);
}
// Already an item that isn't the same type
return (false);
