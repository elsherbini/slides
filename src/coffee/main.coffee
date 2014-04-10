requirejs.config
  baseUrl: './js'
  shim:
    'underscore':
      exports: '_'
    'jquery':
      exports: '$'
    'backbone':
      deps: ['underscore', 'jquery']
      exports: 'Backbone'

  paths:
    'underscore': '../components/underscore/underscore'
    'backbone': '../components/backbone/backbone'
    'jquery': '../components/jquery/jquery'
    'templates': '../templates'
    'text': '../components/requirejs-text/text'

###require ['app/models/slide'] , (SlideModel) ->
  console.log new SlideModel 
    content: "My First Slide"
    type: "lazy"###

require ['app/vendors'], ->

  require ['app/app'], (App) ->
    App.initialize()
