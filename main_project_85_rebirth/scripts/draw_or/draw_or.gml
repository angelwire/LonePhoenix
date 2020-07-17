if global.or_base_number[global.my_base] != -1
{
draw_sprite(global.or_base_number[global.my_base],image_index,x,y)
}

if global.or_hair_number[global.my_hair] != -1
{
if global.or_hat_number[global.my_hat] != -1
{ 
draw_sprite(global.or_hair_bottom_number[global.my_hair],image_index,x,y)
}
else
{
draw_sprite(global.or_hair_number[global.my_hair],image_index,x,y)
}
}

if global.or_accessory_number[global.my_accessory] != -1
{
draw_sprite(global.or_accessory_number[global.my_accessory],image_index,x,y)
}

if global.or_hat_number[global.my_hat] != -1
{
draw_sprite(global.or_hat_number[global.my_hat],image_index,x,y)
}
