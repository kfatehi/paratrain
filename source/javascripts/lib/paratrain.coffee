window.Paratrain = class Paratrain
  constructor: ->
    @gui = $('#paratrain')
    @listener =
      start: ->
        $('#paratrain mic').show()

    @gui.find('button#startrecording').click ->
      alert('sup')
    @gui.show()  

  deviceReady: ->
    @listener.start()

  soundOccurred: (sound) ->
    processSound