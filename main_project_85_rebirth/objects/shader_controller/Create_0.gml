main_surface = -1;
other_surface = -1;
real_surface = -1;

intro = 1

// get shader constant handle
colour_to_find_dark = shader_get_uniform(main_shader, "f_Colour1");
colour_to_set_dark = shader_get_uniform(main_shader, "f_Colour2");
colour_to_find_med_dark = shader_get_uniform(main_shader, "f_Colour3");
colour_to_set_med_dark = shader_get_uniform(main_shader, "f_Colour4");
colour_to_find_med_light = shader_get_uniform(main_shader, "f_Colour5");
colour_to_set_med_light = shader_get_uniform(main_shader, "f_Colour6");
colour_to_find_light = shader_get_uniform(main_shader, "f_Colour7");
colour_to_set_light = shader_get_uniform(main_shader, "f_Colour8");

/*
if instance_number(shader_controller) > 1
{
instance_destroy()
}
*/

dusk_merge_amount = .7;
night_merge_amount = .7;

/* */
/*  */
