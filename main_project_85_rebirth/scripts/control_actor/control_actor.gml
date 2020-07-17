/// @description control_actor(actor id)
/// @param actor id
var actor = argument0;

//Control the actor

if go_path_number[actor] = -1 //If the go_path hasn't been computed
{
    if act_spot[actor] < act_total_spots[actor]-1 //If it's not at the last spot it needs to be at
    {
    //Find the go_path between the current spot and the next spot
    npc_find_path_spots(actor, act_spot[actor],act_spot[actor]+1);
    //Set the departure time to the time it's supposed to arrive subtracted by the time it will take to get there
    act_departure_time[actor] = spot_get_time(actor,act_spot[actor]+1) - floor(go_path_distance[actor]*1.2);
    actor_debug_message("Actor: " + string(actor) + " departure time is: " + string(act_departure_time[actor]))
    //Okay, so I know when the actor should leave
    
    }
    else // the actor has reached the last spot for the day
    {
    //Roaming
//    show_debug_message("actor[" + string(actor) + "]  at end of day");
    actor_roam(actor);
    }
}
else //If the path has been computed
{
    //If the actor should be leaving
    if global.time > act_departure_time[actor]
    {
    act_roaming[actor] = false; //Tell the actor it's not roaming any more
    //go along the path
        if gotime = true //If the game isn't paused or something
        {
        travel_along_path(actor);
        }
    }
    else
    {
    //Roaming
    actor_roam(actor);
    }
}
