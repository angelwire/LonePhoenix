/// @description Check Mouse Debug Stuff
if mouse_check_button_pressed(mb_left) and debugging = true
{
if (mouse_x-__view_get( e__VW.XView, 0 ))*3 >= 32 and (mouse_x-__view_get( e__VW.XView, 0 ))*3 <= 64 //Checks all the left and right
{
if (mouse_y-__view_get( e__VW.YView, 0 ))*3 >= 32 and (mouse_y-__view_get( e__VW.YView, 0 ))*3 <= 64
{
global.blur = !global.blur
}

if (mouse_y-__view_get( e__VW.YView, 0 ))*3 >= 128 and (mouse_y-__view_get( e__VW.YView, 0 ))*3 <= 160
{
global.pixels = !global.pixels
}

if (mouse_y-__view_get( e__VW.YView, 0 ))*3 >= 224 and (mouse_y-__view_get( e__VW.YView, 0 ))*3 <= 256
{
global.fade = !global.fade
}

}

if (mouse_y-__view_get( e__VW.YView, 0 ))*3 >= 320 and (mouse_y-__view_get( e__VW.YView, 0 ))*3 <= 352
if (mouse_x-__view_get( e__VW.XView, 0 ))*3 >= 72 and (mouse_x-__view_get( e__VW.XView, 0 ))*3 <= 104
{
if global.wheel_now > 0
{
global.wheel_now -= 1;
global.color_scheme = global.color_wheel[global.wheel_now]
update_colors()
}
}



if (mouse_y-__view_get( e__VW.YView, 0 ))*3 >= 320 and (mouse_y-__view_get( e__VW.YView, 0 ))*3 <= 352
if (mouse_x-__view_get( e__VW.XView, 0 ))*3 >= 376 and (mouse_x-__view_get( e__VW.XView, 0 ))*3 <= 408
{
if global.wheel_now < 5
{
global.wheel_now += 1;
global.color_scheme = global.color_wheel[global.wheel_now]
update_colors()
}
}

}

if /*x_is_new_pressed() or*/ keyboard_check_pressed(vk_f2)
{
global.fade = !global.fade
global.alerttimer = 80
if global.fade = true
{
global.alerttext = "Fade: ON"
}
else
{
global.alerttext = "Fade: OFF"
}
}

if y_is_new_pressed() or keyboard_check_pressed(vk_f3)
{
global.blur = !global.blur
global.alerttimer = 80
if global.blur = true
{
global.alerttext = "Motion Blur: ON"
}
else
{
global.alerttext = "Motion Blur: OFF"
}
}


if /*select_is_new_pressed()  or*/ keyboard_check_pressed(vk_f1)
{
global.pixels = !global.pixels
global.alerttimer = 80
if global.pixels = true
{
global.alerttext = "Pixel overlay: ON"
}
else
{
global.alerttext = "Pixel overlay: OFF"
}
}

if r_is_new_pressed() or keyboard_check_pressed(vk_f6)
{
if global.wheel_now < 7
{
global.wheel_now += 1;
global.color_scheme = global.color_wheel[global.wheel_now]
update_colors()
global.alerttimer = 80
global.alerttext = "Changed color scheme"

}
}

if l_is_new_pressed()  or keyboard_check_pressed(vk_f5)
{
if global.wheel_now > 0
{
global.wheel_now -= 1;
global.color_scheme = global.color_wheel[global.wheel_now]
update_colors()
global.alerttimer = 80
global.alerttext = "Changed color scheme"
}
}



/* */
///update color transition
if color_transition >= 0
{
color_transition = merge_variable(1,color_transition,color_transition_speed);

current_color_dark = merge_colour(current_color_dark,color_goto_dark,color_transition)
current_color_med_dark = merge_colour(current_color_med_dark,color_goto_med_dark,color_transition)
current_color_med_light = merge_colour(current_color_med_light,color_goto_med_light,color_transition)
current_color_light = merge_colour(current_color_light,color_goto_light,color_transition)

/*
currend_color_dark,
current_color_med_dark,
current_color_med_light,
current_color_light,
*/
}

global.dark_color = current_color_dark;
global.med_dark_color = current_color_med_dark;
global.med_light_color = current_color_med_light;
global.light_color = current_color_light;

if color_transition = 1
{
color_transition = -1;
}

