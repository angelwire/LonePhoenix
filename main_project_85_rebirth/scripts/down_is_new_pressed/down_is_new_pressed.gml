if down_is_pressed()
{
if global.can_press_down
{
global.can_press_down = false;
return true;
}
}
else
{
global.can_press_down = true;
}
return false;
