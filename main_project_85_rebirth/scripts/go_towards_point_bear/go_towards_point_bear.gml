/// @description go_towards_point_bear(xto,yto)
/// @param xto
/// @param yto
var xdistance,ydistance;
xdistance = argument0-x
ydistance = argument1-y

var go_speed = 1;


if ((abs(xdistance)+abs(cosine(direction)*48) > abs(ydistance)+abs(sine(direction)*48) or abs(ydistance) < 2) and abs(xdistance) > 2) 
{
if (xdistance > 0) direction = 0
else direction = 180
}
else
{
if (ydistance > 0) direction = 270
else direction = 90
}

if (abs(xdistance) < 16 and abs(ydistance) > 16 and abs(xdistance) > 3)
{
if (xdistance > 0) direction = 0
else direction = 180
}
else if (abs(ydistance) < 16 and abs(xdistance) > 16 and abs(ydistance) > 3)
{
if (ydistance > 0) direction = 270
else direction = 90
}



if !place_meeting(x+(cosine(direction)*go_speed),y-(sine(direction)*go_speed),block_object) and (point_distance(x,y,argument0,argument1) > 4)
{
speed = go_speed
}
else
{
distance = 1
show_debug_message("oh noes im a bear, i can't go that way")
roam_bear()
}
