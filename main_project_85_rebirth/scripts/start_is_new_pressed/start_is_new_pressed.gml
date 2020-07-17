if start_is_pressed()
{
if global.can_press_start
{
global.can_press_start = false;
return true;
}
}
else
{
global.can_press_start = true;
}
return false;
