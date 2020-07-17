/// @description node_map_get_node_from_room(map,room)
/// @param map
/// @param room
var map = argument0;
var ii = 0;
repeat(max_nodes[map])
{
if node_room[ii] == argument1
{
return ii;
}
ii+=1;
}
show_error("Error, node_map_get_node_from_room returning -1: ("+string(argument0)+","+string(argument1)+")" ,true)
return -1;
