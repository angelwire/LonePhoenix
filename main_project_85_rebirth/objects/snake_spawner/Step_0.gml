if random(500) > 495 and instance_number(snake_object) < instance_number(snake_spawner) and distance_to_object(player) > 60
{
instance_create(x+8,y+8,snake_object)
}

