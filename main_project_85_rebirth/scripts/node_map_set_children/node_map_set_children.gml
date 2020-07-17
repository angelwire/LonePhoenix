/// @description node_map_set_children(map_id)
/// @param map_id
var mid = argument0;
var ii = 0;
var jj = 0;
var connected_nodes = 0;
var the_edge = 0;

repeat(max_nodes[mid]) //loop through all the nodes
{
jj = 0;
connected_nodes = 0;

while(jj < max_edges[mid] and connected_nodes < 2)
{
if node_edge1[mid,jj] = ii 
or node_edge2[mid,jj] = ii
{
connected_nodes +=1;
the_edge = jj;
}

jj+=1;
}

if connected_nodes < 2
{
//mark it as a child
node_is_child[mid,ii] = 1
if connected_nodes > 0
{
edge_is_child[mid,the_edge] = 1
}
}
connected_nodes = 0;
ii+=1;
}