if room = outside_room or room = outside_room_2
{
    if global.time < 9000 //dark fade to dawn
    {
    global.dark_color = merge_colour(global.dark_color,merge_color(sunset_color_dark,night_color_dark,1-(global.time/9000)),dusk_merge_amount);
    global.med_dark_color = merge_colour(global.med_dark_color,merge_color(sunset_color_med_dark,night_color_med_dark,1-(global.time/9000)),dusk_merge_amount);
    global.med_light_color = merge_colour(global.med_light_color,merge_color(sunset_color_med_light,night_color_med_light,1-(global.time/9000)),dusk_merge_amount);
    global.light_color = merge_colour(global.light_color,merge_color(sunset_color_light,night_color_light,1-(global.time/9000)),dusk_merge_amount);            
    }
    else if global.time < 18000 //dawn
    {
    global.dark_color = merge_colour(global.dark_color,sunset_color_dark,dusk_merge_amount);
    global.med_dark_color = merge_colour(global.med_dark_color,sunset_color_med_dark,dusk_merge_amount);
    global.med_light_color = merge_colour(global.med_light_color,sunset_color_med_light,dusk_merge_amount);
    global.light_color = merge_colour(global.light_color,sunset_color_light,dusk_merge_amount);            
    }
    else if global.time < 27000 //dawn fade to daylight
    {
    global.dark_color = merge_colour(global.dark_color,merge_colour(global.dark_color,sunset_color_dark,dusk_merge_amount),1-((global.time-18000)/9000));
    global.med_dark_color = merge_colour(global.med_dark_color,merge_colour(global.med_dark_color,sunset_color_med_dark,dusk_merge_amount),1-((global.time-18000)/9000));
    global.med_light_color = merge_colour(global.med_light_color,merge_colour(global.med_light_color,sunset_color_med_light,dusk_merge_amount),1-((global.time-18000)/9000));
    global.light_color = merge_colour(global.light_color,merge_colour(global.light_color,sunset_color_light,dusk_merge_amount),1-((global.time-18000)/9000));
    }
    else if global.time < 81000 //Daylight
    {
    //don't do anything
    }
    else if global.time < 90000 //fade to second dusk
    {
    global.dark_color = merge_colour(global.dark_color,merge_colour(global.dark_color,sunset_color_dark,dusk_merge_amount),0+((global.time-81000)/9000));
    global.med_dark_color = merge_colour(global.med_dark_color,merge_colour(global.med_dark_color,sunset_color_med_dark,dusk_merge_amount),0+((global.time-81000)/9000));
    global.med_light_color = merge_colour(global.med_light_color,merge_colour(global.med_light_color,sunset_color_med_light,dusk_merge_amount),0+((global.time-81000)/9000));
    global.light_color = merge_colour(global.light_color,merge_colour(global.light_color,sunset_color_light,dusk_merge_amount),0+((global.time-81000)/9000));    
    }
    else if global.time < 99000 //second dusk
    {
    global.dark_color = merge_colour(global.dark_color,sunset_color_dark,dusk_merge_amount);
    global.med_dark_color = merge_colour(global.med_dark_color,sunset_color_med_dark,dusk_merge_amount);
    global.med_light_color = merge_colour(global.med_light_color,sunset_color_med_light,dusk_merge_amount);
    global.light_color = merge_colour(global.light_color,sunset_color_light,dusk_merge_amount);
    }
    else if global.time < 108000 //dusk fades to dark
    {
    global.dark_color = merge_colour(global.dark_color,merge_color(sunset_color_dark,night_color_dark,((global.time-99000)/9000)),dusk_merge_amount);
    global.med_dark_color = merge_colour(global.med_dark_color,merge_color(sunset_color_med_dark,night_color_med_dark,((global.time-99000)/9000)),dusk_merge_amount);
    global.med_light_color = merge_colour(global.med_light_color,merge_color(sunset_color_med_light,night_color_med_light,((global.time-99000)/9000)),dusk_merge_amount);
    global.light_color = merge_colour(global.light_color,merge_color(sunset_color_light,night_color_light,((global.time-99000)/9000)),dusk_merge_amount);
    }
    else
    {
    global.dark_color = merge_colour(global.dark_color,night_color_dark,night_merge_amount);
    global.med_dark_color = merge_colour(global.med_dark_color,night_color_med_dark,night_merge_amount);
    global.med_light_color = merge_colour(global.med_light_color,night_color_med_light,night_merge_amount);
    global.light_color = merge_colour(global.light_color,night_color_light,night_merge_amount);        
    }
}

/* */
/*  */
