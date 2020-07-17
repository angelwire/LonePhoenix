//deprecated
var thenode,charley;
if instance_exists(townsperson_object) and attacking = false
{
charley = instance_nearest(x+(cosine(direction)*8),y-(sine(direction)*8),townsperson_object)
if point_distance(charley.x,charley.y,x+(cosine(direction)*8),y-(sine(direction)*8)) < 14
{
b_pressed = false;

thenode = 0;//target_plot[charley.my_id];
while (string(global.talk_text[charley.my_id,thenode]) = "-1" and thenode > 0)
{
thenode -=1;
}
if charley.my_id != 3
{
global.display_text = get_coded_string(charley.my_id,0,thenode)//talk_text[charley.my_id,thenode]
}
else
{
if global.gotswitch = 1 and global.bridgedown = false
{
global.display_text = get_coded_string(charley.my_id,1,thenode)//talk_text[charley.my_id,thenode]
}
else if global.bridgedown = true
{
global.display_text = get_coded_string(charley.my_id,2,thenode)//talk_text[charley.my_id,thenode]
}
else
{
global.display_text = get_coded_string(charley.my_id,0,thenode)//talk_text[charley.my_id,thenode]
}

{

}


}
//show_debug_message(string(talk_text[charley.my_id,thenode]))
global.talkingto = charley.my_id
start_text_box()
}

}
