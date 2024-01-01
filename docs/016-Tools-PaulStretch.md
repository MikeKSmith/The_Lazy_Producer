---
---
---

# Tools - Extreme audio stretching with PaulStretch



PaulXStretch (<https://sonosaurus.com/paulxstretch/>) is a plugin that takes an audio file and stretches it to produce soundscapes and textures. This is not the type of stretching that is available in Ableton for warping audio by a few bpm to fit a different tempo, but instead is about sonic manipulation even to extreme amounts.

------------------------------------------------------------------------

## Key idea {.unnumbered}

Taking an audio clip that has interesting harmonic structure, chords, textures and stretching it out using PaulXStretch can give you instant ambient textures and drones. Even using short audio clips and stretching out 5x or 10x can give interesting textures to work from.

------------------------------------------------------------------------

## Why would you want to stretch audio?

Stretching here means "smearing" audio, creating a blurred texture. The recognisable features of the original clip are no longer distinguishable, and instead you get something like a "ghost" of the original. The chords and tones from the original are stretched to an extent that they turn into drones and glacially shifting harmonics. If that doesn't scream "ambient" then maybe you need to have a good look at the introductory definition of "ambient" again.

But seriously though - what this kind of stretching and smearing does is to give you a nice foundational element: a sound bed over which you can add other elements. Because the stretch smears out tones, it can sometimes add a slow movement of tonality rather than a sudden shift. This can be quite useful if you pick an audio source for stretching that works with the scale of the other processes in your track. It may for example allow you to imply a shift in tonality even if there's a repeating pattern (in a fixed scale) above it, much like how shifting bass notes below an ostinato line imply new harmonies.

## What does it do?

PaulXStretch takes an audio file and can stretch it to a pretty arbitrary amount (maximum is over 1000x). This allows you to take very short audio clips as input and stretch them out to create soundscapes of pretty much any size. So if you take the 5 second Windows Startup sound, you can stretch this 60x to create a five minute soundscape.

Some audio stretching algorithms, such as those used by default in Ableton to stretch audio, introduce artefacts and granulations once the algorithm goes beyond a modest decrease in beats per minute (bpm). But PaulXStretch also applies some (spectral) smoothing to create textures that are free of glitches - the sound is smeared evenly in the sonic palette.

The plugin also features various options to tweak the output of the stretched audio, including filters, the ability enhance resonant frequencies, pitch shift and more.

## How do I use it?

You *can* use PaulXStretch as a plugin, but you can also use it as a standalone application. This would allow you to import, stretch, and then export the stretched file ready to import into your DAW as standalone audio. The latter is probably preferable in many cases - audition the file and stretching in the context of your tune, then commit and export to file.

<img src="images/paulxstretch_screenshot.png" width="100%" />


## What should I use it for?

This is a plugin that favours some experimentation. You could take a short, textural clip that you like and then stretch this out to see how the textures react to extreme stretching. Note that if the input clip features some prominent harmonics or frequencies, these will be accentuated when the audio is stretched, so you may want to EQ the input clip ***first*** before applying stretch to eliminate any howling frequencies. I have had some success using short clips with interesting chord patterns, and then stretching this out to create a long-form piece. Because chord changes are preserved, but smeared and smoothed, the track then shifts in tonality, rather than being a long drone on a single tone.

Not all audio clips will sound good stretched. My best results in experimentation have come when there are no drums or unpitched high frequencies (cymbals or high percussion).

As an experiment I once took the grindcore metal band Napalm Death's (in)famous "You Suffer" track, all 1.316 seconds of it (Guiness World Record holder for the shortest song), and stretched it out to 1 minutes. The result was TERRIFYING. You can hear it here: <https://on.soundcloud.com/84gdq>



A more sonically pleasing hyper stretch took the Windows 95 startup noise and stretched that out. <https://on.soundcloud.com/qurr7>



Another possibility is to use audio from other generative processes as the input to the stretching process. For example, try taking the results of the Follow Action "Changing Chords" recipe and using that as the input to the stretching process. Since the chords are designed to change incrementally using that recipe, it should work quite well as the input to this stretching, smearing out the chord changes even more and making them implicit rather than explicit. Taking something random, then stretching and smearing is a way to create something potentially more sonically interesting.

I'm not guaranteeing that throwing any old nonsense through PaulXStretch will suddenly make it sound amazing, but it's sometimes worth a shot to see what the results will sound like. These can then be used as ambient "beds" or foundations for other sounds, textures and production on top.
