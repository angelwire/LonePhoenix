image_index = global.time*.1;
draw_self()

if __background_get( e__BG.Index, 0 ) = cave_background
{
if !place_meeting(x-32,y,water_object)
{
draw_sprite(river_bank_waterfall,0,x,y)
}
if !place_meeting(x+33,y,water_object)
{
draw_sprite(river_bank_waterfall,1,x,y)
}
}

if __background_get( e__BG.Index, 0 ) = grass_background
{
if !place_meeting(x-32,y,water_object)
{
draw_sprite(river_bank_bright_waterfall,0,x,y)
}
if !place_meeting(x+33,y,water_object)
{
draw_sprite(river_bank_bright_waterfall,1,x,y)
}
}

