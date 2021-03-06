loadPage = (page_name) ->
  highlightNavBar(page_name)
  loadPageContent(page_name)

highlightNavBar= (page_name) ->

loadPageContent = (page_name) ->
  ($ '#main_content').load "#{page_name}.html"

($ '#oui a').on 'click', (e) ->
  e.preventDefault()
  gmapsArgs = e.target.dataset
  $.Mustache.load 'maptpl.html', ->
    console.log $('#mapModal')
    $('#mapModal').mustache 'maptpl', gmapsArgs , { method: 'html' }

($ '#responseBtn').on 'click', (e) ->
  e.preventDefault()
  loadPage e.target.hash[1..-1]
