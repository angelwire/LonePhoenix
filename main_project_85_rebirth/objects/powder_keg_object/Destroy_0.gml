//destroy stuff

instance_create(x,y,explosion_object);

repeat(10)
{
splode = instance_create(x+random(64)-32,y+random(64)-32,explosion_object);
splode.image_speed = ((random(100)/100)*.5)+.5;
splode.image_index = random(2);
}

