/// @description get_damage_multiple()

if equipped_gloves = 19
{
    if random(100)*.01 < get_gear_percentage(19,global.items[19])+ get_snake_oil_offset()
    {
    show_debug_message("critical hit");
    return 2;
    }
    else
    {
    show_debug_message("non critical hit");
    return 1;
    }
}
else
{
return 1;
}
