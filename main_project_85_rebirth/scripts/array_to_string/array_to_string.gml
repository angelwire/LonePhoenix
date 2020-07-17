/// @description array_to_string(array)
/// @param array
var temp, array, ii;
array = argument0;
ii = 0;
temp = "";

repeat(array_length_1d(array))
{
temp+= string(array[ii]) + "#";
ii+=1;
}
return temp;
