/// @description draw_book(book_id)
/// @param book_id
var book,jj;
book = argument0;
rr = 0;

gotime = false;
repeat(ceil(string_height_ext(string_hash_to_newline(global.book_text[argument0]),10,152)/150)+1)
{
draw_sprite(notepad_background,0,__view_get( e__VW.XView,0),__view_get( e__VW.YView, 0 )+(150*rr)+book_scroll);
rr+=1;
}

if !font_exists(real_book_font)
{
real_book_font = font_add_sprite_ext(good_font_sprite_right," !|#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]^_`abcdefghijklmnopqrstuvwxyz{|}",1,1)
}
draw_set_font(real_book_font)
draw_set_color(global.original_dark)
draw_set_halign(fa_left)
draw_set_valign(fa_top)
draw_text_ext(__view_get( e__VW.XView, 0 )+4,__view_get( e__VW.YView, 0 )+1+book_scroll,string_hash_to_newline("#" + string(global.book_text[book])),10,152)

if down_is_pressed()
{
if book_scroll > -((string_height_ext(string_hash_to_newline(global.book_text[book]),10,152)-144)+20)
{
book_scroll -= 1
}
}

if up_is_pressed()
{
if book_scroll < 0
{
book_scroll += 1
}
}
