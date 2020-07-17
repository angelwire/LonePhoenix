
var xt = argument0;
var yt = argument1;

xt = __view_get( e__VW.XView, 0 );
yt = __view_get( e__VW.YView, 0 );

draw_set_halign(fa_left)
draw_set_valign(fa_top)

draw_background(inventory_background,__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ))


string(clamp(item_count(6),0,99))
//draw potion amounts
draw_text_bordered(xt+21,yt+35,"x",global.original_light,global.original_dark,1,0,200);
draw_text_bordered(xt+72,yt+35,"x",global.original_light,global.original_dark,1,0,200);
draw_text_bordered(xt+123,yt+35,"x",global.original_light,global.original_dark,1,0,200);

draw_set_halign(fa_right);
draw_text_bordered(xt+21+28,yt+35,string(clamp(item_count(6),0,99)),global.original_light,global.original_dark,1,0,200);
draw_text_bordered(xt+72+28,yt+35,string(clamp(item_count(7),0,99)),global.original_light,global.original_dark,1,0,200);
draw_text_bordered(xt+123+28,yt+35,string(clamp(item_count(14),0,99)),global.original_light,global.original_dark,1,0,200);


with(inventory_menu_controller)
{
ae_draw_menu_cursor(menu_cursor_sprite);
}

if show_books
{
draw_books(xt,yt);
}
else
{
global.draw_book = false;
}

if show_map
{
draw_map();
}

if b_pressed
{
show_books = false;
show_map = false;
show_goods = false;
show_gear = false;
b_pressed = false;
}

if a_pressed
{
show_map = false;
a_pressed = false;
}
