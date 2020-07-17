selection = 0;
x = __view_get( e__VW.XView, 0 );
y = __view_get( e__VW.YView, 0 );

button_selected = -1;


var ii= 1;
my_shirt_selected = 0;
my_gear_shirt[0] = -1;
if (global.items[16] > 0) { my_gear_shirt[ii] = 16; if (equipped_shirt == 16) {my_shirt_selected = ii}; ii+=1;}
if (global.items[17] > 0) { my_gear_shirt[ii] = 17; if (equipped_shirt == 17) {my_shirt_selected = ii}; ii+=1;}
if (global.items[18] > 0) { my_gear_shirt[ii] = 18; if (equipped_shirt == 18) {my_shirt_selected = ii}; ii+=1;}

ii = 1;
my_gloves_selected = 0;
my_gear_gloves[0] = -1;
if (global.items[19] > 0) { my_gear_gloves[ii] = 19; if (equipped_gloves == 19) {my_gloves_selected = ii}; ii+=1;}
if (global.items[20] > 0) { my_gear_gloves[ii] = 20; if (equipped_gloves == 20) {my_gloves_selected = ii}; ii+=1;}
if (global.items[21] > 0) { my_gear_gloves[ii] = 21; if (equipped_gloves == 21) {my_gloves_selected = ii}; ii+=1;}

ii = 1;
my_misc_selected = 0;
my_gear_misc[0] = -1;
if (global.items[22] > 0) { my_gear_misc[ii] = 22;  if (equipped_misc == 22) {my_misc_selected = ii}; ii+=1;}
if (global.items[23] > 0) { my_gear_misc[ii] = 23;  if (equipped_misc == 23) {my_misc_selected = ii}; ii+=1;}
if (global.items[24] > 0) { my_gear_misc[ii] = 24;  if (equipped_misc == 24) {my_misc_selected = ii}; ii+=1;}


