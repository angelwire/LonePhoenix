if down_is_new_pressed()
{
global.which +=1
if global.which = 4
{
global.which = 0
}
}

if up_is_new_pressed()
{
global.which -=1
if global.which = -1
{
global.which = 3
}
}

if left_is_new_pressed()
{
if global.which = 0
{
temp_hat -= 1
}
if global.which = 1
{
temp_hair -= 1
}
if global.which = 2
{
temp_accessory -= 1
}
if global.which = 3
{
temp_base -= 1
}
}

if right_is_new_pressed()
{
if global.which = 0
{
temp_hat += 1
}
if global.which = 1
{
temp_hair += 1
}
if global.which = 2
{
temp_accessory += 1
}
if global.which = 3
{
temp_base += 1
}
}

if global.character = cowboy_sprite
{
if temp_hat < 0
{
temp_hat = sprite_get_number(cowboy_hat_talk_sprite)-1
}

if temp_hair < 0
{
temp_hair = sprite_get_number(cowboy_hair_talk_sprite)-1
}

if temp_accessory < 0
{
temp_accessory = sprite_get_number(cowboy_accessory_talk_sprite)-1
}

if temp_base < 0
{
temp_base = sprite_get_number(cowboy_base_talk_sprite)-1
}


if temp_hat > sprite_get_number(cowboy_hat_talk_sprite)-1
{
temp_hat = 0
}

if temp_hair > sprite_get_number(cowboy_hair_talk_sprite)-1
{
temp_hair = 0
}

if temp_accessory > sprite_get_number(cowboy_accessory_talk_sprite)-1
{
temp_accessory = 0
}

if temp_base > sprite_get_number(cowboy_base_talk_sprite)-1
{
temp_base = 0
}
}

if global.character = indian_sprite
{
if temp_hat < 0
{
temp_hat = sprite_get_number(indian_hat_talk_sprite)-1
}

if temp_hair < 0
{
temp_hair = sprite_get_number(indian_hair_talk_sprite)-1
}

if temp_accessory < 0
{
temp_accessory = sprite_get_number(indian_accessory_talk_sprite)-1
}

if temp_base < 0
{
temp_base = sprite_get_number(indian_base_talk_sprite)-1
}


if temp_hat > sprite_get_number(indian_hat_talk_sprite)-1
{
temp_hat = 0
}

if temp_hair > sprite_get_number(indian_hair_talk_sprite)-1
{
temp_hair = 0
}

if temp_accessory > sprite_get_number(indian_accessory_talk_sprite)-1
{
temp_accessory = 0
}

if temp_base > sprite_get_number(indian_base_talk_sprite)-1
{
temp_base = 0
}
}

if global.character = girl_sprite
{
if temp_hat < 0
{
temp_hat = sprite_get_number(girl_hat_talk_sprite)-1
}

if temp_hair < 0
{
temp_hair = sprite_get_number(girl_hair_talk_sprite)-1
}

if temp_accessory < 0
{
temp_accessory = sprite_get_number(girl_accessory_talk_sprite)-1
}

if temp_base < 0
{
temp_base = sprite_get_number(girl_base_talk_sprite)-1
}


if temp_hat > sprite_get_number(girl_hat_talk_sprite)-1
{
temp_hat = 0
}

if temp_hair > sprite_get_number(girl_hair_talk_sprite)-1
{
temp_hair = 0
}

if temp_accessory > sprite_get_number(girl_accessory_talk_sprite)-1
{
temp_accessory = 0
}

if temp_base > sprite_get_number(girl_base_talk_sprite)-1
{
temp_base = 0
}
}

if global.character = or_sprite
{
if temp_hat < 0
{
temp_hat = sprite_get_number(or_hat_talk_sprite)-1
}

if temp_hair < 0
{
temp_hair = sprite_get_number(or_hair_talk_sprite)-1
}

if temp_accessory < 0
{
temp_accessory = sprite_get_number(or_accessory_talk_sprite)-1
}

if temp_base < 0
{
temp_base = sprite_get_number(or_base_talk_sprite)-1
}


if temp_hat > sprite_get_number(or_hat_talk_sprite)-1
{
temp_hat = 0
}

if temp_hair > sprite_get_number(or_hair_talk_sprite)-1
{
temp_hair = 0
}

if temp_accessory > sprite_get_number(or_accessory_talk_sprite)-1
{
temp_accessory = 0
}

if temp_base > sprite_get_number(or_base_talk_sprite)-1
{
temp_base = 0
}
}

if a_is_new_pressed() or b_is_new_pressed()
{
global.my_hat = temp_hat
global.my_hair = temp_hair
global.my_accessory = temp_accessory
global.my_base = temp_base
gotime = true
instance_destroy()
}
/*
if b_is_new_pressed()
{
gotime = true
instance_destroy()
}
*/

/* */
/*  */
