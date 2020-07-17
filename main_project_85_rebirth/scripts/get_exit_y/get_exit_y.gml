/// @description get_exit_x(map,nodefrom,nodeto)
/// @param map
/// @param nodefrom
/// @param nodeto
var map = argument0;
var n1 = argument1;
var n2 = argument2;
var edge = get_edge_between_nodes(map,n1,n2)

if (edge == -1)
{
return -1;
}

if (n1 < n2)
{
return node_edge_y1[map,edge];
}
else
{
return node_edge_y2[map,edge];
}
