if can_enter = true
{
henry = instance_nearest(x-8,y-8,door_object)
if string(henry.goto_x) != "x"
{
global.startx = henry.goto_x
}
else
{
global.startx = x
}
if string(henry.goto_x) != "y"
{
global.starty = henry.goto_y
}
else
{
global.starty = y
}
room = henry.room_to;
}
