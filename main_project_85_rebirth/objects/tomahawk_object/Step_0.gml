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

ytimer -=1;

if ytimer < 1
{
ytimer = yjump-9
y += (1*neg)*cosine(direction)
x += (1*neg)*sine(direction)
}

if place_meeting(x,y,actionly_block_parent)
{
    if instance_place(x,y,actionly_block_parent).activated = false
    {
        if distance_to_object(player) < 160 
        {
        audio_play_sound(tomahawk_hit_sound,5,0)
        }
        instance_destroy()
    }
}

