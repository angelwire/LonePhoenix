if global.debug_character = false
{

if global.cowboy_base_number[global.my_base] != -1
{
draw_sprite(global.cowboy_base_number[global.my_base],image_index,x,y)
}

if global.cowboy_accessory_number[global.my_accessory] != -1
{
draw_sprite(global.cowboy_accessory_number[global.my_accessory],image_index,x,y)
}

if global.cowboy_hair_number[global.my_hair] != -1
{
draw_sprite(global.cowboy_hair_number[global.my_hair],image_index,x,y)
}

if global.cowboy_hat_number[global.my_hat] != -1
{
draw_sprite(global.cowboy_hat_number[global.my_hat],image_index,x,y)
}
}
else
{
draw_sprite(global.debug_sprite,image_index,x,y)
}
