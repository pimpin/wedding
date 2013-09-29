loadPage = (page_name) ->
  highlightNavBar(page_name)
  loadPageContent(page_name)

highlightNavBar= (page_name) ->

loadPageContent = (page_name) ->
  ($ '#main_content').load "#{page_name}.html"
