/// @description use_cactus_potion()
if item_count(7) > 0
{
if player_health < 75
{
player_health = 75;
item_update(7,item_count(7)-1)
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
