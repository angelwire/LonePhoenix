if random(500) > 495 and instance_number(buffalo_object) <= instance_number(buffalo_spawner) and distance_to_object(player) > 120
{
with(instance_create(x+8,y+8,buffalo_object))
{
my_id = init_new_enemy(1);
}
}

