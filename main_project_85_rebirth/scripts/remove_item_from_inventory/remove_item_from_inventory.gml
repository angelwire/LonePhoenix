/// @description remove_item_from_inventory(itemID, amount)
/// @param itemID
/// @param  amount
//removes the given amount of items from the inventory and adds a popup
var aa = argument0;
var bb = -argument1;

if aa != 8
{
if item_count(aa)>bb
{
item_update(aa,item_count(aa)-bb);
}
else
{
item_update(aa,0);
}
controller_object.item_popup_line_item[controller_object.item_popup_current] = aa
controller_object.item_popup_line_number[controller_object.item_popup_current] = bb;
controller_object.item_popup_current +=1;
}
else
{
book_unlocked[bb] = true;
controller_object.item_popup_line_item[controller_object.item_popup_current] = aa
controller_object.item_popup_line_number[controller_object.item_popup_current] = bb;
controller_object.item_popup_current +=1;
}
