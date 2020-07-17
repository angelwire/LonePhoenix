/// @description set_string_length_char(string,length,fill character)
/// @param string
/// @param length
/// @param fill character
/*adds 0's to the beginning of the string until the
/string_length is equal to the second argument
and will return the new string*/

var new_string = string(argument0);

while(string_length(new_string) < argument1)
{
new_string = string(argument2) + string(new_string);
show_debug_message(new_string);
}

return string(new_string);

