/// @description a_pressed_on_inventory(selection)
/// @param selection

var button = argument0;

/*
3 - medicine
4 - cactus
5 - coffee

items
6,   7, 8
9,  10, 11
12, 13, 14

15 - books
16 - map
17 - gear
18 - goods
*/
if !show_books and !show_gear and !show_goods and !show_map
{
a_pressed = false;
switch (button)
{
case 0:
case 1:
case 2: if (pause_page!= button) {audio_play_sound(note_sound,1,0); pause_page = button; } break;

case 3: use_health_potion(); break;
case 4: use_cactus_potion(); break;
case 5: use_coffee_potion(); break;

case 6: use_item(0); break;
case 7: use_item(0); break;
case 8: use_item(0); break;
case 9: use_item(0); break;
case 10: use_item(0); break;
case 11: use_item(0); break;
case 12: use_item(0); break;
case 13: use_item(0); break;
case 14: use_item(0); break;

case 15: show_books = true; break;
case 16: show_map = true; break;
case 17: show_gear = true; instance_create(__view_get( e__VW.XView, 0 ), __view_get( e__VW.YView, 0 ), gear_menu_controller); break;
case 18: show_goods = true; goods_filter = get_filtered_item_list(goods_item_filter,1); break;
}

}
