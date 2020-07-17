/// @description npc_find_path_spots(npc,spotfrom,spotto)
/// @param npc
/// @param spotfrom
/// @param spotto

/*
this is just a passthrough script that takes
the spot variables and plugs them into the 
glove function npc_fin_path_positions()
*/

var npc = argument0;
var spot1 = argument1;
var spot2 = argument2;

var spot1_x,spot1_y,spot1_time,spot1_room,
    spot2_x,spot2_y,spot2_time,spot2_room;
    
spot1_x = spot_get_x(npc,spot1);
spot1_y = spot_get_y(npc,spot1);
spot1_time = spot_get_time(npc,spot1);
spot1_room = spot_get_room(npc,spot1);

spot2_x = spot_get_x(npc,spot2);
spot2_y = spot_get_y(npc,spot2);
spot2_time = spot_get_time(npc,spot2);
spot2_room = spot_get_room(npc,spot2);

actor_debug_message("finding path between " + room_get_name(spot1_room) + " and " + room_get_name(spot2_room));

return npc_find_path_positions(npc,spot1_x,spot1_y,spot1_room,spot2_x,spot2_y,spot2_room,spot2_time);
