/// @description ae_initialize_array(val1, val2, ...)
/// @param val1
/// @param  val2
/// @param  ...
var ii = 0;
var array;
repeat(argument_count)
{
array[ii] = argument[ii];
ii+=1;
}
return array;
