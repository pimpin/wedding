# CoffeeScript encoding: utf-8

sleepings=
  hotels: [
       name: "Top motel **"
       capacity: "24 chambres"
       adress: "12 avenue de Flore, Parc de la Trigance, 13800 Istres"
       phone:"04.42.11.89.95"
       web: "http://www.hotel-topmotel.com"
       price: "50€ la double"
       distance: "11 km"
       temps: "16 min"
       desc: "hôtel avec piscine"
     ,
       name: "Première Classe **"
       capacity: "60 chambres"
       adress: "Zac Du Tube Retorien, Rue Régis Huilier, 13800 Istres"
       phone: "04 42 56 38 81"
       web: "http://www.premiereclasse.com/fr/france/provence-alpes-cote-dazur/hotels-istres"
       price: "46€ la double"
       distance: "7 km"
       temps: "13 mn"
       desc: "propose des chambres quadruples"
     ,
       name: "Comfort Inn **"
       capacity: "20 chambres"
       adress: "6, rue des Taillandiers - Zone Industrielle du Tube Sud, 13800 Istres"
       phone: "#"
       web: "www.comfortinn.com/fr/hotel-istres-france-FR138/Hotel-Photos"
       price: "60€ la double"
       distance: "9 km"
       temps: "15 mn"
       desc: "hôtel avec piscine"
    ,
       name: "Ariane ***"
       capacity: "25 chambres"
       adress: "12 Avenue De La Flore, 13800 Istres"
       phone: "04.42.11.13.13"
       web: "www.arianehotel-istres.com"
       price: "80€ la double"
       distance: "9 km"
       temps: "15 mn"
       desc: "hôtel avec piscine"
    ,
       name: "Hotel Devem de Mirapier ***"
       capacity: "15 chambres"
       adress: "D 19, 13250 Cornillon-Confoux"
       phone: "#"
       web: "http://www.mirapier.com/Deven/Bienvenue.html"
       price: "128€ la double"
       distance: "12 km"
       temps: "22 mn"
       desc: ""
      ],
  gites: [
       name:"Domaine d'Embarden"
       capacity:"4 personnes"
       adress:"577 route de Grans 13250 St Chamas"
       phone:"06.84.95.57.16"
       price: "80€ la double"
       web: "http://www.embarden.fr"
       distance:"7,5 km"
       temps:"14 mn"
       desc: "Les chambres disponibles ne sont pas celles figurant sur le site. 2 nuits minimun."
    ,
       name:"Moun Mazet"
       capacity:"6-7 personnes"
       adress:"Lieu dit Sulauze - D569n Le Mazet"
       phone:"06 47 64 81 67"
       price: "530€ les 2 nuits incluant le ménage et les petit dèj."
       web: "mounmazet-gite-provence.fr"
       distance:"1 km"
       temps:"2 mn"
       desc: "Le plus proche de Sulauze. 2 nuits minimun... peut etre négociable (?)"
    ,
       name:"La Bastide de Leydet"
       capacity:"2 gîtes pour 7 personnes et 1 gîte pour 3 personnes"
       adress:"La Bastide de Leydet 13250 CORNILLON-CONFOUX"
       phone:"04.90.50.41.91"
       web:"http://www.gitedeprovence.net/"
       distance:"12 km"
       temps:"25 mn"
       desc: ""
    ,
       name:"Domaine de Sulauze"
       capacity:"6 personnes"
       adress:"Miramas"
       phone:"nous contacter"
       web:""
       distance:"sur place!"
       temps:"sur place!"
       desc: ""
    ],
  bnbs: [
       name:"Domaine de Lunard"
       capacity:"2 chambres"
       adress: "Chemin de Miramas à Lunard, 13140 Miramas"
       phone:"01.90.45.64.12"
       web:"http://www.domainedelunard.com/index.php/les-chambres-d-hotes"
       price: "65€ la double avec petit déjeuner, 60€ à partir de 2 nuits"
       distance: "5 km"
       temps:"13 mn"
       desc: "un des pieds à terre les plus proches; charmant et authentique dans un domaine viticole; propriétaire très gentil et arrangeant, n'hésitez pas !"
    ,
       name:"Domaine des Machottes"
       capacity:"2 chambres"
       adress: "Les Crozes, 13450 GRANS"
       phone:"04.90.55.87.98"
       web:"http://www.gites-de-france.com/location-vacances-Grans-Chambre-d-hotes-UNE-ROMANCE-PROVENCALE-,gites84_b2013.1.13G280416.H.html/site-proprietaire"
       price:"80 à 100€ la double avec petit déjeuner"
       distance: "15 km"
       temps:"22 mn"
       desc: ""
    ,
       name:"Chez Nicole"
       capacity: "1 suite de 2 chambres doubles"
       adress: "Avenue Maurice Berle, 13250 St Chamas"
       phone:"06.78.01.81.48"
       web:"http://51958138.fr.strato-hosting.eu/?page_id=46"
       price: "66€ la double avec petit déjeuner"
       distance: "8 km"
       temps:"14 mn"
       desc: ""
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
