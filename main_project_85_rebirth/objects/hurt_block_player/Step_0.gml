if disappear_time >= 0
{
disappear_time -= 1;
if disappear_time < 0
{
instance_destroy();
}
}

