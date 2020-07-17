/// @description Draw Things

if global.talking = true
{
draw_talking(actor_talk_to.my_id)

if b_pressed or a_pressed
{
next_talk();
a_pressed = false;
b_pressed = false;
}

}


///Draw overlay stuff

if global.show_collision_map = true
{
draw_set_alpha(.25)
mp_grid_draw(ds_grid_create_mp_grid(node_map_get_node_from_room(main_map,room),0,0,16,16))
draw_set_alpha(1)
}

draw_set_font(textbox_font)

//Draw Quest started
if global.qqon and gotime
{
draw_sprite(new_quest_sprite,0,__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 )+global.qqy)
if global.qqtimer != 0
{

if global.qqy  < 8
{
global.qqy +=1
}
else
{
if global.qqtimer > 0
{
global.qqtimer -=1
}
}

if global.qqy < -16
{
global.qqon = false
}

}

if global.qqtimer < 1
{
global.qqy -= 1;
}


}


if gotime = true //global.talking = false
{

with (player)
{
if show_bubble = true and instance_exists(andyman)
{
draw_sprite(speech_bubble_sprite,bubble_frame,andyman.x,andyman.y-16)
bubble_frame +=.3;
}
if show_action_bubble = true
{
draw_sprite(action_bubble_sprite,bubble_frame,bubble_x,max(bubble_y-16,14))
bubble_frame +=.3;
}

if charge_timer > 10
{
draw_sprite(charge_up_sprite,(charge_timer-10)/(20/8),x,y)
}

}

//draw_text(view_xview[0]+16,view_yview[0]+16,string(fps_real))

if global.spritey != -32
{
//draw_sprite(hud_sprite,health,view_xview[0],view_yview[0]+global.spritey)
if global.canhurt > 0
{
global.canhurt -=1;
}
}

if global.canhurt != 0
{
global.spritey = merge_variable(global.spriteyto,global.spritey,2)
}
else
{
global.spritey = merge_variable(-32,global.spritey,1)
}

//Check for stuff in barrels
if instance_exists(stuff_in_barrels)
{
with(stuff_in_barrels)
{
if collected != global.what_day
{
if point_distance(x,y,player.x+(cosine(player.direction)*8),player.y-(sine(player.direction)*8)) < 15 and collected = -1
{
can_grab = true;
draw_sprite(action_bubble_sprite,global.time/3,x,max(y,14));
}
else
{
can_grab = false;
}
}
else
{
can_grab = false;
}

}
}
}


if global.seeing_note = true
{
draw_background(note_background,__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ))
draw_set_halign(fa_center)
draw_text_bordered(__view_get( e__VW.XView, 0 )+80,__view_get( e__VW.YView, 0 )+16,global.note_show,make_color_rgb(9,25,33),make_color_rgb(230,255,214),1,16,96)
draw_set_halign(fa_left)
}

if player.sleeping_timer < 58 and player.sleeping = true and !instance_exists(game_over_controller)
{
draw_background(black_background,__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 )-player.sleeping_timer*3)
draw_background(black_background,__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 )+player.sleeping_timer*3)
}

///Draw item popup
item_popup_time +=item_popup_direction;

item_xoff = 14;
item_yoff = 16;
text_xoff = 26;
text_yoff = 8;

if item_popup_time > 0 //Drawing
{
if item_popup_line_number[item_popup_spot] > 0
{
draw_sprite(got_item_popup_sprite,0,__view_get( e__VW.XView, 0 )+90,__view_get( e__VW.YView, 0 )+144-clamp(item_popup_time,-3,24))
}
else
{
draw_sprite(lose_item_popup_sprite,0,__view_get( e__VW.XView, 0 )+90,__view_get( e__VW.YView, 0 )+144-clamp(item_popup_time,-3,24))
}

draw_sprite(item_get_ui_sprite(item_popup_line_item[item_popup_spot]),0,__view_get( e__VW.XView, 0 )+90+item_xoff,(__view_get( e__VW.YView, 0 )+144-clamp(item_popup_time,-3,24))+item_yoff)

if item_popup_line_item[item_popup_spot] != 8
{
draw_set_halign(fa_left)
draw_set_valign(fa_top)
draw_text_bordered(__view_get( e__VW.XView, 0 )+90+text_xoff,(__view_get( e__VW.YView, 0 )+144-clamp(item_popup_time,-3,24))+text_yoff," " + string(item_popup_line_number[item_popup_spot]),global.original_light,global.original_dark,1,16,140)
}
else
{
draw_set_halign(fa_left)
draw_set_valign(fa_top)
draw_text_bordered(__view_get( e__VW.XView, 0 )+90+text_xoff,(__view_get( e__VW.YView, 0 )+144-clamp(item_popup_time,-3,24))+text_yoff,@"# " + string(item_popup_line_number[item_popup_spot]),global.original_light,global.original_dark,1,16,140)
}

}

