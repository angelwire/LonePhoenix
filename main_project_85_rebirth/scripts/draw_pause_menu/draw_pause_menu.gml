/// @description Draw Pause Menu
my_wave_timer += 1
var xt = 0;
var yt = 0;


if pause_page = 0 //Inventory
{
    if instance_exists(events_menu_controller)
    {
        with (events_menu_controller)
        {
        instance_destroy();
        }
    }
    if instance_exists(settings_menu_controller)
    {
        with (settings_menu_controller)
        {
        instance_destroy();
        }
    }
    
    
    
    draw_inventory(xt,yt);
    if !instance_exists(inventory_menu_controller)
    {
    instance_create(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ),inventory_menu_controller)
    }  
}

if pause_page = 1 //Current Events
{

    if instance_exists(inventory_menu_controller)
    {
        with (inventory_menu_controller)
        {
        instance_destroy();
        }
    }
    if instance_exists(settings_menu_controller)
    {
        with (settings_menu_controller)
        {
        instance_destroy();
        }
    }
    
    
    
    
    if !instance_exists(events_menu_controller)
    {
    instance_create(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ),events_menu_controller)
    }
    draw_current_events(xt,yt);
}

if pause_page = 2 // Menu
{
    if instance_exists(events_menu_controller)
    {
        with (events_menu_controller)
        {
        instance_destroy();
        }
    }
    if instance_exists(inventory_menu_controller)
    {
        with (inventory_menu_controller)
        {
        instance_destroy();
        }
    }

    
    
    
    
    if !instance_exists(settings_menu_controller)
    {
    instance_create(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ),settings_menu_controller)
    }
    draw_menu(xt,yt);
}
