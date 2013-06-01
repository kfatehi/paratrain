class Paratrain
  constructor: ->
    Paratrain.listener ?= new SoundListener

  soundOccurred: (sound) ->
    processSound