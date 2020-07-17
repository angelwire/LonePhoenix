draw_set_alpha(.4);
draw_set_color(c_white)
draw_rectangle(screen_width*.1,screen_height*.7,screen_width*.2,screen_height,false);
draw_rectangle(screen_width*0,screen_height*.8,screen_width*.3,screen_height*.9,false);

draw_set_color(c_red)
var xx = screen_width*.7;
var yy = screen_height*.7;
var ww = screen_width*.1;
var hh = screen_height*.1;
draw_ellipse(xx,yy,xx+ww,yy+hh,false);

xx = screen_width*.9;
yy = screen_height*.7;
ww = screen_width*.1;
hh = screen_height*.1;
draw_ellipse(xx,yy,xx+ww,yy+hh,false);

draw_set_color(c_aqua)
xx = screen_width*.8;
yy = screen_height*.6;
ww = screen_width*.1;
hh = screen_height*.05;
draw_ellipse(xx,yy,xx+ww,yy+hh,false);

xx = screen_width*.8;
yy = screen_height*.5;
ww = screen_width*.1;
hh = screen_height*.05;
draw_ellipse(xx,yy,xx+ww,yy+hh,false);

//draw_rectangle(0,screen_height*.7,screen_width*.2,screen_height*.9,false);
draw_sprite(color_changer_sprite,0,touch_x,touch_y);

draw_set_alpha(1);

