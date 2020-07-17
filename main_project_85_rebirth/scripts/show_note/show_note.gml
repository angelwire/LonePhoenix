if note_set_branch[latest_note] != -1
{
global.branch = note_set_branch[latest_note]
}

audio_play_sound(note_sound,9,0)
global.note_show = other.show_text
with(other)
{
instance_destroy()
}
latest_note +=1;
global.gotime = false
seeing_note = true;
