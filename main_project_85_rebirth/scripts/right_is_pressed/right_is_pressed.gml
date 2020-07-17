if keyboard_check(vk_right)
{
return true;
}

if global.plugged_in
{
if joystick_xpos(global.controller_port) > .1
{
return true;
}
}

if g_mobile_right_pressed
{
return true;
}

return false;
