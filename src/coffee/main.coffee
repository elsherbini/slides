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

  require ['app/models/slide','app/views/slide'], (SlideModel, SlideView) ->

    slide = new SlideModel content: '<h1> My First Slide </h1>'
    slideView = new SlideView model: slide
    slideView.render()
    console.log(slideView.el)
