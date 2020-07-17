/// @description draw_item_list_smithing(array);
/// @param array
var display_array = argument0;
var item_display_height = 24;
var ii = 0;

var y_selection_offset;

list_item_selected = clamp(list_item_selected,0,array_length_1d(display_array)-1);

y_selection_offset = (-(72 - (item_display_height/2))) + (list_item_selected*item_display_height);

var centered_offset = 10;

draw_set_font(book_font);
draw_set_halign(fa_left);
draw_set_valign(fa_middle);

if display_array[0] != -1
{
draw_background(map_menu_background_back,__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ));
    repeat(array_length_1d(display_array))
    {
    draw_sprite(item_number_sprite,0,__view_get( e__VW.XView, 0 )+centered_offset,__view_get( e__VW.YView, 0 )+(ii*item_display_height)-y_selection_offset);
    draw_sprite(item_get_ui_sprite(display_array[ii]),0,__view_get( e__VW.XView, 0 )+24+centered_offset,2+__view_get( e__VW.YView, 0 )+(ii*item_display_height)+(item_display_height/2)-y_selection_offset);
    draw_text_bordered(__view_get( e__VW.XView, 0 ) + 40 + centered_offset,2+__view_get( e__VW.YView, 0 )+(ii*item_display_height)+(item_display_height/2)-y_selection_offset, "x " + string(global.items[display_array[ii]]),global.original_light,global.original_dark,1,10,200);
    ii+=1;
    }
}
else
{
draw_background(item_menu_empty,__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ));
}

    if up_is_new_pressed()
    {
    list_item_selected -= 1;
    
    list_item_selected = clamp(list_item_selected,0,array_length_1d(display_array)-1);
    }
    
    
    if down_is_new_pressed()
    {
    list_item_selected += 1;
    
    list_item_selected = clamp(list_item_selected,0,array_length_1d(display_array)-1);
    }
    
    if b_pressed or a_pressed
    {
    show_goods = false;
    }
