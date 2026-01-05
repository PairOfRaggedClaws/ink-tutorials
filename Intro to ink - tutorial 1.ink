 <b>INK TUTORIAL PART 1: THE BASICS</b><br>for IMGD/WR 3450 at WPI<br> Created by Prof. Ben Schneider, 2025

This is ink, which we'll be using in this course to create interactive dialogue and stories. The best way to use this tutorial is to follow on both the left and right side, so you can see how the script relates to the output. You can also tinker with the script to help you understand.

Inky is pretty cool! When you change text HERE you will INSTANTLY see it change to the right. It also has useful rewind and restart buttons (on the top right), among other things.

We're going to begin with the basics.

+ Let's get started!
    -> top_knot


=== top_knot ===
We have just used three of ink's most fundamental concepts.

<b>Choices</b>: The + at the start of the line above prompted a player choice.
<b>Diverts</b>: The \-> in the following line diverted (aka jumped) us to this knot
<b>Knots</b>: Sections in your ink file that let you organize your text, acting as addresses to divert to. A knot starts with a header line (\=== knot_title \===), like above.

<i>A couple side notes:</i>
<i>That the bold text is done with HTML formatting. You can add italics, etc., in the same way.</i>
<i>Notice the \\ character above? That is an escape character, used to tell ink to make the special text combinations (like \->) show up rather than get treated as functional.</i>
<i>Also, notice how the spacing between lines in the script isn't an exact a match with the output?</i>

+ Some more about choices.
    -> second_knot


=== skipped_knot ===
This text will never get shown, because the divert from above skips over it.
->END


=== second_knot ===
Normally, of course, you want more than one choice:
+ A choice
+ Another choice
+ A third choice

- Afterwards, you need a gather (like this one here).

<b>Gathers</b>: Are lines starting with a - dash, which tells ink to resume normal text flow.

This is what alternating text and choices looks like:

+ Choice A
+ Choice B
+ Choice C

- And then a gather.
And then some more text, if you want.
And then more choices.

+ Choice D
+ Choice E

- And then another gather...
and so on!

Finally, there's one more important concept to cover:
+ Ending an ink file.

- EVERY knot needs to eventually lead to a special divert, which tells ink to stop playing.
It looks like this: \-> END
You can have more than one END divert (there is one above and one below here)
... or send them all to an ending knot.
Inky will let you know if you're missing any!

And with that, here it is:
->END