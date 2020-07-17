if values_in_range(x,y,player.x-300,player.x+300,player.y-300,player.y+300)
{
    
    draw_self()
    
    if down
    {
    draw_sprite(river_lake_sprite,0,x,y)
    }
    if up
    {
    draw_sprite_ext(river_lake_sprite,0,x,y+32,1,-1,0,c_white,1)
    }
    
    if __background_get( e__BG.Index, 0 ) = cave_background
    {
    if !left
    {
    draw_sprite(river_bank_sprite,0,x,y)
    }
    if !right
    {
    draw_sprite(river_bank_sprite,1,x,y)
    }
    }
    else
    {
        if __background_get( e__BG.Index, 0 ) = grass_background
        {
        if !left
        {
        draw_sprite(river_bank_bright_sprite,0,x,y)
        }
        if !right
        {
        draw_sprite(river_bank_bright_sprite,1,x,y)
        }
        }
    }
}

