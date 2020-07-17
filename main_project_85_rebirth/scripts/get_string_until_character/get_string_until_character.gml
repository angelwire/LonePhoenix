/// @description get_string_until_character(string,character)
/// @param string
/// @param character
var stringy = "";
var str = argument0;
var cha = argument1;
var ii= 1;
while(string_char_at(str,ii)!= cha and ii<= string_length(str))
{
stringy = stringy+string_char_at(str,ii)
ii+=1
}
return stringy;
