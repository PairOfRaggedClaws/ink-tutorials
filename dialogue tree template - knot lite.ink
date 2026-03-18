// DIALOGUE TREE TEMPLATE - KNOT LITE

VAR unlock_1 = false

<b>INK TUTORIAL TEMPLATE: DIALOGUE TREE<b>
This is a 'knot lite' template for dialogue trees you can use as a starting point. 
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
    Topic 1 dialogue
    -> loop1
+ Topic 2
    ++ Subtopic 2a
        Subtopic 2a dialogue
        ~ unlock_1 = true
    ++ Subtopic 2b
        Subtopic 2b dialogue
    -- -> loop1
+ {unlock_1} Topic 3
    Topic 3 dialogue
    -> loop1
+ Topic 4 
    Subloop1a intro
    -> subloop1a
+ [Leave] You walk away
    -> finished

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