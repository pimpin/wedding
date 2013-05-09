
($ '#oui a').on 'click', (e) ->
  e.preventDefault()
  gmapsArgs = e.target.dataset
  console.log gmapsArgs
  console.log $('#map')
  $.Mustache.load 'maptpl.html', ->
    console.log $('#map')
    $('#map').mustache 'maptpl', gmapsArgs , { method: 'html' }