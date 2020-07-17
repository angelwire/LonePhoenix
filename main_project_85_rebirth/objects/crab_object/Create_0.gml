start_frame = 0;
end_frame = 0;

state = 0
/*
0 = idle 0-3
1 = digging 4-7
2 = getting ready to pop out 8-11
3 = popping out 12-15
4 = spinning back around 16-19
5 = resting for a moment 0-3
*/

popup_delay = 70;
popup_delay_timer = 0;

rest_delay = 80;
rest_delay_timer = 0;

idle_animation_speed = .1;
popup_delay_animation_speed = .1;
dig_animation_speed = .2;
popup_animation_speed = .15;
spin_animation_speed = .2;

my_health = 18;
vulnerable = false;

stun_timer = 0;

/* */
/*  */
