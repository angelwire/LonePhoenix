//Check to get out of talking
if b_pressed and global.draw_book = true
{
gotime = true
global.draw_book = false
b_pressed = false
}


if gotime = true
{
if sitting = false 
{
if right_is_pressed()
{
walk(0)
}
else if up_is_pressed()
{
walk(1)//Typing out!!
}
else if left_is_pressed()
{
walk(2)
}
else if down_is_pressed()
{
walk(3)
}
else
{
speed = 0
if attacking = false
{
image_speed = 0
image_index = frame_start+1;
}
else
{
if global.character = indian_sprite
{
if image_index > frame_end -1.5
{
//image_speed = .06;
}

}
}
}

}
else
{
speed = 0
image_speed = 0
image_index = frame_start;
if down_is_pressed() or left_is_pressed()
or up_is_pressed() or right_is_pressed()
{
stand_up();
}

}

//KNOCKBACK CODE ---->>>>>>>>>

if drag_to_x != -.54321 and drag_to_y != -.54321
{
    if i_can_move_there(merge_variable(drag_to_x,x,2),y)
    {
    x = merge_variable(drag_to_x,x,2);
    }
    else
    {
    drag_to_x = -.54321
    }
    
    if i_can_move_there(x,merge_variable(drag_to_y,y,2))
    {
    y = merge_variable(drag_to_y,y,2);
    }
    else
    {
    drag_to_y = -.54321;
    }
    
    //show_debug_message("x_moving");
    //show_debug_message("y_moving")
    
    if x == drag_to_x and y == drag_to_y
    {
    drag_to_x = -.54321;
    drag_to_y = -.54321
    //show_debug_message("found it")
    }

}
//KNOXBAX CODE ^^^^^<^>^<^>^<><^><^><^><^

// =|:,)

//Close the jail door
if instance_exists(jail_door_object)
{
if b_pressed
{
if point_distance(x+(cosine(direction)*4),y-(sine(direction)*4)+2,jail_door_object.x,jail_door_object.y) < 30
{
jail_door_object.open = !jail_door_object.open;
jail_door_object.image_index = jail_door_object.open
jail_door_object.alarm[0] = 60;
}
}
}

if instance_exists(bridge_object)
{
if b_pressed and global.gotswitch = true
{
if point_distance(x+(cosine(direction)*4),y-(sine(direction)*4)+2,bridge_object.x,bridge_object.y) < 16 and global.bridgedown = false
{
global.bridgedown = true;
audio_play_sound(bridge_sound,10,0)
}
}
}

//CHECK FOR ROOM EXIT WITH DOOR
if instance_exists(door_object)
{
jenry = instance_nearest(x-8,y-8,door_object);
if distance_to_point(jenry.x+8,jenry.y+8) < 10 and abs(point_direction(x,y,jenry.x+8,jenry.y+8)-direction) < 40
{
enter_room()
}
}

//Sit Checker
if instance_exists(chair_object)
{
nearly = instance_nearest(x+(cosine(direction)*4),y-(sine(direction)*4)+2,chair_object);
if distance_to_point(nearly.x,nearly.y) < 10
{
can_sit = true;
if b_pressed
{
if sitting = true
{
stand_up()
b_pressed = false;
}
else
{
sit_down()
}
}
}
}

//////////---//**-/*-/*-/*-/*-/*-

if attacking = false
{
frame_end = ((direction/90)*4)+4
frame_start = (direction/90)*4
}
else
{
if (image_index >= frame_end or image_index >= 31.8) and attacking = true
{
show_debug_message("finished attack")
attacking = false
frame_end = ((direction/90)*4)+4
frame_start = (direction/90)*4
image_index = frame_start+1
}
}

//The problem is that gamemaker is resetting the image_index before my code can catch it.

if image_index >= frame_end
{
image_index = frame_start
}
if image_index < frame_start
{
image_index = frame_start
}

//Check for attacking
if a_pressed and (attacking = false or image_index > frame_end-.5) and sitting = false and paused = false
{
attack()
}

if attacking = true
{
if i_can_walk_that_way(3) and global.character = or_sprite
{
speed = 3
}
}

}
else
{
speed = 0
image_speed = 0
}


if global.canhurt >=60 and attacking = false
{
frame_start = (direction/90)*4

if image_index >= frame_end
{
image_index = frame_start
}
if image_index < frame_start
{
image_index = frame_start
}

image_index = frame_start+1
speed = 0;
global.attacking = false
}

//Check for the power_attack
if power_attack_timer > 0
{
power_attack()
power_attack_timer -=1;
}
//()()()()()()()()()()()()()(

if (a_pressed or b_pressed) and global.seeing_note
{
global.seeing_note = false
}



