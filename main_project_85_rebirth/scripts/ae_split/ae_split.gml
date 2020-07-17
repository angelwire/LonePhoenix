/// @description ae_split(string,seperator)
/// @param string
/// @param seperator

/*
Returns an array whose indexes contain
strings seperated by the seperator character

ae_split("This.Isn't.Over.",'.')
returns:
[0]="This";
[1]="Isnt";
[2]="Over";
[3]="";
*/
///ae_split(string,seperator)
var st = argument0;
var cha = argument1;
var array;

var ii = 1;
var index = 0;
var stringy = "";

while( ii<string_length(st)+1 )
{

while(string_char_at(st,ii) != cha and ii<string_length(st)+1 )
{
stringy = stringy+string_char_at(st,ii);
ii+=1;
}
array[index] = stringy;
stringy = "";
index +=1;
ii+=1;
}

return array;

