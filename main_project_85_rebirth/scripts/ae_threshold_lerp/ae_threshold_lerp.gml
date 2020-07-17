/// @description ae_threshold_lerp(val1,val2,amount,threshold)
/// @param val1
/// @param val2
/// @param amount
/// @param threshold
var v1,v2,am,th,value;

v1 = argument0;
v2 = argument1;
am = argument2;
th = argument3;
 
value = lerp(v1,v2,am);

if abs(v1-v2) < th
{
return v2;
}
else
{
return lerp(v1,v2,am);
}
