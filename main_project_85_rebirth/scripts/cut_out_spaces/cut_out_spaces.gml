//cuts out any spaces in front or behind a string
var joey = argument0;

//show_debug_message("cutting out string .-:" + string_char_at(joey,1) + ":-.");

while (string_char_at(joey,1) = " " or string_char_at(joey,1) = "   " or string_char_at(joey,1) = @"
")
{
joey = string_copy(joey,2,string_length(joey)-1)
}
while (string_char_at(joey,string_length(joey)) = " " or string_char_at(joey,string_length(joey)) = "   " or string_char_at(joey,string_length(joey)) = @"
")
{
joey = string_copy(joey,1,string_length(joey)-1)
}
//return joey;
return joey

/*

12345

*/
