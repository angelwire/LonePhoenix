/// @description closes the game and clears everything
with (shader_controller)
{
surface_free(other_surface)
surface_free(main_surface)
surface_free(real_surface)
surface_free(application_surface)
sound_stop_all()
ii = 0;
while (surface_exists(other_surface) or surface_exists(real_surface) or surface_exists(main_surface) or ii < 6000)
{
ii += 1
}
//other real main
}
window_set_fullscreen(false)
game_end()
