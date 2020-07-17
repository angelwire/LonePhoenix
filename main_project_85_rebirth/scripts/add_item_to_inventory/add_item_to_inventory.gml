/// @description add_item_to_inventory(itemID, amount)
/// @param itemID
/// @param  amount
var aa = argument0;
var bb = argument1;

if aa != 8
{
item_update(aa,item_count(aa)+bb);
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
