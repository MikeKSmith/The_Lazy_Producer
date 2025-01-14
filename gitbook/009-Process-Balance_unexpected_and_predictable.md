# Process - Balancing the unexpected and the predictable {#process-balance-unexpected-and-predictable}

In generative music, we're likely to be using some probability to govern when to
trigger certain events, to select clips, to change some aspect of the sounds
being generated. The problem with probability is that it generates randomness
and in general music composed by humans is not random. Too much randomness can
lead to listener fatigue because the "humanity" of the composition or
performance is reduced and it's easy to feel detached from the music.

A counterbalance to randomness is repetition. "If you play a wrong note once
it's a mistake. Play it twice and it's jazz." as the old saying goes. If your
random processes come up with a sequence of notes or rhythms which is played
once then it's hard to wrap your ears around it and understand it. But if you
play that same sequence more than twice then the listener has a chance to "tune
in" to what's going on and contextualise it.

------------------------------------------------------------------------

## Key idea {.unnumbered}

Balance things that change, which are unexpected to the listener, with things
that stay the same and are predictable for the listener.

There are many aspects of musical ideas and sounds that can change - rhythm,
timbre, tonality, texture, timing. If all of these are changing all the time it
quickly becomes overwhelming. Sudden changes will "stick out" in a way that's
typically undesirable for generative music. Evolving changes are preferred as
it's possible to "hide" these so that the listener only realises something has
changed over an extended period.

Finding the balance between things that change and things that stay the same is
important for creating generative music that will bear repeated (or prolonged)
listening.

------------------------------------------------------------------------

## Evolving changes
In the "Changing Chords" recipe the clips across and within tracks had different
lengths, and the note-wise probability led to different chords with each
triggering of the clips. This meant that chords evolved slowly, with changes
being gradual rather than all at once. The longer clip length gives the listener
time to acclimatise to a particular chord before it changes and gradual,
evolving change means that the listener can pick out which part has changed and
then settle in to that change, before the next change happens. What we have seen
in this first recipe is how to evolve chords and notes. We could also change
other attributes of the sounds or rhythms and in other recipes we'll look into
modulation - changing timbre and texture of the sound - and changing rhythms.

## Taming randomness - gardening the random processes
In the Western music tradition we have many familiar tropes - chord patterns,
melodic harmony, rhythmic patterns - that helps those familiar with those
constructs to feel "comfortable" with music that follows those tropes. Almost by
definition, probabilistic and randomness in generative music is likely to break
some or all of those rules. This quickly becomes "too much" for the listener if
***everything*** is random.

The key to making music that is generative and pleasant to listen to is to
balance unexpected and predictable elements. These could be the notes that are
happening, the texture or character of the sound (high-pitched, lower pitched),
the volume of tracks, rhythmic patterns. I refer to this process as "gardening"
the random processes - taming things that are unruly, messy, too unpredictable
or random. You can change the number of repeats of a random process before it
changes, or you can rein in the range of a random LFO (or dynamically change the
range with another LFO). We can also apply constraints that limit the randomness
of note pitches or rhythms, quantising so that it's within the bounds of what we
recognise. These constraints - using scale quantisers or rhythmic quantisers -
are not necessarily crutches, but rather just guard-rails that help stop what
we're producing stray into areas that would "catch the ear" of the listener. Of
course, it's completely possible to play with those constraints in order to
deliberately play with this listener's expectations.

What's important to me is the balance of the unexpected with the predictable.
Carpet weavers will often "disguise" mistakes in a pattern by repeating them and
weaving them into the pattern so that they become a feature, rather than a
mistake. Similarly, repetition and weaving of "wonky" beats into a pattern of
music can bring them back to something more predictable - contextualising the
wonkiness.

## Deliberate use of repeating patterns - ostinato and predictable rhythmic parts

As well as "gardening" the random processes and quantising the randomness, we
can introduce deliberatly repeating patterns to help hook the listener into a
pattern to contextualise the randomness. Ostinato lines are musical phrases that
repeat over and over (and over) throughout a piece of music. Pachabel's Cannon
features a repeating line in the bass instruments (continuo part) which repeats
throughout. Over this the upper strings play variations on a theme (pattern with
variations). The bass-line in this music never changes - it's there to provide a
"ground" theme above which we can weave other parts. Ostinato parts don't
***have*** to be the bass part though, they can be higher parts which are
predictable and unchanging. Since they are unchanging throughout, it ***could***
make them boring, but we can play with things like changing the key centre
underneath them, or implying new key and chord structures above them (for bass
parts). If the ostinato line is a single voice, it's easier to recontextualise
these notes than repeating chord patterns, which may get tiring to listen to.

The same concept can be used in rhythmic parts - using a 4/4 kick drum part
(notes on 1, 2, 3, 4 of the bar) can provide an anchoring for the listener,
allowing you to use much more complex rhythms around this. Even if this kick
part isn't very loud or prominent, it can provide enough anchoring for you to
layer other "kick" sounds around it to play with rhythms. You can alternatively
(also?) use a common snare part with snare hits on 2 and 4 of the bar but have a
much more fluid and random kick part. Adding something predictable in one part
allows the listener to "hook in" to what's static and provides enough context
for what is going on around that.

## Repeat yourself

If you look at the Follow Action dialogue box in [Process - Follow Actions]
you'll see that it allows you to specify a number of repeats before taking the
next action. You can exploit this feature to build in repetition before
evolution. Playing the clip 4 times, say, before moving on. This works for
shorter clip lengths or for rhythmic patterns, but you may want to avoid this
for longer clips.

You could build an ostinato pattern within a clip and variations or evolutions
of that pattern and then use the Follow Actions to gradually move through those
evolutions, balancing repetition with gradual evolution. This would break the
strict "ostinato repeating all the way through" but may allow you to balance
predictability with the unexpected.

In future chapters we'll be looking at tools and techniques for changing
different aspects of Ableton plugins and instruments. The act of changing
something non-destructively i.e. not permanently is called modulation.
Modulation tools can be used to gradually change timbres, relative volumes and
many other sound attributes.
