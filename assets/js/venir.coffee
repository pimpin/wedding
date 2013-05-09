($ '#venir #covoiturage a').on 'click', (e) ->
  e.preventDefault()
  ($ '#venir #covoiturage a').fadeOut()
  ($ '#venir #covoiturage .form').fadeIn()

  ($ '#venir #covoiturage #showResults').on 'click', (e) ->
    e.preventDefault()
    ($ '#venir #covoiturage .form').fadeOut()
    ($ '#venir #covoiturage .results').fadeIn()