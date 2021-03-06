  requirejs.config
    baseUrl: './js'
    shim:
      'underscore':
        exports: '_'
      'backbone':
        deps: ['underscore', 'jquery']
        exports: 'Backbone'
      'stack':
        deps: ['d3.global']
        exports: 'stack'
      'highlight':
        exports: 'hljs'

    paths:
      'underscore': '../components/underscore/underscore'
      'backbone': '../components/backbone/backbone'
      'jquery': '../components/jquery/jquery'
      'templates': '../templates'
      'text': '../components/requirejs-text/text'
      'd3': '../components/d3/d3'
      'd3.global': '../components/d3.global/d3.global'
      'stack': '../components/stack/stack'
      'highlight': '../components/highlightjs/highlight.pack'

  require ['app/vendors'],->
    require ['app/app'], (App) ->
      App.initialize()
