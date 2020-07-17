if !place_meeting(x,y-32,water_object) and !place_meeting(x,y+32,water_object)
{
if !place_meeting(x-24,y,lake_object) 
{
if !place_meeting(x,y-24,lake_object)
{
sprite_index = beach_corner
image_speed = .1
}
else if !place_meeting(x,y+32,lake_object)
{
sprite_index = beach_corner
image_angle = 90
y+=32
image_speed = .1
}
else
{
sprite_index = beach_straight
image_speed = .1
}
}

if !place_meeting(x+24,y,lake_object)
{
if !place_meeting(x,y-24,lake_object)
{
sprite_index = beach_corner
image_angle = 270
x+=32
image_speed = .1
}
else if !place_meeting(x,y+32,lake_object)
{
sprite_index = beach_corner
image_angle = 180
x+=32
y+=32
image_speed = .1
}
else
{
sprite_index = beach_straight
image_angle = 180
x+=32
y+=32
image_speed = .1
}
}

if !place_meeting(x,y-24,lake_object)
{
if place_meeting(x-24,y,lake_object) and place_meeting(x+32,y,lake_object)
{
sprite_index = beach_straight
image_angle = 270
x+=32
image_speed = .1
}
}

if !place_meeting(x,y+24,lake_object)
{
if place_meeting(x-24,y,lake_object) and place_meeting(x+32,y,lake_object)
{
sprite_index = beach_straight
image_angle = 90
y+=32
image_speed = .1
}
}

if place_meeting(x,y+24,lake_object) and place_meeting(x+24,y,lake_object) and !place_meeting(x+32,y+32,lake_object)
{
sprite_index = beach_corner_2
}

if place_meeting(x,y+24,lake_object) and place_meeting(x-24,y,lake_object) and !place_meeting(x-32,y+32,lake_object)
{
sprite_index = beach_corner_2
image_angle = 270
x+=32
}

if place_meeting(x,y-24,lake_object) and place_meeting(x-24,y,lake_object) and !place_meeting(x-32,y-32,lake_object)
{
sprite_index = beach_corner_2
image_angle = 180
x+=32
y+=32
}

if place_meeting(x,y-24,lake_object) and place_meeting(x+24,y,lake_object) and !place_meeting(x+32,y-32,lake_object)
{
sprite_index = beach_corner_2
image_angle = 90
y+=32
}


if sprite_index = lake_sprite
{
image_index = floor((y/32)+(x/32))
}
}

if place_meeting(x,y-32,water_object)
{
image_angle = 0
sprite_index = ripple_sprite
ripple_index = 0
}
if place_meeting(x,y+32,water_object)
{
image_angle = 0
sprite_index = ripple_sprite
image_yscale = -1
y+=32
ripple_index = 0
}


top_left = place_meeting(x-32,y+(-32*image_yscale),lake_object);
top_left_2 = place_meeting(x-32,y+(-32*image_yscale),water_object);
top_right = place_meeting(x+32,y+(-32*image_yscale),lake_object);
top_right_2 = place_meeting(x+32,y+(-32*image_yscale),water_object);

