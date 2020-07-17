globalvar time, talking, freeze;
time = 0;
talking = false;
global.startx = 256;
global.starty = 272;
freeze = false;
global.character_create = false

global.interpolation = true;

globalvar debugging,gotime,talking,paused;
debugging = false
gotime = true
talking = false
paused = true;
global.what_day = 0;

global.can_press_b = true;
global.can_press_a = true;
global.can_press_x = true;
global.can_press_y = true;
global.can_press_l = true;
global.can_press_r = true;
global.can_press_up = true;
global.can_press_down = true;
global.can_press_left = true;
global.can_press_right = true;
global.can_press_select = true;
global.can_press_start = true;

global.which_combo = 1

health = 3;



//=-=-=-=-=-=-=Debug Stuff =-=-=-=-=-=-=-=
global.alerttimer = 0;
global.alerttext = "";

//In use variables
global.no_collisions = false;
global.show_invisible = false;
global.show_collision_map = false;
//=-=-=-=END Debug Stuff =-=-=-=-=-=-=-=




//Play Background music here
//audio_play_sound(around_town,1,10)

application_surface_enable(false)
application_surface_draw_enable(false)

global.spritey = -32;
global.spriteyto = -32;
global.canhurt = 0;


randomize()
global.randomseed = random_get_seed()

///Filter Variables
global.pixels = true;
global.blur = false;
global.fade = true;


///set actor ids
global.sprite_id[0] = townsgirl_sprite;
global.sprite_id[1] = miner_sprite;
global.sprite_id[2] = mayor_sprite;
global.sprite_id[3] = house_owner_1_sprite;
global.sprite_id[4] = house_wife_1_sprite;
global.sprite_id[5] = house_owner_2_sprite;
global.sprite_id[6] = or_leader_sprite;
global.sprite_id[7] = boy_sprite;
global.sprite_id[8] = bad_guy_sprite;
global.sprite_id[9] = chief_sprite;
global.sprite_id[10] = little_girl_sprite;
global.sprite_id[11] = sheriff_sprite;
global.sprite_id[12] = doctor_sprite;
global.sprite_id[13] = bug_eye_bob_sprite;
global.sprite_id[14] = preacher_sprite;
global.sprite_id[15] = chef_sprite;
global.sprite_id[16] = vlad_sprite;
global.sprite_id[17] = cowboy_sprite;
global.sprite_id[18] = indian_sprite;
global.sprite_id[19] = girl_sprite;
global.sprite_id[20] = or_sprite;
global.sprite_id[21] = cool_guy_sprite;
global.sprite_id[22] = host_sprite;
global.sprite_id[23] = buy_guy_sprite;
global.sprite_id[24] = other_guy_sprite;
global.sprite_id[25] = mysterious_girl_sprite;
global.sprite_id[30] = researcher_sprite;

//Init Branch Text
global.branch_text[0] = "#Nothing happens, explore and have fun"
global.branch_text[1] = "Have fun, talk to folks."
global.branch_text[2] = "Report to the Law office."
global.branch_text[3] = "A girl has gone missing, find her."
global.branch_text[4] = "Find the missing switch."
global.branch_text[5] = "Go to the doctor's office."
global.branch_text[6] = "Go for a better end, or talk to folks."
global.branch_text[7] = "Have fun, talk to folks."
global.branch_text[8] = "Left: Restart day, Right: continue."
global.branch_text[9] = "Explore and Talk to people"


///Init dialogue variables
ii = 0;
jj = 0;

globalvar talk_text,display_text,tryouts;

repeat(20)
{
tryouts[jj] = "";
me[jj] = 0;
repeat(100)
{
talk_text[jj,ii] = "-1";
ii+=1;
}
jj+=1;
}

///Resetable Vairables
global.bridgedown = false
global.gotswitch = false
global.didfinish = false
global.items[100] = 0
global.total_items = 25;
init_global_item_variables();
//^^^ be sure to update script so new items aren't left out!
global.picked_up = 0;
global.used_barrels[128] = -1
global.should_wake = false;
//Refer to bunny (pg1) to get item id's

//Actionly stuff
globalvar actionly_remote;
var ll = 0;
repeat(10)
{
actionly_remote[ll] = false;
ll+=1;
}
//--End actionly stuff


//Check for joystick
init_controller_check();

init_controls();

init_debug_variables()

init_custom_options();

game_start_dialogue();

init_notes();

update_resolution();

init_colors();

init_books();

init_branches();

init_pathing();

init_gear_variables();

init_enemy_spawning();

init_dialogue_line_variables();

init_quest_variables();
