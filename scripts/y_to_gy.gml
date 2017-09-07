// y_to_gy(y)

var tmp_y = argument[0];
if (tmp_y < obj_inventory.y) return (-1);
return (tmp_y - obj_inventory.y) div obj_inventory.box_size;
