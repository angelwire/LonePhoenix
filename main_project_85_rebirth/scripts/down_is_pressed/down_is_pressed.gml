if keyboard_check(vk_down)
{
return true;
}

if global.plugged_in
{
if joystick_ypos(global.controller_port) > .1
{
return true;
}
}

if g_mobile_down_pressed
{
return true;
}

return false;
