# Process - Workflow: capturing generative ideas {#process-workflow}

Setting up an Ableton Live set with lots of MIDI generators, MIDI manipulation
and transformation, using that generated MIDI to create a nice collage of sounds
that shifts and changes over time is very satisfying. From a performance
perspective, once set up, you can press play and let it do its thing. But what
if you want to commit the state of the system to share with others. That
involves capturing the generated MIDI, modulations and generated audio. This
chapter will discuss how you might go about capturing the processes so that you
can later release the track.

------------------------------------------------------------------------

## Key idea {.unnumbered}

I find it useful to separate MIDI tracks that *generate* or *transform* MIDI
information from instrument tracks that receive that MIDI information and
generate sound. The idea is to capture the generated and transformed MIDI for
later processing. It can then be copied into the instrument track and "bounced
down" or rendered with the instrument track to capture the sound. In this
process don't worry about having more tracks than you think necessary. This will
give more flexibility and options in the capturing process. There is quite a
large difference between Live sets for performance and Live sets for capturing
and committing the performance for release.

------------------------------------------------------------------------

## In the beginning

When you first start creating Live sets for generative music, the important
thing is to have fun with the process. So throw MIDI devices into chains, see
what happens, refine and reapply. Route MIDI from one place to another, add more
MIDI transformations. Go wild. Play. Inevitably though, at some point, you're
going to want to apply a little order to the chaos. And in fact, even in the
creation process taking a little time to plan ahead can open up some new avenues
for generating, transforming and routing.

## MIDI Generators

I like to have separate tracks for MIDI generators. These are the "starting
point" of a process. They will be generating MIDI notes through random
processes, patterns or Follow Actions. I like to keep the generators separate
from the transformation MIDI tracks, because you may want to send the ***same***
generated MIDI notes into several transformation chains. This will lead to a
more coherent result since different transformation chains ingest a consistent
set of generated MIDI input notes.

## MIDI Transformer tracks

These tracks will take the MIDI generator process outputs and apply MIDI effects
and transformations to add additional MIDI notes, information, modulation etc.
You could have a virtual instrument / sound generator plugin in this track. If
you do that, then you can route the MIDI from this track ***AFTER*** (MIDI) FX
into another track for further transformation, MIDI effects or to another
instrument.

## Capturing the MIDI

To capture the random processes from the generation and transformation steps,
you should create new MIDI tracks that "listen" to the output of the generation
and transformation tracks. In my Live sets I typically have a lot of tracks
where the Monitor is set to "In" or "listening" mode. That passes the incoming
audio from another track straight through to the effects or instruments on that
track. Having separate "capturing" MIDI tracks allows you to pick up the
generated and/or transformed MIDI when you record. This is a good thing to be
able to "tidy up" or "garden" the generated MIDI information on the road to
release.

If you record only into tracks where there is MIDI effects and instruments then
the transformed MIDI is never captured - only the ***generated*** MIDI. This may
not be a problem *per se* but when you render out the final audio, you are at
the mercy of Live's internal random processes and you'll be crossing your
fingers that either the result is ***the same*** as you heard previously (if
Live replays the randomness in the same way each time) or potentially different
(perhaps if you reopen the set in a later version of Live).

If you capture the (generated ***and*** transformed MIDI) in a separate track,
then you can use this track as the input for tracks with virtual instruments /
plugins in them. Where these tracks might have had MIDI Monitor set to "In" you
can now switch that back to "Auto" so that the captured MIDI is used directly as
the input for that instrument.

Once you have captured the generated and transformed MIDI it's safe to switch
off the generators and MIDI effects in those tracks. This will ensure that it's
only the captured MIDI that is being used to drive the virtual instruments and
plugins.

## Modulation on track volume - use the Utility device to modulate GAIN

If you have gone completely down the rabbit hole of random modulation of your
track volumes, it may have been tempting to modulate the Mixer Volume so that
tracks fade in and out in a random way. But let me caution ***against*** doing
this. This technique is fine for performance, but when it comes to capturing and
committing a generative track, the better solution is to modulate the Gain of a
Utility plugin. Modulating gain allows you to separately alter the Volume slider
on the mixer to change the ***overall*** level of a track ***relative*** to the
others. This is a good tip for audio production generally - automate your track
Gain, not your Mixer Volume.

## Group tracks to tidy your Live set

With all of these tracks floating about it can be tricky to keep track of what
track does what in your Live set. Live's ability to group tracks is a really
useful feature. It's ***your*** choice how you group them... You can group MIDI
generation and transformation tracks - the individual tracks will still send
MIDI output to wherever they are routed - as this allows you to "fold away" the
generation and transformation processes when it comes to capturing and
committing for release (assuming you have captured the MIDI as described above
and copied it into the tracks with virtual instruments / plugins).
