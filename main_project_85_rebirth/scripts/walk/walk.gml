//walk(direction- 0-3)
if attacking = false 
{
direction = argument0*90
}

if i_can_walk_that_way(1) 
{
    if attacking = false
    {
        if image_speed = 0
        {
        image_index +=1
        }
        speed = 1
        image_speed = .1
    }
    else
    {
    speed = 0;
    }
}
else
{

//x+cos(direction)-sine(direction),y+cosine(direction)-sine(direction)
var hh = 1;
repeat(3)
{
if position_open(x+cosine(direction)*hh-sine(direction)*hh,y+cosine(direction)*hh-sine(direction)*hh)
{
x = x+cosine(direction)*hh-sine(direction)*hh;
y = y+cosine(direction)*hh-sine(direction)*hh;
exit;
}
else if position_open(x+cosine(direction)*hh+sine(direction)*hh,y-cosine(direction)*hh-sine(direction)*hh)
{
x = x+cosine(direction)*hh+sine(direction)*hh;
y = y-cosine(direction)*hh-sine(direction)*hh;
exit;
}
hh +=1;
}

speed = 0;
}


/*

if position_open(x+cosine(direction)-sine(direction),y+cosine(direction)-sine(direction))
{
x = x+cosine(direction)-sine(direction);
y = y+cosine(direction)-sine(direction);
}
else if position_open(x+cosine(direction)+sine(direction),y-cosine(direction)-sine(direction))
{
x = x+cosine(direction)+sine(direction);
y = y-cosine(direction)-sine(direction);
} 
else if position_open(x+cosine(direction)*2-sine(direction)*2,y+cosine(direction)*2-sine(direction)*2)
{
x = x+cosine(direction)*2-sine(direction)*2;
y = y+cosine(direction)*2-sine(direction)*2;
}
else if position_open(x+cosine(direction)*2+sine(direction)*2,y-cosine(direction)*2-sine(direction)*2)
{
x = x+cosine(direction)*2+sine(direction)*2;
y = y-cosine(direction)*2-sine(direction)*2;
}
*/
