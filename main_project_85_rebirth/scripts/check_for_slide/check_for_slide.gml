/// @description check_for_slide(speed)
/// @param speed
ss = argument0;
//If it should freeze
if freeze = false
{

if direction = 0 or direction = 180
{
    if !place_meeting(round(x+(cosine(direction)*ss)),round(y-sine(direction)*ss)-1,block_object)
    {
    y-=1;
    x+=ss*dcos(direction);
    }
    else if !place_meeting(round(x+(cosine(direction)*ss)),round(y-sine(direction)*ss)+1,block_object)
    {
    x+=ss*dcos(direction);
    y+=1;
    }
}

if direction = 90 or direction = 270
{
    if !place_meeting(round(x+(cosine(direction)*ss))-1,round(y-sine(direction)*ss),block_object)
    {
    y-=ss*dsin(direction);
    x-=1;
    }
    else if !place_meeting(round(x+(cosine(direction)*ss))+1,round(y-sine(direction)*ss),block_object)
    {
    y-=ss*dsin(direction);
    x+=1;
    }
}


}
