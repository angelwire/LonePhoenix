var branch,char,npc,actor,line,stringy,subby,nodey,ii,gg,jj,dd,hh,tempbranch,gobranch;

//WUT DOES THIS DO, IDK!

actor = argument0
line = argument1
nodey = argument2

stringy = global.talk_text[actor,nodey]

ii = 0;
hh = 0;
gg = 0;
jj = 0;
dd = 0;

repeat(64)
{
char[ii] =-1;
me[ii] = -1;
branch[ii] = -1;
npc[ii] = -1;
subby[ii] = ""
tryouts[ii] = "I am error.";
me[ii] = -1;
tempbranch[ii] = global.branch;
gobranch[ii] = 1;
ii+=1;
}
ii = 1;
/// ^^^^^^ Initiated all the variables ^^^^


while(ii<string_length(stringy) and jj < 256)  //Collects the individual strings, under 256
{

while(string_char_at(stringy,ii)!="<" and ii<string_length(stringy) )  //Looks for "<"
{
ii+=1;
}

switch(string_char_at(stringy,ii+1))  ///When it finds a "<"
{

//----------------
case "c": char[jj] = real(string_char_at(stringy,ii+2));  ///Which character is it for?
break;
//----------------
case "b": branch[jj] = real(string_char_at(stringy,ii+2)); break;//update branch
case "m": npc[jj] = real(string_char_at(stringy,ii+2)); break;//update whether it's the player or the NPC talking
case "e": //end of the string
gg = ii;
while(string_char_at(stringy,gg-1) != ">" and gg > 0)  //Keeps repeating until a ">" is found
{
gg-=1;
subby[jj] = string_char_at(stringy,gg) + string(subby[jj]);  //Adds current letter to new string
}

if string_char_at(stringy,ii+2) != ">"  //If it's not just a plain old e (e.g. <e5> instead of just <e>)
{
tempbranch[jj] = real(string_char_at(stringy,ii+2)) //Sets the temp branch (because we don't know if we should use it yet)
ii +=1;
}
else
{
tempbranch[jj] = global.branch //Just set the temp branch to the current branch
}

if char[jj] = -1
{
if jj > 0
{
char[jj] = char[jj-1]
}
else
{
char[jj] = 0
}
}

if branch[jj] = -1
{
if jj > 0
{
branch[jj] = branch[jj-1]
}
else
{
branch[jj] = 0
}
}
show_debug_message("branch-"+string(branch[jj]) + "  character-" + string(char[jj]))
jj+=1; //Go to the next string
break;

}
ii+= 3;  //Jumps the ii after the > and starts looking for a "<"

}

repeat(jj)
{

if (char[dd] = global.fakecharacter or char[dd] = 0)  and  (branch[dd] = global.branch or branch[dd] = 0)
{
tryouts[hh] = subby[dd]
me[hh] = npc[dd]
gobranch[hh] = tempbranch[dd]
hh+=1
}


dd +=1
}

if gobranch[line] != global.branch
{
show_quest_started()
global.branch = gobranch[line]
}

return tryouts[line];
