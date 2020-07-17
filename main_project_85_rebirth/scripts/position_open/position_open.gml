/// @description position_open(x,y)
/// @param x
/// @param y
var xpo = argument0;
var ypo = argument1;

    if !place_meeting(xpo,ypo,block_object)
    {
    
        if instance_exists(actionly_block_parent)
        {
            if !place_meeting(xpo,ypo,actionly_block_parent)
            or instance_place(xpo,ypo,actionly_block_parent).activated = true
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
    
    
    if place_meeting(xpo,ypo,bridge_object)
    {
        if global.bridgedown = true
        {
        return true;
        }
    }
    
    
    if place_meeting(xpo,ypo,large_bridge_object)
    {
        return true;
    }
    
    
    if place_meeting(xpo,ypo,allow_passage_block)
    {
        return true;
    }

return false;
