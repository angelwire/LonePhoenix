/// @description node_create_edge(mapID,nodeID,nodeID,distance,x1,y1,x2,y2)
/// @param mapID
/// @param nodeID
/// @param nodeID
/// @param distance
/// @param x1
/// @param y1
/// @param x2
/// @param y2
node_edge1[argument0,max_edges[argument0]]= argument1
node_edge2[argument0,max_edges[argument0]]= argument2

node_edge_open[argument0,max_edges[argument0]] = true;
node_edge_distance[argument0,max_edges[argument0]] = argument3;

//These are used for the doors, and the npc pathing
node_edge_x1[argument0,max_edges[argument0]] = argument4;
node_edge_y1[argument0,max_edges[argument0]] = argument5;
node_edge_x2[argument0,max_edges[argument0]] = argument6;
node_edge_y2[argument0,max_edges[argument0]] = argument7;

max_edges[argument0] +=1;
return max_edges[argument0]-1;


