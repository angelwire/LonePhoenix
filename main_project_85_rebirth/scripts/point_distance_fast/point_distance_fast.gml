/// @description point_distance_fast(x1,y1,x2,y2)
/// @param x1
/// @param y1
/// @param x2
/// @param y2
/*
returns the square of the distance between two points
It's much faster, but obviously not correct
It works for comparing multiple distances with each other
*/

var x1,y1,x2,y2;
x1 = argument0;
y1 = argument1;
x2 = argument2;
y2 = argument3;

return power(x2-x1,2) + power(y2-y1,2);
