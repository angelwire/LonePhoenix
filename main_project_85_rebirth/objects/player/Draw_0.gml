with (other) {
if draw_grave = false
{
    if (round(global.canhurt/2) mod 2 = 0 and global.canhurt >= 60) or ((round(global.canhurt/10) mod 2 = 0) and global.canhurt < 60)
    {
    //draw_self()
    
        if debug_draw_player
        {
            if global.character = cowboy_sprite
            {
            draw_cowboy()
            }
            
            if global.character = indian_sprite
            {
            draw_indian()
            }
            
            if global.character = girl_sprite
            {
            draw_girl()
            }
            
            if global.character = or_sprite
            {
            draw_or()
            }
        }
    
    }
}
else
{
draw_sprite(cross_sprite,0,x,y-4)
}

}
