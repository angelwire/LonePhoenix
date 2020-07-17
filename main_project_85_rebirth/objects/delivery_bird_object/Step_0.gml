if x > __view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 )
{
instance_destroy()
}

if y > __view_get( e__VW.YView, 0 )+32 or x > __view_get( e__VW.XView, 0 ) + 90
{
y -= 1
}

if y < __view_get( e__VW.YView, 0 )+32 and x < __view_get( e__VW.XView, 0 ) + 90
{
y += 1
}

