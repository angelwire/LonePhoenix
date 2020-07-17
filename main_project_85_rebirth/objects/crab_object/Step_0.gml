/// @description check if in range
player_in_range = values_in_range(x,y,player.x-200,player.x+200,player.y-200,player.y+200) // If it's close to the player and not stunned

///Animation
/*
0 = idle 0-3
1 = digging 4-7
2 = getting ready to pop out 8-11
3 = popping out 12-15
4 = spinning back around 16-19
5 = resting for a moment 0
*/

if stun_timer < 1
{
depth = -(y+6);

crab_state_check();

//check for attack
if ceil(image_index) = 14
{
create_hurt_block(x,y-4,20,22,1,8,0,0,id);
}

if image_index >= end_frame
{
//show_message(image_index);
//show_debug_message("frame_end_pre_state: " + string(state));
state = crab_state_update(state);
crab_state_check();
//show_debug_message("frame_end_post_state: " + string(state));
image_index = start_frame;
}
if image_index < start_frame
{
image_index = start_frame;
}
}
else
{
image_index -= image_speed;
}

/* */
///Control

if stun_timer < 1
{
if gotime = true
{
if state = 0 //Idle
{
if distance_to_object(player) < 60
{
popup_x = player.x;
popup_y = player.y-5;
state = 1;
}
}

if state = 2 //Popup Prep
{
jump_to_popup_position(popup_x,popup_y);

popup_delay_timer +=1;
if popup_delay_timer >= popup_delay
{
popup_delay_timer = 0;
state = 3;
}
}

if state = 5
{
rest_delay_timer +=1;
if rest_delay_timer >= rest_delay
{
rest_delay_timer = 0;
state = 0;
}
}
}
}
else
{
ignore_speed();
stun_timer -= 1;
}

/* */
///control collisions
crab_set_vulnerable();


if player_in_range
{
    if place_meeting(x,y,bullet_object)
    {
        if vulnerable = false
        {
        show_debug_message("I am invincible at state: " + string(state))
        with(instance_nearest(x,y,bullet_object))
        {
        instance_create(x,y,expel_object);
        instance_destroy();
        }
        audio_play_sound(klink_sound,1,0);
        }
        else
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
    }
    ///Tomahawk
    if place_meeting(x,y,tomahawk_object)
    {   
        if vulnerable = false
        {
        show_debug_message("I am invincible at state: " + string(state))
        with(instance_nearest(x,y,tomahawk_object))
        {
        instance_create(x,y,expel_object);
        instance_destroy();
        }
        audio_play_sound(klink_sound,1,0);
        }
        else
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
    }
    
    ///Power Tomahawk
    if place_meeting(x,y,power_tomahawk_object)
    {
        if vulnerable = false
        {
        show_debug_message("I am invincible at state: " + string(state))
        with(instance_nearest(x,y,tomahawk_object))
        {
        instance_create(x,y,expel_object);
        instance_destroy();
        }
        audio_play_sound(klink_sound,1,0);
        }
        else
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
    }
    
    
    //Player hurt block
    if place_meeting(x,y,hurt_block_player)
    {
    if vulnerable = false
        {
        show_debug_message("I am invincible at state: " + string(state))
        with(instance_nearest(x,y,hurt_block_player))
        {
        instance_create(x,y,expel_object);
        instance_destroy();
        }
        audio_play_sound(klink_sound,1,0);
        }
        else
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
    }
    
    
    if my_health <= 0
    {
    instance_destroy();
    instance_create(x,y,crab_shell_object);
    
    if my_id != 1
    {
    enemy_should_spawn[my_id] = false;
    }
    
    }

}


/* */
/*  */
