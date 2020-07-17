/// @description values_in_range(v1,v2,min1,max1,min2,max2)
/// @param v1
/// @param v2
/// @param min1
/// @param max1
/// @param min2
/// @param max2

var xx = argument0;
var yy = argument1;

var minx = argument2;
var maxx = argument3;

var miny = argument4;
var maxy = argument5;

if xx >= minx and xx <= maxx and yy>=miny and yy <= maxy
{
return true;
}
else
{
return false;
}
