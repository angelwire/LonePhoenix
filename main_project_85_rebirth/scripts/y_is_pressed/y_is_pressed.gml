if global.plugged_in
{
if joystick_check_button(global.controller_port,4)
{
return true;
}
}
return false;
