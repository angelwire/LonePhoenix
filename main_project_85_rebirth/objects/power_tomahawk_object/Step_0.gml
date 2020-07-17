depth = -y

frame_start = round((direction/90))*8
frame_end = round(((direction/90))*8)+8

if image_index >= frame_end
{
image_index = frame_start
}
if image_index < frame_start
{
image_index = frame_start
}

