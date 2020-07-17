/// @description check if in range
//this is sort of opposite to what the other enemies use
//player_in_range is whether or not the buffalo should charge
player_in_range = values_in_range(x,y,player.x-80,player.x+80,player.y-80,player.y+80) // If it's close to the player and not stunned

///animation stuff 

if gotime = true and stun_timer < 1
{
if stuntimer < 1
{
endframe = ((direction/90)*4)+4
startframe = (direction/90)*4
image_index += speed*.15
}
else
{
endframe = ((direction/90)*2)+18
startframe = ((direction/90)*2)+16
image_index += .1
}



if image_index >= endframe
{
image_index = startframe
}

if image_index < startframe
{
image_index = startframe
}

depth = -y
}

if stun_timer < 1
{
if gotime = true
{

if instance_exists(player)  // If there is a player
{

    if values_in_range(x,y,player.x-400,player.x+400,player.y-400,player.y+400) //if it's close enough to even worry about
    {
        if player_in_range
        {
            if stuntimer = 0 
            {
            
                if ((abs(x-player.x) < 5 or abs(y-player.y) < 5) or iamattacking = true)  //If it's aligned with the player and there's nothing in the way
                {
                    if !collision_line(x,y,player.x,player.y,block_object,false,true)
                    {
                        if iamattacking = false //If it's not attacking yet
                        {
                        speed = 0 //stop the buffalo!
                        direction = round(point_direction(x,y,player.x,player.y)/90)*90 //Turn it in the right direction
                        iamattacking = true  //Tell it that it's attacking
                        attackprep = 25+ irandom(15) //Set the attacking prep timer
                        attacktimer = 60;
                        }
                        else // If it is attacking
                        {
                            if attackprep = 0//If the prep timer has gone off
                            {
                            speed = 2 //GOOO!!!
                            attacktimer = 60; //Sets the stop timer
                            attackprep = -1;
                            }
                            else // If the prep timer hasn't gone off
                            {
                                //if values_in_range(x,y,player.x-75,player.x+75,player.y-75,player.y+75)
                               // {
                                attackprep -= 1; //Update the prep timer if it's close to the player
                                //}
                            }
                        }
                    }
                    else
                    {
                    mydistance = 1;
                    mydistancetimer = round(random(60)+60)
                    }
                
                
                }
                else //If it's not aligned with the player then try to align itself
                {
                
                if abs(x-player.x) <= abs(y-player.y)//check which way to align
                {
                //align x
                direction = 180*(player.x < x)
                if !place_meeting(x+cosine(direction)*1,y-sine(direction)*1,block_object)
                {
                speed = 1;
                }
                else
                {
                speed = 0;
                mydistance = 1;
                mydistancetimer = 90;
                }
                
                }
                else
                {
                    //align y
                    direction = 180*(player.y > y)+90
                    if !place_meeting(x+cosine(direction)*1,y-sine(direction)*1,block_object)
                    {
                    speed = 1;
                    }
                    else
                    {
                    mydistance = 1;
                    speed = 0;
                    mydistancetimer = 90;
                    }
                    
                    
                }
                mydistance -= .3;
                }
            }
            
        }
        else
        {
        iamattacking = false  //Tell it that it's not attacking
        attackprep = 30 //Set the attacking prep timer
        attacktimer = 60; //Set the attack timer
        ignore_speed();
        
        if stuntimer = 0
        {
        roam()
        }
        
        }
    }

}

if stuntimer > 0 //Update the stun timer
{
speed = 0;
stuntimer -= 1;
}


if iamattacking = true and attackprep < 1 //If I'm attacking
{
if attacktimer < 10
{
speed = 1
}
if attacktimer < 1 //If it should stop
{
speed = 0 //STOP!!!!!1!!1!
iamattacking = false; //It's not attacking any more
}
else //If the attack timer hasn't gone off
{
attacktimer -=1; //Update the attack timer
}

if place_meeting(x+cosine(direction)*4,y-sine(direction)*4,block_object) //If it is about to run into something
{
speed = 0; //STOP!
stuntimer = 240; //Owch that hurt, now I'm stunned
iamattacking = false; //I'm hurt so I can't attack any more
}

if place_meeting(x+cosine(direction)*4,y-sine(direction)*4,buffalo_object) //If it is about to run into another buffalo
{
    if instance_place(x+cosine(direction)*4,y-sine(direction)*4,buffalo_object).id > id //if it's older
    {
    speed = 0; //STOP!
    stuntimer = 100; //Owch that hurt, now I'm stunned
    iamattacking = false; //I'm hurt so I can't attack any more
    }
}


}

if mydistance = 1
{
mydistancetimer -= 1;
if mydistancetimer < 1
{
mydistance = 70
mydistancetimer = round(random(60)+60)
}
}


}
else
{
ignore_speed()
}
}
else
{
stun_timer -= 1;
ignore_speed();
}



///control collisions
if player_in_range
{
    if place_meeting(x,y,bullet_object)
    {    
        with(instance_nearest(x,y,bullet_object))
        {
        instance_destroy();
        }
        my_health -=3 * get_damage_multiple();
        audio_play_sound(enemy_ouch_sound,1,0);
        
        
        if equipped_gloves = 20 and stun_timer < 1
        {
            if random(100) *.01 < get_gear_percentage(20,global.items[20]) + get_snake_oil_offset()
            {
            stun_timer = 100;
            }
            else
            {
            show_debug_message("random chance to stun failed");
            }
        }
    }
    ///Tomahawk
    if place_meeting(x,y,tomahawk_object)
    {    
        with(instance_nearest(x,y,tomahawk_object))
        {
        instance_destroy();
        }
        my_health -=5 * get_damage_multiple();
        audio_play_sound(enemy_ouch_sound,1,0);
        
        
        if equipped_gloves = 20 and stun_timer < 1
        {
            if random(100) *.01 < get_gear_percentage(20,global.items[20]) + get_snake_oil_offset()
            {
            stun_timer = 100;
            }
            else
            {
            show_debug_message("random chance to stun failed");
            }
        }
    }
    
    ///Power Tomahawk
    if place_meeting(x,y,power_tomahawk_object)
    {    
        with(instance_nearest(x,y,power_tomahawk_object))
        {
        instance_destroy();
        }
        my_health -=10 * get_damage_multiple();
        audio_play_sound(enemy_ouch_sound,1,0);
        
        
        if equipped_gloves = 20 and stun_timer < 1
        {
            if random(100) *.01 < get_gear_percentage(20,global.items[20]) + get_snake_oil_offset()
            {
            stun_timer = 100;
            }
            else
            {
            show_debug_message("random chance to stun failed");
            }
        }
    }
    
    
    //Player hurt block
    if place_meeting(x,y,hurt_block_player)
    {    
        with(instance_nearest(x,y,hurt_block_player))
        {
        instance_destroy();
        }
        my_health -=4 * get_damage_multiple();
        audio_play_sound(enemy_ouch_sound,1,0);
        
        
        if equipped_gloves = 20 and stun_timer < 1
        {
            if random(100) *.01 < get_gear_percentage(20,global.items[20]) + get_snake_oil_offset()
            {
            stun_timer = 100;
            }
            else
            {
            show_debug_message("random chance to stun failed");
            }
        }
    }
    
    
    if my_health <= 0
    {
    instance_destroy();
    instance_create(x,y,buffalo_skin_object);
    
    if my_id != 1
    {
    enemy_should_spawn[my_id] = false;
    }
    
    }

}


