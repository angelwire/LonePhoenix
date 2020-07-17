/// @description ae_destroy_menu()
if instance_exists(menu_button_object)
{
    with(menu_button_object)
    {
    instance_destroy();
    }
}
instance_destroy();

