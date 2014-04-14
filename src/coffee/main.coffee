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
    'prettyprint':
      exports: 'prettyprint'

  paths:
    'underscore': '../components/underscore/underscore'
    'backbone': '../components/backbone/backbone'
    'jquery': '../components/jquery/jquery'
    'templates': '../templates'
    'text': '../components/requirejs-text/text'
    'd3': '../components/d3/d3'
    'stack':'../components/stack/stack'
    'prettify':'../components/google-code-prettify/src/prettify'

require ['d3', 'prettify', 'app/vendors'], (d3, prettify)->
  window.d3 = d3
  window.prettify = prettify
  require ['app/app'], (App) ->
    App.initialize()
