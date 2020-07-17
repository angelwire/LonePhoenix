if global.which_combo = 1
{

if power_attack_timer = 10
{
var bill;
image_index = frame_start
if round(direction) = 0 {bill = instance_create(x-6,y-2,power_tomahawk_object)}
if round(direction) = 90 {bill = instance_create(x+1,y+6,power_tomahawk_object)}
if round(direction) = 180 {bill = instance_create(x+6,y,power_tomahawk_object)}
if round(direction) = 270 {bill = instance_create(x-1,y-6,power_tomahawk_object)}
bill.direction = direction
bill.hspeed = cosine(player.direction)*2
bill.vspeed = -sine(player.direction)*2
image_speed = .14;
}
}

if global.which_combo = 4
{

}
