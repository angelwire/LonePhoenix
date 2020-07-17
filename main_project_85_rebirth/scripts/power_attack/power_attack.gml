//if global.canhurt < 60
{
if arrow_direction() != -1 and power_attack_timer < 1
{
direction = arrow_direction()
}

/*
var bill;
attacking = true;
frame_start = ((direction/90)*4)+16;
frame_end = ((direction/90)*4)+20;
image_speed = .3;
*/

if global.character = cowboy_sprite
{
cowboy_power_attack();
}

if global.character = indian_sprite
{
indian_power_attack();
}

if global.character = girl_sprite
{
girl_power_attack();
}

if global.character = or_sprite
{
or_power_attack();
}




}
