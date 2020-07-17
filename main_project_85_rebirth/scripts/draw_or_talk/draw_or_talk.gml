/// @description draw_or_talk(base, accessory, hair, hat, x, y)
/// @param base
/// @param  accessory
/// @param  hair
/// @param  hat
/// @param  x
/// @param  y
draw_sprite(or_base_talk_sprite,argument0,argument4, argument5)
draw_sprite(or_accessory_talk_sprite,argument1,argument4, argument5)

if argument3 !=3
{
if argument3 = 4
{
draw_sprite(or_hair_talk_sprite,argument2,argument4, argument5)
}
else
{
draw_sprite(or_hair_bottom_talk_sprite,argument2,argument4, argument5)
}
}

draw_sprite(or_hat_talk_sprite,argument3,argument4, argument5)
