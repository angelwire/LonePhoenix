if select_is_pressed()
{
if global.can_press_select
{
global.can_press_select = false;
return true;
}
}
else
{
global.can_press_select = true;
}
return false;
