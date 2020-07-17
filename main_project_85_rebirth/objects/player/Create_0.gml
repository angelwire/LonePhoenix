sprite_index = global.character;
image_speed = .1
frame_start = 0;
frame_end = 0;
can_enter = 0;
sitting = false;
can_sit = false;
attacking = false;
timez = 0;
andyman = -1
bubble_frame = 0;
near_mirror = -1
show_action_bubble = false
show_bubble = false
draw_grave = false;

drag_to_x = -.54321;
drag_to_y = -.54321;

charge_timer = 0;
global.power_attack_timer = 0
power_attack_timer = 0


bubble_x = 0;
bubble_y = 0;

sleep_offset = 30;

if global.should_wake = true
{
sleeping = true;
sleeping_timer = 0;
}
else
{
sleeping = false;
sleeping_timer = 0;
}

color_block_collided = -1; //the last color block that the player has collided with

if (room = main_cave)
{
color_transition = 0;
color_goto_dark = get_color_dark("greeny");
color_goto_med_dark = get_color_med_dark("greeny");
color_goto_med_light = get_color_med_light("greeny");
color_goto_light = get_color_light("greeny");
}

