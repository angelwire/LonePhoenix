/// @description check if in range
player_in_range = values_in_range(x,y,player.x-250,player.x+250,player.y-250,player.y+250)

///animation control
if gotime = true and stun_timer < 1
{
	if (direction < 0)
	{
		direction += 360;
	}
if attacking = false
{
endframe = ((direction/90)*4)+4
startframe = (direction/90)*4
image_index += speed*.1
}
else
{
endframe = ((direction/90)*4)+20
startframe = (direction/90)*4+16
image_index += .15;
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
delay_timer = -9999
}

}

if image_index < startframe
{
image_index = startframe
}

depth = -(y)
}

///normal control
if stun_timer < 1
{

if instance_exists(player)
{
if player_in_range
{
        var dtp = floor(abs(x-player.x)*.8) + abs(y-player.y);
        
        if values_in_range(x,y,player.x-distance,player.x+distance,player.y-distance,player.y+distance) // If it's close to the player and not stunned
        {
            if attacking = false and pause_timer <= 0
            {
            go_towards_point_bear(player.x,player.y-4);
            }
        //follow_timer +=1;
        }
        else
        {
        //show_debug_message("do de do")
        roam();
        }
        
        if dtp < 16 and pause_timer <=0
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

}

if gotime = false
{
ignore_speed();
}
else
{
stun_timer -=1;
if stun_timer < 1
{
pause_timer  -= 1;
delay_timer += 1;

if attacking = true and delay_timer > attack_delay
{
if !place_meeting(x + dcos(direction)*4, y - dsin(direction)*4,block_object)
{
x += dcos(direction)*4;
y -= dsin(direction)*4;
}

create_hurt_block(
x+(dcos(direction)*14),
(y-(dsin(direction)*8))-4,
14+abs(dcos(direction)*12),
14+abs(dsin(direction)*12),
3,
15,
8,
direction,
id)

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
    instance_create(x,y,lizard_scale_object);
    
    if my_id != 1
    {
    enemy_should_spawn[my_id] = false;
    }
    
    }

}


