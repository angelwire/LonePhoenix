/// @description ae_loop(value,min,max);
/// @param value
/// @param min
/// @param max

//loops a variable between the minimum and maximum values
var val,minn,maxx,modd;
val = argument0;
minn = argument1;
maxx = argument2;

if val > maxx or val < minn
{
modd = (val-maxx) mod (maxx-minn);
    if modd > 0
    {
        return modd + minn;
    }
    if modd < 0
    {
        return maxx - modd;
    }
}
else
{
    return val;
}
