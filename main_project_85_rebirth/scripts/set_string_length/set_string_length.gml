/// @description set_string_length(string,length)
/// @param string
/// @param length
/*adds 0's to the beginning of the string until the
/string_length is equal to the second argument
and will return the new string*/

var new_string = string(argument0);

while(string_length(argument0) < argument1)
{
new_string = "0"+string(new_string);
}
return string(new_string);

