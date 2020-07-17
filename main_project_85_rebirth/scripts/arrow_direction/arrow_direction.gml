/// @description Returns the direction the player is currently pushing
if left_is_pressed()
{
return 180;
}
else if right_is_pressed()
{
return 0;
}
else if up_is_pressed()
{
return 90;
}
else if down_is_pressed()
{
return 270;
}
else
{
return -1;
}
