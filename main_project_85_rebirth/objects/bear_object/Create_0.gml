image_speed = 0;
rangetimer = 0;
distance = 64;
follow_timer = 0;

attacking = false;
attack_timer = 0;

pause_timer = 0;
pause_delay = 60;

delay_timer = 0;
attack_delay = 15;

sleeping = true;
wake_distance = 24;

attack_distance = 20;

my_health = 25;

stun_timer = 0;

player_in_range = false;
x-=1000;
if place_meeting(x+1000,y,bear_object)
{
instance_destroy();
}
x+=1000;

