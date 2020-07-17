globalvar note_text, latest_note, note_time, seeing_note, note_show,note_set_branch,note_get_branch;

var ii=0;;

seeing_note = false;

note_show = "";

latest_note = 0;

repeat(256)
{
note_time[ii] = -1;
note_set_branch[ii] = -1;
note_get_branch[ii] = -1;
ii+=1
}
/*
note_text[0] = "Come to the Law office as soon as possible. The sheriff needs your help.";
note_time[0] = 5000;
note_set_branch[0] = 2;
note_get_branch[0] = 1;
//What's the difference between note_get_branch and note_set_branch (verbs shouldn't be used in variables btw)
*/

