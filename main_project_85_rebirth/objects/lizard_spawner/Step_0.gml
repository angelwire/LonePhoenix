if random(500) > 495 and instance_number(lizard_object) <= instance_number(lizard_spawner) and distance_to_object(player) > 160
{
with(instance_create(x+8,y+8,lizard_object))
{
my_id = init_new_enemy(1);
}

}

