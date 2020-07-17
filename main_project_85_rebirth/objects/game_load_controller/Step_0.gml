a_pressed = a_is_new_pressed();
left_pressed = left_is_new_pressed();
right_pressed = right_is_new_pressed();
down_pressed = down_is_new_pressed();
up_pressed = up_is_new_pressed();

if loading_game = false
{
    if down_pressed
    {
    audio_play_sound(menu_cursor_move_sound,1,0);
    selection += 1;
    selection = clamp(selection,0,3);
    }
    
    if up_pressed
    {
    audio_play_sound(menu_cursor_move_sound,1,0);
    selection -= 1;
    selection = clamp(selection,0,3);
    }
    
    if a_pressed or start_is_new_pressed()
    {
        if selection = 0
        {
        //continue game
        audio_play_sound(null_sound,1,0);
        }
        if selection = 1
        {
        //new game
        room = intro_room;
        }
        if selection = 2
        {
        //load game
//        loading_game = true;
        audio_play_sound(null_sound,1,0);
        }
        if selection = 3
        {
        //settings
        audio_play_sound(null_sound,1,0);
        }
    }
}

sprite_place_x_goto = xplace[selection];
sprite_place_y_goto = yplace[selection];
sprite_place_x = merge_variable(sprite_place_x_goto,sprite_place_x,8);
sprite_place_y = merge_variable(sprite_place_y_goto,sprite_place_y,12);

//y = merge_variable(yto,y,1);

