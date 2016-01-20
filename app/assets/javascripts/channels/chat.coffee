App.chat = App.cable.subscriptions.create "ChatChannel",
  received: (data) ->
    $('#messages').append(data.message)

  speak: (msg) ->
    @perform 'speak', message: msg

$(document).on 'keypress', '#chat-speak', (event) ->
  if event.keyCode is 13
    App.chat.speak(event.target.value)
    event.target.value = ""
    event.preventDefault()
