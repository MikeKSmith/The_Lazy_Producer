# Process - Balancing the unexpected and the predictable

In generative music, we're likely to be using some probability to govern when to trigger certain events, to select clips, to change some aspect of the sounds being generated. The problem with probability is that it generates randomness and in general music composed by humans is not random. Too much randomness can lead to listener fatigue because the "humanity" of the composition or performance is reduced and it's easy to feel detached from the music.

A counterbalance to randomness is repetition. "If you play a wrong note once it's a mistake. Play it twice and it's jazz." as the old saying goes. If your random processes come up with a sequence of notes or rhythms which is played once then it's hard to wrap your ears around it and understand it. But if you play that same sequence more than twice then the listener has a chance to "tune in" to what's going on and contextualise it.

------------------------------------------------------------------------

## Key idea {.unnumbered}

Balance things that change, which are unexpected to the listener, with things that stay the same and are predictable for the listener.

There are many aspects of musical ideas and sounds that can change - rhythm, timbre, tonality, texture, timing. If all of these are changing all the time it quickly becomes overwhelming. Sudden changes will "stick out" in a way that's typically undesirable for ambient music (see the definition chapter). Evolving changes are preferred as it's possible to "hide" these so that the listener only realises something has changed over an extended period.

Finding the balance between things that change and things that stay the same is important for creating generative, ambient music that will bear repeated (or prolonged) listening.

------------------------------------------------------------------------

In the "Changing Chords" recipe the clips across and within tracks had different lengths, and the note-wise probability led to different chords with each triggering of the clips. With the lengths of clips being 8 bars or so, this meant that chords evolved slowly, with changes being gradual rather than all at once. The longer clip length gives the listener time to acclimatise to a particular chord before it changes and gradual, evolving change means that the listener can pick out which part has changed and then settle in to that change, before the next change happens.

What we have seen in this first recipe is how to evolve chords and notes. We could also change other attributes of the sounds or rhythms and in other recipes we'll look into modulation - changing timbre and texture of the sound - and changing rhythms.

In the Western music tradition we have many familiar tropes - chord patterns, melodic harmony, rhythmic patterns - that helps those familiar with those constructs to feel "comfortable" with music that follows those tropes. Almost by definition, probabilistic and randomness in generative music is likely to break some or all of those rules. As a consequence we often apply constraints that limit the randomness, quantising the rhythm and pitch so that it's within the bounds of what we recognise. These constraints - using scale quantisers or rhythmic quantisers - are not necessarily crutches, but rather just guard-rails that help stop what we're producing stray into areas that would "catch the ear" of the listener. Of course, it's completely possible to play with those constraints in order to deliberately play with this listener's expectations. Again, what's important to me is the balance of the unexpected with the predictable. Carpet weavers will often "disguise" mistakes in a pattern by repeating them and weaving them into the pattern so that they become a feature, rather than a mistake. Similarly, repetition and weaving of "wonky" beats into a pattern of music can bring them back to something more predictable - contextualising the wonkiness.

If you look at the Follow Action dialogue box in [Process - Follow Actions] you'll see that it allows you to specify a number of repeats before taking the next action. You can exploit this feature to build in repetition before evolution. Playing the clip 4 times, say, before moving on. This works for shorter clip lengths or for rhythmic patterns, but you may want to avoid this for longer clips.

In future chapters we'll be looking at tools and techniques for changing different aspects of Ableton plugins and instruments. The act of changing something non-destructively i.e. not permanently is called modulation. Modulation tools can be used to gradually change timbres, relative volumes and many other sound attributes.
