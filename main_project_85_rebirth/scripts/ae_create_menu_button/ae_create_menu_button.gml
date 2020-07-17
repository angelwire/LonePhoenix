/// @description ae_create_menu_button(x,y,width,height)
/// @param x
/// @param y
/// @param width
/// @param height
var xx,yy,ww,hh;
xx = argument0;
yy = argument1;
ww = argument2;
hh = argument3;

var henry = instance_create(xx,yy,menu_button_object);
henry.width = ww;
henry.height = hh;
henry.my_id = total_buttons;
button_instance_id[total_buttons] = henry;
total_buttons +=1;

