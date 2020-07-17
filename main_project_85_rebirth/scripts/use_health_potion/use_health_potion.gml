/// @description use_health_potion()
if item_count(6) > 0
{
if player_health < 50
{
player_health = 50;
item_update(6,item_count(6)-1)
show_health_popup();
audio_play_sound(klink_sound,100,0);
}
else
{
show_health_popup();
audio_play_sound(null_sound,100,0);
}

}
else
{
audio_play_sound(null_sound,100,0);
}
