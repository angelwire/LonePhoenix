/// @description node_find_path(mapID,Start nodeID, end nodeID) return array
/// @param mapID
/// @param Start nodeID
/// @param  end nodeID
var node_weight, ii, jj, end_node, beginning_node, node_depth, node_path, mid, check_weight, next_node;
mid = argument0
beginning_node = argument1
end_node = argument2
ii = 0;
jj = 0;
node_depth = 0;
check_weight = -1;
next_node = 0;

show_debug_message("NODE Pathfinding start")

repeat(max_nodes[mid]) //sets all of the node weights to -1
{
node_weight[ii] = -1;
ii+=1;
}

node_weight[end_node] = 0; //sets the weight of the last node to 0 (because it is 0 steps away from the end)
current_node = end_node; //the loop starts at the end node
other_node = current_node; //the next node is defaulted to the end_node


while (node_weight[beginning_node] = -1 and node_depth <= max_nodes[mid])
//loop until the beginning node has been found or node_depth has exceeded the maximum number of nodes
{
jj = 0;

repeat(max_nodes[mid]) //loop through every node
{

if node_weight[jj] = node_depth //loop through every node at the current depth
{
current_node = jj //sets the current node to the loop variable, jj

kk = 0;
repeat(max_edges[mid]) //loops through every edge to look for a connected node
{
//if it has found a connected edge, it sets the variable other_node to the connected node
if node_edge1[mid,kk] = current_node and node_edge_open[mid,kk] {other_node = node_edge2[mid,kk];}
else
if node_edge2[mid,kk] = current_node and node_edge_open[mid,kk] {other_node = node_edge1[mid,kk];}

kk +=1 //increments kk, which is used to loop through the edges

if other_node != current_node //if the variable other_node has been altered
{
if node_weight[other_node] = -1 //if the other node's weight hasn't already been set
{
node_weight[other_node] = node_depth+1; //it will set the node's depth to the current depth +1
}}

}

}
jj +=1; //increments jj which is used to loop through every node

}
node_depth += 1; //increments the node_depth (how many steps away a node is from the finish)
}

if node_depth > max_nodes[mid] //if there isn't a path
{
return -1;//bounce out with -1
}

//The weights have been applied
//(they're not really weights,just the number of steps it takes each node to reach the finish)

current_node = beginning_node //sets the current node to the starting node
ii = node_weight[beginning_node] //initiates ii to the number of steps it will take to get from the start to the end
jj = 1; //initiates jj to one, jj will be used to loop through the node_path variable
//node_path[0] will always be the starting node, so skip to 1
node_path[0] = beginning_node //sets the first step in the path to the beginning node
//DEBUG         
show_debug_message("node_path[" + "0" + "] set to " + string(node_path[0]));


while (next_node != -1) //loop as long as a next_node is found 
{
kk = 0; //resets kk, which is used to loop through the edges
next_node = -1; //resets the nex_node variable

repeat(max_edges[mid]) //loops through all the edges
{
if node_edge1[mid,kk] = current_node //if a connection is found
{
other_node = node_edge2[mid,kk] //sets the other_node to the connected node
//if the connection is, so far, the shortest connection, set it to the next node
if (node_weight[other_node] = ii-1) and (check_weight=-1 or node_edge_weight[mid,other_node] < check_weight)
{
next_node = other_node;
}

}
else
if node_edge2[mid,kk] = current_node //if a connection is found (need to do it twice to check both directions)
{
other_node = node_edge1[mid,kk]; //sets the other_node to the connected node
//if the connection is, so far, the shortest connection, set it to the next node
if (node_weight[other_node] = ii-1) and (check_weight=-1 or node_edge_weight[mid,other_node] < check_weight)
{
next_node = other_node;
}

}
kk += 1 //increments kk which is used to loop through the edges
}

if next_node != -1 //If it has found a node to go to
{
node_path[jj] = next_node //Adds the node to the path array
//DEBUG     
show_debug_message("node_path[" + string(jj) + "] set to " + string(node_path[jj]));

current_node = next_node //Changes the current node to the next node
check_weight = -1; //Resets the check_weight variable
jj += 1; //Increments jj which is used for the node_path[] array
ii -= 1; //Decrements ii
/*ii is used to loop through the different node depths
(the depth is the amount of steps it would take to reach the end from that node)
ii starts at the node dept of the starting node (the max depth)
*/
}

}

//show_message("Path finding done")
//return 1;
return node_path; //returns the array node_path[]
