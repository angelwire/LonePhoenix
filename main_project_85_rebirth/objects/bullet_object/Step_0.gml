depth = -y

down = false

if place_meeting(x,y,actionly_block_parent)
{
    if instance_place(x,y,actionly_block_parent).activated = false
    {
        if distance_to_object(player) < 160 
        {
        audio_play_sound(hit_wall_sound,5,0)
        }
        instance_destroy()
    }
}

