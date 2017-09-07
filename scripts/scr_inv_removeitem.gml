// scr_inv_removeitem(x, y)
var tmp_x = argument[0];
var tmp_y = argument[1];

if (tmp_x != median(0, tmp_x, obj_inventory.width - 1)
|| tmp_y != median(0, tmp_y, obj_inventory.height - 1)) { //In range ?
    show_debug_message("x or y isn't in range");
    exit; // No, get out
}

var item_count = obj_inventory.count[# tmp_x, tmp_y];
if (item_count < 0) // Item count < 0, hum...
    show_error("Item count < 0 ?", false);

if (item_count > 0) {
    // If current slot has enough item to be removed (> 0)
    obj_inventory.count[# tmp_x, tmp_y]--; // Remove 1
    if (obj_inventory.count[# tmp_x, tmp_y] == 0) // If this was the last item
        obj_inventory.box[# tmp_x, tmp_y] = -1; // Slot is now empty
    return (true);
}
else
    return (false);

