if keyboard_check(ord("Z")) 
{
return true;
}

if global.plugged_in
{
if joystick_check_button(global.controller_port,b_button)
{
return true;
}
}

if g_mobile_b_pressed
{
return true;
}

return false;
