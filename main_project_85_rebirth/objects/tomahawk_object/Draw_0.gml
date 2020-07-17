if image_index >= frame_end or image_index >= sprite_get_number(sprite_index)-.3
{
image_index = frame_start
}
if image_index < frame_start
{
image_index = frame_start
}

draw_self()

