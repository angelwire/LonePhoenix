global.color_scheme = "greeny";

global.original_dark = $091921
global.original_med_dark = $316B52
global.original_med_light = $8AC573
global.original_light = $E6FFD6

global.sepia_dark = $5E3100
global.sepia_med_dark = $B57531
global.sepia_med_light = $FFB769
global.sepia_light = $FFEEBF

global.greeny_dark = $181D00
global.greeny_med_dark = $3F4B00
global.greeny_med_light = $758500
global.greeny_light = $AAB233

global.oldy_dark = $01183C
global.oldy_med_dark = $048340
global.oldy_med_light = $80D228
global.oldy_light = $E0F2B4


global.clive_dark = $000022
global.clive_med_dark = $CC5523
global.clive_med_light = $FFB769
global.clive_light = $FFEEBF

global.blue_dark = $09164A
global.blue_med_dark = $33527A
global.blue_med_light = $A5C7D9
global.blue_light = $F2EED5

/*
global.rainbow_dark = $002200
global.rainbow_med_dark = $856185
global.rainbow_med_light = $BB99BB
global.rainbow_light = $E8D3E8
*/

global.rainbow_dark = $010101
global.rainbow_med_dark = $4A4A4B
global.rainbow_med_light = $779075
global.rainbow_light = $B5E2F3


global.low_contrast_dark = $251D03
global.low_contrast_med_dark = $6D8801
global.low_contrast_med_light = $75FE06
global.low_contrast_light = $F5FDA2



global.original_dark_inv = $211909
global.original_med_dark_inv = $526B31
global.original_med_light_inv = $73C58A
global.original_light_inv = $D6FFE6



global.wheel_now = 0;
global.color_wheel[0] = "original"
global.color_wheel[1] = "sepia"
global.color_wheel[2] = "greeny"
global.color_wheel[3] = "oldy"
global.color_wheel[4] = "clive"
global.color_wheel[5] = "blue"
global.color_wheel[6] = "rainbow"
global.color_wheel[7] = "low contrast"

//Transition stuff
globalvar color_transition, color_transition_speed, 
color_goto_dark,
color_goto_med_dark,
color_goto_med_light,
color_goto_light,

current_color_dark,
current_color_med_dark,
current_color_med_light,
current_color_light;
//end declaration

color_transition = -1;
color_transition_speed = .001;
color_goto_dark = get_color_dark("original");
color_goto_med_dark = get_color_med_dark("original");
color_goto_med_light = get_color_med_light("original");
color_goto_light = get_color_light("original");

current_color_dark = get_color_dark(global.color_scheme);
current_color_med_dark = get_color_med_dark(global.color_scheme);
current_color_med_light = get_color_med_light(global.color_scheme);
current_color_light = get_color_light(global.color_scheme);



//World colors
globalvar outside_color, graveyard_color, desert_color, poison_pool_color, oasis_color, cave_color, snow_color, desert_fort_color, savannah_color;

outside_color = "original";
graveyard_color = "rainbow";
desert_color = "sepia";
poison_pool_color = "clive";
oasis_color = "oldy";
cave_color = "greeny";
snow_color = "blue";
desert_fort_color = "clive";
savannah_color = "low contrast";

//time colors
globalvar night_color_light, night_color_med_light, night_color_med_dark, night_color_dark, sunset_color_light, sunset_color_med_light, sunset_color_med_dark, sunset_color_dark;

night_color_light = $2C60CA;
night_color_med_light = $01468C;
night_color_med_dark = $10134E;
night_color_dark = $030313;

sunset_color_light = $BEBA7E;
sunset_color_med_light = $AD8F01;
sunset_color_med_dark = $7E501A;
sunset_color_dark = $091D38;

update_colors();
