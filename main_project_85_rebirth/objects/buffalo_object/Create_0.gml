image_speed = 0;
rangetimer = 0;
mydistance = 76;

attackprep = 12;
attacktimer = 0;
stuntimer = 0;
hasattacked = 0;
iamattacking = false;

my_health = 10;

mydistancetimer = 90;

stun_timer = 0;

if instance_exists(buffalo_object)
{
var twinsy =  instance_nearest(x,y,buffalo_object)
    if twinsy.x = x and twinsy.y = y and twinsy.id < id
    {
    instance_destroy();
    }
}

