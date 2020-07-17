if x_is_pressed()
{
if global.can_press_x
{
global.can_press_x = false;
return true;
}
}
else
{
global.can_press_x = true;
}
return false;
