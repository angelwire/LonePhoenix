if attacking = true
{
if (direction  = 0 and image_index-16 < 2)
or (direction = 90)
or (direction = 180 and (floor(image_index-16) = 10 or floor(image_index-16)=11))
{
draw_sprite(umbrella_sprite,image_index-16,x,y)
}
}

if global.girl_base_number[global.my_base] != -1
{
draw_sprite(global.girl_base_number[global.my_base],image_index,x,y)
}

if global.girl_hair_number[global.my_hair] != -1
{
draw_sprite(global.girl_hair_number[global.my_hair],image_index,x,y)
}

if global.girl_accessory_number[global.my_accessory] != -1
{
draw_sprite(global.girl_accessory_number[global.my_accessory],image_index,x,y)
}

if global.girl_hat_number[global.my_hat] != -1
{
draw_sprite(global.girl_hat_number[global.my_hat],image_index,x,y)
}

if attacking = true
{
if !((direction  = 0 and image_index-16 < 2)
or (direction = 90)
or (direction = 180 and (floor(image_index-16) = 10 or floor(image_index-16)=11)))
{
draw_sprite(umbrella_sprite,image_index-16,x,y)
}
}
