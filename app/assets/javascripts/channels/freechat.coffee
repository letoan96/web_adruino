App.freechat = App.cable.subscriptions.create "FreechatChannel",
	
  connected: ->
    # Called when the subscription is ready for use on the server
    console.log ('Connected to cable')

  disconnected: ->
    console.log ('disconnected to cable')

  received: (data) ->

    $('.active123').html "#{data} m"
    console.log ('got data')

  speak: (message) ->
    @perform 'speak', message: message
