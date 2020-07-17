if actionly_remote[remote] != past_value
{
timer += 2;
    if toggle = true
    {
        if timer > delay
        {
            if !place_meeting(x,y,player)
            {
            activated = !activated
            if activated { audio_play_sound(my_sound,10,0);}
            past_value = actionly_remote[remote]
            timer = 0;
            }
        }
    }
    else
    {
        if timer > delay
        {        
            if !place_meeting(x,y,player)
            {
            audio_play_sound(my_sound,10,0);            
            activated = actionly_remote[remote]
            past_value = actionly_remote[remote]
            timer = 0;        
            }
        
        }
    }
}

image_index = merge_variable(activated*(image_number-1),image_index,animation_speed)

if timer > 0
{
timer -= 1;
}

