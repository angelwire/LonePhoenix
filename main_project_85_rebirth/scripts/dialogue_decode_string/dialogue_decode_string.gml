/// @description dialogue_decode_string(string,characterID)
/// @param string
/// @param characterID
var in_string = argument0;
var char_id = argument1;

//clear arrays
var ii = 0;
var jj = 0;
repeat(total_lines)
{
line_text[ii] = "";
line_is_player[ii] = false;
line_is_question[ii] = false;
line_actor_display[ii] = -1;
line_set_branch[ii] = -1;
line_set_quest[ii] = -1;
line_set_quest_mark[ii] = -1;

jj = 0;
repeat(array_length_2d(line_question_jump,ii))
{
line_question_jump[ii,jj] = -1;
line_question_response[ii,jj] = "";
jj+=1;
}
line_check_quest_extra[ii] = -1;
line_check_quest[ii] = -1;
line_check_quest_count[ii] = -1;
jj = 0;
repeat(array_length_2d(line_check_quest_jump,ii))
{
line_check_quest_mark[ii,jj] = -1;
line_check_quest_jump[ii,jj] = -1;
jj+=1;
}


line_give_item_id[ii] = -1;
line_give_item_amount[ii] = -1;
line_take_item_id[ii] = -1;
line_take_item_amount[ii] = -1;

line_check_item_id[ii] = -1;
line_check_item_amount[ii] = -1;

line_pin[ii] = -1;
line_pin_send[ii] = -1;

line_should_end[ii] = false;

ii+=1;
}

total_lines = 0;

///Line array has been cleared

//Set local question stack variables
var line_question_stack,
line_question_stack_position,
line_question_answer_count,
line_question_current_answer;

line_question_stack[0] = -1;
line_question_stack_position = -1;
line_question_answer_count[0] = 0;
line_question_current_answer[0] = 0;



//reset loop variables
ii = 0;
jj = 0;

var current_position = 0;
var character_check = "";

while(character_check != "<char^" + string(char_id) and character_check != "<char^a")
{
    while(string_char_at(in_string,current_position) != "<")
    {
    current_position += 1;
//    show_debug_message("No < so moving on to " + string(current_position));
    }
    character_check = string_copy(in_string,current_position,7)
    show_debug_message("character_check is equal to: " + string(character_check));
    current_position += 1;
}
show_debug_message("Found at position: " + string(current_position));
show_debug_message("---------- Char^x found ----------");

current_position += 7; //Advance the current position past the closing >
//we know there are always 7 characters in that tag so it's easy

