/// @description check if in range
player_in_range = values_in_range(x,y,player.x-200,player.x+200,player.y-200,player.y+200)

///animation control
if gotime = true and stun_timer < 1
{

if attacking = false
{
if sleeping = false // iF THE bear is just wandering around or chasing the player
{
endframe = ((direction/90)*4)+4
startframe = (direction/90)*4
image_index += speed*.1
}
else //If the bear is sleeping
{
endframe = 35;
startframe = 32;
image_index += .05;
}

}
else // If the bear is attacking
{
endframe = ((direction/90)*4)+20;
startframe = (direction/90)*4+16;
image_index += .2;
}



if image_index >= endframe
{
image_index = startframe

if attacking = true
{
image_index = endframe-1
attacking = false;
dpop()
pause_timer = pause_delay;
}

}

if image_index < startframe
{
image_index = startframe
}

depth = -(y+8)
}

///control stuff
if instance_exists(player) and stun_timer < 1
{
if player_in_range
{  
        var dtp = abs(x-player.x) + abs(y-player.y);
        
        if distance_to_object(player) < distance
        {
        
        if distance_to_object(player) < wake_distance
        {
        sleeping = false;
        }
        
        
            if attacking = false and pause_timer <= 0 and sleeping = false
            {
            go_towards_point_bear(player.x,player.y-4);
            }
        //follow_timer +=1;
        }
        else
        {
        //show_debug_message("do de do")
        roam_bear();
        }
        
        if dtp < attack_distance and pause_timer <=0 and stun_timer < 1
        {
        //attack
        if attacking = false
        {
        speed = 0;
        attacking = true;
        attack_timer = 40;
        image_index = startframe;
        direction = round(point_direction(x,y,player.x,player.y)/90)*90;
        delay_timer = 0;
        }
        
        }
        
}
else
{
ignore_speed();
}

}

if gotime = false
{
ignore_speed();
}
else
{
stun_timer -= 1;

if stun_timer < 1
{
pause_timer  -= 1;
delay_timer += 1;
if attacking = true and delay_timer > attack_delay
{
create_hurt_block(x+(dcos(direction)*6),y-(dsin(direction)*6),16+abs(dcos(direction)*18),16+abs(dsin(direction)*18),15,20,16,direction,id)
delay_timer = -9999
}
}


}

if stun_timer > 0
{
ignore_speed();
}

///control collisions

if player_in_range
{
    //Bullet
    if place_meeting(x,y,bullet_object)
    {
        with(instance_nearest(x,y,bullet_object))
        {
        instance_destroy();
        }
        sleeping = false;
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
        
        
        if my_health <= 0
        {
        instance_destroy();
        instance_create(x,y,disappear_object);
        instance_create(x,y,bear_skin_object);
        
        if my_id != 1
        {
        enemy_should_spawn[my_id] = false;
        }
        
        }
    }
    
    //----------------------------------------------
    //Tomahawk
    //-----------------------------------------------
    if place_meeting(x,y,tomahawk_object)
    {
        with(instance_nearest(x,y,tomahawk_object))
        {
        instance_destroy();
        }
        sleeping = false;
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
        
        
        
        if my_health <= 0
        {
        instance_destroy();
        instance_create(x,y,bear_skin_object);
        
        if my_id != 1
        {
        enemy_should_spawn[my_id] = false;
        }
        
        }
    }
    
    //----------------------------------------------
    //Power Tomahawk
    //-----------------------------------------------
    if place_meeting(x,y,power_tomahawk_object)
    {
        with(instance_nearest(x,y,power_tomahawk_object))
        {
        instance_destroy();
        }
        sleeping = false;
        my_health -=10 * get_damage_multiple();
        audio_play_sound(enemy_ouch_sound,1,0);
        
        
        if equipped_gloves = 20 and stun_timer < 1
        {
            if random(100) *.01 < get_gear_percentage(20,global.items[20]) + get_snake_oil_offset()
            {
            stun_timer = 120;
            }
            else
            {
            show_debug_message("random chance to stun failed");
            }
        }
        
        
        
        if my_health <= 0
        {
        instance_destroy();
        instance_create(x,y,bear_skin_object);
        
        if my_id != 1
        {
        enemy_should_spawn[my_id] = false;
        }
        
        }
    }
    
    //-----------------------------------------------
    //Player Hurt Block
    //-----------------------------------------------
    if place_meeting(x,y,hurt_block_player)
    {
        with(instance_nearest(x,y,hurt_block_player))
        {
        instance_destroy();
        }
        sleeping = false;
        my_health -=4 * get_damage_multiple();
        audio_play_sound(enemy_ouch_sound,1,0);
        
        
        if equipped_gloves = 20 and stun_timer < 1
        {
            if random(100) *.01 < get_gear_percentage(20,global.items[20]) + get_snake_oil_offset()
            {
            stun_timer = 120;
            }
            else
            {
            show_debug_message("random chance to stun failed");
            }
        }
        
        
        
        if my_health <= 0
        {
        instance_destroy();
        instance_create(x,y,bear_skin_object);
        
        if my_id != 1
        {
        enemy_should_spawn[my_id] = false;
        }
        
        }
    }
    
    
    
}

