var ii,dir,jj,xtoo,ytoo;
xtoo = 0;
ytoo = 0;
ii = 2;
dir = 0;
jj = 0;


repeat(25)
{

ii = 2;
dir = abs((360*(jj mod 2)) - ((jj-(jj mod 2 )) * 7.5 )) + direction
xtoo = cosine(dir)*ii
ytoo = -sine(dir)*ii

repeat(8)
{
xtoo = cosine(dir)*ii
ytoo = -sine(dir)*ii

if !place_meeting(x+xtoo,y+ytoo,block_object)
{
x += xtoo;
y += ytoo;

if dir > 360
{
dir -= 360
}

if abs(direction - dir) > 90
{
direction += 180
}
//show_debug_message(string(direction) + " - " + string(dir) + " = " + string(direction- dir))
sitting = false;
exit;
}
ii +=1
}

jj += 1;

}

x -= 16;
direction += 180;
sitting = false;
