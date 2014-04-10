define ['backbone', 'app/views/app'], (Backbone, appView) ->

  class Router extends Backbone.Router

    routes:
      '*actions': 'defaultAction'


    initialize: ->
      Backbone.history.start()

    defaultAction: (actions) ->
      console.log "Unhandled route #{actions}"
