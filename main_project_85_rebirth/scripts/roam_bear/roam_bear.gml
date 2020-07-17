/// @description roam
var ii;
ii= 0;
ii = -2*round(random(1))

if rangetimer > 0
{
rangetimer -=1
}

x-=1000;
var jj = instance_nearest(x+1000,y,object_index);
x+=1000;
if close_to(jj.x,x,2) and close_to(jj.y,y,2)
{
    if id < jj.id
    {
    direction = jj.direction + 180;
    }
}

if rangetimer = 0
{
distance = 48
}

if rangetimer = 0 or place_meeting(x+cosine(direction),y-sine(direction),block_object)
{
    if distance = 1
    {
    rangetimer = round(random(25) + 25)
    }
    else
    {
    rangetimer = round(random(90) + 90)
    follow_timer = 0;
    }
    while (place_meeting(x+cosine(ii*90),y-sine(ii*90),block_object))
    {
    ii +=1
        if ii = 4
        {
        instance_destroy()
        } 
    }
    direction = ii*90
    speed = 1
    if sleeping = true
    {
    speed = 0;
    }
}
