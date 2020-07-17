/// @description smithing_filter_list(item_list,filter_list)
/// @param item_list
/// @param filter_list

var list = argument0;
var filter_array = argument1;
var ii = 0; //increments through the items
var jj = 0; //increments through the filter_array
var kk = 0; //increments through show_array
var return_array;
return_array[0] = -1;
repeat(array_length_1d(list))
{
    jj = 0;
    repeat(array_length_1d(filter_array))
    {
        if filter_array[jj] == ii and list[ii] != 0
        {
        return_array[kk] = ii;
        kk+=1;
        break;
        }
    }
    ii +=1;
}

return return_array;
