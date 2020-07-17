if l_is_pressed()
{
if global.can_press_l
{
global.can_press_l = false;
return true;
}
}
else
{
global.can_press_l = true;
}
return false;
