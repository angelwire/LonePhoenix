/// @description hurt_me(amount);
/// @param amount
var ow;
var damage = argument0;
ow = instance_nearest(x,y-2,hurt_parent);
var damage_delta = damage * get_damage_through_gear(damage);

if global.canhurt = 0
{

    if damage_delta > 0
    {
    
    
    if equipped_shirt = 17 //if the player is wearing a beaver shirt
        {
            if equipped_misc = 23 //if the player is using snake skin oil
            {
                with(ow)
                {
                ow.my_health -= damage_delta * (get_gear_percentage(17,global.items[17]) + get_gear_percentage(23,global.items[23]));
                }
            }
            else
            {
                with(ow)
                {
                ow.my_health -= damage_delta * get_gear_percentage(17,global.items[17]);
                }
            }
        }
    
    
        audio_play_sound(ouch_sound,6,0)
        player_health -= damage_delta;
        global.canhurt = 120;
        global.spriteyto = 0;
        speed = 0;
        
        attacking = false
        
        if player_health <= 0
        {
        instance_create(-100,-100,game_over_controller)
        gotime = false;
        }
        
        show_health_popup();
    }
}


