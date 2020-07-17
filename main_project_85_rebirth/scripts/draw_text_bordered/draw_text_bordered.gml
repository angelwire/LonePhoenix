/// @description draw_text_bordered(x,y,string,main_color,border_color,thickness, seperation, width)
/// @param x
/// @param y
/// @param string
/// @param main_color
/// @param border_color
/// @param thickness
/// @param  seperation
/// @param  width
var stringy,xx,yy,color_1,color_2,thick,sep,width,ccc;
sep = argument6;
width = argument7;
xx = argument0
yy = argument1
stringy = argument2
color_1 = argument3
color_2 = argument4
thick = argument5
ccc = draw_get_color()
draw_set_color(color_2)
draw_text_ext(xx+thick,yy,string(stringy),sep,width)
draw_text_ext(xx,yy+thick,string(stringy),sep,width)
draw_text_ext(xx-thick,yy,string(stringy),sep,width)
draw_text_ext(xx,yy-thick,string(stringy),sep,width)
draw_set_color(color_1)
draw_text_ext(xx,yy,string(stringy),sep,width)
draw_set_color(ccc)
