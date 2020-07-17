/// @description get_edge_between_nodes(map,node1,node2)
/// @param map
/// @param node1
/// @param node2
var map = argument0;
var node1 = argument1;
var node2 = argument2;
var ii =0;
repeat(max_edges[map])
{
if (node_edge1[map,ii] == node1 and node_edge2[map,ii] == node2)
or (node_edge1[map,ii] == node2 and node_edge2[map,ii] == node1)
{
return ii;
}
ii+=1;
}
return -1;
