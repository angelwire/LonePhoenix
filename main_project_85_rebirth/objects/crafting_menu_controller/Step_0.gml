should_control_crafting_menu = !controller_object.show_item_list; //i think this got fixed

if (should_control_crafting_menu)
{

    ae_control_menu(.2);
    
    if up_is_new_pressed()
    {
    ae_move_selection(90,160);
    }
    
    if right_is_new_pressed()
    {
    ae_move_selection(0,160);
    }
    
    if left_is_new_pressed()
    {
    ae_move_selection(180,160);
    }
    
    if down_is_new_pressed()
    {
    ae_move_selection(310,100);
    }
    
    
    if controller_object.b_pressed
    {
    instance_destroy();
    }
    
    
    if controller_object.a_pressed
    {
    controller_object.a_pressed = false;
        switch(selection)
        {
        case 0: 
        current_item_filter = material_item_filter; 
        controller_object.show_item_list = true;
        controller_object.useable_items[controller_object.material_id] += controller_object.material_amount;
        if controller_object.material_amount != 0
        {
        controller_object.list_item_selected = material_list_selected;
        controller_object.list_item_amount = controller_object.material_amount;
        controller_object.list_item_is_chosen = true;
        }
        break; //select material
        
        case 1: 
        controller_object.useable_items[3] += controller_object.coal_amount;
        controller_object.coal_amount = min(controller_object.useable_items[3],controller_object.needed_coal);
        controller_object.useable_items[3] -= controller_object.coal_amount;
        break;//current_item_filter = coal_item_filter; controller_object.show_item_list = true; break; ///select coal
        
        case 2:
        controller_object.useable_items[controller_object.resource_1_id] += controller_object.resource_1_amount;
        current_item_filter = get_filtered_item_list(payment_item_filter,1);
        controller_object.show_item_list = true;
        if controller_object.resource_1_amount != 0
        {
            controller_object.list_item_selected = resource_1_list_selected;
            controller_object.list_item_amount = controller_object.resource_1_amount;
            controller_object.list_item_is_chosen = true;
        }
        break; //select resource1
        
        case 3:
        controller_object.useable_items[controller_object.resource_2_id] += controller_object.resource_2_amount;
        current_item_filter = get_filtered_item_list(payment_item_filter,1);
        controller_object.list_item_selected = resource_2_list_selected;        
        controller_object.show_item_list = true;
        if controller_object.resource_2_amount != 0
        {
            controller_object.list_item_selected = resource_2_list_selected;
            controller_object.list_item_amount = controller_object.resource_2_amount;
            controller_object.list_item_is_chosen = true;
        }        
        break; ///select resource2
        
        case 4: instance_destroy();
        break; //select back
        
        case 5:
        if controller_object.can_smith
        {
        global.items = controller_object.useable_items;
        craft_item(controller_object.item_to_be_crafted,controller_object.item_to_be_crafted_level)
        instance_destroy();        
        }
        break;//select craft
        }
    
    }
}

