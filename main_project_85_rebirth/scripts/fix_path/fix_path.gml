/// @description fix_path(path)
/// @param path
var path = argument0;
var ii = 0;
var x1 = 0;
var y1 = 0;
var x2 = 0;
var y2 = 0;
repeat(path_get_number(path))
{
    x1 = path_get_point_x(path,ii);
    x2 = path_get_point_x(path,ii+1);
    y1 = path_get_point_y(path,ii);
    y2 = path_get_point_y(path,ii+1);
    
    if (ii>0 and ii<path_get_number(path))
    {
    if (path_get_point_x(path,ii-1) > x1
    and path_get_point_x(path,ii+1) > x1)
    or (path_get_point_x(path,ii-1) < x1
    and path_get_point_x(path,ii+1) < x1)
    or (path_get_point_y(path,ii-1) > y1
    and path_get_point_y(path,ii+1) > y1)
    or (path_get_point_y(path,ii-1) < y1
    and path_get_point_y(path,ii+1) < y1)
    {
    path_delete_point(path,ii)
    ii-=1;
    }
    }
    
    if (x1!=x2 and y1!=y2) and (ii< path_get_number(path)-1)
    {
        if abs(x1-x2) > (y1-y2)
        {
        path_insert_point(path,ii+1,x1,y2,100)
        actor_debug_message("Adding path point #" + string(ii+1) + " at: " + string(x1) + "," + string(y2))        
        }
        else
        {
        path_insert_point(path,ii+1,x2,y1,100)
        actor_debug_message("Adding path point #" + string(ii+1) + " at: " + string(x2) + "," + string(y1))                
        }
    }
    ii +=1;
}

ii=1;
repeat(path_get_number(path)-2)
{
    x1 = path_get_point_x(path,ii);
    x2 = path_get_point_x(path,ii+1);
    y1 = path_get_point_y(path,ii);
    y2 = path_get_point_y(path,ii+1);
    
    if (path_get_point_x(path,ii-1) = x1 and x2=x1)
    or (path_get_point_y(path,ii-1) = y1 and y2=y1)
    {
    path_delete_point(path,ii)
    ii-=1;
    }
    
    ii +=1;
}


