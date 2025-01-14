# Recipe - Audio clip or Sampler into effects


  
The Sampler instrument from Ableton Live is often used to slice and dice breaks
and loops, or to produce multi-sampled instruments that allow you to recreate
sounds and playback across the keyboard. But in our context we're going to use
it to simply play back a longer textured sound sample and apply some modulation
to the cutoff, producing a drone sound. We can then throw this through a barrage
of effects - either using Return channels or via individual audio effects with
the sampler output routed into each. Effectively we're reusing an idea we've
used before, but starting with Sampler as the audio generator. You could
alternatively use the audio output from PaulStretch as the drone generator. The
benefit of using Sampler is that we can add MIDI effects to (randomly) change
the pitch of the sample so that it doesn't have to be consistent from one loop
to another. Other sample-based instruments like Granulator will allow you to do
similar.

1.  Create a track with the Sampler instrument and one clip with a single note of 8 or 16 bars.

2.  In the Sampler Filter/Global section, give the envelope a long attack
(several seconds) and very long release (again, several seconds). This will
allow different notes to blend rather than cut each other off.

3.  In the Sample Modulation section, create some modulation on Filter, Sample
Offset and other parameters so that the sounds morph and change over time rather
than staying static. You can also modulate the LFO amounts or rates in LFO2 and
LFO3 so that the modulation itself isn't static. Modulating the Sample Offset
makes Sample work a little like a granulator - instead of starting at the
beginning of the sample each time, the modulation picks a new position to start
from. This prevents the sound from being too predictable with each new note.

<img src="images/Sampler_Drone_Global.png" width="100%" /><img src="images/Sampler_Drone_Modulation.png" width="100%" />

4.  Using techniques described in \@ref(tools-audio-effects) and used in the
\@ref(recipe-audio-generator-drone) set up a network of audio effects on effect
sends / Return channels.

In the example below the Sampler instrument is in Channel 1 and is sending audio
out to a variety of FX channels. Note that the Return channels are also routing
audio around between them to further add layers of effects. You need to be a
little cautious when doing this to prevent feeding audio back into an FX channel
and creating a wall of harsh sound. You can see that Return A (the "Nice Reverse
+ Reverb" effect) is sending audio out to Return D (Spectral Resonator) and that
that channel is sending audio back to Return A. This is a little dangerous, but
being cautious with the send amounts and watching for signal overloading, it is
possible to get away with this. Spectral Time and Spectral Resonators are
interesting effects to add texture and resonance into fairly static inputs (like
our drone here).

<img src="images/Recipe-Sampler_drone.png" width="100%" />

5.  You can apply MIDI effects to the Sampler track to pick a new random &
quantised note each time the clip restarts. Unlike using an audio clip, using
Sampler allows us to repitch the sound with each new note.

6.  Once you have a setup that works and produces pleasing sounds, try dropping
a different pad sample into the Sampler. Doing this allows you to change up the
sounds generated, as each sample will have different tones, resonances and
features.

7.  Press play. Sit back and relax.

------------------------------------------------------------------------

You can hear my version of this track here: <https://soundcloud.com/mikeksmith/6_sampler_drone/s-sDz7Ts85Fs9>


```{=html}
<iframe width="100%" height="20" scrolling="no" frameborder="no" allow="autoplay" src="https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/1985574135%3Fsecret_token%3Ds-sDz7Ts85Fs9&color=%23ff5500&inverse=false&auto_play=false&show_user=true"></iframe><div style="font-size: 10px; color: #cccccc;line-break: anywhere;word-break: normal;overflow: hidden;white-space: nowrap;text-overflow: ellipsis; font-family: Interstate,Lucida Grande,Lucida Sans Unicode,Lucida Sans,Garuda,Verdana,Tahoma,sans-serif;font-weight: 100;"><a href="https://soundcloud.com/mikeksmith" title="MikeKSmith" target="_blank" style="color: #cccccc; text-decoration: none;">MikeKSmith</a> · <a href="https://soundcloud.com/mikeksmith/6_sampler_drone/s-sDz7Ts85Fs9" title="6_Sampler_drone" target="_blank" style="color: #cccccc; text-decoration: none;">6_Sampler_drone</a></div>
```