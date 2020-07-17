/// @description get_random_position_object()

//returns an array of all the position objects in the current room
var return_array;
if instance_exists(chair_object)
{
with(chair_object)
{
position_object_array[position_object_index] = id;
position_object_index += 1;
}
}

if instance_exists(organ_object)
{
with(organ_object)
{
position_object_array[position_object_index] = id;
position_object_index += 1;
}
}

if instance_exists(stove_object)
{
with(stove_object)
{
position_object_array[position_object_index] = id;
position_object_index += 1;
}
}

if instance_exists(standaround_object)
{
with(standaround_object)
{
position_object_array[position_object_index] = id;
position_object_index += 1;
}
}

var ii = 0;
repeat(position_object_index)
{
return_array[ii] = position_object_array[ii];
ii+=1;
}

position_object_index += 0;

return return_array;
