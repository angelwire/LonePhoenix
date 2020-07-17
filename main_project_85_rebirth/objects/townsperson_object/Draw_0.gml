if alarm[0] != 1 //Wait 1 step so the variable my_id is set
{
    if !act_dead[my_id] //if the actor is alive
    {
    draw_self();
    }
    else
    {
    actor_debug_message("I'm dead");
    draw_sprite_ext(sprite_index,1,x+8,y-4,1,1,90,c_white,1);
    }
}

