if global.which_combo = 1
{
if power_attack_timer = 20
or power_attack_timer = 15
or power_attack_timer = 10
or power_attack_timer = 5
{
attacking = true;
direction-=90;
frame_start = ((direction/90)*4)+16;
frame_end = ((direction/90)*4)+20;
image_speed = .3;
image_index = frame_start
}
attacking = true;
}
