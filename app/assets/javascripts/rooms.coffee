# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).on 'turbolinks:load', ->
  $('.input-group').submit ->
    event.preventDefault()
    data = $('input.form-control').val()
    App.freechat.speak(data)
    return
    return
  
  $('#getDistance_1').click ->
    event.preventDefault()
    console.log ('get distance 1 clicked')
    $('.result').removeClass('active123')
    $('.result').addClass('active123')
    App.freechat.speak('getDistance_1')

  $('#send_message').click ->
    event.preventDefault()
    console.log ('send message clicked')
    App.freechat.speak('5')

  $('#getDistance_2').click ->
    event.preventDefault()
    console.log ('get distance 2 clicked')
    $('.result').removeClass('active123')
    $('.result').addClass('active123')
    App.freechat.speak('getDistance_2')


  $('#open_2').click ->
    event.preventDefault()
    $('.result').removeClass('active123')
    console.log ('open gate 2 clicked')
    App.freechat.speak('2')

  $('#close_2').click ->
    event.preventDefault()
    $('.result').removeClass('active123')   
    console.log ('close gate 2 clicked')
    App.freechat.speak('1')
  	
  $('#open_1').click ->
    event.preventDefault()
    $('.result').removeClass('active123')
    console.log ('open gate 2 clicked')
    App.freechat.speak('4')

  $('#close_1').click ->
    event.preventDefault()
    $('.result').removeClass('active123')
    console.log ('close gate 2 clicked')
    App.freechat.speak('3')
  	
  $('#set_auto').click ->
    event.preventDefault()
    $('.result').removeClass('active123')
    console.log ('set Auto mode')
    App.freechat.speak('AUTO')

  $('#set_manual').click ->
    event.preventDefault()
    $('.result').removeClass('active123')
    console.log ('set Manual mode')
    App.freechat.speak('MANUAL')