if item_popup_time <= 0  //Below screen
{
    if item_popup_direction != 0 //Just hit bottom
    {
    item_popup_direction = 0;
    item_popup_spot += 1;
        if item_popup_spot < array_length_1d(item_popup_line_number) and item_popup_line_number[item_popup_spot] != -1 
        {
        item_popup_direction = 1;
        show_debug_message("Going up");
        }
        else
        {
        item_popup_line_number = clear_array(item_popup_line_number,-1);
        item_popup_spot = 0;
        item_popup_current = 0;
        }
    }
    
    if (item_popup_line_number[item_popup_spot] != -1 and item_popup_spot = 0)
    {
    item_popup_direction = 1;
    show_debug_message("Going up");
    }
}



if item_popup_time > 40 //Hit top
{
    if item_popup_direction = 1 //Just hit top
    {
    item_popup_direction = -1;
    }
}

///draw menu

if paused = true and !instance_exists(game_over_controller)
{
draw_pause_menu()
}

///draw smithing menu
var xoff = __view_get( e__VW.XView, 0 );
var yoff = __view_get( e__VW.YView, 0 );

if show_crafting_menu = true
{
    crafting_menu_time +=1;
    draw_background(crafting_menu_background,xoff,yoff);
    
    //draw icons and text here

    /*
    material_id = -1;
    material_amount = 0;
    coal_amount = 0;
    resource_1_id = -1;
    resource_1_amount = 0;
    resource_2_id = -1;
    resource_2_amount = 0;
    */
    draw_set_font(real_book_font);
    if material_amount != 0
    {
    draw_set_halign(fa_right);
    draw_set_valign(fa_top);
    draw_sprite(item_get_ui_sprite(material_id),0,xoff+28,yoff+25);
    draw_text_bordered(xoff+39,yoff+31,string(material_amount),global.original_light,global.original_dark,1,-1,160);
    
        if item_to_be_crafted != -1
        {
        draw_set_halign(fa_center);
        draw_sprite(item_get_ui_sprite(item_to_be_crafted),0,xoff+25,yoff+71);
        draw_text_bordered(xoff+25,yoff+92,"Lv: " + string(clamp(item_to_be_crafted_level,1,10)),global.original_light,global.original_dark,1,-1,160);
        draw_set_valign(fa_middle);
        draw_text_bordered(xoff+68,yoff+42,string(needed_coal),global.original_light,global.original_dark,1,-1,160);
        
        //draw the value bar
        draw_set_color(global.original_light);
        draw_rectangle(xoff+97,yoff+36,xoff+97+floor(46*clamp(((current_value_1+current_value_2)/needed_value),0,1.01)),yoff+46,false);
        //draw the sprite if the value is good
        
        if (current_value_1 + current_value_2 >= needed_value)
        {
        draw_sprite(crafting_value_good_sprite,crafting_menu_time*(.1+(crafting_overkill*.2)), xoff+97,yoff+36)
        }
        
        draw_set_color(global.original_dark);
        draw_set_halign(fa_left);
        draw_set_valign(fa_top);
        draw_text_ext(xoff+48,yoff+59,string_hash_to_newline(gear_description),-1,100)
        
        draw_set_color(c_white);
        }
    }
    
    if coal_amount != 0
    {
    draw_set_halign(fa_right);
    draw_set_valign(fa_top);
    draw_sprite(coal_sprite,0,xoff+68,yoff+19);
    draw_text_bordered(xoff+79,yoff+25,string(coal_amount),global.original_light,global.original_dark,1,-1,160);
    }
    
    if resource_1_amount != 0
    {
    draw_set_halign(fa_right);
    draw_set_valign(fa_top);   
    draw_sprite(item_get_ui_sprite(resource_1_id),0,xoff+108,yoff+19);
    draw_text_bordered(xoff+118,yoff+25,string(resource_1_amount),global.original_light,global.original_dark,1,-1,160);
    }
    
    if resource_2_amount != 0
    {
    draw_set_halign(fa_right);
    draw_set_valign(fa_top);    
    draw_sprite(item_get_ui_sprite(resource_2_id),0,xoff+132,yoff+19);
    draw_text_bordered(xoff+143,yoff+25,string(resource_2_amount),global.original_light,global.original_dark,1,-1,160);
    }

    can_smith = (current_value_1 + current_value_2 >= needed_value) * (coal_amount >= needed_coal) * (item_to_be_crafted != 0);
    if can_smith
    {
    draw_sprite(craft_button_sprite,crafting_menu_time*.1,xoff+90,yoff+122);
    }

    with(crafting_menu_controller)
    {
    ae_draw_menu_cursor(menu_cursor_sprite);
    }
    
    
}

