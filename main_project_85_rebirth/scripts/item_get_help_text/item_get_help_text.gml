/// @description item_get_help_text(item_id)
/// @param item_id
var item = argument0;

switch(item)
{
case 0: return "Coin"; break;
case 1: return "Snake Skin"; break;
case 2: return "Buffalo Hide"; break;
case 3: return "Coal Pebble"; break;
case 4: return "Mushroom"; break;
case 5: return "Beaver Pelt"; break;
case 6: return "Medicine Bottle"; break;
case 7: return "Cactus Juice"; break;

case 8: return "Books"; break;

case 9: return "Bear Skin"; break;
case 10: return "Lizard Scales"; break;
case 11: return "Crab Shell"; break;
case 12: return "Wolf Teeth"; break;
case 13: return "Frog Tongue"; break;

case 14: return "Invincibility Mug"; break;

case 15: return "Porcupine Spike"; break;

case 16: return "Bear Undershirt"; break;
case 17: return "Beaver Undershirt"; break;
case 18: return "Buffalo Undershirt"; break;

case 19: return "Wolf Fang Gloves"; break;
case 20: return "Crab Pincher Gloves"; break;
case 21: return "Porcupine Spike Gloves"; break;

case 22: return "Lizard Scale Amulet"; break;
case 23: return "Snake Skin Oil"; break;
case 24: return "Frog Tongue Soles"; break;


default: return "No Item Help Text for: " + string(item); break;
}
