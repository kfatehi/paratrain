/*
Mic provides an input stream of of sounds and silence.

While silence, keep listening for a sound:
On each silence lasting over 200ms, stop recording and queue the sound into the SoundQueue using Phonegap APIs... then:
*/

var SoundInput = (function(){
  onSound: function (sound) {
    Paratrain.soundOccurred(sound)
  }
    
})()