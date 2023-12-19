# Recipe - Balancing the unexpected and the predictable

1.  Create a short melodic phrase in one MIDI track. Loop that part.

2.  On another track, creating a second part that complements the first melodic phrase. Loop this part as well. Ensure that the second part is distinguishable from the first either through having a different tone from the instrument or at a higher pitch. We are going to apply MIDI effects or probability to this second part while keeping the first melodic phrase as our "grounding" part that is predictable.

3.  You can now choose some options for the second part:

    1.  Lower the probability of the notes in the second part (for example somewhere between 50% and 80%) - so that each time the loop plays you get a different set of notes.

    2.  Add MIDI effects like Random and Scale to this part (see chapter 10 - MIDI Tools) to add some variation on the notes being played. This means that each time the loop repeats you will hear a different set of notes. On its own, this would be "too much randomness". But because this sits alongside a predictable repeating part, it will sound more grounded.

    3.  I also like to add a delay to this second part. Because the notes are more sparse you can add more effects to them and they will stand out over the repeating, predictable melodic line. If this second part has a higher pitch or brighter tone this will also help. If you are using a Return FX channel with Delay, then you can send the predictable part to this delay at a lower level than the second part. That will mean the unpredictable, higher or brighter tone part "pings out" over the more predictable part.

4.  You can repeat the above to generate variations on the repeating, "predictable" loop and the associated "unpredictable" part and then use Follow Actions to cycle between them. If using Follow Actions then I recommend repeating the "predictable" part at least twice before moving on to the next "variation". This allows the listener time to become familiar with each predictable loop before it moves on.

5.  Similarly, create a 4/4 kick loop i.e. MIDI notes on 1,2,3 and 4th 1/4 note of each bar.

6.  Create a Hihat part with notes on every 16th note in the bar.

7.  Lower the probability of notes in the Hihat part. You can choose to keep some notes with higher probability to "anchor" things, or make all notes have lower probability (50-80% probability is good). It's also good to vary the velocity of notes - perhaps notes with higher probability have higher velocity, while notes with lower probability have lower velocity, to provide "ghost notes" on the Hihat part. Feel free to add a Beat Repeat plugin on this part to provide some random "rolls" and glitchy note repeats, if you like that kind of thing. The Hihat part here can be as complex as you like, because your kick part is completely predictable.

8.  Press play. Sit back and relax.

------------------------------------------------------------------------

You can hear one instance of this track here:

(I say "one instance" because this is generative and uses probability. So the next time I render the track it could well sound different. Similar, but different.)
