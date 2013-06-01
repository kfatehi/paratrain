window.Paratrain = class Paratrain
  constructor: ->
    @gui = $('#paratrain')
    @gui.controls = @gui.find('#controls')
    @gui.find('#status').text('Initializing').show()
    @listening = false
    @initControls()

  initControls: ->
    @gui.find('button#startrecording').click ->
      alert('sup')
    @gui.controls.show()  

  deviceReady: ->
    if @capture?
      @gui.find('#status').text('Still Listening').show()
    else
      @capture = navigator.device.capture
      @listening = true
      @gui.find('#status').text('Listening').show()
    
  soundOccurred: (sound) ->
    processSound