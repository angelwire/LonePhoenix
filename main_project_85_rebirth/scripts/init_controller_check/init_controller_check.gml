/// @description init_controller_check

//global.plugged_in = joystick_exists(ii)
global.plugged_in = false
global.controller_port = -1

var ii =0
repeat(5)
{

if joystick_exists(ii)
{
global.plugged_in = true
global.controller_port = ii;
}
ii+=1;

}
