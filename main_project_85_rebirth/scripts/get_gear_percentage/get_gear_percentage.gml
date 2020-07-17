/// @description get_gear_percentage(gear id, gear level)
/// @param gear id
/// @param  gear level
var idid = argument0;
var level = argument1;

switch(idid)
{
case 16: return .03*level; break;
case 17: return .05*level; break;
case 18: return .07*level; break;
case 19: return .02*level; break;
case 20: return .02*level; break;
case 21: return .06*level; break;
case 22: return .05*level; break;
case 23: return .02*level; break;
case 24: return .1*level; break;
default: return 0; break;
}
