/// @description Update Intro variable
if intro >0
{
intro -=.1
}

if slow_step = true
{
slow_step = show_question("Continue step?");
}

