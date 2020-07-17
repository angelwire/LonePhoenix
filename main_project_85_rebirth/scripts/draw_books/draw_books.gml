var xt = argument0;
var yt = argument1;
xt = __view_get( e__VW.XView, 0 );

draw_background(map_menu_background_back,__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ))
draw_set_font(real_book_font)
draw_set_halign(fa_left)
draw_set_valign(fa_middle)

if global.draw_book = false
{
if up_is_new_pressed()
{
books_select -= 1;
}
if down_is_new_pressed()
{
books_select += 1;
}
}
books_select = clamp(books_select,0,books_show);
books_scroll = -clamp(books_select,0,clamp(books_show-3,0,100))*24;
books_selected = -1;
books_show = 0;

var bd = 0;
repeat(array_length_1d(global.book_text))
{
if book_unlocked[bd]
{
yt = __view_get( e__VW.YView, 0 )+(24*books_show)+books_scroll;
if book_opened[bd] = false
{
draw_sprite(book_list_sprite_unread,(books_select == books_show),xt,yt)
draw_text_bordered(xt+27,yt+13,"# " + string(bd),global.original_light,global.original_dark,1,10,130)
}
else
{
draw_sprite(book_list_sprite,(books_select == books_show),xt,yt)
draw_text_bordered(xt+27,yt+13,string(get_book_title(bd)),global.original_light,global.original_dark,1,10,130)
}
draw_sprite(book_button_sprite,0,xt+14,yt+12)

if books_select == books_show
{
books_selected = bd;
}
books_show += 1;
}
bd += 1;
}
books_show -= 1;
draw_set_halign(fa_center)

if a_pressed
{

if books_selected != -1
{
if book_opened[books_selected] = false
{
book_opened[books_selected] = true;
audio_play_sound(note_sound,100,0)
}
else
{
book_scroll = 0;
global.draw_book = true;
global.show_book_id = books_selected;
}
}
}


if global.draw_book = true
{
show_book(global.show_book_id)
}

