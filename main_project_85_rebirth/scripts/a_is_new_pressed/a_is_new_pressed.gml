if a_is_pressed()
{
if global.can_press_a
{
global.can_press_a = false;
return true;
}
}
else
{
global.can_press_a = true;
}
return false;
