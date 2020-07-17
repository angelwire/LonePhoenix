ae_create_menu()

selection = 0;
x = __view_get( e__VW.XView, 0 );
y = __view_get( e__VW.YView, 0 );
cursor_x = x+16;
cursor_y = y+16;

cursor_draw_x = x+16;
cursor_draw_y = y+16;

cursor_width = 24;
cursor_height = 24;

cursor_draw_width = 24;
cursor_draw_height = 24;

should_control_crafting_menu = true;

ae_create_menu_button(x+17,y+16,22,22);
ae_create_menu_button(x+57,y+10,22,22);
ae_create_menu_button(x+97,y+10,22,22);
ae_create_menu_button(x+121,y+10,22,22);

ae_create_menu_button(x+9,y+125,43,13);
ae_create_menu_button(x+93,y+125,55,13);

material_list_selected = 0;
resource_1_list_selected = 0;
resource_2_list_selected = 0;

