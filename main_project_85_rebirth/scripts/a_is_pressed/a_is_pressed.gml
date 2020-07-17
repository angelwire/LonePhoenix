if keyboard_check(ord("X"))
{
return true;
}

if global.plugged_in
{
if joystick_check_button(global.controller_port,a_button)
{
return true;
}
}

if g_mobile_a_pressed
{
return true;
}

return false;
