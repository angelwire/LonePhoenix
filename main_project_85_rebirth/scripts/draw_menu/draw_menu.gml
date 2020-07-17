
var xt = argument0;
var yt = argument1;

xt = __view_get( e__VW.XView, 0 );
yt = __view_get( e__VW.YView, 0 );

draw_set_halign(fa_left)
draw_set_valign(fa_top)

draw_background(game_settings_background,__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ))


with(settings_menu_controller)
{
ae_draw_menu_cursor(menu_cursor_sprite);
}
