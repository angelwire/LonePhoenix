globalvar enemy_should_spawn;
var ii = 0;

repeat(128)
{
enemy_should_spawn[ii] = true;
ii+=1;
}

//0 = should not respawn
//1 = should always respawn
