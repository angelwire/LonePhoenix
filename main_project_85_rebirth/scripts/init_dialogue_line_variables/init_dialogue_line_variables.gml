globalvar
line_text,
line_is_player,
line_is_question,
line_actor_display,
line_set_branch,
line_set_quest,
line_set_quest_mark,
line_check_quest_extra,
line_check_quest,
line_check_quest_mark,
line_check_quest_jump,
line_check_quest_count,
line_question_jump,
line_question_response,
line_give_item_id,
line_give_item_amount,
line_take_item_id,
line_take_item_amount,
line_check_item_id,
line_check_item_amount,
line_should_end,
line_pin,
line_pin_send,
line_action,
line_action_arguments,
total_lines;


line_text[0] = "";
line_is_player[0] = false;
line_is_question[0] = false;
line_actor_display[0] = -1;
line_set_branch[0] = -1;
line_set_quest[0] = -1;
line_set_quest_point[0] = -1;

line_question_jump[0,0] = -1;
line_question_response[0,0] = "";

line_give_item_id[0] = -1;
line_give_item_amount[0] = -1;
line_take_item_id[0] = -1;
line_take_item_amount[0] = -1;
line_check_item_id[0] = -1;
line_check_item_amount[0] = -1;

line_should_end[0] = false;

line_pin[0] = -1;
line_pin_send[0] = -1;

total_lines = 0;

