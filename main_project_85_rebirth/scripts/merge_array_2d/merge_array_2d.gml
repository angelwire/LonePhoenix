/// @description merge_array_2d(2darray,2darrayIndex,array)
/// @param 2darray
/// @param 2darrayIndex
/// @param array
var array1 = argument0;
var ind = argument1;
var array2 = argument2;
var ii = 0;
repeat(array_length_1d(array2))
{
array1[ind,ii] = array2[ii];
ii+=1;
}
return array1;
