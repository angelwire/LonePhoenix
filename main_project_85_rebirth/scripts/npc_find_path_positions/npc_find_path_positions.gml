/// @description npc_find_path_positions(npc,xfrom,yfrom,roomfrom,xto,yto,roomto,time)
/// @param npc
/// @param xfrom
/// @param yfrom
/// @param roomfrom
/// @param xto
/// @param yto
/// @param roomto
/// @param time

var actor = argument0;
actor_debug_message("Finding path for NPC #" + string(actor) + " ----------")

var spot1_x,spot1_y,spot1_time,spot1_room,
    spot2_x,spot2_y,spot2_time,spot2_room;
    
spot1_x = argument1;
spot1_y = argument2;
spot1_time = global.time;
spot1_room = argument3;

spot2_x = argument4;
spot2_y = argument5;
spot2_time = argument7;
spot2_room = argument6;

var room1 = node_map_get_node_from_room(main_map,spot1_room);
var room2 = node_map_get_node_from_room(main_map,spot2_room);
//These are not the GM room ids, these are the node map indexes

//Variables initialized,

//First step is to find out which rooms the actor should travel through
var room_node_path, room_path_length;
if room1 != room2
{
room_node_path = node_find_path(main_map,room1,room2);
room_path_length = array_length_1d(room_node_path);
}
else
{
room_node_path[0] = room1;
room_path_length = 1;
}
//This array is filled with node map indexes, not GM room IDs


/*
room_node_path is an array filled with room node ids.
Not room GM ids.
Everything above works
*/


//Repeat go_path variables
go_path_distance[actor] = 0;
go_path_number[actor] = 0;

//temp_inner_path is the variable that holds the GMpath for each room
var temp_inner_path;

//temp_grid is used for pathfinding within rooms
var temp_grid;

/*
Alright, the room_path has been created, so now I need to loop through
and find the paths in each of the rooms
*/

//Loop through the room_path
var ii = 0;
repeat(room_path_length) //Loop through the room_path array
{
    //Find the start and stop positions
    
    var start_x, start_y, end_x, end_y;
    
    if ii = 0 // if it is checking from the first room
    {
    //Set the start positions to the first position
    start_x = spot1_x;
    start_y = spot1_y;
    
        if room_node_path[ii] != room_node_path[min(ii+1,room_path_length-1)] //If the current room and the next room are different
        {
        actor_debug_message("Setting end_position to EXIT");
        //Set the end positions to the exit positions
        end_x = get_exit_x(main_map,room_node_path[ii],room_node_path[min(ii+1,room_path_length-1)])
        end_y = get_exit_y(main_map,room_node_path[ii],room_node_path[min(ii+1,room_path_length-1)])    
        }
        else //If the current room and the next room are the same
        {
        //Set the end position to the end position given in the arguments
        end_x = spot2_x;
        end_y = spot2_y;
        }
        
    }
    else //If it is not in the first room
    {
    //Set the start position to the enterance
    start_x = get_enter_x(main_map,room_node_path[ii-1],room_node_path[ii]);
    start_y = get_enter_y(main_map,room_node_path[ii-1],room_node_path[ii]);
    
        //If ii is at the end of the room path
        if ii >= room_path_length-1
        {
        //set the end position to the spot2_position
        end_x = spot2_x;
        end_y = spot2_y;
        }
        else //If it's not at the end of the path
        {
        //Set the end positions to the exit positions
        end_x = get_exit_x(main_map,room_node_path[ii],room_node_path[min(ii+1,room_path_length-1)])
        end_y = get_exit_y(main_map,room_node_path[ii],room_node_path[min(ii+1,room_path_length-1)])
        }
    }

    //Find the path between the two points and add it to the temporary path
    
    //temp grid holds the current room's collision mp_grid
    temp_grid = ds_grid_create_mp_grid(room_grid[room_node_path[ii]],0,0,16,16);

    //Create a path for the actor in the current room
    temp_inner_path[ii] = path_add();
    
    //just for fun, clamp the start and end positions so they'll always be in the room
    /* Nevermind
    start_x = clamp(start_x,0,160);
    start_y = clamp(start_y,0,140);
    end_x = clamp(end_x,0,160);
    end_y = clamp(end_y,0,140);
    */

    var cx = 0;
    var cy = 0;
    var joe = 1;    
    actor_debug_message("start and end positions for room_node_path[" + string(ii) + "] " + ae_enclose_variable_pair(start_x,start_y) + " --> " + ae_enclose_variable_pair(end_x,end_y))
    
    if !grid_position_open(room_grid[room_node_path[ii]],end_x,end_y)
    {
    actor_debug_message("DUDE, NOT OPEN");

        while (!grid_position_open(room_grid[room_node_path[ii]],end_x + cx,end_y + cy) and joe < 80)
        {
        cx = dcos(ceil(joe/4)*90) * joe;
        cy = dcos(ceil(joe/4)*90) * joe;
        joe+=1;
        }
        if joe >= 80
        {
        actor_debug_message("DUDE, NOT OPEN STILL");
        }
        else
        {
        actor_debug_message("FINALLY OPEN: " + string(cx) + "-" + string(cy) + ".." + string(joe) );
        end_x = end_x + cx;
        end_y = end_y + cy;
        }
    }
    else
    {
    actor_debug_message("YO! IT IS OPEN");
    }
    //success is whether or not a path has been found between the start and end point
    var success = mp_grid_path(temp_grid, temp_inner_path[ii], start_x, start_y, end_x,end_y,false);
    
    if success //If there's a path between the start and end points
    {
    actor_debug_message("Path found for actor-"+ string(actor) + " at room_path[" +string(ii)+ "]")
    fix_path(temp_inner_path[ii]) //Remove any unneeded points on the path
    }
    else
    {
    //Add 3 points that will get the actor to the proper end spot
    path_add_point(temp_inner_path[ii],start_x,start_y,1)
    path_add_point(temp_inner_path[ii],start_x,end_y,1)    
    path_add_point(temp_inner_path[ii],end_x,end_y,1)
    actor_debug_message("**ERROR** Path NOT found for actor-"+ string(actor) + " at room_path[" +string(ii)+ "]")
    }
    //Now destroy the grid that was used so it doesn't use up memory
    mp_grid_destroy(temp_grid)
    
    ii+=1; //Increment the ii variable
}

