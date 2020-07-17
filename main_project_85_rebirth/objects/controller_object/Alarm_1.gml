/// @description deactivate instances
instance_deactivate_object(grass_bundle_object);
instance_deactivate_object(fence_object);

instance_deactivate_object(small_tree_object);
instance_deactivate_object(new_tree_object);
instance_deactivate_object(palm_tree_object);
instance_deactivate_object(droop_tree_object);

instance_deactivate_object(water_fall_object);
instance_deactivate_object(lake_object);

instance_activate_region(__view_get( e__VW.XView, 0 ) -deactivate_padding,__view_get( e__VW.YView, 0 ) - deactivate_padding,__view_get( e__VW.WView, 0 )+(deactivate_padding*2),__view_get( e__VW.HView, 0 )+(deactivate_padding*2),1)
alarm[1] = 60;