/* */
///draw gear menu
var xoff = __view_get( e__VW.XView, 0 );
var yoff = __view_get( e__VW.YView, 0 );

if show_gear = true
{

    draw_background(gear_menu_background,xoff,yoff);
    

    draw_set_font(real_book_font);
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);

     with(gear_menu_controller)
    {
        if selection = 0
        {
        draw_sprite(arrow_menu_sprite_empty,0,x+28,y+27);
        draw_sprite_ext(arrow_menu_sprite_empty,0,x+28,y+28,1,-1,0,c_white,1);
        }
        if selection = 1
        {
        draw_sprite(arrow_menu_sprite_empty,0,x+78,y+27);
        draw_sprite_ext(arrow_menu_sprite_empty,0,x+78,y+28,1,-1,0,c_white,1);
        }
        if selection = 2
        {
        draw_sprite(arrow_menu_sprite_empty,0,x+128,y+27);
        draw_sprite_ext(arrow_menu_sprite_empty,0,x+128,y+28,1,-1,0,c_white,1);
        }
        
        if selection = 3
        {
        draw_sprite(menu_cursor_sprite,0,x+93,y+125);
        draw_sprite(menu_cursor_sprite,1,x+148,y+125);
        draw_sprite(menu_cursor_sprite,2,x+148,y+138);
        draw_sprite(menu_cursor_sprite,3,x+93,y+138);                        
        }
        
        if my_shirt_selected != 0
        {
        draw_sprite(item_get_ui_sprite(my_gear_shirt[my_shirt_selected]),0,x+28,y+27);
            if selection = 0
            {
                draw_sprite(item_get_ui_sprite(my_gear_shirt[my_shirt_selected]),0,x+25,y+71);
                //draw level
                draw_set_valign(fa_middle);
                draw_set_halign(fa_center);                 
                draw_text_bordered(x+25,y+95,"Lv: " + string(global.items[my_gear_shirt[my_shirt_selected]]),global.original_light,global.original_dark,1,-1,64);
                //draw description
                draw_set_valign(fa_top);
                draw_set_halign(fa_left);    
                draw_set_color(global.original_dark)            
                draw_text_ext(x+48,y+59,string_hash_to_newline(get_gear_description(my_gear_shirt[my_shirt_selected],global.items[my_gear_shirt[my_shirt_selected]])),-1,100)
                draw_set_color(c_white)
            }
        
        }
        else
        {
        draw_sprite(shirt_ui_sprite,0,x+28,y+27);
        }
        
        if my_gloves_selected != 0
        {
        draw_sprite(item_get_ui_sprite(my_gear_gloves[my_gloves_selected]),0,x+78,y+27);
        
        if selection = 1
            {
                draw_sprite(item_get_ui_sprite(my_gear_gloves[my_gloves_selected]),0,x+25,y+71);
                //draw level
                draw_set_valign(fa_middle);
                draw_set_halign(fa_center);  
                draw_text_bordered(x+25,y+95,"Lv: " + string(global.items[my_gear_gloves[my_gloves_selected]]),global.original_light,global.original_dark,1,-1,64);
                //draw description
                draw_set_valign(fa_top);
                draw_set_halign(fa_left);
                draw_set_color(global.original_dark)                 
                draw_text_ext(x+48,y+59,string_hash_to_newline(get_gear_description(my_gear_gloves[my_gloves_selected],global.items[my_gear_gloves[my_gloves_selected]])),-1,100)
                draw_set_color(c_white)                
            }
        }
        else
        {
        draw_sprite(gloves_ui_sprite,0,x+78,y+27);
        }
        
        if my_misc_selected != 0
        {
        draw_sprite(item_get_ui_sprite(my_gear_misc[my_misc_selected]),0,x+128,y+27);
        
        if selection = 2
            {
                draw_sprite(item_get_ui_sprite(my_gear_misc[my_misc_selected]),0,x+25,y+71);
                //draw level
                draw_set_valign(fa_middle);
                draw_set_halign(fa_center);  
                draw_text_bordered(x+25,y+95,"Lv: " + string(global.items[my_gear_misc[my_misc_selected]]),global.original_light,global.original_dark,1,-1,64);
                //draw description
                draw_set_valign(fa_top);
                draw_set_halign(fa_left);
                draw_set_color(global.original_dark)                 
                draw_text_ext(x+48,y+59,string_hash_to_newline(get_gear_description(my_gear_misc[my_misc_selected],global.items[my_gear_misc[my_misc_selected]])),-1,100)
                draw_set_color(c_white)                
            }
        }
        else
        {
        draw_sprite(misc_ui_sprite,0,x+128,y+27);
        }
    }
    
    
    
    if gear_menu_controller.button_selected == 0
    {
    draw_sprite(arrow_menu_sprite,0,xoff+28,yoff+27);
    draw_sprite_ext(arrow_menu_sprite,0,xoff+28,yoff+28,1,-1,0,c_white,1);
    }
    if gear_menu_controller.button_selected == 1
    {
    draw_sprite(arrow_menu_sprite,0,xoff+78,yoff+27);
    draw_sprite_ext(arrow_menu_sprite,0,xoff+78,yoff+28,1,-1,0,c_white,1);
    }
    if gear_menu_controller.button_selected == 2
    {
    draw_sprite(arrow_menu_sprite,0,xoff+128,yoff+27);
    draw_sprite_ext(arrow_menu_sprite,0,xoff+128,yoff+28,1,-1,0,c_white,1);
    }
    
}

