/// @description npc_create_spot(npc_ID,GMroom,time,branch,x,y,action,direction,speed)
/// @param npc_ID
/// @param GMroom
/// @param time
/// @param branch
/// @param x
/// @param y
/// @param action
/// @param direction
/// @param speed

var npc = argument0;
var spotsy = act_total_spots[npc];
spot_room[npc,spotsy] = argument1;
spot_time[npc,spotsy] = argument2;
spot_branch[npc,spotsy] = argument3;
spot_x[npc,spotsy] = argument4;
spot_y[npc,spotsy] = argument5;
spot_action[npc,spotsy] = argument6;
spot_direction[npc,spotsy] = argument7;
spot_speed[npc,spotsy] = argument8;
act_total_spots[npc] += 1;
