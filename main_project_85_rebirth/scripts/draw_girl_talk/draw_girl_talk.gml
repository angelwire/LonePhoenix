/// @description draw_girl_talk(base, accessory, hair, hat, x, y)
/// @param base
/// @param  accessory
/// @param  hair
/// @param  hat
/// @param  x
/// @param  y
draw_sprite(girl_base_talk_sprite,argument0,argument4, argument5)

if !(((argument2 = 0 or argument2 = 1 or argument2 = 3 or argument2 = 4 or argument2 = 6) and argument1 = 1 ))
if !(argument3 = 0/**/ and argument1 = 1)
draw_sprite(girl_accessory_talk_sprite,argument1,argument4, argument5)

if argument3 = 1 or argument3 = 3 or argument3 = 5 or argument3 = 6/*6 means empty frame for argument3*/
{
if !(argument3 = 0/**/ and (argument2 = 2 or argument2 = 3 or argument2 = 4 or argument2 = 5 or argument2 = 6))
if !(argument3 = 1/**/ or argument3 = 3/**/)
draw_sprite(girl_hair_talk_sprite,argument2,argument4, argument5)
}
else
{
draw_sprite(girl_hair_talk_bottom_sprite,argument2,argument4, argument5)
}

draw_sprite(girl_hat_talk_sprite,argument3,argument4, argument5)
