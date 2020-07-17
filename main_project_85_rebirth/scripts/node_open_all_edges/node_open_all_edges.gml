/// @description node_open_all_edges(mapID)
/// @param mapID
var ii=0;
repeat(max_edges[argument0])
{
if node_edge_open[argument0,ii] >= 0
{
node_open_edge(argument0,ii)
}
ii+=1;
}

