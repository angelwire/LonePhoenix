my_timer -= 1;
if my_timer < 1
{
my_timer = random(200)+100;

if distance_to_object(player)>300
{
instance_create(x,y+100-random(200),tumbleweed_object)
}

}


