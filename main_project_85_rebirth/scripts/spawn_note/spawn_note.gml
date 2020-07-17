var bob,larry;
bob = instance_create(__view_get( e__VW.XView, 0 )-32,__view_get( e__VW.YView, 0 )+22,note_object);
larry = instance_create(__view_get( e__VW.XView, 0 )-32,__view_get( e__VW.YView, 0 )+16,delivery_bird_object);
bob.show_text = note_text[latest_note];
