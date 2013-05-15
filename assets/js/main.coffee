loadPage = (page_name) ->
  highlightNavBar(page_name)
  loadPageContent(page_name)

highlightNavBar= (page_name) ->

loadPageContent = (page_name) ->
  ($ '#main_content').load "#{page_name}.html"


$(document).ready () ->
  loadPage('oui')

($ 'nav a').on 'click', (e) ->
  e.preventDefault()
  loadPage e.target.hash[1..-1]
