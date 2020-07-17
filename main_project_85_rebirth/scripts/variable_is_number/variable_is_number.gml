if string_digits("1abcfedg") != "1"
{
show_debug_message("Its broken");
}
show_debug_message(string(string_digits("x" + string(argument0))) +"-" + string(argument0) )
if string(string_digits("x" + string(argument0))) = string(argument0)
{
show_debug_message(string(argument0) + " is a number")
//show_debug_message(string(real(string_digits(argument0))) +"-" + string(real(argument0)) )
return true;
}
else
{
show_debug_message(string(argument0) + " is not a number")
return false;
}
