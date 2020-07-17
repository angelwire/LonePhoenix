/// @description control_actor_animation(actor)
/// @param actor
var actor = argument0;

var start_frame = (floor(act_direction[actor]/90)*4);
var end_frame = (floor(act_direction[actor]/90)*4)+4;

if  act_frame[actor] >=end_frame or act_frame[actor] < start_frame
{
act_frame[actor] = start_frame;
}

image_index = act_frame[actor];
