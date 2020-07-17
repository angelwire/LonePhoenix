/// @description roam
var ii;
ii= 0;
ii = round(-random(11.5))

if rangetimer > 0
{
rangetimer -=1
}

if rangetimer = 0
{
distance = 64
}

if rangetimer = 0 or place_meeting(x+cosine(direction),y-sine(direction),block_object)
{
if distance = 1
{
rangetimer = round(random(15) + 15)
}
else
{
rangetimer = round(random(60) + 60)
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
}
