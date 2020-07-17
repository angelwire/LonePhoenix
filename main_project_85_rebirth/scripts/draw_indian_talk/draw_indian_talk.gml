/// @description draw_indian_talk(base, accessory, hair, hat, x, y)
/// @param base
/// @param  accessory
/// @param  hair
/// @param  hat
/// @param  x
/// @param  y
draw_sprite(indian_base_talk_sprite,argument0,argument4, argument5)
draw_sprite(indian_accessory_talk_sprite,argument1,argument4, argument5)
if argument3 = 1 or argument3 = 2
{
draw_sprite(indian_hair_down_sprite,argument2,argument4, argument5)
}
else
{
draw_sprite(indian_hair_talk_sprite,argument2,argument4, argument5)
}
draw_sprite(indian_hat_talk_sprite,argument3,argument4, argument5)
