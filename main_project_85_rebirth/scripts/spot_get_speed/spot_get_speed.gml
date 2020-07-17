/// @description spot_get_speed(npc_ID,spot)
/// @param npc_ID
/// @param spot
if (argument0 < 0 or argument1<0)
{
show_error("spot_get_room("+string(argument0)+","+string(argument1)+") argument less than 0",1)
}

return spot_speed[argument0,argument1];
