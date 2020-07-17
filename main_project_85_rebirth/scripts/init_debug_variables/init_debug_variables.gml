//Debug Variables
global.debug_sprite = researcher_sprite
global.debug_character = false
globalvar debug_draw_player;
globalvar slow_step;
globalvar debug_time_scale;

debug_draw_player = true;
slow_step = false;

var ii = 0;
globalvar actor_show_path;
repeat(255)
{
actor_show_path[ii] = false;
ii+=1;
}

debug_time_scale = 1;
