#= require vendor/cordova-2.7.0
#= require vendor/fastclick
#= require vendor/jquery-2.0.1
#= require lib/paratrain

window.app =
  # Application Constructor
  initialize: -> 
    window.paratrain = @paratrain ?= new Paratrain()
    @bindEvents()

  # Bind Event Listeners
  #
  # Bind any events that are required on startup. Common events are:
  # 'load', 'deviceready', 'offline', and 'online'.
  bindEvents: -> document.addEventListener "deviceready", @onDeviceReady, false

  # deviceready Event Handler
  #
  # The scope of 'this' is the event. In order to call the 'receivedEvent'
  # function, we must explicity call 'app.receivedEvent(...);'
  onDeviceReady: ->
    app.receivedEvent "deviceready"
    @paratrain.listen()

  # Update DOM on a Received Event
  receivedEvent: (id) ->
    $("##{id} .listening").css "display", "none"
    $("##{id} .received").css "display", "block"
    console.log "Received Event: " + id

$ ->
  FastClick.attach document.body
