/// @description close_to(val1,val2,range)
/// @param val1
/// @param val2
/// @param range
//checks to see if to values are within the range of each other
var v1 = argument0;
var v2 = argument1;
var range = argument2;

if abs(v1-v2) <= range
{
    return true;
}
else
{
    return false;
}
