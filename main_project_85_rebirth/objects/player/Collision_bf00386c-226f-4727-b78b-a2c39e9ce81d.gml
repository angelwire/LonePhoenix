if equipped_misc = 24
{
    if (random(100)*.01 > get_gear_percentage(24,global.items[24]))
    {
    hurt_me(6);
    }
    else
    {
    audio_play_sound(miracle_sound,10,0);
    }
}
else
{
hurt_me(6);
}

with(other)
{
instance_destroy()
}

