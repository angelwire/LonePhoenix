/// @description ae_control_menu(cursor lerp amount);
/// @param cursor lerp amount

cursor_x = button_instance_id[selection].x;
cursor_y = button_instance_id[selection].y;

cursor_width = button_instance_id[selection].width;
cursor_height = button_instance_id[selection].height;

cursor_draw_width = ae_threshold_lerp(cursor_draw_width,cursor_width,.3,1.1);
cursor_draw_height = ae_threshold_lerp(cursor_draw_height,cursor_height,.3,1.1);

cursor_draw_x = ae_threshold_lerp(cursor_draw_x,cursor_x,argument0,1.1);
cursor_draw_y = ae_threshold_lerp(cursor_draw_y,cursor_y,argument0,1.1);

