/// @description draw_item_list_smithing(array);
/// @param array
var display_array = argument0;
var item_display_height = 24;
var ii = 0;

var y_selection_offset;
y_selection_offset = (-(72 - (item_display_height/2))) + (list_item_selected*item_display_height);

var centered_offset = 10;

draw_set_font(book_font);
draw_set_halign(fa_left);
draw_set_valign(fa_middle);
draw_background(plain_color_background,__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ));

if display_array[0] != -1
{
    repeat(array_length_1d(display_array))
    {
    draw_sprite(item_number_sprite,(list_item_selected == ii)+(list_item_is_chosen*(list_item_selected == ii)),__view_get( e__VW.XView, 0 )+centered_offset,__view_get( e__VW.YView, 0 )+(ii*item_display_height)-y_selection_offset);
    draw_sprite(item_get_ui_sprite(display_array[ii]),0,__view_get( e__VW.XView, 0 )+24+centered_offset,2+__view_get( e__VW.YView, 0 )+(ii*item_display_height)+(item_display_height/2)-y_selection_offset);
    draw_text_bordered(__view_get( e__VW.XView, 0 ) + 40 + centered_offset,2+__view_get( e__VW.YView, 0 )+(ii*item_display_height)+(item_display_height/2)-y_selection_offset, "x " + string(useable_items[display_array[ii]]),global.original_light,global.original_dark,1,10,200);
    ii+=1;
    }
}

if !list_item_is_chosen
{
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
    
    if b_pressed
    {
    show_item_list = false;
    }
    
    
    if a_pressed
    {
    list_item_is_chosen = true;
    }
}
else //if the item has been chosen
{
    //control the amount selected
    if right_is_new_pressed()
    {
    list_item_amount += 1;
    }
    if left_is_new_pressed()
    {
    list_item_amount -= 1;
    }
    list_item_amount = clamp(list_item_amount,0,useable_items[display_array[list_item_selected]]);
    
    
    if b_pressed
    {
    list_item_is_chosen = false;
    list_item_amount = 0;
    }
    /*
    material_id = -1;
    material_amount = 0;
    coal_amount = 0;
    resource_1_id = -1;
    resource_1_amount = 0;
    resource_2_id = -1;
    resource_2_amount = 0;
    */
    if a_pressed
    {
        //set appropriate crafting variables here, man.
        switch(crafting_menu_controller.selection)
        {
            case 0: material_id = display_array[list_item_selected]; material_amount = list_item_amount; 
            switch (material_id)
            {
            case 1: item_to_be_crafted = 23; item_to_be_crafted_level = clamp(material_amount,0,10); break;
            case 2: item_to_be_crafted = 18; item_to_be_crafted_level = clamp(material_amount,0,10); break;
            case 5: item_to_be_crafted = 17; item_to_be_crafted_level = clamp(material_amount,0,10); break;
            case 9: item_to_be_crafted = 16; item_to_be_crafted_level = clamp(material_amount,0,10); break;            
            case 10: item_to_be_crafted = 22; item_to_be_crafted_level = clamp(material_amount,0,10); break;
            case 11: item_to_be_crafted = 20; item_to_be_crafted_level = clamp(material_amount,0,10); break;
            case 12: item_to_be_crafted = 19; item_to_be_crafted_level = clamp(material_amount,0,10); break;
            case 13: item_to_be_crafted = 24; item_to_be_crafted_level = clamp(material_amount,0,10); break;
            case 15: item_to_be_crafted = 21; item_to_be_crafted_level = clamp(material_amount,0,10); break;            
            default: item_to_be_crafted = -1; item_to_be_crafted_level = 0; break;
            }
            if item_to_be_crafted_level > 0
            {
            needed_coal = get_needed_coal_amount(material_id,material_amount);
            needed_value = get_needed_value_amount(material_id,material_amount);
            gear_description = get_gear_description(item_to_be_crafted,item_to_be_crafted_level);
            useable_items[material_id] -= material_amount;
            }
            else
            {
            needed_coal = 0;
            useable_items[3] += coal_amount;
            coal_amount = 0;
            item_to_be_crafted = 0;
            }
            
            break;
            case 1: coal_amount = list_item_amount; break;
            
            case 2: resource_1_id = display_array[list_item_selected]; resource_1_amount = list_item_amount; current_value_1 = get_value_of_items(resource_1_id,resource_1_amount);
            if get_value_of_items(resource_1_id,resource_1_amount-1) + current_value_2 > needed_value
            {
            crafting_overkill = true;
            }
            else
            {
            crafting_overkill = false
            }
            useable_items[resource_1_id] -= resource_1_amount;
            break;
            
            case 3: resource_2_id = display_array[list_item_selected]; resource_2_amount = list_item_amount; current_value_2 = get_value_of_items(resource_2_id,resource_2_amount);
            if get_value_of_items(resource_2_id,resource_2_amount-1) + current_value_1 > needed_value
            {
            crafting_overkill = true;
            }
            else
            {
            crafting_overkill = false;
            }
            useable_items[resource_2_id] -= resource_2_amount;
            break;
        }
        list_item_amount = 0;
        list_item_is_chosen = false;
        show_item_list = false;
    }
    
    //draw the numbers and stuff
    draw_set_halign(fa_center)
    draw_set_valign(fa_middle)
    draw_sprite(item_select_count_sprite,0,__view_get( e__VW.XView, 0 )+100,__view_get( e__VW.YView, 0 )+72);
    draw_text_bordered(__view_get( e__VW.XView, 0 )+101,__view_get( e__VW.YView, 0 )+73,list_item_amount,global.original_light,global.original_dark,1,-1,160);
}