//Okay, so you've got all the paths, you're goint to need to stitch them together now

ii = 0; //ii is used to loop through the different inner paths
var kk = 0; //kk is used to loop through the entire go_path
var jj = 0; //jj is used to loop through the individual inner_path points
//and so it should be reset at the end of each inner_path

var total_mini_spots = 0; //Total mini spots count the number of spots in the go_path

repeat(room_path_length) //Loop through the room_path array
{
    jj = 0;
    repeat(path_get_number(temp_inner_path[ii]))
    {   
        //Set the go_path_positions
        go_path_x[actor,kk] = path_get_point_x(temp_inner_path[ii],jj);
        go_path_y[actor,kk] = path_get_point_y(temp_inner_path[ii],jj);
        go_path_room[actor,kk] = node_map_get_room_from_node(main_map,room_node_path[ii]);
        
        actor_debug_message("Go path point [" + string(actor) + "," + string(kk) + "] created at (" + string(go_path_x[actor,kk]) + "," + string(go_path_y[actor,kk]) + ","  + string(room_get_name(go_path_room[actor,kk])) + ")");
        
        go_path_number[actor] += 1; //Add to the total number of minispots in the go_path
        
        if kk > 0 //if this is not the first mini spot
        {
            //Add to the path distance
            var td = 
            abs(((go_path_x[actor,kk] - go_path_x[actor,kk-1])) //Difference between the x
            + abs((go_path_y[actor,kk] - go_path_y[actor,kk-1]))) //Difference between the y
            * (go_path_room[actor,kk] == go_path_room[actor,kk-1]); //only if the same room
            
            go_path_distance[actor] += td; //add the td to the path

            actor_debug_message("Added " + string(td) + " to the go_path distance");
        }
        jj += 1; //Increment the jj variable
        kk += 1; //Increment the kk variable which is used to loop through the mini_spot
    }
    path_delete(temp_inner_path[ii]); //Delete the path that was just used

    ii+=1; //Increment the ii variable
}
actor_debug_message(string(go_path_distance[actor]));

return true;
