// DIALOGUE TREE TEMPLATE - KNOT RICH

VAR unlock_1 = false

<b>INK TUTORIAL TEMPLATE: DIALOGUE TREE<b>
This is a knot-based template for dialogue trees you can use as a starting point.
Note that I have used not knots but 'stitches' (knot sub-sections) to divide the topics here.

Created by Prof. Ben Schneider, 2025.

* [Continue] -> dialogue_start

=== dialogue_start ===
Dialogue loop intro.

-> loop1

=== loop1_repeat ===
Short repeat intro text

-> loop1

=== loop1 ===
+ Topic 1
    -> topic1
+ Topic 2
    -> topic2
+ {unlock_1} Topic 3
    -> topic3
+ Topic 4 
    -> topic4
+ [Leave] You walk away
    -> finished

= topic1
Topic 1 dialogue
-> loop1

= topic2
+ Subtopic 2a
    Subtopic 2a dialogue
    ~ unlock_1 = true
+ Subtopic 2b
    Subtopic 2b dialogue
- Wrap-up note
-> loop1
    
= topic3
Topic 3 dialogue
-> loop1

= topic4
Welcome to subloop 1a
-> subloop1a

= subloop1a_repeat
Back to subloop 1a
-> subloop1a

= subloop1a
+ Subtopic 4a
    subtopic dialogue 4a
    -> subloop1a_repeat
+ Subtopic 4b
    subtopic dialogue 4b
    -> subloop1a_repeat
+ [Talk about something else] 
    -> loop1

=== finished ===
-> END