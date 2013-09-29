flikr_sets = {
	'preparatifs': 72157635972233866
}

loadPage = (page_name) ->
  highlightNavBar(page_name)
  loadPageContent(page_name)

highlightNavBar= (page_name) ->

loadPageContent = (page_name) ->
  ($ '#main_content').load "#{page_name}.html"

($ "[href='#photosModal']").on 'click', (e) ->
  e.preventDefault()
  flickrArgs = e.target.dataset
  $.Mustache.load 'carouseltpl.html', ->
    $('#photosModal').mustache 'carouseltpl', flickrArgs , { method: 'html' }