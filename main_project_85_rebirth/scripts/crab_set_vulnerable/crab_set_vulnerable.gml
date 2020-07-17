/// @description crab_set_vulnerable()

if state = 0 //Idle
{
vulnerable = false;
}
if state = 1 //Digging
{
vulnerable = true;
}
if state = 2 //Popup Prep
{
vulnerable = false;
}
if state = 3 //Popping up
{
vulnerable = true;
}
if state = 4 //Spinning
{
vulnerable = true;
}
if state = 5 //Resting
{
vulnerable = false;
}
