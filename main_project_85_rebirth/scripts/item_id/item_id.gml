var check_item = string(argument0);
switch (check_item)
{
case "coin": return 0; break;
case "snakeskin": return 1; break;
case "buffaloskin": return 2; break;
case "coal": return 3; break;
case "mushroom": return 4; break;
case "beaverpelt": return 5; break;
case "bearpelt": return 9; break;
case "lizardscale": return 10; break;
case "crabshell": return 11; break;
default: return 100; break;
}
