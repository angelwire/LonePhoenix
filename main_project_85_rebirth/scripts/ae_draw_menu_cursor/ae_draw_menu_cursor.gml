/// @description ae_draw_menu_cursor(sprite)
/// @param sprite
draw_sprite(argument0,0,floor(cursor_draw_x),floor(cursor_draw_y));
draw_sprite(argument0,1,floor(cursor_draw_x+cursor_draw_width),floor(cursor_draw_y));
draw_sprite(argument0,2,floor(cursor_draw_x+cursor_draw_width),floor(cursor_draw_y+cursor_draw_height));
draw_sprite(argument0,3,floor(cursor_draw_x),floor(cursor_draw_y+cursor_draw_height));

