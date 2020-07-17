/*
///Place Actors In the Room
var actor = 0;
repeat(total_actors)
{
//if the actor is in the current room
//and has not been instantiated
if act_room[actor] = room
and act_created[actor] = false
{
//Create the object
var actor_object = instance_create(act_x[actor],act_y[actor],townsperson_object);
//Change the objects's my_id to the proper actor
actor_object.my_id = actor;
//Make sure the actor is created
act_created[actor] = true;
}

/*
Okay, so this script only places the actors
in their proper spots. The positions are
updated each step regardless of whether or
not they're in the room. It may be more
CPU intensive, but it makes the engine much
more flexible for checking positions and
stuff like that.
*/
//}

/* */
/*  */
