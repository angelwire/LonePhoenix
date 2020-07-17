depth = -y; //Set the depth

///Update position, direction, and frame
if alarm[0] != 1 //Wait 1 step so the variable my_id is set
{
    x = act_x[my_id]; //Update X
    y = act_y[my_id]; //Update Y
    
    if act_roaming[my_id] //If the actor is roaming
    {
    control_actor_animation_roaming(my_id) //Controls the actor's animation if it is roaming
    }
    else
    {
    control_actor_animation(my_id) //Control the actor's animation if it's not roaming
    }
    
    //Update the actor to see if it should be destroyed
    if act_room[my_id] != room
    {
    //Set the created variable to false
    act_created[my_id] = false;
    //Destroy the object
    instance_destroy();
    }

}



