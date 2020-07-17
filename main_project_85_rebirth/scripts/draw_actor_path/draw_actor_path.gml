/// @description draw_actor_path(actor)
/// @param actor
var ii = 0;
var actor = argument0;

repeat(go_path_number[actor]-1)
{
    if go_path_room[actor,ii] = room
    {
    draw_set_color(c_white)
    }
    else
    {
    draw_set_color(c_black)
    }
    
    if go_path_room[actor,ii+1] = go_path_room[actor,ii]
    {
    draw_line(go_path_x[actor,ii]+1,go_path_y[actor,ii],go_path_x[actor,ii+1]+1,go_path_y[actor,ii+1])
    draw_line(go_path_x[actor,ii]-1,go_path_y[actor,ii],go_path_x[actor,ii+1]-1,go_path_y[actor,ii+1])
    draw_line(go_path_x[actor,ii],go_path_y[actor,ii]+1,go_path_x[actor,ii+1],go_path_y[actor,ii+1]+1)
    draw_line(go_path_x[actor,ii],go_path_y[actor,ii]-1,go_path_x[actor,ii+1],go_path_y[actor,ii+1]-1)                
    }
    
    ii+=1;
}
