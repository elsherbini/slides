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
    'stack':
      deps: ['d3']
      exports: 'stack'

  paths:
    'underscore': '../components/underscore/underscore'
    'backbone': '../components/backbone/backbone'
    'jquery': '../components/jquery/jquery'
    'templates': '../templates'
    'text': '../components/requirejs-text/text'
    'd3': '../components/d3/d3'
    'stack':'../components/stack/stack'
    'highlight':'../components/highlightjs/highlight.pack'

require ['d3', 'app/vendors'], (d3)->
  window.d3 = d3
  require ['app/app'], (App) ->
    App.initialize()
