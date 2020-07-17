/// @description init_npc_pathing_spots
globalvar total_spots,spot_path, room_path;
total_spots[255] = 0;
spot_path[255,255] = -1;
room_path[255,255] = 0;

globalvar spot_x,spot_y,spot_room,spot_time,spot_branch,spot_action,spot_direction, spot_speed;

var ii = 0;
repeat(255)
{
    spot_x[ii,255] = 0;
    spot_y[ii,255] = 0;
    spot_time[ii,255] = 0;
    spot_room[ii,255] = main_cave;
    spot_branch[ii,255] = main_cave;
    spot_action[ii,255] = 0;
    spot_direction[ii,255] = 270;
    spot_speed[ii,255] = 1;    
    ii+=1;
}

/*
spot_action is whether or not an actor should take an action at the spot
0 - no action
1 - sit
2 - roam around
3 - die

10 - play animation #0 (walking) at the current_direction
11 - play animation #1 at the current_direction
12 - play animation #2...
13 - ...
*/

/*
Here are the names and IDs for the townspeople
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
*/

//Store Manager
npc_create_spot(0,store_room,0,0,78,72,0,270,1);
npc_create_spot(0,cafe_room,1100,0,46,92,0,270,1);
npc_create_spot(0,store_room,2000,0,78,72,0,270,1);
npc_create_spot(0,store_room,3000,0,94,42,0,270,1)
npc_create_spot(0,main_cave,5000,0,48,426,0,90,1)
//miner
npc_create_spot(1,store_room,0,0,93,75,0,270,1);
npc_create_spot(1,main_cave,1100,0,300,235,0,270,1);
npc_create_spot(1,barber_room,2000,0,79,108,0,270,1);
npc_create_spot(1,main_cave,3000,0,54,175,0,270,1);
npc_create_spot(1,store_room,4000,0,118,71,0,270,1);

npc_create_spot(30,outpost_house_room,0,0,80,96,10,270,1);
npc_create_spot(30,outpost_house_room,2300,0,108,60,11,0,1.5);
npc_create_spot(30,outpost_house_room,3200,0,90,66,0,270,.5);
npc_create_spot(30,outpost_house_room,3400,0,88,66,3,0,1);

//npc_create_spot(30,outpost_house_room,3200,1,90,66,0,270,.5);
//npc_create_spot(30,outpost_house_room,3400,1,88,66,0,0,1);

