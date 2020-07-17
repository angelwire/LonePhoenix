//init_pathing   

/*
OBSERVER THE OTHER TABS!!

Pathing is a HUGE part of this game, this will make or break the development cycle.
*/



node_create_variables()

init_global_node_variables();

//init_room_grids();
//ROOM GRIDS ARE THE SAME THING AS NODE GRIDS AND STUFF THIS IS REDUNDANT

init_personal_npc_variables();

init_npc_pathing_spots();

set_up_npcs();

//init_roaming_variables();

main_map = node_create_map();

node_outside_room = node_create_node(main_map);
node_room[0] = outside_room;
room_grid[0] = main_cave_grid();//outside_room_grid();

node_main_cave = node_create_node(main_map);
node_room[1] = main_cave;
room_grid[1] = main_cave_grid();

node_outside_room_2 = node_create_node(main_map);
node_room[2] = outside_room_2;
room_grid[2] = main_cave_grid();//outside_room_2_grid();

node_secondary_cave = node_create_node(main_map);
node_room[3] = secondary_cave;
room_grid[3] = secondary_cave_grid();

node_or_cave = node_create_node(main_map);
node_room[4] = or_cave;
room_grid[4] = main_cave_grid();//or_cave_grid();

node_mine_room = node_create_node(main_map);
node_room[5] = mine_room;
room_grid[5] = mine_room_grid()

node_outside_cave_dungeon = node_create_node(main_map);
node_room[6] = dungeon_1_enterance;
room_grid[6] = main_cave_grid();//dungeon_1_enterance_grid();

node_town_hall_room = node_create_node(main_map);
node_room[7] = town_hall_room;
room_grid[7] = town_hall_room_grid();

node_or_hut_1 = node_create_node(main_map);
node_room[8] = or_hut_1;
room_grid[8] = main_cave_grid();//or_hut_1_grid();

node_house_1 = node_create_node(main_map);
node_room[9] = house_1;
room_grid[9] = house_1_grid();

node_house_2 = node_create_node(main_map);
node_room[10] = house_2;
room_grid[10] = house_2_grid();

node_house_3 = node_create_node(main_map);
node_room[11] = house_3;
room_grid[11] = house_3_grid();

node_house_4 = node_create_node(main_map);
node_room[12] = house_4;
room_grid[12] = house_4_grid();

node_house_4 = node_create_node(main_map);
node_room[13] = house_hut;
room_grid[13] = house_hut_grid();


node_teepee_1 = node_create_node(main_map);
node_room[14] = teepee_1;
room_grid[14] = teepee_1_grid();

node_teepee_2 = node_create_node(main_map);
node_room[15] = teepee_2;
room_grid[15] = teepee_2_grid();

node_teepee_3 = node_create_node(main_map);
node_room[16] = teepee_3;
room_grid[16] = teepee_3_grid();

node_teepee_4 = node_create_node(main_map);
node_room[17] = teepee_4;
room_grid[17] = teepee_4_grid();

node_law_room = node_create_node(main_map);
node_room[18] = law_room;
room_grid[18] = law_room_grid();

node_cafe_room = node_create_node(main_map);
node_room[19] = cafe_room;
room_grid[19] = cafe_room_grid();

node_hotel_room = node_create_node(main_map);
node_room[20] = hotel_room;
room_grid[20] = hotel_room_grid();

node_hotel_room_top = node_create_node(main_map);
node_room[21] = hotel_room_top;
room_grid[21] = hotel_room_top_grid();

node_church_room = node_create_node(main_map);
node_room[22] = church_room;
room_grid[22] = church_room_grid();

node_barber_room = node_create_node(main_map);
node_room[23] = barber_room;
room_grid[23] = barber_room_grid();

node_news_room = node_create_node(main_map);
node_room[24] = news_room;
room_grid[24] = news_room_grid();

node_store_room = node_create_node(main_map);
node_room[25] = store_room;
room_grid[25] = store_room_grid();

