if values_in_range(x,y,player.x-150,player.x+150,player.y-150,player.y+150) // If it's close to the player and not stunned
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
    branchoff[1] = round(cosine(myvar-30+y))
    branchoff[2] = round(cosine(myvar-30+y))
    branchoff[3] = round(cosine(myvar-15+y))
    branchoff[4] = round(cosine(myvar-50+y))
    branchoff[5] = round(cosine(myvar-30+y))
    branchoff[6] = round(cosine(myvar-50+y))
    image_index = (branchoff[0])+2
}

