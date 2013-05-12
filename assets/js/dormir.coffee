# parseRSS = (url, callback) ->
#   $.ajax
#     url: document.location.protocol + '//ajax.googleapis.com/ajax/services/feed/load?v=1.0&num=10&callback=?&q=' + encodeURIComponent(url)
#     dataType: 'json'
#     success: (data) ->
#       callback data.responseData.feed

# <iframe width="425" height="350" frameborder="0" scrolling="no" marginheight="0" marginwidth="0"
# src="https://maps.google.fr/maps/ms?ll=43.609607,5.084138&amp;spn=0.0197,0.046756&amp;t=m&amp;z=16&amp;msa=0&amp;msid=215510745658886404171.0004dc8abd94a49180438">
# </iframe><br /><small>Afficher <a href="https://maps.google.fr/maps/ms?ll=43.609607,5.084138&amp;spn=0.0197,0.046756&amp;t=m&amp;z=16&amp;msa=0&amp;msid=215510745658886404171.0004dc8abd94a49180438&amp;source=embed" style="color:#0000FF;text-align:left">Hébergements - Mariage Nelly et Pierre</a> sur une carte plus grande</small>


@.loadHotels = ->
  url = "https://spreadsheets.google.com/feeds/list/0AjRMvhfMjF-odG0yYmNNcV96eG01cTBaWUtaVjNWMGc/od5/private/full?alt=json-in-script&callback=?"
  $.getJSON url, '', (d)->
    console.log d

($ '#hostings a').on 'click', (e) ->
  e.preventDefault()
  ($ '#hotel').show()

@.loadHotels()