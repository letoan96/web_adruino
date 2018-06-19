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
    $('#getDistance_2').removeClass('active123')
    $('#getDistance_1').addClass('active123')
    App.freechat.speak('getDistance_1')

  $('#getDistance_2').click ->
    event.preventDefault()
    console.log ('get distance 2 clicked')
    $('#getDistance_1').removeClass('active123')
    $('#getDistance_2').addClass('active123')
    App.freechat.speak('getDistance_2')


  $('#open_2').click ->
    event.preventDefault()
    console.log ('open gate 2 clicked')
    App.freechat.speak('2')

  $('#close_2').click ->
    event.preventDefault()
    console.log ('close gate 2 clicked')
    App.freechat.speak('1')
  	
  $('#open_1').click ->
    event.preventDefault()
    console.log ('open gate 2 clicked')
    App.freechat.speak('4')

  $('#close_1').click ->
    event.preventDefault()
    console.log ('close gate 2 clicked')
    App.freechat.speak('3')
  	
  $('#set_auto').click ->
    event.preventDefault()
    console.log ('set Auto mode')
    App.freechat.speak('AUTO')

  $('#set_manual').click ->
    event.preventDefault()
    console.log ('set Manual mode')
    App.freechat.speak('MANUAL')