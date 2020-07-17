/// @description control_actor_animation(actor)
/// @param actor
var actor = argument0;

//Set the actor's direction to the spot's direction
act_direction[actor] = spot_direction[actor,act_spot[actor]];

if spot_action[actor,act_spot[actor]] == 0 //stay still
{
    act_frame[actor] = (floor(act_direction[actor]/90)*4);
}

if spot_action[actor,act_spot[actor]] == 1 //sit
{
    start_frame = (floor(act_direction[actor]/90)*4);
    end_frame = (floor(act_direction[actor]/90)*4);   
}

if spot_action[actor,act_spot[actor]] == 2 //roam around
{
    actor_roam(actor);
}

if spot_action[actor,act_spot[actor]] == 3 //if the actor should die
{
    act_dead[actor] = true;
}


if spot_action[actor,act_spot[actor]] >= 10 //play action animation
{
    var start_frame = (floor(act_direction[actor]/90)*4)+(16* (spot_action[actor,act_spot[actor]]-10) );
    var end_frame = (floor(act_direction[actor]/90)*4)+4+(16* (spot_action[actor,act_spot[actor]]-10) );
    
    act_frame[actor] += .05*act_speed[actor]; //Play the animation
    if act_frame[actor] >= end_frame or act_frame[actor] < start_frame
    {
    act_frame[actor] = start_frame;
    }
}

image_index = act_frame[actor];
