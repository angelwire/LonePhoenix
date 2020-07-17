
draw_sprite(custom_background,0,x+80,y)

if global.character = cowboy_sprite
{
draw_cowboy_talk(temp_base,temp_accessory,temp_hair,temp_hat,x+56,y+96)
}
if global.character = indian_sprite
{
draw_indian_talk(temp_base,temp_accessory,temp_hair,temp_hat,x+56,y+96)
}
if global.character = girl_sprite
{
draw_girl_talk(temp_base,temp_accessory,temp_hair,temp_hat,x+56,y+96)
}

if global.character = or_sprite
{
draw_or_talk(temp_base,temp_accessory,temp_hair,temp_hat,x+56,y+96)
}
draw_set_halign(fa_center);
draw_set_valign(fa_top);
draw_set_font(textbox_font);
draw_text_bordered(x+80,y+10,"Hat",make_color_rgb(9,25,33),make_color_rgb(230,255,214),1,16,96)
draw_text_bordered(x+80,y+30,"Hair",make_color_rgb(9,25,33),make_color_rgb(230,255,214),1,16,96)
draw_text_bordered(x+80,y+50,"Accessory",make_color_rgb(9,25,33),make_color_rgb(230,255,214),1,16,96)
draw_text_bordered(x+80,y+70,"Clothes",make_color_rgb(9,25,33),make_color_rgb(230,255,214),1,16,96)

draw_sprite(custom_arrow_sprite,1,x+20,y+((global.which+1)*20))
draw_sprite_ext(custom_arrow_sprite,1,x+140,y+((global.which+1)*20),-1,1,0,c_white,1)

