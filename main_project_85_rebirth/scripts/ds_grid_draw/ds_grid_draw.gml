/// @description ds_grid_draw(id,width,height)
/// @param id
/// @param width
/// @param height
var width, height, grid;
var grid = argument0;
var width = argument1;
var height = argument2;

var xx, yy;
xx = 0;
yy = 0;
draw_rectangle(0,0,1000,1000,false)
repeat(ds_grid_height(grid))
{
repeat(ds_grid_width(grid))
{
draw_set_color(c_black)
draw_text(xx*16,yy*16,string_hash_to_newline(ds_grid_get(grid,xx,yy)))
draw_set_color(c_white)
xx+=1;
}
xx = 0;
yy +=1;
}
