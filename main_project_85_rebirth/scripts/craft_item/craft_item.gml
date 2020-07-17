/// @description craft_item(item,level)
/// @param item
/// @param level
var item = argument0;
var level = argument1;

global.items[item] = level;
controller_object.craft_index = 0;
audio_play_sound(craft_sound,10,0);
