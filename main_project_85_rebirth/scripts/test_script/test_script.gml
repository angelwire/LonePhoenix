/*
First off, to make it a little bit easier on yourself, add a new script and name it values_in_range. Then paste this into it:
[CODE]///values_in_range(v1,v2,min1,max1,min2,max2)
var xx = argument0;
var yy = argument1;
var minx = argument2;
var maxx = argument3;
var miny = argument4;
var maxy = argument5;

if xx >= minx and xx <= maxx and yy>=miny and yy <= maxy
{
return true;
}
else
{
return false;
}[/CODE]
Once you've done that, replace:
[CODE]kDown = device_mouse_check_button_pressed(i, mb_left) && device_mouse_x(i) > view_xview[0] + 325 - 64 - 16 - 80 && device_mouse_x(i) < view_xview[0] + 325 - 16 - 80 && device_mouse_y(i) > view_yview[0] + 280 && device_mouse_y(i) < view_yview[0] + 280 + 64;[/CODE]
with this:
[CODE]kDown = device_mouse_check_button_pressed(i, mb_left) && values_in_range(device_mouse_x(i),device_mouse_y(i),view_xview[0] + 325 - 64 - 16 - 80,view_xview[0] + 325 - 16 - 80,view_yview[0] + 280,view_yview[0] + 280 + 64);[/CODE]
Once you've done that, go through and manually add the numbers together and replace them with the result ( 325 - 64 - 16 - 80 = 166 )
Now, looking at the screenshot, I can tell that 166 is too low of a value for the action/down button.
*/
