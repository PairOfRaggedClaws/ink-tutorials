// CHARACTER CONVERSATION - SKELETON VERSION
// This is a structural draft, working out the interactive layout and not worrying about final text

/*
Character:
- Tabitha Brimstone, she/her, ~ 30
- Intro: She's got HERSELF handled, dammit; when other people can't get their shit together she's got ZERO sympathy.
- Who They Are: A demon (tiefling?) train conductor with little sympathy and a short fuse
- Motivation: chaos and her own fiery nature MUST be stifled and kept under strict control at all costs. (But she secretly loves it when she has rule-sanctioned excuse for outbursts.)
- Voice line: "Ticket, please. You DO have your tickets?"
- Defining details: 
  - Spends a lot of time reining in her unruly, curly hair & is never satisfied with it
  - Loves and raises orchids in her tiny city apartment

~

Outline:
- Approaches player for their ticket
  - Ask about her
  -  Ask about tickets
- Have to confess they might not have it & she starts to get MAD
  - Can I buy one? (No)
  - Can we work something out?  (No)
  - Can I just refuse? (Not without consequences)
- Stand up to go and see the ticket on the seat
- Tabitha *immediately* recovers 
*/

/* 
    First, welcome to variables.
    This programming fundamental lets use store bits of useful information.
    You have to declare variables at the top, like you see below here.
    All variables MUST have a starting value.
    The type of value determins the type of function:
    number, text, or boolean (true/false). Note that text must be contained in "" quotation marks.
*/

VAR conductor_name = "TABITHA BRIMSTONE"
VAR refused = false
VAR tried_options = 0
VAR bargained = 0
VAR searched_for = 0

<b>INK TUTORIAL PART 4: DIALOGUE TREE EXAMPLE - SKELETON VERSION<b><br>for IMGD/WR 3450 at WPI. Created by Prof. Ben Schneider, 2025.

This tutorial models an interactive conversation or "dialogue tree", including a main loop, side topics, and forward progression (an end state). It also shows simple use of variables and if statements.

Once again, the best way to use this is to follow on both the left and right side in Inky.

<i>Note for your assignment that the character is defined and the conversation is outlined on the left side as block comments!</i>

* [Continue] -> conv_start

=== conv_start ===
"Ticket, please. You <i>do</i> have your ticket?"

The woman, in her blue conductor's uniform, with its many, many brass buttons, glares down at you. The blue-brimmed hat sits atop her curly hair, behind two forward-pointing horns. 
-> loop1

== loop1_repeat ===
// this knot gets skipped over the first time
// then provides a shorter line of intro text on return visits
LOOP1 

-> loop1

=== loop1 ===
/* 
    Here is ONE way to set up a conversation loop: 
    Each topic diverts to a knot for that topic.
    
    NEW TRICK: Use curly brackets { } to put conditions on whether a choice will show up.
    
    Remember to use + for 'sticky' choices that don't go away.
    (I could have used * for the ones that wouldn't repeat anyway, but just using + for all will result in fewer mistype errors.)
*/
+ "Ticket?"
    -> loop1_ticket
+ "Who are you?" 
    -> loop1_whoareyou
+ {searched_for == 0} [SEARCH 1] -> loop1_search1
+ {searched_for == 1} [Search your bag] -> loop1_search2
+ {searched_for == 2} [Search your wallet] -> loop1_search3
+ RESPONSE 1A
    -> ultimatum
+ RESPONSE 1B
    -> ultimatum

/*
    Note that the joke choice is *not* sticky, so you only get to try it once.
    The search choice could have been made non-sticky as well, but because of the conditions they don't have to be.
*/


=== loop1_ticket ===
TICKET? NOT IMPRESSED
+ [LOOP1] -> loop1_repeat


=== loop1_whoareyou ===
WHO AM I? NOT IMPRESSED
+ [LOOP1] -> loop1_repeat


=== loop1_search1 ===
SEARCH SPOT 1
~ searched_for = searched_for + 1
+ [NOPE] -> loop1_repeat


=== loop1_search2 ===
SEARCH SPOT 2
~ searched_for = searched_for + 1
+ [NOPE] -> loop1_repeat


=== loop1_search3 ===
SEARCH SPOT 3
~ searched_for = searched_for + 1
+ [NOPE] -> loop1_repeat


=== ultimatum ===
TICKET OR I THROW YOU OFF THE TRAIN

-> loop2

=== loop2_repeat ===
"Ticket, or I throw you off this train."
-> loop2

=== loop2 ===
/*
    Here is ANOTHER way to format this kind of conversation: put it (almost all) in one block. 
    Note that how you can nest text and other choices inside of choices by adding another + or * (so + + here).
*/
+ BUY ONE?
    NO WAY
    ~ tried_options = tried_options + 1
    + + OH OK -> loop2_repeat
+ REFUSE
    YA BUT NO
    ~ refused = true
    ~ tried_options = tried_options + 1
    + + OH OK -> loop2_repeat
* {bargained == 0} BARGAIN? -> loop2_bargain
* {bargained == 1} PLS BARGAIN? -> loop2_bargain
* {tried_options >= 2} GET UP AND GO -> loop2_getup


=== loop2_bargain
/*
    THIS is a conditional or IF/THEN statement
    You can read it this way:
    IF bargained is 1 
        THEN follow the first intended text block
    ELSE (that is, otherwise): follow the second
    
    Read up in the ink manual for more conditional and logic  tricks
*/
{ bargained == 0:
    NO!
    ~ bargained = bargained + 1
    + RIGHT -> loop2_repeat
- else:
    NO NO NO
    ~ bargained = bargained + 1
    + OKAY OKAY OKAY -> loop2_repeat
}


=== loop2_getup ===
YOU STAND UP TO GO
IT'S ON YOUR SEAT
THE END
->END