node_outpost_house_room = node_create_node(main_map);
node_room[26] = outpost_house_room;
room_grid[26] = outpost_house_room_grid();
/*
0- outside_room
1- main_cave
2- outside_room_2
3- secondary_cave
4- or_cave
5- mine_room
6- outside_cave_dungeon
7- town_hall
8- or_hut_1
9- house_1
10- house_2
11- house_3
12- house_4
13- house_hut
14- teepee_1
15- teepee_2
16- teepee_3
17- teepee_4
18- law_room
19- cafe_room
20- hotel_room
21- hotel_room_top
22- church_room
23- barber_room
24- news_room
25- store_room
26- outpost_house_room
*/

/*
ow - outside_room
mc - main_cave
o2 - outside_room_2
sc - secondary_cave
or - or_cave
mn - mine_room
od - outside_cave_dungeon
thl - town_hall
oh1 - or_hut_1
h1 - house_1
h2 - house_2
h3 - house_3
h4 - house_4
hh - house_hut
t1 - teepee_1
t2 - teepee_2
t3 - teepee_3
t4 - teepee_4
lw - law_room
cf - cafe_room
htl - hotel_room
htlt - hotel_room_top
ch - church_room
brb - barber_room
nws - news_room
sr - store_room
out - outpost_house_room
*/

ow_mc = node_create_edge(main_map,node_outside_room,node_main_cave,-1,656,2048,304,32)
ow_od = node_create_edge(main_map, node_outside_room,node_outside_cave_dungeon,-1,1220,1136,328,464)
ow_or = node_create_edge(main_map, node_outside_room,node_or_cave,-1,8,168,456,264)
ow_out = node_create_edge(main_map, node_outside_room,node_outpost_house_room,-1,1312, 1632, 80, 140)
mc_o2 = node_create_edge(main_map, node_main_cave,node_outside_room_2,-1,328,632,328,16)
mc_sc = node_create_edge(main_map, node_main_cave,node_secondary_cave,-1,464,344,18,144)
mc_th = node_create_edge(main_map, node_main_cave,node_town_hall_room,-1,368,248,72,152)
sc_mn = node_create_edge(main_map, node_secondary_cave,node_mine_room,-1,432,416,136,272)
or_oh1 = node_create_edge(main_map, node_or_cave,node_or_hut_1,-1,80,324,76,124)
mc_h1 = node_create_edge(main_map, node_main_cave,node_house_1,-1,112,496,81,135)
mc_h2 = node_create_edge(main_map, node_main_cave,node_house_2,-1,176,536,81,135)
mc_h3 = node_create_edge(main_map, node_main_cave,node_house_3,-1,160,280,81,135)
sc_h4 = node_create_edge(main_map, node_secondary_cave,node_house_4,-1,400,44,81,135)
sc_hh = node_create_edge(main_map, node_secondary_cave,node_house_4,-1,208,244,84,128)

mc_t1 = node_create_edge(main_map, node_main_cave,node_teepee_1,-1,92,244,80,128);
mc_t2 = node_create_edge(main_map, node_main_cave,node_teepee_2,-1,316,524,80,128);
mc_t3 = node_create_edge(main_map, node_main_cave,node_teepee_3,-1,100,304,80,128);
mc_t4 = node_create_edge(main_map, node_main_cave,node_teepee_4,-1,112,552,80,128);

mc_lw = node_create_edge(main_map, node_main_cave,node_law_room,-1,368,312,80,140);
mc_cf = node_create_edge(main_map, node_main_cave,node_cafe_room,-1,368,392,80,140);
mc_htl = node_create_edge(main_map, node_main_cave,node_hotel_room,-1,240,392,80,140);
htl_htlt = node_create_edge(main_map, node_main_cave,node_hotel_room_top,-1,16,368,16,92);
mc_ch = node_create_edge(main_map, node_main_cave,node_church_room,-1,240,276,80,140);
mc_brb = node_create_edge(main_map, node_main_cave,node_barber_room,-1,374,460,80,140);
mc_nws = node_create_edge(main_map, node_main_cave,node_news_room,-1,240,472,80,140);
mc_sr = node_create_edge(main_map, node_main_cave,node_store_room,-1,112,396,80,140);

node_open_all_edges(main_map)
node_map_set_children(main_map)

