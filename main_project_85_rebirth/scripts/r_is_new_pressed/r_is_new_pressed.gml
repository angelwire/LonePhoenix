if r_is_pressed()
{
if global.can_press_r
{
global.can_press_r = false;
return true;
}
}
else
{
global.can_press_r = true;
}
return false;
