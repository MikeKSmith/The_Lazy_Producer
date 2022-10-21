# Tools - MIDI tools: chords and added notes

There are many tools within Ableton Live 11 and Max for Live that will generate (random) chords for you. In [Process - Note-wise probability] we looked at generating chords randomly by stacking MIDI notes in a clip, then applying probability to randomly select which notes to sound. This produced a chord that changed everytime the MIDI clip looped around.

------------------------------------------------------------------------

## Key idea {.unnumbered}

Adding notes, changing the lengths of notes and generating chords within a given scale using MIDI plugin tools can form the basis of a generative, ambient piece. Using other MIDI plugins to arpeggiate these chords and add additional notes and harmonies will produce a constantly evolving sequence of MIDI notes within the scale.

------------------------------------------------------------------------

## Ableton's Note Echo plugin

Ableton's Note Echo plugin may at first seem a bit pointless. I mean you can take the output from an audio track and just apply a Delay or Echo to that, so why bother doing it on the MIDI side? Well, because with Note Echo it will adjust the velocity of each echoed note, and you can also pitch up or down the echos, leading to changing pitch. You can also combine Note Echo plugins to produce nice "multi-tap" delays, each with different characteristics. The echos can build up quickly if you stack these, so I tend to use them with minimal or no feedback. Combined with the Random plugin discussed below you can easily build up evolving and interesting patterns which are similar without repeating. The "Feed Delay" amount controls the amount that the velocity decays with each repeat.

<img src="./images/Note_Echo.png" width="100%" />

## Ableton's Random plugin

The Random plugin changes the pitch of the incoming note within a range specified within the plugin. In the example shown below, incoming notes will be randomised to an increase in pitch up to 17 semi-tones above the original note with 50% probability (flip of a coin). The "Sign" switches allow you to define whether the random pitch change is added, subtracted or either to the incoming note. The "Mode" switch allows you to swap between randomness and incrementing, if you want the pitch to change gradually with each incoming note.

<img src="./images/Random.png" width="100%" />

## Ableton's Note Length plugin

Note Length is a really useful plugin to help modify the incoming MIDI and make notes longer or shorter. The "Gate" control can be used to double an incoming notes length, while the "Length" control defines the length of the resulting MIDI note in milliseconds or seconds. I use this to take incoming MIDI information and "smear" it for use with pad sounds. This is useful in generative ambient music, because you can relate the pad chord using these smeared notes to any incoming moving MIDI part. Be aware though that with long "Length" settings used with many incoming notes, it's possible to stack up MANY midi voices in a plugin. Limiting the number of voices in the plugin instrument or reducing the note length can prevent CPU overload!

<img src="./images/Note_Length.png" width="100%" />

## Ableton's Scale plugin

The Scale plugin is the Generative Ambient musician's friend. It takes whatever MIDI nonsense you through at it and quantises it to a given scale. ***This isn't cheating.*** Well, it kind of is, but it's a well used cheat within the modular synthesis world where quantisers have been used for a long time to ensure that control voltage (CV) signals conform to a particular scale.

<img src="./images/Scale.png" width="100%" />

## Ableton's Chord plugin

Ableton's own Chords plugin adds notes to incoming MIDI notes to form chords. Th

## Max for Live Chord Generator plugin

The [Nordmann Chord Generator](https://maxforlive.com/library/device/917/chord-generator) Max for Live plugin.

## Max for Live Tintinnabulator plugin

The [Tintinnabulator](https://maxforlive.com/library/device/7569/tintinnabulator) Max for Live plugin by Milton Mermikedes is an implementation of Arvo Part's [Tintinnabulation technique](https://en.wikipedia.org/wiki/Tintinnabuli). This technique arpeggiates the original chord, and then adds additional notes / harmonies after those notes in the scale of the original notes. Within the plugin you can specify the delay between the original notes and the additional harmonies, and you can also choose the chord inversion of the harmony notes. The good news for producers of generative, ambient music is that the choice of chord / harmonic inversion for the added notes can be set to random. This will add variety and keep the patterns changing.

## Max for Live Mt.Sev plugin

The [Mt.Sev](https://maxforlive.com/library/device/4589/mt-sev) Max for Live plugin by pATCHES.

## Max for Live Schwartzonator plugin

The Schwartzonator plugin
