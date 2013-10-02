albums = [
  {
    flickr_set_id: 72157635972233866,
    title: "Les préparatifs",
    thumb_url: "http://farm6.static.flickr.com/5489/9877294655_7fa4053660_s.jpg"
  },
  {
    flickr_set_id: 72157635972309335,
    title: "Avant la mairie",
    thumb_url: "http://farm8.static.flickr.com/7310/9935017905_430d56e45e_s.jpg"
  },
  {
    flickr_set_id: 72157635972154856,
    title: "A la mairie",
    thumb_url: "http://farm3.static.flickr.com/2820/9878983064_36b7860a01_s.jpg"
  },
  {
    flickr_set_id: 72157635972169276,
    title: "De la mairie à l'église",
    thumb_url: "http://farm3.static.flickr.com/2817/9971494074_9690677de7_s.jpg"
  },
  {
    flickr_set_id: 72157635972178765,
    title: "A l'église",
    thumb_url: "http://farm4.static.flickr.com/3721/9938221994_94f945008b_s.jpg"
  },
  {
    flickr_set_id: 72157635972375676,
    title: "La sortie de l'église",
    thumb_url: "http://farm4.static.flickr.com/3684/9938870903_803c3324dc_s.jpg"
  },
  {
    flickr_set_id: 72157635972388816,
    title: "Au Pont Flavien",
    thumb_url: "http://farm3.static.flickr.com/2884/9968774904_043c6739be_s.jpg"
  },
  {
    flickr_set_id: 72157635972139926,
    title: "Au cocktail",
    thumb_url: "http://farm3.static.flickr.com/2862/9879015236_141b462d17_s.jpg"
  },
  {
    flickr_set_id: 72157635972199015,
    title: "Au dîner",
    thumb_url: "http://farm4.static.flickr.com/3700/9970103555_6410e4e371_s.jpg"
  },
  {
    flickr_set_id: 72157635972402803,
    title: "A la soirée",
    thumb_url: "http://farm8.static.flickr.com/7368/9970492303_acc13520a6_s.jpg"
  },
  {
    flickr_set_id: 72157635761376323
    title: "Au brunch",
    thumb_url: "http://farm4.static.flickr.com/3812/9874737564_2a934f5573_s.jpg"
  }
]

# loadAlbums = ()->
#   $.Mustache.load 'albumthumbtpl.html', ->
#     $('#albums_thumbs').mustache 'thumbtpl', albums

# loadSlideShow = (flickrArgs = {flickrsetid: 72157635972199015}) ->
#   template = '<iframe align="center" width="100%" height="500" frameBorder="0" scrolling="no">Coucou {{flickrsetid}}</iframe>'
#   # template = '<iframe align="center" src="https://www.flickr.com/slideShow/index.gne?set_id={{flickrsetid}}" width="100%" height="500" frameBorder="0" scrolling="no"></iframe>'
#   frame = Mustache.to_html(template, flickrArgs)
#   $('#photosModal').html(frame)


loadPage = (page_name) ->
  highlightNavBar(page_name)
  loadPageContent(page_name)

highlightNavBar= (page_name) ->

loadPageContent = (page_name) ->
  ($ '#main_content').load "#{page_name}.html"
        
# ($ "a").on 'click', (e) ->
#   console.log 'show it'
#   e.preventDefault()
#   flickrArgs = e.target.dataset
  

# $(document).ready () ->
#   # loadAlbums()
#   $('#modal-content').on 'shown', loadSlideshow