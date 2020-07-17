/// @description ae_interpolate_variable(val1,min1,max1,min2,max2)
/// @param val1
/// @param min1
/// @param max1
/// @param min2
/// @param max2
var val1, min1, max1, min2, max2;
val1 = argument0;
min1 = argument1;
max1 = argument2;
min2 = argument3;
max2 = argument4;

return ( (val1 - min1) / (max1-min1) ) * (max2 - min2) + min2;
