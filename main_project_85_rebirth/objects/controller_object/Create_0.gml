//global.character = sheriff_sprite;

view_offset_x = 0;
view_offset_y = 0;
x = -72
y = -72

book_scroll = 0

offx = 0;
offy = 0;
past_view_x = __view_get( e__VW.XView, 0 )
past_view_y = __view_get( e__VW.YView, 0 )
blur = -1;

menu_scroll = 0;
item_select = 0;
items_show = 0;
menu_select = 0;
menu_show = 0;
books_select = 0;
books_scroll = 0;
books_show = 0;

global.display_text = ""

global.qqon = false
global.qqtimer = 0
global.qqy = -16

global.grass = 0

pause_page = 0;
my_wave_timer = 0

//create the actor controller if one doesn't exists already
if !instance_exists(townsperson_controller)
{
instance_create(22,22,townsperson_controller)
}

item_popup_time = 0;
item_popup_line_item[5] = 0;
item_popup_line_number[5] = -1;
item_popup_line_number = clear_array(item_popup_line_number,-1)
item_popup_direction = 0;
item_popup_spot = 0;
item_popup_current = 0;
ani = 0;


alarm[0] = 10;
alarm[1] = 10;
deactivate_padding = 100;

globalvar player_health;
player_health = 50;

ae_init_bounce_variables();

b_pressed = false;
a_pressed = false;


//Menu stuff
show_books = false;
show_map = false;
show_gear = false;
show_goods = false;

//crafting stuff
set_crafting_variables();
craft_index = -1;

//item list stuff
show_item_list = false;
list_item_selected = -1;
list_item_is_chosen = false;
list_item_amount = 0;

//crafting stuff
material_amount = 0;
resource_1_amount = 0;
resource_2_amount = 0;

//Talking stuff
current_line = 0;
actor_talk_to = noone;
text_box_time = 0;
chosen_response = -1;
response_list_chosen = 0;
response_list_offset = 0;



