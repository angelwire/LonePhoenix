/// @description jump_to_popup_position(x,y)
/// @param x
/// @param y

var ii = 0;
var pop_pox = argument0;
var pop_poy = argument1;
popup_x = pop_pox;
popup_y = pop_poy;


while !position_open(popup_x,popup_y+5) and ii<32
{
popup_x = pop_pox+((random(16)-8)*sign(ii));
popup_y = pop_poy+((random(16)-8)*sign(ii));
ii+=1;
}

if ii >= 31
{
popup_x = x;
popup_y = y;
}
else
{
x = popup_x;
y = popup_y;
}
