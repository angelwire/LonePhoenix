/// @description travel_along_path(actor)
/// @param actor
var actor = argument0;

//mini_spot_to is the spot index that the actor is going to
//OLD var mini_spot_to = min(act_mini_spot[actor]+1,go_path_number[actor])
var mini_spot_to = clamp(act_mini_spot[actor]+1,0,go_path_number[actor]-1) //NEW

//if the actor should switch rooms
if act_room[actor] != go_path_room[actor,mini_spot_to]
{
//Jump to the next position
set_npc_position(actor,go_path_x[actor,mini_spot_to],go_path_y[actor,mini_spot_to],go_path_room[actor,mini_spot_to]);

//Make sure the actor is marked as not existing
act_created[actor] = false;
//Just fyi, i don't need to update the mini_spot_to or anything because that will be updated later in this script around line 51 or so
}

//If the actor is to the right of the mini_spot
if act_x[actor] > go_path_x[actor,mini_spot_to]
{
act_x[actor] -= 1;
act_direction[actor] = 180;
act_frame[actor] += .1*act_speed[actor];
}

//If the actor is to the left of the mini_spot
if act_x[actor] < go_path_x[actor,mini_spot_to]
{
act_x[actor] += 1;
act_direction[actor] = 0;
act_frame[actor] += .1*act_speed[actor];
}

//If the actor is below the mini spot
if act_y[actor] < go_path_y[actor,mini_spot_to]
{
act_y[actor] += 1;
act_direction[actor] = 270;
act_frame[actor] += .1*act_speed[actor];
}

//If the actor is above the mini spot
if act_y[actor] > go_path_y[actor,mini_spot_to]
{
act_y[actor] -= 1;
act_direction[actor] = 90;
act_frame[actor] += .1*act_speed[actor];
}

//Check to see if the actor is at the spot it's going to
//Line 51 or so
if floor(act_x[actor]) == floor(go_path_x[actor,mini_spot_to])
and floor(act_y[actor]) == floor(go_path_y[actor,mini_spot_to])
{
//if it's at the spot then add to the current spot
act_mini_spot[actor] += 1;
actor_debug_message("actor " + string(actor) + " now going to mini spot #"+ string(clamp(act_mini_spot[actor]+1,0,go_path_number[actor]-1)));
    //If the actor has finished the go_path
    if act_mini_spot[actor] > go_path_number[actor]-1
    {
    actor_debug_message("Actor " + string(actor) + " finished go_path");
    //Reset the go_path_number so that the control_path script knows that it has arrived
    go_path_number[actor] = -1;
    act_mini_spot[actor] = 0;
    act_spot[actor] += 1;
    act_x[actor] = spot_get_x(actor,act_spot[actor]);
    act_y[actor] = spot_get_y(actor,act_spot[actor]);
    act_room[actor] = spot_get_room(actor,act_spot[actor]);
    act_speed[actor] = spot_get_speed(actor,act_spot[actor]);    
    }

}
