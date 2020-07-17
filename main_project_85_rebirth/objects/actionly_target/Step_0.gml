if instance_exists(bullet_object)
{
var jimmy = instance_nearest(x,y,bullet_object)
if point_distance(x,y,jimmy.x,jimmy.y) < 5
{
actionly_remote[remote] = true;
with(jimmy)
{
instance_destroy();
}
}
}

if instance_exists(tomahawk_object)
{
var jimmy = instance_nearest(x,y,tomahawk_object)
if point_distance(x,y,jimmy.x,jimmy.y) < 5
{
actionly_remote[remote] = true;
with(jimmy)
{
instance_destroy();
}
}
}
image_index = merge_variable(actionly_remote[remote]*(image_number-1),image_index,animation_speed)

