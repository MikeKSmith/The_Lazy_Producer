---
---
---

# Tools - Creative use of audio effects



It ***is possible*** to create ambient tracks that do not use reverb and delay. But to be honest, it isn't done often. In the preface to this book I said about ambient music: "Take any sound, drown it in reverb and delay... JOB DONE". You can, and I'd argue you ***should*** do better than that. Creative use of audio effects can accentuate harmonics and do interesting things with those; provide some grit, noise or warble; take a rather plain sound and twist it until it forms something much more interesting and evolving. All this BEFORE drowning it in reverb and delay.

------------------------------------------------------------------------

## Key idea {.unnumbered}

Audio effects and automation together can take sounds and keep them interesting and evolving in ways that go beyond "static" application of reverb and delay on Return channels. Think of how you can use the huge range of creative effects provided by Ableton and employ these in ways that will take your original sound in completely new directions. This will provide the listener with some additional "ear candy" to keep the sounds interesting.

------------------------------------------------------------------------

## The tools of the trade
Ableton Live Suite comes with a HUGE range of audio effects and if you add in Max for Live effects there are almost too many audio-manglers out there to list or talk about in this chapter. While there are a few third-party audio effect plugins that are worth a mention, and which I use a LOT in my productions, you can get a LONG way with just the stock Ableton Live Suite audio effects. The benefit of third party plugins is where they offer something that the Live effects cannot. I'll talk about some of these below. But let's start looking at a few key plugins which are likely to be useful for ambient music.

## Hybrid Reverb
The Hybrid Reverb in Live 11 Suite is a really nice reverb. It has a Convolution Impulse Response (IR) section which allows you to dial up real-world reverb from a wide variety of spaces and an Algorithm section which applies reverb processing and colouration. You can blend between these or apply them in parallel and series. This in itself offers up a huge variety of sounds. But when you dig into the Convolution IR section you'll also find options for textural processing - this applies a textural Impulse Response (IR) to the sound, so instead of a straight reverb tail, you'll get some additional texture from the IR audio file. The other thing to point out is that there is an option to have User-defined IR. This means that you can find IR audio files for different spaces online at sites like Open Air https://www.openair.hosted.york.ac.uk and use some additional IR files for some famous spaces, like Hamilton Mausoleum and York Minster. Obviously finding the right reverb sound for ambient music is kind of a key item. But you don't have to use just one. I like to use a long, lush reverb to help smear sound and create drones. I usually put this on a FX Return channel so I can route several tracks to it and save CPU. But you may also need a shorter reverb for other instruments to give them presence, in the way that a close mic to an instrument in one of these huge reverb spaces will capture more of the raw sound, while the gigantic reverb captures the instrument in the space itself.

<img src="images/Hybrid_Reverb.png" width="100%" />

## Valhalla Supermassive
Here's a third-party effect I couldn't do without. Valhalla Supermassive is a free audio effect plugin from Valhalla DSP https://valhalladsp.com/shop/reverb/valhalla-supermassive/. It's a staple of ambient and drone producers because a) it's free and b) it has some MASSIVE reverb algorithms (duh!). Suffice to say it does exactly what it says on the tin - massive reverbs. But what Valhalla have done rather well is to combine algorithms and delay lines so that some of its algorithms behave more like delays, while some act more like reverbs. They also have algorithms that combine both - early delay turning into massive reverb. Some have short attack, some much longer. One of my personal favourites is the "Benson Arizona" preset which will turn ANYTHING into a massive drone. Combine this with PaulStretch (as discussed in Chapter 14 - Tools - PaulStretch) and you'll have instant drones.

To be honest, all of Valhalla DSP's plugins are excellent and reasonably priced. I particularly like the Shimmer device to add shimmer and pitch shift reverb to sounds. Their Delay plugin provides a wide variety of delay types, including tape delay (complete with wobble and drive) but also usefully a reverse delay (where the original audio is played backwards in the delay). I like the latter as the delayed line comes back transformed compared to the input. Again this adds some interest to the part.

<img src="images/Valhalla_Supermassive.png" width="100%" />
## Echo
I tend to prefer Live Suite's Echo effect rather than delay. There is a wide range of sounds possible using it, and some built in modulations and tweaks to the sound which add character. Use of Echo as a send effect has a long legacy in dub music where the DJ or producer would send a burst of signal to the Echo and by tweaking the feedback and EQ would create long tails of echo. 

Being a Lazy Producer, I prefer to let random processes tweak the LFO settings. I have built an audio effect rack with a trio of LFOs working on each other and then changing the feedback amount, lower and upper ranges of the EQ so that these wobble about randomly. While the timing of the Echo is fixed, we have other parameters that mean that the sound is constantly shifting in an unpredictable way. This will prevent the Echo effect from being too "samey" across the track and provide some interesting moments. It's a bit like having a pair of "robot hands" that tweak the Echo settings.


<img src="images/LFO_Echo.png" width="100%" />

## Distortion
Distortion may seem like a weird choice for ambient music where much of the music produced is "pristine" and "delicate". But there is a whole sub-genre where gritty, distorted sounds are most definitely a thing. My favourite from Live 11 Suite is the Saturator plugin which provides a wide range of subtle distortion and drive. While the Pedal plugin provides raw Overdrive, Distortion and Fuzz, Saturator allows you to drive the signal and dial in more subtle drive and overtones.

<img src="images/Saturator_Pedal.png" width="100%" />

Live 12's Roar device takes these to the next level though and provides a comprehensive set of tools for applying anything from subtle warmth to the inputs to full-blown distortion. It has a wide range of routing options, including multi-band which allows you to dial in distortion for different frequency bands.

<img src="images/Roar.png" width="100%" />

## Resonators
The Resonator plugin takes an incoming signal and then resonates it by pitch-shifting additional resonators. You can dial-in the amount that the resonant frequencies are heard via gain adjustment, you can define the pitch of the resonator and whether the resonator is centred on a particular pitch. This can be useful to create drone noises and coupled with a long reverb like the Valhalla Supermassive you can create some really lush ambient beds.

I have found that a little drive to the input signal (which boosts upper resonant frequencies of the audio) works will with resonator to make the result more pronounced.

<img src="images/Resonator.png" width="100%" />

## Spectral processing
Ableton Live Suite 11 includes two Spectral audio effects - Spectral Time which is a delay shifting different parts of the audio based on frequency (high, low sounds) and Spectral Resonator which resonates different parts of the frequency spectrum.

<To be continued...>

## Return FX techniques
If your sound has a sharp attack, you may want to soften the send to the Return channel FX so that only the tail of the sound gets effected. By setting the Map to 100% lowest and 0% highest (inverting the signal) it will duck the initial part of the sound (turning the send DOWN) and then bring it back up as the audio decays. Not that in the device below I have turned up gain to accentuate the behaviour (basically to make the peak duck enough that the initial part of the audio has a low enough send amount) and I have smoothed out the Rise and Fall amounts which removes any "pumping" of the send to the Return channel effect. By setting a Delay you can also manually dial in how much or little of that initial part of the sound gets sent to the Return channel. This technique can be useful to capture and build drone sounds where you want to avoid sudden changes volume.

<img src="images/Envelope_Follower_Send.png" width="100%" />
