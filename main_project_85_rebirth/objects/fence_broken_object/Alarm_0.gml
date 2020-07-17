image_index = place_meeting(x,y-16,fence_object) + (place_meeting(x+16,y,fence_object)*2) + (place_meeting(x,y+16,fence_object)*4) + (place_meeting(x-16,y,fence_object)*8)
///Do all the collision junk here
switch (image_index)
{
case 0: set_mask(4,12,11,16); break; //X
case 1: set_mask(4,0,11,16); break; //^
case 2: set_mask(4,12,16,16); break; //>
case 3: set_mask(4,0,11,16); set_mask(4,12,16,16); break; //^>
case 4: set_mask(4,12,11,16); break; //V
case 5: set_mask(4,0,11,16); break; //^V
case 6: set_mask(4,12,16,16); break; //V>
case 7: set_mask(4,0,11,16); set_mask(4,12,16,16); break; //^>
case 8: set_mask(0,12,11,16); break; //<
case 9: set_mask(0,12,11,16); set_mask(4,0,11,16); break; //<^
case 10: set_mask(0,12,16,16); break; //<>
case 11: set_mask(0,12,16,16); set_mask(4,0,11,16); break; //<^>
case 12: set_mask(0,12,11,16) break; //<V
case 13: set_mask(0,12,11,16); set_mask(4,0,11,16); break; //<V^
case 14: set_mask(0,12,16,16); break; //<V>
case 15: set_mask(0,12,16,16); set_mask(4,0,11,16); break; //<V>^
}

