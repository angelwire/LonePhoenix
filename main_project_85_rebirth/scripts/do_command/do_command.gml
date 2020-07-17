var com = argument0;
var par = argument1;

if com = "nocollision" or com = "nocollisions"
{
if variable_is_number(par)
{
global.no_collisions = real(string_digits(par));
return "done";
}
return "Bad value <" + string(par) + ">";
}



if com = "showinvisible"
{
if variable_is_number(par)
{
global.show_invisible = real(string_digits(par));
return "done";
}
else
{
return "Bad value <" + string(par) + ">";
}
}

if com = "setpowerattack"
{
if variable_is_number(par)
{
global.which_combo = real(string_digits(par))
return "done";
}
return "Bad value <" + string(par) + ">";
}

if com = "showcollisionmap"
{
if variable_is_number(par)
{
global.show_collision_map = real(string_digits(par));
return "done";
}
return "Bad value <" + string(par) + ">";
}


if com = "showhelp" or com = "showcommands" or com = "help"
{
return @"nocollision(s) 0-1
showinvisible 0-1
setpowerattack 0-N
showcustomizemenu
showcollisionmap 0-1
help (showhelp, showcommands)
giveitems
additems [itemid]
resetgame
sethealth 0-N
kill
unlockbooks
settime 0-N[steps]
actortome 0-N[actorID]
actorinfo 0-N[actorID]
slowstep 0-1
listitems (showinventory)
setplayer = name
showpath = actorid
settimescale = 0-N
getquestmark(extra) = questID";
}

if com = "showcustomizemenu"
{
show_customize_menu();
return "done";
}

if com = "resetgame"
{
game_restart();
return "done";
}

if com = "giveitems"
{
repeat (real(par))
{
give_all_items_command();
}
return "done";
}

if com = "sethealth"
{
if variable_is_number(par)
{
player_health = real(string_digits(par))
return "done";
}
return "Bad value <" + string(par) + ">";
}

if com = "kill"
{
instance_create(-100,-100,game_over_controller)
gotime = false;
return "done";
}

if com = "settime"
{
global.time = real(string_digits(par));
return "done";
}

if com = "drawplayer"
{
debug_draw_player = real(string_digits(par));
return "Draw player set to " + string_digits(par);
}

if com = "actorinfo"
{
return string(act_x[par]) + "-" + string(act_y[par]) + "-" + string(room_get_name(act_room[par]));
}

if com = "actortome"
{
set_npc_position(real(string_digits(par)),player.x,player.y,room);
return "done";
}

if com = "unlockbooks"
{
var ii = 0;
repeat(array_length_1d(global.book_text))
{
book_unlocked[ii] = true;
book_opened[ii] = false;
ii+=1;
}
return "done";
}

if com = "slowstep"
{
slow_step = real(par);
return "slowstep set to: " + string(slow_step);
}


if com = "additem" or com = "additems"
{
add_item_to_inventory_no_note(real(par),1);
return "Added a " + string(item_get_ui_sprite(real(par)));
}

if com = "listitems" or com = "showinventory"
{
list_items();
return "Items listed";
}

if com = "setplayer"
{
global.my_hat = 0
global.my_hair = 0
global.my_accessory = 0
global.my_base = 0
switch(par)
{
case "cowboy": global.character = cowboy_sprite; return "player set to cowboy"; break;
case "girl": global.character = girl_sprite; return "player set to girl"; break;
case "or": global.character = or_sprite; return "player set to or"; break;
case "indian": global.character = indian_sprite; return "player set to indian"; break;
}
}

if com = "givegear"
{
give_gear(16);
give_gear(17);
give_gear(18);

give_gear(19);
give_gear(20);
give_gear(21);

give_gear(22);
give_gear(23);
give_gear(24);
return "Gear given";
}

if com = "showpath"
{
actor_show_path[real(par)] = !actor_show_path[real(par)];
return "Showpath for actor " + string(par) + " is " + on_off_string(actor_show_path[real(par)]);
}

if com = "settimescale"
{
debug_time_scale = real(par);
return "Time scale set to: " + string(par);
}

if com = "getquestmark"
{
return "Quest mark for: " + string(par) + " is at: " + string(g_quest_progress[real(par)]);
}

if com = "getquestmarkextra"
{
return "Quest mark extra for: " + string(par) + " is at: " + string(g_quest_extra[real(par)]);
}

//Returns false if nothing has happened
return "Command <" +string(com) + "> missing";
