/// @description item_get_ui_sprite(ItemID)
/// @param ItemID
var check_item = argument0;
switch (check_item)
{
case 0: return coin_sprite; break;
case 1: return snake_skin_sprite; break;
case 2: return buffalo_skin_sprite; break;
case 3: return coal_sprite; break;
case 4: return mushroom_sprite; break;
case 5: return beaver_pelt_sprite; break;
case 6: return medicine_item_sprite; break;
case 7: return cactus_juice_item_sprite; break;
case 8: return book_sprite_static; break;
case 9: return bear_skin_sprite; break;
case 10: return lizard_scale_sprite; break;
case 11: return crab_shell_sprite; break;
case 12: return wolf_teeth_sprite; break;
case 13: return frog_tongue_sprite; break;
case 14: return mug_sprite; break;
case 15: return porcupine_spike_sprite; break;

case 16: return bear_undershirt_sprite; break;
case 17: return beaver_undershirt_sprite; break;
case 18: return buffalo_undershirt_sprite; break;
case 19: return wolf_fang_gloves_sprite; break;
case 20: return crab_pincher_gloves_sprite; break;
case 21: return porcupine_spike_gloves_sprite; break;
case 22: return lizard_scale_amulet_sprite; break;
case 23: return snake_skin_oil_sprite; break;
case 24: return frog_tongue_sole_sprite; break;

default: return player_map_icon; break;
}
