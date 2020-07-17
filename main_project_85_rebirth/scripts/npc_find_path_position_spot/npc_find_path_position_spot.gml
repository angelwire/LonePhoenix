/// @description npc_find_path_position_spot(npc,xfrom,yfrom,roomfrom,spot)
/// @param npc
/// @param xfrom
/// @param yfrom
/// @param roomfrom
/// @param spot
var npc = argument0;

var spot1_x,spot1_y,spot1_time,spot1_room,
    spot2_x,spot2_y,spot2_time,spot2_room;
    
spot1_x = argument1;
spot1_y = argument2;
spot1_time = time;
spot1_room = argument3;

spot2 = argument4;
spot2_x = spot_get_x(npc,spot2);
spot2_y = spot_get_y(npc,spot2);
spot2_time = spot_get_time(npc,spot2);
spot2_room = spot_get_room(npc,spot2);

return npc_find_path_positions(npc,spot1_x,spot1_y,spot1_room,spot2_x,spot2_y,spot2_room,spot2_time);
