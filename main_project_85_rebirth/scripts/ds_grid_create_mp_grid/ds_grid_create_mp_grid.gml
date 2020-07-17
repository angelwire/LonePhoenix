/// @description ds_grid_create_mp_grid(ds_grid,left,top,cellwidth, cellheight)
/// @param ds_grid
/// @param left
/// @param top
/// @param cellwidth
/// @param  cellheight

var grid = argument0;

mp_grid = mp_grid_create(argument1,argument2,ds_grid_width(grid),ds_grid_height(grid),argument3,argument4)

var xx, yy;
xx = 0;
yy = 0;
//draw_rectangle(0,0,1000,1000,false);
repeat(ds_grid_height(grid))
{
repeat(ds_grid_width(grid))
{
if ds_grid_get(grid,xx,yy) == 1
{
mp_grid_add_cell(mp_grid,xx,yy);
}
xx+=1;
}
xx = 0;
yy +=1;
}
return mp_grid;
