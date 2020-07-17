var goto_room;

if global.character = girl_sprite
{
goto_room = hotel_room
global.startx = 130
global.starty = 32-1
}

if global.character = cowboy_sprite
{
goto_room = house_3
global.startx = 114
global.starty = 50-1
}

if global.character = indian_sprite
{
goto_room = teepee_4
global.startx = 118
global.starty = 60-1
}

if global.character = or_sprite
{
goto_room = hotel_room_top
global.startx = 72
global.starty = 74+1
}


global.bridgedown = false
global.gotswitch = false
global.didfinish = false
global.branch = 1;
global.time = 0;
global.should_wake = true;

player_health = 50;

//reset_items()

game_start_dialogue()

init_notes()

init_colors()

room = goto_room;
