/// @description clean_path(npc)
/// @param npc
/*
cleans up the path of the given npc to remove redundant points
*/
var npc = argument0;
var ii = 0;
var temp_value = 0;

var should_remove;
repeat(255)
{
should_remove[ii] = false;
ii+=1;
}



ii = 0;
while(go_path_x[npc,ii] != -1 and ii < 254)
{
if (go_path_x[npc,ii] = go_path_x[npc,ii+2]
or go_path_y[npc,ii] = go_path_y[npc,ii+2])
and go_path_room[npc,ii] = go_path_room[npc,ii+2]
{
should_remove[ii+1] = true;
}
ii+=1;
}

ii = 0;
var remove_point = -1;
while(go_path_x[npc,ii] != -1 and ii < 254)
{
    if should_remove[ii] = false
    {
        if remove_point != -1
        {
        go_path_x[npc,remove_point] = go_path_x[npc,ii];
        go_path_y[npc,remove_point] = go_path_y[npc,ii];
        go_path_room[npc,remove_point] = go_path_room[npc,ii];
        should_remove[ii] = true;
        should_remove[ii] = false;
        ii = remove_point;
        remove_point = -1;
        }
    }
    else
    {
        if (remove_point == -1)
        {
        remove_point = ii;
        }
    }
    ii+=1;
}

ii = 0;
while(go_path_x[npc,ii] != -1 and ii < 254)
{
if (should_remove[ii] = true)
{
go_path_x[npc,ii] = -1;
go_path_y[npc,ii] = -1;
go_path_room[npc,ii] = -1;
}
ii+=1;
}
