# Tools - Modulators {#tools-modulators}

The MIDI tools discussed in \@ref(tools-midi-tools) are useful to transform, augment and add notes to existing MIDI sequences, but we can also automate changing the value of pretty much ***anything*** in Live via modulation. [Max for Live provides a variety of modulation devices](https://www.ableton.com/en/live-manual/11/max-for-live-devices/#max-for-live-audio-effects) which will allow you to "map" that automation to device parameters. This will then automate changes on those device parameters without you needing to tweak the values using a mouse or controller knob.

------------------------------------------------------------------------

## Key idea {.unnumbered}

Modulation keeps sounds interesting. In \@ref(process-balance-unexpected-and-predictable) we discuss how repetition balances randomness. This also applies to the sounds you use in your track. Modulation of synth sounds through LFOs and other means is available within Ableton Live instruments, often with some very creative ways of achieving that - such as the Wavetable instrument's modulation matrix. But sometimes you want to apply modulation to a parameter where an LFO is not immediately available for example to the macro knob of an Instrument or Effect Rack. In generative music, having options where the modulation isn't obviously cyclical also helps as it adds to the "unpredictable" and helps engage listener's attention for longer.

One strength of Ableton Live's modulation devices (and Max for Live modulation devices) is that you can map modulation to pretty much anything that you can tweak by hand. Yes, even tempo. You can assign the parameter that is being modulated simply by click on the "Map" button in the devices and then click on a knob, switch or fader in Live. Modulation also allows you to have "hands off" performance of generative music by automating volume fades, if required.

------------------------------------------------------------------------

## Modulators in Ableton Live (general rule of thumb)

In Ableton Live, most modulators include a "Map" button that you click, then select the item that you want to modulate -e.g in the LFO device <https://www.ableton.com/en/live-manual/12/max-for-live-devices/#lfo>. The beauty of this is that you map the modulation to ***the next thing you click***. This applies to any knob, fader, slider, and even third party plugins.

In the case of third party plugins you can often click on the "Down arrow" beside the plugin on/off button to expand the parameters that can be automated.




\includegraphics[width=1\linewidth]{./images/Labs} 

If no parameters are presented when you click this button, you may instead see a "Configure" button in the plugin container. When you click on this button and then open the plugin, whatever you click in the UI interface for the device or instrument will show up as a slider in the container interface (see the images below showing the Zebralette instrument as an example).


\includegraphics[width=1\linewidth]{./images/Zebralette_Configure} 

This then opens the UI for the instrument or effect. Now click on various knobs, faders or elements of the instrument or effect UI and Live will capture what has been selected and make these available as items that can be modulated as a list of sliders.


\includegraphics[width=1\linewidth]{./images/Zebralette} 

For example, if we clicked on the "Phase", "SyncTune" and "WaveWarp" elements in the UI for Zebralette, when we close the UI we'll see the list of these elements available now for automation or for assignment to Macro knob control.


\includegraphics[width=1\linewidth]{./images/Zebralette_Configured} 

## LFO

Low Frequency Oscillation (LFO) modulation is one of the oldest forms used in synthesisers. In Ableton Live 11 this is presented as a separate ***audio*** utility plugin ([Max for Live plugin called "LFO"](https://www.ableton.com/en/live-manual/11/max-for-live-devices/#lfo)). Because it is an audio plugin it has to come ***after*** instruments and effects. There is another Max for Live plugin called LFO MIDI if you need it to come before instruments. LFOs are a key element of a modular synth rig. They can be and often are used to modulate pretty much anything. The LFO in Ableton Live can be used in pretty much the same way.

The Ableton LFO is a really neat tool and illustrates some features that we'll see again and again in other modulators in this section. In the top left of the first LFO here you can see the parameter that is being affected by the LFO. In the screenshot below it's changing the Filter Cutoff in the Instrument Rack to its left. I have changed the minimum and maximum value from 30% to 80% in order to avoid extreme values of filter cutoff. It's often a good idea to tailor the range of values that the LFO is working across as often you want to avoid the extremes. In the bottom left of the device you'll see the Rate at which the LFO is cycling. In this example it's going to go through a full cycle (of the Sine wave) every 6 bars. If you click on the box with three horizontal lines in the top right of the LFO it will open a page (as seen in the second LFO) where you can assign other parameters to be affected by the same LFO. Note that the second LFO here is changing the Depth of the first LFO and the Offset. This means that the first LFO doesn't just cycle predictably from minimum to maximum and back, but instead wobbles in a slightly more interesting way. So one LFO might be too predictable, but using two and using one to modulate the other can bring just enough unpredictability to keep the result interesting.


\includegraphics[width=1\linewidth]{./images/LFO} 

Note that under the visualization of the LFO you'll see "Jitter" and "Smooth". "Jitter" adds additional noise randomness to the generated LFO cycle. This can be useful if you want to add a little more random variation over and above the generated LFO values. The "Smooth" option can help smooth out the whole LFO cycle, including the "Jitter". These "Jitter" and "Smooth" options turn up in various other modulation devices, so it's good to know what they do.

A basic LFO is a useful modulator, but there are two drawbacks to the standard LFO on its own:

1.  Its cyclical nature. Having something modulate within a predictable cycle e.g. 6 bars is fine, but is a little too predictable if the listener is going to be engaged with that sound over a longer period. If that cycle is part of a larger group of modulations moving at different cycle lengths then this might be less obvious.

2.  The "Random" setting is not smooth, as it is a "sample and hold" - so the value changes at the nominated cycle time and holds that value until a new value is assigned at the start of the next cycle. This means that the modulated parameter changes in a step fashion rather than smoothly. The LFO has a "Smooth" value (bottom right of the wave display) but this smoothes out with exponential curves, meaning that the value starts changing quickly at the start of the next cycle. This may still be "not quite smooth enough".

## LFO Trio - a chaotic LFO

One trick from modular synthesis is to modulate LFOs with other LFOs, and to modulate those LFOs by other LFOs. (It's LFOs all the way down). I was looking to create an LFO where there wasn't a perceptible pattern or period to its output. So I took a second LFO and changed the depth of the first LFO by the second. I took a third LFO and used it to change the Rate of the second LFO. I then took one of the mapping parameters from the first LFO to change the rate of the third LFO (so feeding back from first LFO back to third). What this gives me then is three LFOs which are all behaving in slightly chaotic and unpredictable ways, even using the standard Sine waveform.


\includegraphics[width=1\linewidth]{./images/Chaotic_LFOs} 

## Envelope MIDI

The [Envelope MIDI device](https://www.ableton.com/en/live-manual/11/max-for-live-devices/#envelope-midi) provides an envelope (shock!) that can then trigger any parameter in Ableton Live. Any time the channel receives a MIDI note, the envelope is triggered. This envelope can operate free of the tempo, with attack, decay, sustain and release in milliseconds, or it can be synced to the tempo. The envelope can also loop if required. The attack, decay and release rates can be linear (when set to 0%) or curved.

This allows modular synthesis like control over all kinds of parameters in Live where an incoming MIDI event can trigger changes in ***anything***.


\includegraphics[width=1\linewidth]{./images/MIDI_envelope} 

## Envelope Follower

The (Audio Effect) [Envelope Follower](https://www.ableton.com/en/live-manual/11/max-for-live-devices/#envelope-follower) device is similar to the MIDI Envelope device, but instead of being triggered by MIDI notes, it is triggered by audio. Adjust the "Gain" of the input until the orange envelope shows a decent range of modulation. By then tweaking the "Rise" and "Fall" parameters you can smooth out the signal if needed. There's also an option to delay the envelope rather than having it follow the input signal immediately.

Then, using the usual mapping process you can choose which parameter in Live you want to modulate using this signal. This device allows you to modulate anything using an input audio signal, whether that signal is heard in the Master audio track or not.

The devices above (LFO, MIDI Envelope and Envelope Follower) offer modular synthesis like control over pretty much any parameter in Ableton Live. This is one of the strengths of Ableton Live with Max for Live devices over the standard Ableton version - the level of control and the ability to control devices is really unparalleled. Don't forget that you can also get modulators to modulate each other... So an envelope can modulate the amplitude or rate of an LFO and an LFO can then modulate the envelope of another input.


\includegraphics[width=1\linewidth]{./images/Envelope_follower} 

## Shaper

Like the envelope follower devices above, there is a [MIDI Shaper](https://www.ableton.com/en/live-manual/11/max-for-live-devices/#shaper-midi) and an [Audio Shaper](https://www.ableton.com/en/live-manual/11/max-for-live-devices/#shaper)device allows you to draw modulation envelopes by specifying nodes across a grid then defining how the modulation should change between the nodes. In the screenshot below the nodes are "Snap"ed to the a grid of four equal divisions. The "Rate" setting defines the length of each division compared to the clock, which can be set according to musical divisions, or in Hz time.


\includegraphics[width=1\linewidth]{./images/Shaper} 

## MIDI Expression Control

The Wavetable instrument in Ableton Live has a really useful Modulation Matrix where you can map incoming MIDI expression control attributes (Velocity, Modwheel, Pitchbend, etc.) to parameters of the synthesis engine. The [Expression Control ](https://www.ableton.com/en/live-manual/11/max-for-live-devices/#expression-control)device extends that to ANY instrument or effect in Ableton Live. As with LFO modulation mapping, you click on the "Map" button and then click the parameter you wish to modulate. Note that the Expression Control device is a MIDI device so is used ***before*** instruments while other modulators like LFO are placed ***after*** the instrument.

Expression Control allows you to see the minimum and maximum percentage of modulation, and the shape of onset / offset of that modulation - either linear or logarithmic (curved). It also allows you to specify the "Rise" and "Fall" rate of change to help smooth out the change and prevent sudden changes in parameter values. There's also a curve shaper in the top right of the device where you can tailor your own curves for the MIDI input, like compression etc.

The "Random" setting generates a new parameter modulation value ***with every incoming MIDI note***. So rather than cycling through a periodic modulation, Expression control can be used to change parameters with each note. Subtle use of this is good for changing the sound of rhythmic parts - selecting slightly different decay and filter cutoff for example.

The "Incremental" setting is also useful in that it increments the parameter value by a nominated amount (1% in the screenshot below) with each incoming MIDI note. When it reaches the maximum, it resets to the minimum value, so is effectively a sawtooth LFO but triggered by incoming MIDI rather than periodic in time.


\includegraphics[width=1\linewidth]{./images/Expression_control} 

One thing to note is that Expression Control can assign the same MIDI control message to multiple parameters. You can click on the "down" arrow next to the MIDI control type and select a different input.


\includegraphics[width=1\linewidth]{./images/Expression_control_2} 

As I've said above, the combination of all of these tools are supremely powerful - so you could change envelopes with each incoming MIDI note or use that note to change an LFO setting that modulates something else. Also, be aware that the Expression Control and Envelope Follower can be used ***even if*** the MIDI or audio from the tracks are not sent to the Master audio output. OR EVEN NOT HEARD AT ALL. So you can use MIDI events to modulate items in sync with the master clock regardless of tempo.

## Strange Mod

[Dillon Baston's paid Max for Live plugin "Strange Mod"](https://maxforlive.com/library/device/6872/strange-mod)is my "go to" modulation device. It uses chaotic processes - strange attractors - and evaluates the X, Y, and Z three dimensional attributes of a particle within the chaotic system, generating three distinct modulation values (like LFO outputs) which can then be mapped to any parameter as we've seen above with other modulators. The change in the three different modulation values is random / chaotic but because they are mapping the three dimensions of the particle moving in the chaotic system, they do not "jump" to new values. Also the three dimensions are somewhat related - the X value does not jump values, but neither do the Y and Z values. They may change quickly, but if they do happen smoothly. Note that the "Map" button here allows you to map each modulation value - X, Y and Z - to any parameter in Live, but also each individual value (say X) can also be mapped to 7 other parameters, as with the LFO device. That means that a single Strange Mod device could map out to 24 different parameters. There are 11 different strange attractor algorithms to choose from, and you can randomise the starting point of the process to generate new paths of random modulation. The "R" button ensures that the process is reset each time you start Ableton's transport control (press play). This ensures that your random, chaotic process is at least somewhat repeatable! The "Var" setting scales variability in the process - more means that there's more chaos, while lower values mean less chaos.

It's this combination of smooth and random that makes this my preferred device for modulation. Slowing down the "Speed" of modulation can be useful to map to sound parameters where you want things to evolve smoothly and gradually.


\includegraphics[width=1\linewidth]{./images/Strange_mod} 

## Dispatch

Dispatch by Cong Burn is a paid [Max for Live modulation matrix](https://maxforlive.com/library/device/7361/dispatch-global-modulation-matrix) which generates 4 different modulation processes (A, B, C and D) which can be modulated by the other processes and then allows you to sum these to another set of modulation values - I, II, III and IV. The Matrix view defines the modulation processes while the Grid view allows you to further combine the A, B, C and D modulation and map these to another 16 parameters.

Dispatch is massively flexible in how you can define and combine modulation sources and types. It can also be quite intimidating at first to know what's going on. I can recommend reviewing the Cong Burn (Dispatch developer) video on the tool on Youtube: <https://youtu.be/Vlef8VON4Rw>

The vision for Dispatch is that it can be a single modulation device that can send modulation out to parameters throughout an Ableton Live set, rather than having modulators and LFOs scattered throughout the set. If you have the intention of creating generative music where everything is modulated and curated for an extended playback, then Dispatch may be useful to control levels, panning, sends etc. in a single device.


\includegraphics[width=1\linewidth]{./images/Dispatch} 

## Deviate

We've come across the free [Deviate Max for Live device from Novel Music](https://www.novelmusic.org/m4l/deviate) in @ref(tools-midi-tools), but it also offers random modulation control on parameters. You can dial up randomness at various levels in Deviate, and also control the amount of randomness which is very useful in generative music. But it also has a key feature - the ability to monitor parameter deviations in its "MEMORY" and then "Lock" in patterns if you find something you like - this mirrors functionality in Turing Machine modules that exist in the modular synthesis world.

Again, it's worth reviewing [the tutorial video from Novel Music](https://www.youtube.com/watch?v=4WwKGUV2H4I) to learn about all possible features of this device.


\includegraphics[width=1\linewidth]{./images/Deviate_map} 
