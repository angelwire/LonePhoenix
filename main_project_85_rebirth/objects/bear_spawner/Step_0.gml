if random(500) > 495 and instance_number(bear_object) < instance_number(bear_spawner) and distance_to_object(player) > 180
{
with(instance_create(x+8,y+8,bear_object))
{
my_id = init_new_enemy(1);
}

}

