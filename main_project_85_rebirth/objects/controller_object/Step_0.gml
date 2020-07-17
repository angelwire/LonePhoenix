b_pressed = player.b_pressed;
a_pressed = player.a_pressed;

__view_set( e__VW.XView, 0, player.x-80 )
__view_set( e__VW.YView, 0, player.y-72 )

if __view_get( e__VW.XView, 0 ) < 0
{
__view_set( e__VW.XView, 0, 0 );
}

if __view_get( e__VW.YView, 0 ) < 0
{
__view_set( e__VW.YView, 0, 0 );
}

if __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 ) > room_width
{
__view_set( e__VW.XView, 0, room_width-__view_get( e__VW.WView, 0 ) );
}

if __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 ) > room_height
{
__view_set( e__VW.YView, 0, room_height - __view_get( e__VW.HView, 0 ) );
}

if gotime = true and room != dream_room
{
time+=1*(debug_time_scale);
}

if debugging = true or global.seeing_note = true  or paused = true or instance_exists(custom_character_controller) or global.draw_book = true or player.sleeping = true or show_crafting_menu
{
gotime = false;
}
else if global.talking = false
{
gotime = true;
}

if note_time[latest_note] != -1
{
if time = note_time[latest_note] and global.branch = note_get_branch[latest_note]
{
spawn_note();
}
}

if global.character = cowboy_sprite
{
global.fakecharacter = 1
}
if global.character = indian_sprite
{
global.fakecharacter = 2
}
if global.character = girl_sprite
{
global.fakecharacter = 3
}
if global.character = or_sprite
{
global.fakecharacter = 4
}


global.grass += 1
if global.grass > (room_width + room_height)/8
{
global.grass = -floor(random(100))
}


///Do console command stuff


if keyboard_check(192)
{
//debugging = true;
debug_string = get_string("Enter command:","");
          
command = cut_out_spaces(get_string_until_character(debug_string,"="));
parameter = cut_out_spaces(get_string_after_character(debug_string,"="));
returnvalue = do_command(command,parameter)
if returnvalue!= "done"
{
alert(returnvalue,160);
}

}


///Do dream stuff
if room = dream_room or player.sleeping = true
{
if random(100) > 10
{

var side = irandom(3);
var border_size = 10;
if side = 0
{
instance_create(random(border_size)+__view_get( e__VW.XView, 0 ),
random(__view_get( e__VW.HView, 0 ))+__view_get( e__VW.YView, 0 ),
swirl_effect_object);
}
if side = 1
{
instance_create(random(__view_get( e__VW.WView, 0 ))+__view_get( e__VW.XView, 0 ),
random(border_size)+__view_get( e__VW.YView, 0 ),
swirl_effect_object);
}
if side = 2
{
instance_create(random(border_size)+__view_get( e__VW.XView, 0 )+(__view_get( e__VW.WView, 0 )-(border_size*2)),
random(__view_get( e__VW.HView, 0 ))+__view_get( e__VW.YView, 0 ),
swirl_effect_object);
}
if side = 3
{
instance_create(random(__view_get( e__VW.WView, 0 ))+__view_get( e__VW.XView, 0 ),
random(border_size)+__view_get( e__VW.YView, 0 )+(__view_get( e__VW.HView, 0 )-(border_size*2)),
swirl_effect_object);
}

}

}

///Check for pause

if show_crafting_menu = false
{
    if start_is_new_pressed()
    {
        if paused = false
        {
        show_health_popup();
        paused = true
        pause_page = 0;
        player.speed = 0;
        }
        else
        {
            if (show_books or show_map or show_goods or show_gear)
            {
            show_books = false;
            show_map = false;
            show_goods = false;
            show_gear = false;
            }
            else
            {
            paused = false;
            player.attacking = false;
            }
        
        }
    }
    
    if select_is_new_pressed() or keyboard_check_pressed(vk_escape)
    {
    paused = true;
    pause_page = 2;
    show_health_popup();
    player.speed = 0;
    }
    
    if b_pressed and !show_books and !show_map and !show_goods and !show_gear
    {
    paused = false;
    player.attacking = false;
    }
}

///Control pause menu

if !(show_map and show_books and show_goods and show_gear) and paused and !instance_exists(game_over_controller)
{

if pause_page = 0 //inventory
{

    if a_pressed
    {
    a_pressed_on_inventory(inventory_menu_controller.selection);
    }
}
else if pause_page = 1 //current events
{
    if a_pressed
    {
        if events_menu_controller.selection <= 2
        {
         if (pause_page != events_menu_controller.selection) {audio_play_sound(note_sound,1,0);}
        pause_page = events_menu_controller.selection;
        }
    }
}
else if pause_page = 2 //menu
{
    if a_pressed
    {
    a_pressed = false;
    a_pressed_on_menu(settings_menu_controller.selection);
    }
}

}
else
{
    if b_pressed
    {
    show_map = false;
    show_books = false;
    show_goods = false;
//    show_gear = false;
    }
}

///spawn talking menu
if instance_exists(townsperson_object)
{

    actor_talk_to = instance_nearest(player.x+(cosine(player.direction)*8),player.y-(sine(player.direction)*8),townsperson_object)
    
    if (point_distance_fast(actor_talk_to.x,actor_talk_to.y,player.x+(cosine(player.direction)*8),player.y-(sine(player.direction)*8)) < 100 and !act_dead[actor_talk_to.my_id])
    {
    player.show_bubble = true;
    player.andyman = actor_talk_to;
    }
    else
    {
    player.show_bubble = false;
    }

    
    if b_pressed
    {
        if global.talking = false and player.show_bubble = true
        {
        new_talk(actor_talk_to.my_id,global.branch);
        b_pressed = false;
        }
    }
    
}
else
{
player.show_bubble = false;
}

