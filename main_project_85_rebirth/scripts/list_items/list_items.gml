var stringy = "";
var ii = 0;
repeat(global.total_items)
{
stringy = string(stringy) + "[" + string(ii) + "]" + string(item_get_help_text(ii)) + ": " + string(global.items[ii]) + "#";
ii+=1;
}
show_message(stringy);
