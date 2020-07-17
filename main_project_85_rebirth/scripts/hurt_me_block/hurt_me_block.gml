/// @description hurt_me_block(block_object);
/// @param block_object
var ow = argument0;

var damage_delta = ow.hurt_amount * get_damage_through_gear(ow.hurt_amount);

if global.canhurt = 0
{
    global.canhurt = 120;
    global.spriteyto = 0;
    speed = 0;
    attacking = false
   
    if damage_delta > 0
    {
        audio_play_sound(ouch_sound,6,0)
        player_health -= damage_delta;
        
        if equipped_shirt = 17 //if the player is wearing a beaver shirt
        {
            if equipped_misc = 23 //if the player is using snake skin oil
            {
                with(ow)
                {
                parent_object.my_health -= damage_delta * (get_gear_percentage(17,global.items[17]) + get_gear_percentage(23,global.items[23]));
                }
            }
            else
            {
                with(ow)
                {
                parent_object.my_health -= damage_delta * get_gear_percentage(17,global.items[17]);
                }
            }
        }
        
        if ow.knockback_distance > 0
        {
        drag_to_x = player.x+(dcos(ow.knockback_direction) * ow.knockback_distance);
        drag_to_y = player.y-(dsin(ow.knockback_direction) * ow.knockback_distance);
        //show_debug_message(ow.knockback_distance);
        }
        
        if player_health <= 0
        {
        instance_create(-100,-100,game_over_controller)
        gotime = false;
        }
        
        show_health_popup();
    }

}

