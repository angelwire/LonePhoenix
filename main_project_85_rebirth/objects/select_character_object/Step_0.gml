alarm[0] -= 1;
if l_is_pressed() and r_is_pressed() and select_is_pressed()
{
game_end()
}

if move_down = true
{   
    if down_is_new_pressed()
    {
    audio_play_sound(menu_cursor_move_sound,1,0);
    if global.selectcharacter < 3  and global.selectcharacter != 1
    global.selectcharacter += 1
    }
    
    if up_is_new_pressed()
    {
    audio_play_sound(menu_cursor_move_sound,1,0);
    if global.selectcharacter > 0 and global.selectcharacter != 2
    global.selectcharacter -= 1
    }
    
    if right_is_new_pressed()
    {
    audio_play_sound(menu_cursor_move_sound,1,0);
    if global.selectcharacter < 2
    global.selectcharacter += 2
    }
    
    if left_is_new_pressed()
    {
    audio_play_sound(menu_cursor_move_sound,1,0);
    if global.selectcharacter > 1
    global.selectcharacter -= 2
    }
    
    if (a_is_new_pressed() or start_is_new_pressed()) and alarm[0] < 1
    {
    
        if global.selectcharacter = 0
        {
        global.character = cowboy_sprite
        global.my_hat = 0
        global.my_hair = 0
        global.my_accessory = 0
        global.my_base = 0
        }
        if global.selectcharacter = 1
        {
        global.character = indian_sprite
        global.my_hat = 0
        global.my_hair = 1
        global.my_accessory = 2
        global.my_base = 0
        }
        if global.selectcharacter = 2
        {
        global.character = girl_sprite
        global.my_hat = 0
        global.my_hair = 0
        global.my_accessory = 5
        global.my_base = 0
        }
        
        if global.selectcharacter = 3
        {
        global.character = or_sprite
        global.my_hat = 4
        global.my_hair = 5
        global.my_accessory = 3
        global.my_base = 0
        }
        
        if global.character = cowboy_sprite
        {
        global.fakecharacter = 1
        }
        if global.character = indian_sprite
        {
        global.fakecharacter = 2
        }
        if global.character = girl_sprite
        {
        global.fakecharacter = 3
        }
        if global.character = or_sprite
        {
        global.fakecharacter = 4
        }
        room = dream_room;
    }
          
    draw_y += 1;
}

if a_is_new_pressed() or b_is_new_pressed()
{
move_down = true;
}

if global.selectcharacter < 0
{
global.selectcharacter += 4

}

if global.selectcharacter > 3
{
global.selectcharacter -= 4
}

