var ss;
ss = argument0;
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

jj = 0;


    if !place_meeting(round(x+(cosine(direction)*ss)),round(y-sine(direction)*ss),block_object)
    {
    
        if instance_exists(actionly_block_parent)
        {
            if !place_meeting((x+cosine(direction)*ss),(y-sine(direction)*ss),actionly_block_parent)
            or instance_place((x+cosine(direction)*ss),(y-sine(direction)*ss),actionly_block_parent).activated = true
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
    
    
    if place_meeting((x+cosine(direction)*ss),(y-sine(direction)*ss),bridge_object)
    {
        if global.bridgedown = true
        {
        return true;
        }
    }
    
    
    if place_meeting((x+cosine(direction)*ss),(y-sine(direction)*ss),large_bridge_object)
    {
        return true;
    }
    
    
    if place_meeting((x+cosine(direction)*ss),(y-sine(direction)*ss),allow_passage_block)
    {
        return true;
    }

return false;
