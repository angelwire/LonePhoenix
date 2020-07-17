/// @description do screen size stuffs
if window_get_fullscreen()
{
global.resh = display_get_height()
global.resw = display_get_width()
global.resoffy = display_get_height()
global.resoffx = display_get_width()
}
else
{
global.resh = window_get_height()
global.resw = window_get_width()
global.resoffy = window_get_height()
global.resoffx = window_get_width()
}


if global.resw*.9 <= global.resh
{
global.resh = global.resw*.9
global.resoffx = 0
global.resoffy = global.resoffy-global.resh
}
else
{
global.resw = global.resh*1.11
global.resoffx = global.resoffx-global.resw
global.resoffy = 0
}

window_set_min_width(160);
window_set_min_height(144);
