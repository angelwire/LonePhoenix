if keyboard_check(vk_enter)
{
return true;
}

if global.plugged_in
{
if joystick_check_button(global.controller_port,start_button)
{
return true;
}
}

if g_mobile_start_pressed
{
return true;
}

return false;
