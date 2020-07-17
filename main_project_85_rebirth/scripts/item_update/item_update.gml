/// @description item_update(itemID,number)
/// @param itemID
/// @param number
var give_to = argument0;
if give_to >= 0
{
global.items[give_to] = argument1;
}
