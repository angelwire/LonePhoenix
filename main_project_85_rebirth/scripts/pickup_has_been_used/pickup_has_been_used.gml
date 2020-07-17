/// @description pickup_has_been_used(my_id)
/// @param my_id
var mm = 0;
repeat(global.picked_up+1)
{
if global.used_barrels[mm] = argument0
{
return true;
}
mm+=1
}
return false;
