if instance_exists(player)
{
    if point_distance(x,y,player.x,player.y) < 7
    {
    actionly_remote[remote] = true;
    image_index = 1;
    }
    else
    {
    actionly_remote[remote] = false;
    image_index = 0;
    }
}

