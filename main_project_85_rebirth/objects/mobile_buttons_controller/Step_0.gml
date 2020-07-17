g_mobile_up_pressed = false;
g_mobile_down_pressed = false;
g_mobile_left_pressed = false;
g_mobile_right_pressed = false;

g_mobile_a_pressed = false;
g_mobile_b_pressed = false;

g_mobile_start_pressed = false;
g_mobile_select_pressed = false;

var ii = 0;

repeat(5)
{
    if device_mouse_check_button(ii,mb_left)
    {
    touch_x = device_mouse_x_to_gui(ii);
    touch_y = device_mouse_y_to_gui(ii);
    
    if values_in_range(touch_x,touch_y,screen_width*.1,screen_width*.2,screen_height*.7,screen_height*.8)
    {
    //up
    g_mobile_up_pressed = true;
    }
    
    if values_in_range(touch_x,touch_y,screen_width*.1,screen_width*.2,screen_height*.9,screen_height*1)
    {
    //down
    g_mobile_down_pressed = true;
    }
    
    if values_in_range(touch_x,touch_y,screen_width*0,screen_width*.1,screen_height*.8,screen_height*.9)
    {
    //left
    g_mobile_left_pressed = true;
    }
    
    if values_in_range(touch_x,touch_y,screen_width*.2,screen_width*.3,screen_height*.8,screen_height*.9)
    {
    //right
    g_mobile_right_pressed = true;
    }
    
    
    if values_in_range(touch_x,touch_y,screen_width*.7,screen_width*.8,screen_height*.7,screen_height*.8)
    {
    //b
    g_mobile_b_pressed = true;
    }
    
    if values_in_range(touch_x,touch_y,screen_width*.9,screen_width*1,screen_height*.7,screen_height*.8)
    {
    //a
    g_mobile_a_pressed = true;
    }
    
    
    if values_in_range(touch_x,touch_y,screen_width*.8,screen_width*.9,screen_height*.6,screen_height*.65)
    {
    //start
    g_mobile_start_pressed = true;
    }
    
    if values_in_range(touch_x,touch_y,screen_width*.8,screen_width*.9,screen_height*.5,screen_height*.55)
    {
    //select
    g_mobile_select_pressed = true;
    }
    
    
    }
    

ii+=1;
}

