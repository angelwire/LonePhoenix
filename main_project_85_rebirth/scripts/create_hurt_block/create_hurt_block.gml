/// @description create_hurt_block(x,y,width,height,time,hurt,distance,direction,parent_object)
/// @param x
/// @param y
/// @param width
/// @param height
/// @param time
/// @param hurt
/// @param distance
/// @param direction
/// @param parent_object
var xx,yy,ww,hh,tt,hurt,dd,dir,parent;
xx = argument0;
yy = argument1;
ww = argument2;
hh = argument3;
tt = argument4;
hurt = argument5;
dd = argument6;
dir = argument7;
par = argument8

var blocky = instance_create(xx,yy,hurt_block);

blocky.width = ww;
blocky.height = hh;
blocky.disappear_time = tt;
blocky.hurt_amount = hurt;
blocky.knockback_distance = dd;
blocky.knockback_direction = dir;
blocky.parent_object = par;
