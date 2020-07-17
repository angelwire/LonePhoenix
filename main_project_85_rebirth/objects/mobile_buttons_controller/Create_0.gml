screen_width = display_get_width();
screen_height = display_get_height();

screen_orientation = display_get_orientation();

touch_x = 0;
touch_y = 0;

if os_type != os_ios and os_type != os_android and os_type != os_winphone
{
instance_destroy();
}

