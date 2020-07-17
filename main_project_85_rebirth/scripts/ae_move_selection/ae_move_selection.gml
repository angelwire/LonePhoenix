/// @description ae_move_selection(angle,cone_angle)
/// @param angle
/// @param cone_angle

/*
moves the selection in the direction of the given angle

the cone_angle is how far off a button can be while still being included
*/

var max_away = argument1;
var ii = 0;
var direction_angle = argument0;
var jump_to = -1;
var best_score = -1;
var fake_x,fake_y,fake_to_x,fake_to_y;
fake_x = cursor_x + (cursor_width/2);
fake_y = cursor_y + (cursor_height/2);

repeat(total_buttons)
{
fake_to_x = button_instance_id[ii].x + (button_instance_id[ii].width/2);
fake_to_y = button_instance_id[ii].y + (button_instance_id[ii].height/2);

var this_distance = sqr(fake_x-fake_to_x) + sqr(fake_y - fake_to_y)
var this_difference = abs(angle_difference(point_direction(fake_x,fake_y,fake_to_x,fake_to_y),direction_angle))*2;
var button_score = this_distance + this_difference;
//if the score is smaller than the previous smallest and it's not already selected
if this_difference < max_away and ii!= selection and (button_score < best_score or best_score == -1)
{
jump_to = ii;
best_score = button_score;
}
ii+=1;
}

if jump_to != -1
{
selection = button_instance_id[jump_to].my_id;
audio_play_sound(menu_cursor_move_sound,1,0);
}

