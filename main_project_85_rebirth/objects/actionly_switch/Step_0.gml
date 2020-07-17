if instance_exists(player)
{
    if point_distance(x,y,player.x+(cosine(player.direction)*8),player.y-(sine(player.direction)*8)) < 15
    {
        if player.b_pressed
        {
            actionly_remote[remote] = !actionly_remote[remote];
        }
    draw_bubble = true;
    }
    else
    {
    draw_bubble = false;
    }
}
else
{
draw_bubble = false;
}

image_index = merge_variable(actionly_remote[remote]*(image_number-1),image_index,animation_speed)

