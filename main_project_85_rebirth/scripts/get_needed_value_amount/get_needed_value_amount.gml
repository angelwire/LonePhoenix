/// @description get_needed_value_amount(material id, material amount)
/// @param material id
/// @param  material amount

var idid = argument0;
var amount = argument1;

switch(idid)
{
case 1:
case 10:
case 13: return amount*150;
break;
case 2:
case 5:
case 9: return amount*150;
break;
case 11:
case 12:
case 15: return amount*150;
break;
}
