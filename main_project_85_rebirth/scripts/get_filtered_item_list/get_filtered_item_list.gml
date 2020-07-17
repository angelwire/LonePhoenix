/// @description get_filtered_item_list(filter,remove)
/// @param filter
/// @param remove

var filter_array = argument0;
var ii = 0; //increments through the items
var jj = 0; //increments through the filter_array
var kk = 0; //increments through show_array
var return_array;
var remove = argument1;
return_array[0] = -1;

repeat(global.total_items)
{
    jj = 0;
//    show_debug_message("Checking for: " + string(get_item_help_text(ii) + " -- " + string(ii)))
    repeat(array_length_1d(filter_array))
    {
//    show_debug_message("     Is it in filter: " + string(filter_array[jj])
        if filter_array[jj] == ii and (global.items[ii] > 0 or !remove)
        {
        return_array[kk] = ii;
        kk+=1;
        break;
        }
    jj+=1;
    }
    ii +=1;
}

return return_array;
