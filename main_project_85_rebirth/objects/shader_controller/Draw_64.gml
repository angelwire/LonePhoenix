if global.interpolation = true
{
texture_set_interpolation(true)
}

surface_set_target(real_surface)


if( shader_is_compiled(main_shader) )
    {              
        shader_set(main_shader);
        
        // Dark Color
        shader_set_uniform_f(colour_to_find_dark, rgb(9), rgb(36), rgb(33) );//DO NOT ALTER!!!!!
        //Med Dark Color
        shader_set_uniform_f(colour_to_find_med_dark, rgb(2), rgb(107), rgb(82) );//DO NOT ALTER!!!!!  
        //Med Light Color
        shader_set_uniform_f(colour_to_find_med_light, rgb(138), rgb(197), rgb(115) );//DO NOT ALTER!!!!!
        //Light Color
        shader_set_uniform_f(colour_to_find_light, rgb(230), rgb(255), rgb(214) );//DO NOT ALTER!!!!!
        
        // Dark Color To
        shader_set_uniform_f(colour_to_set_dark, rgb(color_get_blue(global.dark_color)), rgb(color_get_green(global.dark_color)), rgb(color_get_red(global.dark_color)) );  
        //Med Dark Color To
        shader_set_uniform_f(colour_to_set_med_dark, rgb(color_get_blue(global.med_dark_color)), rgb(color_get_green(global.med_dark_color)), rgb(color_get_red(global.med_dark_color)) );  
        //Med Light Color To
        shader_set_uniform_f(colour_to_set_med_light, rgb(color_get_blue(global.med_light_color)), rgb(color_get_green(global.med_light_color)), rgb(color_get_red(global.med_light_color)) );  
        //Light Color To
        shader_set_uniform_f(colour_to_set_light, rgb(color_get_blue(global.light_color)), rgb(color_get_green(global.light_color)), rgb(color_get_red(global.light_color)));            
    }

   draw_surface(main_surface,0,0);   

    shader_reset();
   

surface_reset_target()
draw_surface_ext(real_surface,global.resoffx*.5,global.resoffy*.5,global.resw/480,global.resh/432,0,c_white,1)

if surface_exists(other_surface)
{
draw_surface_ext(other_surface,global.resoffx*.5,global.resoffy*.5,global.resw/480,global.resh/432,0,c_white,.4*global.blur)
surface_set_target(other_surface)
draw_surface(real_surface,0,0)
surface_reset_target()
}

draw_set_alpha(intro)
draw_set_color(c_black)
draw_rectangle(0,0,display_get_width(),display_get_height(),false)
draw_set_alpha(1)

texture_set_interpolation(true)

draw_background_ext(filter_foreground,global.resoffx*.5,global.resoffy*.5,global.resw/480,global.resh/432,0,c_white,(.5)*global.pixels)

draw_background_ext(fader_foreground,global.resoffx*.5,global.resoffy*.5,global.resw/480,global.resh/432,0,c_white,.15*global.fade)

//DEBUG STUFF -----------------------


if global.alerttimer > 0
{
draw_set_font(debug_font)
draw_set_color(c_black)
draw_set_halign(fa_left);
draw_set_alpha(.85)
draw_rectangle(0,0,480,32,false)
draw_set_color(c_blue)
draw_set_alpha(1)
draw_text(16,16,string_hash_to_newline(global.alerttext))
draw_set_color(c_black)
global.alerttimer -=1;
}

draw_set_font(debug_font);
draw_set_halign(fa_left);
draw_set_color(c_blue);
draw_text(32,56,string_hash_to_newline(fps));
draw_text(32,76,string_hash_to_newline(time));
draw_text(32,96,string_hash_to_newline(string(floor(time/3600)) + ":" + string(floor(time/60) mod 60)));
draw_text(32,116,string_hash_to_newline(color_transition));


//DEBUG STUFF ---------------------



texture_set_interpolation(false)
draw_set_color(c_white)

