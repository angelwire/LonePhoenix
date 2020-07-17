/// @description do room_startup stuff
paused = false;

var ll = 0;
repeat(10)
{
actionly_remote[ll] = false;
ll+=1;
}


if room != dream_room//controls_room
{
instance_create(global.startx,global.starty,player)
}
else
{
instance_create(80,400,player)
}

if instance_exists(water_object)
{
audio_play_sound(river_sound,7,1)
}
else
{
audio_stop_sound(river_sound)
}

room_start_background_music()

