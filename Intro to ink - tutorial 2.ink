<b>INK PART 2: CHOICES, BRANCHES, LOOPS</b><br>for IMGD/WR 3450 at WPI <br>Created by Prof. Ben Schneider, 2025

In this second tutorial, we're going to dig deeper into choices and some some related text presentation features. Not all of these details are meant to be memorized. I just want you to be familiar with them so you can come back and steal formatting later, when you want to polish your own creations.

First up:
+ Choice formatting options
    -> options_knot


== options_knot ==
<b>1. Glue</b>
You can use this symbol \<> to connect or "glue" multiple lines together - even across knots! The glue symbol can go before or after a line to glue it to the prior or following line, respectively. It's especially useful for tying text between choices and diverts together.

So this... <>
and this... 
<> as well as this...
-> options2_knot

=== options2_knot ===
<> AND also this all end up on one line.

<b>2. Choice display text</b>

Sometimes, after the player makes a choice, you want to present the chosen text a little differently. You can do this with square brackets \[ \].

+ [This choice will disappear]

- See? It's gone.

+ Whereas only part of this choice... [will disappear!]

- You have a lot of control. 

Additionally, you can provide different text that follows each chose choice. Note: Inky has a back button (on the top right) to rewind and try other options.

+ Here's choice 1
    With followup text 1
+ And choice 2
    With followup text 2
+ And last but not least, choice 3
    With followup text 3

- These two tricks can combine together: any text after a set of square brackets \[ \] counts as followup text.

+ So you can do this [if you like.] and it will work like this.

- Or...

+ You can do this... [] and it will work like THIS.

- Or...

+ [This...] will work like this

- <b>3. Branching with Diverts</b>

First, you can also put diverts on the same line as a choice.
Second, it may have already occurred to you that choices, diverts, and knots together can give you Choose Your Own Adventure-style branching.

Combined, it looks like this:

+ [Take path 1] -> path1_knot
+ [Take path 2] -> path2_knot
+ [Take path 3] -> path3_knot

=== path1_knot ===
You have chosen path 1!

+ [Onward!] -> nesting_knot

=== path2_knot ===
You have chosen path 2!

+ [Onward!] -> nesting_knot

=== path3_knot ===
You have chosen path 1!

+ [Onward!] -> nesting_knot


=== nesting_knot ===
<b>4. Nested Choices</b>
There are alternatives to diverting to lots of knots, however. Sometimes it makes more sense to put them all in one place.

A choice with a nested choice would look like this, with a double \+ \+ for sub-choices:
+ A tea tray, containing....
 + + a saucer
 + + a teacup
 + + some sugar cubes
 + + a teaspoon

- And don't forget the gather!
 
This can make even more sense with multiple base options:

Out of the shadows, a threatening figure lurches at you.

+ Fight:
 + + Sweep their legs
 + + Swing at their face
+ Flight: 
 + + Duck and roll
 + + Jump back
+ Do the unexpected 
 + + Throw your sandwich at them
 + + Burst into song

- You can step forward and backward through that sequence to see how it works.

Additionally, you can embed whole blocks of ink in the wings of a choice:

Suddenly, you hear boots creaking down the hallway. You'd better hide!

+ [Crouch under the desk]
    You crouch beneath the desk. You see nothing, but hear them talking into their phone quite clearly:
    'You'll have the payment by Wednesday. Yes, the docks, as usual.
    + + Wait until they leave[]. 
        -> preloop_knot
+ [Squeeze into the coat closet]
    You wedge yourself into the coat closet, behind the coats. The acoustics here is strange, and you can't make out what they're saying.
    Strangely, though, you have a clear view of the figure as it leans over the desk, writes something on a notepad, then takes it and a <u>green</u> folder off the desk.
    + + Wait until they leave[].
        -> preloop_knot

=== preloop_knot ===
<b>5. Looping and Repeating</b>
Finally, a knot can divert back to itself, creating a loop. Very useful for simulating gameplay or an RPG-style dialogue tree.

+ [Let's loop] -> preloop_knot2


=== preloop_knot2 ===
Here's a simple demonstration of a loop. 

To get a loop, simply divert back to the same knot and again.

You ALWAYS want to use choices before diverting. A choiceless loop will automatically loop forever, and might make things crash... or explode.

Note the one-time choice uses a \* instead of a \+, and goes away after selected. The \+ choices are called 'sticky' in ink, but imho you want to use these by default. Test it out below.
-> loop_knot


=== loop_knot ===
+ [Loop the loop!] -> loop_knot
* [One-time choice] -> loop_knot
+ [Take a detour.] -> loop_branch_knot
+ End the tutorial. -> end_knot


=== loop_branch_knot ===
Your loop can jump to branches.

+ [Then branch back again] -> loop_knot

=== end_knot ===
->END