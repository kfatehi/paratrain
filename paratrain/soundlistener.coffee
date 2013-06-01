class SoundListener
  constructor: @startRecording()

  # Paratrain supports input distruptors
  # which can be ambiguous (sound) or 
  # and unambiguous (buttons).
  startRecording: ->
    Paratrain.input_distruptors ?= 
      microphone: new SoundInput(mic.open())}
