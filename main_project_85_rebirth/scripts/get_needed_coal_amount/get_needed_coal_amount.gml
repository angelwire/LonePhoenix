/// @description get_needed_coal_amount(material id, material amount)
/// @param material id
/// @param  material amount

var idid = argument0;
var amount = argument1;

switch(idid)
{
case 1:
case 10:
case 13: return amount + 1;
break;
case 2:
case 5:
case 9: return amount + 2;
break;
case 11:
case 12:
case 15: return amount + 3;
break;
default: return 0;
}
