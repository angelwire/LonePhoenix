depth = -y;
image_speed = 0;
if place_meeting(x,y,stuff_in_barrels)
{
joey = instance_place(x,y,stuff_in_barrels);
}
else
{
joey = noone;
}

