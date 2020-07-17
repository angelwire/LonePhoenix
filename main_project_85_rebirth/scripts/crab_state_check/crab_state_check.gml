/// @description crab_state_check()

if state = 0 //Idle
{
vulnerable = false;
start_frame = 0;
end_frame = 3;
image_speed = idle_animation_speed;
}
if state = 1 //Digging
{
vulnerable = true;
start_frame = 4;
end_frame = 7;
image_speed = dig_animation_speed;
}
if state = 2 //Popup Prep
{
vulnerable = false;
start_frame = 8;
end_frame = 11;
image_speed = popup_delay_animation_speed;
}
if state = 3 //Popping up
{
vulnerable = true;
start_frame = 12;
end_frame = 15;
image_speed = popup_animation_speed;
}
if state = 4 //Spinning
{
vulnerable = true;
start_frame = 16;
end_frame = 19;
image_speed = spin_animation_speed;
}
if state = 5 //Resting
{
vulnerable = true;
start_frame = 0;
end_frame = 3;
image_speed = idle_animation_speed;
}
