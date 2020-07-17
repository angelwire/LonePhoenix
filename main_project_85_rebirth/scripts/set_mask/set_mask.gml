/// @description set_mask(x1,y1,x2,y2)
/// @param x1
/// @param y1
/// @param x2
/// @param y2
x1 = argument0;
y1 = argument1;
x2 = argument2;
y2 = argument3;

var jacky;

jacky = instance_create(x+x1,y+y1,block_object)

jacky.image_xscale = (x2-x1)/jacky.sprite_width
jacky.image_yscale = (y2-y1)/jacky.sprite_height
