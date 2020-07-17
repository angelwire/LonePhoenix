if up_is_pressed()
{
if global.can_press_up
{
global.can_press_up = false;
return true;
}
}
else
{
global.can_press_up = true;
}
return false;
