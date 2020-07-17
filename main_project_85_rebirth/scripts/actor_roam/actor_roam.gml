/// @description actor_roam(actor)
/// @param actor
var actor = argument0;
act_roaming[actor] = true;
act_x[actor] = spot_get_x(actor,act_spot[actor]);
act_y[actor] = spot_get_y(actor,act_spot[actor]);
act_room[actor] = spot_get_room(actor,act_spot[actor]);
act_direction[actor] = spot_get_direction(actor,act_spot[actor]);
