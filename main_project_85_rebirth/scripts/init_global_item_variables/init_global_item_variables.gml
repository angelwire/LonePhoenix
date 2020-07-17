/// @description init_global_item_variables(make sure to update script as items are added to the game)
/// @param make sure to update script as items are added to the game

globalvar material_item_filter, coal_item_filter, payment_item_filter,current_item_filter, goods_item_filter;

material_item_filter = ae_initialize_array(1,2,5,9,10,11,12,13,15);

coal_item_filter = ae_initialize_array(3);

payment_item_filter = ae_initialize_array(0,1,2,3,4,5,6,7,9,10,11,12,13,14);

current_item_filter = material_item_filter;

goods_item_filter = ae_initialize_array(0,1,2,3,4,5,9,10,11,12,13,15);
