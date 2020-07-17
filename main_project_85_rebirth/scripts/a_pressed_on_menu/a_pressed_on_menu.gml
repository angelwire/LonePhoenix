/// @description a_pressed_on_inventory(selection)
/// @param selection

var button = argument0;

/*
3- Save
4- Restart
5- Controls
6- Display
7- Quit
*/

switch (button)
{
case 0:
case 1:
case 2:  if (pause_page!= button) {audio_play_sound(note_sound,1,0); pause_page = button; } break;

case 3: /*save*/; audio_play_sound(null_sound,1,0); break;
case 4: player_respawn(); break;
case 5: /* controls */; show_message("Ignore the ugly message box. Keyboard controls are: #X: Attack/Accept#Z: Action/Back#Arrows: Move#Enter: Pause#Spacebar: Toggle Fullscreen");break;
case 6: /* display */; audio_play_sound(null_sound,1,0); break;
case 7: close_game(); break;
}
