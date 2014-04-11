define ['backbone','app/views/slides','app/collections/slides' ], (Backbone, SlidesView, SlidesCollection) ->


  class AppView extends Backbone.View

    el: "body"

    events: {}

    initialize: ->
      slides = new SlidesView
        collection: new SlidesCollection([
          {type: 'html', content: '<h1>My First Slide</h1>'},
          {type: 'md', content: '<h1>My Second Slide</h1>'}])
      @hackery()

    hackery: ->
      @$el.append('<script>stack()</script>')

  appView = new AppView()
