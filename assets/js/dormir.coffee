
sleepings=
  hotels: [
       name: "Top Motel"
       capacity: "Bartolomeo Vanzett4"
       adress: ""
       phone:"tipster-commercial-name4.jpg"
       web: "bartolomeo-vanzett4"
       distance: ""
       temps: "8.3612"
       desc: ""
     ,
       name: "Top Motel2"
       capacity: "Bartolomeo Vanzett4"
       adress: "null"
       phone: "tipster-commercial-name4.jpg"
       web: "bartolomeo-vanzett4"
       distance: null
       temps: "8.3612"
       desc: null
     ,
       name: "Top Motel3"
       capacity: "Bartolomeo Vanzett4"
       adress: null
       phone: "tipster-commercial-name4.jpg"
       web: "bartolomeo-vanzett4"
       distance: null
       temps: "8.3612"
       desc: null
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
       name:"Top bnb 1"
       capacity:"Bartolomeo Vanzett4"
       adress:null
       phone:"tipster-commercial-name4.jpg"
       web:"bartolomeo-vanzett4"
       distance:null
       temps:"8.3612"
       desc:null
    ,
       name:"Top bnb2"
       capacity:"Bartolomeo Vanzett4"
       adress:null
       phone:"tipster-commercial-name4.jpg"
       web:"bartolomeo-vanzett4"
       distance:null
       temps:"8.3612"
       desc:null
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
