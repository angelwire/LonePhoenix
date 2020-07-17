if keyboard_check(vk_left)
{
return true;
}

if global.plugged_in
{
if joystick_xpos(global.controller_port) < -.1
{
return true;
}
}

if g_mobile_left_pressed
{
return true;
}

return false;