//check for objects to interact with
if gotime = true
{
    if instance_exists(mirror_object)
    {
        near_object = instance_nearest(x+(cosine(direction)*8),y-(sine(direction)*8),mirror_object)
        if point_distance(near_object.x,near_object.y,x+(cosine(direction)*8),y-(sine(direction)*8)) < 10
        {
        show_action_bubble = true
        bubble_x = near_object.x;
        bubble_y = near_object.y;
            if b_pressed = true
            {
            show_customize_menu()
            }
        }
    }
    //--------------------check for books
    if instance_exists(book_object)
    {
        near_object = instance_nearest(x+(cosine(direction)*8),y-(sine(direction)*8),book_object)
        if (point_distance(near_object.x,near_object.y,x+(cosine(direction)*8),y-(sine(direction)*8)) < 10) and near_object.image_index = 1 
        {
        show_action_bubble = true
        bubble_x = near_object.x;
        bubble_y = near_object.y;
            if b_pressed = true
            {
            controller_object.book_scroll = 0;
            global.draw_book = true
            global.show_book_id = near_object.book_id
            }
            
        }
    
    }
    
    //-----------------check for stuff in barrels
    if instance_exists(stuff_in_barrels)
    {
        near_object = instance_nearest(x+(cosine(direction)*8),y-(sine(direction)*8),stuff_in_barrels)
        if point_distance(near_object.x,near_object.y,x+(cosine(direction)*8),y-(sine(direction)*8)) < 15
            {
            //show_action_bubble = true;
            //bubble_x = near_object.x;
            //bubble_y = near_object.y;
            if b_pressed = true
            {
                with(near_object)
                {
                    if collected = -1
                    {
                    pickup_items()
                    }
                    if place_meeting(x,y,chest_object)
                    {
                    var joey = instance_place(x,y,chest_object);
                    joey.image_index = 1;
                    }
                }
            }
        }
    }
}


// Death animation
if instance_exists(game_over_controller)
{
direction = (game_over_controller.alarm[0]);
//direction = -((sleeping_timer-sleep_offset)*9);
sleeping = true;
if game_over_controller.alarm[0] < 60
{
image_index = 0;
draw_grave = true;
}

}


//Check for powder keg
/*
if instance_exists(powder_keg_object)
{
near_object = instance_nearest(x+(cosine(direction)*8),y-(sine(direction)*8),powder_keg_object)
if point_distance(near_object.x,near_object.y,x+(cosine(direction)*8),y-(sine(direction)*8)) < 10
{
show_action_bubble = true
if b_pressed = true
{
near_object.fuse_go = true;
}
}
}
*/




if a_is_pressed() and paused = false
{
if charge_timer < 30
{
charge_timer +=1
}
}
else
{
if charge_timer = 30
{
power_attack_timer = 20
}
charge_timer = 0
}

//Reset all ending per_step variables ^v^v^v^v^v^v^v^v^v^v^v^v^v^v^v^v^v^v^v^v^v^v
y = round(y)
//_______________________________________________________________________()
x = round(x)
//_______________________________________________________________________()
can_sit = false;
//_______________________________________________________________________()
can_enter = false;
//Reset all per_step variables ^v^v^v^v^v^v^v^v^v^v^v^v^v^v^v^v^v^v^v^v^v^v



//Girl Attack Check --==--==--==--==--==--==--==--

/*
if instance_exists(snake_object) and global.character = girl_sprite
{

owy = instance_nearest(x,y,snake_object)

if distance_to_object(owy) < 6
{

if attacking = true
{

if abs(point_direction(x,y-2,owy.x,owy.y)-direction) <90
or abs(point_direction(x,y-2,owy.x,owy.y)-direction) > 270
or power_attack_timer >= 1
{
with(owy)
{
instance_create(x,y,snake_skin_object)
instance_destroy()
}
}
}
}
}
*/
//WWWWWWWWWWWWWWWWWWW--------------MMMMMMMMMMMMMMMMMMMMMMMMMM


if global.didfinish = false and room = final_room
{
global.didfinish = true;
}

if l_is_pressed() and r_is_pressed() and x_is_pressed()
{
game_restart()
}

if keyboard_check(ord("Q")) and keyboard_check(ord("E")) and keyboard_check(ord("T"))
{
game_restart()
}

if sleeping = true
{
    gotime = false;
    direction = -(round(((sleeping_timer-sleep_offset)*9)/90)*90);
	if (direction < 0)
	{
		direction += 360;
	}
    image_index = ((floor(direction/90))*4)+1
    sleeping_timer += 1;    

        if sleeping_timer mod 4 = 0 and sleeping_timer > sleep_offset and !instance_exists(game_over_controller)
        {
        x -= 1;
        }

        if sleeping_timer > 58 + sleep_offset
        {
        sleeping = false;
        gotime = true;
        global.should_wake = false;
        }

}


if sitting = false
{
    if sleeping = false
    {
    depth = -y
    }
    else
    {
    depth = -(y+16)
    }
}
else
{
if direction != 270
{
depth = -y
}
else
{
depth = -(y+7)
image_index +=1
}
}


/* */
///Check for smithing
    if instance_exists(smithing_marker) and gotime = true
    {
        near_object = instance_nearest(x+(cosine(direction)*8),y-(sine(direction)*8),smithing_marker)
        if point_distance(near_object.x,near_object.y,x+(cosine(direction)*8),y-(sine(direction)*8)) < 15
            {
            show_action_bubble = true
            bubble_x = near_object.x;
            bubble_y = near_object.y;
            if b_pressed = true
            {
            attacking = false;
            with(controller_object)
            {
            set_crafting_variables();
            }
            controller_object.show_crafting_menu = true;
            global.gotime = false;
            instance_create(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ),crafting_menu_controller);
            }
        }
    }

/* */
/*  */
