var ii = 0;
repeat(global.total_items)
{
if ii < 16 or ii > 24
{
item_update(ii,item_count(ii)+1);
}
ii += 1;
}
