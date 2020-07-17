if global.which_combo = 1
{

if power_attack_timer = 15
{
frame_start = ((direction/90)*4)+16;
frame_end = ((direction/90)*4)+20;
image_speed = .3;
image_index = frame_start
attacking = true;

var bill;
/*
bill = instance_create(x,y,bullet_object)
bill.hspeed = cosine(player.direction)*3
bill.vspeed = -sine(player.direction)*3
*/
bill = instance_create(x+(cosine(player.direction+110)*6),y-(sine(player.direction+110)*4),bullet_object)
bill.hspeed = cosine(player.direction)*3
bill.vspeed = -sine(player.direction)*3

bill = instance_create(x+(cosine(player.direction-110)*5),y-(sine(player.direction-110)*4),bullet_object)
bill.hspeed = cosine(player.direction)*3
bill.vspeed = -sine(player.direction)*3
audio_play_sound(gunshot_sound,10,0)
}
}

if global.which_combo = 4
{

if power_attack_timer = 20
or power_attack_timer = 15
or power_attack_timer = 10
or power_attack_timer = 5
{
attacking = true;
direction+=90;
frame_start = ((direction/90)*4)+16;
frame_end = ((direction/90)*4)+20;
image_speed = .3;
image_index = frame_start
var bill;
bill = instance_create(x,y,bullet_object)
bill.hspeed = cosine(player.direction)*3
bill.vspeed = -sine(player.direction)*3
audio_play_sound(gunshot_sound,10,0)
}
}
