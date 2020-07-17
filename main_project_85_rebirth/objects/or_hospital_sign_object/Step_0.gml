depth = -y

if instance_exists(player)
{
if player.x > x and player.x < x+16
and player.y > y-2 and player.y < y
{
image_index = 0
image_speed = .5
}
if player.y > y-2 and player.y < y
and !(player.x > x and player.x < x+16)
{
image_index = 0
image_speed = 0
}

}

if abs(image_speed) < .1
{
image_index = 0
image_speed = 0
}
else
{
image_speed -= .01
}

