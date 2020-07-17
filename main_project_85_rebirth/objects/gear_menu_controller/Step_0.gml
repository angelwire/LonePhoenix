should_control_gear_menu = (button_selected == -1); //todo fix


if (should_control_gear_menu)
{

    if right_is_new_pressed()
    {
    selection += 1;
    audio_play_sound(menu_cursor_move_sound,1,0);
    }
    
    if left_is_new_pressed()
    {
    selection -= 1;
    audio_play_sound(menu_cursor_move_sound,1,0);
    }
    selection = clamp(selection,0,3);
    
    if up_is_new_pressed()
    {
    if selection = 3
    {
    selection = 2
    audio_play_sound(menu_cursor_move_sound,1,0);
    }
    }
    
    if down_is_new_pressed()
    {
    selection = 3;
    audio_play_sound(menu_cursor_move_sound,1,0);
    }
    
    if controller_object.b_pressed
    {
            equipped_shirt = my_gear_shirt[my_shirt_selected];
        equipped_misc = my_gear_misc[my_misc_selected];
        equipped_gloves = my_gear_gloves[my_gloves_selected];
    controller_object.show_gear = false;
    instance_destroy();
    }
    
    
    
    if controller_object.a_pressed
    {
        if selection != 3
        {
        button_selected = selection;
        }
        else
        {
        equipped_shirt = my_gear_shirt[my_shirt_selected];
        equipped_misc = my_gear_misc[my_misc_selected];
        equipped_gloves = my_gear_gloves[my_gloves_selected];
        
        controller_object.show_gear = false;
        instance_destroy();
        }
    }
}
else
{
    if controller_object.b_pressed
    {
    button_selected = -1;
    controller_object.b_pressed = false;
    }
    
    if controller_object.a_pressed
    {
    button_selected = -1;
    controller_object.a_pressed = false;
    }
    
    if up_is_new_pressed()
    {
        if button_selected = 0
        {
            my_shirt_selected += 1;
            if my_shirt_selected >= array_length_1d(my_gear_shirt)
            {
            my_shirt_selected = 0;
            }
        }
        
        if button_selected = 1
        {
            my_gloves_selected += 1;
            if my_gloves_selected >= array_length_1d(my_gear_gloves)
            {
            my_gloves_selected = 0;
            }
        }
        
        if button_selected = 2
        {
            my_misc_selected += 1;
            if my_misc_selected >= array_length_1d(my_gear_misc)
            {
            my_misc_selected = 0;
            }
        }
    }
    
    if down_is_new_pressed()
    {
        if button_selected = 0
        {
            my_shirt_selected -= 1;
            if my_shirt_selected < 0 
            {
            my_shirt_selected = array_length_1d(my_gear_shirt) - 1;
            }
        }
        
        if button_selected = 1
        {
            my_gloves_selected -= 1;
            if my_gloves_selected < 0
            {
            my_gloves_selected = array_length_1d(my_gear_gloves) - 1;
            }
        }
        
        if button_selected = 2
        {
            my_misc_selected -= 1;
            if my_misc_selected < 0 
            {
            my_misc_selected = array_length_1d(my_gear_misc) - 1;
            }
        }
    }
    
}


if controller_object.show_gear = false
{
instance_destroy();
}

