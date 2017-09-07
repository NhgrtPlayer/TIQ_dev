///scr_move_state()

scr_get_input();

// Move left or right ?
// Ok, move now
player_hsp = dir * player_movespeed;

// Apply gravity
if (player_vsp < maximum_vsp)
    player_vsp += grav;

// If the player has pressed the jump key, jump
if (place_meeting(obj_player.x,obj_player.y+1,obj_wall))
    player_vsp = jump_key_is_pressed * -(player_jumpspeed);

// Horizontal collision
if (place_meeting(obj_player.x+player_hsp,obj_player.y,obj_wall))
{
    while (!place_meeting(obj_player.x+sign(player_hsp),obj_player.y,obj_wall))
        obj_player.x += sign(player_hsp);
    player_hsp = 0;
}

// Vertical collision
if (place_meeting(obj_player.x,obj_player.y+player_vsp,obj_wall))
{
    while (!place_meeting(obj_player.x,obj_player.y+sign(player_vsp),obj_wall))
        obj_player.y += sign(player_vsp);
    player_vsp = 0;
}

// Commit the mouvement
obj_player.x += player_hsp;
obj_player.y += player_vsp;
