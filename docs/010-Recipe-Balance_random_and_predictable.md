# Recipe - Balancing the unexpected and the predictable



1.  Create a short melodic phrase in one MIDI track. I've created three clips, which have Follow Actions set so that the clips advance to the next clip after playing 4x times.

<img src="images/Recipe3_Piano1.png" width="100%" /><img src="images/Recipe3_Piano2.png" width="100%" /><img src="images/Recipe3_Piano3.png" width="100%" />

2.  On another track, creating a second part that complements the first melodic phrase. Loop this part as well. Ensure that the second part is distinguishable from the first either through having a different tone from the instrument or at a higher pitch. We are going to apply MIDI effects or probability to this second part while keeping the first melodic phrase as our "grounding" part that is predictable.

<img src="images/Recipe3_Piano_Random.png" width="100%" />

3.  You can now choose some options for the second part:

-   Lower the probability of the notes in the second part (for example somewhere between 50% and 80%) - so that each time the loop plays you get a different set of notes. With lower probability you can choose to have more notes per clip, as they result will be more varied.

-   Add MIDI effects like Random and Scale to this part (see chapter 6 - MIDI Tools: chords and added notes) to add some variation on the notes being played. This means that each time the loop repeats you will hear a different set of notes. On its own, this would be "too much randomness". But because this sits alongside a predictable repeating part, it will sound more grounded.

<img src="images/Recipe3_Piano_Random_MIDIFX.png" width="100%" />

-   I also like to add a delay to this second part, either with delay on the track itself or as a Return track. Because the notes are more sparse you can add more effects to them and they will stand out over the repeating, predictable melodic line. If this second part has a higher pitch or brighter tone this will also help. If you are using a Return FX channel with Delay, then you can send the predictable part to this delay at a lower level than the second part. That will mean the unpredictable, higher or brighter tone part "pings out" over the more predictable part.

4.  Notice that the clip lengths are not 4 bars exactly. This means that when the Follow Actions return to the first clip, the notes will be in a slightly different place in the bar. This will keep the unpredictable part more interesting for the listener.

5.  I have also created a little repeating pattern using a pad sound, which loops around. This repeating part adds a "ground" to the track, as it's completely predictable. This counterbalances the random parts elsewhere. Ideally, to make the track work, this part would ideally be a little longer, but it illustrates the point here.

<img src="images/Recipe3_Pads.png" width="100%" />

6.  Similarly, create a 4/4 kick loop i.e. MIDI notes on 1,2,3 and 4th 1/4 note of each bar. This will be your predictable rhythmic part.

7.  Create a Hihat part with notes on every 16th note in the bar.

<img src="images/Recipe3_DrumKit.png" width="100%" />

8.  Lower the probability of notes in the Hihat part. You can choose to keep some notes with higher probability to "anchor" things, or make all notes have lower probability (50-80% probability is good). It's also good to vary the velocity of notes - perhaps notes with higher probability have higher velocity, while notes with lower probability have lower velocity, to provide "ghost notes" on the Hihat part. Feel free to add a Beat Repeat plugin on this part to provide some random "rolls" and glitchy note repeats, if you like that kind of thing. The Hihat part here can be as complex as you like, because your kick part is completely predictable.

<img src="images/Recipe3_Ableton_Set.png" width="100%" />

9.  Press play. Sit back and relax.

------------------------------------------------------------------------
