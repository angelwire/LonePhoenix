if !surface_exists(main_surface)
{
main_surface = surface_create(__view_get( e__VW.WPort, 0 ),__view_get( e__VW.HPort, 0 ));
__view_set( e__VW.SurfaceID, 0, main_surface );
}

if !surface_exists(other_surface)
{
other_surface = surface_create(__view_get( e__VW.WPort, 0 ),__view_get( e__VW.HPort, 0 ));
}

if !surface_exists(real_surface)
{
real_surface = surface_create(__view_get( e__VW.WPort, 0 ),__view_get( e__VW.HPort, 0 ));
}


