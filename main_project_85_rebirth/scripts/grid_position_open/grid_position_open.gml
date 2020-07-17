/// @description grid_position_open(grid,x,y)
/// @param grid
/// @param x
/// @param y
grid = argument0;
xx = argument1;
yy = argument2;

if ds_grid_get(grid,floor(xx/16),floor(yy/16)) == 1
{
return false;
}
else
{
return true;
}
