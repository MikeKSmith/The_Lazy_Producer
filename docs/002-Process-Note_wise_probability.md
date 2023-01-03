# Process - Note-wise probability

[Ableton Live 11](https://www.ableton.com/en/live/) brought us the ability to specify not just the velocity of each note in a MIDI clip, but the probability that that note would play. This is a game changer for the Lazy Producer. Adding variation to MIDI parts is now much easier if you define the lower probability for "fill" notes and higher probability for notes that you want to "anchor" in the clip.

One clear use of this is in drum parts. You can program the core drum part that is constant throughout the clip or song, but then add passing notes, "fills" with lower probability. Or reduce the probability on high-hat parts, shakers, claps, lower velocity snare or kick parts so that these only sound once in a while. With this, it's possible to specify a clip where core elements happen every time, but the "fills" and extra sounds only happen occasionally. (Unfortunately, it isn't possible to specify exactly ***when*** those notes will or won't play, just probability. So it's not possible to specify "Play once, then miss for the next 3 bars").

------------------------------------------------------------------------

## Key idea {.unnumbered}

Varying parts as they play through the song adds interest as it stops the listener getting bored of "the same old pattern". Too much randomness ***is*** difficult to listen to, so balancing the unexpected with something predictable is the sweet spot.

------------------------------------------------------------------------

But the note-wise probability extends beyond drum parts and lead parts.

To see the note chance, click on the MIDI clip then click on the arrow at the bottom of the piano-roll to show velocity. To see the chance / note probability, click on the button below the velocity.



<img src="./images/Note-wise_probability.png" width="100%" />

In [Recipe - Changing Chords], I have suggested using probability on chords. If you add 8 MIDI notes in a chord and specify 50% probability for all of them, then Ableton is going to (effectively) toss a coin 8 times to choose which notes to play. In the real world, when we toss a coin 8 times, we don't always get 4 heads and 4 tails. Sometimes we get 3 heads, 5 tails (or vice versa), and occasionally outcomes like 2 heads, 6 tails. Imagine if in the coin toss, heads means that Ableton plays the note. Then the number of notes that gets played will vary each time the chord is played - sometimes it will be 3, sometimes 6 etc. This means that you can specify as many notes as you like, and tune the probability until you get something that you like the sound of, depending on whether you want more or fewer notes in the resulting chord. It also means that careful choice of notes from the scale within the chord allows you to sometimes get rich, complex chords, sometimes chord inversions.

By specifying higher probability for "root notes" in the chord, you can anchor the chord to a particular scale. As a Lazy (but creative) Producer, you can also allow the tonality (which musical scale) is being implied to vary so that the chords that emerge could fit with a variety of bass root notes, perhaps supplied separately in a different track. Avoiding the third (minor / major) or seventh of the scale can make it easier to achieve this kind of fluid and ambiguous tonality.

In the [Recipe - Changing Chords], I have applied this idea across tracks as well. Using the same MIDI chord idea across all tracks, but then changing clip lengths within tracks (so each clip within a track has a different length) and between tracks (so that adjacent clips in a scene have different lengths) and then coupling this with Follow Actions (as described in [Process - Follow Actions]) to progress through the clips, means that the chord patterns change more subtly and gradually than having block changes in tonality and scale. Including note-wise probability within clips also means that the next time the clip plays you get a slightly different result. Again, balancing something predictable - chords changing A minor -\> D minor -\> G minor - with the unpredictable - exactly what notes are being played from the chord and that occasionally the chords could work in both keys - means that the listener takes longer to get bored with the sequence. See [Process - Balancing the unexpected and the predictable].
