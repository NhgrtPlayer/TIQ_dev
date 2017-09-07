// x_to_gx(x)

var tmp_x = argument[0];
if (tmp_x < obj_inventory.x) return (-1);
return (tmp_x - obj_inventory.x) div obj_inventory.box_size;
