/// @description get_damage_through_gear(damage_amount)
/// @param damage_amount
//returns a number to multiply the base damage

var damage_multiple = 1;
var snake_buff = 0;
var damage_predicted = argument0;

if equipped_misc = 23
{
snake_buff = get_gear_percentage(23,global.items[23]);
}

switch (equipped_shirt)
{
case 16: damage_multiple *= (get_gear_percentage(16,global.items[16]) + snake_buff); break;
case 18:
if (player_health > 5 and damage_predicted >= player_health)
{
    var randy = random(100)*.01;
    show_debug_message("Buffalo skin miracle: random # is: " + string(randy) + "- compared to: " + string(get_gear_percentage(18,global.items[18])+snake_buff) )
    
    if randy <= (get_gear_percentage(18,global.items[18])+snake_buff)
    {
    damage_multiple = 0;
    hurt_me_absolute(player_health - 1);
    audio_play_sound(miracle_sound,10,0);
    //play miracle sound
    }
    else
    {
    damage_multiple = 1;
    }
}
else
{
damage_multiple = 1;
}
break;
default: damage_multiple = 1;
}

return damage_multiple;
