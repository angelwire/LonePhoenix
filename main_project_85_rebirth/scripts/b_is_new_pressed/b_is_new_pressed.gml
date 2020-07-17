if b_is_pressed()
{
if global.can_press_b
{
global.can_press_b = false;
return true;
}
}
else
{
global.can_press_b = true;
}
return false;
