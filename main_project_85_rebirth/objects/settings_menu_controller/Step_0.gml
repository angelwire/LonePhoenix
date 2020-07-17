if !(controller_object.show_books and controller_object.show_map and controller_object.show_gear and controller_object.show_goods)
{

ae_control_menu(.2);

if up_is_new_pressed()
{
ae_move_selection(90,180);
}

if right_is_new_pressed()
{
ae_move_selection(0,170);
}

if left_is_new_pressed()
{
ae_move_selection(180,170);
}

if down_is_new_pressed()
{
ae_move_selection(270,180);
}

}

if paused = false
{
instance_destroy();
}

