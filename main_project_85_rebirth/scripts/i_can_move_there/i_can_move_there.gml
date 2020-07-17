var xx,yy;
xx = argument0;
yy = argument1;
//Debug
if global.no_collisions != 0
{
return true;
}
//Debug

//If it should freeze
if freeze = true
{
return false;
}

if !place_meeting(round(xx),round(yy),block_object)
{

    if instance_exists(actionly_block_parent)
    {
    if !place_meeting(round(xx),round(yy),actionly_block_parent)
    or instance_place(round(xx),round(yy),actionly_block_parent).activated = true
    {
    return true;
    }
    else
    {
    return false;
    }
    }


return true;
}

if place_meeting(round(xx),round(yy),bridge_object)
{
if global.bridgedown = true
{
return true;
}
}

if place_meeting(round(xx),round(yy),large_bridge_object)
{
return true;
}

if place_meeting(round(xx),round(yy),allow_passage_block)
{
return true;
}

return false;
