/// @description item_count(itemID)
/// @param itemID
var check_item = argument0;

if check_item >= 0
{
return global.items[check_item];
}
else
{
return -1;
}
