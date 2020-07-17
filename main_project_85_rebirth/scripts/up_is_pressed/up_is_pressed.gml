if keyboard_check(vk_up)
{
return true;
}

if global.plugged_in
{
if joystick_ypos(global.controller_port) < -.1
{
return true;
}
}

if g_mobile_up_pressed
{
return true;
}

return false;
