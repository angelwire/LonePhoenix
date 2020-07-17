/// @description use_cactus_potion()
if item_count(14) > 0
{
if player_health < 12
{
player_health = 12;
item_update(14,item_count(14)-1)
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
