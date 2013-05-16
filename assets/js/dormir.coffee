sleepings=
  hotels: [
       name: "Top motel**"
       capacity: "24 chambres"
       adress: "12 avenue de Flore, Parc de la Trigance, 13800 Istres"
       phone:"04.42.11.89.95"
       web: "http://www.hotel-topmotel.com"
       price: "50 � la double"
       distance: "11 km"
       temps: "16 min"
       desc: "h�tel avec piscine"
     ,
       name: "Premi�re Classe**"
       capacity: "60 chambres"
       adress: "Zac Du Tube Retorien, Rue R�gis Huilier, 13800 Istres"
       phone: "04 42 56 38 81"
       web: "http://www.premiereclasse.com/fr/france/provence-alpes-cote-dazur/hotels-istres"
       price: "46� la double"     
       distance: "7 km"
       temps: "13 mn"
       desc: "propose des chambres quadruples"
     ,
       name: "Comfort Inn**"
       capacity: "20 chambres"
       adress: "6, rue des Taillandiers - Zone Industrielle du Tube Sud, 13800 Istres"
       phone: ""
       web: "www.comfortinn.com/fr/hotel-istres-france-FR138/Hotel-Photos"
       price: 60� la double"
       distance: "9 km"
       temps: "15 mn""
       desc: "h�tel avec piscine"

       name: "Ariane***"
       capacity: "25 chambres"
       adress: "12 Avenue De La Flore, 13800 Istres"
       phone: "04.42.11.13.13"
       web: "www.arianehotel-istres.com"
       price: "80� la double"
       distance: "9 km"
       temps: "15 mn""
       desc: "h�tel avec piscine"

       name: "Hotel Devem de Mirapier***
       capacity: "15 chambres"
       adress: "D 19, 13250 Cornillon-Confoux"
       phone: 
       web: "http://www.mirapier.com/Deven/Bienvenue.html"
       price: "128� la double"
       distance: "12 km"
       temps: "22 mn""
       desc:
  


      ],
  gites: [
       name:"Top g1"
       capacity:"Bartolomeo Vanzett4"
       adress:null
       phone:"tipster-commercial-name4.jpg"
       web:"bartolomeo-vanzett4"
       distance:null
       temps:"8.3612"
       desc:null
    ,
       name:"Top g2"
       capacity:"Bartolomeo Vanzett4"
       adress:null
       phone:"tipster-commercial-name4.jpg"
       web:"bartolomeo-vanzett4"
       distance:null
       temps:"8.3612"
       desc:null
    ,
       name:"Top g3"
       capacity:"Bartolomeo Vanzett4"
       adress:null
       phone:"tipster-commercial-name4.jpg"
       web:"bartolomeo-vanzett4"
       distance:null
       temps:"8.3612"
       desc:null
    ],
  bnbs: [
       name:"Domaine de Lunard"
       capacity:"2 chambres"
       adress: "Chemin de Miramas � Lunard, 13140 Miramas"
       phone:"01.90.45.64.12"
       web:"http://www.domainedelunard.com/index.php/les-chambres-d-hotes"
       price: "65� la double, 60� � partir de 2 nuits"      
       distance: "5 km"
       temps:"13 mn"
       desc: "un des pieds � terre les plus proches; charmant et d�suet dans un domaine viticole; propri�taire tr�s gentil et arrangeant, n'h�sitez pas!"
    ,
       name:"Domaine des Machottes"
       capacity:"2 chambres"
       adress: "Les Crozes, 13450 GRANS"
       phone:"04.90.55.87.98"
       web:"http://www.gites-de-france.com/location-vacances-Grans-Chambre-d-hotes-UNE-ROMANCE-PROVENCALE-,gites84_b2013.1.13G280416.H.html/site-proprietaire"
       distance: "15 km"
       temps:"22 mn"
       desc:
    ,
       name:"Top bnb3"
       capacity:"Bartolomeo Vanzett4"
       adress:null
       phone:"tipster-commercial-name4.jpg"
       web:"bartolomeo-vanzett4"
       distance:null
       temps:"8.3612"
       desc:null
    ]


loadSleepings = (sleeping_type)->
  $.Mustache.load 'hoteltpl.html', ->
    $('#sleepings').mustache 'hoteltpl', sleepings[sleeping_type]

($ '#hostings a').on 'click', (e) ->
  e.preventDefault()
  $('#sleepings').html ''
  loadSleepings e.target.hash[1..-1]
  gglStr = $.get 'https://docs.google.com/spreadsheet/pub?key=0AjRMvhfMjF-odG0yYmNNcV96eG01cTBaWUtaVjNWMGc&single=true&gid=3&output=csv'
  console.log gglStr
  # ($ '#hotel').show()
