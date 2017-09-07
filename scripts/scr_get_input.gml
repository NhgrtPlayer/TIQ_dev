/// scr_get_input()

left_key_is_pressed = -keyboard_check(obj_player.player_left_key);
right_key_is_pressed = keyboard_check(obj_player.player_right_key);
jump_key_is_pressed = keyboard_check(obj_player.player_space_key);

// Check for gamepad input
/*var gp_num = gamepad_get_device_count();
for (var i = 0; i < gp_num; i++;)
{
    global.gp[i] = gamepad_is_connected(i);
}
---Récupère toutes les manettes connectés et les stock dans une global---
*/ 

if (gamepad_is_connected(gamepad_slot_used))
{
    xaxis = gamepad_axis_value(gamepad_slot_used, gp_axislh);
    if (xaxis >= gamepad_deadzone)
    {
        left_key_is_pressed = -xaxis;
        right_key_is_pressed = xaxis;
    }
}

dir = left_key_is_pressed + right_key_is_pressed;
