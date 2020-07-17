if global.plugged_in
{
if joystick_check_button(global.controller_port,select_button)
{
return true;
}
}

if g_mobile_select_pressed
{
return true;
}

return false;
