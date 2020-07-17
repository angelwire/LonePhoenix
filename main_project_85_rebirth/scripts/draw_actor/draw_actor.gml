/// @description draw_actor(actor id)
/// @param actor id
var actor = argument0;
var endframe;
var startframe;

if act_room[actor] = room
{
endframe = ((act_direction[actor])*4)+4;
startframe = (act_direction[actor])*4;

if act_frame[actor] >= endframe
{
act_frame[actor] = startframe
}

if act_frame[actor] < startframe
{
act_frame[actor] = startframe
}

depth = -act_y[actor];
draw_sprite(global.sprite_id[actor],floor(act_frame[actor]),act_x[actor],act_y[actor]);
//show_debug_message("drawing_actor at: " + string(act_x[actor]) + "," + string(act_y[actor]));
}
