/// @description ae_bounce_position(speed);
/// @param speed
ae_bounce_timer -= argument0;
return clamp((ae_bounce_max_time/2) - abs(ae_bounce_max_time/2-ae_bounce_timer),0,ae_bounce_distance);
