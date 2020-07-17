/// @description animation stuff

if gotime = true
{
endframe = ((direction/90)*4)+3
startframe = (direction/90)*4

image_index += speed*.1

if image_index >= endframe
{
image_index = startframe
}

if image_index < startframe
{
image_index = startframe
}

depth = -y
}

if instance_exists(player)
{
if distance_to_object(player) < distance
{
go_towards_point(player.x,player.y-4);
//follow_timer +=1;
distance -= .3;
}
else
{
//show_debug_message("do de do")
roam();
}
}

if gotime = false
{
ignore_speed();
}

