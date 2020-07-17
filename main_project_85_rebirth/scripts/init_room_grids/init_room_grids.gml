/// @description init_room_grids

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
*/


globalvar room_grid;
room_grid[0] = main_cave_grid(); //outside room
room_grid[1] = main_cave_grid();
room_grid[2] = main_cave_grid(); //outside room 2
room_grid[3] = secondary_cave_grid();
room_grid[4] = main_cave_grid(); //or cave
room_grid[5] = mine_room_grid();
room_grid[6] = main_cave_grid();
room_grid[7] = town_hall_room_grid();
room_grid[8] = main_cave_grid();
room_grid[9] = house_1_grid();
room_grid[10] = house_2_grid();
room_grid[11] = house_3_grid();
room_grid[12] = house_4_grid();
room_grid[13] = house_hut_grid();
room_grid[14] = teepee_1_grid();
room_grid[15] = teepee_2_grid();
room_grid[16] = teepee_3_grid();
room_grid[17] = teepee_4_grid();
room_grid[18] = law_room_grid();
room_grid[19] = cafe_room_grid();
room_grid[20] = hotel_room_grid();
room_grid[21] = hotel_room_top_grid();
room_grid[22] = church_room_grid();
room_grid[23] = barber_room_grid();
room_grid[24] = news_room_grid();
room_grid[25] = store_room_grid();

//show_debug_message("1 is " + string(room_grid[1]) + " - 19 is " + string(room_grid[19]) + " - 25 is " + string(room_grid[25]))

