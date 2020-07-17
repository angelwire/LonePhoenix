//tells the stuff_in_barrels object to give
// its contents to the player

collected = true;
if item[0] != -1
{
//item_update(item[0],item_count(item[0])+item[1]);
add_item_to_inventory(item[0],item[1])
}
if item[2] != -1
{
//item_update(item[2],item_count(item[2])+item[3]);
add_item_to_inventory(item[2],item[3])
}
if item[4] != -1
{
//item_update(item[4],item_count(item[4])+item[5]);
add_item_to_inventory(item[4],item[5])
}
if item[6] != -1
{
//item_update(item[6],item_count(item[6])+item[7]);
add_item_to_inventory(item[6],item[7])
}
if item[8] != -1
{
//item_update(item[8],item_count(item[8])+item[9]);
add_item_to_inventory(item[8],item[9])
}

if equipped_misc = 22
{
    if random(100) * .01 < global.items[22]
    {
     add_item_to_inventory(0,1); 
    }
}

global.used_barrels[global.picked_up] = id
global.picked_up += 1;
