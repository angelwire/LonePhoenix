if x >= player.x and hspeed = 1//endy = ystart
{
hspeed = 0;
vspeed = 1;
endy = player.y
image_speed = .2
}

if y >= endy 
{
if vspeed !=  0
{
depth = -y
}
y = endy
vspeed = 0;
}

if hspeed = 1
{
if y > __view_get( e__VW.YView, 0 )+38
{
y -= 1
}

if y < __view_get( e__VW.YView, 0 )+38
{
y += 1
endy = y;
}
}

