map_y = 0;
ani+=1;
draw_background(map_menu_background_back,__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ))

draw_sprite(map_sprite,0,__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 )+map_y)

if (room == outside_room)
{
draw_sprite(player_map_icon,(ani/18) mod 2,floor(player.x/16)+__view_get( e__VW.XView, 0 ),floor(player.y/16)+__view_get( e__VW.YView, 0 )-map_y+16)
}
if (room == main_cave or room == secondary_cave)
{
draw_sprite(player_map_icon,(ani/18) mod 2,__view_get( e__VW.XView, 0 )+40,__view_get( e__VW.YView, 0 )+141)
}
