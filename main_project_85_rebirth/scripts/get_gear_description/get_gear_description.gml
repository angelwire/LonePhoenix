/// @description get_gear_description(gear_id,gear_level)
/// @param gear_id
/// @param gear_level
var idid = argument0;
var level = argument1;

var percentage = floor(get_gear_percentage(idid,level)*100);

switch (idid)
{
case 16: return "Protects from " + string(percentage) + "% of damage from enemies"; break;
case 17: return "Deals "  + string(percentage) + "% of damage back to enemies"; break;
case 18: return "If hp is greater than 5, there is a "  + string(percentage) + "% chance that a killing blow won't kill"; break;
case 19: return "Gives attacks a " + string(percentage) + "% chance of critical hit"; break;
case 20: return "Gives attacks a " + string(percentage) + "% chance to stun enemies"; break;
case 21: return "Attacks are " + string(percentage) + "% faster"; break;
case 22: return "Gives a " + string(percentage) + "% chance to find an extra gold coin in containers"; break;
case 23: return "Improves the effectiveness of other gear by " + string(percentage) + "%"; break;
case 24: return "Gives a " + string(percentage) + "% chance that snakes cause no damage"; break;
}
