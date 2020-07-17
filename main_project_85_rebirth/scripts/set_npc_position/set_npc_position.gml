/// @description set_npc_position(npc,x,y,room)
/// @param npc
/// @param x
/// @param y
/// @param room
//WARNING, USE THIS SCRIPT VERY CAREFULLY

var npc = argument0;
var xx = argument1;
var yy = argument2;
var roomto = argument3;

act_x[npc] = xx;
act_y[npc] = yy;
act_room[npc] = roomto;
