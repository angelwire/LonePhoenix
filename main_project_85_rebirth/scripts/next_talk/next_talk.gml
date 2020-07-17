/// @description next_talk
//goes to the next line
text_box_time = 0;

//show_message("Line give id: " + string(line_give_item_id[current_line]) + " for line: " + string(current_line));
if line_set_quest[current_line] != -1
{
g_quest_progress[line_set_quest[current_line]] = line_set_quest_mark[current_line];
show_debug_message("Talking: Set quest[" + string(line_set_quest[current_line]) + "] to: " + string(line_set_quest_mark[current_line]));
}


if line_give_item_id[current_line] != -1
{
add_item_to_inventory(line_give_item_id[current_line],line_give_item_amount[current_line]);
}

if line_take_item_id[current_line] != -1
{

//show_message(string(item_count(line_take_item_id[current_line])) + " - " + string(line_take_item_amount[current_line]));

    if item_count(line_take_item_id[current_line]) >= line_take_item_amount[current_line]
    {
    remove_item_from_inventory(line_take_item_id[current_line],line_take_item_amount[current_line]);
    current_line = line_question_jump[current_line,1];
    exit;
    }
    else
    {
    current_line = line_question_jump[current_line,0];
    exit;
    }
}

if line_check_quest[current_line] != -1
{
    show_debug_message("- A quest check is being performed -");
    var jj = 0;
    var goto_line = -1;
    repeat(line_check_quest_count[current_line])
    {
        if real(line_check_quest_mark[current_line,jj]) == real(g_quest_progress[line_check_quest[current_line]]) or line_check_quest_mark[current_line,jj] == 0
        {
        goto_line = line_check_quest_jump[current_line,jj];
        show_debug_message("- The goto line has been set to: " + string(goto_line) + " -");        
        }
        jj+=1;
    }
    
    if goto_line != -1
    {
        current_line = goto_line;
        exit;
    }
}

if line_check_quest_extra[current_line] != -1
{
    show_debug_message("- A quest check extra is being performed -");
    var jj = 0;
    var goto_line = -1;
    repeat(line_check_quest_count[current_line])
    {
        show_debug_message("Checking to see if: " + string(line_check_quest_mark[current_line,jj]) + " is equal to: " + string(g_quest_extra[line_check_quest_extra[current_line]]) + " or: 0")    
        if real(line_check_quest_mark[current_line,jj]) = real(g_quest_extra[line_check_quest_extra[current_line]]) or line_check_quest_mark[current_line,jj] == 0
        {
        goto_line = line_check_quest_jump[current_line,jj];
        show_debug_message("- The extra goto line has been set to: " + string(goto_line) + " -");        
        }
        jj+=1;
    }
    
    if goto_line != -1
    {
        current_line = goto_line;
        exit;
    }
}

if line_check_item_id[current_line] != -1
{
    if item_count(line_check_item_id[current_line]) >= line_check_item_amount[current_line]
    {
    current_line = line_question_jump[current_line,1];
    exit;
    }
    else
    {
    current_line = line_question_jump[current_line,0];
    exit;
    }
}

if line_pin_send[current_line] != -1
{
current_line = line_pin[line_pin_send[current_line]];
exit;
}


if line_should_end[current_line]
{
global.talking = false;
current_line = 0;
player.show_bubble = true;
}
else
{

if (line_is_question[current_line] == true)
{
show_debug_message("----- Response list chosen -----");
show_debug_message(response_list_chosen);
current_line = line_question_jump[current_line,response_list_chosen];
response_list_chosen = 0;
}
else
{
current_line += 1;
}

}

