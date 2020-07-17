/*global.book_text[0] = "Use the arrows to move
Use X as attack
Use Z as action
Press F1 - F6 to alter the filters
(motion blur, color pallete, etc)
In the barber menu press X to accept and Z to cancel"*/

global.draw_book = false
global.show_book_id = 1

//init book font
globalvar real_book_font;
real_book_font = font_add_sprite_ext(good_font_sprite_right," !|#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]^_`abcdefghijklmnopqrstuvwxyz{|}",1,1)

global.book_text[0] = three_boys_story();
global.book_text[1] = a_dramatic_reading();
global.book_text[2] = flowing_snow();
global.book_text[3] = snowflake();
global.book_text[4] = the_best()
global.book_text[5] = will();
global.book_text[6] = dreams();
global.book_text[7] = future_of_futile();
global.book_text[8] = girl_diary();
global.book_text[9] = history_1();
global.book_text[10] = history_2();
global.book_text[11] = justice();
global.book_text[12] = successful_business();
global.book_text[13] = sir_william_of_camelot();
global.book_text[14] = political_propoganda();
global.book_text[15] = abruptly();
global.book_text[16] = confusion();
global.book_text[17] = contradiction();
global.book_text[18] = cool_as_ice();
global.book_text[19] = crystal();
global.book_text[20] = dichotomy();
global.book_text[21] = dream();
global.book_text[22] = joy();
global.book_text[23] = life_story();
global.book_text[24] = mimicking();
global.book_text[25] = questions();
global.book_text[26] = romance_from_the_east();
global.book_text[27] = romance_from_the_west();
global.book_text[28] = the_legendary_ballad();
global.book_text[29] = pen_ode();
global.book_text[30] = training();
global.book_text[31] = verbose();
global.book_text[32] = childs_alphabet();
global.book_text[33] = words_of_wisdom();
global.book_text[34] = salvation();
global.book_text[35] = the_gambling();
global.book_text[36] = right_big_toe();
global.book_text[37] = seriously_dramatic_poem();
global.book_text[38] = riddle();
global.book_text[39] = apples_and_pears();
global.book_text[40] = the_ride();
global.book_text[41] = two_knights_adap();


globalvar book_unlocked, book_opened;

var ii = 0;
repeat(array_length_1d(global.book_text))
{
book_unlocked[ii] = false;
book_opened[ii] = false;
ii+=1;
}
