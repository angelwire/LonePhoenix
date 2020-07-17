/// @description init_quest_variables()

globalvar g_quest_progress, g_quest_extra;

/*
researcher
0 - sitting around

1 - eating soup
2 - eating pie
3 - eating steak
4 - eating mushroom

11 - dead from soup
12 - dead from pie
13 - dead from steak
14 - dead from mushroom

20 - warned wrongly

25 - properly warned
*/
g_quest_progress[0] = 0;
g_quest_extra[0] = choose(1,2,3,4);
