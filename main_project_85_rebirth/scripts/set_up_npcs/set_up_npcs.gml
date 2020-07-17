/// @description set_up_npcs()

/*
Sets up the NPCs so they start out in the right spot
*/
var ii = 0;
repeat(255)
{
act_x[ii] = spot_get_x(ii,0);
act_y[ii] = spot_get_y(ii,0);
act_room[ii] = spot_get_room(ii,0);
ii+=1;
}

