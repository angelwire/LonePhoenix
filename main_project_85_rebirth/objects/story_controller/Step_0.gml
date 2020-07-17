if start_is_pressed() or a_is_pressed() or b_is_pressed() or select_is_pressed()
{
room = room_next(room)
}


if l_is_pressed() and r_is_pressed() and select_is_pressed()
{
game_end()
}

if keyboard_check(vk_control) and keyboard_check(vk_alt) and keyboard_check(vk_escape)
{
game_end()
}

