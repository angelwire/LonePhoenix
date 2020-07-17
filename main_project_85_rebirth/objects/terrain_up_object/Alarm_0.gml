if place_meeting(x-32,y,terrain_up_object)
{
framer = 8
if place_meeting(x,y+32,terrain_up_object)
{
framer  = 2
if place_meeting(x,y-32,terrain_up_object)
{
framer = 5
}

}

}

if place_meeting(x+32,y,terrain_up_object)// >
{

if place_meeting(x,y-32,terrain_up_object) // >^
{
framer = 6

if place_meeting(x-32,y,terrain_up_object) // >^<
{
framer = 7
}

}



if place_meeting(x,y+32,terrain_up_object) // >V
{
framer = 0

if place_meeting(x-32,y,terrain_up_object) //<V>
{
framer = 1
}//<V>


if place_meeting(x,y-32,terrain_up_object) // >V^
{
framer = 3

if place_meeting(x-32,y,terrain_up_object) //>V^<
{
framer = 4

if !place_meeting(x+32,y+32,terrain_up_object) //>V
{
framer = 9
}

if !place_meeting(x-32,y+32,terrain_up_object) //<V
{
framer = 11
}

if !place_meeting(x-32,y-32,terrain_up_object) //<^
{
framer = 17
}

if !place_meeting(x+32,y-32,terrain_up_object) //>^
{
framer = 15
}

}//<^>V

} // >V^

} // >V

} // >
depth = -(y-32);

///Do all the collision junk here
switch (framer)
{
case 0: set_mask(6,10,30,32); depth = -(y+12); break;
case 1: set_mask(0,10,32,12); depth = -(y+12); break;
case 2: set_mask(2,10,24,32); depth = -(y+12); break;
case 3: set_mask(6,0,30,32); depth = -(y+12); break;
case 5: set_mask(2,0,24,32); break;
case 6: set_mask(6,0,32,32); break;
case 7: set_mask(0,0,32,32); break;
case 9: set_mask(2,2,32,32); break;
case 11: set_mask(0,2,30,32); break;
case 15: set_mask(2,2,32,9); break;
case 17: set_mask(0,0,30,30); break;
case 8: set_mask(0,0,24,32); break;
}




