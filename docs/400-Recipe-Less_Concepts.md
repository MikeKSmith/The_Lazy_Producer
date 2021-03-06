# Recipe - Less Concepts

1\. Download and save the Max For Live plugin called Less Concepts from <https://maxforlive.com/library/device/6167/less-concepts>. Save the plugin to your User_Library, and place the plugin on a MIDI track.

2\. Add a tone generating instrument on the MIDI track after the Less Concepts plugin. The Upright Piano from the Ableton Suite is a very good choice.

3\. Pick settings or values for "rule" and "seed" parameters. The default of rule: 30 and seed: 46 is good.

4\. Download and save the Max For Live plugin called mt.Sev from <https://maxforlive.com/library/device/4589/mt-sev>. Save the plugin to your User_Library, and place the plugin on a new MIDI track.

5\. In the MIDI input source for the new MIDI track, select the track containing the Less Concepts MIDI plugin. Set the Monitor to "In".

6\. Add a tone generating instrument on the MIDI track after the Less Concepts plugin. The Upright Piano from the Ableton Suite is also very good choice here.

7\. You may wish to press Play at this point. You do not need to add any MIDI notes to a clip. Less Concepts and mt.Sev will generate MIDI notes for you.

8\. (If you don't hear sound from mt.Sev) You may wish to click on a note on the right hand pane of the mt.Sev plugin to "kick start" it. Dragging the circle in the left pane will define how many additional notes are added (higher = more) and whether those notes are higher or lower (to the left = lower).

9\. Download and save the Max for Live plugin called Tintinnabulator from <https://maxforlive.com/library/device/7569/tintinnabulator>. Save the plugin to your User_Library, and place the plugin on a new MIDI track.

10\. In the MIDI input source for the new MIDI track, select the track containing the mt.Sev MIDI plugin. Set the Monitor to "In".

11\. Add a tone generating instrument on the MIDI track after the Less Concepts plugin. The Upright Piano from the Ableton Suite is still very good choice.

12\. In the Tintinnabulator plugin, it adds additional notes from the scale mirroring the input MIDI information. You can delay those notes in the boxes to the right of the "Now" box at the bottom of the plugin. Experiment with different settings. You can also choose the relative pitch of the additional notes using the boxes to the left of the keyboard. Alternatively you can randomise by clicking the +/- box just to the bottom left of the keys.

13\. Experiment with different seed values in Less Concepts. If you're feeling brave you can try different rules as well, although these have a more radical effect.

14\. Note that although the transport is running, no MIDI information is being captured or stored. If you wish to capture the MIDI for later gardening, you should arm the tracks for recording and press the "record" button on the transport.

15\. Sit back and enjoy endless piano riffs.

## Extra enhancements

1\. Add a Velocity MIDI plugin before the Upright Piano. Scale the "Out Hi" parameter to a low value (below 64). Add Randomness to the velocity. You may wish to increase the "Drive" setting of the plugin. This will make the Upright piano vary the sounds more due to lower velocity settings.

2\. Add a Note Length MIDI plugin to the Less Concepts track and automate the note length using an LFO modulator. Place the LFO plugin on the Less Concepts track and map the LFO to the Note Length parameter.

3\. As an alternative to the LFO modulator, you may wish to download and save Max For Live device Strange Mod modulator from <https://maxforlive.com/library/device/6872/strange-mod>. You can try the plugin for free, but I suggest a small donation to the developer, Dillon Bastan. Suggested donation is \$5+. Save the plugin to your User_Library, and place the plugin on the Less Concepts track. Map the X parameter of the Strange Mod plugin to Time Length parameter of the Note Length MIDI plugin, and map the Y parameter to the Gate parameter.

4\. Smother it in delay and reverb. Add Return channels with effects like Delay or Echo, Reverb. Use the Send dials to send your audio to reverb and delay effects.
