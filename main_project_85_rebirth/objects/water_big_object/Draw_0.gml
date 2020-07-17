if values_in_range(x,y,player.x-300,player.x+300,player.y-300,player.y+300)
{
    draw_self()
    
    if __background_get( e__BG.Index, 0 ) = cave_background
    {
    if !place_meeting(x-32,y,water_object)
    {
    draw_sprite(river_bank_sprite,0,x,y)
    draw_sprite(river_bank_sprite,0,x,y+32)
    draw_sprite(river_bank_sprite,0,x,y+64)
    }
    if !place_meeting(x+33,y,water_object)
    {
    draw_sprite(river_bank_sprite,1,x+64,y)
    draw_sprite(river_bank_sprite,1,x+64,y+32)
    draw_sprite(river_bank_sprite,1,x+64,y+64)
    }
    }
    
    if __background_get( e__BG.Index, 0 ) = grass_background
    {
    if !place_meeting(x-32,y,water_object)
    {
    draw_sprite(river_bank_bright_sprite,0,x,y)
    draw_sprite(river_bank_bright_sprite,0,x,y+32)
    draw_sprite(river_bank_bright_sprite,0,x,y+64)
    }
    if !place_meeting(x+33,y,water_object)
    {
    draw_sprite(river_bank_bright_sprite,1,x+64,y)
    draw_sprite(river_bank_bright_sprite,1,x+64,y+32)
    draw_sprite(river_bank_bright_sprite,1,x+64,y+64)
    }
    }
    
    if __background_get( e__BG.Index, 0 ) = snow_background
    {
    if !place_meeting(x-32,y,water_object)
    {
    draw_sprite(river_bank_snow_sprite,0,x,y)
    draw_sprite(river_bank_snow_sprite,0,x,y+32)
    draw_sprite(river_bank_snow_sprite,0,x,y+64)
    }
    if !place_meeting(x+33,y,water_object)
    {
    draw_sprite(river_bank_snow_sprite,1,x+64,y)
    draw_sprite(river_bank_snow_sprite,1,x+64,y+32)
    draw_sprite(river_bank_snow_sprite,1,x+64,y+64)
    }
    }
}

