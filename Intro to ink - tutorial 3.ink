 <b>INK PART 3: TEXT TRICKS</b><br>for IMGD/WR 3450 at WPI<br>Created by Prof. Ben Schneider, 2025

This quick tutorial demonstrates a few ways you can randomize and vary your text. This is especially useful for looping text and dialogue.

+ [Let's get started.]

- <b> Sequences</b>
<u>Default sequence</u>: When you put a list of text snippets in curly braces \{ \} separated by pipes \|, it will cycle through the options and then stop.
<u>Looping Sequence (&)</u>: Put a & after the \{ and it will loop back to the beginning. 
<u>Once-only sequence (!)</u>: Put a ! after the \{ and instead it will show nothing at the end. 
<u>Shuffled sequence (~)</u>: Put a ~ after the \{ and it will loop back to the beginning. 

+ [Examples] 
    <b>Examples</b>
    -> example_default

=== example_default ===
// This will count down to zero then stay there
Default sequence: {Three|Two|One|Zero}

+ [Loop this sequence] -> example_default
* [Go to next example] -> example_looping


=== example_looping ===
// This will loop back around to Green after Red
Looping sequence: {& Green | Yellow | Red}

+ [Loop this sequence] -> example_looping
* [Go to next example] -> example_once_only

=== example_once_only ===
// This will go to nothing after Darkness again
Once-only sequence: {!Darkness|A flash of light|Darkness again}

+ [Loop this sequence] -> example_once_only
* [Go to next example] -> example_shuffle


=== example_shuffle ===
// This will choose from the four suits at random
Shuffled sequence: {~Diamonds|Hearts|Clubs|Spades}

// Note: because it attempts to *shuffle*, aka not repeat text, the chances of looking like a default sequence are higher!

+ [Loop this sequence] -> example_shuffle
* [Skip to next example] -> END

=== loop_old ===
// Each time you select Continue, you'll see the next part of each sequence

// This will count down to zero then stay there
Default sequence: {Three|Two|One|Zero}

// This will loop back around to Green after Red
Looping sequence: {& Green | Yellow | Red}

// This will go to nothing after Darkness again
Once-only sequence: {!Darkness|A flash of light|Darkness again}

// This will choose from the four suits at random
Shuffled sequence: {~Diamonds|Hearts|Clubs|Spades}

// + [Continue] -> loop

-> END