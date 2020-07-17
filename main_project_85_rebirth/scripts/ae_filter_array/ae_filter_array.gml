/// @description ae_filter_array(array1,filter array)
/// @param array1
/// @param filter array
/*
Compares array1 with filter array
If value in filter array is true (1+ or !="")
Then the corresponding index of array1 is kept
*/
var array1 = argument0;
var filter_array = argument1;
var return_array;
var ii = 0;
var jj = 0;

return_array[0] = 0;

repeat(array_length_1d(array1))
{
    if filter_array[ii] != "" and filter_array[ii] != 0
    {
    return_array[jj] = array1[ii];
    jj+=1;
    }
ii+=1;
}
return return_array;
