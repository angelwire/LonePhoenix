if y_is_pressed()
{
if global.can_press_y
{
global.can_press_y = false;
return true;
}
}
else
{
global.can_press_y = true;
}
return false;
