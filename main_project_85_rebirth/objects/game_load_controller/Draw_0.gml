/*
draw_set_font(book_font);
draw_set_halign(fa_center)
draw_set_valign(fa_middle)

c1 = global.original_light_inv;
c2 = global.original_med_dark_inv;
if game_file_exists
{
if selection = 0
{
draw_text_bordered(80,y,"Settings#> New <  Continue  Load",c1,c2,1,32,160);
}
else if selection = 1
{
draw_text_bordered(80,y,"Settings#New  > Continue <  Load",c1,c2,1,32,160);
}
else if selection = 2
{
draw_text_bordered(80,y,"Settings#New  Continue  > Load <",c1,c2,1,32,160);
}
}
else
{
draw_text_bordered(80,y,"Settings#> New Game <",c1,c2,1,32,160);
}
*/
draw_sprite(load_game_selection_sprite,0,sprite_place_x,sprite_place_y);

/* */
/*  */
