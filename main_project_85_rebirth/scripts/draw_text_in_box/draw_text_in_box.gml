/// @description draw_text_in_box(string)
/// @param string

var in_string = cut_out_spaces(argument0);
var show_string = string_copy(in_string,1,clamp(floor(text_box_time/2),1,string_length(in_string)));
draw_set_valign(fa_top);
draw_set_halign(fa_left);

draw_text_ext(__view_get( e__VW.XView, 0 )+10,__view_get( e__VW.YView, 0 )+12,string_hash_to_newline(show_string),11,140)
text_box_time += 1;
