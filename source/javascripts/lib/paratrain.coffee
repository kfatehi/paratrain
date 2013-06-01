window.li = (markup) -> $("<li>#{markup}</li>")

window.Paratrain = class Paratrain
  constructor: ->
    @gui = $('#paratrain')
    @gui.controls = @gui.find('#controls')
    @gui.media_list = @gui.find('.media-list')
    @listening = false
    @initControls()

  initControls: ->
    @gui.find('button#startrecording').click => @listen()
    @gui.controls.show()  

  listen: ->
    unless @capturing?
      @beginCapture()
      @listening = true
      @gui.find('#status').text('Test Listening').show()
  
  captureSuccess: (mediaFiles) ->
    for media_file in mediaFiles
      @gui.media_list.append li(media_file.fullPath)

  captureError: (error) ->
    navigator.notification.alert "Error code: #{error.code}", null, 'Capture Error'
    if error.code == 3
      @gui.find('#status').text('No sounds were recorded.')

  beginCapture: ->
    navigator.device.capture.captureAudio @captureSuccess, @captureError, limit: 2
    @capturing = true

  soundOccurred: (sound) ->
    processSound