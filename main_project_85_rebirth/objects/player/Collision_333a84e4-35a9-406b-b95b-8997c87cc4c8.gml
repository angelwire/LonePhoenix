//color_transition = 0;


if other.id != color_block_collided
{
color_transition = 0;
color_block_collided = other.id;

color_goto_dark = get_color_dark(other.my_color);
color_goto_med_dark = get_color_med_dark(other.my_color);
color_goto_med_light = get_color_med_light(other.my_color);
color_goto_light = get_color_light(other.my_color);

show_debug_message("Color set to: " + string(other.my_color));
}

