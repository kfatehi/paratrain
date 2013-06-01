PARROT ASSISTED TRAINING
---

Built using Phonegap
  - Receive bluetooth buttons. For now it is a tap.

0. Purchase Paratrain from the Apple App Store
0. Open the app and create a profile for your parrot
0. Put your iphone in its protective shield
0. Place the bluetooth activator buttons in various parts of the cage, toys, or use the built-in button bundled into the protective case
 
Buttons are optional and are mostly an experimental enhancement to the default algorithm.

Interact with your parrot as normal, the buttons and the app/iphone will do their own things.

Button(s): Send an input disrupter into the business logic analyser

ALGORITHM

```javascript
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

```

```coffeescript
class SoundListener
  constructor: @startRecording()

  # Paratrain supports input distruptors
  # which can be ambiguous (sound) or 
  # and unambiguous (buttons).
  startRecording: ->
    Paratrain.input_distruptors ?= 
      microphone: new SoundInput(mic.open())}
```

```coffeescript
class Paratrain
  constructor: ->
    Paratrain.listener ?= new SoundListener

  soundOccurred: (sound) ->
    processSound

class SoundQueue
  queue: (sound)
    processSound
    for sound in queue_sound
      if sound.siri_text 
```