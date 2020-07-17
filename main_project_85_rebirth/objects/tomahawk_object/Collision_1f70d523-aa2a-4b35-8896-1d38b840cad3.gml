if (!place_meeting(x,y,bridge_object) or global.bridgedown = false) and !place_meeting(x,y,block_bullet_object)
{
if distance_to_object(player) < 160 
{
audio_play_sound(tomahawk_hit_sound,5,0)
}
instance_destroy()
}

