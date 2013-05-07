loadPage = (page_name) ->
  highlightNavBar(page_name)
  loadPageContent(page_name)

highlightNavBar= (page_name) ->

loadPageContent = (page_name) ->
  changeDOM = (HtmlPage) ->
    html_content = $.parseHTML HtmlPage
    ($ '#main_content').html html_content
  $.get "#{page_name}.html", changeDOM


$(document).ready () ->
  loadPage('oui')

($ '.navbar a').on 'click', (e) ->
  e.preventDefault()
  loadPage e.target.hash[1..-1]


