/// @description check if in range
do_stuff = values_in_range(x,y,player.x-200,player.x+200,player.y-200,player.y+200) // If it's close to the player and not stunned

///perform animation stuff
if gotime = true and do_stuff
{
endframe = ((direction/90)*4)+4
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

///perform control stuff
if instance_exists(player)
{
if do_stuff
{

x-=1000;
var jj = instance_nearest(x+1000,y,object_index);
x+=1000;
if close_to(jj.x,x,2) and close_to(jj.y,y,2)
{
    if id < jj.id
    {
    direction = jj.direction + 180;
    distance = 1;
    }
}


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
}
if gotime = false
{
ignore_speed();
}

///check for collisions

if do_stuff
{
if place_meeting(x,y,bullet_object)
{
instance_create(x,y,snake_skin_object);
audio_play_sound(enemy_ouch_sound,1,0);
instance_destroy();
with(instance_nearest(x,y,bullet_object))
{
instance_destroy();
}
}

if place_meeting(x,y,tomahawk_object)
{
instance_create(x,y,snake_skin_object);
audio_play_sound(enemy_ouch_sound,1,0);
instance_destroy();
with(instance_nearest(x,y,tomahawk_object))
{
instance_destroy();
}
}

if place_meeting(x,y,hurt_block_player)
{
audio_play_sound(enemy_ouch_sound,1,0);
instance_create(x,y,snake_skin_object);
instance_destroy();
}


}

