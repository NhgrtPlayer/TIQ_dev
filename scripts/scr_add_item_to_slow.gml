// scr_add_item_to_slow(x, y, item)
var tmp_x = argument[0];
var tmp_y = argument[1];
var item_to_add = argument[2];

// Outside of the box ?
if (tmp_x != median(0, tmp_x, obj_inventory.width - 1)
|| tmp_y != median(0, tmp_y, obj_inventory.height - 1)) {
    show_debug_message("x or y is outside of the inventory range.");
    exit;
}

// Too much items ?
var item_count = obj_inventory.count(#tmp_x, tmp_y);

if (item_count == 0) { // No item here ?
    // Add the item, increase count by 1 and return true
    obj_inventory.box(#tmp_x, tmp_y) = item_to_add;
    obj_inventory.count(#tmp_x, tmp_y)++;
    return true;
}
else if (item_count > 0) { // There's already an item here, now what ?
    if (obj_inventory.box(#tmp_x, tmp_y) == item_to_add)
    {
        // If this is the correct item to the current slot, increase count and return true
        obj_inventory.count(#tmp_x, tmp_y)++;
        return (true);
    }
    else {
       show_debug_message("There's already an item in this slot");
       return (false);
    }
}
else {
    show_error("The item count is less than 0, WTH !");
}
