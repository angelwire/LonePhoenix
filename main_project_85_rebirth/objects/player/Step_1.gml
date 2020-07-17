/// @description Reset all start variables 

show_action_bubble = false

//Reset all start variables ----------------------------
//_______________________________________________________________________()
b_pressed = false;
//_______________________________________________________________________()
a_pressed = false;

if !instance_exists(custom_character_controller)
{
b_pressed = b_is_new_pressed();
a_pressed = a_is_new_pressed();
}


