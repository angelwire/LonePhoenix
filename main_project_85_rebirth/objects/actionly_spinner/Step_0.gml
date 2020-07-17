if instance_exists(player)
{
    if point_distance(x,y,player.x+(cosine(player.direction)*8),player.y-(sine(player.direction)*8)) < 15
    {
        if player.attacking = true
        {
        actionly_remote[remote] = true;
        }    
    }
}
image_index = merge_variable(actionly_remote[remote]*(image_number-1),image_index,animation_speed)

