define ['backbone','app/views/slides','app/collections/slides','app/compiledSlides' ], (Backbone, SlidesView, SlidesCollection, mySlides) ->


  class AppView extends Backbone.View

    el: "body"

    events: {}

    initialize: ->
      slides = new SlidesView
        collection: new SlidesCollection(mySlides)
      @hackery()

    hackery: ->
      @$el.append('<script>stack()</script>')

  appView = new AppView()
