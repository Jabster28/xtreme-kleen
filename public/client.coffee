# dreams = [  'Find ann count some sheep',

#   'Climb a really tall mountain',
#   'Wash the dishes'
# ]

# dreamsList = document.getElementById 'dreams'
# dreamsForm = document.forms[0]
# dreamInput = dreamsForm.elements['dream']
  
# appendNewDream = (dream) ->
#   newListItem = document.createElement 'li'
#   newListItem.innerHTML = dream
#   dreamsList.appendChild newListItem
#   `
#   console.log(2)
#   `
# appendNewDream dream for dream in dreams
 
# dreamsForm.onsubmit = (event) ->
#   event.preventDefault()
#   dreams.push dreamInput.value
#   appendNewDream dreamInput.value
#   dreamInput.value = ''

$ ->
  $.get "nav.html", (data) ->
    $(".nav").replaceWith data
  $('.card').hide()
  $('.card').slideDown()
  $('body').addClass 'loaded'
  $('h1').css 'color', '#222222'
  $('.sidenav').sidenav()
