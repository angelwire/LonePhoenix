var xtoo,ytoo,directionn;

if sitting = false and attacking = false
{
directionn = nearly.dir

if global.character = girl_sprite
{
xtoo = nearly.x+(cosine(directionn)*(4-speed))
}
else
if global.character = indian_sprite
{
xtoo = nearly.x+(cosine(directionn)*(3-speed))
}
else
if global.character = cowboy_sprite
{
xtoo = nearly.x+(cosine(directionn)*(2-speed))
}
else
if global.character = or_sprite
{
xtoo = nearly.x+(cosine(directionn)*(5-speed))
}
else
{
xtoo = nearly.x+(cosine(directionn)*(3-speed))
}

if nearly.dir != 270
{
ytoo = nearly.y-4
}
else
{
ytoo = nearly.y-1
}

if !place_meeting(xtoo,ytoo,townsperson_object)
{
x = xtoo;
y = ytoo;
sitting = true;
direction = directionn
}

}
