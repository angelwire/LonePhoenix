
var playsound = -1

if room = main_cave or room = secondary_cave or controls_room
{
playsound = lone_pheonix_song
}

if room = cafe_room
or room = law_room
or room = hotel_room
or room = hotel_room_top
or room = town_hall_room
or room = church_room
or room = store_room
or room = barber_room
or room = news_room
or room = house_1
or room = house_2
or room = house_3
or room = house_4
or room = teepee_1
or room = teepee_2
or room = teepee_3
or room = teepee_4
{
playsound = interior_sad_song
}

if room = outside_room
or room = outside_room_2
{
playsound = adventure_song
}

if room = outside_cave_pixie
or room = outside_cave_storage
or room = outside_cave_plateau
or room = dungeon_1_enterance
or room = outside_cave_far_west
or room = mine_room
or room = mine_room_2
or room = mine_room_3
{
playsound = cave_song;
}

if (room == story_room)
{
	playsound = title_theme;
}

if !audio_is_playing(playsound) or playsound = -1
{
audio_stop_all()
audio_play_sound(playsound,10,1)
}

//Stop the audio so it doesn't interrupt pandora
audio_stop_all()
