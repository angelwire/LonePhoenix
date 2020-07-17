if values_in_range(x,y,player.x-160,player.x+160,player.y-160,player.y+160) // If it's close to the player and not stunned
{
    if global.grass = floor((x+y)/8)
    {
    image_speed = .3
    }
    
    if image_speed> .07
    {
    image_speed -= .001
    }
    myvar+= (image_speed*30);
    
    
    branchoff[0] = round(cosine(myvar+y))
    branchoff[1] = round(cosine(myvar-10+y))
    branchoff[2] = round(cosine(myvar-10+y))
    image_index = (branchoff[0])+2
}

