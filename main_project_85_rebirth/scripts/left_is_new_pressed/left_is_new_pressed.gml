if left_is_pressed()
{
if global.can_press_left
{
global.can_press_left = false;
return true;
}
}
else
{
global.can_press_left = true;
}
return false;
