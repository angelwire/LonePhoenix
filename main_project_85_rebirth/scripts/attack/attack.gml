//if global.canhurt < 60
{
if arrow_direction() != -1 and power_attack_timer <1
{
direction = arrow_direction()
}

var bill;
attacking = true;
frame_start = ((direction/90)*4)+16;
frame_end = ((direction/90)*4)+20;
image_speed = .2+ (.2*get_attack_speed_multiple());

if global.character = cowboy_sprite
{
image_index = frame_start
bill = instance_create(x,y,bullet_object)
bill.hspeed = cosine(player.direction)*3
bill.vspeed = -sine(player.direction)*3
audio_play_sound(gunshot_sound,10,0)
}

if global.character = indian_sprite
{
image_index = frame_start
if round(direction) = 0 {bill = instance_create(x-6,y-2,tomahawk_object)}
if round(direction) = 90 {bill = instance_create(x+1,y+6,tomahawk_object)}
if round(direction) = 180 {bill = instance_create(x+6,y,tomahawk_object)}
if round(direction) = 270 {bill = instance_create(x-1,y-6,tomahawk_object)}
/*
if round(direction) = 0 {bill = instance_create(x-4,y-2,tomahawk_object)}
if round(direction) = 90 {bill = instance_create(x+3,y,tomahawk_object)}
if round(direction) = 180 {bill = instance_create(x+3,y-2,tomahawk_object)}
if round(direction) = 270 {bill = instance_create(x-2,y-4,tomahawk_object)}
*/
bill.direction = direction
bill.hspeed = cosine(player.direction)*2
bill.vspeed = -sine(player.direction)*2
image_speed = .12+ (.12*get_attack_speed_multiple());
}

if global.character = girl_sprite
{
image_index = frame_start
audio_play_sound(girl_attack_sound,5,0)
image_speed = .2+ (.2*get_attack_speed_multiple());
create_hurt_block_player(x+cosine(direction)*8,(y-sine(direction)*8)-4,12,12,26,5,0,0,self);
}

if global.character = or_sprite
{
image_index = frame_start
audio_play_sound(dash_sound,7,0)
image_speed = .2+ (.2*get_attack_speed_multiple());
}


}
