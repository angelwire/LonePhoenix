if y < room_height-31
{
direction = 270
depth = -20
}

if depth < 0
{
depth -= 1
}

if y>room_height+24
{
instance_destroy()
}



speed = (timesy mod 2 = 0)
timesy += 1

if y>room_width-24 and direction == 270
{
speed = 1
}

