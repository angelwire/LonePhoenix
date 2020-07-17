//Add dialogue
var ii = 0;
repeat(255)
{
global.talk_text[ii,1] = @"
<char^a>I just don't know what to say...<end>";
ii+=1;
}


//Shopkeeper
global.talk_text[0,1] =
@"
<char^0>Hello there cowboy<br>
    <q^What's up? ^ Hi ^ Nothing much ^ The sky>
        <a>Well, see you around!<end>
        <a>Kind of a boring day huh?<br>
            <q^Well, If you have 5 snakeskins I'll give you a bear pelt ^ Sure ^ No thanks ^ Maybe>
            <a><pin^0><take^1^5>
                <f>Oh dear, you don't have 5 snakeskins<br>I'll be waiting for you to come back when you have enough<end>
                <a><give^9^1>Thank you for your business<br>Be sure to come back<end>
            <a>I'm sorry to hear that<br>Come back if you change your mind<end>
            <a><q^What do you mean by 'maybe'?^I need to go^Sure>
                <a>Goodbye<end>
                <a><pinto^0>
        <a>What do you mean by that?<end>
                
<char^1>Hello there little fella<br>
    <q^How's it going?^Fine^Alright^Meh>
        <a>Good to hear<br><q^Would you like to buy something today?^Yes^Nah>
            <a>Thanks<end>
            <a>Well, come back when you need something<end>
        <a>Put a smile on that face!<end>
        <a>I didn't mean anything by it<end>

<char^2>Hello ma'am<br>
    <q^How are you doing?^Superb!^Why do you ask?^Get back to work!>
        <a>That's great to hear<end>
        <a>Sorry, ma'am. Just making conversation<end>
        <a>Yes ma'am, right away<end>

    
<char^3>Hello little lady<br>
        <q^Nice day isn't it?^Yes^I guess so^...>
        <a>It sure is<end>
        <a><q^...Are you okay?^Yes^yeah^Goodbye>
                <a>Okay<end>
                <a><q^Are you sure?^Absolutely^Goodbye>
                    <a>Thats's good to hear<end>
                    <a>Okay, goodye<end>
                <a>Bye...<end>
        <a>Okay<end>
"

global.talk_text[1,1] =
@"
<char^a>Don't talk to me<end>
"

//Researcher
global.talk_text[30,1] =
@"
<char^a>
    <cq^0^12>Don't know what I'm doing<end>
        <cqa^0><pin^0><q^What brings you out this way?^Just exploring^Danger!>
                <a>Is that so? Well, you look like you can take care of yourself, do be careful though<end>
                <a><q^Danger from what?^Attack^Poison^Fire>
                    <a><q^Who's going to attack me?^Animal^Townsperson^Bandit>
                        <a><quest^0^20>What else is new? They're always out to get me.<end>
                        <a><quest^0^20>I can't believe it! I'll be sure to keep an eye out.<end>
                        <a><quest^0^20>I haven't seen any bandits around here for a long time. I'll watch out though.<end>
                    <a><q^Poison? What's been poisoned?^Soup^Pie^Steak^Mushroom>
                        <a><cqe^0^2>
                            <cqea^0><quest^0^20>Wow, thank you. I'll be sure to check my soup before I eat any<end>
                            <cqea^1><quest^0^25>Wow, thank you. I'll be sure to check my soup before I eat any<end>
                        <a><cqe^0^2>
                            <cqea^0><quest^0^20>My pie? I'd hate to have to throw it out, but I'll be sure to check it before I eat any<end>
                            <cqea^2><quest^0^25>My pie? I'd hate to have to throw it out, but I'll be sure to check it before I eat any<end>
                        <a><cqe^0^2>
                            <cqea^0><quest^0^20>You really think someone poisoned my steak? I'll be sure to double check before I eat it<end>
                            <cqea^3><quest^0^25>You really think someone poisoned my steak? I'll be sure to double check before I eat it<end>
                        <a><cqe^0^2>                  
                            <cqea^0><quest^0^20>Well, I'm glad no one poisoned my pie. I'll be sure to throw out any that seem suspicious.<end>
                            <cqea^4><quest^0^25>Well, I'm glad no one poisoned my pie. I'll be sure to throw out any that seem suspicious.<end>
                    <a>Thank you for the warning, I'll be sure to keep a bucket of water handy<end>  
        <cqa^1>It may not be a gourmet meal, but this soup is delicious<br><pinto^0>
        <cqa^2>Someone from town sent me this pie. It's delicious<br><pinto^0>
        <cqa^3>I decided to treat myself to a steak for breakfast<br><pinto^0>
        <cqa^4>These mushrooms aren't very tasty, but they are filling.<br><pinto^0>
        <cqa^10>I'm dead and I don't know what from<end>
        <cqa^11>I'm dead from poison soup<end>
        <cqa^12>I'm dead from poison pie<end>
        <cqa^13>I'm dead from poison steak<end>
        <cqa^14>I'm dead from poison mushrooms<end>
                                        
        <cqa^20>You were wrong<end>
        <cqa^25>Your warning saved my life! How can I ever thank you!<end>
"

/*
                <a><q^Danger from what?^Attack^Poison^Fire>
                    <a><q^Who's going to attack me?^Animal^Townsperson^Bandit>
                        <a>What else is new? They're always out to get me.<setquest^0^15>
                        <a>I can't believe it! I'll be sure to keep an eye out.<setquest^0^15>
                        <a>I haven't seen any bandits around here for a long time. I'll watch out though.<setquest^0^15>
                    <a><q^Poison? What here is poisoned?^Soup^Pie^Steak^Mushroom>
                        <a><cqe^0^2>
                            <cqea^0><quest^0^15>Wow, thank you. I'll be sure to check my soup before I eat any<end>
                            <cqea^1><quest^0^20>Wow, thank you. I'll be sure to check my soup before I eat any<end>
                        <a><cqe^0^2>
                            <cqea^0><quest^0^15>My pie? I'd hate to have to throw it out, but I'll be sure to check it before I eat any<end>
                            <cqea^2><quest^0^20>My pie? I'd hate to have to throw it out, but I'll be sure to check it before I eat any<end>
                        <a><cqe^0^2>
                            <cqea^0><quest^0^15>You really think someone poisoned my steak? I'll be sure to double check before I eat it<end>
                            <cqea^3><quest^0^20>You really think someone poisoned my steak? I'll be sure to double check before I eat it<end>
                        <a><cqe^0^2>
                            <cqea^0><quest^0^15>I hate eating mushrooms anyway. I'll be glad to get rid of them.<end>
                            <cqea^4><quest^0^20>I hate eating mushrooms anyway. I'll be glad to get rid of them.<end>
                    <a>Thank you for the warning, I'll be sure to keep a bucket of water handy<end>                            
*/