var current_line = 0;
var should_end = false;
var new_line = true;
while current_position < string_length(in_string) and should_end = false
{

if new_line = true
{
    //Set up the variables for the current line
    line_text[current_line] = "";
    line_is_player[current_line] = false;
    line_is_question[current_line] = false;
    line_actor_display[current_line] = -1;
    line_set_branch[current_line] = -1;
    line_set_quest[current_line] = -1;
    line_set_quest_mark[current_line] = -1;
    
    jj = 0;
    repeat(array_length_2d(line_question_jump,current_line))
    {
    line_question_jump[current_line,jj] = -1;
    line_question_response[current_line,jj] = "";
    jj+=1;
    }
    line_give_item_id[current_line] = -1;
    line_give_item_amount[current_line] = -1;
    line_take_item_id[current_line] = -1;
    line_take_item_amount[current_line] = -1;
    
    line_check_item_id[current_line] = -1;
    line_check_item_amount[current_line] = -1;
    
    line_pin[current_line] = -1;
    line_pin_send[current_line] = -1;
    
    line_should_end[current_line] = false;
    
    line_check_quest[current_line] = -1;
    line_check_quest_count[current_line] = -1;
    
    line_check_quest_extra[current_line] = -1;
}
/*
jj = 0;
repeat(array_length_2d(line_check_quest_jump,current_line))
{
line_check_quest_mark[current_line,jj] = -1;
line_check_quest_jump[current_line,jj] = -1;
jj+=1;
}
*/



    while(string_char_at(in_string,current_position) != "<" and current_position < string_length(in_string))
    {
    line_text[current_line] = line_text[current_line] + string_char_at(in_string,current_position)
    current_position+=1;
    }
    if current_position >= string_length(in_string)
    {
    should_end = true;
    continue;
    }
    show_debug_message("Current line [" + string(current_line) + "] is: " + string(line_text[current_line]));
    
    var tag_text, tag_arguments, tag_name;
    tag_text = ae_get_string_until_character_ext(in_string,">",current_position+1,false);
    tag_arguments = ae_split(tag_text,"^");
    tag_name = tag_arguments[0];
    
    show_debug_message("tag name is: " + string(tag_name));
    
    if tag_name = "br"
    {
        current_line +=1;
        current_position +=4;
        new_line = true;        
        show_debug_message("------------ BREAK LINE ----------");
        continue;
    }
    
    
    if tag_name = "end"
    {
        line_should_end[current_line] = true;
        current_line +=1;
        current_position +=5;
        new_line = true;
        show_debug_message("------------ END LINE ----------");
        continue;
    }
    
    
    
    if tag_name = "char"
    {
        should_end = true
        continue;
    }
    
    
    if tag_name = "q"
    {
        jj=2;
        line_text[current_line] = tag_arguments[1];
        line_is_question[current_line] = true;
        show_debug_message("Question: " + string(line_text[current_line]));
        var response_count = array_length_1d(tag_arguments)-2;
        repeat(response_count)
        {
        line_question_response[current_line,jj-2] = tag_arguments[jj];
        show_debug_message("  Response: " + string(tag_arguments[jj]));
        jj+=1;
        }
        
        //DOWN THE RABBIT HOLE
        line_question_stack_position +=1;
        line_question_stack[line_question_stack_position] = current_line;
        line_question_answer_count[line_question_stack_position] = response_count;
        line_question_current_answer[line_question_stack_position] = 0;
        //IN THE RABBIT HOLE
        
        current_line +=1;
        current_position += string_length(tag_text)+2; //jump it past the tag
        show_debug_message("------------ END QUESTION LINE ---- Rabbit Hole DOWN to : " + string(line_question_stack_position) + " ------");
        new_line = true;        
        continue;
    }
    
    
    if tag_name = "give"
    {
        line_give_item_id[current_line] = real(tag_arguments[1]);
        line_give_item_amount[current_line] = real(tag_arguments[2]);        
        current_position += string_length(tag_text)+2; //jump it past the tag
        show_debug_message("..(.GIVE.)..  " + string(line_give_item_id[current_line]));
        current_line +=1;        
        new_line = true;
        continue;
    }
    
    if tag_name = "take"
    {
        line_take_item_id[current_line] = real(tag_arguments[1]);
        line_take_item_amount[current_line] = real(tag_arguments[2]);        
        //show_message(line_take_item_id[current_line])
        //DOWN THE RABBIT HOLE
        line_question_stack_position +=1;
        line_question_stack[line_question_stack_position] = current_line;
        line_question_answer_count[line_question_stack_position] = 2;
        line_question_current_answer[line_question_stack_position] = 0;        
        //IN THE RABBIT HOLE
        
        current_line +=1;
        current_position += string_length(tag_text)+2; //jump it past the tag
        show_debug_message("------------ END TAKE LINE ---- Rabbit Hole DOWN ------");
        new_line = true;        
        continue;
    }
    
    if tag_name = "check"
    {
        line_check_item_id[current_line] = real(tag_arguments[1]);
        line_check_item_amount[current_line] = real(tag_arguments[2]);        
        
        //DOWN THE RABBIT HOLE
        line_question_stack_position +=1;
        line_question_stack[line_question_stack_position] = current_line;
        line_question_answer_count[line_question_stack_position] = 2;
        line_question_current_answer[line_question_stack_position] = 0;        
        //IN THE RABBIT HOLE
        
        current_line +=1;
        current_position += string_length(tag_text)+2; //jump it past the tag
        show_debug_message(" ...^... ");
        new_line = true;        
        continue;
    }
    
    
    if tag_name = "a" or tag_name = "f" or tag_name = "s"
    {   
        show_debug_message("-----Rabbit hole at:" + string(line_question_stack_position)+ "-----")
        line_question_jump[line_question_stack[line_question_stack_position],line_question_current_answer[line_question_stack_position]] = current_line;
        line_question_current_answer[line_question_stack_position] += 1;
        if line_question_current_answer[line_question_stack_position] >= line_question_answer_count[line_question_stack_position]
        {
        line_question_current_answer[line_question_stack_position] = 0;
        line_question_stack_position -= 1;
        show_debug_message("------------ ^^ Rabbit Hole UP to : " + string(line_question_stack_position) + " ^^ ------");
        }
        
        current_position += string_length(tag_text)+2; //jump it past the tag
        new_line = true;        
        continue;
    }
    
    if tag_name = "pin"
    {
        line_pin[tag_arguments[1]] = current_line;
        current_position += string_length(tag_text)+2; //jump it past the tag
        show_debug_message("pin: " + string(current_line) );
        new_line = false;        
        continue;
    }
    
    if tag_name = "pinto"
    {
        line_pin_send[current_line] = tag_arguments[1];
        current_position += string_length(tag_text)+2; //jump it past the tag
        current_line+=1;
        show_debug_message("PIN TO: " + string(current_line) );
        new_line = true;
        continue;
    }
    
    if tag_name = "action"
    {
        line_action[current_line] = tag_arguments[1];
        
        ii = 1;
        repeat(array_length_1d(tag_arguments)-2)
        {
            line_action_arguments[ii] = tag_arguments[ii-1];
            ii+=1;
        }
        
        current_position += string_length(tag_text)+2; //jump it past the tag
        show_debug_message(" ... action ... ");
        new_line = false;        
        continue;
    }    
    
    if tag_name = "actor"
    {
        line_actor_display[current_line] = tag_arguments[1];
        current_position += string_length(tag_text)+2; //jump it past the tag
        show_debug_message(" ... actor set ... ");
        new_line = false;        
        continue;
    }
    
    if tag_name = "quest"
    {
        line_set_quest[current_line] = tag_arguments[1];
        line_set_quest_mark[current_line] = tag_arguments[2]; 
        current_position += string_length(tag_text)+2; //jump it past the tag
        new_line = false;
        show_debug_message(" ... quest set [" + string(tag_arguments[1]) + "] = " + string(tag_arguments[2]) + " ... ");
        continue;
    }    

    if tag_name = "me"
    {
        line_is_player[current_line] = tag_arguments[1];
        current_position += string_length(tag_text)+2; //jump it past the tag
        show_debug_message(" ... me ... ");
        new_line = false;        
        continue;
    }
    
    
    
    if tag_name = "cq" //if the dialogue is performing a quest mark check
    {
        jj=2;
        line_check_quest[current_line] = tag_arguments[1];
        show_debug_message("Quest check: " + string(tag_arguments[1]) );
        
        //DOWN THE RABBIT HOLE
        line_question_stack_position +=1;
        line_question_stack[line_question_stack_position] = current_line;
        line_check_quest_count[current_line] = tag_arguments[2];
        line_question_current_answer[line_question_stack_position] = 0;
        //IN THE RABBIT HOLE
        
        current_line +=1;
        current_position += string_length(tag_text)+2; //jump it past the tag
        show_debug_message("------------ END CHECK QUEST LINE ---- Rabbit Hole DOWN to : " + string(line_question_stack_position) + " ------");
        new_line = true;        
        continue;
    }

        
    if tag_name = "cqa"
    {
        line_check_quest_jump[line_question_stack[line_question_stack_position],line_question_current_answer[line_question_stack_position]] = current_line;
        line_check_quest_mark[line_question_stack[line_question_stack_position],line_question_current_answer[line_question_stack_position]] = real(tag_arguments[1]);
        
        show_debug_message("The parent line is: " + string(line_question_stack[line_question_stack_position]) + " and the current answer is: " + string(line_question_current_answer[line_question_stack_position]))
        
        line_question_current_answer[line_question_stack_position] += 1;
        
        
        if real(line_question_current_answer[line_question_stack_position]) >= real(line_check_quest_count[line_question_stack[line_question_stack_position]])
        {
        line_question_current_answer[line_question_stack_position] = 0;
        line_question_stack_position -= 1;
        show_debug_message("------------ ^^ Rabbit Hole UP to : " + string(line_question_stack_position) + " ^^ ------");        
        }
        
        current_position += string_length(tag_text)+2; //jump it past the tag
        new_line = true;
        continue;
    }
    
    if tag_name = "cqe" //if the dialogue is performing a quest mark check
    {
        jj=2;
        line_check_quest_extra[current_line] = tag_arguments[1];
//        line_is_question[current_line] = true;
        show_debug_message("Quest check: " + string(tag_arguments[1]) );
        
        //DOWN THE RABBIT HOLE
        line_question_stack_position +=1;
        line_question_stack[line_question_stack_position] = current_line;
        line_check_quest_count[current_line] = tag_arguments[2];
        line_question_current_answer[line_question_stack_position] = 0;
        //IN THE RABBIT HOLE
        
        current_line +=1;
        current_position += string_length(tag_text)+2; //jump it past the tag
        show_debug_message("------------ END CHECK QUEST LINE ---- Rabbit Hole DOWN to : " + string(line_question_stack_position) + " ------");
        new_line = true;        
        continue;
    }

        
    if tag_name = "cqea"
    {
        line_check_quest_jump[line_question_stack[line_question_stack_position],line_question_current_answer[line_question_stack_position]] = current_line;
        line_check_quest_mark[line_question_stack[line_question_stack_position],line_question_current_answer[line_question_stack_position]] = real(tag_arguments[1]);
        
        show_debug_message("The parent line is: " + string(line_question_stack[line_question_stack_position]) + " and the current answer is: " + string(line_question_current_answer[line_question_stack_position]))
        
        line_question_current_answer[line_question_stack_position] += 1;
        
        
        if real(line_question_current_answer[line_question_stack_position]) >= real(line_check_quest_count[line_question_stack[line_question_stack_position]])
        {
        line_question_current_answer[line_question_stack_position] = 0;
        line_question_stack_position -= 1;
        show_debug_message("------------ ^^ Rabbit Hole UP to : " + string(line_question_stack_position) + " ^^ ------");        
        }
        
        current_position += string_length(tag_text)+2; //jump it past the tag
        new_line = true;          
        continue;
    }  
    
    current_position +=1;
}
total_lines = current_line+1;
