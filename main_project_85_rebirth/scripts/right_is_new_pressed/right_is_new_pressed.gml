if right_is_pressed()
{
if global.can_press_right
{
global.can_press_right = false;
return true;
}
}
else
{
global.can_press_right = true;
}
return false;