/* */
///draw health popup
if ae_bounce_timer > 0
{
var xoff = __view_get( e__VW.XView, 0 ) + ae_bounce_position(1) + 3;
var yoff = __view_get( e__VW.YView, 0 );
draw_sprite(health_bar_sprite,(player_health > 50),xoff-3,yoff);

    if player_health < 50
    {
        draw_set_color(make_color_rgb(49,107,82));
        draw_rectangle(xoff-16,yoff+3,(xoff-16)+5,yoff+3+ (50-clamp(player_health,0,50)),false);
        draw_set_color(c_white);
    }
    else if player_health > 50 and player_health < 75
    {
/*        draw_set_color(make_color_rgb(49,107,82));
        draw_rectangle(xoff-16,yoff+3,(xoff-16)+7,yoff+3+ (50-((player_health-50)*2)),false);
        draw_set_color(c_white);
        
*/
    draw_sprite_ext(health_bar_sprite,2,xoff-3,yoff+3,1,75-clamp(player_health,0,75),0,c_white,1);
    }
}

/* */
///draw the item list
if show_item_list
{
draw_item_list_smithing(current_item_filter);
}

if show_goods
{
draw_goods_list(goods_filter);
}

/* */
///draw successful craft
if craft_index >= 0
{
draw_sprite(craft_popup_sprite,clamp(craft_index,0,sprite_get_number(craft_popup_sprite)-1),__view_get( e__VW.XView, 0 ) + (__view_get( e__VW.WView, 0 )/2),__view_get( e__VW.YView, 0 ) + (__view_get( e__VW.HView, 0 )/2))

craft_index += .2;
}

if craft_index > sprite_get_number(craft_popup_sprite)*3
{
craft_index = -1;
}

/* */
///draw actor paths
var act = 0;
repeat(total_actors)
{
    if actor_show_path[act]
    {
    draw_actor_path(act);
    }
act +=1;
}

/* */
/*  */
