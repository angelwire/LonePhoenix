/// @description ae_get_string_until_character_ext(string,character,index,inclusive)
/// @param string
/// @param character
/// @param index
/// @param inclusive

/*
Returns a substring from the first character
to the first appearance of the given character
Includes ending character
*/

var stringy = "";
var str = argument0;
var cha = argument1;
var ii= argument2;
var inclusive = argument3;

while(string_char_at(str,ii)!= cha and ii<= string_length(str))
{
stringy = stringy+string_char_at(str,ii);
ii+=1;
}

if ii<= string_length(str) and inclusive = true
{
stringy = stringy+string_char_at(str,ii);
}

return stringy;


