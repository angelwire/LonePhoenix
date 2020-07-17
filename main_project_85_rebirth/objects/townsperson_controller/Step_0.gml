/// @description Control NPCs


var actor = 0;
repeat(total_actors)
{
if !act_dead[actor] //if the actor isn't dead
{
control_actor(actor); // Control the actors
}
///Place Actors In the Room
//if the actor is in the current room
//and has not been instantiated
if act_room[actor] == room
and act_created[actor] == false
{
//Create the object
var actor_object = instance_create(act_x[actor],act_y[actor],townsperson_object);
//Change the objects's my_id to the proper actor
actor_object.my_id = actor;
//Make sure the actor is created
act_created[actor] = true;
show_debug_message("Actor number:" + string(actor) + " created at (x " + string(actor_object.x) + ",y " + string(actor_object.y) + ") on " + string(global.time));
}

actor+=1;
}


