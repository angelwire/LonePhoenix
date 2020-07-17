ripple_index = global.time*.1;
image_index = ripple_index;
draw_self()
if sprite_index = ripple_sprite
{
if !top_left and !top_left_2
{
draw_sprite_ext(ripple_bank_sprite,ripple_index,x+32,y,-1,image_yscale,0,c_white,1)
}
if !top_right and !top_right_2
{
draw_sprite_ext(ripple_bank_sprite,ripple_index,x,y,1,image_yscale,0,c_white,1)
}
//ripple_index += .1
}

