
var xt = argument0;
var yt = argument1;

xt = __view_get( e__VW.XView, 0 );
yt = __view_get( e__VW.YView, 0 );

draw_set_halign(fa_left)
draw_set_valign(fa_top)

    draw_background(current_events_background,__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ))

draw_sprite(time_cursor_sprite,0,xt+floor(ae_interpolate_variable(global.time,0,162000,7,151)),yt+132);
show_debug_message(ae_interpolate_variable(global.time,0,162000,7,151));
with(events_menu_controller)
{
ae_draw_menu_cursor(menu_cursor_sprite);
}
