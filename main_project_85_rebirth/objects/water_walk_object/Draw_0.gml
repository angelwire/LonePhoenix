if values_in_range(x,y,player.x-300,player.x+300,player.y-300,player.y+300)
{
    
    draw_self()
    
    if __background_get( e__BG.Index, 0 ) = cave_background
    {
    if !place_meeting(x-32,y,water_object) and !place_meeting(x-32,y,water_walk_object)
    {
    draw_sprite(river_bank_sprite,0,x,y)
    }
    if !place_meeting(x+32,y,water_object) and !place_meeting(x+32,y,water_walk_object)
    {
    draw_sprite(river_bank_sprite,1,x,y)
    }
    }
    
    if __background_get( e__BG.Index, 0 ) = grass_background
    {
    if !place_meeting(x-32,y,water_object) and !place_meeting(x-32,y,water_walk_object)
    {
    draw_sprite(river_bank_bright_sprite,0,x,y)
    }
    if !place_meeting(x+32,y,water_object) and !place_meeting(x+32,y,water_walk_object)
    {
    draw_sprite(river_bank_bright_sprite,1,x,y)
    }
    }
    draw_sprite(water_crossable_sprite,image_index,x,y)
}

