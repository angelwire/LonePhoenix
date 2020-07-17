/// @description draw_talking(actor)
/// @param actor



//-------- Draw characters ----------
if global.character = cowboy_sprite
{
draw_cowboy_talk(global.my_base,global.my_accessory,global.my_hair,global.my_hat,__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 )+96)
}
if global.character = indian_sprite
{
draw_indian_talk(global.my_base,global.my_accessory,global.my_hair,global.my_hat,__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 )+96)
}
if global.character = or_sprite
{
draw_or_talk(global.my_base,global.my_accessory,global.my_hair,global.my_hat,__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 )+96)
}
if global.character = girl_sprite
{
draw_girl_talk(global.my_base,global.my_accessory,global.my_hair,global.my_hat,__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 )+96)
}

if line_actor_display[current_line] != -1
{
draw_sprite(portraits_sprite,line_actor_display[current_line],__view_get( e__VW.XView, 0 )+112,__view_get( e__VW.YView, 0 )+96)
}
else
{
draw_sprite(portraits_sprite,argument0,__view_get( e__VW.XView, 0 )+112,__view_get( e__VW.YView, 0 )+96)
}
//---------- end draw characters ------



//------------ draw responses -------------
draw_set_font(real_book_font);
draw_set_color(global.original_light);
draw_set_halign(fa_center)
draw_set_valign(fa_middle)

response_list_offset = merge_variable(response_list_chosen*-24,response_list_offset,2)

if line_is_question[current_line] = true
{
loop = 0;
    repeat(array_length_2d(line_question_response,current_line))
    {
        if line_question_response[current_line,loop] == ""
        {
        break;
        }
    draw_sprite(response_sprite,(response_list_chosen == loop),__view_get( e__VW.XView, 0 )+80,__view_get( e__VW.YView, 0 )+120+response_list_offset+(loop*24));
    if (response_list_chosen == loop)    
    {
    draw_set_color(global.original_light);
    }
    else
    {
    draw_set_color(global.original_med_light);
    }
    draw_text(__view_get( e__VW.XView, 0 )+80,__view_get( e__VW.YView, 0 )+120+response_list_offset+(loop*24),string_hash_to_newline(line_question_response[current_line,loop]))
    loop += 1;
    }

    
    if up_is_new_pressed()
    {
        response_list_chosen -= 1;
        if response_list_chosen < 0
        {
        response_list_chosen += loop;
        }
    
    }
    if down_is_new_pressed()
    {
        response_list_chosen += 1;
        if response_list_chosen >= loop
        {
        response_list_chosen = 0;
        }
    }
    
}
//------------ end draw responses -------------




//-------- draw text box ----------
draw_set_halign(fa_left)
draw_set_valign(fa_top)
draw_set_alpha(1)
draw_set_color($211909)
if line_is_player[current_line] = false
{
draw_sprite(speech_bubble_ui_sprite,0,__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )*.5,__view_get( e__VW.YView, 0 ))
}
else
{
draw_sprite_ext(speech_bubble_ui_sprite,0,__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )*.5,__view_get( e__VW.YView, 0 ),-1,1,0,c_white,1)
}

if cut_out_spaces(line_text[current_line]) = "" or line_check_quest_extra[current_line] != -1or line_check_quest[current_line] != -1
{
    next_talk();
}
draw_text_in_box(line_text[current_line]);
//-------- end draw text box ----------
