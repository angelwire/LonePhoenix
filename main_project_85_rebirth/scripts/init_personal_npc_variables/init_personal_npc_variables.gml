/// @description init_personal_npc_variables
/*
These are variables that each npc will use for itself.
They shouldn't be set to anything here in the initiation,
they'll be adjusted in the controller each step.
They are all arrays.
*/

globalvar total_actors; //How many actors are currently in the game
total_actors = 31;//17; //this isn't actually an array

globalvar act_departure_time, //what time the actor should leave in order to get to the destination on time
act_x, //the current x position of the actor
act_y, //the current y position of the actor
act_room,//the current room that the actor is in
act_direction,//the current direction the actor is facing (in quads 0-3)
act_frame, //the current animation frame for the actor

act_total_spots, // how many spots I've created for the actor
//basically how many places I tell it to go to throughout the day

act_spot, //the spot the actor has just been to or is currently at
//a spot is the place I tell it to go

act_mini_spot,
//a mini spot is one of the locations on a go path
act_created, //Whether or not the actor has been instantiated
act_roaming, //Whether or not the actor is currently roaming
act_dead, //Whether or not the actor is dead
act_speed; //the scaling speed for the actor's animation

globalvar go_path_x, //x
go_path_y, //y
go_path_room, //room
go_path_number, //how many mini_spots are in the go_path
go_path_distance; //how long the go_path is (in pixels)

var ii = 0;
repeat(255)
{
act_roaming[ii] = false;
act_departure_time[ii] = -1;
act_x[ii] = -1;
act_y[ii] = -1;
act_room[ii] = main_cave;
act_direction[ii] = 0;
act_frame[ii] = 0;

act_total_spots[ii] = 0;
act_spot[ii] = 0;
act_mini_spot[ii] = 0;

act_created[ii] = false;
act_dead[ii] = false;

act_speed[ii] = 1;

//Go_path variables
go_path_number[ii] = -1;
go_path_distance[ii] = 0;

jj = 0;
repeat(255)
{
go_path_x[ii,jj] = -1;
go_path_y[ii,jj] = -1;
go_path_room[ii,jj] = -1;
jj+=1;
}

//Set the initial spot values
spot_x[ii,0] = 0;
spot_y[ii,0] = 0;
spot_time[ii,0] = 0;
spot_room[ii,0] = 0;
spot_branch[ii,0] = 0;

ii+=1;
}


/*
The go_path variables are used for the immediate path
of the actor.

The first index is for the actor
The second index is for the points in the path

So what happens is:
the x position for the first point in actor 7 is
go_path_x[7,0]

and the next x position is
go_path_x[7,1]

and that goes for the y position and room

the room is for which room the point is in
(GM room id, not node id or anything)

*/

