/// @description get_string_until_character(string,character)
/// @param string
/// @param character
var stringy = "";
var str = argument0;
var cha = argument1;
var ii= 1;
var did_find = false;

repeat(string_length(str))
{
if did_find
{
stringy = stringy+string_char_at(str,ii)
}
if string_char_at(str,ii)== cha
{
did_find = true
}
ii+=1
}
return stringy;
